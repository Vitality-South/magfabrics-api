// Copyright (c) 2022 Vitality South, LLC <chris@vitalitysouth.com>
// All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

const version = '1.0.0';

var XMLHttpRequest = require('xhr2');
global.XMLHttpRequest = XMLHttpRequest;

const createCsvWriter = require('csv-writer').createObjectCsvWriter;

var mag = require('@vitality-south/magfabrics');
const magfabrics = mag.default;

var argv = require('yargs/yargs')(process.argv.slice(2))
  .usage('Usage: $0 -k [api key] -f [file name]')
  .default('d', ",")
  .boolean(['q'])
  .default('q', false)
  .describe('q', 'always double quote all fields')
  .describe('k', 'api key')
  .describe('f', 'output file name')
  .describe('d', 'csv field delimiter')
  .demandOption(['k','f'])
  .version(version)
  .argv;

magfabrics.initialize(argv.k);

const main = async () => {
  // generate a csv from the public api data

  const fabricsRes = await magfabrics.getAllFabrics();

  if (fabricsRes.error) {
    console.error("Error", fabricsRes.error);
    return;
  }

  const fabrics = fabricsRes.value?.fabricsList;

  if (!fabrics) {
    console.error("No fabrics found");
    return;
  }

  const cols = Object.keys(fabrics[0]).map((key) => ({
    id: key,
    title: key,
  }));

  // delete inventory field
  cols.splice(
    cols.findIndex((col) => col.id === "inventory"),
    1
  );

  // get cols for inventory
  const inventoryCols = Object.keys(fabrics[0].inventory).map((key) => ({
    id: key,
    title: key,
  }));

  // combine cols and inventoryCols
  const fabricCols = [...cols, ...inventoryCols];

  // flatten inventory into fabric as rows data
  const rows = fabrics.map((fabric) => {
    if (!fabric.inventory) {
      delete fabric.inventory;
      return fabric;
    }

    // fllatten purchaseordersList replace in inventory
    fabric.inventory.purchaseordersList =
      fabric.inventory.purchaseordersList.map(
        (po) => `${po.amount} yards ETA ${po.eta}`
      );

    // flatten rollsList into just the quantity field and replace in inventory
    fabric.inventory.rollsList = fabric.inventory.rollsList.map(
      (roll) => roll.quantity
    );

    const inventory = JSON.parse(JSON.stringify(fabric.inventory || {}));
    delete fabric.inventory;
    return { ...fabric, ...inventory };
  });

  const csvWriter = createCsvWriter({
    path: argv.f,
    header: fabricCols,
    fieldDelimiter: argv.d,
    alwaysQuote: argv.q,
  });

  await csvWriter.writeRecords(rows);
};

main();

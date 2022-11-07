"use strict";

const fs = require("fs");
const getSRI = require("get-sri");

const version = fs.readFileSync("../VERSION").toString();
const readmeFile = "../README.md";
const demoIndexFile = "../browser-lib/demo/index.html";
const browserDistFile = "../browser-lib/dist/magfabrics.min.js";

const browserDistFileData = fs.readFileSync(browserDistFile).toString("utf-8");
const checksum = getSRI(browserDistFileData, getSRI.SHA384).toString();

const sriRegex =
  /src=\"(.*)magfabrics(-?)(.*).min.js\"[\n\r\s]+integrity=\"(.*)\"/;
const checksumNewIndex = `src="magfabrics-${version}.min.js"\nintegrity="sha384-${checksum}"`;
const checksumNewReadme = `src="https://demo.magfabrics.com/magfabrics-${version}.min.js"\nintegrity="sha384-${checksum}"`;

const currentDemoIndexFile = fs.readFileSync(demoIndexFile).toString();
const currentReadmeFile = fs.readFileSync(readmeFile).toString();

const newDemoIndexFile = currentDemoIndexFile.replace(
  sriRegex,
  checksumNewIndex
);
const newReadmeFile = currentReadmeFile.replace(sriRegex, checksumNewReadme);

fs.writeFileSync(demoIndexFile, newDemoIndexFile);
fs.writeFileSync(readmeFile, newReadmeFile);

console.log(
  "Successfully updated SRI hashes in browser-lib/demo/index.html and README.md"
);

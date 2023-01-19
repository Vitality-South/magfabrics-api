"use strict";

const fs = require("fs");
const getSRI = require("get-sri");

const version = fs.readFileSync("../VERSION").toString();
const readmeFile = "../README.md";
const demoIndexFile = "../browser-lib/demo/index.html";
const browserDistFile = "../browser-lib/dist/magfabrics.min.js";
const simpleDemoFile = "../browser-lib/demo/demo-simple.html";

const browserDistFileData = fs.readFileSync(browserDistFile).toString("utf-8");
const checksum = getSRI(browserDistFileData, getSRI.SHA384).toString();

const sriRegex =
  /src=\"(.*)magfabrics(-?)(.*).min.js\"[\n\r\s]+integrity=\"(.*)\"/;
const checksumNewIndex = `src="magfabrics-${version}.min.js"\nintegrity="sha384-${checksum}"`;
const checksumNewReadme = `src="https://demo.magfabrics.com/magfabrics-${version}.min.js"\nintegrity="sha384-${checksum}"`;
const checksumNewDemoFile = `src="https://demo.magfabrics.com/magfabrics-${version}.min.js"\nintegrity="sha384-${checksum}"`;

const currentDemoIndexFile = fs.readFileSync(demoIndexFile).toString();
const currentReadmeFile = fs.readFileSync(readmeFile).toString();
const currentSimpleDemoFile = fs.readFileSync(simpleDemoFile).toString();

const newDemoIndexFile = currentDemoIndexFile.replace(
  sriRegex,
  checksumNewIndex
);
const newReadmeFile = currentReadmeFile.replace(sriRegex, checksumNewReadme);
const newSimpleDemoFile = currentSimpleDemoFile.replace(
  sriRegex,
  checksumNewDemoFile
);

fs.writeFileSync(demoIndexFile, newDemoIndexFile);
fs.writeFileSync(readmeFile, newReadmeFile);
fs.writeFileSync(simpleDemoFile, newSimpleDemoFile);

console.log(
  "Successfully updated SRI hashes in browser-lib/demo/index.html and README.md"
);

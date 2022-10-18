![MagFabrics logo](logo_dark.png)
# MagFabrics API

## Demo
See the demo site at [https://magnolia.vitalitysouth.com/](https://magnolia.vitalitysouth.com/). (browser-lib/demo)

## Install
**NPM**

First add the following to your **.npmrc** file:

```ini
@vitality-south:registry=https://npm.pkg.github.com
```
If you don't have a **.npmrc** file in your root directory, create one.


```bash
yarn add @vitality-south/magnolia-fabrics
```
or
 ```bash
npm install @vitality-south/magnolia-fabrics
```
Then
```javascript
import magnolia from 'magnolia-fabrics';
```

Or:


**CDN**
```html
<script src="https://magnolia.vitalitysouth.com/magnoliafabrics-1.2.8.min.js"
integrity="sha384-dXGupe+FC2e4w99dVNbMAJp83IW71D+7rspKyWxKC9FGM1/Z67y4t8F7rChH/KAp"
crossorigin="anonymous"
></script>
```

---

## Usage

**Important**: You must call 
```javascript
magnolia.initialize('<Your API Key>');
``` 
first before making any more calls to the API.


All methods(except for magnolia.initialize) are asyncronous and return an object in the shape of:
```javascript
{
  value: {}, // either Object or null
  error: '', // either string or null
}
```
Supported API Methods:
```javascript
// Initializes the API client. Required before making any of the below API calls.
magnolia.initialize('<Your API Key>');

// Returns the full array of fabrics data including all inventory data
magnolia.getAllFabrics().then((data) => {
  if(data.error) {
    console.error(data.error);
    return;
  }

  const fabrics = data?.value?.fabricsList;

  console.log(fabrics);
});

// Following the example above

// Returns the full array of fabrics data excluding inventory data
// data returned as data.value.fabricsList
magnolia.getAllFabricsWithoutInventory().then((data) => {...});

// Returns Taxonomies data for the full array of fabrics
// data returned as data.value.taxonomy
magnolia.getAllFabricTaxonomies().then((data) => {...});

// Returns Inventory data for the full array of fabrics
// data returned as data.value.inventoryList
magnolia.getAllInventory().then((data) => {...});

// Returns cleaning codes
// data returned as data.value.cleaningCodesMap
magnolia.getCleaningCodes().then((data) => {...});

// Retrieves any fabric by its id(aka productCode)
// data returned as data.value.fabric
magnolia.getFabricById('<productCode>').then((data) => {...});

// Retrieves any fabric by its name(aka patternColorCombo)
// data returned as data.value.fabric
magnolia.getFabricByName('<patternColorCombo>').then((data) => {...});
```

---

## Advanced Users
Although we recommend using either the CDN or NPM method of installing, you can run the gRPC Web version directly.

To start, copy the `/js` or `/ts` folders respectively. Inside you'll find a docs folder containing the gRPC Web documentation. For examples look at browser-lib/ or npm-lib/.

---

## Examples

**CDN**

The browser-lib/demo folder contains a working example using a script tag loaded from the CDN to demonstrate how to consume the API.
To run: 
```
# clone this repo
# cd into browser-lib/demo
# add your API Key to index.js
# open index.html
```

**SPA's etc.**

The SPA-Example folder contains an example of how to consume the API in Vue based SPA. The same example is valid for any bundled js/ts project.
To run: 
```
# clone this repo
# cd into SPA-Example
# yarn install
# add your api key to src/pages/IndexPage.vue
# yarn quasar dev
```

---

## Support

Contact magfabricsapi@vitalitysouth.com to acquire an API key or for any questions or issues.

---

## License

Copyright (c) 2022 Vitality South, LLC <chris@vitalitysouth.com>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
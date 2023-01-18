![MagFabrics logo](logo_dark.png)

# MagFabrics API

The MagFabrics API provides all fabrics, inventory, and taxonomy data available on [magfabrics.com](https://magfabrics.com/). See the [demo site](https://demo.magfabrics.com/) as an example of all data that is available. Client libraries are available in this repo for both front-end and back-end apps in various programming languages. We currently support JavaScript, [Go](https://go.dev/), and [Dart/Flutter](https://flutter.dev/) but are willing to add more upon request. There are also tools available in [cmd](cmd) folder for exporting all API data to CSV. Email magfabricsapi@vitalitysouth.com to request an API key.

If you need a custom / bespoke integration, assistance with building an app or website, or any other software development work, contact devteam@vitalitysouth.com.

## Demo

See the demo site at [https://demo.magfabrics.com/](https://demo.magfabrics.com/). The code for the demo site is available in [browser-lib/demo](browser-lib/demo) folder.

# JavaScript Client

## Install

### NPM

```bash
yarn add @vitality-south/magfabrics
```

or

```bash
npm install @vitality-south/magfabrics
```

Then

```javascript
import magfabrics from "@vitality-south/magfabrics";
```

Or:

### CDN

```html
<script
  src="https://demo.magfabrics.com/magfabrics-1.5.15.min.js"
  integrity="sha384-h5fKyF1jgDsxx9QoKHcZ+H/wjahlyl+EyYdHWPU+7CwNkNNOsufRg70rRps368OH"
  crossorigin="anonymous"
></script>
```

---

## Usage

**Important**: You must call

```javascript
magfabrics.initialize("<Your API Key>");
```

first before making any more calls to the API.

All methods(except for magfabrics.initialize) are asyncronous and return an object in the shape of:

```javascript
{
  value: {}, // either Object or null
  error: '', // either string or null
}
```

Supported API Methods:

```javascript
// Initializes the API client. Required before making any of the below API calls.
magfabrics.initialize('<Your API Key>');

// Returns the full array of fabrics data including all inventory data
magfabrics.getAllFabrics().then((data) => {
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
magfabrics.getAllFabricsWithoutInventory().then((data) => {...});

// Returns Taxonomies data for the full array of fabrics
// data returned as data.value.taxonomy
magfabrics.getAllFabricTaxonomies().then((data) => {...});

// Returns Inventory data for the full array of fabrics
// data returned as data.value.inventoryList
magfabrics.getAllInventory().then((data) => {...});

// Returns cleaning codes
// data returned as data.value.cleaningCodesMap
magfabrics.getCleaningCodes().then((data) => {...});

// Retrieves any fabric by its id(aka productCode)
// data returned as data.value.fabric
magfabrics.getFabricById('<productCode>').then((data) => {...});

// Retrieves any fabric by its name(aka patternColorCombo)
// data returned as data.value.fabric
magfabrics.getFabricByName('<patternColorCombo>').then((data) => {...});

// Retrieves any fabric by its sku #
// data returned as data.value.fabric
magfabrics.getFabricBySKU('<sku>').then((data) => {...})
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

# Go Client

## Install

```bash
go get github.com/Vitality-South/magfabrics-api
```

## Usage

```go
import (
	"github.com/Vitality-South/magfabrics-api/pkg/client"
)
```

## Example in Go

```go
package main

import (
	"context"
	"fmt"

	"github.com/Vitality-South/magfabrics-api/pkg/client"
)

func main() {
	c, cerr := client.NewClient("your api key")

	if cerr != nil {
		panic(fmt.Sprintf("error creating API client: %v", cerr))
	}

	defer c.Close()

	ctx := context.Background()

	fabrics, ferr := c.GetAllFabrics(ctx)

	if ferr != nil {
		panic(fmt.Sprintf("error getting all fabrics: %v", ferr))
	}

	fmt.Print(fabrics)
}
```

---

# Dart/Flutter Client

## Install

Inside your `pubspec.yaml` file add the following:

```yaml
dependencies:
  mag_fabrics:
    git:
      url: https://github.com/Vitality-South/magfabrics-api.git
      path: dart/mag_fabrics
      ref: latest # You should peg a specific version(1.x.x) - see tags
```

call `flutter pub get` to install the package.

## Usage

Import the package:

```dart
import 'package:mag_fabrics/mag_fabrics.dart';
```

Example:

```dart
import 'package:mag_fabrics/mag_fabrics.dart';

void main() async {
  // Initialize the API client
  // MUST BE CALLED FIRST !!!
  await MagFabrics.instance.initialize('<YOUR_API_KEY>');

  // Get all fabrics
  final fabrics = await MagFabrics.instance.getAllFabrics();

  // Get all fabrics without inventory
  final fabrics = await MagFabrics.instance.getAllFabricsWithoutInventory();

  // Get all inventory
  final inventory = await MagFabrics.instance.getAllInventory();

  // Get all fabric taxonomies
  final taxonomies = await MagFabrics.instance.getAllTaxonomies();

  // Get cleaning codes
  final cleaningCodes = await MagFabrics.instance.getCleaningCodes();

  // Get a fabric by id
  final fabric = await MagFabrics.instance.getFabricById('<productCode>');

  // Get a fabric by name
  final fabric = await MagFabrics.instance.getFabricByName('<patternColorCombo>');

   // Get a fabric by sku
  final fabric = await MagFabrics.instance.getFabricBySKU('<sku>');

  // Shutdown the API client
  await MagFabrics.instance.dispose();
}
```

API request return an APIResponse object containing data and error fields. A succesful request will return an empty string for the error field. An error will return a string containing the error message.

```dart
class APIResponse<T> {
  final String error;
  final T data;

  APIResponse({this.error = '', required this.data});
}
```

---

## Support

Contact magfabricsapi@vitalitysouth.com to acquire an API key or for any questions or issues.

---

## Custom Integration

If you need a custom / bespoke integration, assistance with building an app or website, or any other software development work, contact devteam@vitalitysouth.com.

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

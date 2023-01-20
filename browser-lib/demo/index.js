"use strict";

function createFabricsCard(data) {
  const fabricCard = document.createElement("div");

  fabricCard.innerHTML = `<div class="card fab-card m-2 shadow-sm" style="cursor: pointer" data-bs-toggle="modal" data-bs-target="#exampleModal">
  <img src="${
    data.image || "logo_dark.png"
  }" class="card-img-top p-2" alt="fabric" />

  <div class="card-body">
      <h5 class="card-title">${data.patternColorCombo}
      <div style="width: 100%; padding-left: 3px;">
      <div style="font-size: 10px">By ${data.brand}</div>
    </div>
    </h5>
      
      <p class="card-text">Best Used For ${data.usesList.join(", ")}</p>
      <div class="d-flex justify-content-end align-items-center">
        <div class="">$${data.displayPrice}</div>
      </div>
  </div>
</div>`;

  fabricCard.addEventListener("click", () => openCard(data));

  return fabricCard;
}

function openCard(data) {
  const modalTitle = document.getElementById("modal-title");
  modalTitle.innerText = data.patternColorCombo;

  const modalBody = document.getElementById("modal-body");
  modalBody.innerHTML = ``;

  for (const [key, value] of Object.entries(data)) {
    const row = document.createElement("div");
    row.classList.add("row", "mb-2");

    const keyCol = document.createElement("div");
    keyCol.classList.add("col-5");
    keyCol.innerText = key;

    const valueCol = document.createElement("div");
    valueCol.classList.add("col-7");
    valueCol.style.maxWidth = "250px";
    valueCol.innerText = JSON.stringify(value);

    row.appendChild(keyCol);
    row.appendChild(valueCol);

    modalBody.appendChild(row);
  }
}

function openCleaningCard() {
  const modalTitle = document.getElementById("modal-title");
  modalTitle.innerText = "Cleaning Codes";

  const modalBody = document.getElementById("modal-body");
  modalBody.innerHTML = ``;

  magfabrics.getCleaningCodes().then((result) => {
    if (result.error) {
      console.error(result.error);
      return;
    }

    const data = result.value.cleaningCodesMap;

    for (const ccode of data) {
      const row = document.createElement("div");
      row.classList.add("row", "mb-2");

      const keyCol = document.createElement("div");
      keyCol.classList.add("col-5");
      keyCol.innerText = ccode[0];

      const valueCol = document.createElement("div");
      valueCol.classList.add("col-7");
      valueCol.style.maxWidth = "250px";
      valueCol.innerText = ccode[1]?.description;

      row.appendChild(keyCol);
      row.appendChild(valueCol);

      modalBody.appendChild(row);
    }
  });
}

function openTaxonomiesCard() {
  const modalTitle = document.getElementById("modal-title");
  modalTitle.innerText = "Taxonomies";

  const modalBody = document.getElementById("modal-body");
  modalBody.innerHTML = ``;

  magfabrics.getAllFabricTaxonomies().then((result) => {
    if (result.error) {
      console.error(result.error);
      return;
    }

    const data = result.value.taxonomy;

    for (const [key, value] of Object.entries(data)) {
      const row = document.createElement("div");
      row.classList.add("row", "mb-2");

      const keyCol = document.createElement("div");
      keyCol.classList.add("col-5");
      keyCol.innerText = key;

      const valueCol = document.createElement("div");
      valueCol.classList.add("col-7");
      valueCol.style.maxWidth = "300px";
      valueCol.style.wordBreak = "break-word";
      valueCol.innerText = JSON.stringify(value);

      row.appendChild(keyCol);
      row.appendChild(valueCol);

      modalBody.appendChild(row);
    }
  });
}

const updateApiError = (state) => {
  const apiError = document.getElementById("api-error-text");
  apiError.innerHTML = state;
};

const updateApiKey = (e) => {
  const fabSection = document.getElementById("fab-section");

  updateApiError("");
  apiKey = e.target.value;
  magfabrics.initialize(apiKey);

  fabSection.innerHTML = "";
  fabricsMaster = [];
  fabs = [];

  magfabrics.getAllFabrics().then((result) => {
    if (result.error) {
      console.error(result.error);
      updateApiError("Invalid API Key");
      return;
    }

    console.log(result.value);

    // grab a subset of the fabrics
    const fabrics = result.value.fabricsList.slice(150, 200);
    fabricsMaster = result.value.fabricsList;
    fabs = result.value.fabricsList;

    // create a card for each fabric
    fabrics.forEach((fabric) => {
      const fabricCard = createFabricsCard(fabric);
      fabSection.appendChild(fabricCard);
    });
  });
};

// globals
let fabs = [];
let fabricsMaster = [];
let apiKey = "Zah3QYGl471fdlhw"; // demo key - replace with your own

/////////////////////////////////////////
// The entry point more or less - when the page loads
/////////////////////////////////////////
document.addEventListener("DOMContentLoaded", function () {
  ///////////////////////////////////
  // initialize the magfabrics api
  // note that this must happen before you
  // start making api calls
  ///////////////////////////////////
  magfabrics.initialize(apiKey);

  const fabSection = document.getElementById("fab-section");

  // set the apikey field
  const apiKeyField = document.getElementById("api-key-bar");
  apiKeyField.value = apiKey;

  // make api-key-bar input update the api key
  apiKeyField.addEventListener("input", debounce(updateApiKey, 500));

  // load all the fabrics and build a limited set of
  // e-commerce cards to display int the fab section
  magfabrics.getAllFabrics().then((result) => {
    if (result.error) {
      console.error(result.error);
      updateApiError("Invalid API Key");
      return;
    }

    // console.log(result.value);

    // grab a subset of the fabrics
    const fabrics = result.value.fabricsList.slice(150, 200);
    fabricsMaster = result.value.fabricsList;
    fabs = result.value.fabricsList;

    // create a card for each fabric
    fabrics.forEach((fabric) => {
      const fabricCard = createFabricsCard(fabric);
      fabSection.appendChild(fabricCard);
    });
  });

  // search by name
  const searchBar = document.getElementById("search-bar");
  const searchResults = document.getElementById("search-results");
  const searchResultsBody = document.getElementById("search-results__body");
  searchBar.addEventListener("focus", () => {
    searchResults.style.display = "block";
  });
  searchBar.addEventListener("blur", () => {
    setTimeout(() => {
      searchResults.style.display = "none";
    }, 200);
  });

  searchBar.addEventListener("input", (e) => {
    const query = e.target.value;
    searchResultsBody.innerHTML = "";
    fabs = fabricsMaster;
    if (query.length > 0) {
      const results = fabs.filter((f) => {
        // any word of fab patternColorCombo starts with any word of query
        const queryWords = query.toLowerCase().split(" ");
        const fabWords = f.patternColorCombo.toLowerCase().split(" ");
        return queryWords.every((qw) =>
          fabWords.some((fw) => fw.startsWith(qw))
        );
      });

      results.forEach((r) => {
        const result = document.createElement("div");
        result.classList.add("row", "mb-2");
        result.style.cursor = "pointer";
        result.setAttribute("data-bs-toggle", "modal");
        result.setAttribute("data-bs-target", "#exampleModal");
        result.innerText = r.patternColorCombo;
        result.addEventListener("click", () => {
          magfabrics.getFabricByName(r.patternColorCombo).then((result) => {
            openCard(result.value.fabric);
          });
          // openCard(r);
        });
        searchResultsBody.appendChild(result);
      });
    }
  });

  //search by id
  const searchIdBar = document.getElementById("search-id-bar");
  const searchIdResults = document.getElementById("search-results-id");
  const searchIdResultsBody = document.getElementById(
    "search-results-id__body"
  );
  searchIdBar.addEventListener("focus", () => {
    searchIdResults.style.display = "block";
  });
  searchIdBar.addEventListener("blur", () => {
    setTimeout(() => {
      searchIdResults.style.display = "none";
    }, 200);
  });

  searchIdBar.addEventListener("input", (e) => {
    const query = e.target.value;
    searchIdResultsBody.innerHTML = "";
    fabs = fabricsMaster;
    if (query.length > 0) {
      const results = fabs.filter((f) => {
        // any word of fab Pattern Code starts with any word of query
        const queryWords = query.toLowerCase().split(" ");
        const fabWords = f.productCode.toLowerCase().split(" ");
        return queryWords.every((qw) =>
          fabWords.some((fw) => fw.startsWith(qw))
        );
      });

      results.forEach((r) => {
        const result = document.createElement("div");
        result.classList.add("row", "mb-2");
        result.style.cursor = "pointer";
        result.setAttribute("data-bs-toggle", "modal");
        result.setAttribute("data-bs-target", "#exampleModal");
        result.innerText = r.productCode;
        result.addEventListener("click", () => {
          magfabrics.getFabricById(r.productCode).then((result) => {
            openCard(result.value.fabric);
          });
          // openCard(r);
        });
        searchIdResultsBody.appendChild(result);
      });
    }
  });

  //search by sku
  const searchSkuBar = document.getElementById("search-sku-bar");
  const searchSkuResults = document.getElementById("search-results-sku");
  const searchSkuResultsBody = document.getElementById(
    "search-results-sku__body"
  );
  searchSkuBar.addEventListener("focus", () => {
    searchSkuResults.style.display = "block";
  });

  searchSkuBar.addEventListener("blur", () => {
    setTimeout(() => {
      searchSkuResults.style.display = "none";
    }, 200);
  });

  searchSkuBar.addEventListener("input", (e) => {
    const query = e.target.value;
    searchSkuResultsBody.innerHTML = "";
    fabs = fabricsMaster;
    if (query.length > 0) {
      const results = fabs.filter((f) => {
        // any word of fab patternColorCombo starts with any word of query
        const queryWords = query.toLowerCase().split(" ");
        const fabWords = f.sku.toLowerCase().split(" ");
        return queryWords.every((qw) =>
          fabWords.some((fw) => fw.startsWith(qw))
        );
      });

      results.forEach((r) => {
        const result = document.createElement("div");
        result.classList.add("row", "mb-2");
        result.style.cursor = "pointer";
        result.setAttribute("data-bs-toggle", "modal");
        result.setAttribute("data-bs-target", "#exampleModal");
        result.innerText = r.sku;
        result.addEventListener("click", () => {
          magfabrics.getFabricBySku(r.sku).then((result) => {
            openCard(result.value.fabric);
          });
          // openCard(r);
        });
        searchSkuResultsBody.appendChild(result);
      });
    }
  });

  const cleaningBtn = document.getElementById("cleaning-btn");
  cleaningBtn.addEventListener("click", () => openCleaningCard());

  const taxonomiesBtn = document.getElementById("taxonomies-btn");
  taxonomiesBtn.addEventListener("click", () => openTaxonomiesCard());

  // test get by sku
  // magfabrics.getFabricBySku("4326").then((result) => console.log(result));
});

// -----------------------------------------------------

// utilities

// Debounce
function debounce(func, wait = 20, immediate = true) {
  let timeout;
  return function () {
    let context = this,
      args = arguments;
    let later = function () {
      timeout = null;
      if (!immediate) func.apply(context, args);
    };
    let callNow = immediate && !timeout;
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
    if (callNow) func.apply(context, args);
  };
}

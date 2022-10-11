"use strict";

function createFabricsCard(data) {
  const fabricCard = document.createElement("div");

  fabricCard.innerHTML = `<div class="card fab-card m-2 shadow-sm" style="cursor: pointer" data-bs-toggle="modal" data-bs-target="#exampleModal">
  <img src="${
    data.image || "logo_dark.png"
  }" class="card-img-top p-2" alt="fabric">

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

document.addEventListener("DOMContentLoaded", function () {
  const fabSection = document.getElementById("fab-section");
  // fabSection.appendChild(createFabricsCard());

  const apiKey = "Zah3QYGl471fdlhw--";

  const magnoliaAPIClient = magnolia.initialize(apiKey);

  magnolia.getAllFabrics().then((result) => {
    if (result.error) {
      console.error(result.error);
      return;
    }

    console.log(result.value);

    // grab a subset of the fabrics
    const fabrics = result.value.fabricsList.slice(150, 200);

    // create a card for each fabric
    fabrics.forEach((fabric) => {
      const fabricCard = createFabricsCard(fabric);
      fabSection.appendChild(fabricCard);
    });
  });

  magnolia
    .getFabricByName("EVERLY BALL FRINGE GRAPE")
    .then((result) => console.log(result));
});

function createFabricsCard() {
  const fabricCard = document.createElement("div");

  fabricCard.innerHTML = `<div class="card fab-card m-2 shadow-sm">
  <img src="logo_dark.png" class="card-img-top p-2" alt="fabric">
  <div class="card-body">
      <h5 class="card-title">Fabric</h5>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
  </div>
</div>`;

  return fabricCard;
}

document.addEventListener("DOMContentLoaded", function () {
  const fabSection = document.getElementById("fab-section");
  fabSection.appendChild(createFabricsCard());

  const apiKey = 'dCBv2g&G7CpG9Az#';

  const magnoliaAPIClient = magnolia.initialize(apiKey);
  magnolia.getAllFabrics().then((result) => console.log("HERE" + JSON.stringify(result)));
});

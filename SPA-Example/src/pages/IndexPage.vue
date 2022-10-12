<template>
  <q-page class="">
    <div class="flex justify-between items-center q-px-xl">
      <h1>
        <img
          alt="Magnolia Fabrics logo"
          src="~assets/logo_dark.png"
          style="width: 300px"
        />
      </h1>

      <div class="text-h4">Magnolia Fabrics API</div>
    </div>

    <div class="q-pa-xl flex justify-center items-center">
      <q-spinner-gears v-if="loading" size="150px" color="grey-9" />
      <template v-for="fabric in fabrics.slice(0,200)" :key="fabric.productCode">
      <q-card class="fabCard q-ma-md cursor-pointer" >
        <div class="w-full">
          <q-img :src="fabric.image" />
        </div>
        <q-card-section>
          <div class="text-h6">
            {{ fabric.patternColorCombo}}
          </div>
          <div class="text-grey">
            Best used for {{ fabric.usesList.join(', ')}}
          </div>
        </q-card-section>
      </q-card>
      </template>
    </div>
  </q-page>
</template>

<script>
import { defineComponent, onMounted, ref } from "vue";
import magnolia from "magnolia-fabrics";

export default defineComponent({
  name: "IndexPage",

  setup() {
    const fabrics = ref([]);
    const loading = ref(true);

    onMounted(async () => {
      magnolia.initialize("Zah3QYGl471fdlhw");
      const fabricResults = await magnolia.getAllFabrics();
      if (fabricResults.value) {
        fabrics.value = fabricResults?.value?.fabricsList;
      }
      loading.value = false;
    });

    return {
      fabrics,
      loading
    };
  },
});
</script>

<style>
.fabCard {
  width: 300px;
}
</style>

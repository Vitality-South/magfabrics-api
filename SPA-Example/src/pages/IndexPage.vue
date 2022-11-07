<template>
  <q-page class="">
    <div class="flex justify-between items-center q-px-xl">
      <h1>
        <img
          alt="MagFabrics logo"
          src="~assets/logo_dark.png"
          style="width: 300px"
        />
      </h1>

      <div class="text-h4">MagFabrics API</div>
    </div>

    <div class="q-pa-xl flex justify-center items-center">
      <q-spinner-gears v-if="loading" size="150px" color="grey-9" />
      <template
        v-for="fabric in fabrics.slice(0, 200)"
        :key="fabric.productCode"
      >
        <q-card
          class="fabCard q-ma-md cursor-pointer"
          @click="onFabCardClicked(fabric)"
        >
          <div class="w-full">
            <q-img :src="fabric.image" />
          </div>
          <q-card-section>
            <div class="text-h6">
              {{ fabric.patternColorCombo }}
            </div>
            <div class="text-grey">
              Best used for {{ fabric.usesList.join(", ") }}
            </div>
          </q-card-section>
        </q-card>
      </template>
    </div>
  </q-page>

  <q-dialog v-model="infoPopup">
    <q-card class="bg-white q-pa-md scroll info-dialog">
      <template v-for="[key, value] of Object.entries(activeData)" :key="value">
        <div class="w-full row">
          <div class="col">{{ key }}</div>
          <div class="col">{{ value }}</div>
        </div>
      </template>
    </q-card>
  </q-dialog>
</template>

<script>
import { defineComponent, onMounted, ref } from "vue";
import magfabrics from "@vitality-south/magfabrics";

export default defineComponent({
  name: "IndexPage",

  setup() {
    const fabrics = ref([]);
    const loading = ref(true);
    const activeData = ref({});
    const infoPopup = ref(false);

    onMounted(async () => {
      magfabrics.initialize("Zah3QYGl471fdlhw");
      const fabricResults = await magfabrics.getAllFabrics();
      if (fabricResults.value) {
        fabrics.value = fabricResults?.value?.fabricsList;
      }
      loading.value = false;
    });

    const onFabCardClicked = (fabricInfo) => {
      activeData.value = fabricInfo;
      infoPopup.value = true;
    };

    return {
      fabrics,
      loading,
      onFabCardClicked,
      activeData,
      infoPopup,
    };
  },
});
</script>

<style>
.fabCard {
  width: 300px;
}
</style>

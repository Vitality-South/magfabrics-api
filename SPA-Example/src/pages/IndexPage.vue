<template>
  <q-page class="flex flex-center">
    <img
      alt="Magnolia Fabrics logo"
      src="~assets/logo_dark.png"
      style="width: 300px;"
    >
  </q-page>
</template>

<script>
import { defineComponent } from 'vue'
import magnolia from 'magnolia-fabrics';

export default defineComponent({
  name: 'IndexPage',

  setup() {
    magnolia.initialize('Zah3QYGl471fdlhw');
    magnolia.getAllFabrics().then((fabrics)=>{
      console.log(fabrics)
    });
    return {

    };
  },
})
</script>

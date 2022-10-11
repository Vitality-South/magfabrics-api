<template>
  <q-layout view="hHh Lpr lFf">
    <q-header >
      <q-toolbar class="bg-black">
        <!-- <q-btn
          flat
          dense
          round
          icon="menu"
          aria-label="Menu"
          @click="toggleLeftDrawer"
        /> -->

        <q-toolbar-title>
          Magnolia Fabrics API
        </q-toolbar-title>

      </q-toolbar>
    </q-header>

    <q-drawer
      v-model="leftDrawerOpen"
      show-if-above
      bordered
    >
      <q-list>
        <q-item-label
        class="text-bold"
          header

        >
          Examples
        </q-item-label>

        <MenuLink
          v-for="link in linksList"
          :key="link.title"
          v-bind="link"
        />
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
import { defineComponent, ref } from 'vue'
import MenuLink from 'src/components/MenuLink.vue'

const linksList = [
  {
    title: 'Fabrics',
    link: '/fabrics'
  },
  {
    title: 'Cleaning Codes',
    link: '/cleaning-codes'
  },
  {
    title: 'Taxonomies',
    link: 'taxonomies'
  },
  {
    title: 'Other',
    link: 'other'
  },

]

export default defineComponent({
  name: 'MainLayout',

  components: {
    MenuLink
  },

  setup () {
    const leftDrawerOpen = ref(false)

    return {
       linksList,
      leftDrawerOpen,
      toggleLeftDrawer () {
        leftDrawerOpen.value = !leftDrawerOpen.value
      }
    }
  }
})
</script>

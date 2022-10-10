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
          Magnolia Fabrics API - SPA Example
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

        <EssentialLink
          v-for="link in essentialLinks"
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
import EssentialLink from 'components/EssentialLink.vue'

const linksList = [
  {
    title: 'Fabrics',
    // caption: '',
    // icon: 'school',
    link: 'https://quasar.dev'
  },
  {
    title: 'Cleaning Codes',
    // caption: 'github.com/quasarframework',
    // icon: 'code',
    link: 'https://github.com/quasarframework'
  },
  {
    title: 'Taxonomies',
    // caption: 'chat.quasar.dev',
    // icon: 'chat',
    link: 'https://chat.quasar.dev'
  },
  {
    title: 'Other',
    // caption: 'forum.quasar.dev',
    // icon: 'record_voice_over',
    link: 'https://forum.quasar.dev'
  },

]

export default defineComponent({
  name: 'MainLayout',

  components: {
    EssentialLink
  },

  setup () {
    const leftDrawerOpen = ref(false)

    return {
      essentialLinks: linksList,
      leftDrawerOpen,
      toggleLeftDrawer () {
        leftDrawerOpen.value = !leftDrawerOpen.value
      }
    }
  }
})
</script>


const routes = [
  {
    path: "/",
    component: () => import("layouts/MainLayout.vue"),
    children: [{ path: "", component: () => import("pages/IndexPage.vue") }],
  },

  {
    path: "/fabrics",
    component: () => import("layouts/MainLayout.vue"),
    children: [{ path: "", component: () => import("pages/Fabrics.vue") }],
  },

  {
    path: "/taxonomies",
    component: () => import("layouts/MainLayout.vue"),
    children: [{ path: "", component: () => import("pages/Taxonomies.vue") }],
  },

  {
    path: "/cleaning-codes",
    component: () => import("layouts/MainLayout.vue"),
    children: [
      { path: "", component: () => import("pages/CleaningCodes.vue") },
    ],
  },

  {
    path: "/other",
    component: () => import("layouts/MainLayout.vue"),
    children: [{ path: "", component: () => import("pages/Other.vue") }],
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: "/:catchAll(.*)*",
    component: () => import("pages/ErrorNotFound.vue"),
  },
];

export default routes

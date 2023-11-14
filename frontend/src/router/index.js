import { createRouter, createWebHistory } from 'vue-router'
import MasterLayout from '../views/Index.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    component: () => import('../views/HomeView.vue'),
    meta:{
      requireAuth:true,
      layout: MasterLayout
    }
  },
  {
      path: '/:username',
      name: 'profile',
      component: () => import('../views/Profile.vue'),
      meta:{
        requireAuth:true,
        layout: MasterLayout
      },
      props: true
  },

  {
    path: '/login',
    name: 'login',
    component: () => import('../views/Login.vue'),
    meta:{
        requireAuth:false,
    }
  },
  {
    path: '/register',
    name: 'register',
    component: () => import('../views/Register.vue'),
    meta:{
        requireAuth:false,
    }
  },
];

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes,
  linkActiveClass:"active",
  linkExactActiveClass:"exact-active"
})
router.beforeEach((to,from) => {
  if(to.meta.requireAuth && !localStorage.getItem('token'))
  {
      return {name:'login'}
  }
  if(to.meta.requireAuth == false && localStorage.getItem('token'))
  {
      return {name:'home'}
  }
});
export default router

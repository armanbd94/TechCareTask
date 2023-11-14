import './assets/main.css'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap/dist/js/bootstrap.bundle.min.js'
import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import User from './Helpers/User';
window.User = User;
import axios from 'axios';

window.axios = axios;
window.axios.defaults.baseURL = import.meta.env.VITE_API_URL;
window.axios.defaults.headers.common['Authorization'] = !localStorage.getItem('token') ? '' : `Bearer ${localStorage.getItem('token')}`;
// window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';

const app = createApp(App)
app.use(router)
app.mount('#app')

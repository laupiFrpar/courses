import Vue from 'vue';
import App from './pages/products';

new Vue({
  render: (h) => h(App),
}).$mount('#app');

/**
 * Vue 3
 *
 * import { createApp, compile } from 'vue';
 * import App from './pages/products';
 *
 * createApp(App).mount('#app');
 */

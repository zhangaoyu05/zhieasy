import Vue from 'vue'
import App from './App.vue'
import router from './router'

import store from '@/store/index.js'

// 引入vant2插件
import Vant from 'vant'
import 'vant/lib/index.css'

// 引入登录滑块验证插件
import SlideVerify from 'vue-monoplasty-slide-verify'
// 适配移动端
import 'amfe-flexible'

Vue.use(Vant)
Vue.use(SlideVerify)

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')

<template>
  <div id="app">
    <navBar />
  </div>
</template>

<script>
import navBar from '@/components/navBar/navBar.vue'

import { bannerSlide } from '@/utils/bannerSlide.js'

export default {
  name: 'MyApp',
  components: {
    navBar
    // Dropresume,
    // Message
  },
  created() {
    bannerSlide()
  }

}
</script>

<style lang="less" scoped>
*{
  margin: 0;
  padding: 0;
}

// 阻止浏览器的默认滑动行为
html{
    touch-action:none;
    touch-action:pan-y;
}

input {
  border: 0 none;
  /* 清除浏览器默认样式 */
  -ms-progress-appearance: none;
}

// 解决苹果手机导航栏失效问题
.app {
  -webkit-overflow-scrolling: touch;
  overflow-y: scroll;
}
</style>

<template>
  <div class="notice">
    <div class="content_title">学习链接</div>
    <div class="container">
      <div v-for="(item, index) in LearningAddress" :key="index" class="notice_item" @click="toClasses(item.href)">
        <div
          :style="{
            background: `url(${item.backgroundImageAddress})`,
            backgroundRepeat: 'no-repeat',
            backgroundSize: '100% 100%',
          }"
          class="notice_item_img"
        />
        <div class="notice_text">{{ item.className }}</div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex'
export default {
  name: 'TabNotice',
  computed: {
    ...mapGetters([
      'LearningAddress'
    ])
  },
  methods: {
    toClasses(href) {
      window.open(href, '_blank')
    }
  }
}
</script>

<style lang="css" scoped>
.notice {
  background-color: #f5f5f5;
}

.content_title {
  width: 92vw;
  margin: auto;
  font-size: 70px;
}

.container {
  width: 92vw;
  height: 2120px;
  margin: auto;
  margin-top: 20px;
  padding-top: 40px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-evenly;
  border-radius: 40px;
  box-shadow: 0px 0px 10px 0px rgb(0 0 0 / 8%);
  background-color: white;
}

.notice_item_img {
  width: 42vw;
  height: 280px;
  border-radius: 20px;
  background-color: blue;
}

.notice_text {
  margin-top: 40px;
  font-size: 50px;
}
</style>

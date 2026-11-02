<template>
  <div class="container">
    <div class="coverHeader" />
    <div class="titleBox">
      <div class="title">计算机科学学院</div>
      <div class="tip">致易青年竞赛工作室</div>
    </div>
    <div class="decoration" />
    <div class="achievements">
      <div class="achievementsTitle">
        <div class="decorOSmall decorOLeft" />
        <div class="decorOBig decorOLeft" />
        <div class="achievementsTitleText">在致易学习大有可为</div>
        <div class="decorOBig decorORight" />
        <div class="decorOSmall decorORight" />
      </div>
      <div class="achievementsDescription">
        <p>工作室自成立以来已经参与了多项赛事</p>
        <p>取得了喜人成绩，继续以创新突破为宗旨</p>
        <p>不断提出新要求</p>
      </div>
      <swiper :options="swiperOption" class="swiper">
        <swiper-slide v-for="(item, index) in imageAddress" :key="index"><img :src="item.address" alt=""></swiper-slide>
      </swiper>
      <div class="track" />
      <div class="achievementsTitle">
        <div class="decorOSmall decorOLeft" />
        <div class="decorOBig decorOLeft" />
        <div class="achievementsTitleText">在致易不仅仅只有竞赛</div>
        <div class="decorOBig decorORight" />
        <div class="decorOSmall decorORight" />
      </div>
      <div class="achievementsDescription">
        <p>加入我们，我们带你发现代码的魅力</p>
        <p>给自己一个机会创造自己的精彩</p>
        <p>这里是青春的舞台，闪耀着创新和智慧的光芒</p>
        <p>我们期待你在这里为自己的人生添砖加瓦</p>
        <p>实现自己天马行空的想法</p>
      </div>
    </div>
    <Footer />
  </div>
</template>

<script>
import { swiper, swiperSlide } from 'vue-awesome-swiper'
import 'swiper/dist/css/swiper.css'
import Footer from '@/components/Footer'
import { mapGetters } from 'vuex'
export default {
  name: 'MyIntroduce',
  components: { Footer, swiper, swiperSlide },
  data() {
    return {
      swiperOption: {
        loop: true,
        slidesPerView: 2,
        autoplay: {
          delay: 1500,
          stopOnLastSlide: false
        },
        speed: 1200
      }
    }
  },
  computed: {
    ...mapGetters(['imageAddress'])
  }
}
</script>

<style lang="css" scoped>
.container {
  background-color: #f7f8fa;
}

.coverHeader {
  display: block;
  width: 100%;
  height: 7.55rem;
  background-image: url("https://images.zayy.online/images/moreintroduceBanner.png");
  background-size: cover;
  background-position: center center;
}

.titleBox {
  position: absolute;
  left: 0.7266666666666667rem;
  top: 2.83333333333333333rem;
  color: #f0f0f0;
}

.titleBox .title {
  font-size: 0.5333333333333333rem;
  font-weight: normal;
  line-height: 0.7466666666666667rem;
}

.titleBox .tip {
  font-size: 0.4333333333333335rem;
  font-weight: 400;
  line-height: 0.5866666666666667rem;
  margin-top: 0.62rem;
}

.achievements {
  margin: 0 auto;
  margin-top: -0.06667rem;
  width: 100%;
  text-align: center;
}

.decorOBig {
  width: 0.2333rem;
  height: 0.2333rem;
  border-radius: 2rem;
  background-color: #4e6ef2;
}

.decorOSmall {
  width: 0.1477rem;
  height: 0.1477rem;
  border-radius: 2rem;
  background-color: #4e6ef2;
}

.decorOLeft {
  margin-right: 0.2333rem;
}

.decorORight {
  margin-left: 00.2333rem;
}

.decoration {
  width: 100%;
  height: 1rem;
  border-radius: 0.6867rem 0.6867rem 0 0;
  margin-top: -0.9789rem;
  background-color: #f7f8fa;
}

.achievements .achievementsTitle {
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
  font-size: 0.5333333333333333rem;
  font-weight: 400;
  color: #000000;
}

.achievementsContent {
  width: 88%;
  min-height: 85px;
  margin: 33.5px auto 0;
  font-size: 0.43333rem;
  line-height: 0.8688rem;
  text-align: left;
  text-indent: 2em;
}

.achievementsDescription {
  width: 88%;
  margin: auto;
  margin-top: 35px;
  text-align: center;
  font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
  line-height: 0.876rem;
  font-size: 00.3866666666666667rem;
}

.swiper {
  margin-top: 0.3333rem;
  margin-bottom: 0, 3333rem;
  width: 9rem;
  height: 6rem;
  object-fit: cover;
}

.swiper img {
  width: 4rem;
  height: 6rem;
}

#elseTitle {
  color: #6a6a6a;
}

.track {
  width: 88%;
  height: 0.005rem;
  margin: 0 auto;
  margin-top: 0.385rem;
  margin-bottom: 0.445rem;
  border-top: 1px solid #c3c1c1;
}
</style>

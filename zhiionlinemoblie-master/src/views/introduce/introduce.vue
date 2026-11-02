<template>
  <div class="container">
    <div class="coverHeader" />
    <div class="title_box">
      <div class="title">计算机科学学院</div>
      <div class="tip">致易青年学科竞赛工作室</div>
    </div>
    <div class="decoration" />
    <div class="intro">
      <div class="info">
        <div class="title">致易工作室简介</div>
        <div class="titleEnglish">Welcome to Zhiyi</div>
        <div class="introcontent">
          <p>
            2019年起学院连续申报获批“领航”计划、“启明”计划等学风建设项目，陆续成立“玖玖陆”、“创客贴”和“斜杠青年”三个学科竞赛工作室，于2020年将三个工作室合并为现在的“致易青年”学科竞赛工作室。
          </p>
          <p>
            学院分别提供固定交流地点，打印机、投影仪、办公文具等基础用品，通过“以赛促学，以赛促建”的形式激发学生的学习兴趣和专业发展内动力，从学风建设和科技竞赛氛围两方面，提高学生参与学科竞赛的综合竞争力以及学院整体的学习风气。
            工作室自成立的3年以来，积极参与各类学术研究，学科竞赛，创新创业活动，并取得了瞩目的成绩。
            在各类学科竞赛中累积获得国家级奖项25项，省市级奖项80余项。发表学术论文3篇。上线运营小程序平台三个，web应用一个，累积用户量达到3000余人。注册成立创业公司一家。
          </p>
          <p>
            工作室成员毕业后，工作基本签约到百度，阿里，腾讯，字节跳动，滴滴，快手，美团等一线互联网大厂；有同学考研进入西安交通大学，西安电子科技大学等双一流名校；有同学出国继续深造。
          </p>
          <p>主要组织参加的竞赛包括但不限于：</p>
          <p>
            创新创业类：1. 大学生创新创业大赛; 2. 互联网+大学生创新创业大赛; 3.
            挑战杯大学生创新创业大赛等。
          </p>
          <p>
            计算机技术类：1. 中国大学生服务外包大赛; 2. 计算机设计大赛; 3.
            华为中国大学生ICT大赛; 4. 蓝桥杯编程大赛等。
          </p>
          <p>
            培养方向包括但不限于：
            web前端，服务端（Java，Python，Golang，C/C++），微信小程序，软件测试，运维，算法和数据结构，云计算，大数据等。
          </p>
        </div>
      </div>
    </div>
    <div class="reason">
      <div class="reason_box" @touchstart="gtouchstart" @touchmove="gtouchmove" @touchend="gtouchend">
        <div class="swiper-container">
          <!-- 290px -->
          <div :style="moveNow == false ? 'transition-duration: 300ms; transform: translate3d('+ changeX +'px, 0px, 0px);' :'transform: translate3d('+ nowChangeX +'px, 0px, 0px)'" class="swiper-wrapper reason-swipper" aria-live="polite">
            <!-- 改transform: translate3d(0px, 0px, 0px) 后的三个坐标里的第一个-->
            <!-- 6 -->
            <div
              class="swiper-slide"
              style="width: 268px; background-image: url(https://images.zayy.online/images/jianjie6.jpg)"
            />
            <!-- 7 -->
            <div
              class="swiper-slide"
              style="width: 268px; background-image: url(https://images.zayy.online/images/jianjie7.jpg)"
            />
            <!-- 1 -->
            <div
              class="swiper-slide"
              style="width: 268px; background-image: url(https://images.zayy.online/images/jianjie1.jpg)"
            />
            <!-- 2 -->
            <div
              class="swiper-slide"
              style="width: 268px; background-image: url(https://images.zayy.online/images/jianjie2.png)"
            />
            <!-- 3 -->
            <div
              class="swiper-slide"
              style="width: 268px; background-image: url(https://images.zayy.online/images/jianjie3.png)"
            />
            <!-- 4 -->
            <div
              class="swiper-slide"
              style="width: 268px; background-image: url(https://images.zayy.online/images/jianjie4.jpg)"
            />
            <!-- 5 -->
            <div
              class="swiper-slide"
              style="width: 268px; background-image: url(https://images.zayy.online/images/jianjie5.jpg)"
            />
            <!-- 6 -->
            <div
              class="swiper-slide"
              style="width: 268px; background-image: url(https://images.zayy.online/images/jianjie6.jpg)"
            />
            <!-- 7 -->
            <div
              class="swiper-slide"
              style="width: 268px; background-image: url(https://images.zayy.online/images/jianjie7.jpg)"
            />
            <!-- 1 -->
            <div
              class="swiper-slide"
              style="width: 268px; background-image: url(https://images.zayy.online/images/jianjie1.jpg);"
            />
            <!-- 2 -->
            <div
              class="swiper-slide"
              style="width: 268px; background-image: url(https://images.zayy.online/images/jianjie2.png)"
            />
          </div>
        </div>
      </div>

    </div>
    <Footer />
  </div>
</template>

<script>
import Footer from '@/components/Footer'
export default {
  name: 'MyIntroduce',
  components: { Footer },
  data() {
    return {
      // reason_box滚动事件
      startX: 0,
      startY: 0,
      moveX: '',
      moveY: '',
      cssX: '',
      angle: '',
      nowChangeX: '',
      moveNow: false,
      // changX用来记录touchend结束后图片应该在的位置
      changeX: -560
    }
  },
  methods: {
    gtouchstart(e) {
      this.startX = e.targetTouches[0].clientX
      this.startY = e.targetTouches[0].clientY
      if (this.changeX === -2590) {
        this.changeX = -560
      }
      if (this.changeX === -270) {
        this.changeX = -2300
      }
      e.stopPropagation()
    },
    gtouchmove(e) {
      this.moveX = e.targetTouches[0].clientX
      this.moveY = e.targetTouches[0].clientY
      this.angle = Math.atan2(Math.abs(this.startY - this.moveY), Math.abs(this.startX - this.moveX)) * 180 / Math.PI

      // cssX为手指在x轴位移
      this.cssX = this.startX - this.moveX

      // nowChangeX为现在图片需要改变的位置
      if (this.angle < 15) {
        this.moveNow = true
        e.preventDefault()
        this.nowChangeX = this.changeX - this.cssX
      } else {
        this.moveNow = false
      }
    },
    gtouchend(e) {
      if (this.cssX < 70 && this.cssX > 0) {
        // 手指位移小于70px  changX不改变
        this.moveNow = false
      }
      if (this.cssX >= 70) {
        // 手指位移大于70px  changX改变
        this.changeX = this.changeX - 290
        this.moveNow = false
      }
      if (this.cssX > -70 && this.cssX < 0) {
        this.moveNow = false
      }
      if (this.cssX <= -70) {
        this.changeX = this.changeX + 290
        this.moveNow = false
      }
      this.cssX = 0
    }
  }
}
</script>

<style lang="css" scoped>
.container {
  overflow: hidden;
  background-color: #f0f0f0;
}
.coverHeader {
  display: block;
  width: 100%;
  height: 7.55rem;
  background-image: url("https://images.zayy.online/images/moreintroduceBanner.png");
  background-size: cover;
  background-position: center center;
}

.title_box {
  position: absolute;
  left: 0.7266666666666667rem;
  top: 3.33333333333333333rem;
  color: #ffffff;
}

.title_box .title {
  font-size: 0.5333333333333333rem;
  font-weight: normal;
  line-height: 0.7466666666666667rem;
}

.title_box .tip {
  font-size: 0.4333333333333335rem;
  font-weight: 400;
  line-height: 0.5866666666666667rem;
  margin-top: 0.62rem;
}

.decoration {
  width: 100%;
  height: 1rem;
  border-radius: 0.6867rem 0.6867rem 0 0;
  margin-top: -0.9789rem;
  background-color: #f0f0f0;
}

.intro {
  position: relative;
}

.info {
  z-index: 1;
  box-sizing: border-box;
  padding-bottom: 0.56452rem;;
  color: #0f1011;
  text-align: center;
  background-color: #f0f0f0;
}

.intro .title {
  height: 2.09677rem;
  font-size: 0.80645rem;
  font-weight: 700;
  line-height: 2.09677rem;
}

.intro .titleEnglish {
   height: 0.29032rem;
    font-size: 0.44355rem;
    line-height: 0.29032rem;
    margin-top: -0.08065rem;
    margin-bottom: 0.72581rem;
}

.intro .introcontent {
  width: 88vw;
  min-height: 0.68548rem;
  margin: 33.5px auto 0;
  font-size: 0.32677rem;;
  line-height: 0.64516rem;
  text-align: left;
  text-indent: 2em;
}

/* reason */
.swiper-container {
  margin-left: auto;
  margin-right: auto;
  position: relative;
  overflow: hidden;
  list-style: none;
  padding: 0;
  z-index: 1;
  margin-top: 0.17742rem;
  margin-bottom: -0.5966666666666rem;
}

.reason .reason_box .swiper-container {
  position: relative;
  width: 7.1466666666666665rem ;
  margin-left: -0.5966666666666667rem;
  overflow: visible;
}

.swiper-wrapper {
  position: relative;
  width: 100%;
  height: 100%;
  z-index: 1;
  display: flex;
  transition-property: transform;
  box-sizing: content-box;
}

.swiper-slide {
  flex-shrink: 0;
  width: 100%;
  height: 3.79032rem;
  position: relative;
  transition-property: transform;
}

.reason .reason_box .swiper-container .swiper-slide {
  position: relative;
  font-size: 0;
  width: 100% ;
  box-sizing: border-box;
  margin: 0 .226667rem;
  background-size: cover;
  margin-left: 0.39871rem;
  border-radius: 0.19355rem;
}

.reason .reason_box .swiper-container .swiper-slide .reason_item {
  width: 7.1466666666666665rem;
  flex: 0 0 20%;
  background: #ffffff;
  box-sizing: border-box;
  margin-top: 0;
  padding: .64rem;
  padding-top: .426667rem;
  border-radius: 0.4266666666666667rem;
  box-shadow: 0px 0px 0.4266666666666667rem 0px rgb(0 0 0 / 8%);
  display: inline-block;
}

.reason .reason_box .swiper-container .swiper-slide .reason_item .reason_img {
  width: 4.666667rem;
  height: 3.733333rem;
  margin: 0 auto;
  background-size: 100%;
  margin-bottom: .106667rem;
}

.reason .reason_box .swiper-container .swiper-slide .reason_item .reason_title {
  color: #333333;
  font-size: 0.5333333333333333rem;
  font-weight: 500;
  line-height: 0.7466666666666667rem;
  margin: 0.64rem 0 0.21333333333333335rem;
  margin-top: 0;
}

.reason .reason_box .swiper-container .swiper-slide .reason_item .reason_text {
  color: rgba(0, 0, 0, 0.8);
  font-size: 0.4266666666666667rem;
  line-height: 0.64rem;
  white-space: initial;
}
</style>

<template>
  <div class="box home">
    <div class="content">
      <div class="main">
        <div class="reason">
          <div class="box_title">加入致易的n个理由</div>
          <div class="reason_box" @touchstart="gtouchstart" @touchmove="gtouchmove" @touchend="gtouchend">
            <div class="swiper-container">
              <div :style="moveNow == false ? 'transition-duration: 300ms; transform: translate3d('+ changeX +'px, 0px, 0px);' :'transform: translate3d('+ nowChangeX +'px, 0px, 0px)'" class="swiper-wrapper reason-swipper" aria-live="polite">
                <!-- 改transform: translate3d(0px, 0px, 0px) 后的三个坐标里的第一个-->
                <!-- 5 -->
                <div class="swiper-slide" style="width: 268px;">
                  <div class="reason_item">
                    <div class="reason_img" style="background-image: url(https://images.yzklianai.com/images/together2.png);" />
                    <div class="reason_title">齐心协力</div>
                    <div class="reason_text">
                      在工作室丰富的竞赛经验下，学长学姐组织并带领团队参加学科竞赛，齐心协力去做好每一项竞赛，斩下一份份荣誉。
                    </div>
                  </div>
                </div>
                <!-- 6 -->
                <div class="swiper-slide" style="width: 268px;">
                  <div class="reason_item">
                    <div class="reason_img" style="background-image: url(https://images.yzklianai.com/images/all.svg);" />
                    <div class="reason_title">全面兼顾</div>
                    <div class="reason_text">
                      在学习上，我们解决你学习中的疑惑，帮助你找到自己的方向。生活上，我们是无所不谈的朋友，吃喝玩乐样样ok。
                    </div>
                  </div>
                </div>
                <!-- 1 -->
                <div class="swiper-slide" style="width: 268px;">
                  <div class="reason_item">
                    <div class="reason_img" style="background-image: url(https://images.yzklianai.com/images/lively.png);" />
                    <div class="reason_title">严肃活泼</div>
                    <div class="reason_text">严肃使你进步，活泼为你缓解压力，在这里，你遇到的是为你解决疑惑的学长学姐，更是共同进步的朋友。
                    </div>
                  </div>
                </div>
                <!-- 2 -->
                <div class="swiper-slide" style="width: 268px;">
                  <div class="reason_item">
                    <div class="reason_img" style="background-image: url(https://images.yzklianai.com/images/free.png);" />
                    <div class="reason_title">时间自由</div>
                    <div class="reason_text">
                      工作室主要为自主学习，每周有一次例会，解决大家学习的疑惑并对每周的学习做总结扩展，其他时间自主安排。
                    </div>
                  </div>
                </div>
                <!-- 3 -->
                <div class="swiper-slide" style="width: 268px;">
                  <div class="reason_item">
                    <div class="reason_img" style="background-image: url(https://images.yzklianai.com/images/work.png);" />
                    <div class="reason_title">体验办公</div>
                    <div class="reason_text">舒适的办公环境，融洽的工作氛围，相互合作相互学习，提前体验互联网办公，成为“打工人”。
                    </div>
                  </div>
                </div>
                <!-- 4 -->
                <div class="swiper-slide" style="width: 268px;">
                  <div class="reason_item">
                    <div class="reason_img" style="background-image: url(https://images.yzklianai.com/images/diy.png);" />
                    <div class="reason_title">线下实践</div>
                    <div class="reason_text">
                      在大家学习到一定程度时，会组织大家做开发实践，工作室有各类项目随手练，有专门的学长学姐带队参加各类竞赛。
                    </div>
                  </div>
                </div>
                <!-- 5 -->
                <div class="swiper-slide" style="width: 268px;">
                  <div class="reason_item">
                    <div class="reason_img" style="background-image: url(https://images.yzklianai.com/images/together2.png);" />
                    <div class="reason_title">齐心协力</div>
                    <div class="reason_text">
                      在工作室丰富的竞赛经验下，学长学姐组织并带领团队参加学科竞赛，齐心协力去做好每一项竞赛，斩下一份份荣誉。
                    </div>
                  </div>
                </div>
                <!-- 6 -->
                <div class="swiper-slide" style="width: 268px;">
                  <div class="reason_item">
                    <div class="reason_img" style="background-image: url(https://images.yzklianai.com/images/all.svg);" />
                    <div class="reason_title">全面兼顾</div>
                    <div class="reason_text">
                      在学习上，我们解决你学习中的疑惑，帮助你找到自己的方向。生活上，我们是无所不谈的朋友，吃喝玩乐样样ok。
                    </div>
                  </div>
                </div>
                <!-- 1 -->
                <div class="swiper-slide" style="width: 268px;">
                  <div class="reason_item">
                    <div class="reason_img" style="background-image: url(https://images.yzklianai.com/images/lively.png);" />
                    <div class="reason_title">严肃活泼</div>
                    <div class="reason_text">严肃使你进步，活泼为你缓解压力，在这里，你遇到的是为你解决疑惑的学长学姐，更是共同进步的朋友。
                    </div>
                  </div>
                </div>
                <!-- 2 -->
                <div class="swiper-slide" style="width: 268px;">
                  <div class="reason_item">
                    <div class="reason_img" style="background-image: url(https://images.yzklianai.com/images/free.png);" />
                    <div class="reason_title">时间自由</div>
                    <div class="reason_text">
                      工作室以自主学习为主，学习时间和内容自主安排，随到随学，随心随学，除每周的总结例会外，其他时间随意支配。
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'TabWhyin',
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
      changeX: -565
    }
  },
  methods: {
    gtouchstart(e) {
      this.startX = e.targetTouches[0].clientX
      this.startY = e.targetTouches[0].clientY
      if (this.changeX === -2365) {
        this.changeX = -565
      }
      if (this.changeX === 35) {
        this.changeX = -1765
      }
      e.stopPropagation()
    },
    gtouchmove(e) {
      this.moveX = e.targetTouches[0].clientX
      this.moveY = e.targetTouches[0].clientY
      this.angle = (Math.atan2(Math.abs(this.startY - this.moveY), Math.abs(this.startX - this.moveX)) * 180) / Math.PI

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
        this.moveNow = false
      }

      if (this.cssX >= 70) {
        // 手指位移大于70px  changX改变
        this.moveNow = false
        this.changeX = this.changeX - 300
        // console.log(this.changeX);
      }

      if (this.cssX > -70 && this.cssX < 0) {
        this.moveNow = false
      }

      if (this.cssX <= -70) {
        this.moveNow = false
        this.changeX = this.changeX + 300
      }
    }
  }
}
</script>

<style lang="css" scoped>

/* content部分样式 */
.home .content {
  position: relative;
  z-index: 99;
}

.box .content {
  padding: 0 0.4266666666666667rem;
  background: #f5f5f5;
  overflow: hidden;
}

.home .content .main {
  padding-top: 0;
}

.content .main {
  padding: 1.4933333333333334rem 0 3.2rem;
  box-sizing: border-box;
  margin: 0 auto;
  padding-bottom: 0.493333rem;
}
/* notice */
.notice {
  position: relative;
  border-radius: 16px;
}

.box_title {
  color: rgba(0, 0, 0, 0.8);
  font-size: 0.533333rem;
  line-height: 48px;
  margin: 96px 0 40px;
}

.notice_content {
  border-radius: 16px;
  background-color: #ffffff;
  padding: 24px 24px 0px 24px;
}

.notice_item_content {
  display: flex;
}

.notice_item {
  flex: 2;
  margin-bottom: 10px;
}

.notice_item:first-child {
  margin-right: 10px;
}

.notice_item_img {
  height: 200px;
  width: 380px;
  border-radius: 20px;
  margin-left: 70px;
  background-size: cover;
  background-repeat: no-repeat;
  cursor: pointer;
}

.notice_item .notice_text {
  font-size: 16px;
  color: #18191c;
  line-height: 40px;
  margin-left: 70px;
  margin-top: 16px;
  cursor: pointer;
  text-decoration: none;
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
  display:flex;
}
.reason_box{
  height: 1300px;
  width:1000px;
  display: flex;
}
.home .content .reason .swiper-container {
  margin-top: 50px;
  position: relative;
  font-size: 0.533333rem;
  width: 7.1466666666666665rem;
  margin-left: -1rem;
  margin-bottom: 0.8533333333333334rem;
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
  height: 100%;
  position: relative;
  transition-property: transform;
}

.home .content .reason .reason_box .swiper-container .swiper-slide {
  position: relative;
  font-size: 0;
  width: 100% ;
  box-sizing: border-box;
  margin: 0 6%;
}

.home .content .reason .reason_box .swiper-container .swiper-slide .reason_item {
  width: 7.1466666666666665rem;
  flex: 0 0 20%;
  background: #ffffff;
  box-sizing: border-box;
  margin-top: 0;
  padding: 0.64rem;
  padding-top: 0.426667rem;
  border-radius: 0.4266666666666667rem;
  box-shadow: 0px 0px 0.4266666666666667rem 0px rgb(0 0 0 / 8%);
  display: inline-block;
}

.home .content .reason .reason_box .swiper-container .swiper-slide .reason_item .reason_img {
  width: 4.666667rem;
  height: 3.733333rem;
  margin: 0 auto;
  background-size: 100%;
  margin-bottom: 0.106667rem;
}

.home .content .reason .reason_box .swiper-container .swiper-slide .reason_item .reason_title {
  color: #333333;
  font-size: 0.5333333333333333rem;
  font-weight: 500;
  line-height: 0.7466666666666667rem;
  margin: 0.64rem 0 0.21333333333333335rem;
  margin-top: 0;
}

.home .content .reason .reason_box .swiper-container .swiper-slide .reason_item .reason_text {
  color: rgba(0, 0, 0, 0.8);
  font-size: 0.4266666666666667rem;
  line-height: 0.64rem;
  white-space: initial;
}
</style>

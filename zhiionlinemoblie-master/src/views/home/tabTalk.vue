<template>
  <div class="box home">
    <div class="content">
      <div class="main">
        <div class="history">
          <div class="content_title">师兄师姐说</div>
          <div class="history_box" @touchstart="htouchstart" @touchmove="htouchmove" @touchend="htouchend">
            <div class="swiper-container">
              <div :style="hisChange == false ? 'transition-duration: 300ms; transform: translate3d('+ changeHstoryX +'px, 0px, 0px);' : 'transform: translate3d('+ nowChangeHstoryX +'px, 0px, 0px);'" class="swiper-wrapper history-swipper" aria-live="polite">
                <!-- 6 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">“不同的想法与理念在这里碰撞，激励了我追求未来更大的可能性”</div>
                        <div class="tag_box">
                          <div class="tag">字节跳动</div>
                          <div class="tag">测试开发</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">姚帅</div>
                          <div class="issuer_job">17级-计算机科学学院-网络工程</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/yaoshuai.jpg); background-position-y: -190px;" />
                </div>
                <!-- 7 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">
                          “我们遇到什么困难也不要怕,微笑着面对他,消除恐惧的最好办法就是面对恐惧,坚持才是胜利,加油,奥利给”</div>
                        <div class="tag_box">
                          <div class="tag">滴滴</div>
                          <div class="tag">软件研发工程师</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">刘景亮</div>
                          <div class="issuer_job">17级-计算机科学学院-计卓</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/jingliang.jpg); background-position-y: -30px;" />
                </div>
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">
                          “既然选择了远方，便只顾风雨兼程”
                        </div>
                        <div class="tag_box">
                          <div class="tag">猫眼</div>
                          <div class="tag">专业：大数据开发工程师</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">张辉</div>
                          <div class="issuer_job">18级-计算机科学学院-计算机科学与技术</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/hui.jpg); background-position-y: -100px;" />
                </div>
                <!-- 1 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">
                          “当你决定钻捷径的那一刻，看似侥幸省掉一程辛苦，可失去的，是努力时锻造成的能力，坎坷里磨砺出的意志，和拼搏中积攒下的人脉与经验”
                        </div>
                        <div class="tag_box">
                          <div class="tag">英国利兹大学</div>
                          <div class="tag">advance computer science</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">宁大力</div>
                          <div class="issuer_job">16级-计算机科学学院-软件工程</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/dali.jpg); background-position-y: -40px;" />
                </div>
                <!-- 2 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">“人生走过的每一步路都不会白走”</div>
                        <div class="tag_box">
                          <div class="tag">阿里巴巴</div>
                          <div class="tag">智能供应链事业部</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">李昆洪</div>
                          <div class="issuer_job">16级-计算机科学学院-软件工程</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/kunhong.jpg); background-position-y: -143px;" />
                </div>
                <!-- 3 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">“每个人来到这里都会闪闪发光，加入我们快来做最闪耀的那颗星！”</div>
                        <div class="tag_box">
                          <div class="tag">好未来</div>
                          <div class="tag">Android开发工程师</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">邹长林</div>
                          <div class="issuer_job">17级-城市学院-建筑环境与能源应用工程</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/changlinMobile.png); background-position-x: -26px;" />
                </div>
                <!-- 4 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">“事常与人违，事总在人为”</div>
                        <div class="tag_box">
                          <div class="tag">西安电子科技大学</div>
                          <div class="tag">计算机科学与技术</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">李景新</div>
                          <div class="issuer_job">17级-计算机科学学院-数字媒体技术</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/jingxin.jpg); background-position-y: -60px;" />
                </div>
                <!-- 5 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">“伸手摘星，即使一无所获，也不至于满身污泥”</div>
                        <div class="tag_box">
                          <div class="tag">快手</div>
                          <div class="tag">前端</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">张光辉</div>
                          <div class="issuer_job">17级-计算机科学学院-数字媒体技术</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/guanghuiMobile.png); background-position-x: -30px;" />
                </div>
                <!-- 6 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">“不同的想法与理念在这里碰撞，激励了我追求未来更大的可能性”</div>
                        <div class="tag_box">
                          <div class="tag">字节跳动</div>
                          <div class="tag">测试开发</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">姚帅</div>
                          <div class="issuer_job">17级-计算机科学学院-网络工程</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/yaoshuai.jpg); background-position-y: -190px;" />
                </div>
                <!-- 7 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">
                          “我们遇到什么困难也不要怕,微笑着面对他,消除恐惧的最好办法就是面对恐惧,坚持才是胜利,加油,奥利给”</div>
                        <div class="tag_box">
                          <div class="tag">滴滴</div>
                          <div class="tag">软件研发工程师</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">刘景亮</div>
                          <div class="issuer_job">17级-计算机科学学院-计卓</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/jingliang.jpg); background-position-y: -30px;" />
                </div>
                <!-- 8 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">
                          “每年新生都有我！”</div>
                        <div class="tag_box">
                          <div class="tag">研究生</div>
                          <div class="tag">华东师范大学</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">陆俊凯</div>
                          <div class="issuer_job">21级-计算机科学学院-软件工程</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.zayy.online/images/lujunkai.jpg); background-position-y: -30px;" />
                </div>
                <!-- 9 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">
                          “千里之行，始于足下！”</div>
                        <div class="tag_box">
                          <div class="tag">研究生</div>
                          <div class="tag">北京邮电大学</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">何浔航</div>
                          <div class="issuer_job">21级-计算机科学学院-网络空间安全</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.zayy.online/images/hexunhang.jpg); background-position-y: -30px;" />
                </div>
                <!-- 1 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">
                          “既然选择了远方，便只顾风雨兼程”
                        </div>
                        <div class="tag_box">
                          <div class="tag">猫眼</div>
                          <div class="tag">专业：大数据开发工程师</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">张辉</div>
                          <div class="issuer_job">18级-计算机科学学院-计算机科学与技术</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/hui.jpg); background-position-y: -100px;" />
                </div>
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">
                          “当你决定钻捷径的那一刻，看似侥幸省掉一程辛苦，可失去的，是努力时锻造成的能力，坎坷里磨砺出的意志，和拼搏中积攒下的人脉与经验”
                        </div>
                        <div class="tag_box">
                          <div class="tag">英国利兹大学</div>
                          <div class="tag">advance computer science</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">宁大力</div>
                          <div class="issuer_job">16级-计算机科学学院-软件工程</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/dali.jpg); background-position-y: -40px;" />
                </div>
                <!-- 2 -->
                <div class="swiper-slide" style="width: 295px;">
                  <div class="info_box">
                    <div class="info">
                      <div class="info_content">
                        <div class="info_img" />
                        <div class="text">“人生走过的每一步路都不会白走”</div>
                        <div class="tag_box">
                          <div class="tag">阿里巴巴</div>
                          <div class="tag">智能供应链事业部</div>
                        </div>
                        <div class="issuer">
                          <div class="issuer_name">李昆洪</div>
                          <div class="issuer_job">16级-计算机科学学院-软件工程</div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="video_box" style="background-image: url(https://images.yzklianai.com/images/kunhong.jpg); background-position-y: -143px;" />
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
  name: 'TabTalk',
  data() {
    return {
    // history_box滚动事件
      hisChange: false,
      startHstoryX: 0,
      startHstoryY: 0,
      moveHstoryX: '',
      moveHstoryY: '',
      cssHstoryX: '',
      nowChangeHstoryX: '',
      angleHstory: '',
      // changeHstoryX用来记录touchend结束后图片应该在的位置
      changeHstoryX: -685
    }
  },
  methods: {
    htouchstart(e) {
      this.startHstoryX = e.targetTouches[0].clientX
      this.startHstoryY = e.targetTouches[0].clientY
      if (this.changeHstoryX === -3197) {
        this.changeHstoryX = -685
      }
      if (this.changeHstoryX === 257) {
        this.changeHstoryX = -1941
      }
      e.stopPropagation()
    },
    htouchmove(e) {
      this.moveHstoryX = e.targetTouches[0].clientX
      this.moveHstoryY = e.targetTouches[0].clientY
      this.angleHstory = (Math.atan2(Math.abs(this.startHstoryY - this.moveHstoryY), Math.abs(this.startHstoryX - this.moveHstoryX)) * 180) / Math.PI

      // cssX为手指在x轴位移
      this.cssHstoryX = this.startHstoryX - this.moveHstoryX
      // nowChangeX为现在图片需要改变的位置
      if (this.angleHstory < 15) {
        this.hisChange = true
        e.preventDefault()
        this.nowChangeHstoryX = this.changeHstoryX - this.cssHstoryX
        this.hisChange = true
        // console.log("nowChangeHstoryX", nowChangeHstoryX);
      } else {
        this.hisChange = false
      }
    },
    htouchend(e) {
      if (this.cssHstoryX < 70 && this.cssHstoryX > 0) {
        // 手指位移小于70px  changX不改变
        this.hisChange = false
      }
      if (this.cssHstoryX >= 70) {
        // 手指位移大于70px  changX改变
        this.changeHstoryX = this.changeHstoryX - 314
        this.hisChange = false
        // console.log(this.changeHstoryX);
      }
      if (this.cssHstoryX > -70 && this.cssHstoryX < 0) {
        this.hisChange = false
      }
      if (this.cssHstoryX <= -70) {
        this.changeHstoryX = this.changeHstoryX + 314
        this.hisChange = false
        // console.log(this.changeHstoryX);
      }
      this.cssHstoryX = 0
    }
  }
}
</script>

<style lang="css" scoped>
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
  padding: 0.4933333333333334rem 0 3.2rem;
  box-sizing: border-box;
  margin: 0 auto;
  padding-bottom: 0.493333rem;
}
.content_title{
    font-size: 0.533333rem;
}
/* history */
.history_box{
  height: 1300px;
  width:1000px;
  display: flex;
}
.history .swiper-container {
  position: relative;
  display: flex;
  margin-top: 50px;
  width: 8.74666667rem;
  margin-left: -7rem;
  margin-bottom: 0.8533333333333334rem;
  overflow: visible;
}
.history  .swiper-slide {
  position: relative;
  font-size: 0;
  width: 100%;
  /* padding-bottom: 116.61%; */
  box-sizing: border-box;
  margin: 0 0.24rem;
}
.history .swiper-slide .info_box {
  position: absolute;
  left: 0;
  border-radius: 0.426667rem;
  background: #ffffff;
  z-index: 99;
  text-align: center;
  top: auto;
  min-height: 61.65%;
  transform: none;
  bottom: 0;
  padding-bottom: 0;
  width: 100%;
  box-shadow: 0px 0px 0.4266666666666667rem 0px rgb(0 0 0 / 8%);
  display: block;
}
.swiper-wrapper{
  display: flex;
}
.history .swiper-container .swiper-slide .info_box .info {
  position: absolute;
  width: 100%;
  height: 100%;
  padding: 0;
  text-align: left;
  box-sizing: border-box;
  display: flex;
}

.history .swiper-container .swiper-slide .info_box .info .info_content {
  position: relative;
  width: 100%;
  height: 100%;
  padding: 5.42% 5.13%;
  padding-bottom: 0.32rem;
  box-sizing: border-box;
}

.history .swiper-container .swiper-slide .info_box .info .info_content .info_img {
  position: absolute;
  top: -0.5866666666666667rem;
  right: 0.5866666666666667rem;
  width: 1.1733333333333333rem;
  height: 0.8266666666666667rem;
  background-image: url('https://images.yzklianai.com/images/home_info_img.png');
  background-size: cover;
}

.history .swiper-container .swiper-slide .info_box .info .info_content .text {
  color: rgba(0, 0, 0, 0.8);
  font-weight: 500;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 3;
  font-size: 0.4266666666666667rem;
  line-height: 0.64rem;
}

.tag_box {
  font-size: 0;
  display: flex;
}

.history .swiper-container .swiper-slide .info_box .info .info_content .tag_box .tag {
  font-size: 0.32rem;
  line-height: 0.5333333333333333rem;
  padding: 0.02666666666666667rem 0.21333333333333335rem;
  border-radius: 0.426667rem;
  margin-top: 0.21333333333333335rem;
}

.box .content .main .tag_box .tag:first-child {
  margin-left: 0;
}

.box .content .main .tag_box .tag {
  color: #0052d9;
  line-height: 0.64rem;
  border: 1px solid #0052d9;
  font-size: 0.32rem;
  border-radius: 0.106667rem;
  margin-left: 0.106667rem;
  padding: 0 0.21333333333333335rem;
  display: inline-block;
}

.history .swiper-container .swiper-slide .info_box .info .info_content .issuer {
  position: absolute;
  bottom: 8.52%;
  margin-top: 0.21333333333333335rem;
}

.history .swiper-container .swiper-slide .info_box .info .info_content .issuer .issuer_name {
  color: rgba(0, 0, 0, 0.8);
  font-size: 0.37333333333333335rem;
  font-weight: 500;
  line-height: 0.5866666666666667rem;
  margin-bottom: 0;
}

.history .swiper-container .swiper-slide .info_box .info .info_content .issuer .issuer_job {
  color: rgba(0, 0, 0, 0.6);
  font-size: 0.37333333333333335rem;
  font-weight: 400;
  line-height: 0.5866666666666667rem;
}

.history .swiper-container .swiper-slide.swiper-slide-active .video_box {
  float: right;
}

.history .swiper-container .swiper-slide .video_box {
  background-size: cover;
  display: inline-block;
  position: absolute;
  top: 0;
  width: 100%;
  border-radius: 0.426667rem 0.426667rem 0 0;
  padding-bottom: 58.3%;
}
</style>

<template>
  <div class="app">
    <div class="box home">
      <div class="banner">
        <img
          id="image"
          style="
             {
              display: none;
              object: fit;
            }
          "
          src="https://images.yzklianai.com/images/canvasImg.jpg"
        >
        <video
          id="video"
          ref="myVideo"
          class="banner_video"
          loop
          autoplay
          muted
          preload="auto"
          playsinline="true"
          webkit-playsinline="true"
          x5-playsinline="true"
          x5-video-orientation="portraint"
          x5-video-player-fullscreen="true"
          x5-video-player-type="h5"
          x-webkit-airplay="true"
          airplay="allow"
          style="display: none"
          src="https://images.yzklianai.com/images/zhiyimovie.m4v"
        />
        <canvas
          id="canvas"
          height="530px"
          width="853.333333px"
          style="z-index: -99"
        >
          您的浏览器不支持canvas
        </canvas>
        <div class="banner_content">
          <div class="banner_title">
            <div class="banner_titleLeft" />
            <div ref="banner_titleYou" class="banner_titleYou" />
            <div class="banner_titleRight" />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'TabTop',
  data() {
    return {
      you: ''
    }
  },

  mounted() {
    setTimeout(() => {
      this.$refs.myVideo.play()
    }, 500)
    var v = document.getElementById('video')
    var i = document.getElementById('image')
    var c = document.getElementById('canvas')
    var ctx = c.getContext('2d')
    i.onload = function() {
      ctx.drawImage(i, 0, -20, 428, 680)
    }
    v.addEventListener('play', function() {
      ctx.clearRect(0, 0, 853.333333, 530)
      var i = setInterval(function() {
        ctx.drawImage(v, 0, 0, 853.333333, 530)
        if (v.ended) {
          clearInterval(i)
        }
      }, 20)
    }, false)
  },

  created() {
    var instanceX = 0
    var that = this
    this.you = setInterval(function() {
      // console.log(666)
      that.$refs.banner_titleYou.style.backgroundPositionX = instanceX + 'rem'
      instanceX = instanceX - 3 / 2
      if (instanceX === -9) {
        instanceX = 0
      }
    }, 1000)
  },

  beforeDestroy() {
    clearInterval(this.you)
  }
}
</script>

<style lang="css" scoped>
#image {
  display: none;
  width: 100vw;
  height: 12.8rem;
  object-fit: cover;
}

.app {
  width: 100%;
}

.home {
  overflow: hidden;
}

.box {
  position: relative;
}

.home .banner {
  position: relative;
  background-size: cover;
  background-position: center center;
  box-sizing: border-box;
  height: 12.8rem;
}

.home .banner .banner_video {
  height: 100%;
  position: absolute;
  top: 0;
  left: -50%;
  z-index: -9999;
}
/* 让世界看到你的影响力部分 */
.home .banner .banner_content {
  position: absolute;
  top: 0%;
  left: 50%;
  transform: translateX(-50%);
  margin-top: 5.6rem;
  width: 100%;
  padding: 0 8.5%;
  box-sizing: border-box;
}

.home .banner .banner_content .banner_title {
  width: 100%;
  height: 1.893333rem;
  position: relative;
  display: flex;
  justify-content: space-between;
}

.home .banner .banner_content .banner_title .banner_titleLeft {
  width: 3.733333rem;
  height: 0.986667rem;
  background: url('https://images.yzklianai.com/images/title_left.png')
    no-repeat;
  background-size: 100%;
  margin-top: 0.186667rem;
}

.home .banner .banner_content .banner_title .banner_titleYou {
  width: 1.28rem;
  height: 1.333333rem;
  background: url('https://images.yzklianai.com/images/banner_titleYou.png')
    no-repeat;
  background-size: cover;
  margin: 0 0.133333rem;
  margin-top: -0.133333rem;
}

.home .banner .banner_content .banner_title .banner_titleRight {
  width: 2.986667rem;
  height: 0.986667rem;
  background: url('https://images.yzklianai.com/images/title_right.png')
    no-repeat;
  background-size: 100%;
  margin-top: 0.186667rem;
}
</style>

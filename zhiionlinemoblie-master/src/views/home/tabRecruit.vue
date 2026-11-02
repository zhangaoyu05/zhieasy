<template>
  <div class="box home">
    <div class="content">
      <div class="main">
        <div class="btn_box">
          <div id="btn_imdeliver" class="mobile_btn" @click="isLogin_1">
            <div class="btn_img" style="background-image: url(https://images.zayy.online/images/btn_img1.png);" />
            <div class="btn_text">简历投递</div>
          </div>
          <div id="btn_myResume" class="mobile_btn" @click="isLogin_2">
            <div class="btn_img" style="background-image: url(https://images.zayy.online/images/btn_img2.png);" />
            <div class="btn_text">我的简历</div>
          </div>
          <div id="btn_applyRate" class="mobile_btn" @click="isLogin_3">
            <div class="btn_img" style="background-image: url(https://images.zayy.online/images/btn_img3.png);" />
            <div class="btn_text">进度查询</div>
          </div>
        </div>
        <div class="project">
          <div class="content_title">致易招新</div>
          <div class="domestic">
            <div class="domestic_box">
              <div class="domestic_logo" />
              <button id="imdeliver_btn" type="button" class="el-button domestic_btn el-button--info is-round" @click="isLogin_1">
                <!---->
                <!----><span>立即投递</span>
              </button>
              <div class="title">致易招新</div>
              <div class="subtitle">2026致易招新</div>
              <div class="text">2026年1月-2026年4月</div>
              <div class="subtitle" />
            </div>
            <div class="domestic_box">
              <div class="domestic_logo" />
              <button id="exampleDownload" type="button" class="el-button domestic_btn el-button--info is-round" @click="toload">
                <!---->
                <!----><span>模板下载</span>
              </button>
              <div class="title">简历模板</div>
              <div class="subtitle">简历模板下载</div>
              <div class="text">点击下载简历模板</div>
              <div class="subtitle" />
            </div>
          </div>
          <div class="foreign">
            <div class="foreign_logo" />
            <div class="title">计算机科学学院</div>
            <div class="text">致易学生竞赛工作室</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { Toast } from 'vant'
export default {
  name: 'TabRecruit',
  methods: {
    // 未登录显示未登录弹框
    isLogin_1() {
      // console.log(333)
      if (localStorage.Authorization === undefined) {
        Toast('你还未登录，请先登录')
      }
      this.$router.push({ path: '/dropresume' }).catch(() => {})
    },
    isLogin_2() {
      // console.log(333)
      if (localStorage.Authorization === undefined) {
        Toast('你还未登录，请先登录')
      }
      this.$router.push({ path: '/messtake' }).catch(() => {})
    },
    isLogin_3() {
      // console.log(333)
      if (localStorage.Authorization === undefined) {
        Toast('你还未登录，请先登录')
      }
      this.$router.push({ path: '/deliver' }).catch(() => {})
    },
    toload() {
      window.open('https://images.zayy.online/%E8%87%B4%E6%98%93%E9%9D%92%E5%B9%B4%E7%AE%80%E5%8E%86.docx')
    }
  }
}
</script>
<style lang="css" scoped>
/* content部分样式 */
.home .content {
  position: relative;
  z-index: 99;
  border-radius: 0.64rem 0.64rem 0 0;
}

.box .content {
  padding: 0 0.4266666666666667rem;
  background: #f5f5f5;
  margin-top: -80px;
  overflow: hidden;
}

.home .content .main {
  padding-top: 0;
}

.content .main {
  padding: 1.4933333333333334rem 0 3.2rem;
  box-sizing: border-box;
  margin: 0 auto;
  padding-bottom: 1.0000rem;
}
.home .content .main .btn_box {
  font-size: 0;
  justify-content: space-between;
  display: flex;
  margin-top: 0.4266666666666667rem;
}

.home .content .main .btn_box .mobile_btn:first-child {
  margin-left: 0;
}

.home .content .main .btn_box .mobile_btn {
  width: 2.6133333333333333rem;
  background-color: #ffffff;
  margin-left: 0.5066666666666667rem;
  padding: 0.21333333333333335rem 0 0.32rem;
  border-radius: 0.426667rem;
  box-shadow: 0px 0px 0.4266666666666667rem 0px rgb(0 0 0 / 8%);
  box-sizing: border-box;
  cursor: pointer;
  display: inline-block;
}

.home .content .main .btn_box .mobile_btn .btn_img {
  width: 65.3%;
  background-size: cover;
  padding-bottom: 65.3%;
  margin: 0 auto;
}

.home .content .main .btn_box .mobile_btn .btn_text {
  color: rgba(0, 0, 0, 0.8);
  font-size: 0.37333333333333335rem;
  font-weight: 400;
  line-height: 0.5866666666666667rem;
  text-align: center;
}

.home .content .content_title {
  font-size: 0.5333333333333333rem;
  font-weight: 400;
  line-height: 0.7466666666666667rem;
  margin: 0.8533333333333334rem 0 0.4266666666666667rem;
}

.home .content .project .domestic {
  display: block;
  display: flex;
  flex-direction: column;
}

.home .content .project .domestic .domestic_box:first-child {
  background: #0052d9;
}

.home .content .project .domestic .domestic_box {
  position: relative;
  flex: 1;
  color: #ffffff;
  background: #79c000;
  box-shadow: 0px 0px 0.4266666666666667rem 0px rgb(0 0 0 / 16%);
  padding: 0.64rem;
  border-radius: 0.426667rem;
  transition: 0.35s;
  box-sizing: border-box;
  overflow: hidden;
  margin-bottom: 0.4266666666666667rem;
}

/* .home .content .project .domestic .domestic_box:first-child .domestic_logo {
  background-image: url('https://images.zayy.online/images/domestic_logo1.png');
} */

.home .content .project .domestic .domestic_box .domestic_logo {
  position: absolute;
  right: 0.32rem;
  bottom: 0.10666666666666667rem;
  width: 2.933333333333333rem;
  height: 2.933333333333333rem;
  /* background-image: url('https://images.zayy.online/images/domestic_logo2.png'); */
  background-size: cover;
}

.home .content .project .domestic .domestic_box .domestic_btn {
  position: absolute;
  border-radius: 0.64rem;
  color: #ffffff;
  background-color: transparent;
  transition: 0.35s;
  z-index: 99;
  top: 1.8133333333333332rem;
  right: 0.64rem;
  width: auto;
  font-weight: 400;
  font-size: 0.37333333333333335rem !important;
  min-width: auto !important;
  height: 0.9066666666666666rem !important;
  padding: 0 0.4266666666666667rem !important;
  border: 1px solid #ffffff;
  opacity: 1;
}

.home .content .project .domestic .domestic_box .title {
  font-size: 0.5333333333333333rem;
  margin-bottom: 0.4266666666666667rem;
  font-weight: 500;
  line-height: 0.7466666666666667rem;
}

.home .content .project .domestic .domestic_box .subtitle {
  font-size: 0.4266666666666667rem;
  font-weight: 500;
  margin-bottom: 0.10666666666666667rem;
  line-height: 0.64rem;
}

.home .content .project .domestic .domestic_box .text {
  margin-top: 0.4rem;
  font-size: 0.373333rem;
  font-weight: 400;
  line-height: 0.5866666666666667rem;
  margin-bottom: 0.4266666666666667rem;
}

.home .content .project .domestic .domestic_box .subtitle {
  font-size: 0.4266666666666667rem;
  font-weight: 500;
  margin-bottom: 0.10666666666666667rem;
  line-height: 0.64rem;
}

.home .content .project .foreign {
  padding: 0.64rem;
  box-shadow: 0px 0px 0.4266666666666667rem 0px rgb(0 0 0 / 8%);
  position: relative;
  color: rgba(0, 0, 0, 0.8);
  background-color: #ffffff;
  border-radius: 0.426667rem;
  box-sizing: border-box;
}

.home .content .project .foreign .foreign_logo {
  position: absolute;
  right: 0.5866666666666667rem;
  bottom: 0.26666666666666666rem;
  width: 2.64rem;
  height: 2.64rem;
  background-image: url('https://images.zayy.online/images/CSCsmall.jpg');
  background-size: cover;
}

.home .content .project .foreign .title {
  color: #323232;
  font-size: 0.4266666666666667rem;
  font-weight: 500;
  line-height: 0.64rem;
  margin-bottom: 0.4266666666666667rem;
}

.home .content .project .foreign .text {
  color: rgba(0, 0, 0, 0.6);
  font-size: 0.4266666666666667rem;
  font-weight: 400;
  line-height: 0.64rem;
  margin-bottom: 0.32rem;
}

</style>

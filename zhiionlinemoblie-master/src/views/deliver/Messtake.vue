<template>
  <div style=" background-color: #f5f5f5;">
    <div class="drop-img" />
    <div class="main_content">
      <div class="resume_top">
        <div class="title_box">
          <div class="title">
            <span>我的信息</span>
          </div>
        </div>
      </div>

      <div id="infoshow" class="info_content">
        <div class="info_title">基础信息</div>
        <div class="info_list">

          <div class="info_box">
            <div class="subtitle">学院：</div>
            <div class="info_info college_info">{{ userInfo.college }}</div>
          </div>
          <div class="info_box">
            <div class="subtitle">专业：</div>
            <div class="info_info phone_info">{{ userInfo.major }}</div>
          </div>
          <div class="info_box">
            <div class="subtitle">班级：</div>
            <div class="info_info grade_info">{{ userInfo.clazz }}</div>
          </div>
          <div class="info_box">
            <div class="subtitle">学号：</div>
            <div class="info_info id_info">{{ userInfo.sid }}</div>
          </div>
          <div class="info_box">
            <div class="subtitle">姓名：</div>
            <div class="info_info name_info">{{ userInfo.name }}</div>
          </div>
          <div class="info_box">
            <div class="subtitle">性别：</div>
            <div class="info_info sex_info">{{ userInfo.sex }}</div>
          </div>

          <div class="info_box">
            <div class="subtitle">邮箱：</div>
            <div class="info_info email_info">{{ userInfo.email }}</div>
          </div>
          <div class="info_box">
            <div class="subtitle">Q Q：</div>
            <div class="info_info QQ_info">{{ userInfo.qq }}</div>
          </div>
          <div class="info_box">
            <div class="subtitle">微信：</div>
            <div class="info_info wechat_info">{{ userInfo.wechat }}</div>
          </div>
          <div class="info_box">
            <div class="subtitle">方向：</div>
            <div class="info_info direction_info">{{ userInfo.direction }}</div>
          </div>
          <!-- <button class="alter_btn" @click="messChange()">点击修改</button> -->
        </div>
      </div>
      <div class="change-box">如果您想要修改您的个人信息，请点击<span class="change" title="点击" @click="changeInfo()">修改信息</span></div>
      <Footer style="width: 100%;" />
    </div>
  </div>

</template>
<script>
import Footer from '@/components/Footer/index.vue'
import { mapGetters } from 'vuex'
export default {
  components: {
    Footer
  },
  data() {
    return {

    }
  },
  computed: {
    ...mapGetters([
      'userInfo'
    ])
  },

  methods: {
    changeInfo() {
      this.$router.push({ path: '/Dropresume' })
      // window.open(this.$router.resolve({ path: '/Dropresume' }).href, '_self')
    }

  }
}
</script>
<style scoped>

.drop-img{
        display: block;
    width: 100%;
    height: 7.55rem;
    background-image: url("https://images.zayy.online/images/myResumeBanner.png");
    background-size: cover;
    background-position: center center
}
.main_content {
    position: relative;
    margin-top: 0.80645rem;
    padding: 0 0.4266666666666667rem;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.resume_top {
    padding: 0.64rem;
    border-radius: .32rem;

}

.title_box {
    height: 0.8rem;
    margin-left: -10px;
}

.main_content .title {
    position: relative;
    font-size: 0;
    vertical-align: top;
    display: inline-block;

    margin-left: -4.14839rem;

}
.change-box {
    width: 92%;
    line-height: 1.56452rem;
    margin: 20px;
    /* background-color: #fff; */
    border-radius: 8px;
    padding-left: 22px;
    font-weight: 600;
    font-size: 0.329rem;
}
.change{
  margin-left:7px;
  color:#0052D9
}
.main_content .title:before {
    display: block;
    position: absolute;
    left: 0;
    bottom: 0;
    z-index: 0;
    content: "";
    width: 2.16rem;
    height: 0.18666666666666668rem;
    background: url("https://images.zayy.online/images/blueBottom.png") no-repeat center;
    background-size: cover;
}

.main_content .title>span {
    position: relative;
    line-height: 0.7466666666666667rem;
    font-family: "TencentSansW7";
    font-size: 0.5333333333333333rem;
    font-weight: normal;
    z-index: 2;
}

.info_content {
    position: relative;
    width: 95%;
    box-sizing: border-box;
    border-radius: .32rem;
    background: #ffffff;
    color: rgba(0, 0, 0, 0.8);
    font-weight: 400;
    text-align: left;
    line-height: 0.7466666666666667rem;
    font-size: .426667rem;
    margin-top: 0.8rem;

    padding: .48rem;
    transition: all 0.3s linear;
    -webkit-transition: all 0.3s linear;
}

.info_list {
    height: auto;
    padding-bottom: 0.5rem;
}

.info_title {
    position: relative;
    color: rgba(0, 0, 0, 0.8);
    font-size: 0.4266666666666667rem;
    font-weight: 500;
    display: inline-block;
    margin-left: -6.57258rem;
}

.info_cancle {
    float: right;
    top: -0.34666667rem;
    right: 0.13333333rem;
    position: relative;
    font-size: 0.37333333333333335rem;
    font-weight: 400;
    line-height: 0.5866666666666667rem;
    margin: 0.4266666666666667rem 0 0;
    color: #0052D9;
}

.subtitle {
    position: relative;
    font-size: 0.37333333333333335rem;
    font-weight: 400;
    line-height: 0.5866666666666667rem;
    margin: 0.4266666666666667rem 0 0;
    display: inline-block;
}

.info_inputbox {
    margin-top: -12px;
    height: 0.8rem;
}

.info_input {
    float: right;
    padding: 0 10px;
    border: 1px solid #DCDCDC;
    border-radius: 4px;
    height: 40px;
    font-size: 14px;
    width: 80%;
    outline: none;
    margin-top: -20px;
}

.info_content select {
    float: right;
    width: 87%;
    height: 1.06667rem;
    border: 1px solid #DCDCDC;
    border-radius: 0.10667rem;
    margin-top: -0.50666667rem;
    appearance: none;
    -moz-appearance: none;
    -webkit-appearance: none;
    outline: none;
    opacity: 1;
    font-size: 0.37333rem;
    font-weight: 300;
    line-height: 0.58667rem;
    padding: 0 0.21333rem;
    background-color: #fff;
}

.input_icon {
    width: 0.42667rem;
    height: 0.42667rem;
    background: url("https://images.zayy.online/images/input_icon.png") no-repeat;
    background-size: 100%;
    position: absolute;
    right: 0.21333rem;
    top: 50%;
    transform: translateY(-50%);
}

/* 基础信息展示样式 */
.info_info {
    position: relative;
    font-size: 0.37333333333333335rem;
    font-weight: 400;
    line-height: 0.5866666666666667rem;
    margin: 0.4266666666666667rem 0 0;
    display: inline-block;
}

/* 微调QQ样式 */
.QQ_info {
  padding-left: 10px;
}

.alter_btn {
    position: relative;
    border-radius: .64rem;
    color: #ffffff;
    background-color: #0052D9;
    transition: 0.35s;
    z-index: 99;
    top: 0.5133333333333332rem;
    width: auto;
    font-weight: 400;
    font-size: 0.37333333333333335rem !important;
    min-width: auto !important;
    height: 0.9066666666666666rem !important;
    padding: 0 0.4266666666666667rem !important;
    border: 1px solid #ffffff;
    opacity: 1;
}

.resume_upload {
    position: relative;
    width: 100%;
    border-radius: 0.32rem;
    background: #f0f0f0;
    padding: 0.64rem;
    box-sizing: border-box;
}

.filename {
    color: rgba(0, 0, 0, 0.816);
    font-size: 0.37333rem;
    font-weight: 500;
    text-align: center;
}

.uploader_btn {
    height: 1.06667rem;
    width: 2.36667rem;
    border-radius: 0.8rem;
    background: #ffffff;
    border: 0.02667rem solid #0052d9;
    color: #0052d9;
    margin: 0.42667rem auto;
    opacity: 1;
    font-size: 0.37333rem;
    font-weight: 400;
    line-height: 0.58667rem;
    display: block;
}

.uploader_btn:hover {
    background: rgba(235, 235, 235, 0.347);
}

.upload_text {
    color: rgba(0, 0, 0, 0.4);
    font-size: 0.37333rem;
    line-height: 0.58667rem;
    font-weight: 400;
    text-align: center;
}

/* send_fixed_bottom */
.send_fixed_bottom {
    position: fixed;
    left: 0;
    bottom: 0;
    z-index: 99;
    width: 100%;
    height: 1.92rem;
    opacity: 1;
    box-shadow: 0px 0.10666666666666667rem 0.5333333333333333rem 0px rgb(0 0 0 / 10%);
    border-radius: .32rem .32rem 0 0;
    background-color: #f5f5f5;
    box-sizing: border-box;
    transition: all 0.3s linear;
    -webkit-transition: all 0.3s linear;
}

.fixed_btn {
    color: #ffffff;
    background-color: #0052D9;
    border: 1px solid #0052D9;
    margin: auto 25%;
    width: 48.69%;
    font-size: 0.4266666666666667rem;
    font-weight: 400;
    line-height: 0.64rem;
    padding: 0.29333333333333333rem 0.8533333333333334rem;
    border-radius: .16rem;
    box-sizing: border-box;
    transition: all 0.3s linear;
    -webkit-transition: all 0.3s linear;
}

.delete_resume,
.upload_resume {
    color: #0052D9;
}

.delete_resume:hover,
.upload_resume:hover {
    background-color: rgb(0, 0, 0, 0.1);
}

.userlist_header_btn_active {
    color: #0052D9 !important;
}

</style>

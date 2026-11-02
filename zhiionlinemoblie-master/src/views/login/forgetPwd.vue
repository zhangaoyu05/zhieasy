<template>
  <div class="container">
    <div class="reset">
      <h1>修改密码</h1>
      <form action="" class="form">
        <div class="reset_tip">邮箱</div>
        <input v-model.trim="email" type="text" class="reset_input" placeholder="请输入邮箱" maxlength="25" @blur="checkEmail" @input="allowSend">
        <div class="reset_tip">密码</div>
        <input v-model.trim="password" type="password" class="reset_input" placeholder="请输入密码" maxlength="16" autocomplete="off" @blur="checkPwd">
        <div class="reset_tip">再次输入密码</div>
        <input v-model.trim="rePassword" type="password" class="reset_input" placeholder="请输入密码" maxlength="16" autocomplete="off" @blur="reCheckPwd">
        <div class="reset_tip">验证码</div>
        <div class="reset_code">
          <input v-model.trim="identifyCode" type="text" class="reset_input_code" placeholder="6位验证" maxlength="6" @blur="checkIdentifyCode">
          <div :class="{'disabledStyle' : sendPart.isDisableSend}" class="send_code" @click="onSend">{{ sendPart.content }}</div>
        </div>
      </form>
      <div class="reset_submit" @click="onReset">修改</div>
      <router-link class="toLogin" to="/login">已有账号？立即登录 </router-link>
    </div>
    <!-- 登录时的滑动图片验证码,覆盖整个页面，引入前端组件实现 -->
    <div v-show="isShowSlide" class="mask" @click.self="isShowSlide = false">
      <!-- 建议自己找几张图片随机一弄，不然他的组件请求多了容易嘎 -->
      <div class="slideContainer">
        <slide-verify
          ref="slideverify"
          :l="42"
          :r="10"
          :w="310"
          :h="155"
          :imgs="picArray"
          slider-text="向右滑动完成验证"
          @success="slideOnSuccess"
          @fail="slideOnFail"
          @refresh="slideOnRefresh"
        />
      </div>
    </div>
  </div>
</template>

<script>
import { Toast } from 'vant'
import { getCodeAPI, checkCodeAPI, getResetAPI } from '@/api/LoginAPI.js'

export default {
  name: 'ForgetPwd',
  data() {
    return {
      // 注册界面发送验证码部分
      isShowSlide: false,
      email: '',
      password: '',
      rePassword: '',
      identifyCode: '',
      // 发送验证码部分
      sendPart: {
        isDisableSend: true,
        content: '发送',
        totalTime: 60
      },
      // isThreeReset: false
      // 滑动验证的图片
      picArray: [
        require('@/assets/images/slide_1.jpg'),
        require('@/assets/images/slide_2.jpg'),
        require('@/assets/images/slide_3.jpeg'),
        require('@/assets/images/slide_4.gif')
      ]
    }
  },
  methods: {
    // 校验输入值
    checkEmail() {
      const pattern = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
      // console.log(this.email)
      if (this.email === '' || pattern.test(this.email) === false) {
        Toast.fail('请输入正确邮箱')
      }
      return true
    },
    // 填入了邮箱才允许发送验证码
    allowSend() {
      const pattern = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
      // console.log(this.email)
      if (this.email === '' || pattern.test(this.email) === false) {
        this.sendPart.isDisableSend = true
      }
      this.sendPart.isDisableSend = false
      return true
    },
    checkPwd() {
      if (this.password === '') {
        Toast.fail('密码不能为空')
        return false
      }
      if (this.rePassword !== '' && this.password !== this.rePassword) {
        Toast.fail('两次输入密码不一致')
        return false
      }
      return true
    },
    reCheckPwd() {
      if (this.rePassword === '') {
        Toast.fail('密码不能为空')
        return false
      }
      if (this.rePassword !== this.password && this.password !== '') {
        Toast.fail('两次输入密码不一致')
        return false
      }
      return true
    },
    checkIdentifyCode() {
      if (this.identifyCode === '') {
        Toast.fail('验证码不能为空')
        return false
      }
      return true
    },
    // 请求
    initCode() {
      getCodeAPI('reset', this.email).then(response => {
        // console.log(response)
        Toast.success(`验证码发送成功`)
      })
    },
    // 倒计时
    onSend() {
      // 调用验证组件
      this.isShowSlide = true
    },
    slideOnSuccess() {
      this.isShowSlide = false
      this.sendPart.isDisableSend = true
      this.sendPart.content = this.sendPart.totalTime
      // 获取验证码
      this.initCode()
      // 倒计时 -- 禁用按钮 60s倒计时
      const clock = setInterval(() => {
        this.sendPart.totalTime--
        this.sendPart.content = this.sendPart.totalTime
        if (this.sendPart.totalTime < 0) {
          clearInterval(clock)
          this.sendPart.content = '发送'
          this.sendPart.totalTime = 60
          // 可以点击发送
          this.sendPart.isDisableSend = true
        }
      }, 1000)
    },
    slideOnFail() {
      // console.log('fail')
    },
    slideOnRefresh() {
      // console.log('refresh')
      this.$refs.slideverify.reset()
    },
    // 发起验证验证码的请求
    checkCode() {
      checkCodeAPI('reset', this.email, this.identifyCode).then(response => {
        this.initReset()
      })
    },
    // 发起修改密码的请求
    initReset() {
      getResetAPI(this.email, this.password).then(response => {
        // console.log(response)
        Toast.success(`密码修改成功`)
        // 修改密码成功后跳转登录页
        this.$router.push({ path: '/login' })
      })
    },
    // 修改密码
    onReset() {
      // 校验表单
      if (this.checkEmail() === false || this.checkPwd() === false || this.reCheckPwd() === false || this.checkIdentifyCode() === false) {
        Toast.fail('请将信息填写完整')
      } else {
        // 3s禁用
        // const that = this
        // this.isThreeReset = true
        // setTimeout(() => {
        //   that.isThreeReset = false
        // }, 3000)
        // 修改密码加载
        Toast.loading({
          message: '修改中...',
          forbidClick: true
        })
        this.checkCode()
      }
    }
  }
}
</script>

<style lang="less" scoped>
.container {
  padding-top: 500px;
  height: 2000px;
  background-image: url(https://images.zayy.online/images/login_bg_mobile.png), url(https://images.zayy.online/images/login_img_mobile.png);
  background-color: rgb(0, 82, 217);
  background-position: center 80px, center 2030px;
  background-repeat: no-repeat;
  background-size: 80%;
}

 .reset {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin: 0 50px;
  border-radius: 50px;
  background-color: white;
  h1 {
    padding: 60px;
    text-align: center;
    font-size: 65px;
    font-weight: 500;
  }
  .form {
    .reset_tip {
    font-size: 50px;
    }
    .reset_input {
      margin: 40px 0;
      padding-left: 40px;
      width: 800px;
      height: 120px;
      border-radius: 20px;
      border: 1px solid rgb(236, 218, 214);
      font-size: 50px;
    }
    .reset_code {
      display: flex;
      justify-content: space-between;
      margin: 40px 0;
      height: 120px;
    }
    .reset_input_code {
    padding-left: 40px;
    width: 300px;
    height: 100%;
    border-radius: 20px;
    border: 1px solid rgb(236, 218, 214);
    font-size: 45px;
  }
  .send_code {
    width: 300px;
    height: 100%;
    line-height: 120px;
    border-radius: 20px;
    text-align: center;
    font-size: 50px;
    color: white;
    background-color: rgb(0, 82, 217);
    &:active {
      background-color: rgb(20, 121, 222);
      }
    }
  // 禁用发送样式
  .disabledStyle {
    pointer-events: none;
    background: rgb(160, 207, 255);
  }
}
  .reset_submit {
    margin-top: 100px;
    margin-bottom: 50px;
    width: 840px;
    height: 150px;
    line-height: 150px;
    font-size: 60px;
    border-radius: 20px;
    background-color: rgb(0, 82, 217);
    text-align: center;
    color: white;
    &:active {
      background-color: rgb(20, 121, 222);
    }
  }
  // 禁用发送样式
  // .disabledStyle {
  //   pointer-events: none;
  //   background: rgb(160, 207, 255);
  // }

  .toLogin {
    margin: 50px;
    color: rgb(0, 82, 217);
    font-size: 50px;
    font-weight: 200;
  }
}

// 滑动拼图这块要考虑到适配，所以就重新写覆盖原本的样式
.mask {
  position: fixed;
  left: 0%;
  top: 0%;
  width: 100%;
  height: 100%;
  z-index: 100;
  overflow: hidden;
  background-color: rgba(0, 0, 0, 0.5);
}
.mask .slideContainer {
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%,-50%);
  width: 100%;
  height: 40%;
  background-color: rgb(255, 255, 255);
}
</style>

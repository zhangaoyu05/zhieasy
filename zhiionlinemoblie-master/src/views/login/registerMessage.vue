<template>
  <div class="container">
    <div class="register">
      <h1>立即注册</h1>
      <form action="" class="form">
        <div class="register_tip">邮箱</div>
        <input v-model.trim="formRegister.email" type="text" class="register_input" placeholder="请输入邮箱" maxlength="25" @blur="checkEmail" @input="allowSend">
        <div class="register_tip">密码</div>
        <input v-model.trim="formRegister.password" type="password" class="register_input" placeholder="请输入密码" maxlength="16" autocomplete="off" @blur="checkPwd">
        <div class="register_tip">再次输入密码</div>
        <input v-model.trim="formRegister.rePassword" type="password" class="register_input" placeholder="请输入密码" maxlength="16" autocomplete="off" @blur="reCheckPwd">
        <div class="register_tip">验证码</div>
        <div class="register_code">
          <input v-model.trim="formRegister.identifyCode" type="text" class="register_input_code" placeholder="6位验证" maxlength="6" @blur="checkIdentifyCode">
          <div :class="{'disabledStyle' : sendPart2.isDisableSend}" class="send_code" @click="onSend2">{{ sendPart2.content }}</div>
        </div>
      </form>
      <div class="register_submit" @click="register">注册</div>
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
import { getCodeAPI, checkCodeAPI, getRegisterAPI, getLoginAPI } from '@/api/LoginAPI.js'

export default {
  name: 'RegisterMessage',
  data() {
    return {
      // 注册界面发送验证码部分
      isShowSlide: false,
      formRegister: {
        email: '',
        password: '',
        identifyCode: '',
        rePassword: ''
      },
      // 发送验证码部分
      sendPart2: {
        isDisableSend: true,
        content: '发送',
        totalTime: 60
      },
      // isThreeRegister: false,
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
      const pattern = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
      // console.log(this.formRegister.email)
      if (this.formRegister.email === '' || pattern.test(this.formRegister.email) === false) {
        Toast.fail('请输入正确邮箱，注意@后小写')
      }
      return true
    },
    // 填入了邮箱才允许发送验证码
    allowSend() {
      const pattern = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
      // console.log(this.formRegister.email)
      if (this.formRegister.email === '' || pattern.test(this.formRegister.email) === false) {
        this.sendPart2.isDisableSend = true
      }
      this.sendPart2.isDisableSend = false
      return true
    },
    checkPwd() {
      // console.log(this.formRegister.password)
      if (this.formRegister.password === '') {
        Toast.fail('密码不能为空')
        return false
      }
      if (this.formRegister.rePassword !== '' && this.formRegister.password !== this.formRegister.rePassword) {
        Toast.fail('两次输入密码不一致')
        return false
      }
      return true
    },
    reCheckPwd() {
      if (this.formRegister.rePassword === '') {
        Toast.fail('密码不能为空')
        return false
      }
      if (this.formRegister.rePassword !== this.formRegister.password && this.formRegister.password !== '') {
        Toast.fail('两次输入密码不一致')
        return false
      }
      return true
    },
    checkIdentifyCode() {
      if (this.formRegister.identifyCode === '') {
        Toast.fail('验证码不能为空')
        return false
      }
      return true
    },
    // 发送验证码请求
    async initCode2() {
      getCodeAPI('register', this.formRegister.email).then(response => {
        // console.log(response)
        Toast.success(`验证码发送成功`)
      })
    },

    // 验证验证码请求
    checkCode2() {
      checkCodeAPI('register', this.formRegister.email, this.formRegister.identifyCode).then(response => {
        this.initRegister()
      })
    },
    // 点击发送验证码
    onSend2() {
      // 调用验证组件
      this.isShowSlide = true
    },
    slideOnSuccess() {
      this.isShowSlide = false
      this.sendPart2.isDisableSend = true
      this.sendPart2.content = this.sendPart2.totalTime
      // 获取验证码
      this.initCode2()
      // 倒计时 -- 禁用按钮 60s倒计时
      const clock = setInterval(() => {
        this.sendPart2.totalTime--
        this.sendPart2.content = this.sendPart2.totalTime
        if (this.sendPart2.totalTime < 0) {
          clearInterval(clock)
          this.sendPart2.content = '发送'
          this.sendPart2.totalTime = 60
          // 可以点击发送
          this.sendPart2.isDisableSend = false
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
    // 发起注册请求
    initRegister() {
      // console.log(this.formRegister);
      getRegisterAPI(this.formRegister.email, this.formRegister.password).then(response => {
        // console.log(response)
        Toast.success(`注册成功`)
        const loginLoading = Toast.loading({
          duration: 0,
          forbidClick: true,
          message: '正在登录中'
        })
        getLoginAPI(this.formRegister.email, this.formRegister.password).then(res => {
          loginLoading.clear()
          Toast.success(`登录成功`)
          window.localStorage.setItem('Authorization', res.data.token)
          this.$store.dispatch('user/getInfo')
          // 注册成功跳转首页
          this.$router.push({ path: '/home' })
          // 将登录按钮替换为登录后的下拉(子传父)
          this.$emit('changeLoginBox', true)
        })
      })
    },

    // 注册按钮
    register() {
      // 校验表单
      if (this.checkEmail() === false || this.checkPwd() === false || this.reCheckPwd() === false || this.checkIdentifyCode() === false) {
        Toast.fail('请将信息填写完整')
      } else {
        Toast.loading({
          message: '注册中...',
          forbidClick: true
        })
        this.checkCode2()
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

.register {
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
    .register_tip {
    font-size: 50px;
  }
  .register_input {
    margin: 40px 0;
    padding-left: 40px;
    width: 800px;
    height: 120px;
    border-radius: 20px;
    border: 1px solid rgb(236, 218, 214);
    font-size: 50px;
  }
  .register_code {
      display: flex;
      justify-content: space-between;
      margin: 40px 0;
      height: 120px;
  }
  .register_input_code {
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
    height: 120px;
    line-height: 130px;
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
  .register_submit {
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

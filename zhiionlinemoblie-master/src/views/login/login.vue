<template>
  <div class="container">
    <div class="login">
      <h1>登录</h1>
      <form action="" class="form">
        <div class="login_tip">邮箱</div>
        <input v-model.trim="email" type="text" class="login_input" placeholder="请输入邮箱" maxlength="25" @blur="checkEmail">
        <div class="login_tip">密码</div>
        <input v-model.trim="password" type="password" class="login_input" placeholder="请输入密码" maxlength="16" autocomplete="off" @blur="checkPwd">
        <div class="login_submit" @click="submit">登录</div>
      </form>
      <div class="other">
        <router-link class="forgetPwd" to="/forgetPwd">忘记密码</router-link>
        <router-link class="registerMessage" to="/registerMessage">立即注册</router-link>
      </div>
    </div>

  </div>
</template>

<script>
import { Toast } from 'vant'
import { getLoginAPI } from '@/api/LoginAPI.js'
export default {
  name: 'MyLogin',
  data() {
    return {
      email: '',
      password: ''
    }
  },
  methods: {
    // 校验输入值
    checkEmail() {
      const pattern = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/
      // console.log(this.email)
      if (this.email === '' || pattern.test(this.email) === false) {
        Toast.fail('请输入正确邮箱')
        return false
      }
      return true
    },
    checkPwd() {
      if (this.password === '') {
        Toast.fail('密码不能为空')
        return false
      }
      return true
    },
    // 提交信息，发送请求
    submit() {
      if (this.checkEmail() === false || this.checkPwd() === false) {
        Toast.fail('请将信息填写完整')
      } else {
        // 登录加载
        Toast.loading({
          message: '登录中...',
          forbidClick: true
          // loadingType: 'spinner'
        })
        getLoginAPI(this.email, this.password).then(response => {
          // console.log(response)
          Toast.success(`登录成功`)
          // 将验证信息放入本地存储
          window.localStorage.setItem('Authorization', response.data.token)
          // 将拿到的用户信息存放在vuex中
          this.$store.dispatch('user/getInfo')
          // 登录成功跳转首页
          this.$router.push({ path: '/home' })
          // 将登录按钮替换为登录后的下拉(子传父)
          this.$emit('changeLoginBox', true)
        })
      }
    }
  }
}
</script>

<style lang="less" scoped>
a {
  color: black;
}

.container {
  padding-top: 600px;
  height: 2000px;
  background-image: url(https://images.zayy.online/images/login_bg_mobile.png), url(https://images.zayy.online/images/login_img_mobile.png);
  background-color: rgb(0, 82, 217);
  background-position: center 80px, center 1750px;
  background-repeat: no-repeat;
  background-size: 80%;
}

.login {
  display: flex;
  // 主轴方向
  flex-direction: column;
  // 侧轴排列方式
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
    .login_tip {
    font-size: 50px;
  }
    .login_input {
    margin: 40px 0;
    padding-left: 30px;
    width: 800px;
    height: 120px;
    border-radius: 20px;
    border: 1px solid rgb(236, 218, 214);
    font-size: 50px;
    }
    .login_submit {
    margin-top: 80px;
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
    } // 禁用发送样式
  // .disabledStyle {
  //   pointer-events: none;
  //   background-color: rgb(160, 207, 255);
  //   }
  }
  .other {
  display: flex;
  justify-content: space-between;
  margin: 80px 0;
  width: 800px;
  font-size: 50px;
  font-weight: 200;
  .registerMessage {
    color: rgb(0, 82, 217);
    }
  }
}
</style>

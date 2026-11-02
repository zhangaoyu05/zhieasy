<template>
  <div class="container">
    <!-- 导航栏 -->
    <van-nav-bar :class="addClass()">
      <!-- 左侧点击出现下拉弹出层 -->
      <template #left>
        <van-cell @click="showPopup">
          <div class="menu">
            <img
              :src="
                isbckColor
                  ? 'https://images.zayy.online/images/header_menu_black.png'
                  : 'https://images.zayy.online/images/header_menu_white.png'
              "
              alt=""
            >
          </div>
        </van-cell>
        <!-- 导航栏左边的更多 -->
        <van-popup
          v-model="show"
          closeable
          position="top"
          get-container=".container"
        >
          <div class="logo_left">
            <img src="https://images.zayy.online/images/logoblack.png" alt="">
          </div>
          <div v-for="item in array" :key="item.index">
            <div class="content" @click="move(item.index)">
              <router-link
                :to="item.router"
                :class="{ click_color: item.isClick }"
              >{{ item.router_name }}</router-link>
            </div>
          </div>
        </van-popup>
      </template>

      <template #title>
        <div class="logo">
          <img
            :src="
              isbckColor
                ? 'https://images.zayy.online/images/logoblack.png'
                : 'https://images.zayy.online/images/logowhite.png'
            "
            alt=""
          >
        </div>
      </template>
      <template #right>
        <!-- 未登录跳转登录 -->
        <div class="person" @click="clearColor()">
          <router-link v-show="!isLogin" to="/login">
            <img
              :src="
                isbckColor
                  ? 'https://images.zayy.online/images/header_user_black.png'
                  : 'https://images.zayy.online/images/header_user_white.png'
              "
              alt=""
            >
          </router-link>
          <!-- 已登录显示登录信息 -->
          <van-cell v-show="isLogin" @click="showPopup_logined">
            <div class="menu">
              <img
                :src="
                  isbckColor
                    ? 'https://images.zayy.online/images/header_user_black.png'
                    : 'https://images.zayy.online/images/header_user_white.png'
                "
                alt=""
              >
            </div>
          </van-cell>
          <!-- 导航栏右侧登录后的下拉菜单 -->
          <van-popup
            v-model="show_logined"
            closeable
            position="top"
            get-container=".container"
          >
            <div class="logo_left">
              <img src="https://images.zayy.online/images/logoblack.png" alt="">
            </div>
            <div class="outline">
              <div class="name">你好，{{ userInfo.name === null || userInfo.name === '' ? userInfo.email : userInfo.name }} !</div>
            </div>
            <div v-for="item in array_1ogined" :key="item.index">
              <div class="content" @click="move_logined(item.index)">
                <router-link
                  :to="item.router"
                  :class="{ click_color: item.isClick }"
                >{{ item.router_name }}</router-link>
              </div>
            </div>
          </van-popup>
        </div>

      </template>
    </van-nav-bar>
    <!-- 路由,渲染对应的界面 -->
    <router-view @changeLoginBox="logined" />
  </div>
</template>

<script>
import { Toast } from 'vant'
import { mapGetters } from 'vuex'
import { getLogoutAPI } from '@/api/LoginAPI'
export default {
  name: 'MyNavBar',
  data() {
    return {
      top: '',
      isShow: false,
      isLogin: false,
      isbckColor: false,
      show: false,
      show_logined: false,
      array: [
        {
          index: 0,
          router: '/home',
          router_name: '首页',
          isClick: true
        },
        {
          index: 1,
          router: '/introduce',
          router_name: '简介',
          isClick: false
        },
        {
          index: 2,
          router: '/dropresume',
          router_name: '简历投递',
          isClick: false
        },
        {
          index: 3,
          router: '/knowmore',
          router_name: '了解更多',
          isClick: false
        }
      ],
      array_1ogined: [
        {
          index: 0,
          router: '/messtake',
          router_name: '我的简历',
          isClick: false
        },
        {
          index: 1,
          router: '/deliver',
          router_name: '应聘进度',
          isClick: false
        },
        {
          index: 2,
          router: '/home',
          router_name: '退出登录',
          isClick: false
        }
      ]
    }
  },
  computed: {
    ...mapGetters([
      'userInfo'
    ])
  },
  // 监听top值变化
  watch: {
    top(newValue, oldValue) {
      if (newValue > oldValue && newValue !== 0) {
        // 向上卷
        this.isShow = true
        // console.log('向下滚动')
      } else {
        this.isShow = false
        // console.log('向上滚动')
      }
      if (newValue > 200) {
        // console.log(888)
        this.isbckColor = true
      } else {
        this.isbckColor = false
      }
    }
  },
  created() {
    if (window.localStorage.getItem('Authorization')) {
      this.$store.dispatch('user/getInfo')
    }
  },
  // 获取浏览器滚轮
  mounted() {
    window.addEventListener('scroll', () => {
      this.top = window.pageYOffset
      // console.log(this.top)
    })
    // 通过localStorage中是否存token，判断要不要重新登录
    if (window.localStorage.getItem('Authorization')) {
      this.isLogin = true
    } else {
      this.isLogin = false
    }
  },
  methods: {
    // 向导航栏添加滑动与颜色改变
    addClass() {
      var one, two
      if (this.isShow) {
        one = 'van_hide'
      }
      if (this.isbckColor) {
        two = 'van_color'
      }
      return [one, two]
    },
    // 左侧点击
    showPopup() {
      this.show = true
    },
    // 右侧点击
    showPopup_logined() {
      this.show_logined = true
    },
    // 关闭下拉栏
    move(num) {
      // 右侧也清除已选中效果
      this.array_1ogined.forEach((item) => {
        item.isClick = false
      })
      // 左侧清除已选中蓝色效果
      this.array.forEach((item) => {
        item.isClick = false
      })
      this.array[num].isClick = true
      if (this.show) {
        this.show = false
      }
      // 未登录显示未登录
      if (num === 2 && localStorage.Authorization === undefined) {
        Toast('你还未登录，请先登录')
      }
    },
    // 登录后通过子传父，变为登录状态
    logined(val) {
      // console.log(val)
      this.isLogin = val
    },
    move_logined(num) {
      // 左侧也清除已选中蓝色效果
      this.array.forEach((item) => {
        item.isClick = false
      })
      // 右侧清除已选中效果
      this.array_1ogined.forEach((item) => {
        item.isClick = false
      })
      this.array_1ogined[num].isClick = true
      if (this.show_logined) {
        this.show_logined = false
      }
      // 退出登录
      if (num === 2) {
        // console.log(666);
        Toast.loading({
          message: '退出中...',
          forbidClick: true
          // loadingType: 'spinner'
        })
        getLogoutAPI().then(res => {
          window.localStorage.removeItem('Authorization')
          this.isLogin = !this.isLogin
          Toast.success('退出成功')
        })
      }
    },
    // 点击登录后清除其他位置选中样式
    clearColor() {
      this.array.forEach((item) => {
        item.isClick = false
      })
    }
  }
}
</script>

<style lang="less" scoped>
.van-nav-bar {
  // 毛玻璃
  position: fixed;
  top: 0;
  background-color: rgba(0, 0, 0, 0.1);
  width: 100%;
  z-index: 10;
  -webkit-backdrop-filter: blur(24px);
  backdrop-filter: blur(24px);
  overflow: hidden;
  box-sizing: border-box;
  z-index: 999;
  transition: all 0.3s linear;
  -webkit-transition: all 0.3s linear;
}

// .van-nav-bar__content {
//   height: 0px;
// }

.van-hairline--bottom::after {
  border-bottom-width: 0;
}

.van_hide {
  top: -160px !important;
}

.van_color {
  background-color: #fff;
}

.logo {
  width: 450px;
  height: 120px;
  img {
    width: 100%;
  }
}

.menu,
.person {
  width: 80px;
  height: 80px;
  img {
    width: 100%;
  }
}

.van-cell {
  padding: 0;
  background: transparent;
}

.logo_left {
  position: relative;
  top: 25px;
  left: 45px;
  width: 500px;
  height: 150px;
  img {
    width: 100%;
  }
}

.van-popup--top {
  width: 101%;
}

.van-popup {
  .content {
    padding-left: 60px;
    height: 150px;
    line-height: 150px;
    font-size: 50px;
    a {
      display: block;
      color: black;
    }
  }
}

.click_color {
  color: rgb(0, 82, 217) !important;
}

.outline {
  margin: 0 60px;
  border-bottom: 1px solid #ccc;
}

.name {
  padding: 40px 0 40px 0;
  font-size: 57px;
}
</style>

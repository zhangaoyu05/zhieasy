import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

// 将需要登录才能进入的进行判断，通过添加字段 gorouter

export const constantRoutes = [
  {
    path: '/', redirect: '/home'
  },
  {
    path: '/home',
    component: () => import ('@/views/home/home.vue')
  },
  {
    path: '/introduce',
    component: () => import('@/views/introduce/introduce.vue')
  },
  {
    path: '/knowmore',
    component: () => import('@/views/KnowMore/KnowMore.vue')
  },
  {
    path: '/deliver',
    component: () => import('@/views/deliver/deliver.vue'),
    meta: {
      gorouter: true
    }
  },
  {
    path: '/dropresume',
    component: () => import('@/views/deliver/Dropresume.vue'),
    meta: {
      gorouter: true
    }
  },
  {
    path: '/messtake',
    component: () => import('@/views/deliver/Messtake.vue'),
    meta: {
      gorouter: true
    }
  },
  {
    path: '/login',
    component: () => import('@/views/login/login.vue')
  },
  // 忘记密码
  {
    path: '/forgetPwd',
    component: () => import('@/views/login/forgetPwd.vue')
  },
  // 立即注册
  {
    path: '/registerMessage',
    component: () => import('@/views/login/registerMessage.vue')
  },
  // 404 page must be placed at the end !!!
  { path: '*', redirect: '/404', hidden: true }
]

const createRouter = () => new Router({
  // mode: 'history', // require service support
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRoutes
})

const router = createRouter()

// Detail see: https://github.com/vuejs/vue-router/issues/1234#issuecomment-357941465
export function resetRouter() {
  const newRouter = createRouter()
  router.matcher = newRouter.matcher // reset router
}

router.beforeEach((to, from, next) => {
  // 判断该路由是否需要权限
  if (to.meta.gorouter) {
    // 判断是否有登录信息
    if (window.localStorage.getItem('Authorization')) {
      next()
    } else {
      next({
        path: '/login'
        // 将该路由path传入login页面，登录成功后跳转到该页面
        // query: { redirect: to.fullPath },
      })
    }
  } else {
    next()
  }
})

export default router

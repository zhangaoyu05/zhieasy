// 导入axios的请求方法
import request from '@/utils/request.js'

// 向外按需导出 api 函数

// 1.登录
export function getLoginAPI(username, pwd) {
  return request({
    method: 'post',
    url: '/sys/login',
    data: {
      username,
      pwd
    }
  })
}

// 2.获取验证码"
export function getCodeAPI(option, username) {
  return request({
    method: 'get',
    url: `/sys/code/${option}/${username}`
  })
}

// 3.验证验证码
export function checkCodeAPI(option, username, code) {
  return request({
    method: 'get',
    url: `/sys/code/check/${option}/${username}/${code}`
  })
}

// 4.重置密码
export function getResetAPI(email, pwd) {
  return request({
    method: 'post',
    url: '/sys/resetPWD',
    data: { email, pwd }
  })
}

// 5.注册用户
export function getRegisterAPI(email, pwd) {
  return request({
    method: 'post',
    url: '/sys/register',
    data: {
      email,
      pwd
    }
  })
}
// 6.退出登录
export function getLogoutAPI() {
  return request({
    method: 'get',
    url: '/authorized/sys/logout'
  })
}

// 获取用户信息
export function getInfo() {
  return request({
    url: `/authorized/user/info`,
    method: 'get'
  })
}

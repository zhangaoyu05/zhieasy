// 引入axios
import axios from 'axios'
import { Dialog, Toast } from 'vant'

// 创建axios实例
const service = axios.create({
  baseURL: '/zhieasy-api'
})

// 添加拦截器，每次发送请求就会携带Authorization
// 1.添加请求拦截器
service.interceptors.request.use(
  config => {
    config.headers['Authorization'] = window.localStorage.getItem('Authorization')
    return config
  },
  error => {
    return Promise.reject(error)
  }
)

// 2.添加响应拦截器
service.interceptors.response.use(
  response => {
    const res = response.data
    if (res.code !== 200) {
      Toast.fail({
        message: res.message || 'Error',
        duration: 3000
      })
      // 225: Token expired; 227: unlogin
      if (res.code === 225 || res.code === 227) {
        window.localStorage.removeItem('Authorization')
        location.reload()
      }

      // 224: Illegal token; 208: Other clients logged in;
      if (res.code === 208 || res.code === 224) {
        // to re-login
        Dialog.alert({
          title: '登录状态异常',
          message: res.message
        }).then(() => {
          window.localStorage.removeItem('Authorization')
          location.reload()
        })
      }
      return Promise.reject(new Error(res.message || 'Error'))
    } else {
      return res
    }
  },
  error => {
    // console.log('err' + error) // for debug
    Toast.fail({
      message: error.message,
      duration: 3 * 1000
    })
    return Promise.reject(error)
  }
)

export default service

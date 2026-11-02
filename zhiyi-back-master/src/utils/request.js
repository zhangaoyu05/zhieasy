import axios from 'axios'
import { MessageBox, Message } from 'element-ui'
import store from '@/store'
import { getToken, removeToken } from '@/utils/auth'
import router, { resetRouter } from '@/router'
// create an axios instance
const service = axios.create({
  // TODO后端接口地址
  baseURL: '/zhieasy-api',
  // baseURL: process.env.VUE_APP_BASE_API, // url = base url + request url
  // baseURL: 'https://zhiyi-api.abrahamx.top/zhieasy-api',
  // baseURL: 'http://172.24.205.164:8001/zhieasy-api',
  // baseURL: 'http://k8s-console.abrahamx.top:30936/zhieasy-api', //老接口
  // withCredentials: true, // send cookies when cross-domain requests
  timeout: 5000 // request timeout
})

// request interceptor
service.interceptors.request.use(
  config => {
    // do something before request is sent

    if (store.getters.token) {
      // let each request carry token
      // ['X-Token'] is a custom headers key
      // please modify it according to the actual situation
      config.headers['Authorization'] = getToken()
    }
    return config
  },
  error => {
    // do something with request error
    console.log(error) // for debug
    return Promise.reject(error)
  }
)

// response interceptor
service.interceptors.response.use(
  /**
   * If you want to get http information such as headers or status
   * Please return  response => response
  */

  /**
   * Determine the request status by custom code
   * Here is just an example
   * You can also judge the status by HTTP Status Code
   */
  response => {
    const res = response.data

    // if the custom code is not 20000, it is judged as an error.
    if (res.code !== 200) {
      Message({
        message: res.message || 'Error',
        type: 'error',
        duration: 5 * 1000
      })
      // 50008: Illegal token; 50012: Other clients logged in; 50014: Token expired;
      if (res.code === 224 || res.code === 208 || res.code === 225) {
        // to re-login
        MessageBox.alert('重新登录', '状态异常', {
          confirmButtonText: '确定',
          callback: action => {
            removeToken()
            resetRouter()
            location.reload()
            this.$message({
              type: 'info',
              message: '重新登录成功'
            });
            // store.dispatch('user/resetToken').then(() => {
            //   location.reload()

            // })

          }
        })
        // MessageBox.confirm('已经在别处登录', '重新登录', {
        //   confirmButtonText: '重新登录',
        //   type: 'warning'
        // }).then(() => {
        //   store.dispatch('user/resetToken').then(() => {
        //     location.reload()
        //   })
        // })
      }

      return Promise.reject(new Error(res.message || 'Error'))
    } else {
      return res
    }
  },
  error => {
    console.log('err' + error) // for debug
    Message({
      message: error.message,
      type: 'error',
      duration: 5 * 1000
    })
    return Promise.reject(error)
  }
)

export default service

import request from '@/utils/request'
// import data from '@/views/pdf/content'

export function login(data) {
  return request({
    url: '/sys/login',
    method: 'post',
    data
  })
}

export function getInfo(token) {
  return request({
    url: '/sys/backstage/info',
    method: 'post',
    data: token
  })
}

export function logout() {
  return request({
    url: '/authorized/sys/logout',
    method: 'get'
  })
}

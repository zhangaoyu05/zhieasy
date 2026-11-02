import request from '@/utils/request'

export function updateInfo (data) {
  return request({
    url: '/authorized/user/update',
    method: 'post',
    data
  })
}

export function uploadFile (data) {
  return request({
    headers: {
      'Content-Type': 'multipart/form-data'
    },
    url: '/authorized/user/upload',
    method: 'post',
    data
  })
}

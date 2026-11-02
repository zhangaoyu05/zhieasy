import request from '@/utils/request'

export default {
  // 信息列表（分页查询）
  getUserListPage(pageNo, pageSize, userQuery, operation) {
    return request({
      url: `/authorized/admin/query/${pageNo}/${pageSize}/${operation}`,
      method: 'post',
      data: userQuery
    })
  },

  //获取所有内容
  getAllInform() {
    return request({
      url: `/config`,
      method: 'get'
    })
  },


  //修改首页时间与联系方式
  updateInlist(new_list) {
    return request({
      url: `/authorized/admin/updateAllocation `,
      method: 'post',
      data: new_list
    })
  },



  //修改学习链接内容
  updateInlist2(new_list2) {
    return request({
      url: `/authorized/admin/learninglinks/update`,
      method: 'post',
      data: new_list2
    })
  },

  //增加学习链接内容
  AddStylinks(addcont) {
    return request({
      url: `/authorized/admin/learninglinks/add `,
      method: 'post',
      data: addcont
    })
  },

  //删除学习链接内容
  DelStylinks(id) {
    return request({
      url: `/authorized/admin/learninglinks/delete/${id}`,
      method: 'delete'
    })
  },


  //修改理由内容
  updateInlist3(new_list3) {
    return request({
      url: `/authorized/admin/updateReason`,
      method: 'post',
      data: new_list3
    })
  },
  //添加理由内容
  AddReascont(addcont) {
    return request({
      url: `/authorized/admin/addReason`,
      method: 'post',
      data: addcont
    })
  },
  //删除理由内容
  DelReascont(id) {
    return request({
      url: `/authorized/admin/deleteReason/${id}`,
      method: 'delete'
    })
  },


  //修改师兄师姐说内容
  updateInlist4(new_list4) {
    return request({
      url: `/authorized/admin/updateSay`,
      method: 'post',
      data: new_list4
    })
  },
  //添加师兄师姐说
  AddSayscont(addcont) {
    return request({
      url: `/authorized/admin/addSay`,
      method: 'post',
      data: addcont
    })
  },
  //删除师兄师姐说
  DelSayscont(id) {
    return request({
      url: `/authorized/admin/deleteSay/${id}`,
      method: 'delete'
    })
  },

  //上传图片
  UploadPhoto(data) {
    return request({
      url: `/authorized/admin/uploadPhoto`,
      method: 'post',
      data
    })
  },


  count() { // /count/{operation}/{value}
    return request({
      url: `/authorized/admin/count`,
      method: 'get'
    })
  },
  updateState(user) {
    return request({
      url: `/authorized/admin/state`,
      method: 'put',
      data: user
    })
  },
  updateRole(user) {
    return request({
      url: `/authorized/admin/role`,
      method: 'put',
      data: user
    })
  },



}

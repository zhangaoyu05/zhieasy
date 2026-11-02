import { getInfo } from '@/api/LoginAPI'

const state = {
  userInfo: {}
}

const mutations = {
  SET_USERINFO: (state, userInfo) => {
    state.userInfo = userInfo
  }
}

const actions = {
  // get user info
  getInfo({ commit, state }) {
    return new Promise((resolve, reject) => {
      getInfo().then(response => {
        // console.log('vuex', response)
        // 数据映射 将录取状态转变成数字状态码
        // const rateArr = ['未操作', '投递简历', '笔试', '面试', '已录取', '未录取']
        const { data } = response
        // data.state = rateArr.indexOf(data.state)
        commit('SET_USERINFO', data)
        resolve(data)
      }).catch(error => {
        reject(error)
      })
    })
  }
}

export default {
  namespaced: true,
  state,
  mutations,
  actions
}

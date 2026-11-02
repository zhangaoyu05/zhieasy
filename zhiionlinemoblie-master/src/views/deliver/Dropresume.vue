<template>
  <div class="all">

    <div class="drop-img" />
    <div class="imdeliver">
      <div class="imdeliver_box">
        <div class="imdeliver_title">致易工作室-简历填写</div>
        <div class="imdeliver_box_item">
          <div class="box_list">专注技术</div>
          <div class="box_list">提升自我</div>
        </div>
      </div>

      <div class="info_list">
        <div class="tell"><span style="color:red">*</span>说明:简历收集的信息仅用于致易工作室招新使用，你提供的QQ号及邮箱将用来接收致易工作室的相关通知及信息；未经你的授权，我们不会将收集到的数据用于其他目的</div>

        <div class="info_title">基础信息</div>
        <div class="text">(请务必填写带" * "的信息)</div>
        <van-cell-group>
          <van-field v-model="formRegister.name" :rules="[{ required: true, message: '请填写用户名' }]" class="satr" label="姓名" placeholder="必填项" />
          <div class="point satr">
            <div class="point-text">性别</div>
            <select v-model="formRegister.sex" autocomplete="off" class="point-choice" placeholder="男">
              <!-- <option value=""></option> -->
              <option disabled selected value>请选择性别</option>
              <option value="男">男</option>
              <option value="女">女</option>
            </select>
          </div>

          <van-field v-model="formRegister.college" class="satr" type="text" label="学院" placeholder="必填项" />
          <van-field v-model="formRegister.major" class="satr" type="text" label="专业" placeholder="必填项" />
          <van-field v-model="formRegister.clazz" class="satr" type="text" label="班级" placeholder="必填项" />
          <van-field v-model="formRegister.sid" class="satr" type="number" label="学号" placeholder="必填项" />
          <van-field v-model="formRegister.qq" type="text" label="Q Q" placeholder="非必填项" />
          <van-field v-model="formRegister.wechat" type="text" label="微信" placeholder="非必填项" />
          <div class="point">
            <div class="point-text">方向</div>
            <select v-model="formRegister.direction" autocomplete="off" class="point-choice" placeholder="请选择">
              <!-- <option value="">请选择</option> -->
              <option disabled selected value>请选择方向</option>
              <option value="前端">前端</option>
              <option value="Java">Java</option>
              <option value="Python">Python（人工智能）</option>
              <option value="游戏开发">游戏开发</option>
              <option value="网络空间安全">网络空间安全</option>
            </select>
          </div>

        </van-cell-group>

      </div>
    </div>

    <button class="btn" @click="initRegister()">提交</button>

    <div class="resume_box">
      <div class="resume_title">简历附件</div>
      <!-- <div class="text">( 注：请在必填信息填写完整后再提交简历文件)</div> -->
      <div v-if="userInfo.isperfected===1" class="resume_content">
        <div class="resume_upload">
          <!-- <button id="word_btnupload" class="uploader_btn"> -->
          <van-uploader v-model="file" :max-size="5 * 1024 * 1024" :after-read="afterRead" accept=".doc, .docx " :max-count="1" @oversize="onOversize" :before-read="beforeRead"/>
          <div class="filename" />
          <div class="upload_text">上传word简历，支持.doc, .docx类型文件，文件大小控制在6M以内</div>
          <input id="hideBtn_upload" type="file" style="display: none;">
        </div>
      </div>
      <div v-else class="error">
        <div class="err-text">投递简历前请先填写提交以上必填项信息</div>
        <img src="https://images.yzklianai.com/images/file.png" alt=""></div>
    </div>
    <Footer />
    <!-- <div class="bottom-btn">
      <button class="btn" @click="initRegister()">提交</button>
    </div> -->
  </div>

</template>
<script>
// es6导出规范 (bable将es6导出为es5)
import Footer from '@/components/Footer/index.vue'
import { mapGetters } from 'vuex'
import { uploadFile, updateInfo } from '@/api/ResumeAPI.js'
import { Toast } from 'vant'
export default {
  components: {
    Footer
  },
  data() {
    return {
      file: [],
      formRegister: {
        college: '',
        email: '',
        major: '',
        clazz: '',
        sid: '',
        name: '',
        sex: '',
        qq: '',
        direction: '',
        id: '',
        path: '',
        wechat: ''
      }

    }
  },
  // 从vuex得到userInfo
  computed: {
    ...mapGetters([
      'userInfo'
    ])
  },
  watch: {
    userInfo() {
      this.formRegister = this.userInfo
    }
  },
  created() {
    // console.log(11)
    this.formRegister = this.userInfo
  },
  methods: {
    beforeRead(file) {
      const allowedTypes = [
        'application/vnd.openxmlformats-officedocument.wordprocessingml.document', // .docx
        'application/msword' // .doc
      ];

      if (!allowedTypes.includes(file.type)) {
        this.$toast.fail('请上传正确格式的文件！');
        return false;
      }
      return true;
    },
    // 文件上传
    afterRead(file) {
      // console.log(3465656)
      this.uploadFile1(file)
    // }
    },
    // 判断文件大小
    onOversize(file) {
      // console.log(file, '文件不能大于6MB');
      Toast({
        message: '文件不能大于6MB',
        forbidClick: true,
        position: 'top'
      })
    },
    uploadFile1(file) {
      if (this.formRegister.college === null || this.formRegister.major === null || this.formRegister.clazz === null || this.formRegister.sid === null || this.formRegister.name === null || this.formRegister.sex === null) {
        Toast({
          message: '上传失败，请将必填信息填写完整再上传简历文件',
          forbidClick: true
        })
      } else {
        const formDate = new FormData()
        formDate.append('file', file.file)
        uploadFile(formDate).then(res => {
          Toast.success({
            message: '简历上传成功',
            forbidClick: true
          })
          // 刷新vuex
          // 因为上传简历之后userInfo数据里面标注用户状态的状态码会变化，所以需要再次请求vuex刷新数据，不然页面中的都是旧数据，用户修改数据之后拿的是旧状态上传信息
          this.$store.dispatch('user/getInfo')
        })
      }
    },
    // 信息提交
    initRegister() {
      if (this.formRegister.college === '' || this.formRegister.major === '' || this.formRegister.clazz === '' || this.formRegister.sid === '' || this.formRegister.name === '' || this.formRegister.sex === '') {
      // console.log('信息未填写完整')
        Toast({
          message: '请将必填信息填写完整再提交',
          forbidClick: true,
          position: 'top'
        })
      } else {
        updateInfo(this.formRegister).then(res => {
          // console.log('提交成功');
          Toast.success({
            message: '信息提交成功',
            forbidClick: true
          })
          // 刷新vuex
          // 因为上传简历之后userInfo数据里面标注用户状态的状态码会变化，所以需要再次请求vuex刷新数据，不然页面中的都是旧数据，用户修改数据之后拿的是旧状态上传信息
          this.$store.dispatch('user/getInfo')
        })
      }
    }
  }

}

</script>

<style lang='less' scoped>
* {
  box-sizing: border-box;
//   font-size: 15px;
}
* {
  margin: 0;
//   padding: 0;
}
.error{
    display: flex;
    justify-content: center;
    position: relative;
    margin-bottom: 20px;
    background-color: #f9f9f9;
    border-radius: 0.2065rem;
}
.error img{
    width: 60%;
    height: 4.96774rem;
    position: relative;
    right: -1.62258rem;
}
.err-text {
    width: 38%;
    height: 1.9677rem;
    font-size: 0.08871rem;
    padding: 0.32097rem;
    border-radius: 50%;
    background-color: #cee8ff;
    position: absolute;
    left: 0.48129rem;
    top: 1.41935rem;
}
// 下拉框
.point{
    display:flex;
    flex-direction: row;

    line-height: 1.177rem;
    font-size: 0.38097rem;
    font-weight: 500;
    color: #646566;;
    margin-left: 0.42903rem;
    border-bottom: 0.02667rem solid #ebedf04f;
    width: 90%;
}
.point-choice{
        border: 0.00806rem solid #ffffff00;
    border-radius: 0.10667rem;
    appearance: none;
    font-size: 0.38097rem;
    font-weight: 400;
        margin-left: 1.1000003rem;

}
.btn {
    width: 79%;
    height: 0.941452rem;
    background-color: #0052d9;
    border: 0.00806rem;
    color: #FFF;
    font-size: 0.45903rem;
    border-radius: .2032rem;
}
.text{
  color:#0052D9;
  margin-left:3px;
  margin-bottom: 0.24032rem;
  color:#0052d9;
  font-size: 0.316323rem;

}
.point::after {
    position: absolute;
    box-sizing: border-box;
    content: ' ';
    pointer-events: none;
    right: 0.42667rem;
    bottom: 0;
    left: 0.42667rem;
    border-bottom: 0.02667rem solid #ebedf0;
    -webkit-transform: scaleY(.5);
    transform: scaleY(.5);
}
select.point-choice {
    width: 4.04839rem;;
    outline: none;
    padding-left: 0.759999rem;
    background-color: #fff;
    color: #323233;
}
.satr:before{
    position: absolute;
    left: 0.1952rem;
    color: #ee0a24;
    font-size: 0.6129rem;
    content: '*';
}
.drop-img{
        display: block;
    width: 100%;
    height: 7.55rem;
    background-image: url("https://images.yzklianai.com/images/jianliTop.jpg");
    background-size: cover;
    background-position: center center
}
/* 文件 */

/* ======================================== */
/deep/.van-icon-photograph:before {
    content: '+';
    font-size: 1.3871rem;
}
/deep/.van-uploader {

    left: 2.7rem;
}
/deep/.van-cell {

    font-size: 0.38097rem
}
.all{
    background-color: #f5f5f5;
        display: flex;
    flex-direction: column;
    align-items: center;
}
.imdeliver {
    position: relative;
    margin-bottom: 55px;
}

.imdeliver_box {
    height: 3.286667rem;
    padding: 0.64rem;
    padding-top: 0.5333333333333333rem;
    border-radius: .32rem;
    margin-top: 0.64rem;
    box-sizing: border-box;
}

.imdeliver_title {
    height: 0.64rem;
    font-size: 0.5266666666666667rem;
    font-weight: 500;
    color: rgba(0, 0, 0, 0.8);
    line-height: 0.64rem;
}
.tell {
    font-size: 0.352484rem;
    line-height: 1.5;
    margin-bottom: 15px;
}
.imdeliver_box_item {
    height: 0.7466666666666667rem;
    margin-bottom: 0.4266666666666667rem;
        margin-top:     10px;

}
// vant

.imdeliver .box_list {
    opacity: 1;
    color: #0052d9;
    font-size: 0.37333333333333335rem;
    font-weight: 400;
    text-align: left;
    line-height: 0.5866666666666667rem;
    padding: 0.05333333333333334rem 0.21333333333333335rem;
    border: 1px solid #0052D9;
    display: inline-block;
    border-radius: .106667rem;
    margin: 10px
}

.imdeliver .info_list {
    padding: 0 0.64rem;
    margin-top: -35px;
}

.imdeliver .info_box {
    position: relative;
    display: flex;
    justify-content: space-evenly;
}

.info_title,
.resume_title {
   background: url(https://images.yzklianai.com/images/blueBottom.png) no-repeat 0
    20px;
    position: relative;
    color: rgba(0, 0, 0, 0.8);
    font-size: 0.4266666666666667rem;
    font-weight: 500;
    display: inline-block;
    margin-bottom: 20px;
    margin-bottom: 0.66129rem;
        background-size: 117% 60%;
    background-position: 1px 0.429rem;
}

.imdeliver .subtitle {
    position: relative;
    font-size: 0.37333333333333335rem;
    font-weight: 400;
    line-height: 0.5866666666666667rem;
    margin: 0.4266666666666667rem 0 0;
    display: inline-block;
}

.person-name span {
    color: #0052D9;
    font-weight: 400;
    vertical-align: top;
    display: inline;
}

.info_inputbox {
        margin-top: 0.18rem;
        width: 70%;

}

.resume_upload {
    position: relative;
    width: 100%;
    border-radius: -13.68rem;
    padding: 0.64rem;
    box-sizing: border-box;
    // box-shadow: -1px -2px 0px -2px rgb(0 0 0 / 50%);
}
.resume_box{
      width: 8.73548rem;
      margin-top: 1.32258rem
}
.resume_content{
    background: #f0f0f0;
    // box-shadow: 1px 0px 6px #b6aeae;
    border-radius: 55px;
    margin-bottom: 50px;
}
.filename {
    color: rgba(0, 0, 0, 0.816);
    font-size: 0.37333rem;
    font-weight: 500;
    text-align: center;
}

.uploader_btn {
    height: 1.06667rem;
    width: 2.36667rem;
    border-radius: 0.8rem;
    background: #ffffff;
    border: 0.02667rem solid #0052d9;
    color: #0052d9;
    margin: 0.42667rem auto;
    opacity: 1;
    font-size: 0.37333rem;
    font-weight: 400;
    line-height: 0.58667rem;
    display: block;
}

.uploader_btn:hover {
    background: rgba(235, 235, 235, 0.347);
}

.upload_text {
    color: rgba(0, 0, 0, 0.4);
    font-size: 0.37333rem;
    line-height: 0.58667rem;
    font-weight: 400;
    text-align: center;
}
.footer{
  width:100%
}
</style>

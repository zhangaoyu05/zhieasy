<template>
    <div class="app-container">
  
      <el-card class="box-card" >
        <div slot="header" class="clearfix">
          <span>时间与联系方式</span>
          <el-button style="float: right; padding: 3px 0" type="text" @click="Modify" v-show="this.IsModify == false">编辑</el-button>
          <el-button style="float: right; padding: 3px 0" type="text" @click="SubmitInform" v-show="this.IsModify == true">提交</el-button>
        </div>
        <el-form ref="form" :model="list" label-width="80px">
          <el-form-item label="招新年份" >
            <el-input v-model="list.year" clearable  :disabled="!IsModify"> </el-input>
          </el-form-item>
          <el-form-item label="招新时限" >
            <el-input v-model="list.timeRange" clearable  :disabled="!IsModify"> </el-input>
          </el-form-item>
          <el-form-item label="工作室QQ" >
            <el-input v-model="list.qq" clearable :disabled="!IsModify"> </el-input>
          </el-form-item>
          <el-form-item label="邮箱" >
            <el-input v-model="list.email" clearable :disabled="!IsModify"> </el-input>
          </el-form-item>
        </el-form>
      </el-card>

      <el-card class="box-card" >
        <div slot="header" class="clearfix">
          <span>学习链接</span>
          <el-select v-model="list2_id" placeholder="输入要修改哪一个的内容" filterable allow-create style="margin-left: 20px;" @change="list2_id2">
            <el-option v-for="(option, index) in this.savelist2" :key="index" :label="option.direction" :value="index + 1"></el-option>
          </el-select>
          <!-- <el-button icon="el-icon-search"  circle @click="list2_id2" style="margin-left:10px;"></el-button> -->
          <el-button style="float: right; padding: 3px 0" type="text" @click="Modify2" v-show="this.IsModify2 == false">编辑</el-button>
          <el-button style="float: right; padding: 3px 0" type="text" @click="SubmitInform2" v-show="this.IsModify2 == true">提交</el-button>
          <el-button style="float: right; padding: 3px 10px" type="text" @click="AddInform2">新增</el-button>
          <el-button style="float: right; padding: 1px 0" type="text" @click="DelInform2(list2.id)">删除</el-button>
        </div>
        <el-form ref="form" :model="list2" label-width="80px">
          <!-- <el-form-item label="id" >
            <el-input v-model="list2.id" clearable  :disabled="!IsModify2"> </el-input>
          </el-form-item> -->
          <el-form-item label="学习方向" >
            <el-input v-model="list2.direction" clearable  :disabled="!IsModify2"> </el-input>
          </el-form-item>
          <el-form-item label="方向图片" >
            <!-- <el-input v-model="list2.image" clearable :disabled="!IsModify2"> </el-input> -->
            <!-- on-exceed="handleExceed" -->
            <el-upload
              class="upload-demo"
              action="string"
          
              :multiple="false"
              :before-upload="beforeUpload"
              :auto-upload="false"
              :on-change="handleChange"
              :limit="1" 
              accept=".jpg,.png"
              :file-list="fileList">
            
              <el-button slot="trigger" size="small" type="primary" :disabled="!IsModify2">选取文件</el-button>
              <el-button style="margin-left: 10px;" size="small" type="success" @click="uploadFile(1)" :disabled="!IsModify2">上传到服务器</el-button>
              <div slot="tip" class="el-upload__tip">只能上传jpg/png文件</div>
            </el-upload>
          </el-form-item>
          <el-form-item label="图片" >
            <img :src="list2.image" alt=""  style="width: 120px;height:80px;">
            <!-- <Lightbox :src="list2.image" /> -->
          </el-form-item>
          <el-form-item label="链接地址" >
            <el-input v-model="list2.link" clearable :disabled="!IsModify2"> </el-input>
          </el-form-item>
        </el-form>
      </el-card>


      <el-card class="box-card">
        <div slot="header" class="clearfix">
          <span>加入致易的理由</span>
          <el-select v-model="list3_id" placeholder="输入要修改哪一个的内容" filterable allow-create style="margin-left: 20px;"  @change="list3_id3">
            <el-option v-for="(option, index) in this.savelist3" :key="index" :label="option.name" :value="index + 1"></el-option>
          </el-select>
          <!-- <el-button icon="el-icon-search"  circle @click="list3_id3" style="margin-left:10px;"></el-button> -->
          <el-button style="float: right; padding: 3px 0" type="text" @click="Modify3" v-show="this.IsModify3 == false">编辑</el-button>
          <el-button style="float: right; padding: 3px 0" type="text" @click="SubmitInform3" v-show="this.IsModify3 == true">提交</el-button>
          <el-button style="float: right; padding: 1px 0px" type="text" @click="AddInform3">新增</el-button>
          <el-button style="float: right; padding: 1px 0" type="text" @click="DelInform3(list3.id)">删除</el-button>
        </div>
        <el-form ref="form" :model="list3" label-width="80px">
          <!-- <el-form-item label="id" >
            <el-input v-model="list3.id" clearable  :disabled="!IsModify3"> </el-input>
          </el-form-item> -->
          <el-form-item label="标题" >
            <el-input v-model="list3.name" clearable  :disabled="!IsModify3"> </el-input>
          </el-form-item>
          <el-form-item label="主要内容" >
            <el-input v-model="list3.direction" clearable :disabled="!IsModify3"> </el-input>
          </el-form-item>
          <el-form-item label="图片" >
            <!-- <el-input v-model="list3.image" clearable :disabled="!IsModify3"> </el-input> -->
            <el-upload
                class="upload-demo"
                action="string"
             
                :multiple="false"
                :before-upload="beforeUpload"
                :auto-upload="false"
                :on-change="handleChange"
                :limit="1" 
                accept=".jpg,.png"
                :file-list="fileList">
                <!-- <el-button size="small" type="primary" :disabled="!IsModify3" @click="card3num1">点击上传</el-button> -->
                <el-button slot="trigger" size="small" type="primary" :disabled="!IsModify3">选取文件</el-button>
                <el-button style="margin-left: 10px;" size="small" type="success" @click="uploadFile(3)" :disabled="!IsModify3">上传到服务器</el-button>
                <div slot="tip" class="el-upload__tip">只能上传jpg/png文件</div>
              </el-upload>
          </el-form-item>
          <el-form-item label="图片" >
            <img :src="list3.image" alt=""  style="width: 160px;height:180px;">
          </el-form-item>
         
        </el-form>
      </el-card>

     
      <el-card class="box-card" >
        <div slot="header" class="clearfix">
          <span>师兄师姐说</span>
          <el-select v-model="list4_id" placeholder="输入要修改哪一个的内容" filterable allow-create style="margin-left: 20px;" @change="list4_id4">
            <el-option v-for="(option, index) in this.savelist4" :key="index" :label="option.name" :value="index + 1"></el-option>
          </el-select>
          <!-- <el-button icon="el-icon-search"  circle @click="list4_id4" style="margin-left:10px;"></el-button> -->
          <el-button style="float: right; padding: 1px 0" type="text" @click="Modify4" v-show="this.IsModify4 == false">编辑</el-button>
          <el-button style="float: right; padding: 1px 0" type="text" @click="SubmitInform4" v-show="this.IsModify4 == true">提交</el-button>
          <el-button style="float: right; padding: 1px 6px" type="text" @click="AddInform4">新增</el-button>
          <el-button style="float: right; padding: 1px 0" type="text" @click="DelInform4(list4.id)">删除</el-button>
        </div>
        <el-form ref="form" :model="list4" label-width="80px">
          <!-- <el-form-item label="id" >
            <el-input v-model="list4.id" clearable  :disabled="!IsModify4"> </el-input>
          </el-form-item> -->
          <el-form-item label="名字" >
            <el-input v-model="list4.name" clearable  :disabled="!IsModify4"> </el-input>
          </el-form-item>
          <el-form-item label="年级" >
            <el-input v-model="list4.grade" clearable :disabled="!IsModify4"> </el-input>
          </el-form-item>
          <el-form-item label="职位" >
            <el-input v-model="list4.job" clearable :disabled="!IsModify4"> </el-input>
          </el-form-item>
          <el-form-item label="公司" >
            <el-input v-model="list4.location" clearable :disabled="!IsModify4"> </el-input>
          </el-form-item>
          <el-form-item label="名言" >
            <el-input v-model="list4.direction" clearable :disabled="!IsModify4"> </el-input>
          </el-form-item>
          <el-form-item label="图片" >
            <!-- <el-input v-model="list4.image" clearable :disabled="!IsModify4"> </el-input> -->
            <el-upload
              class="upload-demo"
              action="string"
          
              :multiple="false"
              :before-upload="beforeUpload"
              :auto-upload="false"
              :on-change="handleChange"
              :limit="1" 
              accept=".jpg,.png"
              :file-list="fileList">
            
              <el-button slot="trigger" size="small" type="primary" :disabled="!IsModify4">选取文件</el-button>
              <el-button style="margin-left: 10px;" size="small" type="success" @click="uploadFile(5)" :disabled="!IsModify4">上传到服务器</el-button>
              <div slot="tip" class="el-upload__tip">只能上传jpg/png文件</div>
            </el-upload>
          </el-form-item>
          <el-form-item label="图片" >
            <img :src="list4.image" alt=""  style="width: 180px;height:140px;">
          </el-form-item>
        </el-form>
      </el-card>


        <!-- 增加学习链接内容的弹窗 -->
      
        <el-dialog
        title="新增一条内容"
        :visible.sync="Add_Info2"
        width="30%"
        :before-close="Close_dialog1">
        <div>

          <el-form ref="form" :model="addlist2" label-width="80px">
            <el-form-item label="学习方向">
              <el-input v-model="addlist2.direction"></el-input>
            </el-form-item>
            <el-form-item label="链接地址">
              <el-input v-model="addlist2.link"></el-input>
            </el-form-item>
           
            <el-form-item label="方向图片">
              <!-- <el-input v-model="addlist2.image"></el-input> -->
              <el-upload
                class="upload-demo"
                action="string"
                ref="dialog1"
                :multiple="false"
                :before-upload="beforeUpload"
                :auto-upload="false"
                :on-change="handleChange"
                :limit="1" 
                accept=".jpg,.png"
                :file-list="fileList">
              
                <el-button slot="trigger" size="small" type="primary">选取文件</el-button>
                <el-button style="margin-left: 10px;" size="small" type="success" @click="uploadFile(2)">上传到服务器</el-button>
                <div slot="tip" class="el-upload__tip">只能上传jpg/png文件</div>
              </el-upload>
            </el-form-item>
            <el-form-item label="图片" >
              <img :src="addlist2.image" alt=""  style="width: 180px;height:140px;">
            </el-form-item>

          </el-form>

        </div>
        <span slot="footer" class="dialog-footer">
          <el-button @click="Close_dialog1">取 消</el-button>
          <el-button type="primary" @click="Upload_dialog1">上 传</el-button>
        </span>
      </el-dialog>



      
        <!-- 增加加入理由内容的弹窗 -->
      
        <el-dialog
        title="新增一条内容"
        :visible.sync="Add_Info3"
        width="30%"
        :before-close="Close_dialog2">
        <div>

          <el-form ref="form" :model="addlist3" label-width="80px">
            <el-form-item label="标题">
              <el-input v-model="addlist3.name"></el-input>
            </el-form-item>
            <el-form-item label="主要内容">
              <el-input v-model="addlist3.direction"></el-input>
            </el-form-item>
           
            <el-form-item label="图片">
              <!-- <el-input v-model="addlist3.image"></el-input> -->
              <el-upload
                class="upload-demo"
                action="string"
                ref="dialog2"
                :multiple="false"
                :before-upload="beforeUpload"
                :auto-upload="false"
                :on-change="handleChange"
                :limit="1" 
                accept=".jpg,.png"
                :file-list="fileList">
              
                <el-button slot="trigger" size="small" type="primary">选取文件</el-button>
                <el-button style="margin-left: 10px;" size="small" type="success" @click="uploadFile(4)">上传到服务器</el-button>
                <div slot="tip" class="el-upload__tip">只能上传jpg/png文件</div>
              </el-upload>
            </el-form-item>
            <el-form-item label="图片" >
              <img :src="addlist3.image" alt=""  style="width: 180px;height:140px;">
            </el-form-item>

          </el-form>

        </div>
        <span slot="footer" class="dialog-footer">
          <el-button @click="Close_dialog2">取 消</el-button>
          <el-button type="primary" @click="Upload_dialog2">上 传</el-button>
        </span>
      </el-dialog>




      <!-- 增加师兄师姐说内容的弹窗 -->
      
      <el-dialog
        title="新增一条内容"
        :visible.sync="Add_Info4"
        width="30%"
        :before-close="Close_dialog0">
        <div>

          <el-form ref="form" :model="addlist4" label-width="80px">
            <el-form-item label="名字">
              <el-input v-model="addlist4.name"></el-input>
            </el-form-item>
            <el-form-item label="年级">
              <el-input v-model="addlist4.grade"></el-input>
            </el-form-item>
            <el-form-item label="职位">
              <el-input v-model="addlist4.job"></el-input>
            </el-form-item>
            <el-form-item label="公司">
              <el-input v-model="addlist4.location"></el-input>
            </el-form-item>
            <el-form-item label="名言">
              <el-input v-model="addlist4.direction"></el-input>
            </el-form-item>
            <el-form-item label="图片">
              <!-- <el-input v-model="addlist4.image"></el-input> -->
              <el-upload
                class="upload-demo"
                action="string"
                ref="dialog0"
                :multiple="false"
                :before-upload="beforeUpload"
                :auto-upload="false"
                :on-change="handleChange"
                :limit="1" 
                accept=".jpg,.png"
                :file-list="fileList">
              
                <el-button slot="trigger" size="small" type="primary">选取文件</el-button>
                <el-button style="margin-left: 10px;" size="small" type="success" @click="uploadFile(6)">上传到服务器</el-button>
                <div slot="tip" class="el-upload__tip">只能上传jpg/png文件</div>
              </el-upload>
            </el-form-item>
            <el-form-item label="图片" >
              <img :src="addlist4.image" alt=""  style="width: 180px;height:140px;">
            </el-form-item>

          </el-form>

        </div>
        <span slot="footer" class="dialog-footer">
          <el-button @click="Close_dialog0">取 消</el-button>
          <el-button type="primary" @click="Upload_dialog0">上 传</el-button>
        </span>
      </el-dialog>
    </div>
  </template>
  <script>
  import Lightbox from 'vue-image-lightbox'
  import user from '@/api/zhieasy/user'
  import excel from '../../excel/export-excel.vue'
  // import { UploadPhoto } from '@/api/zhieasy/user'
  import store from '@/store/modules/user'
  import { Base64 } from 'js-base64'
  export default {
    components: {
      excel,
      Lightbox
    },
    data() {
      return {
        list: {
          year: '',
          timeRange: '',
          qq: '',
          email: ''
        },
        savelist2:{},
        list2: {
       
        },
        savelist3:{},
        list3:{

        },
        savelist3:{},
        list3:{

        },
        savelist4:{},
        list4:{

        },
        list2_id:'',
        list3_id:'',
        list4_id:'',
        IsModify:false,
        IsModify2:false,
        IsModify3:false,
        IsModify4:false,

        Add_Info4:false,

        addlist4:{
          name:'',
          grade:'',
          job:'',
          location:'',
          direction:'',
          image:'',
        },

        Add_Info3:false,
        addlist3:{
          name:'',
          direction:'',
          image:'',
        },

        Add_Info2:false,
        addlist2:{
          direction:'',
          link:'',
          image:'',
        },

        fileList: [],
        file: {},
        cardnum:'',
        file2: {}
        
      }
    },
    created() {
      this.getAllList()
      
    },
    methods: {
      //修改内容
      Modify() {
        this.IsModify = true;
      },
      Modify2() {
        this.IsModify2 = true;
      },
      Modify3() {
        this.IsModify3 = true;
      },
      Modify4() {
        this.IsModify4 = true;
      },
      SubmitInform() {
        const new_list = this.list
        user.updateInlist(new_list).then((res) => {
          if (res.code == 200) {
            this.$message({
              type:'success',
              message:'修改成功'
            })
            this.IsModify = false;
          }
         
        })
      },
      SubmitInform2() {
        const new_list2 = this.list2
        user.updateInlist2(new_list2).then((res) => {
          if (res.code == 200) {
            this.$message({
              type:'success',
              message:'修改成功'
            })
            this.IsModify2 = false;
          }
          else if(res.code == 201) {
            this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })
          }
        })
        .catch((error) => {
          this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })

        });
      },
      SubmitInform3() {
        const new_list3 = this.list3
        user.updateInlist3(new_list3).then((res) => {
          if (res.code == 200) {
            this.$message({
              type:'success',
              message:'修改成功'
            })
            this.IsModify3 = false;
          }
          else if(res.code == 201) {
            this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })
          }
        })
        .catch((error) => {
          this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })

        });
      },
      SubmitInform4() {
        const new_list4 = this.list4
        user.updateInlist4(new_list4).then((res) => {
          if (res.code == 200) {
            this.$message({
              type:'success',
              message:'修改成功'
            })
            this.IsModify4 = false;
          }
          else if(res.code == 201) {
            this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })
          }
        })
        .catch((error) => {
          this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })

        });
      },
      //详情请看user.js中注释
      getAllList() {
        user
          .getAllInform()
          .then((response) => {
            // console.log('getAllList',response);
            if (response.code == 200) {
                 
                  this.list = response.data.timeandcontact

                  this.savelist2 = response.data.Learninglinks
                  this.list2 = response.data.Learninglinks[0]

                  this.savelist3 = response.data.resons
                  this.list3 = response.data.resons[0]

                  this.savelist4 = response.data.says
                  this.list4 = response.data.says[0]


                  response.data.Learninglinks.forEach((Infos) => {
                    // console.log('Infos',Infos);
                    // this.list2 = Infos
                    
                  })
                  // response.data.resons.forEach((reason) => {
                  //   this.list3 = reason
                  // })
              
           
            }
          })
      },
     
      list2_id2() {
        this.list2 = this.savelist2 [this.list2_id -1]; 
      },
      
      list3_id3() {
        this.list3 = this.savelist3 [this.list3_id -1]; 
      },
      list4_id4() {
        this.list4 = this.savelist4 [this.list4_id -1]; 
      },
      resetData() {
        this.userQuery = {}
        this.getList()
      },
      setCur(cur) {
        // console.log(cur);
        this.dialogVisible = true
        this.cur = cur
      },
      updateState(newState) {
        // console.log(newState);
        newState.state = this.changeState
        user.updateState(newState).then((response) => {
          this.dialogVisible = false
          this.getList(this.pageNo)
          this.$message({
            type: 'success',
            message: '状态更新成功'
          })
        })
      },


      //增加师兄师姐说内容
      AddInform4() {
        this.Add_Info4 = true;
      },

 
      Close_dialog0() {
        //退出清空文件列表
        this.$refs.dialog0.clearFiles()
        this.Add_Info4 = false
        this.addlist4 = {
          name:'',
          grade:'',
          job:'',
          location:'',
          direction:'',
          image:'',
        }
        
      },
      Upload_dialog0() {
        const data = this.addlist4
        user.AddSayscont(data).then((res) => {
          if (res.code == 200) {
            this.$message({
              type:'success',
              message:'新增成功'
            })
          }
          else if(res.code == 201) {
            this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })
          }
          this.getAllList()
        })
        .catch((error) => {
          this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })

        });

        this.Add_Info4 = false
        this.addlist4 = {
          name:'',
          grade:'',
          job:'',
          location:'',
          direction:'',
          image:'',
        }
      },
      DelInform4(id) {
        this.$confirm('是否确认删除？', '确认信息', {
          distinguishCancelAndClose: true,
          confirmButtonText: '确认',
          cancelButtonText: '放弃删除'
        })
          .then(() => {
            this.$message({
              type: 'info',
              message: '已删除'
            });

            user.DelSayscont(id).then((res) => {
              // console.log(res);
              if (res.code == 200) {
                this.$message({
                  type:'success',
                  message:'删除成功'
                })
              }
              window.location.reload();
            })
        
          })
          .catch(action => {
            this.$message({
              type: 'info',
              message: action === 'cancel'
                ? '放弃删除'
                : '取消操作'
            })
          });
      },



      //增加，删除学习链接内容
       
       AddInform2() {
        this.Add_Info2 = true;
      },

 
      Close_dialog1() {
        //退出清空文件列表
        this.$refs.dialog1.clearFiles()
        this.Add_Info2 = false
        this.addlist2 = {
          direction:'',
          link:'',
          image:'',
        }
        
      },
      Upload_dialog1() {
        const data = this.addlist2
        user.AddStylinks(data).then((res) => {
          if (res.code == 200) {
            this.$message({
              type:'success',
              message:'新增成功'
            })
          }
          else if(res.code == 201) {
          
            this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })
          }
          this.getAllList()
        })
        .catch((error) => {
          this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })

        });

        this.Add_Info2 = false
        this.addlist2 = {
          direction:'',
          link:'',
          image:'',
        }
      },

      DelInform2(id) {
        this.$confirm('是否确认删除？', '确认信息', {
          distinguishCancelAndClose: true,
          confirmButtonText: '确认',
          cancelButtonText: '放弃删除'
          })
            .then(() => {
              this.$message({
                type: 'info',
                message: '已删除'
              });

              user.DelStylinks(id).then((res) => {
                // console.log(res);
                if (res.code == 200) {
                  this.$message({
                    type:'success',
                    message:'删除成功'
                  })
                }
                window.location.reload();
              })
          
            })
          .catch(action => {
            this.$message({
              type: 'info',
              message: action === 'cancel'
                ? '放弃删除'
                : '取消操作'
            })
          });

        
      },


      //增加，删除加入理由

        AddInform3() {
        this.Add_Info3 = true;
      },

 
      Close_dialog2() {
        //退出清空文件列表
        this.$refs.dialog2.clearFiles()
        this.Add_Info3 = false
        this.addlist3 = {
          direction:'',
          name:'',
          image:'',
        }
        
      },
      Upload_dialog2() {
        const data = this.addlist3
        user.AddReascont(data).then((res) => {
          console.log('res',res)
          if (res.code == 200) {
            this.$message({
              type:'success',
              message:'新增成功'
            })
          }
        
          else if(res.code == 201) {
            this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })
          }
          this.getAllList()

        })
        .catch((error) => {
          this.$message({
              type:'warning',
              message:'未上传图片(⇀‸↼‶)'
            })

        });
        this.Add_Info3 = false
        this.addlist3 = {
          direction:'',
          name:'',
          image:'',
        }
      },

      DelInform3(id) {
        this.$confirm('是否确认删除？', '确认信息', {
          distinguishCancelAndClose: true,
          confirmButtonText: '确认',
          cancelButtonText: '放弃删除'
          })
            .then(() => {
              this.$message({
                type: 'info',
                message: '已删除'
              });

              user.DelReascont(id).then((res) => {
                // console.log(res);
                if (res.code == 200) {
                  this.$message({
                    type:'success',
                    message:'删除成功'
                  })
                }
                window.location.reload();
              })
          
          
            })
            .catch(action => {
              this.$message({
                type: 'info',
                message: action === 'cancel'
                  ? '放弃删除'
                  : '取消操作'
              })
            });
      

      },

      // 文件数量限制
      handleExceed(files, fileList) {
        this.$message.warninging(`请先删除已选择文件，再重新选择`)
      },
      handleChange(file, fileList) {
        this.file2 = file;
        // console.log(this.file2.raw);
      },
      // 文件上传之前判断是否是对应格式与大小
      beforeUpload(file) {
        const isExcel =
          file.name.split('.')[1] === 'png' ||
          file.name.split('.')[1] === 'jpg'
        const isSize = file.size / 1024 / 1024 < 10
        if (!isExcel) {
          this.$message({
            message: '文件类型错误，只能上传png、jpg文件',
            type: 'error'
          })
        }
        if (!isSize) {
          this.$message({
            message: '上传文件大小不能超过 10MB!',
            type: 'error'
          })
        }
      },

       // 图片上传去调用这个方法
      uploadFile(num) {
   
        const formDate = new FormData()
        this.cardnum = num
        formDate.append('file', this.file2.raw)
        // console.log('formDate',formDate);
        // console.log('file', file.file);
        user.UploadPhoto(formDate).then(res => {
          if (res.code == 200) {
              this.$notify({
              title: '成功',
              message: '图片上传成功',
              type: 'success'
            
            })
            if(this.cardnum == 1) {
              this.list2.image = res.data
            }
            else if(this.cardnum == 2) {
              this.addlist2.image = res.data
            }
            else if(this.cardnum == 3) {
              this.list3.image = res.data
            }
            else if(this.cardnum == 4) {
              this.addlist3.image = res.data
            } 
            else if(this.cardnum == 5) {
              this.list4.image = res.data
            }
            else if(this.cardnum == 6) {
              this.addlist4.image = res.data
            }
          }
        


        })
       }
      },
    
  }
  </script>
  

<style scoped>
.app-container {
  display: flex;
  width: 100%;
  flex-wrap: wrap;
  justify-content: center;
}
.text {
  font-size: 14px;
}

.item {
  margin-bottom: 18px;
}

.clearfix:before,
.clearfix:after {
  display: table;
  content: "";
}
.clearfix:after {
  clear: both
}

.box-card {
  width: 430px;
  margin: 20px;
}
</style>
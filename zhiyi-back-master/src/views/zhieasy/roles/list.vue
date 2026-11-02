<template>
  <div class="app-container">
    <el-form :inline="true" class="demo-form-inline">
      <el-form-item label="姓名">
        <el-input v-model="userQuery.name" placeholder="姓名" />
      </el-form-item>
      <el-form-item label="邮箱">
        <el-input v-model="userQuery.email" placeholder="邮箱" />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="getList()">查询</el-button>
        <el-button @click="resetData()">清空</el-button>
      </el-form-item>
    </el-form>
    <el-table :data="list" :border="true" fit style="width: 100%">
      <el-table-column align="center" width="70" label="序号">
        <template slot-scope="scope">
          {{ (pageNo - 1) * size + scope.$index + 1 }}
        </template>
      </el-table-column>
      <el-table-column align="center" prop="sid" label="学号" />
      <el-table-column align="center" prop="name" label="姓名" />
      <el-table-column align="center" prop="sex" label="性别" />
      <el-table-column align="center" prop="college" label="学院" />
      <el-table-column align="center" prop="email" label="邮箱" width="180" />
      <el-table-column align="center" prop="qq" label="qq" />
      <el-table-column align="center" prop="wechat" label="微信" />
      <el-table-column align="center" prop="direction" label="方向" />
      <!-- <el-table-column align="center" prop="state" label="状态" /> -->
      <el-table-column align="center" prop="role" label="角色">
        <template slot-scope="scope">
          {{
            scope.row.role === 0
              ? "用户"
              : scope.row.role === 1
                ? "管理员"
                : "其他用户"
          }}
        </template>
      </el-table-column>
      <!--https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/202210993258%E7%A4%BA%E6%B3%A2%E5%99%A8%E5%AE%9E%E9%AA%8C.doc-->
      <el-table-column label="操作" width="220" align="center">
        <template #default="scope">
          <el-button
            type="danger"
            size="small"
            :disabled="user.name === scope.row.email"
            @click="setCur(scope.row)"
          >更新角色</el-button>

          <el-dialog title="修改权限" :visible.sync="dialogVisible" width="30%">
            <el-select
              v-model="changeRole"
              :placeholder="
                cur.role === 0
                  ? '用户'
                  : scope.row.role === 1
                    ? '管理员'
                    : '其他用户'
              "
              clearable
            >
              <el-option label="用户" :value="0" />
              <el-option label="管理员" :value="1" />
              <el-option label="其他用户" :value="2" />
            </el-select>
            <span slot="footer" class="dialog-footer">
              <el-button @click="dialogVisible = false">取 消</el-button>
              <el-button
                type="primary"
                @click="updateRole(cur)"
              >确 定</el-button>
            </span>
          </el-dialog>
          <!-- <el-button type="danger" size="small" @click="updateState(scope.row)"
            >更新状态</el-button
          > -->
        </template>
      </el-table-column>
      <!-- <el-table-column prop="level" label="头衔">
        <template slot-scope="scope">
          {{ scope.row.level === 1 ? "高级讲师" : "首席讲师" }}
        </template>
      </el-table-column>
      <el-table-column prop="gmtCreate" label="添加时间" />
      <el-table-column prop="sort" label="排序" />
      <el-table-column label="操作">
        <template #default="scope">
          <router-link :to="'/teacher/edit/' + scope.row.id">
            <el-button size="small" type="primary">编辑</el-button>
          </router-link>
          <el-button
            size="small"
            type="danger"
            @click="handleDeleteById(scope.row.id)"
            >删除</el-button
          >
        </template>
      </el-table-column> -->
    </el-table>
    <el-pagination
      :current-page="pageNo"
      :total="total"
      :page-size="size"
      layout="total, prev, pager, next, jumper"
      style="padding: 30px 0; text-align: center"
      @current-change="getList"
    />
  </div>
</template>
<script>
import user from '@/api/zhieasy/user'
import store from '@/store/modules/user'

export default {
  data() {
    return {
      list: null,
      pageNo: 1,
      size: 10,
      total: 0,
      userQuery: {},
      dialogVisible: false,
      changeRole: '',
      cur: {},
      user: {}
    }
  },
  created() {
    this.getList()
    this.user = store.state
  },
  methods: {
    resetData() {
      this.userQuery = {}
      this.getList()
    },
    setCur(cur) {
      this.cur = cur
      this.dialogVisible = true
    },
    getList(page = 1) {
      this.pageNo = page
      user
        .getUserListPage(this.pageNo, this.size, this.userQuery, 'role')
        .then((response) => {
          this.list = response.data.records
          this.total = response.data.total
        })
    },
    resetData() {
      this.userQuery = {}
      this.getList()
    },
    updateRole(newRole) {
      newRole.role = this.changeRole
      user.updateRole(newRole).then((response) => {
        this.dialogVisible = false
        this.getList(this.pageNo)
        this.$message({
          type: 'success',
          message: '状态更新成功'
        })
      })
    }
  }
}
</script>

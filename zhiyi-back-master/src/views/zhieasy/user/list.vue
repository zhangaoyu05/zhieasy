<template>
  <div class="app-container">
    <el-form :inline="true" class="demo-form-inline">
      <el-form-item label="姓名">
        <el-input v-model="userQuery.name" placeholder="姓名" />
      </el-form-item>
      <el-form-item label="性别">
        <el-select v-model="userQuery.sex" placeholder="性别">
          <el-option label="男" value="0" />
          <el-option label="女" value="1" />
        </el-select>
      </el-form-item>
      <el-form-item label="学院">
        <el-input v-model="userQuery.college" placeholder="学院" />
      </el-form-item>
      <el-form-item label="专业">
        <!-- <el-input v-model="userQuery.major" placeholder="专业" /> -->
        <el-select v-model="userQuery.major" placeholder="专业" clearable filterable allow-create>
          <el-option label="无" value="" />
          <el-option label="计算机类" value="计算机类" />
          <el-option label="计算机科学与技术" value="计算机科学与技术" />
          <el-option label="计算机科学与技术（卓越班）" value="计算机科学与技术（卓越班）" />
          <el-option label="软件工程" value="软件工程" />
          <el-option label="数据科学与大数据技术" value="数据科学与大数据技术" />
          <el-option label="网络空间安全" value="网络空间安全" />
          <el-option label="智能科学与技术" value="智能科学与技术" />
        </el-select>
      </el-form-item>
      <el-form-item label="学号">
        <el-input v-model="userQuery.sid" placeholder="学号" />
      </el-form-item>
      <el-form-item label="招新年份">
        <!-- <el-select v-model="userQuery.year" placeholder="年份" clearable filterable allow-create>
          <el-option label="2021" value="2021" />
          <el-option label="2022" value="2022" />
        </el-select> -->
        <el-select v-model="userQuery.year" placeholder="年份" clearable filterable allow-create>
          <el-option v-for="year in yearOptions" :key="year" :label="year.toString()" :value="year.toString()" />
        </el-select>
      </el-form-item>
      <el-form-item label="方向">
        <el-select v-model="userQuery.direction" placeholder="方向" clearable filterable allow-create>
          <el-option label="无" value="" />
          <el-option label="C++" value="C++" />
          <el-option label="测试开发" value="测试开发" />
          <el-option label="Java" value="Java" />
          <el-option label="Go" value="Go" />
          <el-option label="Python" value="Python" />
          <el-option label="前端" value="前端" />
          <el-option label="网络空间安全" value="网络空间安全" />
          <el-option label="大数据应用" value="大数据应用" />
          <el-option label="Android开发" value="Android开发" />
          <el-option label="游戏开发" value="游戏开发" />
        </el-select>
      </el-form-item>
      <el-form-item label="状态">
        <el-select v-model="userQuery.state" placeholder="状态" clearable>
          <el-option label="未操作" value="0" />
          <el-option label="投递简历" value="1" />
          <el-option label="笔试" value="2" />
          <el-option label="面试" value="3" />
          <el-option label="已录取" value="4" />
          <el-option label="未录取" value="5" />
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="getList()">查询</el-button>
        <el-button @click="resetData()">清空</el-button>
      </el-form-item>
      <el-form-item>
        <excel />
      </el-form-item>
    </el-form>
    <!-- :default-sort = "{prop:'sid',order:'descending'}" -->
    <el-table
      :data="list"
      :border="true"
      style="width: 100%"
    >
      <el-table-column align="center" width="70" label="序号" fixed="left">
        <template slot-scope="scope">
          {{ (pageNo - 1) * size + scope.$index + 1 }}
        </template>
      </el-table-column>
      <el-table-column align="center" prop="sid" label="学号" width="150" />
      <el-table-column align="center" prop="name" label="姓名" width="100" />
      <el-table-column align="center" prop="year" label="招新年份" width="100" />
      <el-table-column align="center" prop="sex" label="性别" width="50" />
      <el-table-column align="center" prop="college" label="学院" width="180" />
      <el-table-column align="center" prop="major" label="专业" width="150" />
      <el-table-column align="center" prop="clazz" label="班级" width="180" />
      <el-table-column align="center" prop="email" label="邮箱" width="180" />
      <el-table-column align="center" prop="qq" label="qq" width="130" />
      <el-table-column
        align="center"
        prop="wechat"
        label="wechat"
        width="180"
      />
      <el-table-column
        align="center"
        prop="direction"
        label="方向"
        width="150"
      />

      <el-table-column align="center" prop="state" label="状态" width="180">
        <template slot-scope="scope">
          {{
            scope.row.state === 0
              ? "未操作"
              : scope.row.state === 1
                ? "投递简历"
                : scope.row.state === 2
                  ? "笔试"
                  : scope.row.state === 3
                    ? "面试"
                    : scope.row.state === 4
                      ? "已录取"
                      : scope.row.state === 5
                        ? "未录取"
                        : ""
          }}
        </template>
      </el-table-column>
      <!--https://edu-guli-panda.oss-cn-hangzhou.aliyuncs.com/zhieasy/resume/202210993258%E7%A4%BA%E6%B3%A2%E5%99%A8%E5%AE%9E%E9%AA%8C.doc-->
      <el-table-column label="操作" width="220" align="center">
        <template #default="scope">
          <el-button
            type="prime"
            size="small"
            :disabled="scope.row.path == null || scope.row.path === ''"
            @click="open(scope.row.path)"
          >

            查看简历
          </el-button>
          <el-button
            type="primary"
            size="small"
            @click="setCur(scope.row)"
          >简历筛选</el-button>
          <el-dialog
            title="修改状态"
            :visible.sync="dialogVisible"
            width="30%"
            append-to-body
          >
            <el-select
              v-model="changeState"
              :placeholder="hash(cur.state)"
              clearable
            >
              <el-option label="未操作" value="0" />
              <el-option label="投递简历" value="1" />
              <el-option label="笔试" value="2" />
              <el-option label="面试" value="3" />
              <el-option label="已录取" value="4" />
              <el-option label="未录取" value="5" />
            </el-select>
            <span slot="footer" class="dialog-footer">
              <el-button @click="dialogVisible = false">取 消</el-button>
              <el-button
                type="primary"
                @click="updateState(cur)"
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
import excel from '../../excel/export-excel.vue'
import store from '@/store/modules/user'
import { Base64 } from 'js-base64'
export default {
  components: {
    excel
  },
  data() {
    return {
      list: null,
      pageNo: 1,
      size: 10,
      total: 0,
      userQuery: {
        year: (new Date().getFullYear() - 1).toString()
      },
      dialogVisible: false,
      changeState: '',
      cur: {},
      currentYear: new Date().getFullYear()
    }
  },
  computed: {
    yearOptions() {
      const years = []
      for (let year = 2021; year <= this.currentYear; year++) {
        years.push(year)
        // console.log(this.currentYear);
      }
      return years
    }
  },
  created() {
    // this.userQuery.year = this.currentYear
    this.getList()
  },
  methods: {
    hash(state) {
      switch (state) {
        case 0:
          return '未操作'
        case 1:
          return '投递简历'
        case 2:
          return '笔试'
        case 3:
          return '面试'
        case 4:
          return '已录取'
        case 5:
          return '未录取'
      }
    },
    open(src) {
      console.log(src)
      var url =
        'http://81.70.132.157:8012/onlinePreview?url='
      src = encodeURIComponent(Base64.encode(src))
      window.open(url + src, '_blank')
    },
    getList(page = 1) {
      this.pageNo = page
      if (this.userQuery.state === '') {
        this.userQuery.state = null
      }
      // if (this.userQuery.direction === "") {
      //   this.userQuery.direction = null;
      // }
      store.state.query = this.userQuery
      user
        .getUserListPage(this.pageNo, this.size, this.userQuery, 'user')
        .then((response) => {
          this.list = response.data.records
          this.total = response.data.total
        })
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
    }
  }
}
</script>

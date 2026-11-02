<template>
  <!-- <div class="app-container"> -->
  <div>
    <FilenameOption v-model="filename" />
    <!-- <AutoWidthOption v-model="autoWidth" />
      <BookTypeOption v-model="bookType" /> -->
    <el-button
      :loading="downloadLoading"
      style="margin: 0 0 20px 20px"
      type="primary"
      icon="el-icon-document"
      @click="handleDownload"
    >
      导出
    </el-button>
    <!-- <a
        href="https://panjiachen.github.io/vue-element-admin-site/feature/component/excel.html"
        target="_blank"
        style="margin-left: 15px"
      >
        <el-tag type="info">Documentation</el-tag>
      </a> -->
  </div>

  <!-- <el-table
      v-loading="listLoading"
      :data="list"
      element-loading-text="Loading..."
      border
      fit
      highlight-current-row
    >
      <el-table-column align="center" label="学号" width="95">
        <template slot-scope="scope">
          {{ scope.row.sid }}
        </template>
      </el-table-column> -->
  <!-- <el-table-column label="Title">
        <template slot-scope="scope">
          {{ scope.row.title }}
        </template>
      </el-table-column> -->
  <!-- <el-table-column label="姓名" align="center">
        <template slot-scope="scope">
          <el-tag>{{ scope.row.name }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="性别" align="center">
        <template slot-scope="scope">
          {{ scope.row.sex }}
        </template>
      </el-table-column>
      <el-table-column label="学院" align="center">
        <template slot-scope="scope">
          {{ scope.row.college }}
        </template>
      </el-table-column>
      <el-table-column label="方向" align="center">
        <template slot-scope="scope">
          {{ scope.row.direction }}
        </template>
      </el-table-column> -->
  <!-- <el-table-column align="center" label="Date" width="220">
        <template slot-scope="scope">
          <i class="el-icon-time" />
          <span>{{
            scope.row.timestamp | parseTime("{y}-{m}-{d} {h}:{i}")
          }}</span>
        </template>
      </el-table-column> -->
  <!-- </el-table> -->
  <!-- </div> -->
</template>

<script>
import { fetchList } from "@/api/article";
import { parseTime } from "@/utils";
// options components
import FilenameOption from "./components/FilenameOption";
import AutoWidthOption from "./components/AutoWidthOption";
import BookTypeOption from "./components/BookTypeOption";
import store from "@/store/modules/user";

export default {
  name: "ExportExcel",
  components: { FilenameOption, AutoWidthOption, BookTypeOption },
  data() {
    return {
      list: null,
      listLoading: true,
      downloadLoading: false,
      filename: "招新名单",
      autoWidth: true,
      bookType: "xlsx",
    };
  },
  created() {
    this.fetchData();
  },
  methods: {
    fetchData() {
      this.listLoading = true;
      fetchList(store.state.query).then((response) => {
        this.list = response.data;
        this.listLoading = false;
      });
    },
    handleDownload() {
      this.fetchData();
      this.downloadLoading = true;
      fetchList(store.state.query).then((response) => {
        this.list = response.data;
        this.listLoading = false;
        import("@/vendor/Export2Excel").then((excel) => {
          const tHeader = ["学号", "姓名", "性别", "学院", "方向"];
          const filterVal = ["sid", "name", "sex", "college", "direction"];
          const list = this.list;
          const data = this.formatJson(filterVal, list);
          excel.export_json_to_excel({
            header: tHeader,
            data,
            filename: this.filename,
            autoWidth: this.autoWidth,
            bookType: this.bookType,
          });
          this.downloadLoading = false;
        });
      });
    },
    formatJson(filterVal, jsonData) {
      return jsonData.map((v) =>
        filterVal.map((j) => {
          if (j === "timestamp") {
            return parseTime(v[j]);
          } else {
            return v[j];
          }
        })
      );
    },
  },
};
</script>

<style>
.radio-label {
  font-size: 14px;
  color: #606266;
  line-height: 40px;
  padding: 0 12px 0 30px;
}
</style>

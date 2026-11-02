<template>
  <div class="dashboard-editor-container">
   
    <panel-group
      :totalUser="totalUser"
      :postedUser="postedUser"
      :faceUser="faceUser"
      :passedUser="passedUser"
      @handleSetLineChartData="handleSetLineChartData"
    />

    <!-- <el-row style="background: #fff; padding: 16px 16px 0; margin-bottom: 32px">
      <line-chart :chart-data="lineChartData" />
    </el-row> -->

    <el-row :gutter="32">
      <!-- <el-col :xs="24" :sm="24" :lg="8">
        <div class="chart-wrapper">
          <raddar-chart />
        </div>
      </el-col> -->
      <el-col :xs="24" :sm="24" :lg="8" v-if="start">
        <div class="chart-wrapper">
          <pie-chart
            :totalUser="totalUser"
            :postedUser="postedUser"
            :faceUser="faceUser"
            :passedUser="passedUser"
          />
        </div>
      </el-col>
      <el-col :xs="24" :sm="24" :lg="8" v-if="start">
        <div class="chart-wrapper">
          <bar-chart
            :totalUser="totalUser"
            :postedUser="postedUser"
            :faceUser="faceUser"
            :passedUser="passedUser"
          />
        </div>
      </el-col>
    </el-row>

    <!-- <el-row :gutter="8">
      <el-col
        :xs="{ span: 24 }"
        :sm="{ span: 24 }"
        :md="{ span: 24 }"
        :lg="{ span: 12 }"
        :xl="{ span: 12 }"
        style="padding-right: 8px; margin-bottom: 30px"
      >
        <transaction-table />
      </el-col>
      <el-col
        :xs="{ span: 24 }"
        :sm="{ span: 12 }"
        :md="{ span: 12 }"
        :lg="{ span: 6 }"
        :xl="{ span: 6 }"
        style="margin-bottom: 30px"
      >
        <todo-list />
      </el-col>
      <el-col
        :xs="{ span: 24 }"
        :sm="{ span: 12 }"
        :md="{ span: 12 }"
        :lg="{ span: 6 }"
        :xl="{ span: 6 }"
        style="margin-bottom: 30px"
      >
        <box-card />
      </el-col>
    </el-row> -->
  </div>
</template>

<script>

import PanelGroup from "./components/PanelGroup";
import LineChart from "./components/LineChart";
import RaddarChart from "./components/RaddarChart";
import PieChart from "./components/PieChart";
import BarChart from "./components/BarChart";
import TransactionTable from "./components/TransactionTable";
import TodoList from "./components/TodoList";
import BoxCard from "./components/BoxCard";
import user from "@/api/zhieasy/user";

const lineChartData = {
  // newVisitis: {
  //   expectedData: [100, 120, 161, 134, 105, 160, 165],
  //   actualData: [120, 82, 91, 154, 162, 140, 145],
  // },
  // messages: {
  //   expectedData: [200, 192, 120, 144, 160, 130, 140],
  //   actualData: [180, 160, 151, 106, 145, 150, 130],
  // },
  // purchases: {
  //   expectedData: [80, 100, 121, 104, 105, 90, 100],
  //   actualData: [120, 90, 100, 138, 142, 130, 130],
  // },
  // shoppings: {
  //   expectedData: [130, 140, 141, 142, 145, 150, 160],
  //   actualData: [120, 82, 91, 154, 162, 140, 130],
  // },
  newVisitis: {
    expectedData: [100, 120, 161, 134, 105, 160, 165],
    actualData: [120, 82, 91, 154, 162, 140, 145],
  },
};

export default {
  name: "DashboardAdmin",
  components: {

    PanelGroup,
    LineChart,
    RaddarChart,
    PieChart,
    BarChart,
    TransactionTable,
    TodoList,
    BoxCard,
  },
  data() {
    return {
      lineChartData: lineChartData.newVisitis,
      totalUser: 0,
      postedUser: 0,
      faceUser: 0,
      passedUser: 0,
      start: false,
    };
  },
  created() {
    this.init();
  },
  methods: {
    handleSetLineChartData(type) {
      this.lineChartData = lineChartData["newVisitis"];
    },
    init() {
      user.count().then((response) => {
        this.totalUser = response.data.totalUser;
        this.postedUser = response.data.postedUser;
        this.faceUser = response.data.faceUser;
        this.passedUser = response.data.passedUser;
        this.start = true;
      });
    },
  },
};
</script>

<style lang="scss" scoped>
.dashboard-editor-container {
  padding: 32px;
  background-color: rgb(240, 242, 245);
  position: relative;

  .github-corner {
    position: absolute;
    top: 0px;
    border: 0;
    right: 0;
  }

  .chart-wrapper {
    background: #fff;
    padding: 16px 16px 0;
    margin-bottom: 32px;
  }
}

@media (max-width: 1024px) {
  .chart-wrapper {
    padding: 8px;
  }
}
</style>

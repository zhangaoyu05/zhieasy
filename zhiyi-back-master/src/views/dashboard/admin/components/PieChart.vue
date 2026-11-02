<template>
  <div :class="className" :style="{ height: height, width: width }" />
</template>

<script>
import echarts from "echarts";
require("echarts/theme/macarons"); // echarts theme
import resize from "./mixins/resize";

export default {
  mixins: [resize],
  props: {
    className: {
      type: String,
      default: "chart",
    },
    width: {
      type: String,
      default: "100%",
    },
    height: {
      type: String,
      default: "300px",
    },
    totalUser: {
      default: 0,
    },
    postedUser: {
      default: 0,
    },
    faceUser: {
      default: 0,
    },
    passedUser: {
      default: 0,
    },
  },
  data() {
    return {
      chart: null,
    };
  },
  // created() {
  //   this.initChart();
  // },
  mounted() {
    this.$nextTick(() => {
      this.initChart();
    });
  },

  beforeDestroy() {
    if (!this.chart) {
      return;
    }
    this.chart.dispose();
    this.chart = null;
  },
  methods: {
    initChart() {
      this.chart = echarts.init(this.$el, "macarons");
      // console.log(this.postedUser);
      this.chart.setOption({
        tooltip: {
          trigger: "item",
          formatter: "{a} <br/>{b} : {c} ({d}%)",
        },
        legend: {
          left: "center",
          bottom: "10",
          data: ["递交简历", "面试", "通过", "其他"],
        },
        series: [
          {
            name: "WEEKLY WRITE ARTICLES",
            type: "pie",
            roseType: "radius",
            radius: [15, 75],
            center: ["50%", "38%"],
            data: [
              { value: this.postedUser, name: "递交简历" },
              { value: this.faceUser, name: "面试" },
              { value: this.passedUser, name: "通过" },
              {
                value:
                  this.totalUser -
                  this.passedUser -
                  this.faceUser -
                  this.postedUser,
                name: "其他",
              },
              // { value: 100, name: "Gold" },
              // { value: 59, name: "Forecasts" },
            ],
            animationEasing: "cubicInOut",
            animationDuration: 2600,
          },
        ],
      });
    },
  },
};
</script>

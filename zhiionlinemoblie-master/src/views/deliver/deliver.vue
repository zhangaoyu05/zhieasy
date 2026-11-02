<template>
  <div class="container">
    <div class="drop-img" />
    <div class="main">
      <div class="title">应聘进度</div>
      <div class="info_box_content">
        <div class="info_box">
          <div class="introduce_box">
            <div class="introduce_item">
              <span class="introduce_name">流程进度：</span>
              <div class="step_box">
                <div class="step_list">
                  <div :style="userInfo.state > 0 ? 'background-color: #0052d9':''" class="step_yuan one" />
                  <div class="step_title one">投递简历</div>
                  <div :style="userInfo.state > 1 ? 'background-color: #0052d9':''" class="xian two" />
                </div>
                <div class="step_list">
                  <div :style="userInfo.state > 1 ? 'background-color: #0052d9':''" class="step_yuan two" />
                  <div class="step_title two">笔试</div>
                  <div :style="userInfo.state > 2 ? 'background-color: #0052d9':''" class="xian three" />
                </div>
                <div class="step_list">
                  <div :style="userInfo.state > 2 ? 'background-color: #0052d9':''" class="step_yuan three" />
                  <div class="step_title three">面试</div>
                  <div :style="userInfo.state > 3 ? 'background-color: #0052d9':''" class="xian four" />
                </div>
                <div class="step_list step_last">
                  <div :style="userInfo.state > 3 ? 'background-color: #0052d9':''" class="step_yuan four" />
                  <div class="step_title four">录取结果</div>
                  <div :style="{'display':(userInfo.state > 3 ? 'block':'none')}" class="end" />

                </div>
                <div :style="{'display':(userInfo.state === 5 ? 'block':'none')}" class="last_step_list">
                  <div class="five" />
                  <div class="step_title">已录取</div>
                </div>
                <div :style="{'display':(userInfo.state === 5 ? 'block':'none')}" class="last_step_list">
                  <div class="five" />
                  <div class="step_title">未录取</div>
                </div>
              </div>

            </div>
          </div>
          <div class="step_title" style="margin-left">更多信息请前往PC端官网查看或等待邮箱通知</div>
        </div>

      </div>
    </div>
    <Footer
      style="
    margin-top: 2.253333rem;"
    />
  </div>
</template>

<script>
import Footer from '@/components/Footer/index.vue'
import { mapGetters } from 'vuex'
export default {
  name: 'MyDeliver',
  components: {
    Footer
  },
  data() {
    return {
    }
  },
  computed: {
    ...mapGetters([
      'userInfo'
    ])

  }
}
</script>

<style scoped>
/* main */
.container {
    display: flex;
    flex-direction: column;
    background-color: #f5f5f5;
}

.drop-img{
    display: block;
    width: 100%;
    height: 7.55rem;
    background-image: url("https://images.zayy.online/images/ImdeliverBanner.png");
    background-size: cover;
    background-position: center center
}
.main {
    position: relative;
}

.main .title {
    color: rgba(0, 0, 0, 0.8);
    font-size: 0.4266666666666667rem;
    font-weight: 500;
    line-height: 0.64rem;
    margin: 1.85rem 0.14rem 0.21333333333333335rem;
    padding: 0 0.4266666666666667rem;
}

.info_box_content {
    padding: 0 0.4266666666666667rem;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
}

.info_box {
    position: relative;
    width: 100%;
    background-color: #ffffff;
    border-radius: .32rem;
    padding: 0.37333333333333335rem;
    box-sizing: border-box;
}

.introduce_box {
    margin-top: 0.4266666666666667rem;
    padding: 0 0.4266666666666667rem;
        height: 7.45161rem;
    border-radius: 20px;
    /* box-shadow: 0 5px 15px -5px rgba(0,0,0,.5) ; */
}

.introduce_item {
    font-size: 0;
    color: rgba(0, 0, 0, 0.4);
    font-weight: 200;
    line-height: 1.586667rem;

}

.introduce_name {
    font-size: 0.37333333333333335rem;
}

.step_box {
    vertical-align: top;
    margin-top: 1.4516rem;
    display: inline-block;
    margin-left: 20px;
}

.step_list, .last_step_list {
    position: relative;
    padding-bottom: .693333rem;
    overflow: hidden;
    line-height: 0.37333333333333335rem;
}

.step_yuan {
    width: 0.4266666666666667rem;
    height: 0.4266666666666667rem;
    background: #d8e9ff;
    border-radius: 50%;
    display: inline-block;
    vertical-align: middle;
}

.step_title {
    color: rgba(0, 0, 0, 0.8);
    font-size: 0.37333333333333335rem;
    font-weight: 400;
    line-height: 0.37333333333333335rem;
    display: inline-block;
    vertical-align: middle;
    margin-left: 0.413333rem;
    background-color: #fff !important;
}

.xian {
    height: .533333rem;
    width: 0.02666666666666667rem;
    border-left: 0.02666666666666667rem dashed #D4E3FC;
    position: absolute;
    left: .213333rem;
    top: .48rem;
    box-sizing: border-box;
}
.end{
      height: .533333rem;
    width: 0.02666666666666667rem;
    border-left: 0.02666666666666667rem dashed #0052D9;
    position: absolute;
    left: .213333rem;
    top: .48rem;
    box-sizing: border-box;
}

.jquery_color {
    background: #0052D9;
    color: #0052D9;
}

.userlist_header_btn_active {
    color: #0052D9 !important;
}

.five{
    width: 0.4266666666666667rem;
    height: 0.4266666666666667rem;
    background: #0052d9;
    border-radius: 50%;
    display: inline-block;
    vertical-align: middle;
}

</style>

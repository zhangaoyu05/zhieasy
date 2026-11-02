<template>
  <div class="footer">
    <div class="main">
      <div class="contact">
        <div class="contact_text">致易工作室</div>
      </div>
      <div class="footer_content">
        <div class="content_list">
          <div class="list_title">联系方式</div>
          <a class="list_item">QQ交流群：1059751534</a>
          <a class="list_item">邮箱：zhiyiOnline@163.com</a>
        </div>
        <div class="content_right">
          <h1 class="footer_logo" />
          <h1 class="footer_logo" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Footer'
}
</script>

<style lang="css">
.footer {
  padding: 0 6.4%;
}

.footer {
  margin-top: 0.8533333333333334rem;
  padding: 0 5.5% 0.6666666666666666rem;
  background: #f0f0f0;
}

.footer .main {
  max-width: 34.13333333333333rem;
  margin: 0 auto;
}

.footer .contact {
  padding: 0.64rem 0;
}

.footer .contact {
  font-size: 0;
  padding: 0.5333333333333333rem 0 0 0;
  border-bottom: 1px solid #d8d8d8;
  box-sizing: border-box;
}

.footer .contact .contact_text {
  margin-bottom: 0.14rem;
  display: block;
}

.footer .contact .contact_text {
  color: #323232;
  font-size: 0.4266666666666667rem;
  line-height: 0.64rem;
  margin-right: 0.88rem;
  vertical-align: top;
  display: inline-block;
}

.footer .footer_content {
  padding: 0;
  padding-top: 0.64rem;
  border-bottom: none;
}

.footer .footer_content {
  font-size: 0;
  padding: 0.64rem 0 0.21333333333333335rem;
  box-sizing: border-box;
}

.footer .footer_content .content_list {
  position: relative;
  padding-bottom: 0.4266666666666667rem;
  margin-right: 2.37%;
}

.footer .footer_content .content_list {
  float: left;
}

.content_right {
  clear: both;
}

.footer .footer_content .content_list .list_title {
  margin-bottom: 0.8533333333333334rem;
}

.footer .footer_content .content_list .list_title {
  font-size: 0.4266666666666667rem;
  margin-bottom: 0.64rem;
  color: #323232;
}

.footer .footer_content .content_list:nth-child(2) {
  margin-right: 0;
}

.footer .footer_content .content_list .list_item {
  color: #7f7f7f;
  font-size: 0.37333333333333335rem;
  margin-bottom: 0.4266666666666667rem;
  text-decoration: none;
  display: block;
}

.footer .footer_content .content_right {
  float: initial;
  padding: 0.8533333333333334rem 0;
  border-top: 1px solid #d8d8d8;
}

.footer .footer_content .content_right {
  text-align: right;
}

.footer .footer_content .content_right .footer_logo:nth-child(1) {
  background-image: url("https://images.zayy.online/images/CSC.png");
}

.footer .footer_content .content_right .footer_logo:nth-child(2) {
  background-image: url("https://images.zayy.online/images/logoblack.png");
}

.footer .footer_content .content_right .footer_logo {
  width: 4.053333rem;
  height: 0.933333rem;
  margin: 0 auto;
  background-size: 100%;
  background-repeat: no-repeat;
}
</style>

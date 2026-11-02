<template>
  <div class="box home">
    <div class="content">
      <div class="main">
        <div class="dynamic">
          <div class="content_title">加入致易，一起成长</div>
          <div class="account_list">
            <div class="account_item">
              <div class="account_img" style="background-image: url(https://images.yzklianai.com/images/six1.png);" />
            </div>
            <div class="account_item">
              <div class="account_img" style="background-image: url(https://images.yzklianai.com/images/six2.png);" />
            </div>
            <div class="account_item">
              <div class="account_img" style="background-image: url(https://images.yzklianai.com/images/six3.png);" />
            </div>
            <div class="account_item">
              <div class="account_img" style="background-image: url(https://images.yzklianai.com/images/six4.png);" />
            </div>
            <div class="account_item">
              <div class="account_img" style="background-image: url(https://images.yzklianai.com/images/six5.png);" />
            </div>
            <div class="account_item">
              <div class="account_img" style="background-image: url(https://images.yzklianai.com/images/six6.png);" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'TabSixbox'
}
</script>

<style lang="css" scoped>
.home .content {
  position: relative;
  z-index: 99;
}

.box .content {
  padding: 0 0.4266666666666667rem;
  background: #f5f5f5;
  overflow: hidden;
}

.home .content .main {
  padding-top: 0;
}

.content .main {
  padding: 1.4933333333333334rem 0 3.2rem;
  box-sizing: border-box;
  margin: 0 auto;
  padding-bottom: 0.493333rem;
}

.home .content .dynamic .account_list {
  width: 100%;
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: space-between;
  margin-top: 20px;
}

.home .content .dynamic .account_list .account_item:first-child {
  margin-left: 0;
}

.content_title{
    font-size: 0.533333rem;
}

.home .content .dynamic .account_list .account_item {
  position: relative;
  border-radius: 0.426667rem;
  background-color: #ffffff;
  box-sizing: border-box;
  cursor: pointer;
  transition: 0.35s;
  flex: 0 0 30.9%;
  margin-left: 0;
  margin-top: 0.32rem;
  padding: 8.76% 0;
  box-shadow: 0px 0px 0.4266666666666667rem 0px rgb(0 0 0 / 8%);
}

.home .content .dynamic .account_list .account_item .account_img {
  border-radius: 0.533333rem;
  opacity: 1;
  background-size: cover;
  margin: 0 auto;
  transition: 0.35s;
  width: 37.7%;
  height: auto;
  padding-bottom: 37.7%;
}
</style>

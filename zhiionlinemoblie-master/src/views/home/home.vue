<template>
  <div>
    <tabTop />
    <tabRecruit />
    <tabNotice />
    <tabWhyin />
    <tabTalk />
    <tabSixbox />
    <Footer />
  </div>
</template>

<script>
import tabTop from '@/views/home/tabTop'

import Footer from '@/components/Footer/index.vue'
import tabRecruit from '@/views/home/tabRecruit'
import tabNotice from '@/views/home/tabNotice'
import tabWhyin from '@/views/home/tabWhyin'
import tabTalk from '@/views/home/tabTalk'
import tabSixbox from '@/views/home/tabSixbox'
export default {
  name: 'MyHome',
  components: {
    tabTop, tabRecruit, tabNotice, tabWhyin, tabTalk, tabSixbox, Footer
  }
}
</script>

<style lang="css" scoped>
.footer {
  margin-top: 0px;
  padding: 0 5.5% 0.6666666666666666rem;
  background: #f0f0f0;
}
</style>

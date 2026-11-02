module.exports = ({ file }) => {
  // postcss是干什么的? 它是转换css时使用一些规则, 它是一个文件一个文件转换的
  // 识别是否在转换vant, 转换的路径上一定有node_modules/vant
  // 通过下面这个会打印出路径
  // console.log(e.file)
  // 如果在转换过程中进去了vant里面, 那么就给基准值为37.5, 也就是html的字体大小
  // 如果没有, 也就是我们自己写的css文件, 是不经过vant里面去找的, 所以就给我们给定的值
  const path = require('path')

  const base = file.includes(path.join('node_modules', 'vant')) ? 37.5 : 124
  return {
    plugins: {
      'postcss-pxtorem': {
        rootValue: base, // 基准值
        // 如果ui给我们设计稿是1240px, vant它的设计稿是375px, 那么就要做一个判断了
        // 如果解析的文件识别是vant的ui库就用37.5, 如果不是就设置124
        // 其实就看它是否进去node_modules里面的vant就可以了, 自己写的是不会去那个文件夹里面的
        propList: ['*'] // 哪些css需要转换
      }
    }
  }
}

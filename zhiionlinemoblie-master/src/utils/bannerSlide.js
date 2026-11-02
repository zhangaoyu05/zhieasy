export function bannerSlide() {
  var startX, startY

  document.addEventListener('touchstart', function(e) {
    startX = e.targetTouches[0].pageX
    startY = e.targetTouches[0].pageY
  })

  document.addEventListener('touchmove', function(e) {
    var moveX = e.targetTouches[0].pageX
    var moveY = e.targetTouches[0].pageY

    if (Math.abs(moveX - startX) > Math.abs(moveY - startY)) {
      e.preventDefault()
    }
  }, { passive: false })
}

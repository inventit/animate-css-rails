$.fn.extend
  animateCss: (animationName, callback) ->
    animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend'
    this.addClass("animated #{animationName}").one animationEnd, ->
      $(this).removeClass "animated #{animationName}"
      callback() if typeof callback is "function"

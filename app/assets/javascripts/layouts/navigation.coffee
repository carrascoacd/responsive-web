$ ->
  NAV_BAR_OPEN_WIDTH = 250
  NAV_BAR_CLOSED_WIDTH = 0
  navigationBar = $('#navigationBar')
  navigationButton = $('#navigationButton')
  initialNavButtonOffset = navigationButton.css('margin-right')

  navigationBarClosed = ->
    return navigationBar.width() == NAV_BAR_CLOSED_WIDTH

  toggleNav = ->
    if navigationBarClosed()
      navigationBar.width(NAV_BAR_OPEN_WIDTH)
      offsetWidth = NAV_BAR_OPEN_WIDTH - navigationButton.width()
      navigationButton.css('margin-right', "#{offsetWidth.toString()}px")
    else
      navigationBar.width(NAV_BAR_CLOSED_WIDTH)
      navigationButton.css('margin-right', initialNavButtonOffset)

  navigationButton.click ->
    toggleNav()

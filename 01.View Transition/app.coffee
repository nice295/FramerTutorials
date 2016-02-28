device = new Framer.DeviceView();
device.setupContext();
device.deviceType = "samsung-galaxy-note-5-gold";
device.contentScale = 1;

myWidth = (width) ->
    return width * Screen.width / 360

myHeight = (height) ->
    return height * Screen.height / 640
    
# Set background
bg = new BackgroundLayer 
	backgroundColor: "white"

main = new Layer
    width: Screen.width
    height: Screen.height
    image:"images/View1.png"

detail = new Layer
    x: myWidth(50)
    width: Screen.width
    height: Screen.height
    image:"images/View2.png"

animationDetailShow = new Animation
    layer: detail
    properties:
        x: 0
    time: 0.5
    curve: "ease-in-out"

animationDetailHide = new Animation
    layer: detail
    properties:
        x: myHeight(50)
    time: 0.5
    curve: "ease-in-out"

showMain = ->
    main.visible = true
    detail.visible = false
    
# Set events
main.on Events.Click, (event, layer) ->
    main.visible = false
    detail.visible = true
    animationDetailShow.start()

detail.on Events.Click, (event, layer) ->
    animationDetailHide.start()
    animationA.on(Events.AnimationEnd, showMain())   

    
# Initial
main.visible = true
detail.visible = false

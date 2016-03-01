dp = 4

device = new Framer.DeviceView();
device.setupContext();
device.deviceType = "samsung-galaxy-note-5-gold";
device.contentScale = 1;

# Set background
bg = new BackgroundLayer 
	backgroundColor: "white"

main = new Layer
    x: 0
    width: Screen.width
    height: Screen.height
    image:"images/View1.png"

detail = new Layer
    x: 360*dp
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
        x: 360*dp
    time: 0.5
    curve: "ease-in-out"
    
# Set events
main.on Events.Click, (event, layer) ->
    animationDetailShow.start()

detail.on Events.Click, (event, layer) ->
    animationDetailHide.start()
    
# Initial


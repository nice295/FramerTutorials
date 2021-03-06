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
    x: 0
    width: Screen.width
    height: Screen.height
    image:"images/View2.png"

# Set events
main.on Events.Click, (event, layer) ->
    detail.bringToFront()

detail.on Events.Click, (event, layer) ->
    main.bringToFront()
    
# Initial
main.bringToFront()

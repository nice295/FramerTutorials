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
    width: Screen.width
    height: Screen.height
    image:"images/View2.png"

# Set events
main.on Events.Click, (event, layer) ->
    print "Clicked main"
    main.visible = false
    detail.visible = true

detail.on Events.Click, (event, layer) ->
    print "Clicked detail"
    main.visible = true
    detail.visible = false

# Initial
main.visible = true
detail.visible = false

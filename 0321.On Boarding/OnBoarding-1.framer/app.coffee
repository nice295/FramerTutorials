# Import file "023" (sizes and positions are scaled 1:2)
sketch3 = Framer.Importer.load("imported/023@2x")
Utils.globalLayers(sketch3)

# Create PageComponent
page = new PageComponent
	width: Screen.width
	height: Screen.height
	scrollVertical: false

page.center()

intro1.parent = page.content
intro2.parent = page.content

indicator1.parent = page
indicator2.parent = page
indicator2.visible = false

clouds.states.add
	off:
		opacity: 0.0
		scale: 0.8
	on:
		opacity: 1.0
		scale: 1.0
clouds.states.animationOptions =
    curve: "spring(100, 10, 0)"		
clouds.states.switch("on")

music.states.add
	off:
		opacity: 0.0
		scale: 0.0
	on:
		opacity: 1.0
		scale: 1.0
music.states.animationOptions =
    curve: "spring(100, 10, 0)"		
music.states.switch("off")

page.on "change:currentPage", ->
    if page.currentPage is intro1
    	indicator1.visible = true
    	indicator2.visible = false
    	clouds.states.switch("on")
    	music.states.switch("off")
    else
    	indicator1.visible = false
    	indicator2.visible = true
    	clouds.states.switch("off")
    	music.states.switch("on")

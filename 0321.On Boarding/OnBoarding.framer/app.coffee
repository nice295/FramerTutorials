# Import file "023" (sizes and positions are scaled 1:2)
sketch3 = Framer.Importer.load("imported/023@2x")

# Create PageComponent
page = new PageComponent
	width: Screen.width
	height: Screen.height
	scrollVertical: false

page.center()

sketch3.intro1.parent = page.content
sketch3.intro2.parent = page.content

sketch3.indicator1.parent = page
sketch3.indicator2.parent = page
sketch3.indicator2.visible = false

sketch3.clouds.states.add
	off:
		opacity: 0.0
		scale: 0.8
	on:
		opacity: 1.0
		scale: 1.0
sketch3.clouds.states.animationOptions =
    curve: "spring(100, 10, 0)"		
sketch3.clouds.states.switch("on")

sketch3.music.states.add
	off:
		opacity: 0.0
		scale: 0.0
	on:
		opacity: 1.0
		scale: 1.0
sketch3.music.states.animationOptions =
    curve: "spring(100, 10, 0)"		
sketch3.music.states.switch("off")

page.on "change:currentPage", ->
    if page.currentPage is sketch3.intro1
    	sketch3.indicator1.visible = true
    	sketch3.indicator2.visible = false
    	sketch3.clouds.states.switch("on")
    	sketch3.music.states.switch("off")
    else
    	sketch3.indicator1.visible = false
    	sketch3.indicator2.visible = true
    	sketch3.clouds.states.switch("off")
    	sketch3.music.states.switch("on")

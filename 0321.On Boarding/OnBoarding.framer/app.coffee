# Import file "023" (sizes and positions are scaled 1:2)
sketch3 = Framer.Importer.load("imported/023@2x")

# Create PageComponent
page = new PageComponent
	width: Screen.width, height: Screen.height
	scrollVertical: false

page.center()

sketch3.intro1.parent = page.content
sketch3.intro2.parent = page.content

sketch3.indicator1.visible = false
sketch3.indicator2.visible = false
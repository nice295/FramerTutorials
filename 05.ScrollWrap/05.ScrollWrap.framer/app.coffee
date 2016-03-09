# Import file "ScrollWrap" (sizes and positions are scaled 1:4)
sketch = Framer.Importer.load("imported/ScrollWrap@4x")

background = new BackgroundLayer
	backgroundColor: "white"
	
scroll = ScrollComponent.wrap(sketch.list) 
scroll.scrollHorizontal = false
scroll.updateContent()
scroll.parent = sketch.screen
sketch.bottom.bringToFront()

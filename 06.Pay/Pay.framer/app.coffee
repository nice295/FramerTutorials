# Import file "Pay" (sizes and positions are scaled 1:4)
sketch = Framer.Importer.load("imported/Pay@4x")

Framer.Defaults.Animation = 
    curve: "ease-in-out"
    time: 0.5
    
background = new BackgroundLayer
	backgroundColor: "white"

sketch.card.draggable = true
sketch.card.draggable.horizontal = false
sketch.card.draggable.constraints =
	y: 1300
	
sketch.card.onDragEnd ->
	sketch.main.states.switch("on")
	sketch.simple.states.switch("on")
	sketch.card.states.switch("on")

sketch.card.onDrag ->
	#print sketch.card.y
	
sketch.simple.draggable = true
sketch.simple.draggable.horizontal = false
sketch.simple.draggable.constraints =
	y: 200 * 4
	height: 640 * 4 - 140 * 4
sketch.simple.onDragEnd ->
	sketch.main.states.switch("hide")
	sketch.simple.states.switch("hide")
	sketch.card.states.switch("hide")
		
sketch.mainblur.states.add
	on:
		visible: true
	hide:
		visible: false
sketch.mainblur.states.switch("hide", time: 0)

sketch.main.states.add
	on:
		y:0
	hide:
		y: Screen.height
sketch.main.states.switch("hide", time: 0)

sketch.simple.states.add
	on:
		y: 140 * 4
		draggable: true
	hide:
		y: Screen.height
sketch.simple.states.switch("hide", time: 0)

sketch.card.states.add
	on:
		y: 300 * 4
		visible: false
	hide:
		y: 620 * 4
		visible: true
sketch.card.states.switch("hide", time: 0)

sketch.card_real.states.add
	on:
		visible: true
	hide:
		visible: false
sketch.card.states.switch("hide", time: 0)

			
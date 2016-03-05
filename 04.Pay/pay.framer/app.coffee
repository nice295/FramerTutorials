#
Framer.Defaults.Animation = 
    curve: "ease-in-out"
    time: 0.3

# Device
Framer.Device.deviceType = "samsung-galaxy-note-5-gold"

# Import file "Pay"
sketch = Framer.Importer.load("imported/Pay@1x")

sketch.simple.draggable.enabled = true
sketch.simple.draggable.horizontal = false

sketch.simple.states.add
	panel:
		y: 2560 - 180 / 2
	down:
        y: 2560 - 180   
    up:
        y: 548

sketch.main.states.add
    down:
        y: 2560
    up:
        y: 0

# Initial
sketch.home.visible = true
sketch.simple.visible = true
sketch.main.visible = true
sketch.simple.y = 2560 - 180 / 2
sketch.main.y = 2560
sketch.main.states.switch("down")
sketch.simple.states.switch("panel")
                
# Animation
        
# Events
sketch.simple.on Events.DragEnd, (event, draggable, layer) ->
	if sketch.simple.draggable.offset.y < -400 #up
		#sketch.simple.states.switch("up", time: 0.4, curve: "ease-in-out")
		sketch.simple.states.switch("up")
		if sketch.main.states.current == "down"
			sketch.main.states.switch("up", time: 0.4, curve: "ease-in-out")
	else if sketch.simple.draggable.offset.y > 400 #down
		#print "down"
		sketch.simple.states.switch("down", time: 0.4, curve: "ease-in-out")
	else
		#print "nothing"
		sketch.simple.states.switch(sketch.simple.states.current, time: 0.4, curve: "ease-in-out")
    
sketch.home_icon.onClick ->
	sketch.simple.states.switch("down", delay: 0.5)
	sketch.main.states.switch("up", time: 0.0)

sketch.simple_handle.onClick ->
	#sketch.simple.states.switch("down", time: 0.4, curve: "ease-in-out")
	sketch.simple.states.switch("down")
	#sketch.main.states.switch("down", delay: 0.4, time: 0.4, curve: "ease-in-out")
	sketch.main.states.switch("down", delay: 0.3)

sketch.home_handle.onClick ->
	#sketch.simple.visible = true
	sketch.simple.states.switch("up", delay: 0.4, time: 0.4, curve: "ease-in-out")
	sketch.main.visible = true
	sketch.main.states.switch("up", time: 0.4, curve: "ease-in-out")
	
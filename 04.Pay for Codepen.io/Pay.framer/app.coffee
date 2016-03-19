Framer.Defaults.Animation =
    curve: "ease-in-out"
    time: 0.5

background = new Layer
	width: Screen.width
	height: Screen.height
	backgroundColor: "white"
	image: "http://www.androidcentral.com/sites/androidcentral.com/files/postimages/108579/2013-05-08_13.03.14.png"

card = new Layer
	width: 200 * 4
	height: 300 * 4
	borderRadius: 10 * 4
	backgroundColor: "#03A9F4"

card.centerX()

card.draggable = true
card.draggable.horizontal = false
card.draggable.constraints =
	y: 1300

card.states.add
	on:
		y: 300 * 4
		background:
			blur: 10
	hide:
		y: 620 * 4

card.states.switch("hide", time: 0)

card.onDragEnd ->
	card.states.next("on", "hide")
	simpleBg.states.next("on", "hide")

simpleBg = new Layer
	width: Screen.width
	height: 500 * 4
	backgroundColor: "#9E9E9E"

card.bringToFront()

simpleBg.states.add
	on:
		y: 140 * 4
	hide:
		y: Screen.height
simpleBg.states.switch("hide", time: 0)

###
simple.onDragEnd ->
	main.states.switch("hide")
	simple.states.switch("hide")
	card.states.switch("hide")


simple.draggable = true
simple.draggable.horizontal = false
simple.draggable.constraints =
	y: 200 * 4
	height: 640 * 4 - 140 * 4
simple.onDragEnd ->
	main.states.switch("hide")
	simple.states.switch("hide")
	card.states.switch("hide")

mainblur.states.add
	on:
		visible: true
	hide:
		visible: false
mainblur.states.switch("hide", time: 0)

main.states.add
	on:
		y:0
	hide:
		y: Screen.height
main.states.switch("hide", time: 0)

simple.states.add
	on:
		y: 140 * 4
		draggable: true
	hide:
		y: Screen.height
simple.states.switch("hide", time: 0)



card_real.states.add
	on:
		visible: true
	hide:
		visible: false
card.states.switch("hide", time: 0)
###

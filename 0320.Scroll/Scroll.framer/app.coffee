background = new BackgroundLayer
	backgroundColor: "white"

appBar = new Layer
	width: 360 * 4
	height: 50 * 4
	backgroundColor: "3F51B5"

scroll = new ScrollComponent
	y: 50 * 4
	width: 360 * 4
	height: (640 - 50)* 4
	scrollHorizontal: false

list = new Layer
	width: Screen.width
	height: Screen.height
	image: "http://placekitten.com/200/500"
	parent: scroll.content
	backgroundColor: "red"

list2 = list.copy()
list2.backgroundColor = "blue"
list2.y = list2.height
list2.image = "https://placeimg.com/200/500"
list2.parent = scroll.content
scroll.updateContent()
	

	



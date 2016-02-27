(function() {
  var bg, detail, main, myHeight, myWidth;

  myWidth = function(width) {
    return width * Screen.width / 360;
  };

  myHeight = function(height) {
    return height * Screen.height / 640;
  };

  bg = new BackgroundLayer({
    backgroundColor: "white"
  });

  main = new Layer({
    width: Screen.width,
    height: Screen.height,
    image: "images/View1.png"
  });

  detail = new Layer({
    width: Screen.width,
    height: Screen.height,
    image: "images/View2.png"
  });

  main.on(Events.Click, function(event, layer) {
    print("Clicked main");
    main.visible = false;
    return detail.visible = true;
  });

  detail.on(Events.Click, function(event, layer) {
    print("Clicked detail");
    main.visible = true;
    return detail.visible = false;
  });

  main.visible = true;

  detail.visible = false;

}).call(this);

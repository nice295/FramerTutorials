(function() {
  var bg, detail, device, dp, main;

  dp = 4;

  device = new Framer.DeviceView();

  device.setupContext();

  device.deviceType = "samsung-galaxy-note-5-gold";

  device.contentScale = 1;

  bg = new BackgroundLayer({
    backgroundColor: "white"
  });

  main = new Layer({
    x: 0,
    width: Screen.width,
    height: Screen.height,
    image: "images/View1.png"
  });

  detail = new Layer({
    x: 0,
    width: Screen.width,
    height: Screen.height,
    image: "images/View2.png"
  });

  main.on(Events.Click, function(event, layer) {
    return detail.bringToFront();
  });

  detail.on(Events.Click, function(event, layer) {
    return main.bringToFront();
  });

  main.bringToFront();

}).call(this);

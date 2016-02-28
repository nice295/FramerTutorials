(function() {
  var animationDetailHide, animationDetailShow, bg, detail, device, main, myHeight, myWidth, showMain;

  device = new Framer.DeviceView();

  device.setupContext();

  device.deviceType = "samsung-galaxy-note-5-gold";

  device.contentScale = 1;

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
    x: myWidth(50),
    width: Screen.width,
    height: Screen.height,
    image: "images/View2.png"
  });

  animationDetailShow = new Animation({
    layer: detail,
    properties: {
      x: 0
    },
    time: 0.5,
    curve: "ease-in-out"
  });

  animationDetailHide = new Animation({
    layer: detail,
    properties: {
      x: myHeight(50)
    },
    time: 0.5,
    curve: "ease-in-out"
  });

  showMain = function() {
    main.visible = true;
    return detail.visible = false;
  };

  main.on(Events.Click, function(event, layer) {
    main.visible = false;
    detail.visible = true;
    return animationDetailShow.start();
  });

  detail.on(Events.Click, function(event, layer) {
    animationDetailHide.start();
    return animationA.on(Events.AnimationEnd, showMain());
  });

  main.visible = true;

  detail.visible = false;

}).call(this);

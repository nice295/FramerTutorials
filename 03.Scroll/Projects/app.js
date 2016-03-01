(function() {
  var PSD, bg, device, dp;

  dp = 4;

  device = new Framer.DeviceView();

  device.setupContext();

  device.deviceType = "samsung-galaxy-note-5-gold";

  device.contentScale = 1;

  bg = new BackgroundLayer({
    backgroundColor: "white"
  });

  PSD = Framer.Importer.load("imported/Scroll");

}).call(this);

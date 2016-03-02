device = new Framer.DeviceView();
device.setupContext();
device.deviceType = "samsung-galaxy-note-5-gold";
device.contentScale = 1;

dp = Screen.width / 360

# Set background
bg = new BackgroundLayer 
	backgroundColor: "white"
    
PSD = Framer.Importer.load "imported/Scroll"
scroll = ScrollComponent.wrap(PSD.List)
scroll.scrollHorizontal = false
PSD.BottomBar.bringToFront()

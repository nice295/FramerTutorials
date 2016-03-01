dp = 4

device = new Framer.DeviceView();
device.setupContext();
device.deviceType = "samsung-galaxy-note-5-gold";
device.contentScale = 1;

# Set background
bg = new BackgroundLayer 
	backgroundColor: "white"

PSD = Framer.Importer.load("imported/Scroll")
    
# Initial


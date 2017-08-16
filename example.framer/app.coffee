ShakeEvent = require "shakeEvent"

Framer.Defaults.Animation =
	time: 0.25, curve: "spring(250, 10, 0)"

BG = new BackgroundLayer

myLayer = new Layer
	x: 100, y: 100, width: 300, height: 300
	backgroundColor: "#28affa"
	borderRadius: 150
myLayer.center()
myLayer.states.add
	one: rotation: 45, borderRadius: 0
	two: rotation: 90, scale: 2
	
ShakeEvent.throttleInterval = 1
ShakeEvent.sensitivity = 20

ShakeEvent.onShake = ()->
	myLayer.states.next()
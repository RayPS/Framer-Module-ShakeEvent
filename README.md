## ShakeEvent Module for FramerJS

<img src="demo.gif" width="400px">


#### DEMO: (Open in your phone)
👉 <http://share.framerjs.com/bb1is3lkolp7/>

#### Usage:
Place `shakeEvent.coffee` into the `modules` folder of your project.

``` coffeescript
ShakeEvent = require "shakeEvent"
# ...
ShakeEvent.onShake = ()->
	alert "shaked!"
```

#### Options:

``` coffeescript
ShakeEvent.throttleInterval = 1   # Default 1   (secend(s))
ShakeEvent.sensitivity      = 20  # Default 20  (a lower number is more sensitivity)
```


<a href="#"><img width="160px" src='fm-badge@2x.png'></a>
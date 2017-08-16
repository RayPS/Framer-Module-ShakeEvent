## ShakeEvent Module for FramerJS

<img src="demo.gif" width="100%">


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


<img width="160px" src='data:image/png;base64,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'>
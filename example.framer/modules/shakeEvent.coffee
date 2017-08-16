# https://github.com/RayPS/Framer-Module-ShakeEvent

throttleInterval = exports.throttleInterval ?= 1
handler = Utils.throttle throttleInterval, ->
    exports.onShake()

# http://stackoverflow.com/questions/711536
if typeof window.DeviceMotionEvent != 'undefined'
    
    # Position variables
    x1 = 0
    y1 = 0
    z1 = 0
    x2 = 0
    y2 = 0
    z2 = 0

    # Listen to motion events and update the position
    window.addEventListener 'devicemotion', ((e) ->
        x1 = e.accelerationIncludingGravity.x
        y1 = e.accelerationIncludingGravity.y
        z1 = e.accelerationIncludingGravity.z
        return
    ), false

    # Periodically check the position and fire
    # if the change is greater than the sensitivity
    setInterval (->

        # Shake sensitivity (a lower number is more)
        sensitivity = exports.sensitivity ?= 20
        change = Math.abs(x1 - x2 + y1 - y2 + z1 - z2)
        if change > sensitivity
            handler()
            
        # Update new position
        x2 = x1
        y2 = y1
        z2 = z1
        return
    ), 150
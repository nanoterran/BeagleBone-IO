# BeagleBone-IO
Lua library for interfacing with BeagleBone Black GPIO, and Onboard LEDs.

### onboard_led.lua
``` lua
local onboard_led = require 'onboard_led'
local led1 = onboard_led(1)

led1.turn_on()
led1.turn_off()
```

### gpio.lua

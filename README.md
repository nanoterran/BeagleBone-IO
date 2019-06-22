# BeagleBone-IO
Lua library for interfacing with BeagleBone Black Rev C GPIO, and Onboard LEDs.

### onboard_led.lua
Initialize with one of the onboard LEDs.
- 0 - LED0 
- 1 - LED1
- 2 - LED2
- 3 - LED3
``` lua
local onboard_led = require 'onboard_led'
local led1 = onboard_led(1)

led1.turn_on()
led1.turn_off()

led1.heartbeat()
```

### gpio.lua

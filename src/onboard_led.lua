local const = {
  led_path = '/sys/class/leds/beaglebone:green:usr'
}

local function write_to_file(path, value)
  local file = io.open(path, 'a+')
  file:write(tostring(value))
  file:close()
end

return function(led_number)
  local led = const.led_path .. led_number

  local function turn_on()
    write_to_file(led .. '/brightness', '1')
  end

  local function turn_off()
    write_to_file(led .. '/brightness', '0')
  end

  return {
    turn_on = turn_on,
    turn_off = turn_off
  }
end

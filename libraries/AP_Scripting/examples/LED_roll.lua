--[[
Script to control LED strips based on the roll of the aircraft. This is an example to demonstrate
the LED interface for WS2812 LEDs
--]]

--[[
for this demo we will use a single strip with 30 LEDs
--]]
local num_leds = 4

--[[
 use SERVOn_FUNCTION 120 for LED. We can control up to 16 separate strips of LEDs
 by putting them on different channels
--]]
local chan = SRV_Channels:find_channel(94)

if not chan then
    gcs:send_text(6, "LEDs: channel not set")
    return
end

-- find_channel returns 0 to 15, convert to 1 to 16
chan = chan + 1

gcs:send_text(6, "LEDs: chan=" .. tostring(chan))

-- initialisation code
serialLED:set_num_neopixel(chan,  num_leds)
--serialLED:set_num_profiled(chan,  num_leds)

Health = ahrs:prearm_healthy()

function update()
    if health==true then 
        serialLED:set_rgb(0,255,0,10)
        else
        serial:set_rgb(255,0,0,10)
        gcs:send_text(1, "Wait for AHRS to settle")
        end
    return update, 15000
    end
return update()

  serialLED:send(chan)

  return update_LEDs, 20 -- run at 50Hz
end

return update_LEDs, 1000


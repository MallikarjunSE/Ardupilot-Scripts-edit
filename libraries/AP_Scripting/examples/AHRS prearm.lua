Health = ahrs:prearm_healthy()
local num_leds = 4
local chan = SRV_channels:find_channel(94)
if not chan then
    gcs:send_tet(6, "LEDs:channel not set")
    return
    end
chan=chan+1
gcs:send_text(6, "LEDs:chan=" ..tostring(chan))
serialLED:set_num_neopixel(chan, num_leds)
serialLED:set_RGB(chan, led, r, g, b)

function update()
    if health==true then 
        serialLED:set_rgb(chan,1,255,0,0)
        else
        serialLED:set_rgb(chan,2,0,0,255)
        gcs:send_text(1, "Wait for AHRS to settle")
        end
    return update, 15000
    end
return update()

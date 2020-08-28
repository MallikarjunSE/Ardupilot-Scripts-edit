Health = ahrs:prearm_healthy()
local num_leds = 4
localchan = SRV_channels:find_channel(94)
if not chan then
    gcs:send_tet(6, "LEDs:channel not set")
    return
    end
chan=chan+1
gcs:send_text(6, "LEDs:chan=" ..tostring(chan))
serialLED:set_num_neopixel(chan, num_leds)
function update()
    if health==true then 
        serialLED:set_rgb(0,255,0,10)
        else
        serialLED:set_rgb(255,0,0,10)
        gcs:send_text(1, "Wait for AHRS to settle")
        end
    return update, 15000
    end
return update()

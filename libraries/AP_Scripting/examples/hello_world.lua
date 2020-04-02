local TUNE_POINT = "MBNT255>A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8"
local TUNE_TOWARDS = "MFT100L8>B"
local TUNE_AWAY = "MFT100L4>A#B#"

roll = ahrs:get_roll()
pitch = ahrs:get_pitch()

function update()
    if roll > 0.5 then
        notify:play_tune(TUNE_POINT)
        gcs:send_text(1, "High Roll Angle")
        end
    if pitch > 0.5 then
        notify:play_tune(TUNE_AWAY)
        gcs:send_text(1, "High Pitch Angle")
        end
end
return update, 10000

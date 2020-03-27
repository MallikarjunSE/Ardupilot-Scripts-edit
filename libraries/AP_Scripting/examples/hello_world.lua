local TUNE_POINT = "MBNT255>A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8A#8"
local TUNE_TOWARDS = "MFT100L8>B"
local TUNE_AWAY = "MFT100L4>A#B#"

function update ()
    local current = ahrs:get_roll()
    if current > 30 then
            notify:play_tune(TUNE_POINT)
            elseif current <-30  then
                notify:play_tune(TUNE_AWAY)
            end
        end

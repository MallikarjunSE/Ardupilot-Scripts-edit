Health = ahrs:prearm_healthy()

function update()
    if health==true then 
        notify:handle_rgb(0,255,0,10)
        gcs:send_text(1, "Vehicle ready to fly")
        else
        notify:handle_rgb(255,0,0,10)
        gcs:send_text(1, "Wait for AHRS to settle")
        end
    return update, 15000
    end
return update()

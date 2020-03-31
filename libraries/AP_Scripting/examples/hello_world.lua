Health = ahrs:prearm_healthy()

function update()
    if health==true then 
        notify:handle_rgb(0,255,0,5)
        else current==false then
        notify:handle_rgb(0,0,255,5)
        end
    return update, 15000
    end
return update()

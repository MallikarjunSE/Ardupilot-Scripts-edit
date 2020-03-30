current = ahrs:prearm_healthy()

function update()
    if current==false then 
        notify:handle_rgb(0,255,0,5)
        elseif current==true then
        notify:handle_rgb(0,0,255,5)
        end
    return update, 15000
    end
return update()

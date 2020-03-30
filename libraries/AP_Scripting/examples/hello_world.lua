local current = ahrs:prearm_healthy

function update ()
    current=true
    if current==true then 
        notify:handle_rgb(0,255,0,2)
        elseif current==false then
        notify:handle_rgb(255,0,0,2)
        end
    return update, 15000
    end
return update()

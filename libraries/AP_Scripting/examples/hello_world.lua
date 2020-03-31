Health = ahrs:prearm_healthy()

function update()
    if health==true then 
        notify:handle_rgb(255,0,0,10)
        elseif health==false then
        notify:handle_rgb(0,0,255,10)
        end
    return update, 15000
    end
return update()

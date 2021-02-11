-- This script is a test of led override

local count = 0

function update() -- this is the loop which periodically runs

  count = count + 1

  if count == 1 then
    notify:handle_rgb(255,255,255,10)
      count = 0
  end

  return update, 3000 -- reschedules the loop in 15 seconds

end

return update() -- run immediately before starting to reschedule

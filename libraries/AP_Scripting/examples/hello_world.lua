local count = 0

function update() -- this is the loop which periodically runs

  count = count + 1

  if count == 1 then
    --star wars
    notify:play_tune(T200L4O4FO4FO4FP16MNL2O4BO5L8O5EO5DO5CL2O5B)
  elseif count == 2 then
    -- ending
    notify:play_tune(L4O5FL8O5E-O5DO5CL2O5B-L4O5FL8O5E-O5DO5E-L1O5C)
        count = 0
  end

  return update, 15000 -- reschedules the loop in 15 seconds

end

return update()


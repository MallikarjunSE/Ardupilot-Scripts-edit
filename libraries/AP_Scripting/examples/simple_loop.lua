-- This script is an example of saying hello.  A lot.

function update() -- this is the loop which periodically runs
  gcs:send_text(0, "Welcome to Sierra Aerospace") -- send the traditional message
  return update, 1000 -- reschedules the loop
end

return update() -- run immediately before starting to reschedule

function text(message,duration,type,object)
local m = Instance.new(type)
m.Text = message
m.Parent = object
wait(duration)
if m.Parent ~= nil then
m:remove()
end end --lego 

text("suck mai dick",1,"Message",workspace )
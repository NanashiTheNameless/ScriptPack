local char = Workspace.lordsheen 

function load(add) 
script.Parent = p 
function onTouched(part) 
local h = part 
if h~=nil then 
if h.Name~="Base" then 
if h.CanCollide==true then 
h.CanCollide=false 
wait(0.8) 
h.CanCollide=true 
end 
end 
end 
wait() 
end 
script.Parent.Touched:connect(onTouched)
--lego 
wait() 
end 

p = char.Head 
load() 
wait() 
p = char.Torso 
load() 
wait() 
local Me = game.Players.ScriptTyper
local char = Me.Character

local yea = false 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "look"
    script.Parent = h
end

local bin = script.Parent

pcall(function()
char.Shirt:remove() 
char.Pants:remove() 
end) 

function onSelected(mouse)
    mouse.Button1Down:connect(function()
if yea == false then 
yea = true 
bg = Instance.new("BodyGyro", Me.Character.Torso)
bg.P = 10000
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
coroutine.resume(coroutine.create(function() 
while wait() do 
if yea == true then 
bg.cframe = CFrame.new(Me.Character.Torso.Position, mouse.hit.p) 
else 
bg:remove() 
break 
end 
end  
end)) 
end 
    end)
    mouse.Button1up:connect(function()
yea = false 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
	end 
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

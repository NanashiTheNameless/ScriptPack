Me = game.Players.LocalPlayer
char = Me.Character
Torso = char.Torso
Head = char.Head

pcall(function() workspace.Base.Tank:remove() end) 
local model = Instance.new("Model", workspace.Base) 
model.Name = "Tank" 
local base = Instance.new("Part", model) 
base.Size = Vector3.new(10, 5, 20) 
base.BrickColor = BrickColor.new("Dark green") 
base.Anchored = false 
base.CFrame = CFrame.new(0, 25, 0) 
base:BreakJoints() 
local basep = Instance.new("BodyPosition", base) 
basep.position = Vector3.new(25, 3, 0) 
basep.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
local baseg = Instance.new("BodyGyro", base) 
baseg.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "tank"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
pos = mouse.hit.p 
basep.position = pos + Vector3.new(0, 3, 0) 
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

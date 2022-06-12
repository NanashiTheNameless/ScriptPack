local Me = game.Players.acb227
local char = Me.Character
--local folo = workspace.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "look"
--char.Shirt:remove() 
--char.Pants:remove() 
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
local bg = Instance.new("BodyGyro", Me.Character.Torso)
bg.P = 10000
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
while wait() do 
--Me.Character.Humanoid.PlatformStand = true 
bg.cframe = CFrame.new(Me.Character.Head.Position, mouse.hit.p) 
end  
    end)
    mouse.Button1Up:connect(function()
bg:remove() 
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

local Me = game.Players.acb227 
Attkin = false 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "teleport"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
Me.Character.Torso.CFrame = CFrame.new(mouse.hit.p) + Vector3.new(0, 5, 0) 
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

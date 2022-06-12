local Me = game.Players.LocalPlayer 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Insert" 
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
    end)
    mouse.KeyDown:connect(function(key)
			end
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

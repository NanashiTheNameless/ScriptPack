local Me = game.Players.LocalPlayer 
Attkin = false 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Ring"
    script.Parent = h
end

ca = Instance.new("Part") 
ca.Parent = char 
ca.BrickColor = BrickColor.new("Really red") 
ca.formFactor = "Symmetric" 
ca.Size = Vector3.new(1, 2, 1) 
ca.


local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = mouse.hit.p 
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

local Me = game.Players.LocalPlayer 
Attkin = false 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Fire/Shadow"
    script.Parent = h
end

local bin = script.Parent
me2 = Me.Character

function RC(Pos, Dir, Max, Ignore)
    return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end

function RayC(Start, En, MaxDist, Ignore)
    return RC(Start, (En - Start), MaxDist, Ignore)
end

function onSelected(mouse)
    mouse.Button1Down:connect(function() 
if Attkin == false then 
Attkin = true 
local bh = Instance.new("Part") 
bh.Size = Vector3.new(1, 1, 1) 
bh.CanCollide = false 
bh.BrickColor = BrickColor.new("Really black") 
    end) 
    mouse.KeyDown:connect(function(key)
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

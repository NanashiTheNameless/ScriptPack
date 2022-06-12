local Me = game.Players.LocalPlayer 
local pos1 = asdfasdf 
local pos2 = aasdfasd 
local on = false 
local paint = Instance.new("Model", Me.Character) 
paint.Name = "Paint" 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Draw" 
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
if on == false then 
on = true 
pos1 = mouse.hit.p 
part = Instance.new("Part", paint) 
part.Anchored = true 
part.formFactor = "Custom" 
part.Size = Vector3.new(0.2, 0.2, 1) 
part.BrickColor = BrickColor.new("Really red") 
part.Transparency = 0 
mesh = Instance.new("BlockMesh", part) 
for i = 0, math.huge, 0.1 do 
if on == true then 
pos2 = mouse.hit.p 
part.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
mesh.Scale = Vector3.new(1, 1, (pos1 - pos2).magnitude) 
end 
wait() 
end 
end  
    end)
	mouse.Button1Up:connect(function()
pos2 = mouse.hit.p
on = false 
part.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
part.Transparency = 0 
mesh.Scale = Vector3.new(1, 1, (pos1 - pos2).magnitude) 
    end)
	mouse.KeyDown:connect(function(key)
    if key == "c" then 
for _,v in pairs(paint:GetChildren()) do 
v:remove() 
wait() 
end 
	end 
	end) 
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

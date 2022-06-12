local Players = game:GetService("Players") 
Me = game.Players.LocalPlayer 
char = Me.Character 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Effects"
    script.Parent = h
end

local bin = script.Parent

function efct(func, part, mag) 
for _,v in pairs(Players:GetChildren()) do 
if v.Name ~= Me.Name then 
if (v.Character.Torso.Position - part.Position).magnitude < mag then 
if func == 1 then 
v.Character.Torso.Anchored = true 
v.Character.Torso.Transparency = 0.75 
end 
if func == 2 then 
v.Character.Torso:BreakJoints() 
end 
end 
end 
end 
end 

function onSelected(mouse)
    mouse.Button1Down:connect(function()
local pos2 = mouse.hit.p 
local pos1 = char.Torso.Position 
local shot = Instance.new("Part", workspace) 
shot.BrickColor = BrickColor.new("White") 
shot.Size = Vector3.new(1, 1, (pos1 - pos2).magnitude) 
shot.Anchored = true 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
shot.Transparency = 0.5 
shot.Reflectance = 0.05
local shotm = Instance.new("BlockMesh", shot) 
shotm.Bevel = 0.15 
local shot2 = Instance.new("Part", shot) 
shot2.BrickColor = BrickColor.new("White") 
shot2.Size = Vector3.new(2, 2, 2) 
shot2.Anchored = true 
shot2.CanCollide = false 
shot2.CFrame = CFrame.new(pos2) 
shot2.Transparency = 0.5 
shot2.Reflectance = 0.05
local shot2m = Instance.new("SpecialMesh", shot2) 
shot2m.MeshType = "Sphere" 
shot2m.Scale = Vector3.new(1, 1, 1) 
coroutine.resume(coroutine.create(function() 
for i = 1, 15 do 
shot2m.Scale = shot2m.Scale + Vector3.new(1, 1, 1) 
shot2.Reflectance = shot2.Reflectance + 0.005 
shot2.Transparency = shot2.Transparency + 0.05 
efct(1, shot2, i/2) 
wait() 
end 
shot2.Transparency = 1 
wait(0.1) 
shot2.Transparency = 0.75 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.3) 
shot:remove() 
end)) 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
local pos2 = mouse.hit.p 
local pos1 = char.Torso.Position 
local shot = Instance.new("Part", workspace) 
shot.BrickColor = BrickColor.new("Dark orange") 
shot.Size = Vector3.new(1, 1, (pos1 - pos2).magnitude) 
shot.Anchored = true 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
shot.Transparency = 0.5 
shot.Reflectance = 0.05
local shotm = Instance.new("BlockMesh", shot) 
shotm.Bevel = 0.15 
local shot2 = Instance.new("Part", shot) 
shot2.BrickColor = BrickColor.new("Really red") 
shot2.Size = Vector3.new(2, 2, 2) 
shot2.Anchored = true 
shot2.CanCollide = false 
shot2.CFrame = CFrame.new(pos2) + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) 
shot2.Transparency = 0.5 
shot2.Reflectance = 0.05
local shot2m = Instance.new("SpecialMesh", shot2) 
shot2m.MeshType = "Sphere" 
shot2m.Scale = Vector3.new(1, 1, 1) 
local shot3 = Instance.new("Part", shot) 
shot3.BrickColor = BrickColor.new("Bright orange") 
shot3.Size = Vector3.new(2, 2, 2) 
shot3.Anchored = true 
shot3.CanCollide = false 
shot3.CFrame = CFrame.new(pos2) + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)) 
shot3.Transparency = 0.5 
shot3.Reflectance = 0.05
local shot3m = Instance.new("SpecialMesh", shot3) 
shot3m.MeshType = "Sphere" 
shot3m.Scale = Vector3.new(1, 1, 1) 
coroutine.resume(coroutine.create(function() 
for i = 1, 15 do 
shot2m.Scale = shot2m.Scale + Vector3.new(1, 1, 1) 
shot2.Reflectance = shot2.Reflectance + 0.005 
shot2.Transparency = shot2.Transparency + 0.05 
shot3m.Scale = shot3m.Scale + Vector3.new(1, 1, 1) 
shot3.Reflectance = shot3.Reflectance + 0.005 
shot3.Transparency = shot3.Transparency + 0.05 
efct(2, shot3, i/2) 
efct(2, shot2, i/2) 
wait() 
end 
shot2.Transparency = 1 
shot3.Transparency = 1 
wait(0.1) 
shot2.Transparency = 0.75 
shot3.Transparency = 0.75 
end)) 
coroutine.resume(coroutine.create(function() 
wait(0.3) 
shot:remove() 
end)) 
        end 
    end)
end

function onDesel(mouse)

end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

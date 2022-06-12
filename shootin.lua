Me = game.Players.LocalPlayer
char = Me.Character
Torso = char.Torso
Head = char.Head

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "shoot"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
pos1 = mouse.hit.p 
pos2 = Head.Position 
local shot = Instance.new("Part", char) 
shot.BrickColor = BrickColor.new("New Yeller") 
shot.formFactor = "Custom" 
shot.Transparency = 0.75 
shot.Size = Vector3.new(0.2, 0.2, (pos1 - pos2).magnitude) 
shot.Anchored = true 
shot.Name = "SHOT" 
shot.CFrame = CFrame.new((pos1 + pos2)/2, pos1) 
shot.CanCollide = false 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Bevel = 1 
coroutine.resume(coroutine.create(function() 
for i = 1, 10 do 
mouse.Target:BreakJoints() 
if mouse.Target.Name ~= "Base" and mouse.Target.Name ~= "SHOT" then 
mouse.target.Anchored = false 
end 
shotm.Scale = Vector3.new(i/2, i/2, 1) 
wait() 
end 
wait() 
shot:remove() 
end)) 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
pos1 = mouse.hit.p 
pos2 = Head.Position 
local shot = Instance.new("Part", char) 
shot.BrickColor = BrickColor.new("Really red") 
shot.formFactor = "Custom" 
shot.Transparency = 0.75 
shot.Size = Vector3.new(0.2, 0.2, (pos1 - pos2).magnitude) 
shot.Anchored = true 
shot.Name = "SHOT" 
shot.CFrame = CFrame.new((pos1 + pos2)/2, pos1) 
shot.CanCollide = false 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Bevel = 1 
coroutine.resume(coroutine.create(function() 
for i = 1, 10 do 
mouse.Target:BreakJoints() 
if mouse.Target.Name ~= "Base" and mouse.Target.Name ~= "SHOT" then 
mouse.target.Anchored = false 
end 
shotm.Scale = Vector3.new(i*2, i*2, 1) 
wait() 
end 
wait() 
shot:remove() 
end)) 
	end 
        if key == "e" then 
local shot = Instance.new("Part", char) 
shot.BrickColor = BrickColor.new("Dark stone grey") 
shot.formFactor = "Custom" 
shot.Transparency = 0 
shot.Size = Vector3.new(5, 5, 5) 
shot.Name = "SHOT" 
shot.CFrame = Head.CFrame * CFrame.Angles(0.5, 0, 0) 
shot.CanCollide = false 
shot:BreakJoints() 
shot.Velocity = Head.CFrame.lookVector * 150 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Bevel = 1 
shot.Touched:connect(function(hit) 
if hit.Parent.Name ~= "acb227" then 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.findFirstChild ~= nil then 
hit.Parent.Humanoid.Sit = true 
hit.Parent.Torso.Velocity = hit.Parent.Torso.CFrame.lookVector * 500 
end 
end 
end)
	end 
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

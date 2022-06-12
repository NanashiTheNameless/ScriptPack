--[[mediafire gtfo password]]--

local players = game:GetService("Players") 
local workspace = game:GetService("Workspace") 
local me = players.yfc 
local name = me.Name 
local char = me.Character 
local pg = me.PlayerGui 
local move = false 
local mach = false 

pcall(function() workspace.Base.AC130:remove() end) 
local model = Instance.new("Model", workspace.Base) 
model.Name = "AC130" 

local base = Instance.new("Part", model) 
base.Size = Vector3.new(15, 10, 30) 
base.BrickColor = BrickColor.new("Mid stone grey") 
base.Anchored = false 
base.CFrame = CFrame.new(25, 16, 0) 
base:BreakJoints() 
local basep = Instance.new("BodyPosition", base) 
basep.position = Vector3.new(0, 25, 0) 
basep.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
local basem = Instance.new("SpecialMesh", base) 
basem.MeshType = "Sphere" 
local base2 = Instance.new("Part", model) 
base2.Size = Vector3.new(30, 2, 8) 
base2.BrickColor = BrickColor.new("Mid stone grey") 
base2.Anchored = false 
base2.CFrame = CFrame.new(25, 20, 0) 
base2:BreakJoints() 
local base2m = Instance.new("BlockMesh", base2) 
local base2w = Instance.new("Weld", base2) 
base2w.Part0 = base2 
base2w.Part1 = base 
base2w.C1 = CFrame.new(0, 0, 0) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", me.Backpack)
    h.Name = "AC-130"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
if move == false then 
move = true 
coroutine.resume(coroutine.create(function()
while wait() do 
if move == true then 
basep.position = mouse.hit.p + Vector3.new(0, 25, 0) 
else 
break 
end 
end 
end))
end 
    end)
    mouse.Button1Up:connect(function()
move = false 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
if mach == false then 
mach = true 
pos = mouse.hit.p + Vector3.new(math.random(-1.5, 1.5), 0, math.random(-1.5, 1.5)) 
pos2 = base.Position 
local shot = Instance.new("Part", workspace) 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("New Yeller") 
shot.Size = Vector3.new(0.2, 0.2, (pos - pos2).magnitude) 
shot.Anchored = true 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos + pos2)/2, pos)
coroutine.resume(coroutine.create(function()
wait(0.15) 
shot:remove() 
end))
coroutine.resume(coroutine.create(function()
while wait() do 
if mach == true then 
pos = mouse.hit.p + Vector3.new(math.random(-1.5, 1.5), 0, math.random(-1.5, 1.5)) 
pos2 = base.Position 
local shot = Instance.new("Part", workspace) 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("New Yeller") 
shot.Size = Vector3.new(0.2, 0.2, (pos - pos2).magnitude) 
shot.Anchored = true 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos + pos2)/2, pos)
coroutine.resume(coroutine.create(function()
wait(0.15) 
shot:remove() 
end))
else 
break 
end 
end 
end))
end 
		end 
        if key == "e" then 
if bom == false then 
bom = true 
pos = mouse.hit.p + Vector3.new(math.random(-1.5, 1.5), 0, math.random(-1.5, 1.5)) 
pos2 = base.Position 
local shot = Instance.new("Part", workspace) 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("New Yeller") 
shot.Size = Vector3.new(0.2, 0.2, (pos - pos2).magnitude) 
shot.Anchored = true 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos + pos2)/2, pos)
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos 
ex.BlastRadius = 2.5 
coroutine.resume(coroutine.create(function()
wait(0.15) 
shot:remove() 
end))
coroutine.resume(coroutine.create(function()
while wait() do 
if bom == true then 
pos = mouse.hit.p + Vector3.new(math.random(-1.5, 1.5), 0, math.random(-1.5, 1.5)) 
pos2 = base.Position 
local shot = Instance.new("Part", workspace) 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("New Yeller") 
shot.Size = Vector3.new(0.2, 0.2, (pos - pos2).magnitude) 
shot.Anchored = true 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos + pos2)/2, pos)
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos 
ex.BlastRadius = 2.5 
coroutine.resume(coroutine.create(function()
wait(0.15) 
shot:remove() 
end))
else 
break 
end 
end 
end))
end 
		end 
    end)
   mouse.KeyUp:connect(function(key)
        if key == "q" then 
mach = false 
		end 
        if key == "e" then 
bom = false 
		end 
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

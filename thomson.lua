local me = game.Players.acb227 
local char = me.Character 
local head = char.Head 
local torso = char.Torso 
local rarm = char["Right Arm"] 
local larm = char["Left Arm"] 
local lleg = char["Left Leg"] 
local rleg = char["Right Leg"] 
local ammo = 0 
local mags = 6 
local shootin = false 

pcall(function() char["Thomson"]:remove() end)
local model = Instance.new("Model", char) 
model.Name = "Thomson" 

function create(part, weld, mesh, sizex, sizey, sizez, scalex, scaley, scalez, type, bevel, id, cz, ca, color, form, anchored, cancollide, trans, reflect, name, topsurf, botsurf) 
part.formFactor = form 
part.Size = Vector3.new(sizex, sizey, sizez) 
part.BrickColor = BrickColor.new(color) 
part.Anchored = anchored 
part.CanCollide = cancollide 
part.Transparency = trans 
part.Reflectance = reflect 
part.Name = name 
part.TopSurface = topsurf 
part.BottomSurface = botsurf 
part:BreakJoints() 
weld.Part0 = part 
weld.Part1 = cz 
weld.C1 = ca 
weld.Parent = part 
mesh.Parent = part 
mesh.Scale = Vector3.new(scalex, scaley, scalez) 
if mesh.className == "BlockMesh" then 
mesh.Bevel = bevel 
end 
if mesh.className == "SpecialMesh" then 
mesh.meshType = type 
end 
if mesh.className == "SpecialMesh" and mesh.meshType == "FileMesh" then 
mesh.meshId = id 
end 
end 

local part1 = Instance.new("Part", model) 
local mesh1 = Instance.new("BlockMesh") 
local weld1 = Instance.new("Weld") 
create(part1, weld1, mesh1, 0.5, 0.5, 1.5, 1.01, 1.01, 1.01, "", 0, "", torso, CFrame.new(1, 0.25, -0.25) * CFrame.Angles(0.25, 0, 0), "Reddish brown", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part2 = Instance.new("Part", model) 
local mesh2 = Instance.new("BlockMesh") 
local weld2 = Instance.new("Weld") 
create(part2, weld2, mesh2, 0.5, 0.5, 1, 1.01, 1.01, 1.01, "", 0, "", part1, CFrame.new(0, -0.1, -1.15) * CFrame.Angles(-0.25, 0, 0), "Reddish brown", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part3 = Instance.new("Part", model) 
local mesh3 = Instance.new("BlockMesh") 
local weld3 = Instance.new("Weld") 
create(part3, weld3, mesh3, 0.5, 0.35, 1, 1.015, 1.01, 2.01, "", 0, "", part1, CFrame.new(0, 0, -2.15) * CFrame.Angles(-0.25, 0, 0), "Black", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part4 = Instance.new("Part", model) 
local mesh4 = Instance.new("BlockMesh") 
local weld4 = Instance.new("Weld") 
create(part4, weld4, mesh4, 0.25, 0.5, 0.25, 0.815, 1.31, 1.01, "", 0, "", part1, CFrame.new(0, -0.35, -2) * CFrame.Angles(-0.5, 0, 0), "Reddish brown", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part6 = Instance.new("Part", model) 
local mesh6 = Instance.new("BlockMesh") 
local weld6 = Instance.new("Weld") 
create(part6, weld6, mesh6, 0.5, 0.35, 1, 0.52, 1.01, 1.01, "", 0, "", part1, CFrame.new(0, -0.3, -3.15) * CFrame.Angles(-0.25, 0, 0), "Reddish brown", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part7 = Instance.new("Part", model) 
local mesh7 = Instance.new("CylinderMesh") 
local weld7 = Instance.new("Weld") 
create(part7, weld7, mesh7, 0.2, 0.35, 0.2, 0.52, 2.01, 0.51, "", 0.1, "", part1, CFrame.new(0, -0.2, -3.45) * CFrame.Angles(-1.8, 0, 0), "Black", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part8 = Instance.new("Part", model) 
local mesh8 = Instance.new("BlockMesh") 
local weld8 = Instance.new("Weld") 
create(part8, weld8, mesh8, 0.2, 0.4, 0.2, 0.52, 0.51, 0.51, "", 0.1, "", part1, CFrame.new(0, -0.2, -3.75) * CFrame.Angles(-0.25, 0, 0), "Black", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part9 = Instance.new("Part", model) 
local mesh9 = Instance.new("BlockMesh") 
local weld9 = Instance.new("Weld") 
create(part9, weld9, mesh9, 0.4, 0.4, 0.5, 0.52, 2.5, 0.51, "", 0, "", part1, CFrame.new(0, -0.5, -2.55) * CFrame.Angles(-0.25, 0, 0), "Black", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part10 = Instance.new("Part", model) 
local mesh10 = Instance.new("BlockMesh") 
local weld10 = Instance.new("Weld") 
create(part10, weld10, mesh10, 0.3, 0.3, 0.4, 0.52, 2.5, 0.51, "", 0, "", part1, CFrame.new(0, -1, -2.425) * CFrame.Angles(-0.25, 0, 0), "Black", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part11 = Instance.new("Part", model) 
local mesh11 = Instance.new("BlockMesh") 
local weld11 = Instance.new("Weld") 
create(part11, weld11, mesh11, 0.3, 0.3, 0.2, 0.52, 1.5, 0.51, "", 0, "", part1, CFrame.new(0, -0.4, -2.25) * CFrame.Angles(1, 0, 0), "Black", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part12 = Instance.new("Part", model) 
local mesh12 = Instance.new("BlockMesh") 
local weld12 = Instance.new("Weld") 
create(part12, weld12, mesh12, 0.2, 0.3, 0.2, 0.252, 0.75, 0.251, "", 0, "", part1, CFrame.new(0, -0.25, -2.3) * CFrame.Angles(0.85, 0, 0), "Black", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 

local armw1 = Instance.new("Weld", part1) 
armw1.Part0 = rarm 
armw1.Part1 = part4 
armw1.C1 = CFrame.new(0, -0.5, 1) * CFrame.Angles(1.55, 0.25, 0) 

local s = Instance.new("Sound") 
s.Name = "Fire" 
s.SoundId = "http://www.roblox.com/asset/?id=2920959" 
s.Volume = 0.5 
s.Pitch = 0.75 
s.Looped = true 
s.Parent = model 

local num = mags*30

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", me.Backpack)
    h.Name = "Thomson " ..ammo.. "/" ..num.. "" 
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
if shootin == false then 
shootin = true 
coroutine.resume(coroutine.create(function() 
while wait(0.05) do 
if shootin == true and ammo > 0 then 
coroutine.resume(coroutine.create(function() 
s:play() 
wait(0.25) 
s:stop() 
end)) 
s:play() 
ammo = ammo - 1 
num = mags*30
bin.Name = "Thomson " ..ammo.. "/" ..num.. "" 
local shot = Instance.new("Part", workspace) 
shot.formFactor = "Custom" 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = part8.CFrame 
shot:BreakJoints() 
shot.Velocity = shot.CFrame.lookVector * 1500 
local bm = Instance.new("BlockMesh", shot) 
bm.Scale = Vector3.new(0.2, 0.2, 0.2) 
bm.Bevel = 0.1
shot.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Name ~= me.Name then 
hit.Parent.Humanoid:TakeDamage(5) 
end 
end 
end) 
coroutine.resume(coroutine.create(function() 
weld1.C0 = CFrame.new(0, 0, -0.25) 
wait(0.25) 
weld1.C0 = CFrame.new(0, 0, 0) 
end)) 
else 
break 
end 
end 
end)) 
end 
    end)
	mouse.Button1Up:connect(function()
shootin = false 
    end)
    mouse.KeyDown:connect(function(key)
	if key == "r" then 
	if mags > 0 then 
	mags = mags - 1 
	ammo = 30 
		num = mags*30 
bin.Name = "Thomson " ..ammo.. "/" ..num.. "" 
	end 
	end 
	end)	
end 

function onDesel(mouse)

end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
local me = game.Players.acb227 
local char = me.Character 
local head = char.Head 
local torso = char.Torso 
local rarm = char["Right Arm"] 
local larm = char["Left Arm"] 
local lleg = char["Left Leg"] 
local rockets = 7 
local chamb = 1 
local shootin = false 

pcall(function() char["Bazzoka"]:remove() end)
local model = Instance.new("Model", char) 
model.Name = "Bazzoka" 

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
mesh.MeshType = type 
end 
if mesh.className == "SpecialMesh" and mesh.meshType == "FileMesh" then 
mesh.MeshId = id 
end 
end 

local part1 = Instance.new("Part", model) 
local mesh1 = Instance.new("CylinderMesh") 
local weld1 = Instance.new("Weld") 
create(part1, weld1, mesh1, 0.5, 1.5, 1.5, 1.01, 5.01, 1.01, "", 0, "", torso, CFrame.new(1.5, 1.25, 0) * CFrame.Angles(1.55, 0, 0), "Camo", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part2 = Instance.new("Part", model) 
local mesh2 = Instance.new("CylinderMesh") 
local weld2 = Instance.new("Weld") 
create(part2, weld2, mesh2, 0.5, 1.5, 0.5, 1.01, 1.01, 1.01, "", 0, "", part1, CFrame.new(0, -2, 0.75) * CFrame.Angles(-1, 0, 0), "Camo", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part3 = Instance.new("Part", model) 
local mesh3 = Instance.new("CylinderMesh") 
local weld3 = Instance.new("Weld") 
create(part3, weld3, mesh3, 0.1, 1, 0.1, 1.01, 0.51, 1.01, "", 0, "", part1, CFrame.new(0, -2, -0.25) * CFrame.Angles(-1.55, 0, 0.25), "Camo", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part4 = Instance.new("Part", model) 
local mesh4 = Instance.new("CylinderMesh") 
local weld4 = Instance.new("Weld") 
create(part4, weld4, mesh4, 0.1, 1, 0.1, 1.01, 0.51, 1.01, "", 0, "", part1, CFrame.new(0, -1.5, -0.25) * CFrame.Angles(-1.55, 0, 0.25), "Camo", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part5 = Instance.new("Part", model) 
local mesh5 = Instance.new("CylinderMesh") 
local weld5 = Instance.new("Weld") 
create(part5, weld5, mesh5, 0.1, 1, 0.1, 1.01, 1.01, 1.01, "", 0, "", part1, CFrame.new(-0.05, -1.75, -0.5) * CFrame.Angles(0, 0, 0), "Camo", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part6 = Instance.new("Part", model) 
local mesh6 = Instance.new("CylinderMesh") 
local weld6 = Instance.new("Weld") 
create(part6, weld6, mesh6, 0.5, 0.25, 1.5, 1.51, 1.01, 1.51, "", 0, "", part1, CFrame.new(0, -3.75, 0) * CFrame.Angles(0, 0, 0), "Dark green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part7 = Instance.new("Part", model) 
local mesh7 = Instance.new("CylinderMesh") 
local weld7 = Instance.new("Weld") 
create(part7, weld7, mesh7, 0.5, 0.25, 1.5, 1.51, 1.01, 1.51, "", 0, "", part1, CFrame.new(0, 3.75, 0) * CFrame.Angles(0, 0, 0), "Dark green", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 
local part8 = Instance.new("Part", model) 
local mesh8 = Instance.new("SpecialMesh") 
local weld8 = Instance.new("Weld") 
create(part8, weld8, mesh8, 0.5, 1, 0.5, 1.51, 1.51, 1.51, "Sphere", 0, "", part1, CFrame.new(0, -4.25, 0) * CFrame.Angles(0, 0, 0), "Mid stone grey", "Custom", false, false, 0, 0, "Torso", "Smooth", "Smooth") 

local armw1 = Instance.new("Weld", part1) 
armw1.Part0 = rarm 
armw1.Part1 = part2 
armw1.C1 = CFrame.new(0, 0.5, 1) * CFrame.Angles(1.05, 0, 0) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", me.Backpack)
    h.Name = "Bazooka : " ..chamb.. "/" ..rockets.. "" 
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
	if shootin == false then 
shootin = true 
coroutine.resume(coroutine.create(function() 
if chamb > 0 then 
chamb = chamb - 1 
    bin.Name = "Bazooka : " ..chamb.. "/" ..rockets.. "" 
rocket = part8:clone() 
part8.Transparency = 1 
rocket.Parent = workspace 
rocket.Anchored = false 
rocket.CFrame = part8.CFrame 
rocket:BreakJoints() 
rocket.Velocity = char.Torso.CFrame.lookVector * 250 
rocket.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= me.Name then 
local ex = Instance.new("Explosion", workspace) 
ex.Position = hit.Position 
rocket:remove() 
end 
end 
end) 
end 
end)) 
end 
    end)
	mouse.Button1Up:connect(function()
shootin = false 
    end)
    mouse.KeyDown:connect(function(key)
	if key == "r" then 
if rockets > 0 and chamb == 0 then 
rockets = rockets - 1 
chamb = chamb + 1 
part8.Transparency = 0 
    bin.Name = "Bazooka : " ..chamb.. "/" ..rockets.. "" 
end 
	end 
	end)	
end 

function onDesel(mouse)

end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
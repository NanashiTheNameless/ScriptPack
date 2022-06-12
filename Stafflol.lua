--//mediafire gtfo password\\--------------------------------------------------------------------------------------------------------------------------------------------------------
local players = game:GetService("Players") 
local workspac = game:GetService("Workspace") 
Me = players.LocalPlayer
char = Me.Character
name = Me.Name 
local pg = Me.PlayerGui 
local humanoid = char.Humanoid 
local currhealth = humanoid.Health 
local asset = "http://www.roblox.com/asset/?id="
Head = char.Head
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]
local attakin = false 
local blockin = false 
local MainColor = "Medium stone grey" 
local MainColor2 = "Dark stone grey"
local MainColor3 = "Bright violet"
local ids = {}
ids.texture = asset.."22132434"
ids.mesh = asset.."21712738"
ids.shirt = asset.."20323156"
ids.pants = asset.."20326424"
ids.shoot = asset.."88633606"
function mhat(text,mesh,x,y,z,who)
if who ~= nil and who.Character ~= nil and who.Character.Head ~= nil then
for _,v in pairs(who.Character:children()) do
if v.className == "Hat" then
v:remove()
end
end
local m = Instance.new("Hat")
m.Name = "Jaffa"
local h = Instance.new("Part")
h.Name = "Handle"
h.Size = Vector3.new(2,2,2)
h.Parent = m
m.Parent = who.Character
local mes = Instance.new("SpecialMesh",h)
mes.MeshType = "FileMesh"
mes.MeshId = mesh
mes.TextureId = text
mes.Scale = Vector3.new(x,y,z)
pcall(function() who.Character.Pants:remove() end)
pcall(function() who.Character.Shirt:remove() end)
local s = Instance.new("Shirt",who.Character)
s.ShirtTemplate = ids.shirt
local p = Instance.new("Pants",who.Character)
p.PantsTemplate = ids.pants
end
end
mhat(ids.texture,ids.mesh, 0.9, 0.82, 0.925,Me)
function create(prt, parent, siz, cf, can, col, anc, brea, tran, ref, form, weld, part1, cf2, mesh, sca, typ, id, bckup) 
part = Instance.new(prt) 
part.formFactor = form 
part.BrickColor = BrickColor.new(col) 
part.Size = siz 
part.Anchored = anc 
part.Transparency = tran 
part.Name = "ShipPart" 
part.Reflectance = ref 
part.CFrame = cf 
part.CanCollide = can 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
if brea == true then 
part:BreakJoints() 
end 
if weld == true then 
weld = Instance.new("Weld") 
weld.Part0 = part 
weld.Part1 = part1 
weld.C1 = cf2 
weld.Parent = part 
end 
if mesh ~= nil then 
mesh = Instance.new(mesh) 
mesh.Scale = sca 
if bckup == true then 
mesh.MeshType = "Sphere" 
end 
if mesh == "SpecialMesh" then 
mesh.MeshType = typ
pcall(function() 
if type == "Wedge" then 
mesh.MeshType = "Wedge" 
end 
if type == "FileMesh" then 
mesh.MeshType = "FileMesh" 
mesh.MeshId = id 
end 
end)
end 
mesh.Parent = part 
end 
part.Parent = parent 
	return part,weld 
end 
pcall(function() char[":P"]:remove() end)
pcall(function() char["StaffWeapon"]:remove() end) 
local Model = Instance.new("Model",char)
Model.Name = ":P"
local Model2 = Instance.new("Model",char)
Model2.Name = "StaffWeapon"
local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()
local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)
local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = Model
LAB:BreakJoints()
local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = Torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)
local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = nil
RAW.C1 = CFrame.new(0, 0.5, 0)
local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = nil
LAW.C1 = CFrame.new(0, 0.5, 0)

local staff, staffw = create("Part", Model2, Vector3.new(0.3, 5, 0.3), CFrame.new(0, 0, 0), false, MainColor2, false, true, 0, 0, "Custom", true, Rarm, CFrame.new(0,-0.75,0)*CFrame.Angles(math.rad(90),0,0), "SpecialMesh", Vector3.new(1, 1, 1), "Head", id, bckup) 
local staff2, staff2w = create("Part", Model2, Vector3.new(0.75, 1, 0.5), CFrame.new(0, 0, 0), false, MainColor2, false, true, 0, 0, "Custom", true, staff, CFrame.new(0,-2.5,0.05)*CFrame.Angles(0,0,0), "SpecialMesh", Vector3.new(1, 1, 1), "Sphere", id, bckup) staff2.Mesh.MeshType = "Sphere"
local staff3, staff3w = create("Part", Model2, Vector3.new(0.75, 1, 0.5), CFrame.new(0, 0, 0), false, MainColor2, false, true, 0, 0, "Custom", true, staff, CFrame.new(0,-2.5,-0.05)*CFrame.Angles(0,0,0), "SpecialMesh", Vector3.new(1, 1, 1), "Sphere", id, bckup) staff3.Mesh.MeshType = "Sphere"
local staff4, staff4w = create("Part", Model2, Vector3.new(0.75, 1, 0.6), CFrame.new(0, 0, 0), false, MainColor2, false, true, 0, 0, "Custom", true, staff, CFrame.new(0,2.5,0)*CFrame.Angles(0,0,0), "SpecialMesh", Vector3.new(1, 1, 1), "Sphere", id, bckup) staff4.Mesh.MeshType = "Sphere"
local staff5, staff5w = create("Part", Model2, Vector3.new(0.65, 0.85, 0.55), CFrame.new(0, 0, 0), false, MainColor3, false, true, 0, 0, "Custom", true, staff4, CFrame.new(0,0,-0.05)*CFrame.Angles(0,0,0), "SpecialMesh", Vector3.new(1, 1, 1), "Sphere", id, bckup) staff5.Mesh.MeshType = "Sphere"

local open = false

function jawso()
open = true
for i = 0, 1, 0.2 do
staff2w.C0 = CFrame.new(0, 0, -0.1*i) * CFrame.Angles(math.rad(22.5*i),0,0)
staff3w.C0 = CFrame.new(0, 0, 0.1*i) * CFrame.Angles(math.rad(-22.5*i),0,0)
wait()
end
end
local s = Instance.new("Sound",staff2)
s.Volume = 0.5
s.Pitch = 0.75
s.SoundId = ids.shoot
function jawsc()
open = false
for i = 0, 1, 0.2 do
staff2w.C0 = CFrame.new(0, 0, -0.1+(0.1*i)) * CFrame.Angles(math.rad(22.5-22.5*i),0,0)
staff3w.C0 = CFrame.new(0, 0, 0.1-(0.1*i)) * CFrame.Angles(math.rad(-22.5+22.5*i),0,0)
wait()
end
end

function fiah(pos)
local missile = Instance.new("Part",workspace)
	missile.CFrame = Torso.CFrame*CFrame.new(-2, 0, -7)
	missile.Size = Vector3.new(0.2,0.2,0.2)
	missile.Velocity = pos * 200
	missile.BrickColor = BrickColor.new("Bright yellow")
	missile.BottomSurface = 0
	missile.TopSurface = 0
	missile.Name = "Shot"
	missile.Elasticity = 0
	missile.Reflectance = 0
	missile.Friction = 1
	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,220,0)
	force.Parent = missile
end

if script.Parent.className ~= "HopperBin" then
	pcall(function() Me.Backpack.Staff:remove() end)
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Staff"
    script.Parent = h
end
local bin = script.Parent
function onSelected(mouse)
RAW.Part1 = Rarm
for i = 0, 1, 0.1 do
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(90*i),0,0)
staffw.C0 = CFrame.new()*CFrame.Angles(math.rad(90*i),0,0)
wait()
end
    mouse.Button1Down:connect(function()
	jawso()
	while open == true do
	s:play()
	local targetPos = mouse.hit.p
	local lookAt = (targetPos - Head.Position).unit
	fiah(lookAt())
	wait(math.random(0.75, 1.5))
	end
    end)
	mouse.Button1Up:connect(function()
	jawsc()
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
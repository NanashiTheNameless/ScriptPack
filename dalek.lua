Dalek = "yfc"
local players = game:GetService("Players")
local workspac = game:GetService("Workspace")
wbase = workspac.Base
local me = players:findFirstChild(Dalek)
local char = me.Character
local on = false 
local suc = false 
local select = false 
local ona = false 

function prop(part, parent, sizex, sizey, sizez, color, form, tran, ref, joints, anc, can)
part.Parent = parent
part.formFactor = form
part.Size = Vector3.new(sizex, sizey, sizez)
part.BrickColor = BrickColor.new(color)
part.Transparency = tran
part.Reflectance = ref
part.Anchored = anc
part.CanCollide = can
if joints == true then
part:BreakJoints()
end
end
function weld(weld, parent, part0, part1, c1)
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C1 = c1
end
function mesh(scalex, scaley, scalez, part, Mesh, bevel, type, id)
Mesh.Scale = Vector3.new(scalex, scaley, scalez)
Mesh.Parent = part
if Mesh.className == "BlockMesh" then
Mesh.Bevel = bevel
end
if Mesh.className == "SpecialMesh" then
Mesh.MeshType = type
end
if Mesh.className == "SpecialMesh" and type == "FileMesh" then
Mesh.MeshId = id
end
end
pcall(function() char.Dalek:remove()  end)
local dale = Instance.new("Model", char) 
dale.Name = "Dalek" 

char["Right Arm"].Transparency = 1
char["Left Arm"].Transparency = 1
--http://www.roblox.com/asset/?id=1278979
local base = Instance.new("Part", dale)
prop(base, dale, 1, 1, 1, "Really red", "Custom", 0, 0, true, false, false)
local basem = Instance.new("CylinderMesh") 
mesh(4, 6, 4, base, basem, 0, "", 0)
local basew = Instance.new("Weld") 
weld(basew, base, base, char.Torso, CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0))
local base2 = Instance.new("Part", dale)
prop(base2, dale, 1, 1, 1, "Really red", "Custom", 0, 0, true, false, false)
local base2m = Instance.new("SpecialMesh") 
mesh(4, 4, 4, base2, base2m, 0, "Sphere", 0)
local base2w = Instance.new("Weld") 
weld(base2w, base2, base2, char.Torso, CFrame.new(0, 3, 0) * CFrame.Angles(0, 0, 0))
local base3 = Instance.new("Part", dale)
prop(base3, dale, 1, 1, 1, "Really black", "Custom", 0, 0, true, false, false)
local base3m = Instance.new("CylinderMesh") 
mesh(0.5, 3, 0.5, base3, base3m, 0, "", 0)
local base3w = Instance.new("Weld") 
weld(base3w, base3, base3, char.Torso, CFrame.new(0, 2.75, -2.5) * CFrame.Angles(1.55, 0, 0))
local base4 = Instance.new("Part", dale)
prop(base4, dale, 1, 1, 1, "Really blue", "Custom", 0, 0, true, false, false)
local base4m = Instance.new("CylinderMesh") 
mesh(0.45, 0.15, 0.45, base4, base4m, 0, "", 0)
local base4w = Instance.new("Weld") 
weld(base4w, base4, base4, base3, CFrame.new(0, -1.45, 0) * CFrame.Angles(0, 0, 0))
local base5 = Instance.new("Part", dale)
prop(base5, dale, 1, 1, 1, "Really black", "Custom", 0, 0, true, false, false)
local base5m = Instance.new("CylinderMesh") 
mesh(0.25, 3, 0.25, base5, base5m, 0, "", 0)
local base5w = Instance.new("Weld") 
weld(base5w, base5, base5, char.Torso, CFrame.new(1, 0.75, -2.5) * CFrame.Angles(1.55, 0, 0))
local base6 = Instance.new("Part", dale)
prop(base6, dale, 1, 1, 1, "Really black", "Custom", 0, 0, true, false, false)
local base6m = Instance.new("SpecialMesh") 
mesh(0.5, 1, 0.5, base6, base6m, 0, "FileMesh", "http://www.roblox.com/asset/?id=1278979")
local base6w = Instance.new("Weld") 
weld(base6w, base6, base6, base5, CFrame.new(0, -1.45, 0) * CFrame.Angles(0, 0, 0))
local base7 = Instance.new("Part", dale)
prop(base7, dale, 1, 1, 1, "Mid stone grey", "Custom", 0, 0, true, false, false)
local base7m = Instance.new("SpecialMesh") 
mesh(0.4, 1.25, 0.4, base7, base7m, 0, "FileMesh", "http://www.roblox.com/asset/?id=22963494")
local base7w = Instance.new("Weld") 
weld(base7w, base7, base7, char.Torso, CFrame.new(-1, 0.75, -2.25) * CFrame.Angles(-1.6, 0, 0))
local base8 = Instance.new("Part", dale)
prop(base8, dale, 1, 1, 1, "Mid stone grey", "Custom", 1, 0, true, false, false)
local base8m = Instance.new("SpecialMesh") 
mesh(0.4, 1.25, 0.4, base8, base8m, 0, "FileMesh", "http://www.roblox.com/asset/?id=22963494")
local base8w = Instance.new("Weld") 
weld(base8w, base8, base8, char.Torso, CFrame.new(-1, 0.75, -3.75) * CFrame.Angles(-1.6, 0, 0))

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", me.Backpack)
    h.Name = "Lazor"
    script.Parent = h
end

local weld = Instance.new("Weld") 
local bin = script.Parent

function fire(to, damage) 
coroutine.resume(coroutine.create(function()
local pos1 = base8.Position 
local pos2 = to 
local mag = (pos1 - pos2).magnitude 
local shot = Instance.new("Part", workspace) 
shot.BrickColor = BrickColor.new("Light blue") 
shot.Size = Vector3.new(1, 1, 1) 
shot.Anchored = true 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local shotm = Instance.new("BlockMesh", shot) 
shotm.Scale = Vector3.new(0.25, 0.25, mag) 
damage:BreakJoints() 
if damage.Name ~= "Base" then
damage.Anchored = false 
end 
wait(0.15) 
shot:remove() 
end))
end 

function onSelected(mouse)
select = true 
mouse.Button1Down:connect(function()
on = true 
for i = 0, math.huge, 0.01 do 
if on == true then 
fire(mouse.hit.p, mouse.Target) 
end 
wait() 
end 
end)
mouse.Button1Up:connect(function()
on = false 
end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
ona = true 
for i = 0, math.huge, 0.1 do 
if ona == true then 
for _,v in pairs(players:GetChildren())  do 
if v.Name ~= Dalek then 
if (v.Character.Torso.Position - char.Torso.Position).magnitude < 15 then 
v.Character.WalkSpeed = 5 
end 
end 
end 
end 
wait() 
end 
	end 
	        if key == "c" then 
for i = 0, 1, 0.1 do 
local tool = Instance.new("Tool", workspace) 
tool.Name = "Cookie" 
local part = Instance.new("Part", tool) 
part.Size = Vector3.new(1, 1, 1) 
part.Name = "Handle" 
part.BrickColor = BrickColor.new("Reddish brown") 
part.CFrame = char.Torso.CFrame + Vector3.new(0, 5, 2) 
local partm = Instance.new("SpecialMesh", part) 
partm.MeshType = "Sphere" 
partm.Scale = Vector3.new(1, 0.25, 1) 
wait() 
end 
wait() 
end 
if key == "e" and suc == false then 
suc = true 
for i = 1, 5 do 
base6m.Scale = base6m.Scale + Vector3.new(0.15, 0, 0.15) 
wait() 
end 

for i = 0, math.huge, 0.1 do 
if suc == true then 
for _,v in pairs(players:GetChildren())  do 
if v.Name ~= Dalek then 
if (v.Character.Torso.Position - base6.Position).magnitude < 2 then 
local weld = Instance.new("Weld") 
weld.Parent = v.Character 
weld.Part0 = v.Character.Head 
weld.Part1 = base6 
weld.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(1.55, 0, 0) 
end 
end 
end 
end 
wait() 
end 
end 
    end)
	    mouse.KeyUp:connect(function(key)
        if key == "q" then 
ona = false 
for _,v in pairs(players:GetChildren())  do 
v.Character.WalkSpeed = 16 
end 
	end 
        if key == "e" then 
weld.Part1 = nil 
for i = 1, 5 do 
base6m.Scale = base6m.Scale - Vector3.new(0.15, 0, 0.15) 
wait() 
end 
suc = false 
	end 
    end)
end

function onDesel(mouse) 
select = false 
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

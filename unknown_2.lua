--[[The Actual ScriptBuilder]]--
script.Parent = nil
game.Players.PlayerAdded:connect(function(plyr)
script.Parent = nil 
for _,a in pairs(admin) do 
if plyr.Name == a then 
plyr.Chatted:connect(function(msg,recipient)
local cmd = msg:lower()
local code = msg
	local gui3 = game.Players[plyr.Name].PlayerGui.Screated.MainFrame
	if string.sub(cmd,1,4) == "get/"  then
		if string.sub(cmd,5) then
			if string.find(cmd,"gun") then
			gui3.ScriptText.Text = "Got gun"
			gui3.Visible = true
			pcall(function()
coroutine.resume(coroutine.create(function() 
local Me = plyr 
local char = Me.Character 
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"] 
local Attkin = true 
local ammomag = 500 
local mainDamage = 35 
local reloadtime = 0.5 
local ammo = 0 
local click = 0
local anim = false 

function prop(part, color, Parent, x, y, z) 
pp = part 
pp.Size = Vector3.new(x, y, z)
pp.BrickColor = BrickColor.new(color) 
pp.Parent = Parent 
pp.CanCollide = false 
pp:BreakJoints() 
end 

function weld(parent, a, b, d) 
local ww = Instance.new("Weld") 
ww.Parent = parent 
ww.Part0 = a 
ww.Part1 = b 
ww.C1 = d 
end 

function meshp(part, x, y, z) 
local mesh = Instance.new("CylinderMesh") 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z)
end 

function mesh(part, type, x, y, z) 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = type 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z)
end 

pcall(function() char[":P"]:remove() end)
pcall(function() char.Guns:remove() end) 
local Model = Instance.new("Model",char)
Model.Name = ":P" 
local modl = Instance.new("Model") 
modl.Parent = char 
modl.Name = "Guns" 

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

local handlea = Instance.new("Part") 
prop(handlea, "Reddish brown", modl, 1, 1, 1) 
mesh(handlea, "Brick", 0.25, 0.35, 0.75) 
weld(handlea, handlea, char.Torso, CFrame.new(1.1, -1.5, 0) * CFrame.Angles(0, 0, 0)) 
local handleac = Instance.new("Part") 
prop(handleac, "Mid stone grey", modl, 1, 1, 1) 
mesh(handleac, "Brick", 0.25, 1.25, 0.25) 
weld(handleac, handleac, handlea, CFrame.new(0, -0.5, -0.5) * CFrame.Angles(0, 0, 0)) 
local handleaf = Instance.new("Part") 
prop(handleaf, "Mid stone grey", modl, 1, 1, 1) 
mesh(handleaf, "Brick", 0.15, 0.15, 0.15) 
weld(handleaf, handleaf, handlea, CFrame.new(0, -1, -0.5) * CFrame.Angles(0, 0, 0)) 
local handlead = Instance.new("Part") 
prop(handlead, "Mid stone grey", modl, 1, 1, 1) 
mesh(handlead, "Brick", 0.05, 0.15, 0.05) 
weld(handlead, handlead, handlea, CFrame.new(0, -0.25, -0.1) * CFrame.Angles(0, 0, 0)) 
local handlead = Instance.new("Part") 
prop(handlead, "Mid stone grey", modl, 1, 1, 1) 
mesh(handlead, "Brick", 0.05, 0.15, 0.05) 
weld(handlead, handlead, handlea, CFrame.new(0, -0.4, -0.14) * CFrame.Angles(0.5, 0, 0)) 
local handlead = Instance.new("Part") 
prop(handlead, "Mid stone grey", modl, 1, 1, 1) 
mesh(handlead, "Brick", 0.05, 0.05, 0.25) 
weld(handlead, handlead, handlea, CFrame.new(0, -0.46, -0.29) * CFrame.Angles(0, 0, 0)) 
local handlead = Instance.new("Part") 
prop(handlead, "Mid stone grey", modl, 1, 1, 1) 
mesh(handlead, "Brick", 0.05, 0.05, 0.15) 
weld(handlead, handlead, handlea, CFrame.new(0, -0.25, -0.3) * CFrame.Angles(0.5, 0, 0)) 
local handleb = Instance.new("Part") 
prop(handleb, "Reddish brown", modl, 1, 1, 1) 
mesh(handleb, "Brick", 0.25, 0.35, 0.75) 
weld(handleb, handleb, char.Torso, CFrame.new(-1.1, -1.5, 0) * CFrame.Angles(0, 0, 0)) 
local handlebc = Instance.new("Part") 
prop(handlebc, "Mid stone grey", modl, 1, 1, 1) 
mesh(handlebc, "Brick", 0.25, 1.25, 0.25) 
weld(handlebc, handlebc, handleb, CFrame.new(0, -0.5, -0.5) * CFrame.Angles(0, 0, 0)) 
local handlebf = Instance.new("Part") 
prop(handlebf, "Mid stone grey", modl, 1, 1, 1) 
mesh(handlebf, "Brick", 0.15, 0.15, 0.15) 
weld(handlebf, handlebf, handleb, CFrame.new(0, -1, -0.5) * CFrame.Angles(0, 0, 0)) 
local handlebd = Instance.new("Part") 
prop(handlebd, "Mid stone grey", modl, 1, 1, 1) 
mesh(handlebd, "Brick", 0.05, 0.15, 0.05) 
weld(handlebd, handlebd, handleb, CFrame.new(0, -0.25, -0.1) * CFrame.Angles(0, 0, 0)) 
local handlebd = Instance.new("Part") 
prop(handlebd, "Mid stone grey", modl, 1, 1, 1) 
mesh(handlebd, "Brick", 0.05, 0.15, 0.05) 
weld(handlebd, handlebd, handleb, CFrame.new(0, -0.4, -0.14) * CFrame.Angles(0.5, 0, 0)) 
local handlebd = Instance.new("Part") 
prop(handlebd, "Mid stone grey", modl, 1, 1, 1) 
mesh(handlebd, "Brick", 0.05, 0.05, 0.25) 
weld(handlebd, handlebd, handleb, CFrame.new(0, -0.46, -0.29) * CFrame.Angles(0, 0, 0)) 
local handlebd = Instance.new("Part") 
prop(handlebd, "Mid stone grey", modl, 1, 1, 1) 
mesh(handlebd, "Brick", 0.05, 0.05, 0.15) 
weld(handlebd, handlebd, handleb, CFrame.new(0, -0.25, -0.3) * CFrame.Angles(0.5, 0, 0)) 

local handaw = handlea.Weld 
local handbw = handleb.Weld 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Dual gun" 
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 

handaw.Part1 = Rarm 
handbw.Part1 = Larm 
handaw.C1 = CFrame.new(0, -1.1, 0) * CFrame.Angles(0, 0, 0) 
handbw.C1 = CFrame.new(0, -1.1, 0) * CFrame.Angles(0, 0, 0) 

for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90*i), 0, 0) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90*i), 0, 0) 
wait() 
end 
Attkin = false 
    mouse.Button1Down:connect(function()
if Attkin == false and anim == false then 
if ammo > 0 then 
ammo = ammo - 1 
Attkin = true 
local pos1 = handleaf.Position 
local pos2 = mouse.hit.p 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.formFactor = "Custom" 
shot.Anchored = true 
shot.BrickColor = BrickColor.new("Bright yellow") 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local mesh = Instance.new("BlockMesh") 
mesh.Parent = shot 
mesh.Scale = Vector3.new(0.1, 0.1, (pos1 - pos2).magnitude) 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character.Humanoid:TakeDamage(mainDamage)
end 
end 
wait(0.5) 
shot:remove() 
click = 1 
Attkin = false 
end 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "r" then 
if Attkin == false and ammomag > 0 then 
if ammo == 0 then 
Attkin = true 
ammomag = ammomag - 10 
ammo = 10
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-90*i), 0, 0) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-90*i), 0, 0) 
wait() 
end 
wait(reloadtime/2) 
local mag1 = handlea:clone() 
mag1.Parent = workspace 
mag1.CanCollide = true 
mag1:BreakJoints() 
local mag2 = handleb:clone() 
mag2.Parent = workspace 
mag2.CanCollide = true 
mag2:BreakJoints() 
wait(reloadtime/2) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90*i), 0, 0) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90*i), 0, 0) 
wait() 
end 
Attkin = false 
end 
end 
	end 
        if key == "g" then 
if Attkin == false then 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
bin.Parent = v.Backpack 
prts.Parent = v.Character 
Model.Parent = v.Character 
end 
end 
Attkin = false  
end 
	end 
        if key == "q" then 
if Attkin == false and ammo == 10 then 
if anim == false then 
Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-0*i), math.rad(75*i), 0) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-0*i), math.rad(-75*i), 0) 
wait() 
end 
local pos1 = handleaf.Position 
local pos2 = mouse.hit.p 
local pos3 = handlebf.Position 
local pos4 = mouse.hit.p 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.Anchored = true 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("Bright red") 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local shot2 = Instance.new("Part") 
shot2.Parent = workspace 
shot2.Anchored = true 
shot2.formFactor = "Custom" 
shot2.BrickColor = BrickColor.new("Bright red") 
shot2.Size = Vector3.new(1, 1, 1) 
shot2.CanCollide = false 
shot2.CFrame = CFrame.new((pos3 + pos4) / 2, pos4) 
local mesh = Instance.new("BlockMesh") 
mesh.Parent = shot 
mesh.Scale = Vector3.new(0.1, 0.1, (pos1 - pos2).magnitude) 
local mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = shot2 
mesh2.Scale = Vector3.new(0.1, 0.1, (pos3 - pos4).magnitude) 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character.Humanoid:TakeDamage(mainDamage*3)
end 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-0*i), math.rad(75-75*i), 0) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-0*i), math.rad(-75+75*i), 0) 
wait() 
end 
ammo = ammo - 10 
shot:remove() 
shot2:remove() 
Attkin = false 
end 
end 
end 
        if key == "t" then 
if Attkin == false and ammo == 10 then 
Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-0*i), math.rad(75*i), 0) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-0*i), math.rad(-75*i), 0) 
wait() 
end 
local pos1 = handleaf.Position 
local pos2 = mouse.hit.p 
local pos3 = handlebf.Position 
local pos4 = mouse.hit.p 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.Anchored = true 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("Bright yellow") 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local shot2 = Instance.new("Part") 
shot2.Parent = workspace 
shot2.Anchored = true 
shot2.formFactor = "Custom" 
shot2.BrickColor = BrickColor.new("Bright yellow") 
shot2.Size = Vector3.new(1, 1, 1) 
shot2.CanCollide = false 
shot2.CFrame = CFrame.new((pos3 + pos4) / 2, pos4) 
local mesh = Instance.new("BlockMesh") 
mesh.Parent = shot 
mesh.Scale = Vector3.new(0.1, 0.1, (pos1 - pos2).magnitude) 
local mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = shot2 
mesh2.Scale = Vector3.new(0.1, 0.1, (pos3 - pos4).magnitude) 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character.Humanoid:TakeDamage(mainDamage/2)
end 
end 
wait(0.5) 
shot:remove() 
shot2:remove() 
local pos1 = handleaf.Position 
local pos2 = mouse.hit.p 
local pos3 = handlebf.Position 
local pos4 = mouse.hit.p 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.Anchored = true 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("Bright yellow") 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local shot2 = Instance.new("Part") 
shot2.Parent = workspace 
shot2.Anchored = true 
shot2.formFactor = "Custom" 
shot2.BrickColor = BrickColor.new("Bright yellow") 
shot2.Size = Vector3.new(1, 1, 1) 
shot2.CanCollide = false 
shot2.CFrame = CFrame.new((pos3 + pos4) / 2, pos4) 
local mesh = Instance.new("BlockMesh") 
mesh.Parent = shot 
mesh.Scale = Vector3.new(0.1, 0.1, (pos1 - pos2).magnitude) 
local mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = shot2 
mesh2.Scale = Vector3.new(0.1, 0.1, (pos3 - pos4).magnitude) 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character.Humanoid:TakeDamage(mainDamage/2)
end 
end 
wait(0.5) 
shot:remove() 
shot2:remove() 
local pos1 = handleaf.Position 
local pos2 = mouse.hit.p 
local pos3 = handlebf.Position 
local pos4 = mouse.hit.p 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.Anchored = true 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("Bright yellow") 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local shot2 = Instance.new("Part") 
shot2.Parent = workspace 
shot2.Anchored = true 
shot2.formFactor = "Custom" 
shot2.BrickColor = BrickColor.new("Bright yellow") 
shot2.Size = Vector3.new(1, 1, 1) 
shot2.CanCollide = false 
shot2.CFrame = CFrame.new((pos3 + pos4) / 2, pos4) 
local mesh = Instance.new("BlockMesh") 
mesh.Parent = shot 
mesh.Scale = Vector3.new(0.1, 0.1, (pos1 - pos2).magnitude) 
local mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = shot2 
mesh2.Scale = Vector3.new(0.1, 0.1, (pos3 - pos4).magnitude) 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character.Humanoid:TakeDamage(mainDamage/2)
end 
end 
wait(0.5) 
shot:remove() 
shot2:remove() 
local pos1 = handleaf.Position 
local pos2 = mouse.hit.p 
local pos3 = handlebf.Position 
local pos4 = mouse.hit.p 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.Anchored = true 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("Bright yellow") 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local shot2 = Instance.new("Part") 
shot2.Parent = workspace 
shot2.Anchored = true 
shot2.formFactor = "Custom" 
shot2.BrickColor = BrickColor.new("Bright yellow") 
shot2.Size = Vector3.new(1, 1, 1) 
shot2.CanCollide = false 
shot2.CFrame = CFrame.new((pos3 + pos4) / 2, pos4) 
local mesh = Instance.new("BlockMesh") 
mesh.Parent = shot 
mesh.Scale = Vector3.new(0.1, 0.1, (pos1 - pos2).magnitude) 
local mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = shot2 
mesh2.Scale = Vector3.new(0.1, 0.1, (pos3 - pos4).magnitude) 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character.Humanoid:TakeDamage(mainDamage/2)
end 
end 
wait(0.5) 
shot:remove() 
shot2:remove() 
local pos1 = handleaf.Position 
local pos2 = mouse.hit.p 
local pos3 = handlebf.Position 
local pos4 = mouse.hit.p 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.Anchored = true 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("Bright yellow") 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local shot2 = Instance.new("Part") 
shot2.Parent = workspace 
shot2.Anchored = true 
shot2.formFactor = "Custom" 
shot2.BrickColor = BrickColor.new("Bright yellow") 
shot2.Size = Vector3.new(1, 1, 1) 
shot2.CanCollide = false 
shot2.CFrame = CFrame.new((pos3 + pos4) / 2, pos4) 
local mesh = Instance.new("BlockMesh") 
mesh.Parent = shot 
mesh.Scale = Vector3.new(0.1, 0.1, (pos1 - pos2).magnitude) 
local mesh2 = Instance.new("BlockMesh") 
mesh2.Parent = shot2 
mesh2.Scale = Vector3.new(0.1, 0.1, (pos3 - pos4).magnitude) 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character.Humanoid:TakeDamage(mainDamage/2)
end 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-0*i), math.rad(75-75*i), 0) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-0*i), math.rad(-75+75*i), 0) 
wait() 
end 
wait(0.25) 
shot:remove() 
shot2:remove() 
ammo = ammo - 10 
Attkin = false 
end 
	end 
        if key == "e" then 
if ammo > 0 and Attkin == false then 
if anim == false then 
ammo = ammo - 1 
Attkin = true 
local pos1 = handlebf.Position 
local pos2 = mouse.hit.p 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.Anchored = true 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("Bright red") 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local mesh = Instance.new("BlockMesh") 
mesh.Parent = shot 
mesh.Scale = Vector3.new(0.1, 0.1, (pos1 - pos2).magnitude) 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character.Humanoid:TakeDamage(mainDamage)
end 
end 
local ff = Instance.new("ForceField", char) 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2
wait(0.5) 
shot:remove() 
ff:remove() 
click = 0 
Attkin = false 
end 
end 
	end 
    end)
end

function onDesel(mouse) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-90*i), 0, 0) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90-90*i), 0, 0) 
wait() 
end 
LAW.Part1 = nil 
RAW.Part1 = nil 
handaw.Part1 = Torso 
handbw.Part1 = Torso 
handaw.C1 = CFrame.new(1.1, -1.5, 0) * CFrame.Angles(0, 0, 0) 
handbw.C1 = CFrame.new(-1.1, -1.5, 0) * CFrame.Angles(0, 0, 0) 
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
end))
			end)
			wait(2)
			gui3.Visible = false
			end
		end
	end
--[[Connection Lines end]]--
end) 
end 
end 
while wait(.1) do
	pcall(function()
		if game.Lighting:findFirstChild(plyr.Name) == nil then
			game.Workspace[plyr.Name].Archivable = true
			game.Workspace[plyr.Name]:Clone().Parent = game.Lighting
		end
	end)
end
end)


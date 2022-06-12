local Me = game.Players.LocalPlayer 
local char = Me.Character 
local pg = Me:findFirstChild("PlayerGui") 

local sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
local tx = Instance.new("TextLabel") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Ammo Chart" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 0, 0, 500)
tx.Size = UDim2.new(0, 100, 0, 25) 
tx.Text = "Ammo: " 

local on = false 
local ammo = 500 

local newweld = Instance.new("Weld")
newweld.Parent = char.Torso
newweld.Part0 = char.Torso
newweld.Part1 = char["Right Arm"]
newweld.C0 = CFrame.new(1.5,0,-0.5)*CFrame.Angles(math.rad(45),math.rad(5),0)
local newweld1 = Instance.new("Weld")
newweld1.Parent = char.Torso
newweld1.Part0 = char.Torso
newweld1.Part1 = char["Left Arm"]
newweld1.C0 = CFrame.new(-0.5,0,-1)*CFrame.Angles(math.rad(60),math.rad(10),0.5)
chain1 = Instance.new("Part") 
chain1.Parent = char 
chain1.formFactor = "Custom" 
chain1.Size = Vector3.new(3,3,2)  -- this works? :o
chain1.BrickColor = BrickColor.new("Black") 
chain1:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = chain1 
mesh.MeshType = 'FileMesh'
mesh.MeshId = "http://www.roblox.com/asset/?id=2806162"
mesh.Scale = Vector3.new(1.5,1.5,1)
weld = Instance.new("Weld") 
weld.Parent = chain1 
weld.Part0 = char["Right Arm"] 
weld.Part1 = chain1 
weld.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(-0.4, 0.8, 0) 
chain1.CanCollide = true
-------
chain2 = Instance.new("Part") 
chain2.Parent = char 
chain2.Transparency = 1 
chain2.formFactor = "Custom" 
chain2.Size = Vector3.new(1,1,1)  -- this works? :o
chain2.BrickColor = BrickColor.new("Black") 
chain2:BreakJoints() 
weld2 = Instance.new("Weld") 
weld2.Parent = chain2 
weld2.Part0 = chain1 
weld2.Part1 = chain2 
weld2.C0 = CFrame.new(0.25, -0.5, -2.5) * CFrame.Angles(0, 0, 0) 
chain2.CanCollide = false 
------- 
grip1 = Instance.new("Part") 
grip1.Parent = char 
grip1.formFactor = "Custom" 
grip1.Size = Vector3.new(3,3,2)  -- this works? :o
grip1.BrickColor = BrickColor.new("Black") 
grip1:BreakJoints() 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = grip1 
mesh.MeshType = 'FileMesh'
mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
mesh.Scale = Vector3.new(1,1,1)
weld = Instance.new("Weld") 
weld.Parent = grip1 
weld.Part0 = char["Left Arm"] 
weld.Part1 = grip1 
weld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(-0.4, 0.8, 0) 
grip1.CanCollide = true

local decoy = Instance.new("Model", char) 
decoy.Name = "DECOY" 
local decoy2 = Instance.new("Model", decoy) 
decoy2.Name = "DECOY" 
local decoy3 = Instance.new("Model", decoy2) 
decoy3.Name = "DECOY" 
local decoy4 = Instance.new("Model", decoy3) 
decoy4.Name = "DECOY" 
local decoy5 = Instance.new("Model", decoy4) 
decoy5.Name = "DECOY" 
local decoy6 = Instance.new("Model", decoy5) 
decoy6.Name = "DECOY" 
local decoy7 = Instance.new("Model", decoy6) 
decoy7.Name = "DECOY" 
local decoy8 = Instance.new("Model", decoy7) 
decoy8.Name = "DECOY" 
local decoy9 = Instance.new("Model", decoy8) 
decoy9.Name = "DECOY" 

local parta = Instance.new("Part") 
parta.Parent = decoy9 
parta.Anchored = true 
parta.Name = "Ammo" 
parta.CanCollide = false 
parta.Transparency = 0
parta.formFactor = "Custom" 
parta.Size = Vector3.new(4, 4, 4) 
parta.BrickColor = BrickColor.new("Bright green") 
parta.CFrame = CFrame.new(math.random(-45, 45), 2, math.random(-45, 45)) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "ChainGun"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
sc.Parent = pg 
tx.Text = "Ammo: " ..ammo.. "!" 
    mouse.Button1Down:connect(function()
	on = true 
	for i = 0, 1, 0.1 do 
	newweld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(3.5*i)) 
	newweld1.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(3.5*i)) 
	wait() 
	end 
wait(1) 
for i = 1, 100 do 
if on == true and ammo > 0 then 
ammo = ammo - 1 
tx.Text = "Ammo: " ..ammo.. "!" 
local P = Instance.new("Part") 
local M = Instance.new("BlockMesh")
local Place0 = chain2.CFrame 
local Place1 = mouse.Hit.p 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1)/2,Place0.p) 
P.Parent = char
P.BrickColor = BrickColor.Yellow()
P.Anchored = true 
P.CanCollide = false 
M.Scale = Vector3.new(0.2,0.2,1)
M.Bevel = 0.11
M.Parent = P
for i = 1,5 do
P2 = P:Clone()
P2.Size = Vector3.new(1,1,10)
P2.Parent = P
P2.CFrame = CFrame.new(Place1.x,Place1.y,Place1.z) * CFrame.fromEulerAnglesXYZ(math.random(1,100),math.random(1,100),math.random(1,100))
end
mouse.Target:BreakJoints()
if mouse.Target.Name ~= "Base" then 
mouse.Target.Anchored = false 
end 
if mouse.Target.Parent:findFirstChild("Humanoid") ~= nil then 
mouse.Target.Parent:BreakJoints() 
end 
if mouse.Target.Parent.Parent:findFirstChild("Humanoid") ~= nil then 
mouse.Target.Parent.Parent:BreakJoints() 
end 
if mouse.Target.Parent.Parent:findFirstChild("Humanoid") ~= nil then 
mouse.Target.Parent.Parent:BreakJoints() 
end 
wait()
pcall(function() P:remove() end)
end
end 
    end)
	mouse.Button1Up:connect(function()
	on = false 
	for i = 0, 1, 0.1 do 
	newweld.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(-3.5*i)) 
	newweld1.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(-3.5*i)) 
	wait() 
	end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
		print('down') 
	def = true 
	for i = 0, 1, 0.1 do 
	newweld.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-25*i),math.rad(0*i),0) 
	newweld1.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-25*i),math.rad(0*i),0) 
	wait() 
	end 
local bv = Instance.new("BodyAngularVelocity")
bv.Parent = char.Torso 
bv.Name = "Chainbv" 
bv.angularvelocity = Vector3.new(0, 35, 0) 
bv.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local bg = Instance.new("BodyGyro")
bg.Parent = char.Torso 
bg.Name = "Chainbg" 
bg.maxTorque = Vector3.new(1000, 1000, 1000) 
for i = 1, 9999999 do 
if def == true then 
for _, v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - chain1.Position).magnitude < 4 then 
if v.Character.Name ~= char.Name then 
v.Character.Humanoid:TakeDamage(5) 
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
		print('up') 
	def = false 
pcall(function() char.Torso.Chainbv:remove() end) 
pcall(function() char.Torso.Chainbg:remove() end) 
	for i = 0, 1, 0.1 do 
	newweld.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-25+25*i),math.rad(0*i),0) 
	newweld1.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-25+25*i),math.rad(0*i),0) 
	wait() 
	end 
	end 
    end)
end

function onDesel(mouse)
sc.Parent = nil 
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

while bin.Selected do 
if ammo < 500 and (char.Torso.Position - parta.Position).magnitude < 2 then 
dif = 500 - ammo 
ammo = ammo + dif 
tx.Text = "Ammo: " ..ammo.. "!" 
end 
wait() 
end 

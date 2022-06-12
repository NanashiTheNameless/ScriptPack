Player = game.Players.acb227
Jumping = false

function RemoveStuff(Player)
if not Player.Character:findFirstChild("Hood") then
for i,v in pairs(Player.Character:getChildren()) do
if v.className == "Hat" or v.className == "Pants" or v.className == "Shirt" or v.className == "CharacterMesh" then
v:remove()
end
end
end
end

function CreateMesh(Player)
if not Player.Character:findFirstChild("Hood") then
Mesh = Instance.new("CharacterMesh")
Mesh.BodyPart = "LeftLeg"
Mesh.MeshId = 27111857
Mesh.Name = "LeftLegMesh"
Mesh.Parent = Player.Character
Mesh = Instance.new("CharacterMesh")
Mesh.BodyPart = "RightLeg"
Mesh.MeshId = 27111882
Mesh.Name = "RightLegMesh"
Mesh.Parent = Player.Character
Mesh = Instance.new("CharacterMesh")
Mesh.BodyPart = "LeftArm"
Mesh.MeshId = 27111419
Mesh.Name = "LeftArmMesh"
Mesh.Parent = Player.Character
Mesh = Instance.new("CharacterMesh")
Mesh.BodyPart = "RightArm"
Mesh.MeshId = 27111864
Mesh.Name = "RightArmMesh"
Mesh.Parent = Player.Character
Mesh = Instance.new("CharacterMesh")
Mesh.BodyPart = "Torso"
Mesh.MeshId = 27111894
Mesh.Name = "Torso"
Mesh.Parent = Player.Character
end
end

function CreateSuit(Player)
RemoveStuff(Player)
CreateMesh(Player)
if not Player.Character:findFirstChild("Hood") then
Hood = Instance.new("Part")
Hood.Name = "Hood"
Hood.Size = Vector3.new(0,0,0)
Hood.CFrame = CFrame.new(0,0,0)
Hood.BrickColor = BrickColor.new("Sand red")
Hood.Parent = Player.Character
Mesh = Instance.new("SpecialMesh")
Mesh.Scale = Vector3.new(1.15,1.15,1.15)
Mesh.MeshId = "http://www.roblox.com/asset/?id=16952952"
Mesh.TextureId = ""
Mesh.Parent = Hood
Weld = Instance.new("Weld")
Weld.Parent = Hood
Weld.Part0 = Hood
Weld.Part1 = Player.Character["Head"]
Pants = Instance.new("Pants")
Pants.PantsTemplate = "http://www.roblox.com/asset/?id=30721540"
Pants.Parent = Player.Character
Shirt = Instance.new("Shirt")
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=30707207"
Shirt.Parent = Player.Character
end
end

function SuperJump()
if Jumping == false then
Jumping = true
local thrust = Instance.new("BodyVelocity")
thrust.Name = "Thrust"
thrust.Parent = Player.Character.PrimaryPart
thrust.velocity = Vector3.new(0,50,0)
thrust.maxForce = Vector3.new(0,2e+050,0) 
else
Player.Character.PrimaryPart:findFirstChild("Thrust"):remove()
Jumping = false
end
end

if script.Parent.className ~= "HopperBin" then
wait()
Tool = Instance.new("HopperBin")
Tool.Name = "Daggers"
script.Parent = Tool
wait()
Tool.Parent = Player.Backpack
wait(0.01)
Bin = script.Parent
Player = Bin.Parent.Parent
rarm = Player.Character["Right Arm"] 
larm = Player.Character["Left Arm"] 

--[[Acorbatics Stuff]]--
local glideg = Instance.new("BodyGyro") 
local glidev = Instance.new("BodyVelocity") 
--[[:D]]--

function KD(key, mouse) 

if key ~= nil then 
key:lower() 
-- 
if key == "q" then 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
left.C1 = CFrame.new(1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait(.5) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
end 
if (key == "e") then
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
wait() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
wait(.5) 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
end 
if (key == "r") then 
Hum = Player.Character:findFirstChild("Humanoid")
Hum.WalkSpeed = 50
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
wait() 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
wait() 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
wait() 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
wait() 
left.C1 = CFrame.new(1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
wait(.5) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
wait() 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15))
wait() 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
wait() 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
Hum.WalkSpeed = 16
end 
if (key == "t") then 
SuperJump()
end 
end 
end 
end 

Bin.Deselected:connect(function()
BladeOne:remove()
BladeTwo:remove()
Val:remove()
lns.Parent = nil
rns.Parent = nil
rs.Part1 = Player.Character["Right Arm"]
ls.Part1 = Player.Character["Left Arm"]
end 

Bin.Selected:connect(function(mouse)
CreateSuit(Player) 
if Player.Character.Torso:findFirstChild("Right Shoulder") ~= nil then 
rs = Player.Character.Torso["Right Shoulder"] 
rsB = rs.Part1
rs.Part1 = nil 
end 
if Player.Character.Torso:findFirstChild("Left Shoulder") ~= nil then 
ls = Player.Character.Torso["Left Shoulder"] 
lsB = ls.Part1
ls.Part1 = nil 
end 
if not Player.Character:findFirstChild("HasBlades") then
Val = Instance.new("StringValue")
Val.Name = "HasBlades"
Val.Parent = Player.Character
lns = Instance.new("Weld") 
lns.Parent = Player.Character.Torso 
lns.Part0 = lns.Parent 
lns.Part1 = Player.Character["Left Arm"] 
lns.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
rns = Instance.new("Weld") 
rns.Parent = Player.Character.Torso 
rns.Part0 = rns.Parent 
rns.Part1 = Player.Character["Right Arm"] 
rns.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
BladeOne = Instance.new("Part")
BladeOne.Size = Vector3.new(1,4,1)
BladeOne.CFrame = CFrame.new(2,2,0)
BladeOne.Parent = Player.Character
Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.05,.5,0.05)
Mesh.Parent = BladeOne
BladeOneWeld = Instance.new("Weld")
BladeOneWeld.Part0 = Player.Character["Right Arm"]
BladeOneWeld.Part1 = BladeOne
BladeOneWeld.Parent = BladeOne
BladeOneWeld.C1 = CFrame.new(0.3,1,0)
BladeTwo = Instance.new("Part")
BladeTwo.Size = Vector3.new(1,4,1)
BladeTwo.CFrame = CFrame.new(2,2,0)
BladeTwo.Parent = Player.Character
Mesh = Instance.new("BlockMesh")
Mesh.Scale = Vector3.new(0.05,.5,0.05)
Mesh.Parent = BladeTwo
BladeTwoWeld = Instance.new("Weld")
BladeTwoWeld.Part0 = Player.Character["Left Arm"]
BladeTwoWeld.Part1 = BladeTwo
BladeTwoWeld.Parent = BladeTwo
BladeTwoWeld.C1 = CFrame.new(-0.3,1,0)

mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.KeyDown:connect(function(key) KD(key, mouse)

	BladeOne.Touched:connect(function(hit) 
	human = hit.Parent:findFirstChild("Humanoid") 
	if human then 
	if hit.Parent.Name ~= Player.Name then 
	hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(3,7) 
	end 
	end 
	end) 

	BladeTwo.Touched:connect(function(hit) 
	human = hit.Parent:findFirstChild("Humanoid") 
	if human then 
	if hit.Parent.Name ~= Player.Name then 
	hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(3,7) 
	end 
	end 
	end) 

end


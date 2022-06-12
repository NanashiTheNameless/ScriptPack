--[[mediafire]]-- 
Name = "*{Evangon's Sniper}*"
if script.Parent.className ~= "HopperBin" then 
local Bin = Instance.new("HopperBin") 
Bin.Parent = game:GetService("Players").yfc.Backpack 
Bin.Name = "*{Gun}*"
script.Parent = Bin
end 

Player = game:GetService("Players").yfc 
if Player:findFirstChild("Team") then 
Player:findFirstChild("Team").Value = "Sniper" --Detect if Exist 
local s = Instance.new("StringValue") 
s.Parent = Player 
s.Value = "Sniper" ---Choose Your Class 
s.Name = "Team" 
end 

local Bin = script.Parent
 
Model = Instance.new("Model")
Model.Parent = game:service("Players").yfc.Character
Model.Name = Name
local Human = Instance.new("Humanoid")
Human.Parent = Model
Human.MaxHealth = 0
Handle = Instance.new("Part") 
Handle.Parent = Model
Handle.Name = "!<:>!"
Handle.Size = Vector3.new(1,1,5) 
Handle.TopSurface = "Smooth" 
Handle.BottomSurface = "Smooth" 
Handle.formFactor = "Symmetric"
Dec = Instance.new("Part") 
Dec.Parent = Model
Dec.Name = "Head"
Dec.Size = Vector3.new(2,1,2) 
Dec.TopSurface = "Smooth" 
Dec.BottomSurface = "Smooth" 
Dec.formFactor = "Symmetric"
Dec.BrickColor = BrickColor.new("Really blue")
Dec.Transparency = 0.7

Dec2 = Instance.new("Part") 
Dec2.Parent = Model
Dec2.Name = "Torso"
Dec2.Size = Vector3.new(1,1,1)

Dec3 = Instance.new("Part") 
Dec3.Parent = Model
Dec3.Name = "Dec"
Dec3.Size = Vector3.new(1,1,1)
Dec3.BrickColor = BrickColor.new("Really black")
Dec3B = Instance.new("BlockMesh")
Dec3B.Parent = Dec3
Dec3B.Scale = Vector3.new(0.7,1,0.7)

HWzz = Instance.new("Weld")
HWzz.Parent = Handle
HWzz.Part0 = Dec2
HWzz.Part1 = Dec

HWzzz = Instance.new("Weld")
HWzzz.Parent = Handle
HWzzz.Part0 = Dec3
HWzzz.Part1 = Dec2
HWzzz.C0 = CFrame.new(0,2,0)

HWz = Instance.new("Weld")
HWz.Parent = Handle
HWz.Part0 = Dec
HWz.Part1 = Handle
HWz.C0 = CFrame.new(0,-1,0)

HW = Instance.new("Weld")
HW.Parent = Handle
HW.Part0 = Handle
HW.Part1 = game:service("Players").yfc.Character["Torso"]
HW.C0 = CFrame.new(1.5,-0.5,2)
pcall(function() game:service("Players").yfc.Character["Left Arm"]:Remove() end)

showing = false

Bin.Selected:connect(function(mouse)
Bin:Remove()
mouse.Button1Down:connect(function()
if not Reloading then
Reloading = true
Lasso = Instance.new("SelectionPointLasso")
Lasso.Parent = game.Workspace
Lasso.Humanoid = Human
Lasso.Point = mouse.Hit.p
Lasso.Color = BrickColor.new("New Yeller")
LassoP = Dec:Clone()
LassoP.Parent = game.Workspace
LassoP.CFrame = mouse.Hit
LassoP.Size = Vector3.new(1,1,1)
LassoP.Transparency = 1

pcall(function() for _,v in pairs(game.Workspace:children()) do
if v.className == "Model" and v.Name ~= "yfc" then
for _,a in pairs(v:GetChildren()) do
if a.className == "Part" then
if (a.Position - LassoP.Position).magnitude < 4 then
a.Parent.Humanoid.Health = a.Parent.Humanoid.Health - math.random(50,90) end
a.Parent.Humanoid.MaxHealth = 100
end
end
end
end
end)

wait(0.5)
Lasso:Remove()
LassoP:Remove()
wait(10)
Reloading = false
end
end)

mouse.KeyDown:connect(function(key)
if key == "q" then
if showing == false then
showing = true
local Sword = Instance.new("WedgePart")
Sword.Parent = Model
Sword.Size = Vector3.new(1,1,1)
Sword.Name = "Swordz"
local Weld = Instance.new("Weld")
Weld.Parent = Sword
Weld.Part0 = Sword
Weld.Part1 = Handle
Weld.C0 = CFrame.new(0,0,3)
Sword.Touched:connect(function(hit)
hit:BreakJoints()
end)
elseif showing == true then
showing = false
pcall(function() Model:findFirstChild("Swordz"):Remove() end)
end
end
end)

mouse.KeyDown:connect(function(key)
if key == "r" then
game:service("Players")[Me].Character:BreakJoints()
end
end)

end)
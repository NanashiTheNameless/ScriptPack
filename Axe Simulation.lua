--(Axe Simulation V0.1 Loaded) This script is brought to you by peyquinn
--Credit is given to LuisPambid Pambid for the name :)
--Please do not steal so copy to notepad
--if you.steal == true then noob = you end
name = "peyquinn"
if script.Parent.Name == "AxeSim" then
char = nil
local ani = Instance.new("Animation")
ani.AnimationId = "http://www.roblox.com/Asset?ID=32659699"
ani.Name = "Ani"
ani.Parent = script
local sound = Instance.new("Sound")
sound.Name = "Splat"
sound.SoundId = "http://www.roblox.com/asset/?id=1390349"
sound.Volume = 1
sound.Pitch = 1.5
sound.Parent = script.Parent.Handle
local sound2 = Instance.new("Sound")
sound2.Name = "Swoosh"
sound2.SoundId = "rbxasset://sounds/swordslash.wav"
sound2.Volume = 1
sound2.Pitch = 0.7
sound2.Parent = script.Parent.Handle
function Teleport(key,pos)
if key == "q" then
char.Torso.CFrame = CFrame.new(pos + Vector3.new(0,5,0))
end
if key == "r" then
char.Humanoid.WalkSpeed = 30
end
if key == "e" then
char.Humanoid.WalkSpeed = 16
end
end
function hitpart(part)
if part.Parent == nil then return end
if (part.Parent~=char) and (part.Parent:FindFirstChild("Humanoid") ~= nil) and (part.Parent.Name ~= "peyquinn") then
if part.Parent:FindFirstChild("Humanoid").ClassName == "Humanoid" then
part.Parent:FindFirstChild("Humanoid").Health = part.Parent:FindFirstChild("Humanoid").Health - 50
script.Parent.Handle.Splat:Play()
for i = 1,math.random(1,5) do
blood = Instance.new("Part")
blood.formFactor = "Custom"
blood.CFrame = script.Parent.Handle.CFrame
blood.CanCollide = false
blood.Size = Vector3.new(1,1,1)
blood.Velocity = Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
blood.BrickColor = BrickColor.Red()
blood.Transparency = 0.5
blood.Parent = Workspace
game:GetService("Debris"):AddItem(blood,2)
end
end
end
end
function Attack()
play = char.Humanoid:LoadAnimation(ani)
play:Play()
script.Parent.Handle.Swoosh:Play()
end
function EQ(mouse)
char = script.Parent.Parent
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
mouse.KeyDown:connect(function(k) Teleport(k,mouse.Hit.p) end)
end
script.Parent.Handle.Touched:connect(hitpart)
script.Parent.Equipped:connect(EQ)
script.Parent.Activated:connect(Attack)
else
local tool = Instance.new("Tool")
tool.GripForward = Vector3.new(1,0,0)
tool.GripPos = Vector3.new(0,-0.2,1.7)
tool.GripRight = Vector3.new(0,1,0)
tool.GripUp = Vector3.new(0,0,-1)
tool.ToolTip = "Axe Simulation"
tool.Name = "AxeSim"
hand = Instance.new("Part")
hand.FormFactor = "Custom"
hand.Size = Vector3.new(2, 0.8, 4)
hand.Parent = tool
hand.Name = "Handle"
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "FileMesh"
mesh.Scale = Vector3.new(1.7,1.7,1.7)
mesh.TextureId = "http://www.roblox.com/asset/?id=26768350"
mesh.MeshId = "http://www.roblox.com/asset/?id=26768319"
mesh.Parent = hand
script:clone().Parent = tool
tool.Parent = game:GetService("Players"):FindFirstChild(name).StarterGear
end

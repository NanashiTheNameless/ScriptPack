me = game.Players.LocalPlayer
walkspeed = 35
walkspeed2 = 16
WaitTime = 0.01
WaitTime2 = 0.41
WaitTime3 = 3
god = false
fakeff = false -- don't enable if god is enabled. it won't break, they both basically god you, but fakeff has a cooler effect.

h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "VaporGun v3"

sp = game.Players.LocalPlayer.Backpack["VaporGun v3"]


rightarm = me.Character["Right Arm"]
leftarm = me.Character["Left Arm"]

hold = false
using = false
holdkey = false

right = Instance.new("Weld")
right.Parent = me.Character.Torso
right.Part0 = nil
right.Part1 = nil
right.C1 = CFrame.fromEulerAnglesXYZ(-1.57,-0.4,0) * CFrame.new(-1,-0.5,0.1)

left = Instance.new("Weld")
left.Parent = me.Character.Torso
left.Part0 = nil
left.Part1 = nil
left.C1 = CFrame.fromEulerAnglesXYZ(-1.4,0.5,0) * CFrame.new(0.55,-0.4,1.3)


bulletcolors = {"Hot pink", "Really red", "Really blue", "New Yeller", "Lime green", "Neon orange"}

gun = Instance.new("Model")
gun.Parent = game.Lighting
gun.Name = "Gun"

handle = Instance.new("Part")
handle.Parent = gun
handle.formFactor = 0
handle.Size = Vector3.new(1,1,1)
handle.BrickColor = BrickColor.random()
mesh = Instance.new("SpecialMesh")
mesh.Parent = handle
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.5,0.75,1.6)

handle2 = Instance.new("Part")
handle2.Parent = gun
handle2.formFactor = 0
handle2.Size = Vector3.new(1,1,1)
handle2.BrickColor = BrickColor.random()
mesh2 = mesh:clone()
mesh2.Parent = handle2
mesh2.Scale = Vector3.new(0.6,3.6,0.75)

handle3 = Instance.new("Part")
handle3.Parent = gun
handle3.formFactor = 0
handle3.Size = Vector3.new(1,1,1)
handle3.BrickColor = BrickColor.random()
mesh3 = mesh:clone()
mesh3.Parent = handle3
mesh3.Scale = Vector3.new(.45,.11,2)

handle4 = Instance.new("Part")
handle4.Parent = gun
handle4.formFactor = 0
handle4.Size = Vector3.new(.1,.1,.1)
handle4.BrickColor = BrickColor.random()
mesh4 = Instance.new("CylinderMesh")
mesh4.Parent = handle4
mesh4.Scale = Vector3.new(.4,4,.3)
hold = false

if god == true then
me.Character.Humanoid.MaxHealth = math.huge
end
if fakeff == true then
select=Instance.new("SelectionBox",me.Character.Head)
select1=Instance.new("SelectionBox",me.Character.Torso)
select2=Instance.new("SelectionBox",me.Character["Right Arm"])
select3=Instance.new("SelectionBox",me.Character["Left Arm"])
select4=Instance.new("SelectionBox",me.Character["Left Leg"])
select5=Instance.new("SelectionBox",me.Character["Right Leg"])
select.Adornee=me.Character.Head
select1.Adornee=me.Character.Torso
select2.Adornee=me.Character["Right Arm"]
select3.Adornee=me.Character["Left Arm"]
select4.Adornee=me.Character["Left Leg"]
select5.Adornee=me.Character["Right Leg"]
me.Character.Humanoid.MaxHealth=math.huge
end

function selected(mouse, key)
right.Part0 = right.Parent
right.Part1 = rightarm
left.Part0 = left.Parent
left.Part1 = leftarm
left.C1 = CFrame.fromEulerAnglesXYZ(-1.4,0.5,0) * CFrame.new(0.55,-0.4,1.3)
right.C1 = CFrame.fromEulerAnglesXYZ(-1.57,-0.4,0) * CFrame.new(-1,-0.5,0.1)
left.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
right.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)
gun.Parent = me.Character
gunweld1 = Instance.new("Weld")
gunweld1.Parent = rightarm
gunweld1.Part0 = gunweld1.Parent
gunweld1.Part1 = handle
gunweld1.C1 = CFrame.fromEulerAnglesXYZ(0.4,0,0) * CFrame.new(0,1,0)
gunweld2 = Instance.new("Weld")
gunweld2.Parent = handle
gunweld2.Part0 = gunweld2.Parent
gunweld2.Part1 = handle2
gunweld2.C1 = CFrame.fromEulerAnglesXYZ(-0.4,0,0) * CFrame.new(0,1,1.2)
gunweld3 = Instance.new("Weld")
gunweld3.Parent = handle2
gunweld3.Part0 = gunweld3.Parent
gunweld3.Part1 = handle3
gunweld3.C1 = CFrame.fromEulerAnglesXYZ(-0.3,0,0) * CFrame.new(0,0.3,-0.9)
gunweld4 = Instance.new("Weld")
gunweld4.Parent = handle2
gunweld4.Part0 = gunweld3.Parent
gunweld4.Part1 = handle4
gunweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,1.751,0)
mouse.Button1Down:connect(function()
zmeme = Instance.new("Sound",handle4)
zmeme.SoundId = "rbxassetid://479049474"
zmeme.Volume = 100
zmeme.Looped = true
zmeme:Play()
hold = true
while hold == true do
wait(0.04)
local color = math.random(1, #bulletcolors)
local wkspd = walkspeed
local pos = mouse.Hit.p + Vector3.new(math.random(-2,2),0,math.random(-2,2))
local BamOne = Instance.new("Sound",handle4)
BamOne.Pitch,BamOne.Volume,BamOne.SoundId = 1.4,100,"rbxassetid://2920959"
local BamTwo = Instance.new("Sound",handle4)
BamTwo.Pitch,BamTwo.Volume,BamTwo.SoundId = 1.4,100,"rbxassetid://2920959"
local bullet = Instance.new("Part")
bullet.Parent = workspace
bullet.formFactor = 0
bullet.Size = Vector3.new(1,1,1)
bullet.BrickColor = BrickColor.new(bulletcolors[color])
bullet.CanCollide = false
bullet.Anchored = true
bullet.CFrame = CFrame.new((handle4.Position + pos)/2, pos)
local distance = (handle4.Position - pos).magnitude
local bulletmesh = Instance.new("SpecialMesh")
bulletmesh.Parent = bullet
bulletmesh.MeshType = "Brick"
bulletmesh.Scale = Vector3.new(0.2,0.2,distance)
if mouse.Target ~= nil then
local hu = mouse.Target.Parent:findFirstChild("Humanoid")
if hu ~= nil then
hu.Health = hu.Health - 10
if hu.Health == 0 then
vape = Instance.new("Sound",hu.Parent.Head)
vape.SoundId = "rbxassetid://479081073"
vape.Volume = 100
vape:Play()
wait(2.28)
vape:Destroy()
end
end
end
coroutine.resume(coroutine.create(function()
left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(0.12,0,0)
right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(0.12,0,0)
wait()
left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(-0.12,0,0)
right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(-0.12,0,0)
wait(0.03)
bullet:remove()
end))
end
end)
mouse.Button1Up:connect(function()
zmeme:Pause()
zmeme:Destroy()
hold = false
end)
local Gui = Instance.new("ScreenGui",me.PlayerGui)
Gui.Name = "Ammo"
local Frame = Instance.new("Frame",Gui)
Frame.Name = "MainFrame"
Frame.Size = UDim2.new(.15,0,.1,0)
Frame.Position = UDim2.new(0.4,0,0.4,0)
Frame.BackgroundTransparency = 0.99
Frame.BackgroundColor = BrickColor.new("Really black")
Frame.Active = true
local Exit = Instance.new("TextButton",Gui)
Exit.Name = "Exit"
Exit.Size = UDim2.new(.15,0,.1,0)
Exit.Position = UDim2.new(0.4,0,0.4,0)
Exit.BackgroundTransparency = 1
Exit.Text = ""
Exit.BackgroundColor = BrickColor.new("Really black")
Exit.Active = true
Exit.Draggable = false
Exit.MouseButton1Down:connect(function()
me.PlayerGui["Ammo"]:remove()
end)
local msg1 = "Made by colin, Editted by OpTic Wisdom"
local msg2 = "VaporGun v3"
local msg3 = "Click to exit"
local Cred = Instance.new("TextLabel",Frame)
Cred.Name = "Credz"
Cred.Font = "ArialBold"
Cred.FontSize = "Size12"
Cred.Position = UDim2.new(0.5,0,0.05,0)
for i = 1,#msg1 do
Cred.Text = (string.sub(msg1, 1,i))
wait(WaitTime)
end
Cred.TextColor3 = BrickColor.new("Hot pink").Color
wait(WaitTime2)
local Dis = Instance.new("TextLabel",Frame)
Dis.Name = "Real Numbers"
Dis.Font = "ArialBold"
Dis.FontSize = "Size18"
Dis.Position = UDim2.new(0.5,0,0.5,0)
Dis.TextColor3 = BrickColor.new("Hot pink").Color
for i = 1,#msg2 do
Dis.Text = (string.sub(msg2, 1,i))
wait(WaitTime)
end
me.Character.Humanoid.WalkSpeed = walkspeed
wait(WaitTime3)
for i = 1,#msg2 do
Dis.Text = string.sub(msg2, i,#msg2)
wait(WiatTime)
end
for i = 1,#msg3 do
Dis.Text = (string.sub(msg3, 1,i))
wait(WaitTime)
end	
end

function deselect()
left.C0 = CFrame.new(0,0,0)
right.C0 = CFrame.new(0,0,0)
me.Character:makeJoints()
wait()
right.Part0 = nil
right.Part1 = nil
left.Part0 = nil
left.Part1 = nil
gun.Parent = game.Lighting
me.Character:makeJoints()
me.PlayerGui["Ammo"]:Remove()
me.Character.Humanoid.WalkSpeed = walkspeed2
end

sp.Selected:connect(selected)
sp.Deselected:connect(deselect)

who = "yfc" 

if script.Parent.className ~= "HopperBin" then 
Tool = Instance.new("HopperBin") 
Tool.Name = "Strangle" 
Tool.Parent = Game.Players[who].Backpack 
script.Parent = Tool
end
vip = game.Players[who]
char = vip.Character
suit = nil
blah = true
function Clicked(mouse)
if blah == true then
if mouse.Target.Parent:findFirstChild("Torso") ~= nil then
--if mouse.Target.Parent.Torso
asdfw = Instance.new("Weld")
asdfw.Parent = char.Break
asdfw.Name = "asdfw"
blah = false
char.Humanoid.PlatformStand = true
asdfw.Part0 = ddd
asdfw.Part1 = char.Torso
asdfw.C0 = CFrame.new(0,0,1) * CFrame.Angles(0,0,0)
pcall(function()
char.Break.RightWeld.C0 = CFrame.new(-0.9,0.5,1.3) * CFrame.fromEulerAnglesXYZ(-1.5,-0.2,0.2)
char.Break.LeftWeld.C0 = CFrame.new(0.9,0.5,1.4) * CFrame.fromEulerAnglesXYZ(-1.3,0.1,-0.3)
end)
end
return
end
if blah == false then
pcall(function()
char.Break.RightWeld.C0 = CFrame.new(-0.9,0.5,1.3) * CFrame.fromEulerAnglesXYZ(-1.1, -0.2, 0)
char.Break.LeftWeld.C0 = CFrame.new(0.9, 0.5, 1.4) * CFrame.fromElurerAnglesXYZ(-1.5, 0.1, 0.1)
end)
asdfw:Remove() 
ddd:BreakJoints() 
char.Humanoid.PlatformStand = false 
wait(2) 
pcall(function()
char.Break.RightWeld.C0 = CFrame.new(-1.5, 0, 0) * CFrame.fromElurerAnglesXYZ(0, 0, 0) 
char.Break.LeftWeld.C0 = CFrame.new(1.5, 0, 0) * CFrame.fromElurerAnglesXYZ(0, 0, 0) 
end) 
blah = true 
return
end
--end
functionUnClicked(mouse)
end 
function onKeyDown(key, Mouse) 
if key == "e" then 
pcall(function()
asdfw:remove() 
end)
char.Humanoid.PlatformStand = false
pcall(function() 
char.Break.RightWeld.C0 = CFrame.new(-1.5, 0, 0) * CFrame.fromElurerAnglesXYZ(0, 0, 0) 
char.Break.LeftWeld.C0 = CFrame.new(1.5, 0, 0) * CFrame.fromElurerAnglesXYZ(0, 0, 0) 
end) 
blah = true 
end 
if key == "r" then
if blah == true then
if mouse.Target.Parent:findFirstChild("Torso") == nil then 
return
end
blah = false
ddd = mouse.Target.Parent.Torso
pcall(function()
char.Break.RightWeld.C0 = CFrame.new(-0.9,0.5,1.3) * CFrame.fromEulerAnglesXYZ(-1.1, -0.2, 0)
char.Break.LeftWeld.C0 = CFrame.new(0.9, 0.5, 1.4) * CFrame.fromElurerAnglesXYZ(-1.5, 0.1, 0.1)
end)
pcall(function()
asdf:remove()
end) 
ddd:BreakJoints() 
char.Humanoid.PlatformStand = false
wait(1) 
pcall(function() 
char.Break.RightWeld.C0 = CFrame.new(-1.5, 0, 0) * CFrame.fromElurerAnglesXYZ(0, 0, 0) 
char.Break.LeftWeld.C0 = CFrame.new(1.5, 0, 0) * CFrame.fromElurerAnglesXYZ(0, 0, 0) 
end) 
blah = true 
return
end
end
end
function Selected(mouse)
if char:findFirstChild("Break") == nil then 
suit = Instance.new("Model")
suit.Parent = char
suit.Name = "Break"
rshoulder = char.Torso["Right Shoulder"]
rshoulder.Parent = nil
rweld = Instance.new("Motor")
rweld.Name = "RightWeld"
rweld.Parent = suit
rweld.Part0 = char["Right Arm"]
rweld.Part1 = char.Torso
rweld.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
lshoulder = char.Torso["Left Shoulder"]
lshoulder.Parent = nil
lweld = Instance.new("Motor")
lweld.Name = "LeftWeld"
lweld.Parent = suit
lweld.Part0 = char["Left Arm"]
lweld.Part1 = char.Torso
lweld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
--mouse.KeyDown:connect(onKeyDown)
mouse.KeyDown:connect(function(key) onKeyDown(key, Mouse) end)
mouse.Button1Down:connect(function()Clicked(Mouse)end)
mouse.Button1Up:connect(function()UnClicked(Mouse)end)
end
--end
function Deselected()
pcall(function() 
suit:Remove() 
end)
rshoulder.Parent = char
char.Humanoid.PlatformStand = false
end
--end 
script.Parent.Selected:connect(Selected)
script.Parent.Deselected:connect(Deselected)
--nged(0) 
end
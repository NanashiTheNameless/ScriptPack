me="rigletto"
scriptid=57694740
player=game.Players:FindFirstChild(me)
char=player.Character
mode="none"
stabdmg=2
firedmg=20
hold=false
speed=20
guicolor=Color3.new(0, 0.5, 0.5)
if script.Parent.className ~= "HopperBin" then
tool=Instance.new("HopperBin")
tool.Parent=game.Players[me].Backpack
tool.Name="Flamethrower"
script.Parent=tool
end
local tool=script.Parent
if game.Players:FindFirstChild(me) ~= nil then
if game.Players[me].Character ~= nil then
char=game.Players[me].Character
torso=char:FindFirstChild("Torso")
arm=char:FindFirstChild("Right Arm")
end
end
function parttouch(part,damage)
part.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum=hit.Parent.Humanoid
hum.Health=hum.Health-(hum.MaxHealth/damage)
part:Remove()
end
end)
end
tool.Selected:connect(function(mouse)
if arm ~= nil and torso ~= nil then
if handle1==nil and handle2==nil and handle3==nil and handle4==nil and handle5==nil and handle6==nil and handle7==nil and handle8==nil then
armweld=Instance.new("Weld")
armweld.Parent=torso
armweld.Part0=torso
armweld.Part1=arm
armweld.C1=CFrame.new(-1.5, 0.5, 0.5) * CFrame.Angles(math.rad(-90), 0, 0)
handle1=Instance.new("Part")
handle1.Parent=workspace[me]
handle1.Size=Vector3.new(1, 1, 1)
handle1.formFactor="Symmetric"
handle1.Name="Handle"
handle1.Transparency=1
handle2=Instance.new("Part")
handle2.Parent=workspace[me]
handle2.Size=Vector3.new(1, 1, 1)
handle2.formFactor="Symmetric"
handle2.Name="Handle"
handle2.BrickColor=BrickColor.new("Bright yellow")
handle2m=Instance.new("CylinderMesh")
handle2m.Parent=handle2
handle2m.Bevel=0
handle2m.Scale=Vector3.new(0.2, 1, 0.2)
handle3=Instance.new("Part")
handle3.Parent=workspace[me]
handle3.Size=Vector3.new(1, 1, 1)
handle3.formFactor="Symmetric"
handle3.Name="Handle"
handle3.Reflectance=0.3
handle3.BrickColor=BrickColor.new("White")
handle3m=Instance.new("CylinderMesh")
handle3m.Parent=handle3
handle3m.Bevel=0
handle3m.Scale=Vector3.new(0.22, 0.1, 0.22)
handle4=Instance.new("Part")
handle4.Parent=workspace[me]
handle4.Size=Vector3.new(1, 1, 1)
handle4.formFactor="Symmetric"
handle4.Name="Handle"
handle4.BrickColor=BrickColor.new("Pink")
handle4m=Instance.new("CylinderMesh")
handle4m.Parent=handle4
handle4m.Bevel=0.02
handle4m.Scale=Vector3.new(0.2, 0.1, 0.2)
handle5=Instance.new("Part")
handle5.Parent=workspace[me]
handle5.Size=Vector3.new(1, 2, 1)
handle5.formFactor="Symmetric"
handle5.Name="Handle"
handle5.BrickColor=BrickColor.new("Black")
handle5.Touched:connect(function(hit)
if hit.Parent.Name ~= tool.Parent.Parent.Name then
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum=hit.Parent.Humanoid
hum.Health=hum.Health-stabdmg
end
end
end)
handle5m=Instance.new("CylinderMesh")
handle5m.Parent=handle5
handle5m.Bevel=0
handle5m.Scale=Vector3.new(0.02, 0.5, 0.02)
handle6=Instance.new("Part")
handle6.Parent=workspace[me]
handle6.Size=Vector3.new(1, 1, 1)
handle6.formFactor="Symmetric"
handle6.Name="Handle"
handle6.BrickColor=BrickColor.new("Sand yellow")
handle6m=Instance.new("CylinderMesh")
handle6m.Parent=handle6
handle6m.Scale=Vector3.new(0.1, 0.1, 0.1)
handle7=Instance.new("Part")
handle7.Parent=workspace[me]
handle7.Size=Vector3.new(1, 1, 1)
handle7.formFactor="Symmetric"
handle7.Name="Handle"
handle7.BrickColor=BrickColor.new("Black")
handle7m=Instance.new("CylinderMesh")
handle7m.Parent=handle7
handle7m.Bevel=0
handle7m.Scale=Vector3.new(0.1, 0.3, 0.1)
handle8=Instance.new("Part")
handle8.Parent=workspace[me]
handle8.Size=Vector3.new(1, 1, 1)
handle8.formFactor="Symmetric"
handle8.Name="Handle"
handle8.BrickColor=BrickColor.new("Really red")
handle8m=Instance.new("CylinderMesh")
handle8m.Parent=handle8
handle8m.Bevel=0.01
handle8m.Scale=Vector3.new(0.07, 0.1, 0.07)
end
end
player=tool.Parent.Parent
playergui=player:FindFirstChild("PlayerGui")
screen=Instance.new("ScreenGui")
screen.Parent=playergui
tb1=Instance.new("TextButton")
tb1.Parent=screen
tb1.Size=UDim2.new(0.1, 0, 0.025, 0)
tb1.BackgroundColor3=guicolor
tb1.Position=UDim2.new(0, 0, 0.5, 0)
tb1.Text="Mode : Stab"
tb1.MouseButton1Down:connect(function()
if weld4 ~= nil then
if mode == "none" then
mode=nil
for i = 0, 0.8, 0.1 do
weld4.C1=weld4.C1 * CFrame.new(0, 0.1, 0)
wait()
end
mode="stab"
end
end
end)
tb2=Instance.new("TextButton")
tb2.Parent=screen
tb2.Size=UDim2.new(0.1, 0, 0.025, 0)
tb2.BackgroundColor3=guicolor
tb2.Position=UDim2.new(0, 0, 0.525, 1)
tb2.Text="Mode : None"
tb2.MouseButton1Down:connect(function()
if weld4 ~= nil then
if mode == "stab" then
mode=nil
for i = 0, 0.8, 0.1 do
weld4.C1=weld4.C1 * CFrame.new(0, -0.1, 0)
wait()
end
mode="none"
elseif mode == "flame" then
mode=nil
for i = 0, 0.14, 0.02 do
weld6.C1=weld6.C1 * CFrame.new(0, 0.02, 0)
wait()
end
handle4.Transparency=0
for i = 0.2, 0, -0.02 do
handle4m.Scale=handle4m.Scale-Vector3.new(-0.02, 0, -0.02)
wait()
end
for i = 20, 180, 20 do
weld.C1=weld.C1 * CFrame.Angles(math.rad(20), 0, 0)
wait()
end
mode="none"
end
end
end)
tb3=Instance.new("TextButton")
tb3.Parent=screen
tb3.Size=UDim2.new(0.1, 0, 0.025, 0)
tb3.BackgroundColor3=guicolor
tb3.Position=UDim2.new(0, 0, 0.55, 2)
tb3.Text="Mode : Flamethrower"
tb3.MouseButton1Down:connect(function()
if weld1 ~= nil then
if mode == "none" then
mode=nil
for i = 20, 180, 20 do
weld.C1=weld.C1 * CFrame.Angles(math.rad(20), 0, 0)
wait()
end
for i = 0.2, 0, -0.02 do
handle4m.Scale=handle4m.Scale-Vector3.new(0.02, 0, 0.02)
wait()
end
handle4.Transparency=1
for i = 0, 0.14, 0.02 do
weld6.C1=weld6.C1 * CFrame.new(0, -0.02, 0)
wait()
end
mode="flame"
end
end
end)
mouse.Button1Down:connect(function()
if mode=="flame" then
hold=true
while hold==true do
firep=Instance.new("Part")
firep.Parent=tool.Parent.Parent.Character
firep.Size=Vector3.new(1, 1, 1)
firep.Shape="Ball"
firep.Name="FireBrick"
firep.CFrame=CFrame.new(handle8.Position, mouse.Hit.p)
firep.CanCollide=false
firep.Transparency=1
firep.BottomSurface="Smooth"
firep.TopSurface="Smooth"
game.Debris:AddItem(firep,10)
fire=Instance.new("Fire")
fire.Parent=firep
fire.Heat=0
fire.Size=2
bodyv=Instance.new("BodyVelocity")
bodyv.Parent=firep
bodyv.maxForce=Vector3.new(math.huge, math.huge, math.huge)
bodyv.velocity=firep.CFrame.lookVector * speed + (Vector3.new(math.random(), math.random(), math.random())/5)
c=couroutine.create(parttouch(firep, firedmg))
coroutine.resume(c)
wait()
end
end
end)
mouse.Button1Up:connect(function()
hold=false
end)
weld=Instance.new("Weld")
weld.Parent=handle1
weld.Part0=handle1
weld.Part1=handle2
weld.C1=CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-90), 0, 0)
weld1=Instance.new("Weld")
weld1.Parent=arm
weld1.Part0=arm
weld1.Part1=handle1
weld1.C1=CFrame.new(0, 0, 1.7) * CFrame.Angles(math.rad(90), 0, 0)
weld2=Instance.new("Weld")
weld2.Parent=handle1
weld2.Part0=handle2
weld2.Part1=handle3
weld2.C1=CFrame.new(0, -0.55, 0) * CFrame.Angles(0, 0, 0)
weld3=Instance.new("Weld")
weld3.Parent=handle1
weld3.Part0=handle2
weld3.Part1=handle4
weld3.C1=CFrame.new(0, -0.6, 0) * CFrame.Angles(0, 0, 0)
weld4=Instance.new("Weld")
weld4.Parent=handle1
weld4.Part0=handle2
weld4.Part1=handle5
weld4.C1=CFrame.new(0, 0.17, 0) * CFrame.Angles(0, 0, 0)
weld5=Instance.new("Weld")
weld5.Parent=handle1
weld5.Part0=handle2
weld5.Part1=handle6
weld5.C1=CFrame.new(0, 0.53, 0) * CFrame.Angles(0, 0, 0)
weld6=Instance.new("Weld")
weld6.Parent=handle1
weld6.Part0=handle2
weld6.Part1=handle7
weld6.C1=CFrame.new(0, -0.35, 0) * CFrame.Angles(0, 0, 0)
weld7=Instance.new("Weld")
weld7.Parent=handle1
weld7.Part0=handle7
weld7.Part1=handle8
weld7.C1=CFrame.new(0, -0.12, 0) * CFrame.Angles(0, 0, 0)
end)
tool.Deselected:connect(function()
if screen ~= nil then
screen:Remove()
mode="none"
end
end)
--[[
billiland, String.
TNS, Sour?
]]--
--[[
Cone:
http://www.roblox.com/asset/id=1033714
]]--
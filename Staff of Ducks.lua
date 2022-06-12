type = 3
--mediafire gtfo password
e1 = true
e2 = true
e3 = true
e6 = true
e7 = true
user = "rigletto"

sg = Instance.new("ScreenGui")
sg.Parent = game.Players[user].PlayerGui
--[[button1 = Instance.new("TextButton") --Retired power.
button1.Parent = sg
button1.Text = "Dark Matter"
button1.Position = UDim2.new(0,0,0.1,0)
button1.Size = UDim2.new(0.1,0,0.1,0)
button1.MouseButton1Click:connect(function()
type = 1
end)--]]

--[[button2 = Instance.new("TextButton") --Retired power.
button2.Parent = sg
button2.Text = "Ball of Fire"
button2.Position = UDim2.new(0,0,0.2,0)
button2.Size = UDim2.new(0.1,0,0.1,0)
button2.MouseButton1Click:connect(function()
type = 2
end)--]]

button3 = Instance.new("TextButton")
button3.Parent = sg
button3.Text = "Poision Duck"
button3.Position = UDim2.new(0,0,0.3,0)
button3.Size = UDim2.new(0.1,0,0.1,0)
button3.MouseButton1Click:connect(function()
type = 3
end)

button4 = Instance.new("TextButton")
button4.Parent = sg
button4.Text = "Dark Matter Duck"
button4.Position = UDim2.new(0,0,0.4,0)
button4.Size = UDim2.new(0.1,0,0.1,0)
button4.MouseButton1Click:connect(function()
type = 4
end)

button5 = Instance.new("TextButton")
button5.Parent = sg
button5.Text = "Healing Duck"
button5.Position = UDim2.new(0,0,0.5,0)
button5.Size = UDim2.new(0.1,0,0.1,0)
button5.MouseButton1Click:connect(function()
type = 5
end)

button6 = Instance.new("TextButton")
button6.Parent = sg
button6.Text = "Growing Evil Duck"
button6.Position = UDim2.new(0,0,0.6,0)
button6.Size = UDim2.new(0.1,0,0.1,0)
button6.MouseButton1Click:connect(function()
type = 6
end)

button7 = Instance.new("TextButton")
button7.Parent = sg
button7.Text = "BOOM BOOM Duck"
button7.Position = UDim2.new(0,0,0.7,0)
button7.Size = UDim2.new(0.1,0,0.1,0)
button7.MouseButton1Click:connect(function()
type = 7
end)

button8 = Instance.new("TextButton")
button8.Parent = sg
button8.Text = "Duck of Frozen Souls"
button8.Position = UDim2.new(0,0,0.1,0)
button8.Size = UDim2.new(0.1,0,0.1,0)
button8.MouseButton1Click:connect(function()
type = 8
end)

button9 = Instance.new("TextButton")
button9.Parent = sg
button9.Text = "Rock Duck"
button9.Position = UDim2.new(0,0,0.2,0)
button9.Size = UDim2.new(0.1,0,0.1,0)
button9.MouseButton1Click:connect(function()
type = 9
end)

tool = Instance.new("Tool")
tool.Parent = game.Players[user].Backpack
tool.Name = "Staff of Ducks"
main = Instance.new("Part")
main.Parent = tool
main.Name = "Handle"
main.BrickColor = BrickColor.new("Really black")
main.Size = Vector3.new(1,5,1)
main.formFactor = "Symmetric"
main.TopSurface = "Smooth"
main.BottomSurface = "Smooth"
--ff = Instance.new("ForceField")
--ff.Parent = main
c = Instance.new("CylinderMesh")
c.Parent = main
c.Scale = Vector3.new(0.5,1,0.5)
fdu = Instance.new("Part")
fdu.Parent = tool
fdu.CFrame = main.CFrame + main.CFrame.lookVector*5
fdu.Size = Vector3.new(1,1,1)
fdu.formFactor = "Symmetric"
fdu.Transparency = 0.5
fdu.BrickColor = BrickColor.new("Really red")
fduck = Instance.new("SpecialMesh")
fduck.Parent = fdu
fduck.MeshType = "FileMesh"
fduck.MeshId = "http://www.roblox.com/asset/?id=9419831"
fduck.Scale = Vector3.new(1,1,1)

c1 = Instance.new("Part")
c1.Parent = tool
c1.Name = "Circle1"
c1.BrickColor = BrickColor.new("Toothpaste")
c1.Size = Vector3.new(1,1,1)
c1.formFactor = "Plate"
c1.TopSurface = "Smooth"
c1.BottomSurface = "Smooth"
c1.Reflectance = 0.3
c = Instance.new("CylinderMesh")
c.Parent = c1
c.Scale = Vector3.new(0.6,1,0.6)


c2 = Instance.new("Part")
c2.Parent = tool
c2.Name = "Circle1"
c2.BrickColor = BrickColor.new("Toothpaste")
c2.Size = Vector3.new(1,1,1)
c2.formFactor = "Plate"
c2.TopSurface = "Smooth"
c2.BottomSurface = "Smooth"
c2.Reflectance = 0.3
c = Instance.new("CylinderMesh")
c.Parent = c2
c.Scale = Vector3.new(0.6,1,0.6)

c3 = Instance.new("Part")
c3.Parent = tool
c3.Name = "Circle1"
c3.BrickColor = BrickColor.new("Toothpaste")
c3.Size = Vector3.new(1,1,1)
c3.formFactor = "Plate"
c3.TopSurface = "Smooth"
c3.BottomSurface = "Smooth"
c3.Reflectance = 0.3
c = Instance.new("CylinderMesh")
c.Parent = c3
c.Scale = Vector3.new(0.6,1,0.6)

c4 = Instance.new("Part")
c4.Parent = tool
c4.Name = "Circle1"
c4.BrickColor = BrickColor.new("Toothpaste")
c4.Size = Vector3.new(1,1,1)
c4.formFactor = "Plate"
c4.TopSurface = "Smooth"
c4.BottomSurface = "Smooth"
c4.Reflectance = 0.3
c = Instance.new("CylinderMesh")
c.Parent = c4
c.Scale = Vector3.new(0.6,1,0.6)

c5 = Instance.new("Part")
c5.Parent = tool
c5.Name = "Circle1"
c5.BrickColor = BrickColor.new("Really red")
c5.Size = Vector3.new(1,1,1)
c5.formFactor = "Symmetric"
c5.TopSurface = "Smooth"
c5.Transparency = 0.5
c5.BottomSurface = "Smooth"
c = Instance.new("SpecialMesh")
c.Parent = c5
c.MeshType = "Sphere"
c.Scale = Vector3.new(0.6,0.6,0.6)

tool.Activated:connect(function()
if type == 1 then
if e1 == true then
e1 = false
for i = 1,20 do
p = Instance.new("Part")
p.Shape = "Ball"
p.Transparency = 0.4
p.BrickColor = BrickColor.new("Really black")
p.Parent = workspace[user]
p.CFrame = main.CFrame + main.CFrame.lookVector*5
p.Size = Vector3.new(3,3,3)
p.CanCollide = false
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
s = Instance.new("BodyForce")
s.Parent = p
s.force = workspace[user].Torso.CFrame.lookVector * 1000000
p.Touched:connect(function(hit)
if hit.Parent ~= workspace[user] then
if hit.Parent.Humanoid then
p:Remove()
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 25
end
end
end)
wait(0.1)
end
e1 = true
else return
end

elseif type == 2 then
if e2 == true then
e2 = false
ball = Instance.new("Part")
ball.CanCollide = false
ball.Parent = workspace[user]
ball.CFrame = workspace[user].Torso.CFrame + workspace[user].Torso.CFrame.lookVector*10
ball.Size = Vector3.new(1,1,1)
ball.Anchored = true
ball.Shape = "Ball"
ball.formFactor = "Symmetric"
ball.BrickColor = BrickColor.new("Really red")
ball.TopSurface = "Smooth"
ball.BottomSurface = "Smooth"
fire = Instance.new("Fire")
fire.Parent = ball
for i = 1,5 do
ball.Size = ball.Size + Vector3.new(1,1,1)
wait(0.2)
end
ball.Anchored = false
s = Instance.new("BodyForce")
s.Parent = ball
s.force = workspace[user].Torso.CFrame.lookVector * 180000
for i = 1,20 do
ex = Instance.new("Explosion")
ex.Parent = workspace
ex.Position = ball.Position
ex.BlastPressure = 100
ex.BlastRadius = 4.5
wait(0.03)
end
wait(3)
ball:Remove()
e2 = true
end

elseif type == 3 then
if e3 == true then
e3 = false
fdu.BrickColor = BrickColor.new("Olive")
ne = Instance.new("Part")
ne.Shape = "Ball"
ne.BrickColor = BrickColor.new("Olive")
ne.Transparency = 0.5
ne.Parent = workspace[user]
ne.CFrame = main.CFrame + main.CFrame.lookVector*5
ne.Size = Vector3.new(1,1,1)
ne.TopSurface = "Smooth"
ne.BottomSurface = "Smooth"
bm = Instance.new("SpecialMesh")
bm.Parent = ne
bm.MeshType = "FileMesh"
bm.MeshId = "http://www.roblox.com/asset/?id=9419831"
bm.Scale = Vector3.new(0.5,0.5,0.5)
s = Instance.new("BodyForce")
s.Parent = ne
s.force = workspace[user].Torso.CFrame.lookVector * 1750
wait(.1)
fdu.BrickColor = BrickColor.new("Really red")
ne.Touched:connect(function(hit)
if hit.Parent ~= workspace[user] then
if hit.Parent.Humanoid then
ne:Remove()
hit.Parent.Head.BrickColor = BrickColor.new("Olive")
player = game.Players:GetPlayerFromCharacter(hit.Parent)
if player then
sg1 = Instance.new("ScreenGui")
sg1.Parent = player.PlayerGui
posi = Instance.new("Frame")
posi.Parent = sg1
posi.Size = UDim2.new(1,0,1,0)
posi.BackgroundColor3 = BrickColor.new("Olive").Color
posi.BackgroundTransparency = 1
for i = 1,10 do
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - hit.Parent.Humanoid.MaxHealth*.10
posi.BackgroundTransparency = posi.BackgroundTransparency - 0.1
wait(1)
end
hit.Parent.Humanoid.Health = 0
sg1:Remove()
end
end
end
end)

e3 = true
end

elseif type == 4 then
fdu.BrickColor = BrickColor.new("Really black")
du = Instance.new("Part")
du.Parent = workspace[user]
du.CFrame = main.CFrame + main.CFrame.lookVector*5
du.Size = Vector3.new(1*3,1*3,2*3)
du.formFactor = "Symmetric"
du.Transparency = 0.5
du.BrickColor = BrickColor.new("Really black")
duck = Instance.new("SpecialMesh")
duck.Parent = du
duck.MeshType = "FileMesh"
duck.MeshId = "http://www.roblox.com/asset/?id=14810664"
duck.TextureId = ""
duck.Scale = Vector3.new(1*3,1*3,1*3)
s = Instance.new("BodyForce")
s.Parent = du
s.force = workspace[user].Torso.CFrame.lookVector * 160000
wait(.1)
fdu.BrickColor = BrickColor.new("Really red")
du.Touched:connect(function(vic)
if vic.Parent ~= workspace[user] then
if vic.Parent.Humanoid then
vic:Remove()
else return
end
else return
end
end)

elseif type == 5 then
fdu.BrickColor = BrickColor.new("New Yeller")
du2 = Instance.new("Part")
du2.Parent = workspace[user]
du2.CFrame = main.CFrame + main.CFrame.lookVector*5
du2.Size = Vector3.new(1*3,1*3,2*3)
du2.formFactor = "Symmetric"
duck2 = Instance.new("SpecialMesh")
duck2.Parent = du2
duck2.MeshType = "FileMesh"
duck2.MeshId = "http://www.roblox.com/asset/?id=9419831"
duck2.TextureId = "http://www.roblox.com/asset/?id=9419827"
duck2.Scale = Vector3.new(1*3,1*3,1*3)
s = Instance.new("BodyForce")
s.Parent = du2
s.force = workspace[user].Torso.CFrame.lookVector * 160000
wait(.1)
fdu.BrickColor = BrickColor.new("Really red")
du2.Touched:connect(function(vic)
if vic.Parent ~= workspace[user] then
if vic.Parent.Humanoid then
vic.Humanoid.Health = vic.Humanoid.MaxHealth
else return
end
else return
end
end)

elseif type == 6 then
if e6 == true then
fdu.BrickColor = BrickColor.new("Really black")
e6 = false
du3 = Instance.new("Part")
du3.Parent = workspace[user]
du3.CFrame = workspace[user].Torso.CFrame + workspace[user].Torso.CFrame.lookVector*5
du3.Size = Vector3.new(1*3,1*3,2*3)
du3.formFactor = "Symmetric"
duck3 = Instance.new("SpecialMesh")
duck3.Parent = du3
duck3.MeshType = "FileMesh"
duck3.MeshId = "http://www.roblox.com/asset/?id=14810664"
duck3.TextureId = "http://www.roblox.com/asset/?id=14810649"
duck3.Scale = Vector3.new(0,0,0)
firee = Instance.new("Fire")
firee.Parent = du3
s = Instance.new("BodyForce")
s.Parent = du3
s.force = workspace[user].Torso.CFrame.lookVector * 60000
wait(.1)
fdu.BrickColor = BrickColor.new("Really red")
du3.Touched:connect(function(vic2)
if vic2.Parent ~= workspace[user] then
if vic2.Parent.Humanoid then
vic2:Remove()
else return
end
else return
end
end)
du3.Anchored = true
for i = 1,3,.1 do
duck3.Scale = Vector3.new(i,i,i)
wait(0.03)
end
du3.Anchored = false
e6 = true
end


elseif type == 7 then
if e7 == true then
fdu.BrickColor = BrickColor.new("New Yeller")
e7 = false
edu = Instance.new("Part")
edu.Parent = workspace[user]
edu.CFrame = workspace[user].Head.CFrame + Vector3.new(0,100,0)
edu.Size = Vector3.new(1*20,1*20,2*20)
edu.formFactor = "Symmetric"
edu.TopSurface = "Smooth"
edu.BottomSurface = "Smooth"
educk = Instance.new("SpecialMesh")
educk.Parent = edu
educk.MeshType = "FileMesh"
educk.MeshId = "http://www.roblox.com/asset/?id=9419831"
educk.TextureId = "http://www.roblox.com/asset/?id=9419827"
educk.Scale = Vector3.new(50,50,50)
edu.Anchored = true
wait(.1)
fdu.BrickColor = BrickColor.new("Really red")
edu.Anchored = false
wait(5)
eex = Instance.new("Explosion")
eex.Parent = workspace
eex.Position = edu.Position
eex.BlastPressure = 100000
eex.BlastRadius = 50
wait(1)
edu:Remove()
e7 = true
end

elseif type == 8 then

fdu.BrickColor = BrickColor.new("Toothpaste")
du4 = Instance.new("Part")
du4.Parent = workspace[user]
du4.CFrame = main.CFrame + main.CFrame.lookVector*5
du4.Size = Vector3.new(1*3,1*3,2*3)
du4.formFactor = "Symmetric"
du4.Transparency = 0.5
du4.BrickColor = BrickColor.new("Toothpaste")
duck4 = Instance.new("SpecialMesh")
duck4.Parent = du4
duck4.MeshType = "FileMesh"
duck4.MeshId = "http://www.roblox.com/asset/?id=9419831"
duck4.Scale = Vector3.new(1*3,1*3,1*3)
s = Instance.new("BodyForce")
s.Parent = du4
s.force = workspace[user].Torso.CFrame.lookVector * 160000
wait(.1)
fdu.BrickColor = BrickColor.new("Really red")
du4.Touched:connect(function(vic3)
if vic3.Parent ~= workspace[user] then
if vic3.Parent.Humanoid then
vic3.BrickColor = BrickColor.new("Toothpaste")
vic3.Reflectance = 0.2
vic3.Transparency = 0.5
vic3.Anchored = true
wait(5)
vic3:Remove()
else return
end
else return
end
end)


elseif type == 9 then


du5 = Instance.new("Part")
du5.Parent = workspace[user]
du5.CFrame = main.CFrame + main.CFrame.lookVector*5
du5.Size = Vector3.new(1*3,1*3,2*3)
du5.formFactor = "Symmetric"
du5.TopSurface = "Smooth"
du5.BottomSurface = "Smooth"
du5.BrickColor = BrickColor.new("Dark stone grey")
duck5 = Instance.new("SpecialMesh")
duck5.Parent = du5
duck5.MeshType = "FileMesh"
duck5.MeshId = "http://www.roblox.com/asset/?id=9419831"
duck5.Scale = Vector3.new(3,3,3)
s = Instance.new("BodyForce")
s.Parent = du5
s.force = main.CFrame.lookVector * 30000
du5.Touched:connect(function(hit)
if hit.Parent.Name ~= user then
if hit.Parent.Humanoid then
hit.Parent.Humanoid.WalkSpeed = 5
wait(5)
hit.Parent.Humanoid.WalkSpeed = 16
else return
end
else return
end
end)

end
end)
----------------------------------------
tool.Equipped:connect(function()
weld = Instance.new("Weld")
weld.Parent = fdu
weld.Part0 = fdu
weld.Part1 = main
weld.C0 = CFrame.new(0,-2.5,0)

weld2 = Instance.new("Weld")
weld2.Parent = c1
weld2.Part0 = c1
weld2.Part1 = main
weld2.C0 = CFrame.new(0,-1.5,0)

weld3 = Instance.new("Weld")
weld3.Parent = c2
weld3.Part0 = c2
weld3.Part1 = main
weld3.C0 = CFrame.new(0,-1,0)

weld4 = Instance.new("Weld")
weld4.Parent = c3
weld4.Part0 = c3
weld4.Part1 = main
weld4.C0 = CFrame.new(0,1,0)

weld5 = Instance.new("Weld")
weld5.Parent = c4
weld5.Part0 = c4
weld5.Part1 = main
weld5.C0 = CFrame.new(0,1.5,0)

weld6 = Instance.new("Weld")
weld6.Parent = c5
weld6.Part0 = c5
weld6.Part1 = main
weld6.C0 = CFrame.new(0,2.5,0)
end)

tool.Unequipped:connect(function()
weld:Remove()
weld2:Remove()
weld3:Remove()
weld4:Remove()
weld5:Remove()
weld6:Remove()
end)

while true do
for i = 1,10 do
fduck.Scale = fduck.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.03)
end
for i = 1,10 do
fduck.Scale = fduck.Scale - Vector3.new(0.01,0.01,0.01)
wait(0.03)
end
end

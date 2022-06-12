plyr = game:GetService("Players").LocalPlayer
char = plyr.Character
head = char:findFirstChild("Head")
torso = char:findFirstChild("Torso")
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
neck = torso:findFirstChild("Neck")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
hum = char:findFirstChild("Humanoid")
cam = game.Workspace.CurrentCamera
m = plyr:GetMouse()
RAB = Instance.new("Part")
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = char
RAB:BreakJoints()
RABW = Instance.new("Weld",RAB)
RABW.Part0 = char.Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)
 LAB = Instance.new("Part")
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = char
LAB:BreakJoints()
LABW = Instance.new("Weld",LAB)
LABW.Part0 = char.Torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)
RAW = Instance.new("Weld",RAB)
RAW.Part0 = RAB
RAW.Part1 = nil
RAW.C1 = CFrame.new(0, 0.5, 0)
LAW = Instance.new("Weld",LAB) 
LAW.Part0 = LAB
LAW.Part1 = nil
LAW.C1 = CFrame.new(0, 0.5, 0)
        ypcall(function()
                for i,v in pairs(char:GetChildren()) do
                        if v.ClassName ~= "Humanoid" and v.ClassName ~= "Script" and v.ClassName ~= "LocalScript" and v.ClassName ~= "BodyMorph" and v.ClassName ~= "Part" then
v:Destroy()
                end
        end
ger = head:findFirstChild("face")
                if ger then
ger:Destroy()
        end
end)
mode = ""
        ypcall(function()
        local f = Instance.new("TextLabel")
    local b = Instance.new("BillboardGui")
    f.Parent = b
        b.Name = "Lua"
    b.Parent = char
    f.Size = UDim2.new(1, 0, 0.3, 0)
    b.Size = UDim2.new(10, 0, 10, 0)
        f.TextColor3 = Color3.new(0/255,0/255,150/255)
    b.StudsOffset = Vector3.new(0,0,0)
    b.Adornee = char.Head
        f.BackgroundTransparency = 1
        f.Font = "Legacy"
        f.FontSize = "Size14"
        f.Text = "Lua Rogue"
        cyl = Instance.new("Part", char)
        cyl.FormFactor = "Custom"
        cyl.Size = Vector3.new(0.2,0.2,0.2)
        cyl.CanCollide = false
        cyl:BreakJoints()
        cyl.BrickColor = BrickColor.new("Deep blue")
        cylm = Instance.new("CylinderMesh", cyl)
        cylm.Scale = Vector3.new(6,1,6)
        decal = Instance.new("Decal", cyl)
        decal.Face = "Bottom"
        decal.Texture = "http://www.roblox.com/asset/?id=90565373"
        fh = char.Head:Clone()
        fhw = Instance.new("Weld", char.Head)
        fhw.Part0 = char.Head
        fh.Parent = char
        fh.Name = "Fake Head"
        fhw.Part1 = fh
        fhw.C0 = CFrame.new(0,0,0)
        char.Head.Transparency = 1
        hum.Name = "1337 Not A Humanoid"
        ft = char.Torso:Clone()
        ft.FormFactor = "Custom"
        ft.Size = Vector3.new(0.2,0.2,0.2)
        ft.Parent = char
        ft.Name = "FakeTorso"
        ft.BrickColor = BrickColor.new("Really black")
        ftw = Instance.new("Weld", char.Torso)
        ftw.Part0 = char.Torso
        ftw.Part1 = ft
        ftw.C0 = CFrame.new(0,0,0)
        wel = Instance.new("Weld", ft)
        wel.Part0 = char.Torso
        wel.Part1 = cyl
        wel.C0 = CFrame.new(0,0,-0.5)*CFrame.Angles(1.56,3.12,0)
        char.Torso.Transparency = 1
        bm = Instance.new("BlockMesh", ft)
        bm.Scale = Vector3.new(10,10,4)
        nm = ""
        sm = {}
        
        dable = false
        K1D = false
m.KeyDown:connect(function(k)
if k == "j" and mode == "" then
nm = "Ex"
mode = "NS"
if not K1D then
K1D = true
LAW.Part1 = la
RAW.Part1 = ra
for i = 0, 1, 0.15 do 
LAW.C0 = CFrame.Angles(0,-math.rad(100*i),-math.rad(90*i))
wait()
end
g = Instance.new("Part", game.Workspace)
g.Name = "NS"
g.CanCollide = false
g.FormFactor = "Custom"
g.Size = Vector3.new(.8,.2,.8)
g:BreakJoints()
table.insert(sm,g)
m1 = Instance.new("SpecialMesh", g)
m1.MeshId = "http://www.roblox.com/asset/?id=11376946"
m1.TextureId = "http://www.roblox.com/asset/?id=2218795"
g.CFrame = CFrame.new(la.Position)
vol = Instance.new("BodyVelocity", g)
vol.maxForce = Vector3.new(math.huge,math.huge,math.huge)
vol.P = 90
g.Name = "1337NOOOB BAM NAD"
vol.velocity = (m.Hit.p - g.Position).unit * 90
num1 = 0
num2 = 0
db = false
g.Touched:connect(function(hit)
if hit.Name == g.Name then
end
stuck = false
perstuck = ""
if hit.Parent and hit.Parent.Name ~= plyr.Name then
num1 = num1 + 1
if num1 == 1 then
weld = Instance.new("Weld",g)
weld.C0 = hit.CFrame:toObjectSpace(g.CFrame)
weld.Part0 = hit
weld.Part1 = g
vol:Destroy()
end
end
if hit.Parent.ClassName == "Model" and hit.Parent.Name ~= plyr.Name then
der = game.Players:findFirstChild(hit.Parent.Name)
if der then
hum = hit.Parent:findFirstChild("Humanoid")
if hum then
if not db then
db = true 
num2 = num2 + 1
if num2 == 1 then
weld = Instance.new("Weld",g)
weld.C0 = hit.CFrame:toObjectSpace(g.CFrame)
weld.Part0 = hit
weld.Part1 = g
vol:Destroy()
hum:TakeDamage(10)
stuck = true
perstuck = hit.Parent.Name
end
db = false
end
end
end
end
end)
for i = 0, 1, 0.15 do 
LAW.C0 = CFrame.Angles(0,0,0)
wait()
end
LAW.Part1 = nil
RAW.Part1 = nil
        
K1D = false
mode = ""
end
elseif k == "f" and mode == "" then
hum.WalkSpeed = 0
mode = "atk2"
LAW.Part1 = la
RAW.Part1 = ra
hum.WalkSpeed = 0
bg = Instance.new("BodyGyro", char.Torso)
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
coroutine.resume(coroutine.create(function()
while wait() do
bg.cframe = CFrame.new(torso.Position,Vector3.new(m.hit.p.x,torso.Position.y,m.hit.p.z)) * CFrame.Angles(0, 0, 0)
end
end))
for i = 0, 1, 0.05 do 
RAW.C0 = CFrame.Angles(math.rad(200*i),0,0)
wait()
end
cyl2 = Instance.new("Part", char)
        cyl2.FormFactor = "Custom"
        cyl2.Size = Vector3.new(0.2,0.2,0.2)
        cyl2.CanCollide = false
        cyl2:BreakJoints()
        cyl2.Name = "atak"
        cyl2.BrickColor = BrickColor.new("Deep blue")
        cylm2 = Instance.new("CylinderMesh", cyl2)
        cylm2.Scale = Vector3.new(6,1,6)
        cyl2.Transparency = 1
wel2 = Instance.new("Weld", ra)
wel2.Part0 = ra
wel2.Part1 = cyl2
wel2.C0 = CFrame.new(0,-3,0)
coroutine.resume(coroutine.create(function()
for i=0, 2, 0.5 do
cyl2.Transparency = cyl2.Transparency -i
wait()
end
end))
wait(1)
        decal2 = Instance.new("Decal", cyl2)
        decal2.Face = "Bottom"
        decal2.Texture = "http://www.roblox.com/asset/?id=90565373"
for i=0, 3, 0.05  do
cylm2.Scale = cylm2.Scale + Vector3.new(i,0,i)
wait()
end
elseif k == "t" and nm == "Ex" then
for i,v in pairs(sm) do
if v:IsA("Part") then
g = Instance.new("Explosion", v)
g.Position = v.Position
end
end
elseif k == "r" then
RAW.Part1 = ra
LAW.Part1 = la
coroutine.resume(coroutine.create(function()
for i = 0, 1, 0.05 do 
RAW.C0 = CFrame.Angles(math.rad(130*i),0,0)
wait()
end
end))
coroutine.resume(coroutine.create(function()
for i = 0, 1, 0.05 do 
LAW.C0 = CFrame.Angles(math.rad(130*i),0,0)
wait()
end
end))
ball = Instance.new("Part", char)
ball.Size = Vector3.new(2,2,2)
ball.Shape = "Ball"
ball.BrickColor = BrickColor.new("Really blue")
ball:BreakJoints()
ball.TopSurface = "Smooth"
ball.BottomSurface = "Smooth"
ball.RightSurface = "Smooth"
ball.LeftSurface = "Smooth"
ball.FrontSurface = "Smooth"
ball.Transparency = 1
ball.BackSurface = "Smooth"
wel4 = Instance.new("Weld", ball)
wel4.Part0 = ball
wel4.Part1 = char.Torso
wel4.C0 = CFrame.new(0,-2,2)
wait(2)
wel4:Destroy()
coroutine.resume(coroutine.create(function()
for i=0, 1,0.1 do
wait()
ball.Transparency = ball.Transparency -i
end
end))
coroutine.resume(coroutine.create(function()
for i = 0, 1, 0.05 do 
RAW.C0 = CFrame.Angles(math.rad(0),0,0)
wait()
end
end))
coroutine.resume(coroutine.create(function()
for i = 1, 2, 0.05 do 
LAW.C0 = CFrame.Angles(math.rad(0),0,0)
wait()
end
end))
ball.Touched:connect(function(hit)
if hit and hit.Parent:findFirstChild("Humanoid") and hit.Parent.Name ~= plyr.Name then
g = Instance.new("Explosion", ball)
g.BlastPressure = 0
g.Position = Vector3.new(ball.Position)
hit.Parent:findFirstChild("Humanoid").Health = 0
wait(1)
ball:Destroy()
end
end)
RAW.Part1 = nil
LAW.Part1 = nil
elseif k == "v" then
b1 = Instance.new("Part", char)
b1.BrickColor = BrickColor.new("Really blue")
b1.Size = Vector3.new(1,1,1)
b2 = Instance.new("Part", char)
b2.BrickColor = BrickColor.new("Cyan")
b2.Size = Vector3.new(1,1,1)
bm = Instance.new("BlockMesh", b1)
bm2 = Instance.new("BlockMesh",b2)
b1.Transparency = 0.3
b1:BreakJoints()
b2:BreakJoints()
b2.Transparency = 0.3
wel1 = Instance.new("Weld",ra)
wel1.Part0 = ra
wel1.Part1 = b1
wel1.C0 = CFrame.new(0,-1.5,0)
wel2 = Instance.new("Weld",ra)
wel2.Part0 = ra
wel2.Part1 = b2
wel2.C0 = CFrame.new(0,-1.5,0)
i = 0
i2 = 0
coroutine.resume(coroutine.create(function()
while wait() do
i = i + 0.8
if b1.Parent ~= nil then
wel1.C0 = CFrame.new(0,-1.5,0)*CFrame.Angles(i,0,0)
end
end
end))
coroutine.resume(coroutine.create(function()
while wait() do
i2 = i2 + 0.8
if b2.Parent ~= nil then
wel2.C0 = CFrame.new(0,-1.5,0)*CFrame.Angles(0,i,0)
end
end
end))
                bg2 = Instance.new("BodyGyro", char:findFirstChild("Torso"))
bg2.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
coroutine.resume(coroutine.create(function()
while wait() do
        bg2.cframe = CFrame.new(torso.Position,Vector3.new(m.hit.p.x,torso.Position.y,m.hit.p.z)) * CFrame.Angles(0, math.pi/2, 0)
end
end))
RAW.Part1 = ra
neck.DesiredAngle = -1.75
neck.CurrentAngle = -1.75
mode = "spatk"
coroutine.resume(coroutine.create(function()
                        for i = 0, 1, 0.08 do 
RAW.C0 = CFrame.Angles(0,0,math.rad(80*i))
wait()
print(math.rad(80*i))
                        end
end))                        
end
end)
m.Button1Down:connect(function()
if mode == "atk2" then
far = char:findFirstChild("atak")
cyl3 = cyl2:Clone()
cyl3:BreakJoints()
cyl3.Transparency = 0
cyl3.Parent = game.Workspace
        decal3 = Instance.new("Decal", cyl3)
        decal3.Face = "Bottom"
        decal3.Texture = "http://www.roblox.com/asset/?id=90565373"
        far:BreakJoints()
far:Destroy()
vol = Instance.new("BodyVelocity", cyl3)
vol.maxForce = Vector3.new(math.huge,math.huge,math.huge)
vol.P = 90
vol.velocity = (m.Hit.p - cyl3.Position).unit * 90
cyl3.Anchored = false
cyl3.Touched:connect(function(hit)
if hit.Parent.Name ~= plyr.Name then
vol2 = Instance.new("BodyVelocity", hit.Parent:findFirstChild("Torso"))
vol2.maxForce = Vector3.new(math.huge,math.huge,math.huge)
vol2.P = 300
vol2.velocity = vol.velocity
hit.Parent:findFirstChild("Humanoid").Sit = true
game:GetService("Debris"):AddItem(vol2,0.6)
hit.Parent:findFirstChild("Humanoid"):TakeDamage(40)
cyl3:Destroy()
end
end)
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(0,0,0)
wait()
end
elseif mode == "spatk" then
pp = m.Hit.p
b3 = b1:Clone()
b3.CanCollide = false
b3.Parent = game.Workspace
bg = Instance.new("BodyGyro",b3)
b3.CFrame = CFrame.new(b2.Position)
b3.Anchored = true
ch = 0
for i=0,3,0.08 do
wait()
b3:findFirstChild("Mesh").Scale = Vector3.new(i,i,i)
end
end
coroutine.resume(coroutine.create(function()
while wait() do 
ch = ch + 0.08
bg.cframe = CFrame.Angles(ch,0,0)
end
end))
vol = Instance.new("BodyVelocity", b3)
vol.maxForce = Vector3.new(math.huge,math.huge,math.huge)
vol.P = 90
vol.velocity = (pp - b2.Position).unit * 50 
b3.Anchored = false
end)
m.Button1Up:connect(function()
if mode == "atk2" then
mode = ""
bg:Destroy()
hum.WalkSpeed = 16
RAW.Part1 = nil
LAW.Part1 = nil
hum.WalkSpeed = 16
end
end)
m.KeyUp:connect(function(k)
if k:byte() == 17 then
ad = false
elseif k == "j" then
mode = ""
end
end)
end)

print('Naruto Loaded')
p=game.Players.LocalPlayer
c=p.Character
m=p:GetMouse()
Player = game:GetService("Players").LocalPlayer
mouse=Player:GetMouse()
Cha = Player.Character
minrun = false
rase=false
Weapon = Instance.new("Model")
Weapon.Name = "Jutsu"
Weapon.Parent = Cha
anim = Cha:findFirstChild("Animate")
sharin=false
norm=true
attacking = false
sage = false
bijuu = false
zero=false
yosa=false
debounceforatk=false
Shadow=false
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    p0.Position = p1.Position
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end
z=Instance.new("Part",Cha)
z.Size=Cha.Torso.Size
z.CanCollide=false
cloud=Instance.new("SpecialMesh",z)
cloud.MeshId="rbxassetid://1095708"
cloud.Scale=Vector3.new(20,5,20)
z.Transparency=1
Weld(z,Cha.Torso,0,20,0,0,0,0,z)
--------------Clothes---------------------
game.Players.LocalPlayer.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=181425134"
Cha.Shirt:Remove()
Cha.Pants:Remove()

Shirt = Instance.new("Shirt",Character)
Shirt.Parent = Cha
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=172422601"

Pant = Instance.new("Pants",Character)
Pant.Parent = Cha
Pant.PantsTemplate = "http://www.roblox.com/asset/?id=172422727"
-------------Lightning Script----------------

Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
        local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = Transparency or 0.4 li.BrickColor = BrickColor.new(Color)
        li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
        local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
        if Times == i then 
            local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
            li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
        else
            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.25)
    end
end


----------Chat Gui-------------
function Chat(Object,Text,Color)
local Color = BrickColor.new(Color)
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,3,0)
local Frame = Instance.new("Frame")
Frame.Parent = G
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 1
local Txt = Instance.new("TextLabel",Frame)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 2
Game:GetService("Debris"):AddItem(G,3)
end

--[[Skill Script]]--
mouse.KeyDown:connect(function(key)
key:lower()
if key == "e" then
minrun=true
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -5.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -20.00)
Cha.Humanoid.WalkSpeed=100
end

if key == "q" then
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)
Cha.Humanoid.WalkSpeed=16
minrun=false
anim.Disabled=false
end

if key == "p" and norm ==false and bijuu==true then
Chat(Cha.Head,"Take some of my Chakra!","Institutional white")
ama = true
torso = Player.Character.Torso
bla=Instance.new('Part',Workspace)
bla.Size=Vector3.new(5,5,5)
bla.BrickColor=BrickColor.new("Really red")
bla.CanCollide = True
bla.Position=torso.Position+torso.CFrame.lookVector*12
bla.Transparency = 1
bla:BreakJoints()
bv3 = Instance.new('BodyVelocity',bla) 
bv3.maxForce = Vector3.new()*math.huge
bv3.velocity = torso.CFrame.lookVector*500

fire2 = Instance.new("Fire")
fire2.Size = 30
fire2.Color = Color3.new(100,0,0)
fire2.SecondaryColor = Color3.new(100,0,0)
fire2.Enabled = true


bla.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
fire2:clone().Parent = hit.Parent:findFirstChild("Torso")
end
end)
wait(10)
ama = false
end

if key == "h" then

Defense = true
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait(4)
Defense = false
end


if key == "x" and bijuu ==true then
torso = Player.Character.Torso

anim.Disabled = true
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.7)

Chat(Cha.Head,"Tailed Beast Bomb....","Really black")
wait(1)
bla=Instance.new('Part',Workspace)
bla.Size=Vector3.new(1,1,1)
bla.BrickColor=BrickColor.new("Really black")
bla.CanCollide = True
bla.Position=torso.Position+torso.CFrame.lookVector*10
bla.Transparency = 0.3
bla:BreakJoints()
bv3 = Instance.new('BodyVelocity',bla) 
bv3.maxForce = Vector3.new()*math.huge
bv3.velocity = torso.CFrame.lookVector*200
blaMesh = Instance.new("SpecialMesh", bla)
blaMesh.MeshType = "Sphere"
blaMesh.Scale = Vector3.new(10,10,10)

bv = Instance.new("BodyVelocity")
bv.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bv.velocity = torso.CFrame.lookVector*100

bla.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(20000000000)
hit.Parent:FindFirstChild("Humanoid").Sit = true
e = Instance.new('Explosion',Workspace)
e.Position = hit.Parent.Torso.Position
e.BlastPressure = 100
e.BlastRadius = 100
ebv = bv:clone()
ebv.Parent = hit.Parent:findFirstChild("Torso")
ebv.Name = "ebv"
for _,v in pairs(hit.Parent.Torso:children()) do
if v:IsA("BodyVelocity") and v.Name == "ebv" then
wait(0.5)
v:Destroy()
end
end
bla:Destroy()
end
end)

wait(0.5)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)

anim.Disabled = false
wait(5)

firee = false
end

if key == "y" and norm ==false then
norm=true
sharin=false
bijuu=false
sage=false
Cha.Humanoid.MaxHealth = 100
wait()
Cha.Humanoid.Health = 100
Chat(Cha.Head,"Alright!","Toothpaste")
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=172422601"
Pant.PantsTemplate = "http://www.roblox.com/asset/?id=172422727"
game.Players.LocalPlayer.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=181425134"
wait(.6)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)
end

if key == "u" and sage ==false and norm ==true then
norm=false
sharin=false
sage=true
Cha.Humanoid.MaxHealth = 200
wait()
Cha.Humanoid.Health = 200
Chat(Cha.Head,"Sage mode!","Toothpaste")
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.7)
wait(1)
game.Players.LocalPlayer.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=181425357"
wait(.6)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)
end

if key == "f" and norm ==true then
norm=false
bijuu=true
Cha.Humanoid.MaxHealth = 500
wait()
Cha.Humanoid.Health = 500
Chat(Cha.Head,"Lets go!","Brick yellow")
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=183370433"
Pant.PantsTemplate = "http://www.roblox.com/asset/?id=183370482"
game.Players.LocalPlayer.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=159139241"
end
if key == "r" and norm==true and bijuu == false then
bijuu=true
norm=false
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.7)
Chat(Cha.Head,"Lend me power, Kyuubi-sama","Brick yellow")
wait(1)
Cha.Humanoid.MaxHealth = 300
wait()
Cha.Humanoid.Health = 300
game.Players.LocalPlayer.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=159139227"
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=174588964"
Pant.PantsTemplate = "http://www.roblox.com/asset/?id=174589136"
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)
end

if key == "l" and norm ==true then
rase=true
anim.Disabled=true
Chat(Cha.Head,"Rasengan!","Toothpaste")
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
Cha.Humanoid.WalkSpeed=50
r=Instance.new("Part")
r.Shape="Ball"
r.TopSurface=0
r.BottomSurface=0
r.BrickColor=BrickColor.new("Bright blue")
r.Anchored=false
r.CanCollide=false
r.Reflectance=.3
r.Transparency=.3
r.Size=Vector3.new(2,2,2)
r:BreakJoints()
w=Instance.new("Weld", c["Right Arm"])
w.Part0=c["Right Arm"]
w.Part1=r
w.C0=w.C0*CFrame.new(0,-1,0)
r.Parent=c

d=false
r.Touched:connect(function(h)
if h.Parent~=c and h.Parent:FindFirstChild("Humanoid") and not d then
d=true
o=c.Torso.CFrame
w.Parent=h.Parent.Torso
w.Part0=h.Parent.Torso
w.C0=w.C0*CFrame.new(0,0,-1)
b=Instance.new("BodyVelocity",h.Parent.Torso)
b.maxForce=Vector3.new(1/0,1/0,1/0)
b.velocity=c.Torso.CFrame.lookVector*40
g=Instance.new("BodyAngularVelocity",h.Parent.Torso)
g.maxTorque=Vector3.new(1/0,1/0,1/0)
g.angularvelocity=Vector3.new(0,0,20)
h.Parent.Torso.CFrame=CFrame.new(h.Parent.Torso.CFrame.p,o.p)
wait(4)
h:Destroy()
anim.Disabled=false
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)
r:Destroy()
b:Destroy()
g:Destroy()
end
end)
end

if key == "j" and norm ==true then
rase=true
anim.Disabled=true
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait(0.01)
Chat(Cha.Head,"Odama Rasengan!!","Toothpaste")
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
Cha.Humanoid.WalkSpeed=50
r=Instance.new("Part")
r.Shape="Ball"
r.TopSurface=0
r.BottomSurface=0
r.BrickColor=BrickColor.new("Bright blue")
r.Anchored=false
r.CanCollide=false
r.Reflectance=.3
r.Transparency=.3
r.Size=Vector3.new(4,4,4)
r:BreakJoints()
w=Instance.new("Weld", c["Right Arm"])
w.Part0=c["Right Arm"]
w.Part1=r
w.C0=w.C0*CFrame.new(0,-1,0)
r.Parent=c

d=false
r.Touched:connect(function(h)
if h.Parent~=c and h.Parent:FindFirstChild("Humanoid") and not d then
d=true
o=c.Torso.CFrame
w.Parent=h.Parent.Torso
w.Part0=h.Parent.Torso
w.C0=w.C0*CFrame.new(0,0,-1)
b=Instance.new("BodyVelocity",h.Parent.Torso)
b.maxForce=Vector3.new(1/0,1/0,1/0)
b.velocity=c.Torso.CFrame.lookVector*40
g=Instance.new("BodyAngularVelocity",h.Parent.Torso)
g.maxTorque=Vector3.new(1/0,1/0,1/0)
g.angularvelocity=Vector3.new(0,0,20)
h.Parent.Torso.CFrame=CFrame.new(h.Parent.Torso.CFrame.p,o.p)
wait(3)
h:Destroy()
anim.Disabled=false
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)
r:Destroy()
b:Destroy()
g:Destroy()
end
end)
end

if key == "k" and sage ==true then
rase=true
anim.Disabled=true
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait(0.03)
Chat(Cha.Head,"Sage Rasengan!!!!!","Toothpaste")
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
Cha.Humanoid.WalkSpeed=50
r=Instance.new("Part")
r.Shape="Ball"
r.TopSurface=0
r.BottomSurface=0
r.BrickColor=BrickColor.new("Toothpaste")
r.Anchored=false
r.CanCollide=false
r.Reflectance=0
r.Transparency=0
r.Size=Vector3.new(3,3,3)
r:BreakJoints()
w=Instance.new("Weld", c["Right Arm"])
w.Part0=c["Right Arm"]
w.Part1=r
w.C0=w.C0*CFrame.new(0,-1,0)
r.Parent=c

d=false
r.Touched:connect(function(h)
if h.Parent~=c and h.Parent:FindFirstChild("Humanoid") and not d then
d=true
o=c.Torso.CFrame
w.Parent=h.Parent.Torso
w.Part0=h.Parent.Torso
w.C0=w.C0*CFrame.new(0,0,-1)
b=Instance.new("BodyVelocity",h.Parent.Torso)
b.maxForce=Vector3.new(1/0,1/0,1/0)
b.velocity=c.Torso.CFrame.lookVector*70
g=Instance.new("BodyAngularVelocity",h.Parent.Torso)
g.maxTorque=Vector3.new(1/0,1/0,1/0)
g.angularvelocity=Vector3.new(0,0,20)
h.Parent.Torso.CFrame=CFrame.new(h.Parent.Torso.CFrame.p,o.p)
wait(4)
h:Destroy()
anim.Disabled=false
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)
r:Destroy()
b:Destroy()
g:Destroy()
end
end)
end

if key == "l" and bijuu ==true then
rase=true
anim.Disabled=true
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait(0.03)
Chat(Cha.Head,"Shadow Tailed Beast Rasengan!!","New Yeller")
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
Cha.Humanoid.WalkSpeed=50
r=Instance.new("Part")
r.Shape="Ball"
r.TopSurface=0
r.BottomSurface=0
r.BrickColor=BrickColor.new("Really black")
r.Anchored=false
r.CanCollide=false
r.Reflectance=0
r.Transparency=0.3
r.Size=Vector3.new(2,2,2)
r:BreakJoints()
w=Instance.new("Weld", mo.ra)
w.Part0=mo.ra
w.Part1=r
w.C0=w.C0*CFrame.new(0,-1,0)
r.Parent=c


d=false
r.Touched:connect(function(h)
if h.Parent~=c and h.Parent:FindFirstChild("Humanoid") and not d then
d=true
o=c.Torso.CFrame
w.Parent=h.Parent.Torso
w.Part0=h.Parent.Torso
w.C0=w.C0*CFrame.new(0,0,-1)
b=Instance.new("BodyVelocity",h.Parent.Torso)
b.maxForce=Vector3.new(1/0,1/0,1/0)
b.velocity=c.Torso.CFrame.lookVector*70
g=Instance.new("BodyAngularVelocity",h.Parent.Torso)
g.maxTorque=Vector3.new(1/0,1/0,1/0)
g.angularvelocity=Vector3.new(0,0,20)
h.Parent.Torso.CFrame=CFrame.new(h.Parent.Torso.CFrame.p,o.p)
wait(4)
h:Destroy()
anim.Disabled=false
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)
r:Destroy()
b:Destroy()
g:Destroy()
end
end)
end

if key == "m" then
Bv = Instance.new("BodyVelocity")
Bv.P = 9000
Bv.maxForce = Vector3.new(0,math.huge,0)
Bv.velocity = Vector3.new(0,100,0)
Bv.Parent = Cha.Torso
game.Debris:AddItem(Bv,1)
end

if key == "k" and Shadow==true and bijuu ==true then
rase=true
anim.Disabled=true
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait(0.03)
Chat(Cha.Head,"Shadow Tailed Beast Rasengan!!","New Yeller")
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-0, 0, -1.00)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
Cha.Humanoid.WalkSpeed=50
r=Instance.new("Part")
r.Shape="Ball"
r.TopSurface=0
r.BottomSurface=0
r.BrickColor=BrickColor.new("Really black")
r.Anchored=false
r.CanCollide=false
r.Reflectance=0
r.Transparency=0.3
r.Size=Vector3.new(2,2,2)
r:BreakJoints()
w=Instance.new("Weld", mo.RA)
w.Part0=mo.RA
w.Part1=r
w.C0=w.C0*CFrame.new(0,-1,0)
r.Parent=c


d=false
r.Touched:connect(function(h)
if h.Parent~=c and h.Parent:FindFirstChild("Humanoid") and not d then
d=true
o=c.Torso.CFrame
w.Parent=h.Parent.Torso
w.Part0=h.Parent.Torso
w.C0=w.C0*CFrame.new(0,0,-1)
b=Instance.new("BodyVelocity",h.Parent.Torso)
b.maxForce=Vector3.new(1/0,1/0,1/0)
b.velocity=c.Torso.CFrame.lookVector*70
g=Instance.new("BodyAngularVelocity",h.Parent.Torso)
g.maxTorque=Vector3.new(1/0,1/0,1/0)
g.angularvelocity=Vector3.new(0,0,20)
h.Parent.Torso.CFrame=CFrame.new(h.Parent.Torso.CFrame.p,o.p)
wait(4)
h:Destroy()
anim.Disabled=false
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)
r:Destroy()
r:Destroy()
r:Destroy()
b:Destroy()
g:Destroy()
end
end)
end

if key == "g" and bijuu == true and zero == false then
Chat(Cha.Head,"Kurama!!","Bright red")
zero=true
wait()
ZeroAbsorb = Instance.new("Part")
ZeroAbsorb.BrickColor = BrickColor.new("Really red")
ZeroAbsorb.Size = Vector3.new(20,20,20)
ZeroAbsorb.TopSurface = "Smooth"
ZeroAbsorb.BottomSurface = "Smooth"
ZeroAbsorb.Shape = "Block"
ZeroAbsorb.CanCollide = false
ZeroAbsorb.Anchored = true
ZeroAbsorb.Transparency = 1
ZeroAbsorb.Reflectance  = 0.2
ZeroAbsorbMesh = Instance.new("SpecialMesh",ZeroAbsorb)
ZeroAbsorbMesh.MeshType = "Sphere"
ZeroAbsorbMesh.Scale  = Vector3.new(1,1,1)
ZeroAbsorb.Parent = Workspace
ZeroAbsorb.CFrame = Cha.Torso.CFrame*CFrame.new(0, 0, 0)

function onDamage(Part)
if Part:findFirstChild("Humanoid") == nil and Part:findFirstChild("BodyVelocity") ~= nil then
Part.Anchored = true
if Part:findFirstChild("Mesh") ~= nil then
z = Part:findFirstChild("Mesh")
for i = 1,5 do
z.Scale = z.Scale + Vector3.new(1,1,1)
wait(0.05)
z:Destroy()
end
end  
end
end

ZeroAbsorb.Touched:connect(onDamage) 
wait(10)
ZeroAbsorb:Destroy()
wait(1)
zero = false
end
if key == "v" and bijuu==false and yosa == false and debounceforatk == false then
Chat(Cha.Head,"Shuriken Barrage!!","Really red")
yosa = true
debounceforatk =true

for i = 1,40 do
x = Instance.new("Part")
x.Size = Vector3.new(7,4,7)
x.TopSurface = "Smooth"
x.BottomSurface = "Smooth"
x.CanCollide = false
x.Anchored = false
x.Transparency = 0
z = Instance.new("SpecialMesh",x)
z.MeshType = "Sphere"
z.Scale  = Vector3.new(0,0,0)
y = Instance.new("BodyVelocity")
y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
y.velocity = Cha.Torso.CFrame.lookVector*200
x.Parent = Workspace
y.Parent = x
x.CFrame = Cha.Torso.CFrame*CFrame.new(math.random(-3,3), math.random(-1,1),-10)
game.Debris:AddItem(x, 2)
x.Anchored = true
x.BrickColor = BrickColor.new("Mid stone grey")
x.Anchored = false
x.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(0.5)
end
end)
  
  for i = 1,2.5 do
   z.Scale = z.Scale + Vector3.new(.1,.1,.2)
   x.Transparency = x.Transparency + .2
   wait(.001)
  end
  
  end

wait()
debounceforatk = false
wait()
yosa = false
end
if key == "v" and bijuu==true and yosa == false and debounceforatk == false then
Chat(Cha.Head,"Tailed Beast Bomb Barrage!!","Really red")
yosa = true
debounceforatk =true

for i = 1,40 do
x = Instance.new("Part")
x.Size = Vector3.new(15,15,15)
x.TopSurface = "Smooth"
x.BottomSurface = "Smooth"
x.CanCollide = false
x.Anchored = false
x.Transparency = 0
z = Instance.new("SpecialMesh",x)
z.MeshType = "Sphere"
z.Scale  = Vector3.new(0,0,0)
y = Instance.new("BodyVelocity")
y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
y.velocity = Cha.Torso.CFrame.lookVector*200
x.Parent = Workspace
y.Parent = x
x.CFrame = Cha.Torso.CFrame*CFrame.new(math.random(-3,3), math.random(-1,1),-10)
game.Debris:AddItem(x, 2)
x.Anchored = true
x.BrickColor = BrickColor.new("Really black")
x.Anchored = false
x.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
hit.Parent:FindFirstChild("Humanoid"):TakeDamage(0.5)
e = Instance.new('Explosion',Workspace)
e.Position = hit.Parent.Torso.Position
e.BlastPressure = 0
e.BlastRadius = 10
end
end)
  
  for i = 1,2.5 do
   z.Scale = z.Scale + Vector3.new(.1,.1,.2)
   x.Transparency = x.Transparency + .2
   wait(.001)
  end
  
  end

wait()
debounceforatk = false
wait()
yosa = false
end
if key == "t" and bijuu==true or key == "t" and sharin==true then

    Chat(Cha.Head,"Lightning Speed!","Brick yellow")
    wait()
    for i=1,10 do
        Lightning(Cha.Torso.Position,mouse.Hit.p,math.random(5,10),math.random(-2.5,2.5),"New Yeller",0.05,0.3)
    end
    Wait()
    x=Instance.new("Part",Cha)
    x.Transparency=1
    x.Position=mouse.Hit.p
    Cha.Torso.CFrame=x.CFrame*CFrame.new(0,5,0)
    x:Destroy()
end
if key == "n" and Shadow==false then
Shadow=true
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, -1.55)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.5)*CFrame.fromEulerAnglesXYZ(-1, 0, 1.55)
Chat(Cha.Head,"Juubi Shadow Clone Jutsu","Institutional white")
wait(1)
local name = "KaraMura"
local players = game:GetService("Players")
local me = players:FindFirstChild(name)
local char = me.Character 
script.Parent = char
script.Name = "_Main" 
local mimic = name
local protectbool = true
local count = 2
local protect = {}
mo = Instance.new("Model") 
mo.Parent = char 
mo.Name = "" 
head = Instance.new("Part") 
head.Parent = mo 
head.Name = "Head" 
head.CanCollide = true
head.formFactor = "Symmetric" 
head.Transparency = 0.5
head.BrickColor = BrickColor.new("Really black") 
head.Size = Vector3.new(2, 1, 1) 
head.Anchored = true 
i = Instance.new("SpecialMesh")
i.Scale = Vector3.new(1.3, 1.3, 1.3)
i.Parent = head 
Face=Instance.new('Decal',head)
Face.Face='Front'
Face.Texture='http://www.roblox.com/asset/?id=140913766'
--------------------------------
torso = Instance.new("Part") 
torso.Parent = mo 
torso.CanCollide = true
torso.Name = "Torso" 
torso.formFactor = "Symmetric" 
torso.Transparency = 0.5
torso.BrickColor = BrickColor.new("Really black") 
torso.Size = Vector3.new(2, 2, 1) 
torso.Anchored = true 
is = Instance.new("SpecialMesh")
is.MeshType = "Brick" 
is.Scale = Vector3.new(1, 1, 1)
is.Parent = torso 
---------------------------------
ra = Instance.new("Part") 
ra.Parent = mo 
ra.CanCollide = true
ra.Name = "RA" 
ra.formFactor = "Symmetric" 
ra.Transparency = 0.5
ra.BrickColor = BrickColor.new("Really black") 
ra.Size = Vector3.new(1, 2, 1) 
ra.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = ra 
---------------------------------
la = Instance.new("Part") 
la.CanCollide = true
la.Parent = mo 
la.Name = "LA" 
la.formFactor = "Symmetric" 
la.Transparency = 0.5
la.BrickColor = BrickColor.new("Really black") 
la.Size = Vector3.new(1, 2, 1) 
la.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = la 
---------------------------------
---------------------------------
rl = Instance.new("Part") 
rl.Parent = mo  
rl.CanCollide = true
rl.Name = "RL" 
rl.formFactor = "Symmetric" 
rl.Transparency = 0.5
rl.BrickColor = BrickColor.new("Really black") 
rl.Size = Vector3.new(1, 2, 1) 
rl.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = rl 
---------------------------------
ll = Instance.new("Part") 
ll.Parent = mo 
ll.CanCollide = true
ll.Name = "LL" 
ll.formFactor = "Symmetric" 
ll.Transparency = 0.5
ll.BrickColor = BrickColor.new("Really black") 
ll.Size = Vector3.new(1, 2, 1) 
ll.Anchored = true 
i = Instance.new("SpecialMesh")
i.MeshType = "Brick" 
i.Scale = Vector3.new(1, 1, 1)
i.Parent = ll 
---------------------------------
fire = Instance.new("Fire") 
fire.Parent = torso 
fire.Size = 1 
fire.Heat = 2 
fire.Color = Color3.new(0, 0, 1) 
fire.SecondaryColor = Color3.new(0, 0, 102) 
    local gui = Instance.new("BillboardGui")
    gui.Parent = mo
    gui.Adornee = head
    gui.Size = UDim2.new(1, 0, 1, 0)
    gui.StudsOffset = Vector3.new(0, 3, 0)
    local frame = Instance.new("Frame")
    frame.Parent = gui
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 1
    local text = Instance.new("TextLabel")
    text.Parent = frame
    text.Size = UDim2.new(1, 0, 1, 0)
    text.BackgroundTransparency = 1
    text.Text = mo.Name.. "Shadow Clone" 
---------------------------------
function SPL(Color, Target, Part, Time)
    coroutine.resume(coroutine.create(function()
        local SPL = Instance.new("SelectionPartLasso", Workspace)
        SPL.Color = BrickColor.new(Color)
        SPL.Humanoid = Target
        SPL.Part = Part
        wait(Time)
        pcall(function() SPL:Remove() end)
    end))
end
function sb(color, adorn, time) 
coroutine.resume(coroutine.create(function()
local SB = Instance.new("SelectionBox") 
SB.Parent = head
SB.Adornee = adorn
SB.Color = BrickColor.new(color) 
wait(time) 
pcall(function() SB:Remove() end)
end))
end 
---------------------------------
function talk(msg) 
if string.sub(msg, 1, 5) == "kill " then 
said = string.lower(string.sub(msg, 6)) 
look = players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
human = look[i].Character.Humanoid 
SPL("Bright red", human, head, 1.5)
sb("Bright red", human.Parent, 1.5) 
human.Parent:BreakJoints() 
end 
end 
end 
if string.sub(msg, 1, 7) == "follow " then 
said = string.lower(string.sub(msg, 8)) 
look = players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
mimic = look[i].Name 
end 
end 
end 
if string.sub(msg, 1, 8) == "protect " then 
said = string.lower(string.sub(msg, 9)) 
look = players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
table.insert(protect,look[i].Name)
end 
end 
end 
if string.sub(msg, 1, 10) == "unprotect " then 
said = string.lower(string.sub(msg, 11)) 
look = players:GetChildren() 
for i = 1, #look do 
for i,v in ipairs(protect) do
count = count + 1
if protect[count] == nil then return end
if string.find(look[i]:lower(),protect[count]:lower()) then
table.remove(protect,protect[count])
else print("Not found")
end 
end 
end 
count = 0
end
if msg == "exitall" then 
mo:remove() 
script:remove() 
end 
end 
me.Chatted:connect(talk) 
---------------------------------
local x = 6.5
local y = 0
local z = 6.5
while true do
if me.Character.Humanoid.Health == 0 then return end
local clone = players:FindFirstChild(mimic)
if clone == nil then return end
head.CFrame = clone.Character.Head.CFrame + Vector3.new(x,y,z)
torso.CFrame = clone.Character.Torso.CFrame + Vector3.new(x,y,z)
ra.CFrame = clone.Character["Right Arm"].CFrame + Vector3.new(x,y,z)
la.CFrame = clone.Character["Left Arm"].CFrame + Vector3.new(x,y,z)
rl.CFrame = clone.Character["Right Leg"].CFrame + Vector3.new(x,y,z)
ll.CFrame = clone.Character["Left Leg"].CFrame + Vector3.new(x,y,z)
coroutine.wrap(function()
if protectbool == true then
    print("a")
    for a,t in ipairs(protect) do
        print("test")
        if t == nil then return end
        print("b")
        if players:FindFirstChild(t) == nil then return end
        print("c")
        if players[t].Character == nil then return end
        print("d")
        for i,v in pairs(players:GetPlayers()) do
            print("e")
            if (players[t].Character.Torso.Position - v.Character.Torso.Position).magnitude < 10 then
                if v.Name == t then return end
                SPL("Bright red", v.Character.Humanoid, head, 1.5)
                sb("Bright red", v.Character, 1.5) 
                v.Character:BreakJoints()
            end
        end
    end
end
end)()
wait()
end
end
end)
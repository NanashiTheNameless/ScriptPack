z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://275564512"--303570180
z.Looped = true
z.Pitch = 1
z.Volume = 10
wait(.1)
z:Play()
----------------------------------------------------
p = game.Players.LocalPlayer
char = p.Character
des = false
fling = true
dot = false
falling = false
jump = true
--char.Shirt:Remove()
--for i,v in pairs(char:GetChildren()) do if v:IsA("Pants") then v:Remove() end end
for i,v in pairs(char:GetChildren()) do if v:IsA("Hat") then v.Handle:Remove() end end
wait()--shirt = Instance.new("Shirt", char)
--shirt.Name = "Shirt"
--pants = Instance.new("Pants", char)
--pants.Name = "Pants"

--char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=451927425"
--char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=236412261"
tp = true
shoot = true
hum = char.Humanoid
punch = true
neckp = char.Torso.Neck.C0
neck = char.Torso.Neck
hum.MaxHealth = 999999999
wait()
hum.Health =hum.MaxHealth
des = false
root=char.HumanoidRootPart
torso = char.Torso
char.Head.face.Texture = "rbxassetid://0"
local ChatService = game:GetService("Chat")
local player = game.Players.LocalPlayer
lig = Instance.new("PointLight",player.Character.Torso)
lig.Color=Color3.new(255,0,0)
m=player:GetMouse()
bb = Instance.new("BillboardGui",player.Character.Head)
bb.Enabled = true
function newRay(start,face,range,wat)
       local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
       hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
       return rey,hit,pos
end
aa1={}
torso=game.Players.LocalPlayer.Character.Torso

local WorldUp = Vector3.new(0,1,0)
function look2(Vec1,Vec2)
   local Orig = Vec1
   Vec1 = Vec1+Vector3.new(0,1,0)
   Vec2 = Vec2+Vector3.new(0,1,0)
   local Forward = (Vec2-Vec1).unit
   local Up = (WorldUp-WorldUp:Dot(Forward)*Forward).unit
   local Right = Up:Cross(Forward).unit
   Forward = -Forward
   Right = -Right
   return CFrame.new(Orig.X,Orig.Y,Orig.Z,Right.X,Up.X,Forward.X,Right.Y,Up.Y,Forward.Y,Right.Z,Up.Z,Forward.Z)
end

function look(CFr,Vec2)
   local A = Vector3.new(0,0,0)
   local B = CFr:inverse()*Vec2
   local CF = look2(A,Vector3.new(A.X,B.Y,B.Z))
   if B.Z > 0 then
       CF = CFr*(CF*CFrame.Angles(0,0,math.pi))
   elseif B.Z == 0 then
       if B.Y > 0 then
           CF = CFr*CFrame.Angles(math.pi/2,0,0)
       elseif B.Y < 0 then
           CF = CFr*CFrame.Angles(-math.pi/2,0,0)
       else
           CF = CFr
       end
   end
   local _,_,_,_,X,_,_,Y,_,_,Z,_ = CF:components()
   local Up = Vector3.new(X,Y,Z)
   local Forward = (Vec2-CFr.p).unit
   local Right = Up:Cross(Forward)
   Forward = -Forward
   Right = -Right
   return CFrame.new(CFr.X,CFr.Y,CFr.Z,Right.X,Up.X,Forward.X,Right.Y,Up.Y,Forward.Y,Right.Z,Up.Z,Forward.Z)
end

function simulate(j,d,m,r,t)
       local joint = j
       for i,v in ipairs(t) do
               if v[1]:FindFirstChild("Weld") then
                       local stiff = m.CFrame.lookVector*0.03
                       if i > 1 then joint = t[i-1][1].CFrame*CFrame.new(0,0,d*.5) end
                       local dir = (v[2].p-(joint.p+Vector3.new(0,0.2,0)+stiff)).unit
                       local dis = (v[2].p-(joint.p+Vector3.new(0,0.2,0)+stiff)).magnitude
                       local pos = joint.p+(dir*(d*0.5))
                     --if v[1].CFrame.y<=workspace.Base.CFrame.y then pos = joint.p+(dir*(d*.5)) end
                       local inv = v[1].Weld.Part0.CFrame
                       local rel1 = inv:inverse()*pos
                       local rel2 = inv:inverse()*(pos-(dir*dis))
                       local cf = look(CFrame.new(rel1),rel2)--CFrame.new(pos,pos-(dir*dis))*CFrame.fromEulerAnglesXYZ(r.x,r.y,r.z)
                       v[1].Weld.C0 = cf
                       v[2] = inv*cf
                       --v[1].CFrame = cf
               end
       end
end
for i=1,8 do
local p = Instance.new("Part",char)
p.Anchored = false
p.BrickColor = BrickColor.new("Dark stone grey")
p.CanCollide = false
p.FormFactor="Custom"
p.Material = "Fabric"
p.TopSurface = "SmoothNoOutlines"
p.BottomSurface = "SmoothNoOutlines"
p.RightSurface = "SmoothNoOutlines"
p.LeftSurface = "SmoothNoOutlines"
p.FrontSurface = "SmoothNoOutlines"
p.BackSurface = "SmoothNoOutlines"

p.Size=Vector3.new(2,.2,0.2)
p:BreakJoints() -- sometimes the parts are stuck to something so you have to breakjoints them
mesh = Instance.new("BlockMesh",p)
mesh.Scale = Vector3.new(1,1,4)
local w = Instance.new("Motor6D",p)
w.Part0 = aa1[i-1] and aa1[i-1][1] or torso
w.Part1 = p
w.Name = "Weld"
--table.insert(aa1,p)
aa1[i] = {p,p.CFrame}

end
game:service"RunService".Stepped:connect(function()
simulate(torso.CFrame*CFrame.new(0,0.9,.5),.6,torso,Vector3.new(),aa1)
end)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,200,0,50)
bb.StudsOffset = Vector3.new(0,1,0)
gui=Instance.new("TextBox",bb)
gui.Text = "* "
gui.Size = UDim2.new(0,133,0,45)
gui.Position=UDim2.new(0,57,0,-40)
gui.TextColor3 = Color3.new(255,255,255)
gui.BackgroundColor3=Color3.new(0,0,0)
gui.TextWrapped = true
gui.TextScaled = true
gui.TextXAlignment = "Left"
gui.TextYAlignment = "Top"
gui.Visible = false
gui.BorderColor3 = Color3.new(0,0,0)
punch2 = true
gui1=Instance.new("TextButton",bb)
gui1.Position=UDim2.new(0,5,0,-43)
gui1.Size = UDim2.new(0,190,0,51)

gui1.TextColor3 = Color3.new(255,255,255)
gui1.BackgroundColor3=Color3.new(255,255,255)
jump2 = true
gui1.Visible = false
img = Instance.new("ImageLabel",bb)
img.Size = UDim2.new(0,46,0,47)
img.Position = UDim2.new(0,10,0,-41)
img.Image = "rbxassetid://447301252"
img.BorderColor3 = Color3.new(0,0,0)
img.Visible = false
soka = Instance.new("Sound",char)
soka.SoundId = "http://www.roblox.com/asset/?id = 0"
soka.Volume = 1
boom = Instance.new("Sound",char)
boom.SoundId = "http://www.roblox.com/asset/?id = 0"
boom.Volume = 1
boom2 = Instance.new("Sound",char)
boom2.SoundId = "http://www.roblox.com/asset/?id = 0"
boom2.Volume = 1
boom3 = Instance.new("Sound",char)
boom3.SoundId = "http://www.roblox.com/asset/?id = 0"
boom3.Volume = 1
tps = Instance.new("Sound",char)
tps.SoundId = "http://www.roblox.com/asset/?id = 0"
tps.Volume = 1
asd = Instance.new("Sound",char)
asd.SoundId = "http://www.roblox.com/asset/?id = 0"
asd.Volume =1 
asd1 = Instance.new("Sound",char)
asd1.SoundId = "http://www.roblox.com/asset/?id = 0"

asd2 = Instance.new("Sound",char)
asd2.SoundId = "http://www.roblox.com/asset/?id = 0"
asd2.Looped = true
asd2.Volume = 5
asd3 = Instance.new("Sound",char)
asd3.SoundId = "http://www.roblox.com/asset/?id = 0"
asd3.Looped = true
asd4 = Instance.new("Sound",char)
asd4.SoundId = "http://www.roblox.com/asset/?id = 0"
asd4.Looped = true
asd5 = Instance.new("Sound",char)
asd5.SoundId = "http://www.roblox.com/asset/?id = 0"
asd5.Looped = true
gas = Instance.new("Sound",char)
gas.SoundId = "http://www.roblox.com/asset/?id = 0"
asd6 = Instance.new("Sound",char)
asd6.SoundId = "http://www.roblox.com/asset/?id = 0"
asd6.Looped = true
function play(play)
asd:Play()
wait(0.05)
--asd1:Play()
end



------------
-------------------------

function stream(origin,dir,length,size)
       local parts = {}
       for i = 1,length do
               local p = Instance.new("Part",char)
               p.Anchored = true
               p.Transparency = 0.5
               p.TopSurface = 0
               p.BottomSurface = 0
               p.CanCollide = false
               p.BrickColor = BrickColor.new("Dark stone grey")
               p.Size = Vector3.new(10,30,10) -- for now
               p.CFrame = CFrame.new(origin+dir*i*size)*CFrame.Angles(math.random()*math.pi,math.random()*math.pi,math.random()*math.pi)
               parts[i] = {p,CFrame.Angles(math.random()*math.pi/5,math.random()*math.pi/5,math.random()*math.pi/5)}
               game:GetService("Debris"):AddItem(p,3)
       end
       Spawn(function()
               while parts do
                       for i,v in pairs(parts) do
                               if v[1].Parent == char then
                                       v[1].CFrame = v[1].CFrame*v[2]
                               else
                                       parts = nil
                                       break
                               end
                       end
                       wait(0.02)
               end
       end)
end

--[[-- listen for their chatting
player.Chatted:connect(function(message)
a = string.len(message)
gui.Text = ""
gui.Visible = true
gui1.Visible = true
des = false
img.Visible = true
print(a)
if dot == false then
gui.Text = ""
for i = 1,string.len(message) do 
gui.Text =gui.Text..message:sub(i,i)
play()

end
end


des = true
end)]]--
m.KeyDown:connect(function(k)
if k == "g" then
asd2:Play()


end
end)

m.KeyDown:connect(function(k)
if k == "r" then

asd4:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "q" then

asd3:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "z" then
img.Image = "rbxassetid://332766052"

end
end)
m.KeyDown:connect(function(k)
if k == "c" then
img.Image = "rbxassetid://447301252"

end
end)
m.KeyDown:connect(function(k)
if k == "b" then

asd6:Play()
end
end)
mouse = p:GetMouse()
m.KeyDown:connect(function(k)
if k:byte() == 48 then

hum.WalkSpeed = 100
end
end)
m.KeyDown:connect(function(k)
if k:byte() == 50 then

soka:Play()
end
end)
m.KeyDown:connect(function(k)
if k:byte() == 52 then

char.Head.face.Texture = "rbxassetid://444037452"
end
end)
m.KeyDown:connect(function(k)
if k:byte() == 51 then

char.Head.face.Texture = "rbxassetid://332768867"
end
end)
m.KeyUp:connect(function(k)
if k:byte() == 48 then

hum.WalkSpeed = 16
end
end)
p.Chatted:connect(function(m)
if m == "Okay." then
soka:Play()
end
end)
m.KeyDown:connect(function(k)
if k == "x" then
if des == true then
gui.Visible = false
gui.Text = "* "
gui1.Visible = false
img.Visible = false
end
end
end)
m.KeyDown:connect(function(key)
if key == "ja" then
if tp == true then
tp = false
tps:Play()
char.Head.face.Parent = game.Lighting
for i,v in pairs(char:GetChildren()) do if v:IsA("Part") then v.Transparency = 1
end

end
  wait(0.5)
for i,v in pairs(char:GetChildren()) do if v:IsA("Part") then v.Transparency = 0          
end

end
char.HumanoidRootPart.CFrame = mouse.Hit * CFrame.new(0, 3, 0)
char.HumanoidRootPart.Transparency =  1
game.Lighting.face.Parent = char.Head
   wait(0.2)

tp = true


end
end
end)


m.KeyDown:connect(function(key)
   if key == "ta" then
if punch2 == true then
punch2 = false
punch = false

local ChatService = game:GetService("Chat")

neck.C0 = neck.C0 * CFrame.Angles(0.3,0,0)
ChatService:Chat(char.Head, "Mind if I get Serious?")
wait(1)
local ChatService = game:GetService("Chat")


ChatService:Chat(char.Head ,"Killer Move: Serious Series...")
wait(1)
local ChatService = game:GetService("Chat")


ChatService:Chat(char.Head, "SERIOUS PUNCH.")
neck.C0 = neckp
wait(0.6)
org = char.Torso["Left Shoulder"].C0
char.Torso["Left Shoulder"].C0 = char.Torso["Left Shoulder"].C0 * CFrame.new(-0.3,0,0) * CFrame.Angles(0,0,math.rad(-90))
wait()
killbrick2 = Instance.new("Part",char)
killbrick2.Size = Vector3.new(80,80,9000)
killbrick2.Transparency = 1

killbrick2.CanCollide = true
wait(0.1)
killbrick2.CanCollide = false

killbrick2.Anchored = true

killbrick2.CFrame = char.Torso.CFrame * CFrame.new(0,0,-1005)

killbrick2.Touched:connect(function(h)
local x = h.Parent:FindFirstChild("Humanoid")
if x then
if x.Parent.Name == game.Players.LocalPlayer.Name then
safe = true
else safe = false
end
if x then
if safe == false then
h.Parent.Torso.Velocity = CFrame.new(char.Torso.Position,h.Parent.Torso.Position).lookVector * 900
local bodyforc = Instance.new("BodyForce", h.Parent.Torso)
boom:Play()
bodyforc.force = Vector3.new(0, h.Parent.Torso:GetMass() * 196.1, 0)


wait(0.2)
x.Parent:BreakJoints()
wait()
safe = true
end
end
end
end)








 local rng = Instance.new("Part", char)
       rng.Anchored = true
   rng.BrickColor = BrickColor.new("Dark stone grey")
       rng.CanCollide = false
   rng.FormFactor = 3
       rng.Name = "Ring"
    rng.Size = Vector3.new(1, 1, 1)
       rng.Transparency = 0.8
    rng.TopSurface = 0
    rng.BottomSurface = 0
rng.CFrame = char["Left Arm"].CFrame * CFrame.new(0,-2,0)
--rng.Rotation = Vector3.new(math.pi/2,0,0)
       rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm.Scale = Vector3.new(1, 1.3, 2)
local rng1 = Instance.new("Part", char)
       rng1.Anchored = true
   rng1.BrickColor = BrickColor.new("Dark stone grey")
       rng1.CanCollide = false
   rng1.FormFactor = 3
       rng1.Name = "Ring"
    rng1.Size = Vector3.new(1, 1, 1)
       rng1.Transparency = 0.8
    rng1.TopSurface = 0
    rng1.BottomSurface = 0
rng1.CFrame = char["Left Arm"].CFrame * CFrame.new(0,-2,0)
--rng1.Rotation = Vector3.new(math.pi/2,0,0)
       rng1.CFrame = rng1.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm1 = Instance.new("SpecialMesh", rng1)
    rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm1.Scale = Vector3.new(1, 1.3, 2)
       
       local p = (torso.CFrame*CFrame.new(-20,0,3))
       stream(p.p,((p*Vector3.new(-0.7,0,1))-p.p).unit,90,5) -- 20 is number of parts, 6 is distance between each one
       local p = (torso.CFrame*CFrame.new(20,0,3))
       stream(p.p,((p*Vector3.new(0.7,0,1))-p.p).unit,90,5) -- same here

local rng2 = Instance.new("Part", char)
       rng2.Anchored = true
   rng2.BrickColor = BrickColor.new("Dark stone grey")
       rng2.CanCollide = false
   rng2.FormFactor = 3
       rng2.Name = "Ring"
    rng2.Size = Vector3.new(1, 1, 1)
       rng2.Transparency = 0.8
    rng2.TopSurface = 0
    rng2.BottomSurface = 0
rng2.CFrame = char["Left Arm"].CFrame * CFrame.new(0,-2,0)
--rng1.Rotation = Vector3.new(math.pi/2,0,0)
       rng2.CFrame = rng2.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
       local rngm2 = Instance.new("SpecialMesh", rng2)
    rngm2.MeshId = "http://www.roblox.com/asset/?id=3270017"
       rngm2.Scale = Vector3.new(1, 1.3, 2)
wait(0.1)
          
boom3:Play()
    coroutine.wrap(function()
     for i = 1, 35, 0.5 do





       rngm.Scale = Vector3.new(50 + i*2, 10 + i*2, 2.5+ i*4)
rngm1.Scale = Vector3.new(50 + i*2, 1.4 + i*2, 1.4+ i*4)
rngm2.Scale = Vector3.new(50 + i*2, 10 + i*2, 1.2+ i*4)
   
         wait()
           end
             wait()
           rng:Destroy()
rng1:Destroy()
rng2:Destroy()
             killbrick2:Remove()
      wait(0.5)
char.Torso["Left Shoulder"].C0 = org
   wait(1)
punch2 = true
punch = true
wait()


end)()



end


wait(.1)


end
end)


----------------
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=true
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local Effects={}
local gun=false
local shoot=false
player=nil 
mana=0
cam = workspace.CurrentCamera
ZTarget = nil
RocketTarget = nil

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Heartbeat:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Heartbeat:wait(0)
    end
    end
	    end
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end
	
	
local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local TrailColor = ("Dark stone grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "Fabric"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "Fabric"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "Fabric"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "Fabric"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
	
so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 99)), Ignore) 
end 

Damagefunc=function(Part,hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        local h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
                        local c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                local Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                local blocked=false
                local block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
                h.Health=h.Health-Damage
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, Part.BrickColor.Color)
                else
                h.Health=h.Health-(Damage/2)
                ShowDamage((Part.CFrame * CFrame.new(0, 0, (Part.Size.Z / 2)).p + Vector3.new(0, 1.5, 0)), -Damage, 1.5, BrickColor.new("Bright blue").Color)
                end
                if Type=="Knockdown" then
                local hum=hit.Parent.Humanoid
hum.PlatformStand=true
coroutine.resume(coroutine.create(function(HHumanoid)
swait(1)
HHumanoid.PlatformStand=false
end),hum)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
local rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                local rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                local bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
	            local Targetting = false
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                local TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                local  targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                local targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                local dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                Targetting=true
                RocketTarget=ZTarget
                for i=1,Property do
                --while Targetting==true and Humanoid.Health>0 and Character.Parent~=nil do
                if Humanoid.Health>0 and Character.Parent~=nil and TargHum.Health>0 and TargHum.Parent~=nil and Targetting==true then
                swait()
                end
                --workspace.CurrentCamera.CoordinateFrame=CFrame.new(Head.CFrame.p,Head.CFrame.p+rmdir*100)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)*cf(0,5,10)*euler(-0.3,0,0)
                end
                Targetting=false
                RocketTarget=nil
                targetgui.Parent=nil
                cam.CameraType="Custom"
                end
                end
                        local debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
        end
end


function ShowDamage(Pos, Text, Time, Color)
	local Rate = (1 / 30)
	local Pos = (Pos or Vector3.new(0, 0, 0))
	local Text = (Text or "")
	local Time = (Time or 2)
	local Color = (Color or Color3.new(1, 0, 0))
	local EffectPart = part("Custom",workspace,"Fabric",0,1,BrickColor.new(Color),"Effect",vt(0,0,0))
	EffectPart.Anchored = true
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Size = UDim2.new(3, 0, 3, 0)
	BillboardGui.Adornee = EffectPart
	local TextLabel = Instance.new("TextLabel")
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color
	TextLabel.TextScaled = true
	TextLabel.Font = Enum.Font.ArialBold
	TextLabel.Parent = BillboardGui
	BillboardGui.Parent = EffectPart
	game.Debris:AddItem(EffectPart, (Time + 0.1))
	EffectPart.Parent = game:GetService("Workspace")
	Delay(0, function()
		local Frames = (Time / Rate)
		for Frame = 1, Frames do
			wait(Rate)
			local Percent = (Frame / Frames)
			EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
			TextLabel.TextTransparency = Percent
		end
		if EffectPart and EffectPart.Parent then
			EffectPart:Destroy()
		end
	end)
end

HandleA=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,1,"Dark stone grey","HandleA",Vector3.new(0.200000003, 0.924000025, 0.251999974))
HandleAweld=weld(m,Character["Right Arm"],HandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0840759277, -0.00163650513, 0.993845463, 0.999998212, -1.10852261e-005, -0, 0, 1.09631201e-017, -0.999998212, 1.09064322e-005, 0.999996305, 1.38777878e-016))
mesh("BlockMesh",HandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
FakeHandleA=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,1,"Dark stone grey","FakeHandleA",Vector3.new(0.200000003, 0.420000017, 0.251999974))
FakeHandleAweld=weld(m,HandleA,FakeHandleA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 1.90734863e-006, -4.76837158e-007, 0.999998212, 2.13162126e-014, -5.3632084e-007, -2.13162126e-014, 0.999998212, -1.27329857e-016, 3.57546924e-007, -4.73488936e-019, 0.999996424))
mesh("BlockMesh",FakeHandleA,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
HitboxA=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,1,"Dark stone grey","HitboxA",Vector3.new(0.260399997, 2.26800036, 0.671999991))
HitboxAweld=weld(m,FakeHandleA,HitboxA,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.01556396, 0.0198795795, 0.999996424, 1.79766672e-012, -1.26029063e-005, -1.79766672e-012, 0.999996424, -1.14722063e-016, 1.22454048e-005, -1.16638766e-016, 0.999992847))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -0.671827316, 0.313827038, 0.999993801, -3.54627962e-014, -8.19193701e-007, 4.97018401e-014, 0.99999404, -1.09530813e-013, 7.89339538e-007, 9.65395366e-014, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.503871918, 0.0200036764, 0.999996424, 5.32912303e-015, -2.68159965e-007, -5.32912473e-015, 0.999996424, -1.26083356e-016, -8.93851393e-008, -1.26327738e-016, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.252000004, 0.503999949))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.671840668, 0.019996047, 0.999986649, -2.4655126e-012, 4.32561137e-007, 2.59496005e-012, 0.999986768, -1.49009139e-007, 2.52821337e-007, 8.94055319e-008, 0.999984741))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.17600012, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.47001648, 0.0187937021, 0.999996424, 1.93773531e-007, -9.44143176e-005, -1.93700657e-007, 0.999996424, 7.7484583e-007, 9.40571117e-005, -7.74830198e-007, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 1, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.17600012, 0.335999995))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.46961975, 0.0198013783, 0.999996424, 2.38440322e-007, -1.83236498e-005, -2.38423183e-007, 0.999996424, 9.53646634e-007, 1.79661693e-005, -9.53645667e-007, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.462000072, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.83972168, 0.0198941231, 0.999996424, 1.72305952e-012, -1.13515125e-005, -1.72305952e-012, 0.999996424, -1.15788623e-016, 1.09940074e-005, -1.15460199e-016, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.42800009, 0.671999991))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.59558105, 0.0198942423, 0.999996424, 1.79766672e-012, -1.14408977e-005, -1.79766672e-012, 0.999996424, -1.1639756e-016, 1.10833907e-005, -1.1500975e-016, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, 0.335924149, 0.0199792385, 0.999992847, 1.81186826e-013, -4.11162546e-006, -1.81186826e-013, 0.999992847, -7.58573273e-016, 3.39656435e-006, 2.54499572e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.15527344e-005, -0.756420135, -0.277666092, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335924149, -0.0639793873, 0.999992847, 1.81186826e-013, -4.11162546e-006, -1.81186826e-013, 0.999992847, -7.58573273e-016, 3.39656435e-006, 2.54499572e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.756376266, -0.193712234, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -1.90734863e-006, 0.0200020075, 0.999994516, -4.8679409e-013, 1.78781193e-007, -4.44161797e-013, 0.99999392, -1.42889402e-016, -7.15082933e-007, -1.14757771e-016, 0.999988675))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.937992096, 0.137899399, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.728122711, 0.305858612, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.672348022, 0.0161781311, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.125961304, 0.0200021267, 0.999992847, -2.13160991e-014, -2.68156327e-007, 2.13160974e-014, 0.999992847, -1.25976285e-016, -4.46930244e-007, -2.53540519e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -1.10586548, 0.221845627, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.728130341, 0.13794899, 0.999996424, -2.13161753e-014, 1.78773917e-007, -3.79196507e-007, 0.707181871, 0.707024157, -3.79278418e-007, -0.70702672, 0.707179308))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.840242386, 0.184112549, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335924149, 0.103946805, 0.999992847, 1.81186826e-013, -4.11162546e-006, -1.81186826e-013, 0.999992847, -7.58573273e-016, 3.39656435e-006, 2.54499572e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.7563591, -0.109758377, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.10351563e-005, -1.10585403, 0.305786133, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -0.728031158, 0.221849442, 0.999996424, -2.13161753e-014, 1.78773917e-007, -3.79196507e-007, 0.707181871, 0.707024157, -3.79278418e-007, -0.70702672, 0.707179308))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-9.15527344e-005, -0.67241478, -0.19370079, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.756313324, 0.0161876678, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.672306061, 0.184104919, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.335899353, 0.0199739933, 0.999992847, 2.18489967e-013, -4.73727596e-006, -2.18489967e-013, 0.999992847, -7.57336287e-016, 4.02222031e-006, 2.53552589e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -1.1057682, 0.137836456, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.9379673, 0.305826187, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.812028885, 0.221828461, 0.999996424, -2.13161753e-014, 1.78773917e-007, -3.79196507e-007, 0.707181871, 0.707024157, -3.79278418e-007, -0.70702672, 0.707179308))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.840332031, -0.193758011, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.644088745, 0.22183609, 0.99999547, -1.31308614e-012, 1.78738446e-007, -3.79217425e-007, 0.707180977, 0.707023621, -3.79301156e-007, -0.707025945, 0.707178891))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.756282806, 0.184106827, 0.999994636, -2.13161381e-014, 1.78773007e-007, 5.05591743e-007, 0.707180023, -0.707022309, -5.05702701e-007, 0.707026124, 0.707176208))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.937936783, 0.221797943, 0.999991059, -2.13160618e-014, 1.78773007e-007, -7.58390797e-007, 0.707176268, 0.707018554, -7.58549049e-007, -0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.840261459, 0.016160965, 0.999991059, -2.13160618e-014, 1.78773007e-007, 7.5838625e-007, 0.707176268, -0.707018554, -7.58550868e-007, 0.707024872, 0.70716995))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.335899353, 0.103938103, 0.999992847, 2.29148081e-013, -4.9160335e-006, -2.29148081e-013, 0.999992847, -7.56970052e-016, 4.20097967e-006, 2.53277833e-016, 0.999985695))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, 0.125974655, 0.0200021267, 0.999992728, 2.21486258e-014, 1.78859409e-007, 7.54365239e-014, 0.999992132, -2.98020169e-008, -1.78682967e-007, -2.9802127e-008, 0.999985099))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000033, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleA,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.671825409, -0.27389431, 0.999993801, 1.20855067e-013, -2.82897417e-007, -1.17359681e-013, 0.99999404, -5.96041865e-008, 2.53045073e-007, 5.96042469e-008, 0.999992847))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.336000025, 0.335999936))
Wedgeweld=weld(m,FakeHandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.22543144, 0.0199115276, 0.999995947, 1.79766672e-012, -1.49265943e-005, -1.79766672e-012, 0.999995947, -1.04389876e-016, 1.4569111e-005, -1.1508405e-016, 0.999992847))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.461999953, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,FakeHandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.14149475, 0.0199415684, 0.999996424, 1.79766672e-012, -1.2781531e-005, -1.79766672e-012, 0.999996424, -1.11779232e-016, 1.24240314e-005, -1.15038324e-016, 0.999992847))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 0.840000212, 0.839999676))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.840000033, 0.671999991))
Wedgeweld=weld(m,FakeHandleA,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -2.72929573, 0.0198169947, 0.999996424, 3.1294465e-007, -1.93064552e-005, -3.12920946e-007, 0.999996424, 1.25165718e-006, 1.89489765e-005, -1.2516557e-006, 0.999992847))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))

HandleB=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,1,"Dark stone grey","HandleB",Vector3.new(0.200000003, 0.924000025, 0.251999974))
HandleBweld=weld(m,Character["Left Arm"],HandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.115982056, 0.0891990662, 0.993835926, -0.999997854, -1.10417595e-005, 4.54747297e-013, 4.4408921e-016, -1.49011505e-008, 0.999997795, -1.09821558e-005, 0.999995708, -1.49011541e-008))
mesh("BlockMesh",HandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
FakeHandleB=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,1,"Dark stone grey","FakeHandleB",Vector3.new(0.200000003, 0.420000017, 0.251999974))
FakeHandleBweld=weld(m,HandleB,FakeHandleB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.047870636, 5.41210175e-005, 0.999996543, 7.45058131e-008, -5.81111635e-007, -7.45051949e-008, 0.999997199, -1.49019623e-008, 3.5760695e-007, -1.49009205e-008, 0.99999553))
mesh("BlockMesh",FakeHandleB,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
HitboxB=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,1,"Dark stone grey","HitboxB",Vector3.new(0.260399997, 2.26800036, 0.671999991))
HitboxBweld=weld(m,FakeHandleB,HitboxB,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -2.01556969, 0.01980865, 0.999993443, 1.02318154e-012, -1.27701678e-005, 6.82121026e-013, 0.999994397, -2.98027985e-008, 1.22934016e-005, -2.98057792e-008, 0.999991059))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -0.671806335, 0.313799143, 0.99999249, -3.12912107e-007, 8.53831443e-006, 3.12901221e-007, 0.999993801, 1.22185497e-006, -9.2088394e-006, -1.28146849e-006, 0.999990761))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.503873825, 0.0199302435, 0.999991298, 7.03437308e-013, -4.47016646e-007, 7.10542736e-013, 0.999993205, -2.98063618e-008, -2.38406756e-007, -2.98045819e-008, 0.999990702))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.252000004, 0.503999949))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -0.671850204, 0.0200046301, 0.999992192, -4.61934746e-007, 1.15483172e-005, 4.61917068e-007, 0.999993801, 1.43046918e-006, -1.22188476e-005, -1.49008054e-006, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.17600012, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.47002983, 0.0187981129, 0.999992311, 3.26139116e-012, -9.10005256e-005, 8.38440428e-013, 0.999993801, -2.98064791e-008, 9.0330177e-005, -2.98056761e-008, 0.999990582))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 1, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.17600012, 0.335999995))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -1.46959877, 0.0198251009, 0.999991536, 1.05870868e-012, -1.29638747e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.20996647e-005, -2.98093603e-008, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.462000072, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.671999991))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.839723587, 0.0198229551, 0.999991536, 9.45021839e-013, -1.17124828e-005, 7.88702437e-013, 0.999993205, -2.98063618e-008, 1.08482727e-005, -2.98093568e-008, 0.999990463))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 1.42800009, 0.671999991))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.59558678, 0.0198256969, 0.999991596, 1.00897068e-012, -1.13843653e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.08330742e-005, -2.9807449e-008, 0.999990523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, 0.335920334, 0.0199792385, 0.99998498, 1.77635684e-012, -4.42457076e-006, 1.20081722e-012, 0.999987602, -5.96116934e-008, 3.08357539e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.756378174, -0.277729034, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335920334, -0.0639791489, 0.99998498, 1.77635684e-012, -4.42457076e-006, 1.20081722e-012, 0.999987602, -5.96116934e-008, 3.08357539e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.756343842, -0.193767548, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -7.62939453e-006, 0.0199067593, 0.999989629, -2.98013205e-008, 5.96000973e-008, 7.45057989e-008, 0.999991119, -2.98054701e-008, -8.64197318e-007, -2.98050864e-008, 0.999986231))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.938070297, 0.137874603, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.728212357, 0.305807114, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.672271729, 0.0161094666, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.125976563, 0.0199372768, 0.999988139, -1.04306544e-007, -2.23536517e-007, 1.04307773e-007, 0.999989748, -2.98051006e-008, -5.51243829e-007, -2.98054808e-008, 0.999983549))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -1.10592842, 0.221801758, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-6.10351563e-005, -0.728153229, 0.137924194, 0.999991596, 6.67910172e-013, 4.47207604e-008, -7.02402133e-007, 0.707179785, 0.707022667, -7.05294042e-007, -0.707024634, 0.707177639))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.84018898, 0.184049606, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.335920334, 0.103946328, 0.99998498, 1.77635684e-012, -4.42457076e-006, 1.20081722e-012, 0.999987602, -5.96116934e-008, 3.08357539e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.335897446, -0.0639851093, 0.99998498, 1.83320026e-012, -4.87146372e-006, 1.17239551e-012, 0.999987602, -5.96116934e-008, 3.53046926e-006, -5.96116934e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.756332397, -0.109825134, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -1.10591888, 0.305747986, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000122070313, -0.728061676, 0.221828461, 0.999991596, 6.67910172e-013, 4.47207604e-008, -7.02402133e-007, 0.707179785, 0.707022667, -7.05294042e-007, -0.707024634, 0.707177639))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.000106811523, -0.67234993, -0.193754196, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.756284714, 0.0161113739, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -0.672286987, 0.18406105, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(6.10351563e-005, -0.335897446, 0.0199738741, 0.99998498, 1.85451654e-012, -5.05021944e-006, 1.15818466e-012, 0.999987602, -5.96116934e-008, 3.7092268e-006, -5.96116934e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -1.10585022, 0.137811661, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000212, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-7.62939453e-005, -0.938016891, 0.30575943, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.812088013, 0.221776962, 0.999991596, 6.67910172e-013, 4.47207604e-008, -7.02402133e-007, 0.707179785, 0.707022667, -7.05294042e-007, -0.707024634, 0.707177639))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.252000004))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.840309143, -0.193778992, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(3.05175781e-005, -0.644163132, 0.22177124, 0.999991596, -1.63911096e-007, 4.47207675e-008, -4.63979092e-007, 0.707178771, 0.707022071, -4.51969669e-007, -0.70702374, 0.707177103))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.756244659, 0.184059143, 0.999989688, -4.47024036e-008, 1.19204742e-007, 8.07759989e-007, 0.707177877, -0.707020879, -5.99900943e-007, 0.707024038, 0.70717448))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999676))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -0.937994003, 0.221740723, 0.999986172, -4.47021336e-008, 2.97595744e-008, -8.06638866e-007, 0.707174122, 0.707016647, -1.27141891e-006, -0.707022905, 0.707167923))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.839999974, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.52587891e-005, -0.84022522, 0.0160942078, 0.999986172, -4.47021336e-008, 2.97595744e-008, 9.12016958e-007, 0.707174182, -0.707016647, -8.68045106e-007, 0.707022667, 0.707168221))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.420000017, 0.839999974))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.251999974, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(4.57763672e-005, -0.335897446, 0.103937507, 0.99998498, 1.87583282e-012, -5.22897699e-006, 1.15107923e-012, 0.999987602, -5.96116934e-008, 3.88798253e-006, -5.96116863e-008, 0.999981523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 1, 0.420000017))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.200000003, 0.251999974))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0.125947952, 0.019931674, 0.999988019, -7.45044133e-008, 1.19185643e-007, 7.45060262e-008, 0.99998939, -5.96073733e-008, -3.724208e-007, -5.96076077e-008, 0.999982655))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.839999974, 0.840000033, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Part",Vector3.new(0.200000003, 0.252000004, 0.200000003))
Partweld=weld(m,FakeHandleB,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.52587891e-005, -0.671842575, -0.273898602, 0.999992251, 6.75015599e-013, 3.53156747e-006, 8.73967565e-013, 0.999993801, -8.93913352e-008, -4.2020838e-006, 2.97793719e-008, 0.999990523))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.798000038, 1, 0.420000017))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.336000025, 0.335999936))
Wedgeweld=weld(m,FakeHandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-4.57763672e-005, -2.22545815, 0.019826293, 0.999991477, -1.19207421e-007, -1.51692248e-005, 1.19209091e-007, 0.999993205, -2.98050331e-008, 1.44987343e-005, -2.9807719e-008, 0.999990404))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.461999953, 1, 1))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Wedgeweld=weld(m,FakeHandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-3.05175781e-005, -2.1415081, 0.0198848248, 0.999991477, 1.07291953e-012, -1.30532799e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.21592684e-005, -2.98089127e-008, 0.999990523))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.504000008, 0.840000212, 0.839999676))
Wedge=part(Enum.FormFactor.Custom,m,Enum.Material.Fabric,0.5,0,"Dark stone grey","Wedge",Vector3.new(0.200000003, 0.840000033, 0.671999991))
Wedgeweld=weld(m,FakeHandleB,Wedge,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -2.72933006, 0.0198259354, 0.999991477, 1.04449782e-012, -1.20996147e-005, 7.10542736e-013, 0.999993205, -2.98063618e-008, 1.11906975e-005, -2.98092999e-008, 0.999990761))
mesh("SpecialMesh",Wedge,Enum.MeshType.Wedge,"",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 1, 1))

function attackone()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(20),math.rad(0),math.rad(-70)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-5),math.rad(-5),math.rad(60)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-150), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,0)*angles(math.rad(0),math.rad(-40),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(6*i,math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(0)),.3)
end
so('http://roblox.com/asset/?id=243711414',HitboxA,1,1)
for i = 0,1,0.1 do
swait()
local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxA.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-80)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(-30), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(40),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(30))*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(40),math.rad(0),math.rad(0)),.3)
end
scfr = nil
attack = false
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(0),math.rad(0),math.rad(90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-50), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(10), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(40))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(30))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
so('http://roblox.com/asset/?id=243711427',HitboxB,1,1)
for i = 0,1,0.1 do
swait()
local blcf = HitboxB.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxB.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(20),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-70), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,0)*angles(math.rad(0),math.rad(-50),math.rad(-30))*angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(30),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
end
scfr = nil
attack = false
end

function attackthree()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(10),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1, 0.5, -.5) * angles(math.rad(0), math.rad(120), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -.5) * angles(math.rad(0), math.rad(-120), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-50),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(50),math.rad(0),math.rad(0)),.3)
end
so('http://roblox.com/asset/?id=243711414',HitboxA,1,1)
so('http://roblox.com/asset/?id=243711427',HitboxB,1,1)
for i = 0,1,0.1 do
swait()
local blcf = HitboxA.CFrame*CFrame.new(0,.5,0)
if scfr and (HitboxA.Position-scfr.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr = blcf
elseif not scfr then
scfr = blcf
end
local blcf2 = HitboxB.CFrame*CFrame.new(0,.5,0)
if scfr2 and (HitboxB.Position-scfr2.p).magnitude > .1 then
local h = 5
local a,b = Triangle((scfr2*CFrame.new(0,h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p,(blcf2*CFrame.new(0,h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
local a,b = Triangle((blcf2*CFrame.new(0,h/2,0)).p,(blcf2*CFrame.new(0,-h/2,0)).p,(scfr2*CFrame.new(0,-h/2,0)).p)
if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
scfr2 = blcf2
elseif not scfr2 then
scfr2 = blcf2
end
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(20),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(-30), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(30), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(50)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(50)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-90),math.rad(0),math.rad(0)),.3)
Torso.Velocity=Head.CFrame.lookVector*100
end
scfr = nil
scfr2 = nil
attack = false
end

mouse.Button1Down:connect(function()
if attack == false and attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and attacktype == 2 then
attacktype = 3
attacktwo()
elseif attack == false and attacktype == 3 then
attacktype = 1
attackthree()
end
end)

mouse.KeyDown:connect(function(k)
k=k:lower()
if attack == false and k == '' then

end
end)

local sine = 0
local change = 1
local val = 0

while true do
swait()
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-180),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-0),math.rad(0),math.rad(0)),.3)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(60)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-60)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-180),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-0),math.rad(0),math.rad(0)),.3)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,-.3)* angles(math.rad(20),math.rad(0),math.rad(-50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-10),math.rad(-10),math.rad(50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1, 0.5, -0.5) * angles(math.rad(0), math.rad(-130), math.rad(-100)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(10),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-.6,0)*angles(math.rad(0),math.rad(-50),math.rad(-30)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),.3)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(30),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-30), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-10))*angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
FakeHandleAweld.C0=clerp(FakeHandleAweld.C0,cf(0,0,0)*angles(math.rad(-180),math.rad(0),math.rad(0)),.3)
FakeHandleBweld.C0=clerp(FakeHandleBweld.C0,cf(0,0,0)*angles(math.rad(-0),math.rad(0),math.rad(0)),.3)
end
end
end
if #Effects>0 then
for e=1,#Effects do
if Effects[e]~=nil then
local Thing=Effects[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects,e)
end
end
end
end
end
end
------------------------------
ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
attacking = false
track = false
curcam = Workspace.CurrentCamera
name = 'KFM'
 
pcall(function() char:FindFirstChild("legetony"):Remove() char:FindFirstChild("Belt"):Remove() end)
m = Instance.new("Model",char) m.Name = "legetony"
 
cfn,ang = CFrame.new,CFrame.Angles
v3n = Vector3.new
 
rs = torso["Right Shoulder"]
ls = torso["Left Shoulder"]
rh = torso["Right Hip"]
lh = torso["Right Hip"]
neck = torso["Neck"]
rw,lw = nil,nil
rhw,lhw = nil,nil
local orgc1 = rs.C1
 
rarm = char["Right Arm"]
larm = char["Left Arm"]
rleg = char["Right Leg"]
lleg = char["Left Leg"]
 
normposr = cfn(1.5,.5,0)
normposl = cfn(-1.5,.5,0)
normposr2 = cfn(-.5,-1.5,0)
normposl2 = cfn(.5,-1.5,0)
normposn = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
 
holdpos = normposr*ang(math.pi/2,0,0)
holdpos2 = normposl*ang(math.pi/2,0,0)
 
lock = {["R"] =
function(a)
if a == 1 then
rabrick = T.P(1,1,1,"White",1,false,false)
rw = T.W(rabrick,torso,1.5,.5,0,0,0,0)
T.W(rarm,rabrick,0,-.5,0,0,0,0)
elseif a == 2 then
rlbrick = T.P(1,1,1,"White",1,false,false)
rhw = T.W(rlbrick,torso,-.5,-1.5,0,0,0,0)
T.W(rleg,rlbrick,0,-.5,0,0,0,0)
elseif a == 0 then
rs.Parent = torso
rw.Parent = nil
rabrick:Destroy() rabrick = nil
elseif a == -1 then
rhw.Parent = nil
rh.Parent = torso
rlbrick:Destroy() rlbrick = nil
end
end
, ["L"] = function(a)
if a == 1 then
labrick = T.P(1,1,1,"White",1,false,false)
lw = T.W(labrick,torso,-1.5,.5,0,0,0,0)
T.W(larm,labrick,0,-.5,0,0,0,0)
elseif a == 2 then
llbrick = T.P(1,1,1,"White",1,false,false)
lhw = T.W(llbrick,torso,.5,-1.5,0,0,0,0)
T.W(lleg,llbrick,0,-.5,0,0,0,0)
elseif a == 0 then
ls.Parent = torso
lw.Parent = nil
labrick:Destroy() labrick = nil
elseif a == -1 then
lhw.Parent = nil
lh.Parent = torso
llbrick:Destroy() llbrick = nil
end
end}
 
------TOOOOOLS------
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored,parent,typee)
if typee ~= nil then
c = Instance.new("WedgePart",m)
else
c = Instance.new("Part",m)
end
c.TopSurface,c.BottomSurface = 0,0
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
if color ~= "random" then
c.BrickColor = BrickColor.new(color)
else c.BrickColor = BrickColor:random() end
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then c.Anchored = anchored end
if parent ~= nil then c.Parent = parent end
return c
 
end
,
["C"] = function(func) coroutine.resume(coroutine.create(func)) end
,
["W"] = function(part0,part1,x,y,z,rx,ry,rz,parent)
w = Instance.new("Motor",m)
if parent ~= nil then w.Parent = parent end
w.Part0,w.Part1 = part0,part1
w.C1 = CFrame.new(x,y,z) * CFrame.Angles(rx,ry,rz)
return w
end
,
["BG"] = function(parent)
local c = Instance.new("BodyGyro",parent)
c.P = 20e+003
c.cframe = parent.CFrame
c.maxTorque = Vector3.new(c.P,c.P,c.P)
return c
end
,
["BP"] = function(parent,position)
local bp = Instance.new("BodyPosition",parent)
bp.maxForce = Vector3.new()*math.huge
bp.position = position
return bp
end
,
["F"] = function(parent,size,heat,color,secondcolor,enabled)
f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
if enabled ~= nil then f.Enabled = enabled end
if color ~= nil then f.Color = BrickColor.new(color).Color end
if secondcolor ~= nil then f.SecondaryColor = BrickColor.new(secondcolor).Color end
return f
end
,
["FM"] = function(parent,meshid,x,y,z,meshtexture)
if meshid == "cylinder" then
mesh = Instance.new("CylinderMesh",parent)
mesh.Scale = Vector3.new(x,y,z)
return mesh
else
mesh = Instance.new("SpecialMesh",parent)
 
if meshid ~= "sphere" then
if type(meshid) == "number" then mesh.MeshId = "rbxassetid://"..meshid else
mesh.MeshId = "rbxassetid://"..meshids[meshid]
end
 
else mesh.MeshType = 3 end
 
mesh.Scale = Vector3.new(x,y,z)
 
if meshtexture ~= nil then
if type(meshtexture) == "number" then mesh.TextureId = "rbxassetid://"..meshtexture else
mesh.TextureId = "rbxassetid://"..textureids[meshtexture] end
 
end
 
return mesh
end
end
,
["Track"] = function(obj,s,t,lt,color,fade)
coroutine.resume(coroutine.create(function()
while track do
old = obj.Position
wait()
new = obj.Position
 
mag = (old-new).magnitude
dist = (old+new)/2
 
local ray = T.P(s,mag+.2,s,obj.Color,t,false,true)
Instance.new("CylinderMesh",ray)
ray.CFrame = CFrame.new(dist,old)*ang(math.pi/2,0,0)
if fade ~= nil then
delay(lt,function()
for i = t,1,fade do wait() ray.Transparency = i end ray:Remove() end)
else
game:GetService("Debris"):AddItem(ray,lt)
end
if color ~= nil then ray.BrickColor = BrickColor.new(color) end
 
end
end)) end
}
--------------------------------------------------
----------------DAMAGE FUNCTION--------------------
function damage(hit,amount,show,del,poikkeus)
for i,v in pairs(hit:GetChildren()) do
if v:IsA("Humanoid") and v.Parent ~= char then
 
amo = 0
function showa(p)
if show == true then
for i,o in pairs(p:GetChildren()) do
if o:IsA("BillboardGui") and o.Name == "satuttava" then
amo = amo+1
end end
 
 
local bbg = Instance.new("BillboardGui",p)
bbg.Adornee = p.Torso
bbg.Name = "satuttava"
bbg.Size = UDim2.new(2,0,2,0)
bbg.StudsOffset = Vector3.new(0,6+amo*2,0)
 
local box = Instance.new("TextLabel",bbg)
box.Size = UDim2.new(1,0,1,0)
box.BackgroundColor = BrickColor.new("White")
box.Text = amount
box.BackgroundTransparency = .5
if amount == 0 then box.Text = "K.O" end
box.Position = UDim2.new(0,0,0,0)
box.TextScaled = true
game:GetService("Debris"):AddItem(bbg,.5)
end
end
 
function dame(q)
if poikkeus ~= nil then
for _,u in pairs(poikkeus) do
if q.Parent.Name ~= u then
showa(q)
if amount == 0 then q.Parent:BreakJoints() end
q.Health = q.Health - amount
end
end
elseif poikkeus == nil then
if amount == 0 then q.Parent:BreakJoints() end
q.Health = q.Health - amount
showa(q)
end
end
 
if del ~= nil then
local find = v.Parent:FindFirstChild("hitted")
if find == nil then
dame(v)
val = Instance.new("BoolValue",v.Parent)val.Name="hitted"
game:GetService("Debris"):AddItem(val,del)
end
elseif del == nil then
dame(v)
 
end
 
end
end
end
-----------------------------------------------------------------
 
------MESHIDS---
meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153} 
-----------------
 
---MATH SHORTENINGS---
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
 
for i,v in pairs(char:GetChildren()) do
if v:IsA("Clothing") or v:IsA("Hat") then v:Remove()
end end
 
col = char:FindFirstChild("Body Colors")
if col == nil then col = Instance.new("BodyColors",char) end
collist = {
{'LeftLegColor',"Dark stone grey"},
{'RightLegColor',"Dark stone grey"},
{'TorsoColor',"Dark stone grey"},
{'LeftArmColor',"Dark stone grey"},
{'RightArmColor',"Dark stone grey"},
}
for i,v in pairs(collist) do
col[v[1]] = BrickColor.new(v[2])
end
 -------------------------------
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=279761668"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=279765488"
-------------------------------------
bracs = Instance.new("Model",m)
for i,v in pairs({rarm,larm}) do
for i,v in pairs(bracs:children()) do if v.Name ~= 'a' then v.Material = 'Ice' end end
end
 
--------MAKING--------------------
h1 = T.P(1.5,1.5,1.5,'Dark stone grey',0,false,false)
h1.Material = "Fabric"
T.FM(h1,'sphere',1,1,1)
T.W(h1,char.Head,0,0,0,0,0,0)
 
e1 = T.P(.5,.5,.5,'White',0,false,false) T.FM(e1,'sphere',1,1,1)
e1.Material = "Fabric"
e2 = T.P(.5,.5,.5,'White',0,false,false) T.FM(e2,'sphere',1,1,1)
e2.Material = "Fabric"
e1w=T.W(e1,h1,.35,0,-.55,0,0,0) T.W(e2,h1,-.35,0,-.55,0,0,0)
e1w.Material = "Fabric"

dec = Instance.new("Decal")
dec.Face = 'Front'
dec.Texture = "http://www.roblox.com/asset/?id=0"
 

 
char.Head.Transparency = 1
-----------------------------------
 
function colorslide(obj,prop,scol,ecol,timme,override)
if scol == 'cur' then scol3 = obj.BrickColor.Color else
scol3 = BrickColor.new(scol).Color
end
ecol3 = BrickColor.new(ecol).Color
 
for i = 0,1,timme do
wait()
pos = v3n(scol3.r,scol3.g,scol3.b):Lerp(v3n(ecol3.r,ecol3.g,ecol3.b),i)
obj[prop] = Color3.new(pos.x,pos.y,pos.z)
end
 
end
 
function checkplayers(pos,radius,what)
tab = {}
for i,v in pairs(Workspace:GetChildren()) do
if v:IsA("Model") and v ~= char then
for _,q in pairs(v:GetChildren()) do
if q:IsA("Humanoid") then
if (q.Torso.Position-pos).magnitude <= radius then
if what == 'char' then table.insert(tab,q.Parent)
elseif what == 'humanoid' then table.insert(tab,q)
end
end end end end end
return tab
end
 
function rage()
tyu = cfn(0,.2,-.5)
lock.R(1) lock.L(1)
neck.C0 = normposn
for i = 0,140,10 do
wait()
rw.C1 = (normposr*tyu)*ang(M.D(i),0,M.D(i/(140/-50)))
lw.C1 = (normposl*tyu)*ang(M.D(i),0,M.D(i/(140/50)))
neck.C0 = normposn*ang(M.D(i/(140/30)),0,0)
end
 
wait(1)
 
for i = 140,50,-20 do
wait()
rw.C1 = (normposr)*ang(M.D(-i),0,M.D(i))
lw.C1 = (normposl)*ang(M.D(-i),0,M.D(-i))
end
neck.C0 = normposn*ang(M.D(-30),0,0)
 
fire = T.F(torso,30,30,'Bright red','Magenta')
 
ef = T.P(1,1,1,'Really red',0,false,false)
ew = T.W(ef,torso,0,0,0,0,0,0,ef)
msh = T.FM(ef,'sphere',1,1,1)
for i = 0,20 do wait() ef.Transparency = i/20 msh.Scale = v3n(i,i,i)
T.C(function()
tabb = checkplayers(ef.Position,20,'char')
if #tabb > 0 then
for i,v in pairs(tabb) do damage(v,10,true,.2) end
end
end)
end
msh:Remove()
 
for i = 30,8,-1 do
wait() fire.Size = i
end
colorslide(fire,'Color','Bright red','Deep blue',.05)
 
lock.R(0) lock.L(0) neck.C0 = normposn
 
end
 
hop = Instance.new("HopperBin",ply.Backpack)
hop.Name = name
 
holdpos = normposr*ang(math.pi/2,0,0)
port,port2,bol,boltime = nil,nil,false,1
 
function hide()
if char.Parent ~= curcam then
char.Parent = curcam
hop.Name = name..'(h)'
else char.Parent = Workspace
hop.Name = name
end
end
 
function makeport1()
if not port then --- Blue portal
circle()
port = Instance.new("Model",Workspace)
port.Name = 'omakotikullankallis'
ring = T.P(1,1,1,'Deep blue',0,false,true,port) T.FM(ring,'ring',4,4,1)
ring.CFrame = torso.CFrame * cfn(0,0,-4)
mir = T.P(3.5,.1,3.5,ring.BrickColor.Name,.5,false,true,port) T.FM(mir,'cylinder',1,1,1)
mir.CFrame = ring.CFrame*ang(math.pi/2,0,0)
mir.Touched:connect(function(hit) local hum = hit.Parent:FindFirstChild("Humanoid")
if hum ~= nil and hum.Parent == char and port2 and not bol then bol = true
hit.Parent:MoveTo(mir2.Position) wait(boltime) bol = false
end end) ---- On touch event for blue portal
 
elseif port then ring.CFrame = torso.CFrame * cfn(0,0,-4)
mir.CFrame = ring.CFrame*ang(math.pi/2,0,0)
 
end
end
 
function makeport2()
if not port2 then
circle()
port2 = Instance.new("Model",Workspace)
port2.Name = 'omakotikullankallis'
ring2 = T.P(1,1,1,'Fabric orange',0,false,true,port2) T.FM(ring2,'ring',4,4,1)
ring2.CFrame = torso.CFrame * cfn(0,0,-4)
mir2 = T.P(3.5,.1,3.5,ring2.BrickColor.Name,.5,false,true,port2) T.FM(mir2,'cylinder',1,1,1)
mir2.CFrame = ring2.CFrame*ang(math.pi/2,0,0)
 
mir2.Touched:connect(function(hit) local hum = hit.Parent:FindFirstChild("Humanoid")
if hum ~= nil and hum.Parent == char and port and not bol then bol = true
hit.Parent:MoveTo(mir.Position) wait(boltime) bol = false
end end) ---- On touch event for orange portal
 
elseif port2 then ring2.CFrame = torso.CFrame * cfn(0,0,-4)
mir2.CFrame = ring2.CFrame*ang(math.pi/2,0,0)
end
end
holdpos2 = normposl*ang(math.pi/2,0,0)
function punch()
fires = {}
lock.R(1) lock.L(1)
for i,v in pairs(bracs:children()) do
if v.Name ~= 'a' then table.insert(fires,T.F(v,.5,.5,'White','Black')) end
end
sticks = Instance.new("Model",m)
 
rr = .5
for _,v in pairs({rarm,larm}) do
for _,pos in pairs({ {0,-rr}, {0,rr}, {rr,0}, {-rr,0} }) do
stick = T.P(.3,.3,2.5,'Really blue',.5,false,false,sticks)
stick.Touched:connect(function(hit) damage(hit.Parent,10000,true,.05) end)
T.W(stick,v,pos[1],-.6,pos[2],-math.pi/2,0,0)
end end
for i = 1,10 do
rw.C1 = holdpos*cfn(0,.5,0)
lw.C1 = (holdpos2*cfn(0,-.5,0))*ang(0,0,M.D(30))
wait(.05)
rw.C1 = (holdpos*cfn(0,-.5,0))*ang(0,0,M.D(-30))
lw.C1 = holdpos2*cfn(0,.5,0)
wait(.05)
end
sticks:Remove() for _,v in pairs(fires) do v:Remove() end
lock.R(0) lock.L(0)
end
 
Workspace.ChildRemoved:connect(function(child)
if child == port then port = nil
elseif child == port2 then port2 = nil
end end)
 
function removeports()
if port then port:Remove() port = nil end
if port2 then port2:Remove() port2 = nil end
for i,v in pairs(Workspace:GetChildren()) do if v.Name == 'omakotikullankallis' then v:Remove() end end
end
 
function circle()
r = .5
lock.R(1)
for i = 0,90,10 do wait() rw.C1 = normposr*ang(M.D(i),0,0) end
 
for i = 0,360,25 do
wait()
rw.C1 = holdpos*ang(M.Cos(M.D(-i))*r,0,M.Sin(M.D(-i))*r)
end
 
for i = 90,0,-10 do wait() rw.C1 = normposr*ang(M.D(i),0,0) end
lock.R(0)
 
end
Workspace.ChildRemoved:connect(function(child) if child == port then port = nil elseif child == port2 then port2 = nil end end) --- Nill's portals if they dont exist
 
function bowl(mouse)
colorslide(e1,'Color','cur','Royal purple',.05)
dec.Parent = e1
light = T.P(1,2,1,'Royal purple',.8,false,false)
light.Touched:connect(function(hit) damage(hit.Parent,10000,false,1) end)
T.FM(light,'spike',.5,2,.5)
T.W(light,e1,0,0,-1,math.pi/2,0,0)
holding = true
posa = e1.Position
while holding do
wait()
 
lv = char.Head.CFrame.lookVector
pos3 = ((posa-mouse.hit.p).unit):Cross(lv)
e1w.C1 = cfn(.35,0,-.55)*ang(0,pos3.Y,0)
end
light:Remove()
colorslide(e1,'Color','cur','Really black',.05) e1w.C1 = cfn(.35,0,-.55)
dec.Parent = nil
end
 
sitbp = nil
function sit()
if sitbp == nil then
lock.R(2) lock.L(2)
sitbp = T.BP(torso,torso.Position)
for i = 1,90,5 do
wait()
rhw.C1 = normposr2*ang(M.D(i),0,M.D(i/(90/-30)))
lhw.C1 = normposl2*ang(M.D(i),0,M.D(i/(90/30)))
sitbp.position = torso.Position - v3n(0,i/(90),0)
end
elseif sitbp ~= nil then
for i = 90,1,-5 do
wait()
rhw.C1 = normposr2*ang(M.D(i),0,M.D(i/(90/-30)))
lhw.C1 = normposl2*ang(M.D(i),0,M.D(i/(90/30)))
sitbp.position = torso.Position + v3n(0,i/(90),0)
end
lock.R(-1) lock.L(-1)
sitbp:Remove() sitbp = nil
end
end
 
function freemyself()
for i,v in pairs(char:GetChildren()) do
for _,o in pairs(v:GetChildren()) do
for _,q in pairs({'BodyPosition','BodyForce','BodyVelocity','BodyGyro'}) do
if o:IsA(q) then o:Remove() end
end
if o:IsA("Part") then
o.Anchored = false end
end
end
sk = T.P(1,1,1,'Royal Purple',0,false,false)
T.W(sk,torso,0,0,0,0,0,0,sk)
msh = T.FM(sk,'skull',3,3,3)
for i = 0,1,.05 do wait() sk.Transparency = i end sk:Remove()
end
 
function breake()
welds = {}
bps = {}
possa = torso.Position
for i,v in pairs(torso:children()) do
if v:IsA("Motor6D") then table.insert(welds,v) v.Parent = nil
end
end
 
for _,v in pairs(char:children()) do
if v:IsA("BasePart") then v.CanCollide = true end
end
 
local hum = char.Humanoid
hum.Parent = nil
 
holding = true
 
while holding do wait() end
 
for i,v in pairs(welds) do
v.Parent = torso
v.Part1 = v.Part1
end
hum.Parent = char
end
 
klist = {
{'fa',function() rage() end},
{'qa',function() makeport1() end},
{'ea',function() makeport2() end},
{'ra',function() removeports() end},
{'ca',function(a) punch(a) end},
{'xa',function() sit() end},
{'za',function() freemyself() end},
{'va',function() hide() end},
{'ga',function() breake() end,''}
}
 
hop.Deselected:connect(function() lock.R(0) lock.L(0) end)
hop.Selected:connect(function(mouse)
mouse.Button1Up:connect(function() holding = false end)
mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end end)
mouse.KeyDown:connect(function(key) if attacking then return end
for i,v in pairs(klist) do
if key == v[1] then attacking = true v[2](mouse) attacking = false end
end
end)
 
mouse.Button1Down:connect(function() if attacking then return end attacking = true bowl(mouse) attacking = false end)
end)
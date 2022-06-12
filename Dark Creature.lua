--Thanks gaster :3
wait()
Player = game.Players.LocalPlayer
Object = Player.Character.HumanoidRootPart
Arm1 = Player.Character["Right Arm"]
PreviousA1 = Arm1.CFrame.p
Arm2 = Player.Character["Left Arm"]
PreviousA2 = Arm2.CFrame.p

Leg1 = Player.Character["Right Leg"]
PreviousL1 = Leg1.CFrame.p
Leg2 = Player.Character["Left Leg"]
PreviousL2 = Leg2.CFrame.p

Run = game["Run Service"]

PreviousP = Object.CFrame.p
Running = false
Phase = false
PhaseActive = false
Morph = false
MorphActive = false
Tornado = false
TornadoRadius = 50
TornadoActive = false
Portal = false
PortalEnd = false
MaxZ = 15
MinZ = -15
LightMaxX = 3
LightMinX = 1
LightMaxX2 = -1
LightMinX2 = -3
LightMaxY = 3
LightMinY = -1
Rotation = 0
Length = 10
Color = BrickColor.White()
PColor = Color3.new(0,0,0)
PrevPoint1 = nil
PrevPoint2 = nil
PrevPoint3 = nil
PrevPoint4 = nil
PrevPoint5 = nil
PrevPoint6 = nil
PrevPoint7 = nil
PrevPoint8 = nil
PrevPoint9 = nil
PrevPoint10 = nil
PrevPoint11 = nil
PrevPoint12 = nil
angle = 0
Mouse = Player:GetMouse()
Player.Character.Humanoid.WalkSpeed = 100

Nil = function()
	PrevPoint1 = "Empty"
	PrevPoint2 = "Empty"
	PrevPoint3 = "Empty"
	PrevPoint4 = "Empty"
	PrevPoint5 = "Empty"
	PrevPoint6 = "Empty"
	PrevPoint7 = "Empty"
	PrevPoint8 = "Empty"
	PrevPoint9 = "Empty"
	PrevPoint10 = "Empty"
	PrevPoint11 = "Empty"
	PrevPoint12 = "Empty"
end

	local Lightning = coroutine.wrap(function()
while wait() do
		if Portal == false then
		angle = angle + 0.6
		local Model = Instance.new("Model",workspace)
		Model.Name = "Lightning"
		local Point1 = Instance.new("Part",Model)
		Point1.Transparency = 1
		Point1.Size = Vector3.new(0.2,0.2,0.2)
		Point1.CFrame = Object.CFrame * CFrame.new(0,0,-(Object.Size.Z/2+Point1.Size.Z/2))
		Point1.Anchored = true
		Point1.CanCollide = false
		Point1.CFrame = Point1.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),-math.random(0,2))

		local Point2 = Instance.new("Part",Model)
		Point2.Transparency = 1
		Point2.Size = Vector3.new(0.2,0.2,0.2)
		Point2.CFrame = Object.CFrame * CFrame.new(0,0,-(Object.Size.Z/2+Point2.Size.Z/2))
		Point2.Anchored = true
		Point2.CanCollide = false
		Point2.CFrame = Point2.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),-math.random(0,2))

		local Point3 = Instance.new("Part",Model)
		Point3.Transparency = 1
		Point3.Size = Vector3.new(0.2,0.2,0.2)
		Point3.CFrame = Object.CFrame * CFrame.new(0,0,-(Object.Size.Z/2+Point3.Size.Z/2))
		Point3.Anchored = true
		Point3.CanCollide = false
		Point3.CFrame = Point3.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),-math.random(0,2))

		local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2) 

		local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance2)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2) 

		local Point1 = Instance.new("Part",Model)
		Point1.Transparency = 1
		Point1.Size = Vector3.new(0.2,0.2,0.2)
		Point1.CFrame = Object.CFrame * CFrame.new(0,0,(Object.Size.Z/2+Point1.Size.Z/2))
		Point1.Anchored = true
		Point1.CanCollide = false
		Point1.CFrame = Point1.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(0,2))

		local Point2 = Instance.new("Part",Model)
		Point2.Transparency = 1
		Point2.Size = Vector3.new(0.2,0.2,0.2)
		Point2.CFrame = Object.CFrame * CFrame.new(0,0,(Object.Size.Z/2+Point2.Size.Z/2))
		Point2.Anchored = true
		Point2.CanCollide = false
		Point2.CFrame = Point2.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(0,2))

		local Point3 = Instance.new("Part",Model)
		Point3.Transparency = 1
		Point3.Size = Vector3.new(0.2,0.2,0.2)
		Point3.CFrame = Object.CFrame * CFrame.new(0,0,(Object.Size.Z/2+Point3.Size.Z/2))
		Point3.Anchored = true
		Point3.CanCollide = false
		Point3.CFrame = Point3.CFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(0,2))

		local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2) 

		local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.3,0.3,distance2)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2) 
		
		local Point1 = Instance.new("Part",Model)
		Point1.Transparency = 1
		Point1.Size = Vector3.new(0.2,0.2,0.2)
		Point1.CFrame = Object.CFrame * CFrame.new((Object.Size.X/2+Point1.Size.X/2),0,0)
		Point1.Anchored = true
		Point1.CanCollide = false
		Point1.CFrame = Point1.CFrame * CFrame.new(math.random(0,2),math.random(-2,2),math.random(-2,2))

		local Point2 = Instance.new("Part",Model)
		Point2.Transparency = 1
		Point2.Size = Vector3.new(0.2,0.2,0.2)
		Point2.CFrame = Object.CFrame * CFrame.new((Object.Size.X/2+Point1.Size.X/2),0,0)
		Point2.Anchored = true
		Point2.CanCollide = false
		Point2.CFrame = Point2.CFrame * CFrame.new(math.random(0,2),math.random(-2,2),math.random(-2,2))

		local Point3 = Instance.new("Part",Model)
		Point3.Transparency = 1
		Point3.Size = Vector3.new(0.2,0.2,0.2)
		Point3.CFrame = Object.CFrame * CFrame.new((Object.Size.X/2+Point1.Size.X/2),0,0)
		Point3.Anchored = true
		Point3.CanCollide = false
		Point3.CFrame = Point3.CFrame * CFrame.new(math.random(0,2),math.random(-2,2),math.random(-2,2))

		local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2) 

		local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance2)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2) 

		local Point1 = Instance.new("Part",Model)
		Point1.Transparency = 1
		Point1.Size = Vector3.new(0.2,0.2,0.2)
		Point1.CFrame = Object.CFrame * CFrame.new(-(Object.Size.X/2+Point1.Size.X/2),0,0)
		Point1.Anchored = true
		Point1.CanCollide = false
		Point1.CFrame = Point1.CFrame * CFrame.new(-math.random(0,2),math.random(-2,2),math.random(-2,2))

		local Point2 = Instance.new("Part",Model)
		Point2.Transparency = 1
		Point2.Size = Vector3.new(0.2,0.2,0.2)
		Point2.CFrame = Object.CFrame * CFrame.new(-(Object.Size.X/2+Point1.Size.X/2),0,0)
		Point2.Anchored = true
		Point2.CanCollide = false
		Point2.CFrame = Point2.CFrame * CFrame.new(-math.random(0,2),math.random(-2,2),math.random(-2,2))

		local Point3 = Instance.new("Part",Model)
		Point3.Transparency = 1
		Point3.Size = Vector3.new(0.2,0.2,0.2)
		Point3.CFrame = Object.CFrame * CFrame.new(-(Object.Size.X/2+Point1.Size.X/2),0,0)
		Point3.Anchored = true
		Point3.CanCollide = false
		Point3.CFrame = Point3.CFrame * CFrame.new(-math.random(0,2),math.random(-2,2),math.random(-2,2))

		local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2) 

		local distance2 = (Point3.CFrame.p - Point2.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		local PointLight = Instance.new("PointLight",Light)
		PointLight.Range = 5
		PointLight.Color = PColor
		Light.Transparency = 0
		Light.BrickColor = Color
		Light.Material = "Neon"
		Light.Size = Vector3.new(0.25,0.25,distance2)
		Light.Anchored = true
		Light.CanCollide = false
		Light.CFrame = CFrame.new(Point3.CFrame.p , Point2.CFrame.p) * CFrame.new(0,0,-distance2/2) 
		
	local Children = Model:GetChildren()
	wait(0.1)
	for i = 1,#Children do
		if Children[i]:IsA("Part") then
		Children[i].Transparency = 1
		end
		game.Debris:AddItem(Children[i],0)
	end	

		end
		end
	end)
Lightning()

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:wait()
 
local Orb = Instance.new("Part", Character)
Orb.Name = "Orb"
Orb.Shape = Enum.PartType.Ball
Orb.CanCollide = false
Orb.BrickColor = BrickColor.new("Deep orange")
Orb.Transparency = 0
Orb.Material = "Neon"
Orb.Size = Vector3.new(0.3, 0.3, 0.3)
Orb.TopSurface = Enum.SurfaceType.Smooth
Orb.BottomSurface = Enum.SurfaceType.Smooth
 
local Weld = Instance.new("Weld", Orb)
Weld.Part0 = Character.Head
Weld.Part1 = Orb
Weld.C1 = CFrame.new(0.2, -0.2, 0.5)
--------------------------------------------------------
local Orbd = Instance.new("Part", Character)
Orbd.Name = "Orbd"
Orbd.Shape = Enum.PartType.Ball
Orbd.CanCollide = false
Orbd.BrickColor = BrickColor.new("White")
Orbd.Transparency = 0
Orbd.Material = "Neon"
Orbd.Size = Vector3.new(0.3, 0.3, 0.3)
Orbd.TopSurface = Enum.SurfaceType.Smooth
Orbd.BottomSurface = Enum.SurfaceType.Smooth

local Weld = Instance.new("Weld", Orbd)
Weld.Part0 = Character.Head
Weld.Part1 = Orbd
Weld.C1 = CFrame.new(-0.2, -0.2, 0.5)

----------------------------------------------------
Character.Head.face.Texture = "rbxassetid://0"
----------------------------------------------------

local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local debris=game:service"Debris"
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
ptz = {0.8, 0.85, 0.9, 0.95, 1, 1.05, 1.1}
math.randomseed(os.time())
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
for i,v in pairs (hed:GetChildren()) do
        if v:IsA("Sound") then
                v:Destroy()
        end
end
----------------------------------------------------
Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {char.Name, }
----------------------------------------------------
hed.face.Texture = "rbxassetid://0"
char["Body Colors"].HeadColor = BrickColor.new("Really black")
char["Body Colors"].TorsoColor = BrickColor.new("Really black")
char["Body Colors"].LeftArmColor = BrickColor.new("Really black")
char["Body Colors"].RightArmColor = BrickColor.new("Really black")
----------------------------------------------------
ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=0"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=0"
end)
----------------------------------------------------
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

----------------------------------------------------
z = Instance.new("Sound", char)
z.SoundId = "rbxassetid://408704144"--303570180
z.Looped = true
z.Pitch = 1
z.Volume = 1
wait(.1)
z:Play()
----------------------------------------------------

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
p.BrickColor = BrickColor.new("Really black")
p.CanCollide = false
p.FormFactor="Custom"
p.Material = "SmoothPlastic"
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
               p.BrickColor = BrickColor.new("Really black")
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
   rng.BrickColor = BrickColor.new("Really black")
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
   rng1.BrickColor = BrickColor.new("Really black")
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
   rng2.BrickColor = BrickColor.new("Really black")
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

----------------------
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
LeftArm=Character["Left Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Left Shoulder"] 
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

mouse=Player:GetMouse()
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Left Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
player=Player 
ch=Character
RSH=ch.Torso["Left Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=nil 
LSH.Parent=nil 
-- 
RW.Name="Left Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Left Arm"] 
RW.Parent=ch.Torso 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=ch.Torso 

        Player=game:GetService('Players').LocalPlayer
        Character=Player.Character
        Mouse=Player:GetMouse()
        m=Instance.new('Model',Character)


        local function weldBetween(a, b)
            local weldd = Instance.new("ManualWeld")
            weldd.Part0 = a
            weldd.Part1 = b
            weldd.C0 = CFrame.new()
            weldd.C1 = b.CFrame:inverse() * a.CFrame
            weldd.Parent = a
            return weldd
        end
        
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

local TrailColor = ("Really black")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
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
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
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

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
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
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Really black"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
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
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
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
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
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
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(1.00000012, 0.200000003, 0.600000024))
handleweld=weld(m,Character["Left Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00497817993, 1.09852839, -0.00498199463, -1.00772247e-025, 2.44568227e-013, 1, 2.26874075e-013, 0.999999881, 2.44568255e-013, -1, -2.26874048e-013, 1.00166402e-025))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.WoodPlanks,0,1,"Really black","Hitbox",Vector3.new(0.400000036, 1.60000014, 0.600000024))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -0.101213217, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
mesh("SpecialMesh",Hitbox,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBNeedle=part(Enum.FormFactor.Custom,m,Enum.Material.WoodPlanks,0,0,"Really black","PBNeedle",Vector3.new(0.400000006, 0.400000006, 0.200000003))
PBNeedleweld=weld(m,handle,PBNeedle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -0.501211882, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
mesh("SpecialMesh",PBNeedle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBPart1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","PBPart1",Vector3.new(0.800000012, 0.399999946, 0.600000024))
PBPart1weld=weld(m,handle,PBPart1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -3.69963789, -7.15255737e-006, 1, 5.05664954e-013, -1.30451205e-015, 4.97449304e-013, 1, -4.5374815e-013, 1.30451205e-015, -4.5374815e-013, 1))
mesh("CylinderMesh",PBPart1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
PBPart2=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","PBPart2",Vector3.new(0.400000006, 0.600000024, 0.400000006))
PBPart2weld=weld(m,handle,PBPart2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700050354, -7.00950623e-005, 3.49907684, -1, -1.60482286e-005, -1.59286301e-007, 1.58860502e-007, 2.65327035e-005, -1, 1.60482323e-005, -1, -2.65327017e-005))
mesh("SpecialMesh",PBPart2,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
PBPole=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","PBPole",Vector3.new(0.400000006, 3.5999999, 0.600000024))
PBPoleweld=weld(m,handle,PBPole,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -1.69878912, 0, 1, 2.91981717e-013, 2.13405832e-025, 2.91981717e-013, 1, -2.97428748e-013, 2.22223004e-025, -2.40585329e-013, 1))
mesh("CylinderMesh",PBPole,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09998429, 0, 1, 2.45206633e-013, 2.23613988e-025, 2.45205765e-013, 0.999996424, -2.26373662e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.325069427, -0.366897583, 0, 0.707222462, -0.706991136, 1.60148153e-013, 0.706991136, 0.707222462, -1.60200642e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09959769, -0.40000391, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699993134, 1.09672546e-005, 0.200021386, -0.999997139, -5.88281814e-008, 2.74286049e-005, -2.76967985e-005, -7.53964502e-010, -0.999998033, 5.88349671e-008, -0.999996901, -2.88369467e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 0.460000008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 1.99907148, 0.400010586, 1, -2.3827215e-007, 4.58606735e-007, -2.38272577e-007, -1, -1.63917434e-007, 4.58606763e-007, 1.6391779e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09944224, 0.399987221, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599994659, 1.99895847, -0.399979591, 1, -2.38257996e-007, 4.58606735e-007, -2.38258409e-007, -1, -1.63927155e-007, 4.58606763e-007, 1.63927496e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 0.198883891, -0.399979591, 1, -2.38229688e-007, 4.58606735e-007, -2.38230101e-007, -1, -1.63946595e-007, 4.58606763e-007, 1.63946936e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 0.198892951, 0.400010586, 1, -2.38208457e-007, 4.58606735e-007, -2.3820887e-007, -1, -1.63961175e-007, 4.58606763e-007, 1.63961516e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -0.199686766, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.99940848, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.799999952, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -1.09965634, -7.15255737e-006, 1, 2.53450039e-013, -1.30451205e-015, 2.36963227e-013, 1, -2.26374475e-013, 1.30451205e-015, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700004578, -2.67028809e-005, 0.699332714, -1, -1.60535947e-005, -1.59286301e-007, 1.58860217e-007, 2.65416365e-005, -1, 1.60535983e-005, -1, -2.65416347e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700019836, -1.66893005e-005, 1.49919093, -1, -1.60516884e-005, -1.59286301e-007, 1.58860317e-007, 2.65384861e-005, -1, 1.6051692e-005, -1, -2.65384842e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700023651, -4.29153442e-005, 1.89885879, -1, -1.60487161e-005, -1.59286301e-007, 1.58860473e-007, 2.65335711e-005, -1, 1.60487198e-005, -1, -2.65335693e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -2.09877872, 0, 1, 2.63532252e-013, 2.20870009e-025, 2.26881014e-013, 1, -2.40585329e-013, 2.29174052e-025, -2.1216362e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700031281, -3.81469727e-005, 2.29907608, -1, -1.60496675e-005, -1.59286301e-007, 1.58860416e-007, 2.65351464e-005, -1, 1.60497293e-005, -0.999996424, -2.65352392e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900005341, -2.09888887, 0.0100111961, 1, 2.6353919e-013, 2.20464535e-025, 2.26873208e-013, 0.999996424, -2.69013165e-013, 2.35117084e-025, -1.83734972e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.09933496, 0.00994968414, -1.1000061, -7.43166083e-007, 0.999996424, 2.72369789e-007, 1.49011719e-008, -2.72368425e-007, 1, 1, 7.431629e-007, -1.49009649e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -0.404999018, -3.0040741e-005, 1, 1.05336483e-010, -5.11527077e-021, 1.05335976e-010, 1, -9.92765453e-011, -5.11568477e-021, -9.9276018e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -1.60497594, -3.0040741e-005, 1, 1.12981839e-010, -5.89094849e-021, -1.12491558e-010, 1, -1.06496659e-010, -6.08833769e-021, 1.0604289e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409996033, -1.60497594, -3.0040741e-005, 1, 1.13225755e-010, -5.9168516e-021, -1.12735474e-010, 1, -1.06724032e-010, -6.11401341e-021, 1.06270263e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.60497594, 0.40499115, 1, 7.82292217e-011, -2.80034948e-021, -7.77389403e-011, 1, -7.37259559e-011, -2.93059226e-021, 7.32721869e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.60497594, -0.405024052, 1, 7.93888774e-011, -2.8813423e-021, -7.88986237e-011, 1, -7.48344303e-011, -3.02257208e-021, 7.43806614e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.404999018, -0.405024052, 1, 7.9389488e-011, -2.88135442e-021, 7.93889815e-011, 1, -7.48338752e-011, -2.88212869e-021, -7.48333479e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409996033, -0.404999018, -3.0040741e-005, 1, 3.79056439e-011, -6.35164548e-022, 3.79058382e-011, 1, -3.57250896e-011, -6.35662047e-022, -3.57250896e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.404999018, 0.40499115, 1, 7.82298046e-011, -2.80033434e-021, 7.8229298e-011, 1, -7.37254285e-011, -2.80000274e-021, -7.37249012e-011, 1))

function attackone()
attack = true
local con = LeftLeg.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(5,15),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=200632211",LeftLeg,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-50),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(50),math.rad(0),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
attack = false
con:disconnect()
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5)),.3)
end
so("http://roblox.com/asset/?id=200632211",LeftArm,1,.9)
local con = LeftArm.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(5,15),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-5)),.3)
end
attack = false
con:disconnect()
end

--[[remiders: PBPART1,PBPART2,PBPOLE,PBNEEDLE,HITBOX ]]--

function attackthree()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(0)),.3)
end
local con = Hitbox.Touched:connect(function(hit) Damagefunc(hit,25,40,math.random(10,15),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=240429891",Hitbox,1,1)
so("http://roblox.com/asset/?id=240429289",Hitbox,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(0)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,-1.,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
end
attack = false
con:disconnect()
end

function attackfour()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5)),.3)
end
so("http://roblox.com/asset/?id=240429891",Hitbox,1,.9)
so("http://roblox.com/asset/?id=240429289",Hitbox,1,.8)
local con = Hitbox.Touched:connect(function(hit) Damagefunc(hit,25,40,math.random(10,15),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-80)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-5)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,-1.,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
end
attack = false
con:disconnect()
end

mouse.Button1Down:connect(function()
if attack == false and
attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and
attacktype == 2 then
attacktype = 3
attacktwo()
elseif attack == false and
attacktype == 3 then
attacktype = 4
attackthree()
elseif attack == false and
attacktype == 4 then
attacktype = 1
attackfour()
end
end)

mouse.KeyDown:connect(function(k)
        k=k:lower()
        
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
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(10),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-15),math.rad(-90),math.rad(0)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(20),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-20),math.rad(-90),math.rad(0)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-15)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
end
end

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

        Player=game:GetService('Players').LocalPlayer
        Character=Player.Character
        Mouse=Player:GetMouse()
        m=Instance.new('Model',Character)


        local function weldBetween(a, b)
            local weldd = Instance.new("ManualWeld")
            weldd.Part0 = a
            weldd.Part1 = b
            weldd.C0 = CFrame.new()
            weldd.C1 = b.CFrame:inverse() * a.CFrame
            weldd.Parent = a
            return weldd
        end
        
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

local TrailColor = ("Really black")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
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
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
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

--Example: Torso.Weld.C0 = clerp(Torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
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
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                Damage=math.random(minim,maxim)
--                h:TakeDamage(Damage)
                blocked=false
                block=hit.Parent:findFirstChild("Block")
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
                showDamage(hit.Parent,Damage,.5,BrickColor.new("Really black"))
                else
                h.Health=h.Health-(Damage/2)
                showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                hum=hit.Parent.Humanoid
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
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                vp=Instance.new("BodyVelocity")
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
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
                if Targetting==false then
                ZTarget=hit.Parent.Torso
                coroutine.resume(coroutine.create(function(Part) 
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                swait(5)
                so("http://www.roblox.com/asset/?id=15666462",Part,1,1.5) 
                end),ZTarget)
                TargHum=ZTarget.Parent:findFirstChild("Humanoid")
                targetgui=Instance.new("BillboardGui")
                targetgui.Parent=ZTarget
                targetgui.Size=UDim2.new(10,100,10,100)
                targ=Instance.new("ImageLabel")
                targ.Parent=targetgui
                targ.BackgroundTransparency=1
                targ.Image="rbxassetid://4834067"
                targ.Size=UDim2.new(1,0,1,0)
                cam.CameraType="Scriptable"
                cam.CoordinateFrame=CFrame.new(Head.CFrame.p,ZTarget.Position)
                dir=Vector3.new(cam.CoordinateFrame.lookVector.x,0,cam.CoordinateFrame.lookVector.z)
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
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end
 
showDamage=function(Char,Dealt,du,Color)
        m=Instance.new("Model")
        m.Name=tostring(Dealt)
        h=Instance.new("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=Instance.new("Part")
        c.Transparency=0
        c.BrickColor=Color
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=Vector3.new(1,.4,1)
        ms=Instance.new("CylinderMesh")
        ms.Scale=Vector3.new(.8,.8,.8)
        if CRIT==true then
                ms.Scale=Vector3.new(1,1.25,1)
        end
        ms.Parent=c
        c.Reflectance=0
        Instance.new("BodyGyro").Parent=c
        c.Parent=m
        if Char:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
        elseif Char.Parent:findFirstChild("Head")~=nil then
        c.CFrame=CFrame.new(Char.Parent["Head"].CFrame.p+Vector3.new(0,1.5,0))
        end
        f=Instance.new("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        f.position=c.Position+Vector3.new(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end

handle=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Handle",Vector3.new(1.00000012, 0.200000003, 0.600000024))
handleweld=weld(m,Character["Right Arm"],handle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.00497817993, 1.09852839, -0.00498199463, -1.00772247e-025, 2.44568227e-013, 1, 2.26874075e-013, 0.999999881, 2.44568255e-013, -1, -2.26874048e-013, 1.00166402e-025))
Hitbox=part(Enum.FormFactor.Custom,m,Enum.Material.WoodPlanks,0,1,"Really black","Hitbox",Vector3.new(0.400000036, 1.60000014, 0.600000024))
Hitboxweld=weld(m,handle,Hitbox,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -0.101213217, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
mesh("SpecialMesh",Hitbox,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBNeedle=part(Enum.FormFactor.Custom,m,Enum.Material.WoodPlanks,0,0,"Really black","PBNeedle",Vector3.new(0.400000006, 0.400000006, 0.200000003))
PBNeedleweld=weld(m,handle,PBNeedle,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -0.501211882, 0, 1, 2.45206633e-013, 2.23613988e-025, -2.45206633e-013, -1, 2.26374475e-013, -2.25900477e-025, 2.26374475e-013, -1))
mesh("SpecialMesh",PBNeedle,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=1778999",Vector3.new(0, 0, 0),Vector3.new(0.300000012, 0.479999989, 0.300000012))
PBPart1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","PBPart1",Vector3.new(0.800000012, 0.399999946, 0.600000024))
PBPart1weld=weld(m,handle,PBPart1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -3.69963789, -7.15255737e-006, 1, 5.05664954e-013, -1.30451205e-015, 4.97449304e-013, 1, -4.5374815e-013, 1.30451205e-015, -4.5374815e-013, 1))
mesh("CylinderMesh",PBPart1,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
PBPart2=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","PBPart2",Vector3.new(0.400000006, 0.600000024, 0.400000006))
PBPart2weld=weld(m,handle,PBPart2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700050354, -7.00950623e-005, 3.49907684, -1, -1.60482286e-005, -1.59286301e-007, 1.58860502e-007, 2.65327035e-005, -1, 1.60482323e-005, -1, -2.65327017e-005))
mesh("SpecialMesh",PBPart2,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
PBPole=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","PBPole",Vector3.new(0.400000006, 3.5999999, 0.600000024))
PBPoleweld=weld(m,handle,PBPole,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -1.69878912, 0, 1, 2.91981717e-013, 2.13405832e-025, 2.91981717e-013, 1, -2.97428748e-013, 2.22223004e-025, -2.40585329e-013, 1))
mesh("CylinderMesh",PBPole,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09998429, 0, 1, 2.45206633e-013, 2.23613988e-025, 2.45205765e-013, 0.999996424, -2.26373662e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000006, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.325069427, -0.366897583, 0, 0.707222462, -0.706991136, 1.60148153e-013, 0.706991136, 0.707222462, -1.60200642e-013, 2.25900477e-025, -2.26374475e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09959769, -0.40000391, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.699993134, 1.09672546e-005, 0.200021386, -0.999997139, -5.88281814e-008, 2.74286049e-005, -2.76967985e-005, -7.53964502e-010, -0.999998033, 5.88349671e-008, -0.999996901, -2.88369467e-011))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=3270017",Vector3.new(0, 0, 0),Vector3.new(0.420000017, 0.460000008, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 1.99907148, 0.400010586, 1, -2.3827215e-007, 4.58606735e-007, -2.38272577e-007, -1, -1.63917434e-007, 4.58606763e-007, 1.6391779e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 2, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.09944224, 0.399987221, 1, 2.45206633e-013, 2.23613988e-025, 2.45206633e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 0.560000002))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599994659, 1.99895847, -0.399979591, 1, -2.38257996e-007, 4.58606735e-007, -2.38258409e-007, -1, -1.63927155e-007, 4.58606763e-007, 1.63927496e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 0.198883891, -0.399979591, 1, -2.38229688e-007, 4.58606735e-007, -2.38230101e-007, -1, -1.63946595e-007, 4.58606763e-007, 1.63946936e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, 0.198892951, 0.400010586, 1, -2.38208457e-007, 4.58606735e-007, -2.3820887e-007, -1, -1.63961175e-007, 4.58606763e-007, 1.63961516e-007, -1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.819999993, 0.560000002, 1.31999993))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.800000012))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -0.199686766, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.200000003, 0.800000072))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.599998474, -1.99940848, 0, 1, 2.49342214e-013, 2.23281582e-025, 2.41071052e-013, 1, -2.26374475e-013, 2.25900477e-025, -2.26374475e-013, 1))
mesh("BlockMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(0.800000012, 0.5, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.800000012, 0.799999952, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -1.09965634, -7.15255737e-006, 1, 2.53450039e-013, -1.30451205e-015, 2.36963227e-013, 1, -2.26374475e-013, 1.30451205e-015, -2.26374475e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700004578, -2.67028809e-005, 0.699332714, -1, -1.60535947e-005, -1.59286301e-007, 1.58860217e-007, 2.65416365e-005, -1, 1.60535983e-005, -1, -2.65416347e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700019836, -1.66893005e-005, 1.49919093, -1, -1.60516884e-005, -1.59286301e-007, 1.58860317e-007, 2.65384861e-005, -1, 1.6051692e-005, -1, -2.65384842e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700023651, -4.29153442e-005, 1.89885879, -1, -1.60487161e-005, -1.59286301e-007, 1.58860473e-007, 2.65335711e-005, -1, 1.60487198e-005, -1, -2.65335693e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.600000024, 0.400000006, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.699993134, -2.09877872, 0, 1, 2.63532252e-013, 2.20870009e-025, 2.26881014e-013, 1, -2.40585329e-013, 2.29174052e-025, -2.1216362e-013, 1))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.Plastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.600000024, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.700031281, -3.81469727e-005, 2.29907608, -1, -1.60496675e-005, -1.59286301e-007, 1.58860416e-007, 2.65351464e-005, -1, 1.60497293e-005, -0.999996424, -2.65352392e-005))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=18430887",Vector3.new(0, 0, 0),Vector3.new(0.299999982, 0.299999982, 2.22000003))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.400000006, 0.200000003, 0.400000036))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.900005341, -2.09888887, 0.0100111961, 1, 2.6353919e-013, 2.20464535e-025, 2.26873208e-013, 0.999996424, -2.69013165e-013, 2.35117084e-025, -1.83734972e-013, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.400000036, 0.400000006))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.09933496, 0.00994968414, -1.1000061, -7.43166083e-007, 0.999996424, 2.72369789e-007, 1.49011719e-008, -2.72368425e-007, 1, 1, 7.431629e-007, -1.49009649e-008))
mesh("CylinderMesh",Part,"","",Vector3.new(0, 0, 0),Vector3.new(1, 1, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -0.404999018, -3.0040741e-005, 1, 1.05336483e-010, -5.11527077e-021, 1.05335976e-010, 1, -9.92765453e-011, -5.11568477e-021, -9.9276018e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.409999847, -1.60497594, -3.0040741e-005, 1, 1.12981839e-010, -5.89094849e-021, -1.12491558e-010, 1, -1.06496659e-010, -6.08833769e-021, 1.0604289e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409996033, -1.60497594, -3.0040741e-005, 1, 1.13225755e-010, -5.9168516e-021, -1.12735474e-010, 1, -1.06724032e-010, -6.11401341e-021, 1.06270263e-010, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.60497594, 0.40499115, 1, 7.82292217e-011, -2.80034948e-021, -7.77389403e-011, 1, -7.37259559e-011, -2.93059226e-021, 7.32721869e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -1.60497594, -0.405024052, 1, 7.93888774e-011, -2.8813423e-021, -7.88986237e-011, 1, -7.48344303e-011, -3.02257208e-021, 7.43806614e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.404999018, -0.405024052, 1, 7.9389488e-011, -2.88135442e-021, 7.93889815e-011, 1, -7.48338752e-011, -2.88212869e-021, -7.48333479e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(0.200000003, 0.210000008, 0.600000024))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.409996033, -0.404999018, -3.0040741e-005, 1, 3.79056439e-011, -6.35164548e-022, 3.79058382e-011, 1, -3.57250896e-011, -6.35662047e-022, -3.57250896e-011, 1))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Really black","Part",Vector3.new(1.0200001, 0.210000008, 0.210000008))
Partweld=weld(m,handle,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.404999018, 0.40499115, 1, 7.82298046e-011, -2.80033434e-021, 7.8229298e-011, 1, -7.37254285e-011, -2.80000274e-021, -7.37249012e-011, 1))

function attackone()
attack = true
local con = LeftLeg.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(5,15),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=200632211",LeftLeg,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-50),math.rad(0),math.rad(-90)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(50),math.rad(0),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(40)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-30),math.rad(0),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-80),math.rad(0),math.rad(0)),.3)
end
attack = false
con:disconnect()
end

function attacktwo()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.5, -.5) * angles(math.rad(0), math.rad(-150), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5)),.3)
end
so("http://roblox.com/asset/?id=200632211",LeftArm,1,.9)
local con = LeftArm.Touched:connect(function(hit) Damagefunc(hit,15,20,math.random(5,15),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0), math.rad(-10), math.rad(-90)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-5)),.3)
end
attack = false
con:disconnect()
end

--[[remiders: PBPART1,PBPART2,PBPOLE,PBNEEDLE,HITBOX ]]--

function attackthree()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(70),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-120),math.rad(0)),.3)
end
local con = Hitbox.Touched:connect(function(hit) Damagefunc(hit,25,40,math.random(10,15),"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=240429891",Hitbox,1,1)
so("http://roblox.com/asset/?id=240429289",Hitbox,1,1)
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(50)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-50)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(50)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-40)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(60),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(0)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,-1.,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
end
attack = false
con:disconnect()
end

function attackfour()
attack = true
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(150), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-50)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(140),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-50),math.rad(-5)),.3)
end
so("http://roblox.com/asset/?id=240429891",Hitbox,1,.9)
so("http://roblox.com/asset/?id=240429289",Hitbox,1,.8)
local con = Hitbox.Touched:connect(function(hit) Damagefunc(hit,25,40,math.random(10,15),"Normal",RootPart,.2,1) end) 
for i = 0,1,0.1 do
swait()
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(80)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(-70)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0), math.rad(50), math.rad(90)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-80)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(50),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-140),math.rad(-5)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,-1,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,-1.,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
end
attack = false
con:disconnect()
end

mouse.Button1Down:connect(function()
if attack == false and
attacktype == 1 then
attacktype = 2
attackone()
elseif attack == false and
attacktype == 2 then
attacktype = 3
attacktwo()
elseif attack == false and
attacktype == 3 then
attacktype = 4
attackthree()
elseif attack == false and
attacktype == 4 then
attacktype = 1
attackfour()
end
end)

mouse.KeyDown:connect(function(k)
        k=k:lower()
        
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
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(-5),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(5),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(10),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-15),math.rad(-90),math.rad(0)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.4)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(0),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(20),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(30)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(-30)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(20),math.rad(90),math.rad(0)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-20),math.rad(-90),math.rad(0)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false then
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(5),math.rad(0),math.rad(-20)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(20)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-10), math.rad(0), math.rad(20)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-10)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-10)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-70),math.rad(-5)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false then
change=3
RootJoint.C0 = clerp(RootJoint.C0,RootCF*cf(0,0,0)* angles(math.rad(10),math.rad(0),math.rad(0)),.3)
Torso.Neck.C0 = clerp(Torso.Neck.C0,necko *angles(math.rad(0),math.rad(0),math.rad(0)),.3)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(10)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(10), math.rad(0), math.rad(-20)), 0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(-15)),.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(-15)),.3)
PBNeedleweld.C0=clerp(PBNeedleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPoleweld.C0=clerp(PBPoleweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart1weld.C0=clerp(PBPart1weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
PBPart2weld.C0=clerp(PBPart2weld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
Hitboxweld.C0=clerp(Hitboxweld.C0,cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),.2)
end
end
end
if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
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
--end
end
end
end
end



if #Effects>0 then
--table.insert(Effects,{prt,"Block1",delay})
for e=1,#Effects do
if Effects[e]~=nil then
--for j=1,#Effects[e] do
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
--end
end
end
end
end

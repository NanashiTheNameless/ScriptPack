SniperType="Laser"
Player = game.Players.rigletto 
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
X = 1 -- Size.X of the Path 
Y = 5 -- Size.Y of the Path 
Z = 1 -- Size.Z of the Path 
PX = 3 
PY = 3 
PZ = 3 
Longness = 1 -- How long the Path will stay 
velo = 50 
rot = 0 
mesh = true 
scope = false 
enabled = true 
dur = nil 
dur2 = nil 
ni = 0 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 


------------------------------------------------------------- 

if Character:findFirstChild("Sniper",true) ~= nil then 
Character:findFirstChild("Sniper",true).Parent = nil 
end 

if Character:findFirstChild("Weapon",true) ~= nil then 
Character:findFirstChild("Weapon",true).Parent = nil 
end 


------------------------------------------------------------- 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Sniper" 
script.Parent = Tool 
end 
Bin = script.Parent 

local sniper = Instance.new("Part") 
sniper.Parent = Character
sniper.Size = Vector3.new(1,1,1) 
sniper.CanCollide = false 
sniper.Anchored = false 
sniper.Name = "Sniper" 
sniper.BrickColor = BrickColor.new("Really red") 
sniper.Position = Torso.Position 
derp = Instance.new("Part") 
derp.Parent = nil 
derp.Transparency = 1 
derp.CanCollide = false 
local son = Instance.new("Sound") 
son.Parent = sniper 
son.Pitch = 1 
son.Volume = 0.5 
son.Looped = false 
son.SoundId = "http://roblox.com/asset/?id=10209875" 
local rel = Instance.new("Sound") 
rel.Parent = sniper 
rel.Pitch = 1 
rel.Volume = 0.5 
rel.Looped = false 
rel.SoundId = "http://roblox.com/asset/?id=10209881"
local meh = Instance.new("SpecialMesh") 
meh.Parent = sniper 
meh.MeshId = "http://www.roblox.com/asset/?id=2761723" 
meh.MeshType = "FileMesh" 
meh.Scale = Vector3.new(0.5,0.5,0.5) 
local wel = Instance.new("Weld") 
wel.Parent = sniper 
wel.Part0 = sniper 
wel.Part1 = Torso 
wel.C0 = CFrame.fromEulerAnglesXYZ(0.9,math.rad(90),0) * CFrame.new(0,0, -0.75) 


hold = false 
LH0 = LH.C0 
RH0 = RH.C0 
LS0 = LS.C0 
RS0 = RS.C0 

function ob1d(mouse) 
if scope == true then 
--[[		cam=game.Workspace.CurrentCamera:clone()
		cam.Parent=game.Workspace 
		cam.Name = "Camzorzlol" 
		game.Workspace.CurrentCamera.CameraSubject = mouse.Target 
		game.Workspace.CurrentCamera.CameraType=3]]
		workspace.CurrentCamera.FieldOfView=3
		Character.Humanoid.WalkSpeed=8
end 
hold = true 

----------------------- 



--------------------------------------- 




mouse.Icon = "rbxasset://textures\\GunCursor.png"
wp = Instance.new("Part") 
wp.Parent = Character 
wp.Size = Vector3.new(1,0.4,1) 
wp.formFactor = "Plate" 
wp.Transparency = 1.5 
wp.CanCollide = false 
w = Instance.new("Weld") 
w.Parent = Torso 
w.Part0 = Torso 
w.Part1 = wp 
w.C0 = CFrame.new(1.5,0.75,0) 
wp2 = Instance.new("Part") 
wp2.Parent = Character 
wp2.Size = Vector3.new(1,0.4,1) 
wp2.formFactor = "Plate" 
wp2.Transparency = 1.5 
wp2.CanCollide = false 
w2 = Instance.new("Weld") 
w2.Parent = Torso 
w2.Part0 = Torso 
w2.Part1 = wp2 
w2.C0 = CFrame.new(-1.5,0.75,-0) 
wp3 = Instance.new("Part") 
wp3.Parent = Character 
wp3.Size = Vector3.new(1,0.4,1) 
wp3.formFactor = "Plate" 
wp3.Transparency = 1.5 
wp3.FrontSurface = "Motor" 
wp3.CanCollide = false 
w3 = Instance.new("Weld") 
w3.Parent = Torso 
w3.Part0 = Torso 
w3.Part1 = wp3 
w3.C0 = CFrame.new(0,0.75,-2.5) * CFrame.fromEulerAnglesXYZ(0,math.rad(-90),0) 


function laser(to,from) -- MUST BE VECTOR3 
local las=Instance.new("Part",Workspace) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom"
las.BrickColor=BrickColor.new("Bright red") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((to+from)/2,from)*CFrame.Angles(math.rad(90),0,0) 
game.Debris:AddItem(las,0.5) 
local msh=Instance.new("SpecialMesh",las) 
msh.Scale=Vector3.new(0.1,(to-from).magnitude,0.1) 
return las 
end 


function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 


RS.Part1 = nil 
LS.Part1 = nil 
while hold == true do 

offset=(Torso.Position.y-mouse.Hit.p.y)/60
mag=(Torso.Position-mouse.Hit.p).magnitude/80
offset=offset/mag 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(offset,0,0)
dur = mouse.Hit 
dur2 = mouse.Target 
RightArm.CFrame = CFrame.new(wp.Position, mouse.Hit.p) 
LeftArm.CFrame = CFrame.new(wp2.Position, mouse.Hit.p) 
RightArm.CFrame = RightArm.CFrame + RightArm.CFrame.lookVector * 1 
LeftArm.CFrame = LeftArm.CFrame + LeftArm.CFrame.lookVector * 1 
RightArm.CFrame = RightArm.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,-1) * CFrame.new(0,-2,0)
LeftArm.CFrame = LeftArm.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
wel.Part0 = sniper 
wel.Part1 = LeftArm
wel.C0 = CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) * CFrame.new(0,2.3,0) 
sniper.CFrame = LeftArm.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0) * CFrame.new(0,0.5,-2.3) 
derp.Parent = Character 
derp.CFrame = sniper.CFrame * CFrame.new(0,0.2,-3) 
dwel = Instance.new("Weld") 
dwel.Parent = derp 
dwel.Part0 = derp 
dwel.Part1 = sniper
dwel.C0 = CFrame.new(0,-0.1,3) 
RightArm.Anchored = true 
LeftArm.Anchored = true 

wait() 
end 
RS.Part1 = RightArm 
LS.Part1 = LeftArm 
RightArm.Anchored = false 
LeftArm.Anchored = false 
wp:remove() 
wp2:remove() 
wp3:remove() 
derp.Parent = nil 
end 



function ob1u(mouse) 
Torso.Neck.C0=necko 
--[[if game.workspace:findFirstChild("Camzorzlol") ~= nil then 
		game.Workspace.CurrentCamera.CameraSubject=Character
		game.Workspace.CurrentCamera:Remove()
		game.Workspace.CurrentCamera=cam 
end ]]
workspace.CurrentCamera.FieldOfView=70
Character.Humanoid.WalkSpeed=16
hold = false 
wel.Part0 = sniper 
wel.Part1 = Torso
wel.C0 = CFrame.fromEulerAnglesXYZ(0.9,math.rad(90),0) * CFrame.new(0,0, -0.75) 
LH.C0 = LH0 
RH.C0 = RH0 
LS.C0 = LS0 
RS.C0 = RS0 
end 


function key(key) 
if hold == true then 
if key == "q" then 
if enabled == true then 
enabled = false 
son:Play() 
sp = derp.Position 
dirr = derp.CFrame * CFrame.new(math.random(-2,1)*math.random(),math.random(-2,1)*math.random(),math.random(-2,1)*math.random())

local hit,pos = rayCast(sp,dirr.lookVector,500,Character) 
q = dur 
coroutine.resume(coroutine.create(function() 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0,0,0)
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = sniper.CFrame * CFrame.new(0,0.2,-3) * CFrame.fromEulerAnglesXYZ(0,0,math.random(-50,50)) 
shell.Parent = Character 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright yellow") 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function() 
for i = 0 , 3 , 0.7 do 
wait(0.1) 
mesh.Scale = mesh.Scale + Vector3.new(0.3,0.3,0.3) 
shell.Transparency = shell.Transparency + 0.4
end 
shell.Transparency = 1 
shell.Parent = nil 
end)) 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0.2,0.2,0)
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = sniper.CFrame * CFrame.new(0,0.2,-3) * CFrame.fromEulerAnglesXYZ(0,0,0) 
shell.Parent = Character 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright yellow") 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function() 
for i = 0 , 3 , 0.7 do 
wait(0.1) 
mesh.Scale = mesh.Scale + Vector3.new(0,0,1) 
shell.Transparency = shell.Transparency + 0.4
end 
shell.Transparency = 1 
shell.Parent = nil 
end)) 
end)) 
coroutine.resume(coroutine.create(function() 
if hit ~= nil and pos ~= nil then 
if hit.Parent.className == "Hat" then 
hit:BreakJoints() 
hit.Velocity = Vector3.new(math.random(-5,5),20,math.random(-5,5)) 
end 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then
--hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 20
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=hit.Parent.Humanoid
			game:GetService("Debris"):AddItem(c,.5)
if hit.Name == "Head" then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 90 
hit.Velocity = Vector3.new(0,100,0) 
local bld = Instance.new("Part") 
bld.Parent = game.workspace 
bld.BrickColor = BrickColor.new("Bright red") 
bld.Size = Vector3.new(0.2, 0.2, 0.2) 
bld.Anchored = false 
bld.formFactor = 2 
bld.CFrame = CFrame.new(hit.Position) 
local bld2 = Instance.new("Part") 
bld2.Parent = game.workspace 
bld2.BrickColor = BrickColor.new("Bright red") 
bld2.Size = Vector3.new(0.2, 0.2, 0.2) 
bld2.Anchored = false 
bld2.formFactor = 2 
bld2.CFrame = CFrame.new(hit.Position) 
local bld3 = Instance.new("Part") 
bld3.Parent = game.workspace 
bld3.BrickColor = BrickColor.new("Bright red") 
bld3.Size = Vector3.new(0.2, 0.2, 0.2) 
bld3.Anchored = false 
bld3.formFactor = 2 
bld3.CFrame = CFrame.new(hit.Position) 
local bld4 = Instance.new("Part") 
bld4.Parent = game.workspace 
bld4.BrickColor = BrickColor.new("Bright red") 
bld4.Size = Vector3.new(0.2, 0.2, 0.2) 
bld4.Anchored = false 
bld4.formFactor = 2 
bld4.CFrame = CFrame.new(hit.Position) 
local bld5 = Instance.new("Part") 
bld5.Parent = game.workspace 
bld5.BrickColor = BrickColor.new("Bright red") 
bld5.Size = Vector3.new(0.2, 0.2, 0.2) 
bld5.Anchored = false 
bld5.formFactor = 2 
bld5.CFrame = CFrame.new(hit.Position) 
local bld6 = Instance.new("Part") 
bld6.Parent = game.workspace 
bld6.BrickColor = BrickColor.new("Bright red") 
bld6.Size = Vector3.new(0.2, 0.2, 0.2) 
bld6.Anchored = false 
bld6.formFactor = 2 
bld6.CFrame = CFrame.new(hit.Position) 
wait(6) 
bld:Remove() 
bld2:Remove() 
bld3:Remove() 
bld4:Remove() 
bld5:Remove() 
bld6:Remove() 
else  
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 30 
for i = 0,3 do 
local bld = Instance.new("Part") 
bld.Parent = game.workspace 
bld.BrickColor = BrickColor.new("Bright red") 
bld.Size = Vector3.new(0.2, 0.2, 0.2) 
bld.Anchored = false 
bld.formFactor = 2 
bld.CFrame = CFrame.new(hit.Position) 
coroutine.resume(coroutine.create(function(Part) 
wait(6) 
Part:Remove() 
end),bld) 
end 
end 
end 
end 
end 
end))
secondpos=pos
print(Herp)
print(sp)
newray=secondpos

local hit,pos = rayCast(newray,dirr.lookVector,500,hit) 
q = dur 
coroutine.resume(coroutine.create(function() 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0,0,0)
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = sniper.CFrame * CFrame.new(0,0.2,-3) * CFrame.fromEulerAnglesXYZ(0,0,math.random(-50,50)) 
shell.Parent = Character 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright yellow") 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function() 
for i = 0 , 3 , 0.7 do 
wait(0.1) 
mesh.Scale = mesh.Scale + Vector3.new(0.3,0.3,0.3) 
shell.Transparency = shell.Transparency + 0.4
end 
shell.Transparency = 1 
shell.Parent = nil 
end)) 
local mesh = Instance.new("SpecialMesh") 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0.2,0.2,0)
local shell = Instance.new("Part") 
mesh.Parent = shell 
shell.Anchored = true 
shell.formFactor = 1 
shell.Size = Vector3.new(2,2,2) 
shell.CFrame = sniper.CFrame * CFrame.new(0,0.2,-3) * CFrame.fromEulerAnglesXYZ(0,0,0) 
shell.Parent = Character 
shell.Transparency = 0 
shell.BrickColor = BrickColor.new("Bright yellow") 
shell.CanCollide = false 
coroutine.resume(coroutine.create(function() 
for i = 0 , 3 , 0.7 do 
wait(0.1) 
mesh.Scale = mesh.Scale + Vector3.new(0,0,1) 
shell.Transparency = shell.Transparency + 0.4
end 
shell.Transparency = 1 
shell.Parent = nil 
end)) 
end)) 
local las=Instance.new("Part",sniper) 
if SniperType=="Normal" then
las.Transparency=1
end
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom"
las.BrickColor=BrickColor.new("Bright red") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((derp.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las) 
mag = (derp.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,mag,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + Vector3.new(0.15,0.7,0.15) 
end 
Part.Parent = nil 
end),las,msh) 
local las=Instance.new("Part",sniper) 
if SniperType=="Normal" then
las.Transparency=1
end
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom"
las.BrickColor=BrickColor.new("Bright yellow") 
las.Size=Vector3.new(1,1,1) 
las.CFrame=CFrame.new((derp.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=Instance.new("SpecialMesh",las) 
mag = (derp.Position-pos).magnitude 
msh.Scale=Vector3.new(0.1,mag,0.1) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.05 do 
wait() 
Part.Transparency = Part.Transparency + 0.05 
--Mesh.Scale = Mesh.Scale + Vector3.new(-0.05,0.7,-0.05) 
end 
Part.Parent = nil 
end),las,msh) 
if hit ~= nil and pos ~= nil then 
if hit.Parent.className == "Hat" then 
hit:BreakJoints() 
hit.Velocity = Vector3.new(math.random(-5,5),20,math.random(-5,5)) 
end 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then
--hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 20
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=hit.Parent.Humanoid
			game:GetService("Debris"):AddItem(c,.5)
if hit.Name == "Head" then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 90 
hit.Velocity = Vector3.new(0,100,0) 
local bld = Instance.new("Part") 
bld.Parent = game.workspace 
bld.BrickColor = BrickColor.new("Bright red") 
bld.Size = Vector3.new(0.2, 0.2, 0.2) 
bld.Anchored = false 
bld.formFactor = 2 
bld.CFrame = CFrame.new(hit.Position) 
local bld2 = Instance.new("Part") 
bld2.Parent = game.workspace 
bld2.BrickColor = BrickColor.new("Bright red") 
bld2.Size = Vector3.new(0.2, 0.2, 0.2) 
bld2.Anchored = false 
bld2.formFactor = 2 
bld2.CFrame = CFrame.new(hit.Position) 
local bld3 = Instance.new("Part") 
bld3.Parent = game.workspace 
bld3.BrickColor = BrickColor.new("Bright red") 
bld3.Size = Vector3.new(0.2, 0.2, 0.2) 
bld3.Anchored = false 
bld3.formFactor = 2 
bld3.CFrame = CFrame.new(hit.Position) 
local bld4 = Instance.new("Part") 
bld4.Parent = game.workspace 
bld4.BrickColor = BrickColor.new("Bright red") 
bld4.Size = Vector3.new(0.2, 0.2, 0.2) 
bld4.Anchored = false 
bld4.formFactor = 2 
bld4.CFrame = CFrame.new(hit.Position) 
local bld5 = Instance.new("Part") 
bld5.Parent = game.workspace 
bld5.BrickColor = BrickColor.new("Bright red") 
bld5.Size = Vector3.new(0.2, 0.2, 0.2) 
bld5.Anchored = false 
bld5.formFactor = 2 
bld5.CFrame = CFrame.new(hit.Position) 
local bld6 = Instance.new("Part") 
bld6.Parent = game.workspace 
bld6.BrickColor = BrickColor.new("Bright red") 
bld6.Size = Vector3.new(0.2, 0.2, 0.2) 
bld6.Anchored = false 
bld6.formFactor = 2 
bld6.CFrame = CFrame.new(hit.Position) 
wait(6) 
bld:Remove() 
bld2:Remove() 
bld3:Remove() 
bld4:Remove() 
bld5:Remove() 
bld6:Remove() 
else  
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 30 
for i = 0,3 do 
local bld = Instance.new("Part") 
bld.Parent = game.workspace 
bld.BrickColor = BrickColor.new("Bright red") 
bld.Size = Vector3.new(0.2, 0.2, 0.2) 
bld.Anchored = false 
bld.formFactor = 2 
bld.CFrame = CFrame.new(hit.Position) 
coroutine.resume(coroutine.create(function(Part) 
wait(6) 
Part:Remove() 
end),bld) 
end 
end 
end 
end 
end 
end 
end 
end 
if key == "e" then 
if enabled == false then 
rel:Play() 
local shell = Instance.new("Part") 
shell.Parent = game.workspace 
shell.formFactor = 0
shell.Size = Vector3.new(1,1,1)
shell.TopSurface = 0
shell.BottomSurface = 0 
shell.Anchored = false 
shell.BrickColor = BrickColor.new(24)
shell.Locked = true
shell.Name = "Shell" 
shell.Position = sniper.Position 
local m = Instance.new("SpecialMesh")
m.Scale = Vector3.new(0.125,0.25,0.12)
m.Parent = shell
local cfrf = sniper.CFrame * CFrame.fromEulerAnglesXYZ(0,1.57,0)
local cfr = cfrf + cfrf.lookVector * -0.5
shell.CFrame = cfr
shell.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
shell.Velocity = cfr.lookVector * -5 
wait(0.5) 
enabled = true 
wait(3) 
shell:Remove() 
end 
end 
if key == "z" then 
if scope == false then 
scope = true 
elseif scope == true then 
scope = false 
end 
end 
if key == "x" then 
cam=game.Workspace.CurrentCamera:clone()
cam.Parent=game.Workspace 
cam.Name = "Camera" 
game.Workspace.CurrentCamera.CameraSubject = Head 
game.Workspace.CurrentCamera.CameraType=3
end 
end






function key2(key) 


end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
end 
function ds(mouse) 
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

while true do 
wait() 
sniper.Parent = workspace 
end 
-- lego mediafire
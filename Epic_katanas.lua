Me = game:service("Players").LocalPlayer
Char = Me.Character
Mouse = Me:GetMouse()
Mode={"BloodLust","Normal"}
DTable={}
Combo = 6
Name="RedDemonKatana"
PrimaryColor = "Really black"
SecondaryColor="Really red"
pcall(function() Char:FindFirstChild("WepModel"):Destroy() Me.Backpack:FindFirstChild(Name):Destroy() end)
Activated = false
Sheathed = true
Dashing = false
Selected = false
ADB=false
DiffColor = false
Camera=game:service("Workspace").CurrentCamera
LeftArm = Char["Left Arm"]
RightArm = Char["Right Arm"]
HRP = Char.HumanoidRootPart["RootJoint"]
SavedRoot = HRP.C0
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin", Me.Backpack)
h.Name = Name
script.Name = "''"
script.Parent = h
end
bin = script.Parent
local WepModel = Instance.new("Model", Char)
WepModel.Name = "WepModel"
local Debz = game:service("Debris")
            ------[[ Create Function  ]]------
Create = {}
function Create:Part(parent, x,y,z, color, transparency, cancollide, anchored, shape)
c = Instance.new("Part",parent)
c.Material = "SmoothPlastic"
if shape ~= nil then
c.Shape = shape
end
c.TopSurface,c.BottomSurface = 0,0
c.Locked = true
c.formFactor = "Custom"
c.Size = Vector3.new(x,y,z)
if color ~= "random" then
c.BrickColor = color
else c.BrickColor = BrickColor:Random() end
c.Transparency = transparency
c.CanCollide = cancollide
if anchored ~= nil then c.Anchored = anchored end
if parent ~= nil then c.Parent = parent end
return c
end;
function Create:BG(parent)
local c = Instance.new("BodyGyro",parent)
c.P = 20e+003
c.cframe = parent.CFrame
c.maxTorque = Vector3.new(c.P,c.P,c.P)
return c
end;
function Create:BP(parent, pos)
local bp = Instance.new("BodyPosition",parent)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.position = pos
return bp
end;
function Create:F(parent, size, heat, color, secondarycolor, enabled)
f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
if enabled ~= nil then f.Enabled = enabled end
if color ~= nil then f.Color = BrickColor.new(color).Color end
if secondarycolor ~= nil then f.SecondaryColor = BrickColor.new(secondarycolor).Color end
return f
end;
function Create:FM(parent, meshid, x,y,z, meshtexture)
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
function Create:Weld(parent,P0,P1,nam,c0,c1)
Weld = Instance.new("Weld",parent)
if P0 then  Weld.Part0 = P0 else error("Invalid Part0",2) end
if P1 then Weld.Part1 = P1 else print("Invalid Part1") end
if name then Weld.Name = nam else Weld.Name = "Weld" end
if c0 then Weld.C0 = c0 else print("Invalid C0") end
if c1 then Weld.C1 = c1 else Weld.C1 = CFrame.new(0,0.5,0) end
return Weld
end
M = {["Cos"] = function(a) return math.cos(a) end;
["Sin"] = function(a) return math.sin(a) end;
["Rad"] = function(a) return math.rad(a) end}
L0L=Create:Part(WepModel,1,1,1,BrickColor.new(PrimaryColor),1,false,false)
L0LWeld=Create:Weld(L0L,Char.Torso,L0L,"L0LWeld",CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,math.rad(-90),math.rad(90)),CFrame.new(0,-0.951,0))
coroutine.wrap(function()
for i = 0,1,1/50 do wait()
angle = math.rad(360*i)
end
end)()
local Delete = function(parent,time)
if time then
Debz:AddItem(parent,time)
else
parent:Destroy()
end end
Lite = Instance.new("PointLight")
Lite.Color = Color3.new(70,0,0)
Lite.Range = 10
Lite.Brightness = 10
Lite.Parent = Char.Torso
Handle = Create:Part(WepModel,1,1,1,BrickColor.new(PrimaryColor),0,false,false)
Instance.new("BlockMesh",Handle).Scale = Vector3.new(0.2,1.15,0.275)
HandleWeld=Create:Weld(Handle,Char.Torso,Handle,"HandleWeld",CFrame.new(1.5,1.8,0.65)*CFrame.fromEulerAnglesXYZ(0,0,math.pi/-4.75))
Hitbox = Create:Part(WepModel,1,6,0.5,BrickColor.new(PrimaryColor),1,false,false)
Hitbox.Name = "Hitbox"
Instance.new("BlockMesh", Hitbox)
BoxWeld=Create:Weld(Hitbox,Handle,Hitbox,"Boxweld",CFrame.new(0,-2.5,0),CFrame.new(0,-0.25,0))
Sheath = Create:Part(WepModel,1,1,1,BrickColor.new(PrimaryColor),0,false,false)
Instance.new("BlockMesh",Sheath).Scale = Vector3.new(0.3,3,0.3)
SheathWeld=Create:Weld(Char.Torso,Char.Torso,Sheath,"SheathWeld",CFrame.new(0.25,-0.1,0.65)*CFrame.fromEulerAnglesXYZ(0,0,math.pi/-4.75),CFrame.new(0.2,0.5,0))
for i = 1,6 do
Boxes = Create:Part(WepModel,1,1,1,BrickColor.new(SecondaryColor),0,false,false)
Instance.new("BlockMesh",Boxes).Scale = Vector3.new(0.225,0.2,0.31)
BoxesWeld=Create:Weld(Boxes,Char.Torso,Boxes,"BoxesWeld",CFrame.new(1.95,0,0.65)*CFrame.fromEulerAnglesXYZ(0,0,math.pi/-4.75),CFrame.new(1.55,i*0.5,0))
end
SheathTip = Create:Part(WepModel,1,1,1,BrickColor.new(PrimaryColor),0,false,false)
SheathMesh = Instance.new("SpecialMesh", SheathTip)
SheathMesh.MeshType = "Wedge"
SheathMesh.Scale = Vector3.new(0.3,0.75,0.3)
SheathTipWeld=Create:Weld(Char.Torso,Sheath,SheathTip,"SheathTipWeld",CFrame.new(0.25,-2,0.65)*CFrame.fromEulerAnglesXYZ(0,math.pi/2,3.15),CFrame.new(0.65,0.14,0.25))
print(SheathTip.Position,SheathTip.Transparency)
HandleBase = Create:Part(WepModel,1,1,1,BrickColor.new(PrimaryColor),0,false,false)
Instance.new("BlockMesh",HandleBase).Scale = Vector3.new(0.45,0.25,0.45)
HandleBaseWeld=Create:Weld(HandleBase,Handle,HandleBase,"HandleBaseWeld",CFrame.new(0,-0.175,0))
Blade = Create:Part(WepModel,1,1,1,BrickColor.new(SecondaryColor),0,false,false)
Instance.new("BlockMesh",Blade).Scale = Vector3.new(0.2,3,0.155)
BladeWeld=Create:Weld(Blade,Handle,Blade,"BladeWeld",CFrame.new(0,-1.75,0))
Blade2 = Create:Part(WepModel,1,1,1,BrickColor.new(PrimaryColor),0,false,false)
Instance.new("BlockMesh",Blade2).Scale = Vector3.new(0.1,3,0.156)
Blade2Weld=Create:Weld(Blade2,Handle,Blade2,"Blade2Weld",CFrame.new(0,-1.75,0))
Tip = Create:Part(WepModel,1,1,1,BrickColor.new(SecondaryColor),0,false,false)
TipMesh = Instance.new("SpecialMesh", Tip)
TipMesh.MeshType = "Wedge"
TipMesh.Scale = Vector3.new(0.155,0.5,0.2)
TipWeld=Create:Weld(Tip,Handle,Tip,"TipWeld",CFrame.new(0,-4.5,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/2,3.15),CFrame.new(0.01,0.5,0))
Tip2 = Create:Part(WepModel,1,1,1,BrickColor.new(PrimaryColor),0,false,false)
Tip2Mesh = Instance.new("SpecialMesh", Tip2)
Tip2Mesh.MeshType = "Wedge"
Tip2Mesh.Scale = Vector3.new(0.16,0.3,0.1)
Tip2Weld=Create:Weld(Tip2,Handle,Tip2,"Tip2Weld",CFrame.new(0,-4.4,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/2,3.15),CFrame.new(0.01,0.5,0))
function Dash()
Dashing = true
DBounce=true
playSound(153092348,Hitbox,1,1)
local vel = Instance.new("BodyVelocity", Char.Torso)
vel.maxForce = Vector3.new(math.huge,math.huge,math.huge)
coroutine.resume(coroutine.create(function()
while Dashing == true do wait()
vel.velocity = Char.Head.CFrame.lookVector * 70
Effect(Char.Torso, 1,0.5,1, 0,0,1, 0,0,0,BrickColor.new("Really red"),true, 20329976,Char.Torso.CFrame*CFrame.new(0,-2.75,0).p)
end
end))
wait(1)
vel:remove()
Dashing = false
wait(1)
DBounce=false
end
--Sound Func
function playSound(id,parent,volume,pitch)
        local sound = Instance.new("Sound",parent or workspace)
        sound.SoundId = "http://www.roblox.com/asset?id="..id
        sound.Volume = volume or 1
        sound.Pitch = pitch or 1
        coroutine.wrap(function()
                wait()
                sound:Play()
                wait(10)
                sound:Stop()
                sound:Destroy()
        end)()
        return sound
end
--Play Sound
function Shoot()
Activated = true
Charging = true
Idle()
StartTrail(Tip)
for i = 0,1,0.1 do wait()
RW.C0 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(1.5,0,0)
RW.C1 = CFrame.new(0.1,0.4,0)*CFrame.fromEulerAnglesXYZ(0,-i*1.575,i*0.15)
end
coroutine.wrap(function()
while Charging == true do wait()
Effect2(Tip,0.4,0.4,0.4,0,0,0,BrickColor.new(SecondaryColor))
end
end)()
end
function FirstSlash()
playSound(10209645,Hitbox,1,1)
Activated = true
Combo = 1
StartTrail(Tip)
pcall(function() Hitdmg=Hitbox.Touched:connect(function(hit) Damage(hit, math.random(8,10), hit.CFrame.p) end) end) 
Walk()
for i = 0,1,0.175 do wait()
LW.C1 = CFrame.new(0,0.5,0)*CFrame.fromEulerAnglesXYZ(0,0,i*0.3)
RW.C1 = CFrame.new(0.1,0.4,0)*CFrame.fromEulerAnglesXYZ(i*2.15,i*-0.75,i*-1.5)
HRP.C0 = SavedRoot*CFrame.fromEulerAnglesXYZ(0,0,i*2)
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-1.45*i)
end
EndTrail()
Hitdmg:disconnect(wait(0.1))
Activated = false
end
function SecondSlash()
playSound(10209645,Hitbox,1,1.2)
Activated = true
Combo = 2
StartTrail(Tip)
pcall(function() Hitdmg=Hitbox.Touched:connect(function(hit) Damage(hit, math.random(2,6), hit.CFrame.p) end) end)
for i = 0,1,0.2 do wait()
RW.C0 = CFrame.new(1.45,0.4,0)*CFrame.fromEulerAnglesXYZ(1.5,0,0)
RW.C1 = CFrame.new(0.1,0.4,0)*CFrame.fromEulerAnglesXYZ(0,-i*1.5,0)
end
for i = 0,1,0.2 do wait()
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0.725*i)
RW.C1 = CFrame.new(0,0.4,0)*CFrame.fromEulerAnglesXYZ(0,-1.5,i*-1.5)
HRP.C0 = HRP.C1*CFrame.fromEulerAnglesXYZ(0,0,i*-0.875)
end
EndTrail()
Hitdmg:disconnect(wait(0.1))
Activated = false
end
function ThirdSlash()
playSound(10209645,Hitbox,1,1.3)
Activated=true
Combo=3
StartTrail(Tip)
for i = 0,1,0.2 do wait()
HRP.C1 = HRP.C1*CFrame.fromEulerAnglesXYZ(0,0,i*-0.25)
RW.C0 = CFrame.new(1.45,0.4,0)*CFrame.fromEulerAnglesXYZ(1.5,0,0)
RW.C1 = CFrame.new(0,i,-0.15)*CFrame.fromEulerAnglesXYZ(i*-1.05,0,i*0.85)
LW.C0 = CFrame.new(-1.45,0.4,0)*CFrame.fromEulerAnglesXYZ(1.5,0,0) 
LW.C1 = CFrame.new(0,i,-0.15)*CFrame.fromEulerAnglesXYZ(i*-1.05,0,i*-0.85) 
Char.Torso.Neck.C0=necko
HandleWeld.C0 = CFrame.new(0,-1.075,0.6)*CFrame.fromEulerAnglesXYZ(math.rad(45/2),math.rad(90),math.rad(69))
HandleWeld.C1 = CFrame.new(0,0.3,0.25)*CFrame.Angles(math.rad(-40),math.rad(-12),math.rad(-10))
end
pcall(function() Hitdmg=Hitbox.Touched:connect(function(hit) Damage(hit, math.random(20,35), hit.CFrame.p,0)
if hit:IsA("Part") then
local evel = Instance.new("BodyVelocity", hit)
evel.maxForce = Vector3.new(math.huge,math.huge,math.huge)
evel.velocity = Char.Torso.CFrame.lookVector * 100
Delete(evel,0.025)
end end) end)
for i = 0,1,0.2 do wait()
RW.C1 = RW.C1*CFrame.new(0,-0.05,0)*CFrame.fromEulerAnglesXYZ(i*0.75,0,0)
LW.C1 = LW.C1*CFrame.new(0,-0.05,0)*CFrame.fromEulerAnglesXYZ(i*0.75,0,0) 
end
Hitdmg:disconnect(wait(0.1))
EndTrail()
Activated=false
end
function BDown()
if Activated then return end
if Combo == 0 then
FirstSlash()
coroutine.wrap(function()
wait(0.2)
if Activated == false then 
Combo = 0
end
end)()
elseif Combo == 1 then 
SecondSlash() 
coroutine.wrap(function()
wait(0.2) 
if Activated == false then 
Combo = 0
end
end)()
elseif Combo == 2 then
ThirdSlash()
coroutine.wrap(function()
wait(0.2) 
if Activated == false then 
Combo = 0
end
end)()
end
end
function key(key)
if Activated then return end
if key == "x" and not DBounce then
Dash()
end
end
function Walk()
Camera.CameraSubject=Char.Humanoid
Char.Humanoid.WalkSpeed = 25
RW.C0 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(3.45,0,-0.2)
RW.C1 = CFrame.new(0,0.35,0)*CFrame.fromEulerAnglesXYZ(3.5,0.5,0.9)
LW.C0 = CFrame.new(-1.4,0.45,0)*CFrame.fromEulerAnglesXYZ(0.4,0.25,-0.5)
LW.C1 = CFrame.new(0,0.5,0)
HRP.C0 = SavedRoot*CFrame.fromEulerAnglesXYZ(0,0,-1.5)
HRP.C1=CFrame.new(0,0,0,-1,-0,-0,0,0,1,0,1,0)
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,1.5)
HandleWeld.Part0 = RightArm
HandleWeld.C0 = CFrame.new(0,-1.075,0.5)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi/2,0)
HandleWeld.C1 = CFrame.new(0,0.5,0)
HandleWeld.Part1 = Handle
end
 
function Idle()
if RW and LW then
RW.Part0 = Char.Torso
RW.C0 = CFrame.new(1.5, 0.5, -0)*CFrame.fromEulerAnglesXYZ(0,0,0.2)
RW.C1 = CFrame.new(0, 0.5, 0)
RW.Part1 = RightArm
LW.Part0 = Char.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0,0,-0.2)
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = LeftArm
Char.Torso.Neck.C0=necko
Camera.CameraSubject=Char.Humanoid
HRP.C0=SavedRoot
HRP.C1=CFrame.new(0,0,0,-1,-0,-0,0,0,1,0,1,0)
Char.Humanoid.WalkSpeed = 16
HandleWeld.Part0 = RightArm
HandleWeld.C0 = CFrame.new(0,-1.075,0.5)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi/2,0)
HandleWeld.C1 = CFrame.new(0,0.5,0)
HandleWeld.Part1 = Handle
end
end
function Selection()
for i = 0,1,0.1 do wait()
RW.C0 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(3.45*i,0,i*-0.2)
end
playSound(130785405,Hitbox,1,1)
 
HandleWeld.Part0 = RightArm
HandleWeld.C0 = CFrame.new(0,-1.075,0.5)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi/2,0)
HandleWeld.C1 = CFrame.new(0,0.5,0)
HandleWeld.Part1 = Handle
for i = 0,1,0.15 do wait()
RW.C1 = CFrame.new(0,0.35,0)*CFrame.fromEulerAnglesXYZ(i*3.5,i*0.75,i)
LW.C0 = CFrame.new(-1.4,0.45,0)*CFrame.fromEulerAnglesXYZ(i*0.4,i*0.25,i*-0.25)
end
Idle()
Selected = true
Sheathed = false
end
function s(mouse)
if Sheathing then return end
mouse.KeyDown:connect(key)
mouse.Button1Down:connect(function() BDown(mouse) end)
RSH = Char.Torso["Right Shoulder"] 
LSH = Char.Torso["Left Shoulder"]
RW=Create:Weld(RightArm,Char.Torso,RightArm,"RW",CFrame.new(1.5, 0.5, -0)*CFrame.fromEulerAnglesXYZ(1.5,1.15,-0.25))
LW=Create:Weld(LeftArm,Char.Torso,LeftArm,"LW",CFrame.new(-1.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.5,0,-0.1))
Selection()
Idle()
Sheathed = false
end
function ds()
Sheathing = true
RW.C0 = CFrame.new(1.5, 0.5, -0)
RW.C1 = CFrame.new(0, 0.5, 0)
for i =0,1,0.1 do wait()
RW.C0 = CFrame.new(1.5,0.5,0)*CFrame.fromEulerAnglesXYZ(3.45*i,0,i*-0.2)
end
playSound(130785407,Hitbox,1,1)
HandleWeld.Part0 = Char.Torso
HandleWeld.C0 = CFrame.new(1.5,1.8,0.65)*CFrame.fromEulerAnglesXYZ(0,0,math.pi/-4.75)
HandleWeld.C1 = CFrame.new(0,0.5,0)
HandleWeld.Part1 = Handle
pcall(function() HRP.C0 = SavedRoot
RW.Parent = nil
LW.Parent = nil
Char.Torso.Neck.C0 = necko
RSH.Parent = Char.Torso
LSH.Parent = Char.Torso end)
Sheathing = false
Sheathed = true
Char.Humanoid.WalkSpeed = 16
end
bin.Selected:connect(s)
bin.Deselected:connect(ds)
function StartTrail(part,color)
trailin = true
local lastPoint = part.Position
coroutine.wrap(function()
while trailin do wait()
local point = CFrame.new(lastPoint, part.Position) * CFrame.Angles(-math.pi/2, 0, 0)
local mag = (lastPoint - part.Position).magnitude
local p = Create:Part(Char,1,1,1,BrickColor.new(PrimaryColor),0.1,false,true)
if color then p.BrickColor = BrickColor.new(color) end
Instance.new("SpecialMesh",p).Scale=Vector3.new(0.125, mag, 0.125)
p.CFrame = point * CFrame.new(0, mag/1.95, 0)
lastPoint = part.Position
coroutine.wrap(function() for i = 0,1,0.1 do wait() p.Transparency = i end p:Destroy() end)()
end
end)()
end
function EndTrail()
trailin = false
end
Damage = function(hit, dmg, pos,time)
if ADB == false then 
ADB = true 
coroutine.wrap(function()
if time ==nil then
ADB=false
else
wait(time)
end
ADB = false 
end)()
if hit.Parent==nil and hit.Parent.Torso == nil then 
return
print("hai")
end
if hit~=nil and hit.Parent ~= Char then
hum = hit.Parent:FindFirstChild("Humanoid")
if hum and hum.Health ~= 0 then
playSound(153092292,Hitbox,1,1)
critcalchance = math.ceil(math.random(1,15))
if critcalchance == 5 then
pcall(function() hum.Health = hum.Health - dmg*2 end)
if hum.Health == 0 then
KO=true
else
KO=false
end
crit = true
else
pcall(function() hum.Health = hum.Health - dmg end)
if hum.Health == 0 then
KO=true
else
KO=false
end
crit = false
end
mod = Instance.new("Model",game:service("Workspace"))
if not KO then
if crit == true then
mod.Name = "-"..(dmg*2)
else
mod.Name = "-"..dmg
end
else
mod.Name = "KO!"
crit=true
end
if not crit then
p = Create:Part(mod,0.25,0.15,0.25, BrickColor.new(SecondaryColor),0.25,false,false)
else
p = Create:Part(mod,0.35,0.25,0.35, BrickColor.new("Really red"),0.25,false,false)
end
p.CFrame = CFrame.new(pos)*CFrame.new(0,1,math.random(-2,2))
BP = Create:BP(p,p.Position+Vector3.new(0,6,0))
BP.P = 1500
s = Instance.new("SelectionBox",p)
s.Adornee = s.Parent
s.Transparency=p.Transparency
s.Color = p.BrickColor
local BGUI = Instance.new("BillboardGui",p)
BGUI.Size = UDim2.new(1,0,1,0)
BGUI.StudsOffset = Vector3.new(0,1,0)
BGUI.Adornee = BGUI.Parent
local frame = Instance.new("Frame",BGUI)
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundTransparency = 1
frame.BackgroundColor3 = Color3.new(1, 1, 1)
local BText = Instance.new("TextLabel",BGUI)
BText.TextStrokeTransparency = 0
BText.TextStrokeColor3 = BrickColor.new(PrimaryColor).Color
BText.BackgroundTransparency = 1
BText.Position = UDim2.new(0, 0, 0.1, 0)
BText.FontSize = "Size18"
BText.Size = UDim2.new(0.9, 0, 0.4, 0)
if not crit and not KO then
BText.Font = "SourceSans"
BText.TextColor3 = BrickColor.new(SecondaryColor).Color
elseif crit and not KO then
BText.FontSize = "Size24"
BText.Font = "SourceSans"
BText.TextColor3 = BrickColor.new("Really red").Color
elseif KO and crit then
BText.FontSize = "Size36"
BText.Font = "Legacy"
BText.TextColor3 = BrickColor.new("Really red").Color
end
BText.Font = "SourceSans"
BText.Text = mod.Name
Delete(mod,2.5)
coroutine.wrap(function()
wait(0.5)
for i = 0,1,0.035 do wait()
BText.TextTransparency = i
BText.TextStrokeTransparency = BText.TextStrokeTransparency + i
end
end)()
end
end
end
end
function Effect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color,meshid,id,pos,collid)
S=Create:Part(Char, 1,1,1, color, 0, false, true)
if collid then
S.CanCollide=collid
else
S.CanCollide=false
end
S.CFrame = CFrame.new(pos)
S.CFrame=S.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
if meshid == true then
local msh1 = Instance.new("SpecialMesh",S) 
msh1.Scale = Vector3.new(1,1,1) 
msh1.MeshType = "FileMesh"
msh1.MeshId = "http://www.roblox.com/asset/?id="..id..""
end
if meshid == "block" then
msh1 = Instance.new("BlockMesh",S)
msh1.Scale = Vector3.new(1,1,1)
elseif meshid == "ball" then
local msh1 = Instance.new("SpecialMesh",S) 
msh1.Scale = Vector3.new(1,1,1) 
msh1.MeshType = "Sphere"
end
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(x1, y1, z1) Part.Transparency=i*.1 wait() end Part:Destroy() end),S,S.CFrame)
end
Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
for i=1,Times do 
local li = Instance.new("Part",workspace) 
li.Material = "SmoothPlastic"
li.TopSurface = "SmoothNoOutlines"
li.BottomSurface = "SmoothNoOutlines"
li.RightSurface = "SmoothNoOutlines"
li.LeftSurface = "SmoothNoOutlines"
li.Anchored = true  li.Transparency = 
Transparency or 0.4 li.BrickColor = 
BrickColor.new(Color)
li.formFactor = "Custom" 
li.CanCollide = false 
li.Size = Vector3.new(1,1,1) 
lim = Instance.new("BlockMesh",li) 
lim.Scale = Vector3.new(Thickness,Thickness,magz/Times) 
local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
function touch(hit)
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent ~= Char then
Damage(hit, math.random(1,2), hit.CFrame.p)
end end li.Touched:connect(touch)
local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
if Times == i then
local magz2 = (curpos - End).magnitude lim.Scale = Vector3.new(Thickness,Thickness,magz2)
li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.25)
end
end
function Effect2(part,x1,y1,z1,x2,y2,z2,color)
local msh2 = Instance.new("BlockMesh") 
msh2.Scale = Vector3.new(x1, y1, z1) 
S=Create:Part(Char, 1,1,1, color, 0.5, false, true)
msh2.Parent = S
S.CFrame=part.CFrame*CFrame.new(x2, y2, z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end
coroutine.wrap(function()
game:service("RunService").RenderStepped:connect(function()
if not Sheathed and not Activated and not Sheathing and Combo == 0 then
if Vector3.new(Char.Torso.Velocity.x, 0, Char.Torso.Velocity.z).magnitude > 2 then
Walk()
else
Idle()
end
end
end)
end)()
pcall(function() script.source.Value = "l0l" end)
while true do game:GetService("RunService").RenderStepped:wait(-9001)
if not Sheathed then
wait(math.random(-1,2))
lightswitch = math.random(1,2)
if lightswitch == 1 then
Lightning(HandleBase.CFrame*CFrame.new(0,1,0).p,Tip.CFrame.p,math.random(3,6),math.random(-0.75,0.75),"Really red",0.04,0.2)
elseif lightswitch == 2 then
Lightning(HandleBase.CFrame*CFrame.new(0,1,0).p,Tip.CFrame.p,math.random(3,6),math.random(-0.75,0.75),PrimaryColor,0.04,0.2)
end
end
end
-----------------------------------------------[[LAWL]]------------------------------------------------------
--[[Run as a LocalScript
	Never will finish
	Credit to BRANNLAMAR2]]--
Me = game:service("Players").LocalPlayer
Char = Me.Character
lastpoint = Vector3.new(0, 0, 0)
Modes = {"Ranged", "Blocking", "Normal"}
Mode = Modes[Number]
leds = {}
Jumped = 0
Jumping = false
AbletoJump = true
Char.Humanoid.WalkSpeed = 30
Combo = 0
Guarding = false
attackdebounce = false
Selected = false
NormalModeColor = "Really black"
RangedModeColor = "Really red"
BlockModeColor = "New Yeller"
BaseColor = "White"
Activated = false
LeftArm = Char["Left Arm"]  
RightArm = Char["Right Arm"]  
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RSH, LSH = nil, nil
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin", Me.Backpack)
h.Name = "[[>> BrannZeus <<]] Blade"
script.Name = "Made by: [[>> BrannZeus© <<]]"
script.Parent = h
end
bin = script.Parent
Model = Instance.new("Model", Char)
Model.Name = "[[>> BrannZeus <<]] Blade"
Make = {["P"] = function(parent, x,y,z, color, transparency, cancollide, anchored)
c = Instance.new("Part",Model)
c.TopSurface,c.BottomSurface = 0,0
c.Locked = true
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
end;
["BG"] = function(parent)
local c = Instance.new("BodyGyro",parent)
c.P = 10e+15
c.cframe = parent.CFrame
c.maxTorque = Vector3.new(c.P,c.P,c.P)
return c
end;
["BP"] = function(parent, pos)
local bp = Instance.new("BodyPosition",parent)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.position = pos
return bp
end;
["F"] = function(parent, size, heat, color, secondarycolor, enabled)
f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
if enabled ~= nil then f.Enabled = enabled end
if color ~= nil then f.Color = BrickColor.new(color).Color end
if secondarycolor ~= nil then f.SecondaryColor = BrickColor.new(secondarycolor).Color end
return f
end;
["FM"] = function(parent, meshid, x,y,z, meshtexture)
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
end}
M = {["Cos"] = function(a) return math.cos(a) end;
["Sin"] = function(a) return math.sin(a) end;
["Rad"] = function(a) return math.rad(a) end}
FakeTorso = Make.P(Char, 1,1,1, "White", 1, false, true)
FakeTorso.BrickColor = Char.Torso.BrickColor
Mesh = Instance.new("BlockMesh", FakeTorso)
Mesh.Scale = Char.Torso.Size
BaseThing = Make.P(Model, 1,1,1, NormalModeColor, 1 ,false, true)
BaseMesh = Make.FM(BaseThing,68075671 , 0.5, 0.5, 0.5)
Handle = Make.P(Model, 0.3,1.5,0.3, BaseColor, 1 ,false, true)
Tip2 = Make.P(Model, 0.23, 0.1, 0.7, NormalModeColor, 1, false, true)
Tip1 = Make.P(Model, 0.23, 0.1, 0.7, NormalModeColor, 1, false, true)
BigTip1 = Make.P(Model, 0.22, 0.4, 0.8, BaseColor, 1, false, true)
BigTip2 = Make.P(Model, 0.22, 0.4, 0.8, BaseColor, 1, false, true)
HitBox = Make.P(Model, 2.5, 0.25, 4.3, "White", 1, false, true)
HitBox.Name = "HitBox"
Diamond = Make.P(Model, 1,1,1, BaseColor, 1 ,false, true)
DiamondMesh = Make.FM(Diamond,9756362 , 0.3, 0.3, 0.5)
HandleSturf = Make.P(Model, 0.31,0.31,0.29, NormalModeColor, 1 ,false, true)
HandleSturf2 = Make.P(Model, 0.31,0.31,0.29, NormalModeColor, 1 ,false, true)
HandleSturf3 = Make.P(Model, 0.31,0.31,0.29, NormalModeColor, 1 ,false, true)
LongSword = Make.P(Model, 0.8, 0.22, 3.7, BaseColor, 1, false, true)
LongSword2 = Make.P(Model, 0.39, 0.23, 3.6, NormalModeColor, 1, false, true)
BigWedgeMesh2 = Instance.new("SpecialMesh", BigTip2)
BigWedgeMesh2.MeshType = "Wedge"
BigWedgeMesh1 = Instance.new("SpecialMesh", BigTip1)
BigWedgeMesh1.MeshType = "Wedge"
WedgeMesh1 = Instance.new("SpecialMesh", Tip1)
WedgeMesh1.MeshType = "Wedge"
WedgeMesh1.Scale = Vector3.new(1, 1, 1)
WedgeMesh2 = Instance.new("SpecialMesh", Tip2)
WedgeMesh2.MeshType = "Wedge"
WedgeMesh2.Scale = Vector3.new(1, 1, 1)
LongMesh = Instance.new("BlockMesh", LongSword)
LongMesh.Scale = Vector3.new(1, 1, 1)
LongMesh2 = Instance.new("BlockMesh", LongSword2)
LongMesh2.Scale = Vector3.new(1, 1, 1)
HandleWedge1 = Make.P(Model, 0.215, 0.9, 1.5, BaseColor, 1, false, true)
HandleWedge2 = Make.P(Model, 0.24, 0.9, 1.5, BaseColor, 1, false, true)
WedgeMesh11 = Instance.new("SpecialMesh", HandleWedge2)
WedgeMesh11.MeshType = "Wedge"
WedgeMesh11.Scale = Vector3.new(1, 1, 1)
WedgeMesh22 = Instance.new("SpecialMesh", HandleWedge1)
WedgeMesh22.MeshType = "Wedge"
WedgeMesh22.Scale = Vector3.new(1, 1, 1)
Handle2 = Make.P(Model, 2, 0.22, 0.4, BaseColor, 1, false, true)
HandleBlock = Instance.new("BlockMesh", Handle2)
HandleBlock.Scale = Vector3.new(1, 1, 1)
function Dash()
Activated = true
Holding = true
for i = 0,1,0.1 do 
wait() 
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.4*i,0,0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.8*i,0.5,-0.8*i) * CFrame.fromEulerAnglesXYZ(1.2*i,0,-1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,1*i,0) 
end
Hitdmg=HitBox.Touched:connect(function(hit) Damage(hit, math.random(20, 30)) end)
local vel = Instance.new("BodyVelocity", Char.Torso)
vel.maxForce = Vector3.new(math.huge,math.huge,math.huge)
vel.velocity = Char.Head.CFrame.lookVector * 60
while Holding == true do 
wait()
Effect(Char.Torso, 3.5, 2, 3.5, 0, 0,1, 1.5,0,0,BrickColor.new(NormalModeColor), 20329976)
vel.velocity = Char.Head.CFrame.lookVector * 50
end
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1.4+1.4*i,0,-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,-0.8+0.8*i) * CFrame.fromEulerAnglesXYZ(-1.2+1.2*i,0,-1.2+1.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
Hitdmg:disconnect()
vel:remove()
Activated = false
end
function FirstSlash()
Activated = true 
Combo = 1 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5+2*i,0,0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5, 0.5*i, 0)
end
Hitdmg=HitBox.Touched:connect(function(hit) Damage(hit,math.random(10,20)) end)
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(0.5+2,0,0.3) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.5+2.3*i,0.5, 0)
end 
wait(0.2) 
Activated = false
Hitdmg:disconnect() 
end

function SecondSlash()
Activated = true 
Combo = 2
Hitdmg=HitBox.Touched:connect(function(hit) Damage(hit,math.random(10,20)) end)
for i = 0,1,0.1 do 
wait()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
RW.C1 = CFrame.new(0, 1.55, 0) * CFrame.fromEulerAnglesXYZ(-1*i,-1.2*i,0)
end
wait(0.2)
Activated = false
Hitdmg:disconnect() 
end
function ThirdSlash()
Activated = true 
Combo = 3
Hitdmg=HitBox.Touched:connect(function(hit) Damage(hit,math.random(10,20)) end)
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
wait()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.6*i,0,0)
end
end))
wait(0.2)
Activated = false
Hitdmg:disconnect()
end
function Jump()
Jumped = Jumped +1
Jumping = true
Jumpp = Instance.new("BodyVelocity", Char.Torso)
Jumpp.P = 500
Jumpp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Jumpp.velocity = Char.Torso.Position + Vector3.new(0, 80, 0)
game:service("Debris"):AddItem(Jumpp, 0.0000000000001)
Jumpp:Destroy(wait(0.0000000000001))
Jumpp:Remove(wait(0.0000000000001))
wait(1)
AbletoJump = false
Jumping = false
end
function SuperCombo()
Activated = true
for i = 0,1,0.1 do 
wait()
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.3*i,0,0)
Char.Torso.CFrame = Char.Torso.CFrame*CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
sturf = Make.P(Char, 1,1,1, NormalModeColor, 1, false, true)
sturf.CFrame = Char.Torso.CFrame*CFrame.new(0,-2.8,0)
msh = Make.FM(sturf,'cylinder',0,0,0)
for i = 0,1,0.1 do wait(0.025)
sturf.Transparency = sturf.Transparency -0.06
msh.Scale = msh.Scale + Vector3.new(1.5,0.025,1.5)
end
for i, v in pairs(game:service("Players"):GetPlayers()) do
if v.Name ~= Me.Name and (v.Character.Torso.Position - Char.Torso.Position).magnitude < 10 then
EBp = Instance.new("BodyPosition", v.Character.Torso)
EBp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
EBp.position = v.Character.Torso.Position + Vector3.new(0, 10, 0)
game:service("Debris"):AddItem(EBp,1)
end
end

wait(1)
Char.Torso.Neck.C0=necko
sturf:remove()
Activated = false
end
function Guard()
Activated = true
Guarding = true
Mode = "Blocking"
for i = 0,1,0.1 do 
wait()
Char.Torso.CFrame = Char.Torso.CFrame*CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, -0.25*i, 0) 
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0.5*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5*i,0,-1.25*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0.4*i) 
end
SaveHealth = Char.Humanoid.Health
taco = Instance.new("Part",Char)
taco.Size = Vector3.new(1,1,1)
taco.CanCollide = false
taco.Anchored = true
taco.Transparency = 1
while Guarding == true do wait()
for i = 0,1,0.1 do 
wait()
taco.CFrame = Char.Torso.CFrame*CFrame.new(-3,0,0)*CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)
Shield = Effect(Char.Torso, 4,4,3, -4,0,-1, math.pi/-2,0,1,BrickColor.new(BlockModeColor), 60120613)
end
if Char.Humanoid.Health < SaveHealth then
DamageTaken = SaveHealth - Char.Humanoid.Health
end
pcall(function() Char.Humanoid.Health:TakeDamage(DamageTaken/2) end)
coroutine.resume(coroutine.create(function()
for i, x in pairs(game:service("Players"):GetPlayers()) do
if x.Name ~= Me.Name and (x.Character.Torso.Position - RightArm.Position).magnitude < 7 then
derp = Instance.new("BodyVelocity", x.Character.Torso)
derp.P = 200
derp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
derp.velocity = taco.CFrame.lookVector * 80
game:service("Debris"):AddItem(derp,0.2)
end
end
end))
end
taco:Destroy()
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do 
wait()
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,-0.5+0.5*i)
Char.Torso.CFrame = Char.Torso.CFrame*CFrame.new(0, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0.25*i, 0)
end
end))
Activated = false
Mode = "Normal"
end
function Shockwave()
Activated = true
Mode = "Ranged"
derpin = true
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5+1.3*i,0,0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(-0.9*i,0,0)
end
Gyro = Instance.new("BodyGyro", Char.Torso)
Gyro.D = 50
Gyro.cframe = Char.Torso.CFrame
Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bp = Make.BP(Char.Torso,Char.Torso.Position+Vector3.new(0,35,0))
coroutine.resume(coroutine.create(function()
while derpin == true do wait()
for i = 0,1,0.1 do wait()
Derp = Effect2(Char.Torso, 3*i,3*i,3*i, 0,0.5,-2,BrickColor.new(RangedModeColor),Char)
end
end
end))
wait(2)
bp.position = Char.Torso.Position+Vector3.new(0,-35,0)
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do wait()
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.6*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,1,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(1.6*i,0,0)
lel = Effect(Char.Torso, 10*i,1.2*i,10*i, 0,-2,0, 0,0,0,BrickColor.new(RangedModeColor),20329976)
end
derpin = false
for i, v in pairs(game:service("Players"):GetPlayers()) do
if v.Name ~= Me.Name and (v.Character.Torso.Position - Char.Torso.Position).magnitude < 20 then
v.Character.Humanoid:TakeDamage(40)
v.Character.Humanoid.Sit = true
EBV = Instance.new("BodyVelocity", v.Character.Torso)
EBV.maxForce = Vector3.new(math.huge,math.huge,math.huge)
EBV.velocity = v.Character.Torso.CFrame.lookVector * -30
game:service("Debris"):AddItem(EBV,0.2)
end
end
end))
wait(1)
Gyro:remove()
bp:remove()
wait(1)
Mode = "Normal"
Activated = false
end
function bdown(mouse)
if Activated == true then return end
if Combo == 0 then
FirstSlash()
coroutine.resume(coroutine.create(function()
wait(0.5)
if Activated == false then 
Combo = 0
end
end))
elseif Combo == 1 then 
SecondSlash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if Activated == false then 
Combo = 0 
end
end))
elseif Combo == 2 then 
ThirdSlash() 
coroutine.resume(coroutine.create(function()
wait(0.5) 
if Activated == false then 
Combo = 0 
end
end))
end
end

coroutine.resume(coroutine.create(function()
while wait() do
if Selected == true then
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do 
wait(0.1)
DiamondWeld.C0 = DiamondWeld.C0*CFrame.Angles(0, math.rad(i*1), 0)
end
end))
if Mode == "Normal" then
BaseThing.BrickColor = BrickColor.new(NormalModeColor)
Tip2.BrickColor = BrickColor.new(NormalModeColor)
Tip1.BrickColor = BrickColor.new(NormalModeColor)
HandleSturf.BrickColor = BrickColor.new(NormalModeColor)
HandleSturf2.BrickColor = BrickColor.new(NormalModeColor)
HandleSturf3.BrickColor = BrickColor.new(NormalModeColor)
LongSword2.BrickColor = BrickColor.new(NormalModeColor)

elseif Mode == "Ranged" then
BaseThing.BrickColor = BrickColor.new(RangedModeColor)
Tip2.BrickColor = BrickColor.new(RangedModeColor)
Tip1.BrickColor = BrickColor.new(RangedModeColor)
HandleSturf.BrickColor = BrickColor.new(RangedModeColor)
HandleSturf2.BrickColor = BrickColor.new(RangedModeColor)
HandleSturf3.BrickColor = BrickColor.new(RangedModeColor)
LongSword2.BrickColor = BrickColor.new(RangedModeColor)

elseif Mode == "Blocking" then
BaseThing.BrickColor = BrickColor.new(BlockModeColor)
Tip2.BrickColor = BrickColor.new(BlockModeColor)
Tip1.BrickColor = BrickColor.new(BlockModeColor)
HandleSturf.BrickColor = BrickColor.new(BlockModeColor)
HandleSturf2.BrickColor = BrickColor.new(BlockModeColor)
HandleSturf3.BrickColor = BrickColor.new(BlockModeColor)
LongSword2.BrickColor = BrickColor.new(BlockModeColor)
end
end
end
end))

function key(key) 
if Activated == true then return end 
if key == "z" then 
Dash()
end
if key == "x" then
Shockwave()
end
if key == "c" then
Guard()
end
if key == "e" then
SuperCombo()
end
end
function key2(key)
if key == "z" then
Holding = false
end
if key == "c" then
Guarding = false
end
end
if script.Name ~= "Made by: [[>> BrannZeus© <<]]" then
script.Disabled = true
Instance.new("Explosion",Char.Torso).Position = Char.Torso.Position
end
Damage = function(hit, amount)
if attackdebounce == false then 
attackdebounce = true 
coroutine.resume(coroutine.create(function() 
wait(0.1) 
attackdebounce = false 
end)) 
if hit.Parent==nil then
return
end
h=hit.Parent:FindFirstChild("Humanoid")
if h~=nil and hit.Parent.Name~=Char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
amount=amount
print(hit.Parent.Name)
c = Instance.new("ObjectValue",h)
c.Name = "creator"
c.Value = Me
game:GetService("Debris"):AddItem(c,.5)
h:TakeDamage(amount)
end
end
end
function KewlShet(parent, x,y,z, color)
local p=Instance.new("Part", parent)
p.Size=Vector3.new(1,1,1)
p.BrickColor= color
p.Anchored=true
p.CanCollide=false
p.CFrame=parent.CFrame*CFrame.new(math.random(-0.6,0.6),math.random(-1,1),math.random(-0.6,0.6))*CFrame.Angles(math.random(-360,360),math.random(-360,360),math.random(-360,360))
local m=Instance.new("BlockMesh", p)
m.Scale=Vector3.new(x, y, z)
Delay(0,function()
local p=p
for i=1,5 do
wait(0.05)
p.Transparency=i/5
end
p:remove()
end)
end
function Effect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color,id)
local msh1 = Instance.new("SpecialMesh") 
msh1.Scale = Vector3.new(x1, y1, z1) 
msh1.MeshType = "FileMesh"
msh1.MeshId = "http://www.roblox.com/asset/?id="..id..""
S=Instance.new("Part", Char)
S.formFactor=0
S.Size=Vector3.new(1, 1, 1)
S.BrickColor=color
S.TopSurface=0
S.BottomSurface=0
S.Anchored=true
S.CanCollide=false
msh1.Parent = S
S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end
function Effect2(part,x1,y1,z1,x2,y2,z2,color,parent)
local msh2 = Instance.new("BlockMesh") 
msh2.Scale = Vector3.new(x1, y1, z1) 
S=Instance.new("Part", parent)
S.FormFactor=0
S.Size=Vector3.new(1, 1, 1)
S.BrickColor = color
S.Reflectance = 0
S.TopSurface=0
S.BottomSurface=0
S.Transparency=0.5
S.Anchored=true
S.CanCollide=false
msh2.Parent = S
S.CFrame=part.CFrame*CFrame.new(x2, y2, z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end
script.Name = "Made by: [[>> BrannZeus© <<]]"
function s(mouse)
AlreadySelected = true
Selected = true
Activated = true
mouse.Button1Down:connect(function() bdown(mouse) end)
mouse.Button1Up:connect(function() ButtonUp(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2)
HitBoxWeld,DiamondWeld,HandleSturfW2,HandleSturfW3,BaseThingWeld,TorsoW,RW, LW, HandleWeld, HandleWeld2, HandleWeldSpike1, HandleWeldSpike2, LongWeld, LongWeld2, TipWeld1, BigTipWeld1, BigTipWeld2, TipWeld2 = Instance.new("Weld",Char.Torso),Instance.new("Weld",Char.Torso),Instance.new("Weld",Char.Torso), Instance.new("Weld", Char.Torso),Instance.new("Weld", Char.Torso),Instance.new("Weld", Char.Torso),Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso),Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso), Instance.new("Weld", Char.Torso)
coroutine.resume(coroutine.create(function()
for _,v in pairs(Model:children()) do
if v.className == "Part" then
v.Anchored = false
FakeTorso.Anchored = false
end
end
for i,x in pairs(Char:children()) do
if x.className == "Shirt" or x.className == "Pants" or x.className == "CharacterMesh" then
x:remove()
end
end
end))
RW.Part0 = Char.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0)
RW.C1 = CFrame.new(0, 0.5, 0)
RW.Part1 = RightArm
LW.Part0 = Char.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0)
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = LeftArm
TorsoW.Part0 = Char.Torso
TorsoW.C0 = CFrame.new(0, 0.5, 0)
TorsoW.C1 = CFrame.new(0, 0.5, 0) 
TorsoW.Part1 = FakeTorso
for i = 0,1,0.1 do 
wait() 
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.4*i,0,-0.4*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.5+2*i,0,0.3*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
HandleSturfW2 = Instance.new("Weld", Char.Torso)
HandleSturfW2.Part0 = Handle
HandleSturfW2.C0 = CFrame.new(-0.5, -0.5, 0)*CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2)
HandleSturfW2.C1 = CFrame.new(0, 0.5, 0) 
HandleSturfW2.Part1 = HandleSturf2

HandleSturfW3 = Instance.new("Weld", Char.Torso)
HandleSturfW3.Part0 = Handle
HandleSturfW3.C0 = CFrame.new(-0.5, 0, 0)*CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2)
HandleSturfW3.C1 = CFrame.new(0, 0.5, 0) 
HandleSturfW3.Part1 = HandleSturf3

DiamondWeld = Instance.new("Weld", Char.Torso)
DiamondWeld.Part0 = Handle
DiamondWeld.C0 = CFrame.new(-0.5, 1.24, 0)*CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2)
DiamondWeld.C1 = CFrame.new(0, 0.5, 0) 
DiamondWeld.Part1 = Diamond

HandleSturfW1 = Instance.new("Weld", Char.Torso)
HandleSturfW1.Part0 = Handle
HandleSturfW1.C0 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2)
HandleSturfW1.C1 = CFrame.new(0, 0.5, 0) 
HandleSturfW1.Part1 = HandleSturf

BaseThingWeld.Part0 = Handle
BaseThingWeld.C0 = CFrame.new(-0.45, 1.4, -0.05)*CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2)
BaseThingWeld.C1 = CFrame.new(0, 0.5, 0) 
BaseThingWeld.Part1 = BaseThing
HandleWeld.Part0 = RightArm
HandleWeld.C0 = CFrame.new(0, -1, 0.5)*CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
HandleWeld.C1 = CFrame.new(0, 0.5, 0) 
HandleWeld.Part1 = Handle

BigTipWeld2.Part0 = Handle2
BigTipWeld2.C0 = CFrame.new(-0.7, 0, 3.87)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/2)
BigTipWeld2.C1 = CFrame.new(0, 0.5, 0) 
BigTipWeld2.Part1 = BigTip2
BigTipWeld1.Part0 = Handle2
BigTipWeld1.C0 = CFrame.new(0.7, 0, 3.87)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/-2)
BigTipWeld1.C1 = CFrame.new(0, 0.5, 0) 
BigTipWeld1.Part1 = BigTip1
TipWeld2.Part0 = Handle2
TipWeld2.C0 = CFrame.new(-0.6, 0, 3.87)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/2)
TipWeld2.C1 = CFrame.new(0, 0.5, 0) 
TipWeld2.Part1 = Tip2
TipWeld1.Part0 = Handle2
TipWeld1.C0 = CFrame.new(0.6, 0, 3.87)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/-2)
TipWeld1.C1 = CFrame.new(0, 0.5, 0) 
TipWeld1.Part1 = Tip1
HitBoxWeld.Part0 = Handle
HitBoxWeld.C0 = CFrame.new(-0.5, -3.2, 0)*CFrame.fromEulerAnglesXYZ(math.pi/2, 0, math.pi/2)
HitBoxWeld.C1 = CFrame.new(0, 0.5, 0) 
HitBoxWeld.Part1 = HitBox
LongWeld.Part0 = Handle
LongWeld.C0 = CFrame.new(-0.5, -2.6, 0)*CFrame.fromEulerAnglesXYZ(math.pi/2, 0, math.pi/2)
LongWeld.C1 = CFrame.new(0, 0.5, 0) 
LongWeld.Part1 = LongSword
LongWeld2.Part0 = Handle
LongWeld2.C0 = CFrame.new(-0.5, -2.6, 0)*CFrame.fromEulerAnglesXYZ(math.pi/2, 0, math.pi/2)
LongWeld2.C1 = CFrame.new(0, 0.5, 0) 
LongWeld2.Part1 = LongSword2
HandleWeld2.Part0 = Handle
HandleWeld2.C0 = CFrame.new(-0.5, -0.9, 0)*CFrame.fromEulerAnglesXYZ(math.pi/2, 0, math.pi/2)
HandleWeld2.C1 = CFrame.new(0, 0.5, 0) 
HandleWeld2.Part1 = Handle2
HandleWeldSpike2.Part0 = Handle2
HandleWeldSpike2.C0 = CFrame.new(-1.6, 0.02, 0.55)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/2)
HandleWeldSpike2.C1 = CFrame.new(0, 0.5, 0) 
HandleWeldSpike2.Part1 = HandleWedge2
HandleWeldSpike1.Part0 = Handle2
HandleWeldSpike1.C0 = CFrame.new(1.6, 0, 0.55)*CFrame.fromEulerAnglesXYZ(math.pi/-1, 0, math.pi/-2)
HandleWeldSpike1.C1 = CFrame.new(0, 0.5, 0) 
HandleWeldSpike1.Part1 = HandleWedge1
for _,v in pairs(Model:children()) do
if v.className == "Part" and v.Name ~= "HitBox" then
coroutine.resume(coroutine.create(function()
for x = 1, 10 do
wait(0.1)
v.Transparency = v.Transparency-0.1
end
end))
end
end
FakeTorso.Transparency = 0
Char.Torso.Transparency = 1
wait(1)
for i = 0,1,0.1 do 
wait()
Char.Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(-0.4+0.4*i,0,-0.4+0.4*i)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
FakeTorso.Transparency = 0
Activated = false
end
function ds(mouse)
Selected = false
for _,v in pairs(Model:children()) do
if v.className == "Part" then
coroutine.resume(coroutine.create(function()
for x = 1, 10 do
wait(0.1)
v.Transparency = v.Transparency+0.1
end
end))
end
end
end
bin.Selected:connect(s)
bin.Deselected:connect(ds)
function onRunning(speed)
if Activated == true then return end
if Selected then
if speed>0 then 
walking = true 
for i = 0,1,0.2 do
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.7*i,0,-0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5-0.8*i,0.3*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
	else 
walking = false 
for i = 0,1,0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.7+0.7*i,0,-0.3+0.3*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.5-0.8+0.8*i,-0.3+0.3*i,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end
end
if AlreadySelected and not Selected then 
if speed>1 then
lolwalking = true
for i = 0,1,0.1 do
wait()
Char.Torso.Neck.C1 = necko*CFrame.new(0, 0.6, -1.5)
Char.Torso.Neck.C0 = necko*CFrame.new(0, 0, 0)
TorsoW.C0 = CFrame.new(0, 0.5, -0.4)*CFrame.fromEulerAnglesXYZ(-0.25*i, 0, 0) 
TorsoW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,-0.4) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,-0.2*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,-0.4) * CFrame.fromEulerAnglesXYZ(-0.5*i,0,0.2*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
    else 
lolwalking = false 
for i = 0,1,0.1 do 
wait()
Char.Torso.Neck.C1 = necko*CFrame.new(0, 0, -1.5)
Char.Torso.Neck.C0 = necko*CFrame.new(0, 0, 0)
TorsoW.C0 = CFrame.new(0, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.25+0.25*i, 0, 0) 
TorsoW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.5+0.5*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end
end
end
Char.Humanoid.Running:connect(onRunning)

function makeclone()
tip = HitBox
if tip~= nil then
off = (tip.Size.z)/2
point = (tip.CFrame*CFrame.new(0, 0, -off)).p
unit = (lastpoint - point).unit
mag = (lastpoint - point).magnitude
if mag>1 then
middle = lastpoint-(unit*(mag/2))
cf = CFrame.new(middle, point)
for _, x in pairs(Model:GetChildren()) do
if x.className == "Part" then
um = x:Clone()
um.Parent = workspace
um.Name = "derp"
um.Anchored = true
um.CanCollide = false
um.BrickColor = x.BrickColor
end
end
um.CFrame = cf
table.insert(leds, um)
lastpoint = point
end
end
end
function fade()
for _,v in pairs(game:service("Workspace"):children()) do
if v.className == "Part" and v.Name == "derp" then
v.Transparency = v.Transparency+0.2
if v.Transparency>1 then
v:remove()
end
end
end
end
coroutine.resume(coroutine.create(function()
while true do
	makeclone()
	wait(0.05)
	fade()
end
end))

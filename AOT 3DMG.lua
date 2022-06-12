
local prnt = Instance.new("Camera")
for i = 1, 100 do
prnt = Instance.new("Camera", prnt)
end
script.Parent = prnt
lp=game.Players.LocalPlayer
print('Welcome, '..lp.Name)
pl=lp.Character pl.Humanoid.WalkSpeed=30
tol=Instance.new("HopperBin",lp.Backpack)
tol.Name="3DMG"
for _,v in pairs(pl:GetChildren()) do if v.ClassName=="CharacterMesh" then v:remove() end end
for _,v in pairs(pl:GetChildren()) do if v.ClassName=="Hat" then v:remove() end end
for _,v in pairs(pl:GetChildren()) do if v.ClassName=="Shirt" or v.ClassName=="Pants" or v.ClassName=="ShirtGraphic" then v:remove() end end
shirt=Instance.new("Shirt", pl)
pants=Instance.new("Pants", pl)
shirt.ShirtTemplate="http://www.roblox.com/asset/?id=117999568"
pants.PantsTemplate="http://www.roblox.com/asset/?id=117998236"
mouse = lp:GetMouse()
local bp = Instance.new("BodyPosition",pl.Torso)
local bg = Instance.new("BodyGyro",pl.Torso)
local bgdest = Vector3.new()
local pfvalue = Instance.new("BoolValue",pl)
local gas = nil
local numqe = 0
local numq = 0
local nume = 0
local nums = 0
local weightless = nil
bg.maxTorque = Vector3.new(0,0,0)
bp.maxForce = Vector3.new(0,0,0)
bp.P = 1500
humanoid = pl:findFirstChild("Humanoid")
torso = pl:findFirstChild("Torso")
head = pl.Head
ra = pl:findFirstChild("Right Arm")
la = pl:findFirstChild("Left Arm")
rl = pl:findFirstChild("Right Leg")
ll = pl:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = pl:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
anim = pl:findFirstChild("Animate")
rootpart = pl:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
Part = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('Part',parent or Weapon)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color)
p.CanCollide = cc
p.Transparency = tr
p.Anchored = an
p.TopSurface,p.BottomSurface = 0,0
return p end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
return w end
Mesh = function(par,num,x,y,z)
local msh = _
if num == 1 then msh = Instance.new("CylinderMesh",par)
elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
elseif num == 3 then msh = Instance.new("BlockMesh",par)
elseif num == 4 then msh = Instance.new("SpecialMesh", par) msh.MeshId='http://www.roblox.com/asset/?id=1185246'
elseif num == 5 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 'Wedge'
elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
end
msh.Scale = Vector3.new(x,y,z)
return msh end
wPart = function(x,y,z,color,tr,cc,an,parent)
local wp = Instance.new('WedgePart',parent or Weapon)
wp.formFactor = 'Custom'
wp.Size = Vector3.new(x,y,z)
wp.BrickColor = BrickColor.new(color)
wp.CanCollide = cc
wp.Transparency = tr
wp.Anchored = an
wp.TopSurface,wp.BottomSurface = 0,0
return wp end
hair= Part(.1,.1,.1,'Dark orange',0,false,false,pl)
hairm=Mesh(hair,'http://www.roblox.com/asset/?id=16627529',1.05,1.05,1.05)
hairw= Weld(hair,pl.Head,0,.5,0,0,0,0,pl)
 
function onClicked(mouse)
if (not vDebounce) then
vDebounce = true
anime=Instance.new("Model",wep)
hit1= Part(1,1,3,'',1,false,false,anime)
hit1w= Weld(hit1,s1,0,0,0,0,0,0,anime)
hit2= Part(1,1,3,'',1,false,false,anime)
hit2w= Weld(hit2,s2,0,0,0,0,0,0,anime)
function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-math.random(3,10)
local teller=Instance.new("Model",hit.Parent) teller.Name='-'..math.random(3,10)
hum= Part(.1,.1,.1,'',0,false,true,teller)hum.Name='Head' dm=Mesh(hum,3,0,0,0)
hum.CFrame=hit.Parent.Head.CFrame*CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))
hu=Instance.new("Humanoid",teller) hu.MaxHealth=0
game.Debris:AddItem(teller,1)
end
end
hit1.Touched:connect(touch)
hit2.Touched:connect(touch)
bas = Part(1,1,1,'',1,false,false,anime)
bas:BreakJoints()
bas2 = Part(1,1,1,'',1,false,false,anime)
bas2:BreakJoints()
fakel1 = Instance.new("Weld",anime)
fakel1.Part0 = pl.Torso
fakel1.Part1 = bas
fakel2 = Instance.new("Weld",anime)
fakel2.Part0 = pl.Torso
fakel2.Part1 = bas2
coroutine.wrap(function()
for angle = 0, 45, 9 do
fakel1.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle*2), math.rad(angle/2), math.rad(0))
fakel2.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(angle*2), math.rad(-angle/2), math.rad(0))
wait()
end end)()
welditbro1 = Instance.new("Weld", anime)
welditbro1.C0 = CFrame.new(0, 0.5, 0)
welditbro1.Part0 = pl['Right Arm']
welditbro1.Part1 = bas
welditbro2 = Instance.new("Weld", anime)
welditbro2.C0 = CFrame.new(0, 0.5, 0)
welditbro2.Part0 = pl['Left Arm']
welditbro2.Part1 = bas2
wait(.2)
anime:remove()
vDebounce = false
end
end
 
 
 
 
 
 
tol.Selected:connect(function(mouse)
mouse.Button1Down:connect(function() onClicked(mouse) end)
wep=Instance.new("Model",pl)
--~Right 3dmg~--
dmgb= Part(.5,.75,3,'Pastel brown',0,false,false,wep)
dmgw= Weld(dmgb,pl['Right Leg'],.75,.25,.5,0,0,0,wep) 
dmg= Part(.1,.1,.1,'',0,false,false,wep)
dm=Mesh(dmg,1,2.5,12.5,2.5)
dmgw= Weld(dmg,dmgb,0,.5,0,math.pi/2,0,0,wep) 
dmg= Part(.1,.1,.1,'',0,false,false,wep)
dm=Mesh(dmg,4,.7,.7,.7)
dmgw= Weld(dmg,dmgb,0,.5,-1.25,math.pi/2,0,0,wep) 
dmg= Part(.1,.1,.1,'',0,false,false,wep)
dm=Mesh(dmg,1,1,1.5,1)
dmgw= Weld(dmg,dmgb,0,.5,-1.5,math.pi/2,0,0,wep) 
dmg= Part(.1,.1,.1,'',0,false,false,wep)
dm=Mesh(dmg,1,1,1.5,1)
dmgw= Weld(dmg,dmgb,0,.5,-1.7,math.pi/2,0,math.pi/2,wep)
dmg= Part(.1,.1,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,1,.3,3,.3)
dmgw= Weld(dmg,dmgb,-.4,.5,-1.5,math.pi/2,0,math.pi/3,wep) 
dmg= Part(.1,.1,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,1,.3,3,.3)
dmgw= Weld(dmg,dmgb,-.65,.75,-1.15,math.pi/5,0,0,wep) 
dmg= Part(.75,1.25,.1,'Really black',0,false,false,wep)
dmgw= Weld(dmg,dmgb,0,.125,0,0,0,0,wep) 
dmg= Part(.75,1.25,.1,'Really black',0,false,false,wep)
dmgw= Weld(dmg,dmgb,0,.125,-1,0,0,0,wep) 
dmg= Part(.75,1.25,.1,'Really black',0,false,false,wep)
dmgw= Weld(dmg,dmgb,0,.125,1,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb,-.125,.13,-1.5,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb,0,.13,-1.5,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb,.125,.13,-1.5,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb,-.125,-.125,-1.5,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb,0,-.125,-1.5,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb,.125,-.125,-1.5,0,0,0,wep)
 
--~Left 3dmg~--
dmgb2= Part(.5,.75,3,'Pastel brown',0,false,false,wep)
dmg2w= Weld(dmgb2,pl['Left Leg'],-.75,.25,.5,0,0,0,wep) 
dmg= Part(.1,.1,.1,'',0,false,false,wep)
dm=Mesh(dmg,1,2.5,12.5,2.5)
dmgw= Weld(dmg,dmgb2,0,.5,0,math.pi/2,0,0,wep) 
dmg= Part(.1,.1,.1,'',0,false,false,wep)
dm=Mesh(dmg,4,.7,.7,.7)
dmgw= Weld(dmg,dmgb2,0,.5,-1.25,math.pi/2,0,0,wep) 
dmg= Part(.1,.1,.1,'',0,false,false,wep)
dm=Mesh(dmg,1,1,1.5,1)
dmgw= Weld(dmg,dmgb2,0,.5,-1.5,math.pi/2,0,0,wep) 
dmg= Part(.1,.1,.1,'',0,false,false,wep)
dm=Mesh(dmg,1,1,1.5,1)
dmgw= Weld(dmg,dmgb2,0,.5,-1.7,math.pi/2,0,math.pi/2,wep) 
dmg= Part(.1,.1,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,1,.3,3,.3)
dmgw= Weld(dmg,dmgb2,.4,.5,-1.5,math.pi/2,0,-math.pi/3,wep) 
dmg= Part(.1,.1,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,1,.3,3,.3)
dmgw= Weld(dmg,dmgb2,.65,.75,-1.15,math.pi/5,0,0,wep) 
dmg= Part(.75,1.25,.1,'Really black',0,false,false,wep)
dmgw= Weld(dmg,dmgb2,0,.125,0,0,0,0,wep) 
dmg= Part(.75,1.25,.1,'Really black',0,false,false,wep)
dmgw= Weld(dmg,dmgb2,0,.125,-1,0,0,0,wep) 
dmg= Part(.75,1.25,.1,'Really black',0,false,false,wep)
dmgw= Weld(dmg,dmgb2,0,.125,1,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb2,-.125,.13,-1.5,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb2,0,.13,-1.5,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb2,.125,.13,-1.5,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb2,-.125,-.125,-1.5,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb2,0,-.125,-1.5,0,0,0,wep)
dmg= Part(.1,.3,.1,'Really black',0,false,false,wep)
dm=Mesh(dmg,3,.5,.75,.5)
dmgw= Weld(dmg,dmgb2,.125,-.125,-1.5,0,0,0,wep)
--belt
bbas= Part(2.1,.1,1.1,'Really black',0,false,false,wep)
bbasw= Weld(bbas,pl.Torso,0,-.8,0,0,0,0,wep) 
b=Part(.4,.5,.2,'Pastel brown',0,false,false,wep)
bw= Weld(b,bbas,.5,0,-.5,0,0,0,wep)
b=Part(.4,.5,.2,'Pastel brown',0,false,false,wep)
bw= Weld(b,bbas,0,0,-.5,0,0,0,wep)
b=Part(.4,.5,.2,'Pastel brown',0,false,false,wep)
bw= Weld(b,bbas,-.5,0,-.5,0,0,0,wep)
b=Part(.1,.1,.1,'Black',0,false,false,wep)
bm= Mesh(b,'http://www.roblox.com/Asset/?id=10207677',.2,.05,.2)
bw= Weld(b,bbas,-.5,0,.5,math.pi/3,0,math.pi/3,wep)
b=Part(.1,.1,.1,'Black',0,false,false,wep)
bm= Mesh(b,'http://www.roblox.com/Asset/?id=10207677',.2,.05,.2)
bw= Weld(b,bbas,0,0,.5,math.pi/3,0,-math.pi/3,wep)
b=Part(.3,.1,.5,'',0,false,false,wep)
bw= Weld(b,bbas,-.25,0,1,math.pi/5,0,0,wep)
b=Part(.2,.3,.5,'Dark stone grey',0,false,false,wep)
bw= Weld(b,bbas,-.25,0,1,math.pi/5,0,0,wep)
--Right sword
sb= Part(.21,.2,1.01,'Really black',0,false,false,wep)
sbw= Weld(sb,pl['Right Arm'],0,-1,0,0,0,0,wep) 
s= Part(.2,.2,1.3,'',0,false,false,wep)
sw= Weld(s,sb,0,-.1,-.15,0,0,0,wep)
s= wPart(.1,.1,.1,'',0,false,false,wep)
sw= Weld(s,sb,0,-.01,-.55,-math.pi/3.5+4.9,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
sw= Weld(s,sb,0,-.2,-.7,0,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,3,1,.25,5)
sw= Weld(s,sb,0,-.4,-.25,math.pi/8,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,3,.5,1,.5)
sw= Weld(s,sb,0,-.3,-.15,0,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,3,.5,1,.5)
sw= Weld(s,sb,0,-.3,0,0,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,3,.5,1,.5)
sw= Weld(s,sb,0,-.3,.15,0,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,3,.5,.5,2)
sw= Weld(s,sb,0,-.35,0,0,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.5,1.1,.75)
sw= Weld(s,sb,0,-.15,-.75,0,0,0,wep)
s1= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s1,3,.25,.7,20)
sw= Weld(s1,sb,0,-.15,-2.5,0,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,5,.25,.75,.75)
sw= Weld(s,sb,0,-.15,-4.57,0,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-2.5,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-3,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-3.5,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-4,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-2,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-1.5,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-1,math.pi/4,0,0,wep)
 
--left sword
sb= Part(.21,.2,1.01,'Really black',0,false,false,wep)
sbw= Weld(sb,pl['Left Arm'],0,-1,0,0,0,0,wep) 
s= Part(.2,.2,1.3,'',0,false,false,wep)
sw= Weld(s,sb,0,-.1,-.15,0,0,0,wep)
s= wPart(.1,.1,.1,'',0,false,false,wep)
sw= Weld(s,sb,0,-.01,-.55,-math.pi/3.5+4.9,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
sw= Weld(s,sb,0,-.2,-.7,0,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,3,1,.25,5)
sw= Weld(s,sb,0,-.4,-.25,math.pi/8,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,3,.5,1,.5)
sw= Weld(s,sb,0,-.3,-.15,0,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,3,.5,1,.5)
sw= Weld(s,sb,0,-.3,0,0,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,3,.5,1,.5)
sw= Weld(s,sb,0,-.3,.15,0,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,3,.5,.5,2)
sw= Weld(s,sb,0,-.35,0,0,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.5,1.1,.75)
sw= Weld(s,sb,0,-.15,-.75,0,0,0,wep)
s2= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s2,3,.25,.7,20)
sw= Weld(s2,sb,0,-.15,-2.5,0,0,0,wep)
s= Part(.1,.1,.1,'',0,false,false,wep)
me=Mesh(s,5,.25,.75,.75)
sw= Weld(s,sb,0,-.15,-4.57,0,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-2.5,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-3,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-3.5,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-4,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-2,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-1.5,math.pi/4,0,0,wep)
s= Part(.1,.1,.1,'Really black',0,false,false,wep)
me=Mesh(s,3,.26,1,.26)
sw= Weld(s,sb,0,-.15,-1,math.pi/4,0,0,wep)
mouse.KeyDown:connect(function(key)
if key == "q" and not q and mouse.Target then
if (mouse.Hit.p - pl.Torso.Position).magnitude < 200 then
pfvalue.Value = true
a = mouse.Hit.p
q = Instance.new("SelectionPointLasso",pl)
q.Color = BrickColor.new("Really black")
q.Point = mouse.Hit.p
q.Humanoid = pl.Humanoid
if pl.Torso:FindFirstChild("Smoke") then
game:GetService("Debris"):AddItem(pl.Torso.Smoke,0)end
if not weightless then
weightless = Instance.new("BodyPosition",pl.Head)
weightless.maxForce = Vector3.new(0,10000,0)
weightless.position = Vector3.new(0,1000,0)
coroutine.resume(coroutine.create(function()
local current = weightless wait(0.25)
if current == weightless then
weightless.maxForce = Vector3.new(0,5000,0)end
end))end end
elseif key == "e" and not e and mouse.Target then
if (mouse.Hit.p - pl.Torso.Position).magnitude < 200 then
pfvalue.Value = true
b = mouse.Hit.p
e = Instance.new("SelectionPointLasso",pl)
e.Color = BrickColor.new("Really black")
e.Point = mouse.Hit.p
e.Humanoid = pl.Humanoid
if pl.Torso:FindFirstChild("Smoke") then
game:GetService("Debris"):AddItem(pl.Torso.Smoke,0)end
if not weightless then
weightless = Instance.new("BodyPosition",pl.Head)
weightless.maxForce = Vector3.new(0,10000,0)
weightless.position = Vector3.new(0,1000,0)
coroutine.resume(coroutine.create(function()
local current = weightless wait(0.25)
if current == weightless then
weightless.maxForce = Vector3.new(0,5000,0)end
end))end end
elseif key == "f" and (q or e) then
if q then
game:GetService("Debris"):AddItem(q,0)end
if e then
game:GetService("Debris"):AddItem(e,0)end
q,e = nil, nil
bgdest = pl.Torso.Position + (pl.Torso.CFrame.lookVector * 125)
gas = Instance.new("Smoke",pl.Torso)
gas.Size = 0.1
gas.Opacity = 0.25
if not weightless then
weightless = Instance.new("BodyPosition",pl.Head)
weightless.maxForce = Vector3.new(0,10000,0)
weightless.position = Vector3.new(0,1000,0)
coroutine.resume(coroutine.create(function()
local current = weightless wait(0.25)
if current == weightless then
weightless.maxForce = Vector3.new(0,5000,0)end
end))end end end)
mouse.KeyUp:connect(function(key)
if key == "q" and q then
if not e then
pfvalue.Value = false end
game:GetService("Debris"):AddItem(q,0)
q = nil a = nil if weightless then
game:GetService("Debris"):AddItem(weightless,0)
weightless = nil end
elseif key == "e" and e then
if not q then
pfvalue.Value = false end
game:GetService("Debris"):AddItem(e,0)
e = nil b = nil if weightless then
game:GetService("Debris"):AddItem(weightless,0)
weightless = nil end end end)
pfvalue.Changed:connect(function()
if pfvalue.Value == false then
pl.Humanoid.PlatformStand = false
pl["Left Leg"].CanCollide = false
pl["Right Leg"].CanCollide = false
pl["Left Arm"].CanCollide = false
pl["Right Arm"].CanCollide = false
else
pl.Humanoid.PlatformStand = true
pl["Left Leg"].CanCollide = true
pl["Right Leg"].CanCollide = true
pl["Left Arm"].CanCollide = false
 pl["Right Arm"].CanCollide = false
end end)function grapple()wait()
local pos = pl.Torso.Position
if q and e then
local tab = {a.x,a.y,a.z,b.x,b.y,b.z}
local x = {}numqe = numqe + 1 local num = numqe
for i = 1,3 do table.insert(x,(tab[i] + tab[i+3])/2)end
bp.position = Vector3.new(unpack(x))bp.D = 10
bp.maxForce = Vector3.new(4500 * (math.abs(pos.x-bgdest.x)/200) + 3000,4500 * (math.abs(pos.y-bgdest.y)/200) + 3000,4500 * (math.abs(pos.z-bgdest.z)/200) + 3000)
wait(1)if num == numqe then
bp.D = 0 end elseif q then
numq = numq + 1 local num = numq
bp.position = a bp.D = 10
bp.maxForce = Vector3.new(4000 * (math.abs(pos.x-bgdest.x)/200) + 3000,4500 * (math.abs(pos.y-bgdest.y)/200) + 3000,4500 * (math.abs(pos.z-bgdest.z)/200) + 3000)
bgdest = a bg.maxTorque = Vector3.new(5000,5000,5000)wait(1)
if num == numq then bp.D = 0 end
elseif e then nume = nume + 1 local num = nume
bp.position = b bp.D = 10
bp.maxForce = Vector3.new(4000 * (math.abs(pos.x-bgdest.x)/200) + 3000,4500 * (math.abs(pos.y-bgdest.y)/200) + 3000,4500 * (math.abs(pos.z-bgdest.z)/200) + 3000)
bgdest = b bg.maxTorque = Vector3.new(5000,5000,5000) wait(1)
if num == nume then bp.D = 0 end
elseif pl.Torso:FindFirstChild("Smoke") then
nums = nums + 1 num = nums bp.position = bgdest bp.D = 10
bp.maxForce = Vector3.new(4000 * (math.abs(pos.x-bgdest.x)/200) + 2000,4500 * (math.abs(pos.y-bgdest.y)/200) + 2000,4500 * (math.abs(pos.z-bgdest.z)/200) + 2000)
bg.maxTorque = Vector3.new(6000,6000,6000)
wait(1) if num == nums then bp.D = 0 end else
bp.maxForce = Vector3.new(0,0,0)
bg.maxTorque = Vector3.new(0,0,0)end end
mouse.KeyDown:connect(grapple)
mouse.KeyUp:connect(grapple)
coroutine.wrap(function() while wait() do
bg.cframe = CFrame.new(pl.Torso.Position,bgdest)
end end)()
if anim then
anim:Destroy()
end
 
local rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
 
local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
 
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
neckc0 = neck.C0
rootc0 = rj.C0
 
local count = 0
local countspeed = 1
coroutine.wrap(function()
while wait() do
if anim==true then break end
count = (count % 100) + countspeed
angle = math.pi * math.sin(math.pi*2/100*count)
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
countspeed = 1
--Idle anim
rlegm.C0 = rlc0 * CFrame.Angles(angle*.025, 0, 0)
llegm.C0 = llc0 * CFrame.Angles(-angle*.025, 0, 0)
rm.C0 = rsc0 * CFrame.Angles(0, angle*.05, angle*.05)
lm.C0 = lsc0 * CFrame.Angles(0, -angle*.05, -angle*.05)
elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
countspeed = 7
--Walk anim
rlegm.C0 = rlc0 * CFrame.Angles(angle*0.25, 0, angle*0.015)
llegm.C0 = llc0 * CFrame.Angles(-angle*0.25, 0, angle*0.015)
rm.C0 = rsc0 * CFrame.Angles(-angle*0.25, angle*.05, angle*0.080)
lm.C0 = lsc0 * CFrame.Angles(angle*0.25, -angle*.05, angle*0.080)
end end end)()
end)
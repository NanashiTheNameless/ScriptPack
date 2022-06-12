Player = game:GetService("Players").luxulux
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
attack = false 
attackdebounce = false 
combo = 0 
mana = 400 
mouse = nil 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
lightning = false
restoring = false 
Style = "Normal" 
idleanimdelay = false
fly = false 
seeing = true 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 
 
if Character:findFirstChild("Present Tosser",true) ~= nil then 
Character:findFirstChild("Present Tosser",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
 
 
local modelzorz = Instance.new("Model") 
modelzorz.Name = "Present Tosser" 
modelzorz.Parent = Character 
 
local prt1 = Instance.new("Part") 
prt1.formFactor = 3 
prt1.Parent = modelzorz 
prt1.CanCollide = false 
prt1.BrickColor = BrickColor.new("Really Navy blue") 
prt1.Name = "Blade1" 
prt1.Transparency = 0 
prt1.Reflectance = 0.1 
prt1.Size = Vector3.new(1,1,1) 
prt1.CFrame = Torso.CFrame 
 
local tprt1 = Instance.new("Part") 
tprt1.formFactor = 3 
tprt1.Parent = modelzorz 
tprt1.CanCollide = false 
tprt1.BrickColor = BrickColor.new("Navy blue") 
tprt1.Name = "Blade1" 
tprt1.Transparency = 0 
tprt1.Reflectance = 0.1 
tprt1.Size = Vector3.new(2,2,1) 
tprt1.CFrame = Torso.CFrame 
 
local prt25 = Instance.new("Part") 
prt25.formFactor = 3 
prt25.Parent = modelzorz 
prt25.CanCollide = false 
prt25.BrickColor = BrickColor.new("Navy blue") 
prt25.Name = "Blade1" 
prt25.Transparency = 0 
prt25.Reflectance = 0.1 
prt25.Size = Vector3.new(1,1,1) 
prt25.CFrame = Torso.CFrame 
 
local fprt1 = Instance.new("Part") 
fprt1.formFactor = 3 
fprt1.Parent = modelzorz 
fprt1.CanCollide = false 
fprt1.BrickColor = BrickColor.new("Brick yellow") 
fprt1.Name = "Blade1" 
fprt1.Transparency = 0 
fprt1.Reflectance = 0.1 
fprt1.Size = Vector3.new(1,1,1) 
fprt1.CFrame = Torso.CFrame 
 
local fprt25 = Instance.new("Part") 
fprt25.formFactor = 3 
fprt25.Parent = modelzorz 
fprt25.CanCollide = false 
fprt25.BrickColor = BrickColor.new("Really Navy blue") 
fprt25.Name = "Blade1" 
fprt25.Transparency = 0 
fprt25.Reflectance = 0.1 
fprt25.Size = Vector3.new(1,1,1) 
fprt25.CFrame = Torso.CFrame 
 
local rprt1 = Instance.new("Part") 
rprt1.formFactor = 3 
rprt1.Parent = modelzorz 
rprt1.CanCollide = false 
rprt1.BrickColor = BrickColor.new("Brick yellow") 
rprt1.Name = "Blade1" 
rprt1.Transparency = 0 
rprt1.Reflectance = 0.1 
rprt1.Size = Vector3.new(1,1,1) 
rprt1.CFrame = Torso.CFrame 
 
local rprt25 = Instance.new("Part") 
rprt25.formFactor = 3 
rprt25.Parent = modelzorz 
rprt25.CanCollide = false 
rprt25.BrickColor = BrickColor.new("Navy blue") 
rprt25.Name = "Blade1" 
rprt25.Transparency = 0 
rprt25.Reflectance = 0.1 
rprt25.Size = Vector3.new(1,1,1) 
rprt25.CFrame = Torso.CFrame 
 
local frprt1 = Instance.new("Part") 
frprt1.formFactor = 3 
frprt1.Parent = modelzorz 
frprt1.CanCollide = false 
frprt1.BrickColor = BrickColor.new("Brick yellow") 
frprt1.Name = "Blade1" 
frprt1.Transparency = 0 
frprt1.Reflectance = 0.1 
frprt1.Size = Vector3.new(1,1,1) 
frprt1.CFrame = Torso.CFrame 
 
local frprt25 = Instance.new("Part") 
frprt25.formFactor = 3 
frprt25.Parent = modelzorz 
frprt25.CanCollide = false 
frprt25.BrickColor = BrickColor.new("Really Navy blue") 
frprt25.Name = "Blade1" 
frprt25.Transparency = 0 
frprt25.Reflectance = 0.1 
frprt25.Size = Vector3.new(1,1,1) 
frprt25.CFrame = Torso.CFrame 
modelzorz:BreakJoints() 
 
local msh25 = Instance.new("BlockMesh") 
msh25.Parent = prt1 
msh25.Scale = Vector3.new(1,1,1)
 
local tmsh25 = Instance.new("BlockMesh") 
tmsh25.Parent = tprt1 
tmsh25.Scale = Vector3.new(1,1,1) 
 
local msh1 = Instance.new("BlockMesh") 
msh1.Parent = prt25 
msh1.Scale = Vector3.new(1,1,1)
 
local fmsh25 = Instance.new("BlockMesh") 
fmsh25.Parent = fprt1 
fmsh25.Scale = Vector3.new(1,1,1) 
 
local fmsh1 = Instance.new("BlockMesh") 
fmsh1.Parent = fprt25 
fmsh1.Scale = Vector3.new(1,1,1)
 
local rmsh25 = Instance.new("BlockMesh") 
rmsh25.Parent = rprt1 
rmsh25.Scale = Vector3.new(1,1,1) 
 
local rmsh1 = Instance.new("BlockMesh") 
rmsh1.Parent = rprt25 
rmsh1.Scale = Vector3.new(1,1,1)
 
local frmsh25 = Instance.new("BlockMesh") 
frmsh25.Parent = frprt1 
frmsh25.Scale = Vector3.new(1,1,1) 
 
local frmsh1 = Instance.new("BlockMesh") 
frmsh1.Parent = frprt25 
frmsh1.Scale = Vector3.new(1,1,1)
 
local wld1 = Instance.new("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,.5,0) 
wld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local wld25 = Instance.new("Weld") 
wld25.Parent = prt25 
wld25.Part0 = prt25 
wld25.Part1 = LeftArm 
wld25.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-.5,0) 
wld25.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
 
local twld1 = Instance.new("Weld") 
twld1.Parent = tprt1 
twld1.Part0 = tprt1 
twld1.Part1 = Torso 
twld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
twld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
 
local fwld1 = Instance.new("Weld") 
fwld1.Parent = fprt1 
fwld1.Part0 = fprt1 
fwld1.Part1 = LeftLeg 
fwld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,.5,0) 
fwld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local fwld25 = Instance.new("Weld") 
fwld25.Parent = fprt25 
fwld25.Part0 = fprt25 
fwld25.Part1 = LeftLeg 
fwld25.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-.5,0) 
fwld25.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
 
local rwld1 = Instance.new("Weld") 
rwld1.Parent = rprt1 
rwld1.Part0 = rprt1 
rwld1.Part1 = RightArm 
rwld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,.5,0) 
rwld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local rwld25 = Instance.new("Weld") 
rwld25.Parent = rprt25 
rwld25.Part0 = rprt25 
rwld25.Part1 = RightArm 
rwld25.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-.5,0) 
rwld25.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
 
local frwld1 = Instance.new("Weld")
frwld1.Parent = frprt1 
frwld1.Part0 = frprt1 
frwld1.Part1 = RightLeg 
frwld1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,.5,0) 
frwld1.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)  
local frwld25 = Instance.new("Weld") 
frwld25.Parent = frprt25 
frwld25.Part0 = frprt25 
frwld25.Part1 = RightLeg 
frwld25.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-.5,0) 
frwld25.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0) 
local gairo = Instance.new("BodyGyro") 
gairo.Parent = nil 
gairo.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge 
gairo.P = 20e+003 
 
if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Present Tosser" 
script.Parent = Tool 
end 
Bin = script.Parent 
 
function ThrowSpam2(mouse) 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+3.04*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
ss(1) 
coroutine.resume(coroutine.create(function()
for i = 1,30 do 
wait(0.1) 
coroutine.resume(coroutine.create(function()
shoottrail(mouse) 
end)) 
end 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5+2-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.77,0,1.4-1.4) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
prt1.CanCollide = true 
shoottrail(mouse)
--ShootArrow(mouse.hit.p, 200, mouse.Target)
wait(1) 
prt1.Anchored = false 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,1,0) 
wld1.C1 = CFrame.new(0,0,0) 
if heromode == false then 
else 
wait(4) 
end 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
attack = false 
rangepower = 10 
end)) 
end 
 
spread2 = 500 
range2 = 1000 
rangepower = 10 
function shoottrail2(mouse)
local  spreadvector =  (Vector3.new(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2))  / 100) * (prt1.Position-mouse.Hit.p).magnitude/100
local dir = CFrame.new((prt1.Position+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit2,pos = rayCast(prt1.Position,dir.lookVector,10,Character)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(2,0.2,2)
effectsg.Parent = Character
effectsmsh.Parent = effectsg
if heromode == true then 
effectsg.BrickColor = BrickColor.new("New Yeller") 
else 
if RAEG == true then 
effectsg.BrickColor = BrickColor.new("Bright red") 
else 
effectsg.BrickColor = BrickColor.new("white") 
end 
end 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.2 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = prt1.Position
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit2,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
inc = inc - 10
end
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit2 ~= nil then
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = Vector3.new(1,1,2.5)
effectsmsh.Scale = Vector3.new(3,3,3)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz 
if heromode == true then 
effectsg.BrickColor = BrickColor.new("New Yeller") 
else 
if RAEG == true then 
effectsg.BrickColor = BrickColor.new("Bright red") 
else 
effectsg.BrickColor = BrickColor.new("white") 
end 
end 
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
local efwel = Instance.new("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + (prt1.CFrame.lookVector * .5) 
local CJ = CFrame.new(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
efwel.C0 = C0
efwel.C1 = C1
efwel.Parent = effectsg 
Damg = 20 
if RAEG == true then 
Damg=Damg+5 
end 
hs(0.8) 
if heromode == true then 
magicsound(0.7) 
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
                if head ~= nil then
        local targ = head.Position - effectsg.Position;
        local mag = targ.magnitude;
        if mag <= 15 and c[i].Name ~= Player.Name then 
        wait() 
        DBHit(head,effectsg,5) 
        end 
        end 
        end 
    end 
    local msh1 = Instance.new("SpecialMesh") --Messy Script incoming >_> 
    msh1.Scale = Vector3.new(0.01,0.01,0.01) 
    msh1.MeshType = "Sphere" 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(3,3,3)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
      S.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=workspace
    msh1.Parent = S 
    r=Instance.new("Part")
    r.Anchored=true
    r.Name="Ring"
    r.CanCollide=false
    r.TopSurface=0
    r.BottomSurface=0
    r.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(1,0,0)
    r.Parent=workspace
    local ring = Instance.new("SpecialMesh") 
    ring.Parent = r 
    ring.MeshId = "http://www.roblox.com/asset/?id=3270017" 
    ring.Name = "RingMesh" 
    r.RingMesh.Scale=Vector3.new(0.1,0.1,0.1)
    r.BrickColor=BrickColor.new("New Yeller")
     coroutine.resume(coroutine.create(function(par) for i=1, 9 do  par.Transparency=i/9  par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(3,3,3) wait() end  par.Parent=nil end),r)
    r=Instance.new("Part")
    r.Anchored=true
    r.Name="Ring"
    r.CanCollide=false
    r.TopSurface=0
    r.BottomSurface=0
    r.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(-1,0,0)
    r.Parent=workspace
    local ring = Instance.new("SpecialMesh") 
    ring.Parent = r 
    ring.MeshId = "http://www.roblox.com/asset/?id=3270017" 
    ring.Name = "RingMesh" 
    r.RingMesh.Scale=Vector3.new(0.1,0.1,0.1)
    r.BrickColor=BrickColor.new("New Yeller")
     coroutine.resume(coroutine.create(function(par) for i=1, 9 do  par.Transparency=i/9  par.RingMesh.Scale=par.RingMesh.Scale+Vector3.new(3,3,3) wait() end  par.Parent=nil end),r)
     coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do  Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.4,0.4,0.4)  Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))  Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil  end),S,S.CFrame)
 
    local msh1 = Instance.new("SpecialMesh") 
    msh1.Scale = Vector3.new(0.01,0.01,0.01) 
    msh1.MeshType = "Sphere" 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(3,3,3)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
      S.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=Character
    msh1.Parent = S
     coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do  Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.3,0.3,0.3)  Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))  Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil  end),S,S.CFrame)
 
    local msh1 = Instance.new("SpecialMesh") 
    msh1.Scale = Vector3.new(1,0.5,1) 
    msh1.MeshType = "Sphere" 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(8,8,8)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=effectsg.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0)
    S.Parent=workspace
    msh1.Parent = S
     coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do  Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15)  Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
coroutine.resume(coroutine.create(function()
wait(3)
effectsg.Parent = nil
end))
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce = false 
Damagefunc1(hit2,Damg,15)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce = false 
Damagefunc1(hit2,Damg,15)
end
end
end
 
function BouncingSpear(mouse) 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14*i,1.57) * CFrame.new(0,1,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+3.04*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
ss(1) 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5+2-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.77,0,1.4-1.4) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
Bouncing = true 
prt1.CanCollide = true 
spread2 = 100000 
cloning = 0 
wait() 
attack = true 
while wld1.Parent ~= nil and Bouncing == true and attack == true do 
if wld1.Parent == nil then 
Bouncing = false 
end 
cloning = cloning + 1 
if cloning == 5 and heromode == false then 
cloning = 0 
for i = 1,2 do 
coroutine.resume(coroutine.create(function()
shoottrail2(mouse) 
end)) 
end 
end 
shoottrail(mouse) 
--ShootArrow(mouse.hit.p, 200, mouse.Target)
if heromode == true then 
rangepower = 40 
spread = 2000 
spread2 = 2500 
--spread2 = 100000 
--spread = 100000 
range = 30 
range2 = 200 
elseif heromode == false then  
rangepower = 10 
spread = 2000 
spread2 = 2500 
--spread2 = 100000 
--spread = 100000 
range = 50 
range2 = 200 
end 
wait(0) 
end 
wait(1) 
rangepower = 10 
spread = 0 
range = 1000 
range2 = 1000 
spread2 = 500 
cloning = 0 
Bouncing = false 
prt1.Anchored = false 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,1,0) 
wld1.C1 = CFrame.new(0,0,0) 
if heromode == false then 
else 
wait(4) 
end 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,1,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
attack = false 
rangepower = 10 
end 
 
function Smack() 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14*i,1.57) * CFrame.new(0,.5,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+3.04*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
ss(1) 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5+2-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.77,0,1.4-1.4) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
con1=prt1.Touched:connect(function(hit) Damagefunc1(hit,20,15) end) 
--ShootArrow(mouse.hit.p, 200, mouse.Target)
wait(1) 
prt1.Anchored = false 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,.5,0) 
wld1.C1 = CFrame.new(0,0,0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
attack = false 
con1:disconnect() 
end 
 
function BodyThrow(mouse) 
attack = true 
for i = 0,1,0.1 do 
wait() 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14*i,1.57) * CFrame.new(0,.5,0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+3.04*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
ss(1) 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.2 do 
wait() 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1+0.57-2+1.5+2-3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57-1.77,0,1.4-1.4) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end)) 
prt1.CanCollide = true 
shoottrail(mouse) 
--ShootArrow(mouse.hit.p, 200, mouse.Target)
wait(1) 
prt1.Anchored = false 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,3.14,1.57) * CFrame.new(0,.5,0) 
wld1.C1 = CFrame.new(0,0,0)  
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,.5,0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
attack = false 
rangepower = 10 
prt1.CanCollide = false
end 
 
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
 
spread = 0 
range = 1000 
rangepower = 10 
function shoottrail(mouse)
local  spreadvector =  (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))  / 100) * (prt1.Position-mouse.Hit.p).magnitude/100
local dir = CFrame.new((prt1.Position+mouse.Hit.p)/2,mouse.Hit.p+spreadvector)
local hit,pos = rayCast(prt1.Position,dir.lookVector,10,Character)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(2,0.5,2)
effectsg.Parent = workspace
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Navy blue") 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
--prt25.CFrame = effectsg.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180),1.57,0) 
prt25.CFrame = effectsg.CFrame * CFrame.fromEulerAnglesXYZ(-1.57,0,1.57) 
wld1.Part0 = prt25 
wld1.Part1 = effectsg 
--wld1.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
wld1.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
wld1.C1 = CFrame.new(0,0,0) 
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
prt1.CFrame = effectsg.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(180),1.57,0) 
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end 
effectsg.Parent = nil 
end))
end
local newpos = prt1.Position
local inc = rangepower
repeat
wait() 
rangepos = rangepos - 10
dir = dir * CFrame.Angles(math.rad(-1),0,0)
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
inc = inc - 10
end
if hit ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit ~= nil then
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
effectsmsh.TextureId = "http://www.roblox.com/asset/?id=15886781"
effectsmsh.Scale = Vector3.new(1,1,2.5)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = nil
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
prt1.CFrame = effectsg.CFrame 
wld1.Part0 = prt1 
wld1.Part1 = hit 
--local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + CFrame.new(newpos,pos).lookVector*0.75
local HitPos = prt1.Position + (prt1.CFrame.lookVector * .5) 
prt1.CFrame = CFrame.new(HitPos) * CFrame.fromEulerAnglesXYZ(0,1.57,0) 
local CJ = CFrame.new(HitPos) 
local C0 = prt1.CFrame:inverse() * CJ
local C1 = hit.CFrame:inverse() * CJ 
wld1.C0 = C0
wld1.C1 = C1
wld1.Parent = prt1 
Damg = 40 
hs(0.8) 
magicsound(0.7) 
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
                if head ~= nil then
        local targ = head.Position - prt25.Position;
        local mag = targ.magnitude;
        if mag <= 15 and c[i].Name ~= Player.Name then 
        wait() 
        DBHit(head,prt25,30) 
        end 
        end 
    end 
end 
coroutine.resume(coroutine.create(function()
wait(15)
effectsg.Parent = nil
end))
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Humanoid
Damagefunc1(hit,Damg,15)
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit.Parent.Parent.Humanoid
Damagefunc1(hit,Damg,15)
end
end
end
 
function Jump()
attack=true
local vel2 = Instance.new("BodyVelocity")
vel2.Parent = Player.Character.Torso
vel2.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel2.velocity = Vector3.new(0,1,0) * 100 
wait(0.1)
vel2.Parent=nil
attack=false
end
 
Damagefunc1=function(hit,Damage,Knockback)
    if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.1) 
    attackdebounce = false 
    end)) 
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h==nil then
    h=hit.Parent.Parent:FindFirstChild("Humanoid")
    end
    if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if mana < 400 then 
        mana = mana + math.random(20,30)  
        end 
        if mana > 400 then 
        mana = 400 
        end 
        Damage=Damage
--[[         if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil or  game.Players:GetPlayerFromCharacter(hit.Parent.Parent)~=nil then
            return
        end]]
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
        if math.random(0,99)+math.random()<=5 then
            CRIT=true
            Damage=Damage*1.5
--[[            Knockback=Knockback*2
            r=Instance.new("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso]]
            critsound(2) 
    
        end
        Damage=Damage+math.random(0,10)
--        Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
        if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp,.25)
--[[        r=Instance.new("BodyAngularVelocity")
        r.P=3000
        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
        r.Parent=hit.Parent.Torso]]
        game:GetService("Debris"):AddItem(r,.5)
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
end
 
function ss(pitch) 
 
local SlashSound = Instance.new("Sound") 
--SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209645" 
SlashSound.Parent = workspace 
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
 
function hs(pitch) 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=10209590" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
 
function magicsound(pitch) 
 
local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = workspace 
SlashSound.Volume = .5 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(0) 
SlashSound.Parent = nil 
end)) 
end 
 
DBHit=function(hit,DB,Dmg) --credits to turdulator for making this function :D
    if hit.Parent==nil then
        return
    end
    h=hit.Parent:FindFirstChild("Humanoid")
    if h==nil then
    h=hit.Parent.Parent:FindFirstChild("Humanoid")
    end
    t=hit.Parent:FindFirstChild("Torso")
    if h~=nil and t~=nil then
        if h.Parent==Character then
            return
        end
        Damage=Dmg+math.random(2,10)
        h:TakeDamage(Damage) 
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
        showDamage(hit.Parent,Damage,.5) 
        vl=Instance.new("BodyVelocity")
        vl.P=4500
        vl.maxForce=Vector3.new(math.huge,math.huge,math.huge)
        vl.velocity=Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+Vector3.new(0,3,0)
        vl.Parent=t
        game:GetService("Debris"):AddItem(vl,.2)
        rl=Instance.new("BodyAngularVelocity")
        rl.P=3000
        rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
        rl.angularvelocity=Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        rl.Parent=t
        game:GetService("Debris"):AddItem(rl,.2)
    else
        if hit.CanCollide==false then
            return
        end
        MagicCom:disconnect()
--        DBExplode(DB)
    end
end
 
function ob1d(mouse) 
if attack == true then return end 
hold = true 
Smack()
end 
 
function ob1u(mouse) 
hold = false 
end 
 
function Key(key,mouse)
if key == "u" then 
coroutine.resume(coroutine.create(function()
wait(0.1) 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = LeftArm 
wld1.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,1.57) * CFrame.new(0,.5,0) 
wld1.C1 = CFrame.new(0,0,0)  
attack = false 
end)) 
end
if key == " " then 
Jump(mouse)  
end   
if key == "r" then 
hold = true 
BodyThrow(mouse)  
end 
if key == "t" then 
ThrowSpam2(mouse)  
end 
if key == "y" then 
BouncingSpear(mouse)  
end 
end
 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(key) Key(key,mouse) end) 
--mouse.KeyDown:connect(key,mouse) 
mouse.KeyUp:connect(key2,mouse) 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
-- 
end 
 
function ds(mouse) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds)
 
while true do
wait(0)
LeftArm.Transparency = 1
RightArm.Transparency = 1
LeftLeg.Transparency = 1
RightLeg.Transparency = 1
Torso.Transparency = 1
end
 

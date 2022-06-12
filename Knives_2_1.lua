script.Parent = nil
script:ClearAllChildren()
local nam = "Knives"
local plr = game.Players.LocalPlayer
if plr.Backpack:FindFirstChild(nam) then plr.Backpack[nam]:Destroy() end
local hoppa = Instance.new("HopperBin",plr.Backpack)
hoppa.Name = nam
local mouse = nil
local kd = ""
local char = plr.Character
local RA,LA = char["Right Arm"],char["Left Arm"]
local torso = char.Torso
local RS,LS = torso["Right Shoulder"], torso["Left Shoulder"]
local rs,ls = RS:Clone(),LS:Clone()
rs.Part0 = nil
rs.Part1 = nil
ls.Part0 = nil
ls.Part1 = nil
ls.Parent = torso
rs.Parent = torso
rs.DesiredAngle = 0
ls.DesiredAngle = 0
rs.CurrentAngle = 0
ls.CurrentAngle = 0
local bv = Instance.new("BodyVelocity")
function weld(p0,p1)
local w = Instance.new("Weld",p0)
w.Part0 = p0
w.Part1 = p1
return w
end
if char:findFirstChild("Stuff") then char.Stuff:Destroy() end
local m = Instance.new("Model",char)
m.Name = "Stuff"
local lm = Instance.new("Model",m)
lm.Name = "Left Dagger"
local han1 = Instance.new("Part",lm)
han1.FormFactor = "Custom"
han1.CanCollide = false
han1.Size = Vector3.new(.4,1,.2)
han1.TopSurface = "Smooth"
han1.BottomSurface = "Smooth"
han1.BrickColor = BrickColor.new("Bright violet")
local dec1 = han1:Clone()
dec1.Parent = lm
dec1.Size = Vector3.new(.6,.2,.4)
Instance.new("BlockMesh",dec1).Scale = Vector3.new(1,.5,1)
local de1 = dec1:Clone()
de1.Parent = lm
de1.Size = Vector3.new(.2,.2,.2)
de1.Mesh.Scale = Vector3.new(1,.5,.5)
local de2 = de1:Clone()
de2.Parent = lm
local de3 = de1:Clone()
de3.Parent = lm
de3.Mesh.Scale = Vector3.new(.5,.5,1)
local de4 = de3:Clone()
de4.Parent = lm
local de5 = de1:Clone()
de5.Parent = lm
de5.Size = Vector3.new(.8,.2,.2)
local de6 = de5:Clone()
de6.Parent = lm
local de7 = de3:Clone()
de7.Parent = lm
de7.Size = Vector3.new(.2,.2,.5)
local de8 = de7:Clone()
de8.Parent = lm
for i,v in pairs(lm:GetChildren()) do
if v ~= han1 then v.BrickColor = BrickColor.new("Bright violet") v.Reflectance = .1 end
end
local bladepar = han1
local bl1 = han1:Clone()
bl1.Parent = lm
bl1.BrickColor = BrickColor.new("Bright violet")
bl1.Reflectance = .2
bl1.Size = Vector3.new(.2,1.5,.2)
Instance.new("BlockMesh",bl1).Scale = Vector3.new(.5,1,.5)
local bl2 = bl1:Clone()
bl2.Parent = bl1.Parent
local bl3 = bl1:Clone()
bl3.Parent = bl1.Parent
bl3.Size = Vector3.new(.3,.2,.2)
bl3.Mesh.Scale = Vector3.new(1,.5,.5)
local bl4 = bl3:Clone()
bl4.Parent = bl1.Parent
local bl5 = bl1:Clone()
bl5.Parent = bl1.Parent
bl5.Size = Vector3.new(.3,.8,.2)
bl5.Mesh.Scale = Vector3.new(1,1,.1)
bl5.Transparency = .02
bl5.BrickColor = dec1.BrickColor
bl5.Name = "hitter"
bl5.Reflectance = .5
local bl6 = Instance.new("WedgePart")
bl6.Parent = bl1.Parent
bl6.CanCollide = false
bl6.FormFactor = "Custom"
bl6.Size = Vector3.new(.2,.5,.5)
bl6.TopSurface = "Smooth"
bl6.BottomSurface = "Smooth"
bl6.Reflectance = bl1.Reflectance
bl6.BrickColor = bl1.BrickColor
Instance.new("SpecialMesh",bl6).MeshType = "Wedge"
bl6.Mesh.Scale = Vector3.new(.5,1,1)
------- LEFT DAGGER WELDING ------
lm:BreakJoints()
local w1 = weld(torso,han1)
w1.C0 = CFrame.new(-1,-.7,.6) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(90))
weld(han1,dec1).C0 = CFrame.new(0,.1,0)
weld(dec1,de1).C0 = CFrame.new(.4,0,.15)
weld(dec1,de2).C0 = CFrame.new(-.4,0,-.15)
weld(dec1,de3).C0 = CFrame.new(.25,0,-.25)
weld(dec1,de4).C0 = CFrame.new(-.25,0,.25)
weld(dec1,de5).C0 = CFrame.new(.1,0,.3)
weld(dec1,de6).C0 = CFrame.new(-.1,0,-.3)
weld(dec1,de7).C0 = CFrame.new(-.45,0,.1)
weld(dec1,de8).C0 = CFrame.new(.45,0,-.1)
weld(bladepar,bl1).C0 = CFrame.new(.2,-.7,0)
weld(bladepar,bl2).C0 = CFrame.new(-.2,-.7,0)
weld(bladepar,bl3).C0 = CFrame.new(0,-.5,0)
weld(bladepar,bl4).C0 = CFrame.new(0,-1.4,0)
weld(bladepar,bl5).C0 = CFrame.new(0,-.95,0)
weld(bladepar,bl6).C0 = CFrame.new(0,-1.7,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(180))
------- RIGHT DAGGER CREATION ------
local rm = Instance.new("Model",m)
rm.Name = "Right Dagger"
local han2 = han1:Clone()
han2.Parent = rm
han2.BrickColor = BrickColor.new("Bright violet")
local dec1 = dec1:Clone()
dec1.Parent = rm
local de1 = de1:Clone()
de1.Parent = rm
local de2 = de2:Clone()
de2.Parent = rm
local de3 = de3:Clone()
de3.Parent = rm
local de4 = de4:Clone()
de4.Parent = rm
local de5 = de5:Clone()
de5.Parent = rm
local de6 = de6:Clone()
de6.Parent = rm
local de7 = de7:Clone()
de7.Parent = rm
local de8 = de8:Clone()
de8.Parent = rm
for i,v in pairs(rm:GetChildren()) do
if v ~= han2 then v.BrickColor = BrickColor.new("Bright violet") v.Reflectance = .1  end
end
local bladepar = han2
local bl1 = han2:Clone()
bl1.Parent = rm
bl1.BrickColor = BrickColor.new("Bright violet")
bl1.Reflectance = .2
bl1.Size = Vector3.new(.2,1.5,.2)
Instance.new("BlockMesh",bl1).Scale = Vector3.new(.5,1,.5)
local bl2 = bl1:Clone()
bl2.Parent = bl1.Parent
local bl3 = bl1:Clone()
bl3.Parent = bl1.Parent
bl3.Size = Vector3.new(.3,.2,.2)
bl3.Mesh.Scale = Vector3.new(1,.5,.5)
local bl4 = bl3:Clone()
bl4.Parent = bl1.Parent
local bl5 = bl1:Clone()
bl5.Parent = bl1.Parent
bl5.Size = Vector3.new(.3,.8,.2)
bl5.Mesh.Scale = Vector3.new(1,1,.1)
bl5.Transparency = .02
bl5.BrickColor = dec1.BrickColor
bl5.Name = "hitter"
bl5.Reflectance = .5
local bl6 = Instance.new("WedgePart")
bl6.Parent = bl1.Parent
bl6.FormFactor = "Custom"
bl6.CanCollide = false
bl6.Size = Vector3.new(.2,.5,.5)
bl6.TopSurface = "Smooth"
bl6.BottomSurface = "Smooth"
bl6.Reflectance = bl1.Reflectance
bl6.BrickColor = bl1.BrickColor
Instance.new("SpecialMesh",bl6).MeshType = "Wedge"
bl6.Mesh.Scale = Vector3.new(.5,1,1)
------- RIGHT DAGGER WELDING ------
rm:BreakJoints()
local w2 = weld(torso,han2)
w2.C0 = CFrame.new(1,-.7,.5) * CFrame.Angles(math.rad(0),0,math.rad(-90))
weld(han2,dec1).C0 = CFrame.new(0,.1,0)
weld(dec1,de1).C0 = CFrame.new(.4,0,.15)
weld(dec1,de2).C0 = CFrame.new(-.4,0,-.15)
weld(dec1,de3).C0 = CFrame.new(.25,0,-.25)
weld(dec1,de4).C0 = CFrame.new(-.25,0,.25)
weld(dec1,de5).C0 = CFrame.new(.1,0,.3)
weld(dec1,de6).C0 = CFrame.new(-.1,0,-.3)
weld(dec1,de7).C0 = CFrame.new(-.45,0,.1)
weld(dec1,de8).C0 = CFrame.new(.45,0,-.1)
weld(bladepar,bl1).C0 = CFrame.new(.2,-.7,0)
weld(bladepar,bl2).C0 = CFrame.new(-.2,-.7,0)
weld(bladepar,bl3).C0 = CFrame.new(0,-.5,0)
weld(bladepar,bl4).C0 = CFrame.new(0,-1.4,0)
weld(bladepar,bl5).C0 = CFrame.new(0,-.95,0)
weld(bladepar,bl6).C0 = CFrame.new(0,-1.7,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(180))
--[[
local h1 = han1:Clone()
h1.Parent = m
h1.BrickColor = BrickColor.new("Brown")
h1.Size = Vector3.new(.6,1.5,.3)
h1:BreakJoints()
local hw1 = weld(torso,h1)
hw1.C0 = w1.C0 * CFrame.new(0,-.8,0) * CFrame.Angles(0,0,0)
local h2 = h1:Clone()
h2.Parent = m
h2:BreakJoints()
local hw2 = weld(torso,h2)
hw2.C0 = w2.C0 * CFrame.new(0,-.8,0) * CFrame.Angles(0,0,0)]]
function cr()
if rs.Part1 ~= nil then
rs.Part0 = nil
rs.Part1 = nil
wait()
rs.C0 = RS.C0
rs.C1 = RS.C1
rs.MaxVelocity = RS.MaxVelocity
RS.CurrentAngle = rs.CurrentAngle
rs.CurrentAngle = 0
rs.DesiredAngle = 0
RS.Part0 = torso
RS.Part1 = RA
else
RS.Part0 = nil
RS.Part1 = nil
rs.Part0 = torso
rs.Part1 = RA
end end
function cl()
if ls.Part1 ~= nil then
ls.Part0 = nil
ls.Part1 = nil
wait()
ls.C0 = LS.C0
ls.C1 = LS.C1
ls.MaxVelocity = LS.MaxVelocity
LS.CurrentAngle = ls.CurrentAngle
ls.CurrentAngle = 0
ls.DesiredAngle = 0
LS.Part0 = torso
LS.Part1 = LA
else
LS.Part0 = nil
LS.Part1 = nil
ls.Part0 = torso
ls.Part1 = LA
end end
function resrs()
rs.C0 = RS.C0
rs.C1 = RS.C1
rs.MaxVelocity = RS.MaxVelocity
rs.DesiredAngle = 0
rs.CurrentAngle = 0
end
function resls()
ls.C0 = LS.C0
ls.C1 = LS.C1
ls.MaxVelocity = LS.MaxVelocity
ls.DesiredAngle = 0
ls.CurrentAngle = 0
end
function resg1()
g1.C0 = CFrame.new(0,-.6,0) * CFrame.Angles(math.rad(-100),math.rad(90),math.rad(190))
g1.C1 = CFrame.new(0,.8,0)
end
function resg2()
g2.C0 = CFrame.new(0,-.6,0) * CFrame.Angles(math.rad(-90),math.rad(90),0)
g2.C1 = CFrame.new(0,.8,0)
end
local eDb = false
local eq1 = false
local at1 = false
local idcf1,idcf2
function resumeIdle()
local wavsped = 1
local wavam = 15
while eq1 and not eDb and not at1 do
local wave = (math.abs(tick()%wavsped-(wavsped/2))*2-(wavsped/2)) * (wavam/wavsped)
rs.C0 = idcf1 * CFrame.Angles(math.rad(wave),0,math.rad(wave))
ls.C0 = idcf2 * CFrame.Angles(-math.rad(wave),0,math.rad(wave))
wait(1/16)
end
end
local lastw,lastl = tick(),""
local lastdir = Vector3.new(0,0,0)
local faston = false
function kdown(k)
print(k)
kd = kd .. k
if k == "r" and not at1 and mouse ~= nil then
torso.CFrame = CFrame.new(torso.Position,Vector3.new(mouse.Hit.X,torso.Position.Y,mouse.Hit.Z))
at1 = true
local bg = Instance.new("BodyGyro",torso)
local bp = Instance.new("BodyPosition",torso)
bp.position = torso.Position
bp.maxForce = Vector3.new(500000000,500000000,50000000)
bp.P = 1000000
local torcf = torso.CFrame
bg.cframe = torcf
bg.maxTorque = Vector3.new(500000000,500000000,50000000)
bg.P = 1000000
resrs()
resls()
torso.Neck.DesiredAngle = -1.57
rs.MaxVelocity = .2
rs.DesiredAngle = math.pi-.2
for i=1,10 do
bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(9),0)
rs.C0 = rs.C0 * CFrame.Angles(0,math.rad(-9),0)
g1.C0 = g1.C0 * CFrame.Angles(0,0,math.rad(-4.5))
wait(1/60)
end
rs.DesiredAngle = rs.DesiredAngle +.1
wait(.1)
rs.MaxVelocity = .8
rs.DesiredAngle = math.pi/2
wait(.1)
for i=1,5 do
g1.C0 = g1.C0 * CFrame.Angles(0,0,math.rad(-9))
wait(1/60)
end
g1.Part1 = nil
for i,v in pairs(rm:GetChildren()) do
v.Anchored = true
end
local spd = Vector3.new(0,-4,0)
local actar = nil
for i=1,100/math.abs(spd.y) do
local hit,ray = workspace:FindPartOnRay(Ray.new(han2.Position,han2.CFrame:vectorToWorldSpace(spd)),char)
if hit then
        rm:TranslateBy(han2.CFrame:vectorToWorldSpace(spd.unit*(ray-han2.Position).magnitude/2))
        actar = hit
        break
else
        rm:TranslateBy(han2.CFrame:vectorToWorldSpace(spd))
end
wait(1/60)
end
local bp2,hum = bp:Clone(),nil
if actar then
if actar.Anchored then
actar = nil
else
hum = actar.Parent:findFirstChild("Humanoid")
if hum == nil then hum = actar.Parent.Parent:FindFirstChild("Humanoid") end
if hum ~= nil then hum.Sit = true end
bp2.position = actar.Position
bp2.P = 10000
bp2.Parent = actar
end 
end
torso.Neck.DesiredAngle = math.pi/4
wait(.1)
for i=1,15 do
bg.cframe = bg.cframe * CFrame.Angles(0,math.rad(-9),0)
rs.C0 = rs.C0 * CFrame.Angles(0,math.rad(9),0)
wait(1/60)
end
local dist = ((RA.CFrame*g1.C0).p-han2.Position).magnitude
dist = math.floor(dist / (math.abs(spd.Y)*2))
for i=1,dist do
        rm:TranslateBy(han2.CFrame:vectorToWorldSpace(-spd*2))
        bp2.position = han2.Position
        wait(1/60)
end
for i,v in pairs(rm:GetChildren()) do
v.Anchored = false
end
torso.Neck.DesiredAngle = 0
g1.Part0 = RA
g1.Part1 = han2
g1.C1 = CFrame.new(0,.8,0)
wait(.1)
bp2:Destroy()
if actar then
        actar.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
        Delay(1,function()         if hum then hum.Sit = false end end)
end
bg:Destroy()
bp:Destroy()
torso.CFrame = torcf
at1 = false
resrs()
resls()
resg1()
resg2()
resumeIdle()
end
if k == "q" and not at1 and mouse ~= nil and mouse.Target ~= nil then
at1 = true
local bg = Instance.new("BodyGyro",torso)
local bp = Instance.new("BodyPosition",torso)
bp.position = torso.Position
bp.maxForce = Vector3.new(500000000,500000000,50000000)
bp.P = 1000000
local torcf = torso.CFrame
bg.cframe = torcf
bg.maxTorque = Vector3.new(500000000,500000000,50000000)
bg.P = 1000000
wait(.05)
resrs()
resls()
local curp = torso.Position
local tarp = mouse.Hit.p + Vector3.new(0,3,0)
local dis = (tarp-curp).magnitude
local un = (tarp-curp).unit
local midy = curp.Y+30 + dis^0.5
local bgcf = CFrame.new(bg.cframe.p,Vector3.new(tarp.X,bg.cframe.y,tarp.Z))
local chngr = 15
rs.DesiredAngle = 3
ls.DesiredAngle = -3
for i=0,1,1/chngr do
bg.cframe = bgcf * CFrame.Angles(math.rad((i-.5)*30),0,0)
local y = (1-i)*(1-i)*0 + 2*(1-i)*i*midy+i*i*0
bp.position = curp+(un*dis*i) + Vector3.new(0,y,0)
wait(1/60)
end
bp.position = curp+(un*dis)
wait(.1)
bg:Destroy()
bp:Destroy()
rs.DesiredAngle = 0
ls.DesiredAngle = 0
wait(.2)
at1 = false
resrs()
resls()
resg1()
resg2()
resumeIdle()
end 
if k == "f" and not at1 and mouse ~= nil then
at1 = true
local tar = mouse.Hit.p
local bg = Instance.new("BodyGyro",torso)
local bp = Instance.new("BodyPosition",torso)
bp.position = torso.Position
bp.maxForce = Vector3.new(500000000,500000000,50000000)
bp.P = 1000000
local torcf = torso.CFrame
bg.cframe = CFrame.new(torso.Position,Vector3.new(tar.X,torcf.Y,tar.Z))
bg.maxTorque = Vector3.new(500000000,500000000,50000000)
bg.P = 1000000
wait(.05)
resrs()
resls()
for i=1,15 do
rs.C0 = rs.C0 * CFrame.Angles(math.rad(-2),0,0)
ls.C0 = ls.C0 * CFrame.Angles(math.rad(-2),0,0)
wait(1/60)
end
local t = tick()
repeat
local tab = workspace:FindPartsInRegion3(Region3.new(Vector3.new(torso.Position.X-10,torso.Position.Y-10,torso.Position.Z-10),Vector3.new(torso.Position.X+10,torso.Position.Y+10,torso.Position.Z+10)),char,100)
for i,v in pairs(tab) do
if not v.Anchored then
v.CFrame = CFrame.new(v.Position,(v.Position-v.Velocity))
v.Velocity = (v.Position-(v.Position-v.Velocity)).unit*v.Velocity.magnitude*2
end
end
wait(1/60)
until tick()-t > 5
for i=1,15 do
rs.C0 = rs.C0 * CFrame.Angles(math.rad(2),0,0)
ls.C0 = ls.C0 * CFrame.Angles(math.rad(2),0,0)
wait(1/60)
end
bp:Destroy()
bg:Destroy()
at1 = false
resrs()
resls()
resg1()
resg2()
resumeIdle()
end
if k == "e" and not at1 and mouse ~= nil and mouse.Target ~= nil then
local tar = mouse.Target.Parent
if not tar:FindFirstChild("Torso") then tar = tar.Parent end
if not tar:FindFirstChild("Torso") then return end
local echar = tar
if not echar:FindFirstChild("Torso") then return end
local etor = echar.Torso
at1 = true
local bg = Instance.new("BodyGyro",torso)
local bp = Instance.new("BodyPosition",torso)
bp.position = torso.Position
bp.maxForce = Vector3.new(500000000,500000000,50000000)
bp.P = 1000000
local torcf = torso.CFrame
bg.cframe = torcf
bg.maxTorque = Vector3.new(500000000,500000000,50000000)
bg.P = 1000000
wait(.05)
resrs()
resls()
for i=1,5 do
g1.C0 = g1.C0 * CFrame.Angles(0,0,math.rad(-36)) 
g1.C1 = g1.C1 * CFrame.Angles(0,math.rad(36),0)
wait(1/60)
end
local curp = torso.Position
local tarp,dis,un,lv,off = nil,nil,nil,nil,nil
local midy = curp.Y+30 
--[[
local Damage = function()
repeat
local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(han1.Position+han1.CFrame:vectorToWorldSpace(Vector3.new(0,1,0)),han1.CFrame:vectorToWorldSpace(Vector3.new(0,-3,0))),list)
if hit then
table.insert(list,hit)
hit:BreakJoints()
if not hit.Anchored and hit.Name ~= "Torso" then
local w = weld(han1,hit)
w.C0 = han1.CFrame:toObjectSpace(hit.CFrame)
game.Debris:AddItem(w,3)
end end
until hit == nil
repeat
local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(han2.Position+han2.CFrame:vectorToWorldSpace(Vector3.new(0,1,0)),han2.CFrame:vectorToWorldSpace(Vector3.new(0,-3,0))),list)
if hit then
table.insert(list,hit)
hit:BreakJoints()
if not hit.Anchored and hit.Name ~= "Torso" then
local w = weld(han2,hit)
w.C0 = han2.CFrame:toObjectSpace(hit.CFrame)
game.Debris:AddItem(w,3)
end end
until hit == nil
end
]]
local Damage = function(hit,han)
local par = hit
repeat
par = par.Parent
until par == workspace or par == nil or par:FindFirstChild("Torso")
if par == workspace or par == nil then return end
if par ~= char then
if hit.Name == "Torso" or hit.Name == "Head" then 
hit:BreakJoints()
end end
end
local hit1 = rm.hitter.Touched:connect(function(hit) Damage(hit,han2) end)
local hit2 = lm.hitter.Touched:connect(function(hit) Damage(hit,han1) end)
for i=0,1,1/15 do
bg.cframe = CFrame.new(bg.cframe.p,Vector3.new(etor.Position.X,bg.cframe.Y,etor.Position.Z)) * CFrame.Angles(math.rad(i*15),0,0)
lv = CFrame.new(bg.cframe.p,Vector3.new(etor.Position.X,bg.cframe.Y,etor.Position.Z)).lookVector
off = lv*5 - Vector3.new(0,4+(math.random()/2),0)
tarp = etor.Position - off
dis = (curp-tarp).magnitude
un = (tarp-curp).unit
midy = curp.Y+30 + dis^0.5
local y = (1-i)*(1-i)*0 + 2*(1-i)*i*midy+i*i*0
bp.position = curp+(un*dis*i) + Vector3.new(0,y,0)
rs.C0 = rs.C0 * CFrame.new(0,0,-.01) * CFrame.Angles(math.rad(2),0,math.rad(13))
ls.C0 = ls.C0 * CFrame.new(0,0,-.01) * CFrame.Angles(math.rad(2),0,math.rad(-13))
--Damage()
wait(1/60)
end
for i=1,5 do
bp.position = bp.position + lv*.7 - Vector3.new(0,.7,0)
bg.cframe = bg.cframe * CFrame.Angles(math.rad(-5),0,0)
rs.C0 = rs.C0 * CFrame.new(0,0,-.01) * CFrame.Angles(math.rad(-6),0,math.rad(-17))
ls.C0 = ls.C0 * CFrame.new(0,0,-.01) * CFrame.Angles(math.rad(-6),0,math.rad(17))
--Damage()
wait(1/60)
end
--Damage()
bg:Destroy()
bp:Destroy()
for i=1,15 do
g1.C0 = g1.C0 * CFrame.Angles(0,0,math.rad(180/15)) 
g1.C1 = g1.C1 * CFrame.Angles(0,math.rad(-180/15),0)
rs.C0 = rs.C0 * CFrame.new(0,0,.2/15) * CFrame.Angles(0,0,math.rad(-110/15))
ls.C0 = ls.C0 * CFrame.new(0,0,.2/15) * CFrame.Angles(0,0,math.rad(110/15))
wait(1/60)
end
hit1:disconnect()
hit2:disconnect()
at1 = false
resrs()
resls()
resg1()
resg2()
resumeIdle()
end 
if k == "t" and not at1 then
at1 = true
resrs()
resg1()
for i=1,15 do
g1.C0 = g1.C0 * CFrame.Angles(0,0,math.rad(-90/15))
wait(1/60)
end
wait(.5)
for i=1,30 do
g1.C1 = g1.C1 * CFrame.new(0,0.05,0)
wait(1/60)
end
local p = Instance.new("Part",m)
p.Anchored = true
p.FormFactor = "Custom"
p.BrickColor = BrickColor.new("Deep blue")
p.Transparency = 0
p.Size = Vector3.new(1,.2,1)
Instance.new("CylinderMesh",p).Scale = Vector3.new(1,.0001,1)
p:BreakJoints()
p.CFrame = han2.CFrame * CFrame.new(0,.15,0)
for i=1,50 do
p.Mesh.Scale = p.Mesh.Scale + Vector3.new(.2,0,.2)
p.Transparency = i/50
wait(1/60)
end
p.Mesh.Scale = Vector3.new(1,.0001,1)
for i=1,75 do
p.Mesh.Scale = p.Mesh.Scale + Vector3.new(.2,0,.2)
p.Transparency = i/75
wait(1/60)
end
p.Mesh.Scale = Vector3.new(1,.0001,1)
local wtrs = {}
for i=1,200 do
p.Mesh.Scale = p.Mesh.Scale + Vector3.new(.4,0,.4)
p.Transparency = i/200
local rad = p.Mesh.Scale.X/2
for i,v in pairs(game.Players:GetPlayers()) do
if v ~= plr then
local dis = v:DistanceFromCharacter(p.Position)
if dis < rad then
pcall(function()
local pos = v.Character.Torso.Position
local terpos = workspace.Terrain:WorldToCell(pos)
for i=0,4 do
if workspace.Terrain:GetCell(terpos.X,terpos.Y+i,terpos.Z) == Enum.CellMaterial.Empty then
workspace.Terrain:SetWaterCell(terpos.X,terpos.Y+i,terpos.Z,3,4)
table.insert(wtrs,Vector3.new(terpos.X,terpos.Y+i,terpos.Z))
end
end
end)
end
end
end
wait(1/60)
end
p:Destroy()
wait(.5)
for i=1,30 do
g1.C1 = g1.C1 * CFrame.new(0,-0.05,0)
wait(1/60)
end
for i=1,15 do
g1.C0 = g1.C0 * CFrame.Angles(0,0,math.rad(90/15))
wait(1/60)
end
coroutine.resume(coroutine.create(function()
wait(2)
for i,v in pairs(wtrs) do
pcall(function()
if workspace.Terrain:GetCell(v.X,v.Y,v.Z) == Enum.CellMaterial.Water then
workspace.Terrain:SetCell(v.X,v.Y,v.Z,0,0,0)
wait(1/10)
end end) end end))
at1 = false
resrs()
resg1()
resumeIdle()
end
if (k == "w" or k == "s" or k == " " or k == "d" or k == "a" or k == "0") and tick()-lastw < .2 and lastl == k and not faston then
faston = true
bv.Parent = torso
bv.maxForce = Vector3.new(1000000,1000000,1000000)
local t = tick()
local lasts = {0,0,0,0,0,0}
while tick()-t < 2 do
local lv = workspace.CurrentCamera.CoordinateFrame.lookVector
torso.CFrame = CFrame.new(torso.Position,torso.Position+Vector3.new(lv.X,0,lv.Z))
local dir = Vector3.new(0,0,0)
local doit = false
if kd:find("w") and tick()-lasts[1]>0.2 then lasts[1] = tick() doit = true end
if kd:find("s") and tick()-lasts[2]>0.2 then lasts[2] = tick() doit = true end
if kd:find(" ") and tick()-lasts[3]>0.2 then lasts[3] = tick() doit = true end
if kd:find("0") and tick()-lasts[4]>0.2 then lasts[4] = tick() doit = true end
if kd:find("d") and tick()-lasts[5]>0.2 then lasts[5] = tick() doit = true end
if kd:find("a") and tick()-lasts[6]>0.2 then lasts[6] = tick() doit = true end
if tick()-lasts[1]<.2 then dir = dir + torso.CFrame.lookVector * 250 end
if tick()-lasts[2]<.2 then dir = dir - torso.CFrame.lookVector * 150 end
if tick()-lasts[3]<.2 then dir = dir + Vector3.new(0,150,0) end
if tick()-lasts[4]<.2 then dir = dir - Vector3.new(0,150,0) end
if tick()-lasts[5]<.2 then dir = dir + torso.CFrame:vectorToWorldSpace(Vector3.new(200,0,0)) end
if tick()-lasts[6]<.2 then dir = dir + torso.CFrame:vectorToWorldSpace(Vector3.new(-200,0,0)) end
if dir.magnitude > 0 and doit then
local p = Instance.new("Part",workspace)
p.Size = Vector3.new(1,1,1)
p:BreakJoints()
p.Anchored = true
Instance.new("SpecialMesh",p).MeshId = "http://www.roblox.com/asset?id=20329976"
p.BrickColor = BrickColor.new("Whíte")
p.Mesh.Scale = Vector3.new(5,5,5)
p.Transparency = .5
p.CanCollide = false
p.CFrame = CFrame.new(torso.Position-dir.unit*5,torso.Position) * CFrame.Angles(math.rad(90),0,0)
game.Debris:AddItem(p,2)
t = tick()
end
lastdir = dir
bv.velocity = dir
wait(1/60)
end
bv.Parent = nil
faston = false
elseif (k == "w" or k == "s" or k == " " or k == "d" or k == "a" or k == "0") and not faston then
lastw = tick()
lastl = k
end
end
function kup(k)
kd = kd:gsub(k,"")
end
hoppa.Selected:connect(function(m)
if eDb or eq1 or at1 then repeat wait() until not eDb and not eq1 and not at1 end
mouse = m
mouse.KeyDown:connect(kdown)
mouse.KeyUp:connect(kup)
eq1 = true
eDb = true
cr()
cl()
ls.DesiredAngle = -0.2
rs.DesiredAngle = 0.2
for i=1,5 do
ls.C0 = ls.C0 * CFrame.Angles(0,math.rad(15),0)
rs.C0 = rs.C0 * CFrame.Angles(0,math.rad(-15),0)
wait(1/60)
end
wait(.1)
w1.Part0 = nil
w1.Part1 = nil
w2.Part0 = nil
w2.Part1 = nil
local pos1,pos2 = han2.CFrame,han1.CFrame
g1 = weld(RA,han2)
g2 = weld(LA,han1)
--g1.C0 = RA.CFrame:toObjectSpace(pos1)
--g2.C0 = LA.CFrame:toObjectSpace(pos2)
g1.C0 = CFrame.new(0,-.6,0) * CFrame.Angles(math.rad(-100),math.rad(90),0)
g2.C0 = CFrame.new(0,-.6,0) * CFrame.Angles(math.rad(-90),math.rad(90),0)
g1.C1 = CFrame.new(0,.8,0)
g2.C1 = CFrame.new(0,.8,0)
ls.DesiredAngle = -1.4
rs.DesiredAngle = 1.4
wait(.1)
ls.DesiredAngle = 0
rs.DesiredAngle = 0
for i=1,10 do
ls.C0 = ls.C0 * CFrame.Angles(0,math.rad(-7.5),math.rad(-1))
rs.C0 = rs.C0 * CFrame.Angles(0,math.rad(7.5),math.rad(1))
g1.C0 = g1.C0 * CFrame.Angles(0,0,math.rad(19))
wait(1/60)
end
ls.CurrentAngle = 0
rs.CurrentAngle = 0
eDb = false
idcf1 = rs.C0
idcf2 = ls.C0
resumeIdle()
end)
hoppa.Deselected:connect(function()
if eDb or not eq1 or at1 then repeat wait() until not eDb and eq1 and not at1 end
eDb = true
eq1 = false
ls.DesiredAngle = -0.8
rs.DesiredAngle = 0.8
wait(.1)
for i=1,10 do
ls.C0 = ls.C0 * CFrame.Angles(0,math.rad(7.5),math.rad(1))
rs.C0 = rs.C0 * CFrame.Angles(0,math.rad(-7.5),math.rad(-1))
g1.C0 = g1.C0 *  CFrame.Angles(0,0,math.rad(-19))
g2.C0 = g2.C0 * CFrame.new(-.05,0,0) 
wait(1/60)
end
g1:Destroy()
g2:Destroy()
w1.Part0 = torso
w1.Part1 = han1
w2.Part0 = torso
w2.Part1 = han2
ls.DesiredAngle = 0
rs.DesiredAngle = 0
for i=1,5 do
ls.C0 = ls.C0 * CFrame.Angles(0,math.rad(-15),0)
rs.C0 = rs.C0 * CFrame.Angles(0,math.rad(15),0)
wait(1/60)
end
cr()
cl()
eDb = false
end)
--mediafire
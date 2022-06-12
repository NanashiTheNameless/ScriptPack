local plr = game.Players.LocalPlayer
local name = "Book"
if plr.Backpack:FindFirstChild(name) then plr.Backpack[Ancor]:Destroy() end
local t = Instance.new("HopperBin",plr.Backpack)
t.Name = name
script.Parent = nil
local char = plr.Character
local mouse = nil
local RA,LA = char["Right Arm"],char["Left Arm"]
local rs,ls = char.Torso["Right Shoulder"],char.Torso["Left Shoulder"]
local RS,LS = rs:Clone(),ls:Clone()
RS.Part0 = nil
RS.Part1 = nil
LS.Part0 = nil
LS.Part1 = nil
RS.Parent = char.Torso
LS.Parent = char.Torso
RS.DesiredAngle = 0
LS.DesiredAngle = 0
local eDb = false
local sDb = false
local cS = 1
function Weld2(p1,p2)
local w = Instance.new("Weld")
w.Part0 = p1
w.Part1 = p2
w.C0 = p1.CFrame:toObjectSpace(p2.CFrame)
w.Parent = p1
return w
end
function Weld(p1,p2)
local w = Instance.new("Weld")
w.Part0 = p1
w.Part1 = p2
w.Parent = p1
return w
end
function createBook()
if char:FindFirstChild("Book") then char.Book:Destroy() end
if LA:FindFirstChild("grip") then La.grip:Destroy() end
local width = .3 -- .3
local height = 1.5 -- 1.5
local length = 1 -- 1
book = Instance.new("Model",char)
book.Name = "Book"
local base = Instance.new("Part",book)
Instance.new("BlockMesh",base)
base.FormFactor = "Custom"
base.BrickColor = BrickColor.new("Dark orange")
base.Size = Vector3.new(width,.2,height)
base.Mesh.Scale = Vector3.new(1,.5,1)
base:BreakJoints()
base.TopSurface = "Smooth"
base.BottomSurface = "Smooth"
local grip = Weld(LA,base)
grip.Name = "grip"
grip.C0 = CFrame.new(.3,-.9,0)
local sid1 = base:Clone()
sid1.Mesh.Scale = Vector3.new(.2,1,1)
sid1.Parent = book
sid1.Size = Vector3.new(.2,length,height)
local sid2 = sid1:Clone()
sid2.Parent = book
local m = Instance.new("Motor6D")
m.Parent = book
m.Name = "open1"
m.C0 = CFrame.new(-(width/2)+.02,0,0) * CFrame.Angles(0,0,0)
m.C1 = CFrame.new(0,length/2,0)
m.MaxVelocity = .2
m.Part0 = base
m.Part1 = sid1
m.DesiredAngle = 0
local m2 = m:Clone()
m2.Name = "open2"
m2.C0 = CFrame.new((width/2)-.02,0,0) * CFrame.Angles(0,math.pi,0)
m2.C1 = CFrame.new(0,length/2,0)
m2.Part0 = base
m2.Part1 = sid2
m2.Parent = book
local p1 = sid1:Clone()
p1.Parent = book
p1.BrickColor = BrickColor.new("White")
p1.Size = Vector3.new(width/2,length-.1,height-.4)
p1.Mesh.Scale = Vector3.new(1,1,1)
local p2 = p1:Clone()
p2.Parent = book
local w1 = Weld(sid1,p1)
w1.C0 = CFrame.new(width/4+0.01,.05,0)
local w2 = Weld(sid2,p2)
w2.C0 = CFrame.new(width/4+0.01,.05,0)
local p3 = p2:Clone()
p3.Parent = book
p3.Size = Vector3.new(width-.05,width/2,height-.4)
local w3 = Weld(base,p3)
w3.C0 = CFrame.new(0,-width/4,0)
local cp1 = p1:Clone()
cp1.Parent = book
cp1.Mesh.Scale = Vector3.new(.25,1,1)
cp1.Transparency = 1
cp1.Name = "page"
local cpmot1 = m:Clone()
cpmot1.Part0 = base
cpmot1.Part1 = cp1
cpmot1.Name = "pageflip"
cpmot1.C0 = CFrame.new(0,0,0)
cpmot1.Parent = book
base.Name = "base"
end
function getAniFrame(w1,w2,am,cur)
        local c0 = {w1.X,w1.Y,w1.Z,w1:toEulerAnglesXYZ()}
        local c1 = {w2.X,w2.Y,w2.Z,w2:toEulerAnglesXYZ()}
        local cf = {}
        for i,v in pairs(c0) do
                cf[i] = c1[i]-v
        end
        return CFrame.new(c0[1]+(cur/am)*cf[1], c0[2]+(cur/am)*cf[2], c0[3]+(cur/am)*cf[3])*CFrame.Angles(c0[4]+(cur/am)*cf[4],c0[5]+(cur/am)*cf[5],c0[6]+(cur/am)*cf[6])
end
function Init()
createBook()
end
function dealDamage(hum,dmg)
print("Damaged "..hum.Parent.Name.." for "..dmg)
local hp = hum.Health
if hp == 0 then return end
hum:TakeDamage(dmg)
if dmg > 0 and (hum.Health >= hp or hum.MaxHealth == 0 or hum.MaxHealth == math.huge) then dmg = "Resisted! ("..dmg..")" end
if game.Players:GetPlayerFromCharacter(hum.Parent) == nil then return end
local m = Instance.new("Model",workspace)
m.Name = dmg < 0 and "+"..math.abs(dmg) or dmg
local h = Instance.new("Humanoid",m)
h.Name = "SHOWDATCOOKIE!"
h.MaxHealth = 0
local p = Instance.new("Part",m)
p.Name = "Head"
p.FormFactor = "Custom"
p.Size = Vector3.new(.2,.2,.2)
p.Transparency = 0.97
p.CanCollide = false
p.Anchored = true
p:BreakJoints()
game.Debris:AddItem(p,5)
pcall(function() p.CFrame = CFrame.new(hum.Parent.Torso.Position) * CFrame.new(math.random(-2,2),math.random(-1,1),math.random(-2,2)) end)
local rAm = math.random(3,6)/100
coroutine.resume(coroutine.create(function()
for i=1,300 do 
p.CFrame = p.CFrame * CFrame.new(0,rAm,0) 
wait(1/60)
end 
p:Destroy()
end)) 
end
function changeSpell(spell)
if cS == spell or sDb or eDb or spell == 0 then return end
local nextPage = true
if cS > spell then nextPage = false end
cS = spell
sDb = true
eDb = true
rs.Part0 = nil
rs.Part1 = nil
RS.CurrentAngle = rs.CurrentAngle
RS.Part0 = char.Torso
RS.Part1 = RA
if nextPage then
RS.DesiredAngle = math.rad(90)
for i=1,15 do
RS.C1 = RS.C1 * CFrame.Angles(math.rad(-2),0,0)
LS.C1 = LS.C1 * CFrame.Angles(math.rad(-0.5),0,0)
wait(1/60)
end
repeat wait() until math.abs(RS.DesiredAngle-RS.CurrentAngle) < .01
for i=1,3 do
RS.C1 = RS.C1 * CFrame.new(0,0.1,0)
LS.C1 = LS.C1 * CFrame.Angles(math.rad(-2.5),0,0)
wait(1/60)
end
book.pageflip.MaxVelocity = .3
book.pageflip.CurrentAngle = -1.3
book.pageflip.DesiredAngle = 1.3
book.page.Transparency = 0
for i=1,3 do
RS.C1 = RS.C1 * CFrame.new(0,-0.1,0) * CFrame.Angles(math.rad(-3),0,0)
wait(1/60)
end
for i=1,3 do
LS.C1 = LS.C1 * CFrame.Angles(math.rad(5),0,0)
RS.C1 = RS.C1 * CFrame.Angles(math.rad(3),0,0)
wait(1/60)
end
RS.DesiredAngle = math.rad(0)
for i=1,10 do
RS.C1 = RS.C1 * CFrame.Angles(math.rad(3),0,0)
wait(1/60)
end
repeat wait() until math.abs(RS.DesiredAngle-RS.CurrentAngle) < .01
else  -------------------------------------RAAAAAAAAAAAAAAAAAAaaa
for i=1,3 do
LS.C1 = LS.C1 * CFrame.Angles(math.rad(2),0,0)
wait(1/60)
end
book.pageflip.MaxVelocity = .25
book.pageflip.CurrentAngle = 1.3
book.pageflip.DesiredAngle = -1.3
book.page.Transparency = 0
for i=1,3 do
LS.C1 = LS.C1 * CFrame.Angles(math.rad(-2),0,0)
wait(1/60)
end
repeat wait() until math.abs(book.pageflip.DesiredAngle-book.pageflip.CurrentAngle) < .01
end
book.page.Transparency = 1
book.pageflip.MaxVelocity = .2
RS.Part0 = nil
RS.Part1 = nil
rs.CurrentAngle = 0
rs.Part0 = char.Torso
rs.Part1 = RA
RS.C0 = rs.C0
RS.C1 = rs.C1
RS.MaxVelocity = rs.MaxVelocity
RS.DesiredAngle = 0
RS.CurrentAngle = 0
sDb = false
eDb = false
end
function makeRPlate(color)
local p = Instance.new("Part",book)
Instance.new("BlockMesh",p)
p.FormFactor = "Custom"
p.Size = Vector3.new(1,.2,1)
p.Transparency = 0.4
p.CanCollide = false
p.BrickColor = BrickColor.new(color)
p:BreakJoints()
p.CFrame = RA.CFrame * CFrame.new(0,-1,0)
Weld2(char.Torso,p).Parent = p
return p
end
function M1Down()
if eDb or sDb then return end
sDb = true
local spot = mouse.Hit.p
rs.Part0 = nil
rs.Part1 = nil
RS.CurrentAngle = rs.CurrentAngle
RS.Part0 = char.Torso
RS.Part1 = RA
if cS == 1 then
char.Torso.Neck.DesiredAngle = .3
wait(.3)
RS.DesiredAngle = math.rad(90)
repeat wait() until math.abs(RS.DesiredAngle-RS.CurrentAngle) < .01
wait(.05)
RS.C1 = RS.C1 * CFrame.new(0,.1,0)
local p1 = makeRPlate("White")
char.Torso.Neck.DesiredAngle = 0
wait(.05)
RS.C1 = RS.C1 * CFrame.new(0,-.1,0)
char.Torso.Neck.DesiredAngle = 0.3
RS.DesiredAngle = math.rad(140)
repeat wait() until math.abs(RS.DesiredAngle-RS.CurrentAngle) < .01
RS.C1 = RS.C1 * CFrame.new(0,.1,0)
local p2 = makeRPlate("White")
char.Torso.Neck.DesiredAngle = 0
wait(.05)
RS.C1 = RS.C1 * CFrame.new(0,-.1,0)
RS.DesiredAngle = math.rad(90)
repeat wait() until math.abs(RS.DesiredAngle-RS.CurrentAngle) < .01
for i=1,10 do
RS.C1 = RS.C1 * CFrame.Angles(math.rad(5),0,0)
wait(1/60)
end
RS.C1 = RS.C1 * CFrame.new(0,.1,0)
local p3 = makeRPlate("White")
wait(.05)
RS.C1 = RS.C1 * CFrame.new(0,-.1,0)
for i=1,10 do
RS.C1 = RS.C1 * CFrame.Angles(math.rad(-10),0,0)
wait(1/60)
end
RS.C1 = RS.C1 * CFrame.new(0,.1,0)
local p4 = makeRPlate("White")
wait(.05)
RS.C1 = RS.C1 * CFrame.new(0,-.1,0)
for i=1,10 do
RS.C1 = RS.C1 * CFrame.Angles(math.rad(5),0,0)
wait(1/60)
end
RS.DesiredAngle = math.rad(40)
repeat wait() until math.abs(RS.DesiredAngle-RS.CurrentAngle) < .01
RS.C1 = RS.C1 * CFrame.new(0,.1,0)
local p5 = makeRPlate("White")
wait(.05)
RS.C1 = RS.C1 * CFrame.new(0,-.1,0)
char.Torso.Neck.DesiredAngle = 0
RS.DesiredAngle = math.rad(90)
repeat wait() until math.abs(RS.DesiredAngle-RS.CurrentAngle) < .01
for i=1,30 do
RS.C1 = RS.C1 * CFrame.new(0,-.02,0)
p2.Weld.C0 = getAniFrame(p2.Weld.C0,p1.Weld.C0,55,i)
p3.Weld.C0 = getAniFrame(p3.Weld.C0,p1.Weld.C0,55,i)
p4.Weld.C0 = getAniFrame(p4.Weld.C0,p1.Weld.C0,55,i)
p5.Weld.C0 = getAniFrame(p5.Weld.C0,p1.Weld.C0,55,i)
wait(1/60)
end
wait(.05)
for i=1,3 do
RS.C1 = RS.C1 * CFrame.new(0,.2,0)
wait(1/60)
end
p2:Destroy()
p3:Destroy()
p4:Destroy()
p5:Destroy()
p1.Transparency = 1
local s = Instance.new("Sound",p1)
s.Pitch = 2
s.SoundId = "http://www.roblox.com/asset/?id=12222005"
s:Play()
game.Debris:AddItem(p1,1)
local Hammer = Instance.new("Part")
Hammer.CanCollide = false
Hammer.Parent = workspace
Hammer.FormFactor = "Symmetric"
Hammer.Size = Vector3.new(1,4,2)
Hammer.BrickColor = BrickColor.new("Light blue")
Hammer.Reflectance = 0.4
Hammer.Transparency = 0.5
local FM = Instance.new("SpecialMesh",Hammer)
FM.MeshType = "FileMesh"
FM.MeshId = "http://www.roblox.com/asset/?id=1279013"
FM.Scale = FM.Scale * 1.05
local lh = 0
Hammer.Touched:connect(function(hit) if tick()-lh < 0.05 then return end lh = tick() local hum = hit.Parent:FindFirstChild("Humanoid") if not hum then hum = hit.Parent.Parent:FindFirstChild("Humanoid") end if not hum then return end dealDamage(hum,math.random(35,40)) end)
Hammer.CFrame = CFrame.new((p1.CFrame * CFrame.new(0,-4,0)).p,spot)
Instance.new("BodyForce",Hammer).force = Vector3.new(0,Hammer:GetMass()*180,0)
Hammer:BreakJoints()
--Hammer.Velocity = (spot-Hammer.Position).unit*300
Hammer.Velocity = char.Torso.CFrame.lookVector*300
Hammer.RotVelocity = Vector3.new(900,0,0)
game.Debris:AddItem(Hammer,5)
RS.MaxVelocity = 0.15
RS.DesiredAngle = 0
repeat wait() until math.abs(RS.DesiredAngle-RS.CurrentAngle) < .01
end
if cS == 2 then
local Plates = {}
char.Torso.Neck.DesiredAngle = 0.3
wait(.2)
for i=1,30 do
RS.C1 = RS.C1 * CFrame.Angles(0,0,math.rad(-140/30))
wait(1/60)
end
RS.C1 = RS.C1 * CFrame.new(-.1,0,0)
table.insert(Plates,makeRPlate("Bright green"))
wait(.05)
RS.C1 = RS.C1 * CFrame.new(.1,0,0)
char.Torso.Neck.DesiredAngle = 0
wait(.3)
char.Torso.Neck.DesiredAngle = 0.3
wait(.3)
char.Torso.Neck.DesiredAngle = 0
wait(.5)
for i=1,5 do
RS.C1 = RS.C1 * CFrame.Angles(0,0,math.rad(50/5))
wait(1/60)
end
RS.C1 = RS.C1 * CFrame.new(-.1,0,0)
local p = makeRPlate("Bright green")
wait(.05)
RS.C1 = RS.C1 * CFrame.new(.1,0,0)
for i=1,5 do
RS.C1 = RS.C1 * CFrame.Angles(0,0,math.rad(50/5))
wait(1/60)
end
RS.C1 = RS.C1 * CFrame.new(-.1,0,0)
table.insert(Plates,makeRPlate("Bright green"))
wait(.05)
RS.C1 = RS.C1 * CFrame.new(.1,0,0)
for i=1,10 do
RS.C1 = RS.C1 * CFrame.Angles(math.rad(6),0,0)
wait(1/60)
end
RS.C1 = RS.C1 * CFrame.new(-.1,0,0)
table.insert(Plates,makeRPlate("Bright green"))
wait(.05)
RS.C1 = RS.C1 * CFrame.new(.1,0,0)
for i=1,10 do
RS.C1 = RS.C1 * CFrame.Angles(math.rad(-6),0,0)
wait(1/60)
end
for i=1,10 do
RS.C1 = RS.C1 * CFrame.Angles(0,0,math.rad(-40/10))
wait(1/60)
end
wait(.5)
for i=1,30 do
RS.C1 = RS.C1 * CFrame.new(.02,0,0)
for i,v in pairs(Plates) do
v.Weld.C0 = getAniFrame(v.Weld.C0,p.Weld.C0,40,i)
end
wait(1/60)
end
wait(.05)
for i=1,3 do
RS.C1 = RS.C1 * CFrame.new(-.2,0,0)
wait(1/60)
end
for i,v in pairs(Plates) do
v:Destroy()
end
p.Transparency = 1
local s = Instance.new("Sound",p)
s.Pitch = 2
s.SoundId = "http://www.roblox.com/asset/?id=12222005"
s:Play()
for i,v in pairs(game.Players:GetPlayers()) do
if v:DistanceFromCharacter(p.Position) < 15 then
pcall(function() 
dealDamage(v.Character.Humanoid,-80) 
end)
coroutine.resume(coroutine.create(function()
local tar = v.Character.Torso
local p1 = Instance.new("Part",workspace)
p1.BrickColor = BrickColor.new("White")
p1.FormFactor = "Custom"
p1.Reflectance = .1
p1.CanCollide = false
Instance.new("BlockMesh",p1)
p1.Size = Vector3.new(1,1,1)
p1:BreakJoints()
p1.Transparency = .5
local p2 = p1:Clone()
p2.Parent = workspace
p2:BreakJoints()
p2.BrickColor = BrickColor.new("Dark green")
p2.Transparency = .6
local w1 = Weld(tar,p1)
local w2 = Weld(tar,p2)
for i=1,45 do
w1.C1 = w1.C1 * CFrame.Angles(math.random()-.5,math.random()-.5,math.random()-.5)
w2.C1 = w2.C1 * CFrame.Angles(math.random()-.5,math.random()-.5,math.random()-.5)
p1.Mesh.Scale = p1.Mesh.Scale * 1.02
p2.Mesh.Scale = p2.Mesh.Scale * 1.02
wait()
end 
for i=1,30 do
w1.C1 = w1.C1 * CFrame.Angles(math.random()-.5,math.random()-.5,math.random()-.5)
w2.C1 = w2.C1 * CFrame.Angles(math.random()-.5,math.random()-.5,math.random()-.5)
p1.Transparency = .5+.5/30*i
p2.Transparency = .6+.4/30*i
wait()
end
p1:Destroy()
p2:Destroy()
end))
end end
wait(1)
end
if cS == 3 then
local Plates = {}
char.Torso.Neck.DesiredAngle = 0.3
wait(1)
char.Torso.Neck.DesiredAngle = 0
wait(.2)
local temp = RS.C1
for i=1,15 do
RS.C1 = getAniFrame(temp,temp*CFrame.Angles(0,0,math.rad(-90)),15,i)
wait(1/60)
end
RS.C1 = RS.C1 * CFrame.new(-.1,0,0)
local p = makeRPlate("Reddish brown")
wait(.05)
RS.C1 = RS.C1 * CFrame.new(.1,0,0)
local temp2 = RS.C1
for i=1,10 do
RS.C1 = getAniFrame(temp2,temp*CFrame.Angles(math.rad(50),0,math.rad(-40)),10,i)
wait(1/60)
end
RS.C1 = RS.C1 * CFrame.new(-.1,0,0)
table.insert(Plates,makeRPlate("Reddish brown"))
wait(.05)
RS.C1 = RS.C1 * CFrame.new(.1,0,0)
temp2 = RS.C1
local temp2 = RS.C1
for i=1,10 do
RS.C1 = getAniFrame(temp2,temp*CFrame.Angles(math.rad(-50),0,math.rad(-40)),10,i)
wait(1/60)
end
RS.C1 = RS.C1 * CFrame.new(-.1,0,0)
table.insert(Plates,makeRPlate("Reddish brown"))
wait(.05)
RS.C1 = RS.C1 * CFrame.new(.1,0,0)
local temp2 = RS.C1
for i=1,10 do
RS.C1 = getAniFrame(temp2,temp*CFrame.Angles(math.rad(0),0,math.rad(-140)),10,i)
wait(1/60)
end
RS.C1 = RS.C1 * CFrame.new(-.1,0,0)
table.insert(Plates,makeRPlate("Reddish brown"))
wait(.05)
RS.C1 = RS.C1 * CFrame.new(.1,0,0)
local temp2 = RS.C1
for i=1,10 do
RS.C1 = getAniFrame(temp2,temp*CFrame.Angles(math.rad(0),0,math.rad(-90)),10,i)
wait(1/60)
end
wait(.05)
for i=1,30 do
RS.C1 = RS.C1 * CFrame.new(.02,0,0)
for i,v in pairs(Plates) do
v.Weld.C0 = getAniFrame(v.Weld.C0,p.Weld.C0,31,i)
end
wait(1/60)
end
wait(.05)
for i=1,3 do
RS.C1 = RS.C1 * CFrame.new(-.2,0,0)
wait(1/60)
end
for i,v in pairs(Plates) do
v:Destroy()
end
p.Transparency = 1
local s = Instance.new("Sound",p)
s.Pitch = 2
s.SoundId = "http://www.roblox.com/asset/?id=12222005"
s:Play()
local nlist = ""
for i=1,10 do
local pa = Instance.new("Part",workspace)
pa.Anchored = true
Instance.new("BlockMesh",pa)
pa.BrickColor = BrickColor.new("Reddish brown")
pa.Size = Vector3.new(5,8,5)
pa:BreakJoints()
pa.CFrame = CFrame.new(char.Torso.Position) * CFrame.Angles(math.random()-.5,math.random()-.5,math.random()-.5) + Vector3.new(0,-8,0) + char.Torso.CFrame.lookVector*(i+1)*3.5
local on = true
local con = pa.Touched:connect(function(hit)
pcall(function()
local hum = hit.Parent:FindFirstChild("Humanoid") 
if not hum then hum = hit.Parent.Parent:FindFirstChild("Humanoid") end 
if not hum or game.Players:GetPlayerFromCharacter(hum.Parent) == nil or nlist:lower():find("|"..hum.Parent.Name:lower().."|") or hum.Parent == char then return end 
hum.Sit = true
hum.Parent.Torso.Velocity = hum.Parent.Torso.Velocity + Vector3.new(math.random()-.5,8,math.random()-.5)
nlist = nlist.."|"..hum.Parent.Name.."|"
dealDamage(hum,math.random(32,38))
end)
end)
coroutine.resume(coroutine.create(function()
wait(i*0.1)
for i=1,math.random(4,6) do
pa.CFrame = pa.CFrame + Vector3.new(0,1,0)
wait(1/60)
end
wait(.5)
con:disconnect()
for i=0,1,.05 do
pa.Transparency = i
wait(1/60)
end
pa:Destroy()
end))
end
end
RS.Part0 = nil
RS.Part1 = nil
rs.CurrentAngle = 0
rs.Part0 = char.Torso
rs.Part1 = RA
RS.C0 = rs.C0
RS.C1 = rs.C1
RS.MaxVelocity = rs.MaxVelocity
RS.DesiredAngle = 0
RS.CurrentAngle = 0
sDb = false
end
function KDown(key)
if key == "q" then
changeSpell(cS-1)
elseif key == "e" then
changeSpell(cS+1)
end
end
function Select(m)
mouse = m
if eDb == true then repeat wait() until eDb == false if not t.Active then return end end
mouse.Button1Down:connect(M1Down)
mouse.KeyDown:connect(KDown)
eDb = true
ls.Part0 = nil
ls.Part1 = nil
LS.CurrentAngle = ls.CurrentAngle
LS.Part0 = char.Torso
LS.Part1 = LA
LS.MaxVelocity = .2
LS.DesiredAngle = math.rad(-90)
repeat wait() until math.abs(LS.DesiredAngle-LS.CurrentAngle) < .05
for i=1,20 do
        LS.C1 = LS.C1 * CFrame.Angles(math.rad(-1),math.rad(-1),0)
        wait(1/60)
end
book.open1.DesiredAngle = -1.3
book.open2.DesiredAngle = -1.3
char.Torso.Neck.DesiredAngle = .3
for i=1,10 do
        LA.grip.C1 = LA.grip.C1 * CFrame.new(.01,0.02,0) * CFrame.Angles(0,0,math.rad(-10))
        wait(1/60)
end
eDb = false
wait(.2)
char.Torso.Neck.DesiredAngle = 0
end
function Deselect()
repeat wait() until not eDb and not sDb
eDb = true
book.open1.DesiredAngle = 0
book.open2.DesiredAngle = 0
for i=1,10 do
        LA.grip.C1 = LA.grip.C1 * CFrame.new(-.01,-0.02,0) * CFrame.Angles(0,0,math.rad(10))
        wait(1/60)
end
for i=1,20 do
        LS.C1 = LS.C1 * CFrame.Angles(math.rad(1),math.rad(1),0)
        wait(1/60)
end
LS.DesiredAngle = 0
repeat wait() until math.abs(LS.DesiredAngle-LS.CurrentAngle) < .05
LS.Part0 = nil
LS.Part1 = nil
ls.CurrentAngle = 0
ls.Part0 = char.Torso
ls.Part1 = LA
LS.C0 = ls.C0
LS.C1 = ls.C1
LS.MaxVelocity = ls.MaxVelocity
LS.DesiredAngle = 0
LS.CurrentAngle = 0
createBook()
eDb = false
end
Init()
t.Selected:connect(Select)
t.Deselected:connect(Deselect)
Game.Workspace.ace28545.Animate:remove()
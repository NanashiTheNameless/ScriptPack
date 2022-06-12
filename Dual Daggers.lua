Player = game.Players.LocalPlayer
Char = Player.Character
Head = Char.Head
Torso = Char.Torso
Ra = Char["Right Arm"]
La = Char["Left Arm"]
Rl = Char["Right Leg"]
Ll = Char["Left Leg"]

pcall(function() Player.Backpack.Tool:Destroy() end)
pcall(function() Char.Model:Destroy() end)
Hb = Instance.new("HopperBin",Player.Backpack)Hb.Name = "Tool"
Main = Instance.new("Model",Char)

cc=coroutine.create;cr=coroutine.resume;v3=Vector3.new;cf=CFrame.new;ca=CFrame.Angles;bc=BrickColor.new;inst=Instance.new;c3=Color3.new;
mr=math.rad;mrd=math.random;
http="http://www.roblox.com/asset/?id=";mouse=nil;attack=false;torface=false;

attack=false;facetorso=nil;swords=false;

Meshes = {["Ring"] = 3270017,["Spike"] = 1033714,["Cone"] = 1082802,["Crown"] = 20329976,["Cloud"] = 1095708,
["Mjolnir"] = 1279013,["Diamond"] = 9756362,["Hand"] = 37241605,["Fist"] = 65322375,["Skull"] = 36869983,
["Totem"] = 35624068,["Spikeb"] = 9982590,["Dragon"] = 58430372,["Fish"] = 31221717,["Coffee"] = 15929962,
["Spiral"] = 1051557,["Ramen"] = 19380188}; -- >:D
Textures = {["Cone"] = 1082804,["Rainbow"] = 28488599,["Fish"] = 31221733, ["Coffee"] = 24181455,
["Monster"] = 33366441,["Ramen"] = 19380153};
function partmaker(parent,size,color,trans)local p=inst("Part",parent)p.FormFactor = "Custom" p.TopSurface=0 p.BottomSurface=0 p.Size=size p.BrickColor=bc(color)p.Transparency=trans p:BreakJoints() return p end
function weld0(parent,p0,p1,c0)local w=inst("Weld",parent)w.Part0=p0 w.Part1=p1 w.C0 = c0 return w end
function weld1(parent,p0,p1,c1)local w=Instance.new("Weld",parent)w.Part0=p0 w.Part1=p1 w.C1 = c1 return w end
function mesh(parent,id,text,typez)local m=inst("SpecialMesh",parent)m.MeshId=id m.TextureId=text m.MeshType=typez return m end
function fakejoint(parent,hand,tor,c1,c12)local p=partmaker(parent,v3(1,1,1),1,1)p:BreakJoints()local w=weld1(p,p,tor,c1)local w1=weld1(p,hand,p,c12)return w end

function damage(hit,damage,cooldown)
for i,v in pairs(hit:GetChildren()) do 
if v:IsA("Humanoid") and hit.Name ~= Player.Name then
local find = v:FindFirstChild("Hitz")
if not find then
if v.Parent:findFirstChild("Head") then
local BillG = Instance.new("BillboardGui",v.Parent.Head)BillG.Size = UDim2.new(1,0,1,0)
BillG.Adornee = v.Parent.Head BillG.StudsOffset = Vector3.new(mrd(-3,3),mrd(3,5),mrd(-3,3))
local TL = Instance.new("TextLabel",BillG)TL.Size = UDim2.new(1,0,1,0)
TL.BackgroundTransparency = 1 TL.Text = tostring(damage).."-"
TL.TextColor3 = BrickColor.new("Really black").Color TL.TextStrokeColor3 = BrickColor.new("Bright red").Color
TL.TextStrokeTransparency = 0 TL.TextXAlignment = Enum.TextXAlignment.Center
TL.TextYAlignment = Enum.TextYAlignment.Center TL.FontSize = Enum.FontSize.Size18
TL.Font = "ArialBold"
coroutine.resume(coroutine.create(function()
wait(1)
for i = 0,1,.1 do wait(.1) BillG.StudsOffset = BillG.StudsOffset+Vector3.new(0,.1,0) end
BillG:Destroy()
end))
end
v.Health = v.Health - damage local bool = Instance.new("BoolValue",v)bool.Name = 'Hitz'game:GetService("Debris"):AddItem(bool,cooldown)
end
end
end
end
function weaponmake()
--Right hand weapon. c:
local rmod = Instance.new("Model",Main)
RHandle = partmaker(rmod,v3(.25,1.5,.25),"Brown",0)inst("CylinderMesh",RHandle)RHandleW = weld0(RHandle,Ra,RHandle,cf(0,-1,0)*ca(mr(90),0,0))
local p = partmaker(rmod,v3(.3,1.1,.3),"Bright blue",0)inst("CylinderMesh",p)local w = weld0(p,RHandle,p,cf(0,0,0))
local p = partmaker(rmod,v3(.5,.5,.5),"Brown",0)mesh(p,0,0,"Sphere")local w = weld0(p,RHandle,p,cf(0,(-1.5/2),0))
local p = partmaker(rmod,v3(1,.2,.5),"Brown",0)mesh(p,0,0,"Torso")local w = weld0(p,RHandle,p,cf(0,(1.5/2),0)*ca(0,mr(90),0))
local p = partmaker(rmod,v3(.25,.3,.55),"Brown",0)inst("BlockMesh",p)local w = weld0(p,RHandle,p,cf(0,(1.5/2)+.25,0))
local b = partmaker(rmod,v3(.2,1.5,.5),"Gray",0)inst("BlockMesh",b)local w = weld0(b,RHandle,b,cf(0,(1.5/2)+1,0))
local p = partmaker(rmod,v3(.2,.4,.5),"Gray",0)mesh(p,0,0,"Wedge")local w = weld0(p,RHandle,p,cf(0,(1.5/2)+2-.05,0))
RHurt = partmaker(rmod,v3(.3,1.5,.6),"Gray",.8)local w = weld0(RHurt,b,RHurt,cf(0,0,0))

local lmod = Instance.new("Model",Main)
LHandle = partmaker(lmod,v3(.25,1.5,.25),"Brown",0)inst("CylinderMesh",RHandle)LHandleW = weld0(LHandle,La,LHandle,cf(0,-1,0)*ca(mr(90),0,0))
local p = partmaker(lmod,v3(.3,1.1,.3),"Bright blue",0)inst("CylinderMesh",p)local w = weld0(p,LHandle,p,cf(0,0,0))
local p = partmaker(lmod,v3(.5,.5,.5),"Brown",0)mesh(p,0,0,"Sphere")local w = weld0(p,LHandle,p,cf(0,(-1.5/2),0))
local p = partmaker(lmod,v3(1,.2,.5),"Brown",0)mesh(p,0,0,"Torso")local w = weld0(p,LHandle,p,cf(0,(1.5/2),0)*ca(0,mr(90),0))
local p = partmaker(lmod,v3(.25,.3,.55),"Brown",0)inst("BlockMesh",p)local w = weld0(p,LHandle,p,cf(0,(1.5/2)+.25,0))
local b = partmaker(lmod,v3(.2,1.5,.5),"Gray",0)inst("BlockMesh",b)local w = weld0(b,LHandle,b,cf(0,(1.5/2)+1,0))
local p = partmaker(lmod,v3(.2,.4,.5),"Gray",0)mesh(p,0,0,"Wedge")local w = weld0(p,LHandle,p,cf(0,(1.5/2)+2-.05,0))
LHurt = partmaker(rmod,v3(.3,1.5,.6),"Gray",.8)local w = weld0(LHurt,b,LHurt,cf(0,0,0))
swords = true
for i,v in pairs (Char:GetChildren()) do
if v:IsA("CharacterMesh") then
v:Destroy()
end
end
pcall(function()Torso.roblox:Destroy()end)
end
function rhandslash()
if attack == false and swords == true then
attack = true
local Tor = Torso:Clone()
Torso.Transparency = 1
Tor.Parent = Torso.Parent
Tor.BrickColor = bc("White")
Tor.Name = "fakeTorso"
local TorsoWeld = weld0(Main,Torso,Tor,cf(0,0,0))
local LegWeld = fakejoint(Main,Rl,Tor,cf(.5,-1.5,0),cf(0,-.5,0))
local LegWeld2 = fakejoint(Main,Ll,Tor,cf(-.5,-1.5,0),cf(0,-.5,0))
local RightW = fakejoint(Main,Ra,Tor,cf(1.5,.5,0),cf(0,-.5,0))
local LeftW = fakejoint(Main,La,Tor,cf(-1.5,.5,0),cf(0,-.5,0))
local HeadW = weld0(Main,Tor,Head,cf(0,1.5,0)*ca(0,mr(0),0))
local Var = RHurt.Touched:connect(function(Hit) damage(Hit.Parent,mrd(10,15),1)end)
if Tor then
local CFZ
local CAZ
cr(cc(function()
for i = 0, -.5,-.05 do
wait(.03)
TorsoWeld.C0 = cf(0,0,i)*ca(0,mr(CAZ),0)
CFZ = i
end
end))
cr(cc(function()
for i = 0, 45,15/3 do
wait(.03)
TorsoWeld.C0 = cf(0,0,CFZ)*ca(0,mr(i),0)
CAZ = i
HeadW.C0 = cf(0,1.5,0)*ca(0,mr(-i),0)
end
end))	
end
if RightW~=nil then
for i = 0,90,20 do
wait(.03)
RightW.C1 = cf(1.5,.5,0)*ca(mr(0),mr(0),mr(i))
end
wait(.2)
for i = 0,160,40 do
wait(.03)
RightW.C1 = cf(1.5,.5,0)*ca(mr(0),mr(i),mr(90))
end
wait(.1)
cr(cc(function()
for i = 90, 180+90, 20 do
wait(.03)
RHandleW.C0 = cf(0,-1,0)*ca(mr(i),0,0)
end
end))
wait(.1)
for i = 160,0,-40 do
wait(.03)
RightW.C1 = cf(1.5,.5,0)*ca(mr(0),mr(i),mr(90))
end
wait(.2)
if Tor then
local CAZ
local CFZ
cr(cc(function()
for i = -.5, 0,.05 do
wait(.03)
TorsoWeld.C0 = cf(0,0,i)*ca(0,mr(CAZ),0)
CFZ = i
end
end))
cr(cc(function()
for i = 45, 0,-15/3 do
wait(.03)
TorsoWeld.C0 = cf(0,0,CFZ)*ca(0,mr(i),0)
CAZ = i
HeadW.C0 = cf(0,1.5,0)*ca(0,mr(-i),0)
end
end))
end
cr(cc(function()
for i = 180+90,90, -20 do
wait(.03)
RHandleW.C0 = cf(0,-1,0)*ca(mr(i),0,0)
end
end))
for i = 90,0,-20 do
wait(.03)
RightW.C1 = cf(1.5,.5,0)*ca(mr(0),mr(0),mr(i))
end
end
LegWeld:Destroy()RightW:Destroy()LeftW:Destroy()Tor:Destroy()HeadW:remove()LegWeld2:Destroy()TorsoWeld:Destroy()
Torso.Transparency = 0 Var:disconnect()
attack = false
end	
end
function lhandslash()
if attack == false and swords == true then
attack = true
local Tor = Torso:Clone()
Torso.Transparency = 1
Tor.Parent = Torso.Parent
Tor.BrickColor = bc("White")
Tor.Name = "fakeTorso"
local TorsoWeld = weld0(Main,Torso,Tor,cf(0,0,0))
local LegWeld = fakejoint(Main,Ll,Tor,cf(.5,-1.5,0),cf(0,-.5,0))
local LegWeld2 = fakejoint(Main,Rl,Tor,cf(-.5,-1.5,0),cf(0,-.5,0))
local RightW = fakejoint(Main,Ra,Tor,cf(1.5,.5,0),cf(0,-.5,0))
local LeftW = fakejoint(Main,La,Tor,cf(-1.5,.5,0),cf(0,-.5,0))
local HeadW = weld0(Main,Tor,Head,cf(0,1.5,0)*ca(0,mr(0),0))
local Var = LHurt.Touched:connect(function(Hit) damage(Hit.Parent,mrd(10,15),1) end)
if Tor then
local CFZ
local CAZ
cr(cc(function()
for i = 0, .5,.05 do
wait(.03)
TorsoWeld.C0 = cf(0,0,i)*ca(0,mr(CAZ),0)
CFZ = i
end
end))
cr(cc(function()
for i = 0, -45,-15/3 do
wait(.03)
TorsoWeld.C0 = cf(0,0,CFZ)*ca(0,mr(i),0)
CAZ = i
HeadW.C0 = cf(0,1.5,0)*ca(0,mr(-i),0)
end
end))	
end
if RightW~=nil then
for i = 0,-90,-20 do
wait(.03)
LeftW.C1 = cf(-1.5,.5,0)*ca(mr(0),mr(0),mr(i))
end
wait(.2)
for i = 0,-160,-40 do
wait(.03)
LeftW.C1 = cf(-1.5,.5,0)*ca(mr(0),mr(i),mr(-90))
end
wait(.1)
cr(cc(function()
for i = 90, 180+90, 20 do
wait(.03)
LHandleW.C0 = cf(0,-1,0)*ca(mr(i),0,0)
end
end))
wait(.1)
for i = -160,0,40 do
wait(.03)
LeftW.C1 = cf(-1.5,.5,0)*ca(mr(0),mr(i),mr(-90))
end
wait(.2)
if Tor then
local CAZ
local CFZ
cr(cc(function()
for i = .5, 0,-.05 do
wait(.03)
TorsoWeld.C0 = cf(0,0,i)*ca(0,mr(CAZ),0)
CFZ = i
end
end))
cr(cc(function()
for i = -45, 0,15/3 do
wait(.03)
TorsoWeld.C0 = cf(0,0,CFZ)*ca(0,mr(i),0)
CAZ = i
HeadW.C0 = cf(0,1.5,0)*ca(0,mr(-i),0)
end
end))
end
cr(cc(function()
for i = 180+90,90, -20 do
wait(.03)
LHandleW.C0 = cf(0,-1,0)*ca(mr(i),0,0)
end
end))
for i = -90,0,20 do
wait(.03)
LeftW.C1 = cf(-1.5,.5,0)*ca(mr(0),mr(0),mr(i))
end
end
LegWeld:Destroy()RightW:Destroy()LeftW:Destroy()Tor:Destroy()HeadW:remove()LegWeld2:Destroy()TorsoWeld:Destroy()
Torso.Transparency = 0 Var:disconnect()
attack = false
end	
end

function spin()
if attack == false and swords == true then
attack = true
local Tor = Torso:Clone()
Torso.Transparency = 1
Tor.Parent = Torso.Parent
Tor.BrickColor = bc("White")
Tor.Name = "fakeTorso"
local TorsoWeld = weld0(Main,Torso,Tor,cf(0,0,0))
local LegWeld = fakejoint(Main,Rl,Tor,cf(.5,-1.5,0),cf(0,-.5,0))
local LegWeld2 = fakejoint(Main,Ll,Tor,cf(-.5,-1.5,0),cf(0,-.5,0))
local RightW = fakejoint(Main,Ra,Tor,cf(1.5,.5,0),cf(0,-.5,0))
local LeftW = fakejoint(Main,La,Tor,cf(-1.5,.5,0),cf(0,-.5,0))
local HeadW = weld0(Main,Tor,Head,cf(0,1.5,0)*ca(0,mr(0),0))
local Var1 = RHurt.Touched:connect(function(Hit) damage(Hit.Parent,mrd(10,15),1) end)
local Var2 = LHurt.Touched:connect(function(Hit) damage(Hit.Parent,mrd(10,15),1) end)
if LeftW and RightW then
cr(cc(function()
for i = 0,90,18*2 do
wait(.03)
RightW.C1 = cf(1.5,.5,0)*ca(0,0,mr(i))
LeftW.C1 = cf(-1.5,.5,0)*ca(0,0,mr(-i))
end
end))
cr(cc(function()
for i = 90,180,20 do
wait(.03)
LHandleW.C0 = cf(0,-1,0)*ca(mr(i),0,0)
RHandleW.C0 = cf(0,-1,0)*ca(mr(i),0,0)
end
end))
wait(.2)
if Tor and TorsoWeld then
for i = 0,360*2,20*4 do
wait(.03)
TorsoWeld.C0 = cf(0,0,0)*ca(0,mr(i),0)
end
end
cr(cc(function()
for i = 180,90,-18*2 do
wait(.03)
LHandleW.C0 = cf(0,-1,0)*ca(mr(i),0,0)
RHandleW.C0 = cf(0,-1,0)*ca(mr(i),0,0)
end
end))
for i = 90,0,-20 do
wait(.03)
RightW.C1 = cf(1.5,.5,0)*ca(0,0,mr(i))
LeftW.C1 = cf(-1.5,.5,0)*ca(0,0,mr(-i))
end
end
LegWeld:Destroy()RightW:Destroy()LeftW:Destroy()Tor:Destroy()HeadW:remove()LegWeld2:Destroy()TorsoWeld:Destroy()
Torso.Transparency = 0 Var1:disconnect()Var2:disconnect()
attack = false
end
end

function sidestepr()
if attack == false and swords == true then
attack = true
if Torso then -- Why would this ever happen? xD
Torso.CFrame = Torso.CFrame*CFrame.new(5,0,0)
wait(.1)
Torso.CFrame = Torso.CFrame*CFrame.new(5,0,0)
end
attack = false
end
end
function sidestepl()
if attack == false and swords == true then
attack = true 
if Torso then
Torso.CFrame = Torso.CFrame*CFrame.new(-5,0,0)
wait(.1)
Torso.CFrame = Torso.CFrame*CFrame.new(-5,0,0)
--local bp = Instance.new("BodyPosition",Torso)
--	bp.maxForce = v3()*math.huge
--	bp.position = v3(Torso.CFrame*CFrame.new(-5,0,0))
end
attack = false
end
end
function bigfinnish()

end

Hb.Selected:connect(function(Mouse)
if swords == false then
weaponmake()
end
Mouse.KeyDown:connect(function(Key)
if Key == "q" then lhandslash()
elseif Key == "e" then rhandslash()
elseif Key == "r" then spin()
elseif Key == "x" then bigfinnish()
elseif Key == "c" then sidestepr()
elseif Key == "z" then sidestepl()
end
end)
end)
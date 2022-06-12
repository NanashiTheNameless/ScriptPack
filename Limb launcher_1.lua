--Limb Launcher by xXxMoNkEyMaNxXx V5.0
script.Parent=nil
local next=next
local crosshairimg="http://www.roblox.com/asset?id=20457765"
game:service("ContentProvider"):Preload(crosshairimg)
local ready=false

local event
local p=game.Players.ic3w0lf589
function run(pc)
if event then event:disconnect() end
wait(0.25)
local tor=pc and pc:findFirstChild("Torso")
local rs=tor and tor:findFirstChild("Right Shoulder")
local ra=pc and pc:findFirstChild("Right Arm")
local f=Instance.new("Fire",ra)
f.Size=0.5
local rac=ra:Clone()
f:Destroy()
if rs then
rs:Destroy()
end
local j=Instance.new("Weld",tor)
j.Name="Aim"
j.Part0=tor
j.Part1=ra
j.C0=CFrame.new(1.5,0.5,0)
j.C1=CFrame.new(0,0.5,0, 1,0,0, 0,0,1, 0,-1,0)
local s=Instance.new("HopperBin",p.Backpack)
s.Name="Limb Launcher"
local g=Instance.new("ScreenGui",p.PlayerGui)
g.Name="Crosshair no target"
local img1=Instance.new("ImageLabel",g)
img1.Name="IMG"
img1.Size=UDim2.new(0,210,0,210)
img1.Position=UDim2.new(0,0,0,0)
img1.BackgroundTransparency=1
img1.Visible=false
img1.Image=crosshairimg
local ch=Instance.new("BillboardGui",p.PlayerGui)
ch.Name="Crosshair on target"
ch.Size=UDim2.new(0,210,0,210)
ch.AlwaysOnTop=true
ch.Enabled=false
local img2=Instance.new("ImageLabel",ch)
img2.Name="IMG"
img2.Size=UDim2.new(1,0,1,0)
img2.BackgroundTransparency=1
img2.Image=crosshairimg

local shot=false
event=s.Selected:connect(function(m)
local ccf
local target
local ftarg
local hadtarget=false
local unaim=false
s.Parent=nil
img1.Position=UDim2.new(0,m.X-105,0,m.Y-105)
img1.Visible=true
local aim=function()
if not shot then
target=nil
local r=m.UnitRay
local len=math.huge
for _,o in next,workspace:GetChildren() do
local fh=false
for _,hum in next,o:GetChildren() do
if hum.ClassName=="Humanoid" then
fh=true
break
end
end
if o~=pc and fh then
local h=o:findFirstChild("Head") or o:findFirstChild("Torso")
if h and h.ClassName=="Part" then
local cp=r:ClosestPoint(h.Position)
local d=(h.Position-cp).magnitude/(cp-r.Origin).magnitude
if d<=0.125 and d<=len then
target=h
len=d
end
end
end
end
if target then
local pos=tor.CFrame:pointToObjectSpace(target.Position)
j.C0=CFrame.new(Vector3.new(1.5,0.5,0),pos)
if target~=hadtarget then
--print("Target acquired: ",target)
hadtarget=target
img1.Visible=false
ch.Adornee=target
ch.Enabled=true
end
elseif not target then
local pos=tor.CFrame:pointToObjectSpace((m.hit or tor.CFrame*CFrame.new(1.5,0.5,1)).p)
j.C0=CFrame.new(Vector3.new(1.5,0.5,0),pos)
img1.Position=UDim2.new(0,m.X-105,0,m.Y-105)
if hadtarget then
--print("Target lost")
hadtarget=false
ch.Enabled=false
ch.Adornee=nil
img1.Visible=true
end
end
end
end

local ev1=m.Move:connect(function() unaim=aim() end)--move arm and check for nearby targets
local ev2=m.Button1Down:connect(function()--shoot at target
unaim=aim()--returns nothing, but makes the continuous aim skip so it doesn't use up CPU for nothing
ccf=tor.CFrame*j.C0*(j.C1:inverse())
ftarg=target
shot=true
end)

repeat
local ora=ra
repeat--continuous aim
if unaim then
aim()
else
unaim=true
end
wait()
until shot
j:Destroy()
local cccf=ccf
local ltarg=ftarg
local explode=false
local v=Instance.new("BodyVelocity",ora)
local b=Instance.new("BodyGyro",ora)
b.maxTorque=Vector3.new(1e7,1e7,1e7)
local function point(vel,cf)
local x,y,z,xx,yx,zx,xy,yy,zy,xz,yz,zz=cf:components()
v.velocity=-Vector3.new(yx,yy,yz)*vel
b.cframe=cf
end
local v=0
coroutine.resume(coroutine.create(function()
local last=ora.Position
repeat
v=v+0.2
if ltarg then
local x,y,z,xx,yx,zx,xy,yy,zy,xz,yz,zz=CFrame.new(Vector3.new(0,0,0),ltarg.Position-ora.Position):components()
point(v,CFrame.new(0,0,0, xx,zx,-yx, 0,zy,yy, xz,zz,-yz))
else
point(v,cccf)
end
last=ora.Position
wait()
until explode or not (ora and ora.Parent==workspace)
local exp=Instance.new("Explosion",workspace)
exp.Position=last
exp.BlastRadius=v/6
if ltarg then
for _,ff in next,ltarg.Parent:GetChildren() do
local fie=ff.ClassName=="ForceField" and ff or ff:findFirstChild("ForceField")
if fie then
fie:Destroy()
end
end
end
end))
coroutine.resume(coroutine.create(function()
wait(1)
ora.Touched:connect(function(h)
if (h==ltarg or not (ltarg and workspace:IsAncestorOf(ltarg))) and not (pc and pc.Parent==workspace and h:IsDescendantOf(pc)) then
explode=true
ora:Destroy()
end
end)
end))
ora.Parent=workspace
ra=rac:Clone()
ra.Parent=pc
j=Instance.new("Weld",tor)
j.Name="Aim"
j.Part0=tor
j.Part1=ra
j.C0=CFrame.new(1.5,0.5,0)
j.C1=CFrame.new(0,0.5,0, 1,0,0, 0,0,1, 0,-1,0)
shot=false
until not (pc and pc.Parent==workspace or not (p and p.Parent==game.Players)) and not (ra and ra:IsDescendantOf(workspace))
ev1:disconnect()
ev2:disconnect()
--[[
if not (p and p.Parent==game.Players) then
repeat
if ready then
--same thing
end
wait()
until
end
--]]
end)
end
p.CharacterAdded:connect(function(char)
if p and p.Parent==game.Players then
run(char)
else
--insert joint
end
end)
if p.Character then
run(p.Character)
end
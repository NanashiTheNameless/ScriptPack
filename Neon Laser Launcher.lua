----------------------------------------
 -- Originally made by kash5 -- 
----------------------------------------

 -- there's no time to explain! --

local new=Instance.new
local rad=math.rad
local cf=CFrame.new
local v3=Vector3.new
local ang=function(x,y,z)
return CFrame.Angles(rad(x),rad(y),rad(z))
end
local player=game:service'Players'.LocalPlayer
local char=player.Character
local cam=workspace.Camera
local mouse=player:GetMouse()
local weld=function(a,b,c0,c1)
m=Instance.new('Motor',a)
m.Part0=a
m.Part1=b
m.C0=c0
m.C1=c1
return m
end

snd='rbxassetid://229425359'
beamm=Instance.new('Model',workspace)
beamm.Name='beam'

laser=false

rs=Instance.new('Part',char)
rs.Transparency=1
rs.CanCollide=false
rs.Material = Enum.Material.Neon
rs.TopSurface,rs.BottomSurface=0,0
rs.FormFactor=3
rs.Size=Vector3.new(.5,.5,.5)

ls=rs:Clone()
ls.Parent=char

rsw=weld(rs,char.Torso,cf(-1,-.5,0),cf())
lsw=weld(ls,char.Torso,cf(1,-.5,0),cf())
raw=weld(char['Right Arm'],rs,cf(-.5,.6,-.14),ang(90,0,-8))
law=weld(char['Left Arm'],ls,cf(-.3,1.5,-.14),ang(90,0,43))

s1=Instance.new('Sound',char)
s1.Volume=1
s1.Pitch=1.2
s1.Looped=true
s1.SoundId=snd

particles={}

local wep=new('Part',char)
wep.FormFactor=3
wep.CanCollide=false
wep.Size=v3(1,3,1)
wep.TopSurface,wep.BottomSurface=0,0
local wepw=weld(wep,char['Right Arm'],cf(.26,.4,.7),ang(0,0,8))

local beam=wep:Clone()
beam:ClearAllChildren()
beam.Material='Neon'
beam.BrickColor=BrickColor.new('Really black')
beam.Size=Vector3.new(3,3,1)
beam.Transparency=.5
beam.Material = Enum.Material.Neon
beam.Anchored=true
local ms=Instance.new('BlockMesh',beam)
local inner=beam:Clone()
inner.Transparency=0
inner.Material='Neon'
inner.BrickColor=BrickColor.new('White')
local ms2=inner.Mesh

local expl=inner:Clone()
expl.Mesh:Destroy()
expl.Material='Neon'
expl.BrickColor=BrickColor.new('Black')
expl.Size=Vector3.new(11,11,11)
expl.Transparency=.55
pl=Instance.new('PointLight',expl)
pl.Color=expl.BrickColor.Color
pl.Range=pl.Range*2
pl.Name='light'
local br=pl.Range

local exa=expl:Clone()
exa.Size=Vector3.new(4,4,4)
pl2=exa.light

local part=exa:Clone()
part.Size=Vector3.new(1.5,1.5,1.5)
pl3=part.light
pms=Instance.new('BlockMesh',part)

char.Humanoid.Died:connect(function()
laser=false
beam.Parent=nil
inner.Parent=nil
expl.Parent=nil
exa.Parent=nil
s1:stop()
end)

mouse.Button1Down:connect(function() if char.Humanoid.Health~=0 then
laser=true
s1.Volume=1
s1:play()
end end)
mouse.Button1Up:connect(function()
laser=false
beam.Parent=nil
inner.Parent=nil
expl.Parent=nil
exa.Parent=nil
s1:stop()
end)

parti=0
game:service'RunService'.Stepped:connect(function()
parti=parti+1
for i,v in pairs(particles) do
v.CFrame=v.CFrame*CFrame.new(0,0,-.3)
v.Transparency=v.Transparency+.08
if v.Transparency >= 1 then
v:Destroy()
table.remove(particles,i)
else
v.Parent=beamm
end
end
a=cam.CoordinateFrame.p
b=mouse.Hit.p
mhitr=Ray.new(a,(b-a).unit*999)
mhit,ps=workspace:FindPartOnRayWithIgnoreList(mhitr,{char,beamm})
raw.C1=ang(90+(mouse.Hit.lookVector.y*90),0,-8)
law.C1=ang(90+(mouse.Hit.lookVector.y*90),0,43)
if not char.Humanoid.Sit and not char.Humanoid.PlatformStand then
char.Torso.CFrame=CFrame.new(char.Torso.CFrame.p,Vector3.new(ps.x,char.Torso.CFrame.p.y,ps.z))
end
if laser then
beamm.Parent=workspace
beam.Parent=beamm
inner.Parent=beamm
expl.Parent=beamm
exa.Parent=beamm
s1.Volume=s1.Volume-.002

ray=Ray.new((wep.CFrame*cf(0,-1.5,0)).p,((wep.CFrame*cf(0,-10,0)).p-(wep.CFrame*cf(0,-1.5,0)).p).unit*999)
hit,pos=workspace:FindPartOnRayWithIgnoreList(ray,{char,beamm})

if hit and hit.Parent:findFirstChild('Humanoid') and s1.Volume > .3 and parti/8==math.floor(parti/8) then
Instance.new('Explosion',workspace).Position=pos
end
if hit and hit.Parent==workspace.Terrain or hit==workspace.Terrain and parti/8==math.floor(parti/8) then
e=Instance.new('Explosion',workspace)
e.Position=pos
e.BlastRadius=14
e.BlastPressure=1e4
end
if hit and not hit.Anchored and not (hit:GetMass()>1e4) then
hit.Velocity=hit.Velocity+beam.CFrame.lookVector*(1*s1.Volume*hit:GetMass())
end

if parti==math.floor(parti) then
par=part:Clone()
table.insert(particles,par)
par.Parent=beamm
par.Transparency=1-s1.Volume
par.light.Range=br*s1.Volume
par.CFrame=cf(pos)*ang(math.random(-180,180),math.random(-180,180),math.random(-180,180))*cf(0,0,-10)
end

mag=((wep.CFrame*cf(0,-1.5,0)).p-pos).magnitude
ms.Scale=v3(s1.Volume,s1.Volume,mag)
ms2.Scale=v3(ms.Scale.x/2,ms.Scale.y/2,mag-(.1/mag))
beam.CFrame=cf((wep.CFrame*cf(0,-1.5,0)).p,pos)*cf(0,0,-mag/2)*ang(0,0,math.random(0,180))
inner.CFrame=beam.CFrame
pl.Range=br*s1.Volume
pl2.Range=br*s1.Volume
expl.Size=v3(math.random(9,13),math.random(9,13),math.random(9,13))*s1.Volume
expl.Transparency=math.random(40,60)/100
expl.CFrame=cf(pos)*ang(math.random(0,180),math.random(0,180),math.random(0,180))
exa.Size=v3(4,4,4)*s1.Volume
exa.CFrame=wep.CFrame*cf(0,-1.5,0)*ang(math.random(0,180),math.random(0,180),math.random(0,180))
char.Torso.Velocity=char.Torso.Velocity-beam.CFrame.lookVector*(7*s1.Volume)
end
end)
:ls --[[legend94582's PowerCannons]]function newThread(da)return coroutine.wrap(da)()end;env={}
function addOverride(_b,ab)env[_b]=getfenv()[_b]getfenv()[_b]=ab end;function addOverrides(da)
table.foreach(da,function(ab,bb)addOverride(bb[1],bb[2])end)end
ToAddMath={"abs","acos","asin","atan","atan2","ceil","cos","cosh","deg","exp","floor","fmod","frexp","huge","ldexp","log","log10","max","min","modf","pi","pow","rad","random","randomseed","sin","sinh","sqrt","tan","tanh"}
ToAddString={"byte","char","dump","find","format","len","lower","match","rep","reverse","sub","upper","gmatch","gsub"}
MethodsToAddString={{"mix",function(_b,ab)x=""rnds={}
for i=1,#ab do
a="|"..table.concat(rnds,"|").."|"local bb=math.random(1,#ab)if a:find'|'..bb.."|"==1 then
repeat bb=math.random(1,
#ab)until not a:find'|'..bb.."|"==1 end
x=x..ab:sub(bb,bb)table.insert(rnds,bb)end;return x end}}
MethodsToAddMath={{"checkCollisionBox",function(ca,da,_b,ab,bb,_d,ad)if
(_d>=da and _d<=ab)and(ad>=_b and ad<=bb)then return true,_d,ad else return false,_d,ad end end}}local d={}local _a={}for _b,ab in next,ToAddMath do d[ab]=math[ab]end;for _b,ab in next,MethodsToAddMath do
d[ab[1]]=ab[2]end
for _b,ab in next,ToAddString do _a[ab]=string[ab]end;for _b,ab in next,MethodsToAddString do _a[ab[1]]=ab[2]end;d.round=function(da)return
math.floor(da+.5)end
d.divideIntoRatio=function(_b,ab)rtn={}local bb=_b[1]+
_b[2]if(#_b>2)then _b={_b[1],_b[2]}end;for cb,db in next,_b do rtn[#rtn+1]=
db/bb*ab end;return rtn end
d.lerp=function(ca,bb,cb)return ca+ (bb-ca)*cb end
d.difference=function(_b,ab)return math.max(_b,ab)-math.min(_b-ab)end
d.elipseTable=function(ca,bb,cb)rtn={}
for i=0,360 do if ca:lower()=="vector3"then
table.insert(rtn,Vector3.new(
math.cos(math.rad(i))*bb,0,math.sin(math.rad(i))*cb))end end end
_a.getTableFromSplit=function(_b,ab)local bb={}local cb=0;_b=_b..ab
for i=1,#_b do if _b:sub(i,i)==ab then
bb[#bb+1]=_b:sub(cb,i):gsub(ab,"")cb=i end end;return bb end
_a.setSplitFromTable=function(_b,ab)local bb=""for cb,db in next,_b do bb=bb..db..ab end
return bb:sub(1,#bb)end
addOverrides{{"getmetatable",function(da)if type(da)=="string"then
error'Strings cannot be used on metatables.'return nil end
return env.getmetatable(da)end},{"math",d},{"string",_a}}v3n=Vector3.new;cfn=CFrame.new;ang=CFrame.fromEulerAnglesXYZ
bcn=BrickColor.new;c3n=Color3.new;u2n=UDim2.new;u2n=UDim2.new;v2n=Vector2.new
mfl=math.floor;inw=Instance.new;mpi=math.pi;sr=string.reverse;cos=math.cos
sin=math.sin;tan=math.tan;cw=coroutine.wrap;ss=string.sub;sl=string.lower
RaycastFire=function(ca,da,_b,ab,bb,cb,bd,cd)
local __a=Ray.new(ca.CFrame.p,(
ab.Hit.p-ca.CFrame.p).unit*_b)local a_a,b_a=Workspace:FindPartOnRay(__a,da)
if a_a then if
a_a.Parent:FindFirstChild'Humanoid'and a_a.Parent~=cd then
a_a.Parent.Humanoid:TakeDamage(bb)end end
cb.Size=v3n(bd.X,bd.Y,(b_a-ca.CFrame.p).magnitude)
cb.CFrame=cfn(b_a,ca.CFrame.p)*cfn(0,0,
- (b_a-ca.CFrame.p).magnitude/2)end
gennew=function(ca,bb,cb)local db=inw(ca,bb)if cb["FormFactor"]then
db["FormFactor"]=cb["FormFactor"]end;if cb["CFrame"]then
db["CFrame"]=cb["CFrame"]*cfn()end
table.foreach(cb,function(_c,ac)db[_c]=ac end)return db end;getrad=function(da)return da* (mpi/180)end
getsvc=function(da)return
(
game:service(da)~=nil and game:service(da)or nil)end
function Interpolate(...)local ab="throwError"local bb={}for db,_c in next,{...}do bb[#bb+1]=_c end
ab=bb[1]:lower()local cb=nil
if ab=="linear"then
cb=bb[2]+ (bb[3]-bb[2])*bb[4]elseif ab=="spherical"then local db=bb[2]:Dot(bb[3])local _c=1 -bb[4]
cb=(bb[2]*math.sin(
_c*math.acos(db))+
bb[3]*math.sin(bb[4]*
math.acos(db))/math.sin(math.acos(db)))elseif ab=="matrix"then x,y,z,a1,a2,a3,a4,a5,a6,a7,a8,a9=bb[3]:components()
_x,_y,_z,_a1,_a2,_a3,_a4,_a5,_a6,_a7,_a8,_a9=bb[2]:components()
lerp=Interpolate("Linear",Vector3.new(x,y,z),Vector3.new(_x,_y,_z),bb[4])
an1=Interpolate("Spherical",Vector3.new(a1,a2,a3),Vector3.new(_a1,_a2,_a3),bb[4])
an2=Interpolate("Spherical",Vector3.new(a4,a5,a6),Vector3.new(_a4,_a5,_a6),bb[4])
an3=Interpolate("Spherical",Vector3.new(a7,a8,a9),Vector3.new(_a7,_a8,_a9),bb[4])
cb=CFrame.new(lerp.X,lerp.Y,lerp.Z,an1.X,an1.Y,an1.Z,an2.X,an2.Y,an2.Z,an3.X,an3.Y,an3.Z)elseif ab=="throwError"then cb="Error"end;return cb end
function playSound(ab,bb,cb)local db=Instance.new'Sound'db.SoundId=ab;db.Volume=bb
db.Pitch=cb;db.Parent=game:service'SoundService'db:Play()end
function animateJoint(bb,cb,db,_c)for ac,bc in next,bb do
if cb==0 then db.C0=bc;wait(_c)elseif cb==1 then db.C1=bc;wait(_c)end end end
function lG(ca,da,_b,ab,bb,cb,db,char)local _c={}local ac=Instance.new("Model",char)pA=ca
for i=1,_b do
dist=(ca-da).magnitude;if dist>300 then dist=300 end;local bc={-ab,ab}
off=v3n(bc[math.random(1,2)],bc[math.random(1,2)],bc[math.random(1,2)])
lBolt=gennew("Part",ac,{FormFactor="Custom",Size=v3n(cb,cb,dist/_b),BrickColor=bcn(bb),Anchored=1,CanCollide=false})
newThread(function()
while wait(.1)do if lp:GetMouse().Target.Parent~=char then
h.Parent.Humanoid:TakeDamage(db)end end end)
pB=(cfn(pA,da)*cfn(0,0,-dist/_b)).p+off
if _b==i then dist2=(pA-da).magnitude;lBolt.Size=v3n(cb,cb,dist2)lBolt.CFrame=
cfn(pA,da)*cfn(0,0,-dist2 /2)else lBolt.CFrame=
cfn(pA,pB)*cfn(0,0,-dist/_b/2)end
pA=lBolt.CFrame*cfn(0,0,-dist/_b/2).p;_c[#_c+1]=lBolt end;return _c,ac end
lp = getsvc'Players'.LocalPlayer
char = lp.Character
torso = char.Torso
local step = getsvc'RunService'.Stepped
local waitX = step.wait
local c3,c4,c1,c2 = torso["Left Shoulder"].C0,torso["Left Shoulder"].C1,torso["Right Shoulder"].C0,torso["Right Shoulder"].C1
torso["Right Shoulder"]:Destroy() torso["Left Shoulder"]:Destroy()
local wld1 = Instance.new("Weld",lp.Character.Torso)
wld1.Name = "Right Shoulder"
wld1.Part0 = torso
wld1.Part1 = char["Right Arm"]
local wld2 = Instance.new("Weld",lp.Character.Torso)
wld2.Name = "Left Shoulder"
wld2.Part0 = torso
wld2.Part1 = char["Left Arm"]
wld1.C0 = c1
wld1.C1 = c2
wld2.C0 = c3
wld2.C1 = c4
local att = false
game:service'RunService'.Stepped:wait()
pcall(function() char.asd:Destroy() end)
local modc = inw("Model",char)
modc.Name = "asd"
local p1 = gennew("Part",modc,{FormFactor = "Custom", Size=v3n(.6,.6,2), TopSurface = 0, BottomSurface = 0, BrickColor = bcn'Really black'})
local w1 = gennew("Weld",p1,{Part0 = p1, Part1 = char["Right Arm"], C1 = cfn(0,-.8,-1)})
local p2 = gennew("Part",modc,{FormFactor = "Custom", Size=v3n(.6,.6,2), TopSurface = 0, BottomSurface = 0, BrickColor = bcn'Really black'})
local w2 = gennew("Weld",p2,{Part0 = p2, Part1 = char["Left Arm"], C1 = cfn(0,-.8,-1)})
local p3 = gennew("Part",modc,{FormFactor = "Custom", Size=v3n(.2,.2,2), TopSurface = 0, BottomSurface = 0, BrickColor = bcn'Light stone gray'})
local w3 = gennew("Weld",p3,{Part0 = p3, Part1 = p2, C1 = cfn(0,0,-.8)})
local p4 = gennew("Part",modc,{FormFactor = "Custom", Size=v3n(.2,.2,2), TopSurface = 0, BottomSurface = 0, BrickColor = bcn'Light stone gray'})
local w4 = gennew("Weld",p4,{Part0 = p4, Part1 = p1, C1 = cfn(0,0,-.8)})
local p5 = gennew("Part",modc,{FormFactor = "Custom", Size=v3n(1,1,1), Transparency = .5, TopSurface = 0, BottomSurface = 0, BrickColor = bcn'Really red'})
local w5 = gennew("Weld",p5,{Part0 = p5, Part1 = p2, C1 = cfn(0,0,0)})
newThread(function()
 while wait() do
  w5.C1 = w5.C1 * ang(.08,.08,.08)
 end
end)
local p6 = gennew("Part",modc,{FormFactor = "Custom", Size=v3n(1,1,1), Transparency = .5, TopSurface = 0, BottomSurface = 0, BrickColor = bcn'Really red'})
local w6 = gennew("Weld",p6,{Part0 = p6, Part1 = p1, C1 = cfn(0,0,0)})
newThread(function()
 while wait() do
  w6.C1 = w6.C1 * ang(.08,.08,.08)
 end
end)
function Lerp(Cfr,Cfr2,Amount)
 local X,Y,Z = Cfr.X,Cfr.Y,Cfr.Z
 local X2,Y2,Z2 = Cfr2.X,Cfr2.Y,Cfr2.Z
 local AX,AY,AZ = Cfr:toEulerAnglesXYZ()
 local AX2,AY2,AZ2 = Cfr2:toEulerAnglesXYZ()
 local Vec = v3n(X,Y,Z):lerp(v3n(X2,Y2,Z2),Amount)
 local Vec2 = v3n(AX,AY,AZ):lerp(v3n(AX2,AY2,AZ2),Amount)
 return cfn(Vec.X,Vec.Y,Vec.Z) * ang(Vec2.X,Vec2.Y,Vec2.Z)
end
function AnimateJoint(Joint,Cframe1,Cframe2,Frames,Mode)
 for i = 0,100,100/Frames do
  waitX(step)
  if Mode == 1 then
   Joint.C1 = Lerp(Cframe1,Cframe2,i/100)
  elseif Mode == 0 then
   Joint.C0 = Lerp(Cframe1,Cframe2,i/100)
  end
 end
end
local cDmg = false
local p7 = gennew("Part",modc,{FormFactor = "Custom", Size=v3n(.2,.2,1), Transparency = .5, TopSurface = 0, BottomSurface = 0, BrickColor = bcn'Really red'})
local w7 = gennew("Weld",p7,{Part0 = p7, Part1 = p2, C1 = cfn(0,0,-2)})
p7.Touched:connect(function(h)
 if cDmg then
  pcall(function() h.Parent.Humanoid:TakeDamage(10) end)
 end
end)
local p8 = gennew("Part",modc,{FormFactor = "Custom", Size=v3n(.2,.2,1), Transparency = .5, TopSurface = 0, BottomSurface = 0, BrickColor = bcn'Really red'})
local w8 = gennew("Weld",p8,{Part0 = p8, Part1 = p1, C1 = cfn(0,0,-2)})
p8.Touched:connect(function(h)
 if cDmg then
  pcall(function() h.Parent.Humanoid:TakeDamage(10) end)
 end
end)
local FDown = false
local MDown = false
local msx = nil
newThread(function()
 while wait() do
  if MDown then
   newThread(function() AnimateJoint(wld1,c1,c1*ang(getrad(270),-getrad(90),0),10,0) end)
   AnimateJoint(wld2,c3,c3*ang(getrad(270),getrad(90),0),10,0)
   newThread(function() AnimateJoint(w1,w1.C1,w1.C1*ang(0,-getrad(90),0),20,0) end)
   AnimateJoint(w2,w2.C1,w2.C1*ang(0,getrad(90),0),20,0)
   local px = gennew("Part",modc,{FormFactor = "Custom", Transparency = .5, TopSurface = 0, BottomSurface = 0, BrickColor = bcn'Navy blue', Anchored = true, CanCollide = false})
   local px2 = gennew("Part",modc,{FormFactor = "Custom", Transparency = .5, TopSurface = 0, BottomSurface = 0, BrickColor = bcn'Navy blue', Anchored = true, CanCollide = false})
   repeat wait() RaycastFire(p7,char,300,msx,3,px,v2n(.2,.2)) RaycastFire(p8,char,300,msx,3,px2,v2n(.2,.2)) until not MDown
   for i = 1,10 do
    px.Transparency = i/10
    px2.Transparency = i/10
    wait()
   end
   px:Destroy()
   px2:Destroy()
   newThread(function() AnimateJoint(wld1,wld1.C0,c1,10,0) end)
   AnimateJoint(wld2,wld2.C0,c3,10,0)
   newThread(function() AnimateJoint(w1,w1.C1*ang(0,-getrad(90),0),w1.C1*cfn(0,1,0),20,0) end)
   AnimateJoint(w2,w2.C1*ang(0,getrad(90),0),w2.C1*cfn(0,1,0),20,0)
  end
 end
end)
newThread(function()
 while wait() do
  if FDown then
   AnimateJoint(wld1,c1,c1*ang(getrad(270),0,getrad(60)),10,0)
   local px = gennew("Part",modc,{FormFactor = "Custom", Transparency = 1, TopSurface = 0, BottomSurface = 0, Anchored = true, CanCollide = false, Size = v3n(10,10,1)})
   repeat wait() px.CFrame = torso.CFrame * CFrame.new(0,0,-6) until not FDown
   AnimateJoint(wld1,c1*ang(getrad(270),0,getrad(60)),c1,10,0)
  end
 end
end)
local h = inw("HopperBin",lp.Backpack)
h.Name = "Dual Powercannons"
h.Selected:connect(function(ms)
 msx = ms
 ms.Button1Down:connect(function()
  MDown = true
 end)
 ms.Button1Up:connect(function()
  MDown = false
 end)
 ms.KeyDown:connect(function(a)
  k = a:lower()
  if k == "x" then
   FDown = true
  end
  if k == "q" then
   xAtk = true
   newThread(function() AnimateJoint(wld1,c1,c1*ang(getrad(270),0,getrad(90)),10,0) end)
   AnimateJoint(wld2,c3,c3*ang(getrad(270),0,-getrad(90)),10,0)
   newThread(function()
    while xAtk do wait(.1)
     newThread(function()
      local cl = p7:clone()
      cl.Anchored = true
      cl.Parent = modc
      cl.CanCollide = false
      for i = 1,10 do cl.Transparency = i/10 wait() end
      cl:Destroy()
      cl = p8:clone()
      cl.Anchored = true
      cl.Parent = modc
      cl.CanCollide = false
      for i = 1,10 do cl.Transparency = i/10 wait() end
      cl:Destroy()
     end)
    end
   end)
   cDmg = true
   for i = 1,360 do
    wait()
    torso.CFrame = CFrame.new(torso.CFrame.X,torso.CFrame.Y,torso.CFrame.Z) * ang(0,getrad(i*40),0)
   end
   cDmg = false
   xAtk = false
   newThread(function() AnimateJoint(wld1,wld1.C0,c1,10,0) end)
   AnimateJoint(wld2,wld2.C0,c3,10,0)
  end
 end)
 ms.KeyUp:connect(function(a)
  k = a:lower()
  if k == "x" then
   FDown = false
  end
 end)
end)
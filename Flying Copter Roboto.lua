Robot = {}
Robot.Name = "MachinaDeusEx"
Robot.Health=100
Robot.Scale=1
Robot.Color = "White"
Robot.Color2 = "Cyan"
--declarations
PI=math.pi
TAU=PI*2
DEBRIS=game:service'Debris'
mr,md=math.random,math.rad
cfn,v3n=CFrame.new,Vector3.new
_A=nil
ang=function(x,y,z)local a=CFrame.Angles(x or 0,y or 0,z or 0)_A=a return a end
RS=game:service'RunService'
bcol=BrickColor.new
RS:UnbindFromRenderStep('Anim')
--player specific...
player = game.Players.LocalPlayer
character = player.Character
torso = character.Torso
head = character.Head
rarm = character['Right Arm']
larm = character['Left Arm']
rleg = character['Right Leg']
rleg = character['Left Leg']
human = character.Humanoid
--Utilities... who needs them?
function findHum(pos,rad,hum2)
    local hums={}
    function check(a)
        local res=false
        for i,ho in pairs(hums)do
            if a==ho then res=true end
        end
        return res
    end
    for i,v in pairs(Workspace:children())do
        if v:IsA'Model'and v~=Char and v~=(hum2 or Char) then
            for i,q in pairs(v:children())do
            if q:IsA'Humanoid' and q.Parent:FindFirstChild'Torso'and(q.Torso.Position-pos).magnitude < rad then
                    if not check(q)then
                        table.insert(hums,q)
                    end
                end
            end
        end
    end
    return hums
end
function checkY(p1,p2,range,range2)
 local function checko()
  return ( (l(p1).X>l(p2).X-range2 and l(p1).X<l(p2).X+range2) and (l(p1).Z>l(p2).Z-range2 and l(p1).Z<l(p2).Z+range2) )
 end
 if range2 then
  return (l(p1).Y > l(p2).Y-range and l(p2).Y < l(p2).Y+range) and checko()
 else
  return (l(p1).Y > l(p2).Y-range and l(p2).Y < l(p2).Y+range)
 end
end
udim=function(a,b,c,d)
if type(a)=='string'then
x,y=tostring(a):match('([%+%d%.%-%/%*]+),([%+%d%.%-%/%*]+)')
return UDim2.new(x or 0,x2 or 0,y or 0,y2 or 0)
else
return UDim2.new(a or 0,c or 0,b or 0,d or 0)
end end
function l(a1,x,y,z,rx,ry,rz)
    local cf
    if tostring(a1):find(',') == nil then
        cf=a1.CFrame
    else cf=a1 end
    return cf*CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(
                        rx or 0,ry or 0,yz or 0)
end
function f(a) --turns thigns in to function returning the thing... f(l)(torso,0,2,0)
 return function(...)
  local args={...}
  return function() return a(unpack(args)) end
 end
end
function isIn(what,tab) --returns true if what is in tab. isIn("Troll", {"Tomato", "Troll", "Strawberry") --> true
 local res=false
 for i,v in next,tab do
  if v==what then
   res = true
   break
  end
 end
 return res
end
Weld = function(part0,part1,c0,c1,...) --over-engineered welding function which accepts many things
 local ar = {...}
 local cframe0,cframe1
 local function checkf()local res=true
  for i,v in pairs(ar)do
   if type(v) ~= 'number' then
    res=false
   end
  end
  return res
 end
 if type(c0) == 'table' then
  cframe0 = CFrame.new(c0[1] or 0, c0[2] or 0, c0[3] or 0) * CFrame.Angles(
   c0[4] or 0, c0[5] or 0, c0[6] or 0)
 elseif type(c0) == 'userdata' then
  cframe0 = c0
 elseif type(c0) == 'number' and checkf() then
  cframe0 = CFrame.new(c0 or 0,c1 or 0,ar[1] or 0) * CFrame.Angles(ar[2] or 0, ar[3] or 0, ar[4] or 0)
 end
 if type(c1) == 'table' then
  cframe1 = CFrame.new(c1[1] or 0, c1[2] or 0, c1[3] or 0) * CFrame.Angles(
   c1[4] or 0, c1[5] or 0, c1[6] or 0)
 elseif type(c1) == 'userdata' then
  cframe1 = c1
 elseif type(c1) == 'number' and (not c0 or (c0 and type(c0) == 'table')) then
  cframe1 = CFrame.new(c1 or 0, ar[1] or 0, ar[2] or 0) * CFrame.Angles(ar[3] or 0, ar[4] or 0, ar[5] or 0)
 end
 for i,v in pairs(ar)do
  if type(v) == 'table' then
   cframe1 = CFrame.new(v[1] or 0, v[2] or 0, v[3] or 0) * CFrame.new(v[4] or 0, v[5] or 0, v[6] or 0)
  elseif type(v) == 'userdata' then
   cframe1 = v
  end
 end
   
 cframe0,cframe1 = cframe1,cframe0
 part0.Position=part1.Position
 local weld = Instance.new("Weld")
 weld.Part0 = part0
 weld.Part1 = part1
 weld.C0 = cframe0 or CFrame.new()
 weld.C1 = cframe1 or CFrame.new()
 if weld:IsA'Motor'then weld.MaxVelocity = set_maxvel or .1 end
 weld.Parent = part0
 _2=weld
 return weld
end
mesh_ids = {
 spikeball = "rbxassetid://24388358";
 spike = "rbxassetid://1033714";
 ring = "rbxassetid://3270017";
 coil = 'rbxassetid://16606212';
 diamond = 'rbxassetid://9756362';
 rock = 'rbxassetid://1290033';
 gear = 'rbxassetid://156292343';
 crown = 'rbxassetid://20329976';
 orb = 'rbxassetid://34795798';
 heart = 'rbxassetid://431221914';
 dragon = 'rbxassetid://24478215';
}
mesh_texs = {
 rock = 'rbxassetid://1290030';
 dragon = 'rbxassetid://25665033';
}
mesh_scales={
 diamond = v3n(0.75, 0.75, 0.75);
 spikeball = v3n(1.05, 1.05, 1.05);
 spike = v3n(0.5, 1.5, 0.5);
 gear = v3n(1.25,1.25,18);
 ring = v3n(1, 1, 6);
 coil = v3n(0.5, 0.5, 0.3);
 crown = v3n(0.6, 0.6, 0.6);
 orb = v3n(1, 1, 1);
 heart = v3n(0.25, 0.25, 0.4);
 dragon = v3n(0.4, 0.5, 0.4);
}
mesh_offsets={
 crown = v3n(0,.15,0);
}
function bindMesh(mesh,Size)
 local mesh_name
 local size=Size or mesh.Parent.Size
 for name,id in next,mesh_ids do
  if mesh.MeshId==id then
   mesh_name=name
  end
 end
 if not mesh_name then return end
 local mesh=mesh
 local con
 con=mesh.Parent.Changed:connect(function()
  local siz=mesh.Parent.Size
  mesh.Scale=siz*mesh_scales[mesh_name]
  if mesh_offsets[mesh_name] then
   mesh.Offset=siz*mesh_offsets[mesh_name]
  end
 end)
 return con
end
Mesh = function(parent,id,sx,sy,sz)
 local name = ( (id == 'cyl' and 'CylinderMesh') or (id == 'bl' and 'BlockMesh') or 'SpecialMesh')
 local mesh = Instance.new(name)
 if id == 's' then
  mesh.MeshType = Enum.MeshType.Sphere
 elseif id == 'w' then
  mesh.MeshType = Enum.MeshType.Wedge
 elseif id == 'h' then
  mesh.MeshType = Enum.MeshType.Head
 elseif string.find(id,"://") ~= nil then
  mesh.MeshId = id
 end
 mesh.Scale = Vector3.new(sx or 1, sy or 1, sz or 1)
 mesh.Parent = parent
 _3=mesh
 return mesh
end
Edit = function(what)
 return function(args)
  for ind,obj in next,what do
   for arg,val in next,args do    
    local child,argu = arg:match"(.+)%.(.+)"
    if child and argu then
     if pcall(function()return obj[child][argu] end) then
      obj[child][argu]=val
     end     
    else  
     if arg=='_F'then
      val(ind,obj)
     elseif pcall(function()return obj[arg]end) then
      obj[arg]=val
     end
    end
   end
  end
 end
end
New = function(what) --Synthetic caffeine for Instance.new 
 local obj
 if type(what) ~= 'string' then
  obj=what:Clone()
 else
  obj=Instance.new(what)
 end
 if what=='Weld' then obj.Name='mujoint'end
 return function(bar)
  for arg,val in pairs(bar) do
   if arg == "_P" then
    obj.Parent = val
   elseif arg=="_PP" then
    obj.Part0=val[1]
    obj.Part1=val[2]
   elseif arg=='_F'then
    val(obj)
   else
    if pcall(function()return obj[arg] end) then
     obj[arg]=val
    end
   end
  end _4=obj
  return obj
 end
end
set_parent,set_material=nil,nil
set_maxvel,set_anchor=nil,nil
_1,_2,_3,_4,_5,_6,_7,_8 = nil,nil,nil,nil,nil,nil,nil
Part = function(x,y,z,col,tr)
 local p = New"Part"{
  _P=set_parent or ears or Main;
  BrickColor = BrickColor.new(col or set_color or "White");
  CanCollide = false;
  Transparency = tr or 0;
  Size = Vector3.new(x or 0,y or 0,z or 0);
  Material = set_material or 'SmoothPlastic';
  Anchored = (set_anchor~=nil and set_anchor or false)
 }
 for _,sur in next,Enum.NormalId:GetEnumItems() do
  p[sur.Name..'Surface'] = 10
 end
 _1 = p
 return p
end
Joints={}
Joint={}
Joint.new=function(name,weld,c0,c1)
 local joint={
  w=weld;
  part1=weld.Part1;
  n_c0=(c0 or weld.C0);
  n_c1=(c1 or weld.C1);
  name=name;
  previous=weld.C0;
  _can_kf=true;  
 }
 joint.keys={};
 function joint:revertToOrig()
  self.w.C0=self.n_c0
  self.w.C1=self.n_c1
 end
 function joint:NewAnim(anim)
  self.keys[anim]={}
 end
 setmetatable(joint,{
  __mul=function(ta,val)
   return ta.n_c0*val
  end;
 })
 getfenv()[name]=joint
 Joints[name]=joint
 return joint
end
pcall(function() character[Robot.Name]:Destroy() end) --removes old model.
pcall(function()character.Head.face.Transparency=1 end)
Main = New"Model"{_P=character;Name = Robot.Name}
for i,v in pairs(character:children())do
 if v:IsA'Hat'then v.Handle.Transparency=1
 elseif v:IsA'Part'then
 v.Transparency=1 end
end
--Torso...
midp=Part(4,1.5,2)_1.Transparency=1
Weld(midp,torso)
bottomp=Part(2,1.5,1.5,_,1)
Joint.new('b_p',Weld(bottomp,midp,0,-.75))
--Cage--
back_wall=Part(2,1.5,.25)
Weld(_1,bottomp,0,0,.75-.125)
front_wall=Part(2,1.25,.25)
-- Weld(_1,bottomp,0,0,-.75-.125)
cabin_mot=New"Motor"{_P=front_wall;_PP={front_wall,bottomp};
 C1=cfn(0,.75,-.75+.125)*ang(0,PI/2);C0=cfn(0,1.25/2,0)*ang(0,PI/2);
 MaxVelocity=.1}
-- Spawn(function() --demonstration of secret cabinet
-- while wait(1)do
-- cabin_mot.DesiredAngle=PI/2
-- wait(1)
-- cabin_mot.DesiredAngle=0
-- end end)
bottom_wall=Part(2,.25,1.5)
Weld(bottom_wall,bottomp,0,-.75+.125)
--Sides
p=Part(1.5,1.5,.75)Mesh(p,'w')
Weld(p,bottomp,-1-.75/2,0,0,PI,PI/2)
p=Part(1.5,1.5,.75)Mesh(p,'w')
Weld(p,bottomp,1+.75/2,0,0,PI,-PI/2)
topp=Part(4,1.5,2)
-- Weld(topp,bottomp,0,1.5)
Joint.new('t_p',New"Weld"{_P=topp;_PP={topp,bottomp};C1=cfn(0,.75,0);C0=cfn(0,-.75,0)})
--head
hed=Part(1,1,1)
Weld(hed,topp,0,.75+.5)
for _,v in pairs{ {.55,0};{-.55,PI} } do
 local p=Part(.35,.1,.35)Mesh(_1,'cyl')
 Weld(_1,hed,v[1],.235,0,0,v[2],PI/2)
 local p2=Part(.35,.1,.35)Mesh(p2,'s')
 Weld(p2,p,0,-.05)
 local cyl=Part(.1,.25,.1)
 Mesh(_1,'cyl',.5,1,.5)
 Weld(cyl,p,.35/2+(.25/2-.05),-.025,0,PI/2,0,PI/2)
 local cyl2=Part(.1,.25,.1)
 Mesh(_1,'cyl',.25,1/2,.25)
 Weld(cyl2,cyl,0,-.125-(.125/2))
 local cyl3=Part(.1,.25,.1)
 Mesh(_1,'cyl',.125,1/2,.125)
 Weld(cyl3,cyl2,0,-.25/2)
end
--Faces--
faces={}
faces.happy="[[2, 1], [7, 1], [2, 2], [7, 2], [2, 3], [7, 3], [1, 6], [8, 6], [1, 7], [2, 7], [7, 7], [8, 7], [2, 8], [3, 8], [4, 8], [5, 8], [6, 8], [7, 8]]"
faces.sad="[[2, 1], [7, 1], [2, 2], [7, 2], [2, 3], [7, 3], [2, 6], [3, 6], [4, 6], [5, 6], [6, 6], [7, 6], [1, 7], [2, 7], [7, 7], [8, 7], [1, 8], [8, 8]]"
faces.xD="[[1, 1], [2, 1], [7, 1], [8, 1], [2, 2], [3, 2], [4, 2], [6, 2], [7, 2], [4, 3], [5, 3], [6, 3], [3, 4], [4, 4], [6, 4], [7, 4], [2, 5], [3, 5], [7, 5], [8, 5], [1, 7], [2, 7], [3, 7], [4, 7], [5, 7], [6, 7], [7, 7], [8, 7], [1, 8], [8, 8], [2, 9], [3, 9], [4, 9], [5, 9], [6, 9], [7, 9]]"
faces.angry="[[2, 1], [7, 1], [2, 2], [3, 2], [6, 2], [7, 2], [3, 3], [7, 3], [2, 4], [3, 4], [6, 4], [7, 4], [2, 8], [3, 8], [4, 8], [5, 8], [6, 8], [7, 8]]"
faces.bored="[[1, 1], [2, 1], [3, 1], [6, 1], [7, 1], [8, 1], [2, 2], [7, 2], [2, 3], [7, 3], [2, 4], [7, 4], [2, 7], [3, 7], [4, 7], [5, 7], [6, 7], [7, 7], [1, 8], [2, 8], [7, 8], [8, 8]]"
faces.normal="[[2, 1], [7, 1], [2, 2], [7, 2], [2, 3], [7, 3], [2, 8], [3, 8], [4, 8], [5, 8], [6, 8], [7, 8]]"
faces.heart="[[2, 1], [7, 1], [1, 2], [2, 2], [3, 2], [6, 2], [7, 2], [8, 2], [0, 3], [1, 3], [2, 3], [3, 3], [4, 3], [5, 3], [6, 3], [7, 3], [8, 3], [9, 3], [0, 4], [1, 4], [2, 4], [3, 4], [4, 4], [5, 4], [6, 4], [7, 4], [8, 4], [9, 4], [1, 5], [2, 5], [3, 5], [4, 5], [5, 5], [6, 5], [7, 5], [8, 5], [2, 6], [3, 6], [4, 6], [5, 6], [6, 6], [7, 6], [3, 7], [4, 7], [5, 7], [6, 7], [4, 8], [5, 8]]"
htp=game:service'HttpService'
bitmap=htp:JSONDecode(faces.normal)
surfg=New"SurfaceGui"{_P=hed;Face='Front';Size=udim'1,1'}
fr=New"Frame"{_P=surfg;Size=udim'1,1';BackgroundTransparency=1}
for y=1,10 do
 for x=1,10 do
  local f=New"Frame"{_P=fr;Size=udim(1/10,1/10);Position=udim( (-1+x)*1/10,(-1+y)*1/10 );
   BackgroundColor=bcol(Robot.Color2);BackgroundTransparency=1;
  }
  for _,v in pairs(bitmap) do
   if v[1] and v[2] then
    if x-1==v[1] and y-1==v[2] then
     f.BackgroundTransparency=0
    end
   end
  end
  -- if bitmap[y][x] ~= nil and bitmap[y][x]==1 then
   -- f.BackgroundTransparency=0
  -- end
 end
end
function changeFace(face)
 local bitmap=htp:JSONDecode(faces[face])
 fr:ClearAllChildren()
 for y=1,10 do
 for x=1,10 do
  -- print(x,y)
  f=New"Frame"{_P=fr;Size=udim(1/10,1/10);Position=udim( (-1+x)*1/10,(-1+y)*1/10 );
   BackgroundColor=bcol(Robot.Color2);BackgroundTransparency=1;
  }
  for _,v in pairs(bitmap) do
   if v[1] and v[2] then
    if x-1==v[1] and y-1==v[2] then
     f.BackgroundTransparency=0
    end
   end
  end
 end
 end
 prevface=faces[face]
end
----
--Health display
function newseg(le,x,y,z,rx,ry,rz)
 local segment={}
 segment.modl=New"Model"{_P=Main;Name='Segment'}
 set_parent=segment.modl
 le=le or .5
 local p=Part(le,.1,.1,'Lime green')Mesh(p,'bl',1,.5,.1)
 Weld(p,bgp,x,y,z,rx,ry,rz)
 local p2=Part(.1,.1,.1,'Lime green')Mesh(p2,'bl',.35,.35,.1)
 Weld(p2,p,le/2,0,0,0,0,PI/4)
 local p22=Part(.1,.1,.1,'Lime green')Mesh(p22,'bl',.35,.35,.1)
 Weld(p22,p,-le/2,0,0,0,0,PI/4)
 
 Edit{p,p2,p22}{Material='Neon';Transparency=1}
 
 function segment:light(a)
  for i,v in pairs(self.modl:children())do
   v.BrickColor=bcol'Lime green'
   v.Material='Neon'
   v.Transparency=a or 0
  end
 end
 
 function segment:dim(a)
  for i,v in pairs(self.modl:children())do
   v.BrickColor=bcol'Hurricane rgey'
   v.Material='SmoothPlastic'
   v.Transparency=.9
  end
 end
 set_parent=nil
 
 return segment
end
letters = {
[0]='1111110';[1]='0110000';[2]='1101101';[3]='1111001';[4]='0110011';[5]='1011011';
[6]='1011111';[7]='1110000';[8]='1111111';[9]='1111011';
['A']='1110111';['b']='0011111';['C']='1001110';['d']='0111101';['E']='1001111';['F']='1000111'
}
function new7Dig(x,y,z,rx,ry,rz)
 local disp = {}
 disp.segs={}
 
 bgp=Part(.75,1,.1,'Black')
 Weld(bgp,topp,x,y,z,rx,ry,rz)
 
 disp.segs[1]=newseg(_,0,.4,-.1) --top
 disp.segs[6]=newseg(.25,.75*.4,.2,-.1,0,0,PI/2) --second top
 disp.segs[2]=newseg(.25,-.75*.4,.2,-.1,0,0,PI/2)
 
 disp.segs[7]=newseg(_,0,0,-.1) --middle
 disp.segs[5]=newseg(.25,.75*.4,-.2,-.1,0,0,PI/2) --second bottom
 disp.segs[3]=newseg(.25,-.75*.4,-.2,-.1,0,0,PI/2)
 
 disp.segs[4]=newseg(_,0,-.4,-.1) --bottom
 
 function disp:show(letter)
  for i,v in pairs(disp.segs)do
   v:dim()
  end
  local str=letters[tonumber(letter)]
  for i=1,7 do
   -- print(i)
   local s=str:sub(i,i)
   if s=='1' then
    self.segs[i]:light()
   end
  end
 end
 return disp
end
D2=new7Dig(0,0,-1.05)
D=new7Dig(.75,0,-1.05)
D3=new7Dig(-.75,0,-1.05)
local prevhp=99
prevface=faces.normal
human.HealthChanged:connect(function(hp)
 local str=tostring(math.floor(hp))
 if #str==3 then
  D:show(str:sub(1,1))
  D2:show(str:sub(2,2))
  D3:show(str:sub(3,3))
 elseif #str==2 then
  D:show(0)
  D2:show(str:sub(1,1))
  D3:show(str:sub(2,2))
 elseif #str==1 then
  D:show(0)
  D2:show(0)
  D3:show(str:sub(1,1))
  end
end)
human.Health=99
----
--Right arm...
s=Part(1.25,1.25,1.25)
Joint.new('s_r',New"Motor"{_P=s;_PP={s,topp};C1=cfn(3-.625,.75,0)*ang(0,PI)})
a1=Part(1,1.5,1)
Joint.new('e_r',New"Motor"{_P=a1;_PP={a1,s};C1=cfn(0,-1.25/2,0);C0=cfn(0,.75,0)})
a2=Part(1,1.5,1,_,.5)
Joint.new('a_r',New"Motor"{_P=a1;_PP={a2,a1};C1=cfn(0,-.75,0);C0=cfn(0,.75,0)})
--Another secret cabinet
cabin_mot.DesiredAngle=PI/2
front_wall=Part(1,1.4,.1)
Weld(_1,a2,0,-.05,.5-.1)
back_wall=Part(1,1.4,.1)
Weld(_1,a2,0,-.05,-.5+.1)
top_wall=Part(1,.1,1,'Black')
Weld(top_wall,a2,0,.75-.05)
local hand_r=Part(1.1,.75,.5)
Joint.new('h_r',New"Motor"{_P=hand_r;_PP={hand_r,a2};C1=cfn(0,-.75,0);C0=cfn(0,.75/2,0)})
local heart_r=Part(.5,.5,.1,Robot.Color2)
Weld(_1,hand_r,0,0,-.25)
--Left arm...
s=Part(1.25,1.25,1.25)
Joint.new('s_l',New"Motor"{_P=s;_PP={s,topp};C1=cfn(-(3-.625),.75,0)*ang(0,PI)})
a1=Part(1,1.5,1)
Joint.new('e_l',New"Motor"{_P=a1;_PP={a1,s};C1=cfn(0,-1.25/2,0);C0=cfn(0,.75,0)})
a2=Part(1,1.5,1)
Joint.new('a_l',New"Motor"{_P=a1;_PP={a2,a1};C1=cfn(0,-.75,0);C0=cfn(0,.75,0)})
hand_l=Part(1.1,.75,.5)
Joint.new('h_l',New"Motor"{_P=hand_l;_PP={hand_l,a2};C1=cfn(0,-.75,0);C0=cfn(0,.75/2,0)})
heart_l=Part(.5,.5,.1,Robot.Color2)
Weld(_1,hand_l,0,0,-.25)
human.HipHeight=3
hole=Part(1.25*.8,.1,1.25*.8,'Black')
New"PointLight"{_P=hole;Color=bcol(Robot.Color2).Color;Brightness=20;Range=5;Face='Bottom'}
Weld(hole,bottomp,0,-.8)
Mesh(hole,'cyl')
pipe=Part(.25,2,.25)
New"Motor"{_P=pipe;_PP={pipe,hole};C1=cfn(0,-1.05,0)*ang(PI/2);C0=ang(PI/2);MaxVelocity=.3;DesiredAngle=9e+009}
-- Mesh(pipe,'cyl')
-- Weld(pipe,hole,0,-1.05)
lapa=Part(.1,2,.1)lm=Mesh(_1,'bl',.3,1,3)
l1_m=New"Motor"{_P=lapa;_PP={lapa,pipe};
 C1=cfn(.05,-1,0)*ang(md'12',PI);C0=cfn(0,-1,0);MaxVelocity=.1;DesiredAngle=PI/2}
tip=Part(.2,.1,.2)Mesh(_1,'cyl',lm.Scale.z,.3,lm.Scale.z)
Weld(_1,lapa,0,1,0,0,0,PI/2)

lapa2=Part(.1,2,.1)Mesh(_1,'bl',.3,1,lm.Scale.z)
l2_m=New"Motor"{_P=lapa2;_PP={lapa2,pipe};
 C1=cfn(-.05,-1,0)*ang(md'-12');C0=cfn(0,-1,0);MaxVelocity=.1;DesiredAngle=PI/2}
tip=Part(.2,.1,.2)Mesh(_1,'cyl',lm.Scale.z,.3,lm.Scale.z)
Weld(_1,lapa2,0,1,0,0,0,PI/2)

for _,v in pairs{lapa,lapa2} do
local stripe=Part(.1,.1,.1,Robot.Color2)Mesh(_1,'bl',.3,.5,3)_3.Scale=_3.Scale*1.01
Weld(stripe,v,0,2/3) 
local stripe2=Part(.1,.1,.1,Robot.Color2)Mesh(_1,'bl',.3,.5,3)_3.Scale=_3.Scale*1.01
Weld(stripe2,v,0,2/3-.25)
Edit{stripe,stripe2}{Material='Neon'}
end
--EAsings--
Styles={
 Linear = function(alpha)
  return alpha
 end;
 easeInSine = function(alpha)
  local alpha = (1-math.cos(alpha*(math.pi/2)))
  return alpha
 end;
 easeOutSine = function(alpha)
  alpha = math.sin(alpha*(math.pi/2))
  return alpha
 end;
 easeInOutSine = function(alpha)
  alpha = alpha*2
  if alpha < 1 then
   return 0.5*Styles["easeInSine"](alpha)
  else
   return 0.5*Styles["easeOutSine"](alpha-1)+.5
  end
 end;
 
 easeInQuadratic = function(alpha)
  alpha = alpha^2
  return alpha
 end;
 easeOutQuadratic = function(alpha)
  _alpha = 1-alpha
  alpha = 1-_alpha*_alpha
  return alpha
 end;
 easeInOutQuadratic = function(alpha)
  alpha = alpha*2
  if alpha < 1 then
   return 0.5*Styles["easeInQuadratic"](alpha)
  else
   return 0.5*Styles["easeOutQuadratic"](alpha-1)+0.5
  end
 end;
 
 easeInCubic = function(alpha)
  alpha = alpha^3
  return alpha
 end;
 easeOutCubic = function(alpha)
  alpha = 1-alpha
  return 1-alpha^3
 end;
 easeInOutCubic = function(alpha)
  alpha = alpha*2
  if alpha < 1 then
   return 0.5*Styles["easeInCubic"](alpha)
  else
   return 0.5*Styles["easeOutCubic"](alpha-1)+.5
  end
 end;
}
function Interpolate(Type,p0,p1)
    local Data = {Style = Styles[Type],PointA = p0,PointB = p1}
    return function(Perc)
        local Perc = Data.Style(Perc)
        return Data.PointA:lerp(Data.PointB,Perc)
    end
end
function NewLimbAnim(anim)
 for _,v in pairs(Joints)do
  v:NewAnim(anim)
 end
end
Animations={}
Animation={prev=nil}
function Animation.new(name,lenght,style,insert)
 local Anim={
  Span=lenght;
  Location=insert;
  Count=0;
  Keyframes={}; --Aliases
  Playing=false;
  Loop=false;
  reset_on_loop=true;
  Name=name;
 }
 for i,v in pairs(Joints)do
  Anim.Keyframes[i]=v
 end
 function Anim:Play()
  self.Playing=true
  self.Count=0
  -- anim_script.Disabled=true  
  Animation.prev = self
 end
 function Anim:Stop()
  -- if self.reset_on_loop==true then RevertAll() end
  self.Playing=false
  self.Count=0
  -- anim_script.Disabled=false
  -- Animation.prev=nil
  -- RevertAll()
 end
 local Time=tick()
 function Anim:Add(Time,limb,c0,c1)
  if Time>self.Span then error"one simply does not travel to future..."end
  local Tab={TimeOfAction=Time,Joint=limb,frame={C0=c0 or self.Keyframes[limb].n_c0,C1=c1 or self.Keyframes[limb].n_c1}}
  table.insert(self.Keyframes[limb].keys[self.Location],Tab)
  table.sort(self.Keyframes[limb].keys[self.Location],function(a,b) return a.TimeOfAction < b.TimeOfAction end)
 end
 function Anim:Exec(smooth)
  local DT=tick()-Time
  Time=tick()
  local First,Current,Next
  if self.Playing then --Check if anim can play
   self.Count=self.Count+DT --it goes up
   if self.Loop then --Reset when at end if loop
    if self.Count >= self.Span then
     self.Count=0
     if self.onCycle then
      self.onCycle(self)
     end
    end
   elseif not self.Loop then
    if self.Count >= self.Span then
     self.Count=self.Span
      
     if self.onFinish then
      self.onFinish(self)
     end 
    end
   end
   for i,v in pairs(self.Keyframes) do
    if v._can_kf then
    for i2,v2 in pairs(v.keys[self.Location]) do --cframes are stored in joints. self.Location is the name of animation
     First = v.keys[self.Location][1]
     Current = v2
     Next = v.keys[self.Location][i2+1]
     -- print(i2)
     if Next ~= nil and self.Count >= Current.TimeOfAction and self.Count <= Next.TimeOfAction then
      local Dis = (Next.TimeOfAction-Current.TimeOfAction)
      local Perc = (self.Count-Current.TimeOfAction)/Dis
      v.w.C0 = Interpolate(style or 'Linear',Current.frame.C0,Next.frame.C0)(Perc)
      v.w.C1 = Interpolate(style or 'Linear',Current.frame.C1,Next.frame.C1)(Perc)
      
      v.previous = v.w.C0
      
     end
    end end
   end
  end
 end
 Animations[name]=Anim
 return Anim
end
previous_kfl=nil
function newAnim(name,lenght,loop,style,strange) --Epic wrapper for epic skids
 NewLimbAnim(name)
 local a=Animation.new(name,lenght,style,name)
 
 if loop~=nil then
  a.Loop=loop
 end
 
 return function(kfs)
  if not kfs[0] then
   local t={}
   for j,v in pairs(Joints) do    
    t[j]=v.previous  
   end
   kfs[0]=t
  end
  a.kfl=kfs
  
  function a:last()
   local n,o=-1,nil
   for i,v in pairs(self.kfl)do
    if i>n then
     n=i o=v
     if type(o)=='number' then
      o=self.kfl[o]
     end
    end
   end
   return o
  end
  function a:Wait(num)
   repeat wait()until self.Count>=(num or self.Span)
  end
  if lenght==0 then
   for i,v in pairs(kfs) do
    a.Span=i
   end
  end
  for tim,kf in pairs(kfs) do
   local kk=kf
   if type(kf) =='number'then
    kk=kfs[kf]
   end
   
   for j,v in pairs(kk) do
   if not strange then
    a:Add(tim,j, (v == 0 and Joints[j].n_c0 or (Joints[j].n_c0 * v) ))
   else
    a:Add(tim,j, (v == 0 and Joints[j].n_c0 or v ))
   end
   end
  end
  return a
 end
end
local facetick=tick()
LerParts={}
function LerParts:Add(tag,part,value,speed)
 local tt = {
  p=part;c=value;s=speed;t=tag;
 }
 function tt:Kill()
  self.p:Destroy()
  LerParts[self.t]=nil
 end
 self[tag]=tt
end
RS:BindToRenderStep('Anim',2000,function() --Mainloop
 for i,v in pairs(Animations)do --execute animations
  v:Exec()
 end
 
 for i,v in pairs(LerParts) do --lerp parts
  if type(v)~='function'then
  v.p.CFrame=v.p.CFrame:lerp(v.c(),v.s)end
 end
 
end)
function tablify(tab)
    setmetatable(tab,{
        __add = function(t,t2)
            if type(t2) ~= 'table' then return end --prevent errors
   local ta={}
   for i,v in pairs(t) do
    ta[i]=v
   end
            for i,v in pairs(t2) do
                ta[i] = v
            end
   return ta
        end
    })
end
local init={}
tablify(init)
for i,v in pairs(Joints)do
 init[i]=0
end
mighty=newAnim('c',1){
 [.1]=init+{t_p=ang(md'-45');
  s_r=ang(md'45',0,md'75');
  s_l=ang(md'45',0,md'-75');
  a_r=ang(md'25');
  a_l=ang(md'25');
 }
}

armraise=newAnim('a',.5){
 [0]=init;
 [.25]={
  s_r=ang(md'90');
 };
 [.5]={
  h_r=ang(md'75');
 };
}
push=newAnim('a2',.25){
 [0]=init+{
  s_r=ang(md'90');
  h_r=ang(md'75');
 };
 [.25]={
  s_r=ang(md'90');
  a_r=ang(md'45');
  e_r=ang(md'15');
 };
}
function laser(st,en,r)
 total_mag=(st-en).magnitude
 prev=cfn(st)
 local mo=New"Model"{_P=Main}
 set_parent=mo
 local pm={-1,1}
 for i=0,1,.1 do
  local pos=cfn(st):lerp(cfn(en),i)
  local pos2=pos*cfn(pm[mr(#pm)]*r,0,pm[mr(#pm)]*r)
  local mag=(prev.p-pos2.p).magnitude
  local laz=Part(.1,mag,.1,'Cyan',.5)_1.Anchored=true _1.Material='Neon'
  Mesh(_1,'bl',.5,1,.5)
  _1.CFrame=(cfn(prev.p,pos2.p)*cfn(0,0,-mag/2))*ang(PI/2)
  if i>.9 then
   _1.CFrame=(cfn(prev.p,pos2.p)*cfn(0,0,-mag/2))*ang(PI/2)
  end
  prev=pos2
 end
 set_parent=nil
 DEBRIS:AddItem(mo,.025)
end
 
function sparks()
 local a=newAnim('sfss',2.1){
  [0]=init;
  [.25]={
   s_r=ang(md'100',md'-25');
   a_r=ang(0,0,md'-25');
   h_r=ang(md'-10');
   
   s_l=ang(md'80',md'25');
   a_l=ang(0,0,md'25');
   h_l=ang(md'-10',PI);
   
   e_r=ang(md'-5');
   e_l=ang(md'5');
  };
  [.75]={
   e_r=ang(md'25');
   e_l=ang(md'-25');
  };
  [2]=.75;
  [2.1]={
   e_r=ang(md'-5');
   e_l=ang(md'5');
  };
 }a:Play()
 a:Wait(.25)
 changeFace('happy')
 local p=Part(1,1,1,Robot.Color2)_1.Material='Neon'_1.Anchored=true
 p.CFrame=heart_r.CFrame:lerp(heart_l.CFrame,.5)
 LerParts:Add('orb',p,function()return heart_r.CFrame:lerp(heart_l.CFrame,.5)*ang(mr(-3,3),mr(-3,3),mr(-3,3))end,.25)
 -- Spawn(function()
 repeat
  laser(heart_r.Position,heart_l.Position,.25)
  for i,v in pairs(findHum(torso.Position,30))do
  if v~=human then
   v.Torso.Velocity=cfn(v.Torso.Position,torso.Position).lookVector*20
   v.Torso.RotVelocity=v3n(0,100,0)
  end end
  wait()
 until a.Count>=2
 changeFace('normal')
 LerParts['orb']:Kill()
 local ring=Part(1,1,1,'Cyan',.5)_1.Anchored=true
 local msh=Mesh(_1,mesh_ids.ring)
 ring.CFrame=cfn(heart_r.CFrame:lerp(heart_l.CFrame,.5).p)*ang(PI/2,0,0)
 for i=0,1,.1 do
  msh.Scale=v3n(i*20,i*20,1)
  ring.Transparency=.5+i*.5
  wait()
 end
 ring:Destroy()
 a:Wait()a:Stop()
 reset()
 -- end)
 
end
-- o=newAnim("werwer",.5){
 -- [0]=init;
 -- [.1]={
  -- t_p=ang(md'15',md'25');
  -- s_l=ang(md'45');
  -- s_r=ang(md'45');
 -- };
 -- [.5]={
  -- t_p=ang(md'-15',md'-25');
  -- s_l=ang(md'140',0,md'75');
  -- s_r=ang(md'140',0,md'75');
  -- h_r=ang(0,PI/2);
  -- a_l=0;
 -- };
-- }o:Play()o:Wait()
-- o.Playing=false
-- o:Stop()
-- o2=newAnim('ww',.5,true){
 -- [0]=o:last();
 -- [.2]={
  -- t_p=ang(md'15',md'25');
  -- s_l=ang(md'45',0,md'75'); 
  -- s_r=ang(md'45',0,md'75');
  -- a_l=ang(md'-15',md'15')
 -- };
 -- [.5]=0
-- }o2:Play()

function reset()
 local cc=newAnim('sfs',.5,false,_,true){
  [.5]=init;
 }cc:Play()cc:Wait()cc:Stop()
end
human.Died:connect(function() --onDeath
 e=Instance.new("Explosion",Workspace)
 e.Position=torso.Position
 e.BlastRadius=30
end)
function beam()
 armraise.Count=0
 armraise:Play()
 armraise:Wait()
 
 for i=1,30 do
  local bl=Part(.1,.1,.1,'New Yeller',.5)
  _1.Material='Neon'
  _1.CFrame=l(heart_r,mr(-3,3),mr(-3,3))
  Mesh(_1,'s')
  New"BodyPosition"{_P=bl;position=heart_r.Position}
  DEBRIS:AddItem(bl,.3)
  wait()
 end
 
 local obj,pos=Workspace:FindPartOnRay(Ray.new(l(heart_r).p,l(heart_r).lookVector*100),character)
 if obj and pos then
  changeFace("xD")
  local mag = (l(heart_r).p-pos).magnitude
  local laz=Part(1,mag,1,'New Yeller')_1.Anchored=true
  local msh=Mesh(laz,'cyl')
  local lista={}
  laz.CFrame=(cfn(l(heart_r).p,pos)*cfn(0,0,-mag/2))*ang(PI/2)
  
  for i,v in pairs(findHum(pos,10))do
  if v~=human then
   v.Health=0 end
  end
  
  for i=0,1,1/4 do
   local r=Part(1,1,1,'New Yeller',.5)_1.Anchored=true
   r.CFrame=l(laz,0,-laz.Size.y/2+laz.Size.y*i,0,PI/2)
   local msh=Mesh(r,mesh_ids.ring)
   table.insert(lista,r)
  end
  
  local ss=mesh_scales.ring*v3n(laz.Size.x,laz.Size.z,1)
  Spawn(function()
   for i=0,1,.05 do
    Edit{msh,laz}{Transparency=i;Scale=v3n(1+i*3,1,1+i*3)}
    Edit(lista){Transparency=i;['Mesh.Scale']=ss+v3n(i*10,i*10,1)}
    wait()
   end
   laz:Destroy()
   for i,v in pairs(lista)do v:Destroy()end
  end)
 end
 push:Play()
 push:Wait()
 push:Stop()
 armraise:Stop()
 changeFace('normal')
 reset()
end
Mouse=player:GetMouse()
atacking=false
mouse_con1=Mouse.KeyDown:connect(function(key)
 attacking=true
 
 if key=='f'then
  beam()
 elseif key=='r'then
  sparks()
 end
 
 attacking=false
end)
--Maeking sure it wont go insane--
New"BindableFunction"{_P=script;Name='sidos'}.OnInvoke=function()
 mouse_con1:disconnect()
end
script.Name='riimu'

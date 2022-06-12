local plr = game.Players.LocalPlayer
local chr = plr.Character
local maus = plr:GetMouse()
local PGui=plr.PlayerGui
local lleg = chr["Left Leg"]
local rleg = chr["Right Leg"]
local larm = chr["Left Arm"]
local rarm = chr["Right Arm"]
local hed = chr.Head
local rutprt = chr.HumanoidRootPart
local torso = chr.Torso
local otheranims=false
local armmovement=false
local fireclrs={'Bright red','Bright yellow','Bright orange'}
local holding=false
local flying=false
local jumpdb=false
local lalalclrs={Color3.new(1,.3,0),Color3.new(1,.3,0),Color3.new(1,.3,0),Color3.new(1,.3,0),Color3.new(1,0,0),BrickColor.new('Really black').Color}

ranclrs={'Bright red','Bright orange','Bright yellow','Black','Medium stone grey'}
rangclr=ranclrs[1]

if chr:findFirstChild('Animate') then
chr.Animate:Destroy()
end


--

function Lerp(a, b, i)
local com1 = {a.X, a.Y, a.Z, a:toEulerAnglesXYZ()}
local com2 = {b.X, b.Y, b.Z, b:toEulerAnglesXYZ()}
local calx = com1[1] + (com2[1] - com1[1]) * i
local caly = com1[2] + (com2[2] - com1[2]) * i
local calz = com1[3] + (com2[3] - com1[3]) * i
local cala = com1[4] + (com2[4] - com1[4]) * i
local calb = com1[5] + (com2[5] - com1[5]) * i
local calc = com1[6] + (com2[6] - com1[6]) * i
return CFrame.new(calx, caly, calz) * CFrame.Angles(cala, calb, calc)
end

function TwnSingleNumber(s,f,m)
local wot=s+(f-s)*m
return wot
end

function TwnPartSize(q,w,e)
local begin={q.x,q.y,q.z}
local ending={w.x,w.y,w.z}
local bgx=begin[1]+(ending[1]-begin[1])*e
local bgy=begin[2]+(ending[2]-begin[2])*e
local bgz=begin[3]+(ending[3]-begin[3])*e
return Vector3.new(bgx,bgy,bgz)
end

newWeld = function(wld, wp0, wp1, wc0x, wc0y, wc0z)
wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end

newWeld(law, torso, larm, -1.5, 0.5, 0)
newWeld(raw, torso, rarm, 1.5, 0.5, 0)
newWeld(llw, torso, lleg, -.5, -2, 0)
newWeld(rlw, torso, rleg, .5, -2, 0)
newWeld(hw, torso, hed, 0, 1.5, 0)
local rutwald=Instance.new('Weld',rutprt)
rutwald.Part0=rutprt
rutwald.Part1=torso
rutwald.Name="RootJoint"
rutprt.RootJoint.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
rleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)
lleg.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,0)

local anim = "Idling"
local lastanim = "Idling"
local val = 0
local syne = 0
local num = 0
local runtime = 0

----------------------------------------------------------------------------

local tail=Instance.new('Model',chr)
tail.Name='Tail'
local obj1=Instance.new('Part',tail)
obj1.formFactor='Custom'
obj1.Size=Vector3.new(1.25,1,1.25)
obj1.BrickColor=BrickColor.new('Cool yellow')
obj1.Anchored=false
obj1.CanCollide=false
obj1.TopSurface=10
obj1.BottomSurface=10
obj1.LeftSurface=10
obj1.RightSurface=10
obj1.FrontSurface=10
obj1.BackSurface=10
obj1:breakJoints()
obj1.Locked=true
obj1.Material='SmoothPlastic'
local obj1m=Instance.new('SpecialMesh',obj1)
obj1m.MeshId="http://www.roblox.com/asset/?id=1033714"
obj1m.Scale=Vector3.new(1.25,2,1.25)
obj1w=Instance.new('Weld',obj1)
obj1w.Part0=torso
obj1w.Part1=obj1
obj1w.C0=CFrame.new(0,-.9,.65)*CFrame.Angles(math.rad(-97.5),0,0)


local obj2=Instance.new('Part',tail)
obj2.formFactor='Custom'
obj2.Size=Vector3.new(1.5,1.5,1.5)
obj2.BrickColor=BrickColor.new('Cool yellow')
obj2.Anchored=false
obj2.CanCollide=false
obj2.TopSurface=10
obj2.BottomSurface=10
obj2.LeftSurface=10
obj2.RightSurface=10
obj2.FrontSurface=10
obj2.BackSurface=10
obj2.Material='SmoothPlastic'
obj2:breakJoints()
obj2.Locked=true
local obj2m=Instance.new('SpecialMesh',obj2)
obj2m.MeshType='Sphere'
obj2m.Scale=Vector3.new(2,2,2)
obj2w=Instance.new('Weld',obj2)
obj2w.Part0=obj1
obj2w.Part1=obj2
obj2w.C0=CFrame.new(0,-1.525,0)


local obj3=Instance.new('Part',tail)
obj3.formFactor='Custom'
obj3.Size=Vector3.new(1.25,1,1.25)
obj3.BrickColor=BrickColor.new('Cool yellow')
obj3.Anchored=false
obj3.CanCollide=false
obj3.TopSurface=10
obj3.BottomSurface=10
obj3.LeftSurface=10
obj3.RightSurface=10
obj3.FrontSurface=10
obj3.BackSurface=10
obj3:breakJoints()
obj3.Locked=true
obj3.Material='SmoothPlastic'
local obj3m=Instance.new('SpecialMesh',obj3)
obj3m.MeshId="http://www.roblox.com/asset/?id=1033714"
obj3m.Scale=Vector3.new(1.2,2.75,1.2)
obj3w=Instance.new('Weld',obj3)
obj3w.Part0=obj2
obj3w.Part1=obj3
obj3w.C0=CFrame.new(0,-1.9,-.35)*CFrame.Angles(math.rad(10.5),0,math.rad(180))

local obj4=Instance.new('Part',tail)
obj4.formFactor='Custom'
obj4.Size=Vector3.new(1.25,1,1.25)
obj4.BrickColor=BrickColor.new('Bright red')
obj4.Anchored=false
obj4.CanCollide=false
obj4.TopSurface=10
obj4.BottomSurface=10
obj4.LeftSurface=10
obj4.RightSurface=10
obj4.FrontSurface=10
obj4.BackSurface=10
obj4:breakJoints()
obj4.Locked=true
obj4.Material='SmoothPlastic'
local obj4m=Instance.new('SpecialMesh',obj4)
obj4m.MeshId="http://www.roblox.com/asset/?id=1033714"
obj4m.Scale=Vector3.new(.915,2.25,.915)
obj4w=Instance.new('Weld',obj4)
obj4w.Part0=obj2
obj4w.Part1=obj4
obj4w.C0=CFrame.new(0,-2.25,-.405)*CFrame.Angles(math.rad(10.5),0,math.rad(180))

local obj5=Instance.new('Part',tail)
obj5.formFactor='Custom'
obj5.Size=Vector3.new(.3,3,.3)
obj5.BrickColor=BrickColor.new('Reddish brown')
obj5.Anchored=false
obj5.CanCollide=false
obj5.TopSurface=10
obj5.BottomSurface=10
obj5.LeftSurface=10
obj5.RightSurface=10
obj5.FrontSurface=10
obj5.BackSurface=10
obj5:breakJoints()
obj5.Locked=true
obj5.Material='Wood'
local obj5m=Instance.new('CylinderMesh',obj5)
obj5w=Instance.new('Weld',obj5)
obj5w.Part0=obj2
obj5w.Part1=obj5
obj5w.C0=CFrame.new(0,0,2.5)*CFrame.Angles(math.rad(95),0,0)

local obj6=Instance.new('Part',tail)
obj6.formFactor='Custom'
obj6.Size=Vector3.new(1.25,1,1.25)
obj6.BrickColor=BrickColor.new('Cool yellow')
obj6.Anchored=false
obj6.CanCollide=false
obj6.TopSurface=10
obj6.BottomSurface=10
obj6.LeftSurface=10
obj6.RightSurface=10
obj6.FrontSurface=10
obj6.BackSurface=10
obj6.Locked=true
obj6:breakJoints()
obj6.Material='SmoothPlastic'
local obj6m=Instance.new('SpecialMesh',obj6)
obj6m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj6m.Scale=Vector3.new(.215,.25,.215)
obj6w=Instance.new('Weld',obj6)
obj6w.Part0=obj2
obj6w.Part1=obj6
obj6w.C0=CFrame.new(0,.115,1.45)*CFrame.Angles(math.rad(95),0,math.rad(0))

local obj7=Instance.new('Part',tail)
obj7.formFactor='Custom'
obj7.Size=Vector3.new(1.25,1,1.25)
obj7.BrickColor=BrickColor.new('Cool yellow')
obj7.Anchored=false
obj7.CanCollide=false
obj7.TopSurface=10
obj7.BottomSurface=10
obj7.LeftSurface=10
obj7.RightSurface=10
obj7.FrontSurface=10
obj7:breakJoints()
obj7.BackSurface=10
obj7.Locked=true
obj7.Material='SmoothPlastic'
local obj7m=Instance.new('SpecialMesh',obj7)
obj7m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj7m.Scale=Vector3.new(.25,.275,.225)
obj7w=Instance.new('Weld',obj7)
obj7w.Part0=obj2
obj7w.Part1=obj7
obj7w.C0=CFrame.new(0,.115,1.45)*CFrame.Angles(math.rad(95),math.rad(15),math.rad(0))

local obj8=Instance.new('Part',tail)
obj8.formFactor='Custom'
obj8.Size=Vector3.new(1.25,1,1.25)
obj8.BrickColor=BrickColor.new('Cool yellow')
obj8.Anchored=false
obj8.CanCollide=false
obj8.TopSurface=10
obj8.BottomSurface=10
obj8.LeftSurface=10
obj8.RightSurface=10
obj8.FrontSurface=10
obj8.BackSurface=10
obj8:breakJoints()
obj8.Locked=true
obj8.Material='SmoothPlastic'
local obj8m=Instance.new('SpecialMesh',obj8)
obj8m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj8m.Scale=Vector3.new(.25,.265,.25)
obj8w=Instance.new('Weld',obj8)
obj8w.Part0=obj2
obj8w.Part1=obj8
obj8w.C0=CFrame.new(0,.115,1.45)*CFrame.Angles(math.rad(95),math.rad(35),math.rad(0))

local obj9=Instance.new('Part',tail)
obj9.formFactor='Custom'
obj9.Size=Vector3.new(.2,1,.2)
obj9.BrickColor=BrickColor.new('Reddish brown')
obj9.Anchored=false
obj9.CanCollide=false
obj9.TopSurface=10
obj9.BottomSurface=10
obj9.LeftSurface=10
obj9.RightSurface=10
obj9.FrontSurface=10
obj9.BackSurface=10
obj9.Material='Wood'
obj9:breakJoints()
obj9.Locked=true
local obj9m=Instance.new('CylinderMesh',obj9)
obj9w=Instance.new('Weld',obj9)
obj9w.Part0=obj5
obj9w.Part1=obj9
obj9w.C0=CFrame.new(0,1.1,.25)*CFrame.Angles(math.rad(25),0,0)

local obj10=Instance.new('Part',tail)
obj10.formFactor='Custom'
obj10.Size=Vector3.new(1.25,1,1.25)
obj10.BrickColor=BrickColor.new('Cool yellow')
obj10.Anchored=false
obj10.CanCollide=false
obj10.TopSurface=10
obj10.BottomSurface=10
obj10.LeftSurface=10
obj10.RightSurface=10
obj10.FrontSurface=10
obj10.BackSurface=10
obj10:breakJoints()
obj10.Locked=true
obj10.Material='SmoothPlastic'
local obj10m=Instance.new('SpecialMesh',obj10)
obj10m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj10m.Scale=Vector3.new(1.8,1,1.8)
obj10w=Instance.new('Weld',obj10)
obj10w.Part0=obj2
obj10w.Part1=obj10
obj10w.C0=CFrame.new(0,-1,-.35)*CFrame.Angles(math.rad(10.5),0,math.rad(180))

local obj11=Instance.new('Part',tail)
obj11.formFactor='Custom'
obj11.Size=Vector3.new(1.25,1,1.25)
obj11.BrickColor=BrickColor.new('Cool yellow')
obj11.Anchored=false
obj11.CanCollide=false
obj11.TopSurface=10
obj11.BottomSurface=10
obj11.LeftSurface=10
obj11.RightSurface=10
obj11.FrontSurface=10
obj11.BackSurface=10
obj11:breakJoints()
obj11.Locked=true
obj11.Material='SmoothPlastic'
local obj11m=Instance.new('SpecialMesh',obj11)
obj11m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj11m.Scale=Vector3.new(1.7,1,1.7)
obj11w=Instance.new('Weld',obj11)
obj11w.Part0=obj2
obj11w.Part1=obj11
obj11w.C0=CFrame.new(0,-1.2,-.35)*CFrame.Angles(math.rad(10.5),math.rad(5),math.rad(180))

local obj12=Instance.new('Part',tail)
obj12.formFactor='Custom'
obj12.Size=Vector3.new(1.25,1,1.25)
obj12.BrickColor=BrickColor.new('Cool yellow')
obj12.Anchored=false
obj12.CanCollide=false
obj12.TopSurface=10
obj12.BottomSurface=10
obj12.LeftSurface=10
obj12.RightSurface=10
obj12.FrontSurface=10
obj12.BackSurface=10
obj12:breakJoints()
obj12.Locked=true
obj12.Material='SmoothPlastic'
local obj12m=Instance.new('SpecialMesh',obj12)
obj12m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj12m.Scale=Vector3.new(1.6,1,1.6)
obj12w=Instance.new('Weld',obj12)
obj12w.Part0=obj2
obj12w.Part1=obj12
obj12w.C0=CFrame.new(0,-1.4,-.35)*CFrame.Angles(math.rad(10.5),math.rad(10),math.rad(180))

local obj13=Instance.new('Part',tail)
obj13.formFactor='Custom'
obj13.Size=Vector3.new(1.25,1,1.25)
obj13.BrickColor=BrickColor.new('Cool yellow')
obj13.Anchored=false
obj13.CanCollide=false
obj13.TopSurface=10
obj13.BottomSurface=10
obj13.LeftSurface=10
obj13.RightSurface=10
obj13.FrontSurface=10
obj13.BackSurface=10
obj13:breakJoints()
obj13.Locked=true
obj13.Material='SmoothPlastic'
local obj13m=Instance.new('SpecialMesh',obj13)
obj13m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj13m.Scale=Vector3.new(1.5,1,1.5)
obj13w=Instance.new('Weld',obj13)
obj13w.Part0=obj2
obj13w.Part1=obj13
obj13w.C0=CFrame.new(0,-1.6,-.35)*CFrame.Angles(math.rad(10.5),math.rad(15),math.rad(180))

local obj14=Instance.new('Part',tail)
obj14.formFactor='Custom'
obj14.Size=Vector3.new(1.25,1,1.25)
obj14.BrickColor=BrickColor.new('Bright red')
obj14.Anchored=false
obj14.CanCollide=false
obj14.TopSurface=10
obj14.BottomSurface=10
obj14.LeftSurface=10
obj14.RightSurface=10
obj14.FrontSurface=10
obj14.BackSurface=10
obj14:breakJoints()
obj14.Locked=true
obj14.Material='SmoothPlastic'
local obj14m=Instance.new('SpecialMesh',obj14)
obj14m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj14m.Scale=Vector3.new(1.5,1,1.5)
obj14w=Instance.new('Weld',obj14)
obj14w.Part0=obj2
obj14w.Part1=obj14
obj14w.C0=CFrame.new(0,-1.8,-.35)*CFrame.Angles(math.rad(10.5),math.rad(20),math.rad(180))

local obj15=Instance.new('Part',tail)
obj15.formFactor='Custom'
obj15.Size=Vector3.new(1.25,1,1.25)
obj15.BrickColor=BrickColor.new('Bright red')
obj15.Anchored=false
obj15.CanCollide=false
obj15.TopSurface=10
obj15.BottomSurface=10
obj15.LeftSurface=10
obj15.RightSurface=10
obj15.FrontSurface=10
obj15.BackSurface=10
obj15:breakJoints()
obj15.Locked=true
obj15.Material='SmoothPlastic'
local obj15m=Instance.new('SpecialMesh',obj15)
obj15m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj15m.Scale=Vector3.new(1.4,.9,1.4)
obj15w=Instance.new('Weld',obj15)
obj15w.Part0=obj2
obj15w.Part1=obj15
obj15w.C0=CFrame.new(0,-2,-.35)*CFrame.Angles(math.rad(10.5),math.rad(25),math.rad(180))

local obj16=Instance.new('Part',tail)
obj16.formFactor='Custom'
obj16.Size=Vector3.new(1.25,1,1.25)
obj16.BrickColor=BrickColor.new('Bright red')
obj16.Anchored=false
obj16.CanCollide=false
obj16.TopSurface=10
obj16.BottomSurface=10
obj16.LeftSurface=10
obj16.RightSurface=10
obj16.FrontSurface=10
obj16.BackSurface=10
obj16:breakJoints()
obj16.Locked=true
obj16.Material='SmoothPlastic'
local obj16m=Instance.new('SpecialMesh',obj16)
obj16m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj16m.Scale=Vector3.new(1.5,.8,1.5)
obj16w=Instance.new('Weld',obj16)
obj16w.Part0=obj2
obj16w.Part1=obj16
obj16w.C0=CFrame.new(0,-2.2,-.35)*CFrame.Angles(math.rad(10.5),math.rad(30),math.rad(180))

local obj17=Instance.new('Part',tail)
obj17.formFactor='Custom'
obj17.Size=Vector3.new(1.25,1,1.25)
obj17.BrickColor=BrickColor.new('Bright red')
obj17.Anchored=false
obj17.CanCollide=false
obj17.TopSurface=10
obj17.BottomSurface=10
obj17.LeftSurface=10
obj17.RightSurface=10
obj17.FrontSurface=10
obj17.BackSurface=10
obj17:breakJoints()
obj17.Locked=true
obj17.Material='SmoothPlastic'
local obj17m=Instance.new('SpecialMesh',obj17)
obj17m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj17m.Scale=Vector3.new(1.3,1,1.3)
obj17w=Instance.new('Weld',obj17)
obj17w.Part0=obj2
obj17w.Part1=obj17
obj17w.C0=CFrame.new(0,-2.4,-.35)*CFrame.Angles(math.rad(10.5),math.rad(35),math.rad(180))

local obj18=Instance.new('Part',tail)
obj18.formFactor='Custom'
obj18.Size=Vector3.new(1.25,1,1.25)
obj18.BrickColor=BrickColor.new('Bright red')
obj18.Anchored=false
obj18.CanCollide=false
obj18.TopSurface=10
obj18.BottomSurface=10
obj18.LeftSurface=10
obj18.RightSurface=10
obj18.FrontSurface=10
obj18.BackSurface=10
obj18:breakJoints()
obj18.Locked=true
obj18.Material='SmoothPlastic'
local obj18m=Instance.new('SpecialMesh',obj18)
obj18m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj18m.Scale=Vector3.new(1.2,1.1,1.2)
obj18w=Instance.new('Weld',obj18)
obj18w.Part0=obj2
obj18w.Part1=obj18
obj18w.C0=CFrame.new(0,-2.6,-.35)*CFrame.Angles(math.rad(10.5),math.rad(40),math.rad(180))

local obj19=Instance.new('Part',tail)
obj19.formFactor='Custom'
obj19.Size=Vector3.new(1.25,1,1.25)
obj19.BrickColor=BrickColor.new('Bright red')
obj19.Anchored=false
obj19.CanCollide=false
obj19.TopSurface=10
obj19.BottomSurface=10
obj19.LeftSurface=10
obj19.RightSurface=10
obj19.FrontSurface=10
obj19.BackSurface=10
obj19.Locked=true
obj19:breakJoints()
obj19.Material='SmoothPlastic'
local obj19m=Instance.new('SpecialMesh',obj19)
obj19m.MeshId="http://www.roblox.com/asset/?id=20329976"
obj19m.Scale=Vector3.new(1.1,1.2,1.1)
obj19w=Instance.new('Weld',obj19)
obj19w.Part0=obj2
obj19w.Part1=obj19
obj19w.C0=CFrame.new(0,-2.8,-.35)*CFrame.Angles(math.rad(10.5),math.rad(45),math.rad(180))



---------------------------------------------------------------------------- 

maus.KeyDown:connect(function(kei)
if string.byte(kei)==48 then
chr.Humanoid.WalkSpeed=40
end


if kei=='q' and not armmovement then
if holding then armmovement=true armpose='ReplacingStick' wait(.5) armmovement=false holding=false
obj5w.Part0=obj2
obj5w.C0=CFrame.new(0,0,2.5)*CFrame.Angles(math.rad(95),0,0)
elseif not holding then armmovement=true armpose='ReplacingStick' wait(.5) armmovement=false holding=true 
obj5w.Part0=rarm
obj5w.C0=CFrame.new(0,-1,-.5)*CFrame.Angles(math.rad(92),0,0)
end
end



if kei=='x' and not jumpdb and not otheranims then
jumpdb=true
otheranims=true
anim='SuperCrouch'
coroutine.resume(coroutine.create(function()
for lal=1,20 do wait()
local jm=Instance.new('Part',chr)
jm.formFactor='Custom'
jm.BrickColor=BrickColor.new(fireclrs[math.random(1,3)])
jm.Size=Vector3.new(3,3,3)
jm.Name='soprjmp'
jm.TopSurface=10
jm.BottomSurface=10
jm.FrontSurface=10
jm.Locked=true
jm.LeftSurface=10
jm.RightSurface=10
jm.BackSurface=10
jm.CanCollide=false
jm.Anchored=true
jm.CFrame=rleg.CFrame*CFrame.new(-.5,-1,0)*CFrame.Angles(math.random(1,3),math.random(1,3),math.random(1,3))
local jmp=Instance.new('BlockMesh',jm)
game:service'Debris':AddItem(jm,1.5)
coroutine.wrap(function()
for qq=1,20 do wait()
jmp.Scale=jmp.Scale+Vector3.new(.1,.1,.1)
jm.Transparency=jm.Transparency+.1
jm.CFrame=jm.CFrame*CFrame.Angles(math.random(1,3),math.random(1,3),math.random(1,3))
end
end)()
end
end))
wait(.6)
coroutine.resume(coroutine.create(function()
for t=1,5 do wait()
rangclr=ranclrs[t]
local rang=Instance.new('Part',chr)
rang.formFactor='Custom'
rang.BrickColor=BrickColor.new(rangclr)
rang.Size=Vector3.new(2,2,2)
rang.Name='rang'
rang.TopSurface=10
rang.BottomSurface=10
rang.Locked=true
rang.FrontSurface=10
rang.LeftSurface=10
rang.RightSurface=10
rang.BackSurface=10
rang.CanCollide=false
rang.Anchored=true
rang.CFrame=rleg.CFrame*CFrame.new(-.5,-.75,0)*CFrame.Angles(math.rad(90),0,0)
local rmsh=Instance.new('SpecialMesh',rang)
rmsh.MeshId="http://www.roblox.com/asset/?id=3270017"
rmsh.Scale=Vector3.new(3,3,1.5)
game:service'Debris':AddItem(rang,5)
coroutine.wrap(function()
for lalal=1,50 do wait()
rmsh.Scale=rmsh.Scale+Vector3.new(1,1,.25)
rang.Transparency=rang.Transparency+1/33
end
end)()
end
end))
anim='SuperJump'
local vl=Instance.new("BodyVelocity",torso)
vl.maxForce=Vector3.new(0,1/0,0)
vl.velocity=Vector3.new(0,100,0)
game:service'Debris':AddItem(vl,1)
chr.Humanoid.Jump=true
wait(.5)
otheranims=false
anim='Jumping'
wait(3.5)
jumpdb=false
end
end)


plr.Chatted:connect(function(ms)
if ms:lower()=='q' and not armmovement then
if holding then armmovement=true armpose='ReplacingStick' wait(.5) armmovement=false holding=false
obj5w.Part0=obj2
obj5w.C0=CFrame.new(0,0,2.5)*CFrame.Angles(math.rad(95),0,0)
elseif not holding then armmovement=true armpose='ReplacingStick' wait(.5) armmovement=false holding=true 
obj5w.Part0=rarm
obj5w.C0=CFrame.new(0,-1,-.5)*CFrame.Angles(math.rad(92),0,0)
end
end
if ms:lower()=='x' and not jumpdb and not otheranims then
jumpdb=true
otheranims=true
anim='SuperCrouch'
coroutine.resume(coroutine.create(function()
for lal=1,20 do wait()
local jm=Instance.new('Part',chr)
jm.formFactor='Custom'
jm.BrickColor=BrickColor.new(fireclrs[math.random(1,3)])
jm.Size=Vector3.new(3,3,3)
jm.Name='soprjmp'
jm.TopSurface=10
jm.BottomSurface=10
jm.FrontSurface=10
jm.Locked=true
jm.LeftSurface=10
jm.RightSurface=10
jm.BackSurface=10
jm.CanCollide=false
jm.Anchored=true
jm.CFrame=rleg.CFrame*CFrame.new(-.5,-1,0)*CFrame.Angles(math.random(1,3),math.random(1,3),math.random(1,3))
local jmp=Instance.new('BlockMesh',jm)
game:service'Debris':AddItem(jm,1.5)
coroutine.wrap(function()
for qq=1,20 do wait()
jmp.Scale=jmp.Scale+Vector3.new(.1,.1,.1)
jm.Transparency=jm.Transparency+.1
jm.CFrame=jm.CFrame*CFrame.Angles(math.random(1,3),math.random(1,3),math.random(1,3))
end
end)()
end
end))
wait(.6)
coroutine.resume(coroutine.create(function()
for t=1,5 do wait()
rangclr=ranclrs[t]
local rang=Instance.new('Part',chr)
rang.formFactor='Custom'
rang.BrickColor=BrickColor.new(rangclr)
rang.Size=Vector3.new(2,2,2)
rang.Name='rang'
rang.TopSurface=10
rang.BottomSurface=10
rang.Locked=true
rang.FrontSurface=10
rang.LeftSurface=10
rang.RightSurface=10
rang.BackSurface=10
rang.CanCollide=false
rang.Anchored=true
rang.CFrame=rleg.CFrame*CFrame.new(-.5,-.75,0)*CFrame.Angles(math.rad(90),0,0)
local rmsh=Instance.new('SpecialMesh',rang)
rmsh.MeshId="http://www.roblox.com/asset/?id=3270017"
rmsh.Scale=Vector3.new(3,3,1.5)
game:service'Debris':AddItem(rang,5)
coroutine.wrap(function()
for lalal=1,50 do wait()
rmsh.Scale=rmsh.Scale+Vector3.new(1,1,.25)
rang.Transparency=rang.Transparency+1/33
end
end)()
end
end))
anim='SuperJump'
local tv=Instance.new("BodyVelocity",rutprt)
tv.maxForce=Vector3.new(0,math.huge,0)
tv.velocity=Vector3.new(0,200,0)
coroutine.resume(coroutince.create(function()
wait(.5)
tv:Destroy''
end))
chr.Humanoid.Jump=true
wait(.5)
otheranims=false
anim='Jumping'
wait(3.5)
jumpdb=false
end
end)


maus.KeyUp:connect(function(kei)
if string.byte(kei)==48 then
chr.Humanoid.WalkSpeed=16
end
end)



maus.Button1Down:connect(function()
if holding and not armmovement and not otheranims and not flying then
flying=true
armmovement=true
armpose='PreSwing'
wait(.4)
armpose='Swing'
wait(.3)
local proj=Instance.new('Part',Workspace)
proj.Shape='Ball'
proj.Anchored=false
proj.Name='Fireball'
proj.Locked=true
proj.Size=Vector3.new(1,1,1)
proj.BrickColor=BrickColor.new('Bright red')
proj.Transparency=0
proj.CFrame=torso.CFrame*CFrame.new(3,3,-2)
local prj=Instance.new('BodyVelocity',proj)
prj.velocity=((torso.CFrame*CFrame.new(3,3,-2)).p-maus.Hit.p).unit*-75
proj.Touched:connect(function(hit)
if hit and hit.CanCollide then
proj:Destroy()
local hum=hit.Parent and hit.Parent:findFirstChild('Torso') and hit.Parent:findFirstChild('Humanoid') and hit.Parent ~= chr and hit.Parent.ClassName=='Model'
if hum then hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-(35*(hit.Parent.Humanoid.MaxHealth/100)) end end
end)
armmovement=false
coroutine.resume(coroutine.create(function()
for kthen=1,125 do wait()
local ex=math.random(0,300)*.01
local wy=math.random(0,300)*.01
local ze=math.random(0,300)*.01
local dy=math.random(5,30)*.01
local fir=Instance.new('Part',proj)
fir.formFactor='Custom'
fir.Anchored=true
fir.CanCollide=false
fir.Size=Vector3.new(.8,.8,.8)
fir.TopSurface=10
fir.BottomSurface=10
fir.LeftSurface=10
fir.RightSurface=10
fir.FrontSurface=10
fir.Locked=true
fir.BackSurface=10
fir.BrickColor=BrickColor.new(fireclrs[math.random(1,#fireclrs)])
fir.CFrame=proj.CFrame*CFrame.Angles(ex,wy,ze)
local lt=Instance.new('PointLight',fir)
lt.Brightness=123123
lt.Range=6
lt.Color=lalalclrs[math.random(1,#lalalclrs)]
game:service'Debris':AddItem(fir,.5)
local frms=Instance.new('BlockMesh',fir)
frms.Scale=Vector3.new(1,1,1)
coroutine.wrap(function()
for lal=1,10 do
frms.Scale=frms.Scale-Vector3.new(.1,.1,.1)
fir.CFrame=fir.CFrame*CFrame.new(0,dy,0)
wait()
end
end)() end end))
wait(.375)
flying=false
end
end)

------------------

coroutine.resume(coroutine.create(function()
while wait() do if holding then
local ex=math.random(0,300)*.01
local wy=math.random(0,300)*.01
local ze=math.random(0,300)*.01
local dy=math.random(5,30)*.01
local fir=Instance.new('Part',obj5)
fir.formFactor='Custom'
fir.Anchored=true
fir.CanCollide=false
fir.Size=Vector3.new(.65,.65,.65)
fir.TopSurface=10
fir.BottomSurface=10
fir.LeftSurface=10
fir.RightSurface=10
fir.FrontSurface=10
fir.Locked=true
fir.BackSurface=10
fir.BrickColor=BrickColor.new(fireclrs[math.random(1,#fireclrs)])
fir.CFrame=obj5.CFrame*CFrame.new(0,(-obj9.Size.y)-.5,0)*CFrame.Angles(ex,wy,ze)
local lt=Instance.new('PointLight',fir)
lt.Brightness=123123
lt.Range=6
lt.Color=lalalclrs[math.random(1,#lalalclrs)]
game:service'Debris':AddItem(fir,.5)
local frms=Instance.new('BlockMesh',fir)
coroutine.wrap(function()
for lal=1,10 do
frms.Scale=frms.Scale-Vector3.new(.1,.1,.1)
fir.CFrame=fir.CFrame*CFrame.new(0,dy,0)
wait()
end
end)() end end end))


----------------------------------------------------------------------------

game:service'RunService'.RenderStepped:connect(function()
syne=syne+1
if not otheranims then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="Idling"

elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude < 30 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="Walking"

elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 30 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="Sprinting"

elseif (torso.Velocity.y > 1) then
anim="Jumping"

elseif (torso.Velocity.y < -1) then
anim="Falling"
torso.Velocity=(((rutprt.CFrame*CFrame.new(0,0,-3)).p-rutprt.CFrame.p).unit*chr.Humanoid.WalkSpeed)+Vector3.new(0,-(27.5),0)
end
end

if anim=="Idling" then
idlesineinc=40
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(0,0,math.rad(3)),.1)
end
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(0,0,math.rad(-3)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9-math.cos(syne/idlesineinc)/20,(math.cos(syne/idlesineinc)/35))*CFrame.Angles(-(math.cos(syne/idlesineinc)/35),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9-math.cos(syne/idlesineinc)/20,(math.cos(syne/idlesineinc)/35))*CFrame.Angles(-(math.cos(syne/idlesineinc)/35),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/idlesineinc)/50,0)*CFrame.Angles(math.cos(syne/idlesineinc)/40,0,0),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-.1+math.cos(syne/idlesineinc)/20,0)*CFrame.Angles(math.cos(syne/idlesineinc)/35+math.rad(0),math.rad(0),math.rad(0)),.1)
end
if anim=="Walking" then
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525+math.cos(syne/15)/25,0)*CFrame.Angles(math.cos(syne/6)/1.25,math.rad(5),-(math.cos(syne/6.75)/15)+math.rad(3)),.1)
end
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/15)/25,0)*CFrame.Angles(-(math.cos(syne/6)/1.25),0,-(math.cos(syne/6.75)/15)-math.rad(3)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9-math.cos(syne/6)/10,-(math.cos(syne/6)/1.125))*CFrame.Angles(math.cos(syne/6)/1.125,0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9-math.cos(syne/6)/10,math.cos(syne/6)/1.125)*CFrame.Angles(-(math.cos(syne/6)/1.125),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/3)/20,0,0),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-.1+math.cos(syne/3.375)/20,math.cos(syne/3)/5)*CFrame.Angles(math.cos(syne/3)/20+math.rad(-3.5),math.cos(syne/6)/10,-math.cos(syne/6)/30+math.sin(rutprt.RotVelocity.y/2)/7.5),.1)
end

if anim=="Sprinting" then
if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(-55),0,math.rad(12.5)),.1)
end
obj1w.C0=Lerp(obj1w.C0,CFrame.new(0,-.9,.65)*CFrame.Angles(-math.sin(syne/4)/3+(math.rad(-92.5)),-math.sin(syne/4)/3,0),.05)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(-55),0,math.rad(-12.5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.6-math.cos(syne/4)/4,-(math.cos(syne/4)*2))*CFrame.Angles(math.cos(syne/4)*2,0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.6-math.cos(syne/4)/4,math.cos(syne/4)*2)*CFrame.Angles(-(math.cos(syne/4)*2),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(10),0,0),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-.3+math.cos(syne/2.5)/15,math.cos(syne/2.5)/1.5)*CFrame.Angles(math.cos(syne/2.5)/10+math.rad(-15),math.cos(syne/2.5)/10,math.cos(syne/4)/20+math.sin(rutprt.RotVelocity.y/2)/4),.1)
end

if anim=="Jumping" then if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(30),0,math.rad(30)),.15)
end
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(30),0,math.rad(-30)),.15)
obj1w.C0=Lerp(obj1w.C0,CFrame.new(0,-.9,.65)*CFrame.Angles((math.rad(-55)),0,0),.05)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.85,-.1)*CFrame.Angles(0,0,math.rad(-2.5)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.85,-.1)*CFrame.Angles(0,0,math.rad(2.5)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),0,0),.05)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-.3,0)*CFrame.Angles(math.rad(-20),0,math.sin(rutprt.RotVelocity.y/2)/4),.1)
end

if anim=="Falling" then
 if not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.425,.525,0)*CFrame.Angles(math.rad(65),0,math.rad(45)),.15)
end
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.425,.525,0)*CFrame.Angles(math.rad(65),0,math.rad(-45)),.15)
obj1w.C0=Lerp(obj1w.C0,CFrame.new(0,-.9,.65)*CFrame.Angles((math.rad(-95)),0,0),.05)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.75,-1.3,-.8)*CFrame.Angles(math.rad(55),0,math.rad(-15)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.75,-1.3,-.8)*CFrame.Angles(math.rad(55),0,math.rad(15)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),0,0),.05)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-.3,0)*CFrame.Angles(math.rad(-40),0,math.sin(rutprt.RotVelocity.y/2)/4),.1)
end
if armpose=='ReplacingStick' and armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(-140),0,math.rad(-20)),.075)
end

if armpose=='PreSwing' and armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(179),0,math.rad(10)),.15)
end

if armpose=='Swing' and armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(25),0,math.rad(10)),.2)
end


if otheranims then
if anim=='SuperCrouch' then
if not equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(50)),.05)
end
obj1w.C0=Lerp(obj1w.C0,CFrame.new(0,-.9,.65)*CFrame.Angles((math.rad(-25)),0,0),.05)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.05)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1,0)*CFrame.Angles(math.rad(-20),0,math.rad(-2.5)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-.8,-.65)*CFrame.Angles(math.rad(10),0,math.rad(2.5)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,.3)*CFrame.Angles(math.rad(40),0,0),.05)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,-1.4,.2)*CFrame.Angles(math.rad(-14),math.rad(0),math.rad(0)),.05)
end

if anim=="SuperJump" then
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.4,.525,0)*CFrame.Angles(math.rad(-10),0,math.rad(20)),.1)
end
obj1w.C0=Lerp(obj1w.C0,CFrame.new(0,-.9,.65)*CFrame.Angles((math.rad(-75)),0,0),.05)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.4,.525,0)*CFrame.Angles(math.rad(-10),0,math.rad(-20)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.8,0)*CFrame.Angles(math.rad(-2.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.8,0)*CFrame.Angles(math.rad(-2.5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,.3)*CFrame.Angles(math.rad(30),0,0),.1)
rutprt.RootJoint.C0=Lerp(rutprt.RootJoint.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),.1)
end
end
chr.Humanoid.CameraOffset=(rutprt.CFrame:toObjectSpace(hed.CFrame)).p+Vector3.new(0,-1.25,0)
end)
wait'.5'
local WrapMaterial="SmoothPlastic"
local WrapColor=BrickColor.new("Brown")
local BladeMaterial='Neon'
local HandleMaterial='Neon'
local LightColor=BrickColor.new("Cyan")
local HandleColor=BrickColor.new("Really black")
local BladeColor=BrickColor.new("Institutional white")
local BladeRefl=.3
local AttackOrbColor=BrickColor.new("White")
local HealOrbColor=BrickColor.new("New Yeller")

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
chr.Animate.Disabled=true
local sitting=false
local fldb={['w']=false,['a']=false,['s']=false,['d']=false}
local hitdb=false
local Swing='Swing1'
local RunSpeed=36
local WlkSpeed=18
local SneakSpeed=10
local runnin=false
local disabled=false
local tik=0
local spinvalue=0
local death=Instance.new('Sound',rutprt)
death.Pitch=1
death.Volume=.5
death.SoundId='http://www.roblox.com/asset?id=170399891'
chr.Humanoid.Died:connect(function()
death:play''
end)
local trailing=false
local shootdb=false
local idlesineinc=35
local sneaking=false
coroutine.wrap(function()
for i,x in pairs(hed:GetChildren()) do if x:IsA('Sound') then x:Destroy() end end end)()
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
function TwnVector3(q,w,e)
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
function Avg(a, b)
return CFrame.new((a.X+b.X)/2,(a.Y+b.Y)/2,(a.Z+b.Z)/2)
end
local jump=Instance.new('Sound',rutprt)
jump.Volume=.2
jump.Pitch=1
jump.SoundId='http://www.roblox.com/asset?id=170588191'
newWeld(law, torso, larm, -1.5, 0.5, 0)
newWeld(raw, torso, rarm, 1.5, 0.5, 0)
newWeld(llw, torso, lleg, -.5, -2, 0)
newWeld(rlw, torso, rleg, .5, -2, 0)
newWeld(hw, torso, hed, 0, 1.5, 0)
local rutwald=Instance.new('Weld',rutprt)
rutwald.Part0=rutprt
rutwald.Part1=torso
rutprt.Weld.C1=CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0)
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
local TrailModel=Instance.new("Model",chr)
TrailModel.Name="Trails"
local Sword=Instance.new('Model',chr)
Sword.Name='BlackIronBroadSword'
local obj1=Instance.new('Part',Sword)
obj1.Name='Handle'
obj1.formFactor='Custom'
obj1.Size=Vector3.new(.2,1.25,.2)
obj1.BrickColor=HandleColor
obj1.Material=HandleMaterial
obj1.CanCollide=false
obj1.TopSurface=10
obj1.BottomSurface=10
obj1.LeftSurface=10
obj1.RightSurface=10
obj1.FrontSurface=10
obj1.BackSurface=10
obj1:breakJoints()
local objm1=Instance.new('CylinderMesh',obj1)
local objw1=Instance.new('Weld',obj1)
objw1.Part0=obj1
objw1.Part1=torso
objw1.C0=CFrame.new(0,-2,-.6)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(37.5))
local obj2=Instance.new('Part',Sword)
obj2.Name='Handle'
obj2.formFactor='Custom'
obj2.Size=Vector3.new(.25,.1,.25)
obj2.BrickColor=HandleColor
obj2.Material=HandleMaterial
obj2.CanCollide=false
obj2.TopSurface=10
obj2.BottomSurface=10
obj2.LeftSurface=10
obj2.RightSurface=10
obj2.FrontSurface=10
obj2.BackSurface=10
obj2:breakJoints()
local objm2=Instance.new('CylinderMesh',obj2)
local objw2=Instance.new('Weld',obj2)
objw2.Part0=obj2
objw2.Part1=obj1
objw2.C0=CFrame.new(0,-.625,0)*CFrame.Angles(0,0,0)
local obj3=Instance.new('Part',Sword)
obj3.Name='Handle'
obj3.formFactor='Custom'
obj3.Size=Vector3.new(.3,.1,.3)
obj3.BrickColor=HandleColor
obj3.Material=HandleMaterial
obj3.CanCollide=false
obj3.TopSurface=10
obj3.BottomSurface=10
obj3.LeftSurface=10
obj3.RightSurface=10
obj3.FrontSurface=10
obj3.BackSurface=10
obj3:breakJoints()
local objm3=Instance.new('CylinderMesh',obj3)
local objw3=Instance.new('Weld',obj3)
objw3.Part0=obj3
objw3.Part1=obj1
objw3.C0=CFrame.new(0,-.725,0)*CFrame.Angles(0,0,0)
local obj4=Instance.new('Part',Sword)
obj4.Name='Handle'
obj4.formFactor='Custom'
obj4.Size=Vector3.new(.25,.1,.25)
obj4.BrickColor=HandleColor
obj4.Material=HandleMaterial
obj4.CanCollide=false
obj4.TopSurface=10
obj4.BottomSurface=10
obj4.LeftSurface=10
obj4.RightSurface=10
obj4.FrontSurface=10
obj4.BackSurface=10
obj4:breakJoints()
local objm4=Instance.new('CylinderMesh',obj4)
local objw4=Instance.new('Weld',obj4)
objw4.Part0=obj4
objw4.Part1=obj1
objw4.C0=CFrame.new(0,.625,0)*CFrame.Angles(0,0,0)
local obj5=Instance.new('Part',Sword)
obj5.Name='Handle'
obj5.formFactor='Custom'
obj5.Size=Vector3.new(.3,.1,.3)
obj5.BrickColor=HandleColor
obj5.Material=HandleMaterial
obj5.CanCollide=false
obj5.TopSurface=10
obj5.BottomSurface=10
obj5.LeftSurface=10
obj5.RightSurface=10
obj5.FrontSurface=10
obj5.BackSurface=10
obj5:breakJoints()
local objm5=Instance.new('CylinderMesh',obj5)
local objw5=Instance.new('Weld',obj5)
objw5.Part0=obj5
objw5.Part1=obj1
objw5.C0=CFrame.new(0,.725,0)*CFrame.Angles(0,0,0)
local obj6=Instance.new('Part',Sword)
obj6.Name='Handle'
obj6.formFactor='Custom'
obj6.Size=Vector3.new(1.2,.3,.35)
obj6.BrickColor=HandleColor
obj6.Material=HandleMaterial
obj6.CanCollide=false
obj6.TopSurface=10
obj6.BottomSurface=10
obj6.LeftSurface=10
obj6.RightSurface=10
obj6.FrontSurface=10
obj6.BackSurface=10
obj6:breakJoints()
local objm6=Instance.new('SpecialMesh',obj6)
objm6.MeshType='Sphere'
local objw6=Instance.new('Weld',obj6)
objw6.Part0=obj6
objw6.Part1=obj1
objw6.C0=CFrame.new(0,.775,0)*CFrame.Angles(0,0,0)
local obj7=Instance.new('Part',Sword)
obj7.Name='Handle'
obj7.formFactor='Custom'
obj7.Size=Vector3.new(1.2,.1,.35)
obj7.BrickColor=HandleColor
obj7.Material=HandleMaterial
obj7.CanCollide=false
obj7.TopSurface=10
obj7.BottomSurface=10
obj7.LeftSurface=10
obj7.RightSurface=10
obj7.FrontSurface=10
obj7.BackSurface=10
obj7:breakJoints()
local objm7=Instance.new('SpecialMesh',obj7)
objm7.MeshId='http://www.roblox.com/asset?id=3270017'
objm7.Scale=Vector3.new(1.2,.175,2)
local objw7=Instance.new('Weld',obj7)
objw7.Part0=obj7
objw7.Part1=obj1
objw7.C0=CFrame.new(0,0,.775)*CFrame.Angles(math.rad(90),0,0)

local obj8=Instance.new('Part',Sword)
obj8.Name='Handle'
obj8.formFactor='Custom'
obj8.Size=Vector3.new(.55,.1,.55)
obj8.BrickColor=HandleColor
obj8.Material=HandleMaterial
obj8.CanCollide=false
obj8.TopSurface=10
obj8.BottomSurface=10
obj8.LeftSurface=10
obj8.RightSurface=10
obj8.FrontSurface=10
obj8.BackSurface=10
obj8:breakJoints()
local objm8=Instance.new('CylinderMesh',obj8)
objm8.Scale=Vector3.new(1,.4,1)
local objw8=Instance.new('Weld',obj8)
objw8.Part0=obj8
objw8.Part1=obj1
objw8.C0=CFrame.new(0,0,.95)*CFrame.Angles(math.rad(90),0,0)

local obj9=Instance.new('Part',Sword)
obj9.Name='Handle'
obj9.formFactor='Custom'
obj9.Size=Vector3.new(.55,.1,.55)
obj9.BrickColor=HandleColor
obj9.Material=HandleMaterial
obj9.CanCollide=false
obj9.TopSurface=10
obj9.BottomSurface=10
obj9.LeftSurface=10
obj9.RightSurface=10
obj9.FrontSurface=10
obj9.BackSurface=10
obj9:breakJoints()
local objm9=Instance.new('CylinderMesh',obj9)
objm9.Scale=Vector3.new(1.25,.35,1.25)
local objw9=Instance.new('Weld',obj9)
objw9.Part0=obj9
objw9.Part1=obj1
objw9.C0=CFrame.new(0,0,.95)*CFrame.Angles(math.rad(90),0,0)

local obj10=Instance.new('Part',Sword)
obj10.Name='Handle'
obj10.formFactor='Custom'
obj10.Size=Vector3.new(.55,.1,.55)
obj10.BrickColor=HandleColor
obj10.Material=HandleMaterial
obj10.CanCollide=false
obj10.TopSurface=10
obj10.BottomSurface=10
obj10.LeftSurface=10
obj10.RightSurface=10
obj10.FrontSurface=10
obj10.BackSurface=10
obj10:breakJoints()
local objm10=Instance.new('CylinderMesh',obj10)
objm10.Scale=Vector3.new(1.5,.3,1.5)
local objw10=Instance.new('Weld',obj10)
objw10.Part0=obj10
objw10.Part1=obj1
objw10.C0=CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),0,0)

local obj11=Instance.new('Part',Sword)
obj11.Name='Handle'
obj11.formFactor='Custom'
obj11.Size=Vector3.new(.35,.2,3.5)
obj11.BrickColor=HandleColor
obj11.Material=HandleMaterial
obj11.CanCollide=false
obj11.TopSurface=10
obj11.BottomSurface=10
obj11.LeftSurface=10
obj11.RightSurface=10
obj11.FrontSurface=10
obj11.BackSurface=10
obj11:breakJoints()
local objm11=Instance.new('SpecialMesh',obj11)
objm11.MeshType='Wedge'
objm11.Scale=Vector3.new(.16,1,1)
local objw11=Instance.new('Weld',obj11)
objw11.Part0=obj11
objw11.Part1=obj1
objw11.C0=CFrame.new(0,-.25,2.75)*CFrame.Angles(math.rad(90),math.rad(90),0)

local obj12=Instance.new('Part',Sword)
obj12.Name='Handle'
obj12.formFactor='Custom'
obj12.Size=Vector3.new(.35,.2,3.5)
obj12.BrickColor=HandleColor
obj12.Material=HandleMaterial
obj12.CanCollide=false
obj12.TopSurface=10
obj12.BottomSurface=10
obj12.LeftSurface=10
obj12.RightSurface=10
obj12.FrontSurface=10
obj12.BackSurface=10
obj12:breakJoints()
local objm12=Instance.new('SpecialMesh',obj12)
objm12.MeshType='Wedge'
objm12.Scale=Vector3.new(.16,1,1)
local objw12=Instance.new('Weld',obj12)
objw12.Part0=obj12
objw12.Part1=obj1
objw12.C0=CFrame.new(0,-.25,2.75)*CFrame.Angles(math.rad(90),math.rad(-90),0)

local obj13=Instance.new('Part',Sword)
obj13.Name='Handle'
obj13.formFactor='Custom'
obj13.Size=Vector3.new(.35,.35,.35)
obj13.BrickColor=HandleColor
obj13.Material=HandleMaterial
obj13.CanCollide=false
obj13.TopSurface=10
obj13.BottomSurface=10
obj13.LeftSurface=10
obj13.RightSurface=10
obj13.FrontSurface=10
obj13.BackSurface=10
obj13:breakJoints()
local objm13=Instance.new('BlockMesh',obj13)
objm13.Scale=Vector3.new(.1605,.62175,.62175)
local objw13=Instance.new('Weld',obj13)
objw13.Part0=obj13
objw13.Part1=obj1
objw13.C0=CFrame.new(0,3.1775,3.1775)*CFrame.Angles(math.rad(45),math.rad(-90),0)

local obj14=Instance.new('Part',Sword)
obj14.Name='Handle'
obj14.formFactor='Custom'
obj14.Size=Vector3.new(.35,.4,4)
obj14.BrickColor=BladeColor
obj14.Material=BladeMaterial
obj14.Reflectance=BladeRefl
obj14.CanCollide=false
obj14.TopSurface=10
obj14.BottomSurface=10
obj14.LeftSurface=10
obj14.RightSurface=10
obj14.FrontSurface=10
obj14.BackSurface=10
obj14:breakJoints()
local objm14=Instance.new('SpecialMesh',obj14)
objm14.MeshType='Wedge'
objm14.Scale=Vector3.new(.1495,1,1)
local objw14=Instance.new('Weld',obj14)
objw14.Part0=obj14
objw14.Part1=obj1
objw14.C0=CFrame.new(0,-.35,2.8)*CFrame.Angles(math.rad(90),math.rad(-90),0)


local obj15=Instance.new('Part',Sword)
obj15.Name='Handle'
obj15.formFactor='Custom'
obj15.Size=Vector3.new(.35,.4,4)
obj15.BrickColor=BladeColor
obj15.Material=BladeMaterial
obj15.Reflectance=BladeRefl
obj15.CanCollide=false
obj15.TopSurface=10
obj15.BottomSurface=10
obj15.LeftSurface=10
obj15.RightSurface=10
obj15.FrontSurface=10
obj15.BackSurface=10
obj15:breakJoints()
local objm15=Instance.new('SpecialMesh',obj15)
objm15.MeshType='Wedge'
objm15.Scale=Vector3.new(.1495,1,1)
local objw15=Instance.new('Weld',obj15)
objw15.Part0=obj15
objw15.Part1=obj1
objw15.C0=CFrame.new(0,-.35,2.8)*CFrame.Angles(math.rad(90),math.rad(90),0)

local obj16=Instance.new('Part',Sword)
obj16.Name='Handle'
obj16.formFactor='Custom'
obj16.Size=Vector3.new(.35,.3,4)
obj16.BrickColor=BladeColor
obj16.Material=BladeMaterial
obj16.Reflectance=BladeRefl
obj16.CanCollide=false
obj16.TopSurface=10
obj16.BottomSurface=10
obj16.LeftSurface=10
obj16.RightSurface=10
obj16.FrontSurface=10
obj16.BackSurface=10
obj16:breakJoints()
local objm16=Instance.new('BlockMesh',obj16)
objm16.Scale=Vector3.new(.1495,1,1)
local objw16=Instance.new('Weld',obj16)
objw16.Part0=obj16
objw16.Part1=obj1
objw16.C0=CFrame.new(0,0,2.8)*CFrame.Angles(math.rad(90),math.rad(90),0)

local obj17=Instance.new('Part',Sword)
obj17.Name='Handle'
obj17.formFactor='Custom'
obj17.Size=Vector3.new(.35,.25,.25)
obj17.BrickColor=BladeColor
obj17.Material=BladeMaterial
obj17.Reflectance=BladeRefl
obj17.CanCollide=false
obj17.TopSurface=10
obj17.BottomSurface=10
obj17.LeftSurface=10
obj17.RightSurface=10
obj17.FrontSurface=10
obj17.BackSurface=10
obj17:breakJoints()
local objm17=Instance.new('SpecialMesh',obj17)
objm17.MeshType='Wedge'
objm17.Scale=Vector3.new(.1495,.61,1)
local objw17=Instance.new('Weld',obj17)
objw17.Part0=obj17
objw17.Part1=obj1
objw17.C0=CFrame.new(0,-.075,4.925)*CFrame.Angles(math.rad(90),math.rad(-90),0)


local obj18=Instance.new('Part',Sword)
obj18.Name='Handle'
obj18.formFactor='Custom'
obj18.Size=Vector3.new(.35,.25,.25)
obj18.BrickColor=BladeColor
obj18.Reflectance=BladeRefl
obj18.Material=BladeMaterial
obj18.CanCollide=false
obj18.TopSurface=10
obj18.BottomSurface=10
obj18.LeftSurface=10
obj18.RightSurface=10
obj18.FrontSurface=10
obj18.BackSurface=10
obj18:breakJoints()
local objm18=Instance.new('SpecialMesh',obj18)
objm18.MeshType='Wedge'
objm18.Scale=Vector3.new(.1495,.61,1)
local objw18=Instance.new('Weld',obj18)
objw18.Part0=obj18
objw18.Part1=obj1
objw18.C0=CFrame.new(0,-.075,4.925)*CFrame.Angles(math.rad(90),math.rad(90),0)

local obj19=Instance.new('Part',Sword)
obj19.Name='Handle'
obj19.formFactor='Custom'
obj19.Size=Vector3.new(.35,.25,.25)
obj19.BrickColor=BladeColor
obj19.Material=BladeMaterial
obj19.Reflectance=BladeRefl
obj19.CanCollide=false
obj19.TopSurface=10
obj19.BottomSurface=10
obj19.LeftSurface=10
obj19.RightSurface=10
obj19.FrontSurface=10
obj19.BackSurface=10
obj19:breakJoints()
local objm19=Instance.new('BlockMesh',obj19)
objm19.Scale=Vector3.new(.1495,.35,1)
local objw19=Instance.new('Weld',obj19)
objw19.Part0=obj19
objw19.Part1=obj1
objw19.C0=CFrame.new(0,0,3.9)*CFrame.Angles(math.rad(90),math.rad(90),0)

local obj20=Instance.new('Part',Sword)
obj20.Name='Handle'
obj20.formFactor='Custom'
obj20.Size=Vector3.new(.35,.3,3.5)
obj20.BrickColor=HandleColor
obj20.Material=HandleMaterial
obj20.CanCollide=false
obj20.TopSurface=10
obj20.BottomSurface=10
obj20.LeftSurface=10
obj20.RightSurface=10
obj20.FrontSurface=10
obj20.BackSurface=10
obj20:breakJoints()
local objm20=Instance.new('BlockMesh',obj20)
objm20.Scale=Vector3.new(.16,1,1)
local objw20=Instance.new('Weld',obj20)
objw20.Part0=obj20
objw20.Part1=obj1
objw20.C0=CFrame.new(0,0,2.75)*CFrame.Angles(math.rad(90),math.rad(-90),0)

local obj21=Instance.new('Part',Sword)
obj21.Name='Handle'
obj21.formFactor='Custom'
obj21.Size=Vector3.new(.25,1.15,4.25)
obj21.Transparency=1
obj21.BrickColor=HandleColor
obj21.CanCollide=false
obj21.TopSurface=10
obj21.BottomSurface=10
obj21.LeftSurface=10
obj21.RightSurface=10
obj21.FrontSurface=10
obj21.BackSurface=10
obj21:breakJoints()
local objw21=Instance.new('Weld',obj21)
objw21.Part0=obj21
objw21.Part1=obj1
objw21.C0=CFrame.new(0,0,3)*CFrame.Angles(math.rad(90),math.rad(-90),0)
local gu=Instance.new(string.reverse('iuGecafruS'),obj21)
gu.Name='noooplsdontremoveme'
gu.Adornee=obj21
gu.Face='Right'
gu.CanvasSize=Vector2.new(450,200)
local tb=Instance.new(string.reverse('lebaLtxeT'),gu)
tb.Name='noooooooplsstap'
tb.Size=UDim2.new(.25,0,.25,0)
tb.Position=UDim2.new(.375,0,.375,0)
tb.TextTransparency=.96
tb.BackgroundTransparency=1
tb.TextColor3=Color3.new(1,1,1)
tb.TextScaled=true
tb.BorderSizePixel=0
tb.TextStrokeTransparency=.96
tb.Text=string.reverse'777yobradec'

local obj22=Instance.new('Part',Sword)
obj22.Name='Handle'
obj22.formFactor='Custom'
obj22.Size=Vector3.new(1.2,.1,.35)
obj22.BrickColor=WrapColor
obj22.Material=WrapMaterial
obj22.CanCollide=false
obj22.TopSurface=10
obj22.BottomSurface=10
obj22.LeftSurface=10
obj22.RightSurface=10
obj22.FrontSurface=10
obj22.BackSurface=10
obj22:breakJoints()
local objm22=Instance.new('SpecialMesh',obj22)
objm22.MeshId='http://www.roblox.com/asset?id=3270017'
objm22.Scale=Vector3.new(1,.125,2)
local objw22=Instance.new('Weld',obj22)
objw22.Part0=obj22
objw22.Part1=obj1
objw22.C0=CFrame.new(0,0,1.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))

local obj23=Instance.new('Part',Sword)
obj23.Name='Handle'
obj23.formFactor='Custom'
obj23.Size=Vector3.new(1.2,.1,.35)
obj23.BrickColor=WrapColor
obj23.Material=WrapMaterial
obj23.CanCollide=false
obj23.TopSurface=10
obj23.BottomSurface=10
obj23.LeftSurface=10
obj23.RightSurface=10
obj23.FrontSurface=10
obj23.BackSurface=10
obj23:breakJoints()
local objm23=Instance.new('SpecialMesh',obj23)
objm23.MeshId='http://www.roblox.com/asset?id=3270017'
objm23.Scale=Vector3.new(.81,.125,2)
local objw23=Instance.new('Weld',obj23)
objw23.Part0=obj23
objw23.Part1=obj1
objw23.C0=CFrame.new(0,0,2.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))




local clang=Instance.new('Sound',obj21)
clang.Volume=.8
clang.Pitch=1.15
clang.SoundId='http://www.roblox.com/asset?id=155427306'
local rustle=Instance.new('Sound',obj21)
rustle.Volume=.8
rustle.Pitch=1.15
rustle.SoundId='http://www.roblox.com/asset?id=154162195'
local swing=Instance.new('Sound',obj21)
swing.Volume=.25
swing.Pitch=1
swing.SoundId='http://www.roblox.com/asset?id=160225846'
local smack=Instance.new('Sound',obj21)
smack.Volume=.05
smack.Pitch=1.75
smack.SoundId='http://www.roblox.com/asset?id=137579113'
obj21.Touched:connect(function(hit)
coroutine.wrap(function()
if hit then
for i,x in pairs(hit.Parent:GetChildren()) do if x:IsA('Humanoid') then hyoom=x end end
local hawm=hit.Parent and hyoom and hit.Parent:findFirstChild('Torso') and hit.Parent.Parent
if hawm and hit.Parent.ClassName=='Model' and hit.Parent~=chr and damaging and not hitdb then
smack:play''
hyoom.Health=hyoom.Health-(math.random(30,50)*(hyoom.MaxHealth/100))
hitdb=true
wait(.5)
hitdb=false
end
local hawm=hit.Parent and hit.Parent:findFirstChild('Humanoid') and hit.Parent:findFirstChild('Torso') and hit.Parent.Parent
if hawm and hit.Parent.ClassName=='Model' and hit.Parent~=chr and ((torso.Velocity*Vector3.new(1,0,1)).magnitude>RunSpeed-10 or rutprt:findFirstChild("SpinAttackVelocity")) and equipped and not armmovement then
if otheranims and anim=="DashSwing" then
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-(4*(hit.Parent.Humanoid.MaxHealth/100))
local asd=Instance.new("BodyVelocity",hit.Parent.Humanoid.Parent.Torso)
asd.maxForce=Vector3.new(1/0,1/0,1/0)
asd.velocity=((obj23.CFrame.p-hit.Parent.Torso.CFrame.p).unit*-15)+Vector3.new(0,5,0)
game:service'Debris':AddItem(asd,.1)
hyoom.Sit=true
else
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-(2*(hit.Parent.Humanoid.MaxHealth/100))
end
end
end
end)()
end)

local asd=Instance.new("PointLight",hed)
asd.Brightness=123
asd.Shadows=false
asd.Range=3
asd.Color=BrickColor.new("Really black").Color

local footstep=Instance.new('Sound',rutprt)
footstep.Pitch=1.235
footstep.Volume=.02
footstep.SoundId='http://www.roblox.com/asset?id=154162195'

local slide=Instance.new('Sound',rutprt)
slide.Pitch=.675
slide.Volume=.075
slide.SoundId='http://www.roblox.com/asset?id=179650551'

maus.Button1Down:connect(function()
if equipped and not otheranims and not sitting and not armmovement then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > RunSpeed-10 then
otheranims=true
anim="DashSwing"
local dashvelocity=Instance.new("BodyVelocity",rutprt)
dashvelocity.maxForce=Vector3.new(1/0,1/0,1/0)
dashvelocity.Name="DashAttackVelocity"
dashvelocity.velocity=((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*(RunSpeed*1.5)+Vector3.new(0,2.5,0)
local dashrotvelo=Instance.new("BodyAngularVelocity",rutprt)
dashrotvelo.Name="DashAttackRotVelocity"
dashrotvelo.maxTorque=Vector3.new(0,math.huge,0)
dashrotvelo.angularvelocity=Vector3.new(0,40,0)
game:service'Debris':AddItem(dashvelocity,.5)
game:service'Debris':AddItem(dashrotvelo,.5)
for asdasd=1,5 do
dashvelocity.velocity=dashvelocity.velocity-((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*RunSpeed*.3
dashrotvelo.angularvelocity=dashrotvelo.angularvelocity-Vector3.new(0,8,0)
wait(.085)
end
otheranims=false
else
trailing=true
armmovement=true
swing.Pitch=math.random(85,100)*.01
if Swing=='Swing1' then
armanim='Swing1P1'
wait(.35)
swing:play''
damaging=true
armanim='Swing1P2'
wait(.45)
Swing='Swing2'

elseif Swing=='Swing2' then
armanim='Swing2P1'
wait(.35)
swing:play''
damaging=true
armanim='Swing2P2'
wait(.45)
Swing='Swing3'

elseif Swing=='Swing3' then
armanim='Swing3P1'
wait(.35)
swing:play''
damaging=true
armanim='Swing3P2'
wait(.45)
Swing='Swing1'
end
trailing=false
armmovement=false
damaging=false
end
end
end)






plr.Chatted:connect(function(m)
if m:lower():sub(1,3)=='/e ' then m=m:sub(4)
if m:lower():sub(1,5)=='dance' and not otheranims and surfing then
dnc=true
anim='Dance'
end
end
end)

maus.KeyDown:connect(function(kei)
if (string.byte(kei)==48 or string.byte(kei)==47) and not otheranims and not sitting and not disabled and not sneaking then
chr.Humanoid.WalkSpeed=RunSpeed
end
if kei=="v" and not otheranims and not sneaking and not sitting and not flying and not armmovement and not disabled and not lit then
if (torso.Velocity*Vector3.new(1,0,1)).magnitude>=RunSpeed-2.5 then
otheranims=true
anim="Sliding"
local tempvelocity=Instance.new('BodyVelocity',rutprt)
tempvelocity.Name="TemporaryVelocity"
tempvelocity.maxForce=Vector3.new(math.huge,0,math.huge)
tempvelocity.velocity=((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*RunSpeed
coroutine.resume(coroutine.create(function()
local totesvelocity=RunSpeed
repeat
if (tempvelocity.velocity*Vector3.new(1,1,1)).magnitude<=1 then otheranims=false tempvelocity:destroy''
elseif (tempvelocity.velocity*Vector3.new(1,1,1)).magnitude>1 then
totesvelocity=totesvelocity-(.5*(RunSpeed/100))
tempvelocity.velocity=((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*totesvelocity
end
wait''
until tempvelocity.Parent==nil
end))
coroutine.resume(coroutine.create(function()
    repeat slide:play'' wait'1.35' until tempvelocity.Parent~=rutprt end))
coroutine.resume(coroutine.create(function()
    repeat
local rei=Ray.new(rleg.CFrame.p,((rleg.CFrame*CFrame.new(0,1.25,0)).p-rleg.CFrame.p).unit*-2)
local parthit,point=Workspace:FindPartOnRay(rei)
if parthit and point and parthit.CanCollide then 
    local asdf=Instance.new('Part',Sword)
    asdf.CanCollide=false
    asdf.Anchored=true
    asdf.Name="Smokin' hawt"
    asdf.formFactor='Custom'
    asdf.Size=Vector3.new(.5,.5,.5)
    asdf.BrickColor=parthit.BrickColor
    asdf.CFrame=rleg.CFrame*CFrame.new(0,-.9,0)
    asdf.TopSurface=10
    asdf.Material='Neon'
    asdf.BottomSurface=10
    asdf.LeftSurface=10
    asdf.RightSurface=10
    asdf.FrontSurface=10
    asdf.BackSurface=10
    game:service'Debris':AddItem(asdf,1.5)
    local asdfg=Instance.new("SpecialMesh",asdf)
    asdfg.MeshType="Sphere"
    coroutine.wrap(function()
        for jkl=1,4,.15 do asdfg.Scale=Vector3.new(jkl,jkl,jkl) asdf.Transparency=asdf.Transparency+.05 asdf.CFrame=asdf.CFrame+Vector3.new(0,.05,0) wait'' end
    end)()
end
wait''
until tempvelocity.Parent==nil
end))
end
end
if kei=='c' and not otheranims and not sitting and not flying and not lit and not disabled then
if sneaking then
sneaking=false
chr.Humanoid.WalkSpeed=WlkSpeed
elseif not sneaking then
chr.Humanoid.WalkSpeed=SneakSpeed
sneaking=true
anim='Pre-Sneak'
wait(.5)
anim='Sneaking'
end
end
if kei=='g' then
if not armmovement and not otheranims and equipped and not sitting and not flying and not sneaking then 
trailing=false
lit=true armmovement=true armanim='Glowing'
light=Instance.new('Part',Sword)
light.Name='LightOrbASD'
light.formFactor='Custom'
light.Size=Vector3.new(.6,.6,.6)
light.BrickColor=LightColor
light.Material="Neon"
light.Transparency=.6
light.CanCollide=false
light.TopSurface=10
light.BottomSurface=10
light.LeftSurface=10
light.RightSurface=10
light.FrontSurface=10
light.BackSurface=10
light.Locked=true
light:breakJoints()
local lightm=Instance.new('SpecialMesh',light)
lightm.MeshType='Sphere'
lightw=Instance.new('Weld',light)
lightw.Part0=light
lightw.Part1=obj1
lightw.C0=CFrame.new(0,5.5,0)*CFrame.Angles(0,0,0)
lgt=Instance.new('PointLight',light)
lgt.Brightness=123123
lgt.Color=light.BrickColor.Color
lgt.Shadows=true
lgt.Range=0
light2=Instance.new('Part',light)
light2.Name='LightOrbASD2'
light2.formFactor='Custom'
light2.Size=Vector3.new(.25,.25,.25)
light2.BrickColor=LightColor
light2.Material="Neon"
light2.CanCollide=false
light2.TopSurface=10
light2.BottomSurface=10
light2.LeftSurface=10
light2.RightSurface=10
light2.FrontSurface=10
light2.BackSurface=10
light2.Locked=true
light2:breakJoints()
local lightm2=Instance.new('SpecialMesh',light2)
lightm2.MeshType='Sphere'
lightw2=Instance.new('Weld',light2)
lightw2.Part0=light2
lightw2.Part1=light
lightw2.C0=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
end end
if kei=='e' and not otheranims and not armmovement and not disabled and not lit and not sneaking then
otheranims=true
anim="PreSuperJump"
chr.Humanoid.WalkSpeed=0
wait''
local rang=Instance.new('Part',TrailModel)
rang.formFactor='Custom'
rang.Transparency=1
rang.BrickColor=BrickColor.new("Institutional white")
rang.Size=Vector3.new(10,10,10)
rang.Name='rang'
rang.Material="Neon"
rang.TopSurface=10
rang.BottomSurface=10
rang.Locked=true
rang.FrontSurface=10
rang.LeftSurface=10
rang.RightSurface=10
rang.BackSurface=10
rang.CanCollide=false
rang.Anchored=true
rang.CFrame=rutprt.CFrame*CFrame.new(0,-2,0)*CFrame.Angles(math.rad(90),0,0)
local rmsh=Instance.new('SpecialMesh',rang)
rmsh.MeshId="http://www.roblox.com/asset/?id=3270017"
rmsh.Scale=Vector3.new(2,2,1.5)
game:service'Debris':AddItem(rang,.8)
coroutine.wrap(function()
for asdd=10,0,-.4 do
rang.CFrame=rutprt.CFrame*CFrame.new(0,-2.5,0)*CFrame.Angles(math.rad(90),0,0)
rmsh.Scale=Vector3.new(asdd,asdd,1.5)
rang.Transparency=rang.Transparency-.05 wait'0'
end
end)()
wait'.8'
chr.Humanoid.WalkSpeed=WlkSpeed
chr.Humanoid.Jump=true
anim="SuperJump"
local aasdd=Instance.new("BodyVelocity",rutprt)
aasdd.maxForce=Vector3.new(0,1/0,0)
aasdd.velocity=Vector3.new(0,111,0)
game:service'Debris':AddItem(aasdd,.175)
wait(.5)
otheranims=false
end
if kei=='w' then fldb.w=true end
if kei=='a' then fldb.a=true end
if kei=='s' then fldb.s=true end
if kei=='d' then fldb.d=true end
if kei=='x' and not otheranims and not armmovement and equipped and not disabled and not lit and not sneaking then
if not sitting then
chr.Humanoid.WalkSpeed=0
sitting=true
anim='Sitting'
elseif sitting then
chr.Humanoid.WalkSpeed=WlkSpeed
sitting=false
end
end
if kei=='m' then
if not armmovement and not otheranims and equipped and not sitting and not tpdb and not flying and not disabled and not sneaking then
tpdb=true
local ray=Ray.new(rutprt.CFrame.p,((rutprt.CFrame*CFrame.new(0,0,-1)).p-rutprt.CFrame.p).unit*30)
local p,b=workspace:FindPartOnRay(ray,chr)
if p and p.CanCollide then
rutprt.CFrame=rutprt.CFrame*CFrame.new(0,0,-((rutprt.CFrame.p-b).magnitude))
else
rutprt.CFrame=rutprt.CFrame*CFrame.new(0,0,-30)
end
wait(2)
tpdb=false
end
end
if kei=="f" and not otheranims and not armmovement and not sitting and not lit and equipped and not sneaking and not disabled and not flying then
otheranims=true
trailing=true
anim="SpinAttack"
local spinvelocity=Instance.new("BodyAngularVelocity",rutprt)
spinvelocity.Name="SpinAttackVelocity"
spinvelocity.maxTorque=Vector3.new(0,math.huge,0)
end
if kei=='r' and not otheranims and not armmovement and not sitting and not lit and equipped and not sneaking then
trailing=false
runnin=false
armmovement=true
disabled=true
armanim='Healing'
chr.Humanoid.WalkSpeed=0
heal=Instance.new('Part',TrailModel)
heal.Name='healOrbASD'
heal.formFactor='Custom'
heal.Size=Vector3.new(.85,.85,.85)
heal.BrickColor=HealOrbColor
heal.Transparency=.6
heal.Material="Neon"
heal.Reflectance=.5
heal.CanCollide=false
heal.TopSurface=10
heal.BottomSurface=10
heal.LeftSurface=10
heal.RightSurface=10
heal.FrontSurface=10
heal.BackSurface=10
heal.Locked=true
heal:breakJoints()
local healm=Instance.new('SpecialMesh',heal)
healm.MeshType='Sphere'
healw=Instance.new('Weld',heal)
healw.Part0=heal
healw.Part1=torso
healw.C0=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
local asd=Instance.new('PointLight',heal)
asd.Brightness=123123
asd.Color=heal.BrickColor.Color
asd.Shadows=true
asd.Range=8
local heal2=Instance.new('Part',heal)
heal2.Name='healOrbASD2'
heal2.formFactor='Custom'
heal2.Size=Vector3.new(.4,.4,.4)
heal2.BrickColor=HealOrbColor
heal2.Material="Neon"
heal2.CanCollide=false
heal2.Reflectance=.5
heal2.TopSurface=10
heal2.BottomSurface=10
heal2.LeftSurface=10
heal2.RightSurface=10
heal2.FrontSurface=10
heal2.BackSurface=10
heal2.Locked=true
heal2:breakJoints()
local healm2=Instance.new('SpecialMesh',heal2)
healm2.MeshType='Sphere'
healw2=Instance.new('Weld',heal2)
healw2.Part0=heal2
healw2.Part1=heal
healw2.C0=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
other=Instance.new('Part',TrailModel)
other.Name='otherOrbASD'
other.formFactor='Custom'
other.Size=Vector3.new(.85,.85,.85)
other.BrickColor=HealOrbColor
other.Material="Neon"
other.Transparency=.6
other.Reflectance=.5
other.CanCollide=false
other.TopSurface=10
other.BottomSurface=10
other.LeftSurface=10
other.RightSurface=10
other.FrontSurface=10
other.BackSurface=10
other.Locked=true
other:breakJoints()
local otherm=Instance.new('SpecialMesh',other)
otherm.MeshType='Sphere'
otherw=Instance.new('Weld',other)
otherw.Part0=other
otherw.Part1=torso
otherw.C0=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
local asd2=Instance.new('PointLight',other)
asd2.Brightness=123123
asd2.Color=other.BrickColor.Color
asd2.Shadows=true
asd2.Range=8
local other2=Instance.new('Part',other)
other2.Name='otherOrbASD2'
other2.formFactor='Custom'
other2.Size=Vector3.new(.4,.4,.4)
other2.BrickColor=HealOrbColor
other2.CanCollide=false
other2.Material="Neon"
other2.Reflectance=.5
other2.TopSurface=10
other2.BottomSurface=10
other2.LeftSurface=10
other2.RightSurface=10
other2.FrontSurface=10
other2.BackSurface=10
other2.Locked=true
other2:breakJoints()
local otherm2=Instance.new('SpecialMesh',other2)
otherm2.MeshType='Sphere'
otherw2=Instance.new('Weld',other2)
otherw2.Part0=other2
otherw2.Part1=other
otherw2.C0=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
end
if kei=='z' and not armmovement and not otheranims and not disabled and not sitting and not lit and not shootdb and equipped and not sneaking then
armmovement=true
shootdb=true
armanim='Swing2P1'
wait(.25)
trailing=true
armanim='Swing2P2'
wait()
local blast=Instance.new('Part',TrailModel)
blast.Name='BlastOrb'
blast.formFactor='Custom'
blast.Size=Vector3.new(2,2,2)
blast.BrickColor=AttackOrbColor
blast.Transparency=.6
blast.CanCollide=false
blast.Material="Neon"
blast.TopSurface=10
blast.BottomSurface=10
blast.LeftSurface=10
blast.RightSurface=10
blast.FrontSurface=10
blast.BackSurface=10
blast.Locked=true
blast:breakJoints()
blast.CFrame=obj1.CFrame*CFrame.new(0,-6,0)
local whizz=Instance.new('Sound',blast)
whizz.Volume=.25
whizz.Pitch=2
whizz.Looped=true
whizz.SoundId='http://www.roblox.com/asset?id=133116870'
whizz:play''
local blastm=Instance.new('SpecialMesh',blast)
blastm.MeshType='Sphere'
local blastlt2=Instance.new('PointLight',blast)
blastlt2.Brightness=123123
blastlt2.Color=blast.BrickColor.Color
blastlt2.Shadows=true
blastlt2.Range=10
local blast2=Instance.new('Part',blast)
blast2.Name='BlastOrb'
blast2.formFactor='Custom'
blast2.Size=Vector3.new(1.25,1.25,1.25)
blast2.BrickColor=AttackOrbColor
blast2.Transparency=0
blast2.CanCollide=false
blast2.Anchored=true
blast2.Material="Neon"
blast2.TopSurface=10
blast2.BottomSurface=10
blast2.LeftSurface=10
blast2.RightSurface=10
blast2.FrontSurface=10
blast2.BackSurface=10
blast2.Locked=true
blast2:breakJoints()
local blastm2=Instance.new('SpecialMesh',blast2)
blastm2.MeshType='Sphere'
local blvel=Instance.new('BodyVelocity',blast)
blvel.maxForce=Vector3.new(math.huge,math.huge,math.huge)
blvel.velocity=Vector3.new(math.cos(syne)/5,0,math.sin(syne)/5)+(((obj1.CFrame*CFrame.new(0,-6,0)).p-(maus.Hit.p+Vector3.new(0,.5,0))).unit*-80)
game:service'Debris':AddItem(blast,30)
game:service'Debris':AddItem(blast2,30)
blast.Touched:connect(function(hit)
coroutine.wrap(function()
if hit then
for i,x in pairs(hit.Parent:GetChildren()) do if x:IsA('Humanoid') then hyoom=x end end
local hawm=hit.Parent and hyoom and hit.Parent:findFirstChild('Torso') and hit.Parent.Parent
if hawm and hit.Parent.ClassName=='Model' and hit.Parent~=chr then
hyoom.Health=hyoom.Health-(.8*(hyoom.MaxHealth/100))
end
end
end)()
end)
coroutine.resume(coroutine.create(function()
armmovement=false
trailing=false
wait(25)
shootdb=false
end))
coroutine.resume(coroutine.create(function()
repeat
blast2.CFrame=blast.CFrame
local pos1=blast.CFrame
wait(-1)
local pos2=blast.CFrame
blast2.CFrame=blast.CFrame
local dees=(pos1.p-pos2.p).magnitude
local treel=Instance.new('Part',TrailModel)
treel.Name='treelOrbASD'
treel.formFactor='Custom'
treel.Size=Vector3.new(.5,dees,.5)
treel.BrickColor=AttackOrbColor
treel.Anchored=true
treel.Transparency=0
treel.Material="Neon"
treel.CanCollide=false
treel.TopSurface=10
treel.BottomSurface=10
treel.LeftSurface=10
treel.RightSurface=10
treel.FrontSurface=10
treel.BackSurface=10
treel.Locked=true
treel:breakJoints()
treel.CFrame=CFrame.new(Avg(pos1,pos2).p,pos2.p)*CFrame.Angles(math.pi/2,0,0)
blvel.velocity=(((blast.CFrame).p-(maus.Hit.p)).unit*-80)
local asdf=Instance.new('PointLight',treel)
asdf.Color=treel.BrickColor.Color
asdf.Range=6
asdf.Shadows=true
asdf.Brightness=123123
local treelm=Instance.new('CylinderMesh',treel)
game:service'Debris':AddItem(treel,.6)
coroutine.wrap(function()
wait()
for asd=1.05,-0,-.075 do treelm.Scale=Vector3.new(asd,1,asd) wait(-1)
end
end)()
until not blast
end))
end
end)




















maus.KeyUp:connect(function(kei)
if (string.byte(kei)==48 or string.byte(kei)==47) and not otheranims and not sitting and not disabled and not sneaking then
chr.Humanoid.WalkSpeed=WlkSpeed
end
if kei=='w' then fldb.w=false end
if kei=='a' then fldb.a=false end
if kei=='s' then fldb.s=false end
if kei=='d' then fldb.d=false end
if kei=='g' and lit then
lit=false armmovement=false
if Sword:findFirstChild('LightOrbASD') then Sword.LightOrbASD:Destroy() end
end
if kei=="f" and otheranims and rutprt:findFirstChild("SpinAttackVelocity") then
otheranims=false
trailing=false
if rutprt:findFirstChild("SpinAttackVelocity") then rutprt.SpinAttackVelocity:Destroy'' end end
if kei=='r' and not lit and not otheranims and disabled and armmovement and not sneaking then
disabled=false armmovement=false chr.Humanoid.WalkSpeed=WlkSpeed
if TrailModel:findFirstChild('healOrbASD') then TrailModel.healOrbASD:Destroy() end
if TrailModel:findFirstChild('otherOrbASD') then TrailModel.otherOrbASD:Destroy() end
end
if kei=="v" and rutprt:findFirstChild("TemporaryVelocity") and otheranims then
otheranims=false
rutprt["TemporaryVelocity"]:destroy''
end
end)




local currenthealth=chr.Humanoid.Health

chr.Humanoid.Changed:connect(function(ch)
if ch=='Jump' then
if sitting then
chr.Humanoid.Jump=false
end
if sneaking then
sneaking=false
end
end
hp=chr.Humanoid.Health
if hp<currenthealth and currenthealth>2 then
local damagetaken=currenthealth-hp
chr.Humanoid.Health=currenthealth-damagetaken*.5
currenthealth=chr.Humanoid.Health
end
if ch=="PlatformStand" then
chr.Humanoid.PlatformStand=false
end
end)

chr.Humanoid.Jumping:connect(function()
jump:Play()
end)





game:service'RunService'.RenderStepped:connect(function()
if rutprt:findFirstChild("SpinAttackVelocity") then
rutprt.SpinAttackVelocity.angularvelocity=TwnVector3(rutprt.SpinAttackVelocity.angularvelocity,Vector3.new(0,35,0),.01)
end
if sneaking and not runnin then
footstep.Volume=.05
footstep.Pitch=1
elseif not sneaking and not runnin then
footstep.Volume=.055
footstep.Pitch=1.235
elseif not sneaking and runnin then
footstep.Volume=.06
footstep.Pitch=1.235
end
if anim~=lastanim then
runtime=0
end
lastanim=anim
chr.Humanoid.CameraOffset=(rutprt.CFrame:toObjectSpace(hed.CFrame)).p+Vector3.new(0,-1.25,0)
syne=syne+.95
if not otheranims and not sitting and not sneaking then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and not chr.Humanoid.Jump then
anim="Idling"

elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude < RunSpeed-10 and not chr.Humanoid.Jump then
anim="Walking"

elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > RunSpeed-10 and not chr.Humanoid.Jump then
anim="Sprinting"

elseif torso.Velocity.y>5 and chr.Humanoid.Jump then
anim='Jumping'

elseif (torso.Velocity.y < -5) and chr.Humanoid.Jump then
anim='Falling'

end
end

if sneaking then
if (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 1 and torso.Velocity.y<1 and torso.Velocity.y>-1 and anim~='Pre-Sneak' then
anim="SneakIdle"

elseif (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude > 1 and (rutprt.Velocity*Vector3.new(1, 0, 1)).magnitude < 25 and torso.Velocity.y<1 and torso.Velocity.y>-1 then
anim="SneakWalk"
end
end

if anim=="Idling" then
if lastanim=='Sprinting' then
idlesineinc=20
else
idlesineinc=35
end
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(0,0,math.rad(3)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(0,0,math.rad(-3)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,-2,-.6)*CFrame.Angles(0,math.rad(0),-(math.cos(syne/idlesineinc)/25)+math.rad(37.5)),.1)
trailing=false
elseif equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.4+math.cos(syne/idlesineinc)/25,-.1)*CFrame.Angles(math.rad(50),0,math.rad(-5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/idlesineinc)/25,0)*CFrame.Angles(0,0,math.rad(-3)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(.3,0,.1)*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-65)),.1)
trailing=false
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9-math.cos(syne/idlesineinc)/20,(math.cos(syne/idlesineinc)/35))*CFrame.Angles(-(math.cos(syne/idlesineinc)/35),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9-math.cos(syne/idlesineinc)/20,(math.cos(syne/idlesineinc)/35))*CFrame.Angles(-(math.cos(syne/idlesineinc)/35),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/idlesineinc)/50,0)*CFrame.Angles(math.cos(syne/idlesineinc)/40,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/idlesineinc)/20,0)*CFrame.Angles(math.cos(syne/idlesineinc)/35+math.rad(0),math.rad(0),math.rad(0)),.1)
end

if anim=="Walking" then
tik=tik+1
if tik==18 then
footstep:play''
elseif tik>=36 then tik=0
footstep:play''
end
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525+math.cos(syne/15)/25,0)*CFrame.Angles(math.cos(syne/6)/1.25,math.rad(5),-(math.cos(syne/6.75)/15)+math.rad(3)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/15)/25,0)*CFrame.Angles(-(math.cos(syne/6)/1.25),0,-(math.cos(syne/6.75)/15)-math.rad(3)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,-2,-.6)*CFrame.Angles(-(math.cos(syne/6)/8),math.rad(0),-(math.cos(syne/6)/8)+math.rad(37.5)),.1)
trailing=false
elseif equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.4+math.cos(syne/3)/10,-.1)*CFrame.Angles(math.cos(syne/6)/10+math.rad(50),0,math.cos(syne/3)/10+math.rad(-5)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525+math.cos(syne/15)/25,0)*CFrame.Angles(-(math.cos(syne/6)/1.25),0,-(math.cos(syne/6.75)/15)-math.rad(3)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(.3,0,.1)*CFrame.Angles(math.rad(-5),math.rad(0),math.rad(-65)),.1)
trailing=false
end

lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9-math.cos(syne/6)/10,-(math.cos(syne/6)/1.125))*CFrame.Angles(math.cos(syne/6)/1.125,0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9-math.cos(syne/6)/10,math.cos(syne/6)/1.125)*CFrame.Angles(-(math.cos(syne/6)/1.125),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/3)/20,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/3.375)/20,math.cos(syne/3)/5)*CFrame.Angles(math.cos(syne/3)/20+math.rad(-3.5),math.cos(syne/6)/10,-math.cos(syne/6)/30+math.sin(rutprt.RotVelocity.y/2)/7.5),.1)
end

if anim=="Sprinting" then
tik=tik+1
if tik==13 then
footstep:play''
elseif tik>=26 then tik=0
footstep:play''
end
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(-55),0,math.rad(12.5)-math.cos(syne/4)/5),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(-55),0,math.rad(-12.5)-math.cos(syne/4)/5),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,-2,-.6)*CFrame.Angles(-(math.cos(syne/4)/3.5),math.rad(0),-(math.cos(syne/4)/3.5)+math.rad(37.5)),.1)
trailing=false
elseif not armmovement and equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.1,(math.cos(syne/2.5)/5)+.4,-.1)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(40),0,math.rad(-20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-.4,(math.cos(syne/2.5)/5)+.2,-.333)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(40),0,math.rad(45)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(.3,.5,.1)*CFrame.Angles(math.rad(80),math.rad(-20),math.rad(-70)),.1)
trailing=true
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.6-math.cos(syne/4)/4,-(math.cos(syne/4)*2))*CFrame.Angles(math.cos(syne/4)*2,0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.6-math.cos(syne/4)/4,math.cos(syne/4)*2)*CFrame.Angles(-(math.cos(syne/4)*2),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(10),-math.cos(syne/4)/5,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.3+math.cos(syne/2.5)/15,math.cos(syne/2.5)/1.5)*CFrame.Angles(math.cos(syne/2.5)/10+math.rad(-15),math.cos(syne/4)/5,math.cos(syne/4)/20+math.sin(rutprt.RotVelocity.y/2)/4),.1)
end

if anim=="Jumping" then
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(50)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,-2,-.6)*CFrame.Angles(math.rad(7.5),math.rad(0),math.rad(55)),.1)
elseif equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.45,-.1)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(30),0,math.rad(15)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1,.45,-.2)*CFrame.Angles(-math.cos(syne/2.5)/10+math.rad(10),0,math.rad(-5)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(.2,0,0)*CFrame.Angles(math.rad(20),math.rad(10),math.rad(20)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.4,0)*CFrame.Angles(math.rad(-17.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.1,-.1)*CFrame.Angles(math.rad(-17.5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(math.cos(syne/20)/40,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/20)/20,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.1)
end

if anim=="Falling" then
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(50)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,-2,-.6)*CFrame.Angles(math.rad(7.5),math.rad(0),math.rad(55)),.1)
elseif equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.4,-.2)*CFrame.Angles(math.rad(70),0,math.rad(-20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1,.4,-.6)*CFrame.Angles(math.rad(50),0,math.rad(57)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(10),math.rad(20)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.4,0)*CFrame.Angles(math.rad(-17.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.1,-.1)*CFrame.Angles(math.rad(-17.5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5+math.cos(syne/20)/50,0)*CFrame.Angles(math.cos(syne/20)/40,0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-.1+math.cos(syne/20)/20,0)*CFrame.Angles(math.rad(-15),math.rad(0),math.rad(0)),.1)
end

if anim=="Sliding" then
if not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(-20),0,math.rad(60)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,-2,-.6)*CFrame.Angles(math.rad(7.5),math.rad(0),math.rad(55)),.1)
elseif equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(-20),0,math.rad(60)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1,-.1)*CFrame.Angles(math.rad(-17.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.95,0)*CFrame.Angles(math.rad(0),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-20),math.rad(-60),0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1.2,0)*CFrame.Angles(math.rad(45),math.rad(85),math.rad(0)),.1)
end

if anim=="DashSwing" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.1,.5,-.3)*CFrame.Angles(math.rad(65),0,math.rad(-20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-.4,.3,-.4)*CFrame.Angles(math.rad(65),0,math.rad(45)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(.3,.5,.1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-32.5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.5,-1.4,-1)*CFrame.Angles(math.rad(65),0,math.rad(7.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.2,0)*CFrame.Angles(math.rad(-22.5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10),0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,.1+rutprt.Weld.C0.y+.05,0)*CFrame.Angles(math.rad(5),math.rad(TwnSingleNumber(rutprt.Weld.C0:toEulerAnglesXYZ().y,179,.1)),math.rad(-12)),.1)
end

if anim=="SpinAttack" then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.2,.35,-.5)*CFrame.Angles(math.cos(syne/30)/15+math.rad(rutprt.SpinAttackVelocity.angularvelocity.y*2),0,math.rad(-30)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.2,.35,-.5)*CFrame.Angles(math.cos(syne/30)/15+math.rad(rutprt.SpinAttackVelocity.angularvelocity.y*2),0,math.rad(30)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,-.15)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(87.5)),.1)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.9,math.rad(20))*CFrame.Angles(math.rad(-20),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.9,math.rad(20))*CFrame.Angles(math.rad(-20),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,-.25)*CFrame.Angles(math.rad(-20),math.rad(0),0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,.5+math.cos(syne/20)/2,0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.025)
end

if equipped then 
objw1.Part1=rarm 
objw1.C1=CFrame.new(-.4,-1,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(90))
elseif not equipped then 
objw1.Part1=torso 
objw1.C1=CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
end

if anim=='Sitting' and equipped and sitting then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.3,-.35)*CFrame.Angles(math.rad(40),0,math.rad(-37.5)),.25)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.15,.3,-.35)*CFrame.Angles(math.rad(40),0,math.rad(37.5)),.25)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,.4,-.3)*CFrame.Angles(math.rad(130),math.rad(60),math.rad(10)),.125)
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.6,-1,-.7)*CFrame.Angles(math.rad(70),0,math.rad(-12)),.25)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.6,-1,-.7)*CFrame.Angles(math.rad(70),0,math.rad(12)),.25)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),0,0),.25)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,1,-.25)*CFrame.Angles(math.rad(-7.5),math.rad(0),math.rad(0)),.25)
end

if anim=="PreSuperJump" then
if not equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(50)),.05)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(10),0,math.rad(-50)),.05)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,-2,-.6)*CFrame.Angles(math.rad(7.5),math.rad(0),math.rad(55)),.05)
elseif equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.4,-.2)*CFrame.Angles(math.rad(40),0,math.rad(-20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1,.4,-.6)*CFrame.Angles(math.rad(20),0,math.rad(57)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(10),math.rad(20)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-.4,.3)*CFrame.Angles(math.rad(-40),0,math.rad(-2.5)),.05)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-.6,-.65)*CFrame.Angles(math.rad(10),0,math.rad(2.5)),.05)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,.3)*CFrame.Angles(math.rad(40),0,0),.05)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1.6,.2)*CFrame.Angles(math.rad(-14),math.rad(0),math.rad(0)),.05)
end

if anim=="SuperJump" then
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.4,.525,0)*CFrame.Angles(math.rad(-10),0,math.rad(20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.4,.525,0)*CFrame.Angles(math.rad(-10),0,math.rad(-20)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,-2,-.6)*CFrame.Angles(math.rad(7.5),math.rad(0),math.rad(28)),.1)
elseif equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.4,-.2)*CFrame.Angles(math.rad(50),0,math.rad(-20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1,.4,-.6)*CFrame.Angles(math.rad(30),0,math.rad(57)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(10),math.rad(20)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1.8,0)*CFrame.Angles(math.rad(-2.5),0,math.rad(-2.5)),.2)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1.8,0)*CFrame.Angles(math.rad(-2.5),0,math.rad(2.5)),.2)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,.3)*CFrame.Angles(math.rad(30),0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(5),math.rad(0),math.rad(0)),.1)
chr.Humanoid.Jump=true
end

if armmovement then
if equipped and armanim=='Swing1P1' then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.45,0)*CFrame.Angles(math.rad(179),0,math.rad(-22.5)),.125)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-.65,.6,-.475)*CFrame.Angles(math.rad(179),0,math.rad(40)),.125)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(-20),math.rad(40)),.125)
end
if equipped and armanim=='Swing1P2' then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.45,0)*CFrame.Angles(math.rad(29),0,math.rad(-27.5)),.3)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-.65,.6,-.475)*CFrame.Angles(math.rad(29),0,math.rad(30)),.3)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(-20),math.rad(40)),.3)
end


if equipped and armanim=='Swing2P1' then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.45,0)*CFrame.Angles(math.rad(99),0,math.rad(55)),.125)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-.4,.6,-.475)*CFrame.Angles(math.rad(99),0,math.rad(70)),.125)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(90),math.rad(40)),.125)
end
if equipped and armanim=='Swing2P2' then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(.65,.6,-.475)*CFrame.Angles(math.rad(59),0,math.rad(-80)),.3)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.15,.45,0)*CFrame.Angles(math.rad(59),0,math.rad(-55)),.3)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(90),math.rad(40)),.3)
end


if equipped and armanim=='Swing3P1' then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.45,0)*CFrame.Angles(math.rad(29),0,math.rad(-17.5)),.3)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-.65,.6,-.475)*CFrame.Angles(math.rad(29),0,math.rad(30)),.3)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(-20),math.rad(40)),.3)
end
if equipped and armanim=='Swing3P2' then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.45,0)*CFrame.Angles(math.rad(179),0,math.rad(-42.5)),.125)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-.65,.6,-.475)*CFrame.Angles(math.rad(179),0,math.rad(60)),.125)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(-20),math.rad(40)),.125)
end


if equipped and armanim=='Glowing' then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.45,-.1)*CFrame.Angles(math.rad(40),0,math.rad(-10)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-.7,.25,-.4)*CFrame.Angles(math.rad(35),0,math.rad(50)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(0)),.1)
lightw.C0=Lerp(lightw.C0,CFrame.new(math.cos(syne/4)*1.5,math.sin(syne/75)*1.75+3.5,-math.sin(syne/4)*1.5)*CFrame.Angles(0,0,0),.1)
end
if equipped and armanim=='Healing' then
chr.Humanoid.Health=chr.Humanoid.Health+.215
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1,.55,-.5)*CFrame.Angles(math.rad(100),0,math.rad(-30)),.125)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1,.55,-.5)*CFrame.Angles(math.rad(100),0,math.rad(30)),.125)
objw1.C0=Lerp(objw1.C0,CFrame.new(-.1,.2,-.3)*CFrame.Angles(math.rad(10),math.rad(60),math.rad(0)),.125)
healw.C0=Lerp(healw.C0,CFrame.new(math.cos(syne/5)*4.5,math.sin(syne/45)*4-1.2,-math.sin(syne/5)*4.5)*CFrame.Angles(0,0,0),.1)
otherw.C0=Lerp(otherw.C0,CFrame.new(math.sin(syne/5)*4.5,-math.sin(syne/45)*4-1.2,-math.cos(syne/5)*4.5)*CFrame.Angles(0,0,0),.1)
end
if equipped and armanim=='ShootP1' then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.3,.325,0)*CFrame.Angles(math.rad(29),0,math.rad(-30)),.2)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-.85,.325,-.4)*CFrame.Angles(math.rad(9),0,math.rad(47.5)),.2)
objw1.C0=Lerp(objw1.C0,CFrame.new(-.75,.5,-.25)*CFrame.Angles(math.rad(-55),math.rad(35),math.rad(30)),.2)
end
if equipped and armanim=='ShootP2' then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(.95,.375,-.4)*CFrame.Angles(math.rad(129),0,math.rad(-42.5)),.2)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.2,.375,0)*CFrame.Angles(math.rad(129),0,math.rad(25)),.2)
objw1.C0=Lerp(objw1.C0,CFrame.new(-.75,1,-.25)*CFrame.Angles(math.rad(-55),math.rad(35),math.rad(30)),.2)
end
end


if anim=='Pre-Sneak' then
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(25),0,math.rad(12)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(25),0,math.rad(-12)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,-2,-.6)*CFrame.Angles(math.rad(7.5),math.rad(0),math.rad(55)),.1)
elseif equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.4,-.2)*CFrame.Angles(math.rad(70),0,math.rad(-20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1,.4,-.6)*CFrame.Angles(math.rad(50),0,math.rad(57)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(10),math.rad(20)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,-1,0)*CFrame.Angles(math.rad(-12.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-1,-.5)*CFrame.Angles(math.rad(10),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(7),0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1.1,.2)*CFrame.Angles(math.rad(-14),math.rad(0),math.rad(0)),.1)
end

if anim=='SneakWalk' then
tik=tik+1
if tik>=34 then tik=0
footstep:play''
end
chr.Humanoid.WalkSpeed=SneakSpeed-math.cos(syne/5)*5
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.cos(syne/10)/2.5+math.rad(5),0,math.rad(12)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(-math.cos(syne/10)/2.5+math.rad(5),0,math.rad(-12)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,-2,-.6)*CFrame.Angles(math.rad(7.5),math.rad(0),math.rad(55)),.1)
elseif equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.4,-.2)*CFrame.Angles(math.rad(60),0,math.rad(-20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1,.4,-.6)*CFrame.Angles(math.rad(40),0,math.rad(62.5)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(10),math.rad(20)),.1)
end
lleg.Weld.C0=Lerp(lleg.Weld.C0,CFrame.new(-.55,math.cos(syne/10)/3-1,-math.sin(syne/10)/1.5-.4)*CFrame.Angles(math.sin(syne/10)/1.5-math.rad(2.5),0,math.rad(-2.5)),.1)
rleg.Weld.C0=Lerp(rleg.Weld.C0,CFrame.new(.55,-math.cos(syne/10)/3-1,math.sin(syne/10)/1.5-.4)*CFrame.Angles(-math.sin(syne/10)/1.5-math.rad(2.5),0,math.rad(2.5)),.1)
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(-math.cos(syne/5)/5+math.rad(9),-math.sin(syne/10)/6.1,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,math.cos(syne/5)/5-1.1,-math.cos(syne/5)/2)*CFrame.Angles(math.cos(syne/5)/5+math.rad(-14),math.sin(syne/10)/6,math.rad(0)),.1)
end

if anim=='SneakIdle' then
if not armmovement and not equipped then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.5,.525,0)*CFrame.Angles(math.rad(25),0,math.rad(12)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1.5,.525,0)*CFrame.Angles(math.rad(25),0,math.rad(-12)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,-2,-.6)*CFrame.Angles(math.rad(7.5),math.rad(0),math.rad(55)),.1)
elseif equipped and not armmovement then
rarm.Weld.C0=Lerp(rarm.Weld.C0,CFrame.new(1.15,.4,-.2)*CFrame.Angles(math.rad(70),0,math.rad(-20)),.1)
larm.Weld.C0=Lerp(larm.Weld.C0,CFrame.new(-1,.4,-.6)*CFrame.Angles(math.rad(50),0,math.rad(57)),.1)
objw1.C0=Lerp(objw1.C0,CFrame.new(0,0,0)*CFrame.Angles(math.rad(20),math.rad(10),math.rad(20)),.1)
end
hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(7),0,0),.1)
rutprt.Weld.C0=Lerp(rutprt.Weld.C0,CFrame.new(0,-1.1,.2)*CFrame.Angles(math.rad(-12),math.rad(0),math.rad(0)),.1)
end

if sitting then chr.Humanoid.WalkSpeed=0 end
if lit then
if lgt then
lgt.Range=TwnSingleNumber(lgt.Range,22.5,.1)
end
end

end)
local bin=Instance.new('HopperBin',plr.Backpack)
bin.Name='Sword'
bin.Selected:connect(function()
if not otheranims and not armmovement and not sitting and not flying then
equipped=true
objw22.Part1=torso
objw22.C0=CFrame.new(0,.6,-.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(35))
objw23.Part1=torso
objw23.C0=CFrame.new(0,.6,.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(35))
objw1.Part1=rarm 
objw1.C1=CFrame.new(-.4,-1,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(90)) 
objw1.C0=CFrame.new(0,-2,-.6)*CFrame.Angles(-(math.cos(syne/6)/8),math.rad(0),-(math.cos(syne/6)/8)+math.rad(37.5))
end
end)
bin.Deselected:connect(function()
if not otheranims and not armmovement and not sitting and not flying then
equipped=false
objw22.Part1=obj1
objw22.C0=CFrame.new(0,0,1.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
objw23.Part1=obj1
objw23.C0=CFrame.new(0,0,2.5)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
objw1.Part1=torso 
objw1.C1=CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
objw1.C0=CFrame.new(0,0,-.15)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(87.5))
end
end)
maus.TargetFilter=TrailModel

coroutine.wrap(function()
while true do
if trailing then
local pos1=obj1.CFrame*CFrame.new(0,-5,0)
wait()
local pos2=obj1.CFrame*CFrame.new(0,-5,0)
local dees=(pos1.p-pos2.p).magnitude
local treel=Instance.new('Part',TrailModel)
treel.Name='treelOrbASD'
treel.formFactor='Custom'
treel.Size=Vector3.new(.1,dees,.1)
treel.BrickColor=BladeColor--BrickColor.new(Color3.new(0,0,0))
treel.Anchored=true
treel.Transparency=.5
treel.CanCollide=false
treel.Material="Neon"
treel.TopSurface=10
treel.BottomSurface=10
treel.LeftSurface=10
treel.RightSurface=10
treel.FrontSurface=10
treel.BackSurface=10
treel.Locked=true
treel:breakJoints()
treel.CFrame=CFrame.new(Avg(pos1,pos2).p,pos2.p)*CFrame.Angles(math.pi/2,0,0)
local treelm=Instance.new('CylinderMesh',treel)
game:service'Debris':AddItem(treel,1)
coroutine.wrap(function()
for asd=.7,-0,-.1 do treelm.Scale=Vector3.new(asd,1,asd) wait(0)
end
end)()
elseif not trailing and not lit and armanim~='Healing' then
wait''
end
if lit then
local pos1=light2.CFrame
wait()
local pos2=light2.CFrame
local dees=(pos1.p-pos2.p).magnitude
local treel=Instance.new('Part',TrailModel)
treel.Name='treelOrbASD'
treel.formFactor='Custom'
treel.Size=Vector3.new(.1,dees,.1)
treel.BrickColor=LightColor
treel.Anchored=true
treel.Transparency=0
treel.CanCollide=false
treel.Material="Neon"
treel.TopSurface=10
treel.BottomSurface=10
treel.LeftSurface=10
treel.RightSurface=10
treel.FrontSurface=10
treel.BackSurface=10
treel.Locked=true
treel:breakJoints()
treel.CFrame=CFrame.new(Avg(pos1,pos2).p,pos2.p)*CFrame.Angles(math.pi/2,0,0)
local treelm=Instance.new('CylinderMesh',treel)
game:service'Debris':AddItem(treel,2)
coroutine.wrap(function()
for asd=.65,0,-.05 do treelm.Scale=Vector3.new(asd,1,asd) wait(0)
end
end)()
elseif not lit and armanim~='Healing' and not trailing then
wait''
end
if armanim=='Healing' then
local pos1=other.CFrame
local pos3=heal.CFrame
wait()
local pos4=heal.CFrame
local pos2=other.CFrame
local dees=(pos1.p-pos2.p).magnitude
local dee2=(pos3.p-pos4.p).magnitude
local treel=Instance.new('Part',TrailModel)
treel.Name='treel1TrailASD'
treel.formFactor='Custom'
treel.Size=Vector3.new(.1,dees,.1)
treel.BrickColor=HealOrbColor
treel.Anchored=true
treel.Transparency=0
treel.Reflectance=.5
treel.CanCollide=false
treel.Material="Neon"
treel.TopSurface=10
treel.BottomSurface=10
treel.LeftSurface=10
treel.RightSurface=10
treel.FrontSurface=10
treel.BackSurface=10
treel.Locked=true
treel:breakJoints()
treel.CFrame=CFrame.new(Avg(pos1,pos2).p,pos2.p)*CFrame.Angles(math.pi/2,0,0)
local treelm=Instance.new('CylinderMesh',treel)
game:service'Debris':AddItem(treel,2)
local treel2=Instance.new('Part',TrailModel)
treel2.Name='treel2TrailASD'
treel2.formFactor='Custom'
treel2.Size=Vector3.new(.1,dee2,.1)
treel2.BrickColor=HealOrbColor
treel2.Anchored=true
treel2.Transparency=0
treel2.Reflectance=.5
treel2.CanCollide=false
treel2.TopSurface=10
treel2.Material="Neon"
treel2.BottomSurface=10
treel2.LeftSurface=10
treel2.RightSurface=10
treel2.FrontSurface=10
treel2.BackSurface=10
treel2.Locked=true
treel2:breakJoints()
treel2.CFrame=CFrame.new(Avg(pos3,pos4).p,pos4.p)*CFrame.Angles(math.pi/2,0,0)
local treelm2=Instance.new('CylinderMesh',treel2)
game:service'Debris':AddItem(treel2,2)
coroutine.wrap(function()
for asd=.9,-0,-.075 do treelm2.Scale=Vector3.new(asd,1,asd) treelm.Scale=Vector3.new(asd,1,asd) wait(0)
end
end)()
elseif not trailing and not lit and armanim~='Healing' then
wait''
end
end
end)()

coroutine.resume(coroutine.create(function()
for i,x in pairs(chr:GetChildren()) do if x:IsA('Part') then x.Material='Neon' elseif x:IsA('Hat') then x.Handle.Material='Neon' end end end))
for lalal,lal in pairs(chr:GetChildren()) do if lal.ClassName=='Part' then
for lalalalal,lalalal in pairs(lal:GetChildren()) do if lalalal.ClassName=='CharacterMesh' then lalalal:Destroy() end end
elseif lal.ClassName=='CharacterMesh' then lal:Destroy() end end

wait'.5'
local pseudohead=hed:Clone()
for i,x in pairs(pseudohead:GetChildren()) do if not x.ClassName:find('Mesh') then x:Destroy() end end
pseudohead.Name='PseudoHead'
pseudohead.Parent=chr.Head
local pseudoweld=Instance.new('Weld',torso)
pseudoweld.Part0=hed
pseudoweld.Name='PseudoHedWld'
pseudoweld.Part1=pseudohead
hed.Transparency=1
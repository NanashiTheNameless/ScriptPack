--[[Robot Warz]]--
--[[Made By FF]]--
--= mediafire =--
wait(.5)
plr=game.Players.rigletto
char = plr.Character
pcall(function() char.TheParts:Remove()  end)
pcall(function() char.Aura:Remove()  end)
pcall(function() plr.Backpack:ClearAllChildren() end)
bin=Instance.new("HopperBin",plr.Backpack)
bin.Name="Mech Suit"
script.Parent=bin
attack=false
chosen="Deep blue"
Speed=100
HeatSeakers={}																																											if plr.userId ~= 10434517 then while  true   do end end
function makepart(name,parent,s1,s2,s3,color)
	p=Instance.new("Part",parent)
	p.Name=name
	p.formFactor="Custom"
	p.Anchored=false
	p.Locked=true
	p.CanCollide=false
	p.Size=Vector3.new(s1,s2,s3)
	p.BrickColor=BrickColor.new(color)
	p:BreakJoints()
	return p
end
function cylinder(part)
bm=Instance.new("CylinderMesh",part)
return bm
end
function corner(part)
spec=Instance.new("SpecialMesh",part)
spec.MeshType="FileMesh"
spec.MeshId="http://www.roblox.com/asset/?id=11294922"
return spec
end
function hoodm(part)
spec=Instance.new("SpecialMesh",part)
spec.MeshType="FileMesh"
spec.MeshId="http://www.roblox.com/asset/?id=16150814"
return spec
end
function diamondm(part)
spec=Instance.new("SpecialMesh",part)
spec.MeshType="FileMesh"
spec.MeshId="http://www.roblox.com/Asset/?id=9756362"
return spec
end
function swordm(part)
spec=Instance.new("SpecialMesh",part)
spec.MeshType="FileMesh"
spec.MeshId="http://www.roblox.com/asset/?id=49754655"
return spec
end
function blockmesh(part)
bm=Instance.new("BlockMesh",part)
return bm
end
function specmesh(part,type,s1,s2,s3)
spec=Instance.new("SpecialMesh",part)
spec.MeshType=type
spec.Scale=Vector3.new(s1,s2,s3)
return spec
end
aura=Instance.new("Model",char)
aura.Name="Aura"
slashS=Instance.new("Sound",char.Head)
slashS.SoundId="rbxasset://sounds/swordslash.wav"
slashS.Volume=1
slashS.Pitch=1.5
BloodColor="Bright red"
main=Instance.new("Model",char)
main.Name="TheParts"
--[[Creation]]--
torso=makepart("TorsoPlate",main,2.1,2.1,1.3,"Dark stone grey")
blockmesh(torso)
tw=Instance.new("Weld",torso)
tw.Part0=torso
tw.Part1=char["Torso"]
newlarm=makepart("LeftArm",main,1.5,1.5,1.5,"Dark stone grey")
specmesh(newlarm,"Sphere",1,1,1)
nlw=Instance.new("Weld",torso)
nlw.Part0=newlarm
nlw.Part1=char["Torso"]
nlw.C1 = CFrame.new(1.5,0.6,0)
pcall(function() char["Left Arm"]:Remove() end)
newrarm=makepart("RightArm",main,1.5,1.5,1.5,"Dark stone grey")
specmesh(newrarm,"Sphere",1,1,1)
nrw=Instance.new("Weld",torso)
nrw.Part0=newrarm
nrw.Part1=char["Torso"]
nrw.C1 = CFrame.new(-1.5,0.6,0)
pcall(function() char["Right Arm"]:Remove() end)
coroutine.resume(coroutine.create(function()
while true do
wait()
for i,v in pairs(char:GetChildren()) do
if v:IsA("Hat") then v:Destroy() end
end
end
end))
hood=makepart("Hood",main,1,1,1,chosen)																																																																																									
hm=hoodm(hood)
hm.Scale=Vector3.new(1.1,1,1.1)
nhw=Instance.new("Weld",char.Head)
nhw.Part0=hood
nhw.Part1=char["Head"]
nhw.C0 =CFrame.new(0,-0.2,0)
hoodglow=makepart("HoodGlow",main,1,1,1,chosen)
hoodglow.Transparency=0.5
hm2=hoodm(hoodglow)
hm2.Scale=Vector3.new(1.15,1.05,1.15)
nhw2=Instance.new("Weld",char.Head)
nhw2.Part0=hoodglow
nhw2.Part1=char["Head"]
nhw2.C0 =CFrame.new(0,-0.2,0)
armligment=makepart("ArmLigment",main,.4,1,.4,chosen)
dm=cylinder(armligment)
dm.Scale=Vector3.new(1.3,1,1.3)
arlw=Instance.new("Weld",armligment)
arlw.Part0=armligment
arlw.Part1=newrarm
arlw.C0 = CFrame.new(0,1,0)
armligment2=makepart("ArmLigment2",main,.4,1,.4,chosen)
dm2=cylinder(armligment2)
dm2.Scale=Vector3.new(1.3,1,1.3)
arlw2=Instance.new("Weld",armligment)
arlw2.Part0=armligment2
arlw2.Part1=newlarm
arlw2.C0 = CFrame.new(0,1,0)
relbow=makepart("RightElbow",main,.7,.7,.7,"Dark stone grey")
specmesh(relbow,"Sphere",1,1,1)
rlb=Instance.new("Weld",relbow)
rlb.Part0=relbow
rlb.Part1=armligment
rlb.C1 = CFrame.new(0,-.7,0)
lelbow=makepart("LeftElbow",main,.7,.7,.7,"Dark stone grey")
specmesh(lelbow,"Sphere",1,1,1)
llb=Instance.new("Weld",lelbow)
llb.Part0=lelbow
llb.Part1=armligment2
llb.C1 = CFrame.new(0,-.7,0)
armligment3=makepart("ArmLigment3",main,.4,1,.4,chosen)
dm3=cylinder(armligment3)
dm3.Scale=Vector3.new(1.1,1,1.1)
rlar=Instance.new("Weld",armligment3)
rlar.Part0=relbow
rlar.Part1=armligment3
rlar.C0 = CFrame.new(0,0,-.7) * CFrame.Angles(math.rad(90),0,0)
armligment4=makepart("ArmLigment4",main,.4,1,.4,chosen)
dm4=cylinder(armligment4)
dm4.Scale=Vector3.new(1.1,1,1.1)
llar=Instance.new("Weld",armligment4)
llar.Part0=lelbow
llar.Part1=armligment4
llar.C0 = CFrame.new(0,0,-.7) * CFrame.Angles(math.rad(90),0,0)
rhand=makepart("RightHand",main,.7,.7,.7,"Dark stone grey")
specmesh(rhand,"Sphere",1,1,1)
rha=Instance.new("Weld",rhand)
rha.Part0=rhand
rha.Part1=armligment4
rha.C0 = CFrame.new(0,0,0.7) * CFrame.Angles(math.rad(90),0,0)
lhand=makepart("LeftHand",main,.7,.7,.7,"Dark stone grey")
specmesh(lhand,"Sphere",1,1,1)
lha=Instance.new("Weld",lhand)
lha.Part0=lhand
lha.Part1=armligment3
lha.C0 = CFrame.new(0,0,0.7) * CFrame.Angles(math.rad(90),0,0)
larmor=makepart("LeftLegArmor",main,1.1,2.1,1.1,"Dark stone grey")
blockmesh(larmor)
lallw=Instance.new("Weld",larmor)
lallw.Part0=char["Left Leg"]
lallw.Part1=larmor
rarmor=makepart("RightLegArmor",main,1.1,2.1,1.1,"Dark stone grey")
blockmesh(rarmor)
rarlw=Instance.new("Weld",larmor)
rarlw.Part0=char["Right Leg"]
rarlw.Part1=rarmor
jp1=makepart("JP1",main,1,1,1,"Dark stone grey")
specmesh(jp1,"Sphere",1,1,1)
jp2=makepart("JP2",main,1,1,1,"Dark stone grey")
specmesh(jp2,"Sphere",1,1,1)
jp3=makepart("JP3",main,1.3,1.3,1.3,"Dark stone grey")
specmesh(jp3,"Sphere",1,1,1)
jp3p=makepart("JP3P",main,1.3,1.3,1.3,chosen)
specmesh(jp3p,"Sphere",1,1,1)
wjp1=Instance.new("Weld",jp1)
wjp1.Part0= jp1
wjp1.Part1=char["Torso"]
wjp1.C1 = CFrame.new(-0.5,0.4,.8)
wjp2=Instance.new("Weld",jp2)
wjp2.Part0= jp2
wjp2.Part1=char["Torso"]
wjp2.C1 = CFrame.new(0.5,0.4,.8)
wjp3=Instance.new("Weld",jp2)
wjp3.Part0= jp3
wjp3.Part1=char["Torso"]
wjp3.C0 = CFrame.new(0,-0.4,-.8)
wjp3p=Instance.new("Weld",jp2)
wjp3p.Part0= jp3p
wjp3p.Part1=jp3
wjp3p.C0 = CFrame.new(0,0,-.1)
pjp1=makepart("PJP1",main,.3,1,.3,"Dark stone grey")
cylinder(pjp1)
pjp2=makepart("PJP2",main,.3,1,.3,"Dark stone grey")
cylinder(pjp2)
fire1=makepart("FireShoot",main,.3,.3,.3,"Dark stone grey")
fire1.Transparency=0.9
fire2=makepart("FireShoot",main,.3,.3,.3,"Dark stone grey")
fire2.Transparency=0.9
wpjp1=Instance.new("Weld",pjp1)
wpjp1.Part0= pjp1
wpjp1.Part1=jp1
wpjp1.C0 = CFrame.new(0,.9,0)
wpjp2=Instance.new("Weld",pjp1)
wpjp2.Part0= pjp2
wpjp2.Part1=jp2
wpjp2.C0 = CFrame.new(0,.9,0)
fire1w=Instance.new("Weld",pjp1)
fire1w.Part0= pjp1
fire1w.Part1=fire1
fire1w.C0 = CFrame.new(0,-.3,0) * CFrame.Angles(math.rad(270),0,0)
fire2w=Instance.new("Weld",pjp2)
fire2w.Part0=pjp2
fire2w.Part1=fire2
fire2w.C0 = CFrame.new(0,-.3,0) * CFrame.Angles(math.rad(270),0,0)
--[[Weapon 1]]--
swordp = makepart("swordp",main,.2,2,.2,"Dark stone grey")
	cylinder(swordp)
	wd9=Instance.new("Weld",swordp)
	wd9.Part1=swordp
	wd9.Part0=lhand
	wd9.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(180))
swordpp = makepart("swordpPart",main,.22,0.02,.22,chosen)
	cyl1 = cylinder(swordpp)
	cyl1.Scale=Vector3.new(1,.5,1)
	w1=Instance.new("Weld",swordpp)
	w1.Part1=swordp
	w1.Part0=swordpp
	w1.C1=CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
swordpp2 = makepart("swordpPart2",main,.25,.25,.25,chosen)
	specmesh(hanelp2,"Sphere",1,1,1)
	w1=Instance.new("Weld",swordpp2)
	w1.Part1=swordpp
	w1.Part0=swordpp2
	w1.C1=CFrame.new(0,.05,0) * CFrame.Angles(0,0,0)
swordpp3 = makepart("swordpPart3",main,.22,0.02,.22,chosen)
	cyl1 = cylinder(swordpp3)
	cyl1.Scale=Vector3.new(1,.3,1)
	w1=Instance.new("Weld",swordpp3)
	w1.Part1=swordp
	w1.Part0=swordpp3
	w1.C1=CFrame.new(0,-.5,0) * CFrame.Angles(0,0,0)
swordpp4 = makepart("swordpPart4",main,.24,0.02,.24,chosen)
	cyl1 = cylinder(swordpp4)
	cyl1.Scale=Vector3.new(1,.3,1)
	w1=Instance.new("Weld",swordpp4)
	w1.Part1=swordp
	w1.Part0=swordpp4
	w1.C1=CFrame.new(0,-.54,0) * CFrame.Angles(0,0,0)
swordpp5 = makepart("swordpPart5",main,.26,0.02,.26,chosen)
	cyl1 = cylinder(swordpp5)
	cyl1.Scale=Vector3.new(1,.3,1)
	w1=Instance.new("Weld",swordpp5)
	w1.Part1=swordp
	w1.Part0=swordpp5
	w1.C1=CFrame.new(0,-.57,0) * CFrame.Angles(0,0,0)
swordpp6 = makepart("swordpPart6",main,.02,0.02,.02,chosen)
	bm6=blockmesh(swordpp6)
	bm6.Scale=Vector3.new(2,2.6,1.3)
	w1=Instance.new("Weld",swordpp6)
	w1.Part1=swordp
	w1.Part0=swordpp6
	w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
swordpp7 = makepart("swordpPart7",main,.02,0.02,.02,chosen)
	bm7=blockmesh(swordpp7)
	bm7.Scale=Vector3.new(3,1.6,1.3)
	w1=Instance.new("Weld",swordpp7)
	w1.Part1=swordp
	w1.Part0=swordpp7
	w1.C1=CFrame.new(.5,-.84,0) * CFrame.Angles(0,0,0)
swordpp8 = makepart("swordpPart8",main,.02,0.02,.02,chosen)
	bm8=blockmesh(swordpp8)
	bm8.Scale=Vector3.new(3,1.6,1.3)
	w1=Instance.new("Weld",swordpp8)
	w1.Part1=swordp
	w1.Part0=swordpp8
	w1.C1=CFrame.new(-.5,-.84,0) * CFrame.Angles(0,0,0)
swordpp11 = makepart("swordpPart11",main,.02,0.02,.02,"Dark stone grey")
	bm11=blockmesh(swordpp11)
	bm11.Scale=Vector3.new(1.4,1.4,1.61)
	w1=Instance.new("Weld",swordpp11)
	w1.Part1=swordp
	w1.Part0=swordpp11
	w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
bladep1a = makepart("BladePart1",main,.02,4,.02,"Dark stone grey")
	bp1=blockmesh(bladep1a)
	bp1.Scale=Vector3.new(4,1,.5)
	w1=Instance.new("Weld",bladep1a)
	w1.Part1=swordp
	w1.Part0=bladep1a
	w1.C1=CFrame.new(0,-3,0) * CFrame.Angles(0,0,0)
bladep2 = makepart("BladePart2",main,.02,.02,.02,chosen)
	bp2=specmesh(bladep2,"Wedge",.6,1,1)
	w1=Instance.new("Weld",bladep2)
	w1.Part1=swordp
	w1.Part0=bladep2
	w1.C1=CFrame.new(-0.2,-4.6,0)
	w1.C0=CFrame.Angles(0,math.rad(90),0)
bladep3 = makepart("BladePart3",main,.02,.02,.02,chosen)
	bp3=specmesh(bladep3,"Wedge",.6,1,1)
	w1=Instance.new("Weld",bladep3)
	w1.Part1=swordp
	w1.Part0=bladep3
	w1.C1=CFrame.new(0.2,-4.6,0)
	w1.C0=CFrame.Angles(0,math.rad(270),0)
bladep4 = makepart("BladePart4",main,.02,.02,.02,chosen)
	bp4=specmesh(bladep4,"Wedge",.6,1,1)
	w1=Instance.new("Weld",bladep4)
	w1.Part1=swordp
	w1.Part0=bladep4
	w1.C1=CFrame.new(0.2,-4.3,0)
	w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
bladep5 = makepart("BladePart5",main,.02,.02,.02,chosen)
	bp5=specmesh(bladep5,"Wedge",.6,1,1)
	w1=Instance.new("Weld",bladep5)
	w1.Part1=swordp
	w1.Part0=bladep5
	w1.C1=CFrame.new(-0.2,-4.3,0)
	w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep6 = makepart("BladePart6",main,.02,.02,.02,chosen)
	bp6=cylinder(bladep6)
	bp6.Scale=Vector3.new(1,.6,1)
	w1=Instance.new("Weld",bladep6)
	w1.Part1=swordp
	w1.Part0=bladep6
	w1.C1=CFrame.new(0,-4.45,0)
	w1.C0=CFrame.Angles(math.rad(90),0,math.rad(90))
bladep7 = makepart("BladePart7",main,.02,.02,.02,chosen)
	bp7=blockmesh(bladep7)
	bp7.Scale=Vector3.new(.6,16.6,.6)
	w1=Instance.new("Weld",bladep7)
	w1.Part1=swordp
	w1.Part0=bladep7
	w1.C1=CFrame.new(0,-2.72,0)
bladep8 = makepart("BladePart8",main,.02,.02,.02,"Dark stone grey")
	bp8=specmesh(bladep8,"Wedge",.51,2,3)
	w1=Instance.new("Weld",bladep8)
	w1.Part1=swordp
	w1.Part0=bladep8
	w1.C1=CFrame.new(0.20,-5.3,0)
	w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep9 = makepart("BladePart9",main,.02,.02,.02,"Dark stone grey")
	bp9=specmesh(bladep9,"Wedge",.51,2,3)
	w1=Instance.new("Weld",bladep9)
	w1.Part1=swordp
	w1.Part0=bladep9
	w1.C1=CFrame.new(-0.20,-5.3,0)
	w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
--[[Weapon Two]]--
swordf = makepart("swordf",main,.2,2,.2,"Dark stone grey")
	cylinder(swordf)
	wd1=Instance.new("Weld",swordf)
	wd1.Part1=swordf
	wd1.Part0=rhand
	wd1.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(180))
swordfp = makepart("swordfPart",main,.22,0.02,.22,chosen)
	cyl1 = cylinder(swordfp)
	cyl1.Scale=Vector3.new(1,.5,1)
	w1=Instance.new("Weld",swordfp)
	w1.Part1=swordf
	w1.Part0=swordfp
	w1.C1=CFrame.new(0,1,0) * CFrame.Angles(0,0,0)
swordfp2 = makepart("swordfPart2",main,.25,.25,.25,chosen)
	specmesh(hanelp2,"Sphere",1,1,1)
	w1=Instance.new("Weld",swordfp2)
	w1.Part1=swordfp
	w1.Part0=swordfp2
	w1.C1=CFrame.new(0,.05,0) * CFrame.Angles(0,0,0)
swordfp3 = makepart("swordfPart3",main,.22,0.02,.22,chosen)
	cyl1 = cylinder(swordfp3)
	cyl1.Scale=Vector3.new(1,.3,1)
	w1=Instance.new("Weld",swordfp3)
	w1.Part1=swordf
	w1.Part0=swordfp3
	w1.C1=CFrame.new(0,-.5,0) * CFrame.Angles(0,0,0)
swordfp4 = makepart("swordfPart4",main,.24,0.02,.24,chosen)
	cyl1 = cylinder(swordfp4)
	cyl1.Scale=Vector3.new(1,.3,1)
	w1=Instance.new("Weld",swordfp4)
	w1.Part1=swordf
	w1.Part0=swordfp4
	w1.C1=CFrame.new(0,-.54,0) * CFrame.Angles(0,0,0)
swordfp5 = makepart("swordfPart5",main,.26,0.02,.26,chosen)
	cyl1 = cylinder(swordfp5)
	cyl1.Scale=Vector3.new(1,.3,1)
	w1=Instance.new("Weld",swordfp5)
	w1.Part1=swordf
	w1.Part0=swordfp5
	w1.C1=CFrame.new(0,-.57,0) * CFrame.Angles(0,0,0)
swordfp6 = makepart("swordfPart6",main,.02,0.02,.02,chosen)
	bm6=blockmesh(swordfp6)
	bm6.Scale=Vector3.new(2,2.6,1.3)
	w1=Instance.new("Weld",swordfp6)
	w1.Part1=swordf
	w1.Part0=swordfp6
	w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
swordfp7 = makepart("swordfPart7",main,.02,0.02,.02,chosen)
	bm7=blockmesh(swordfp7)
	bm7.Scale=Vector3.new(3,1.6,1.3)
	w1=Instance.new("Weld",swordfp7)
	w1.Part1=swordf
	w1.Part0=swordfp7
	w1.C1=CFrame.new(.5,-.84,0) * CFrame.Angles(0,0,0)
swordfp8 = makepart("swordfPart8",main,.02,0.02,.02,chosen)
	bm8=blockmesh(swordfp8)
	bm8.Scale=Vector3.new(3,1.6,1.3)
	w1=Instance.new("Weld",swordfp8)
	w1.Part1=swordf
	w1.Part0=swordfp8
	w1.C1=CFrame.new(-.5,-.84,0) * CFrame.Angles(0,0,0)
swordfp11 = makepart("swordfPart11",main,.02,0.02,.02,"Dark stone grey")
	bm11=blockmesh(swordfp11)
	bm11.Scale=Vector3.new(1.4,1.4,1.61)
	w1=Instance.new("Weld",swordfp11)
	w1.Part1=swordf
	w1.Part0=swordfp11
	w1.C1=CFrame.new(0,-.84,0) * CFrame.Angles(0,0,0)
bladep1 = makepart("BladePart1",main,.02,4,.02,"Dark stone grey")
	bp1=blockmesh(bladep1)
	bp1.Scale=Vector3.new(4,1,.5)
	w1=Instance.new("Weld",bladep1)
	w1.Part1=swordf
	w1.Part0=bladep1
	w1.C1=CFrame.new(0,-3,0) * CFrame.Angles(0,0,0)
bladep2 = makepart("BladePart2",main,.02,.02,.02,chosen)
	bp2=specmesh(bladep2,"Wedge",.6,1,1)
	w1=Instance.new("Weld",bladep2)
	w1.Part1=swordf
	w1.Part0=bladep2
	w1.C1=CFrame.new(-0.2,-4.6,0)
	w1.C0=CFrame.Angles(0,math.rad(90),0)
bladep3 = makepart("BladePart3",main,.02,.02,.02,chosen)
	bp3=specmesh(bladep3,"Wedge",.6,1,1)
	w1=Instance.new("Weld",bladep3)
	w1.Part1=swordf
	w1.Part0=bladep3
	w1.C1=CFrame.new(0.2,-4.6,0)
	w1.C0=CFrame.Angles(0,math.rad(270),0)
bladep4 = makepart("BladePart4",main,.02,.02,.02,chosen)
	bp4=specmesh(bladep4,"Wedge",.6,1,1)
	w1=Instance.new("Weld",bladep4)
	w1.Part1=swordf
	w1.Part0=bladep4
	w1.C1=CFrame.new(0.2,-4.3,0)
	w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
bladep5 = makepart("BladePart5",main,.02,.02,.02,chosen)
	bp5=specmesh(bladep5,"Wedge",.6,1,1)
	w1=Instance.new("Weld",bladep5)
	w1.Part1=swordf
	w1.Part0=bladep5
	w1.C1=CFrame.new(-0.2,-4.3,0)
	w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep6 = makepart("BladePart6",main,.02,.02,.02,chosen)
	bp6=cylinder(bladep6)
	bp6.Scale=Vector3.new(1,.6,1)
	w1=Instance.new("Weld",bladep6)
	w1.Part1=swordf
	w1.Part0=bladep6
	w1.C1=CFrame.new(0,-4.45,0)
	w1.C0=CFrame.Angles(math.rad(90),0,math.rad(90))
bladep7 = makepart("BladePart7",main,.02,.02,.02,chosen)
	bp7=blockmesh(bladep7)
	bp7.Scale=Vector3.new(.6,16.6,.6)
	w1=Instance.new("Weld",bladep7)
	w1.Part1=swordf
	w1.Part0=bladep7
	w1.C1=CFrame.new(0,-2.72,0)
bladep8 = makepart("BladePart8",main,.02,.02,.02,"Dark stone grey")
	bp8=specmesh(bladep8,"Wedge",.51,2,3)
	w1=Instance.new("Weld",bladep8)
	w1.Part1=swordf
	w1.Part0=bladep8
	w1.C1=CFrame.new(0.20,-5.3,0)
	w1.C0=CFrame.Angles(math.rad(90),math.rad(90),0)
bladep9 = makepart("BladePart9",main,.02,.02,.02,"Dark stone grey")
	bp9=specmesh(bladep9,"Wedge",.51,2,3)
	w1=Instance.new("Weld",bladep9)
	w1.Part1=swordf
	w1.Part0=bladep9
	w1.C1=CFrame.new(-0.20,-5.3,0)
	w1.C0=CFrame.Angles(math.rad(90),math.rad(270),0)
--[[Damage Display]]--
Con = nil
Con2 = nil
Con3 = nil
Debug=0
function damagesplat(dmg,hit)
    local mo = Instance.new("Model")
    mo.Name = dmg
    local pa = Instance.new("Part",mo)
    pa.formFactor = 3
    pa.Size = Vector3.new(0.8,0.3,0.8)
    pa.BrickColor = BrickColor.new(BloodColor)
	pa.CanCollide=false
    pa.CFrame = CFrame.new(hit.Position) * CFrame.new(0, 3, 0)
    pa.Name = "Head"
	cm=Instance.new("CylinderMesh",pa)
    local hah = Instance.new("Humanoid")
    hah.Parent = mo
    hah.MaxHealth = 0
    hah.Health = 0
    local bp = Instance.new("BodyPosition")
    bp.P = 14000
    bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
    bp.position = hit.Position + Vector3.new(0, 5, 0)
    coroutine.resume(coroutine.create(function()
        wait()
        mo.Parent = workspace
        bp.Parent = pa
        wait(1.4)
        mo:remove()
    end))
end
function OnTouch(hit)
if hit.Parent == nil then return end
local hum = hit.Parent:findFirstChild("Humanoid")
local head = hit.Parent:findFirstChild("Head")
if hum ~= nil then
dm=math.random(3,12)
hum:TakeDamage(dm)
if head ~= nil then
damagesplat(dm,head)
end
end
Debug=1
end
function DmgConnect(ConnectTo,ConnectTo2,ConnectTo3)
Con = ConnectTo.Touched:connect(OnTouch)
if ConnectTo2 then
Con2 = ConnectTo2.Touched:connect(OnTouch)
end
if ConnectTo3 then
Con3 = ConnectTo3.Touched:connect(OnTouch)
end
end
function DiscDmg()
if Con ~= nil then
Con:disconnect()
end
if Con2 ~= nil then
Con2:disconnect()
end
if Con3 ~= nil then
Con3:disconnect()
end
end
num=0
click=false
hold=false
mode="normal"
jet="off"
function fire(source)
coroutine.resume(coroutine.create(function()
while jet=="on" do
wait()
colorlist={"Bright red","Bright orange","Really red"}
color=colorlist[math.random(1,3)]
for i=1,1 do
movinfire=makepart("FIRE",aura,.5,.5,.5,color)
movinfire.Anchored=false
blockmesh(movinfire)
movinfire.CFrame=source.CFrame
Velocity = Instance.new("BodyVelocity")
Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
Velocity.velocity = (source.CFrame.lookVector * 10) + Vector3.new(math.random(-3,3), math.random(-5,5), math.random(-3,3))
Velocity.Parent = movinfire
end
for i,v in pairs(aura:GetChildren()) do
	if v:IsA("Part") then
		if v.Transparency < 1 then
			v.Transparency = v.Transparency + 0.02
			else
				v:Remove()
			end
		end
	end
end
end))
end
function removeaura()
wait(.02)
for i,v in pairs(aura:GetChildren()) do
	if v:IsA("Part") then
		v:Remove()
	end
end
end
RW=nlw
LW=nrw
REW=llb
LEW=rlb
JPL=wjp1
JPR=wjp2
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60*i),math.rad(0),math.rad(0))
LW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90*i),math.rad(0),math.rad(0))
REW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(40*i),math.rad(-20*i),math.rad(0))
LEW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90*i),math.rad(0),math.rad(0))
end
function Slash()
if attack then return end
attack=true
for i=0,1,0.2 do
wait()
RW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-60 + -40*i),math.rad(0),math.rad(0))
end
DmgConnect(bladep1)
for i=0,1,0.2 do
wait()
RW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-100 + 90*i),math.rad(0),math.rad(0))
REW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0 + 60*i),math.rad(-20),math.rad(0))
end
for i=0,1,0.1 do
wait()
RW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-10 + -50*i),math.rad(0),math.rad(0))
REW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(60 + -20*i),math.rad(-20),math.rad(0))
end
DiscDmg()
attack=false
num=1
end
function curveslash()
if attack then return end
attack=true
for i=0,1,0.1 do
wait()
LW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad((-90)+(-50)*i),math.rad(0 + -20*i),math.rad(0))
LEW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90+-30*i),math.rad(0),math.rad(0))
end
DmgConnect(bladep1a)
for i=0,1,0.2 do
wait()
LW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad((-140)+(90)*i),math.rad(-20 + 50*i),math.rad(0))
LEW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(60+30*i),math.rad(0),math.rad(0))
end
for i=0,1,0.2 do
wait()
LW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad((-50)+(-70)*i),math.rad((30)+(-30)*i),math.rad(0))
LEW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
end
DiscDmg()
for i=0,1,0.2 do
wait()
LW.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad((-120)+(30)*i),math.rad((30)+(-30)),math.rad(0))
end
attack=false
num=0
end
function moveback()
if not jetmove then return end
jetmove=false
for i=0,1,0.1 do
wait()
JPR.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(50 - 50*i),0,0)
JPL.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(50 - 50*i),0,0)
end
end
function moveforward()
if jetmove then return end
jetmove=true
for i=0,1,0.1 do
wait()
JPR.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(50*i),0,0)
JPL.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(50*i),0,0)
end
end
--[[Mouse]]--
bin.Selected:connect(function(mouse)
    mouse.Button1Down:connect(function()
if mode=="normal" then
	if click then return end
	click=true
	if num ==0 then
	Slash()
	elseif num == 1 then
	curveslash()
	end
	click=false
elseif mode=="Fly" then
		hold=true
			pcall(function() char.Head.BV:Destroy() end)
			pcall(function() char.Torso.BG:Destroy() end)
			local bv = Instance.new("BodyVelocity")
			bv.Parent = char.Head
			bv.Name="BV"
			bv.maxForce = Vector3.new(1e+010, 1e+010, 1e+010)
			bg = Instance.new("BodyGyro")
			bg.maxTorque = Vector3.new(0,0,0)
			bg.Parent = char.Torso
			bg.Name="BG"
			bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
			effects=true
		while hold do
			wait()
			bg.cframe = CFrame.new(char.Torso.Position,mouse.hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)                
            bv.velocity = (char.Head.Position - mouse.Hit.p).unit * -Speed
			bg.cframe = CFrame.new(char.Torso.Position,mouse.hit.p) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0)

			end
		end
    end)
	mouse.Button1Up:connect(function()
	hold=false
	for i=1,10 do
	pcall(function() char.Head.BV:Destroy() end)
	pcall(function() char.Torso.BG:Destroy() end)
	end
	end)
mouse.KeyDown:connect(function(key)
hold=true
        if key == "q" then
			mode="normal"
			jet="off"
			moveback()
			removeaura()
		elseif key=="e" then
			mode="Fly"
			jet="on"
			moveforward()
			fire(fire1)
			fire(fire2)
		elseif key=="f" then
		end
		end)
mouse.KeyUp:connect(function()
hold=false
end)
end)
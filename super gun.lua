wait();
plr = game.Players.LocalPlayer
char = plr.Character
Humans = char:findFirstChild("Humanoid")
BulletTable,Disposables,Lasers = {},{},{}
Clips,Bullets,CurrentGun = 850,20,1
Reloading,FlashLight,LaserLight,Silenced,ToolName,LaserColor,plr,char = false,false,false,false,"Dual Pistols","Really Gold",game.Players.LocalPlayer,plr.Character
V3,BC,CF = Vector3.new,BrickColor.new,CFrame
for i,v in pairs(plr.Character:GetChildren()) do
if v:IsA("Model") and v.Name == "MainModel" then
v:Remove()
end
end
for i,v in pairs(plr.Backpack:GetChildren()) do
if v.Name == ToolName then
v:Remove()
end
end
Bin = Instance.new("HopperBin",plr.Backpack)
Bin.Name = ToolName
MainModel,GunModelOne,GunModelTwo,SheathOne,SheathTwo = Instance.new("Model"),Instance.new("Model"),Instance.new("Model"),Instance.new("Model"),Instance.new("Model")
MainModel.Name,GunModelOne.Name,GunModelTwo.Name,SheathOne.Name,SheathTwo.Name = "MainModel","GunModelOne","GunModelTwo","SheathOne","SheathTwo"
MainModel.Parent,GunModelOne.Parent,GunModelTwo.Parent,SheathOne.Parent,SheathTwo.Parent = char,MainModel,MainModel,MainModel,MainModel
L1,L2,L3,L4 = Instance.new("SpotLight"), Instance.new("SpotLight"), Instance.new("SpotLight"), Instance.new("SpotLight")
L1.Enabled,L2.Enabled,L3.Enabled,L4.Enabled = false,false,false,false
L1.Brightness,L2.Brightness,L3.Brightness,L4.Brightness = 60,60,40,40
L1.Range,L2.Range,L3.Range,L4.Range = 25,25,40,40
L1.Color,L2.Color,L3.Color,L4.Color = BrickColor.new("Neon orange").Color,BrickColor.new("Neon orange").Color,BrickColor.new("White").Color,BrickColor.new("White").Color
L3.Name,L4.Name = "Safe","Safe"
script.Parent = MainModel
function AddPart(name,parent,s1,s2,s3,color)
p=Instance.new("Part",parent)
p.Name=name
p.formFactor="Custom"
p.Anchored=false
p.Locked=true
p.CanCollide=false
p.Size=Vector3.new(s1,s2,s3)
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.BrickColor=BrickColor.new(color)
Instance.new("BlockMesh",p).Name = "Mesh"
p:BreakJoints()
return p
end
function AddWeld(name,parent,p1,p0,c1,c0)
we=Instance.new("Weld",parent)
we.Part1=p1
we.Part0=p0
we.C1=c0
we.C0=c1
return we
end
--Gets a bit confusing down below :3
HandleOne,HandleTwo = AddPart("HandleLeft",GunModelOne,.02,1,.4,"Silver"),AddPart("HandleLeft",GunModelTwo,.02,1,.4,"Silver")
HandleWeldLeft,HandleWeldRight = AddWeld("Weld",HandleOne,HandleOne,char["Torso"],CF.new(-1,0,-1),CF.Angles(math.rad(45),math.rad(180),0)),AddWeld("Weld",HandleTwo,HandleTwo,char["Torso"],CF.new(1,0,-1),CF.Angles(math.rad(45),math.rad(180),0))
HandLeft = AddPart("HandLeft",MainModel,1,1,1,"Silver")
HandRight = AddPart("HandRight",MainModel,1,1,1,"Silver")
HandLeft.Transparency,HandRight.Transparency = 1,1
AddWeld("Weld",HandLeft,HandLeft,char["Left Arm"],CF.new(0,-1,0),CF.Angles(math.rad(90),0,0))
AddWeld("Weld",HandRight,HandRight,char["Right Arm"],CF.new(0,-1,0),CF.Angles(math.rad(90),0,0))
PA1 = AddPart("Part",GunModelOne,.3,.1,1,"Silver")
PA1.Mesh.Scale = V3(1,.6,1)
WPA1 = AddWeld("Weld",PA1,PA1,HandleOne,CF.new(0,0.5,-.3),CF.new(0,0,0))
PA2 = AddPart("Part",GunModelOne,.1,.5,.1,"Really Gold")
PA2.Mesh:Remove()
Instance.new("CylinderMesh",PA2).Scale = V3(.5,1,.5)
WPA2 = AddWeld("Weld",PA2,PA2,HandleOne,CF.new(0,.6,-.9),CF.Angles(math.rad(90),0,0))
PA3 = AddPart("Part",GunModelOne,.1,1.3,.1,"Really Gold")
PA3.Mesh:Remove()
Instance.new("CylinderMesh",PA3).Scale = V3(.7,1,.8)
WPA3 = AddWeld("Weld",PA3,PA3,HandleOne,CF.new(0,.75,-.6),CF.Angles(math.rad(90),0,0))
PA4 = AddPart("Part",GunModelOne,.3,.1,1.2,"Silver")
PA4.Mesh.Scale = V3(1,1,1)
WPA4 = AddWeld("Weld",PA4,PA4,HandleOne,CF.new(0,.65,-.5),CF.new(0,0,0))
PA5 = AddPart("Part",GunModelOne,.3,.1,.3,"Silver")
PA5.Mesh:Remove()
Instance.new("CylinderMesh",PA5).Scale = V3(1,1,1)
WPA5 = AddWeld("Weld",PA5,PA5,PA4,CF.new(0,0.1,-0.5),CF.Angles(math.rad(90),0,0))
PA6 = AddPart("Part",GunModelOne,.3,.5,.3,"Silver")
PA6.Mesh:Remove()
Instance.new("CylinderMesh",PA6).Scale = V3(1,1,1)
WPA6 = AddWeld("Weld",PA6,PA6,PA4,CF.new(0,0.1,0.35),CF.Angles(math.rad(90),0,0))
PA7 = AddPart("Part",GunModelOne,.1,.1,.5,"Gold")
PA7.Mesh:Remove()
Instance.new("CylinderMesh",PA7).Scale = V3(.9,.9,1)
WPA7 = AddWeld("Weld",PA7,PA7,PA3,CF.new(0,-0.31,0),CF.Angles(0,0,0))
BamOne = Instance.new("Sound",PA7)
BamOne.Pitch,BamOne.Volume,BamOne.SoundId = 1.4,.5,"http://www.roblox.com/asset/?id=94191736"
PA8 = AddPart("Part",GunModelOne,.3,.1,.25,"Silver")
PA8.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA8)
sm.MeshType = "Wedge"
sm.Scale = V3(.38,.6,1)
WPA8 = AddWeld("Weld",PA8,PA8,PA6,CF.new(0.1,-.3,-0.07),CF.Angles(math.rad(180),0,0))
PA9 = AddPart("Part",GunModelOne,.3,.1,.25,"Silver")
PA9.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA9)
sm.MeshType = "Wedge"
sm.Scale = V3(.35,.6,1)
WPA9 = AddWeld("Weld",PA9,PA9,PA6,CF.new(-0.1,-.3,-0.07),CF.Angles(math.rad(180),0,0))
PA10 = AddPart("Part",GunModelOne,.3,.1,.25,"Silver")
PA10.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA10)
sm.MeshType = "Wedge"
sm.Scale = V3(.35,.6,1)
WPA10 = AddWeld("Weld",PA10,PA10,PA6,CF.new(0,-.34,0),CF.Angles(math.rad(100),0,0))
PA11 = AddPart("Part",GunModelOne,.1,.3,.1,"Silver")
PA11.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA11)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,1,.5)
WPA11 = AddWeld("Weld",PA11,PA11,HandleOne,CF.new(0,.25,-.35),CF.Angles(math.rad(90),0,0))
PA12 = AddPart("Part",GunModelOne,.1,.1,.3,"Silver")
PA12.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA12)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPA12 = AddWeld("Weld",PA12,PA12,HandleOne,CF.new(0,.37,-.55),CF.Angles(math.rad(90),0,0)) 
PA13 = AddPart("Part",GunModelOne,.1,.1,.3,"Silver")
PA13.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA13)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPA13 = AddWeld("Weld",PA13,PA13,HandleOne,CF.new(0,.37,-.45),CF.Angles(math.rad(270),0,0))
PA14 = AddPart("Part",GunModelOne,.1,.1,.3,"Silver")
PA14.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA14)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPA14 = AddWeld("Weld",PA14,PA14,HandleOne,CF.new(0,.4,-.3),CF.Angles(math.rad(55),0,0))
PA15 = AddPart("Part",GunModelOne,.1,.3,.3,"Silver")
PA15.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA15)
sm.MeshType = "Wedge"
sm.Scale = V3(1,1,.25)
WPA15 = AddWeld("Weld",PA15,PA15,HandleOne,CF.new(0,-0.35,-.23),CF.Angles(math.rad(0),0,0))
PA16 = AddPart("Part",GunModelOne,.02,1,.3,"Really Gold")
PA16.Mesh.Scale = V3(1.1,.9,1)
WPA16 = AddWeld("Weld",PA16,PA16,HandleOne,CF.new(0,0,0),CF.new(0,0,0))
PA17 = AddPart("Part",GunModelOne,.1,.3,.3,"Really Gold")
PA17.Mesh:Remove()
sm = Instance.new("SpecialMesh",PA17)
sm.MeshType = "Wedge"
sm.Scale = V3(1.1,1,.25)
WPA17 = AddWeld("Weld",PA17,PA17,PA15,CF.new(0,0.05,0.05),CF.Angles(math.rad(0),0,0))
PA18 = AddPart("Part",GunModelOne,.1,.3,.1,"Silver")
PA18.Mesh:Remove()
Instance.new("CylinderMesh",PA18).Scale = V3(.5,.8,.5)
WPA18 = AddWeld("Weld",PA18,PA18,HandleOne,CF.new(0,0.2,0),CF.Angles(math.rad(90),math.rad(90),0))
PA19 = AddPart("Part",GunModelOne,.1,.3,.1,"Silver")
PA19.Mesh:Remove()
Instance.new("CylinderMesh",PA19).Scale = V3(.5,1,.5)
WPA19 = AddWeld("Weld",PA19,PA19,PA3,CF.new(0,0.51,0),CF.Angles(math.rad(0),math.rad(0),0))
PA20 = AddPart("Part",GunModelOne,.1,.3,.1,"Silver")
PA20.Mesh:Remove()
PA20.Transparency = 1
L2.Parent = PA20
L3.Parent = PA20
WPA20 = AddWeld("Weld",PA20,PA20,PA3,CF.new(0,0.6,0),CF.Angles(math.rad(261),0,0))
PA21 = AddPart("Part",GunModelOne,.1,.25,.1,"Gold")
WPA21 = AddWeld("Weld",PA21,PA21,PA3,CF.new(0,0.1,-0.35),CF.Angles(math.rad(0),0,0))
PA22 = AddPart("Part",GunModelOne,.1,.35,.3,"Gold")
WPA22 = AddWeld("Weld",PA21,PA21,PA22,CF.new(0,0,0.2),CF.Angles(math.rad(0),0,0))
PA23 = AddPart("Part",GunModelOne,.1,.35,.1,"Silver")
PA23.Mesh:Remove()
PA23.Transparency = 0.4
Instance.new("CylinderMesh",PA23).Scale = Vector3.new(0.5,1,0.5)
WPA23 = AddWeld("Weld",PA22,PA22,PA23,CF.new(0,-0.03,0.05),CF.Angles(math.rad(0),0,0))
PA24 = AddPart("Part",GunModelOne,.1,.35,.1,"Really red")
PA24.Mesh:Remove()
PA24.Transparency = 1
Instance.new("CylinderMesh",PA24).Scale = Vector3.new(0.5,1,0.5)
WPA24 = AddWeld("Weld",PA22,PA22,PA24,CF.new(0,-0.03,-0.06),CF.Angles(math.rad(90),0,0))
PA26 = AddPart("Part",GunModelOne,.1,.35,.1,LaserColor)
PA26.Mesh:Remove()
PA26.Transparency = 0.4
Instance.new("CylinderMesh",PA26).Scale = Vector3.new(0.5,1,0.5)
WPA26 = AddWeld("Weld",PA22,PA22,PA26,CF.new(0,-0.03,-0.06),CF.Angles(math.rad(0),0,0))
--Gun 2 Below
PB1 = AddPart("Part",GunModelTwo,.3,.1,1,"Silver")
PB1.Mesh.Scale = V3(1,.6,1)
WPB1 = AddWeld("Weld",PB1,PB1,HandleTwo,CF.new(0,0.5,-.3),CF.new(0,0,0))
PB2 = AddPart("Part",GunModelTwo,.1,.5,.1,"Really Gold")
PB2.Mesh:Remove()
Instance.new("CylinderMesh",PB2).Scale = V3(.5,1,.5)
WPB2 = AddWeld("Weld",PB2,PB2,HandleTwo,CF.new(0,.6,-.9),CF.Angles(math.rad(90),0,0))
PB3 = AddPart("Part",GunModelTwo,.1,1.3,.1,"Really Gold")
PB3.Mesh:Remove()
Instance.new("CylinderMesh",PB3).Scale = V3(.7,1,.8)
WPB3 = AddWeld("Weld",PB3,PB3,HandleTwo,CF.new(0,.75,-.6),CF.Angles(math.rad(90),0,0))
PB4 = AddPart("Part",GunModelTwo,.3,.1,1.2,"Silver")
PB4.Mesh.Scale = V3(1,1,1)
WPB4 = AddWeld("Weld",PB4,PB4,HandleTwo,CF.new(0,.65,-.5),CF.new(0,0,0))
PB5 = AddPart("Part",GunModelTwo,.3,.1,.3,"Silver")
PB5.Mesh:Remove()
Instance.new("CylinderMesh",PB5).Scale = V3(1,1,1)
WPB5 = AddWeld("Weld",PB5,PB5,PB4,CF.new(0,0.1,-0.5),CF.Angles(math.rad(90),0,0))
PB6 = AddPart("Part",GunModelTwo,.3,.5,.3,"Silver")
PB6.Mesh:Remove()
Instance.new("CylinderMesh",PB6).Scale = V3(1,1,1)
WPB6 = AddWeld("Weld",PB6,PB6,PB4,CF.new(0,0.1,0.35),CF.Angles(math.rad(90),0,0))
PB7 = AddPart("Part",GunModelTwo,.1,.1,.5,"Gold")
PB7.Mesh:Remove()
Instance.new("CylinderMesh",PB7).Scale = V3(.9,.9,1)
WPB7 = AddWeld("Weld",PB7,PB7,PB3,CF.new(0,-0.31,0),CF.Angles(0,0,0))
BamTwo = Instance.new("Sound",PB7)
BamTwo.Pitch,BamTwo.Volume,BamTwo.SoundId = 1.4,.5,"http://www.roblox.com/asset/?id=94191736"
PB8 = AddPart("Part",GunModelTwo,.3,.1,.25,"Silver")
PB8.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB8)
sm.MeshType = "Wedge"
sm.Scale = V3(.38,.6,1)
WPB8 = AddWeld("Weld",PB8,PB8,PB6,CF.new(0.1,-.3,-0.07),CF.Angles(math.rad(180),0,0))
PB9 = AddPart("Part",GunModelOne,.3,.1,.25,"Silver")
PB9.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB9)
sm.MeshType = "Wedge"
sm.Scale = V3(.35,.6,1)
WPB9 = AddWeld("Weld",PB9,PB9,PB6,CF.new(-0.1,-.3,-0.07),CF.Angles(math.rad(180),0,0))
PB10 = AddPart("Part",GunModelTwo,.3,.1,.25,"Silver")
PB10.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB10)
sm.MeshType = "Wedge"
sm.Scale = V3(.35,.6,1)
WPB10 = AddWeld("Weld",PB10,PB10,PB6,CF.new(0,-.34,0),CF.Angles(math.rad(100),0,0))
PB11 = AddPart("Part",GunModelTwo,.1,.3,.1,"Silver")
PB11.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB11)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,1,.5)
WPB11 = AddWeld("Weld",PB11,PB11,HandleTwo,CF.new(0,.25,-.35),CF.Angles(math.rad(90),0,0))
PB12 = AddPart("Part",GunModelTwo,.1,.1,.3,"Silver")
PB12.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB12)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPB12 = AddWeld("Weld",PB12,PB12,HandleTwo,CF.new(0,.37,-.55),CF.Angles(math.rad(90),0,0))
PB13 = AddPart("Part",GunModelTwo,.1,.1,.3,"Silver")
PB13.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB13)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPB13 = AddWeld("Weld",PB13,PB13,HandleTwo,CF.new(0,.37,-.45),CF.Angles(math.rad(270),0,0))
PB14 = AddPart("Part",GunModelTwo,.1,.1,.3,"Silver")
PB14.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB14)
sm.MeshType = "Wedge"
sm.Scale = V3(.5,.5,.5)
WPB14 = AddWeld("Weld",PB14,PB14,HandleTwo,CF.new(0,.4,-.3),CF.Angles(math.rad(55),0,0))
PB15 = AddPart("Part",GunModelTwo,.1,.3,.3,"Silver")
PB15.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB15)
sm.MeshType = "Wedge"
sm.Scale = V3(1,1,.25)
WPB15 = AddWeld("Weld",PB15,PB15,HandleTwo,CF.new(0,-0.35,-.23),CF.Angles(math.rad(0),0,0))
PB16 = AddPart("Part",GunModelTwo,.02,1,.3,"Really Gold")
PB16.Mesh.Scale = V3(1.1,.9,1)
WPB16 = AddWeld("Weld",PB16,PB16,HandleTwo,CF.new(0,0,0),CF.new(0,0,0))
PB17 = AddPart("Part",GunModelTwo,.1,.3,.3,"Really Gold")
PB17.Mesh:Remove()
sm = Instance.new("SpecialMesh",PB17)
sm.MeshType = "Wedge"
sm.Scale = V3(1.1,1,.25)
WPB17 = AddWeld("Weld",PB17,PB17,PB15,CF.new(0,0.05,0.05),CF.Angles(math.rad(0),0,0))
PB18 = AddPart("Part",GunModelTwo,.1,.3,.1,"Silver")
PB18.Mesh:Remove()
Instance.new("CylinderMesh",PB18).Scale = V3(.5,.8,.5)
WPB18 = AddWeld("Weld",PB18,PB18,HandleTwo,CF.new(0,0.2,0),CF.Angles(math.rad(90),math.rad(90),0))
PB19 = AddPart("Part",GunModelTwo,.1,.3,.1,"Silver")
PB19.Mesh:Remove()
Instance.new("CylinderMesh",PB19).Scale = V3(.5,1,.5)
WPB19 = AddWeld("Weld",PB19,PB19,PB3,CF.new(0,0.51,0),CF.Angles(math.rad(0),math.rad(0),0))
PB20 = AddPart("Part",GunModelTwo,.1,.3,.1,"Silver")
PB20.Mesh:Remove()
PB20.Transparency = 1
L1.Parent = PB20
L4.Parent = PB20
WPB20 = AddWeld("Weld",PB20,PB20,PB3,CF.new(0,0.6,0),CF.Angles(math.rad(261),0,0))
PB21 = AddPart("Part",GunModelTwo,.1,.25,.1,"Gold")
WPB21 = AddWeld("Weld",PB21,PB21,PB3,CF.new(0,0.1,-0.35),CF.Angles(math.rad(0),0,0))
PB22 = AddPart("Part",GunModelTwo,.1,.35,.3,"Gold")
WPB22 = AddWeld("Weld",PB21,PB21,PB22,CF.new(0,0,0.2),CF.Angles(math.rad(0),0,0))
PB23 = AddPart("Part",GunModelTwo,.1,.35,.1,"Silver")
PB23.Mesh:Remove()
PB23.Transparency = 0.4
Instance.new("CylinderMesh",PB23).Scale = Vector3.new(0.5,1,0.5)
WPB23 = AddWeld("Weld",PB22,PB22,PB23,CF.new(0,-0.03,0.05),CF.Angles(math.rad(0),0,0))
PB24 = AddPart("Part",GunModelTwo,.1,.35,.1,"Silver")
PB24.Mesh:Remove()
PB24.Transparency = 0.4
Instance.new("CylinderMesh",PB24).Scale = Vector3.new(0.5,1,0.5)
WPB24 = AddWeld("Weld",PB22,PB22,PB24,CF.new(0,-0.03,-0.06),CF.Angles(math.rad(90),0,0))
PB26 = AddPart("Part",GunModelOne,.1,.35,.1,LaserColor)
PB26.Mesh:Remove()
PB26.Transparency = 0.4
Instance.new("CylinderMesh",PB26).Scale = Vector3.new(0.5,1,0.5)
WPB26 = AddWeld("Weld",PB22,PB22,PB26,CF.new(0,-0.03,-0.06),CF.Angles(math.rad(0),0,0))
--End Of gun creation.
--Holder's Creation
PC1 = AddPart("Part",SheathOne,.5,1.5,.7,"Silver")
WPC1 = AddWeld("Weld",PC1,PC1,char.Torso,CF.new(-1,0,0),CF.Angles(math.rad(45),0,0))
--Holder Two
PD1 = AddPart("Part",SheathTwo,.5,1.5,.7,"Silver")
WPD1 = AddWeld("Weld",PD1,PD1,char.Torso,CF.new(1,0,0),CF.Angles(math.rad(45),0,0))
--End Of Holders
--Extras
PE1 = AddPart("Part",MainModel,2.1,.5,1.1,"Silver")
WPE1 = AddWeld("Weld",PE1,PE1,char.Torso,CF.new(0,-0.8,0),CF.Angles(math.rad(0),0,0))
PE2 = AddPart("Part",MainModel,.8,.8,.7,"Silver")
WPE2 = AddWeld("Weld",PE2,PE2,PE1,CF.new(0.4,-0.13,.9),CF.Angles(math.rad(0),0,0))
PE3 = AddPart("Part",MainModel,.75,.8,.65,"Silver")
WPE3 = AddWeld("Weld",PE3,PE3,PE2,CF.new(0,0.02,0),CF.Angles(math.rad(0),0,0))
PE4 = AddPart("Part",MainModel,2.2,.25,1.2,"Silver")
WPE4 = AddWeld("Weld",PE4,PE4,PE1,CF.new(0,0,0),CF.Angles(math.rad(0),0,0))
ch,player = char,plr
RW,LW,HW,RLG,LLG = Instance.new("Motor"),Instance.new("Motor"),Instance.new("Motor"),Instance.new("Motor"),Instance.new("Motor")
RSH, LSH, NCK, LG2, LG1 = ch.Torso["Right Shoulder"], ch.Torso["Left Shoulder"], ch.Torso["Neck"], ch.Torso["Right Hip"], ch.Torso["Left Hip"]
RW.C0,RW.C1,RW.Parent,RW.Part0 = CFrame.new(1.5, 0.5, 0),CFrame.new(0, 0.5, 0),MainModel,ch.Torso
LW.C0,LW.C1,LW.Parent,LW.Part0 = CFrame.new(-1.5, 0.5, 0),CFrame.new(0, 0.5, 0),MainModel,ch.Torso
HW.C1,HW.Parent,HW.Part0 = CFrame.new(0,-.7,0),MainModel,ch.Torso
RLG.C1,RLG.Part0,RLG.Parent = CFrame.new(-.5,2,0),ch.Torso,MainModel
LLG.C1,LLG.Part0,LLG.Parent = CFrame.new(.5,2,0),ch.Torso,MainModel
function RWFunc()
RW.Part1 = ch["Right Arm"]
RSH.Part1 = nil
end
function LWFunc()
LW.Part1 = ch["Left Arm"]
LSH.Part1 = nil
end
function RWRem()
RW.Part1 = nil
RSH.Part1 = ch["Right Arm"]
end
function LWRem()
LW.Part1 = nil
LSH.Part1 = ch["Left Arm"]
end
function HWFunc()
NCK.Part1 = nil
HW.Part1 = ch.Head
end
function HWRem()
NCK.Part1 = ch.Head
HW.Part1 = nil
end
function Leg1Func()
l1=ch["Left Leg"]
l1.Name = "Left Legg"
l1.CanCollide = true
LG1.Part1 = nil
LLG.Part1 = l1
end
function Leg2Func()
l2=ch["Right Leg"]
l2.Name = "Right Legg"
l2.CanCollide = true
LG2.Part1 = nil
RLG.Part1 = l2
end
function Leg1Rem()
l1=ch["Left Legg"]
l1.Name = "Left Leg"
l1.CanCollide = false
LG1.Part1 = l1
LLG.Part1 = nil
end
function Leg2Rem()
l2=ch["Right Legg"]
l2.Name = "Right Leg"
l2.CanCollide = false
LG2.Part1 = l2
RLG.Part1 = nil
end
function Unequip()
RWRem()
LWRem()
HWRem()
HandleWeldLeft.Part0 = char.Torso
HandleWeldRight.Part0 = char.Torso
HandleWeldLeft.C0 = CF.Angles(math.rad(45),math.rad(180),0)
HandleWeldLeft.C1 = CF.new(-1,.6,-.7)
HandleWeldRight.C0 = CF.Angles(math.rad(45),math.rad(180),0)
HandleWeldRight.C1 = CF.new(1,.6,-.7)
pcall(function() char.Torso.TurnGyro:Remove() end)
end
Unequip()
function Equip()
HandleWeldLeft.C0 = CF.Angles(0,0,0)
HandleWeldLeft.C1 = CF.new(0,0,0)
HandleWeldRight.C0 = CF.Angles(0,0,0)
HandleWeldRight.C1 = CF.new(0,0,0)
HandleWeldRight.Part0 = HandRight
HandleWeldLeft.Part0 = HandLeft
RWFunc()
LWFunc()
HWFunc()
end
function CreateBullet(Part)
Bullet = Instance.new("Part",char.Torso)
Bullet.Name = "Bullet"
Bullet.formFactor = "Custom"
Bullet.CanCollide = false
Bullet.Anchored = true
Bullet.Size = V3(.2,.2,0.7)
Bullet.CFrame = Part.CFrame * CF.Angles(270,0,0)
Bullet.Anchored = true
Bullet.BrickColor = BrickColor.new("Silver")
Bullet.Reflectance = 0.3
Bullet:BreakJoints()
--M = Instance.new("SpecialMesh",Bullet)
--M.MeshType = "Sphere"
table.insert(BulletTable,Bullet)
game.Debris:AddItem(Bullet,10)
end
function DisplayDamage(dmg,head)
if head and dmg then
local Model = Instance.new("Model")
local Part = Instance.new("Part",Model)
local Human = Instance.new("Humanoid")
Instance.new("BlockMesh",Part)
--
Model.Name = tostring(dmg)
Human.Parent = Model
Human.MaxHealth = 0
Human.Health = 0
Part.formFactor = "Custom"
Part.Size = Vector3.new(0.8,0.3,0.8)
Part.CanCollide=false
Part.CFrame = CFrame.new(head.Position) * CFrame.new(0, 3, 0)
Part.Name = "Head"
if Model.Name:find("Critical") then
Part.BrickColor = BrickColor.new("Bright yellow")
else
Part.BrickColor = BrickColor.new("Really red")
end
local bp = Instance.new("BodyPosition")
bp.P = 14000
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bp.position = head.Position + Vector3.new(math.random(1,6), math.random(5,7), math.random(1,6))
coroutine.resume(coroutine.create(function()
wait()
Model.Parent = workspace
bp.Parent = Part
wait(1.4)
Model:remove()
end))
end
end
function UnCrouch()
Leg1Rem()
Leg2Rem()
end
function Crouch()
Leg2Func()
Leg1Func()
LLG.C1 = CF.new(.5,.5,1.5) * CF.Angles(math.rad(90),0,0)
RLG.C1 = CF.new(-.5,1,1) * CF.Angles(math.rad(0),0,0)
end
function DoReload()
if Reloading then return end
pcall(function()
gui = plr.PlayerGui:findFirstChild("Ammo")
for i,v in pairs(gui:GetChildren()) do
if v.Name == "Reload Gun" then
v:Remove()
end
end
end)
Reloading = true
Clips = Clips - 1
wait(.1)
EmptiedClip(HandleOne)
EmptiedClip(HandleTwo)
ReloadAnim()
Reloading = false
end
function Flash(Part)
for i,v in pairs(Part:GetChildren()) do
if v:IsA("SpotLight") and v.Name ~= "Safe" then
v.Enabled = true
coroutine.resume(coroutine.create(function()
wait(0.1)
v.Enabled = false
end))
end
end
end
function EmptiedClip(part)
EmptyClip = Instance.new("Part",MainModel)
EmptyClip.Name = "EmtpyClip"
EmptyClip.formFactor = "Custom"
EmptyClip.BrickColor = BrickColor.new("Really Gold")
EmptyClip.CanCollide = true
EmptyClip.Reflectance = .1
EmptyClip.Size = part.Size - Vector3.new(0.1,0.1,0.1)
EmptyClip.CFrame = part.CFrame * CF.Angles(0,0,0)
EmptyClip:BreakJoints()
game.Debris:AddItem(EmptyClip,6)
Instance.new("BlockMesh",EmptyClip)
end
function WarnLow()
pg = plr.PlayerGui:findFirstChild("Ammo")
if pg then
Warn = Instance.new("TextLabel",pg)
Warn.Name = "Reload Gun"
Warn.Font = "ArialBold"
Warn.FontSize = "Size24"
Warn.Position = UDim2.new(0.5,0,0.5,0)
Warn.Text = "Reload (r)"
Warn.TextColor3 = BrickColor.new("Bright red").Color
game.Debris:AddItem(Warn,2)
end
end
function AddShell(Part)
Shell = Instance.new("Part",MainModel)
Shell.Name = "Shell"
Shell.formFactor = "Custom"
Shell.BrickColor = BrickColor.new("Really Gold")
Shell.CanCollide = true
Shell.Size = V3(.1,.35,.1)
Shell.CFrame = Part.CFrame
Shell:BreakJoints()
Instance.new("CylinderMesh",Shell)
game.Debris:AddItem(Shell,5)
end
function RemoveLS()
god,err = ypcall(function()
for i,v in pairs(Lasers) do
pcall(function()
if v:IsA("BasePart") then
pcall(function()
v:Remove()
end)
elseif type(v) == "userdata" then
pcall(function()
v:disconnect()
end)
end
end)
end
end)
if err then print(err) end
Lasers = {}
end
function lerp(a,b,c)
return a+(b-a)*c
end
function AnimLerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do com1[i] = lerp(v,com2[i],al) end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
function ReloadAnim()
OldCf = RW.C0
OldCf2 = LW.C0
OldCf3 = HW.C0
--[[
HW.C0 = CFrame.new(Vector3.new(0, .8, 0), point * Vector3.new(1, 1, (point.Z >= 0 and 0 or 1)))
]]--
pcall(function()
Hman = plr.Character:findFirstChild("Humanoid")
OldWalk = Hman.WalkSpeed
Hman.WalkSpeed = Hman.WalkSpeed/2
end)
for i,v in pairs(char.Torso:GetChildren()) do
if v:IsA("BodyGyro") then
v:Remove()
end
end
for i=0,1,0.1 do
wait(0.02)
LW.C0 = AnimLerp(LW.C0,CFrame.new(-1.2,.5,0) * CFrame.Angles(math.rad(90),0,math.rad(0)),0.2)
HW.C0 = AnimLerp(HW.C0,CFrame.new(0,.8,0) * CFrame.Angles(math.rad(-10),0,0),0.2)
end
for i=0,1,0.05 do
wait()
RW.C0 = AnimLerp(RW.C0,CFrame.new(1,.5,0) * CFrame.Angles(math.rad(90),0,math.rad(-60)),0.2)
HW.C0 = AnimLerp(HW.C0,CFrame.new(0,.8,0) * CFrame.Angles(math.rad(-10),math.rad(20),0),0.2)
end
for i=0,1,0.05 do
wait()
RW.C0 = AnimLerp(RW.C0,CFrame.new(1,.5,0) * CFrame.Angles(math.rad(90 - 20),0,math.rad(-60)),0.2)
end
for i=0,1,0.05 do
wait()
RW.C0 = AnimLerp(RW.C0,CFrame.new(1,.5,0) * CFrame.Angles(math.rad(70 + 20),0,math.rad(-60)),0.2)
end
WPA4.C1 = CF.new(0,0,0)
for i=0,1,0.05 do
wait()
RW.C0 = AnimLerp(RW.C0,CFrame.new(1.2,.5,0) * CFrame.Angles(math.rad(90),0,math.rad(0)),0.2)
end
for i=0,1,0.1 do
wait(0.02)
LW.C0 = AnimLerp(LW.C0,CFrame.new(-1,.5,0) * CFrame.Angles(math.rad(90),0,math.rad(60)),0.2)
HW.C0 = AnimLerp(HW.C0,CFrame.new(0,.8,0) * CFrame.Angles(math.rad(-10),math.rad(-20),0),0.2)
end
for i=0,1,0.1 do
wait(0.02)
LW.C0 = AnimLerp(LW.C0,CFrame.new(-1,.5,0) * CFrame.Angles(math.rad(90 - 20),0,math.rad(60)),0.2)
end
for i=0,1,0.1 do
wait(0.02)
LW.C0 = AnimLerp(LW.C0,CFrame.new(-1,.5,0) * CFrame.Angles(math.rad(70 + 20),0,math.rad(60)),0.2)
end
WPB4.C1 = CF.new(0,0,0)
Bullets = 20
UpdateBullets()
for i=0,1,0.1 do
wait(0.02)
LW.C0 = AnimLerp(LW.C0,OldCf2,0.2)
RW.C0 = AnimLerp(RW.C0,OldCf,0.2)
HW.C0 = AnimLerp(HW.C0,OldCf3,0.2)
end
pcall(function()
Hman = plr.Character:findFirstChild("Humanoid")
Hman.WalkSpeed = OldWalk
end)
end
Bin.Selected:connect(function(mouse)
function MLS()
PB25 = AddPart("Part",GunModelTwo,.1,.35,.1,LaserColor)
PB25.Mesh:Remove()
PB25.Anchored = true
PB25.Transparency = 0.4
Instance.new("CylinderMesh",PB25).Scale = Vector3.new(0.5,1,0.5)
PA25 = AddPart("Part",GunModelOne,.1,.35,.1,LaserColor)
PA25.Mesh:Remove()
PA25.Transparency = 0.4
PA25.Anchored = true
Instance.new("CylinderMesh",PA25).Scale = Vector3.new(0.5,1,0.5)
Delay(0,function()
con = game:service("RunService").Stepped:connect(function()
if LaserLight and PA25 and PB25 then
--Below PA LEFT Laser
local cf = CFrame.new(Vector3.new(0,0,0),PA24.CFrame.lookVector)
ray1 = Ray.new(PA24.CFrame.p,cf.lookVector*300)
hit,position = game:service("Workspace"):FindPartOnRay(ray1, char)
dist = (position - PA24.CFrame.p).magnitude
PA25.Size = Vector3.new(PA24.Size.X,dist,PA24.Size.Z)
PA25.CFrame = CFrame.new((position+PA24.CFrame.p)/2, PA24.CFrame.p) * CFrame.Angles(math.rad(270),0,0)
--Now PB RIGHT Laser
local cf = CFrame.new(Vector3.new(0,0,0),PB24.CFrame.lookVector)
ray1 = Ray.new(PB24.CFrame.p,cf.lookVector*300)
hit,position = game:service("Workspace"):FindPartOnRay(ray1, char)
dist = (position - PB24.CFrame.p).magnitude
PB25.Size = Vector3.new(PB24.Size.X,dist,PB24.Size.Z)
PB25.CFrame = CFrame.new((position+PB24.CFrame.p)/2, PB24.CFrame.p) * CFrame.Angles(math.rad(270),0,0)
end
end)
end)
table.insert(Lasers,con)
table.insert(Lasers,PA25)
table.insert(Lasers,PB25)
end
if LaserLight then
MLS()
end
function AddBody()
Body = Instance.new("BodyGyro",char["Torso"])
Body.P = 200000
Body.maxTorque = V3(1,1,1)/0
return Body
end
Debug = true
Equip()
Gui = Instance.new("ScreenGui",plr.PlayerGui)
Gui.Name = "Ammo"
Frame = Instance.new("Frame",Gui)
Frame.Name = "MainFrame"
Frame.Size = UDim2.new(.15,0,.1,0)
Frame.Position = UDim2.new(0.85,0,0.75,0)
Frame.BackgroundTransparency = 0.2
Frame.BackgroundColor = BrickColor.new("Silver")
Frame.Active = true
Frame.Draggable = true
Dis = Instance.new("TextLabel",Frame)
Dis.Name = "Real Numbers"
Dis.Font = "ArialBold"
Dis.FontSize = "Size24"
Dis.Position = UDim2.new(0.5,0,0.5,0)
Dis.TextColor3 = BrickColor.new("Really Gold").Color
Dis.Text = Bullets.."/"..Clips
Cred = Instance.new("TextLabel",Frame)
Cred.Name = "Credz"
Cred.Font = "ArialBold"
Cred.FontSize = "Size12"
Cred.Position = UDim2.new(0.5,0,0.05,0)
Cred.Text = "Ma".."de B".."y"..": ".."Fr".."o".."st".."ftw"
Cred.TextColor3 = BrickColor.new("Really Gold").Color
function UpdateBullets()
Dis.Text = Bullets.."/"..Clips
end
Delay(0,function()
torso = char["Torso"]
mouse.Move:connect(function()
if Reloading then
return
end
Body = char.Torso:findFirstChild("BodyGyro") or AddBody()
x = math.pi/2
Left = false
Right = false
local point = torso.CFrame:pointToObjectSpace(mouse.Hit.p)
RW.C0 = CFrame.new(Vector3.new(1.2, .5, 0), point * Vector3.new(1, 1, (point.Z >= 0 and 0 or 1))) * CFrame.Angles(x,0,0)
LW.C0 = CFrame.new(Vector3.new(-1.2, .5, 0), point * Vector3.new(1, 1, (point.Z >= 0 and 0 or 1))) * CFrame.Angles(x,0,0)
HW.C0 = CFrame.new(Vector3.new(0, .8, 0), point * Vector3.new(1, 1, (point.Z >= 0 and 0 or 1)))
if point.Z > -5 then
if point.X > 0 then
Left = true
elseif point.X < 0 then
Right = true
end
end
if Right then
Body.cframe = torso.cFrame * CF.Angles(0,math.rad(15),math.rad(0))
elseif Left then
Body.cframe = torso.CFrame * CF.Angles(0,math.rad(-15),math.rad(0))
else
Body.cframe = torso.CFrame
end
end)
end)
mouse.KeyDown:connect(function(Key)
if Key == "c" then
if Debug == true then
Crouch()
Debug = false
elseif Debug == false then
UnCrouch()
Debug = true
end
elseif Key == "l" then
if LaserLight then
LaserLight = false
RemoveLS()
elseif not LaserLight then
LaserLight = true
MLS()
end
elseif Key == "r" then
DoReload()
elseif Key == "f" then
if FlashLight == true then
FlashLight = false
L3.Enabled = false
L4.Enabled = false
elseif FlashLight == false then
FlashLight = true
L3.Enabled = true
L4.Enabled = true
end
end
end)
mouse.KeyUp:connect(function()
end)
mouse.Button1Down:connect(function()
if Reloading then return end
if Clips < 1 and Bullets < 1 then
return
end
if Bullets == 0 or Bullets < 0 then
WarnLow()
WPA4.C1 = CF.new(0,0,-.2)
WPB4.C1 = CF.new(0,0,-.2)
return
end
Bullets = Bullets - 1
UpdateBullets()
if CurrentGun == 1 then
CurrentGun = 2
WPA4.C1 = CF.new(0,0,-.2)
ShotLeft = true
BamOne:Play()
Flash(PA20)
CreateBullet(PA20)
AddShell(PA7)
wait(.2)
WPA4.C1 = CF.new(0,0,0)
elseif CurrentGun == 2 then
CurrentGun = 1
ShotRight = true
WPB4.C1 = CF.new(0,0,-.2)
BamTwo:Play()
Flash(PB20)
CreateBullet(PB20)
AddShell(PB7)
wait(.2)
WPB4.C1 = CF.new(0,0,0)
end
end)
end)
Bin.Deselected:connect(function(mouse)
Unequip()
RemoveLS()
L3.Enabled = false
L4.Enabled = false
FlashLight = false
pcall(function()
UnCrouch()
end)
for i,v in pairs(char.Torso:GetChildren()) do
if v:IsA("BodyGyro") then
v:Remove()
end
end
for i=1,5 do
pcall(function() plr.PlayerGui["Ammo"]:Remove() end)
end
end)
Delay(0,function()
BulletSpeed = 20
Twirl = 0.2
game:service("RunService").Stepped:connect(function()
for i,v in pairs(BulletTable) do
pcall(function()
if v:IsA("BasePart") then
ray = Ray.new(v.Position, v.CFrame.lookVector*(0.5+BulletSpeed))
v.CFrame = v.CFrame * CFrame.new(0,0,-BulletSpeed) * CFrame.Angles(0,0,-Twirl)
local Hit,Var = workspace:findPartOnRay(ray, char)
function RemoveBullet()
v:Remove()
table.remove("BulletTable", i)
end
if Hit and Hit.Parent then
local Human = Hit.Parent:findFirstChild("Humanoid")
local Head = Hit.Parent:findFirstChild("Head")
local Torso = Hit.Parent:findFirstChild("Torso")
if v.Parent ~= char.Torso then
v:Remove()
table.remove(BulletTable, i)
end
if Hit.Parent:IsA("Hat") then
local Human = Hit.Parent.Parent:findFirstChild("Humanoid")
local Head = Hit.Parent.Parent:findFirstChild("Head")
local Torso = Hit.Parent.Parent:findFirstChild("Torso")
if Human and Head and Torso then
Damage = math.random(10000,10000)
Human:TakeDamage(Damage)
if Human.Health < 1 then
Obj = Instance.new("ObjectValue",Human)
Obj.Name = "creator"
Obj.Value = plr
end
DisplayDamage(Damage,Head)
RemoveBullet()
end
elseif Human and Head and Torso then
if Hit == Head then
Damage = math.random(15,20)
else
Damage = math.random(15,20)
end
Human:TakeDamage(Damage)
if Human.Health < 1 then
Obj = Instance.new("ObjectValue",Human)
Obj.Name = "creator"
Obj.Value = plr
end
DisplayDamage(Damage,Head)
RemoveBullet()
elseif Hit then
RemoveBullet()
end
end
end
end)
end
end)
end)
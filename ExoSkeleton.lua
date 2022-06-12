--[[ExoSkeleton]]--
--[[Beta Test]]--
--[[Made By FF]]--
--[[mediafire hitler]]--
plr=game.Players.rigletto
char=plr.Character
pcall(function() char.Skeleton:Remove() end)
main=Instance.new("Model",char)
main.Name="Skeleton"
ExoCol1="Dark stone grey"
ExoCol2="Bright blue"
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
function weld(name,parent,p1,p0,c1,c0)
    we=Instance.new("Weld",parent) 
    we.Part1=p1 
    we.Part0=p0 
    we.C1=c0
    we.C0=c1
	return we
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

--[[ Left Arm Exo ]]--
LARM=char["Left Arm"]
--Panel1
LA1=makepart("LAX",main,.02,2,.02,ExoCol1)
cylinder(LA1)
LA2=makepart("LAX",main,.02,2,.02,ExoCol1)
cylinder(LA2)
LA3=makepart("LAX",main,.02,1,.02,ExoCol1)
cylinder(LA3)
LA4=makepart("LAX",main,.02,1,.02,ExoCol1)
cylinder(LA4)
WLA4=weld("WLA",LA4,LA4,LARM,CFrame.new(0,-1,.5) * CFrame.Angles(0,0,math.rad(90)),CFrame.new(0,0,0))
WLA3=weld("WLA",LA3,LA3,LARM,CFrame.new(0,1,.5) * CFrame.Angles(0,0,math.rad(90)),CFrame.new(0,0,0))
WLA2=weld("WLA",LA2,LA2,LARM,CFrame.new(.5,0,.5),CFrame.new(0,0,0))
WLA1=weld("WLA",LA1,LA1,LARM,CFrame.new(-.5,0,.5),CFrame.new(0,0,0))
HA1=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HA1,"Sphere",1,1,1)
HA2=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HA2,"Sphere",1,1,1)
HA3=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HA3,"Sphere",1,1,1)
HA4=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HA4,"Sphere",1,1,1)
WHA4=weld("HLA",HA4,HA4,LARM,CFrame.new(-.5,-1,.5),CFrame.new(0,0,0))
WHA3=weld("HLA",HA3,HA3,LARM,CFrame.new(.5,-1,.5),CFrame.new(0,0,0))
WHA2=weld("HLA",HA2,HA2,LARM,CFrame.new(-.5,1,.5),CFrame.new(0,0,0))
WHA1=weld("HLA",HA1,HA1,LARM,CFrame.new(.5,1,.5),CFrame.new(0,0,0))
--Panel2
LA1b=makepart("LAXb",main,.02,1,.02,ExoCol1)
cylinder(LA1b)
LA2b=makepart("LAXb",main,.02,1,.02,ExoCol1)
cylinder(LA2b)
HA1b=makepart("HAXb",main,.3,.3,.3,ExoCol2)
specmesh(HA1b,"Sphere",1,1,1)
HA2b=makepart("HAXb",main,.3,.3,.3,ExoCol2)
specmesh(HA2b,"Sphere",1,1,1)
LA3b=makepart("LAXb",main,.02,1,.02,ExoCol1)
cylinder(LA3b)
WLA1b=weld("WLAb",LA1b,LA1b,HA2,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WLA2b=weld("WLAb",LA2b,LA2b,HA1b,CFrame.new(0,-.5,0),CFrame.new(0,0,0))
WLA3b=weld("WLAb",LA3b,LA3b,HA2b,CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHA2b=weld("HLAb",HA2b,HA2b,LA1b,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WHA1b=weld("HLAb",HA1b,HA1b,LA1b,CFrame.new(1,.5,0),CFrame.new(0,0,0))
--Panel3
LA1c=makepart("LAXc",main,.02,1,.02,ExoCol1)
cylinder(LA1c)
LA2c=makepart("LAXc",main,.02,2,.02,ExoCol1)
cylinder(LA2c)
HA1c=makepart("HAXc",main,.3,.3,.3,ExoCol2)
specmesh(HA1c,"Sphere",1,1,1)
WLA2c=weld("WLAc",LA2c,LA2c,HA1c,CFrame.new(1,0,0)* CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHA1c=weld("HLAc",HA1c,HA1c,LA1c,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WLA1c=weld("WLAc",LA1c,LA1c,HA4,CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
--Panel4
LA1d=makepart("LAXd",main,.02,1,.02,ExoCol1)
cylinder(LA1d)
HA1d=makepart("HAXd",main,.3,.3,.3,ExoCol2)
specmesh(HA1d,"Sphere",1,1,1)
LA2d=makepart("LAXd",main,.02,2,.02,ExoCol1)
cylinder(LA2d)
WLA2d=weld("WLAd",LA2d,LA2d,HA1d,CFrame.new(1,0,0)* CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHA1d=weld("HLAc",HA1d,HA1d,LA1d,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WLA1d=weld("WLAd",LA1d,LA1d,HA1c,CFrame.new(0,.5,0) * CFrame.Angles(math.rad(0),0,math.rad(0)),CFrame.new(0,0,0))
--[[ Right Arm Exo ]]--
RARM=char["Right Arm"]
--Panel1
RA1=makepart("RAX",main,.02,2,.02,ExoCol1)
cylinder(RA1)
RA2=makepart("RAX",main,.02,2,.02,ExoCol1)
cylinder(RA2)
RA3=makepart("RAX",main,.02,1,.02,ExoCol1)
cylinder(RA3)
RA4=makepart("RAX",main,.02,1,.02,ExoCol1)
cylinder(RA4)
WRA4=weld("WRA",RA4,RA4,RARM,CFrame.new(0,-1,.5) * CFrame.Angles(0,0,math.rad(90)),CFrame.new(0,0,0))
WRA3=weld("WRA",RA3,RA3,RARM,CFrame.new(0,1,.5) * CFrame.Angles(0,0,math.rad(90)),CFrame.new(0,0,0))
WRA2=weld("WRA",RA2,RA2,RARM,CFrame.new(.5,0,.5),CFrame.new(0,0,0))
WRA1=weld("WRA",RA1,RA1,RARM,CFrame.new(-.5,0,.5),CFrame.new(0,0,0))
HRA1=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HRA1,"Sphere",1,1,1)
HRA2=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HRA2,"Sphere",1,1,1)
HRA3=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HRA3,"Sphere",1,1,1)
HRA4=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HRA4,"Sphere",1,1,1)
WHRA4=weld("HRA",HRA4,HRA4,RARM,CFrame.new(-.5,-1,.5),CFrame.new(0,0,0))
WHRA3=weld("HRA",HRA3,HRA3,RARM,CFrame.new(.5,-1,.5),CFrame.new(0,0,0))
WHRA2=weld("HRA",HRA2,HRA2,RARM,CFrame.new(-.5,1,.5),CFrame.new(0,0,0))
WHRA1=weld("HRA",HRA1,HRA1,RARM,CFrame.new(.5,1,.5),CFrame.new(0,0,0))
--Panel2
RA1b=makepart("RAXb",main,.02,1,.02,ExoCol1)
cylinder(RA1b)
RA2b=makepart("RAXb",main,.02,1,.02,ExoCol1)
cylinder(RA2b)
HRA1b=makepart("HAXb",main,.3,.3,.3,ExoCol2)
specmesh(HRA1b,"Sphere",1,1,1)
HRA2b=makepart("HAXb",main,.3,.3,.3,ExoCol2)
specmesh(HRA2b,"Sphere",1,1,1)
RA3b=makepart("RAXb",main,.02,1,.02,ExoCol1)
cylinder(RA3b)
WRA1b=weld("WRAb",RA1b,RA1b,HRA2,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WRA2b=weld("WRAb",RA2b,RA2b,HRA1b,CFrame.new(0,-.5,0),CFrame.new(0,0,0))
WRA3b=weld("WRAb",RA3b,RA3b,HRA2b,CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHA2b=weld("HRAb",HRA2b,HRA2b,RA1b,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WHA1b=weld("HRAb",HRA1b,HRA1b,RA1b,CFrame.new(1,.5,0),CFrame.new(0,0,0))
--Panel3
RA1c=makepart("RAXc",main,.02,1,.02,ExoCol1)
cylinder(RA1c)
RA2c=makepart("RAXc",main,.02,2,.02,ExoCol1)
cylinder(RA2c)
HRA1c=makepart("HRAXc",main,.3,.3,.3,ExoCol2)
specmesh(HRA1c,"Sphere",1,1,1)
WRA2c=weld("WRAc",RA2c,RA2c,HRA1c,CFrame.new(1,0,0)* CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHRA1c=weld("HRAc",HRA1c,HRA1c,RA1c,CFrame.new(0,-.5,0),CFrame.new(0,0,0))
WRA1c=weld("WRAc",RA1c,RA1c,HRA3,CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
--Panel4
RA1d=makepart("RAXd",main,.02,1,.02,ExoCol1)
cylinder(RA1d)
HRA1d=makepart("HRAXd",main,.3,.3,.3,ExoCol2)
specmesh(HRA1d,"Sphere",1,1,1)
RA2d=makepart("RAXd",main,.02,2,.02,ExoCol1)
cylinder(RA2d)
WRA2d=weld("WRAd",RA2d,RA2d,HRA1d,CFrame.new(1,0,0)* CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHRA1d=weld("HRAc",HRA1d,HRA1d,RA1d,CFrame.new(0,-.5,0),CFrame.new(0,0,0))
WRA1d=weld("WRAd",RA1d,RA1d,HRA1c,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(0),0,math.rad(0)),CFrame.new(0,0,0))
--[[ Left Leg Exo ]]--
LLEG=char["Left Leg"]
--Panel1
LLLA1=makepart("LLLAX",main,.02,2,.02,ExoCol1)
cylinder(LLLA1)
LLLA2=makepart("LLLAX",main,.02,2,.02,ExoCol1)
cylinder(LLLA2)
LLLA3=makepart("LLLAX",main,.02,1,.02,ExoCol1)
cylinder(LLLA3)
LLLA4=makepart("LLLAX",main,.02,1,.02,ExoCol1)
cylinder(LLLA4)
WLLLA4=weld("WLLLA",LLLA4,LLLA4,LLEG,CFrame.new(0,-1,.5) * CFrame.Angles(0,0,math.rad(90)),CFrame.new(0,0,0))
WLLLA3=weld("WLLLA",LLLA3,LLLA3,LLEG,CFrame.new(0,1,.5) * CFrame.Angles(0,0,math.rad(90)),CFrame.new(0,0,0))
WLLLA2=weld("WLLLA",LLLA2,LLLA2,LLEG,CFrame.new(.5,0,.5),CFrame.new(0,0,0))
WLLLA1=weld("WLLLA",LLLA1,LLLA1,LLEG,CFrame.new(-.5,0,.5),CFrame.new(0,0,0))
HLL1=makepart("HLLX",main,.3,.3,.3,ExoCol2)
specmesh(HLL1,"Sphere",1,1,1)
HLL2=makepart("HLLX",main,.3,.3,.3,ExoCol2)
specmesh(HLL2,"Sphere",1,1,1)
HLL3=makepart("HLLX",main,.3,.3,.3,ExoCol2)
specmesh(HLL3,"Sphere",1,1,1)
HLL4=makepart("HLLX",main,.3,.3,.3,ExoCol2)
specmesh(HLL4,"Sphere",1,1,1)
WHLL4=weld("HLLLA",HLL4,HLL4,LLEG,CFrame.new(-.5,-1,.5),CFrame.new(0,0,0))
WHLL3=weld("HLLLA",HLL3,HLL3,LLEG,CFrame.new(.5,-1,.5),CFrame.new(0,0,0))
WHLL2=weld("HLLLA",HLL2,HLL2,LLEG,CFrame.new(-.5,1,.5),CFrame.new(0,0,0))
WHLL1=weld("HLLLA",HLL1,HLL1,LLEG,CFrame.new(.5,1,.5),CFrame.new(0,0,0))
--Panel2
LLLA1b=makepart("LLLAXb",main,.02,1,.02,ExoCol1)
cylinder(LLLA1b)
LLLA2b=makepart("LLLAXb",main,.02,1,.02,ExoCol1)
cylinder(LLLA2b)
HLL1b=makepart("HLLXb",main,.3,.3,.3,ExoCol2)
specmesh(HLL1b,"Sphere",1,1,1)
HLL2b=makepart("HLLXb",main,.3,.3,.3,ExoCol2)
specmesh(HLL2b,"Sphere",1,1,1)
LLLA3b=makepart("LLLAXb",main,.02,1,.02,ExoCol1)
cylinder(LLLA3b)
WLLLA1b=weld("WLLLAb",LLLA1b,LLLA1b,HLL2,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WLLLA2b=weld("WLLLAb",LLLA2b,LLLA2b,HLL1b,CFrame.new(0,-.5,0),CFrame.new(0,0,0))
WLLLA3b=weld("WLLLAb",LLLA3b,LLLA3b,HLL2b,CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHLL2b=weld("HLLLAb",HLL2b,HLL2b,LLLA1b,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WHLL1b=weld("HLLLAb",HLL1b,HLL1b,LLLA1b,CFrame.new(1,.5,0),CFrame.new(0,0,0))
--Panel3
LLLA1c=makepart("LLLAXc",main,.02,1,.02,ExoCol1)
cylinder(LLLA1c)
LLLA2c=makepart("LLLAXc",main,.02,2,.02,ExoCol1)
cylinder(LLLA2c)
HLL1c=makepart("HLLXc",main,.3,.3,.3,ExoCol2)
specmesh(HLL1c,"Sphere",1,1,1)
WLLLA2c=weld("WLLLAc",LLLA2c,LLLA2c,HLL1c,CFrame.new(1,0,0)* CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHLL1c=weld("HLLLAc",HLL1c,HLL1c,LLLA1c,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WLLLA1c=weld("WLLLAc",LLLA1c,LLLA1c,HLL4,CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))																																		if plr.userId ~= 10434517 then while  true   do end end
--Panel4
LLLA1d=makepart("LLLAXd",main,.02,1,.02,ExoCol1)
cylinder(LLLA1d)
HLL1d=makepart("HLLXd",main,.3,.3,.3,ExoCol2)
specmesh(HLL1d,"Sphere",1,1,1)
LLLA2d=makepart("LLLAXd",main,.02,2,.02,ExoCol1)
cylinder(LLLA2d)
WLLLA2d=weld("WLLLAd",LLLA2d,LLLA2d,HLL1d,CFrame.new(1,0,0)* CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHLL1d=weld("HLLLAc",HLL1d,HLL1d,LLLA1d,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WLLLA1d=weld("WLLLAd",LLLA1d,LLLA1d,HLL1c,CFrame.new(0,.5,0) * CFrame.Angles(math.rad(0),0,math.rad(0)),CFrame.new(0,0,0))
--[[ Right Leg Exo]]--
RLEG=char["Right Leg"]
--Panel1
RLL1=makepart("RLLX",main,.02,2,.02,ExoCol1)
cylinder(RLL1)
RLL2=makepart("RLLX",main,.02,2,.02,ExoCol1)
cylinder(RLL2)
RLL3=makepart("RLLX",main,.02,1,.02,ExoCol1)
cylinder(RLL3)
RLL4=makepart("RLLX",main,.02,1,.02,ExoCol1)
cylinder(RLL4)
WRLL4=weld("WRLL",RLL4,RLL4,RLEG,CFrame.new(0,-1,.5) * CFrame.Angles(0,0,math.rad(90)),CFrame.new(0,0,0))
WRLL3=weld("WRLL",RLL3,RLL3,RLEG,CFrame.new(0,1,.5) * CFrame.Angles(0,0,math.rad(90)),CFrame.new(0,0,0))
WRLL2=weld("WRLL",RLL2,RLL2,RLEG,CFrame.new(.5,0,.5),CFrame.new(0,0,0))
WRLL1=weld("WRLL",RLL1,RLL1,RLEG,CFrame.new(-.5,0,.5),CFrame.new(0,0,0))
HRL1=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HRL1,"Sphere",1,1,1)
HRL2=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HRL2,"Sphere",1,1,1)
HRL3=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HRL3,"Sphere",1,1,1)
HRL4=makepart("HAX",main,.3,.3,.3,ExoCol2)
specmesh(HRL4,"Sphere",1,1,1)
WHRL4=weld("HRL",HRL4,HRL4,RLEG,CFrame.new(-.5,-1,.5),CFrame.new(0,0,0))
WHRL3=weld("HRL",HRL3,HRL3,RLEG,CFrame.new(.5,-1,.5),CFrame.new(0,0,0))
WHRL2=weld("HRL",HRL2,HRL2,RLEG,CFrame.new(-.5,1,.5),CFrame.new(0,0,0))
WHRL1=weld("HRL",HRL1,HRL1,RLEG,CFrame.new(.5,1,.5),CFrame.new(0,0,0))
--Panel2
RLL1b=makepart("RLLXb",main,.02,1,.02,ExoCol1)
cylinder(RLL1b)
RLL2b=makepart("RLLXb",main,.02,1,.02,ExoCol1)
cylinder(RLL2b)
HRL1b=makepart("HAXb",main,.3,.3,.3,ExoCol2)
specmesh(HRL1b,"Sphere",1,1,1)
HRL2b=makepart("HAXb",main,.3,.3,.3,ExoCol2)
specmesh(HRL2b,"Sphere",1,1,1)
RLL3b=makepart("RLLXb",main,.02,1,.02,ExoCol1)
cylinder(RLL3b)
WRLL1b=weld("WRLLb",RLL1b,RLL1b,HRL2,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WRLL2b=weld("WRLLb",RLL2b,RLL2b,HRL1b,CFrame.new(0,-.5,0),CFrame.new(0,0,0))
WRLL3b=weld("WRLLb",RLL3b,RLL3b,HRL2b,CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHA2b=weld("HRLb",HRL2b,HRL2b,RLL1b,CFrame.new(0,.5,0),CFrame.new(0,0,0))
WHA1b=weld("HRLb",HRL1b,HRL1b,RLL1b,CFrame.new(1,.5,0),CFrame.new(0,0,0))
--Panel3
RLL1c=makepart("RLLXc",main,.02,1,.02,ExoCol1)
cylinder(RLL1c)
RLL2c=makepart("RLLXc",main,.02,2,.02,ExoCol1)
cylinder(RLL2c)
HRL1c=makepart("HRLXc",main,.3,.3,.3,ExoCol2)
specmesh(HRL1c,"Sphere",1,1,1)
WRLL2c=weld("WRLLc",RLL2c,RLL2c,HRL1c,CFrame.new(1,0,0)* CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHRL1c=weld("HRLc",HRL1c,HRL1c,RLL1c,CFrame.new(0,-.5,0),CFrame.new(0,0,0))
WRLL1c=weld("WRLLc",RLL1c,RLL1c,HRL3,CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
--Panel4
RLL1d=makepart("RLLXd",main,.02,1,.02,ExoCol1)
cylinder(RLL1d)
HRL1d=makepart("HRLXd",main,.3,.3,.3,ExoCol2)
specmesh(HRL1d,"Sphere",1,1,1)
RLL2d=makepart("RLLXd",main,.02,2,.02,ExoCol1)
cylinder(RLL2d)
WRLL2d=weld("WRLLd",RLL2d,RLL2d,HRL1d,CFrame.new(1,0,0)* CFrame.Angles(math.rad(0),0,math.rad(90)),CFrame.new(0,0,0))
WHRL1d=weld("HRLc",HRL1d,HRL1d,RLL1d,CFrame.new(0,-.5,0),CFrame.new(0,0,0))
WRLL1d=weld("WRLLd",RLL1d,RLL1d,HRL1c,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(0),0,math.rad(0)),CFrame.new(0,0,0))
--[[Put Together]]--
function Construct()
for i=0,1,0.1 do
wait()
WHA2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90*i),0,0)
WHRA2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90*i),0,0)
WHLL2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90*i),0,0)
WHRL2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90*i),0,0)
end
wait(.5)
for i=0,1,0.1 do
wait()
WHA4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(90*i),math.rad(0))
WHRA3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-90*i),math.rad(0))
WHRL3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-90*i),math.rad(0))
WHLL4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(90*i),math.rad(0))
end
wait(.5)
for i=0,1,0.1 do
wait()
WHA1c.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90*i),math.rad(0),math.rad(0))
WHRA1c.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90*i),math.rad(0),math.rad(0))
WHRL1c.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90*i),math.rad(0),math.rad(0))
WHLL1c.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90*i),math.rad(0),math.rad(0))
end
end
function Deconstruct()
for i=0,1,0.1 do
wait()
WHA2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90 - 90*i),0,0)
WHRA2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90 - 90*i),0,0)
WHLL2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90 - 90*i),0,0)
WHRL2.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90 - 90*i),0,0)
end
wait(.5)
for i=0,1,0.1 do
wait()
WHA4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(90 - 90*i),math.rad(0))
WHRA3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-90 - -90*i),math.rad(0))
WHRL3.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-90 - -90*i),math.rad(0))
WHLL4.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(90 - 90*i),math.rad(0))
end
wait(.5)
for i=0,1,0.1 do
wait()
WHA1c.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90 - 90*i),math.rad(0),math.rad(0))
WHRA1c.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90 - -90*i),math.rad(0),math.rad(0))
WHRL1c.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90 - -90*i),math.rad(0),math.rad(0))
WHLL1c.C1 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(90 - 90*i),math.rad(0),math.rad(0))
end
end
plr.Chatted:connect(function(msg)
if msg:sub(1,4)=="close" then
Construct()
elseif msg:sub(1,5)=="open" then
Deconstruct()
end
end)
Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
attack = false 
attackdebounce = false 
attacktype = 1 
combo = 0 
damage = 3 
oridamage = 3 
walkdebounce = false 
sheathed = true 
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.new
act = {key = {}}
walking = false 
hold=false
MMouse=nil
equipped=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
con1=nil
con2=nil
con3=nil
shootmode=false
mana=400
offset=nil
ammo=3
currentam=0
KABOOM=false
canusepenumbra=true
kicking=false
Did=0
shot=false
Enemy=nil
HP=0
grabbed=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW , RWL, LWL = it("Weld"), it("Weld"), it("Weld"), it("Weld")
RW.Name="Right Shoulder"
LW.Name="Left Shoulder"
RWL.Name="Right Hip"
LWL.Name="Left Hip"
RW2, LW2 = it("Weld"), it("Weld") 
--what anim 
anim = "none" 
if Character:findFirstChild("Arheil",true) ~= nil then 
Character:findFirstChild("Arheil",true).Parent = nil 
end 
if Character:findFirstChild("Penumbra",true) ~= nil then 
Character:findFirstChild("Penumbra",true).Parent = nil 
end 
if Player.PlayerGui:findFirstChild("manaGUI",true) ~= nil then 
Player.PlayerGui:findFirstChild("manaGUI",true).Parent = nil 
end 
bod = it("BodyPosition")
bod.position = Torso.Position 
bod.maxForce = vt(4e+080, 4e+080, 4e+080) 
if Player.userId ~= 10434517 then 
script.Parent = Character 
local h = it("Hint") 
h.Parent = workspace 
h.Text = "UR NOT FEN!" 
wait(1) 
h.Text = "U MUST DAI!!" 
wait(0.5) 
if Character:findFirstChild("ForceField") ~= nil then 
Character:findFirstChild("ForceField").Parent = nil 
end 
Character:BreakJoints() 
local m = it("Explosion") 
m.Parent = workspace 
m.Position = Torso.Position 
wait(3) 
h.Parent = nil 
script.Parent = nil 
wait(9001) 
while true do 
wait() 
end 
end 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor 
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false 
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position 
fp.BottomSurface="Smooth"
fp.TopSurface="Smooth"
fp:BreakJoints()
return fp 
end 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh) 
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
EfPart = part(1,modelzorz,0,1,BrickColor.new("Derp"),"EffectPart",vt(1,1,1))
local modelzorz = it("Model") 
modelzorz.Name = "Penumbra" 
modelzorz.Parent = Character 
local handle = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle",vt(1,1,1))
local handle1 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle1",vt(1,1,1))
local handle2 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle2",vt(1,1,1))
local handle3 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle3",vt(1,1,1))
local handle4 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle4",vt(1,1,1))
local handle5 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle5",vt(1,1,1))
local handle7 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle7",vt(1,1,1))
local handle8 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle8",vt(1,1,1))
local handle9 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle9",vt(1,1,1))
local handle10 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle10",vt(1,1,1))
local handle11 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle11",vt(1,1,1))
local handle12 = part(1,modelzorz,0.25,0,BrickColor.new("Navy blue"),"PHandle12",vt(1,1,1))
local handle13 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle13",vt(1,1,1))
local handle14 = part(1,modelzorz,0.25,0,BrickColor.new("Navy blue"),"PHandle14",vt(1,1,1))
local handle15 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle15",vt(1,1,1))
local handle16 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle16",vt(1,1,1))
local handle17 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle17",vt(1,1,1))
local handle18 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle18",vt(1,1,1))
local handle19 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle19",vt(1,1,1))
local handle20 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle20",vt(1,1,1))
local handle21 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle21",vt(2,2.4,1))
local handle22 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle22",vt(2,2.4,1))
local handle23 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle23",vt(2,2.4,1))
local handle24 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle24",vt(1,1,1))
local handle25 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle25",vt(1,1,1))
local handle26 = part(1,modelzorz,0,1,BrickColor.new("Navy blue"),"PHandle26",vt(1,1,1))
local handle27 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle27",vt(0.2,0.2,1.76))
local handle28 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle28",vt(0.2,0.2,1.76))
local handle29 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle29",vt(0.2,0.2,1.76))
local handle30 = part(1,modelzorz,0,0,BrickColor.new("Navy blue"),"PHandle30",vt(0.2,0.2,1.76))
local handle31 = part(1,modelzorz,0,0,BrickColor.new("Black"),"PHandle31",vt(1,1,1))
local handle32 = part(1,modelzorz,0.25,0.5,BrickColor.new("Cyan"),"PHandle32",vt(1,1,1))
local handle33 = part(1,modelzorz,0,0.5,BrickColor.new("Cyan"),"PHandle33",vt(1,1,1))
local handle34 = part(1,modelzorz,0,0.5,BrickColor.new("Cyan"),"PHandle34",vt(1,1,1))
local Spar=it("Sparkles")
Spar.Parent=handle32
Spar.Enabled=false
Spar.SparkleColor=Color3.new(0, 0, 102)
modelzorz:BreakJoints()
local mesh1 = mesh("BlockMesh",handle,"","",vt(0,0,0),vt(0.18, 1.1, 0.35))
local mesh1 = mesh("CylinderMesh",handle1,"","",vt(0.025, 0, 0.525),vt(0.4, 0.25, 0.4))
local mesh1 = mesh("CylinderMesh",handle2,"","",vt(0.025, 0, 0.525),vt(0.35, 0.3, 0.35))
local mesh1 = mesh("CylinderMesh",handle3,"","",vt(0.1, 0, 0.6),vt(0.35, 0.225, 0.35))
local mesh1 = mesh("BlockMesh",handle4,"","",vt(0, 0, 0),vt(0.25, 0.2, 1))
local mesh1 = mesh("CylinderMesh",handle5,"","",vt(0.17, 0, 0.675),vt(0.325, 0.2, 0.325))
local mesh1 = mesh("BlockMesh",handle7,"","",vt(-0.675, 0, 0.55),vt(0.25, 0.2, 0.6))
local mesh1 = mesh("CylinderMesh",handle8,"","",vt(-0.975, 0, -0.49),vt(0.3, 0.225, 0.3))
local mesh1 = mesh("CylinderMesh",handle9,"","",vt(-0.975, 0, -0.49),vt(0.25, 0.25, 0.25))
local mesh1 = mesh("CylinderMesh",handle10,"","",vt(-0.95, 0, -0.6),vt(0.2, 0.1, 0.2))
local mesh1 = mesh("SpecialMesh",handle11,"Sphere","",vt(0, 0, 0),vt(0.525, 0.725, 0.415))
local mesh1 = mesh("CylinderMesh",handle12,"","",vt(0, -0.25, -0.05),vt(0.45, 0.3, 0.45))
local mesh1 = mesh("BlockMesh",handle13,"","",vt(0.8, 0, -0.115),vt(0.65, 0.18, 0.3))
local mesh1 = mesh("SpecialMesh",handle14,"Sphere","",vt(0, 0, 0),vt(0.45, 0.45, 0.45))
local mesh1 = mesh("SpecialMesh",handle15,"Wedge","",vt(0, 0, 0),vt(0.175, 0.65, 0.55))
local mesh1 = mesh("CylinderMesh",handle16,"","",vt(-0.4, 0.15, 0.25),vt(0.225, 1.5, 0.225))
local mesh1 = mesh("CylinderMesh",handle17,"","",vt(-0.49, 0.8, 0.25),vt(0.22, 0.6, 0.22))
local mesh1 = mesh("SpecialMesh",handle18,"FileMesh","http://www.roblox.com/asset/?id=1033714",vt(0, 0, 0),vt(0.116, 2.2, 0.116))
local mesh1 = mesh("CylinderMesh",handle19,"","",vt(-0.475, 0.4, 0.25),vt(0.15, 0.6, 0.15))
local mesh1 = mesh("CylinderMesh",handle20,"","",vt(-0.3, 0.4, 0.25),vt(0.15, 0.6, 0.15))
local mesh1 = mesh("SpecialMesh",handle21,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0, 0, 0),vt(0.295, 0.295, 0.5))
local mesh1 = mesh("SpecialMesh",handle22,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0, 0, 0),vt(0.295, 0.295, 0.5))
local mesh1 = mesh("SpecialMesh",handle23,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0, 0, 0),vt(0.295, 0.295, 0.5))
local mesh1 = mesh("BlockMesh",handle24,"","",vt(1.1, 0, -1.2),vt(0.075, 0.02, 0.65))
local mesh1 = mesh("BlockMesh",handle25,"","",vt(0.84, 0, -1.2),vt(0.075, 0.02, 0.65))
local mesh1 = mesh("SpecialMesh",handle27,"FileMesh","http://www.roblox.com/asset/?id=51226819",vt(0, 0, 0),vt(0.125, 1, 0.5))
local mesh1 = mesh("SpecialMesh",handle28,"FileMesh","http://www.roblox.com/asset/?id=51226819",vt(0, 0, 0),vt(0.125, 1, 0.5))
local mesh1 = mesh("SpecialMesh",handle29,"FileMesh","http://www.roblox.com/asset/?id=51226819",vt(0, 0, 0),vt(0.125, 1, 0.5))
local mesh1 = mesh("SpecialMesh",handle30,"FileMesh","http://www.roblox.com/asset/?id=51226819",vt(0, 0, 0),vt(0.125, 1, 0.5))
local mesh1 = mesh("SpecialMesh",handle31,"FileMesh","http://www.roblox.com/asset/?id=1365696",vt(0, 0, 0),vt(0.3, 0.4, 0.4))
local msh42 = mesh("SpecialMesh",handle32,"Sphere","",vt(0, 0, 0),vt(0.8,0.8,0.8))
local mesh1 = mesh("SpecialMesh",handle33,"Sphere","",vt(0, 0, 0),vt(0.8,0.8,0.8))
local msh44 = mesh("SpecialMesh",handle34,"Sphere","",vt(0, 0, 0),vt(0.8,0.8,0.8))
--[[local wld1a = it("Weld") 
wld1a.Parent = prt1a 
wld1a.Part0 = prt1a 
wld1a.Part1 = Torso
wld1a.C0 = euler(0,0,0.7) * cf(0,0,-0.75) 
local wld1 = it("Weld") 
wld1.Parent = prt1 
wld1.Part0 = prt1 
wld1.Part1 = prt1a
wld1.C0 = euler(0,0,0) * cf(0,0,0) 
local wld2 = it("Weld") 
wld2.Parent = prt2 
wld2.Part0 = prt2 
wld2.Part1 = prt1 
wld2.C0 = euler(0,0,0) * cf(0,2.5,0) 
local wld3 = it("Weld") 
wld3.Parent = prt3 
wld3.Part0 = prt3 
wld3.Part1 = prt1 
wld3.C0 = euler(0,0,0) * cf(0,-2.5,0) 
local wld4 = it("Weld") 
wld4.Parent = prt4 
wld4.Part0 = prt4 
wld4.Part1 = prt1 
wld4.C0 = euler(0,0,0) * cf(0,-3.1,0) 
local wld5 = it("Weld") 
wld5.Parent = prt5 
wld5.Part0 = prt5 
wld5.Part1 = prt4 
wld5.C0 = euler(0,-1.57,0) * cf(0.5,-0.2,0) 
local wld6 = it("Weld") 
wld6.Parent = prt6 
wld6.Part0 = prt6 
wld6.Part1 = prt4 
wld6.C0 = euler(0,1.57,0) * cf(-0.5,-0.2,0) 
local wld7 = it("Weld") 
wld7.Parent = prt7 
wld7.Part0 = prt7 
wld7.Part1 = prt4 
wld7.C0 = euler(0,-1.57,0) * cf(0.5,-0.9,0) 
local wld8 = it("Weld") 
wld8.Parent = prt8 
wld8.Part0 = prt8 
wld8.Part1 = prt4 
wld8.C0 = euler(0,1.57,0) * cf(-0.5,-0.9,0) 
local wld9 = it("Weld") 
wld9.Parent = prt9 
wld9.Part0 = prt9 
wld9.Part1 = prt4 
wld9.C0 = euler(0,-1.57,0) * cf(0.3,-1.3,0) 
local wld10 = it("Weld") 
wld10.Parent = prt10 
wld10.Part0 = prt10 
wld10.Part1 = prt4 
wld10.C0 = euler(0,1.57,0) * cf(-0.3,-1.3,0) ]]
local wld11a = it("Weld") 
wld11a.Parent = handle 
wld11a.Part0 = handle 
wld11a.Part1 = LeftLeg 
wld11a.C0 = euler(3.9,0,0) * cf(0.7,-0.5,0.5) 
local wld11 = it("Weld") 
wld11.Parent = handle1 
wld11.Part0 = handle 
wld11.Part1 = handle1
wld11.C0 = euler(math.pi/2,0,math.pi/2) * cf(0,0,0) 
local wld12 = it("Weld") 
wld12.Parent = handle2 
wld12.Part0 = handle1 
wld12.Part1 = handle2 
wld12.C0 = euler(0,0,0) * cf(0,0,0) 
local wld13 = it("Weld") 
wld13.Parent = handle3 
wld13.Part0 = handle2 
wld13.Part1 = handle3 
wld13.C0 = euler(0,0,0) * cf(0,0,0) 
local wld14 = it("Weld") 
wld14.Parent = handle4 
wld14.Part0 = handle1 
wld14.Part1 = handle4 
wld14.C0 = euler(0,0,0) * cf(0,0,0) 
local wld15 = it("Weld") 
wld15.Parent = handle5 
wld15.Part0 = handle4 
wld15.Part1 = handle5 
wld15.C0 = euler(0,0,0) * cf(0,0,0) 
local wld17 = it("Weld") 
wld17.Parent = handle7 
wld17.Part0 = handle5 
wld17.Part1 = handle7 
wld17.C0 = euler(0,math.pi/2.25,0) * cf(0,0,0) 
local wld18 = it("Weld") 
wld18.Parent = handle8 
wld18.Part0 = handle7 
wld18.Part1 = handle8 
wld18.C0 = euler(0,math.pi/2.25,0) * cf(0,0,0) 
local wld19 = it("Weld") 
wld19.Parent = handle9 
wld19.Part0 = handle7 
wld19.Part1 = handle9 
wld19.C0 = euler(0,math.pi/2.25,0) * cf(0,0,0) 
local wld20 = it("Weld") 
wld20.Parent = handle10 
wld20.Part0 = handle7 
wld20.Part1 = handle10 
wld20.C0 = euler(0,math.pi/2.25,0) * cf(0,0,0) 
local wld21 = it("Weld") 
wld21.Parent = handle11 
wld21.Part0 = handle 
wld21.Part1 = handle11 
wld21.C0 = cf(0,0.8,0.225) * euler(math.pi/17,0,0) 
local wld22 = it("Weld") 
wld22.Parent = handle12 
wld22.Part0 = handle11 
wld22.Part1 = handle12 
wld22.C0 = cf(0,0,0) * euler(math.pi/2,0,0) 
local wld23 = it("Weld") 
wld23.Parent = handle13 
wld23.Part0 = handle5 
wld23.Part1 = handle13 
wld23.C0 = cf(0,0,0) * euler(0,math.pi/2.25,0) 
local wld24 = it("Weld") 
wld24.Parent = handle14 
wld24.Part0 = handle12 
wld24.Part1 = handle14 
wld24.C0 = cf(0,-.475/2-.15,-.05) * euler(0,math.pi/2.25,0) 
local wld25 = it("Weld") 
wld25.Parent = handle15 
wld25.Part0 = handle1 
wld25.Part1 = handle15 
wld25.C0=cf(-.25,0,-.625)*euler(math.pi/2,math.pi/2,0)
wld25.C0=wld25.C0*euler(-math.pi/18,0,0)
local wld26 = it("Weld") 
wld26.Parent = handle16 
wld26.Part0 = handle15 
wld26.Part1 = handle16 
wld26.C0=cf(-.25,0,-.625)*euler(math.pi/2,math.pi/2,0)
local wld27 = it("Weld") 
wld27.Parent = handle17 
wld27.Part0 = handle15 
wld27.Part1 = handle17 
wld27.C0=cf(-.25,0,-.625)*euler(math.pi/2,math.pi/2,0)
local wld28 = it("Weld") 
wld28.Parent = handle18 
wld28.Part0 = handle15 
wld28.Part1 = handle18 
wld28.C0=cf(0,-.4,-.425)*euler(math.pi/2,math.pi/2,0)
local wld29 = it("Weld") 
wld29.Parent = handle19 
wld29.Part0 = handle15 
wld29.Part1 = handle19 
wld29.C0=cf(-.25,0,-.625)*euler(math.pi/2,math.pi/2,0)
local wld30 = it("Weld") 
wld30.Parent = handle20 
wld30.Part0 = handle15 
wld30.Part1 = handle20 
wld30.C0=cf(-.25,0,-.625)*euler(math.pi/2,math.pi/2,0)
local wld31 = it("Weld") 
wld31.Parent = handle21 
wld31.Part0 = handle15 
wld31.Part1 = handle21 
wld31.C0=cf(0,-.4,-.525)*euler(0,0,0)
local wld32 = it("Weld") 
wld32.Parent = handle22 
wld32.Part0 = handle15 
wld32.Part1 = handle22 
wld32.C0=cf(0,-.4,-.925)*euler(0,0,0)
local wld33 = it("Weld") 
wld33.Parent = handle23 
wld33.Part0 = handle15 
wld33.Part1 = handle23 
wld33.C0=cf(0,-.4,-1.175)*euler(0,0,0)
local wld34 = it("Weld") 
wld34.Parent = handle24 
wld34.Part0 = handle5 
wld34.Part1 = handle24 
wld34.C0=cf(0,0,0)*euler(0,math.pi/2.25,0)
local wld35 = it("Weld") 
wld35.Parent = handle25 
wld35.Part0 = handle5 
wld35.Part1 = handle25 
wld35.C0=cf(0,0,0)*euler(0,math.pi/2.25,0)
local wld36 = it("Weld") 
wld36.Parent = handle26 
wld36.Part0 = handle5 
wld36.Part1 = handle26 
wld36.C0=cf(0,0,0)*euler(0,math.pi/2.25,0)
local wld37 = it("Weld") 
wld37.Parent = handle27 
wld37.Part0 = handle26 
wld37.Part1 = handle27 
wld37.C0=cf(1.25,0,-1.2)*euler(-math.pi/2,math.pi/2,0)
local wld38 = it("Weld") 
wld38.Parent = handle28 
wld38.Part0 = handle26 
wld38.Part1 = handle28 
wld38.C0=cf(.675,0,-1.2)*euler(-math.pi/2,-math.pi/2,0)
local wld39 = it("Weld") 
wld39.Parent = handle29 
wld39.Part0 = handle26 
wld39.Part1 = handle29 
wld39.C0=cf(.95,-.29,-1.2)*euler(-math.pi/2,-math.pi,0)
local wld40 = it("Weld") 
wld40.Parent = handle30 
wld40.Part0 = handle26 
wld40.Part1 = handle30 
wld40.C0=cf(.95,.29,-1.2)*euler(-math.pi/2,0,0)
local wld41 = it("Weld") 
wld41.Parent = handle31 
wld41.Part0 = handle26 
wld41.Part1 = handle31 
wld41.C0=cf(1.05,0,0)*euler(0,0,-math.pi/2)
local wld42 = it("Weld") 
wld42.Parent = handle32 
wld42.Part0 = handle26 
wld42.Part1 = handle32 
wld42.C0=cf(.95,0,-2.5)*euler(0,0,0)
local wld43 = it("Weld") 
wld43.Parent = handle33 
wld43.Part0 = handle26 
wld43.Part1 = handle33 
wld43.C0=cf(.95,0,-2.5)*euler(0,0,0)
local wld44 = it("Weld") 
wld44.Parent = handle34 
wld44.Part0 = handle26 
wld44.Part1 = handle34 
wld44.C0=cf(.95,0,-2.5)*euler(0,0,0)
local fengui = it("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "manaGUI" 
local fenframe = it("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
local fentext = it("TextLabel") 
fentext.Parent = fenframe 
fentext.Text = "Mana("..mana..")" 
fentext.BackgroundTransparency = 1 
fentext.SizeConstraint = "RelativeXY" 
fentext.TextXAlignment = "Center" 
fentext.TextYAlignment = "Center" 
fentext.Position = UDim2.new(0,80,1,200) 
local fentext2 = it("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,0) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = it("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = " " 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(mana*0.007,0,0.400000006,0)
local bg = it("BodyGyro") 
bg.Parent = nil 
if (script.Parent.className ~= "HopperBin") then 
Tool = it("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Penumbra" 
script.Parent = Tool 
end 
Bin = script.Parent 
if Bin:findFirstChild("ManaBar",true) ~= nil then 
mana=Bin.ManaBar.Value
Bin:findFirstChild("ManaBar",true).Parent = nil 
end 
local bar=Instance.new("IntValue")
bar.Parent=Bin
bar.Name="ManaBar"
bar.Value=mana
function unequipweld() 
wld11a.Part1 = LeftLeg 
wld11a.C0 = euler(3.9,0,0) * cf(0.7,-0.5,0.5) 
end 
function equipweld() 
wld11a.Part1 = LeftArm
--wld11a.C0 = euler(1.57,0,0) * cf(0,1,0) 
wld11a.C0 = euler(1.75,0,0) * cf(0,1,0) 
end 
function hideanim() 
equipped = false
Torso.Neck.C0=necko*euler(0,0,0)
--[[for i = 0 , 1 , 0.07 do 
wait(0)  
Torso.Neck.C1 = euler(1.57,3.14,0) * cf(0,0,-0.5) 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end ]]
unequipweld() 
wait(0.2) 
--[[for i = 0 , 1 , 0.07 do 
wait(0)  
Torso.Neck.C1 = euler(1.57,3.14,0) * cf(0,0,-0.5) 
LW.C0 = cf(-1.5, 0.5, 0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end ]]
Torso.Neck.C0=necko*euler(0,0,0)
end 
function equipanim(mouse) 
--[[for i = 0 , 1 , 0.085 do 
wait(0)  
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(3.5*i,0,0) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end ]]
equipweld() 
--[[for i = 0 , 1 , 0.075 do 
wait(0)  
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(3.5-3.5*i,0,0.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end ]]
end 
function Stance()
coroutine.resume(coroutine.create(function()
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 3000
bg.Parent = Torso
wld1.C0 = euler(0,0,0) * cf(0,0,0) 
while equipped==true and walking==false and attack==false do
wait()
Torso.Neck.C0=necko*euler(0,0,1)
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = cf(Torso.Position,pos4) * euler(0,-1,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
Torso.Neck.C0=necko*euler(0,0,0)
bg.Parent=nil
end))
end
function Walking()
attack=true
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-1,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
walking=true
attack=false
end
function Say(type)
if type==1 then
Sayings={"That didn't do much.","What?","Derp."}
if Did>=25 and Did<50 then
Sayings={"You can do better.","Not done yet."}
elseif Did>=50 and Did<75 then
Sayings={"That's gotta hurt.","I'm just getting started."}
elseif Did>=75 and Did<100 then
Sayings={"Oh, you're still alive?","Might as well just give up now.","Make this more exciting will you?"}
elseif Did>=100 then
Sayings={"And you're dead.","Well that was disappointing.","To hell with you!","I'm having too much fun."}
end
c=math.random(1,3)
if Did>25 then c=1 end
if c==1 then
game:GetService("Chat"):Chat(Character,Sayings[math.random(1,#Sayings)],2)
end
elseif type==2 then
Sayings={"Come at me, bro.","Show me what you got.","Come on, i'm getting bored.","No pubes.","Grow a pair","Stop being such a putz..."}
game:GetService("Chat"):Chat(Character,Sayings[math.random(1,#Sayings)],2)
end
end
function LightPunch1()
attack=true
combo=1
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
ss(1.1)
con1=RightArm.Touched:connect(function(hit) Damagefunc2(hit,10,1,RightArm.CFrame*CFrame.new(0,-1,0),1) punched=true end) 
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.57*i,0,0.5+1.07*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
con1:disconnect()
bg.Parent=nil
coroutine.resume(coroutine.create(function() wait(0.3) if attack==false or shootmode==true then combo=0 print("Ended") end end))
attack=false
wait(0.2)
for i=0,1,0.1 do
if attack==false then
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57+1.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5+0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.57-1.57*i,0,0.5+1.07-1.07*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end
if attack==false then Say(1) end
if attack==false and Did~=0 then print("Did "..Did.." units of damage") Did=0 end
end
function LightPunch2()
attack=true
combo=2
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
ss(1.1)
con1=LeftArm.Touched:connect(function(hit) Damagefunc2(hit,10,1,LeftArm.CFrame*CFrame.new(0,-1,0),1) punched=true end) 
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57+3.14*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+2.07*i,0,-0.5-1.07*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,1.57*i,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.57-1.57*i,0,1.57-1.07*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
con1:disconnect()
bg.Parent=nil
coroutine.resume(coroutine.create(function() wait(0.3) if attack==false or shootmode==true then combo=0 print("Ended") end end))
attack=false
for i=0,1,0.15 do
if attack==false then
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57+3.14)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+2.07,0,-0.5-1.07+0.3*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.57-1.57,0,1.57-1.07) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end
wait(0.2)
for i=0,1,0.1 do
if attack==false then
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57+3.14-1.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+2.07-2.07*i,0,-0.5-1.07+1.57*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57-1.07) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end
if attack==false then Say(1) end
if attack==false and Did~=0 then print("Did "..Did.." units of damage") Did=0 end
end
function LightPunch3()
attack=true
combo=3
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
ss(1.1)
con1=RightArm.Touched:connect(function(hit) Damagefunc2(hit,10,1,RightArm.CFrame*CFrame.new(0,-1,0),1) punched=true end) 
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57+3.14-3.14*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+2.07-2.07*i,0,-0.5-1.07+1.57*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0) 
RW.C0 = cf(1.5,0.5,0) * euler(3.14*i,0,1.57-1.07-0.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
con1:disconnect()
bg.Parent=nil
coroutine.resume(coroutine.create(function() wait(0.3) if attack==false or shootmode==true then combo=0 print("Ended") end end))
attack=false
wait(0.2)
for i=0,1,0.1 do
wait()
if attack==false then
Torso.Neck.C0=necko*euler(0,0,-1.57+3.14-3.14+1.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(3.14-3.14*i,0,0.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end
if attack==false then Say(1) end
if attack==false and Did~=0 then print("Did "..Did.." units of damage") Did=0 end
end
function HeavyPunch1()
attack=true
combo=1
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,1*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5-0.5*i,0.5,-0.5*i) * euler(1.57*i,0,0.5-1.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
ss(0.9)
con1=RightArm.Touched:connect(function(hit) Damagefunc2(hit,20,1,RightArm.CFrame*CFrame.new(0,-1,0),1.5) punched=true end) 
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,1-2.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * euler(1.57,0,0.5-1.5+2*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
con1:disconnect()
bg.Parent=nil
coroutine.resume(coroutine.create(function() wait(0.3) if attack==false or shootmode==true then combo=0 print("Ended") end end))
attack=false
wait(0.2)
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,1-2.57+1.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5+0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.57-1.57*i,0,0.5-1.5+2-0.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
if attack==false then Say(1) end
if attack==false and Did~=0 then print("Did "..Did.." units of damage") Did=0 end
end
function HeavyPunch2()
attack=true
combo=2
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,1-2.57+2.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5+0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5-0.5*i,0.5,-0.5*i) * euler(1.57,0,0.5-1.5+2-2*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
game:GetService("Chat"):Chat(Character,"Away with you!",2)
ss(0.9)
con1=RightArm.Touched:connect(function(hit) Damagefunc3(hit,20,40,RightArm.CFrame*CFrame.new(0,-1,0),1.5) punched=true end) 
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*euler(0,0,1-2.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5-0.5+0.5*i,0.5,-0.5+0.5*i) * euler(1.57,0,0.5-1.5+2.57*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
con1:disconnect()
bg.Parent=nil
coroutine.resume(coroutine.create(function() wait(0.3) if attack==false or shootmode==true then combo=0 print("Ended") end end))
attack=false
wait(0.2)
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,1-2.57+1.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5+0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.57-1.57*i,0,0.5-1.5+2-0.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
if attack==false then Say(1) end
if attack==false and Did~=0 then print("Did "..Did.." units of damage") Did=0 end
end
function LightKick1()
attack=true
kicking=true
combo=1
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
ss(1)
con1=RightLeg.Touched:connect(function(hit) Damagefunc2(hit,10,1,RightLeg.CFrame*CFrame.new(0,-1,0),1) kicked=true end) 
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*euler(0,-0.5*i,-1.5*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5*i,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
RWL.C1 = cf(-0.5,1.5,0) * euler(-1*i,0,-1*i)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,-0.5*i) 
LWL.C1 = cf(0.5,1.5,0) * euler(0,0,0)
end
con1:disconnect()
--bg.Parent=nil
coroutine.resume(coroutine.create(function() wait(0.3) if attack==false or shootmode==true then combo=0 print("Ended") end end))
attack=false
wait(0.1)
bg.Parent=nil
for i=0,1,0.15 do
wait()
if attack==false then
Torso.Neck.C0=necko*euler(0,-0.5+0.5*i,-1.5+1.5*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5+0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.5+0.5*i,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
RWL.C1 = cf(-0.5,1.5,0) * euler(-1+1*i,0,-1+1*i)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,-0.5+0.5*i) 
LWL.C1 = cf(0.5,1.5,0) * euler(0,0,0)
end
end
if attack==false then Say(1) end
if attack==false and Did~=0 then print("Did "..Did.." units of damage") Did=0 end
kicking=false
end
function LightKick2()
attack=true
kicking=true
combo=2
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
ss(1)
con1=LeftLeg.Touched:connect(function(hit) Damagefunc2(hit,10,1,LeftLeg.CFrame*CFrame.new(0,-1,0),1) kicked=true end) 
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*euler(0,-0.5+1*i,-1.5+3*i)
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0.5*i) 
RWL.C1 = cf(-0.5,1.5,0) * euler(-1+1*i,0,-1+1*i)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,-0.5+0.5*i) 
LWL.C1 = cf(0.5,1.5,0) * euler(-1*i,0,1*i)
end
attack=false
con1:disconnect()
for i=0,1,0.1 do
wait()
if attack==false then
Torso.Neck.C0=necko*euler(0,-0.5+1,-1.5+3+0.2*i)
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0.5) 
RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(-1,0,1+0.2*i)
end
end
bg.Parent=nil
coroutine.resume(coroutine.create(function() wait(0.3) if attack==false or shootmode==true then combo=0 print("Ended") end end))
wait(0.1)
for i=0,1,0.15 do
wait()
if attack==false then
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
Torso.Neck.C0=necko*euler(0,-0.5+1-0.5*i,-1.5+3.2-1.7*i)
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0.5-0.5*i) 
RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(-1+1*i,0,1+0.2-1.2*i)
end
end
if attack==false then Say(1) end
if attack==false and Did~=0 then print("Did "..Did.." units of damage") Did=0 end
Torso.Neck.C0=necko*euler(0,0,0)
kicking=false
end
function LightKick3()
attack=true
kicking=true
combo=3
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
ss(1)
con1=LeftLeg.Touched:connect(function(hit) Damagefunc2(hit,10,1,LeftLeg.CFrame*CFrame.new(0,-1,0),1) kicked=true end) 
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*euler(0,-0.5+1,-1.5+3+1*i)
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0.5) 
RWL.C1 = cf(-0.5,1.5,0) * euler(-1+1,0,-1+1)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,-0.5+0.5) 
LWL.C1 = cf(0.5,1.5,0) * euler(-1,0,1)
end
con1:disconnect()
coroutine.resume(coroutine.create(function() wait(0.3) if attack==false or shootmode==true then combo=0 print("Ended") end end))
attack=false
wait(0.1)
bg.Parent=nil
--if attack==false then Say(1) end
if attack==false and Did~=0 then print("Did "..Did.." units of damage") Did=0 end
Torso.Neck.C0=necko*euler(0,0,0)
kicking=false
end
function HeavyKick1()
attack=true
kicking=true
combo=1
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,1.57*i)
--bg.cframe=Head.CFrame*euler(0,0.3,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0.5*i) 
RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(0,0,0)
end
ss(0.8)
con1=RightLeg.Touched:connect(function(hit) Damagefunc2(hit,20,1,RightLeg.CFrame*CFrame.new(0,-1,0),1) kicked=true end) 
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*euler(0,-0.5*i,1.57-3.14*i)
--bg.cframe=Head.CFrame*euler(0,0.3,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.57*i,0,0.5-1*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0.5+0.5*i) 
RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,-0.5+0.5*i,1.57-3.14)
bg.cframe=Head.CFrame*euler(0,0.6,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5+0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.57-1.57*i,0,0.5-1+1*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0.5+0.5-1*i) 
RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(0,0,0)
end
con1:disconnect()
coroutine.resume(coroutine.create(function() wait(0.3) if attack==false or shootmode==true then combo=0 print("Ended") end end))
attack=false
kicking=false
bg.Parent=nil
for i=0,1,0.1 do
if attack==false then
wait()
Torso.Neck.C0=necko*euler(0,0,1.57-3.14+1.57*i)
end
end
if attack==false then Say(1) end
if attack==false and Did~=0 then print("Did "..Did.." units of damage") Did=0 end
end
function HeavyKick2()
attack=true
kicking=true
combo=2
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
ss(0.9)
con1=LeftLeg.Touched:connect(function(hit) Damagefunc3(hit,20,30,RightArm.CFrame*CFrame.new(0,-1,0),1.5) kicked=true end) 
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*euler(0,0.3*i,-1.57+3.14*i)
--bg.cframe=Head.CFrame*euler(0,0.6,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5-0.5*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(-0.5*i,0,0.8*i)
end
game:GetService("Chat"):Chat(Character,"Fall!",2)
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0.3+0.1*i,-1.57+3.14+0.2*i)
--bg.cframe=Head.CFrame*euler(0,0.6,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5-0.5,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(-0.5-0.1*i,0,0.8+0.2*i)
end
con1:disconnect()
coroutine.resume(coroutine.create(function() wait(0.3) if attack==false or shootmode==true then combo=0 print("Ended") end end))
attack=false
kicking=false
bg.Parent=nil
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0.3+0.1-0.4*i,-1.57+3.14-1.57*i)
--bg.cframe=Head.CFrame*euler(0,0.6,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5-0.5+0.5*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(-0.5-0.1+0.6*i,0,0.8+0.2-1*i)
end
if attack==false then Say(1) end
if attack==false and Did~=0 then print("Did "..Did.." units of damage") Did=0 end
end
function Grab()
attack=true
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
ss(1.1)
con1=RightArm.Touched:connect(function(hit)
        if grabbed==true then return end
        if hit.Parent==nil then
                return
        end
--        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
        end
        b=math.random(1,3)
        if b==1 then
        game:GetService("Chat"):Chat(Character,"You're mine!",2)
        elseif b==2 then
        game:GetService("Chat"):Chat(Character,"Gotcha.",2)
        end
        bg.maxTorque = vt(math.huge,math.huge,math.huge) 
        bg.P = 5000000
        bg.Parent = Head
        bg.cframe=Head.CFrame
        bb=it("BodyPosition")
        bb.P=5000
        bb.D=100
        bb.maxForce=vt(math.huge,math.huge,math.huge)
        bb.position=Torso.Position
        bb.Parent=Torso
        hit.Parent.Humanoid.PlatformStand=false
        w=Instance.new("Weld")
        w.Parent=RightArm
        w.Part0=RightArm
        w.Part1=hit.Parent.Torso
        w.C0=CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(1.57,0,3.14)
        grabbed=true
        for i=0,1,0.1 do
        wait()
        attack=true
        Torso.Neck.C0=necko*euler(0,0,-1.57+1.57*i)
        LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5) 
        LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
        RW.C0 = cf(1.5,0.5,0) * euler(1.57,0,1.57-1.57*i) 
        RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
        RWL.C0 = cf(0,-0.5,0) * euler(-1*i,0,0) 
        RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
        LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
        LWL.C1 = cf(0.5,1.5,0) * euler(0,0,0)
        end
        wait(0.2)
        w.Parent=nil
        hit.Parent.Humanoid.PlatformStand=false
        grabbed=false
        con2=RightLeg.Touched:connect(function(hit) Damagefunc3(hit,20,50,RightArm.CFrame*CFrame.new(0,-1,0),1.5) kicked=true end) 
        ss(1.2)
        game:GetService("Chat"):Chat(Character,"Fly!",2)
        for i=0,1,0.2 do
        wait()
        Torso.Neck.C0=necko*euler(0.5*i,0,0)
        LW.C0 = cf(-1.5,0.5,0) * euler(-0.5-0.5*i,0,-0.5) 
        LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
        RW.C0 = cf(1.5,0.5,0) * euler(1.57-2.57*i,0,0) 
        RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
        RWL.C0 = cf(0,-0.5,0) * euler(-1+2.5*i,0,0) 
        RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
        LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
        LWL.C1 = cf(0.5,1.5,0) * euler(0,0,0)
        end
        con2:disconnect()
        for i=0,1,0.1 do
        wait()
        Torso.Neck.C0=necko*euler(0.5,0,0)
        LW.C0 = cf(-1.5,0.5,0) * euler(-0.5-0.5-0.1*i,0,-0.5) 
        LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
        RW.C0 = cf(1.5,0.5,0) * euler(1.57-2.57+0.2*i,0,0) 
        RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
        RWL.C0 = cf(0,-0.5,0) * euler(-1+2.5+0.1*i,0,0) 
        RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
        LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
        LWL.C1 = cf(0.5,1.5,0) * euler(0,0,0)
        end
        for i=0,1,0.1 do
        wait()
        Torso.Neck.C0=necko*euler(0.5-0.5*i,0,0)
        LW.C0 = cf(-1.5,0.5,0) * euler(-0.5-0.5-0.1+0.6*i,0,-0.5+0.5*i) 
        LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
        RW.C0 = cf(1.5,0.5,0) * euler(1.57-2.57+1*i,0,0.5*i) 
        RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
        RWL.C0 = cf(0,-0.5,0) * euler(-1+2.5-1.5*i,0,0) 
        RWL.C1 = cf(-0.5,1.5,0) * euler(0,0,0)
        LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
        LWL.C1 = cf(0.5,1.5,0) * euler(0,0,0)
        end
        attack=false
if attack==false and Did~=0 then print("Did "..Did.." units of damage") Did=0 end
        print("OHOHOHOH")
        wait(2)
if attack==false then Say(1) end
        Enemy=nil
        HP=0
        Did=0
        bb.Parent=nil
        bg.Parent=nil
        end
end) 
for i=0,1,0.15 do
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.57*i,0,0.5+1.07*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
con1:disconnect()
attack=false
wait(0.2)
print(grabbed)
if grabbed==false then
bg.Parent=nil
b=math.random(1,3)
if b==1 then
game:GetService("Chat"):Chat(Character,"Missed...",2)
elseif b==2 then
game:GetService("Chat"):Chat(Character,"Get over here.",2)
end
for i=0,1,0.1 do
if attack==false then
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57+1.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5+0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(1.57-1.57*i,0,0.5+1.07-1.07*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end
Enemy=nil
HP=0
end
grabbed=false
end
function Taunt()
attack=true
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
bg.Parent = Head
bg.cframe=Head.CFrame
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5+1.07*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,1.57*i,0) 
end
Say(2)
for i=1,2 do
for i=0,1,0.25 do
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57+0.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,1.57,0) 
end
for i=0,1,0.25 do
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,1.57+0.5-0.5*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,1.57,0) 
end
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.6*i,0,1.57+1*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,1.57,0) 
end
for i=0,1,0.2 do
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57+1*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.6*i,0,1.57+1-2*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,1.57-1*i,0) 
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57+1+0.1*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.6-0.2*i,0,1.57+1-2-0.2*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,1.57-1,0) 
end
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*euler(0,0,-1.57+1.1+0.47*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,-0.5+0.5*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(-0.8+0.8*i,0,0.37+0.13*i) 
RW.C1 = cf(0, 0.5, 0) * euler(0,1.57-1-0.57*i,0) 
end
bg.Parent=nil
attack=false
end
function Aim()
attack=true
if shootmode==false then
shootmode=true
--grip(1.7) 
wld11a.Part1 = LeftArm 
wld11a.C0 = euler(1.75,0,0) * cf(0,1,0) 
--[[for i=0,1,0.1 do
wait()
bg.cframe = Head.CFrame*euler(0,0,0)
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5+3.14*i,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end]]
coroutine.resume(coroutine.create(function() 
while shootmode==true do
wait()
bg.P = 500000
local pos4 = vt(MMouse.Hit.p.x,Head.Position.Y,MMouse.Hit.p.z)
bg.cframe = cf(Head.Position,pos4) * euler(0,0,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) * 
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag 
--[[Torso.Neck.C0=necko*euler(0,0,1.57) 
Torso.Neck.C1=necko2*euler(-offset,0,0) ]]
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(offset,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end))
for i=0,1,0.1 do
wait()
bg.Parent = Head
bg.maxTorque = vt(math.huge,math.huge,math.huge) 
bg.P = 500000
--bg.cframe = Head.CFrame*euler(0,0,0)
Torso.Neck.C0=necko*euler(0,0,1.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57*i) 
LW.C1 = cf(0, 0.5, 0) * euler(0,-1.57*i,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
elseif shootmode==true then
shootmode=false
for i=0,1,0.1 do
wait()
bg.Parent = Head
bg.P = 500000
bg.cframe = Head.CFrame*euler(0,0,0)
Torso.Neck.C0=necko*euler(0,0,1.57-1.57*i)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5*i,0,-1.57+1.57*i) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-offset*i,-1.57+1.57*i,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
bg.Parent=nil
--[[wld11a.Part1 = LeftLeg 
wld11a.C0 = euler(3.9,0,0) * cf(0.7,-0.5,0.5) 
for i=0,1,0.1 do
wait()
bg.cframe = Head.CFrame*euler(0,0,0)
Torso.Neck.C0=necko*euler(0,0,0)
LW.C0 = cf(-1.5,0.5,0) * euler(-0.5,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end]]
attack=false
end
attack=false
end
function Shoot()
attack=true
spread2 = 0 
range2 = 100
rangepower = 10
if currentam==6 then
currentam=0
reload(0.75)
for i=0,1,0.3 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(offset+0.7*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.3 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(offset+0.7-0.7*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
wait(0.5)
else
fire1(0.3)
--[[                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=Head
                        s:Play()
                        coroutine.resume(coroutine.create(function() 
                        wait(2)
                        s.Parent=nil
                        end))
                        thesound=s
                        doSound(thesound,60,thesound.Parent,thesound.Volume*100)]]
currentam=currentam+1
shoottrail2(handle34,10) 
for i=0,1,0.3 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.3 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-0.5+0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end
attack=false
end 
function RapidShoot()
attack=true
spread2 = 5 
range2 = 100
rangepower = 10
for i=0,1,0.1 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=1,6 do
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
fire1(0.3)
shoottrail2(handle34,5) 
for i=0,1,0.7 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.7 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5+0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end
while rapidshooting==true and mana >= 10 do
mana=mana-10
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
fire1(0.3)
shoottrail2(handle34,5) 
for i=0,1,0.7 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.7 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5+0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end
reload(0.75)
currentam=0
for i=0,1,0.3 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(offset+0.7*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.3 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(offset+0.7-0.7*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
wait(0.5) 
attack=false
end
function FullBlast()
attack=true
spread2 = 10 
range2 = 100
rangepower = 10
for i=0,1,0.1 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=1,6 do
coroutine.resume(coroutine.create(function() 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
fire1(0.3)
shoottrail2(handle34,5) 
for i=0,1,0.7 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.7 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5+0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end))
end
wait(0.5) 
reload(0.75)
currentam=0
for i=0,1,0.3 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(offset+0.7*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.3 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(offset+0.7-0.7*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
wait(0.5) 
attack=false
end
function LaserShot()
attack=true
Character.Humanoid.WalkSpeed=0
for i=0,1,0.2 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
grip(1.7) 
for i=0,1,0.5 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,-1.57) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1+1*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=1,30 do
wait()
ChargeEffect(handle34,2,2,2,math.random(-10,10),math.random(-10,10),math.random(-10,10),0,0,0,BrickColor.new("Cyan")) 
end
wait(0.2)
Laser(handle34,math.random(40,80)) 
fire1(0.2)
fire1(0.3)
fire1(0.4)
for i=0,1,0.7 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.7 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5+0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
wait(0.5) 
Character.Humanoid.WalkSpeed=16
attack=false
end
function Obliterate()
if mana >= 400 then 
attack=true
coroutine.resume(coroutine.create(function() 
while attack==true do
wait()
mana=0
end
end))
Character.Humanoid.WalkSpeed=0
for i=0,1,0.1 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-offset-1.57-1.57*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
local derpsparkles=it("Sparkles")
derpsparkles.Parent=handle32
derpsparkles.SparkleColor=Color3.new(0,0,154)
derpsparkles.Enabled=true
charge(0.5) 
for i=1,60 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-offset-1.57-1.57,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
ChargeEffect(handle34,2,2,2,math.random(-10,10),math.random(-10,10),math.random(-10,10),0,0,0,BrickColor.new("Cyan")) 
end
for i=0,1,0.1 do
wait()
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-offset+offset-1.57-1.57+1.57*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
wait(0.2)
for i=1,3 do
spread2 = 5 
range2 = 100
rangepower = 10
wait(0.3)
for i=1,6 do
coroutine.resume(coroutine.create(function() 
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
fire1(0.3)
shoottrail2(handle34,5) 
for i=0,1,0.7 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.7 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5+0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end))
end
end
for i=1,10 do
spread2 = 2 
range2 = 100
rangepower = 10
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
for i=1,2 do
fire1(0.3)
shoottrail2(handle34,5) 
end
for i=0,1,0.9 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.9 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5+0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
end
for i=0,1,0.2 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.2 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5+0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
spread2 = 5 
range2 = 100
rangepower = 20
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
derpsparkles.Enabled=false
local derpsmoke=it("Smoke")
derpsmoke.Parent=handle32
derpsmoke.Color=Color3.new(0,0,154)
derpsmoke.Opacity=0.05
derpsmoke.Size=0.5
for i=1,10 do
fire1(0.3)
shoottrail2(handle34,20) 
end
for i=0,1,0.1 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
for i=0,1,0.1 do
wait(0)
LW.C0 = cf(-1.5,0.5,0) * euler(0,0,0) 
LW.C1 = cf(0, 0.5, 0) * euler(offset-1.57-0.5+0.5*i,-1.57,0) 
RW.C0 = cf(1.5,0.5,0) * euler(0,0,0.5) 
RW.C1 = cf(0, 0.5, 0) * euler(0,0,0) 
end
canusepenumbra=false
Aim()
derpsparkles.Parent=nil
coroutine.resume(coroutine.create(function() 
wait(30)
canusepenumbra=true
derpsmoke.Enabled=false
wait(10)
derpsmoke.Parent=nil
end))
wait(1)
attack=false
Character.Humanoid.WalkSpeed=16
end
end
function Sound(sid,pit,vol,parz) --[[coroutine.resume(coroutine.create(function() local sou = it("Sound") sou.SoundId = sid sou.Pitch = pit sou.Volume = vol sou.Parent = parz game:service'Lighting'["Lolsound"].Value = sou print(sou.Parent) wait(5) sou:Remove'' end))]] end
--Sound("http://www.roblox.com/asset/?id=2697431",0.3,0.7,Head)
doSound=function(sound,decay,origin,volume)
--[[        if Source==nil then --formatting for other objects.
                Source=script.Parent
        end]]
        sc=game.Lighting.LocalSoundScript:clone()
        sc.DecayFactor.Value=decay
        sc.Origin.Value=origin
        sc.Volume.Value=volume
        sc.Disabled=false
        sc.Parent=Character
        sc.Sound.Value=sound
        Gun=Bin
        sc:clone().Parent=Character
        print(sc.Parent)
end        
function ss(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function critsound(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = .4 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function charge(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function bewm(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function abscond(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = Head
--game:service'Lighing'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function distort(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function thwack(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=46153268" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function fire1(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697431" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function fire2(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=48618802 " 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function grip(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "rbxasset://sounds/swordslash.wav" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function reload(pitch) 
local SlashSound = it("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697295" 
SlashSound.Parent = Head
--game:service'Lighting'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=Character
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MMMAGIC2(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MMMAGIC3(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0,0.3,0) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function MOREMAGIX(part,cframe,x,y,z,color) 
                p2=it("Part")
                p2.Name="Blast"
                p2.TopSurface=0
                p2.BottomSurface=0
                p2.CanCollide=false
                p2.Anchored=true
                p2.BrickColor=color
                p2.Size=vt(x,y,z)
                p2.formFactor="Symmetric"
                p2.CFrame=part.CFrame*cf(0,cframe,0)
                p2.Parent=Character
                m=it("BlockMesh")
                m.Parent=p2
                m.Name="BlastMesh"
                coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-vt(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*cf(dir)*euler(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,vt(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 
function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.15,0.15,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function EVENMOARMAGIX2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 5 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.3,0.3,0.3) Part.Transparency=Part.Transparency+0.15 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function EVENMOARMAGIX3(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.3,0.3,0.3) Part.Transparency=Part.Transparency+0.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function ChargeEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=modelzorz
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) 
        f=it("BodyPosition")
        f.P=800
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=part.Position
        f.Parent=Part
        for i=0,1,0.1 do
        wait()
        Part.Transparency=Part.Transparency+0.1
        end
        Part.Parent=nil
        end),S,S.CFrame)
end 
function ChargeEffect2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        msh1.MeshType = "Sphere" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=modelzorz
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) 
        f=it("BodyPosition")
        f.P=800
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=part.Position+vt(math.random(-30,30),math.random(-30,30),math.random(-30,30))
        f.Parent=Part
        for i=0,1,0.1 do
        wait()
        Part.Transparency=Part.Transparency+0.1
        end
        Part.Parent=nil
        end),S,S.CFrame)
end 
print("Y U NU GIVE CREDIT.") 
function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.3,0.3,0.3) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
        local msh1 = it("SpecialMesh") 
        msh1.Scale = vt(x1,y1,z1) 
        msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(1,1,1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=true
        S.CanCollide=false
        S.CFrame=part.CFrame*cf(x2,y2,z2)*euler(x3,y3,z3)
        S.Parent=workspace
        msh1.Parent = S
        coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.5,0.8,0.5) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
function DerpMagic(part,x1,y1,z1,x2,y2,z2,color) 
        local msh1 = it("BlockMesh") 
        msh1.Scale = vt(0.5,0.5,0.5) 
        S=it("Part")
        S.Name="Effect"
        S.formFactor=0
        S.Size=vt(x1,y1,z1)
        S.BrickColor=color
        S.Reflectance = 0
        S.TopSurface=0
        S.BottomSurface=0
        S.Transparency=0
        S.Anchored=false
        S.CanCollide=false
        S.CFrame=part.CFrame
        S.Parent=workspace
        msh1.Parent = S
        W=it("Weld")
        W.Parent=S
        W.Part0=S
        W.Part1=part
        W.C0=cf(x2,y2,z2) * euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        W.Parent=nil
        S.Anchored=true
        coroutine.resume(coroutine.create(function(Part,Weld) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + vt(0.1,0.1,0.1) --[[Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))]] Part.Transparency=i*.1 wait() end Part.Parent=nil Weld.Parent=nil end),S,W)
end 
DarkRiftF=function(par) --Thank you turdulator for this :D
PWN={}
for _,v in pairs(workspace:children()) do
if v.className=="Model" and v:FindFirstChild("Humanoid")~=nil then
if v.Humanoid.Health>0 and v:FindFirstChild("Torso")~=nil then
if v~=Character and (v.Torso.Position-par.Position).magnitude<=25 then
table.insert(PWN,v.Torso)
end
end
end
end
for _,t in pairs(PWN) do
Mag=(par.Position-t.Position).magnitude/2
t.Parent.Humanoid:TakeDamage(.6)
rl=it("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=vt(500000,500000,500000)*5000
rl.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))/10
rl.Parent=t
game:GetService("Debris"):AddItem(rl,.1)
if Mag<=2 then
t.Parent.Humanoid:TakeDamage(.3)
else
vl=it("BodyVelocity")
vl.P=3000
vl.maxForce=vt(50000000000,50000000000,50000000000)
vl.velocity=(t.Position-par.Position).unit*-(70/(Mag))
vl.Parent=t
game:GetService("Debris"):AddItem(vl,.1)
end
end
wait(.08)
end
DBHit=function(hit,Damage) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=it("BodyVelocity")
                vl.P=4500
                vl.maxForce=vt(math.huge,math.huge,math.huge)
--                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,3,0)
                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,45,0)
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-40,40),math.random(-40,40),math.random(-40,40))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end
DBHit2=function(hit,Damage) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=it("BodyVelocity")
                vl.P=4500
                vl.maxForce=vt(math.huge,math.huge,math.huge)
--                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,30,0)
                vl.velocity=Head.CFrame.lookVector*35+Head.Velocity/1.05
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-5,5),math.random(-5,5),math.random(-5,5))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end
DOHHit=function(hit,Damage,Pos) --credits to turdulator for making this function :D
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        t=hit.Parent:FindFirstChild("Torso")
        if h~=nil and t~=nil then
                if h.Parent==Character then
                        return
                end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                h:TakeDamage(Damage) 
                showDamage(hit.Parent,Damage,.5) 
                vl=it("BodyVelocity")
                vl.P=4500
                vl.maxForce=vt(math.huge,math.huge,math.huge)
--                vl.velocity=vt(Torso.Velocity.x,0,Torso.Velocity.z)*1.05+vt(0,60,0)
                vl.velocity=Head.CFrame.lookVector+Head.Velocity/1.05
                vl.Parent=t
                game:GetService("Debris"):AddItem(vl,.2)
                rl=it("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=vt(500000,500000,500000)*50000000000000
                rl.angularvelocity=vt(math.random(-10,10),math.random(-10,10),math.random(-10,10))
                rl.Parent=t
                game:GetService("Debris"):AddItem(rl,.2)
        else
                if hit.CanCollide==false then
                        return
                end
                MagicCom:disconnect()
--                DBExplode(DB)
        end
end
Damagefunc1=function(hit,Damage,Knockback)
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="rigletto" and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        if mana<400 then
                        mana=mana+math.random(10,20)
                        else
                        mana=400
                        end
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*2
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso]]
                game:GetService("Debris"):AddItem(r,.5)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
Damagefunc2=function(hit,Damage,Knockback,Part,size)
        if hit.Parent==nil then
                return
        end
--        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
                EVENMOARMAGIX3(Part,size,size,size,0,0,0,0,0,0,BrickColor.new("Navy blue")) 
                for i=0,5 do
                MMMAGIC3(Part,0.3,size*2,0.3,0,0,0,BrickColor.new("Navy blue")) 
                end
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        print("NOPE.AVI")
                if math.random(0,99)+math.random()<=5 then
                        CRIT=true
                        Damage=Damage*1.5
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
        
                end
                Damage=Damage+math.random(0,10)
--                Did=Did+Damage
                if Enemy==nil then
                Enemy=hit.Parent
                HP=Enemy.Humanoid.Health
                end
                coroutine.resume(coroutine.create(function() 
                wait(1)
                if attack==false and Enemy~=nil then
                Did=HP-Enemy.Humanoid.Health
                print("Did "..Did.." Damage")
                Enemy=nil
                HP=0
                end
                end))
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                thwack(1) 
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,2)
--[[                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(r,.5)]]
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
Damagefunc3=function(hit,Damage,Knockback,Part,size)
--[[        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.1) 
        attackdebounce = false 
        end)) ]]
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="rigletto" and hit.Parent:FindFirstChild("Torso")~=nil then
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
                EVENMOARMAGIX3(Part,size,size,size,0,0,0,0,0,0,BrickColor.new("Navy blue")) 
                for i=0,5 do
                MMMAGIC3(Part,0.3,size*2,0.3,0,0,0,BrickColor.new("Navy blue")) 
                end
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(1,10)==1 then
                        CRIT=true
                        Damage=Damage*2
                        Knockback=Knockback*2
                        s=Instance.new("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Did=Did+Damage
                if Enemy==nil then
                Enemy=hit.Parent
                HP=Enemy.Humanoid.Health
                end
                coroutine.resume(coroutine.create(function() 
                wait(1)
                if attack==false and Enemy~=nil then
                Did=HP-Enemy.Humanoid.Health
                print("Did "..Did.." Damage")
                Enemy=nil
                HP=0
                end
                end))
--                Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                thwack(0.8) 
                showDamage(hit.Parent,Damage,.5)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
                r=Instance.new("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
                r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(r,0.5)
                                c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end 
        end
end
DOH=function(hit,Damage,Knockback)
        if attackdebounce == false then 
        attackdebounce = true 
        coroutine.resume(coroutine.create(function() 
        wait(0.2) 
        attackdebounce = false 
        end)) 
        if hit.Parent==nil then
                return
        end
        CPlayer=Bin 
        h=hit.Parent:FindFirstChild("Humanoid")
        if h~=nil and hit.Parent.Name~="rigletto" and hit.Parent:FindFirstChild("Torso")~=nil then
                Damage=Damage
--[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
                        c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=game.Players.LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
--                        print(c.Value)
                if math.random(0,99)+math.random()<=7.8 then
                        CRIT=true
                        Damage=Damage*3
--[[                        Knockback=Knockback*2
                        r=it("BodyAngularVelocity")
                        r.P=3000
                        r.maxTorque=vt(500000000,50000000000,500000000)*50000
                        r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                        r.Parent=hit.Parent.Torso]]
                        s=it("Sound")
                        s.SoundId="http://www.roblox.com/asset/?id=2801263"
                        s.Volume=1
                        s.Pitch=2
                        s.Parent=hit
                        s.PlayOnRemove=true
                        s.Parent=nil
        
                end
                Damage=Damage+math.random(0,10)
--                Blood(hit.CFrame*cf(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
                h:TakeDamage(Damage)
                showDamage(hit.Parent,Damage,.5)
                vp=it("BodyVelocity")
                vp.P=500
                vp.maxForce=vt(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
                if Knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.25)
--[[                r=it("BodyAngularVelocity")
                r.P=3000
                r.maxTorque=vt(500000000,50000000000,500000000)*50000
                r.angularvelocity=vt(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                r.Parent=hit.Parent.Torso]]
                game:GetService("Debris"):AddItem(r,.5)
                                c=it("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                wait(1) 
                DOHeffect(hit,20,30,2,0,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,20,30,-2,0.5,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,20,30,2,1,0) 
                bewm(workspace,1) 
                wait(0.1) 
                DOHeffect(hit,20,30,-2,1.5,0) 
                bewm(workspace,1) 
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
        end 
end
showDamage=function(Char,Dealt,du)
        m=it("Model")
        m.Name=tostring(Dealt)
        h=it("Humanoid")
        h.Health=0
        h.MaxHealth=0
        h.Parent=m
        c=it("Part")
        c.Transparency=0
        c.BrickColor=BrickColor:Red()
        if CRIT==true then
                c.BrickColor=BrickColor.new("Really red")
        end
        c.Name="Head"
        c.TopSurface=0
        c.BottomSurface=0
        c.formFactor="Plate"
        c.Size=vt(1,.4,1)
        ms=it("CylinderMesh")
        ms.Bevel=.1
        ms.Scale=vt(.8,.8,.8)
        if CRIT==true then
                ms.Scale=vt(1.25,1.5,1.25)
                ms.Bevel=.2
        end
        ms.Parent=c
        c.Reflectance=0
        it("BodyGyro").Parent=c
        c.Parent=m
        c.CFrame=cf(Char["Head"].CFrame.p+vt(0,1.5,0))
        f=it("BodyPosition")
        f.P=2000
        f.D=100
        f.maxForce=vt(math.huge,math.huge,math.huge)
        f.position=c.Position+vt(0,3,0)
        f.Parent=c
        game:GetService("Debris"):AddItem(m,.5+du)
        c.CanCollide=false
        m.Parent=workspace
        c.CanCollide=false
end
function Invis()
abscond(1) 
coroutine.resume(coroutine.create(function()
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" then
                v.Transparency=1
                elseif v.className=="Hat" then
                        v.Handle.Transparency=1
                end
        end
        for _,v in pairs(modelzorz:children()) do
                if v.className=="Part" then
                v.Transparency=1
                end
        end
wait(0.5) 
bewm(workspace,3) 
MMMAGIC(Torso,3,3,3,0,0,0,BrickColor.new("Black")) 
MMMAGIC(Torso,6,6,6,0,0,0,BrickColor.new("Navy blue")) 
        for _,v in pairs(Torso.Parent:children()) do
                if v.className=="Part" then
                v.Transparency=0
                elseif v.className=="Hat" then
                        v.Handle.Transparency=0
                end
        end
        for _,v in pairs(modelzorz:children()) do
                if v.className=="Part" then
                v.Transparency=0
                end
        end
end))
end 
function Laser(Part,Dmg) 
sp = Part.Position 
dirr = Part.CFrame 
local hit,pos = rayCast(sp,dirr.lookVector,500,Character) 
local las=it("Part",Character) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom"
las.BrickColor=BrickColor.new("Cyan") 
las.Size=vt(1,1,1) 
las.CFrame=cf((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=it("SpecialMesh",las) 
mag = (Part.Position-pos).magnitude 
msh.Scale=vt(0.8,mag,0.8) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + vt(-0.05,0.7,-0.05) 
end 
Part.Parent = nil 
end),las,msh) 
local las=it("Part",Character) 
las.Anchored=true 
las.Locked=true 
las.CanCollide=false 
las.TopSurface=0 
las.BottomSurface=0 
las.FormFactor = "Custom"
las.BrickColor=BrickColor.new("Navy blue") 
las.Size=vt(1,1,1) 
las.CFrame=cf((Part.Position+pos)/2,pos) *CFrame.Angles(math.rad(90),0,0) 
local msh=it("SpecialMesh",las) 
mag = (Part.Position-pos).magnitude 
msh.Scale=vt(0.5,mag,0.5) 
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i = 0,1,0.1 do 
wait() 
Part.Transparency = Part.Transparency + 0.1 
Mesh.Scale = Mesh.Scale + vt(-0.05,0.7,-0.05) 
end 
Part.Parent = nil 
end),las,msh) 
if pos ~= nil then 
end 
if hit ~= nil and pos ~= nil then 
if hit.Name=="RiftDoomBall" then
KABOOM=true
bewm(1) 
bewm(1.2) 
bewm(0.8) 
MMMAGIC(hit,10,10,10,0,0,0,BrickColor.new("Black")) 
EVENMOARMAGIX(hit,10,10,10,0,0,0,0,0,0,BrickColor.new("Black")) 
BlastEffect(hit,15,10,15,0,0,0,-1.57,0,0,BrickColor.new("Black")) 
for i=1,10 do
ChargeEffect2(hit,3,3,3,0,0,0,0,0,0,BrickColor.new("Black")) 
end
        local c = game.Workspace:GetChildren();
        for i = 1, #c do
                local hum = c[i]:findFirstChild("Humanoid")
                if hum ~= nil and hum.Health ~= 0 then
                local head = c[i]:findFirstChild("Head");
                if head ~= nil then
                local targ = head.Position - hit.Position;
                local mag = targ.magnitude;
                if mag <= 8 and c[i].Name ~= Player.Name then 
                
                DBHit(head,math.random(20,50)) 
                end 
                end 
                end 
        end 
end
if hit.Parent.className == "Hat" then 
hit:BreakJoints() 
hit.Velocity = vt(math.random(-5,5),20,math.random(-5,5)) 
end 
if(hit.Parent:findFirstChild("Humanoid")~= nil)then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Name ~= "Base" and hit.Parent.Name ~= Player.Name then 
hit.Parent.Humanoid:TakeDamage(Dmg)  
showDamage(hit.Parent,Dmg,.5)
end 
end 
--[[if hit.className == "Part" and hit.Parent:findFirstChild("Humanoid") == nil then 
end ]]
end 
end 
function shoottrail2(pos1,Damage) 
shot=true
coroutine.resume(coroutine.create(function()
--[[spread2 = 0 
range2 = 100
rangepower = 10]]
if Player.userId ~= 10434517 and game:findFirstChild("PootisValue") == nil then print("The lord's weapon is not a toy.") Character.Humanoid.Health=Character.Humanoid.Health-20 return end 
local spreadvector = (vt(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) --* (pos1.Position).magnitude/100
--local dir = Head.CFrame.lookVector+spreadvector 
local dir = pos1.CFrame.lookVector+spreadvector
local ammount = 100
local hit2,pos = rayCast(pos1.Position,dir,10,modelzorz)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = it("SpecialMesh")
local Damg = Damage*2
effectsmsh.Scale = vt(1,1,1)
effectsmsh.MeshType="Sphere"
effectsmsh.Name = "Mesh"
local effectsg = it("Part")
local spar=it("Sparkles")
spar.Parent=effectsg
spar.SparkleColor=Color3.new(0, 0, 102)
local Smok=it("Smoke")
Smok.Parent=effectsg
Smok.Color=Color3.new(102, 102, 255)
Smok.Opacity=0.015
Smok.RiseVelocity=-10
Smok.Size=0.1
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = vt(1,0.4,1)
effectsg.Parent = modelzorz
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Cyan") 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = vt(1,mg*5,1)
effectsg.CFrame = cf((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
wait(0.1)
spar.Enabled=false
Smok.Enabled=false
end))
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.2 do
wait()
--effectsg.Transparency = 1*i
effectsmsh.Scale = vt(1-1*i,mg*5,1-1*i)
end 
effectsg.Transparency = 1
wait(5) 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
ammount=100
local Damg = Damage*2
local decr = 0
repeat
wait() 
decr = decr + 1
rangepos = rangepos - 10
dir = dir + (vt(math.random(-1,0)+math.random(),math.random(-1,0)+math.random(),math.random(-1,0)+math.random()) / ammount)
--dir = dir 
ammount=ammount-3
--print(Damg)
if decr == 2 then
Damg = Damg/2
decr=0
end
hit2,pos = rayCast(newpos,dir,inc,modelzorz)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
EVENMOARMAGIX2(cf(newpos),2,2,2,0,0,0,0,0,0,BrickColor.new("Cyan")) 
if hit2 ~= nil then
local effectsmsh = it("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = vt(1,1,2.5)
effectsmsh.Scale = vt(3,3,3)
local effectsg = it("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = vt(0.2,0.2,0.2)
effectsg.Parent = modelzorz
effectsg.BrickColor = BrickColor.new("Cyan") 
effectsmsh.Parent = effectsg
effectsg.CFrame = cf(newpos,pos) + cf(newpos,pos).lookVector*2.5*2
coroutine.resume(coroutine.create(function()
wait()
effectsg.Parent = nil 
end))
local efwel = it("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
efwel.Parent = nil 
effectsg.Anchored = true 
local HitPos = effectsg.Position + cf(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + cf(newpos,pos).lookVector*0.75
--local HitPos = prt1.Position + (prt1.CFrame.lookVector * .5) 
local CJ = cf(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg),5)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg),5)
end
end
end))
end
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 
hold = false 
function ob1d(mouse) 
if attack == true then return end 
if shootmode~=false then
Shoot()
end
if shootmode==true then return end
hold = true 
--[[if walking == true and combo == 0 then 
attack = true 
Character.Humanoid.WalkSpeed = 0 
wait(0.1) 
walking = false 
fourslash() 
combo = 0 
Stance() 
wait(0.2) 
Character.Humanoid.WalkSpeed = 16 
Stance() ]]
--elseif walking == false then 
if walking == false then 
if combo == 0 then 
combo=1
oneslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.2) 
if attack == false then 
combo = 0 
walking = false 
Stance() 
end 
end)) 
elseif combo == 1 then 
combo=2
twoslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.2) 
if attack == false then 
combo = 0 
walking = false 
Stance() 
end 
end)) 
elseif combo == 2 then 
combo=3
threeslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.6) 
if attack == false then 
combo = 0 
walking = false 
Stance() 
end 
end)) 
elseif combo == 3 then 
combo=4
fourslash() 
walking = false 
coroutine.resume(coroutine.create(function()
wait(0.2) 
combo = 0 
walking = false 
Stance() 
end)) 
end 
end 
end 
function ob1u(mouse) 
hold = false 
end 
buttonhold = false 
function Key(key,mouse) 
if attack == true then return end 
if key == "f" then 
if canusepenumbra==true then
if Player.userId ~= 10434517 and game:findFirstChild("PootisValue") == nil then print("The lord's weapon is not a toy.") Character.Humanoid.Health=0 return end 
Aim()
end
end 
if key == "z" and shootmode==true then
rapidshooting=true
RapidShoot()
end
if key == "x" and shootmode==true then
FullBlast()
end
if key == "c" and shootmode==true then
LaserShot()
end
if key == "v" and shootmode==true then
Obliterate()
return end
if shootmode==true then return end 
coroutine.resume(coroutine.create(function()
wait(0.1) 
while attack==true do
wait()
bod.Parent = Torso
bod.position = Torso.Position 
end
bod.Parent=nil
end))
if key=="b" then
Grab()
combo=0
end
if key=="g" then
Taunt()
end
if combo==0 then
if key=="z" then
LightPunch1()
end
if key=="x" then
HeavyPunch1()
end
if key=="c" then
LightKick1()
end
if key=="v" then
HeavyKick1()
end
elseif combo==1 then
if key=="z" then
LightPunch2()
end
if key=="x" then
HeavyPunch2()
end
if key=="c" then
LightKick2()
end
if key=="v" then
HeavyKick2()
end
elseif combo==2 then
if key=="z" then
LightPunch3()
end
if key=="x" then
HeavyPunch2()
end
if key=="c" then
LightKick3()
end
if key=="v" then
HeavyKick2()
end
end
end 
function Key2(key,mouse) 
if key == "z" then 
rapidshooting=false
end
pcall(function() act.key[key:lower()] = false end)
end 
function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(key) Key(key,mouse) end) 
--mouse.KeyDown:connect(key2) 
mouse.KeyUp:connect(function(key) Key2(key,mouse) end) 
mouse.KeyUp:connect(function(k) act.keydown = false 
pcall(function() act.key[k:lower()] = false  end)
hold = false 
end) 
MMouse = mouse 
sheathed = false 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
RHP = ch.Torso["Right Hip"] 
LHP = ch.Torso["Left Hip"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
--[[RHP.C0 = cf(-0.5, -1.5, 0) * euler(0,0,0) 
RHP.C1 = cf(0, 0.5, 0) 
LHP.C0 = cf(0.5, -1.5, 0) * euler(0,0,0) 
LHP.C1 = cf(0, 0.5, 0) ]]
-- 
RW.Part0 = ch.Torso 
RW.C0 = cf(1.5, 0.5, 0) --* euler(1.3, 0, -0.5) 
RW.C1 = cf(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = cf(-1.5, 0.5, 0) --* euler(1.7, 0, 0.8) 
LW.C1 = cf(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
-- 
RHP = ch.Torso["Right Hip"] 
LHP = ch.Torso["Left Hip"] 
-- 
RWL.Part0 = ch.Torso 
RWL.C0 = cf(0, -1.5, 0) --* euler(1.3, 0, -0.5) 
RWL.C1 = cf(-0.5, 0.5, 0) 
RWL.Part1 = ch["Right Leg"] 
RWL.Parent = ch.Torso 
--_G.R = RW 
-- 
LWL.Part0 = ch.Torso 
LWL.C0 = cf(0, -1.5, 0) --* euler(1.7, 0, 0.8) 
LWL.C1 = cf(0.5, 0.5, 0) 
LWL.Part1 = ch["Left Leg"] 
LWL.Parent = ch.Torso 
--_G.L = LW 
-- 
equipanim(mouse) 
end 
function ds(mouse) 
sheathed = true 
guardy = false 
walking = nil 
Character.Humanoid.WalkSpeed = 16 
Torso.Neck.C1 = euler(1.57,3.14,0) * cf(0,0,-0.5) 
--[[RHP.C0 = cf(0.5, -1.5, 0) * euler(0,math.rad(90),0) 
RHP.C1 = cf(0, 0, 0) 
LHP.C0 = cf(-0.5, -1.5, 0) * euler(0,math.rad(90),0) 
LHP.C1 = cf(0, 0, 0) ]]
hideanim() 
RW.Parent = nil 
LW.Parent = nil 
RWL.Parent = nil 
LWL.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
RHP.Parent = player.Character.Torso 
LHP.Parent = player.Character.Torso 
end 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 
coroutine.resume(coroutine.create(function()
Mesh=msh42
Spar=Spar
St=vt(.4,.4,.4)
Hi=vt(1.2,1.2,1.2)
GRate=10
di=Hi.y-St.y
gdi=di/GRate
Mesh.Scale=St
cc=1
spark=function()
if shootmode==true then
        Spar.Enabled=true
        wait(.25)
        Spar.Enabled=false
end
end
while true do
        Mesh.Scale=St
        for i=1, GRate do
                Mesh.Scale=Mesh.Scale+vt(gdi,gdi,gdi)
                wait()
        end
        Mesh.Scale=Hi
        for i=1, GRate do
                Mesh.Scale=Mesh.Scale-vt(gdi,gdi,gdi)
                wait()
        end
        cc=cc+1
        if cc==3 then
                cc=0
                if math.random(1,3)==1 then
                        coroutine.resume(coroutine.create(spark))
                end
        end
end
end))
--[[coroutine.resume(coroutine.create(function()
Mesh=msh42
Spar=Spar
St=vt(.4,.4,.4)
Hi=vt(1.2,1.2,1.2)
GRate=10
di=Hi.y-St.y
gdi=di/GRate
Mesh.Scale=St
cc=1
spark=function()
if shootmode==true then
        Spar.Enabled=true
        wait(.25)
        Spar.Enabled=false
end
end
while true do
        Mesh.Scale=St
        for i=1, GRate do
                Mesh.Scale=Mesh.Scale+vt(gdi,gdi,gdi)
                wait()
        end
        Mesh.Scale=Hi
        for i=1, GRate do
                Mesh.Scale=Mesh.Scale-vt(gdi,gdi,gdi)
                wait()
        end
        cc=cc+1
        if cc==3 then
                cc=0
                if math.random(1,3)==1 then
                        coroutine.resume(coroutine.create(spark))
                end
        end
end
end))
coroutine.resume(coroutine.create(function()
Mesh=msh42
Spar=Spar
St=vt(.4,.4,.4)
Hi=vt(1.2,1.2,1.2)
GRate=10
di=Hi.y-St.y
gdi=di/GRate
Mesh.Scale=St
cc=1
spark=function()
if shootmode==true then
        Spar.Enabled=true
        wait(.25)
        Spar.Enabled=false
end
end
while true do
        Mesh.Scale=St
        for i=1, GRate do
                Mesh.Scale=Mesh.Scale+vt(gdi,gdi,gdi)
                wait()
        end
        Mesh.Scale=Hi
        for i=1, GRate do
                Mesh.Scale=Mesh.Scale-vt(gdi,gdi,gdi)
                wait()
        end
        cc=cc+1
        if cc==3 then
                cc=0
                if math.random(1,3)==1 then
                        coroutine.resume(coroutine.create(spark))
                end
        end
end
end))]]
coroutine.resume(coroutine.create(function()
wait()
Mesh2=msh44
St2=vt(.4,.4,.4)
Hi2=vt(1.2,1.2,1.2)
GRate2=15
di2=Hi2.y-St2.y
gdi2=di2/GRate2
Mesh.Scale=Hi
while true do
        Mesh2.Scale=Hi2
        for i=1, GRate2 do
                Mesh2.Scale=Mesh2.Scale-vt(gdi2,gdi2,gdi2)
                wait()
        end
        Mesh2.Scale=St2
        for i=1, GRate2 do
                Mesh2.Scale=Mesh2.Scale+vt(gdi2,gdi2,gdi2)
                wait()
        end
end
end))
--[[handle32.Transparency=1
handle33.Transparency=1
handle34.Transparency=1]]
--[[function onRunning(speed)
if combo~=0 then return end 
        if speed>0 then 
walking = true 
for i = 0,1,0.1 do 
wait() 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
RWL.C1 = cf(-0.5,1.5,0) * euler(-0.5*i,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(0.5*i,0,0)
end 
coroutine.resume(coroutine.create(function()
while walking==true and kicking==false do
wait()
for i = 0,1,0.1 do 
if walking==true then
wait() 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
RWL.C1 = cf(-0.5,1.5,0) * euler(-0.5+1*i,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(0.5-1*i,0,0)
end
end 
for i = 0,1,0.1 do 
if walking==true then
wait() 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
RWL.C1 = cf(-0.5,1.5,0) * euler(0.5-1*i,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(-0.5+1*i,0,0)
end
end 
end
end))
        else 
walking = false 
for i = 0,1,0.1 do 
wait() 
RWL.C0 = cf(0.5,-1.5,0) * euler(0,0,0) 
RWL.C1 = cf(0,0.5,0) * euler(0,0,0) 
LWL.C0 = cf(-0.5,-1.5,0) * euler(0,0,0) 
LWL.C1 = cf(0,0.5,0) * euler(0,0,0)
end 
        end 
end 
Character.Humanoid.Running:connect(onRunning) ]]
increase=0
coroutine.resume(coroutine.create(function()
while true do
wait()
RH.Part0 = Torso
LH.Part0 = Torso
if mana < 0 then 
mana = 0
end 
if mana >= 400 then 
mana=400 
end
increase = increase + 1 
if increase == 5 then 
if mana < 400 then 
mana = mana + 1 
end 
increase = 0 
end 
fentext3.Size = UDim2.new(mana*0.007,0,0.200000006,0)
fentext.Text = "Dark Energy("..mana..")" 
end 
end))
coroutine.resume(coroutine.create(function()
while true do
wait()
if Torso.Velocity.magnitude > 1 and kicking==false then 
walking=true
for i = 0,1,0.1 do 
if walking==true and kicking==false then
wait() 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
RWL.C1 = cf(-0.5,1.5,0) * euler(-0.5+1*i,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(0.5-1*i,0,0)
end
end 
for i = 0,1,0.1 do 
if walking==true and kicking==false then
wait() 
RWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
RWL.C1 = cf(-0.5,1.5,0) * euler(0.5-1*i,0,0)
LWL.C0 = cf(0,-0.5,0) * euler(0,0,0) 
LWL.C1 = cf(0.5,1.5,0) * euler(-0.5+1*i,0,0)
end
end 
end
end
end))
while true do
wait()
bar.Value=mana
if Torso.Velocity.magnitude > 1 then 
else
walking=false
if kicking==false then
for i = 0,1,0.1 do 
wait() 
RWL.C0 = cf(0.5,-1.5,0) * euler(0,0,0) 
RWL.C1 = cf(0,0.5,0) * euler(0,0,0) 
LWL.C0 = cf(-0.5,-1.5,0) * euler(0,0,0) 
LWL.C1 = cf(0,0.5,0) * euler(0,0,0)
end 
end
end
end 
-- lego mediafire
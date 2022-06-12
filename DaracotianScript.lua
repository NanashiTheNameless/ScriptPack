--Daracotian Gifted by TheRedAngel, Local Script!

print("Daracotian Loaded") 


if (script.Parent.className ~= "HopperBin") then 
local h = Instance.new("HopperBin") 
h.Name = "Daracotian" 
h.Parent = game.Players["BRICKER24alt"].Backpack 
script.Parent = h 
script.Name = "Function" 
end 



Player = script.Parent.Parent.Parent 
Person = Player 
Character = Player.Character 
Torso = Character.Torso 
Head = Character:findFirstChild("Head") 
LA = Character:findFirstChild("Left Arm") 
RA = Character:findFirstChild("Right Arm") 
LL = Character:findFirstChild("Left Leg") 
RL = Character:findFirstChild("Right Leg") 
Characters = Instance.new("Model") 
Characters.Name = "Suit" 
Characters.Parent = Character 


Bin = script.Parent 
Person = game.Players.LocalPlayer 
PersonT = Person.Character.Torso 
Hold = false 
Lazer = false 
Grabbed = nil 
Debounce = false 
FDebounce = false 
Flight = false 
NormalHand = 2 --Change to your preffered hand 1 being "Right" and 2 begin "Left" 
NormalFoot = 4 --Change to your preffered foot 3 being "Right" and 4 begin "Left" 
Joints = {PersonT:findFirstChild("Right Shoulder"), PersonT:findFirstChild("Left Shoulder"), PersonT:findFirstChild("Right Hip"), PersonT:findFirstChild("Left Hip")} 
Limbs = {Person.Character:findFirstChild("Right Arm"), Person.Character:findFirstChild("Left Arm"), Person.Character:findFirstChild("Right Leg"), Person.Character:findFirstChild("Left Leg")} 

UsingTools = 0 
AnimatingTools = false 


Suit = Character.Suit 


--Head!!!!!!!! 
Ha = Character.Head:Clone() 

Ha.BrickColor = BrickColor.new("New Yeller") 
Ha.face:Remove() 
Ha2 = Ha:Clone() 
Ha.Transparency = 0.5 
Ha.Name = "Head" 
Ha.Reflectance = 0.7 
Ha.Mesh.Scale = Ha.Mesh.Scale + Vector3.new(0.05,0.05,0.05) 

Ha2.Name = "HeadMotor" 
Ha2.Transparency = 1 
Ha2.Mesh:Remove() 

Ha2.Parent = Characters 
Haw = Instance.new("Weld") 
Haw.Part0 = Torso 
Haw.Part1 = Ha2 
Haw.Parent = Torso 
Haw.C0 = CFrame.new(0,1.5,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 

Ha.Parent = Characters 
Hmotor1 = Instance.new("Motor") 
Hmotor1.Parent = Ha2 
Hmotor1.Part0 = Ha2 
Hmotor1.Part1 = Ha 
Hmotor1.MaxVelocity = 0.05 
Hmotor1.C1 = CFrame.new(0,0,0) 

-- Left Wing!!! 
w11 = Instance.new("Part") 
w11.Name = "LWingMotor" 
w11.formFactor = "Symmetric" 
w11.Size = Vector3.new(1,1,1) 
w11.TopSurface = "Smooth" 
w11.BottomSurface = "Smooth" 
w11.CanCollide = false 
w11.Transparency = 1 

w12 = Instance.new("Part") 
w12.Name = "Wing1" 
w12.BrickColor = BrickColor.new("New Yeller") 
w12.formFactor = "Symmetric" 
w12.Size = Vector3.new(1,5,2) 
w12.TopSurface = "Smooth" 
w12.BottomSurface = "Smooth" 
w12.CanCollide = false 
w12.Transparency = 0.35 
w12.Reflectance = 0.7 

w1m = Instance.new("SpecialMesh") 
w1m.Parent = w12 
w1m.MeshType = "Sphere" 
w1m.Scale = Vector3.new(0.2, 1.25, 1) 

w11.Parent = Characters 
ww1 = Instance.new("Weld") 
ww1.Part0 = Torso 
ww1.Part1 = w11 
ww1.Parent = Torso 
ww1.C0 = CFrame.new(-0.4,0,0.8)*CFrame.fromEulerAnglesXYZ(0.5, 0, 0.5) 

w12 .Parent = Characters 
motor1 = Instance.new("Motor") 
motor1.Parent = w11 
motor1.Part0 = w11 
motor1.Part1 = w12 
motor1.MaxVelocity = 0.35 
motor1.C1 = CFrame.new(0,-2,0.5) 

--Right Wing!!! 
w21 = Instance.new("Part") 
w21.Name = "RWingMotor" 
w21.formFactor = "Symmetric" 
w21.Size = Vector3.new(1,1,1) 
w21.TopSurface = "Smooth" 
w21.BottomSurface = "Smooth" 
w21.CanCollide = false 
w21.Transparency = 1 

w22 = Instance.new("Part") 
w22.Name = "Wing2" 
w22.BrickColor = BrickColor.new("New Yeller") 
w22.formFactor = "Symmetric" 
w22.Size = Vector3.new(1,5,2) 
w22.TopSurface = "Smooth" 
w22.BottomSurface = "Smooth" 
w22.CanCollide = false 
w22.Transparency = 0.35 
w22.Reflectance = 0.7 

w2m = Instance.new("SpecialMesh") 
w2m.Parent = w22 
w2m.MeshType = "Sphere" 
w2m.Scale = Vector3.new(0.2, 1.25, 1) 

w21.Parent = Characters 
ww2 = Instance.new("Weld") 
ww2.Part0 = Torso 
ww2.Part1 = w21 
ww2.Parent = Torso 
ww2.C0 = CFrame.new(0.4,0,0.8)*CFrame.fromEulerAnglesXYZ(0.5, 0, -0.5) 

w22 .Parent = Characters 
motor2 = Instance.new("Motor") 
motor2.Parent = w21 
motor2.Part0 = w21 
motor2.Part1 = w22 
motor2.MaxVelocity = 0.35 
motor2.C1 = CFrame.new(0,-2,0.5) 



-- Extra Right Wings!!! 

Lwing1 = w22:Clone() 
Lwing1.Parent = Characters 
Lw1w = Instance.new("Weld") 
Lw1w.Part0 = w22 
Lw1w.Part1 = Lwing1 
Lw1w.Parent = w22 
Lw1w.C0 = CFrame.new(0,-0.5,1)*CFrame.fromEulerAnglesXYZ(0.5,0,0) 

Lwing2 = Lwing1:Clone() 
Lwing2.Parent = Characters 
Lw2w = Instance.new("Weld") 
Lw2w.Part0 = Lwing1 
Lw2w.Part1 = Lwing2 
Lw2w.Parent = Lwing1 
Lw2w.C0 = CFrame.new(0,-0.3,1)*CFrame.fromEulerAnglesXYZ(0.5,0,0) 



--Extra Left Wings!!! 

Rwing1 = w12:Clone() 
Rwing1.Parent = Characters 
Rw1w = Instance.new("Weld") 
Rw1w.Part0 = w12 
Rw1w.Part1 = Rwing1 
Rw1w.Parent = w12 
Rw1w.C0 = CFrame.new(0,-0.5,1)*CFrame.fromEulerAnglesXYZ(0.5,0,0) 

Rwing2 = Lwing1:Clone() 
Rwing2.Parent = Characters 
Rw2w = Instance.new("Weld") 
Rw2w.Part0 = Rwing1 
Rw2w.Part1 = Rwing2 
Rw2w.Parent = Rwing1 
Rw2w.C0 = CFrame.new(0,-0.3,1)*CFrame.fromEulerAnglesXYZ(0.5,0,0) 




-- Torso!!!!!!! 
--BackShuriken!!! 
Bs = Instance.new("Part") 
Bs.Name = "BackShuriken" 
Bs.formFactor = "Plate" 
Bs.Size = Vector3.new(2,0.4,2) 
Bs.TopSurface = "Smooth" 
Bs.BottomSurface = "Smooth" 
Bs.CanCollide = false 
Instance.new("Sparkles").Parent = Bs 
Bs.Sparkles.Enabled = false 

Smb = Instance.new("SpecialMesh") 
Smb.Parent = Bs 
Smb.MeshType = "FileMesh" 
Smb.TextureId = "http://www.roblox.com/asset/?id=11112112" -- Shuriken Texture Id 1 
Smb.MeshId = "http://www.roblox.com/asset/?id=11112101" -- Shuriken Mesh Id 1 
Smb.Scale = Vector3.new(7,9,7) 

Bs.Parent = Characters 
Bsw = Instance.new("Weld") 
Bsw.Part0 = Torso 
Bsw.Part1 = Bs 
Bsw.Parent = Torso 
Bsw.C0 = CFrame.new(0,0,0.65)*CFrame.fromEulerAnglesXYZ(1.5,0,0) 

-- Torso Armor!!! 
Ta = Instance.new("Part") 
Ta.Name = "TorsoArmor" 
Ta.formFactor = "Symmetric" 
Ta.Size = Vector3.new(2,2,1) 
Ta.TopSurface = "Smooth" 
Ta.BottomSurface = "Smooth" 
Ta.BrickColor = BrickColor.new("Really black") 
Ta.Reflectance = 0.4 
Ta.Transparency = 0.5 

Tam = Instance.new("BlockMesh") 
Tam.Parent = Ta 
Tam.Scale = Vector3.new(0.9,1.005,1.2) 

Ta.Parent = Characters 
Taw = Instance.new("Weld") 
Taw.Part0 = Torso 
Taw.Part1 = Ta 
Taw.Parent = Torso 
Taw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 







-- Torso X Front!!! 
x1 = Instance.new("Part") 
x1.Name = "X1" 
x1.formFactor = "Symmetric" 
x1.Size = Vector3.new(1,3,1) 
x1.TopSurface = "Smooth" 
x1.BottomSurface = "Smooth" 
x1.BrickColor = BrickColor.new("Really red") 
x1.Reflectance = 0.1 
x1.CanCollide = false 

x1m = Instance.new("BlockMesh") 
x1m.Parent = x1 
x1m.Scale = Vector3.new(0.3,0.95,0.3) 


x2 = Instance.new("Part") 
x2.Name = "X2" 
x2.formFactor = "Symmetric" 
x2.Size = Vector3.new(1,3,1) 
x2.TopSurface = "Smooth" 
x2.BottomSurface = "Smooth" 
x2.BrickColor = BrickColor.new("Really red") 
x2.Reflectance = 0.1 
x2.CanCollide = false 

x2m = Instance.new("BlockMesh") 
x2m.Parent = x2 
x2m.Scale = Vector3.new(0.3,0.95,0.3) 

x1.Parent = Characters 
x1w = Instance.new("Weld") 
x1w.Part0 = Torso 
x1w.Part1 = x1 
x1w.Parent = Torso 
x1w.C0 = CFrame.new(0,0,-0.55)*CFrame.fromEulerAnglesXYZ(0,0,0.7) 

x2.Parent = Characters 
x2w = Instance.new("Weld") 
x2w.Part0 = Torso 
x2w.Part1 = x2 
x2w.Parent = Torso 
x2w.C0 = CFrame.new(0,0,-0.55)*CFrame.fromEulerAnglesXYZ(0,0,-0.7) 

x0 = Instance.new("Part") 
x0.Name = "X0" 
x0.formFactor = "Symmetric" 
x0.Size = Vector3.new(1,1,1) 
x0.TopSurface = "Smooth" 
x0.BottomSurface = "Smooth" 
x0.BrickColor = BrickColor.new("Really red") 
x0.Reflectance = 0.1 
x0.CanCollide = false 

x0m = Instance.new("SpecialMesh") 
x0m.Parent = x0 
x0m.MeshType = "Sphere" 
x0m.Scale = Vector3.new(1,1,0.5) 

x0.Parent = Characters 
x0w = Instance.new("Weld") 
x0w.Part0 = Torso 
x0w.Part1 = x0 
x0w.Parent = Torso 
x0w.C0 = CFrame.new(0,0,-0.55)*CFrame.fromEulerAnglesXYZ(0,0,0) 




--Dark Suit Ball!!! 
db = Instance.new("Part") 
db.Name = "DarkBall" 
db.formFactor = "Symmetric" 
db.Shape = "Ball" 
db.Size = Vector3.new(1,1,1) 
db.TopSurface = "Smooth" 
db.BottomSurface = "Smooth" 
db.BrickColor = BrickColor.new("Really black") 
db.Transparency = 0.955 
db.CanCollide = false 
db.CFrame = Torso.CFrame 

dbm = Instance.new("SpecialMesh") 
dbm.Parent = db 
dbm.MeshType = "Sphere" 
dbm.Scale = Vector3.new(20,20,20) 

dsbp = Instance.new("BodyPosition") 
dsbp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
dsbp.Parent = db 
db.Parent = Characters 





-- Left Arm!!!!!!!!!!!!!!!! 


-- Left Arm Armor!!!! 
LAa = Instance.new("Part") 
LAa.Name = "LeftArmArmor" 
LAa.formFactor = "Symmetric" 
LAa.Size = Vector3.new(1,2,1) 
LAa.TopSurface = "Smooth" 
LAa.BottomSurface = "Smooth" 
LAa.BrickColor = BrickColor.new("Really black") 
LAa.Reflectance = 0.1 
LAa.Transparency = 0.1 

LAm = Instance.new("BlockMesh") 
LAm.Parent = LAa 
LAm.Scale = Vector3.new(1.1,1.1,1.1) 

LAa.Parent = Characters 
LAaw = Instance.new("Weld") 
LAaw.Part0 = LA 
LAaw.Part1 = LAa 
LAaw.Parent = LA 
LAaw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 

--Left Arm Wedge1!!! 
LAw = Instance.new("WedgePart") 
LAw.Name = "LeftArmWedge" 
LAw.formFactor = "Plate" 
LAw.Size = Vector3.new(1, 0.4, 1) 
LAw.TopSurface = "Smooth" 
LAw.BottomSurface = "Smooth" 
LAw.BrickColor = BrickColor.new("Really black") 
LAw.Reflectance = 0.1 
LAw.Transparency = 0.1 


LAw.Parent = Characters 
LAww = Instance.new("Weld") 
LAww.Part0 = LAw 
LAww.Part1 = LA 
LAww.Parent = LAw 
LAww.C0 = CFrame.new(0,-0.7,0.5)*CFrame.fromEulerAnglesXYZ(0,-1.5,-1.6) 



--Left Arm Shuriken!!! 
LAs = Instance.new("Part") 
LAs.Name = "LeftArmShuriken" 
LAs.formFactor = "Plate" 
LAs.Size = Vector3.new(1, 0.4, 1) 
LAs.TopSurface = "Smooth" 
LAs.BottomSurface = "Smooth" 
LAs.BrickColor = BrickColor.new("Really black") 
LAs.Reflectance = 0.1 

Lasm = Instance.new("SpecialMesh") 
Lasm.Parent = LAs 
Lasm.MeshType = "FileMesh" 
Lasm.TextureId = "http://www.roblox.com/asset/?id=11376931" -- Shuriken Texture Id 2 
Lasm.MeshId = "http://www.roblox.com/asset/?id=11376946" -- Shuriken Mesh Id 2 
Lasm.Scale = Vector3.new(3,5,3) 

LAs.Parent = Characters 
LAsw = Instance.new("Weld") 
LAsw.Part0 = LAs 
LAsw.Part1 = LA 
LAsw.Parent = LAs 
LAsw.C0 = CFrame.new(0,-0.6,-0.5)*CFrame.fromEulerAnglesXYZ(0,-1.5,-1.6) 

-- Left Arm Claw!!! 
LAc = Instance.new("Part") 
LAc.Name = "LClaw" 
LAc.formFactor = "Symmetric" 
LAc.Size = Vector3.new(1, 1, 1) 
LAc.TopSurface = "Smooth" 
LAc.BottomSurface = "Smooth" 
LAc.BrickColor = BrickColor.new("Really black") 

Lacm = Instance.new("SpecialMesh") 
Lacm.Parent = LAc 
Lacm.MeshType = "FileMesh" 
Lacm.TextureId = "http://www.roblox.com/asset/?id=10681501" -- Claw Texture Id 
Lacm.MeshId = "http://www.roblox.com/asset/?id=10681506" -- Claw Mesh Id 
Lacm.Scale = Vector3.new(1, 2, 0.8) 

LAc.Parent = Characters 
LAcw = Instance.new("Weld") 
LAcw.Part0 = LAc 
LAcw.Part1 = LA 
LAcw.Parent = LAc 
LAcw.C0 = CFrame.new(-0.5,0,-1.45)*CFrame.fromEulerAnglesXYZ(-1.6,-1.5,0) 






-- Right Arm!!!!!!!!!!!!!!!!!!!!!! 

-- Right Arm Armor!!!! 
RAa = Instance.new("Part") 
RAa.Name = "RightArmArmor" 
RAa.formFactor = "Symmetric" 
RAa.Size = Vector3.new(1,2,1) 
RAa.TopSurface = "Smooth" 
RAa.BottomSurface = "Smooth" 
RAa.BrickColor = BrickColor.new("Really black") 
RAa.Reflectance = 0.1 
RAa.Transparency = 0.1 

RAm = Instance.new("BlockMesh") 
RAm.Parent = RAa 
RAm.Scale = Vector3.new(1.1,1.1,1.1) 

RAa.Parent = Characters 
RAaw = Instance.new("Weld") 
RAaw.Part0 = RA 
RAaw.Part1 = RAa 
RAaw.Parent = RA 
RAaw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 

--Right Arm Wedge!!! 
RAw = Instance.new("WedgePart") 
RAw.Name = "RightArmWedge" 
RAw.formFactor = "Plate" 
RAw.Size = Vector3.new(1, 0.4, 1) 
RAw.TopSurface = "Smooth" 
RAw.BottomSurface = "Smooth" 
RAw.BrickColor = BrickColor.new("Really black") 
RAw.Reflectance = 0.1 
RAw.Transparency = 0.1 


RAw.Parent = Characters 
RAww = Instance.new("Weld") 
RAww.Part0 = RAw 
RAww.Part1 = RA 
RAww.Parent = RAw 
RAww.C0 = CFrame.new(0,-0.7,0.5)*CFrame.fromEulerAnglesXYZ(0,1.5,1.5) 



--Right Arm Shuriken!!! 
RAs = Instance.new("Part") 
RAs.Name = "RightArmShuriken" 
RAs.formFactor = "Plate" 
RAs.Size = Vector3.new(1, 0.4, 1) 
RAs.TopSurface = "Smooth" 
RAs.BottomSurface = "Smooth" 
RAs.BrickColor = BrickColor.new("Really black") 
RAs.Reflectance = 0.1 

Rasm = Instance.new("SpecialMesh") 
Rasm.Parent = RAs 
Rasm.MeshType = "FileMesh" 
Rasm.TextureId = "http://www.roblox.com/asset/?id=11376931" -- Shuriken Texture Id 2 
Rasm.MeshId = "http://www.roblox.com/asset/?id=11376946" -- Shuriken Mesh Id 2 
Rasm.Scale = Vector3.new(3,5,3) 

RAs.Parent = Characters 
RAsw = Instance.new("Weld") 
RAsw.Part0 = RAs 
RAsw.Part1 = RA 
RAsw.Parent = RAs 
RAsw.C0 = CFrame.new(0,-0.6,-0.5)*CFrame.fromEulerAnglesXYZ(0,1.5,1.6) 

-- Right Arm Claw!!! 
RAc = Instance.new("Part") 
RAc.Name = "RClaw" 
RAc.formFactor = "Symmetric" 
RAc.Size = Vector3.new(1, 1, 1) 
RAc.TopSurface = "Smooth" 
RAc.BottomSurface = "Smooth" 
RAc.BrickColor = BrickColor.new("Really black") 

Racm = Instance.new("SpecialMesh") 
Racm.Parent = RAc 
Racm.MeshType = "FileMesh" 
Racm.TextureId = "http://www.roblox.com/asset/?id=10681501" -- Claw Texture Id 
Racm.MeshId = "http://www.roblox.com/asset/?id=10681506" -- Claw Mesh Id 
Racm.Scale = Vector3.new(1, 2, 0.8) 

RAc.Parent = Characters 
RAcw = Instance.new("Weld") 
RAcw.Part0 = RAc 
RAcw.Part1 = RA 
RAcw.Parent = RAc 
RAcw.C0 = CFrame.new(-0.5,0,-1.45)*CFrame.fromEulerAnglesXYZ(-1.6,-1.5,0) 


-- Left Leg!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
--Left Leg Armor!!! 

LLa = Instance.new("Part") 
LLa.Name = "RightLegArmor" 
LLa.formFactor = "Symmetric" 
LLa.Size = Vector3.new(1,2,1) 
LLa.TopSurface = "Smooth" 
LLa.BottomSurface = "Smooth" 
LLa.BrickColor = BrickColor.new("Really black") 
LLa.Reflectance = 0.1 
LLa.Transparency = 0.1 

LLm = Instance.new("BlockMesh") 
LLm.Parent = LLa 
LLm.Scale = Vector3.new(1.1,1.1,1.1) 

LLa.Parent = Characters 
LLaw = Instance.new("Weld") 
LLaw.Part0 = LL 
LLaw.Part1 = LLa 
LLaw.Parent = LL 
LLaw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 








--Right Leg!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
--Right Leg Armor!!! 

RLa = Instance.new("Part") 
RLa.Name = "RightLegArmor" 
RLa.formFactor = "Symmetric" 
RLa.Size = Vector3.new(1,2,1) 
RLa.TopSurface = "Smooth" 
RLa.BottomSurface = "Smooth" 
RLa.BrickColor = BrickColor.new("Really black") 
RLa.Reflectance = 0.1 
RLa.Transparency = 0.1 

RLm = Instance.new("BlockMesh") 
RLm.Parent = RLa 
RLm.Scale = Vector3.new(1.1,1.1,1.1) 

RLa.Parent = Characters 
RLaw = Instance.new("Weld") 
RLaw.Part0 = RL 
RLaw.Part1 = RLa 
RLaw.Parent = RL 
RLaw.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 

--Watch 8D!!! 

Watch2 = Instance.new("Part") 
Watch2.Name = "Watch2" 
Watch2.formFactor = "Plate" 
Watch2.Size = Vector3.new(1,0.4,1) 
Watch2.TopSurface = "Smooth" 
Watch2.BottomSurface = "Smooth" 
Watch2.BrickColor = BrickColor.new("Really black") 
Watch2.Reflectance = 0.1 
Watch2.Transparency = 0.1 

Watch2.Parent = Characters 
Watch2w = Instance.new("Weld") 
Watch2w.Part0 = RA 
Watch2w.Part1 = Watch2 
Watch2w.Parent = RA 
Watch2w.C0 = CFrame.new(0,-0.25,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 



--Sounds in the Suit!!!! 
Cs = Instance.new("Sound") 
Cs.Parent = Ta 
Cs.Name = "Cast" 
Cs.Volume = 1 
Cs.Pitch = 1 
Cs.SoundId = "http://www.roblox.com/asset/?id=2101137" 

Fp = Instance.new("Sound") 
Fp.Parent = Ta 
Fp.Name = "FalconPunch" 
Fp.Volume = 1 
Fp.Pitch = 1 
Fp.SoundId = "http://www.roblox.com/asset/?id=1387390" 

Tz = Instance.new("Sound") 
Tz.Parent = Ta 
Tz.Name = "Tz" 
Tz.Volume = 1 
Tz.Pitch = 1 
Tz.SoundId = "http://www.roblox.com/asset/?id=2974000" 

Hs = Instance.new("Sound") 
Hs.Parent = Ta 
Hs.Name = "Heal" 
Hs.Volume = 1 
Hs.Pitch = 1 
Hs.SoundId = "http://www.roblox.com/asset/?id=2101144" 

Ex = Instance.new("Sound") 
Ex.Parent = Ta 
Ex.Name = "Ex" 
Ex.Volume = 1 
Ex.Pitch = 1 
Ex.SoundId = "http://www.roblox.com/asset?id=2101157" 





---ENd of Suit!!!!!!! 


---Function!!!!!!!!!! :D YEAH! 




print("0") 
function SetAngle(Joint, Angle) 
if (Joint == 1) or (Joint == 3) then 
Joints[Joint].DesiredAngle = Angle 
end 
if (Joint == 2) or (Joint == 4) then 
Joints[Joint].DesiredAngle = -Angle 
end 
end 
function DisableLimb(Limb) 
Joints[Limb]:remove() 

Joint = Instance.new("Motor") 
Joint.Parent = Person.Character.Torso 
Joint.Part0 = Person.Character.Torso 
Joint.Part1 = Limbs[Limb] 
Joint.MaxVelocity = 0.1 
if (Limb == 1) then 
C0 = CFrame.new(PersonT.Size.x/2 + Limbs[Limb].Size.x/2, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.Name = "Right Joint Top" 
elseif (Limb == 2) then 
C0 = CFrame.new(-PersonT.Size.x/2 - Limbs[Limb].Size.x/2, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.Name = "Left Joint Top" 
elseif (Limb == 3) then 
C0 = CFrame.new(Limbs[Limb].Size.x/2, -(Limbs[Limb].Size.y/4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14/2, 0) 
Joint.Name = "Right Joint Bottom" 
elseif(Limb == 4) then 
C0 = CFrame.new(-Limbs[Limb].Size.x/2, -(Limbs[Limb].Size.y/4) * 3, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.C1 = CFrame.new(0, Limbs[Limb].Size.y/4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14/2, 0) 
Joint.Name = "Left Joint Bottom" 
end 
Joint.C0 = C0 
Joints[Limb] = Joint 
end 

print("1") 

function EnableLimb(Limb) 
if (Limb == 1) then 
Joints[Limb].Name = "Right Shoulder" 
elseif (Limb == 2) then 
Joints[Limb].Name = "Left Shoulder" 
elseif (Limb == 3) then 
Joints[Limb].Name = "Right Hip" 
elseif(Limb == 4) then 
Joints[Limb].Name = "Left Hip" 
end 
Anim = Person.Character.Animate:clone() 
Person.Character.Animate:remove() 
Anim.Parent = Person.Character 
end 

print("2") 

function Grab(Part) 
if (Grabbed == nil) then 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Player = game.Players:GetPlayerFromCharacter(Human.Parent) 
if (Player ~= nil) then 
if (Player ~= Person) then 
Human.Sit = true 
Weld = Instance.new("Weld") 
Weld.Name = "Grip" 
Weld.Parent = Person.Character.Torso 
Weld.Part0 = Person.Character.Torso 
Weld.Part1 = Player.Character.Torso 
Weld.C0 = CFrame.new(0, 2.5, 0) * CFrame.fromEulerAnglesXYZ(3.14/2, 0, 0) 
SetAngle(1, 3.14) 
SetAngle(2, 3.14) 
Grabbed = Player 
Human.Sit = true 
Connection1:disconnect() 
Connection2:disconnect() 
while true do 
if (Weld.Part1 == nil) then 
Debounce = false 
EnableLimb(1) 
EnableLimb(2) 
Grabbed = nil 
break 
elseif (Weld.Parent == nil) then 
Debounce = false 
EnableLimb(1) 
EnableLimb(2) 
Grabbed = nil 
break 
else 
Human.Sit = true 
end 
wait() 
end 
end 
end 
end 
end 
end 
end 

print("3") 


function Click(mouse) 
Hold = true 
if (Flight == true) then 
Person.Character.Engine.BodyPosition.maxForce = Vector3.new(0, 0, 0) 
Person.Character.Engine.BodyVelocity.maxForce = Vector3.new(4e+030, 4e+030, 4e+030) 
Position = Person.Character.Engine.Position 
Person.Character.Engine.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(3.14/2, 0, 0) 
SetAngle(NormalHand, 3.14) 
while true do 

if (Flight == false) then 
break 
end 
if (Hold == false) then 
break 
end 
Direction = Person.Character.Engine.CFrame.lookVector 
Position = Position + 2 * 3 * Direction 
error = Position - Person.Character.Engine.Position 
Person.Character.Engine.BodyVelocity.velocity = 2 * error 
wait() 
end 
BodyP.position = Engine.Position 
Person.Character.Engine.BodyPosition.maxForce = Vector3.new(4e+050, 4e+050, 4e+050) 

Person.Character.Engine.Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
SetAngle(NormalHand, 0) 

end 

end 




print("5") 

function Release(mouse) 
Hold = false 
end 
function Direct(En, Target) 
local OriginCFrame = En:findFirstChild("BodyGyro").cframe 
local Direction = (Target - En.Position).unit 
local SpawnPosition = En.Position 
local Position = SpawnPosition + (Direction * 1) 
En:findFirstChild("BodyGyro").maxTorque = Vector3.new(9000, 9000, 9000) 
En:findFirstChild("BodyGyro").cframe = CFrame.new(Position, Position + Direction) 
end 

print("6") 

function PressKey(key, mouse) 
key = key:upper() 
if (key == "Z") then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(1) 
DisableLimb(2) 
Joints[1].MaxVelocity = 1 
SetAngle(1, 3.14) 
Joints[2].MaxVelocity = 1 
SetAngle(2, 3.14) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
--Human.Sit = true 
Human.Parent.Torso.Velocity = Vector3.new(0, 300, 0) 
end 
end 
end 
Connection = Limbs[1].Touched:connect(Touch) 
ConnectionB = Limbs[2].Touched:connect(Touch) 
wait(0.5) 
Joints[1].MaxVelocity = 0.1 
Joints[2].MaxVelocity = 0.1 
EnableLimb(1) 
EnableLimb(2) 
Connection:disconnect() 
ConnectionB:disconnect() 
Debounce = false 
end 
end 
if (key == "N") then 
X = game.Workspace:GetChildren() 
for I, E in pairs(X) do 
if (E.Name == "Bomb") then 
E.Ex:play() 
Ex = Instance.new("Explosion") 
Ex.Parent = game.Workspace 
Ex.BlastRadius = 15 
Ex.Position = E.Position 
Ex.BlastPressure = 1000 
E:remove() 
end 
end 
end 
if (key == "Y") then 
Bomb = Instance.new("Part") 
Character.Suit.TorsoArmor.Ex:Clone().Parent = Bomb 
Bomb.Name = "Bomb" 
Bomb.formFactor = "Symmetric" 
Bomb.Shape = "Ball" 
Bomb.Size = Vector3.new(2,2,2) 
Bomb.TopSurface = 0 
Bomb.BottomSurface = 0 
Bomb.BrickColor = BrickColor.new("Blue") 
Bomb.CFrame = CFrame.new(Person.Character.Suit.Watch2.Position) 
Bomb.CanCollide = true 
Bomb.Parent = game.Workspace 
Smoke = Instance.new("Smoke") 
Smoke.Parent = Bomb 
local c = (PersonT.Color.r + PersonT.Color.g + PersonT.Color.b)/3 
Smoke.Color = Color3.new(0,0,0) 
Smoke.Size = 2 
Smoke.Opacity = 0.5 
Bomb:BreakJoints() 
end 
if (key == "Q") then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(NormalFoot) 
Joints[NormalFoot].MaxVelocity = 1 
SetAngle(NormalFoot, 0.7) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Human.Sit = true 
Position = Human.Parent.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 5 * error 
Human.Parent.Torso.Velocity = Human.Parent.Torso.Velocity + Vector3.new(0, 50, 0) 
end 
end 
end 
Connection = Limbs[NormalFoot].Touched:connect(Touch) 
wait(0.5) 
Joints[NormalFoot].MaxVelocity = 0.2 
EnableLimb(NormalFoot) 
Connection:disconnect() 
Debounce = false 
end 
end 
if (key == "F") then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(NormalFoot) 
Joints[NormalFoot].MaxVelocity = 1 
SetAngle(NormalFoot, 0.7) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Player = game.Players:GetPlayerFromCharacter(Human.Parent) 
if (Player ~= nil) then 
if (Player ~= Person) then 
Human.Sit = true 
Position = Human.Parent.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 10 * error 
Human.Parent.Torso.Velocity = Human.Parent.Torso.Velocity + Vector3.new(0, 100, 0) 
wait(0.5) 
Player:remove() 
end 
end 
end 
end 
end 
Connection = Limbs[NormalFoot].Touched:connect(Touch) 
wait(0.5) 
Joints[NormalFoot].MaxVelocity = 0.1 
EnableLimb(NormalFoot) 
Connection:disconnect() 
Debounce = false 
end 
end 
if (key == "E") then 
if (Flight == true) then 
if (FDebounce == false) then 
FDebounce = true 
Character.Suit.TorsoArmor.FalconPunch:play() 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Instance.new("Smoke").Parent = Character.Suit.LegArmArmor 
Character.Suit.LegArmArmor.Smoke.Color = Color3.new(0,0,0) 
wait(0.8) 
Human.Sit = true 
Huamn.Health = Human.Health - 99.999 
Position = Human.Parent.Torso.Position 
Direction = Person.Character.Engine.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 10 * error 
Character.Suit.LegArmArmor.Smoke:Remove() 
end 
end 
end 
Connection = PersonT.Touched:connect(Touch) 
wait(2) 
Connection:disconnect() 
FDebounce = false 
end 
end 
if (Debounce == false) then 
Debounce = true 
DisableLimb(NormalHand) 
Joints[NormalHand].MaxVelocity = 1 
SetAngle(NormalHand, 1.57) 
function Touch(Part) 
if (Part.Parent ~= nil) then 
Human = Part.Parent:findFirstChild("Humanoid") 
if (Human ~= nil) then 
Human.Sit = true 
Position = Human.Parent.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 10 * 3 * Direction 
error = Position - PersonT.Position 
Human.Parent.Torso.Velocity = 10 * error 
end 
end 
end 
Connection = Limbs[NormalHand].Touched:connect(Touch) 
wait(0.5) 
EnableLimb(NormalHand) 
Connection:disconnect() 
Debounce = false 
end 
end 
if (key == "T") then 
E = Instance.new("Explosion") 
E.Parent = game.Workspace 
E.BlastRadius = 12 
E.Position = mouse.hit.p 
E.BlastPressure = 1000 
end 
if (key == "G") then 
if (Grabbed == nil) then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(1) 
DisableLimb(2) 
SetAngle(1, 1.57) 
SetAngle(2, 1.57) 
Connection1 = Limbs[1].Touched:connect(Grab) 
Connection2 = Limbs[2].Touched:connect(Grab) 
for E = 1, 30 do 
if (Grabbed ~= nil) then 
break 
end 
wait(0.1) 
end 
if (Grabbed == nil) then 
EnableLimb(1) 
EnableLimb(2) 
Connection1:disconnect() 
Connection2:disconnect() 
Debounce = false 
end 
end 
else 
Person.Character.Torso.Grip:remove() 
Position = Grabbed.Character.Torso.Position 
Direction = PersonT.CFrame.lookVector 
Position = Position + 4 * 3 * Direction 
error = Position - PersonT.Position 
Grabbed.Character.Torso.Velocity = 4 * error 
end 
end 
if (key == "R") then 
if (Flight == false) then 
if (Debounce == false) then 
Debounce = true 
DisableLimb(1) 
DisableLimb(2) 
Flight = true 
DisableLimb(3) 
DisableLimb(4) 
SetAngle(1, 0) 
SetAngle(2, 0) 
SetAngle(3, 0) 
SetAngle(4, 0) 
Engine = Instance.new("Part") 
Engine.Parent = Person.Character 
Engine.Size = PersonT.Size 
Engine.Name = "Engine" 
Engine.TopSurface = 0 
Engine.BottomSurface = 0 
Engine.formFactor = "Symmetric" 
Engine.Transparency = 1 
Engine:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Engine 
Weld.Part0 = PersonT 
Weld.Part1 = Engine 
Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0) 
BodyP = Instance.new("BodyPosition") 
BodyP.Parent = Engine 
BodyP.position = Engine.Position + Vector3.new(0, 10, 0) 
BodyP.maxForce = Vector3.new(4e+050, 4e+050, 4e+050) 
BodyG = Instance.new("BodyGyro") 
BodyG.Parent = Engine 
BodyV = Instance.new("BodyVelocity") 
BodyV.Parent = Engine 
BodyV.velocity = Vector3.new(0, 0, 0) 
BodyV.maxForce = Vector3.new(0, 0, 0) 
while true do 
if (Flight == false) then 
break 
end 
Direct(Engine, mouse.hit.p) 
Person.Character.Humanoid.Sit = true 
Person.Character.Head.CanCollide = false 
Person.Character.Torso.CanCollide = false 
wait(0.000000000000000000000000000000001) 
end 
EnableLimb(1) 
EnableLimb(2) 
EnableLimb(3) 
EnableLimb(4) 
Debounce = false 
Person.Character.Engine:remove() 
Person.Character.Humanoid.Sit = false 
end 
else 
Flight = false 
end 
end 
if (key == "L") then 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 2.57) 
wait(1) 
SetAngle(NormalHand, 0) 
end 
if (key == "H") then -- Heal 8D 
if (Debounce == false) then 
Debounce = true 

HealBrick = Instance.new("Part") 
HealBrick.CanCollide = false 
HealBrick.Anchored = true 
HealBrick.Transparency = 0 
HealBrick.Locked = true 
HealBrick.archivable = false 
HealBrick.TopSurface = 0 
HealBrick.BottomSurface = 0 
HealBrick.Size = Vector3.new(2,4,2) 
HealBrick.BrickColor = BrickColor.new("Really black") 
HealBrick.Parent = Suit 

HealBrick.CFrame = Torso.CFrame 

Hm = Instance.new("SpecialMesh") 
Hm.Parent = HealBrick 
Hm.MeshType = "Sphere" 


for i=1,10 do 
Hm.Scale = Hm.Scale + Vector3.new(0.4,0.8,0.4) 
wait(0.1) 
end 
Ta.Heal:play() 
for i=1,12 do 
Hm.Scale = Hm.Scale - Vector3.new(0.4,0.8,0.4) 
wait(0.1) 
end 

Character.Humanoid.Health = Character.Humanoid.Health + 999999999 
HealBrick:Remove() 

wait(0.1) 

Debounce = false 

end 
end 
if (key == "J") and (UsingTools == 0) then -- Summoning Tools!! 8D 
if (Debounce == false) and (AnimatingTools == false) then 
if (Lazer == false) then 
Debounce = true 
UsingTools = 1 
AnimatingTools = true 

NewTool = Instance.new("Model") 
NewTool.Parent = Suit 
NewTool.Name = "GiantSword" 

Character.Suit.TorsoArmor.Anchored = true 

Pt = Instance.new("Part") 
Pt.CanCollide = false 
Pt.Anchored = true 
Pt.Transparency = 0.8 
Pt.Locked = true 
Pt.archivable = false 
Pt.TopSurface = 0 
Pt.BottomSurface = 0 
Pt.Size = Vector3.new(2,3,2) 
Pt.BrickColor = BrickColor.new("Magenta") 
Pt.Parent = Suit 
Pt.CFrame = Torso.CFrame + Torso.CFrame.lookVector * 10 
Pt.CFrame = Pt.CFrame + Vector3.new(0,10,0) 

Pm = Instance.new("SpecialMesh") 
Pm.Parent = Pt 
Pm.MeshType = "Sphere" 

for i=1,10 do 
Pm.Scale = Pm.Scale + Vector3.new(0.4,0.8,0.4) 
wait(0.05) 
end 

wait(0.1) 

for i=1,16 do 
wait(0.05) 
Pt.Transparency = Pt.Transparency - 0.05 
end 

Ta.Tz:play() 

--GIANT SWORD CCREATION :D 
Gsh1 = Instance.new("Part") 
Gsh1.Name = "Handle" 
Gsh1.CanCollide = true 
Gsh1.Anchored = false 
Gsh1.Transparency = 0 
Gsh1.Locked = true 
Gsh1.archivable = false 
Gsh1.TopSurface = 0 
Gsh1.BottomSurface = 0 
Gsh1.Size = Vector3.new(1,1,1) 
Gsh1.formFactor = "Symmetric" 
Gsh1.BrickColor = BrickColor.new("Mid gray") 
Gsh1.Parent = NewTool 
Gsh1.CFrame = Pt.CFrame - Vector3.new(0,-4.5,0) 



Gsh2 = Instance.new("Part") 
Gsh2.Name = "Handle2" 
Gsh2.CanCollide = true 
Gsh2.Anchored = false 
Gsh2.Transparency = 0 
Gsh2.Locked = true 
Gsh2.archivable = false 
Gsh2.TopSurface = 0 
Gsh2.BottomSurface = 0 
Gsh2.Size = Vector3.new(1,1,1) 
Gsh2.formFactor = "Symmetric" 
Gsh2.BrickColor = BrickColor.new("Mid gray") 
Gsh2.CFrame = Pt.CFrame - Vector3.new(0,-4,0) 

Gsh2m = Instance.new("BlockMesh") 
Gsh2m.Parent = Gsh2 
Gsh2m.Scale = Vector3.new(2.2,0.25,2) 

Gsh2.Parent = NewTool 
Gsh2w = Instance.new("Weld") 
Gsh2w.Part0 = Gsh2 
Gsh2w.Part1 = Gsh1 
Gsh2w.Parent = Gsh2 
Gsh2w.C0 = CFrame.new(0,-0.48,0)*CFrame.fromEulerAnglesXYZ(0,1.5,0) 

Gss = Instance.new("Part") 
Gss.CanCollide = true 
Gss.Anchored = false 
Gss.Transparency = 0 
Gss.Locked = true 
Gss.archivable = false 
Gss.TopSurface = 0 
Gss.BottomSurface = 0 
Gss.Size = Vector3.new(2,5,1) 
Gss.formFactor = "Symmetric" 
Gss.BrickColor = BrickColor.new("Mid gray") 
Gss.CFrame = Pt.CFrame - Vector3.new(0,-1.5,0) 

Gssm = Instance.new("SpecialMesh") 
Gssm.Parent = Gss 
Gssm.MeshType = "Brick" 
Gssm.Scale = Vector3.new(0.8,1,0.2) 

Gss.Parent = NewTool 
Gssw = Instance.new("Weld") 
Gssw.Part0 = Gss 
Gssw.Part1 = Gsh2 
Gssw.Parent = Gss 
Gssw.C0 = CFrame.new(0,-2.5,0)*CFrame.fromEulerAnglesXYZ(0,0,0) 

Gsw1 = Instance.new("Part") 
Gsw1.Name = "Blade" 
Gsw1.CanCollide = true 
Gsw1.Anchored = false 
Gsw1.Transparency = 0 
Gsw1.Locked = true 
Gsw1.archivable = false 
Gsw1.TopSurface = 0 
Gsw1.BottomSurface = 0 
Gsw1.Size = Vector3.new(2,5,1) 
Gsw1.formFactor = "Symmetric" 
Gsw1.BrickColor = BrickColor.new("Mid gray") 
Gsw1.CFrame = Pt.CFrame - Vector3.new(0,-1.5,0) 

gsbg = Instance.new("BodyGyro") 
gsbg.Parent = Gsh1 

gsbp = Instance.new("BodyPosition") 
gsbp.Parent = Gsh1 
gsbp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
gsbp.position = Gsh1.Position 



for i=1,12 do 
Pm.Scale = Pm.Scale - Vector3.new(0.4,0.8,0.4) 
wait(0.05) 
end 
Pt:Remove() 

wait(0.5) 

gsbp.position = Suit.RightArmArmor.Position 

wait(1) 

Gsh1.BodyGyro:Remove() 
Gsh1.BodyPosition:Remove() 

Gsh1w = Instance.new("Weld") 
Gsh1w.Part0 = Gsh1 
Gsh1w.Part1 = Suit.RightArmArmor 
Gsh1w.Parent = Gsh1 
Gsh1w.C0 = CFrame.new(0.5,1,0)*CFrame.fromEulerAnglesXYZ(0,1.5,0) 

wait(0.5) 

Ta.Anchored = false 

wait(0.5) 
AnimatingTools = false 
Debounce = False 
end 
end 
end 
if (key == "K") then 
if (Debounce == false) then 
if (Lazer == false) then 
Debounce = true 
Lazer = true 
DisableLimb(NormalHand) 
SetAngle(NormalHand, 0.785) 
BP = Instance.new("BodyPosition") 
BP.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
BP.P = BP.P / 4 
BG = Instance.new("BodyGyro") 
BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local targ = nil 
local Mag = nil 
local Pos = nil 
while true do 
if (Lazer == false) then 
break 
end 
if (mouse.Target ~= nil) and (targ == nil) then 
if (mouse.Target.Anchored == false) then 
if ((mouse.Hit.p - Person.Character.Suit.Watch2.Position).magnitude <= 10000) then 
targ = mouse.Target 
BP.Parent = targ 
BG.Parent = targ 
Mag = (targ.Position - mouse.Hit.p).magnitude 
Pos = (targ.Position - mouse.Hit.p).unit * -Mag 
end 
end 
end 
local pop = mouse.Hit.p 
local G = Instance.new("Part") 
G.Parent = Person.Character 
G.Name = "Grab Lazer" 
G.Anchored = true 
G.Locked = true 
G.CanCollide = false 
G.formFactor = 0 
G.Size = Vector3.new(1, 1, 1) 
G.BrickColor = BrickColor.new("Royal blue") 
G.Reflectance = 0.05 
G.Transparency = 0.025 
local Place0 = Person.Character.Suit.Watch2.CFrame * CFrame.new(0, -0.1, 0) 
local MeAsh = Instance.new("CylinderMesh") 
MeAsh.Parent = G 
if (targ == nil) or (targ.Anchored == true) then 
MeAsh.Scale = Vector3.new(0.1, (Place0.p-pop).magnitude, 0.1) 
G.CFrame = CFrame.new((Place0.p + pop)/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
else 
BP.Parent = targ 
BP.position = (PersonT.CFrame + (mouse.Hit.lookVector * 8) + Pos).p + Vector3.new(0, 5.7, 0) 
BG.Parent = targ 
BG.cframe = CFrame.new(targ.Position, PersonT.Position) 
if (targ.Parent == nil) or (targ.Parent.Parent == Person.Character) then 
BP.Parent = nil 
BG.Parent = nil 
end 
MeAsh.Scale = Vector3.new(0.1, (Place0.p - targ.Position).magnitude, 0.1) 
G.CFrame = CFrame.new((Place0.p + (targ.Position + Pos))/2, Place0.p) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0) 
end 
wait() 
G:Remove() 
end 
Debounce = false 
EnableLimb(NormalHand) 
BP.Parent = nil 
BG.Parent = nil 
end 
end 
end 

end 

print("7") 


function LiftKey(key, mouse) 
key = key:upper() 
if (key == "L") then 
if (Person.Character.Suit.Band:findFirstChild("Smoke") ~= nil) then 
Person.Character.Suit.Band.Smoke:remove() 
EnableLimb(NormalHand) 
end 
end 
if (key == "H") then 
if (Person.Character:findFirstChild("Grapple Lazer") ~= nil) then 
Lazer = false 
end 
end 
if (key == "J") then 
if (Person.Character:findFirstChild("Kill Lazer") ~= nil) then 
Lazer = false 
end 
end 
if (key == "K") then 
if (Person.Character:findFirstChild("Grab Lazer") ~= nil) then 
Lazer = false 
end 
end 
if (key == "X") then 
if (Person.Character:findFirstChild(" Lazer") ~= nil) then 
Lazer = false 
end 
end 
end 
function Select(mouse) 
mouse.Button1Down:connect(function() Click(mouse) end) 
mouse.Button1Up:connect(function() Release(mouse) end) 
mouse.KeyDown:connect(function(key) PressKey(key, mouse) end) 
mouse.KeyUp:connect(function(key) LiftKey(key, mouse) end) 
end 

print("8") 

function Deselect(mouse) 
Hold = false 
Lazer = false 
Flight = false 
end 

print("9 =D") 

ModeDebounce = false 
script.Parent.Selected:connect(function(mouse) 
mouse.KeyDown:connect(function(key) 
key = key:lower() 

if (key=="z") and (ModeDebounce == false) then -- z charge ball to fire blast 
ModeDebounce = true 
--[[ 
a["Left Hip"].DesiredAngle = 0 
a["Right Hip"].DesiredAngle = 0 
a["Right Shoulder"].DesiredAngle = 3.1 
a["Left Shoulder"].DesiredAngle = 3.1 ]] 
wait() 
Suit.TorsoArmor.Anchored = true 

OldWs = Character.Humanoid.WalkSpeed 
Character.Humanoid.WalkSpeed = 0 

wait(1) 

Cb = Instance.new("Part") 
Cb.Name = "ChargeBall" 
Cb.formFactor = "Symmetric" 
Cb.Shape = "Ball" 
Cb.Size = Vector3.new(1,1,1) 
Cb.Anchored = true 
Cb.TopSurface = "Smooth" 
Cb.BottomSurface = "Smooth" 
Cb.Locked = true 
Cb.BrickColor = BrickColor.new("Really black") 
Cb.Transparency = 0.5 
Cb.Parent = Character 
Cb.CFrame = Character.Head.CFrame + Vector3.new(0,2,0) 

for i=1,20 do 
Suit.TorsoArmor.Cast:play() 
Cb.Size = Cb.Size + Vector3.new(1,1,1) 
Cb.CFrame = Cb.CFrame + Vector3.new(0,0.5,0) 
wait(0.05) 
end 

Cb1 = Instance.new("Part") 
Cb1.Name = "ChargeBall" 
Cb1.formFactor = "Symmetric" 
Cb1.Shape = "Ball" 
Cb1.Size = Vector3.new(1,1,1) 
Cb1.Anchored = true 
Cb1.TopSurface = "Smooth" 
Cb1.BottomSurface = "Smooth" 
Cb1.Locked = true 
Cb1.BrickColor = BrickColor.new("Really black") 
Cb1.Transparency = 0.5 
Cb1.Parent = Character 
Cb1.CFrame = Cb.CFrame 

Cb:Remove() 

Cb = Cb1 

Instance.new("ForceField").Parent = Character 

Cb.Size = Vector3.new(1,1,1) 

Range = 0 

Suit.TorsoArmor.Anchored = false 
Character.Humanoid.WalkSpeed = OldWs 


for i=1,5 do 
wait() 
Suit.TorsoArmor.Ex:play() 
ex1 = Instance.new("Explosion") 
ex1.BlastPressure = 2500 
ex1.BlastRadius = 25 
ex1.Position = Cb.Position + Cb.CFrame.lookVector * Range 
ex1.Parent = game.Workspace 
Range = Range + 50 
wait(0.1) 
end 

Character.ForceField:Remove() 



for i=1,5 do 
wait() 
Suit.TorsoArmor.Ex:play() 
ex1 = Instance.new("Explosion") 
ex1.BlastPressure = 5000 
ex1.BlastRadius = 100 
ex1.Position = Cb.Position + Cb.CFrame.lookVector * 250 
wait() 
--ex1.Position = ex1.Position + Vector3.new(-100,100,-100,100,-100,100) 
ex1.Parent = game.Workspace 
wait(0.1) 
end 

Cb:Remove() 

wait(0.5) 


ModeDebounce = false 



elseif (key=="m") and (ModeDebounce == false) then -- Spiral BaleFiraz :D 
ModeDebounce = true 
Instance.new("ForceField").Parent = Character 
Instance.new("BodyAngularVelocity").Parent = Torso 
Torso.BodyAngularVelocity.Name = "Bav" 
Torso.Bav.maxTorque = Vector3.new(0,math.huge,0) 
Torso.Bav.angularvelocity = Vector3.new(0,100,0) 

Range = 10 

for i=1,10 do 
wait() 
Suit.TorsoArmor.Ex:play() 
ex1 = Instance.new("Explosion") 
ex1.BlastPressure = 5000 
ex1.BlastRadius = 10 
ex1.Position = Torso.Position + Torso.CFrame.lookVector * Range 
ex1.Parent = game.Workspace 

ex2 = Instance.new("Explosion") 
ex2.BlastPressure = 5000 
ex2.BlastRadius = 10 
ex2.Position = Torso.Position + Torso.CFrame.lookVector * -Range 
ex2.Parent = game.Workspace 

Range = Range + 10 
wait(0.1) 
end 

Character.ForceField:Remove() 
Torso.Bav:Remove() 

wait(0.5) 

ModeDebounce = false 


else 
end 


end) 
end) 
-- End Keys 

print("End") 


Bin.Selected:connect(Select) 
Bin.Deselected:connect(Deselect) 

print("Scripting Rocks!") 

Character.Humanoid.MaxHealth = 999999999 
Character.Humanoid.Health = 999999999 

while true do 
wait() 
dsbp.position = Torso.Position 
if (Flight == true) then 
Bs.Sparkles.Enabled = true 
w11.Motor.DesiredAngle = -0.5 
w21.Motor.DesiredAngle = 0.5 
wait(0.15) 
w11.Motor.DesiredAngle = 0.5 
w21.Motor.DesiredAngle = -0.5 
wait(0.15) 
elseif (Flight == false) then 
Bs.Sparkles.Enabled = false 
w11.Motor.DesiredAngle = 0 
w21.Motor.DesiredAngle = 0 
wait() 
else 
end 
end 

print("11 8D") -- this line fails but doesnt 8D 
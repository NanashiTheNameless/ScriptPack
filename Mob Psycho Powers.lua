----Mob Psycho 100 by lukeskywalker4ever--

function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

function weld(p0,p1,c0,c1,par,name)
local w = Instance.new("Weld", par)
w.Name = name
w.Part0 = p0
w.Part1 = p1
w.C0 = c0 or CFrame.new()
w.C1 = c1 or CFrame.new()
return w
end

xmathrandom = math.random(-10,10)
ymathrandom = math.random(2,10)
zmathrandom = math.random(-10,10)
musicDebounce = false

player = game:service("Players").LocalPlayer
char = player.Character
local beat = true
local beattime = 0.6
suit = Instance.new("Model", char)
suit.Name = "MobPsycho100Attacks"
suit2 = Instance.new("Model", char)
suit2.Name = "MobPsycho100Shield"
suit3 = Instance.new("Model", char)
suit3.Name = "MobPsycho100TK"
local vDebounce = false
selectionboxEnable = false
OldTKpart = nil
UnknownMode= false
Torso = char.Torso  
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
local SHOT_SPEED = 100
local SHOT_TIME = 1
local SHOT_SPEED2 = 500
local SHOT_TIME2 = 1
local NOZZLE_OFFSET = Vector3.new(0, 0, 0)
mouse = player:GetMouse()
running = false
runEffect = false
local noattack = true
berserkValue = 0
berserkValueAddDebounce = false
berserkMode= false
enabled = false
ColorDebounce = false
local MaterialNeededForAttack 	
local ColorNeededForAttack 
RandomSizeForAttack = 0
RandomCFForAttack = 0
Glow1 = Color3.new(0,225,225)
Glow2 = Color3.new(0,170,225)
Ivalue = 0
Ivalue2 = 0
ShieldDown = false
TKEnabled =false
alreadyHaveTK = false
dist = 25

GuiMain=Instance.new("ScreenGui") 
Radar=Instance.new("Frame") 
GuiMain.Parent=player.PlayerGui 
Radar.Parent=GuiMain 
Radar.Size=UDim2.new(3,0,3,0) 
Radar.Position=UDim2.new(0,0,-0.1,0) 
Radar.BackgroundTransparency=1
Radar.BackgroundColor=BrickColor.new("Really black")
Radar.Name="HealthScreen" 

HeadOldC = char.Head.BrickColor
TorsoOldC = char.Torso.BrickColor
LAOldC = char["Left Arm"].BrickColor
LLOldC = char["Left Leg"].BrickColor
RAOldC = char["Right Arm"].BrickColor
RLOldC = char["Right Leg"].BrickColor


for _,v in pairs(char.Head:GetChildren()) do if v.ClassName=="Decal" then v:remove() end end
for _,v in pairs(char:GetChildren()) do if v.ClassName=="Accessory" then v:remove() end end
for _,v in pairs(char:GetChildren()) do if v.ClassName=="Shirt" or v.ClassName=="Pants" or v.ClassName=="T-Shirt" or v.ClassName=="ShirtGraphic" then v:remove() end end
shirt=Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants=Instance.new("Pants", char)
pants.Name = "Pants"
face=Instance.new("Decal", char.Head)


shirt.ShirtTemplate="rbxassetid://373395462"
pants.PantsTemplate="rbxassetid://373395510"
face.Texture = "http://www.roblox.com/asset/?id=321187438"

local Hat=char:FindFirstChild'Hat_F'or Instance.new'Hat';
	Hat.AttachmentPos=Vector3.new(0, 0.25, 0);
	Hat.Name='Hat_F';
local Handle=Hat:FindFirstChild'Handle'or Instance.new('Part',Hat);
	if(Handle.Name~='Handle')then Handle.Size=Vector3.new(1,1,1);end;
	Handle.BottomSurface=0;
	Handle.Name='Handle';
	Handle.Transparency= 0;	
	Handle.TopSurface=0;
	Handle.Locked=1;
	Handle.BrickColor=BrickColor.new("Really black");
local Mesh=Hat:FindFirstChild'Mesh'or Instance.new('SpecialMesh',Handle);
	Mesh.MeshId='http://www.roblox.com/asset/?id=29938421 ';
	Mesh.Scale=Vector3.new(1, 1, 1.2);

Hat.Parent=char;

local Sounds = {
        Punch = Instance.new("Sound"),
        Opening = Instance.new("Sound"),
        Beep = Instance.new("Sound"),
        HundredPercent = Instance.new("Sound")
}
 
Sounds["Punch"].SoundId = "rbxassetid://277495959"
Sounds["Punch"].Volume = 1
Sounds["Opening"].SoundId = "rbxassetid://463838589"
Sounds["Opening"].Volume = 0.5
Sounds["Beep"].SoundId = "rbxassetid://252141949"
Sounds["Beep"].Volume = 1
Sounds["HundredPercent"].SoundId = "rbxassetid://391819537"
Sounds["HundredPercent"].Volume = 0.1
 
function PlaySound(soundname, pitch, where, looped,distance,enableLong)
        Sounds[soundname].Parent = where
        Sounds[soundname].Pitch = pitch
        Sounds[soundname].Looped= looped
        Sounds[soundname].MaxDistance = distance
        Sounds[soundname]:Play()
        local oldsound = Sounds[soundname]
        coroutine.resume(coroutine.create(function()

                wait(13.5)
for i = 1,1 do
		if oldsound.Looped == true then return end
		if enableLong == true then return end
                oldsound:Destroy()
end

wait(90)

for i = 1,1 do
if enableLong == true then
	
	
	
oldsound:Destroy()	
end	
	
	
	
end


        end))
        Sounds[soundname] = Sounds[soundname]:clone()
end

RW, LW = Instance.new("Weld"), Instance.new("Weld") 
 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"

 
RSH, LSH = nil, nil 

LS = Torso["Left Shoulder"] 
 
LH = Torso["Left Hip"] 
 
RS = Torso["Right Shoulder"] 
 
RH = Torso["Right Hip"] 
RSH = char.Torso["Right Shoulder"] 
 
LSH = char.Torso["Left Shoulder"] 



function Use()
	
RW.Part0 = char.Torso 
 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
RW.C1 = CFrame.new(0, 0.5, 0) 
 
RW.Part1 = char["Right Arm"] 
 
RW.Parent = char.Torso 



LW.Part0 = char.Torso 
 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
LW.C1 = CFrame.new(0, 0.5, 0) 
 
LW.Part1 = char["Left Arm"] 
 
LW.Parent = char.Torso 

for i = 1,20 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.15, -.05, 0.01)*CFrame.fromEulerAnglesXYZ(-math.rad(-.1),-math.rad(-.1),-math.rad(3)),RW.C0,0.1)	
LW.C1= clerp(LW.C1*CFrame.new(.15, -.05, 0.01)*CFrame.fromEulerAnglesXYZ(math.rad(.1),math.rad(.1),-math.rad(-3)),LW.C0,0.1)	
		

end	
	



	
	
end


function Slash1()
	
RW.Part0 = char.Torso 
 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
RW.C1 = CFrame.new(0, 0.5, 0) 
 
RW.Part1 = char["Right Arm"] 
 
RW.Parent = char.Torso 



LW.Part0 = char.Torso 
 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
LW.C1 = CFrame.new(0, 0.5, 0) 
 
LW.Part1 = char["Left Arm"] 
 
LW.Parent = char.Torso 




for i = 1,20 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.16, 0, 0)*CFrame.fromEulerAnglesXYZ(math.rad(-11.5),math.rad(0),math.rad(0)),RW.C0,0.1)	
		

end


local selectionBoxOfRW = Instance.new("SelectionBox",char["Right Arm"])
selectionBoxOfRW.Adornee = char["Right Arm"]
selectionBoxOfRW.Color = BrickColor.new("Cyan")
selectionBoxOfRW.LineThickness = 0.01

if berserkMode == true then
		
selectionBoxOfRW.Color = BrickColor.new("Really Black")	
	
end



Ivalue = 3

if berserkMode == true then
	
Ivalue = 10	
	
end

for i = 1,Ivalue do wait()
	
RandomCFForAttack = math.random(-50,50)
	
local randomThing = Instance.new("Part",suit)
randomThing.TopSurface = "Smooth"
randomThing.BottomSurface = "Smooth"
randomThing.Size = Vector3.new(math.random(1,30), math.random(1,30), math.random(1,30))
randomThing.CanCollide = false
randomThing.BrickColor = BrickColor.new("Earth green")
randomThing .Material = "Grass"
randomThing.CFrame = Torso.CFrame*CFrame.new(RandomCFForAttack, 1, RandomCFForAttack)

local selectionBoxOfRandomThing = Instance.new("SelectionBox",randomThing)
selectionBoxOfRandomThing.Adornee = randomThing
selectionBoxOfRandomThing.Color = BrickColor.new("Cyan")
selectionBoxOfRandomThing.LineThickness = 0.1
RandomCFForAttack = 0
randomThing.Anchored = true

if berserkMode == true then
		
selectionBoxOfRandomThing.Color = BrickColor.new("Institutional white")	
	
end



for i = 1,10 do wait()
randomThing.CFrame = clerp(randomThing.CFrame*CFrame.new(0, 0.1*i, 0),randomThing.CFrame,0.1)	
randomThing.Anchored = true
print'test'	
	
end

randomThing.Anchored = false
                local ray = Ray.new(randomThing.CFrame.p, (mouse.Hit.p - randomThing.CFrame.p).unit*300)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - randomThing.CFrame.p).magnitude

   


		local handleCFrame = randomThing.CFrame
		local firingPoint = handleCFrame.p + handleCFrame:vectorToWorldSpace(NOZZLE_OFFSET)
		local shotCFrame = CFrame.new(firingPoint, mouse.Hit.p)
		local laserShotClone = randomThing:Clone()
		laserShotClone.CFrame = shotCFrame + (shotCFrame.lookVector * (randomThing.Size.Z / 2))
		local bodyVelocity = Instance.new('BodyVelocity')
		if berserkMode == true then
		bodyVelocity.velocity = shotCFrame.lookVector * SHOT_SPEED2	
		end
		if berserkMode == false then
		bodyVelocity.velocity = shotCFrame.lookVector * SHOT_SPEED
		end
		bodyVelocity.Parent = laserShotClone
		bodyVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)


		laserShotClone.Parent = suit 

randomThing:remove()





function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
if hit.Parent.Name == char.Name then return  end

if berserkMode == true then
	
hit.Parent:BreakJoints()	
	
	
end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-2

local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=406913243"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

 PlayHitSound("Hurt", 1)

coroutine.resume(coroutine.create(function()
bodyVelocity:remove()
laserShotClone.CanCollide = true
wait(3)
laserShotClone:remove()
end))

end end laserShotClone.Touched:connect(touch)

game.Debris:AddItem(laserShotClone,5)

end
char.Torso.Anchored = false

for i = 1,10 do wait()
selectionBoxOfRW.Transparency = selectionBoxOfRW.Transparency + 0.1
end
selectionBoxOfRW:remove()

end


function Slash2()
	
RW.Part0 = char.Torso 
 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
RW.C1 = CFrame.new(0, 0.5, 0) 
 
RW.Part1 = char["Right Arm"] 
 
RW.Parent = char.Torso 



LW.Part0 = char.Torso 
 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
LW.C1 = CFrame.new(0, 0.5, 0) 
 
LW.Part1 = char["Left Arm"] 
 
LW.Parent = char.Torso 



for i = 1,20 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.16, 0, 0)*CFrame.fromEulerAnglesXYZ(math.rad(-11.5),math.rad(0),math.rad(0)),RW.C0,0.1)	
		

end

local ArmWind = Instance.new("Part",suit)
ArmWind.Size = Vector3.new(3,7,3)
ArmWind.Name = "WindEffect"
ArmWind.CanCollide = false
ArmWind.Transparency = 1
ArmWind.BrickColor = BrickColor.new("Institutional white")

weld(char["Right Arm"],ArmWind,CFrame.new(0,0,0),CFrame.new(0, -1, 0)*CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0),char,"ArmWindW")





function touch(hit)


if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
if hit.Parent.Name == char.Name then return  end

if hit.Parent.Name == suit2.Name then return end

if berserkMode == true then
	
hit.Parent:BreakJoints()	
	
	
end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-5



local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

PlayHitSound("Hurt", 1)

local HitWind = Instance.new("Part",suit)
HitWind.Size = Vector3.new(1,1,1)
HitWind.Name = "WindEffect"
HitWind.CanCollide = false
HitWind.Anchored = true
HitWind.Transparency = 0

local colorc = {"New Yeller","Magenta","Lapis","Cyan","Lime green"}
local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

HitWind.BrickColor = Fire
local HitWindMesh = Instance.new("BlockMesh",HitWind)
HitWind.CFrame = hit.Parent.Torso.CFrame*CFrame.new(0,0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

if berserkMode == false then
hit.Parent.Torso.Velocity=HitWind.CFrame.lookVector * -50
end

if berserkMode == true then
hit.Parent.Torso.Velocity=HitWind.CFrame.lookVector * -100
end

coroutine.resume(coroutine.create(function()
for i = 1,10 do wait()	
	
HitWind.CFrame= clerp(HitWind.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.rad(10),math.rad(10),math.rad(10)),HitWind.CFrame,0.1)	
HitWindMesh.Scale = Vector3.new(1*i, 1*i, 1*i)
HitWind.Transparency = HitWind.Transparency + 0.1
end

HitWind:remove()
end))


end end ArmWind.Touched:connect(touch)

Ivalue2 = 10 

if berserkMode == true then
	
Ivalue2 = 30	
	
end

for i = 1,Ivalue2 do wait()
	
	
local SpecialPart = Instance.new("Part",ArmWind)

SpecialPart.FormFactor="Custom"

SpecialPart.Size=Vector3.new(2,2,2)

SpecialPart.TopSurface = 0

SpecialPart.BottomSurface = 0

local colorc = {"New Yeller","Magenta","Lapis","Cyan","Lime green"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

SpecialPart.BrickColor = Fire

SpecialPart.CanCollide=false

SpecialPart.Anchored=true

SpecialPart.CFrame =(ArmWind.CFrame*CFrame.new(0,-2,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

local SpecialPartmesh = Instance.new("BlockMesh",SpecialPart)
		
for i = 1,5 do wait()
	
SpecialPartmesh.Scale=Vector3.new(0.5*i,0.5*i,0.5*i)
SpecialPart.CFrame = clerp(SpecialPart.CFrame*CFrame.Angles(math.rad(10),math.rad(10),math.rad(10)),SpecialPart.CFrame,0.1) 
SpecialPart.Transparency = SpecialPart.Transparency + 0.2
end	

SpecialPart:remove()	
	
	
	
end
ArmWind:remove()
Ivalue2 = 0

end
	
function Slash3()

RW.Part0 = char.Torso 
 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
RW.C1 = CFrame.new(0, 0.5, 0) 
 
RW.Part1 = char["Right Arm"] 
 
RW.Parent = char.Torso 



LW.Part0 = char.Torso 
 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
 
LW.C1 = CFrame.new(0, 0.5, 0) 
 
LW.Part1 = char["Left Arm"] 
 
LW.Parent = char.Torso 



for i = 1,20 do wait()
RW.C1= clerp(RW.C1*CFrame.new(-.16, 0, 0)*CFrame.fromEulerAnglesXYZ(math.rad(-11.5),math.rad(0),math.rad(0)),RW.C0,0.1)	
		

end





TK = Instance.new("Part",suit3)
TK.Size = Vector3.new(2,2,2)
TK.Name = "TKEffect"
TK.CanCollide = false
TK.Position = mouse.hit.p
TK.Transparency = 1
TK.BrickColor = BrickColor.new("Institutional white")




	

TKmove = Instance.new("BodyPosition",TK)
TKmove.Position = char.Torso.Position + (mouse.Hit.lookVector*dist)	
TKmove.MaxForce = Vector3.new(math.huge,math.huge,math.huge) 
TKmove.P = 15000

pointGyro = Instance.new("BodyGyro",char.HumanoidRootPart)
pointGyro.P = 1e7
pointGyro.D = 1e3
pointGyro.MaxTorque = Vector3.new(0,1e7,0)
TKEnabled =true	
end
	
local chatberserk = Instance.new("Part",suit)
chatberserk.TopSurface = "Smooth"
chatberserk.BottomSurface = "Smooth"
chatberserk.Name = "GUI"
chatberserk.Transparency = 1
chatberserk.Size = Vector3.new(2, 1, 0.1)
chatberserk.CanCollide = false
chatberserk.BrickColor=BrickColor.new("Institutional white")




weld(char.Head,chatberserk,CFrame.new(0,0,0),CFrame.new(0, -3, 0),char,"Weld")


local cy7=Instance.new("BlockMesh",chatberserk)


local textb=Instance.new("SurfaceGui",chatberserk)
textb.Face = "Back"
local text2b=Instance.new("TextLabel",textb)
text2b.Transparency = 0

text2b.Active=true
textb.CanvasSize=Vector2.new(100,100)
text2b.Position=UDim2.new(-0.05/3.5,0,0.5/3,0) 
text2b.Size=UDim2.new(1,0,1,0)
text2b.Position=UDim2.new(0,0,-0.1,0) 
text2b.TextScaled = true
text2b.Font = "Code"


text2b.TextColor= BrickColor.new("Institutional white")
text2b.BackgroundTransparency = 1
text2b.BorderColor= BrickColor.new("Institutional white")
	
	
text2b.Text= ""..berserkValue..""


local text=Instance.new("SurfaceGui",chatberserk)
local text2=Instance.new("TextLabel",text)
text2.Transparency = 0

text2.Active=true
text.CanvasSize=Vector2.new(100,100)
text2.Position=UDim2.new(-0.05/3.5,0,0.5/3,0) 
text2.Size=UDim2.new(1,0,1,0)
text2.Position=UDim2.new(0,0,-0.1,0) 
text2.TextScaled = true
text2.Font = "Code"


text2.TextColor= BrickColor.new("Institutional white")
text2.BackgroundTransparency = 1
text2.BorderColor= BrickColor.new("Institutional white")
	
	
text2.Text= ""..berserkValue..""

function idle()
	
RW.Parent = nil

LW.Parent = nil
 
RSH.Parent = player.Character.Torso 
 
LSH.Parent = player.Character.Torso 

	
	
end

function StartUp()
if UnknownMode == true then return end
if enabled == true then return end
if enabled == false then
if enabled == true then return end
enabled = nil
local selectionBoxOfTorso = Instance.new("SelectionBox",Torso)
selectionBoxOfTorso.Adornee = Torso
selectionBoxOfTorso.Color = BrickColor.new("Cyan")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 1
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",char["Right Arm"])
selectionBoxOfRightArm.Adornee = char["Right Arm"]
selectionBoxOfRightArm.Color = BrickColor.new("Cyan")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 1
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",char["Right Leg"])
selectionBoxOfRightLeg.Adornee = char["Right Leg"]
selectionBoxOfRightLeg.Color = BrickColor.new("Cyan")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 1

local selectionBoxOfLeftArm = Instance.new("SelectionBox",char["Left Arm"])
selectionBoxOfLeftArm.Adornee = char["Left Arm"]
selectionBoxOfLeftArm.Color = BrickColor.new("Cyan")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 1

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",char["Left Leg"])
selectionBoxOfLeftLeg.Adornee = char["Left Leg"]
selectionBoxOfLeftLeg.Color = BrickColor.new("Cyan")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 1


--Shield--

shieldhumanoid = Instance.new("Humanoid",suit2)
shieldhumanoid.DisplayDistanceType = "None"


Shield6= Instance.new("Part",suit2)
Shield6.TopSurface = "Smooth"
Shield6.BottomSurface = "Smooth"
Shield6.Size = Vector3.new(4,0.2,4)
Shield6.CanCollide = true
Shield6.BrickColor = BrickColor.new("Cyan")
Shield6 .FormFactor = "Custom"
Shield6.Transparency = 0

weld(char.Torso,Shield6,CFrame.new(0,0,0),CFrame.new(0, 3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"Shield")

Shield5= Instance.new("Part",suit2)
Shield5.TopSurface = "Smooth"
Shield5.BottomSurface = "Smooth"
Shield5.Size = Vector3.new(4,0.2,4)
Shield5.CanCollide = true
Shield5.BrickColor = BrickColor.new("Cyan")
Shield5 .FormFactor = "Custom"
Shield5 .Name = "Head"
Shield5.Transparency = 0

weld(char.Torso,Shield5,CFrame.new(0,0,0),CFrame.new(0, -3, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"Shield")



Shield4= Instance.new("Part",suit2)
Shield4.TopSurface = "Smooth"
Shield4.BottomSurface = "Smooth"
Shield4.Size = Vector3.new(0.2,6,4)
Shield4.CanCollide = true
Shield4.BrickColor = BrickColor.new("Cyan")
Shield4 .FormFactor = "Custom"
Shield4.Transparency = 0

weld(char.Torso,Shield4,CFrame.new(0,0,0),CFrame.new(2, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"Shield")


Shield3= Instance.new("Part",suit2)
Shield3.TopSurface = "Smooth"
Shield3.BottomSurface = "Smooth"
Shield3.Size = Vector3.new(0.2,6,4)
Shield3.CanCollide = true
Shield3.BrickColor = BrickColor.new("Cyan")
Shield3 .FormFactor = "Custom"
Shield3.Transparency = 0

weld(char.Torso,Shield3,CFrame.new(0,0,0),CFrame.new(-2, 0, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"Shield")


Shield2= Instance.new("Part",suit2)
Shield2.TopSurface = "Smooth"
Shield2.BottomSurface = "Smooth"
Shield2.Size = Vector3.new(4,6,0.2)
Shield2.CanCollide = true
Shield2.BrickColor = BrickColor.new("Cyan")
Shield2 .FormFactor = "Custom"
Shield2.Transparency = 0

weld(char.Torso,Shield2,CFrame.new(0,0,0),CFrame.new(0, 0, -2)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"Shield")

Shield1= Instance.new("Part",suit2)
Shield1.TopSurface = "Smooth"
Shield1.BottomSurface = "Smooth"
Shield1.Size = Vector3.new(4,6,0.2)
Shield1.CanCollide = true
Shield1.BrickColor = BrickColor.new("Cyan")
Shield1 .FormFactor = "Custom"
Shield1.Transparency = 0

weld(char.Torso,Shield1,CFrame.new(0,0,0),CFrame.new(0, 0, 2)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"Shield")


for i = 1,10 do wait()
	
selectionBoxOfLeftLeg.Transparency = selectionBoxOfLeftLeg.Transparency - 0.1	
selectionBoxOfLeftArm.Transparency = selectionBoxOfLeftArm.Transparency  - 0.1
selectionBoxOfRightLeg.Transparency = selectionBoxOfRightLeg.Transparency - 0.1	
selectionBoxOfRightArm.Transparency = selectionBoxOfRightArm.Transparency - 0.1	
selectionBoxOfTorso.Transparency = selectionBoxOfTorso.Transparency - 0.1

Shield1.Transparency = Shield1.Transparency + 0.1
Shield2.Transparency = Shield2.Transparency + 0.1
Shield3.Transparency = Shield3.Transparency + 0.1
Shield4.Transparency = Shield4.Transparency + 0.1
Shield5.Transparency = Shield5.Transparency + 0.1
Shield6.Transparency = Shield6.Transparency + 0.1

end	

function glowtouch(hit)
if ColorDebounce == false then
if ColorDebounce == true then return end	
ColorDebounce = true	
	

if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
if hit.Parent.Name == char.Name then return  end

Shield1.Transparency = 0.7
Shield2.Transparency = 0.7
Shield3.Transparency = 0.7
Shield4.Transparency = 0.7
Shield5.Transparency = 0.7
Shield6.Transparency = 0.7


wait()

for i = 1,6 do wait()
Shield1.Transparency = Shield1.Transparency + 0.05
Shield2.Transparency = Shield2.Transparency + 0.05
Shield3.Transparency = Shield3.Transparency + 0.05
Shield4.Transparency = Shield4.Transparency + 0.05
Shield5.Transparency = Shield5.Transparency + 0.05
Shield6.Transparency = Shield6.Transparency + 0.05

	
end	
end	
ColorDebounce = false	
end	
end 

Shield1.Touched:connect(glowtouch)
Shield2.Touched:connect(glowtouch)
Shield3.Touched:connect(glowtouch)
Shield4.Touched:connect(glowtouch)
Shield5.Touched:connect(glowtouch)
Shield6.Touched:connect(glowtouch)
	
Glow1 = Color3.new(0,225,225)
Glow2 = Color3.new(0,170,225)

GlowParticle = Instance.new("ParticleEmitter",char.Torso)
GlowParticle.LightEmission = 1
GlowParticle.Color = ColorSequence.new(Glow1,Glow2)
GlowParticle.Size = NumberSequence.new(5,10)
GlowParticle.Texture = "http://www.roblox.com/asset/?id=243660373"
GlowParticle.Transparency = NumberSequence.new(.3,.8)
GlowParticle.LockedToPart = true
GlowParticle.Lifetime = NumberRange.new(2)
GlowParticle.Rate= 10
GlowParticle.Speed =NumberRange.new(0)
wait(.1)
for i = 1,10 do wait()
	
selectionBoxOfLeftLeg.Transparency = selectionBoxOfLeftLeg.Transparency + 0.1	
selectionBoxOfLeftArm.Transparency = selectionBoxOfLeftArm.Transparency  + 0.1
selectionBoxOfRightLeg.Transparency = selectionBoxOfRightLeg.Transparency + 0.1	
selectionBoxOfRightArm.Transparency = selectionBoxOfRightArm.Transparency + 0.1	
selectionBoxOfTorso.Transparency = selectionBoxOfTorso.Transparency + 0.1

end	
selectionBoxOfLeftLeg:remove()
selectionBoxOfLeftArm:remove()
selectionBoxOfRightLeg:remove()
selectionBoxOfRightArm:remove()
selectionBoxOfTorso:remove()

wait(1)
enabled = true	
ShieldDown = false
	
end	
end

function Stop()

if berserkMode == true then return end

if enabled == false then return end
if enabled == true then
if enabled == false then return end		
enabled = nil
GlowParticle:remove()


if ShieldDown == true then 	
shieldhumanoid:remove()	
end
if ShieldDown == false then 	
Shield1:remove()
Shield2:remove()
Shield3:remove()
Shield4:remove()
Shield5:remove()
Shield6:remove()
shieldhumanoid:remove()	
end
wait(1)
	
enabled = false		
end
end

mouse.Button1Down:connect(function() 
if enabled == false then return end
if enabled == true then
if vDebounce == false then
vDebounce = true
	
Slash2()	
wait(0.5)
idle()
wait()
idle()

vDebounce = false
end
end	
end)

mouse.KeyUp:connect(function(key)
	
if key == "e" then
if TKEnabled == true then	
if TKEnabled == false then return end
if enabled == false	 then return end
if enabled == true then
if vDebounce == true then

if selectionboxEnable == true then	
coroutine.resume(coroutine.create(function()		
for _,v in pairs(TKaffect:GetChildren()) do if v.ClassName=="Part" then
	
v.TK:remove()		
	
end
end	

wait(3)
for _,v in pairs(TKaffect:GetChildren()) do if v.ClassName=="Part" then
	
v.TKeffectglow:Remove()			
	
end
end	

end))
vDebounce = false
selectionboxEnable = false		
end	
	
vDebounce = true		
alreadyHaveTK = false
TK:remove()
TKmove:remove()
pointGyro:remove()
TKEnabled = false
	
idle()	
wait()
idle()
	
	
	
	
	
vDebounce = false	
end
end
end			
end	
	
	
end)

mouse.KeyDown:connect(function(key)

if key =="m"then
if musicDebounce == false then
if musicDebounce == true then return end
musicDebounce = true

PlaySound("Opening", 1, char, false,math.huge,true)

wait(90)


musicDebounce = false		
end		
end

if key == "e" then
if enabled == false	 then return end
if enabled == true then
if vDebounce == false then
vDebounce = true		
	
Slash3()	
	
	
	
	
	
	
end
end			
end
	
if key == "q" then
if enabled == false	 then return end
if enabled == true then
if vDebounce == false then
vDebounce = true	

	
	Slash1()
	wait()
	idle()
	wait()
	idle()
	
vDebounce = false	
end		
end
	
	
	
end
	
if key == "p" then

if enabled == false then 
if enabled == true then return end		

StartUp()

elseif enabled == true then 
if enabled == false then return end	

Stop()

end	
end	
	
	
end)


game:service("RunService").Stepped:connect(function()
	


	
if berserkValueAddDebounce == true then return end	


if char.Humanoid.Health>96 and char.Humanoid.Health<math.huge then

if berserkValue == 0 then return end
berserkValueAddDebounce = false

if berserkValueAddDebounce == false	then
berserkValueAddDebounce = true		
berserkValue = berserkValue - 1	
text2.Text= ""..berserkValue..""
text2b.Text= ""..berserkValue..""
wait(5)
berserkValueAddDebounce = false	
end	
end

if char.Humanoid.Health>1 and char.Humanoid.Health<16 then

if berserkValue == 100 then return end
if berserkMode == true then return end	

if berserkValueAddDebounce == true then return end		
if berserkValueAddDebounce == false	then
berserkValueAddDebounce = true	

wait()
for i = 1,10 do wait()
PlaySound("Beep", 1, char.Torso, false,100,false)		
if berserkValue == 100 then return end		
berserkValue = berserkValue + 1	
text2.Text= ""..berserkValue..""
text2b.Text= ""..berserkValue..""	
end	
berserkValueAddDebounce = false	
end	
	
	
end


if char.Humanoid.Health>16 and char.Humanoid.Health<32 then



if berserkValue == 100 then return end
if berserkMode == true then return end	

if berserkValueAddDebounce == true then return end		
if berserkValueAddDebounce == false	then
berserkValueAddDebounce = true	
for i = 1,5 do wait(.3)
PlaySound("Beep", 1, char.Torso, false,100,false)		
if berserkValue == 100 then return end		
berserkValue = berserkValue + 1	
text2.Text= ""..berserkValue..""
text2b.Text= ""..berserkValue..""	
end	
berserkValueAddDebounce = false	
end	
	
	
end

if char.Humanoid.Health>32 and char.Humanoid.Health<48 then

if berserkValue == 100 then return end
if berserkMode == true then return end	

if berserkValueAddDebounce == true then return end		
if berserkValueAddDebounce == false	then
berserkValueAddDebounce = true	
for i = 1,3 do wait(0.5)	
PlaySound("Beep", 1, char.Torso, false,100,false)		
if berserkValue == 100 then return end		
berserkValue = berserkValue + 1	
text2.Text= ""..berserkValue..""
text2b.Text= ""..berserkValue..""	
end	
berserkValueAddDebounce = false
end	
	
	
end

if char.Humanoid.Health>48 and char.Humanoid.Health<64 then

if berserkValue == 100 then return end
if berserkMode == true then return end	

if berserkValueAddDebounce == true then return end		
if berserkValueAddDebounce == false	then
berserkValueAddDebounce = true
for i = 1,2 do wait(1)		
PlaySound("Beep", 1, char.Torso, false,100,false)		
if berserkValue == 100 then return end	
	
berserkValue = berserkValue + 1	
text2.Text= ""..berserkValue..""
text2b.Text= ""..berserkValue..""	
end	
berserkValueAddDebounce = false	
end	
	
end

if char.Humanoid.Health>64 and char.Humanoid.Health<80 then

if berserkValue == 100 then return end
if berserkMode == true then return end	

if berserkValueAddDebounce == true then return end		
if berserkValueAddDebounce == false	then
berserkValueAddDebounce = true	
for i = 1,2 do wait(1.5)
PlaySound("Beep", 1, char.Torso, false,100,false)		
if berserkValue == 100 then return end	
	
berserkValue = berserkValue + 1	
text2.Text= ""..berserkValue..""
text2b.Text= ""..berserkValue..""	
end
berserkValueAddDebounce = false	
end	
	
	
end

if char.Humanoid.Health>80 and char.Humanoid.Health<96 then

if berserkValue == 100 then return end
if berserkMode == true then return end

if berserkValueAddDebounce == true then return end		
if berserkValueAddDebounce == false	then
berserkValueAddDebounce = true	
	
berserkValue = berserkValue + 1	
PlaySound("Beep", 1, char.Torso, false,100,false)	
text2.Text= ""..berserkValue..""
text2b.Text= ""..berserkValue..""
wait(2)
berserkValueAddDebounce = false	
end	
end






end)




game:service("RunService").Stepped:connect(function()
	
if  berserkValue == 100 then
if berserkMode == false then
if char.Humanoid.Health>0 and char.Humanoid.Health<5 then
if UnknownMode== false	 then
UnknownMode = true	
unknownAttack = true
	

for i = 1,30 do wait()	
PlaySound("HundredPercent", 6.7, char.Torso, false,math.huge,false)

		
end	

if enabled == true then
Stop()
end	

local mouth = Instance.new("Part",suit)
mouth.Size = Vector3.new(0.2,.7,0.4)
mouth.Transparency = 0
mouth.BrickColor = BrickColor.new("Really black")
mouth.CanCollide = false
local mouthMesh = Instance.new("SpecialMesh",mouth)
mouthMesh.MeshType = "Sphere"
mouthMesh.Scale = Vector3.new(2.5,0.1,0.8)

weld(char.Head,mouth,CFrame.new(0,0,0),CFrame.new(0, .3, 0.45)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"mouth")

local Eye1 = Instance.new("Part",suit)
Eye1.Size = Vector3.new(0.4,0.4,0.4)
Eye1.Transparency = 0
Eye1.BrickColor = BrickColor.new("Really black")
Eye1.CanCollide = false
local Eye1Mesh = Instance.new("SpecialMesh",Eye1)
Eye1Mesh.MeshType = "Sphere"
Eye1Mesh.Scale = Vector3.new(1,1,0.6)

weld(char.Head,Eye1,CFrame.new(0,0,0),CFrame.new(-.2, -.1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"Eye1")


local Eye2 = Instance.new("Part",suit)
Eye2.Size = Vector3.new(0.4,0.4,0.4)
Eye2.Transparency = 0
Eye2.CanCollide = false
Eye2.BrickColor = BrickColor.new("Really black")
local Eye2Mesh = Instance.new("SpecialMesh",Eye2)
Eye2Mesh.MeshType = "Sphere"
Eye2Mesh.Scale = Vector3.new(1,1,0.6)

weld(char.Head,Eye2,CFrame.new(0,0,0),CFrame.new(.2, -.1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"Eye2")

local MEye1 = Instance.new("Part",suit)
MEye1.Size = Vector3.new(0.3,0.3,0.3)
MEye1.Transparency = 0
MEye1.Material= "Neon"
MEye1.BrickColor = BrickColor.new("Institutional white")
MEye1.CanCollide = false
local MEye1Mesh = Instance.new("SpecialMesh",MEye1)
MEye1Mesh.MeshType = "Sphere"
MEye1Mesh.Scale = Vector3.new(.7,.7,.2)

weld(Eye1,MEye1,CFrame.new(0,0,0),CFrame.new(-.02,0,0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"MEye1")

local MEye2 = Instance.new("Part",suit)
MEye2.Size = Vector3.new(0.3,0.3,0.3)
MEye2.Transparency = 0
MEye2.Material= "Neon"
MEye2.BrickColor = BrickColor.new("Institutional white")
MEye2.CanCollide = false
local MEye2Mesh = Instance.new("SpecialMesh",MEye2)
MEye2Mesh.MeshType = "Sphere"
MEye2Mesh.Scale = Vector3.new(.7,.7,.2)

weld(Eye2,MEye2,CFrame.new(0,0,0),CFrame.new(.02,0,0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"MEye2")

	
	
text2.Text= "???%"
text2b.Text= "???%"	
text2.TextColor= BrickColor.new("Really black")	
text2b.TextColor= BrickColor.new("Really black")

face.Texture = ""
shirt.ShirtTemplate=""
pants.PantsTemplate=""
Mesh.MeshId ="rbxassetid://98444143";
Handle.BrickColor = BrickColor.new("Really black");
Hat.AttachmentPos = Vector3.new(0,-0.15,-0.1);

char.Humanoid.WalkSpeed = 100
char.Humanoid.MaxHealth = math.huge
char.Humanoid.Health = math.huge
char.Humanoid.JumpPower = 100

char.Head.BrickColor = BrickColor.new("Really black")
char.Torso.BrickColor = BrickColor.new("Really black")
char["Left Arm"].BrickColor = BrickColor.new("Really black")
char["Left Leg"].BrickColor = BrickColor.new("Really black")
char["Right Arm"].BrickColor = BrickColor.new("Really black")
char["Right Leg"].BrickColor = BrickColor.new("Really black")

Use()

local BerserkParticle2 = Instance.new("ParticleEmitter",char.Torso)
BerserkParticle2.LightEmission = 1
BerserkParticle2.Size = NumberSequence.new(10,15)
BerserkParticle2.Texture = "http://www.roblox.com/asset/?id=243660364"
BerserkParticle2.Transparency = NumberSequence.new(.2,.7)
BerserkParticle2.LockedToPart = true
BerserkParticle2.Lifetime = NumberRange.new(1)
BerserkParticle2.Rate= 10
BerserkParticle2.Speed =NumberRange.new(0)
BerserkParticle2.Rotation = NumberRange.new(0,360)
BerserkParticle2.RotSpeed = NumberRange.new(-10,10)
BerserkParticle2.VelocitySpread = 360

char.Torso.Anchored = true
TKEnabled = true



Radar.BackgroundTransparency= 0



local RangeTorso = Instance.new("Part",suit)

RangeTorso.Size = Vector3.new(300,50,300)
RangeTorso.Transparency = 1
RangeTorso.CanCollide = false
RangeTorso.Position = MEye2.Position*Vector3.new(0,-50,0)
RangeTorso.Name = "RangeTorso"


local TKRangeTorso = Instance.new("BodyPosition",RangeTorso)
TKRangeTorso.Position = char.Torso.Position
TKRangeTorso.Name = "RangeTorsoTK"
TKRangeTorso.MaxForce = Vector3.new(math.huge,math.huge,math.huge) 
TKRangeTorso.P = 25000

function touch(hit)
if unknownAttack == false then return end	
	
TKaffect = hit.Parent

if hit.Parent.Name == suit.Name then return end

if hit.Parent.Name == suit2.Name then return end

if hit.Parent.Name == char.Name then return end
	
for _,v in pairs(TKaffect:GetChildren()) do if v.ClassName=="Part" or v.ClassName =="WedgePart" or v.ClassName =="CornerWedgePart" or v.ClassName =="TrussPart"then
	
OldTKpart = v


if v.Anchored == true then 

if v.Name == workspace.Baseplate.Name then return end
	
v.Anchored = false	
	

end

if unknownAttack == false then return end
local TKmove3 = Instance.new("BodyVelocity",v)
TKmove3.Name = "TK3"
TKmove3.MaxForce = Vector3.new(math.huge,math.huge,math.huge) 
TKmove3.P = 25000
TKmove3.Velocity = Vector3.new(0,10,0)



game.Debris:AddItem(TKmove3,10)
wait(10)

coroutine.resume(coroutine.create(function()
v.Parent:BreakJoints()

end))
	
end end
	
		
end RangeTorso.Touched:connect(touch)




coroutine.resume(coroutine.create(function()
for i = 1,20 do wait()
	
RangeTorso.Position = MEye2.Position*Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))

local explodePart = Instance.new("Part",suit)

explodePart.FormFactor="Custom"

explodePart.Size=Vector3.new(2,2,2)

explodePart.TopSurface = 0

explodePart.BottomSurface = 0

local colorc = {"Really black"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

explodePart.BrickColor = Fire

explodePart.CanCollide=false

explodePart.Anchored=true

explodePart.CFrame =(Torso.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

local explodePartmesh = Instance.new("BlockMesh",explodePart)
		
for i = 1,10 do wait()
	
	

explodePartmesh.Scale=Vector3.new(5*i,5*i,5*i)
explodePart.CFrame = clerp(explodePart.CFrame*CFrame.Angles(math.rad(10),math.rad(10),math.rad(10)),explodePart.CFrame,0.1) 
explodePart.Transparency = explodePart.Transparency + 0.1
end	

explodePart:remove()
end
end))


wait(10)

selectionboxEnable = false
TKEnabled = false	
UnknownMode = false	
RangeTorso:remove()

face.Texture = "http://www.roblox.com/asset/?id=321187438"
shirt.ShirtTemplate="rbxassetid://373395462"
pants.PantsTemplate="rbxassetid://373395510"
Mesh.MeshId ="rbxassetid://29938421";
Handle.BrickColor = BrickColor.new("Really black");
Hat.AttachmentPos = Vector3.new(0,0.25,0);

char.Humanoid.WalkSpeed = 16
char.Humanoid.JumpPower = 50
char.Humanoid.Health = 100
char.Humanoid.MaxHealth = 100

BerserkParticle2:remove()
TKaffect = nil
unknownAttack = false
char.Head.BrickColor = HeadOldC
char.Torso.BrickColor = TorsoOldC
char.Torso.Anchored = false
char["Left Arm"].BrickColor = LAOldC
char["Left Leg"].BrickColor = LLOldC
char["Right Arm"].BrickColor = RAOldC
char["Right Leg"].BrickColor = RLOldC
MEye2:remove()
MEye1:remove()
Eye1:remove() 
Eye2:remove()
mouth:remove()
berserkValue = 0
text2.Text= ""..berserkValue..""
text2b.Text= ""..berserkValue..""	
idle()
wait()
idle()

for i=1,10 do
Radar.BackgroundTransparency= Radar.BackgroundTransparency + 0.1

wait(0.15)
end

end	
return end	

if UnknownMode == false then
if UnknownMode == true then return end		
berserkMode = true

berserkValueAddDebounce = false	





char.Torso.Anchored = true


for i = 1,30 do wait()	
PlaySound("HundredPercent", 6.7, char.Torso, false,math.huge,false)

		
end	



if enabled == false then
berserkMode = false
wait()
StartUp()
end
face.Texture = ""
shirt.ShirtTemplate=""
pants.PantsTemplate=""
Mesh.MeshId ="rbxassetid://98444143";
Handle.BrickColor = BrickColor.new("Institutional white");
Hat.AttachmentPos = Vector3.new(0,-0.15,-0.1);

char.Humanoid.WalkSpeed = 100
char.Humanoid.MaxHealth = math.huge
char.Humanoid.Health = math.huge
shieldhumanoid.MaxHealth = math.huge
shieldhumanoid.Health = math.huge
char.Humanoid.JumpPower = 100

char.Head.BrickColor = BrickColor.new("Institutional white")
char.Torso.BrickColor = BrickColor.new("Institutional white")
char["Left Arm"].BrickColor = BrickColor.new("Institutional white")
char["Left Leg"].BrickColor = BrickColor.new("Institutional white")
char["Right Arm"].BrickColor = BrickColor.new("Institutional white")
char["Right Leg"].BrickColor = BrickColor.new("Institutional white")

local mouth = Instance.new("Part",suit)
mouth.Size = Vector3.new(0.2,.7,0.4)
mouth.Transparency = 0
mouth.BrickColor = BrickColor.new("Really black")
mouth.CanCollide = false
local mouthMesh = Instance.new("SpecialMesh",mouth)
mouthMesh.MeshType = "Sphere"
mouthMesh.Scale = Vector3.new(2.5,0.1,0.8)

weld(char.Head,mouth,CFrame.new(0,0,0),CFrame.new(0, .3, 0.45)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"mouth")

local Eye1 = Instance.new("Part",suit)
Eye1.Size = Vector3.new(0.4,0.4,0.4)
Eye1.Transparency = 0
Eye1.BrickColor = BrickColor.new("Really black")
Eye1.CanCollide = false
local Eye1Mesh = Instance.new("SpecialMesh",Eye1)
Eye1Mesh.MeshType = "Sphere"
Eye1Mesh.Scale = Vector3.new(1,1,0.6)

weld(char.Head,Eye1,CFrame.new(0,0,0),CFrame.new(-.2, -.1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"Eye1")


local Eye2 = Instance.new("Part",suit)
Eye2.Size = Vector3.new(0.4,0.4,0.4)
Eye2.Transparency = 0
Eye2.CanCollide = false
Eye2.BrickColor = BrickColor.new("Really black")
local Eye2Mesh = Instance.new("SpecialMesh",Eye2)
Eye2Mesh.MeshType = "Sphere"
Eye2Mesh.Scale = Vector3.new(1,1,0.6)

weld(char.Head,Eye2,CFrame.new(0,0,0),CFrame.new(.2, -.1, 0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"Eye2")

local MEye1 = Instance.new("Part",suit)
MEye1.Size = Vector3.new(0.3,0.3,0.3)
MEye1.Transparency = 0
MEye1.Material= "Neon"
MEye1.BrickColor = BrickColor.new("Institutional white")
MEye1.CanCollide = false
local MEye1Mesh = Instance.new("SpecialMesh",MEye1)
MEye1Mesh.MeshType = "Sphere"
MEye1Mesh.Scale = Vector3.new(.7,.7,.2)

weld(Eye1,MEye1,CFrame.new(0,0,0),CFrame.new(-.02,0,0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"MEye1")

local MEye2 = Instance.new("Part",suit)
MEye2.Size = Vector3.new(0.3,0.3,0.3)
MEye2.Transparency = 0
MEye2.Material= "Neon"
MEye2.BrickColor = BrickColor.new("Institutional white")
MEye2.CanCollide = false
local MEye2Mesh = Instance.new("SpecialMesh",MEye2)
MEye2Mesh.MeshType = "Sphere"
MEye2Mesh.Scale = Vector3.new(.7,.7,.2)

weld(Eye2,MEye2,CFrame.new(0,0,0),CFrame.new(.02,0,0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0),char,"MEye2")


local explodePart = Instance.new("Part",workspace)

explodePart.FormFactor="Custom"

explodePart.Size=Vector3.new(2,2,2)

explodePart.TopSurface = 0

explodePart.BottomSurface = 0

local colorc = {"Institutional white"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

explodePart.BrickColor = Fire

explodePart.CanCollide=false

explodePart.Anchored=true

explodePart.CFrame =(Torso.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

local explodePartmesh = Instance.new("BlockMesh",explodePart)
		
for i = 1,10 do wait()
	
explodePartmesh.Scale=Vector3.new(5*i,5*i,5*i)
explodePart.CFrame = clerp(explodePart.CFrame*CFrame.Angles(math.rad(10),math.rad(10),math.rad(10)),explodePart.CFrame,0.1) 
explodePart.Transparency = explodePart.Transparency + 0.1
end	

--[[By LukeSky4ever... U think you could just delete the creator's name dont ya?]]--


explodePart:remove()
char.Torso.Anchored = false
 
BerserkParticle = Instance.new("ParticleEmitter",char.Torso)
BerserkParticle.LightEmission = 1
BerserkParticle.Size = NumberSequence.new(10,15)
BerserkParticle.Texture = "http://www.roblox.com/asset/?id=243660364"
BerserkParticle.Transparency = NumberSequence.new(.2,.7)
BerserkParticle.LockedToPart = true
BerserkParticle.Lifetime = NumberRange.new(1)
BerserkParticle.Rate= 10
BerserkParticle.Speed =NumberRange.new(0)
BerserkParticle.Rotation = NumberRange.new(0,360)
BerserkParticle.RotSpeed = NumberRange.new(-10,10)
BerserkParticle.VelocitySpread = 360
coroutine.resume(coroutine.create(function()
for i = 1,90 do wait()
	
local explodePart = Instance.new("Part",workspace)

explodePart.FormFactor="Custom"

explodePart.Size=Vector3.new(2,2,2)

explodePart.TopSurface = 0

explodePart.BottomSurface = 0

local colorc = {"Institutional white"}

local Fire = BrickColor.new(colorc[math.random(1, #colorc)])

explodePart.BrickColor = Fire

explodePart.CanCollide=false

explodePart.Anchored=true

explodePart.CFrame =(Torso.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

local explodePartmesh = Instance.new("BlockMesh",explodePart)
		
for i = 1,5 do wait()
	
explodePartmesh.Scale=Vector3.new(1*i,1*i,1*i)
explodePart.CFrame = clerp(explodePart.CFrame*CFrame.Angles(math.rad(10),math.rad(10),math.rad(10)),explodePart.CFrame,0.1) 
explodePart.Transparency = explodePart.Transparency + 0.2
end	

explodePart:remove()
end
end))

wait(1)


for i = 1,100 do wait(.3)
if berserkValue == 0 then return end	
berserkValue = berserkValue - 1	
text2.Text= ""..berserkValue..""
text2b.Text= ""..berserkValue..""
char.Head.BrickColor = BrickColor.new("Institutional white")
char.Torso.BrickColor = BrickColor.new("Institutional white")
char["Left Arm"].BrickColor = BrickColor.new("Institutional white")
char["Left Leg"].BrickColor = BrickColor.new("Institutional white")
char["Right Arm"].BrickColor = BrickColor.new("Institutional white")
char["Right Leg"].BrickColor = BrickColor.new("Institutional white")
wait(.1)			
	
	
	
end

MEye2:remove()
MEye1:remove()
Eye1:remove() 
Eye2:remove()
mouth:remove()

face.Texture = "http://www.roblox.com/asset/?id=321187438"
shirt.ShirtTemplate="rbxassetid://373395462"
pants.PantsTemplate="rbxassetid://373395510"
Mesh.MeshId ="rbxassetid://29938421";
Handle.BrickColor = BrickColor.new("Really black");
Hat.AttachmentPos = Vector3.new(0,0.25,0);

char.Humanoid.WalkSpeed = 16
char.Humanoid.JumpPower = 50
char.Humanoid.Health = 100
char.Humanoid.MaxHealth = 100
shieldhumanoid.MaxHealth = 100
shieldhumanoid.Health = 100

BerserkParticle:remove()
char.Head.BrickColor = HeadOldC
char.Torso.BrickColor = TorsoOldC
char["Left Arm"].BrickColor = LAOldC
char["Left Leg"].BrickColor = LLOldC
char["Right Arm"].BrickColor = RAOldC
char["Right Leg"].BrickColor = RLOldC
char.Humanoid.PlatformStand = true

for i=1,10 do
Radar.BackgroundTransparency= Radar.BackgroundTransparency - 0.1

wait(0.15)
end
wait(10)
for i=1,10 do
Radar.BackgroundTransparency= Radar.BackgroundTransparency  + 0.1

wait(0.15)
end
char.Humanoid.PlatformStand = false
berserkMode = false
dist = 25
Stop()	
end
end
end

if berserkValue>80 and berserkValue<100 then

text2.TextColor= BrickColor.new("Really red")	
text2b.TextColor= BrickColor.new("Really red")

end


if berserkValue>64 and berserkValue<80 then

text2.TextColor= BrickColor.new("Deep orange")	
text2b.TextColor= BrickColor.new("Deep orange")

end

if berserkValue>48 and berserkValue<64 then

	

text2.TextColor= BrickColor.new("New Yeller")	
text2b.TextColor= BrickColor.new("New Yeller")
	
	
end

if berserkValue>32 and berserkValue<48 then

	

text2.TextColor= BrickColor.new("Lime green")	
text2b.TextColor= BrickColor.new("Lime green")

end

if berserkValue>16 and berserkValue<32 then

	

text2.TextColor= BrickColor.new("Cyan")	
text2b.TextColor= BrickColor.new("Cyan")
	
	
end

if berserkValue>-math.huge and berserkValue<16 then
	
text2.TextColor= BrickColor.new("Institutional white")	
text2b.TextColor= BrickColor.new("Institutional white")

end

end)

game:service("RunService").Stepped:connect(function()
	
if enabled == true then	
if shieldhumanoid.Health == 0 then
if ColorDebounce == false then
if ColorDebounce == true then return end	
ColorDebounce = true


	

	
for i =1,20 do wait()
	
	
Shield1.Transparency = 0.9	
Shield2.Transparency = 0.9	
Shield3.Transparency = 0.9	
Shield4.Transparency = 0.9	
Shield5.Transparency = 0.9	
Shield6.Transparency = 0.9
wait()
Shield1.Transparency = 0.5	
Shield2.Transparency = 0.5	
Shield3.Transparency = 0.5	
Shield4.Transparency = 0.5	
Shield5.Transparency = 0.5	
Shield6.Transparency = 0.5			
	
	
end	
	
Shield1:Remove()
Shield2:Remove()
Shield3:Remove()
Shield4:Remove()
Shield5:Remove()
Shield6:Remove()
	
ShieldDown = true	
ColorDebounce = false	
end		
end	
end


	
	
	
	
end)


game:service("RunService").Stepped:connect(function()


	
if selectionboxEnable == true then
if UnknownMode == true then return end	
TKmove2.Position = char.Torso.Position + (mouse.Hit.lookVector*dist)	


end	
	
if TKEnabled == true then	
	
if UnknownMode == true then return end

TKmove.Position = char.Torso.Position + (mouse.Hit.lookVector*dist)	
pointGyro.CFrame = CFrame.new(Vector3.new(),(mouse.Hit.p - char.HumanoidRootPart.CFrame.p).unit * 100)

function touch(hit)
	
if alreadyHaveTK == false then
if alreadyHaveTK == true then return end
alreadyHaveTK = true

	
TKaffect = hit.Parent


if hit.Parent.Name == suit.Name then return end

if hit.Parent.Name == suit2.Name then return end

if hit.Parent:findFirstChild("Humanoid") ~= nil then
	
hit.Parent.Humanoid.PlatformStand=	 true
	
	
end
	
for _,v in pairs(TKaffect:GetChildren()) do if v.ClassName=="Part" then
	

OldTKpart = v
coroutine.resume(coroutine.create(function()
if v.Anchored == true then 

if v.Name == workspace.Baseplate.Name then return end
	
v.Anchored = false	
	
end
end))

function touch(hit)
	
if 	selectionboxEnable == false then
	
OldTKpart =nil return	
	
end
	
if hit.Parent:findFirstChild("Humanoid") ~= nil then

if hit.Parent.Name == char.Name then return  end

if hit.Parent.Name == suit.Name then return end

if hit.Parent.Name == suit2.Name then return end

if berserkMode == true then
	
hit.Parent:BreakJoints()	
	
	
end

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-5



local HitSounds = {
        Hurt = Instance.new("Sound")

}
 
HitSounds["Hurt"].SoundId = "http://www.roblox.com/asset?id=410625063"
HitSounds["Hurt"].Volume = 1
 
function PlayHitSound(soundname, pitch)
        HitSounds[soundname].Parent = hit.Parent.Torso
        HitSounds[soundname].Pitch = pitch
        HitSounds[soundname]:Play()
        local oldsound = HitSounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        HitSounds[soundname] = HitSounds[soundname]:clone()
end

PlayHitSound("Hurt", 1)

	
end
	

	
	
end	OldTKpart.Touched:connect(touch)
	

TKmove2 = Instance.new("BodyPosition",v)
TKmove2.Position = char.Torso.Position + (mouse.Hit.lookVector*dist)
TKmove2.Name = "TK"
TKmove2.MaxForce = Vector3.new(math.huge,math.huge,math.huge) 
TKmove2.P = 25000
if berserkMode == true then	
TKmove2.P = 50000

end

local selectionBoxOfTK = Instance.new("SelectionBox",v)
selectionBoxOfTK.Adornee = v
selectionBoxOfTK.Name= "TKeffectglow"


selectionBoxOfTK.Color = BrickColor.new("Cyan")
selectionBoxOfTK.LineThickness = 0.01
if berserkMode == true then
	
selectionBoxOfTK.Color = BrickColor.new("Institutional white")
	
	
end
	selectionboxEnable = true	
	
end end
	


	

end 	
		
end TK.Touched:connect(touch)

end	
	
	
end)
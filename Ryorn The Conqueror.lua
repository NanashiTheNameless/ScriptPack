---Presets------------------------
---Presets------------------------
iz = (game.Players.LocalPlayer.Name)



is = (game.Players.LocalPlayer.Character)


local Player = game.Players.LocalPlayer
local Character = Player.Character 
local PlayerGui = Player.PlayerGui
local Backpack = Player.Backpack 
local Torso = Character.HumanoidRootPart 
local Humanoid = Character.Humanoid
local hum = Character.Humanoid
local LeftArm = Character["Left Arm"] 
local LeftLeg = Character["Left Leg"] 
local RightArm = Character["Right Arm"] 
local RightLeg = Character["Right Leg"]
local Backpack = Player.Backpack 
local TorsA = Character.Torso 
local Head = Character.Head 
local LS = TorsA["Left Shoulder"] 
local LH = TorsA["Left Hip"] 
local RS = TorsA["Right Shoulder"] 
local RH = TorsA["Right Hip"] 
local Neck = TorsA.Neck
local rs = game:GetService("RunService").RenderStepped
local Mouse = Player:GetMouse()
attacktype = 1
vt = Vector3.new
ColorDebounce = false
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
necko = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0 = cf(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
LHC1 = cf(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
RHC0 = cf(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RHC1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
RootPart = Character.HumanoidRootPart
RootJoint = RootPart.RootJoint
RootCF = euler(-1.57, 0, 3.14)
attack = false 
equipped = true
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
local Root = Character.HumanoidRootPart
math.randomseed(os.time())

fat = Instance.new("BindableEvent",script)
fat.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)

Debounces = {
CanAttack = true;
NoIdl = false;
Slashing = false;
Slashed = false;
RPunch = false;
RPunched = false;
LPunch = false;
LPunched = false;
}
local Touche = {Character.Name, }

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
        local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
        local Angle = math.acos((R00+R11+R22-1)/2)
        local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        A = A == 0 and 0.00001 or A
        local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        B = B == 0 and 0.00001 or B
        local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
        C = C == 0 and 0.00001 or C
        local x = (R21-R12)/sqrt(A)
        local y = (R02-R20)/sqrt(B)
        local z = (R10-R01)/sqrt(C)
        return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
        local Min,Max = Func(0),Func(1)
        local i = Func(Num)
        return (i-Min)/(Max-Min)
        --[[if Func == "sin" then
                return (math.sin((1-Num)*math.pi)+1)/2
        elseif Func == "cos" then
                return (math.cos((1-Num)*math.pi)+1)/2
        end]]
end

function LerpCFrame(CFrame1,CFrame2,Num)
        local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
        return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end

function Crater(Torso,Radius)
        Spawn(function()
        local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
        local Ignore = {}
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character ~= nil then
                        Ignore[#Ignore+1] = v.Character
                end
        end
        local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
        if Hit == nil then return end
        local Parts = {}
        for i = 1,360,10 do
                local P = Instance.new("Part",Torso.Parent)
                P.Anchored = true
                P.FormFactor = "Custom"
                P.BrickColor = BrickColor.new("Really red")
                P.Material = "Granite"
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Size = Vector3.new(5,10,10)*(math.random(80,100)/100)
                P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
                if math.random(0,5) == 0 then -- rubble
                        local P = Instance.new("Part",Torso.Parent)
                        P.Anchored = true
                        P.FormFactor = "Custom"
                        P.BrickColor = BrickColor.new("Royal purple")
                        P.Material = Hit.Material
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Size = Vector3.new(5,5,5)*(math.random(80,100)/100)
                        P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
                        Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
                end
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
                end
                wait(0.02)
        end
        for i,v in pairs(Parts) do
                if v[1].Size.X > 2.1 then
                        v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
                end
                v[1].Anchored = false
        end
        for i = 0,1,0.05 do
                for i2,v in pairs(Parts) do
                        v[1].Transparency = i
                        if i == 1 then
                                v[1]:Destroy()
                        elseif i >= 0.25 then
                                v[1].CanCollide = false
                        end
                end
                wait(0.02)
        end
        Parts = nil
        end)
end

local sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset/?id=233774928"
sound.Parent = Character
sound.Volume = 8
sound:Play()
sound.Looped=false
wait(0.1)

local sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset/?id=503327967"
sound.Parent = Character
sound.Volume = 7
sound:Play()
sound.Looped=true
local runServ = game:GetService("RunService").RenderStepped


local TBlast, TBMesh = Instance.new("Part"), Instance.new("SpecialMesh")
	TBlast.BrickColor = BrickColor.new("Really black")
	TBlast.Transparency = 1
	TBlast.Anchored = true
	TBlast.CanCollide = false
	TBlast.CFrame = Root.CFrame
	TBlast.Size = Vector3.new(2,2,2)
	TBMesh.Parent = TBlast
	TBMesh.MeshType = "Sphere"
	
	local TB, TM = Instance.new("Part"), Instance.new("SpecialMesh")
	TB.BrickColor = BrickColor.new("Really red")
	TB.Transparency = 1
	TB.Anchored = true
	TB.CanCollide = false
	TB.CFrame = Root.CFrame
	TB.Size = Vector3.new(2,2,2)
	TB.Parent = TBlast
	TM.MeshType = "Sphere"
	
	game.Lighting.Brightness = 0
		game.Lighting.OutdoorAmbient = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = 0.1
		game.Lighting.FogEnd = 1000
		game.Lighting.FogColor = TBlast.BrickColor.Color
		game.Lighting.TimeOfDay = "00:00:00"
		game.Lighting.Ambient = Color3.new(0,0,0)
		game.Lighting.FogColor = Color3.new(0,0,0)
		game.Lighting.FogEnd = 500
		game.Lighting.FogStart = 0
		game.Lighting.GlobalShadows = true
		
		wait(16)
		
		
		
		local p = game.Players.localPlayer
local char = p.Character
local mouse=p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local torso = char.Torso
local root = char.HumanoidRootPart
local hed = char.Head

----------------------------------------------------
local PE1 = Instance.new("ParticleEmitter",rarm)
PE1.Color = ColorSequence.new(Color3.new (255, 0, 0), Color3.new (255, 0, 0))
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Size = NumberSequence.new(1.2)
PE1.Texture = "http://www.roblox.com/asset/?id=284607870"
PE1.Lifetime = NumberRange.new(.5)
PE1.Rate = 10
PE1.Transparency = NumberSequence.new(0.2)
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Rotation = NumberRange.new(260)
PE1.Speed = NumberRange.new(0)
PE1.RotSpeed = NumberRange.new(100)
bc=char['Body Colors']
coloras=BrickColor.new('Really black')
bc.LeftLegColor,bc.LeftArmColor,bc.TorsoColor,bc.HeadColor,bc.RightArmColor,bc.RightLegColor=coloras,coloras,coloras,coloras,coloras,coloras
-----------------------------------------------------------------------------
local PE1 = Instance.new("ParticleEmitter",larm)
PE1.Color = ColorSequence.new(Color3.new (255, 0, 0), Color3.new (255, 0, 0))
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Size = NumberSequence.new(1.2)
PE1.Texture = "http://www.roblox.com/asset/?id=284607870"
PE1.Lifetime = NumberRange.new(.5)
PE1.Rate = 10
PE1.Transparency = NumberSequence.new(0.2)
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Rotation = NumberRange.new(360)
PE1.Speed = NumberRange.new(0)
PE1.RotSpeed = NumberRange.new(100)
bc=char['Body Colors']
coloras=BrickColor.new('Really black')
bc.LeftLegColor,bc.LeftArmColor,bc.TorsoColor,bc.HeadColor,bc.RightArmColor,bc.RightLegColor=coloras,coloras,coloras,coloras,coloras,coloras
----------------------------------------------------------
local PE1 = Instance.new("ParticleEmitter",rleg)
PE1.Color = ColorSequence.new(Color3.new (255, 0, 0), Color3.new (255, 0, 0))
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Size = NumberSequence.new(1.2)
PE1.Texture = "http://www.roblox.com/asset/?id=284607870"
PE1.Lifetime = NumberRange.new(.5)
PE1.Rate = 10
PE1.Transparency = NumberSequence.new(0.2)
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Rotation = NumberRange.new(260)
PE1.Speed = NumberRange.new(0)
PE1.RotSpeed = NumberRange.new(100)
bc=char['Body Colors']
coloras=BrickColor.new('Really black')
bc.LeftLegColor,bc.LeftArmColor,bc.TorsoColor,bc.HeadColor,bc.RightArmColor,bc.RightLegColor=coloras,coloras,coloras,coloras,coloras,coloras
----------------------------------------------------
local PE1 = Instance.new("ParticleEmitter",larm)
PE1.Color = ColorSequence.new(Color3.new (255, 0, 0), Color3.new (255, 0, 0))
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Size = NumberSequence.new(1.2)
PE1.Texture = "http://www.roblox.com/asset/?id=284607870"
PE1.Lifetime = NumberRange.new(.5)
PE1.Rate = 10
PE1.Transparency = NumberSequence.new(0.2)
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Rotation = NumberRange.new(260)
PE1.Speed = NumberRange.new(0)
PE1.RotSpeed = NumberRange.new(100)
bc=char['Body Colors']
coloras=BrickColor.new('Really black')
bc.LeftLegColor,bc.LeftArmColor,bc.TorsoColor,bc.HeadColor,bc.RightArmColor,bc.RightLegColor=coloras,coloras,coloras,coloras,coloras,coloras
----------------------------------------------------------
local fart = Instance.new("Animation", char)
fart.AnimationId = "rbxassetid://456316205"
fart.Name = "fart"
----------------------------------------------------
local PE1 = Instance.new("ParticleEmitter",lleg)
PE1.Color = ColorSequence.new(Color3.new (255, 0, 0), Color3.new (255, 0, 0))
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Size = NumberSequence.new(1.2)
PE1.Texture = "http://www.roblox.com/asset/?id=284607870"
PE1.Lifetime = NumberRange.new(.5)
PE1.Rate = 10
PE1.Transparency = NumberSequence.new(0.2)
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Rotation = NumberRange.new(260)
PE1.Speed = NumberRange.new(0)
PE1.RotSpeed = NumberRange.new(100)
bc=char['Body Colors']
coloras=BrickColor.new('Really black')
bc.LeftLegColor,bc.LeftArmColor,bc.TorsoColor,bc.HeadColor,bc.RightArmColor,bc.RightLegColor=coloras,coloras,coloras,coloras,coloras,coloras
----------------------------------------------------------
local PE1 = Instance.new("ParticleEmitter",hed)
PE1.Color = ColorSequence.new(Color3.new (255, 0, 0), Color3.new (255, 0, 0))
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Size = NumberSequence.new(1.2)
PE1.Texture = "http://www.roblox.com/asset/?id=284607870"
PE1.Lifetime = NumberRange.new(.5)
PE1.Rate = 10
PE1.Transparency = NumberSequence.new(0.2)
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Rotation = NumberRange.new(260)
PE1.Speed = NumberRange.new(0)
PE1.RotSpeed = NumberRange.new(100)
bc=char['Body Colors']
coloras=BrickColor.new('Really black')
bc.LeftLegColor,bc.LeftArmColor,bc.TorsoColor,bc.HeadColor,bc.RightArmColor,bc.RightLegColor=coloras,coloras,coloras,coloras,coloras,coloras
----------------------------------------------------
local PE1 = Instance.new("ParticleEmitter",torso)
PE1.Color = ColorSequence.new(Color3.new (255, 0, 0), Color3.new (255, 0, 0))
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Size = NumberSequence.new(1.2)
PE1.Texture = "http://www.roblox.com/asset/?id=284607870"
PE1.Lifetime = NumberRange.new(.5)
PE1.Rate = 10
PE1.Transparency = NumberSequence.new(0.2)
PE1.LightEmission = NumberSequence.new(0.2)
PE1.Rotation = NumberRange.new(260)
PE1.Speed = NumberRange.new(0)
PE1.RotSpeed = NumberRange.new(100)
bc=char['Body Colors']
coloras=BrickColor.new('Really black')
bc.LeftLegColor,bc.LeftArmColor,bc.TorsoColor,bc.HeadColor,bc.RightArmColor,bc.RightLegColor=coloras,coloras,coloras,coloras,coloras,coloras
----------------------------------------------------------
SIDZ = {"231917744", "231917742"}
            PTZ = {0.7, 0.8, 0.9, 1}

x = Instance.new("Sound",char)
x.SoundId = "rbxassetid://"..SIDZ[math.random(1,#SIDZ)]
x.Pitch = PTZ[math.random(1,#PTZ)]
x.Volume = 10
wait(0.1)
x:Play()
Crater(Torso,95)
	Crater(Torso,20)
	
	
	x = Instance.new("Sound",char)
x.SoundId = "rbxassetid://"..SIDZ[math.random(1,#SIDZ)]
x.Pitch = PTZ[math.random(1,#PTZ)]
x.Volume = 10
wait(0.1)
x:Play()
Crater(Torso,95)
	Crater(Torso,20)

		game.Lighting.Brightness = 0
		game.Lighting.OutdoorAmbient = TB.BrickColor.Color
		game.Lighting.TimeOfDay = 0.1
		game.Lighting.FogEnd = 1000
		game.Lighting.FogColor = TB.BrickColor.Color
		game.Lighting.TimeOfDay = "00:00:00"
		game.Lighting.Ambient = Color3.new(0,0,0)
		game.Lighting.FogColor = Color3.new(0,0,0)
		game.Lighting.FogEnd = 500
		game.Lighting.FogStart = 0
		game.Lighting.GlobalShadows = true
local HBill = Instance.new("BillboardGui",game.Players.LocalPlayer.Character.Head)
local HMain, HBarBack, HBar = Instance.new("Frame", HBill), Instance.new("Frame"), Instance.new("Frame")
local HHealth, HName = Instance.new("TextLabel", HBarBack), Instance.new("TextLabel")
HBill.Size = UDim2.new(15,0,2.2,0)
HBill.Name = "Health Display"
HBill.StudsOffset = Vector3.new(0,4,0)
HBill.AlwaysOnTop = true
HBill.Enabled = true
HMain.BackgroundColor3 = Color3.new(0, 0, 0)
HMain.BackgroundTransparency = 1
HMain.Size = UDim2.new(1,0,1,0)
HBarBack.Parent = HMain
HBarBack.BackgroundColor3 = Color3.new(0,0,0)
HBarBack.BorderColor3 = Color3.new(0,0,0)
HBarBack.BorderSizePixel = 2
HBarBack.Position = UDim2.new(.025, 0, .55, 0)
HBarBack.Size = UDim2.new(.95, 0, .3, 0)
HBar.Parent = HBarBack
HBar.BackgroundColor3 = Color3.new(225, 0, 0)
HBar.BorderColor3 = Color3.new(0,0,0)
HBar.Size = UDim2.new(.5,0,1,0)
HHealth.BackgroundTransparency = 1
HHealth.Size = UDim2.new(1,1,1,1)
HHealth.Font = "SourceSans"
HHealth.Text = " "
HHealth.TextScaled = true
HHealth.TextColor3 = Color3.new(255,0,0)
HHealth.TextStrokeColor3 = BrickColor.new("Really red").Color
HHealth.TextStrokeTransparency = 1
HName.Parent = HMain
HName.BackgroundTransparency = 1
HName.Size = UDim2.new(1,0,.5,0)
HName.Font = "Antique"
HName.Text = "Ryorn, The Conqueror"
HName.TextScaled = true
HName.TextColor3 = BrickColor.new("Really red").Color
HName.TextStrokeColor3 = Color3.new(0,0,0)
HName.FontSize = "Size48"
HName.TextStrokeTransparency = 0
HName.TextYAlignment = "Top"






Player:ClearCharacterAppearance()
wait(0.1)
Player.Character.Head.BrickColor = BrickColor.new("Really black")
Player.Character.Torso.BrickColor = BrickColor.new("Really black")
Player.Character["Right Arm"].BrickColor = BrickColor.new("Really black")
Player.Character["Right Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Leg"].BrickColor = BrickColor.new("Really black")
Player.Character["Left Arm"].BrickColor = BrickColor.new("Really black")
Player.Character.Head.face:Destroy()



local selectionBoxOfTorso = Instance.new("SelectionBox",TorsA)
selectionBoxOfTorso.Adornee = TorsA
selectionBoxOfTorso.Color = BrickColor.new("Really red")
selectionBoxOfTorso.LineThickness = 0.01
selectionBoxOfTorso.Transparency = 0
	
local selectionBoxOfRightArm = Instance.new("SelectionBox",Character["Right Arm"])
selectionBoxOfRightArm.Adornee = Character["Right Arm"]
selectionBoxOfRightArm.Color = BrickColor.new("Really red")
selectionBoxOfRightArm.LineThickness = 0.01
selectionBoxOfRightArm.Transparency = 0
	
local selectionBoxOfRightLeg = Instance.new("SelectionBox",Character["Right Leg"])
selectionBoxOfRightLeg.Adornee = Character["Right Leg"]
selectionBoxOfRightLeg.Color = BrickColor.new("Really red")
selectionBoxOfRightLeg.LineThickness = 0.01
selectionBoxOfRightLeg.Transparency = 0

local selectionBoxOfLeftArm = Instance.new("SelectionBox",Character["Left Arm"])
selectionBoxOfLeftArm.Adornee = Character["Left Arm"]
selectionBoxOfLeftArm.Color = BrickColor.new("Really red")
selectionBoxOfLeftArm.LineThickness = 0.01
selectionBoxOfLeftArm.Transparency = 0

local selectionBoxOfLeftLeg = Instance.new("SelectionBox",Character["Left Leg"])
selectionBoxOfLeftLeg.Adornee = Character["Left Leg"]
selectionBoxOfLeftLeg.Color = BrickColor.new("Really red")
selectionBoxOfLeftLeg.LineThickness = 0.01
selectionBoxOfLeftLeg.Transparency = 0


LightOnBody = Instance.new("PointLight", Head)
LightOnBody.Brightness = 3000
LightOnBody.Range = 20
LightOnBody.Color = Color3.new(225, 0, 0)

NsKeypoint = function(a, b, c)
	
	return NumberSequenceKeypoint.new(a, b, c)
end

ColorsNew = function(a, b, c)
	
	return Color3.new(a / 255, b / 255, c / 255)
end

local Plasma = Instance.new("ParticleEmitter", torso)
Plasma.Enabled = true
local color1 = ColorsNew(0, 0, 0)
local color2 = ColorsNew(0, 0, 0)
local COLOR = ColorSequence.new(color1, color2)
Plasma.Size = NumberSequence.new({NsKeypoint(0, 2, 0), NsKeypoint(0.23067332804203, 6.875, 0), NsKeypoint(0.29800498485565, 0.9375, 0), NsKeypoint(0.58478802442551, 6.9375, 0), NsKeypoint(1, 2, 0)})
Plasma.Transparency = NumberSequence.new({NsKeypoint(0, 0, 0), NsKeypoint(0.70947635173798, 0, 0), NsKeypoint(0.74438905715942, 0.51249998807907, 0), NsKeypoint(0.78179556131363, 0, 0), NsKeypoint(0.82169580459595, 0.018750011920929, 0), NsKeypoint(1, 0.48750001192093, 0)})
Plasma.Lifetime = NumberRange.new(0.1, 1)
Plasma.RotSpeed = NumberRange.new(1000)
Plasma.Color = COLOR
Plasma.LightEmission = 1000
Plasma.Texture = "rbxassetid://335222248"
Plasma.Name = "Plasma"
Plasma.Speed = NumberRange.new(20)
Plasma.Rate = 1000
Plasma.VelocitySpread = 360
Plasma.Acceleration = Vector3.new(0, 0, 0)



	Charging = true
custommath={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}
function FDebris()
	repeat
    local p = Instance.new('Part',Torso)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(1,1,1)
    p.BrickColor = workspace.Base.BrickColor
    p.CanCollide = false
    p.Transparency = 0
    p.Anchored = true
    p.Locked=true
    p.Material = workspace.Base.Material
    s = math.random(1,40)/10
    local m = Instance.new("BlockMesh",p)
    m.Scale = Vector3.new(s,s,s)
    p.CFrame = Torso.CFrame*CFrame.new(custommath[math.random(1,#custommath)]/10,-math.random(5,7),custommath[math.random(1,#custommath)]/10)*CFrame.Angles(math.random(),math.random(),math.random())
	--[[coroutine.wrap(function()
		wait(2)
		while Charging == true do
		wait(2)
		GroundWave1()
		wait(2)
		end
	end)()]]--
	
	spawn(function()
        while rs:wait() do
            if p.Transparency >= 1 then p:Destroy() break end
            p.CFrame = p.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.2,0)
            p.Transparency = p.Transparency+0.01
        end
    end)
    wait(.3)
until Charging == false
end
				

spawn(function()
	while wait(.01)
		 do
		FDebris()	
		end
end)	



FloatPart = function()
	local Part = Instance.new('Part',Torso)
	Part.CFrame = CFrame.new(Torso.CFrame.X,workspace.Base.CFrame.Y+1,Torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.Material = 'Neon'
	Part.CanCollide = false
	Part.BrickColor = BrickColor.new(PrimaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(4,4,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

DubPart = function()
	local Part = Instance.new('Part',Torso)
	Part.CFrame = CFrame.new(Torso.CFrame.X,workspace.Base.CFrame.Y+1,Torso.CFrame.Z) * CFrame.fromEulerAnglesXYZ(86.4,0,87)
	Part.Anchored = true
	Part.CanCollide = false
	Part.Material = 'Neon'
	Part.BrickColor = BrickColor.new(SecondaryColor)
	local Mesh = Instance.new('SpecialMesh',Part)
	Mesh.Scale = Vector3.new(7,7,.2)
	Mesh.MeshId = 'http://www.roblox.com/asset/?id=3270017'
	Mesh.VertexColor = Vector3.new(0,170,255)
	spawn(function()
		for i = 1,30 do
			Mesh.Scale = Mesh.Scale + Vector3.new(.04,.04,0)
			Part.Transparency = Part.Transparency + .035
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

Fade = function(Item,t)
	spawn(function()
		for i = 1,20 do
			Item.Transparency = Item.Transparency + .05
			if t then
				wait(t)
			else 
				wait()
			end
		end
		Item:Destroy()
	end)
end

Particle = function(PrimaryColor)
	local Part = Instance.new('Part',Torso)
	Part.BrickColor = BrickColor.new(PrimaryColor)
	Part.Anchored = true
	Part.Transparency = .3
	Part.CanCollide = false
	Part.CFrame = Torso.CFrame * CFrame.new(math.random(-10,10),math.random(-15,15),math.random(-10,10)) * CFrame.fromEulerAnglesXYZ(math.random(),math.random(),math.random())
	local Mesh = Instance.new('BlockMesh',Part)
	Mesh.Scale = Vector3.new(.05,.1,.1)
	spawn(function()
		for i = 1,40 do
			Part.Transparency = Part.Transparency + .0125
			Part.CFrame = Part.CFrame * CFrame.new(0,-.07,0)
			game["Run Service"].RenderStepped:wait()
		end
		Part:Destroy()
	end)
end;

--[[spawn(function()
	while wait() do
		wait(.05)
		FloatPart()
		wait(.08)
		FloatPart()
		wait(.05)
		DubPart()
		wait(.08)
	end
end)]]

game["Run Service"].RenderStepped:connect(function(_)
	Particle("Royale purple")
	Particle("Really black")
        Particle("Really red")
	--Character['HumanoidRootPart'].C1 = Character['HumanoidRootPart'].C1 * CFrame.new(0,Height+math.sin(tick())/150,0)
end)



function createblack(part)
local pt1 = NumberSequenceKeypoint.new(0,1,0)
local pt2 = NumberSequenceKeypoint.new(1,0,0)
local effecto = Instance.new("ParticleEmitter",part)
effecto.Texture = "rbxasset://textures/particles/smoke_main.dds"
effecto.Color = ColorSequence.new(Color3.new(0,0,0))
effecto.Rate = 10000
effecto.Lifetime = NumberRange.new(1,1)
effecto.Size = NumberSequence.new({pt1,pt2})
effecto.Speed = NumberRange.new(0,0)
effecto.RotSpeed = NumberRange.new(100,100)
end

local orbuu = Instance.new("Part", chara)
orbuu.Size = Vector3.new(1,1,1)
orbuu.Name = "Diamond"
orbuu.Anchored = true
orbuu.CanCollide = false
orbuu.BrickColor = BrickColor.new("Really black")
local meshooo = Instance.new("SpecialMesh", orbuu)
meshooo.MeshType = "FileMesh"
meshooo.MeshId = "http://www.roblox.com/asset/?id=9756362"
local RotationSpeed = 6
local BobSpeed = 1
local RotationDist = Vector3.new(5, 0, 0)
local dt = 0
local currentTime = 0

chara =  Player.Character
hitdude = nil
debby = game:GetService("Debris")
chara.Humanoid.MaxHealth = math.huge
chara.Humanoid.Health = math.huge
chara.Humanoid.JumpPower = 100
local moosek = 0
local prevthing = 0
local timeofday = "Day"
taip = 1
createblack(orbuu)
orbuu.ParticleEmitter.Color = ColorSequence.new(Color3.new(1,0,1))
orbuu.ParticleEmitter.LightEmission = 1
--Spell Circle--

Void = nil
VoidParts = {}
Equipped = false

function RayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end

	Player = Player
	Character = chara

	Humanoid = Character:FindFirstChild("Humanoid")
	Torso = Character:FindFirstChild("Torso")
	if not Player or not Humanoid or Humanoid.Health == 0 or not Torso then
		return
	end
	Equipped = true
	Void = Instance.new("Model")
	Void.Name = "Void"
	Angle = 0
	for i = 1, 1 do
		local VoidPart = Instance.new("Part")
		VoidPart.Name = "VoidPart"
		VoidPart.Transparency = 1
		VoidPart.BrickColor = BrickColor.new("Really black")
		VoidPart.Material = Enum.Material.Plastic
		VoidPart.Shape = Enum.PartType.Block
		VoidPart.FormFactor = Enum.FormFactor.Custom
		VoidPart.TopSurface = Enum.SurfaceType.Smooth
		VoidPart.BottomSurface = Enum.SurfaceType.Smooth
		VoidPart.Anchored = true
		VoidPart.CanCollide = false
		VoidPart.Locked = true
		VoidPart.Size = Vector3.new(10, 0.2, 10)
		local BlockMesh = Instance.new("BlockMesh")
		BlockMesh.Scale = Vector3.new(1, (1 + (0.005 * i)), 1)
		BlockMesh.Parent = VoidPart
		VoidPart.Parent = Void
		local Star = Instance.new("Decal", VoidPart)
		Star.Texture = "rbxassetid://359972668"
		Star.Face = "Top"
		local Light = Instance.new("PointLight", VoidPart)
		Light.Color = Color3.new(0,225,225)
		Light.Brightness = 100
		Light.Range = 10
		table.insert(VoidParts, VoidPart)
	end
	Spawn(function()
		while Equipped and Humanoid.Parent and Humanoid.Health > 0 and Torso.Parent do
			if Angle == 360 then
				Angle = 0
			end
			Angle = Angle + 0.05
			chara.Humanoid.MaxHealth = math.huge
			chara.Humanoid.Health = math.huge
			local parentPos = chara.Torso.CFrame
			--Rotate Fluffy around the player's head
			local rotation = CFrame.Angles(0 , RotationSpeed * currentTime, 0)
			local bob = Vector3.new(0, BobSpeed * math.sin(currentTime), 0)
			orbuu.CFrame =  ((parentPos + bob)  + (rotation * RotationDist))
			--Wait some time so we aren't going plaid
			dt, currentTime = wait(1/40)
			local cheeed = chara:GetChildren()
			for i = 1, #cheeed do
			if cheeed[i].ClassName == "Part" then
			if cheeed[i].Name ~= "Right Arm" and cheeed[i].Name ~= "Left Arm" and cheeed[i].Name ~= "Right Leg" and cheeed[i].Name ~= "Left Leg" and cheeed[i].Name ~= "Torso" and cheeed[i].Name ~= "HumanoidRootPart" and cheeed[i].Name ~= "Head" and cheeed[i].Name ~= "FakeHandle" and cheeed[i].Name ~= "FakeHandle2" and cheeed[i].Name ~= "FakeHandle3" and cheeed[i].Name ~= "Diamond" then
			cheeed[i]:Destroy()
			else end
			end
			end
			local Hit, EndPosition = RayCast(Torso.Position, Vector3.new(0, -1, 0), (Torso.Size.Y * 6.5), {Character})
			if Hit then
				if not Void.Parent then
					Void.Parent = Character
				end
				for i, v in pairs(VoidParts) do
					v.CFrame = CFrame.new(Torso.Position.X, EndPosition.Y, Torso.Position.Z) * CFrame.Angles(0, (Angle + i), 0)
				end
			else
				Void.Parent = nil
			end
			wait()
		end
	end)
	



----------------------------------------------------
function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
function weld(a, b)
    local weld = Instance.new("Weld")
    weld.Name = "W"
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    weld.Parent = a
    return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i] = v+(com2[i]-v)*al
	end
	return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------


m8 = Instance.new("Model")
m8.Name = "Zyrodoxa"


p16 = Instance.new("Part", m8)
p16.BrickColor = BrickColor.new("Instutional white")
p16.Material = Enum.Material.Metal
p16.Name = "Handle"
p16.CFrame = CFrame.new(2.7e-005, -11.8500671, -1.1215378, 1, -4.08902174e-008, -5.95266769e-008, -5.95264673e-008, 4.47054163e-008, -1.00000322, 4.08900469e-008, 1.00000393, 3.27827877e-007)
p16.CanCollide = false
p16.Locked = true
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0, 0, 0)
p16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
p16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
p16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
p16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
p16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
p16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
b16 = Instance.new("BlockMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(0, 0, 0)

w16 = Instance.new("Weld", p16)
w16.Name = "Block_Weld"
w16.Part0 = p16
w16.C0 = CFrame.new(-2.69356715e-005, 1.12153399, 0.310250998, 1, -5.9526446e-008, 4.08900576e-008, -4.08900576e-008, 0, 1, -5.95264495e-008, -1, -2.43403981e-015)
w16.Part1 = p17
w16.C1 = CFrame.new(-2.69897973e-005, 0.238820702, 1.16951191, 1, -3.32849588e-008, -1.92696081e-009, -3.32849588e-008, -1, -5.96046448e-007, -1.92694105e-009, 5.96046448e-007, -1)



m8.Parent = rarm
m8:MakeJoints()

local cor8 = Instance.new("Part", rarm.Zyrodoxa)
cor8.Name = "Thingy"
cor8.Locked = true
cor8.BottomSurface = 0
cor8.CanCollide = false
cor8.Size = Vector3.new(1, 1, 1)
cor8.Transparency = 1
cor8.TopSurface = 0
corw8 = Instance.new("Weld", cor8)
corw8.Part0 = rarm
corw8.Part1 = cor8
corw8.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180))
corw8.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld8 = Instance.new("Weld", rarm.Zyrodoxa)
weld8.Part0 = cor8
weld8.Part1 = rarm.Zyrodoxa.Handle
weld8.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))





Debounces = {CanAttack = true, NoIdl = false, Slashing = false, Slashed = false, RPunch = false, RPunched = false, LPunch = false, LPunched = false, Reaping = false, Reaped = false}
local Touche = {Character.Name}




Reap = function()
	
	rarm.Touched:connect(function(ht1)
		
		hit1 = ht1.Parent
		if ht1 and hit1:IsA("Model") and hit1:FindFirstChild("Humanoid") and hit1.Name ~= p.Name and Debounces.Reaping == true and Debounces.Reaped == false then
			Debounces.Reaped = true
			h = hit1:FindFirstChild("Humanoid")
			if h ~= nil then
				hum.MaxHealth = hum.MaxHealth + h.MaxHealth
				hum.Health = hum.MaxHealth
				e = Instance.new("Part")
				e.TopSurface = 0
				e.BottomSurface = 0
				e.Reflectance = 0.05
				e.formFactor = "Symmetric"
				e.Size = Vector3.new(1, 1, 1)
				e.Anchored = true
				e.CanCollide = false
				e.BrickColor = BrickColor.new("Really blue")
				e.CFrame = CFrame.new(ht1.Position)
				e.Parent = hit1
				Instance.new("BlockMesh", e)
				coroutine.resume(coroutine.create(function(par)
			
			for i = 1, 13 do
				par.CFrame = par.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-20, 20) / 50, math.random(-20, 20) / 50, math.random(-20, 20) / 50)
				par.Transparency = i / 13
				par.Mesh.Scale = par.Mesh.Scale + Vector3.new(0.4, 0.4, 0.4)
				wait()
			end
			par.Parent = nil
		end
), e)
				for _,v in pairs(hit1:children()) do
					if v.className == "Part" then
						v.BrickColor = BrickColor.new("Really black")
						v.RotVelocity = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) * 3
						v:BreakJoints()
						f = Instance.new("BodyVelocity")
						f.P = 3000
						f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
						f.velocity = Vector3.new(math.random(-30, 30) / 10, math.random(-30, 30) / 10, math.random(-30, 30) / 10)
						f.Parent = v
						v.CanCollide = false
						coroutine.resume(coroutine.create(function(par)
			
			for i = 1, 30 do
				par.Transparency = i / 30
				wait()
			end
			par.Parent = nil
		end
), v)
					else
						if v.className == "Hat" then
							v.Handle.BrickColor = BrickColor.new("Really black")
							v.Handle.RotVelocity = Vector3.new(math.random(-2, 2), math.random(-2, 2), math.random(-2, 2)) * 3
							v.Handle:BreakJoints()
							f = Instance.new("BodyVelocity")
							f.P = 3000
							f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
							f.velocity = Vector3.new(math.random(-30, 30) / 10, math.random(-30, 30) / 10, math.random(-30, 30) / 10)
							f.Parent = v.Handle
							v.Handle.CanCollide = false
							coroutine.resume(coroutine.create(function(par)
			
			for i = 1, 30 do
				par.Transparency = i / 30
				wait()
			end
			par.Parent = nil
		end
), v.Handle)
							if h == nil then
								wait()
							end
						end
					end
				end
			end
		end
	end
)
	Debounces.Reaped = false
end







mouse.KeyDown:connect(function(key)------------------------------------------------------------------------Darkness Punch
	
	if key == "q" and Debounces.CanAttack == true then
		Debounces.CanAttack = false
		Debounces.NoIdl = true
		Debounces.on = true
		Debounces.Reaping = true
		for i = 1, 10 do
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0.4) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(70)), 0.4)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-30)), 0.4)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(70), 0), 0.4)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(30), math.rad(-10)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(7), math.rad(-20), math.rad(10)), 0.4)
			if Debounces.on == false then
				break
			end
			fat.Event:wait()
		end
		do
			wait(1)
			Reap()
			for i = 1, 10 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, -0.2) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(70)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0.2) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(-70), 0), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), 0), 0.7)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(-20), math.rad(-10)), 0.7)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(10)), 0.7)
				if Debounces.on == false then
					break
				end
				fat.Event:wait()
			end
			do
				if Debounces.CanAttack == false then
					Debounces.CanAttack = true
					Debounces.NoIdl = false
					Debounces.on = false
					Debounces.Reaping = false
				end
			end
		end
	end
end
)











local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Head = Character.Head
local Torso = Character.Torso
local Right_Arm = Character["Right Arm"]
local Right_Leg = Character["Right Leg"]
local Left_Arm = Character["Left Arm"]
local Left_Leg = Character["Left Leg"]
local Humanoid = Character.Humanoid
local Animation = "Idle"
local Mouse = Player:GetMouse()
local LeftShoulder = Torso["Left Shoulder"] 
local Left_Hip = Torso["Left Hip"] 
local RightShoulder = Torso["Right Shoulder"] 
local Right_Hip = Torso["Right Hip"] 
local Root = Character.HumanoidRootPart
local RootJoint = Root.RootJoint
local Attacking = false
local CanAttack = true
local Anim = "Idle"
local Combo = 1 
local Blocking = false
local MaxDestruction = 1000
local Destruction = 0
local MaxBlock = 100
local Effects = {}
local Color = "Bright yellow"
local Invert = false
local Idle = 0
local Equipped = false
local Running = false
local Unseathed = false
local Shard = "None"






function clerp(a,b,t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) -- dis one
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5/s 
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
	else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00-m11-m22+1) 
			local recip = 0.5/s 
			return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
		elseif i == 1 then 
			local s = math.sqrt(m11-m22-m00+1) 
			local recip = 0.5/s 
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
		elseif i == 2 then 
			local s = math.sqrt(m22-m00-m11+1) 
			local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
		end 
	end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w*xs, w*ys, w*zs 
	local xx = x*xs 
	local xy = x*ys 
	local xz = x*zs 
	local yy = y*ys 
	local yz = y*zs 
	local zz = z*zs 
	return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((1-t)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta  
		else 
			startInterp = 1-t 
			finishInterp = t 
		end 
	else 
		if (1+cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((t-1)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta 
		else 
			startInterp = t-1 
			finishInterp = t 
		end 
	end 
	return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

Movemment = 1
Walk = 0

Animator = Humanoid.Animator
--Animate = Character.Animate

Animator.Parent = nil
--Animate.Parent = nil

local Services = {

SoundService = game:GetService("SoundService");
Players = game:GetService("Players");
Debris = game:GetService("Debris");
Workspace = game:GetService("Workspace");
Lighting = game:GetService("Lighting");
HttpService = game:GetService("HttpService");
InsertService = game:GetService("InsertService");
	
}

SpikeMeshId = 1033714
SpikeBallId = 9982590
StarMeshId = 45428961
CrystalMeshId = 9756362

--[[ Essential Functions ]]--
function NoOutlines(Part)
		Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
	

local CreatePart = function(Parent, Name, Color, Size, Material, Transparency, Shape)

local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.Shape = Shape
Part.CanCollide = false
NoOutlines(Part)

return Part

end

local CreateMesh = function(Parent, Scale, Shape)


local Mesh = Instance.new("BlockMesh", Parent)
Mesh.Scale = Scale

return Mesh

end

local CreateWedge = function(Parent, Name, Color, Size, Material, Transparency)

local WedgePart = Instance.new("WedgePart", Parent)
WedgePart.Name = Name
WedgePart.BrickColor = BrickColor.new(Color)
WedgePart.Size = Size
WedgePart.Material = Material
WedgePart.Transparency = Transparency
WedgePart.CanCollide = false
NoOutlines(WedgePart)

return WedgePart

end

local CreateWeld = function(Parent, Cframe, P1 , P0)
	
local Weld = Instance.new("Weld", Parent)
Weld.Part0 = P0
Weld.Part1 = P1
Weld.Name = P0.Name .. "To" .. P1.Name
Weld.C0 = Cframe

return Weld	
	
end

local CreateVelocity = function(Parent,Velocity,Force)
	
local BodyVelocity = Instance.new("BodyVelocity", Parent)
BodyVelocity.Velocity = Velocity
BodyVelocity.MaxForce = Force	

	
	
return BodyVelocity	
	
end


local CreateCrystal = function(Parent, Name, Color, Size, Material, Transparency, Scale)


local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.CanCollide = false
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshId = "http://www.roblox.com/asset?id=" .. CrystalMeshId
Mesh.Scale = Scale

return Mesh and Part

end

local MakeSFX = function(Parent, Id, Volume, Pitch, Type)
	
local SFX = Instance.new("Sound", Parent)
SFX.SoundId = "http://www.roblox.com/asset?id=" .. Id
SFX.Name = "SFX"
SFX:Play()
SFX.Volume = Volume
SFX.Pitch = Pitch
SFX.PlayOnRemove = true
SFX:Remove()
	
if Type == "Echo" then
	
Instance.new("EchoSoundEffect", SFX)	
	
end	
	
end

local CreateSpike = function(Parent, Name, Color, Size, Material, Transparency, Scale)


local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.CanCollide = false
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshId = "http://www.roblox.com/asset?id=" .. SpikeMeshId
Mesh.Scale = Scale

return Mesh and Part

end

CircleEffect = function(Position, Parent, DSX, DSY, DSZ, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
local Part = Instance.new("Part", Parent)
Part.Transparency = Transparency
Part.Name = "CircleEffect"
Part.Size = Vector3.new()
Part.Anchored = true
Part.CanCollide = false
Part.Position = Position
Part.BrickColor = BrickColor.new(Brickcolor)
Part.Material = Material
NoOutlines(Part)

local Mesh = Instance.new("SpecialMesh", Part)
Mesh.MeshType = "Sphere"
Mesh.Scale = Vector3.new(DSX, DSY, DSZ)

Services.Debris:AddItem(Part, Time)


table.insert(Effects, {Part, "Circle", Time, SX, SY, SZ})


end

BlockEffect = function(Position, Parent, DSX, DSY, DSZ, SX, SY, SZ, Time, Brickcolor, Material, Transparency)
	
local Part = Instance.new("Part", Parent)
Part.Transparency = Transparency
Part.Name = "BlockEffect"
Part.Size = Vector3.new()
Part.Anchored = true
Part.Position = Position
Part.CanCollide = false
Part.BrickColor = BrickColor.new(Brickcolor)
Part.Material = Material
NoOutlines(Part)

local Mesh = Instance.new("BlockMesh", Part)
Mesh.Scale = Vector3.new(DSX, DSY, DSZ)

Services.Debris:AddItem(Part, Time)

table.insert(Effects, {Part, "Block", Time, SX, SY, SZ})


end




function DamageFunction(Hit, Part, Type, HitSFX, Knockback, Min, Max)
	
local HitHumanoid = Hit.Parent.Humanoid


local Damage = math.random(Min, Max)


coroutine.resume(coroutine.create(function()
HitHumanoid:TakeDamage(Damage)
end))
	
if Type == "Shrink" then
MakeSFX(Hit.Parent.Torso, 209527235, 1, 1)	
for i,v in pairs(Hit.Parent:children()) do
if v:IsA("Part") then
coroutine.resume(coroutine.create(function()		
for i = 1,100 do
wait()	
v.Size = v.Size - Vector3.new(0.05,0.05,0.05)
v.Transparency = v.Transparency + 0.05
	
end		
end))
end	
end
	
end	
	
	
	
if Type == "Normal" then
	
local Push = CreateVelocity(Hit.Parent.Torso, Torso.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Services.Debris:AddItem(Push, 0)	
DamageLabel(Hit.Parent, Damage, Hit)

elseif Type == "Ranged" then
local Push = CreateVelocity(Hit.Parent.Torso, Part.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
Services.Debris:AddItem(Push, 0)	
DamageLabel(Hit.Parent, Damage, Hit)

elseif Type == "Impale" then

local Spike = CreateSpike(Services.Workspace, "D e a t h", "Black", Vector3.new(), "SmoothPlastic", 0, Vector3.new(1,20,1))	
Spike.Anchored = true
Spike.Rotation = Vector3.new(math.random(-50,50), 0 , math.random(-50,50))
Spike.Position = Hit.Parent.Torso.Position


Services.Debris:AddItem(Spike, 30)

Hit.Parent:BreakJoints()
Hit.Parent.Torso.Position = Spike.Position + Vector3.new(0,5,0)
Hit.Parent.Torso.Anchored = true
	
MakeSFX(Spike, 306247724, 1,1)	
MakeSFX(Hit.Parent.Torso, 209527175, 10,1)
elseif Type == "Knockdown" then
	
		
local Push = CreateVelocity(Hit.Parent.Torso, Part.CFrame.lookVector * Knockback, Vector3.new(math.huge,math.huge,math.huge))
DamageLabel(Hit.Parent, Damage, Hit)
Services.Debris:AddItem(Push, 0.3)

coroutine.resume(coroutine.create(function()
	
HitHumanoid.PlatformStand = true
wait(1)
HitHumanoid.PlatformStand = false	
	
	
end))	
end

if HitSFX == "Penetration" then
	
MakeSFX(Hit, 199149269, 1 , 1)

elseif HitSFX == "Punch" then
	
MakeSFX(Hit, 278062209, 1 , 1)
	
	
	
	
end
end



function DamageLabel(HitCharacter, DamageDealt, Hit)
	
local DamageShowingPart = CreatePart(Services.Workspace, "ShowDamage", "Bright yellow", Vector3.new(0.8,0.8,0.8), "Neon", 1, "Block")
DamageShowingPart.Position = HitCharacter.Head.Position

local DamageGui = Instance.new("BillboardGui", DamageShowingPart)
DamageGui.Name = "Damage"
DamageGui.AlwaysOnTop = true
DamageGui.Size = UDim2.new(5, 0, 5, 0)

local DamageNumber = Instance.new("TextLabel", DamageGui)
DamageNumber.Size = UDim2.new(1,0,1,0)
if Hit.Parent:FindFirstChild("Head") then
DamageNumber.TextStrokeColor3 = Hit.Parent.Head.BrickColor.Color
DamageNumber.TextColor3 = Hit.BrickColor.Color
end
DamageNumber.TextStrokeTransparency = 0
DamageNumber.BackgroundTransparency = 1
DamageNumber.Font = "SourceSansBold"
DamageNumber.TextScaled = true
DamageNumber.Text = DamageDealt
	
local BodyVelocity = Instance.new("BodyVelocity", DamageShowingPart)
BodyVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.Velocity = Vector3.new(0,2,0)	
	
Services.Debris:AddItem(DamageShowingPart, 3)
	
	
end 




function ValidateDamage(Part, Distance ,Min , Max, Type, HitSFX, Knockback)
for _,WorkspaceChildren in pairs(workspace:children()) do
	
local HitHumanoid = WorkspaceChildren:findFirstChild("Humanoid")

if HitHumanoid ~= nil then
local Hit = WorkspaceChildren:findFirstChild("Torso")

if Hit ~= nil then
	
local Target = Hit.Position - Part.Position

local Magnitude = Target.magnitude

if Magnitude <= Distance and WorkspaceChildren.Name ~= Player.Name then
	
local HitBlock = Hit.Parent:FindFirstChild("Block")	
	
if HitBlock ~= nil and HitBlock:FindFirstChild("BlockDurability") and HitBlock.Value == true then

local HitBlock2 = Hit.Parent.Block.BlockDurability	
	
if HitBlock2.Value > 15 then
	
local HitN = math.random(1,5)
	
HitBlock2.Value = HitBlock2.Value - 15	
	
	
if HitN == 1 then
MakeSFX(Hit ,199148971, 0.5, 1)	
end

if HitN == 2 then
MakeSFX(Hit ,199149025, 0.5, 1)	
end

if HitN == 3 then
MakeSFX(Hit ,199149072, 0.5, 1)	
end

if HitN == 4 then
MakeSFX(Hit ,199149109, 0.5, 1)	
end

if HitN == 5 then
MakeSFX(Hit ,199149119, 0.5, 1)	
end
return
end	
end

DamageFunction(Hit, Part, Type, HitSFX, Knockback, Min, Max)

	

end
end
end
end
end
 


function Attack1()
Attacking = true
MakeSFX(EyeReference, 341336274, 1,1)
wait(0.3)
local Reference = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local ReferenceWeld = CreateWeld(Reference,  CFrame.new(0,0.5,-5), Reference, Root)

local Reference2 = CreatePart(Services.Workspace, "Reference", "Dark stone grey", Vector3.new(), "SmoothPlastic", 1, "Block")
local Reference2Weld = CreateWeld(Reference2,  CFrame.new(0,0.5,-2), Reference2, Root)


for i = 1,10 do

wait()

end

CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
CircleEffect(Reference2.Position, Services.Workspace,  50, 50, 50, -5, -5, -5, 5, "Bright red", "Neon", 0.5)
wait(0.5)
MakeSFX(Reference, 306247724, 1,1)	
CircleEffect(Reference.Position, Services.Workspace,  1, 1, 1, 5, 5, 5, 5, "Bright red", "Neon", 0.5)
ValidateDamage(Reference, 10 ,10 , 14, "Shrink", "Penetration", 5)
Attacking = false
end



function Attack3()
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
Attacking = true
wait(1)
MakeSFX(Torso, 341336274, 1, 1.2)
CircleEffect(Torso.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 5, "Black", "Neon", 0.5)
wait(1)
MakeSFX(Torso, 341336274, 1, 1.2)
CircleEffect(Torso.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 5, "Black", "Neon", 0.5)
wait(1)
MakeSFX(Torso, 341336274, 1, 1.2)
CircleEffect(Torso.Position, Services.Workspace,  1, 1, 1, 20, 20, 20, 5, "Black", "Neon", 0.5)
ValidateDamage(Torso, 60 ,0, 0, "Impale", "Penetration", 15)
Humanoid.WalkSpeed = 16
Humanoid.JumpPower = 50
Attacking = false
end



mouse.KeyDown:connect(function(key)---------------------------------------------------------------------------------------------------Erasing Hand
	
	if key == "e" and Debounces.CanAttack == true then
		
		Attack1()
		
		end
end)







mouse.KeyDown:connect(function(key)-----------------------------------------------------------------------------------------------Underworld Spikes
	
	if key == "r" and Debounces.CanAttack == true then
		
		Attack3()
		
		end
	end)




x = Instance.new("Sound", char)
x.SoundId = "http://www.roblox.com/asset/?id=198360408"
x.Looped = true
x.Volume = 9
local footsteps = false

local animpose = "Idle1"
local lastanimpose = "Idle1"
local grab = false
local Smooth = 1
local sine = 0
local change = 1
local val = 0
local ffing = false

jump = false
rs:connect(function()
	if char.Humanoid.Jump == true then
		jump = true
	else
		jump = false
	end
	char.Humanoid.FreeFalling:connect(function(f)
		if f then
			ffing = true
		else
			ffing = false
		end
	end)
	sine = sine + change
	if jump == true then
		animpose = "Jumping"
	elseif ffing == true then
		animpose = "Freefalling"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
		animpose = "Idle"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
		animpose = "Walking"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
		animpose = "Running"
	end
	RightLeg = CFrame.new(0.5,-1,0)
	LeftLeg = CFrame.new(-0.5,-1,0)

	lefth = (torso.CFrame*LeftLeg)
	righth = (torso.CFrame*RightLeg)

	speed = Vector3.new(torso.Velocity.X,0,torso.Velocity.Z)

	TiltOnAxis = (torso.CFrame-torso.CFrame.p):vectorToObjectSpace(speed/100)

	local AngleThetaR = (righth-righth.p):vectorToObjectSpace(speed/100)
	local AngleThetaL = (lefth-lefth.p):vectorToObjectSpace(speed/100)
	if animpose ~= lastanimpose then
		sine = 0
		if Debounces.NoIdl == false then
			if stanceToggle == "Idle1" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-12-4*math.cos(sine/22)),math.rad(-12-2*math.cos(sine/22)),math.rad(12+2*math.cos(sine/22))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6,-0.2)*CFrame.Angles(math.rad(20+4*math.cos(sine/22)),math.rad(-22-2*math.cos(sine/22)),math.rad(-15-2*math.cos(sine/22))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-12+2.5*math.cos(sine/22)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-2+2*math.cos(sine/22)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(5), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(0-2*math.cos(sine/22)), math.rad(-5), math.rad(5)), 0.2)
			elseif stanceToggle == "Idle2" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.6,0.2)*CFrame.Angles(math.rad(-22-4*math.cos(sine/12)),math.rad(-40-2*math.cos(sine/12)),math.rad(24+2*math.cos(sine/12))), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.6,-0.6)*CFrame.Angles(math.rad(90+4*math.cos(sine/12)),math.rad(0),math.rad(50-2*math.cos(sine/12))), 0.3)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-6+2.5*math.cos(sine/12)),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(-20+2*math.cos(sine/12)), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.4, -1) * CFrame.Angles(math.rad(-7-2*math.cos(sine/12)), math.rad(7), math.rad(-5)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.8, -0.2) * CFrame.Angles(math.rad(-30-2*math.cos(sine/12)), math.rad(-9), math.rad(5)), 0.2)
			end
			fat.Event:wait()
		end
		else
	end
	lastanimpose = animpose
	if Debounces.NoIdl == false then
		if animpose == "Idle" then
			change = 0.5
			if stanceToggle == "Idle1" then
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1.05+0.03*math.cos(sine/5), 0-0.1*math.cos(sine/10)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+8*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.3)

				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.6+0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),-0.2-0.1*math.cos(sine/10))*CFrame.Angles(math.rad(8+2.5*math.cos(sine/10)),math.rad(22+7*math.cos(sine/10)),math.rad(15+2*math.cos(sine/10))), 0.8)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.6-0.05*math.cos(sine/10),0.6+0.1*math.cos(sine/10),0.2+0.1*math.cos(sine/10))*CFrame.Angles(math.rad(-8-2.5*math.cos(sine/10)),math.rad(12+5*math.cos(sine/10)),math.rad(-12-3*math.cos(sine/10))), 0.8)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.05*math.cos(sine/10))*CFrame.Angles(math.rad(-15+3*math.cos(sine/10)),math.rad(0),math.rad(0)), 0.5)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(20-3*math.cos(sine/10)),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-6+3*math.cos(sine/10)), math.rad(0), 0), 0.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0-0.08*math.cos(sine/10), -1, 0) * CFrame.Angles(math.rad(0), math.rad(-20+3*math.cos(sine/10)), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, -0.14+0.06*math.cos(sine/10)) * CFrame.Angles(math.rad(-3-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(-10-3*math.cos(sine/10)), math.rad(5+3*math.cos(sine/10))), 0.1)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -0.06) * CFrame.Angles(math.rad(8-3*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.1)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(10-3*math.cos(sine/10)), math.rad(-5+3*math.cos(sine/10))), 0.1)
			elseif stanceToggle == "Idle2" then

				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65-0.1*math.cos(sine/3),0)*CFrame.Angles(math.rad(10),math.rad(0),math.rad(20-2*math.cos(sine/3))), 0.1)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.23, 0.5, -.56) * CFrame.Angles(math.rad(88+4*math.cos(sine/3)), 0, math.rad(45)), 0.6)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(-10+2*math.cos(sine/6)), 0, 0), 0.8)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-10), 0, 0), 0.3)
				--hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.2) * CFrame.Angles(math.rad(-5-10*math.cos(sine/18)), math.sin(sine/36)/3, 0), 0.3)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, 0, -1.15) * CFrame.Angles(math.rad(-9-2*math.cos(sine/6)), 0, 0), 0.8)
				lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1-0.1*math.cos(sine/3), 0+0.04*math.cos(sine/6)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5)), 0.8)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, -.1) * CFrame.Angles(math.rad(-56-2*math.cos(sine/6)), 0, 0), 0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1-0.05*math.cos(sine/3), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)), 0.8)
			elseif stanceToggle == "Grabbed" then
				grab = true
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(40+2*math.cos(sine/14))), 0.2)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),-.5)*CFrame.Angles(math.rad(90+4*math.cos(sine/14)),math.rad(0),math.rad(-80+4*math.cos(sine/14))), 0.3)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(14+2*math.cos(sine/14)),math.rad(70-4*math.cos(sine/14)),0), 0.3)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.3)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.1)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(10), math.rad(30), math.rad(-20)), 0.3)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(20)), 0.3)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			end
		elseif animpose == "Walking" then
			if stanceToggle == "Grabbed" then
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65,0)*CFrame.Angles(math.rad(120+4*math.cos(sine/2)),math.rad(0),math.rad(-30+4*math.cos(sine/4))), 0.3)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0,0.5, 0)*CFrame.Angles(math.rad(0), math.rad(0),math.rad(0)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
				--rj.C0 = rj.C0:lerp(CFrame.Angles(math.rad(-90)+TiltOnAxis.Z,TiltOnAxis.X,math.rad(180)+-TiltOnAxis.X),.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			elseif stanceToggle ~= "Grabbed" then
				change = 0.4
				corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
				corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
		
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5-.05*math.cos(sine/2), math.sin(sine/4)/4) * CFrame.Angles(-math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(10+7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5+.05*math.cos(sine/2), -math.sin(sine/4)/4)*CFrame.Angles(math.sin(sine/4)/2.8, -math.sin(sine/4)/3, (math.rad(-10-7*math.cos(sine/2))+root.RotVelocity.Y/30)), 0.4)
				larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-0.1+0.1*math.cos(sine/2))*CFrame.Angles(math.rad(-10+4*math.cos(sine/2)), math.rad(0-8*math.cos(sine/4)/2.3), math.rad(0)),0.4)
				hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.12*math.cos(sine/2), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/2)), math.rad(0+10*math.cos(sine/4)/2.3)+root.RotVelocity.Y/30, math.rad(0)+root.RotVelocity.Y/30), 0.4)
				--rj.C0 = rj.C0:lerp(CFrame.Angles(math.rad(-90)+TiltOnAxis.Z,TiltOnAxis.X,math.rad(180)+-TiltOnAxis.X),.1)
				torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.8)
				--lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.9-0.24*math.cos(sine/4)/2.8, -0.05 + math.sin(sine/4)/3.4) * CFrame.Angles(math.rad(-5)-math.sin(sine/4)/2.1, math.rad(0-10*math.cos(sine/4)/2.3), 0-root.RotVelocity.Y/20), .4)
				lleg.Weld.C0 = lleg.Weld.C0:lerp(CFrame.new(-0.5,-1-math.cos(sine/4)*.3,0+math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*AngleThetaL.Z,AngleThetaL.X,(math.sin(sine/4)*3*-AngleThetaL.X)-root.RotVelocity.Y/20),0.8)
				lleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
				--rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.9+0.24*math.cos(sine/4)/2.8, -0.05 + -math.sin(sine/4)/3.4) * CFrame.Angles(math.rad(-5)+math.sin(sine/4)/2.1, math.rad(0-10*math.cos(sine/4)/2.3), 0-root.RotVelocity.Y/20), .4)
				rleg.Weld.C0 = rleg.Weld.C0:lerp(CFrame.new(0.5,-1+math.cos(sine/4)*.3,0-math.sin(sine/4)*.1)*CFrame.Angles(math.sin(sine/4)*3*-AngleThetaR.Z,AngleThetaR.X,(math.sin(sine/4)*3*AngleThetaR.X)-root.RotVelocity.Y/20),0.8)
				rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.8)
			end
		elseif animpose == "Running" then
			change = 0.4
			corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)

			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.24+.6*math.cos(sine/4)/1.4, 0.54, 0+0.8*math.cos(sine/4)) * CFrame.Angles(math.rad(6-140*math.cos(sine/4)/1.2), math.rad(0), math.rad(-20+70*math.cos(sine/4))), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.24+.6*math.cos(sine/4)/1.4, 0.54, 0-0.8*math.cos(sine/4))*CFrame.Angles(math.rad(6+140*math.cos(sine/4)/1.2), math.rad(0), math.rad(20+70*math.cos(sine/4))), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-8+12*math.cos(sine/2)/1.5), math.rad(0+12*math.cos(sine/4)), math.rad(0)),0.2)
			hed.Weld.C1 = Lerp(hed.Weld.C1, CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0)-root.RotVelocity.Y/10,math.rad(0)), 0.5)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1+0.2*math.cos(sine/2)/1.7, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/2)/1.5), math.rad(0-12*math.cos(sine/4))-root.RotVelocity.Y/10, math.rad(0)+root.RotVelocity.Y/20), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -.8-0.4*math.cos(sine/4)/2, math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + -math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.8+0.4*math.cos(sine/4)/2, -math.sin(sine/4)/2) * CFrame.Angles(math.rad(-10) + math.sin(sine/4)/1.2, math.rad(0+12*math.cos(sine/4))+root.RotVelocity.Y/10, 0), .8)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		elseif animpose == "Jumping" then

			corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(20)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0)*CFrame.Angles(math.rad(-10),math.rad(0),math.rad(-20)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(30),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1.1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		elseif animpose == "Freefalling" then

			corw8.C0 = Lerp(corw8.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(180)), 0.3)
			corw8.C1 = Lerp(corw8.C1, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.6, 0)*CFrame.Angles(math.rad(-40),math.rad(20),math.rad(50)), 0.2)
			rarm.Weld.C1 = Lerp(rarm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.36)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.6, 0)*CFrame.Angles(math.rad(110),math.rad(-20),math.rad(-30)), 0.2)
			larm.Weld.C1 = Lerp(larm.Weld.C1, CFrame.new(0, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.5)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),math.rad(0),0), 0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.2)
			torso.Weld.C1 = Lerp(torso.Weld.C1, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.4)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.5, 0.2) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.2)
			lleg.Weld.C1 = Lerp(lleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.5, -0.6) * CFrame.Angles(math.rad(40), math.rad(0), math.rad(0)), 0.2)
			rleg.Weld.C1 = Lerp(rleg.Weld.C1, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.4)
		end
	end
	if animpose == "Walking" then
    if footsteps == false then
        x:Play()
        footsteps = true
    end
    x.Pitch = 1.1
elseif animpose == "Idle" then
    x:Stop()
    footsteps = false
elseif animpose == "Running" then
    x.Pitch = 1.2
    if footsteps == false then
       x:Play()
        footsteps = true
end	
	end
	end)
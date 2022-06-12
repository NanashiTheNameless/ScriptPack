local Color = "White" 
local MainSong = 182784733
local Prefix = ":"

f = Instance.new("Fire") 
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Character = game.Workspace:WaitForChild(Player.Name)
local PrevWalkSpeed = 16
local Go = false
local Stop = false
local Trans = 0
local AttacksEnabled = false
local On = false
local MainTrans = 0
local Model = Instance.new("Model",Character)
local XRayModel = Instance.new("Model",game.Workspace.CurrentCamera)
Model.Name = "Techno Gauntlets"
if Color == "" or Color == nil then
Color = Color3.new(math.random(0,255)/255,math.random(0,255)/255,math.random(0,255)/255)	
end

local ContentProvider = game:GetService("ContentProvider")
local function LoadAssets(AssetList) 
for _, AssetId in pairs(AssetList) do
ContentProvider:Preload("http://www.roblox.com/asset/?id=" .. AssetId)
end end
 
LoadAssets({247985461,138081500,134012322,224339201,168514932,169445602,MainSong})

function SetSurface(Part, Type)
for i,v in pairs(Enum.NormalId:GetEnumItems()) do
Part[v.Name.."Surface"] = Type
end
end

------------------------------
game.Workspace.nicoi42336.Humanoid.MaxHealth = 9999999999999999999999
game.Workspace.nicoi42336.Humanoid.Health = 9999999999999999999999
-----------------------------


Mouse.KeyDown:connect(function(Key)
if Key == "x" and Go == false then
Go = true
PrevWalkSpeed = Character.Humanoid.WalkSpeed

Character.Humanoid.WalkSpeed = 0

end
end)

repeat wait() until Go == true

local Torso = Character:WaitForChild("Torso")
local Head = Character:WaitForChild("Head")
local Root = Character:WaitForChild("HumanoidRootPart")
local RLeg = Character:WaitForChild("Right Leg")
local LLeg = Character:WaitForChild("Left Leg")
local LArm = Character:WaitForChild("Left Arm")
local RArm = Character:WaitForChild("Right Arm")

local SArmTrans = 1
local BMeshSize = 0

local raWeld = Instance.new("Weld",RArm)
raWeld.Part0 = RArm
raWeld.Part1 = Root
raWeld.C0 = CFrame.new(1.5,0,0)
local laWeld = Instance.new("Weld",LArm)
laWeld.Part0 = LArm
laWeld.Part1 = Root
laWeld.C0 = CFrame.new(-1.5,0,0)
local torWeld = Instance.new("Weld",Torso)
torWeld.Part0 = Torso
torWeld.Part1 = Root
torWeld.C0 = CFrame.new(0,0,0)
local heWeld = Instance.new("Weld",Head)
heWeld.Part0 = Head
heWeld.Part1 = Root
heWeld.C0 = CFrame.new(0,-1.5,0)
local rlWeld = Instance.new("Weld",RLeg)
rlWeld.Part0 = RLeg
rlWeld.Part1 = Root
rlWeld.C0 = CFrame.new(-0.5,2,0)
local llWeld = Instance.new("Weld",LLeg)
llWeld.Part0 = LLeg
llWeld.Part1 = Root
llWeld.C0 = CFrame.new(0.5,2,0)

local SArm = Instance.new("Part")
SArm.CanCollide = false
SArm.Anchored = false
SArm.FormFactor = "Custom"
SArm.Size = Vector3.new(1,2,1)
SArm.Transparency = 1
SArm.BrickColor = BrickColor.new("Really black")
SArm.Material = "Grass"
SetSurface(SArm, 10)

local P1 = Instance.new("Part")
P1.CanCollide = false
P1.Anchored = false
P1.FormFactor = "Custom"
P1.Size = Vector3.new(0.4,0.4,1.2)
P1.Transparency = 2
P1.BrickColor = BrickColor.new(Color)
P1.Material = "DiamondPlate"
local P2 = P1:Clone()
P2.Size = Vector3.new(0.1,0.6,1.2)
local P3 = P2:Clone()
local P4 = P2:Clone()

P4.Size = Vector3.new(0.3,3.5,0.3)
P4.BrickColor = BrickColor.new("White")
P4.Material = "DiamondPlate"

-------------------------------------------------------
Mouse.KeyDown:connect(function(key)

       if key == "q" then

P4.BrickColor = BrickColor.new("Really red")
P2.BrickColor = BrickColor.new("Really red")
P3.BrickColor = BrickColor.new("Really red")
f.Parent = P4
f.Size = 4 
f.Heat = 15 
f.Color = Color3.new(1,0,0) 
f.SecondaryColor = Color3.new(0,0,0)
f.Parent = P4
f.Size = 4 
f.Heat = 15 
f.Color = Color3.new(1,0,0) 
f.SecondaryColor = Color3.new(0,0,0)
f.Parent = P4
f.Size = 4 
f.Heat = 15 
f.Color = Color3.new(1,0,0) 
f.SecondaryColor = Color3.new(0,0,0)
f.Parent = P4
f.Size = 4 
f.Heat = 15 
f.Color = Color3.new(1,0,0) 
f.SecondaryColor = Color3.new(0,0,0)
          end
   end)
-------------------------------------------------------
Mouse.KeyDown:connect(function(key)

       if key == "e" then

P4.BrickColor = BrickColor.new("White")
P2.BrickColor = BrickColor.new("White")
P3.BrickColor = BrickColor.new("White")
f:remove()
          end
   end)
-------------------------------------------------------
Mouse.KeyDown:connect(function(key)

       if key == "r" then

P4.BrickColor = BrickColor.new("Really black")
P2.BrickColor = BrickColor.new("Really black")
P3.BrickColor = BrickColor.new("Really black")
f.Parent = P4
f.Size = 4 
f.Heat = 15 
f.Color = Color3.new(0,0,0) 
f.SecondaryColor = Color3.new(0,0,0)
f.Parent = P4
f.Size = 4 
f.Heat = 15 
f.Color = Color3.new(0,0,0) 
f.SecondaryColor = Color3.new(0,0,0)
f.Parent = P4
f.Size = 4 
f.Heat = 15 
f.Color = Color3.new(0,0,0) 
f.SecondaryColor = Color3.new(0,0,0)
f.Parent = P4
f.Size = 4 
f.Heat = 15 
f.Color = Color3.new(0,0,0) 
f.SecondaryColor = Color3.new(0,0,0)
          end
   end)
-------------------------------------------------------

local XRayBall = P2:Clone()
XRayBall.Transparency = 0.7
XRayBall.Size = Vector3.new(0,0,0)
XRayBall.Name = "XRay"



local BMesh = Instance.new("BlockMesh",SArm)
BMesh.Scale = Vector3.new(1.05,0,1.05)

local BaMesh = Instance.new("SpecialMesh",XRayBall)
BaMesh.MeshType = "Sphere"
BaMesh.Scale = Vector3.new(0,0,0)
local BaMeshS = 0

function Sound(id,pitch,vol)
local Sound = Instance.new("Sound",SArm)	
Sound.SoundId = "http://www.roblox.com/asset/?id="..id
Sound.Pitch = pitch
Sound.Volume = vol
Sound:Play()
Sound:Destroy()
end

local SWeld = Instance.new("Weld",SArm)
SWeld.Part0 = SArm
SWeld.Part1 = LArm
SWeld.C0 = CFrame.new(0,0,0)

local P3Weld = Instance.new("Weld",P3)
P3Weld.Part0 = P3
P3Weld.Part1 = LArm
P3Weld.C0 = CFrame.new(0,0.5,0) * CFrame.Angles(0,math.rad(90),0)
local P2Weld = Instance.new("Weld",P2)
P2Weld.Part0 = P2
P2Weld.Part1 = LArm
P2Weld.C0 = CFrame.new(0,0.5,0)
local P4Weld = Instance.new("Weld",P4)
P4Weld.Part0 = P4
P4Weld.Part1 = LArm
P4Weld.C0 = CFrame.new(0,0.9,0)
local XRayWeld = P2Weld:Clone()
XRayWeld.Parent = XRayBall
XRayWeld.Part0 = XRayBall

local SongVol = 0
local SongPlaying = MainSong

local Song = Instance.new("Sound",P4)
Song.Pitch = 1
Song.Volume = 0
Song.SoundId = "http://www.roblox.com/asset/?id="..MainSong
Song.Looped = true


P2.Parent = Model
P3.Parent = Model
P4.Parent = Model
XRayBall.Parent = Model
XRayScale = 0

SArm.Parent = Model

local function lerpNumber(number,number2,alpha)
return number+(number2-number)*alpha
end

function LerpInv(y,s)
Torso.Parent.Head.face.Transparency = lerpNumber(Torso.Parent.Head.face.Transparency,y,s)
for i,v in pairs(Torso.Parent:GetChildren()) do	
if v:IsA("BasePart") then
if v.Name ~= "HumanoidRootPart" then	
v.Transparency = lerpNumber(v.Transparency,y,s)
end
elseif v:IsA("Hat") then
v.Handle.Transparency = lerpNumber(v.Handle.Transparency,y,s)
elseif v:IsA("Tool") then
v.Handle.Transparency = lerpNumber(v.Handle.Transparency,y,s)

end
for i,v in pairs(Model:GetChildren()) do
if v.Name ~= "Dot" then	
if v.Name ~= "XRay" then
v.Transparency = lerpNumber(v.Transparency,y,s)
end end


end		
end	
end



local raCFrames = {CFrame.new(1.5,0,0),CFrame.new(1.39601517, 0.360303879, 0.555915833, 0.931989551, -0.20529367, -0.29874745, 0.252479076, 0.959014237, 0.128631458, 0.260095805, -0.195310652, 0.945623577),
CFrame.new(1.36471558, 0.539541245, -0.380109787, 0.946090817, -0.209714472, 0.246844158, 0.298809469, 0.859214604, -0.415286899, -0.125000447, 0.466658473, 0.875559747)}

local laCFrames = {CFrame.new(-1.5,0,0),CFrame.new(-0.639447212, 1.91169739, -0.15222168, 0.105943426, 0.990355372, -0.0892871916, -0.987699151, 0.115192533, 0.105740994, 0.115006372, 0.0769863129, 0.990377009),
CFrame.new(-1.36499786, 0.539633751, -0.380156517, 0.946090221, 0.209712148, -0.24684839, -0.29880932, 0.859214962, -0.415286332, 0.12500523, 0.46665892, 0.875558794)}

local torCFrames = {CFrame.new(0,0,0),CFrame.new(-0.00325775146, 0.00665140152, 0.0698928833, 1, -1.61967193e-007, 0, 1.61312911e-007, 0.995960414, -0.089793548, 1.4543609e-008, 0.089793548, 0.995960414),
CFrame.new(-0.00286102295, -0.0037727356, 0.0397195816, 0.997430325, -0.00675787451, -0.0713250861, 4.47846872e-007, 0.995542109, -0.0943188742, 0.0716445148, 0.0940764695, 0.992983758)}

local heCFrames = {CFrame.new(0,-1.5,0),
CFrame.new(0.0584411621, -1.45753336, -0.261566162, 0.973214388, -0.103839859, -0.205112755, -3.4352496e-007, 0.892182231, -0.451675534, 0.229899868, 0.439577192, 0.868284464),
CFrame.new(0, -1.53560781, -0.0988893509, 1, 0, 0, 0, 0.975697219, -0.219123363, 0, 0.219123363, 0.975697219)	}

local llCFrames = {CFrame.new(0.499820709, 1.99999762, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),			
CFrame.new(0.3777771, 1.817945, 1.2434454, 0.99596554, -0.0865207091, 0.0238084774, 0.0642304793, 0.502049983, -0.862450182, 0.0626667589, 0.860499859, 0.505581737),		
CFrame.new(0.430587769, 2.02403927, -1.07482052, 0.995964944, -0.0795997232, 0.0414450802, 0.0226593222, 0.669905663, 0.742100477, -0.0868352801, -0.738166928, 0.669006169)}

local rlCFrames = {CFrame.new(-0.500118256, 1.99999762, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),		
CFrame.new(-0.528465271, 1.98910999, -0.934313774, 0.993296921, 0.0685099959, -0.0931003764, 0.0159727186, 0.716350913, 0.69755733, 0.114482187, -0.694368601, 0.710454881),		
CFrame.new(-0.348300934, 1.91479492, 1.2644676, 0.993297696, 0.0865349397, -0.0766260773, -0.110637546, 0.51994437, -0.84700489, -0.033454217, 0.849805653, 0.526033521)}

local IdleC = {
CFrame.new(-0.0793762207, -1.48179674, -0.283092499, 0.962862968, 0.0837253928, 0.256680787, 4.39019914e-007, 0.950701892, -0.310106248, -0.269990683, 0.298589975, 0.915395677),
CFrame.new(1.36719513, 0.657455444, 0.288427353, 0.875748217, -0.464805454, -0.130465046, 0.369583577, 0.819352388, -0.438257605, 0.310601354, 0.335585535, 0.889330745),		
CFrame.new(-0.0909347534, 1.76228046, 1.13138199, 0.915878475, -0.179138198, -0.359271795, 0.0780680403, 0.957312286, -0.278313994, 0.393791974, 0.226854146, 0.89076668)	,	
CFrame.new(-1.16847229, 0.90218544, -0.68898201, 0.87404263, -0.100248091, 0.475394338, -0.242589906, -0.937827349, 0.248253912, 0.42095086, -0.332310379, -0.844020307),	
CFrame.new(-0.111251831, 2.16256332, 0, 0.942082167, 0.335382015, 0, -0.335382015, 0.942082167, 0, 0, 0, 1),
CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)}

local FallingC = {
CFrame.new(0, -1.63543701, -0.255340576, 1, 0, 0, 0, 0.830093086, -0.557624876, 0, 0.557624876, 0.830093086)	,
CFrame.new(1.53540802, 0.0269622803, 0.0183868408, 0.971853375, -0.235586658, 9.58619512e-006, 0.194580361, 0.802669227, -0.563791156, 0.132813975, 0.547924221, 0.825917363),
CFrame.new(0.499816895, 1.61157227, 0.473403931, 1, 0, 0, 0, 0.984138727, -0.177400678, 0, 0.177400678, 0.984138727)		,
CFrame.new(-1.45964432, 0.466743469, 0.537574768, 0.974851072, 0.216143981, 0.0542893596, -0.222517222, 0.93057853, 0.290705502, 0.0123137319, -0.295474887, 0.955271184),
CFrame.new(-0.500125885, 1.17561722, 0.8409729, 1, 0, 0, 0, 0.949583054, -0.313515633, 0, 0.313515633, 0.949583054)		,
CFrame.new(0, -0.172542572, 0.0694923401, 1, 0, 0, 0, 0.968948662, -0.24726218, 0, 0.24726218, 0.968948662)}

local empC = {
CFrame.new(0, -0.785255432, 0.0545005798, 1, 0, 0, 0, 0.929642379, -0.368463218, 0, 0.368463218, 0.929642379),	
CFrame.new(1.17320061, 0.40555954, -0.0933351517, 0.679681659, -0.0534639657, 0.731556237, -0.733507156, -0.0502042733, 0.677825153, 0.000488028541, -0.997307003, -0.0733391196)	,
CFrame.new(0.499816895, 1.85784721, 0.740531921, 1, 0, 0, 0, 0.928925693, -0.370266318, 0, 0.370266318, 0.928925693),
CFrame.new(-1.40374756, 0.044418335, -0.379248619, 0.435406923, -0.265120268, -0.860309243, 0.899925351, 0.153198734, 0.408245802, 0.02356405, -0.95196712, 0.305292219),
CFrame.new(-0.16394043, 2.13654137, -0.135980606, 0.959367752, 0.278665066, 0.044264067, -0.282158703, 0.947489083, 0.150502309, 1.45454955e-008, -0.156876549, 0.987618208)		,
CFrame.new(0, 0.683051109, 0.0891075134, 1, 0, 0, 0, 0.958215058, -0.28604877, 0, 0.28604877, 0.958215058)		}

local tpC = {
CFrame.new(-0.17077446, -1.41084433, 0.149497986, 0.78158921, 0.0502036214, 0.621770084, -0.158534944, 0.98001498, 0.120155178, -0.603311718, -0.192484275, 0.773928165),
CFrame.new(1.07532501, -0.0194911957, 1.17248535, 0.863908291, -0.2610991, -0.430685341, 0.120917775, 0.93764323, -0.325889766, 0.488918662, 0.229461357, 0.84160924),	
CFrame.new(0.490028381, 1.99999905, 0.0984287262, 0.980417013, 0, -0.196932539, 0, 1, 0, 0.196932524, 0, 0.980417013),
CFrame.new(-0.184901714, 1.96233368, 0.428894043, -0.245316431, 0.968402028, -0.0449172519, -0.89443326, -0.243962675, -0.374795169, -0.373910517, -0.0517679304, 0.926019013),
CFrame.new(-0.417531967, 1.89315128, 0.751440048, 0.968755305, -2.95567844e-007, 0.248018742, 0.046204716, 0.982494056, -0.180473357, -0.243676856, 0.186294138, 0.951796234),
CFrame.new(0, 0, 0, 0.990658641, 8.17215025e-008, 0.136365667, -0.0073880991, 0.998531342, 0.053671889, -0.13616538, -0.0541779995, 0.989203632)	
}
gpC1 = {
CFrame.new(3.33786011e-006, -1.56094742, 0.099647522, 1, -1.4305125e-006, -3.57628124e-007, 1.1175581e-006, 0.893496573, -0.449070036, 9.61939691e-007, 0.449070036, 0.893496573),		
CFrame.new(-0.272293091, -0.0194854736, -1.56745148, -0.463313669, 0.343659461, 0.816846788, 0.120923385, 0.937641621, -0.32589215, -0.877905428, -0.0522144139, -0.475978643),		

CFrame.new(0.499810696, 1.92025471, 0.559108734, 1, -1.25169845e-006, 6.85453927e-007, 1.39341648e-006, 0.960128307, -0.27955997, -3.08198878e-007, 0.27955997, 0.960128307),		
CFrame.new(-0.789991379, 1.67785645, 0.352514267, 0.876487255, -0.30892843, 0.369237244, -0.481423557, -0.562434196, 0.672240794, 2.38418579e-007, -0.76695931, -0.641692519),		
CFrame.new(-0.136614323, 2.07575464, 0.180854797, 0.974559844, 0.224121511, -7.15255737e-007, -0.223278642, 0.970880687, -0.086807698, -0.0194558352, 0.0845918357, 0.996231735),		
CFrame.new(-4.76837158e-007, -0.052406311, 0.26486969, 0.999999285, -1.43051147e-006, -3.57627869e-007, -1.49011612e-006, 0.980981946, -0.194096223, -8.94069672e-007, 0.194087625, 0.980989277)	
	
	
	
}
gpC2 = {
CFrame.new(-0.055891037, -1.01591492, 1.47041702, 0.999865532, 0.0104264989, 0.0126604978, 1.76180095e-006, 0.771855712, -0.635797679, -0.016401222, 0.635712266, 0.771751881),
CFrame.new(1.47106457, 0.308122635, -0.647525787, 0.985177696, 0.10065791, 0.138899297, 0.141345367, -0.935146391, -0.324842751, 0.097193189, 0.339660555, -0.935512781)	,	

CFrame.new(0.499810696, 1.92025471, 0.559108734, 1, -1.25169845e-006, 6.85453927e-007, 1.39341648e-006, 0.960128307, -0.27955997, -3.08198878e-007, 0.27955997, 0.960128307),
CFrame.new(-1.29018784, 2.18327594, 1.32539368, 0.999999344, -1.57952309e-006, 6.1839819e-007, -1.63912773e-006, 0.994329393, 0.106317759, -1.40815973e-006, -0.106323779, 0.99433893),
CFrame.new(-0.136613369, 2.13450813, 0.497779846, 0.974561155, 0.22412163, -1.10268752e-006, -0.191702649, 0.833589315, -0.518052936, -0.116105966, 0.504874587, 0.855348527),		
CFrame.new(-0.433364391, -0.487781525, 1.02676582, 0.92130214, -0.365326852, -0.133186653, -1.71115425e-006, 0.342515379, -0.939520717, 0.388845652, 0.865572035, 0.31555602)}

local beamC = { -- H, LL,RA,RL,t
CFrame.new(-0.222414017, -1.29304552, 0.239246368, 0.917730808, 0.139270499, -0.371986479, -0.0861123949, 0.984002829, 0.155958816, 0.387756169, -0.11109557, 0.915042579),
CFrame.new(0.499814987, 1.98114634, 0.00710105896, 1, 6.01195254e-008, 1.61461458e-006, 2.3180786e-007, 0.983631134, -0.180193663, -1.59901822e-006, 0.180193663, 0.983631134),
CFrame.new(1.47606468, 0.266992569, -0.438642502, 0.986800849, -0.156413898, 0.0419398472, 0.161939055, 0.953132451, -0.255566835, -2.55439936e-008, 0.258985221, 0.965881288),
CFrame.new(-0.35091114, 2.14157915, -0.054731369, 0.946071506, 0.15739122, -0.283154994, -0.0704282001, 0.953068793, 0.294448406, 0.316209763, -0.258627146, 0.912755966)	,
CFrame.new(-0.0286221504, 0.0777857304, 0.0665493011, 0.916332364, -0.00751364045, -0.400348097, -0.00537706725, 0.999502897, -0.0310656801, 0.400382489, 0.0306191836, 0.915836394),	

}


local raTarget = raCFrames[1]
local laTarget = laCFrames[1]
local torTarget = torCFrames[1]
local heTarget = heCFrames[1]
local rlTarget = rlCFrames[1]
local llTarget = llCFrames[1]

local rlWalking = 2
local llWalking = 2

local Walking = false
local Idle = false
local Fall = false

local raSpeed = 0.1
local laSpeed = 0.1
local toSpeed = 0.1
local heSpeed = 0.1
local llSpeed = 0.1
local rlSpeed = 0.1

game:GetService('RunService').RenderStepped:connect(function()
Model.Parent = Character
Song.Volume = lerpNumber(Song.Volume,SongVol,0.1)

SArm.Transparency = lerpNumber(SArm.Transparency,SArmTrans,0.20)
P3.Transparency = SArm.Transparency
P2.Transparency = SArm.Transparency
P4.Transparency = SArm.Transparency
BaMeshS = lerpNumber(BaMeshS,XRayScale,0.05)
BaMesh.Scale = Vector3.new(BaMeshS,BaMeshS,BaMeshS)


if On then
LerpInv(Trans,0.1)
end

for i,v in pairs(XRayModel:GetChildren()) do
v:Destroy()	
end

if XRayScale == 60 then
for i,v in pairs(game.Players:GetChildren()) do
local Char = v.Character
if v ~= Player then
for i,p in pairs(Char:GetChildren()) do
if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then
if p.Transparency > 0 then
local Trans = 1 - p.Transparency 
local Xrayd = p:Clone()
for i,v in pairs(Xrayd:GetChildren()) do
v:Destroy()	
end
Xrayd.Transparency = Trans
Xrayd.Anchored = true
Xrayd.CanCollide = false
Xrayd.Material = "DiamondPlate"
Xrayd.BrickColor = BrickColor.new(Color)
Xrayd.CFrame = p.CFrame
Xrayd.Parent = XRayModel
	
end	
end	
end	end
end end



BMesh.Scale = BMesh.Scale:lerp(Vector3.new(1.05,BMeshSize,1.05),0.2)
BMesh.Offset = Vector3.new(0,BMesh.Scale.Y - 1.025,0)
if not Idle or Stop == true then
raWeld.C0 = raWeld.C0:lerp(raTarget,raSpeed) 
laWeld.C0 = laWeld.C0:lerp(laTarget,laSpeed) 
torWeld.C0 = torWeld.C0:lerp(torTarget,toSpeed) 
heWeld.C0 = heWeld.C0:lerp(heTarget,heSpeed)
rlWeld.C0 = rlWeld.C0:lerp(rlTarget,rlSpeed) 
llWeld.C0 = llWeld.C0:lerp(llTarget,llSpeed) 
end
if Stop ~= true then
if Fall then
raWeld.C0 = raWeld.C0:lerp(FallingC[2],raSpeed) 
laWeld.C0 = laWeld.C0:lerp(FallingC[4],laSpeed) 
torWeld.C0 = torWeld.C0:lerp(FallingC[6],toSpeed) 
heWeld.C0 = heWeld.C0:lerp(FallingC[1],heSpeed)
rlWeld.C0 = rlWeld.C0:lerp(FallingC[5],rlSpeed) 
llWeld.C0 = llWeld.C0:lerp(FallingC[3],llSpeed) 

elseif Walking then
rlWeld.C0 = rlWeld.C0:lerp(rlCFrames[rlWalking],rlSpeed) 
llWeld.C0 = llWeld.C0:lerp(llCFrames[llWalking],llSpeed) 
elseif Idle then
raWeld.C0 = raWeld.C0:lerp(IdleC[2] * CFrame.new(0,math.sin(tick())/15,0)* CFrame.Angles(0,0,math.sin(tick())/10),raSpeed) 
laWeld.C0 = laWeld.C0:lerp(IdleC[4] * CFrame.new(0,math.sin(tick())/15,0) * CFrame.new(math.random(-1000,1000)/7000,math.random(-1000,1000)/7000,math.random(-1000,1000)/7000)* CFrame.Angles(0,0,-math.sin(tick())/10),laSpeed) 
torWeld.C0 = torWeld.C0:lerp(IdleC[6] * CFrame.new(0,math.sin(tick())/15,0),toSpeed) 
heWeld.C0 = heWeld.C0:lerp(IdleC[1] * CFrame.new(0,math.sin(tick())/15,0),heSpeed)
rlWeld.C0 = rlWeld.C0:lerp(IdleC[5],rlSpeed) 
llWeld.C0 = llWeld.C0:lerp(IdleC[3],llSpeed) 
end	
end

end)
wait(0.5)
raTarget = raCFrames[2]
laTarget = laCFrames[2]
torTarget = torCFrames[2]
heTarget = heCFrames[2]
wait(0.5)
BMeshSize = 0.6
SArmTrans = 0
Sound(247985461,math.random(800,1100)/1000,1)

wait(2)
Character.Humanoid.WalkSpeed = PrevWalkSpeed
	game:GetService("Chat"):Chat(P4, "Loading Nicoi's Gloove...", "Red")

Song:Play()
SongVol = 1

Character:WaitForChild("Humanoid").Running:connect(function(speed)
if speed >= 1 then
Walking = true
Idle = false
else
Walking = false
Idle = true
end
end)

Mouse.KeyDown:connect(function(Key)
	
if AttacksEnabled == true then	
if Key == "z" and Stop == false then
Stop = true
Character.Humanoid.WalkSpeed = 0 
Character.Humanoid.JumpPower = 0
raTarget = empC[2]
laTarget = empC[4]
torTarget = empC[6]
heTarget = empC[1]
rlTarget = empC[5]
llTarget = empC[3]

wait(1)

for i = 1,3 do
raTarget = empC[2] * CFrame.new(math.random(-100,100)/200,math.random(-100,100)/500,0)
Sound(138081500,math.random(600,800)/1000,0.5)
wait(0.2)
end

local EmpCFrame = SArm.CFrame
local EmpBlast = Instance.new("Part",workspace)
EmpBlast.Material = "Neon"
EmpBlast.FormFactor = "Custom"
EmpBlast.CanCollide = false
EmpBlast.Anchored = true
EmpBlast.BrickColor = BrickColor.new(Color)
EmpBlast.Shape = "Ball"
EmpBlast.Size = Vector3.new(0,0,0)
EmpBlast.CFrame = EmpCFrame
Sound(134012322,1,1)
Sound(224339201,math.random(900,1100)/1000,1)

for i,v in pairs(game.Players:GetChildren()) do
local Human = v.Character:FindFirstChild("Humanoid")	
local OTorso = v.Character:FindFirstChild("Torso")	

if Human and OTorso and v ~= Player then
local Mag = (Torso.Position - OTorso.Position).Magnitude
if Mag <= 60 then
Human.PlatformStand = true
Human.Health = Human.Health - math.random(5,15)

end
end
end



for No = 0,1,0.05 do
EmpBlast.Size = EmpBlast.Size:lerp(Vector3.new(60,60,60),0.05) 
EmpBlast.CFrame = EmpCFrame
EmpBlast.Transparency = No	
game:GetService("RunService").RenderStepped:wait()
end
EmpBlast:Destroy()
wait(0.2)
Stop = false
Character.Humanoid.WalkSpeed = PrevWalkSpeed 
Character.Humanoid.JumpPower = 50
raTarget = raCFrames[3]
laTarget = laCFrames[3]
torTarget = torCFrames[3]
heTarget = heCFrames[3]
rlTarget = rlCFrames[1]
llTarget = llCFrames[1]
elseif Key == "c" and not Stop then
Stop = true
Character.Humanoid.WalkSpeed = 0 
Character.Humanoid.JumpPower = 0
raTarget = tpC[2]
laTarget = tpC[4]
torTarget = tpC[6]
heTarget = tpC[1]
rlTarget = tpC[5]
llTarget = tpC[3]	
wait(1)
local TPBallCFrame = P2.CFrame
local TPBall = Instance.new("Part",workspace)
TPBall.Material = "Grass"
TPBall.FormFactor = "Custom"
TPBall.CanCollide = false
TPBall.Anchored = true
TPBall.BrickColor = BrickColor.new(Color)
TPBall.Shape = "Ball"
TPBall.Size = Vector3.new(25,25,25)
TPBall.CFrame = TPBallCFrame
local TPBall2 = TPBall:Clone()
TPBall2.Parent = workspace

Sound(134012322,1.5,1)
Sound(224339201,math.random(1500,1600)/1000,1)

Character:MoveTo(Mouse.Hit.p)
local TPBallCFrame2 = P2.CFrame

TPBall2.CFrame = TPBallCFrame2

for No = 0,1,0.05 do
TPBall.Size = TPBall.Size:lerp(Vector3.new(0,0,0),0.05) 
TPBall2.Size = TPBall2.Size:lerp(Vector3.new(0,0,0),0.05) 

TPBall.CFrame = TPBallCFrame
TPBall2.CFrame = TPBallCFrame2

TPBall.Transparency = No	
TPBall2.Transparency = No	

game:GetService("RunService").RenderStepped:wait()	
end
TPBall:Destroy()	
TPBall2:Destroy()	
Character.Humanoid.WalkSpeed = PrevWalkSpeed 
Character.Humanoid.JumpPower = 50
raTarget = raCFrames[3]
laTarget = laCFrames[3]
torTarget = torCFrames[3]
heTarget = heCFrames[3]
rlTarget = rlCFrames[1]
llTarget = llCFrames[1]
Stop = false
elseif Key == "g" and not Stop then
Stop = true
Character.Humanoid.WalkSpeed = 0 
Character.Humanoid.JumpPower = 0
raTarget = gpC1[2]
laTarget = gpC1[4]
torTarget = gpC1[6]
heTarget = gpC1[1]
rlTarget = gpC1[5]
llTarget = gpC1[3]
wait(0.5)
raSpeed = 0.4
laSpeed = 0.4
toSpeed = 0.4
heSpeed = 0.4
llSpeed = 0.4
rlSpeed = 0.4


raTarget = gpC2[2]
laTarget = gpC2[4]
torTarget = gpC2[6]
heTarget = gpC2[1]
rlTarget = gpC2[5]
llTarget = gpC2[3]
Sound(169445602,math.random(900,1100)/1000,1)
local Boom = Instance.new("Part")
Boom.Anchored = true
Boom.CanCollide = false
Boom.BrickColor = BrickColor.new(Color)
local BoomMesh = Instance.new("SpecialMesh",Boom)
BoomMesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
BoomMesh.Scale = Vector3.new(0,0,0)
Boom.CFrame = Root.CFrame * CFrame.new(1.5,-2,-2)
Boom.Parent = workspace


function Spread()
	coroutine.wrap(function()
		for No = 0,1,0.05 do
		BoomMesh.Scale = BoomMesh.Scale:lerp(Vector3.new(10,5,10),0.2) 
		Boom.Transparency = No	
		game:GetService("RunService").RenderStepped:wait()
		end
		Boom:Destroy()
	end)()
end

for i,v in pairs(game.Players:GetChildren()) do
local Human = v.Character:FindFirstChild("Humanoid")	
local OTorso = v.Character:FindFirstChild("Torso")	

if Human and OTorso and v ~= Player then
local Mag = (Torso.Position - OTorso.Position).Magnitude
if Mag <= 10 then
Human.PlatformStand = true
Human.Health = Human.Health - math.random(50,70)
end
end
end

Spread()


wait(1)


raSpeed = 0.1
laSpeed = 0.1
toSpeed = 0.1
heSpeed = 0.1
llSpeed = 0.1
rlSpeed = 0.1
Stop = false
Character.Humanoid.WalkSpeed = PrevWalkSpeed 
Character.Humanoid.JumpPower = 50
raTarget = raCFrames[3]
laTarget = laCFrames[3]
torTarget = torCFrames[3]
heTarget = heCFrames[3]
rlTarget = rlCFrames[1]
llTarget = llCFrames[1]
end end

if Key == "t" and Stop == false then
if Trans == 1.1 then
	Character.Humanoid.WalkSpeed = PrevWalkSpeed 
AttacksEnabled = true

Trans = -0.1
else 
	Character.Humanoid.WalkSpeed = PrevWalkSpeed*1.5
local HeadClone = Head:Clone()
HeadClone.Anchored = true
for i,v in pairs(HeadClone:GetChildren()) do
	v:Destroy()
end
HeadClone.Transparency = 1
HeadClone.CanCollide = false
HeadClone.Parent = workspace
	game:GetService("Chat"):Chat(HeadClone, "You Will Die...", "Red")
	
	
	
AttacksEnabled = false
Trans = 1.1

for i = 1,60,1 do
HeadClone.CFrame = Head.CFrame
game:GetService("RunService").RenderStepped:wait()
end

HeadClone.Parent = nil

end
elseif Key == "ra" then
if XRayScale == 0 then	
XRayScale = 0	
else
XRayScale = 0	
end	

end
end)

Character:WaitForChild("Humanoid").FreeFalling:connect(function(isJumping)
if isJumping then
Fall = true
else
Fall = false	
end
end)



Walking = false
Idle = true
raTarget = raCFrames[3]
laTarget = laCFrames[3]
torTarget = torCFrames[3]
heTarget = heCFrames[3]

function Dots()
coroutine.wrap(function()	
local Dot = P1:Clone()
Dot.Name = "Dot"
Dot.Size = Vector3.new(0,0,0)
Dot.CFrame = P2.CFrame * CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360))) * CFrame.new(0,4,0)
Dot.Parent = Model
Dot.Anchored = true
for i = 0,1,0.05 do
Dot.CFrame = Dot.CFrame:lerp(P2.CFrame,0.1) 
Dot.Transparency = i
game:GetService("RunService").RenderStepped:wait()
end
Dot:Destroy()
end)()
end





On = true
AttacksEnabled = true

function LocalText(txt)
game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = txt; -- Required. Has to be a string!
})
end



Player.Chatted:connect(function(msg)
if string.lower(string.sub(msg,1,9 + #Prefix)) == Prefix..[[song stop]] then
Song:Stop()
Song.Parent = nil

LocalText("Stopping Song")

elseif 	string.lower(string.sub(msg,1,9 + #Prefix)) == Prefix..[[song play]] then
	Song.Parent = P4

Song:Play()
LocalText("Playing Song")

elseif 	string.lower(string.sub(msg,1,8 + #Prefix)) == Prefix..[[song id ]] then
local Number = tonumber(string.lower(string.sub(msg,9+ #Prefix,#msg )))
if Number ~= nil then
local Asset = game:GetService("MarketplaceService"):GetProductInfo(Number)
if Asset.AssetTypeId == 3 then
local SongC = Song:Clone()	
Song:Stop()
Song:Destroy()
SongC.Parent = P4		
SongC.SoundId = "http://www.roblox.com/asset/?id="..Number
SongC:Play()
Song = SongC
LocalText("Now playing: "..Asset.Name)
else
LocalText("Invalid song ID")
Song.SoundId = ""
Song.Parent = nil
end
end	
elseif 	string.lower(string.sub(msg,1,9 + #Prefix)) == Prefix..[[song vol ]] then
local Number = tonumber(string.lower(string.sub(msg,10+ #Prefix,#msg )))
if Number ~= nil then
SongVol = Number/100
LocalText("Song Volume is now "..Number)

end	
end
		end)

while wait(0.3) do

if Trans ~= 1.1 then
--Dots()
end

if rlWalking == 1 then	
rlWalking = 2
llWalking = 2

elseif rlWalking == 3 then
rlWalking = 2
llWalking = 2


elseif rlWalking == 2 then
rlWalking = 3
llWalking = 3

	
end
	
end
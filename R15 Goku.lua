wait(1)
canspirit = false
 goup = 1
spiritballenergy = false
local spirit1 = false
local spirit2 = false
local sizeup = 38
local ringgo = 18
local potara = false
local potara1 = false
local potara2 = false
local potara3 = false
local potara4 = false
local hipheight = false
local idle7 = true
local idle6 = true
local idle5 = false
local noidle = false
local noidle1 = false
local fuse = false
local bigkamehameha1 = false
local bigkamehameha2 = false
local idle2 = false
local idle3 = false
local com1 = 10
local com2 = -5
local fuse1 = false
local fuse2 = false
local fuse3 = false
local fuse4 = false
local fuse5 = false
local fuse6 = false
local fuse7 = false
local fuse8 = false
local ssj4 = false
local headcolor = 0
local walk11 = true
local great = false
local size = 0
local size2 = 0
local kicharging = false
local ki = 100
local ScreenGui = Instance.new("ScreenGui")
local Gui = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

Gui.Name = "Gui"
Gui.Parent = ScreenGui
Gui.BackgroundColor3 = Color3.new(1, 1, 1)

Frame.Parent = Gui
Frame.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 40, 0, 20)
Frame.Size = UDim2.new(0, 250, 0, 30)
Frame_3.Parent = Gui
Frame_3.BackgroundColor3 = Color3.new(0, 0, 1)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0, 50, 0, 30)
Frame_3.Size = UDim2.new(0, 230, 0, 10)

local rock3 = false
local rock2 = false
local rock = false
local auranum3 = 0
local auranum4 = 0

local turn = 1
local Player = game.Players.LocalPlayer
local Character = game.Players.LocalPlayer.Character
local Create = LoadLibrary("RbxUtility").Create
CFuncs = {	
	
	
	
	
	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 6)
			end))
		end;
	};
	
	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {
	
	};
}



New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end


CV="Really black"
ArtificialHB = Create("BindableEvent", script){
	Parent = script,
	Name = "Heartbeat",
}
	
function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

function chatfunc(text)
local chat = coroutine.wrap(function()
if Character:FindFirstChild("TalkingBillBoard")~= nil then
Character:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,255)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "Fantasy"
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = Color3.new(255,255,255)
tecks3.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do

tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
wait(0.01)
end
wait(2)
for i = 1, 50 do

tecks2.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks2.Rotation = tecks2.Rotation - .8
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks3.Rotation = tecks2.Rotation + .8
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
naeeym2:Destroy()
end)
chat()

end
function onChatted(msg)
chatfunc(msg)

end
Player.Chatted:connect(onChatted)

abss = Instance.new("BillboardGui",Character)
abss.Size = UDim2.new(10,0,10,0)
abss.Enabled = false
abss.Name = "ROCKYMOUNT"
imgl = Instance.new("ImageLabel",abss)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://711463989"
imgl.BackgroundTransparency = 1
imgl.ImageColor3 = Color3.new(0,255,255)
img2 = Instance.new("ImageLabel",abss)
img2.Position = UDim2.new(0,0,0,0)
img2.Size = UDim2.new(1,0,1,0)
img2.Image = "rbxassetid://711463989"
img2.BackgroundTransparency = 1
img2.ImageColor3 = Color3.new(0,255,255)


local kamehameha5 = false
local ssjg = false
local ssjbkaio = false
local GroundShake = false
local GroundShake2 = false
local transform5 = false
local auranum = 0
local auranum1 = 0
local auranum2 = 0
local ssjbkaiox10 = false
local auracan3 = true
local auraon = true
local ssjb = false
local kiblastdone = true
local kigo = 2.3
local num1 = 16
local go11 = 2.3
local grab = false
local up = 0
local number = 1
local punch1 = false
local punch2 = false
local punch3 = false
local punch4 = false
local punched1 = true
local punched2 = false
local punched3 = false
local punched4 = false
local kiblast1 = false
local kiblast2 = false
local kiblast3 = false
local kiblast4 = false
local kick1 = false
local kick2 = false
local kick3 = false
local kick4 = false
local uppercut1 = false
local uppercut2 = false
local knockdown1 = false
local knockdown2 = false
local foward = false
local nill = true
local canfly1 = false
local canfly = true
local flying1 = true
local aim = false
local cam=workspace.Camera
local ssj1 = false
local ssj2 = false
local ssj3 = false
local onaura = true
local transform1 = false
local transform2 = false
local transform3 = false
local transform3 = false
local canjump = true
local num = 0
local jumped = false
local beamgo = 6
local beamgo1 = 1
local startk = false
local beam1 = false
local beam2 = false
local p = game.Players.LocalPlayer
local char = p.Character
local rad = math.rad
local hum = char.Humanoid
local kamehameha1 = false
local kamehameha2 = false
local kamehameha3 = false
local kamehameha4 = false
local idle = true
local walk = true
local walk1 = true
local runAnimKeyframeHandler = nil
local mouse = p:GetMouse()
local v3 = Vector3.new
local ns = NumberSequence.new
local nr = NumberRange.new
local new = Instance.new
local cf = CFrame.new
local cfa = CFrame.Angles
local bc = BrickColor.new
local canattack = true
local Character = char
local Humanoid = Character:WaitForChild("Humanoid")
local pose = "Standing"

local currentAnim = ""
local currentAnimInstance = nil
local currentAnimTrack = nil
local currentAnimKeyframeHandler = nil
local currentAnimSpeed = 1.0

local runAnimTrack = nil
nose = Instance.new("Decal",char.Head)
nose.Texture = "rbxassetid://765424161"
mouth = Instance.new("Decal",char.Head)
mouth.Texture = "rbxassetid://932140764"
--open

--rbxassetid://765424161
char.Head.face.Texture= "rbxassetid://765423946"
--ssj
--rbxassetid://765493484
--ssj3
--rbxassetid://897514186
--ssjb
--rbxassetid://959519291
local animTable = {}
local animNames = { 
	idle = 	{	
	{ id = "http://www.roblox.com/asset/?id=0", weight = 1 },
	{ id = "http://www.roblox.com/asset/?id=0", weight = 1 },
	{ id = "http://www.roblox.com/asset/?id=0", weight = 9 }
	},
	walk = 	{ 	
	{ id = "http://www.roblox.com/asset/?id=507777826", weight = 10 } 
	}, 
	run = 	{
	{ id = "http://www.roblox.com/asset/?id=507767714", weight = 10 } 
	}, 
	swim = 	{
	{ id = "http://www.roblox.com/asset/?id=507784897", weight = 10 } 
	}, 
	swimidle = 	{
	{ id = "http://www.roblox.com/asset/?id=507785072", weight = 10 } 
	}, 
	jump = 	{
	{ id = "http://www.roblox.com/asset/?id=507765000", weight = 10 } 
	}, 
	fall = 	{
	{ id = "http://www.roblox.com/asset/?id=507767968", weight = 10 } 
	}, 
	climb = {
	{ id = "http://www.roblox.com/asset/?id=507765644", weight = 10 } 
	}, 
	sit = 	{
	{ id = "http://www.roblox.com/asset/?id=507768133", weight = 10 } 
	},	
	toolnone = {
	{ id = "http://www.roblox.com/asset/?id=507768375", weight = 10 } 
	},
	toolslash = {
	{ id = "http://www.roblox.com/asset/?id=522635514", weight = 10 } 
	},
	toollunge = {
	{ id = "http://www.roblox.com/asset/?id=522638767", weight = 10 } 
	},
	wave = {
	{ id = "http://www.roblox.com/asset/?id=507770239", weight = 10 } 
	},
	point = {
	{ id = "http://www.roblox.com/asset/?id=507770453", weight = 10 } 
	},
	dance = {
	{ id = "http://www.roblox.com/asset/?id=507771019", weight = 10 }, 
	{ id = "http://www.roblox.com/asset/?id=507771955", weight = 10 }, 
	{ id = "http://www.roblox.com/asset/?id=507772104", weight = 10 } 
	},
	dance2 = {
	{ id = "http://www.roblox.com/asset/?id=507776043", weight = 10 }, 
	{ id = "http://www.roblox.com/asset/?id=507776720", weight = 10 }, 
	{ id = "http://www.roblox.com/asset/?id=507776879", weight = 10 } 
	},
	dance3 = {
	{ id = "http://www.roblox.com/asset/?id=507777268", weight = 10 }, 
	{ id = "http://www.roblox.com/asset/?id=507777451", weight = 10 }, 
	{ id = "http://www.roblox.com/asset/?id=507777623", weight = 10 } 
	},
	laugh = {
	{ id = "http://www.roblox.com/asset/?id=507770818", weight = 10 } 
	},
	cheer = {
	{ id = "http://www.roblox.com/asset/?id=507770677", weight = 10 } 
	},
}

-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
local emoteNames = { wave = false, point = false, dance = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

---------------------------------------------------
local LeftUpperArm = char.LeftUpperArm
local LeftShoulder = char.LeftUpperArm.LeftShoulder
local LeftLowerArm = char.LeftLowerArm
local LeftElbow = char.LeftLowerArm.LeftElbow
--------------------------------------------------------
local LeftUpperLeg = char.LeftUpperLeg
local LeftHip = char.LeftUpperLeg.LeftHip
local LeftLowerLeg = char.LeftLowerLeg
local LeftKnee = char.LeftLowerLeg.LeftKnee
----------------------------------------------------------
local RightUpperArm = char.RightUpperArm
local RightShoulder = char.RightUpperArm.RightShoulder
local RightLowerArm = char.RightLowerArm
local RightElbow = char.RightLowerArm.RightElbow
----------------------------------------------------------
local RightUpperLeg = char.RightUpperLeg
local RightHip = char.RightUpperLeg.RightHip
local RightLowerLeg = char.RightLowerLeg
local RightKnee = char.RightLowerLeg.RightKnee
----------------------------------------------------------
local UpperTorso = char.UpperTorso
local LowerTorso = char.LowerTorso
local Root = char.LowerTorso.Root
local RootPart = char.HumanoidRootPart
local LeftHand = char.LeftHand
local RightHand = char.RightHand
local LeftFoot = char.LeftFoot
local RightFoot = char.RightFoot
--------------------------------------------
local Head = char.Head
local Neck = char.Head.Neck
local oldAnim = currentAnim

--Sounds
--Folder
soundfolder = Instance.new("Model",char)
soundfolder.Name = "Sound Folder"
--Sounds
kamecharge = Instance.new("Sound",soundfolder)
kamecharge.Volume = 10
kamecharge.Name = "kamecharge"
kamecharge.Looped = false
kamecharge.SoundId = "rbxassetid://908489666"
kamefire = Instance.new("Sound",soundfolder)
kamefire.Volume = 10
kamefire.Name = "kamefire"
kamefire.Looped = false
kamefire.TimePosition = 0.5
kamefire.SoundId = "rbxassetid://977360812"
kamehit = Instance.new("Sound",soundfolder)
kamehit.Volume = 30
kamehit.Name = "kamehit"
kamehit.Looped = false
kamehit.SoundId = "rbxassetid://908484148"
ssjaura = Instance.new("Sound",soundfolder)
ssjaura.Volume = 5
ssjaura.Name = "ssjaura"
ssjaura.Looped = true
ssjaura.SoundId = "rbxassetid://891397456"
ssjauraburst = Instance.new("Sound",soundfolder)
ssjauraburst.Volume = math.huge
ssjauraburst.Name = "ssjauraburst"
ssjauraburst.Looped =false
ssjauraburst.SoundId = "rbxassetid://437393965"
ssjmusic = Instance.new("Sound",soundfolder)
ssjmusic.Volume = 0
ssjmusic.Name = "ssjmusic"
ssjmusic.Looped = true
ssjmusic.SoundId = "rbxassetid://390946253"
ssj2music = Instance.new("Sound",soundfolder)
ssj2music.Volume = 0
ssj2music.Name = "ssj2music"
ssj2music.Looped = true
ssj2music.SoundId = "rbxassetid://144377132"
ssj2aura = Instance.new("Sound",soundfolder)
ssj2aura.Volume = 5
ssj2aura.Name = "ssj2aura"
ssj2aura.Looped = true
ssj2aura.SoundId = "rbxassetid://850205092"
ssj3music = Instance.new("Sound",soundfolder)
ssj3music.Volume = 0
ssj3music.Name = "ssj3music"
ssj3music.Looped = true
ssj3music.SoundId = "rbxassetid://156056027"
KiCharge = Instance.new("Sound",soundfolder)
KiCharge.Volume = 10000
KiCharge.Name = "KiCharge"
KiCharge.Looped = true
KiCharge.TimePosition = 0.7
KiCharge.SoundId = "rbxassetid://700499952"

KiCharge2 = Instance.new("Sound",soundfolder)
KiCharge2.Volume = 10000
KiCharge2.Name = "KiCharge2"
KiCharge2.Looped = false
KiCharge2.TimePosition = 7.3

KiCharge2.SoundId = "rbxassetid://700499952"
Lightning = Instance.new("Sound",soundfolder)
Lightning.Volume = 10000
Lightning.TimePosition = 1
Lightning.Name = "Lightning"
Lightning.Looped = false
Lightning.SoundId = "http://www.roblox.com/asset/?id=12222030"
AuraOff = Instance.new("Sound",soundfolder)
AuraOff.Volume = 10000
AuraOff.Name = "AuraOff"
AuraOff.Looped = false
AuraOff.SoundId = "http://www.roblox.com/asset/?id=922710675"
PowerDown = Instance.new("Sound",soundfolder)
PowerDown.Volume = 10000
PowerDown.Name = "PowerDown"
PowerDown.Looped = false
PowerDown.SoundId = "http://www.roblox.com/asset/?id=598621913"
punchsound1 = Instance.new("Sound",soundfolder)
punchsound1.Volume = 10
punchsound1.Name = "punchsound1"
punchsound1.Looped = false
punchsound1.SoundId = "rbxassetid://137579113"
punchsound2 = Instance.new("Sound",soundfolder)
punchsound2.Volume = 10
punchsound2.Name = "punchsound2"
punchsound2.Looped = false
punchsound2.SoundId = "rbxassetid://441202925"
kiblastsound = Instance.new("Sound",soundfolder)
kiblastsound.Volume = 10000
kiblastsound.Name = "kiblastsound"
kiblastsound.Looped = false
kiblastsound.SoundId = "http://www.roblox.com/asset/?id=586187912"
screaming = Instance.new("Sound",soundfolder)
screaming.Volume = 10
screaming.Name = "screaming"
screaming.Looped = false
screaming.SoundId = "rbxassetid://527276541"
screaming1 = Instance.new("Sound",soundfolder)
screaming1.Volume = 10
screaming1.Name = "screaming1"
screaming1.Looped = false
screaming1.SoundId = "rbxassetid://975468335"
FastPunch = Instance.new("Sound",soundfolder)
FastPunch.Volume = 10000
FastPunch.Name = "FastPunch"
FastPunch.Looped = false
FastPunch.SoundId = "http://www.roblox.com/asset/?id=253255373"
GiantStep = Instance.new("Sound",soundfolder)
GiantStep.Volume = 10000
GiantStep.Name = "GiantStep"
GiantStep.Looped = false
GiantStep.SoundId = "http://www.roblox.com/asset/?id=863810402"
StrongPunch = Instance.new("Sound",soundfolder)
StrongPunch.Volume = 10000
StrongPunch.Name = "StrongPunch"
StrongPunch.Looped = false
StrongPunch.SoundId = "http://www.roblox.com/asset/?id=735524546"
KamehamehaVoice = Instance.new("Sound",soundfolder)
KamehamehaVoice.Volume = 10000
KamehamehaVoice.Name = "KamehamehaVoice"
KamehamehaVoice.Looped = false
KamehamehaVoice.SoundId = "http://www.roblox.com/asset/?id=130777838"
KamehamehaVoice6 = Instance.new("Sound",soundfolder)
KamehamehaVoice6.Volume = 10000
KamehamehaVoice6.Name = "KamehamehaVoice6"
KamehamehaVoice6.Looped = false
KamehamehaVoice6.SoundId = "http://www.roblox.com/asset/?id=670166779"
KamehamehaVoice3 = Instance.new("Sound",soundfolder)
KamehamehaVoice3.Volume = 10000
KamehamehaVoice3.Name = "KamehamehaVoice3"
KamehamehaVoice3.Looped = false
KamehamehaVoice3.SoundId = "http://www.roblox.com/asset/?id=1001695447"
KamehamehaVoice2 = Instance.new("Sound",soundfolder)
KamehamehaVoice2.Volume = 10000
KamehamehaVoice2.Name = "KamehamehaVoice2"
KamehamehaVoice2.Looped = false
KamehamehaVoice2.SoundId = "http://www.roblox.com/asset/?id=1000078112"
KamehamehaVoice1 = Instance.new("Sound",soundfolder)
KamehamehaVoice1.Volume = 10000
KamehamehaVoice1.Name = "KamehamehaVoice1"
KamehamehaVoice1.Looped = false
KamehamehaVoice1.SoundId = "http://www.roblox.com/asset/?id=1000028467"
KamehamehaVoice4 = Instance.new("Sound",soundfolder)
KamehamehaVoice4.Volume = 10000
KamehamehaVoice4.Name = "KamehamehaVoice4"
KamehamehaVoice4.Looped = false
KamehamehaVoice4.SoundId = "http://www.roblox.com/asset/?id=1006793453"
ssjbaura = Instance.new("Sound",soundfolder)
ssjbaura.Volume = 1
ssjbaura.Name = "ssjbaura"
ssjbaura.Looped = true
ssjbaura.SoundId = "rbxassetid://443386048"
ssjbauraburst = Instance.new("Sound",soundfolder)
ssjbauraburst.Volume = 1
ssjbauraburst.Name = "ssjbauraburst"
ssjbauraburst.Looped = false
ssjbauraburst.SoundId = "rbxassetid://874183151"
ssjbmusic = Instance.new("Sound",soundfolder)
ssjbmusic.Volume = 0
ssjbmusic.Name = "ssjbmusic"
ssjbmusic.Looped = true
ssjbmusic.SoundId = "rbxassetid://180572775"
ssjbkaioken = Instance.new("Sound",soundfolder)
ssjbkaioken.Volume = 10000
ssjbkaioken.Name = "ssjbkaioken"
ssjbkaioken.Looped = false
ssjbkaioken.SoundId = "http://www.roblox.com/asset/?id=975627244"
ssjbkaioken1 = Instance.new("Sound",soundfolder)
ssjbkaioken1.Volume = 10000
ssjbkaioken1.Name = "ssjbkaioken1"
ssjbkaioken1.Looped = false
ssjbkaioken1.SoundId = "http://www.roblox.com/asset/?id=975627532"
ssjbkaura = Instance.new("Sound",soundfolder)
ssjbkaura.Volume = 3
ssjbkaura.Name = "ssjbkaura"
ssjbkaura.Looped = true
ssjbkaura.SoundId = "rbxassetid://972925821"
ssjgaura = Instance.new("Sound",soundfolder)
ssjgaura.Volume = 5
ssjgaura.Name = "ssjgaura"
ssjgaura.Looped = true
ssjgaura.SoundId = "rbxassetid://590580266"
ApeGrowl = Instance.new("Sound",soundfolder)
ApeGrowl.Volume = 10
ApeGrowl.Name = "ApeGrowl"
ApeGrowl.Looped = false
ApeGrowl.SoundId = "rbxassetid://849892755"
ssjgmusic = Instance.new("Sound",soundfolder)
ssjgmusic.Volume = 0
ssjgmusic.Name = "ssjgmusic"
ssjgmusic.Looped = true
ssjgmusic.SoundId = "rbxassetid://785398417"
Ape1 = Instance.new("Sound",soundfolder)
Ape1.Volume = 10
Ape1.Name = "Ape1"
Ape1.Looped = false
Ape1.SoundId = "rbxassetid://851581494"

Ape2 = Instance.new("Sound",soundfolder)
Ape2.Volume = 10
Ape2.Name = "Ape2"
Ape2.Looped = false
Ape2.SoundId = "rbxassetid://851581851"
Ape3 = Instance.new("Sound",soundfolder)
Ape3.Volume = 10
Ape3.Name = "Ape3"
Ape3.Looped = false
Ape3.SoundId = "rbxassetid://851582274"
----------------------------------------------
function Lightning1(pos,pos2,radius,numParts,model)
        radius = radius or 0.2
        numParts = numParts or 10
        model = model or workspace
        local lv = CFrame.new(pos,pos2).lookVector
        local dist = (pos-pos2).magnitude
        local dbp = dist/numParts
        local last = pos
        for i = 1,numParts do
                local p = Instance.new("Part",model)
                p.FormFactor = "Symmetric"
                p.Size = Vector3.new(14,14,1)
                p.Material = "Neon"
                p.CanCollide = false
                p.Anchored = true
                p.BrickColor = BrickColor.new("Cyan")
                local x = math.random(-100,100)/100*dbp/2
                local y = math.random(-100,100)/100*dbp/2
                local p2 = CFrame.new(pos+lv*(i*dbp),pos2+lv)*CFrame.new(x,y,0)
                local dist2 = (p2.p-last).magnitude
                local mid = (p2.p+last)/2
                local m = Instance.new("BlockMesh",p)
                m.Scale = Vector3.new(radius,radius,dist2)
                p.CFrame = CFrame.new(mid,p2.p)
                last = p2.p
                game:GetService("Debris"):AddItem(p,math.random(40,100)/1000)
        end
end
--GoundWaves
GroundWave1 = function()
	
	local HandCF = RootPart.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) + RootPart.CFrame.lookVector * 5
	Colors = {"White", "White"}
	local wave = Instance.new("Part", char)
	wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave.Anchored = true
	wave.Name = "Wave"..number
	wave.CanCollide = false
	wave.Locked = true
	wave.Size = Vector3.new(1, 1, 1)
	wave.TopSurface = "Smooth"
	wave.BottomSurface = "Smooth"
	wave.Transparency = 0.35
	wave.CFrame = HandCF
	wm = Instance.new("SpecialMesh", wave)
	wm.Name = "wave"..number
	wm.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave.Size = wm.Scale
	wave.CFrame = HandCF
	wave.Transparency = i/30
	wait()
	end
	wait()
	wave:Destroy()

	end)()
end
GroundWave1d = function()
	
	local HandCF = RootPart.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) + RootPart.CFrame.lookVector * 6
	Colors = {"Cyan", "Cyan"}
	local wave = Instance.new("Part", char)
	wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave.Anchored = true
	wave.Name = "Wave"..number
	wave.CanCollide = false
	wave.Locked = true
	wave.Size = Vector3.new(0.5,0.5,0.5)
	wave.TopSurface = "Smooth"
	wave.BottomSurface = "Smooth"
	wave.Transparency = 0.35
	wave.CFrame = HandCF
	wm = Instance.new("SpecialMesh", wave)
	wm.Name = "wave"..number
	wm.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm.Scale = Vector3.new(0.5 + i*.7, 1 + i*.7, 0.5)
	wave.Size = wm.Scale
	wave.CFrame = HandCF
	wave.Transparency = i/30
	wait()
	end
	wait()
	wave:Destroy()

	end)()
end
GroundWave111 = function()
	
	local HandCF = RootPart.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) + RootPart.CFrame.lookVector * 5
	Colors = {"White", "White"}
	local wavef = Instance.new("Part", char)
	wavef.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wavef.Anchored = true
	wavef.Name = "Wave"..number
	wavef.CanCollide = false
	wavef.Locked = true
	wavef.Size = Vector3.new(1, 1, 1)
	wavef.TopSurface = "Smooth"
	wavef.BottomSurface = "Smooth"
	wavef.Transparency = 0.35
	wavef.CFrame = HandCF
	wmf = Instance.new("SpecialMesh", wavef)
	wmf.Name = "wave"..number
	wmf.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wmf.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wavef.Size = wmf.Scale
	wavef.CFrame = HandCF
	wavef.Transparency = i/30
	wait()
	end
	wait()
	wavef:Destroy()

	end)()
end
GroundWave11 = function()
	local HandCF = RootPart.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0)) 
	Colors = {"White", "White"}
	local wave = Instance.new("Part", char)
	wave.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave.Anchored = true
	wave.Name = "Wave"
	wave.CanCollide = false
	wave.Locked = true
	wave.Size = Vector3.new(1, 1, 1)
	wave.TopSurface = "Smooth"
	wave.BottomSurface = "Smooth"
	wave.Transparency = 0.35
	wave.CFrame = HandCF
	wm = Instance.new("SpecialMesh", wave)
	wm.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave.Size = wm.Scale
	wave.CFrame = HandCF
	wave.Transparency = i/30
	wait()
	end
	wait()
	wave:Destroy()
	end)()
end

GroundWave2 = function()
	local HandCF = char["Beam"..num].CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
	Colors = {"White", "White"}
	local wave3 = Instance.new("Part", char)
	wave3.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave3.Anchored = true
	wave3.Name = "Wave"
	wave3.CanCollide = false
	wave3.Locked = true
	wave3.Size = Vector3.new(1, 1, 1)
	wave3.TopSurface = "Smooth"
	wave3.BottomSurface = "Smooth"
	wave3.Transparency = 0.35
	wave3.CFrame = HandCF
	wm1 = Instance.new("SpecialMesh", wave3)
	wm1.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm1.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave3.Size = wm1.Scale
	wave3.CFrame = HandCF
	wave3.Transparency = i/30
	wait()
	end
	wait()
	wave3:Destroy()
	end)()
end
GroundWave3 = function()
	local HandCF = char["Beam"..num].CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	Colors = {"White", "White"}
	local wave2 = Instance.new("Part", char)
	wave2.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave2.Anchored = true
	wave2.Name = "Wave"
	wave2.CanCollide = false
	wave2.Locked = true
	wave2.Size = Vector3.new(1, 1, 1)
	wave2.TopSurface = "Smooth"
	wave2.BottomSurface = "Smooth"
	wave2.Transparency = 0.35
	wave2.CFrame = HandCF
	wm2 = Instance.new("SpecialMesh", wave2)
	wm2.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm2.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave2.Size = wm2.Scale
	wave2.CFrame = HandCF
	wave2.Transparency = i/30
	wait()
	end
	wait()
	wave2:Destroy()
	end)()
end
GroundWave4 = function()
	local HandCF = char["Beam"..num].CFrame * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
	Colors = {"White", "White"}
	local wave1 = Instance.new("Part", char)
	wave1.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave1.Anchored = true
	wave1.Name = "Wave"
	wave1.CanCollide = false
	wave1.Locked = true
	wave1.Size = Vector3.new(1, 1, 1)
	wave1.TopSurface = "Smooth"
	wave1.BottomSurface = "Smooth"
	wave1.Transparency = 0.35
	wave1.CFrame = HandCF
	wm3 = Instance.new("SpecialMesh", wave1)
	wm3.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm3.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave1.Size = wm3.Scale
	wave1.CFrame = HandCF
	wave1.Transparency = i/30
	wait()
	end
	wait()
	wave1:Destroy()
	end)()
end
--------------------------------------------------------------------------
--transform
GroundWave5 = function()
	local HandCF = RootPart.CFrame * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
	if ssjg == false then
	if ssjb == false then
		if ssj1 == true or ssj2 == true or ssj3 == true then
	Colors = {"New Yeller", "New Yeller"}
		elseif ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjg == false then
			Colors = {"White", "White"}
	end
	else
		Colors = {"Cyan", "Cyan"}
	end
	else
		Colors = {"Really red", "Deep orange"}
	end
	
	local wave11 = Instance.new("Part", char)
	wave11.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave11.Anchored = true
	wave11.Name = "Wave"
	wave11.CanCollide = false
	wave11.Locked = true
	wave11.Size = Vector3.new(1, 1, 1)
	wave11.TopSurface = "Smooth"
	wave11.BottomSurface = "Smooth"
	wave11.Transparency = 0.35
	wave11.CFrame = HandCF
	wm31 = Instance.new("SpecialMesh", wave11)
	wm31.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm31.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave11.Size = wm31.Scale
	wave11.CFrame = HandCF
	wave11.Transparency = i/30
	wait()
	end
	wait()
	wave11:Destroy()
	end)()
end
GroundWave6 = function()
	local HandCF = RootPart.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	if ssjg == false then
	if ssjb == false then
		if ssj1 == true or ssj2 == true or ssj3 == true then
	Colors = {"New Yeller", "New Yeller"}
		elseif ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjg == false then
			Colors = {"White", "White"}
	end
	else
		Colors = {"Cyan", "Cyan"}
	end
	else
		Colors = {"Really red", "Deep orange"}
	end
	local wave111 = Instance.new("Part", char)
	wave111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave111.Anchored = true
	wave111.Name = "Wave"
	wave111.CanCollide = false
	wave111.Locked = true
	wave111.Size = Vector3.new(1, 1, 1)
	wave111.TopSurface = "Smooth"
	wave111.BottomSurface = "Smooth"
	wave111.Transparency = 0.35
	wave111.CFrame = HandCF
	wm311 = Instance.new("SpecialMesh", wave111)
	wm311.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm311.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave111.Size = wm311.Scale
	wave111.CFrame = HandCF
	wave111.Transparency = i/30
	wait()
	end
	wait()
	wave111:Destroy()
	end)()
end
GroundWave7 = function()
	local HandCF = RootPart.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90))
	if ssjg == false then
	if ssjb == false then
		if ssj1 == true or ssj2 == true or ssj3 == true then
	Colors = {"New Yeller", "New Yeller"}
		elseif ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjg == false then
			Colors = {"White", "White"}
	end
	else
		Colors = {"Cyan", "Cyan"}
	end
	else
		Colors = {"Really red", "Deep orange"}
	end
	local wave1111 = Instance.new("Part", char)
	wave1111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave1111.Anchored = true
	wave1111.Name = "Wave"
	wave1111.CanCollide = false
	wave1111.Locked = true
	wave1111.Size = Vector3.new(1, 1, 1)
	wave1111.TopSurface = "Smooth"
	wave1111.BottomSurface = "Smooth"
	wave1111.Transparency = 0.35
	wave1111.CFrame = HandCF
	wm3111 = Instance.new("SpecialMesh", wave1111)
	wm3111.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm3111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave1111.Size = wm3111.Scale
	wave1111.CFrame = HandCF
	wave1111.Transparency = i/30
	wait()
	end
	wait()
	wave1111:Destroy()
	end)()
end
GroundWave8 = function()
	local HandCF = RootPart.CFrame * CFrame.Angles(math.rad(40), math.rad(90), math.rad(0))
	if ssjg == false then
	if ssjb == false then
		if ssj1 == true or ssj2 == true or ssj3 == true then
	Colors = {"New Yeller", "New Yeller"}
		elseif ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjg == false then
			Colors = {"White", "White"}
	end
	else
		Colors = {"Cyan", "Cyan"}
	end
	else
		Colors = {"Really red", "Deep orange"}
	end
	local wave11111 = Instance.new("Part", char)
	wave11111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave11111.Anchored = true
	wave11111.Name = "Wave"
	wave11111.CanCollide = false
	wave11111.Locked = true
	wave11111.Size = Vector3.new(1, 1, 1)
	wave11111.TopSurface = "Smooth"
	wave11111.BottomSurface = "Smooth"
	wave11111.Transparency = 0.35
	wave11111.CFrame = HandCF
	wm31111 = Instance.new("SpecialMesh", wave11111)
	wm31111.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm31111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave11111.Size = wm31111.Scale
	wave11111.CFrame = HandCF
	wave11111.Transparency = i/30
	wait()
	end
	wait()
	wave11111:Destroy()
	end)()
end
GroundWave9 = function()
	local HandCF = RootPart.CFrame * CFrame.Angles(math.rad(0), math.rad(90), math.rad(40))
	if ssjg == false then
	if ssjb == false then
		if ssj1 == true or ssj2 == true or ssj3 == true then
	Colors = {"New Yeller", "New Yeller"}
		elseif ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjg == false then
			Colors = {"White", "White"}
	end
	else
		Colors = {"Cyan", "Cyan"}
	end
	else
		Colors = {"Really red", "Deep orange"}
	end
	local wave111111 = Instance.new("Part", char)
	wave111111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave111111.Anchored = true
	wave111111.Name = "Wave"
	wave111111.CanCollide = false
	wave111111.Locked = true
	wave111111.Size = Vector3.new(1, 1, 1)
	wave111111.TopSurface = "Smooth"
	wave111111.BottomSurface = "Smooth"
	wave111111.Transparency = 0.35
	wave111111.CFrame = HandCF
	wm311111 = Instance.new("SpecialMesh", wave111111)
	wm311111.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm311111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave111111.Size = wm311111.Scale
	wave111111.CFrame = HandCF
	wave111111.Transparency = i/30
	wait()
	end
	wait()
	wave111111:Destroy()
	end)()
end
GroundWave10 = function()
	local HandCF = RootPart.CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
	if ssjg == false then
	if ssjb == false then
		if ssj1 == true or ssj2 == true or ssj3 == true then
	Colors = {"New Yeller", "New Yeller"}
		elseif ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjg == false then
			Colors = {"White", "White"}
	end
	else
		Colors = {"Cyan", "Cyan"}
	end
	else
		Colors = {"Really red", "Deep orange"}
	end
	local wave1111111 = Instance.new("Part", char)
	wave1111111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave1111111.Anchored = true
	wave1111111.Name = "Wave"
	wave1111111.CanCollide = false
	wave1111111.Locked = true
	wave1111111.Size = Vector3.new(1, 1, 1)
	wave1111111.TopSurface = "Smooth"
	wave1111111.BottomSurface = "Smooth"
	wave1111111.Transparency = 0.35
	wave1111111.CFrame = HandCF
	wm3111111 = Instance.new("SpecialMesh", wave1111111)
	wm3111111.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm3111111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave1111111.Size = wm3111111.Scale
	wave1111111.CFrame = HandCF
	wave1111111.Transparency = i/30
	wait()
	end
	wait()
	wave1111111:Destroy()
	end)()
end
ae = new("Part",char)
ae.Name = "NewPart"
ae.Size = v3(0.1,0.1,0.1)
ae.Shape = "Ball"
ae.Position = v3(999,999,999)
ae.BrickColor = bc("bright Blue")
ae.Material = "Neon"
ae.Transparency = 1
aaae =new("Weld",ae)
aaae.Part0 = RootPart
aaae.Part1 = ae
aaae.C0 = cf(0,7,0) * cfa(rad(0),rad(0),rad(0))
ae1 = new("Part",char)
ae1.Name = "NewPart"
ae1.Size = v3(0.1,0.1,0.1)
ae1.Shape = "Ball"
ae1.Position = v3(999,999,999)
ae1.BrickColor = bc("bright Blue")
ae1.Material = "Neon"
ae1.Transparency = 1
aaae1 =new("Weld",ae1)
aaae1.Part0 = RootPart
aaae1.Part1 = ae1
aaae1.C0 = cf(0,15,0) * cfa(rad(0),rad(0),rad(0))


aw = new("Part",char)
aw.Name = "NewPart"
aw.Size = v3(0.1,0.1,0.1)
aw.Shape = "Ball"
aw.Position = v3(999,999,999)
aw.BrickColor = BrickColor.new("bright Blue")
aw.Material = "Neon"
aw.Transparency = 1
aaw = new("SpecialMesh",aw)
aaw.Scale = v3(1,1,1)
aaaw =new("Weld",aw)
aaaw.Part0 = LowerTorso
aaaw.Part1 = aw
aaaw.C0 = cf(0,1.6,-1.6) * cfa(rad(0),rad(0),rad(0))
aaaaw = new("ParticleEmitter",aw)
aaaaw.Size = ns(5)
aaaaw.Rate = 5
aaaaw.Color = ColorSequence.new(Color3.fromRGB(149,190,255))
aaaaw.Texture = "rbxassetid://924710961"
aaaaw.ZOffset = -1
aaaaw.Lifetime = nr(5)
aaaaw.RotSpeed = nr(50)
aaaaw.Transparency = ns(1)
aaaaw.LockedToPart = true
aaaaw.Speed = nr(0)
a = new("Part",char)
a.Name = "NewPart"
a.Size = v3(0.1,0.1,0.1)
a.Shape = "Ball"
a.Position = v3(999,999,999)
a.BrickColor =  BrickColor.new("bright Blue")
a.Material = "Neon"
a.Transparency = 1
aa = new("SpecialMesh",a)
aa.Scale = v3(1,1,1)
aaa =new("Weld",a)
aaa.Part0 = LowerTorso
aaa.Part1 = a
aaa.C0 = cf(0,1.6,-1.6) * cfa(rad(0),rad(0),rad(0))
aaaa = new("ParticleEmitter",a)
aaaa.Size = ns(1)
aaaa.Rate = 5
aaaa.Texture = "rbxassetid://246381828"
aaaa.ZOffset = 1
aaaa.Lifetime = nr(5)
aaaa.Transparency = ns(1)
aaaa.LockedToPart = true
aaaa.Speed = nr(0)
lighting2 = Instance.new("ParticleEmitter", a)
    lighting2.Size = NumberSequence.new(2.5)
    lighting2.LightEmission = 1
    lighting2.Color = ColorSequence.new(Color3.fromRGB(255,255,0))
    lighting2.Texture = "rbxassetid://257173628"
    lighting2.ZOffset = 2
lighting2.Transparency = ns(1)
    lighting2.Lifetime = NumberRange.new(0.1)
    lighting2.Rate = 60
    lighting2.Rotation = NumberRange.new(-500,500)
    lighting2.Speed = NumberRange.new(8)
    lighting2.SpreadAngle = Vector2.new(500,500)
--DOntTouch

hum.JumpPower = 100
hum.BodyDepthScale.Value = 1
hum.BodyHeightScale.Value = 1
hum.BodyWidthScale.Value = 1
hum.HeadScale.Value = 1
for i,v in pairs(char:GetChildren()) do
	if v.ClassName == "Accessory" then
	v:Destroy()
	end
end

Instance.new("ForceField",char).Visible = false
char.Animate:Destroy()
------------------------
for i = 1,20 do
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Head
end

function RenderStepped2()

	if startk == true then
	if ssj4 == true and fuse == false then
		aaaa.Color = ColorSequence.new(Color3.new(255,0,0))
		aaaaw.Color = ColorSequence.new(Color3.new(255,0,0))
else
	aaaa.Color = ColorSequence.new(Color3.new(255,255,255))
		aaaaw.Color = ColorSequence.new(Color3.fromRGB(149,190,255))
	end
	turn = turn - 0.01
	aaaa.Transparency = ns(turn)
	aaaaw.Transparency = ns(turn)
	aaaa.Size = ns(math.random(1,2))
	if ssjg == true or potara == true then
		lighting2.Transparency = ns(0)
	end
else
	lighting2.Transparency = ns(1)
	aaaa.Transparency = ns(1)
	aaaaw.Transparency = ns(1)
	turn = 1
	end

	if rock2 == true then
		wait(0.1)
		
	for i,v in pairs(char:GetChildren()) do
		if v:IsA("Part") then
		if v.Name == "NewPart2" then
			v.GO.Velocity = v3(0,-5,0)
		end
		end
	
		end
		rock2 = false
	end
	if rock3 == true then
		wait(0.1)
	for i,v in pairs(char:GetChildren()) do
		if v:IsA("Part") then
		if v.Name == "NewPart2" then
			v.GO.Velocity = v3(math.random(-80,80),math.random(0,20),math.random(-80,80))
		end
		end
	end
	rock3 = false
end
if transform4 == true then

LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-15)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(15)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(40),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(40),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(40),rad(0),rad(0)),.1)--Head
end



if aim == true then
    RootPart.CFrame = CFrame.new(RootPart.Position,Vector3.new(mouse.Hit.p.X, mouse.Hit.p.Y, mouse.Hit.p.Z))
end

hum.MaxHealth = math.huge
hum.Health = math.huge

if flying1 == true and canfly == true and nill == true then
	idle = false
	walk = false
	canjump = false
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-20)),0.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(20)),0.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),0.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-30),rad(0),rad(0)),0.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Head
	
end
if flying1 == true and canfly == true and foward == true then
	
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(-10)),0.05) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(-20),rad(0),rad(10)),0.05)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.05)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.05)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.05)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.05)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.05)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.05)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.05)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(40),rad(0),rad(0)),0.01)--Head
	
end

if uppercut1 == true then

	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(-10)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(50),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(30),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-30),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-40),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,-0.1,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head

end
if uppercut2 == true then

	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(120),rad(0),rad(-10)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(20),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-30),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(-50),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(50),rad(0)),.1)--Head

end

if punch1 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(-30),rad(0),rad(-40)),.5) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(10)),.5)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(70),rad(0),rad(0)),.5)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(30),rad(0)),.2)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(-20),rad(0)),.2)--Head

end
if punch2 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(90),rad(0),rad(20)),.5) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(-10),rad(0),rad(10)),.5)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.5)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.5)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.2)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.2)--Head

end
if punch3 == true then
    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-10)),.5) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(-30),rad(0),rad(40)),.5)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(70),rad(0),rad(0)),.5)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(-30),rad(0)),.2)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(20),rad(0)),.3)--Head

end
if punch4 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(-10)),.5) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(90),rad(0),rad(-20)),.5)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.5)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.5)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.2)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--Head

end

if kick3 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-10)),.3) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(10)),.3)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(-10)),.5)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-40),rad(0),rad(0)),.5)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(30),rad(0)),.3)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(-30),rad(0)),.3)--Head

end
if kick4 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(-10)),.3) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(-10),rad(0),rad(10)),.3)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.3)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.3)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(100),rad(0),rad(0)),.5)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(20),rad(0),rad(0)),.5)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(-30),rad(0)),.3)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(30),rad(0)),.3)--Head

end
if kick1 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-10)),.3) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(10)),.3)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.3)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(10)),.5)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-40),rad(0),rad(0)),.5)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(-30),rad(0)),.3)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(30),rad(0)),.3)--Head

end
if kick2 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(-10)),.3) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(-10),rad(0),rad(10)),.3)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.3)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.3)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(100),rad(0),rad(0)),.5)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(20),rad(0),rad(0)),.5)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(30),rad(0)),.3)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(-30),rad(0)),.3)--Head

end
if knockdown1 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(-1.0,1,.05)*CFrame.Angles(rad(150),rad(-90),rad(0)),.1) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(1.0,1,.05)*CFrame.Angles(rad(150),rad(90),rad(0)),.1)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(55),rad(0),rad(0)),.1)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(55),rad(0),rad(0)),.1)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(40),rad(0),rad(0)),.1)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(-40),rad(0),rad(0)),.1)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-40),rad(0),rad(0)),.1)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head

end
if knockdown2 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(-1.0,0.5,.05)*CFrame.Angles(rad(100),rad(-90),rad(50)),.1) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(1.0,0.5,.05)*CFrame.Angles(rad(20),rad(100),rad(30)),.1)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(25),rad(0),rad(0)),.1)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(35),rad(0),rad(0)),.1)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(0)),.1)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(0)),.1)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(0)),.1)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(0)),.1)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(-20),rad(10),rad(0)),.1)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--Head

end
if kiblast3 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-80)),.4) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(70),rad(0),rad(0)),.4)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--Head

end
if kiblast4 == true then
    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(-90),rad(-80)),.4) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--Head

end
if kiblast1 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(80)),.4)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(70),rad(0),rad(0)),.4)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--Head

end
if kiblast2 == true then

    LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(90),rad(80)),.4)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.4)--Head

end
  Frame_3.Size = UDim2.new(0, ki*2.29, 0, 10)
  if kicharging == true and ki < 100 then
	ki = ki + 0.5
end
  if hum.MoveDirection.x > 0 and walk == true and walk1 == true and walk11 == true and great == true or hum.MoveDirection.x < 0 and walk == true and walk1 == true and walk11 == true and great == true then
	walk11 = false

	GiantStep:Play()
	GroundShake = true
	wait(0.3)
	GiantStep:Stop()
	GroundShake = false
	walk11 = true
end
end
function RenderStepped()

	if hum.MoveDirection.x == 0 and idle == true and fuse == false and potara == false then
	
LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(90),rad(0),rad(-30)),0.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(5),rad(0),rad(10)),0.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(70),rad(0),rad(0)),0.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(70),rad(0),rad(0)),0.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(50),rad(0)),0.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(-50),rad(0)),0.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(50),rad(0)),0.1)--Head
	end
	
if hum.MoveDirection.x > 0 and walk == true and walk1 == true and fuse == false and potara == false or hum.MoveDirection.x < 0 and walk == true and walk1 == true and fuse == false and potara == false then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Head
end

if hum.Jump == true and canjump == true then
	idle = false
	walk = false
	

	-- return to idle if finishing an emote
	if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
	oldAnim = "idle"
	end

	currentAnim = ""
	currentAnimInstance = nil
	if (currentAnimKeyframeHandler ~= nil) then
	currentAnimKeyframeHandler:disconnect()
	end

	if (currentAnimTrack ~= nil) then
	currentAnimTrack:Stop()
	currentAnimTrack:Destroy()
	currentAnimTrack = nil
	end

	-- clean up walk if there is one
	if (runAnimKeyframeHandler ~= nil) then
	runAnimKeyframeHandler:disconnect()
	end
	
	if (runAnimTrack ~= nil) then
	runAnimTrack:Stop()
	runAnimTrack:Destroy()
	runAnimTrack = nil
	end
	
	
	jumped = true
	
for i=1,30 do
	wait()
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-80)),0.05) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(80)),0.05)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(30),rad(0),rad(0)),0.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),0.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(0)),0.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),0.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(-5),rad(0),rad(0)),0.1)--Head
	end
	jumped = false
	idle = true
	walk = true
end
if kamehameha1 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(60),rad(-60),rad(0)),.03) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(70),rad(80),rad(0)),.03)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(50),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(40),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(30),rad(50),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(35),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(0)),.1)--RightLowerLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(-40),rad(-70),rad(-20)),.03)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(20),rad(70),rad(-10)),.03)--Head
	
end
if kamehameha6 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(60),rad(-60),rad(0)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(70),rad(80),rad(0)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(50),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(40),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(30),rad(50),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(35),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(0)),.1)--RightLowerLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(-40),rad(-70),rad(-20)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(20),rad(70),rad(-10)),.1)--Head
	
end
if kamehameha5 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(60),rad(-60),rad(0)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0.p)*CFrame.Angles(rad(70),rad(80),rad(0)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(50),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(40),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(30),rad(50),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(35),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-20),rad(0),rad(0)),.1)--RightLowerLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(-40),rad(-70),rad(-20)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(20),rad(70),rad(-10)),.1)--Head
	
end
if kamehameha2 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(80),rad(0),rad(40)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0.p)*CFrame.Angles(rad(30),rad(0),rad(-40)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(30),rad(30),rad(20)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(20),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-50),rad(0),rad(0)),.1)--RightLowerLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--Head
end

	if beam2 == true then
	
	a1.CFrame = RootPart.CFrame * CFrame.Angles(0,rad(90),0) + v3(0,1,0) + RootPart.CFrame.lookVector * beamgo
	a2.CFrame = RootPart.CFrame * CFrame.Angles(0,rad(90),0)+ v3(0,1,0) + RootPart.CFrame.lookVector * 8
	a3.CFrame = RootPart.CFrame  * CFrame.Angles(0,rad(90),0)+ v3(0,1,0) + RootPart.CFrame.lookVector  * beamgo * 2
	end
	


if transform1 == true then

LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(150),rad(-110),rad(0)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0.p)*CFrame.Angles(rad(150),rad(110),rad(0)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(20),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(20),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-10)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(10)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head


end
if rock == true then
	wait(math.random(0.1,0.5))
		ay = new("Part",char)
ay.Name = "NewPart2"
ay.Size = v3(0.3,0.3,0.3)
ay.CanCollide = false
for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") then
			if v.Size.x > 150 then
				
	
ay.BrickColor = v.BrickColor
ay.Material = v.Material
ay.Transparency = v.Transparency
			end
		end
	end
ay.Position = v3(999,999,999)
ay.CFrame = CFrame.new(RootPart.Position.x+math.random(-15,15),RootPart.Position.y-2,RootPart.Position.z+math.random(-15,15))
	ys = Instance.new("BodyVelocity",ay)
ys.Name = "GO"
ys.maxForce = Vector3.new(math.huge, math.huge, math.huge)

ys.Velocity = v3(0,6,0)
	game.Debris:AddItem(ay,math.random(3,4))
end

if transform2 == true then

LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-20)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(20)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(70),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(70),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-10)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(10)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Head


end
if onaura == true then
	if ssjg == false then
	if ssjb == false then
	onaura =false
	
	wait(0.1)
	newaura.Image = "rbxassetid://926705964"
	wait(0.1)
	newaura.Image = "rbxassetid://926709486"
	wait(0.1)
	newaura.Image = "rbxassetid://926711720"
	wait(0.1)
	newaura.Image = "rbxassetid://926712235"

	onaura =true
	else
		onaura =false
	
	wait(0.1)
	newaura.Image = "http://www.roblox.com/asset/?id=894173257" 
	wait(0.1)
	newaura.Image = "http://www.roblox.com/asset/?id=894173392"
	wait(0.1)
	newaura.Image = "http://www.roblox.com/asset/?id=890403068"
	wait(0.1)
	newaura.Image = "http://www.roblox.com/asset/?id=890403512"
	onaura =true
	end
	end
end

if onaura == true then
if ssjg == true then
	onaura =false
	wait(0.1)
	newaura.Image = "rbxassetid://639676034"
	wait(0.1)
	newaura.Image = "rbxassetid://639676268"
	wait(0.1)
	newaura.Image = "rbxassetid://639676527"
	wait(0.1)
	newaura.Image = "rbxassetid://639676855"
	onaura =true
end
end
if auracan3 == true then
	auracan3 = false
	newaura2.Image = "rbxassetid://276853031"
	wait(0.07)
	newaura2.Image = "rbxassetid://276853123"
	wait(0.07)
	newaura2.Image = "rbxassetid://276853057"
	wait(0.07)
    newaura2.Image = "rbxassetid://276853088"
	wait(0.07)
	auracan3 = true
end

auranum = math.random(35,65)
auranum1 = math.random(-25,0)
auranum2 = math.random(10,25)
auranum3 = math.random(65,75)
auranum4 = math.random(-25,-15)

if transform3 == true then
if ssjb == false then
LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(auranum),rad(0),rad(auranum1)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(auranum),rad(0),rad(auranum2)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(auranum3),rad(0),rad(-20)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(auranum3),rad(0),rad(20)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-50),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-50),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,-0.2,0)*CFrame.Angles(rad(auranum4),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--Head
else
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(auranum),rad(0),rad(auranum1)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(auranum),rad(0),rad(auranum2)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(auranum3),rad(0),rad(-20)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(auranum3),rad(0),rad(20)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-50),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-50),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,-0.2,0)*CFrame.Angles(rad(auranum4),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--Head
end
end
if transform5 == true then

LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(10),rad(0),rad(-10)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(10),rad(0),rad(10)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,-0.2,0)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--Head

end
if GroundShake == true then
	for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") then
			if v.Size.x > 150 then
				v.CFrame = CFrame.new(v.Position) * CFrame.Angles(rad(math.random(-1,1)),rad(math.random(-1,1)),rad(math.random(-1,1)))
			end
		end
	end
	
	
	
	
end
  if GroundShake2 == true then
	
for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") then
			if v.Size.x > 150 then
				v.CFrame = CFrame.new(v.Position) * CFrame.Angles(rad(math.random(-2,2)),rad(math.random(-2,2)),rad(math.random(-2,2)))
			end
		end
	end
	
end
end
game:GetService("RunService").RenderStepped:connect(RenderStepped)
game:GetService("RunService").RenderStepped:connect(RenderStepped2)

local player = game.Players.LocalPlayer













Hair7 = Instance.new("Part")
Hair7.Parent = char
Hair7.Name = "Hair"
Hair7.CanCollide = false
Hair7.Locked = true
Hair7.TopSurface = "Smooth"
Hair7.BottomSurface = "Smooth"
Hair7.formFactor = "Symmetric"
Hair7.Material = "Neon"
Hair7.BrickColor = BrickColor.new("Really black")
Hair7.CFrame = LowerTorso.CFrame
Hair7.Size = Vector3.new(1, 1, 1)
Hair7.Transparency = 0



Weld = Instance.new("Weld")
Weld.Parent = Head
Weld.Part0 = Head
Weld.Part1 = Hair7

Weld.C0 = CFrame.new(-0.3, 1.2, -0.32)

Mesh = Instance.new("SpecialMesh")
Mesh.Offset = Vector3.new(0.2, -0.2, 0.2)
Mesh.Parent = Hair7

Mesh.Scale = Vector3.new(6.8,6.8,6.8)
Mesh.MeshType = "FileMesh"

Mesh.MeshId = "http://www.roblox.com/asset/?id=501884712"

char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=363968007"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=363966829"

 function kamehameha()
	beamgo = 6
	beamgo1 = 1
	enabled = true
	sizeup = -25
	
	kamefire.Volume = 5
	
	wait(0.2)
	RootPart.Anchored = true
	kamecharge:Stop()
	

	a1 = new("Part",char)
a1.Name = "Beam"
a1.Anchored = true
a1.Size = v3(6,6,6)
a1.CanCollide = false
a1.Locked = true
a1.Position = v3(999,999,999)
a1.BrickColor = bc("Cyan")
a1.Material = "Neon"
a1.Transparency = 0
aa1 = new("SpecialMesh",a1)
if fuse == false then
	aa1.MeshType = "Cylinder"
	if potara == false then
		aa1.MeshType = "Cylinder"
	else
		aa1.MeshType = "Sphere"
	end
else
	aa1.MeshType = "Sphere"
end

aa1.Scale = v3(1,1,1)

a2 = new("Part",char)
a2.Name = "Beam"
a2.Anchored = true
a2.Locked = true

a2.Size = v3(0.1,0.1,0.1)
a2.CanCollide = false
a2.Position = v3(999,999,999)
a2.BrickColor = bc("Cyan")
a2.Material = "Neon"
if fuse == false then
	if potara == false then
a2.Transparency = 0
	else
		a2.Transparency = 1
end
else
	
	a2.Transparency = 1
	end
aa2 = new("SpecialMesh",a2)
aa2.MeshType = "Sphere"
aa2.Scale = v3(150,100,100)
a3 = new("Part",char)
a3.Name = "Beam"
a3.Locked = true
a3.Anchored = true
a3.Size = v3(0.1,0.1,0.1)
a3.CanCollide = false
a3.Position = v3(999,999,999)
a3.BrickColor = bc("Cyan")
a3.Material = "Neon"
if fuse == false then
	if potara == false then
a3.Transparency = 0
	else
		a3.Transparency = 1
end
else
	
	a3.Transparency = 1
	end
aa3 = new("SpecialMesh",a3)
aa3.MeshType = "Sphere"
aa3.Scale = v3(200,100,100)
if ssj4 == true and fuse == false then
	a1.BrickColor = bc("Really red")
	a2.BrickColor = bc("Really red")
	a3.BrickColor = bc("Really red")
end
	kamecharge:Stop()
	kamefire:Play()
	
	GroundWave1()
	startk = false
	ringfolder = Instance.new("Model",char)


--Damages
-----------------------------------------------------------------------------------------
a1.Touched:connect(function(hit)
 
if hit.Parent:findFirstChild("NewPart") == nil and hit.Size.x < 500 and hit.Parent:findFirstChild("Wave") == nil then
	
	

	if hit.Parent:IsA("Model") then
	hit.Parent:BreakJoints()
	end
	hit:Destroy()
	if enabled  == true then
	enabled = false	
	num = num + 1
	kamehit:Play()
	a21 = new("Part",char)
a21.Name = "Beam"..num
a21.Locked = true
a21.Size = v3(1,1,1)
a21.CanCollide = false
a21.Position = v3(999,999,999)
a21.BrickColor = bc("Cyan")
a21.Material = "Neon"
a21.Transparency = 0
aa21 = new("SpecialMesh",a21)
a21.Anchored = true
a21.Position = hit.Position
aa21.MeshType = "Sphere"
aa21.Scale = v3(1,1,1)
GroundWave2()
GroundWave3()
GroundWave4()
	for i = 1,50 do
	wait()
	char["Beam"..num].Mesh.Scale = char["Beam"..num].Mesh.Scale + v3(5,5,5)
	char["Beam"..num].Transparency = char["Beam"..num].Transparency + 0.02
	end
	enabled = true
	char["Beam"..num]:Destroy()
	end
	
end

end)





beam2 = true
beam1 = true
  
if potara == true then
for i = 1,20 do
	wait(0.1)
	sizeup = sizeup-0.7
	ringgo = ringgo + 15
	av = new("Part",ringfolder)
av.Name = "NewRing"
av.Anchored = true
av.Size = v3(0.6,1,1)
av.BrickColor = bc("New Yeller")
av.Material = "Neon"
av.Transparency = 0
aav = new("SpecialMesh",av)
aav.MeshType = "FileMesh"
aav.Scale = v3(sizeup,30,sizeup)
aav.MeshId = "rbxassetid://991124063"
	av.CFrame = RootPart.CFrame * CFrame.Angles(rad(90),rad(0),0)+ v3(0,1,0) + RootPart.CFrame.lookVector * ringgo * math.random(1.1,1.3)
	
end
end
if potara == false then
wait(3)
else
	wait(0.5)
end

beam1 = false

repeat
	wait()
	
		if fuse == false then
			if potara == false then
	a1.Size = a1.Size - v3(0,0.2,0.2)
			else
				for i,v in pairs(char.Model:GetChildren()) do
					if v:IsA("Part") then
						if v.Name == "NewRing" then
							v.Mesh.Scale = v.Mesh.Scale + v3(2,2,2)
							v.Transparency = v.Transparency + 0.1
						end
					end
				end
			a1.Size = a1.Size - v3(0,2,2)	
	end
	else
	a1.Size = a1.Size - v3(0,2,2)
	end
	aa2.Scale = aa2.Scale - v3(3,3,3)
	aa3.Scale = aa3.Scale - v3(3,3,3)
until
	a1.Size.y < 0.1
	
	
	a1:Destroy()
	ringfolder:Destroy()
	a2:Destroy()
	a3:Destroy()
	for i = 1,10 do
	wait()
	
	kamefire.Volume = kamefire.Volume - 0.5
	end
	kamefire:Stop()
	RootPart.Anchored = false
	
	end
	
	
	lighting = Instance.new("ParticleEmitter", RootPart)
    lighting.Size = NumberSequence.new(2.5)
    lighting.LightEmission = 1
    lighting.Color = ColorSequence.new(Color3.fromRGB(170,170,255))
    lighting.Texture = "rbxassetid://257173628"
    lighting.ZOffset = 2
lighting.Transparency = ns(1)
    lighting.Lifetime = NumberRange.new(0.1)
    lighting.Rate = 60
    lighting.Rotation = NumberRange.new(-500,500)
    lighting.Speed = NumberRange.new(8)
    lighting.SpreadAngle = Vector2.new(500,500)
	lighting1 = Instance.new("ParticleEmitter", RootPart)
    lighting1.Size = NumberSequence.new(2.5)
    lighting1.LightEmission = 1
lighting1.Transparency = ns(1)
    lighting1.Color = ColorSequence.new(Color3.fromRGB(170,170,255))
    lighting1.Texture = "rbxassetid://257173628"
    lighting1.ZOffset = 2
    lighting1.Lifetime = NumberRange.new(0.1)
    lighting1.Rate = 60
    lighting1.Rotation = NumberRange.new(-500,500)
    lighting1.Speed = NumberRange.new(8)
    lighting1.SpreadAngle = Vector2.new(500,500)
 mouse.KeyDown:connect(function(key)
	if fuse == true then
	if key == "q" and canattack == true and ki > 99 then
		
	if canfly == true then
	canfly = false
	canfly1 = true
	end
	ki = ki - 100
	canattack = false
	idle7 = false
	walk = false
	canjump = false
	hum.WalkSpeed = 0
	aim = true
	RootPart.Anchored = true
	bigkamehameha1 = true
	
	wait(1)
	KamehamehaVoice4:Play()
	bigkamehameha1 = false
	bigkamehameha2 = true
	ar = new("Part",char)
ar.Name = "NewPart"
ar.Position = v3(999,999,999)
ar.Size = v3(1,1,1)
ar.BrickColor = bc("Cyan")
ar.Material = "Neon"
ar.Transparency = 1
aar = new("SpecialMesh",ar)
aar.MeshType = "Sphere"
aar.Scale = v3(3,3,4)

aaar =new("Weld",ar)
aaar.Part0 = LowerTorso
aaar.Part1 = ar
aaar.C0 = cf(0,1,-6) * cfa(rad(0),rad(0),rad(0))
for i = 1,9 do
	wait(0.5)
	GroundWave1d()
	ar.Transparency = ar.Transparency - 0.1
end
aim = false
	kamehameha()
	
	if canfly1 == true then
	canfly = true
	canfly1 = false
	end
	idle7 = true
hum.WalkSpeed = 16
canattack = true
ar:Destroy()
bigkamehameha2 = false
mouth.Texture = "rbxassetid://932140764"
RootPart.Anchored = false
	end
	
	
	end
	if potara == true then
	if key == "q" and canattack == true and ki > 99 then
		kamefire.TimePosition = 0.5
	if canfly == true then
	canfly = false
	canfly1 = true
	end
	ki = ki - 100
	ringgo = 18
	sizeup = 35
	canattack = false
	idle7 = false
	walk = false
	canjump = false
	hum.WalkSpeed = 0
	aim = true
	RootPart.Anchored = true
	KamehamehaVoice6:Play()
	final1 = true
	
	wait(0.5)
	startk = true
	final1 = false
	final2 = true
	wait(1)
	final2 = false
	kamehameha1 = true
	wait(2.3)
	kamehameha1 = false
	kamehameha2 = true
KamehamehaVoice6:Stop()

aim = false
	kamehameha()
	
	if canfly1 == true then
	canfly = true
	canfly1 = false
	end
	idle7 = true
hum.WalkSpeed = 16
canattack = true

kamehameha2 = false
mouth.Texture = "rbxassetid://932140764"
RootPart.Anchored = false
	end
	
	
	end
	if ssjg == false and ssj3 == false and ssjbkaiox10 == false and fuse == false  then
	if key == "q" and canattack == true and ki > 39 then
		
	if canfly == true then
	canfly = false
	canfly1 = true
	end
	ki = ki - 40
	canattack = false
	idle = false
	walk = false
	canjump = false
	hum.WalkSpeed = 0
	aim = true
	RootPart.Anchored = true
	kamehameha6 = true
	
	KamehamehaVoice:Play()
	startk = true
	
	mouth.Texture = "rbxassetid://828773176"
	
	
	wait(0.5)
	mouth.Texture = "rbxassetid://932140764"
	
	wait(0.5)
	mouth.Texture = "rbxassetid://828773176"
	wait(0.5)
	mouth.Texture = "rbxassetid://932140764"

	wait(1.7)
	
	
	wait(0.4)
	mouth.Texture = "rbxassetid://828773176"
	aim = false
	
kamehameha6 = false
kamehameha2 = true
kamehameha()
wait(0.8)
KamehamehaVoice.TimePosition = 0
kamehameha2 = false
if canfly1 == true then
	idle = true
	walk = true
	canjump = true
	end
	if canfly1 == true then
	canfly = true
	canfly1 = false
	end
hum.WalkSpeed = 16
canattack = true
mouth.Texture = "rbxassetid://932140764"
RootPart.Anchored = false
	end
	
	
	end
	if ssj3 == true then
	if key == "q" and canattack == true and ki > 79 then
	if canfly == true then
	canfly = false
	canfly1 = true
	end
	ki = ki - 80
	ssj3music:Stop()
	Lightning.Volume = 0.1
	canattack = false
	idle = false
	walk = false
	canjump = false
	hum.WalkSpeed = 0
	aim = true
	RootPart.Anchored = true
	kamehameha1 = true
	wait(0.5)
	KamehamehaVoice2:Play()
	
	
	mouth.Texture = "rbxassetid://828773176"
	
	
	wait(0.5)
	mouth.Texture = "rbxassetid://932140764"
	
	wait(0.5)
	mouth.Texture = "rbxassetid://828773176"
	wait(0.5)
	mouth.Texture = "rbxassetid://932140764"
	wait(2)
	startk = true
	kamecharge:Play()
	mouth.Texture = "rbxassetid://828773176"
	
	
	wait(5)
	mouth.Texture = "rbxassetid://932140764"
	
	wait(0.5)
	mouth.Texture = "rbxassetid://828773176"
	wait(0.5)
	mouth.Texture = "rbxassetid://932140764"
	KamehamehaVoice:Pause()
	wait(2)
	KamehamehaVoice.TimePosition = 3.5
	KamehamehaVoice:Play()
	
	wait(0.4)
	mouth.Texture = "rbxassetid://828773176"
	aim = false
	
kamehameha1 = false
kamehameha2 = true
kamehameha()
wait(0.8)
KamehamehaVoice.TimePosition = 0
kamehameha2 = false
if canfly1 == true then
	idle = true
	walk = true
	canjump = true
	end
	if canfly1 == true then
	canfly = true
	canfly1 = false
	end
hum.WalkSpeed = 16
canattack = true
ssj3music:Play()
mouth.Texture = "rbxassetid://932140764"
RootPart.Anchored = false
	end
	
	
	end
	if ssjbkaiox10 == true then
	if key == "q" and canattack == true and ki > 99 then
	if canfly == true then
	canfly = false
	canfly1 = true
	end
	ki = ki- 100

	canattack = false
	idle = false
	walk = false
	canjump = false
	hum.WalkSpeed = 0
	aim = true
	RootPart.Anchored = true
	kamehameha6 = true
	wait(0.5)
	KamehamehaVoice3:Play()
	
	
	mouth.Texture = "rbxassetid://828773176"
	
	
	wait(0.5)
	mouth.Texture = "rbxassetid://932140764"
	
	wait(0.5)
	mouth.Texture = "rbxassetid://828773176"
	wait(0.5)
	mouth.Texture = "rbxassetid://932140764"
	wait(0.1)
	startk = true
	kamecharge:Play()
	mouth.Texture = "rbxassetid://828773176"
	
	
	wait(3.5)
	mouth.Texture = "rbxassetid://932140764"
	
	wait(0.5)
	mouth.Texture = "rbxassetid://828773176"
	wait(0.5)
	mouth.Texture = "rbxassetid://932140764"
	KamehamehaVoice:Pause()
	wait(2)
	KamehamehaVoice.TimePosition = 3.5
	KamehamehaVoice:Play()
	
	wait(0.4)
	mouth.Texture = "rbxassetid://828773176"
	aim = false
	
kamehameha6 = false
kamehameha2 = true
GroundShake = true
kamehameha()
GroundShake = false
wait(0.8)
KamehamehaVoice.TimePosition = 0
kamehameha2 = false
if canfly1 == true then
	idle = true
	walk = true
	canjump = true
	end
	if canfly1 == true then
	canfly = true
	canfly1 = false
	end
hum.WalkSpeed = 16
canattack = true
ssj3music:Play()
mouth.Texture = "rbxassetid://932140764"
RootPart.Anchored = false
	end
	
	
	end
	if ssjg == true then
		if key == "q" and canattack == true and ki > 99 then
	if canfly == true then
	canfly = false
	canfly1 = true
	end
	ki = ki - 100
	ssjgmusic:Stop()
	canattack = false
	idle = false
	walk = false
	canjump = false
	hum.WalkSpeed = 0
	aim = true
	RootPart.Anchored = true
	kamehameha1 = true
	wait(0.5)
	KamehamehaVoice1:Play()
	
	
	mouth.Texture = "rbxassetid://828773176"
	
	
	wait(0.1)
	mouth.Texture = "rbxassetid://932140764"
	
	wait(0.5)
	mouth.Texture = "rbxassetid://828773176"
	wait(0.7)
	mouth.Texture = "rbxassetid://932140764"
	wait(0.3)
	startk = true

	mouth.Texture = "rbxassetid://828773176"
	
	
	wait(18.5)
	mouth.Texture = "rbxassetid://932140764"
	
	wait(0.5)
	mouth.Texture = "rbxassetid://828773176"
	wait(0.5)
	mouth.Texture = "rbxassetid://932140764"
	
	
	wait(0.4)
	mouth.Texture = "rbxassetid://828773176"
	aim = false
	
kamehameha1 = false
kamehameha2 = true
GroundShake = true
kamehameha()
GroundShake = false
wait(0.8)
KamehamehaVoice.TimePosition = 0
kamehameha2 = false
if canfly1 == true then
	idle = true
	walk = true
	canjump = true
	end
	if canfly1 == true then
	canfly = true
	canfly1 = false
	end
hum.WalkSpeed = 16
canattack = true
mouth.Texture = "rbxassetid://932140764"
RootPart.Anchored = false
	end
	
	end
	
end)
-----------------------------------------------------------------------------------------------------------------------------------

ad = new("Part",char)
ad.Name = "NewPart"
ad.Size = v3(10,0.1,10)
ad.CanCollide = false
ad.Anchored = true
ad.Position = RootPart.Position - v3(0,3,0)
ad.BrickColor = bc("bright Blue")
ad.Material = "Neon"
ad.Transparency = 1
aad = new("Decal",ad)
aad.Texture = "rbxassetid://110711859"
aad.Face = "Top"
aad.Transparency = 1

mouse.KeyDown:connect(function(key)
	if key == "t" then
	if ssj1 == false then
	if canattack == true then
	canattack = false
	if canfly == true then
	canfly = false
	canfly1 = true
	end
RootPart.Anchored = true
	
	idle = false
	walk = false
	canjump = false
	ssj1 = true
	ssj2 = false
	ssj3 = false
	ssjmusic:Play()
	
	------------------------------------------------
	transform1 = true
	
	wait(0.8)
	
		if potara == false then
	Hair7.Color = Color3.fromRGB(255,246,123)
	Mesh.MeshId = "rbxassetid://430344159"
	Mesh.Scale = v3(6.3,6.3,6.3)
	char.Head.face.Texture= "http://www.roblox.com/asset/?id=976088530"
	Weld.C0 = CFrame.new(-.25,1.2,.34)
		else
			char.Head.face.Texture= "http://www.roblox.com/asset/?id=976088530"
			Hair7.Color = Color3.fromRGB(255,246,123)
			Mesh.MeshId = "rbxassetid://560152258"
	Mesh.Scale = Vector3.new(6.9,6.9,6.9)
	Weld.C0 = CFrame.new(-.211, 0.9, 0.262)*cfa(0,math.rad(0),0)
	end
	
		
	
	a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("New Yeller")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
	
	transform1 = false
	transform2 = true
	ssjauraburst:Play()
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()
	ad.Position = RootPart.Position - v3(0,3,0)
	aad.Transparency = 0
	
	
	
	newaura.ImageTransparency = 0
	ssjaura:Play()
	for i = 1,25 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.04
	end
	wait(0.1)
	
	transform2 = false
	
	
	
	
	-------------------------------------------------
	canattack = true
RootPart.Anchored = false
	if canfly1 == true then
	
	idle = true
	walk = true
	canjump = true
	end
	if canfly1 == true then
	canfly = true
	end
	for i = 1,20 do
	wait()
	aad.Transparency = aad.Transparency + 0.05
	end
	end
	else
		if fuse == false or potara == false then
	if ssj1 == true then
	if canattack == true then
	canattack = false
	if canfly == true then
	canfly = false
	canfly1 = true
	end
RootPart.Anchored = true
	idle = false
	ssj2 = true
	walk = false
	canjump = false
	ssj1 = true
	ssjmusic:Stop()
	ssj2music:Play()
	g1q = Instance.new("Part",char)
	g1q.Name = "Smoke"
	g1q.CanCollide = false
	g1q.Position = RootPart.Position - v3(-8,3,0)
	g1q.Size = v3(0.1,0.1,0.1)
	g1q.Anchored = true
	g1a = Instance.new("Part",char)
	g1a.Name = "Smoke"
	g1a.CanCollide = false
	g1a.Position = RootPart.Position + v3(8,80,0)
	g1a.Size = v3(0.1,0.1,0.1)
	g1a.Anchored = true
	g1q1 = Instance.new("Part",char)
	g1q1.Name = "Smoke"
	g1q1.CanCollide = false
	g1q1.Position = RootPart.Position - v3(-5,3,7)
	g1q1.Size = v3(0.1,0.1,0.1)
	g1q1.Anchored = true
	g1a1 = Instance.new("Part",char)
	g1a1.Name = "Smoke"
	g1a1.CanCollide = false
	g1a1.Position = RootPart.Position + v3(5,80,-7)
	g1a1.Size = v3(0.1,0.1,0.1)
	g1a1.Anchored = true
	g1q2 = Instance.new("Part",char)
	g1q2.Name = "Smoke"
	g1q2.CanCollide = false
	g1q2.Position = RootPart.Position - v3(12,3,-6)
	g1q2.Size = v3(0.1,0.1,0.1)
	g1q2.Anchored = true
	g1a2 = Instance.new("Part",char)
	g1a2.Name = "Smoke"
	g1a2.CanCollide = false
	g1a2.Position = RootPart.Position + v3(-12,80,6)
	g1a2.Size = v3(0.1,0.1,0.1)
	g1a2.Anchored = true
	------------------------------------------------
	transform3 = true
	screaming1:Play()
	mouth.Texture = "rbxassetid://828773176"
	wait(1)
	lighting1.Transparency = ns(0)
	ssj2aura:Play()
	transform3 = false
	transform1 = true
	wait(0.8)
            GroundShake = true
            
	char.Head.face.Texture= "rbxassetid://765493484"
	Mesh.MeshId = "rbxassetid://560718478"
	Mesh.Scale = v3(6.3,6.3,6.3)
	Weld.C0 = CFrame.new(-.25,1.2,.34)
	Hair7.Color = Color3.fromRGB(255,227,10)
	
	a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("New Yeller")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
	
	transform1 = false
	transform4 = true
	ssjauraburst:Play()
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()
	ad.Position = RootPart.Position - v3(0,3,0)
	aad.Transparency = 0
	
	
	
	newaura.ImageTransparency = 0
	
	for i = 1,25 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.04
	end
	
	
	wait()
            GroundShake = false
for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") then
			if v.Size.x > 150 then
				v.CFrame = CFrame.new(v.Position) * CFrame.Angles(rad(0),rad(0),rad(0))
			end
		end
	end
	

            wait(0.9)
	transform4 = false
	mouth.Texture = "rbxassetid://932140764"
	
	
	
	-------------------------------------------------
	canattack = true
RootPart.Anchored = false
	if canfly1 == true then
	idle = true
	walk = true
	canjump = true
	end
	if canfly1 == true then
	canfly = true
	canfly1 = false
	end
	RootPart.Anchored = false
	ssj1 = false
	for i = 1,20 do
	wait()
	aad.Transparency = aad.Transparency + 0.05
	end
	end
	end
		end
		end
	end
end)















mouse.KeyDown:connect(function(key)
	
	if key == "t" then
		if fuse == false or potara == false then
	if ssj2 == true then
	if canattack == true then
	canattack = false
	if canfly == true then
	canfly = false
	canfly1 = true
	end
	idle = false
	ssj2 = false
	ssj1 = false
	ssj3 = true
	ssjb = false
	ssjg = false
	ssjbkaio = false
	ssjbkaiox10 = false
	
          RootPart.Anchored = true
	walk = false
	canjump = false
	ssj1 = true
	ssj2music:Stop()
	ssj3music:Play()
	g1q = Instance.new("Part",char)
	g1q.Name = "Smoke"
	g1q.CanCollide = false
	g1q.Position = RootPart.Position - v3(-8,3,0)
	g1q.Size = v3(0.1,0.1,0.1)
	g1q.Anchored = true
	g1a = Instance.new("Part",char)
	g1a.Name = "Smoke"
	g1a.CanCollide = false
	g1a.Position = RootPart.Position + v3(8,80,0)
	g1a.Size = v3(0.1,0.1,0.1)
	g1a.Anchored = true
	g1q1 = Instance.new("Part",char)
	g1q1.Name = "Smoke"
	g1q1.CanCollide = false
	g1q1.Position = RootPart.Position - v3(-5,3,7)
	g1q1.Size = v3(0.1,0.1,0.1)
	g1q1.Anchored = true
	g1a1 = Instance.new("Part",char)
	g1a1.Name = "Smoke"
	g1a1.CanCollide = false
	g1a1.Position = RootPart.Position + v3(5,80,-7)
	g1a1.Size = v3(0.1,0.1,0.1)
	g1a1.Anchored = true
	g1q2 = Instance.new("Part",char)
	g1q2.Name = "Smoke"
	g1q2.CanCollide = false
	g1q2.Position = RootPart.Position - v3(12,3,-6)
	g1q2.Size = v3(0.1,0.1,0.1)
	g1q2.Anchored = true
	g1a2 = Instance.new("Part",char)
	g1a2.Name = "Smoke"
	g1a2.CanCollide = false
	g1a2.Position = RootPart.Position + v3(-12,80,6)
	g1a2.Size = v3(0.1,0.1,0.1)
	g1a2.Anchored = true
	------------------------------------------------
	
	
	transform1 = true
	
	wait(0.6)
	
	
	
	KiCharge:Play()
	transform1 = false
	transform3 = true
	
	
	GroundShake = true
	coroutine.wrap(function()
		
		
		repeat wait()
			newaurabase.Size = UDim2.new(math.random(20,28),0,math.random(20,28),0)
		until GroundShake == false
		
		KiCharge:Stop()
		
	end)()
	rock = true
        
	mouth.Texture = "rbxassetid://828773176"
	screaming:Play()
	coroutine.wrap(function()
	for i = 1,5 do
	wait(math.random(1,2))
	game.Lighting.Ambient = Color3.new(999,999,999)

wait(0.0001)
game.Lighting.Ambient = Color3.new(0,0,0)
wait(0.0001)
game.Lighting.Ambient = Color3.new(999,999,999)
wait(0.0001)
Lightning:Play()
block = Instance.new("Part",char)
block.Anchored = true
block.Transparency = 1
block.Position = RootPart.Position + v3(math.random(-10,10),-1,math.random(-10,10))
block.CanCollide = false
block2 = Instance.new("Part",char)
block2.Anchored = true
block2.Position = block.Position + v3(0,200,0)
block2.CanCollide = false
block2.Transparency = 1




Lightning1(block.Position,block2.Position,0.2,10,workspace)
game.Lighting.Ambient = Color3.new(0,0,0)
end
end)()
	
	wait(8)
	GroundShake2 = true
	char.Head.face.Texture= "rbxassetid://897514186"
	
lighting.Transparency = ns(0)
	KiCharge:Stop()
	
	
	 Weld.C0 = CFrame.new(0.3, -1, 1.45) * CFrame.Angles(0,rad(180),0)
Mesh.MeshId = "http://www.roblox.com/asset/?id=431511681"
Mesh.Scale = Vector3.new(0.0055,0.005,0.0055)
	
	a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("New Yeller")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
	
	
	ssjauraburst:Play()
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()
	ad.Position = RootPart.Position - v3(0,3,0)
	aad.Transparency = 0
	rock = false
	rock3 = true
	
	newaura.ImageTransparency = 0
	ssjaura:Play()
	for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	GroundShake = false
	wait(0.1)
	
	
	
	
          GroundShake2 = false
for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") then
			if v.Size.x > 150 then
				v.CFrame = CFrame.new(v.Position) * CFrame.Angles(rad(0),rad(0),rad(0))
			end
		end
	end

          wait(0.9)
	transform3 = false
	mouth.Texture = "rbxassetid://932140764"
	
	
	
	-------------------------------------------------
	canattack = true
	rock3 = false
	RootPart.Anchored = false
	if canfly1 == true then
	idle = true
	walk = true
	canjump = true
	end
	if canfly1 == true then
	canfly = true
	canfly1 = false
	end
	for i = 1,20 do
	wait()
	aad.Transparency = aad.Transparency + 0.05
	end
	end
	end
	end
	end
	end)

mouse.KeyDown:connect(function(key)
	if key == "x" then
	if canattack == true then
	if ssj1 == true and fuse == false or ssj2 == true and fuse == false and potara == false or ssj3 == true and fuse == false and potara == false or ssjb == true and fuse == false and potara == false or ssjg == true and fuse == false and potara == false or ssj4 == true and fuse == false and potara == false then
	char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=363968007"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=363966829"
if ssj4 == true then
	ape5.Transparency = 1
end
ssj4 = false
fuse = false
idle7 = false
idle = true
mouth.Transparency = 0
nose.Transparency = 0
	Hair7.BrickColor = BrickColor.new("Really black")
Mesh.Scale = Vector3.new(7.1,7.1,7.1)
Mesh.MeshId = "http://www.roblox.com/asset/?id=501884712"
Weld.C0 = CFrame.new(-0.3, 1.2, -0.32)
newaurabase.Size = UDim2.new(20,0,20,0)
newaura.Position = UDim2.new(-0.5,0,-0.2,0)
newaurabase.AlwaysOnTop = false
newaura.ImageColor3 = Color3.fromRGB(255, 227, 10)
newaurabase.ExtentsOffset = Vector3.new(0,0,3)
char.Head.face.Texture= "rbxassetid://765423946"

	lighting.Transparency = ns(1)
	lighting1.Transparency = ns(1)
	newaura.ImageTransparency = 1
	ssj1 = false
	ssj2 = false
	ssjg = false
	p1.Transparency = 1
	p2.Transparency = 1
	p3.Transparency = 1
	p4.Transparency = 1
	p5.Transparency = 1
	p6.Transparency = 1
	p7.Transparency = 1
	p8.Transparency =1
	p9.Transparency = 1
	p10.Transparency = 1
	p11.Transparency = 1
	p12.Transparency = 1
	p13.Transparency =1
	p14.Transparency = 1
	p15.Transparency =1
	newaura2.ImageTransparency = 1
	ssjb = false
	ssjbkaio = false
	ssjbkaiox10 = false
	a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("White")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
	ssjaura:Stop()
	ssj2aura:Stop()
	
	ssj3 = false
	ssjaura:Stop()
	ssjbaura:Stop()
	ssjbkaura:Stop()
	ssjgmusic:Stop()
	ssjgaura:Stop()
	ssjbmusic:Stop()
	ssj2aura:Stop()
	ssjmusic:Stop()
	ssj2music:Stop()
	ssj3music:Stop()
	PowerDown:Play()
	for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	end
	if fuse == true and ssj4 == true then
		fuse = false
idle7 = false
idle5 = false
noidle = true
ssjb = false
ssj1= false
walk = true
canjump = true
linkpart = Instance.new("Part",char)
linkpart.Position = v3(999,999,999)
linkpart.Transparency = 1
linkpart.CanCollide = false
linkpart.Anchored = true
linkpart.CFrame = RootPart.CFrame * cfa(0,rad(90),0) + RootPart.CFrame.lookVector
RootPart1.Anchored = true
		RootPart.Anchored = true
	RootPart1 = clone1.HumanoidRootPart
	com1 = 1
	Hair7.Color = Color3.fromRGB(0,0,0)
	Mesh.MeshId = "http://www.roblox.com/asset/?id=504772831"
Mesh.Scale = Vector3.new(0.23,0.23,0.23)
Weld.C0 = CFrame.new(0.25, 0.4, 0.5)*CFrame.Angles(0,math.rad(180),0)
	char.Head.face.Texture= "http://www.roblox.com/asset/?id=869609457"
	char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=258281249"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=258281716"
LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Head
	LeftShoulder1.C0 = LeftShoulder1.C0:lerp(CFrame.new(LeftShoulder1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1) --LeftUpperArm
	RightShoulder1.C0 = RightShoulder1.C0:lerp(CFrame.new(RightShoulder1.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperArm
	LeftElbow1.C0 = LeftElbow1.C0:lerp(CFrame.new(LeftElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerArm
	RightElbow1.C0 = RightElbow1.C0:lerp(CFrame.new(RightElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightLowerArm
	LeftHip1.C0 = LeftHip1.C0:lerp(CFrame.new(LeftHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftUpperLeg
	RightHip1.C0 = RightHip1.C0:lerp(CFrame.new(RightHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	LeftKnee1.C0 = LeftKnee1.C0:lerp(CFrame.new( LeftKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerLeg
	RightKnee1.C0 = RightKnee1.C0:lerp(CFrame.new(RightKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	Root1.C0 = Root1.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Torso
	Neck1.C0 = Neck1.C0:lerp(CFrame.new( Neck1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Head
for i = 1,50 do
	wait()
	com1 = com1 + 0.1
RootPart1.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) + linkpart.CFrame.lookVector * com1
RootPart.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) - linkpart.CFrame.lookVector * com1
end
noidle = false
idle = true
	RootPart1.CFrame = CFrame.new(999,999,999)
RootPart1.Anchored = true
RootPart.Anchored = false
hum.HipHeight = 1.35
	end
	if fuse == true and ssj4 == false or potara == true then
		fuse = false
idle7 = false
ssjb = false
ssj2 = false
ssj3 = false
ssj4 = false
ssjaura:Stop()
          newaurabase.Size = UDim2.new(20,0,20,0)
newaura.Position = UDim2.new(-0.5,0,-0.2,0)
newaurabase.AlwaysOnTop = false
newaura.ImageColor3 = Color3.fromRGB(255, 227, 10)
newaurabase.ExtentsOffset = Vector3.new(0,0,3)
ssjg = false
idle5 = false
noidle = true
walk = true
ssj1 = false
newaura.ImageTransparency = 1
char.Head.face.Texture= "rbxassetid://765423946"
Hair7.BrickColor = bc("Really black")
ssjaura:Stop()
canjump = true
if potara == true then
	
	ee1d:Destroy()
	ee2d:Destroy()
	ee3d:Destroy()
	ee4d:Destroy()
	eec:Destroy()
	ee1c:Destroy()
	ee2c:Destroy()
	ee3c:Destroy()
	ee4c:Destroy()
end
linkpart = Instance.new("Part",char)
linkpart.Position = v3(999,999,999)
linkpart.Transparency = 1
linkpart.CanCollide = false
linkpart.Anchored = true
linkpart.CFrame = RootPart.CFrame * cfa(0,rad(90),0) + RootPart.CFrame.lookVector
RootPart1.Anchored = true
		RootPart.Anchored = true
	RootPart1 = clone1.HumanoidRootPart
	com1 = 1
	char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=363968007"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=363966829"
Weld.C0 = CFrame.new(-0.3, 1.2, -0.32)
Mesh.Scale = Vector3.new(6.8,6.8,6.8)
Mesh.MeshId = "http://www.roblox.com/asset/?id=501884712"
LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Head
	LeftShoulder1.C0 = LeftShoulder1.C0:lerp(CFrame.new(LeftShoulder1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1) --LeftUpperArm
	RightShoulder1.C0 = RightShoulder1.C0:lerp(CFrame.new(RightShoulder1.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperArm
	LeftElbow1.C0 = LeftElbow1.C0:lerp(CFrame.new(LeftElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerArm
	RightElbow1.C0 = RightElbow1.C0:lerp(CFrame.new(RightElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightLowerArm
	LeftHip1.C0 = LeftHip1.C0:lerp(CFrame.new(LeftHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftUpperLeg
	RightHip1.C0 = RightHip1.C0:lerp(CFrame.new(RightHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	LeftKnee1.C0 = LeftKnee1.C0:lerp(CFrame.new( LeftKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerLeg
	RightKnee1.C0 = RightKnee1.C0:lerp(CFrame.new(RightKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	Root1.C0 = Root1.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Torso
	Neck1.C0 = Neck1.C0:lerp(CFrame.new( Neck1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Head
	a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("White")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
	ssjbaura:Stop()
	PowerDown:Play()
	coroutine.wrap(function()
	for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	end)()
for i = 1,50 do
	wait()
	com1 = com1 + 0.1
RootPart1.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) + linkpart.CFrame.lookVector * com1
RootPart.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) - linkpart.CFrame.lookVector * com1
end
noidle = false
idle = true
if potara == true then
	ee:Destroy()
	ee1:Destroy()
	ee2:Destroy()
	ee3:Destroy()
	ee4:Destroy()
	eed:Destroy()
end
potara = false
	RootPart1.CFrame = CFrame.new(999,999,999)
RootPart1.Anchored = true
RootPart.Anchored = false
hum.HipHeight = 1.35
	end
	end
	end
	end)
mouse.KeyDown:connect(function(key)
	if key == "c" then
	if canattack == true then
	if ssj1 == true or ssj2 == true or ssj3 == true then
	lighting.Transparency = ns(1)
	lighting1.Transparency = ns(1)
	newaura.ImageTransparency = 1
	a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("New Yeller")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
	ssjaura:Stop()
	ssj2aura:Stop()
	AuraOff:Play()
	for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	end
	if ssjb == true then
		ssjbaura:Stop()
		
		newaura.ImageTransparency = 1
		a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("Toothpaste")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
AuraOff:Play()
for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	end
	if ssj4 == true then
		ssjaura:Stop()
		
		newaura.ImageTransparency = 1
		a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("New Yeller")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
AuraOff:Play()
for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	end
	if ssjg == true then
		ssjgaura:Stop()
		
		newaura.ImageTransparency = 1
		a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("Really red")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
AuraOff:Play()
for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	end
	end
	end
	end)




mouse.KeyDown:connect(function(key)
	if key == "h" then
	if canattack == true and flying1 == false and punched1 == true then
		
		idle = false
		walk = false
		canjump = false
		canattack = false
		punch1 = true
		punched1 = false
		punched2 = true
		af1 = new("Part",char)
af1.Name = "NewPart"
af1.Size = v3(1,1,1)
af1.Position = v3(999,999,999)
af1.Material = "Neon"
af1.Transparency = 1

aaaf1 =new("Weld",af1)
aaaf1.Part0 = RootPart
aaaf1.Part1 = af1
aaaf1.C0 = cf(0,0,-2) * cfa(rad(0),rad(0),rad(0))
wait(0.1)
		punch1 = false
		punch2 = true
		wait(0.2)
		
af1.Touched:connect(function(hit)
	if hit.Parent:FindFirstChild("Head") then
		grab = true
		go11 = 2.3
		af1:Destroy()
		punchsound1:Play()
		hit1 = true
		hit.Parent:findFirstChild("Head").Anchored = true
		for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
				v.Health = v.Health - 10
				if v.Health > 100 then
						v.Health = 100
							v.MaxHealth = 100
					end
			end
			end
		hit.Parent:findFirstChild("Head").CFrame = RootPart.CFrame + RootPart.CFrame.lookVector * 2.3
		punch2 = false
		
	
		idle = false
		walk = false
		canjump = false
		canattack = false
		punch3 = true
		punched1 = false
		punched2 = false
		punched3 = true
		af1 = new("Part",char)
af1.Name = "NewPart"
af1.Size = v3(1,1,1)
af1.Position = v3(999,999,999)
af1.Material = "Neon"
af1.Transparency = 1

aaaf1 =new("Weld",af1)
aaaf1.Part0 = LeftHand
aaaf1.Part1 = af1
aaaf1.C0 = cf(0,0,0) * cfa(rad(0),rad(0),rad(0))

		wait(0.1)
		punch3 = false
		punch4 = true
		for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
				v.Health = v.Health - 10
				if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
		end
		punchsound1:Play()
		wait(0.2)
		if hit1 == false then
			af1:Destroy()
			hit1 = false
		end
		punch4 = false
			
	
		idle = false
		walk = false
		canjump = false
		canattack = false
		uppercut1 = true
		punched1 = false
		punched2 = false
		punched3 = false
		punched4 = true
		wait(0.3)
		uppercut1 = false
		uppercut2 = true
		af1 = new("Part",char)
af1.Name = "NewPart"
af1.Size = v3(1,1,1)
af1.Position = v3(999,999,999)
af1.Material = "Neon"
af1.Transparency = 1

aaaf1 =new("Weld",af1)
aaaf1.Part0 = LeftHand
aaaf1.Part1 = af1
aaaf1.C0 = cf(0,0,0) * cfa(rad(0),rad(0),rad(0))
for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
				v.Health = v.Health - 10
				if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
end
punchsound1:Play()
	for i = 1,10 do
		wait()
		up = up + 1
		hit.Parent:findFirstChild("Head").CFrame = CFrame.new(hit.Parent:findFirstChild("Head").CFrame.x,hit.Parent:findFirstChild("Head").CFrame.y + up,hit.Parent:findFirstChild("Head").CFrame.z) 
	end
	hit.Parent:findFirstChild("Head").Anchored = true
	
	
	

		wait(0.3)
		uppercut2 = false
	
		RootPart.CFrame = hit.Parent:findFirstChild("Head").CFrame - hit.Parent:findFirstChild("Head").CFrame.lookVector * 2.3
		RootPart.Anchored = true
		idle = false
		walk = false
		canjump = false
		canattack = false
		knockdown1 = true
		punched1 = true
		punched2 = false
		punched3 = false
		punched4 = false
		wait(0.3)
		knockdown1 = false
		knockdown2 = true
		StrongPunch:Play()
		for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
					v.Health = v.Health - 10
					if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
		end
		GroundWave11()
		punchsound2:Play()
		up = 0
		for i = 1,10 do
		wait()
		up = up + 1
		hit.Parent:findFirstChild("Head").CFrame = CFrame.new(hit.Parent:findFirstChild("Head").CFrame.x,hit.Parent:findFirstChild("Head").CFrame.y - up,hit.Parent:findFirstChild("Head").CFrame.z) 
	end
		wait(0.2)
		knockdown2 = false
		hit.Parent:findFirstChild("Head").Anchored = true
		RootPart.CFrame = hit.Parent:findFirstChild("Head").CFrame - hit.Parent:findFirstChild("Head").CFrame.lookVector * 2.3
		FastPunch:Play()
		for i = 1,3 do
		punch1 = true
		wait(0.01)
		punch1 = false
		
		punch2 = true
		wait(0.01)
		punch2 = false
		GroundWave1()
		for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
					v.Health = v.Health - 1
					if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
			
		end
		punchsound1:Play()
		punch3 = true
		wait(0.01)
		punch3 = false
		
		punch4 = true
		wait(0.01)
		punch4 = false
		
		
			kick1 = true
		wait(0.01)
		kick1 = false
		
		kick2 = true
		wait(0.01)
		kick2 = false
		GroundWave111()
		
		punchsound1:Play()
		kick3 = true
		wait(0.01)
	kick3 = false
		
		kick4 = true
		wait(0.01)
		kick4 = false
		
		punchsound1:Play()
		end
		punch1 = true
		wait(0.5)
		punch1 = false
		GroundWave1()
		punch2 = true
		wait(0.01)
		
		punchsound2:Play()
		for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
					v.Health = v.Health - 10
					if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
		end
		coroutine.wrap(function()
		for i = 1,40 do
			wait()
			go11 = go11+ 2
			
			hit.Parent:findFirstChild("Head").CFrame = RootPart.CFrame + RootPart.CFrame.lookVector * go11
		
		end
		
		end)()
		
		
		
		RootPart.Anchored = true
		punch2 = false
	kamehameha5 = true
	
	startk = true
	kamecharge:Play()
	wait(0.5)
	
	
kamehameha5 = false
kamehameha2 = true
hit.Parent:findFirstChild("Head").Anchored = false
kamehameha()
wait(0.8)
kamehameha2 = false
	RootPart.Anchored = false
		idle = true
		walk = true
		canjump = true
		canattack = true
	
		go11 = 2.3
	up = 0
		idle = true
		walk = true
		canjump = true
		canattack = true
	
	
	
if hit1 == false then
			af1:Destroy()
			hit1 = false
		end
		idle = true
		walk = true
		canjump = true
		canattack = true
	

		idle = true
		
		walk = true
		canjump = true
		canattack = true
	end

end)
end
	end
		end)
	

mouse.KeyDown:connect(function(key)
	if key == "r" then
	if canattack == true and kiblastdone == false then
		idle = false
		walk = false
		kiblastdone = true
		canattack = false
		canjump = false
	kiblast1 = true
	wait(0.2)
	kiblast1 = false
	kiblast2 = true
		kiblastsound:Play()
		ay = new("Part",char)
ay.Name = "NewPart"
ay.Size = v3(1,1,1)
ay.CanCollide = false
ay.BrickColor = bc("Cyan")
ay.Material = "Neon"
ay.Transparency = 0
aay = new("SpecialMesh",ay)
aay.MeshType = "Sphere"
aay.Scale = v3(1,1,1)
ay.Position = v3(999,999,999)
ay.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector * 3
	ys = Instance.new("BodyVelocity",ay)

ys.maxForce = Vector3.new(math.huge, math.huge, math.huge)

ys.Velocity = RootPart.CFrame.lookVector * 60
ay.Touched:connect(function(hit)
	if hit then
		
		
	
	
	

	kamehit:Play()
	for i = 1,10 do
	wait()
	aay.Scale = aay.Scale + v3(1,1,1)
	ay.Transparency = ay.Transparency + 0.1
	end
	ay:Destroy()
	
	end
	if hit.Parent:FindFirstChild("Head") ~= nil or hit.Parent.Parent:FindFirstChild("Head") ~= nil then
		for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
					v.Health = v.Health - 5
					if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
			end
	end
	
end)

game.Debris:AddItem(ay,3)
	wait(0.2)
	kiblast2= false	
		idle = true
		walk = true
		canjump = true
		canattack = true

	end
	end
	end)
	
mouse.KeyDown:connect(function(key)
	if key == "r" then
	if canattack == true and kiblastdone == true then
		idle = false
		walk = false
		kiblastdone = false
		canattack = false
		canjump = false
	kiblast3 = true
	wait(0.2)
	kiblast3 = false
	kiblast4 = true
	kiblastsound:Play()	
		ay = new("Part",char)
ay.Name = "NewPart"
ay.Size = v3(1,1,1)
ay.CanCollide = false
ay.BrickColor = bc("Cyan")
ay.Material = "Neon"
ay.Transparency = 0
aay = new("SpecialMesh",ay)
aay.MeshType = "Sphere"
aay.Scale = v3(1,1,1)
ay.Position = v3(999,999,999)
ay.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector * 3
	ys = Instance.new("BodyVelocity",ay)

ys.maxForce = Vector3.new(math.huge, math.huge, math.huge)

ys.Velocity = RootPart.CFrame.lookVector * 60
ay.Touched:connect(function(hit)
	if hit then
		
		
	
	
	

	kamehit:Play()
	for i = 1,10 do
	wait()
	aay.Scale = aay.Scale + v3(1,1,1)
	ay.Transparency = ay.Transparency + 0.1
	end
	ay:Destroy()
	
	end
	if hit.Parent:FindFirstChild("Head") ~= nil or hit.Parent.Parent:FindFirstChild("Head") ~= nil then
		for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
					v.Health = v.Health - 5
					if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
			end
	end
	
end)

game.Debris:AddItem(ay,3)
	wait(0.2)
	kiblast4= false	
		idle = true
		walk = true
		canjump = true
		canattack = true

	end
	end
	end)

mouse.KeyDown:connect(function(key)
	if key == "g" then
	if canattack == true and flying1 == false and punched1 == true then
		
		idle = false
		walk = false
		canjump = false
		canattack = false
		punch1 = true
		punched1 = false
		punched2 = true
		af1 = new("Part",char)
af1.Name = "NewPart"
af1.Size = v3(1,1,1)
af1.Position = v3(999,999,999)
af1.Material = "Neon"
af1.Transparency = 1

aaaf1 =new("Weld",af1)
aaaf1.Part0 = RootPart
aaaf1.Part1 = af1
aaaf1.C0 = cf(0,0,-2) * cfa(rad(0),rad(0),rad(0))
wait(0.1)
		punch1 = false
		punch2 = true
		wait(0.2)
		
af1.Touched:connect(function(hit)
	if hit.Parent:FindFirstChild("Head") then
		grab = true
		go11 = 2.3
		af1:Destroy()
		punchsound1:Play()
		hit1 = true
		hit.Parent:findFirstChild("Head").Anchored = true
		for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
				v.Health = v.Health - 10
				if v.Health > 100 then
						v.Health = 100
							v.MaxHealth = 100
					end
			end
			end
		hit.Parent:findFirstChild("Head").CFrame = RootPart.CFrame + RootPart.CFrame.lookVector * 2.3
		punch2 = false
		
	
		idle = false
		walk = false
		canjump = false
		canattack = false
		punch3 = true
		punched1 = false
		punched2 = false
		punched3 = true
		af1 = new("Part",char)
af1.Name = "NewPart"
af1.Size = v3(1,1,1)
af1.Position = v3(999,999,999)
af1.Material = "Neon"
af1.Transparency = 1

aaaf1 =new("Weld",af1)
aaaf1.Part0 = LeftHand
aaaf1.Part1 = af1
aaaf1.C0 = cf(0,0,0) * cfa(rad(0),rad(0),rad(0))

		wait(0.1)
		punch3 = false
		punch4 = true
		for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
				v.Health = v.Health - 10
				if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
		end
		punchsound1:Play()
		wait(0.2)
		if hit1 == false then
			af1:Destroy()
			hit1 = false
		end
		punch4 = false
			
	
		idle = false
		walk = false
		canjump = false
		canattack = false
		uppercut1 = true
		punched1 = false
		punched2 = false
		punched3 = false
		punched4 = true
		wait(0.3)
		uppercut1 = false
		uppercut2 = true
		af1 = new("Part",char)
af1.Name = "NewPart"
af1.Size = v3(1,1,1)
af1.Position = v3(999,999,999)
af1.Material = "Neon"
af1.Transparency = 1

aaaf1 =new("Weld",af1)
aaaf1.Part0 = LeftHand
aaaf1.Part1 = af1
aaaf1.C0 = cf(0,0,0) * cfa(rad(0),rad(0),rad(0))
for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
				v.Health = v.Health - 10
				if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
end
punchsound1:Play()
	for i = 1,10 do
		wait()
		up = up + 1
		hit.Parent:findFirstChild("Head").CFrame = CFrame.new(hit.Parent:findFirstChild("Head").CFrame.x,hit.Parent:findFirstChild("Head").CFrame.y + up,hit.Parent:findFirstChild("Head").CFrame.z) 
	end
	hit.Parent:findFirstChild("Head").Anchored = true
	
	
	

		wait(0.3)
		uppercut2 = false
	
		RootPart.CFrame = hit.Parent:findFirstChild("Head").CFrame - hit.Parent:findFirstChild("Head").CFrame.lookVector * 2.3
		RootPart.Anchored = true
		idle = false
		walk = false
		canjump = false
		canattack = false
		knockdown1 = true
		punched1 = true
		punched2 = false
		punched3 = false
		punched4 = false
		wait(0.3)
		knockdown1 = false
		knockdown2 = true
		StrongPunch:Play()
		for i,v in pairs(hit.Parent:GetChildren()) do
			
			
			if v:IsA("Humanoid") then
					v.Health = v.Health - 10
					if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
		end
		GroundWave11()
		punchsound2:Play()
		up = 0
		for i = 1,10 do
		wait()
		up = up + 1
		hit.Parent:findFirstChild("Head").CFrame = CFrame.new(hit.Parent:findFirstChild("Head").CFrame.x,hit.Parent:findFirstChild("Head").CFrame.y - up,hit.Parent:findFirstChild("Head").CFrame.z) 
	end
		wait(0.2)
		knockdown2 = false
		hit.Parent:findFirstChild("Head").Anchored = true
	
		 RootPart.CFrame = CFrame.new(RootPart.Position,Vector3.new(hit.Parent:findFirstChild("Head").Position.x, hit.Parent:findFirstChild("Head").Position.y,hit.Parent:findFirstChild("Head").Position.z))
	Instance.new("Smoke",hit.Parent:findFirstChild("Head")).Color = Color3.fromRGB(79,91,79)
	coroutine.wrap(function()
		
		for i= 1,8 do
		
		FastPunch:Play()
		wait(0.4)
		end
	end)()
	coroutine.wrap(function()
		wait(0.5)
			ay1 = new("Part",char)
ay1.Name = "NewPart"
ay1.Size = v3(1,1,1)
ay1.CanCollide = false
ay1.BrickColor = bc("Cyan")
ay1.Material = "Neon"
ay1.Transparency = 0
aay1 = new("SpecialMesh",ay1)
aay1.MeshType = "Sphere"
aay1.Scale = v3(3,3,3)
ay1.Anchored = true
ay1.Position = hit.Parent:findFirstChild("Head").Position
for i = 1,5 do
	wait()
		for i = 1,10 do
			wait()
			aay1.Scale = aay1.Scale + v3(2,2,2)
		end
		local HandCF = ay1.CFrame  * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	Colors = {"White", "White"}
	local wave11111 = Instance.new("Part", char)
	wave11111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave11111.Anchored = true
	wave11111.Name = "Wave"
	wave11111.CanCollide = false
	wave11111.Locked = true
	wave11111.Size = Vector3.new(1, 1, 1)
	wave11111.TopSurface = "Smooth"
	wave11111.BottomSurface = "Smooth"
	wave11111.Transparency = 0.35
	wave11111.CFrame = HandCF
	wm31111 = Instance.new("SpecialMesh", wave11111)
	wm31111.MeshId = "rbxassetid://3270017"
	
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm31111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave11111.Size = wm31111.Scale
	wave11111.CFrame = HandCF
	wave11111.Transparency = i/30
	wait()
	end
	wait()
	wave11111:Destroy()
	end)()
		for i = 1,10 do
			wait()
			aay1.Scale = aay1.Scale - v3(2,2,2)
		end
		local HandCF = ay1.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	Colors = {"White", "White"}
	local wave11111 = Instance.new("Part", char)
	wave11111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave11111.Anchored = true
	wave11111.Name = "Wave"
	wave11111.CanCollide = false
	wave11111.Locked = true
	wave11111.Size = Vector3.new(1, 1, 1)
	wave11111.TopSurface = "Smooth"
	wave11111.BottomSurface = "Smooth"
	wave11111.Transparency = 0.35
	wave11111.CFrame = HandCF
	wm31111 = Instance.new("SpecialMesh", wave11111)
	wm31111.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
	for i = 1, 30, 1 do
	wm31111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
	wave11111.Size = wm31111.Scale
	wave11111.CFrame = HandCF
	wave11111.Transparency = i/30
	wait()
	end
	wait()
	wave11111:Destroy()
	end)()
end
ay1:Destroy()
		end)()
	coroutine.wrap(function()
		wait(0.5)
		for i= 1,32 do
		wait(0.1)
		kiblastsound:Play()
		kamehit:Play()
		
		end
	end)()
	
		for i = 1,20 do
			wait()
	kiblast1 = true
	wait()
	kiblast1 = false
	kiblast2 = true
		
		ay = new("Part",char)
ay.Name = "NewPart"
ay.Size = v3(1,1,1)
ay.CanCollide = false
ay.BrickColor = bc("Cyan")
ay.Material = "Neon"
ay.Transparency = 0
aay = new("SpecialMesh",ay)
aay.MeshType = "Sphere"
aay.Scale = v3(2,2,2)
ay.Position = v3(999,999,999)
ay.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector * 3
	ys = Instance.new("BodyVelocity",ay)

ys.maxForce = Vector3.new(math.huge, math.huge, math.huge)

ys.Velocity = RootPart.CFrame.lookVector * 80
ay.Touched:connect(function(hit)
	if hit ~= ay then
		
		
	
	
	

	
	
	
	end
	if hit.Parent:FindFirstChild("Head") ~= nil or hit.Parent.Parent:FindFirstChild("Head") ~= nil then
		
		for i,v in pairs(hit.Parent:GetChildren()) do
			
		
			if v:IsA("Humanoid") then
					v.Health = v.Health -  0.4
					if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
			end
	end
	
end)

game.Debris:AddItem(ay,3)
	wait()
	kiblast2= false	
	
	
		

		
	kiblast3 = true
	wait()
	kiblast3 = false
	kiblast4 = true
		
		ay = new("Part",char)
ay.Name = "NewPart"
ay.Size = v3(1,1,1)
ay.CanCollide = false
ay.BrickColor = bc("Cyan")
ay.Material = "Neon"
ay.Transparency = 0
aay = new("SpecialMesh",ay)
aay.MeshType = "Sphere"
aay.Scale = v3(2,2,2)
ay.Position = v3(999,999,999)
ay.CFrame = RootPart.CFrame + RootPart.CFrame.lookVector * 3
	ys = Instance.new("BodyVelocity",ay)

ys.maxForce = Vector3.new(math.huge, math.huge, math.huge)

ys.Velocity = RootPart.CFrame.lookVector * 80
ay.Touched:connect(function(hit)
	if hit ~= ay then
		
		
	
	
	

	
	
	end
	if hit.Parent:FindFirstChild("Head") ~= nil and hit.Parent:FindFirstChild("NewPart") == nil then
	
	
		for i,v in pairs(hit.Parent:GetChildren()) do
			
		
	
			if v:IsA("Humanoid") then
					v.Health = v.Health - 0.4
					if v.Health > 100 then
						v.Health = 100
						v.MaxHealth = 100
					end
			end
			end
	end
	
end)

game.Debris:AddItem(ay,3)
	wait()
	kiblast4= false	
		end


	
	
wait(2)
		idle = true
		walk = true
		canjump = true
		canattack = true
	
hit.Parent:findFirstChild("Head").Anchored = false
		idle = true
		go11 = 2.3
		walk = true
		up = 0
		canjump = true
		canattack = true
		RootPart.Anchored = false
	end

end)
end
	end
		end)














mouse.KeyDown:connect(function(key)
if key == "y" then
	if fuse == false then
	if ssj1 == false and ssj2 == false and ssj3 == false then
	if canattack == true then
	canattack = false
	if canfly == true then
	canfly = false
	canfly1 = true
	end
	newaura.Position = UDim2.new(-0.475,0,-0.25,0)
RootPart.Anchored = true
	newaurabase.Size = UDim2.new(15,0,25,0)
newaurabase.AlwaysOnTop = false
newaura.ImageColor3 = Color3.fromRGB(255, 255, 255)
newaurabase.ExtentsOffset = Vector3.new(0,0,-2)
	idle = false
	ssjb = true
	ssj1 = false
	ssj2= false
	ssj3 = false
	walk = false
	canjump = false
	
	ssjbmusic:Play()
	g1q = Instance.new("Part",char)
	g1q.Name = "Smoke"
	g1q.CanCollide = false
	g1q.Position = RootPart.Position - v3(-8,3,0)
	g1q.Size = v3(0.1,0.1,0.1)
	g1q.Anchored = true
	g1a = Instance.new("Part",char)
	g1a.Name = "Smoke"
	g1a.CanCollide = false
	g1a.Position = RootPart.Position + v3(8,80,0)
	g1a.Size = v3(0.1,0.1,0.1)
	g1a.Anchored = true
	g1q1 = Instance.new("Part",char)
	g1q1.Name = "Smoke"
	g1q1.CanCollide = false
	g1q1.Position = RootPart.Position - v3(-5,3,7)
	g1q1.Size = v3(0.1,0.1,0.1)
	g1q1.Anchored = true
	g1a1 = Instance.new("Part",char)
	g1a1.Name = "Smoke"
	g1a1.CanCollide = false
	g1a1.Position = RootPart.Position + v3(5,80,-7)
	g1a1.Size = v3(0.1,0.1,0.1)
	g1a1.Anchored = true
	g1q2 = Instance.new("Part",char)
	g1q2.Name = "Smoke"
	g1q2.CanCollide = false
	g1q2.Position = RootPart.Position - v3(12,3,-6)
	g1q2.Size = v3(0.1,0.1,0.1)
	g1q2.Anchored = true
	g1a2 = Instance.new("Part",char)
	g1a2.Name = "Smoke"
	g1a2.CanCollide = false
	g1a2.Position = RootPart.Position + v3(-12,80,6)
	g1a2.Size = v3(0.1,0.1,0.1)
	g1a2.Anchored = true
	------------------------------------------------
	transform1 = true
	
	wait(0.8)
	if potara == false then
	Hair7.Color = Color3.fromRGB(21,221,239)
	Mesh.MeshId = "rbxassetid://430344159"
	Mesh.Scale = v3(6.3,6.3,6.3)
	char.Head.face.Texture= "rbxassetid://959519291"
	Weld.C0 = CFrame.new(-.25,1.2,.34)
	else
		char.Head.face.Texture= "rbxassetid://959519291"
		Hair7.Color = Color3.fromRGB(21,221,239)
		Mesh.MeshId = "rbxassetid://560152258"
	Mesh.Scale = Vector3.new(6.9,6.9,6.9)
	Weld.C0 = CFrame.new(-.211, 0.9, 0.262)*cfa(0,math.rad(0),0)
	end
	a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("Cyan")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
	
	transform1 = false
	transform2 = true
	ssjbauraburst:Play()
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()
	ad.Position = RootPart.Position - v3(0,3,0)
	aad.Transparency = 0
	
	
	
	newaura.ImageTransparency = 0
	ssjbaura:Play()
	for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	wait(0.1)
	wait(1.4)
	transform2 = false
	
	
	
	
	-------------------------------------------------
	canattack = true
RootPart.Anchored = false
	if canfly1 == true then
	
	idle = true
	walk = true
	canjump = true
	end
	if canfly1 == true then
	canfly = true
	end
	for i = 1,20 do
	wait()
	aad.Transparency = aad.Transparency + 0.05
	end
	end
	end
	end
	end
	end)



mouse.KeyDown:connect(function(key)
if key == "k" then
	if potara == false then
	if ssjb == true then
	if canattack == true then
	canattack = false
	if canfly == true then
	canfly = false
	canfly1 = true
	end

	
	idle = false
	ssjb = true
	ssjbkaio = true
	ssj1 = false
	ssj2= false
	ssj3 = false
	walk = false
	canjump = false
	
	ssjbmusic:Play()
	
	------------------------------------------------
	transform3 = true
	
	wait(0.8)
	Hair7.Color = Color3.fromRGB(21,221,239)
	Mesh.MeshId = "rbxassetid://430344159"
	Mesh.Scale = v3(6.3,6.3,6.3)
	char.Head.face.Texture= "rbxassetid://959519291"
	Weld.C0 = CFrame.new(-.25,1.2,.34)
	
	a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("Cyan")
a21e.Material = "Neon"
a21e.Transparency = 1
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
	
	
	
	
	
	smokey = Instance.new("Smoke",RootPart)
	smokey.Color = Color3.new(255,0,0)
	smokey.Opacity = 1
	smokey.Size = 2
	ssjbkaioken.TimePosition = 1.5
	ssjbkaioken:Play()
	wait(0.2)
	coroutine.wrap(function()
		repeat
			wait()
		newaurabase.Size = UDim2.new(math.random(15,17),0,math.random(25,30),0)
		until newaura.ImageTransparency == 1
		
		
		
	end)()
	rock = true
	redlight = Instance.new("PointLight",LowerTorso)
	redlight.Color = Color3.new(255,0,0)
	redlight.Brightness = math.huge
	mouth.Texture = "rbxassetid://828773176"
	GroundShake = true
          RootPart.Anchored = true
         
	wait(10)
	
	wait(7)
	rock2 = true
	rock = false
smokey:Destroy()
ssjbaura:Stop()
ssjbmusic:Stop()
	transform3 = false
	transform2 = false
	transform5 = true
	redlight:Destroy()
	
	mouth.Texture = "rbxassetid://932140764"
newaura.ImageTransparency = 1
	GroundShake = false
	
	a21e.Transparency = 0
	for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	aa21e.Scale = v3(1,1,1)
	a21e.Transparency = 1
	wait(1)
	chatfunc("Kaioken!")
	mouth.Texture = "rbxassetid://828773176"
	wait(0.3)
	mouth.Texture = "rbxassetid://932140764"
	wait(0.3)
	mouth.Texture = "rbxassetid://828773176"
	wait(0.3)
	mouth.Texture = "rbxassetid://932140764"
	wait(0.3)
	mouth.Texture = "rbxassetid://828773176"
	wait(0.3)
	mouth.Texture = "rbxassetid://932140764"
	wait(0.3)
          GroundShake2 = true
	transform5 = false
	transform3 = false
	transform2 = true
	ssjbauraburst:Play()
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()
	ad.Position = RootPart.Position - v3(0,3,0)
	aad.Transparency = 0
	newaura2.ImageTransparency = 0
	wait(0.1)
	
	
	newaura.ImageTransparency = 0
	ssjbaura:Stop()
	ssjbkaura:Play()
	a21e.Transparency = 0
	for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
          GroundShake2 = false
for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") then
			if v.Size.x > 150 then
				v.CFrame = CFrame.new(v.Position) * CFrame.Angles(rad(0),rad(0),rad(0))
			end
		end
	end
	wait(0.1)
	wait(1.4)
	chatfunc("This Is My Trump Card")
	rock2 = false
	transform2 = false
	
	
	
	
	-------------------------------------------------
	canattack = true
RootPart.Anchored = false
	if canfly1 == true then
	
	idle = true
	walk = true
	canjump = true
	end
	if canfly1 == true then
	canfly = true
	end
	for i = 1,20 do
	wait()
	aad.Transparency = aad.Transparency + 0.05
	end
	end
	end
	end
	end
	end)



mouse.KeyDown:connect(function(key)
if key == "k" then
	if ssjbkaio == true then
	if canattack == true then
	canattack = false
	if canfly == true then
	canfly = false
	canfly1 = true
	end

	RootPart.Anchored = true
	idle = false
	ssjb = true
	ssjbkaio = false
	ssjbkaiox10 = true
	ssj1 = false
	ssj2= false
	ssj3 = false
	walk = false
	canjump = false
	
	ssjbmusic:Play()
	
	------------------------------------------------
	transform3 = true
	
	wait(0.8)
	
	
	a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("Cyan")
a21e.Material = "Neon"
a21e.Transparency = 1
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
	
	
	
	
	
	
	ssjbkaioken1:Play()
	coroutine.wrap(function()
		repeat
			wait()
		newaurabase2.Size = UDim2.new(math.random(30,35),0,math.random(60,75),0)
		until Hair7.Color == Color3.fromRGB(210, 211, 223)
		
		
		
	end)()
	rock = true
	redlight = Instance.new("PointLight",LowerTorso)
	redlight.Color = Color3.new(255,0,0)
	redlight.Brightness = math.huge
	GroundShake = true
         
	mouth.Texture = "rbxassetid://828773176"
	wait(9)
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()
	ad = new("Part",char)
ad.Name = "NewPart"
ad.Size = v3(30,0.1,30)	
ad.CanCollide = false
ad.Anchored = true
ad.Position = RootPart.Position - v3(0,2,0)
ad.BrickColor = bc("bright Blue")
ad.Material = "Neon"
ad.Transparency = 1
aad = new("Decal",ad)

aad.Face = "Top"
aad.Transparency = 1
		aad.Transparency = 0
		aad.Texture = "http://www.roblox.com/asset/?id=108186785"
	wait(11)
	
	redlight:Destroy()
	
	chatfunc("Times 10!")
	mouth.Texture = "rbxassetid://828773176"
	wait(0.3)
	mouth.Texture = "rbxassetid://932140764"
	wait(0.3)
	mouth.Texture = "rbxassetid://828773176"
	wait(0.3)
	mouth.Texture = "rbxassetid://932140764"
	wait(0.2)
	mouth.Texture = "rbxassetid://828773176"
	wait(0.2)
	mouth.Texture = "rbxassetid://932140764"
	wait(0.2)
	mouth.Texture = "rbxassetid://828773176"
	wait(1.4)
	rock3 = true
	rock = false
	GroundShake2 = true 
	
	ssjbauraburst:Play()
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()
	
	aad.Transparency = 0
	newaura2.ImageTransparency = 0
	
	p1.Transparency = 0.5
	p2.Transparency = 0.5
	p3.Transparency = 0.5
	p4.Transparency = 0.5
	p5.Transparency = 0.5
	p6.Transparency = 0.5
	p7.Transparency = 0.5
	p8.Transparency = 0.5
	p9.Transparency = 0.5
	p10.Transparency = 0.5
	p11.Transparency = 0.5
	p12.Transparency = 0.5
	p13.Transparency = 0.5
	p14.Transparency = 0.5
	p15.Transparency = 0.5
	newaura.ImageTransparency = 0
	ssjbaura:Stop()
	ssjbkaura:Play()
	a21e.Transparency = 0
	Hair7.Color = Color3.fromRGB(210, 211, 223)
	
	Mesh.MeshId = "rbxassetid://430344159"
	Mesh.Scale = v3(6.3,6.3,6.3)
	char.Head.face.Texture= "http://www.roblox.com/asset/?id=975967879"
	Weld.C0 = CFrame.new(-.25,1.2,.34)
	for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	ssjbkaioken1:Stop()
	mouth.Texture = "rbxassetid://932140764"
	wait()
	GroundShake = false
	wait()
	
	wait()
          GroundShake2 = false
for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") then
			if v.Size.x > 150 then
				v.CFrame = CFrame.new(v.Position) * CFrame.Angles(rad(0),rad(0),rad(0))
			end
		end
	end
          wait(2)
	
	
	
	
	rock3 = false
	-------------------------------------------------
	transform3 = false
	chatfunc("I Can't Maintain This Form For Long")
	canattack = true
RootPart.Anchored = false
	if canfly1 == true then
	
	idle = true
	walk = true
	canjump = true
	end
	if canfly1 == true then
	canfly = true
	end
	for i = 1,20 do
	wait()
	aad.Transparency = aad.Transparency + 0.05
	end
	end
	end
	end
	end)




mouse.KeyDown:connect(function(key)
if key == "u" then
	if fuse == false or potara == false then
	if ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false then
	if canattack == true then
	canattack = false
	if canfly == true then
	canfly = false
	canfly1 = true
	end
	newaura.Position = UDim2.new(-0.57,0,-0.28,0)
	newaurabase.Size = UDim2.new(10,0,20,0)
newaurabase.AlwaysOnTop = false
newaurabase.ExtentsOffset = v3(0,0,-2)
RootPart.Anchored = true
	
	idle = false
	ssjb = false
	ssjg = true
	ssj1 = false
	ssj2= false
	ssj3 = false
	walk = false
	canjump = false
	
	ssjgmusic:Play()
	
	------------------------------------------------
	transform1 = true
	
	wait(0.8)
	Hair7.Color = Color3.fromRGB(255,16,88)
	GroundShake = true
	char.Head.face.Texture= "rbxassetid://900680867"
	
	
	a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("Really red")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
	
	transform1 = false
	transform2 = true
	ssjbauraburst:Play()
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()
	ad.Position = RootPart.Position - v3(0,3,0)
	aad.Transparency = 0
	
	
	
	newaura.ImageTransparency = 0
	ssjgaura:Play()
	for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	GroundShake = false
	for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") then
			if v.Size.x > 150 then
				v.CFrame = CFrame.new(v.Position) * CFrame.Angles(rad(0),rad(0),rad(0))
			end
		end
	end
	wait(0.1)
	wait(1.4)
	transform2 = false
	
	
	
	
	-------------------------------------------------
	canattack = true
RootPart.Anchored = false
	if canfly1 == true then
	
	idle = true
	walk = true
	canjump = true
	end
	if canfly1 == true then
	canfly = true
	end
	for i = 1,20 do
	wait()
	aad.Transparency = aad.Transparency + 0.05
	end
	end
	end
	end
	end
	end)

mouse.KeyDown:connect(function(key)
if key == "l" then
	if fuse == false and potara == false then
	if ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjg == false then
	if great == false then
	if canattack == true then
	canattack = false
	if canfly == true then
	canfly = false
	canfly1 = true
	end
	

		transform3 = true
	idle = false
	ssjb = false
	ssjg = true
	ssj1 = false
	ssj2= false
	ssj3 = false
	walk = false
	ssjg = false
	great = true
	canjump = false
	
	
	ape = Instance.new("Part",char)
	ape.Transparency = 1
	weldape = Instance.new("Weld",ape)
	weldape.Part0 = Head
	weldape.Part1 = ape
	weldape.C0 = CFrame.new(0,5,-9)*CFrame.Angles(0,math.rad(180),0)
	meshape = Instance.new("SpecialMesh",ape)
	meshape.MeshId = "rbxassetid://553201144"
	meshape.Scale = v3(0.04,0.04,0.04)
	
Ape1:Play()
wait(2)

Ape2:Play()

wait(3)
Ape3:Play()
wait(10)
headcolor = Head.BrickColor
wait(0.1)
Head.BrickColor = bc("New Yeller")
Hair7.Transparency = 1
p1.Transparency = 0
	p2.Transparency = 0
	p3.Transparency = 0
	p4.Transparency = 0
	p5.Transparency = 0
	p6.Transparency = 0
	p7.Transparency = 0
	p8.Transparency =0
	p9.Transparency = 0
	p10.Transparency = 0
	p11.Transparency = 0
	p12.Transparency = 0
	p13.Transparency =0
	p14.Transparency = 0
	
	p1.BrickColor = bc("New Yeller")
	p2.BrickColor = bc("New Yeller")
	p3.BrickColor = bc("New Yeller")
	p4.BrickColor = bc("New Yeller")
	p5.BrickColor = bc("New Yeller")
	p6.BrickColor = bc("Cool yellow")
	p7.BrickColor = bc("Cool yellow")
	p8.BrickColor = bc("Cool yellow")
	p9.BrickColor = bc("Cool yellow")
	p10.BrickColor = bc("New Yeller")
	p11.BrickColor = bc("New Yeller")
	p12.BrickColor = bc("New Yeller")
	p13.BrickColor = bc("New Yeller")
	p14.BrickColor = bc("New Yeller")

transform3 = false
transform4 = true
	for i = 1,10 do
		wait()
		hum.BodyDepthScale.Value = hum.BodyDepthScale.Value + 2
hum.BodyHeightScale.Value = hum.BodyHeightScale.Value + 2
hum.BodyWidthScale.Value = hum.BodyWidthScale.Value + 2
hum.HeadScale.Value = hum.HeadScale.Value + 2
	end
	lboob = Instance.new("Part",char)
lboobmesh = Instance.new("SpecialMesh",lboob)
lboobweld = Instance.new("Weld",lboob)
lboobweld.Part0 = UpperTorso
lboobweld.Part1 = lboob
lboobweld.C0 = CFrame.new(0.4,7,-5)
lboobmesh.MeshType = "Sphere"
lboobmesh.Scale = Vector3.new(0.2*50,0.4*50,0.2*50)
rboob = Instance.new("Part",char)
rboobmesh = Instance.new("SpecialMesh",rboob)
rboobweld = Instance.new("Weld",rboob)
rboobweld.Part0 = char.UpperTorso
rboobweld.Part1 = rboob
rboobweld.C0 = CFrame.new(-0.4,7,-5)
rboobmesh.MeshType = "Sphere"
rboobmesh.Scale = Vector3.new(0.2*50,0.4*50,0.2*50)
rlboob = Instance.new("Part",char)
rlboobmesh = Instance.new("SpecialMesh",rlboob)
rlboobweld = Instance.new("Weld",rlboob)
rlboobweld.Part0 = char.UpperTorso
rlboobweld.Part1 = rlboob
rlboobweld.C0 = CFrame.new(0,-1,-2)
rlboobmesh.MeshType = "Sphere"
rlboobmesh.Scale = Vector3.new(0.2*50,1*50,0.2*50)
lboob.BrickColor = bc("New Yeller")
rboob.BrickColor = bc("New Yeller")
rlboob.BrickColor = bc("New Yeller")
	ape.Transparency = 0
	ape.BrickColor = bc("New Yeller")
	p15.BrickColor = bc("Really black")
	p15.Transparency =0
	a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("Really red")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(50,50,50)
	
	
	ApeGrowl:Play()
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()
	
	
	
	
	
	for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	
	for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") then
			if v.Size.x > 150 then
				v.CFrame = CFrame.new(v.Position) * CFrame.Angles(rad(0),rad(0),rad(0))
			end
		end
	end
	wait(0.1)
	wait(1.4)
	transform4 = false
	for i = 1,20 do
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Head
end
	
	
	
	-------------------------------------------------
	

	if canfly1 == true then
	
	
	walk = true
	
	end
	if canfly1 == true then
	canfly = true
	end
	for i = 1,20 do
	wait()
	aad.Transparency = aad.Transparency + 0.05
	end
	end
	else
		ape:Destroy()
		
p15.BrickColor = bc("New Yeller")
		Head.BrickColor = bc("New Yeller")
	
transform5 = true
char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=258281249"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=258281716"

--504772831
Head.BrickColor = headcolor
lboob:Destroy()
		rboob:Destroy()
		rlboob:Destroy()
		a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("New Yeller")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(200,200,200)

	
	
	
		for i = 1,100 do
		wait()
		hum.BodyDepthScale.Value = hum.BodyDepthScale.Value - .2
hum.BodyHeightScale.Value = hum.BodyHeightScale.Value - .2
hum.BodyWidthScale.Value = hum.BodyWidthScale.Value - .2
hum.HeadScale.Value = hum.HeadScale.Value - .2
aa21e.Scale = aa21e.Scale + v3(1,1,1)
	
		end
	wait(0.5)
		mouth.Transparency = 1
nose.Transparency = 1
Hair7.Color = Color3.fromRGB(0,0,0)
	Mesh.MeshId = "http://www.roblox.com/asset/?id=504772831"
Mesh.Scale = Vector3.new(0.23,0.23,0.23)
Weld.C0 = CFrame.new(0.25, 0.4, 0.5)*CFrame.Angles(0,math.rad(180),0)
	char.Head.face.Texture= "http://www.roblox.com/asset/?id=869609457"
Hair7.Transparency = 0
		
		p1.Transparency = 1
	p2.Transparency = 1
	p3.Transparency = 1
	p4.Transparency = 1
	p5.Transparency = 1
	p6.Transparency = 1
	p7.Transparency = 1
	p8.Transparency =1
	p9.Transparency = 1
	p10.Transparency = 1
	p11.Transparency = 1
	p12.Transparency = 1
	p13.Transparency =1
	p14.Transparency = 1
	p15.Transparency = 1
	great = false
	ape5 = Instance.new("Part",char)
	ape5.Transparency = 0
	weldape5 = Instance.new("Weld",ape5)
	weldape5.Part0 = LowerTorso
	weldape5.Part1 = ape5
	ape5.BrickColor = bc("Crimson")
	weldape5.C0 = CFrame.new(0.4,1,2)*CFrame.Angles(0,math.rad(90),math.rad(0))
	meshape5 = Instance.new("SpecialMesh",ape5)
	meshape5.MeshId = "rbxassetid://547956749"
	meshape5.Scale = v3(0.025,0.025,0.025)
	ssj4 = true
	
		
		wait(0.5)
		
		a21e:Destroy()
		wait()
	
		a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("New Yeller")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(50,50,50)



	
	
	aa21e.Scale = v3(10,10,10)
	a21e.Transparency = 0
	newaura.ImageTransparency = 0
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()
	ssjauraburst:Play()
	ssjaura:Play()
	for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.02
	end
	
	transform5 = false
	idle = true
	canattack = true
	end
	end
	end
	end
	end)






newaurabase = Instance.new("BillboardGui",LowerTorso)
newaurabase.Size = UDim2.new(20,0,20,0)
newaurabase.AlwaysOnTop = false
newaura = Instance.new("ImageLabel",newaurabase)
newaura.BackgroundTransparency = 1
newaurabase.ExtentsOffset = v3(0,0,3)
newaura.ImageTransparency = 1
newaura.ImageColor3 = Color3.fromRGB(255, 227, 10)
newaura.Size = UDim2.new(2,0,1,0)
newaura.Position = UDim2.new(-0.5,0,-0.2,0)
newaurabase2 = Instance.new("BillboardGui",LowerTorso)
newaurabase2.Size = UDim2.new(20,0,40,0)
newaurabase2.ExtentsOffset = v3(0,0,-3)
newaurabase2.AlwaysOnTop = false
newaura2 = Instance.new("ImageLabel",newaurabase2)
newaura2.BackgroundTransparency = 1
newaura2.ImageTransparency = 1
newaura2.ImageColor3 = Color3.fromRGB(255, 0,0)
newaura2.Size = UDim2.new(2,0,1,0)
newaura2.Position = UDim2.new(-0.5,0,-0.4,0)














char = game.Players.LocalPlayer.Character
char.Archivable = true
clone1 = char:Clone()
 
clone1["Sound Folder"]:Destroy()
clone1.Name = "Vegeta"
clone1.Parent = char

 LeftUpperArm1 = clone1.LeftUpperArm
 LeftShoulder1 = clone1.LeftUpperArm.LeftShoulder
 LeftLowerArm1 = clone1.LeftLowerArm
 LeftElbow1 = clone1.LeftLowerArm.LeftElbow
--------------------------------------------------------
 LeftUpperLeg1 = clone1.LeftUpperLeg
 LeftHip1 = clone1.LeftUpperLeg.LeftHip
 LeftLowerLeg1 = clone1.LeftLowerLeg
 LeftKnee1 = clone1.LeftLowerLeg.LeftKnee
----------------------------------------------------------
 RightUpperArm1 = clone1.RightUpperArm
 RightShoulder1 = clone1.RightUpperArm.RightShoulder
 RightLowerArm1 = clone1.RightLowerArm
RightElbow1 = clone1.RightLowerArm.RightElbow
----------------------------------------------------------
 RightUpperLeg1 = clone1.RightUpperLeg
 RightHip1 = clone1.RightUpperLeg.RightHip
 RightLowerLeg1 = clone1.RightLowerLeg
 RightKnee1 = clone1.RightLowerLeg.RightKnee
----------------------------------------------------------
 UpperTorso1 = clone1.UpperTorso
 LowerTorso1 = clone1.LowerTorso
 Root1 = clone1.LowerTorso.Root
 RootPart1 = clone1.HumanoidRootPart
 LeftHand1 = clone1.LeftHand
 RightHand1 = clone1.RightHand
 LeftFoot1 = clone1.LeftFoot
RightFoot1 = clone1.RightFoot
--------------------------------------------
Head1 = clone1.Head
 Neck1 = clone1.Head.Neck


RootPart1.CFrame = CFrame.new(999,999,999)
RootPart1.Anchored = true
function RenderStepped3()
	if spiritballenergy == true then
	wait(math.random(0.1,0.5))
		ay = new("Part",char)
ay.Name = "NewPart2"
ay.Size = v3(0.3,0.3,0.3)
ay.CanCollide = false
ay.Material = "Neon"
	
ay.BrickColor = bc("Cyan")

meshk = Instance.new("SpecialMesh",ay)
meshk.MeshType = "Sphere"
		
ay.Position = v3(999,999,999)
ay.CFrame = CFrame.new(RootPart.Position.x+math.random(-15,15),RootPart.Position.y-12,RootPart.Position.z+math.random(-15,15))
	ys = Instance.new("BodyVelocity",ay)
ys.Name = "GO1"
ys.maxForce = Vector3.new(math.huge, math.huge, math.huge)

ys.Velocity = v3(0,6,0)
	game.Debris:AddItem(ay,4)
end
if spirit1 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(180),rad(0),rad(0)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(180),rad(0),rad(0)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head
end
if spirit2 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(80),rad(0),rad(0)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(80),rad(0),rad(0)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(-20),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head
end
	if beam1 == true then
	beamgo = beamgo + 2
	beamgo1 = beamgo1 + 4
	
	a1.CFrame = RootPart.CFrame * CFrame.Angles(0,rad(90),0)+ v3(0,1,0) + RootPart.CFrame.lookVector * beamgo

	aa1.Scale = v3(1,math.random(1,1.2),math.random(1,1.2))
	a3.CFrame = RootPart.CFrame * CFrame.Angles(0,rad(90),0)+ v3(0,1,0) + RootPart.CFrame.lookVector * beamgo * 2
	if ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjbkaio == false and ssjbkaiox10 == false then
a1.Size = v3(beamgo1,3,3)
aa2.Scale = v3(100,math.random(50,70),math.random(50,70))
aa3.Scale = v3(150,math.random(50,70),math.random(50,70))

	
	end
	if ssj1 == true and ssj2 == false and ssj3 == false and ssjb == false and ssjbkaio == false and ssjbkaiox10 == false and ssj4 == false and potara == false and fuse == false then
	a1.Size = v3(beamgo1,3.5,3.5)
	aa2.Scale = v3(110,math.random(60,80),math.random(60,80))
	aa3.Scale = v3(160,math.random(60,80),math.random(60,80))
	end
	if ssj1 == false and ssj2 == true and ssj3 == false and ssjb == false and ssjbkaio == false and ssjbkaiox10 == false then
	a1.Size = v3(beamgo1,4,4)
	aa2.Scale = v3(120,math.random(70,90),math.random(70,90))
	aa3.Scale = v3(170,math.random(70,90),math.random(70,90))
	end
	if ssj3 == true then
	a1.Size = v3(beamgo1,4.5,4.5)
	aa2.Scale = v3(130,math.random(80,100),math.random(80,100))
	aa3.Scale = v3(180,math.random(80,100),math.random(80,100))
	end
	if ssj1 == false and ssj2 == false and ssj3 == false and ssjb == true and ssjbkaio == false and ssjbkaiox10 == false and potara == false then
	a1.Size = v3(beamgo1,5,5)
	aa2.Scale = v3(140,math.random(90,110),math.random(90,110))
	aa3.Scale = v3(190,math.random(90,110),math.random(90,110))
	end
	if ssj1 == false and ssj2 == false and ssj3 == false and ssjb == true and ssjbkaio == true and ssjbkaiox10 == false then
	a1.Size = v3(beamgo1,6,6)
	aa2.Scale = v3(155,math.random(105,125),math.random(105,125))
	aa3.Scale = v3(205,math.random(105,125),math.random(105,125))
	end
	if ssj1 == false and ssj2 == false and ssj3 == false and ssjb == true and ssjbkaio == false and ssjbkaiox10 == true then
	a1.Size = v3(beamgo1,15,15)
	aa2.Scale = v3(220,math.random(185,220),math.random(185,220))
	aa3.Scale = v3(280,math.random(185,220),math.random(185,220))
	end
	if ssjg == true then
	a1.Size = v3(beamgo1,6,6)
	aa2.Scale = v3(150,math.random(100,120),math.random(100,120))
	aa3.Scale = v3(200,math.random(100,120),math.random(100,120))
	end
	if ssj4 == true and fuse == true then
		a1.Size = v3(beamgo1,75,75)
	end
	if ssj4 == false and fuse == true then
		a1.Size = v3(beamgo1,50,50)
	
	end
	if potara == true then
		a1.Size = v3(beamgo1,math.random(25,35),math.random(25,35))
	end
	if ssj4 == true and fuse == false then
		a1.Size = v3(beamgo1,4,4)
	aa2.Scale = v3(120,math.random(70,90),math.random(70,90))
	aa3.Scale = v3(170,math.random(70,90),math.random(70,90))
	end
	a2.CFrame = RootPart.CFrame * CFrame.Angles(0,rad(90),0)+ v3(0,1,0) - RootPart.CFrame.lookVector * 1
	end
if final1 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(90),rad(0),rad(-90)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(90),rad(0),rad(90)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head
end
if final2 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(90),rad(0),rad(30)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(90),rad(0),rad(-30)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head
end
	if hum.MoveDirection.x > 0 and walk1 == true and fuse == true or hum.MoveDirection.x > 0 and walk1 == true and potara == true or hum.MoveDirection.x < 0 and walk1 == true and fuse == true or hum.MoveDirection.x < 0 and walk1 == true and potara == true then
	hum.HipHeight = 1.35
	idle5 = false
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Head
end
	if potara1 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(110),rad(50),rad(0)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(100),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head
end
if potara2 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(-30),rad(0),rad(-10)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(-30),rad(0),rad(10)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(-30),rad(0),rad(-10)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(-30),rad(0),rad(10)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(90),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--Head
end
if potara3 == true then
	LeftShoulder1.C0 = LeftShoulder1.C0:lerp(CFrame.new(LeftShoulder1.C0.p)*CFrame.Angles(rad(110),rad(-50),rad(0)),.1) --LeftUpperArm
	RightShoulder1.C0 = RightShoulder1.C0:lerp(CFrame.new(RightShoulder1.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperArm
	LeftElbow1.C0 = LeftElbow1.C0:lerp(CFrame.new(LeftElbow1.C0.p)*CFrame.Angles(rad(100),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow1.C0 = RightElbow1.C0:lerp(CFrame.new(RightElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip1.C0 = LeftHip1.C0:lerp(CFrame.new(LeftHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip1.C0 = RightHip1.C0:lerp(CFrame.new(RightHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee1.C0 = LeftKnee1.C0:lerp(CFrame.new( LeftKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee1.C0 = RightKnee1.C0:lerp(CFrame.new(RightKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	Root1.C0 = Root1.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
	Neck1.C0 = Neck1.C0:lerp(CFrame.new(Neck1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head
end
if potara4 == true then
	LeftShoulder1.C0 = LeftShoulder1.C0:lerp(CFrame.new(LeftShoulder1.C0.p)*CFrame.Angles(rad(-30),rad(0),rad(-10)),.1) --LeftUpperArm
	RightShoulder1.C0 = RightShoulder1.C0:lerp(CFrame.new(RightShoulder1.C0 .p)*CFrame.Angles(rad(-30),rad(0),rad(10)),.1)--RightUpperArm
	LeftElbow1.C0 = LeftElbow1.C0:lerp(CFrame.new(LeftElbow1.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow1.C0 = RightElbow1.C0:lerp(CFrame.new(RightElbow1.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip1.C0 = LeftHip1.C0:lerp(CFrame.new(LeftHip1.C0.p)*CFrame.Angles(rad(-30),rad(0),rad(-10)),.1)--LeftUpperLeg
	RightHip1.C0 = RightHip1.C0:lerp(CFrame.new(RightHip1.C0.p)*CFrame.Angles(rad(-30),rad(0),rad(10)),.1)--RightUpperLeg
	LeftKnee1.C0 = LeftKnee1.C0:lerp(CFrame.new( LeftKnee1.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee1.C0 = RightKnee1.C0:lerp(CFrame.new(RightKnee1.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.1)--RightUpperLeg
	Root1.C0 = Root1.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(-90),rad(0)),.1)--Torso
	Neck1.C0 = Neck1.C0:lerp(CFrame.new( Neck1.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.1)--Head
end
	if hum.MoveDirection.x == 0 and fuse == true or hum.MoveDirection.x == 0 and potara == true then
		if idle7 == true then
	idle5 = true
	

		else
			idle5 = false
			hum.HipHeight = 1.35
		end
end
	if idle5 == true and idle6 == true then
		idle6 = false
		hum.HipHeight = 2
			idle2 = true
			for i = 1,50 do
				wait()
			hum.HipHeight = hum.HipHeight + 0.01
			end
			idle2 = false
			
			idle3 = true
			for i = 1,50 do
				wait()
				hum.HipHeight = hum.HipHeight - 0.01
			end
			idle3 = false
			idle6 = true
	end
	if noidle == true then
		LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Head
	end
	if noidle1 == true then
		LeftShoulder1.C0 = LeftShoulder1.C0:lerp(CFrame.new(LeftShoulder1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1) --LeftUpperArm
	RightShoulder1.C0 = RightShoulder1.C0:lerp(CFrame.new(RightShoulder1.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperArm
	LeftElbow1.C0 = LeftElbow1.C0:lerp(CFrame.new(LeftElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerArm
	RightElbow1.C0 = RightElbow1.C0:lerp(CFrame.new(RightElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightLowerArm
	LeftHip1.C0 = LeftHip1.C0:lerp(CFrame.new(LeftHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftUpperLeg
	RightHip1.C0 = RightHip1.C0:lerp(CFrame.new(RightHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	LeftKnee1.C0 = LeftKnee1.C0:lerp(CFrame.new( LeftKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--LeftLowerLeg
	RightKnee1.C0 = RightKnee1.C0:lerp(CFrame.new(RightKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--RightUpperLeg
	Root1.C0 = Root1.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Torso
	Neck1.C0 = Neck1.C0:lerp(CFrame.new( Neck1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),0.1)--Head
	end
if idle2 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-20)),.01) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(20)),.01)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(30),rad(0),rad(0)),.01)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(30),rad(0),rad(0)),.01)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(70),rad(0),rad(0)),.01)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.01)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-60),rad(0),rad(0)),.01)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.01)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(-5),rad(0),rad(0)),.01)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.01)--Head
end
if idle3 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-10)),.01) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(10)),.01)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(50),rad(0),rad(0)),.01)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(50),rad(0),rad(0)),.01)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(80),rad(0),rad(0)),.01)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(-10),rad(0),rad(0)),.01)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-70),rad(0),rad(0)),.01)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(10),rad(0),rad(0)),.01)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(-4),rad(0),rad(0)),.01)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(2),rad(0),rad(0)),.01)--Head
end
	if fuse1 == true then
	 LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(20),rad(20),rad(90)),.1) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(90)),.1)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head
end


if fuse2 == true then
	 LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(260)),.1) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(20),rad(-20),rad(260)),.1)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head

end
if fuse3 == true then
	 LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(20),rad(20),rad(90)),.5) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(90)),.5)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(80),rad(0),rad(-60)),.5)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(-90),rad(0),rad(0)),.5)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--Head

end
if fuse4 == true then
	 LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(330)),.5) --LeftUpperArm
    RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(200)),.5)--RightUpperArm
    LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-110)),.5)--LeftLowerArm
    RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--RightLowerArm
    LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(80),rad(-30),rad(-80)),.5)--LeftUpperLeg
    RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-40)),.5)--RightUpperLeg
    LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-70),rad(0),rad(0)),.5)--LeftLowerLeg
    RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--RightUpperLeg
    Root.C0 = Root.C0:lerp(CFrame.new(0,-0.5,0)*CFrame.Angles(rad(0),rad(0),rad(50)),.5)--Torso
    Neck.C0 = Neck.C0:lerp(CFrame.new(Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(40)),.5)--Head

end
if fuse5 == true then
	 LeftShoulder1.C0 = LeftShoulder1.C0:lerp(CFrame.new(LeftShoulder1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-90)),.1) --LeftUpperArm
    RightShoulder1.C0 = RightShoulder1.C0:lerp(CFrame.new(RightShoulder1.C0 .p)*CFrame.Angles(rad(20),rad(-20),rad(-90)),.1)--RightUpperArm
    LeftElbow1.C0 = LeftElbow1.C0:lerp(CFrame.new(LeftElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerArm
    RightElbow1.C0 = RightElbow1.C0:lerp(CFrame.new(RightElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
    LeftHip1.C0 = LeftHip1.C0:lerp(CFrame.new(LeftHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftUpperLeg
    RightHip1.C0 = RightHip1.C0:lerp(CFrame.new(RightHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
    LeftKnee1.C0 = LeftKnee1.C0:lerp(CFrame.new( LeftKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
    RightKnee1.C0 = RightKnee1.C0:lerp(CFrame.new(RightKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
    Root1.C0 = Root1.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
    Neck1.C0 = Neck1.C0:lerp(CFrame.new(Neck1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head
end


if fuse6 == true then
	 LeftShoulder1.C0 = LeftShoulder1.C0:lerp(CFrame.new(LeftShoulder1.C0.p)*CFrame.Angles(rad(20),rad(20),rad(-260)),.1) --LeftUpperArm
    RightShoulder1.C0 = RightShoulder1.C0:lerp(CFrame.new(RightShoulder1.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(-260)),.1)--RightUpperArm
    LeftElbow1.C0 = LeftElbow1.C0:lerp(CFrame.new(LeftElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerArm
    RightElbow1.C0 = RightElbow1.C0:lerp(CFrame.new(RightElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
    LeftHip1.C0 = LeftHip1.C0:lerp(CFrame.new(LeftHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftUpperLeg
    RightHip1.C0 = RightHip1.C0:lerp(CFrame.new(RightHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
    LeftKnee1.C0 = LeftKnee1.C0:lerp(CFrame.new( LeftKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerLeg
    RightKnee1.C0 = RightKnee1.C0:lerp(CFrame.new(RightKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
    Root1.C0 = Root1.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
    Neck1.C0 = Neck1.C0:lerp(CFrame.new(Neck1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head

end
if fuse7 == true then
	 LeftShoulder1.C0 = LeftShoulder1.C0:lerp(CFrame.new(LeftShoulder1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-90)),.5) --LeftUpperArm
    RightShoulder1.C0 = RightShoulder1.C0:lerp(CFrame.new(RightShoulder1.C0 .p)*CFrame.Angles(rad(20),rad(-20),rad(-90)),.5)--RightUpperArm
    LeftElbow1.C0 = LeftElbow1.C0:lerp(CFrame.new(LeftElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--LeftLowerArm
    RightElbow1.C0 = RightElbow1.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--RightLowerArm
    LeftHip1.C0 = LeftHip1.C0:lerp(CFrame.new(LeftHip1.C0.p)*CFrame.Angles(rad(80),rad(0),rad(60)),.5)--LeftUpperLeg
    RightHip1.C0 = RightHip1.C0:lerp(CFrame.new(RightHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--RightUpperLeg
    LeftKnee1.C0 = LeftKnee1.C0:lerp(CFrame.new( LeftKnee1.C0.p)*CFrame.Angles(rad(-90),rad(0),rad(0)),.5)--LeftLowerLeg
    RightKnee1.C0 = RightKnee1.C0:lerp(CFrame.new(RightKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--RightUpperLeg
    Root1.C0 = Root1.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--Torso
    Neck1.C0 = Neck1.C0:lerp(CFrame.new(Neck1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--Head

end
if fuse8 == true then
	 LeftShoulder1.C0 = LeftShoulder1.C0:lerp(CFrame.new(LeftShoulder1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-200)),.5) --LeftUpperArm
    RightShoulder1.C0 = RightShoulder1.C0:lerp(CFrame.new(RightShoulder1.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(-330)),.5)--RightUpperArm
    LeftElbow1.C0 = LeftElbow1.C0:lerp(CFrame.new(LeftElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--LeftLowerArm
    RightElbow1.C0 = RightElbow1.C0:lerp(CFrame.new(RightElbow1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(110)),.5)--RightLowerArm
    LeftHip1.C0 = LeftHip1.C0:lerp(CFrame.new(LeftHip1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(40)),.5)--LeftUpperLeg
    RightHip1.C0 = RightHip1.C0:lerp(CFrame.new(RightHip1.C0.p)*CFrame.Angles(rad(80),rad(30),rad(80)),.5)--RightUpperLeg
    LeftKnee1.C0 = LeftKnee1.C0:lerp(CFrame.new( LeftKnee1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.5)--LeftLowerLeg
    RightKnee1.C0 = RightKnee1.C0:lerp(CFrame.new(RightKnee1.C0.p)*CFrame.Angles(rad(-70),rad(0),rad(0)),.5)--RightUpperLeg
    Root1.C0 = Root1.C0:lerp(CFrame.new(0,-0.5,0)*CFrame.Angles(rad(0),rad(0),rad(-50)),.5)--Torso
    Neck1.C0 = Neck1.C0:lerp(CFrame.new(Neck1.C0.p)*CFrame.Angles(rad(0),rad(0),rad(-40)),.5)--Head

end
if bigkamehameha1 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(60),rad(0),rad(30)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(60),rad(0),rad(-30)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(60),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(30),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-80),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head
end
if bigkamehameha2 == true then
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(85),rad(0),rad(30)),.1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(85),rad(0),rad(-30)),.1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(50),rad(0),rad(0)),.1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(-80),rad(0),rad(0)),.1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(-5),rad(0),rad(0)),.1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),.1)--Head
end
end
ape51 = Instance.new("Part",clone1)
	ape51.Transparency = 0
	weldape5 = Instance.new("Weld",ape51)
	weldape5.Part0 = LowerTorso1
	weldape5.Part1 = ape51
	ape51.Color = Color3.fromRGB(79,0,0)
	weldape5.C0 = CFrame.new(0.4,1,2)*CFrame.Angles(0,math.rad(90),math.rad(0))
	meshape5 = Instance.new("SpecialMesh",ape51)
	meshape5.MeshId = "rbxassetid://547956749"
	meshape5.Scale = v3(0.025,0.025,0.025)
game:GetService("RunService").RenderStepped:connect(RenderStepped3)

player.Chatted:connect(function(msg)
      if msg == "Fuse" and ssj4 == true then
	clone1.Shirt.ShirtTemplate = "rbxassetid://919206310"
clone1.Pants.PantsTemplate = "rbxassetid://919206462"
clone1.Head.Weld.C0 = CFrame.new(0.27,0.5,.6)*cfa(0,rad(180),0)
clone1.Hair.Mesh.MeshId = "rbxassetid://558303331"
clone1.Hair.Mesh.Scale = v3(0.048,0.048,0.048)

ape51.Transparency = 0
	idle = false
	walk = false 
	canjump = false
linkpart = Instance.new("Part",char)
linkpart.Position = v3(999,999,999)
linkpart.Transparency = 1
linkpart.CanCollide = false
linkpart.Anchored = true
linkpart.CFrame = RootPart.CFrame * cfa(0,rad(90),0) + RootPart.CFrame.lookVector
RootPart1.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) + linkpart.CFrame.lookVector * 10
RootPart.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) - linkpart.CFrame.lookVector * 10
	RootPart1.Anchored = true
		RootPart.Anchored = true
	RootPart1 = clone1.HumanoidRootPart
	com1 = 10
	
noidle = true
wait(2)
noidle = false
	
	fuse1 = true
	fuse5 = true
	
	wait(0.5)
	fuse1 = false
	fuse5 = false
	coroutine.wrap(function()
		for i = 1,40 do
			if fuse == false then
			wait()
			com1 = com1 - 0.19
			
			RootPart1.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) + linkpart.CFrame.lookVector * com1
RootPart.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) - linkpart.CFrame.lookVector * com1
           
		end
		end
	end)()
	chatfunc("Fuuuu")
	chatfunc1("Fuuuu")
	fuse2 = true
	fuse6 = true
	wait(0.5)
	fuse2 = false
	fuse6 = false
	chatfunc("Shon")
	chatfunc1("Shon")
	fuse3 = true
	fuse7 = true
	wait(0.5)
	fuse3 = false
	fuse7 = false
	fuse4 = true
	chatfunc("Ha")
	chatfunc1("Ha")
	fuse8 = true
	
	wait(0.5)
		a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("White")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)


	
	
	fuse = true
	
	fuse4 = false
	fuse8 = false
	Hair7.BrickColor = BrickColor.new("Really red")
Mesh.MeshId = "rbxassetid://560196103"
	Mesh.Scale = Vector3.new(5.8,5.8,5.8)
	Weld.C0 = CFrame.new(-0.28, 0, 0.25)
	char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=919205601"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=919205734"
	
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Head
	hum.HipHeight = 1.35
	char.Head.face.Texture= "rbxassetid://903201228"
	RootPart.Anchored = false
	idle5 = true
	idle7 = true
	hum.HipHeight = 2
ssjauraburst:Play()
RootPart1.CFrame = CFrame.new(999,999,999)
RootPart1.Anchored = true
GroundWave5()
GroundWave6()
GroundWave7()
GroundWave8()
GroundWave9()
GroundWave10()
for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(1,1,1)
	a21e.Transparency = a21e.Transparency + 0.02
end
walk = false
end
   if msg == "Fuse" and ssj4 == false and ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjg == false then
	clone1.Shirt.ShirtTemplate = "rbxassetid://914325463"
	ape51.Transparency = 1
clone1.Pants.PantsTemplate = "rbxassetid://914325779"
clone1.Head.Weld.C0 = CFrame.new(-.2,1,.5)*cfa(0,rad(0),0)
clone1.Hair.Mesh.MeshId = "rbxassetid://560180459"
clone1.Hair.Mesh.Scale = v3(7,7,7)

	idle = false
	walk = false 
	ssj1 = true
	canjump = false
linkpart = Instance.new("Part",char)
linkpart.Position = v3(999,999,999)
linkpart.Transparency = 1
linkpart.CanCollide = false
linkpart.Anchored = true
linkpart.CFrame = RootPart.CFrame * cfa(0,rad(90),0) + RootPart.CFrame.lookVector
RootPart1.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) + linkpart.CFrame.lookVector * 10
RootPart.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) - linkpart.CFrame.lookVector * 10
	RootPart1.Anchored = true
		RootPart.Anchored = true
	RootPart1 = clone1.HumanoidRootPart
	com1 = 10
	noidle = true
wait(2)
noidle = false
	
	fuse1 = true
	fuse5 = true
	
	wait(0.5)
	fuse1 = false
	fuse5 = false
	coroutine.wrap(function()
		for i = 1,40 do
			if fuse == false then
			wait()
			com1 = com1 - 0.19
			
			RootPart1.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) + linkpart.CFrame.lookVector * com1
RootPart.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) - linkpart.CFrame.lookVector * com1
           
		end
		end
	end)()
	chatfunc("Fuuuu")
	chatfunc1("Fuuuu")
	fuse2 = true
	fuse6 = true
	wait(0.5)
	fuse2 = false
	fuse6 = false
	chatfunc("Shon")
	chatfunc1("Shon")
	fuse3 = true
	fuse7 = true
	wait(0.5)
	fuse3 = false
	fuse7 = false
	fuse4 = true
	chatfunc("Ha")
	chatfunc1("Ha")
	fuse8 = true
	wait(0.5)
		a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("White")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)


	
	fuse = true
	
	fuse4 = false
	fuse8 = false
	
	
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Head
	hum.HipHeight = 1.35
	
	RootPart.Anchored = false
	idle5 = true
	idle7 = true
	Mesh.MeshId = "rbxassetid://720406482"
	newaura.ImageTransparency = 0
	Mesh.Scale = Vector3.new(7.2,7.2,7.2)
	Weld.C0 = CFrame.new(0.2, .8, 0.55)*cfa(0,math.rad(180),0)
		Hair7.Color = Color3.fromRGB(255,227,10)
		char.Head.face.Texture= "rbxassetid://765493484"
		ssjaura:Play()
	char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=914324509"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=914324638"
	hum.HipHeight = 2
ssjauraburst:Play()
wait(0.1)
RootPart1.CFrame = CFrame.new(999,999,999)
RootPart1.Anchored = true
GroundWave5()
GroundWave6()
GroundWave7()
GroundWave8()
GroundWave9()
GroundWave10()
for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(1,1,1)
	a21e.Transparency = a21e.Transparency + 0.02
end
walk = false
end
  if msg == "Potara" and ssj4 == false and ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjg == false then
	clone1.Shirt.ShirtTemplate = "rbxassetid://914325463"
clone1.Pants.PantsTemplate = "rbxassetid://914325779"
	ape51.Transparency = 1
	
clone1.Head.Weld.C0 = CFrame.new(-.2,1,.5)*cfa(0,rad(0),0)
clone1.Hair.Mesh.MeshId = "rbxassetid://560180459"
clone1.Hair.Mesh.Scale = v3(7,7,7)
	idle = false
	walk = false 
	canjump = false
linkpart = Instance.new("Part",char)
linkpart.Position = v3(999,999,999)
linkpart.Transparency = 1
linkpart.CanCollide = false
linkpart.Anchored = true
linkpart.CFrame = RootPart.CFrame * cfa(0,rad(90),0) + RootPart.CFrame.lookVector
RootPart1.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) + linkpart.CFrame.lookVector * 10
RootPart.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) - linkpart.CFrame.lookVector * 10
	RootPart1.Anchored = true
		RootPart.Anchored = true
	RootPart1 = clone1.HumanoidRootPart
	com1 = 10
	

	
	potara1 = true
	potara3 = true
	wait(1)
	potara1 = false
	potara3 = false
	noidle = true
	noidle1 = true
	ee = Instance.new("Part",char)
ee.Size = Vector3.new(0.2,0.2,0.2)
ee.Position = Vector3.new(9999999,9999999,9999999)
ee.Shape = "Ball"
ee.BrickColor = BrickColor.new("New Yeller")
ee1 = Instance.new("Part",char)
ee1.Size = Vector3.new(0.18,0.18,0.18)
ee1.Position = Vector3.new(999999,999999,999999)
ee1.Shape = "Ball"
ee1.BrickColor = BrickColor.new("Mid gray") 
ee2 = Instance.new("Part",char)
ee2.Size = Vector3.new(0.06,0.06,0.06)
ee2.Shape = "Ball"
ee2.BrickColor = BrickColor.new("Mid gray")
ee2.Position = Vector3.new(99999,99999,99999)
ee3 = Instance.new("Part",char)
ee3.Size = Vector3.new(0.06,0.06,0.06)
ee3.Shape = "Ball"
ee3.BrickColor = BrickColor.new("Mid gray")
ee3.Position = Vector3.new(9999,9999,9999)
ee4 = Instance.new("Part",char)
ee4.Size = Vector3.new(0.1,0.1,0.1)
ee4.Shape = "Ball"
ee4.BrickColor = BrickColor.new("Mid gray")
ee4.Position = Vector3.new(999,999,999)
eew = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew.Part0 = game.Players.LocalPlayer.Character.Head
eew.Part1 = ee
eew.C0 = CFrame.new(0.68,-0.22,0)
eew1 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew1.Part0 = ee
eew1.Part1 = ee1
eew1.C0 = CFrame.new(0,0.02,0)
eew2 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew2.Part0 = game.Players.LocalPlayer.Character.Head
eew2.Part1 = ee2
eew2.C0 = CFrame.new(0.67,-0.1,0)
eew3 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew3.Part0 = game.Players.LocalPlayer.Character.Head
eew3.Part1 = ee3
eew3.C0 = CFrame.new(0.66,-0.05,0)
eew4 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew4.Part0 = game.Players.LocalPlayer.Character.Head
eew4.Part1 = ee4
eew4.C0 = CFrame.new(0.64,-0.01,0)
-----------------------------------------------------------------------
eed = Instance.new("Part",char)
eed.Size = Vector3.new(0.2,0.2,0.2)
eed.Position = Vector3.new(9999999,9999999,9999999)
eed.Shape = "Ball"
eed.BrickColor = BrickColor.new("New Yeller")
ee1d = Instance.new("Part",char)
ee1d.Size = Vector3.new(0.18,0.18,0.18)
ee1d.Position = Vector3.new(999999,999999,999999)
ee1d.Shape = "Ball"
ee1d.BrickColor = BrickColor.new("Mid gray") 
ee2d = Instance.new("Part",char)
ee2d.Size = Vector3.new(0.06,0.06,0.06)
ee2d.Shape = "Ball"
ee2d.BrickColor = BrickColor.new("Mid gray")
ee2d.Position = Vector3.new(99999,99999,99999)
ee3d = Instance.new("Part",char)
ee3d.Size = Vector3.new(0.06,0.06,0.06)
ee3d.Shape = "Ball"
ee3d.BrickColor = BrickColor.new("Mid gray")
ee3d.Position = Vector3.new(9999,9999,9999)
ee4d = Instance.new("Part",char)
ee4d.Size = Vector3.new(0.1,0.1,0.1)
ee4d.Shape = "Ball"
ee4d.BrickColor = BrickColor.new("Mid gray")
ee4d.Position = Vector3.new(999,999,999)
eew = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew.Part0 = clone1.Head
eew.Part1 = eed
eew.C0 = CFrame.new(-0.68,-0.22,0)
eew1 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew1.Part0 = ee
eew1.Part1 = ee1d
eew1.C0 = CFrame.new(0,0.02,0)
eew2 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew2.Part0 = clone1.Head
eew2.Part1 = ee2d
eew2.C0 = CFrame.new(-0.67,-0.1,0)
eew3 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew3.Part0 = clone1.Head
eew3.Part1 = ee3d
eew3.C0 = CFrame.new(-0.66,-0.05,0)
eew4 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew4.Part0 = clone1.Head
eew4.Part1 = ee4d
eew4.C0 = CFrame.new(-0.64,-0.01,0)
	wait(0.5)
	noidle = false
	noidle1 = false
	potara2 = true
	potara4 = true
	for i = 1,20 do
			wait()
			com1 = com1 - 0.5
			
			RootPart1.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) + linkpart.CFrame.lookVector * com1
RootPart.CFrame = linkpart.CFrame * cfa(0,rad(-90),0) - linkpart.CFrame.lookVector * com1
           
	end
	
	potara = true
	eec = Instance.new("Part",char)
eec.Size = Vector3.new(0.2,0.2,0.2)
eec.Position = Vector3.new(9999999,9999999,9999999)
eec.Shape = "Ball"
eec.BrickColor = BrickColor.new("New Yeller")
ee1c = Instance.new("Part",char)
ee1c.Size = Vector3.new(0.18,0.18,0.18)
ee1c.Position = Vector3.new(999999,999999,999999)
ee1c.Shape = "Ball"
ee1c.BrickColor = BrickColor.new("Mid gray") 
ee2c = Instance.new("Part",char)
ee2c.Size = Vector3.new(0.06,0.06,0.06)
ee2c.Shape = "Ball"
ee2c.BrickColor = BrickColor.new("Mid gray")
ee2c.Position = Vector3.new(99999,99999,99999)
ee3c = Instance.new("Part",char)
ee3c.Size = Vector3.new(0.06,0.06,0.06)
ee3c.Shape = "Ball"
ee3c.BrickColor = BrickColor.new("Mid gray")
ee3c.Position = Vector3.new(9999,9999,9999)
ee4c = Instance.new("Part",char)
ee4c.Size = Vector3.new(0.1,0.1,0.1)
ee4c.Shape = "Ball"
ee4c.BrickColor = BrickColor.new("Mid gray")
ee4c.Position = Vector3.new(999,999,999)
eew = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew.Part0 = game.Players.LocalPlayer.Character.Head
eew.Part1 = eec
eew.C0 = CFrame.new(-0.68,-0.22,0)
eew1 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew1.Part0 = ee
eew1.Part1 = ee1c
eew1.C0 = CFrame.new(0,0.02,0)
eew2 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew2.Part0 = game.Players.LocalPlayer.Character.Head
eew2.Part1 = ee2c
eew2.C0 = CFrame.new(-0.67,-0.1,0)
eew3 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew3.Part0 = game.Players.LocalPlayer.Character.Head
eew3.Part1 = ee3c
eew3.C0 = CFrame.new(-0.66,-0.05,0)
eew4 = Instance.new("Weld",game.Players.LocalPlayer.Character.Head)
eew4.Part0 = game.Players.LocalPlayer.Character.Head
eew4.Part1 = ee4c
eew4.C0 = CFrame.new(-0.64,-0.01,0)
		a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("White")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)
Mesh.MeshId = "rbxassetid://560152258"
Hair7.Color = Color3.fromRGB(26,0,0)
	Mesh.Scale = Vector3.new(6.9,6.9,6.9)
	Weld.C0 = CFrame.new(-.211, 0.9, 0.262)*cfa(0,math.rad(0),0)
	char.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=914326777"
char.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=914326994"


	
	
	
	
	potara2 = false
	potara4 = false
	
	
	LeftShoulder.C0 = LeftShoulder.C0:lerp(CFrame.new(LeftShoulder.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1) --LeftUpperArm
	RightShoulder.C0 = RightShoulder.C0:lerp(CFrame.new(RightShoulder.C0 .p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperArm
	LeftElbow.C0 = LeftElbow.C0:lerp(CFrame.new(LeftElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerArm
	RightElbow.C0 = RightElbow.C0:lerp(CFrame.new(RightElbow.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightLowerArm
	LeftHip.C0 = LeftHip.C0:lerp(CFrame.new(LeftHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftUpperLeg
	RightHip.C0 = RightHip.C0:lerp(CFrame.new(RightHip.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	LeftKnee.C0 = LeftKnee.C0:lerp(CFrame.new( LeftKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--LeftLowerLeg
	RightKnee.C0 = RightKnee.C0:lerp(CFrame.new(RightKnee.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--RightUpperLeg
	Root.C0 = Root.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Torso
	Neck.C0 = Neck.C0:lerp(CFrame.new( Neck.C0.p)*CFrame.Angles(rad(0),rad(0),rad(0)),1)--Head
	hum.HipHeight = 1.35
	
	RootPart.Anchored = false
	idle5 = true
	idle7 = true
	

	hum.HipHeight = 2
ssjauraburst:Play()
RootPart1.CFrame = CFrame.new(999,999,999)
RootPart1.Anchored = true
GroundWave5()
GroundWave6()
GroundWave7()
GroundWave8()
GroundWave9()
GroundWave10()
for i = 1,50 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(1,1,1)
	a21e.Transparency = a21e.Transparency + 0.02
end
walk = false
end
    end)










p1 = Instance.new("Part",char)
p1.Size = v3(2,1.6,1)
p1.Transparency = 1
p1.CanCollide = false
p1.Position = v3(999,999,999)
p1.BrickColor = bc("Bright red")
p1mesh = Instance.new("SpecialMesh",p1)
p1mesh.MeshType = "FileMesh"
p1mesh.Scale = v3(1.01,1.01,1.01)
p1mesh.MeshId = "rbxassetid://532220007"
p1weld = Instance.new("Weld",p1)
p1weld.Part0 = UpperTorso
p1weld.Part1 = p1
-------------------------------------------------------------
p2 = Instance.new("Part",char)
p2.Size = v3(2,1.6,1)
p2.Transparency = 1
p2.CanCollide = false
p2.Position = v3(999,999,999)
p2.BrickColor = bc("Bright red")
p2mesh = Instance.new("SpecialMesh",p2)
p2mesh.MeshType = "FileMesh"
p2mesh.Scale = v3(1.01,1.01,1.01)
p2mesh.MeshId = "http://www.roblox.com/asset/?id=532220036"
p2weld = Instance.new("Weld",p2)
p2weld.Part0 = LowerTorso
p2weld.Part1 = p2
-------------------------------------------------------------
p3 = Instance.new("Part",char)
p3.Size = v3(2,1.6,1)
p3.Transparency = 1
p3.CanCollide = false
p3.Position = v3(999,999,999)
p3.BrickColor = bc("Bright red")
p3mesh = Instance.new("SpecialMesh",p3)
p3mesh.MeshType = "FileMesh"
p3mesh.Scale = v3(1.01,1.01,1.01)
p3mesh.MeshId = "http://www.roblox.com/asset/?id=532219996"
p3weld = Instance.new("Weld",p3)
p3weld.Part0 = LeftUpperArm
p3weld.Part1 = p3
-------------------------------------------------------------
p4 = Instance.new("Part",char)
p4.Size = v3(2,1.6,1)
p4.Transparency = 1
p4.CanCollide = false
p4.Position = v3(999,999,999)
p4.BrickColor = bc("Bright red")
p4mesh = Instance.new("SpecialMesh",p4)
p4mesh.MeshType = "FileMesh"
p4mesh.Scale = v3(1.01,1.01,1.01)
p4mesh.MeshId = "http://www.roblox.com/asset/?id=532220017"
p4weld = Instance.new("Weld",p4)
p4weld.Part0 = LeftLowerLeg
p4weld.Part1 = p4
-------------------------------------------------------------
p5 = Instance.new("Part",char)
p5.Size = v3(2,1.6,1)
p5.Transparency = 1
p5.CanCollide = false
p5.Position = v3(999,999,999)
p5.BrickColor = bc("Bright red")
p5mesh = Instance.new("SpecialMesh",p5)
p5mesh.MeshType = "FileMesh"
p5mesh.Scale = v3(1.01,1.01,1.01)
p5mesh.MeshId = "http://www.roblox.com/asset/?id=532219991"
p5weld = Instance.new("Weld",p5)
p5weld.Part0 = LeftLowerArm
p5weld.Part1 = p5
-------------------------------------------------------------
p6 = Instance.new("Part",char)
p6.Size = v3(2,1.6,1)
p6.Transparency = 1
p6.CanCollide = false
p6.Position = v3(999,999,999)
p6.BrickColor = bc("Bright red")
p6mesh = Instance.new("SpecialMesh",p6)
p6mesh.MeshType = "FileMesh"
p6mesh.Scale = v3(1.01,1.01,1.01)
p6mesh.MeshId = "http://www.roblox.com/asset/?id=532219986"
p6weld = Instance.new("Weld",p6)
p6weld.Part0 = LeftHand
p6weld.Part1 = p6
-------------------------------------------------------------
p7 = Instance.new("Part",char)
p7.Size = v3(2,1.6,1)
p7.Transparency =1
p7.CanCollide = false
p7.Position = v3(999,999,999)
p7.BrickColor = bc("Bright red")
p7mesh = Instance.new("SpecialMesh",p7)
p7mesh.MeshType = "FileMesh"
p7mesh.Scale = v3(1.01,1.01,1.01)
p7mesh.MeshId = "http://www.roblox.com/asset/?id=532220012"
p7weld = Instance.new("Weld",p7)
p7weld.Part0 = LeftFoot
p7weld.Part1 = p7
-------------------------------------------------------------
p8 = Instance.new("Part",char)
p8.Size = v3(2,1.6,1)
p8.Transparency = 1
p8.CanCollide = false
p8.Position = v3(999,999,999)
p8.BrickColor = bc("Bright red")
p8mesh = Instance.new("SpecialMesh",p8)
p8mesh.MeshType = "FileMesh"
p8mesh.Scale = v3(1.01,1.01,1.01)
p8mesh.MeshId = "http://www.roblox.com/asset/?id=532220020"
p8weld = Instance.new("Weld",p8)
p8weld.Part0 = RightFoot
p8weld.Part1 = p8
-------------------------------------------------------------
p9 = Instance.new("Part",char)
p9.Size = v3(2,1.6,1)
p9.Transparency = 1
p9.CanCollide = false
p9.Position = v3(999,999,999)
p9.BrickColor = bc("Bright red")
p9mesh = Instance.new("SpecialMesh",p9)
p9mesh.MeshType = "FileMesh"
p9mesh.Scale = v3(1.01,1.01,1.01)
p9mesh.MeshId = "http://www.roblox.com/asset/?id=532219997"
p9weld = Instance.new("Weld",p9)
p9weld.Part0 = RightHand
p9weld.Part1 = p9
-------------------------------------------------------------
p10 = Instance.new("Part",char)
p10.Size = v3(2,1.6,1)
p10.Transparency = 1
p10.CanCollide = false
p10.Position = v3(999,999,999)
p10.BrickColor = bc("Bright red")
p10mesh = Instance.new("SpecialMesh",p10)
p10mesh.MeshType = "FileMesh"
p10mesh.Scale = v3(1.01,1.01,1.01)
p10mesh.MeshId = "http://www.roblox.com/asset/?id=532219999"
p10weld = Instance.new("Weld",p10)
p10weld.Part0 = RightLowerArm
p10weld.Part1 = p10
-------------------------------------------------------------
p11 = Instance.new("Part",char)
p11.Size = v3(2,1.6,1)
p11.Transparency = 1
p11.CanCollide = false
p11.Position = v3(999,999,999)
p11.BrickColor = bc("Bright red")
p11mesh = Instance.new("SpecialMesh",p11)
p11mesh.MeshType = "FileMesh"
p11mesh.Scale = v3(1.01,1.01,1.01)
p11mesh.MeshId = "http://www.roblox.com/asset/?id=532220027"
p11weld = Instance.new("Weld",p11)
p11weld.Part0 = RightLowerLeg
p11weld.Part1 = p11
-------------------------------------------------------------
p12 = Instance.new("Part",char)
p12.Size = v3(2,1.6,1)
p12.Transparency =1
p12.CanCollide = false
p12.Position = v3(999,999,999)
p12.BrickColor = bc("Bright red")
p12mesh = Instance.new("SpecialMesh",p12)
p12mesh.MeshType = "FileMesh"
p12mesh.Scale = v3(1.01,1.01,1.01)
p12mesh.MeshId = "http://www.roblox.com/asset/?id=532220004"
p12weld = Instance.new("Weld",p12)
p12weld.Part0 = RightUpperArm
p12weld.Part1 = p12
-------------------------------------------------------------
p13 = Instance.new("Part",char)
p13.Size = v3(2,1.6,1)
p13.Transparency = 1
p13.CanCollide = false
p13.Position = v3(999,999,999)
p13.BrickColor = bc("Bright red")
p13mesh = Instance.new("SpecialMesh",p13)
p13mesh.MeshType = "FileMesh"
p13mesh.Scale = v3(1.01,1.01,1.01)
p13mesh.MeshId = "http://www.roblox.com/asset/?id=532220031"
p13weld = Instance.new("Weld",p13)
p13weld.Part0 = RightUpperLeg
p13weld.Part1 = p13
-------------------------------------------------------------
p14 = Instance.new("Part",char)
p14.Size = v3(2,1,1)
p14.Transparency = 1
p14.CanCollide = false
p14.Position = v3(999,999,999)
p14.BrickColor = bc("Bright red")
p14mesh = Instance.new("SpecialMesh",p14)
p14mesh.MeshType = "FileMesh"
p14mesh.Scale = v3(1.01,1.01,1.01)
p14mesh.MeshId = "http://www.roblox.com/asset/?id=532220018"
p14weld = Instance.new("Weld",p14)
p14weld.Part0 = LeftUpperLeg
p14weld.Part1 = p14
p15 = Instance.new("Part",char)
p15.Size = v3(2,1,1)
p15.Transparency = 1
p15.CanCollide = false
p15.Position = v3(999,999,999)
p15.BrickColor = bc("Bright red")
p15mesh = Instance.new("SpecialMesh",p15)
p15mesh.MeshType = "Head"
p15mesh.Scale = v3(1.26,1.26,1.26)
p15weld = Instance.new("Weld",p15)
p15weld.Part0 = Head
p15weld.Part1 = p15

mouse.KeyDown:connect(function(key)
	if key == "z" and ki < 101 then
		idle = false
		idle7 = false
		hum.HipHeight = 1.35
		walk = false
		canjump = false
		transform1 = true
		wait(0.2)
		size = newaurabase.Size
		size2 = newaurabase2.Size
		wait(0.1)
		KiCharge.TimePosition = 0.7
		
		wait(0.1)
		KiCharge:Play()
		
		if ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjg == false and ssj4 == false then
			newaura.ImageTransparency = 0
			newaura.ImageColor3 = Color3.fromRGB(255,255,255)
			newaurabase.Size = UDim2.new(20,0,20,0)
		elseif ssjg == true then
	newaurabase.Size = UDim2.new(12,0,25,0)
	elseif ssj1 == true or ssj2 == true or ssj3 == true then
	newaurabase.Size = UDim2.new(40,0,40,0)
	elseif ssjb == true then
		newaurabase.Size = UDim2.new(20,0,30,0)
		elseif ssjb == true and ssjbkaio == true then
			newaurabase2.Size = UDim2.new(25,0,45,0)
			elseif ssjb == true and ssjbkaiox10 == true then
			newaurabase2.Size = UDim2.new(40,0,80,0)
			elseif ssj4 == true then
	newaurabase.Size = UDim2.new(40,0,40,0)
		end
		
			newaura.ImageTransparency = 0
		rock = true
		transform1 = false
		transform3 = true
		kicharging = true
			wait(2)
		
		repeat
			if kicharging == true then
			KiCharge.TimePosition = 2
			
		KiCharge:Play()
		end
		wait(2)
		until kicharging == false
	end
end)
mouse.KeyUp:connect(function(key)
	if key == "z" then
		
		KiCharge:Stop()
		kicharging = false
		rock = false
		rock3 = true
		transform3 = false
		transform1 = false
		transform4 = true
		if ssj1 == false and ssj2 == false and ssj3 == false and ssjb == false and ssjg == false and ssj4 == false then
			newaura.ImageTransparency = 1
			newaura.ImageColor3 = Color3.fromRGB(255, 227, 10)
		else
			newaurabase.Size = size
			newaurabase2.Size = size2
		end
		
		a21e = new("Part",char)
a21e.Name = "Beam"..num
a21e.Locked = true
a21e.Size = v3(1,1,1)
a21e.CanCollide = false
a21e.Position = v3(999,999,999)
a21e.BrickColor = bc("White")
a21e.Material = "Neon"
a21e.Transparency = 0
aa21e = new("SpecialMesh",a21e)
a21e.Anchored = true
a21e.Position = RootPart.Position
aa21e.MeshType = "Sphere"
aa21e.Scale = v3(1,1,1)

KiCharge2.TimePosition = 7.6
wait(0.1)
	KiCharge2:Play()
	KiCharge:Stop()
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()
	for i = 1,25 do
	wait()
	aa21e.Scale = aa21e.Scale + v3(5,5,5)
	a21e.Transparency = a21e.Transparency + 0.04
	end
	
	wait(0.5)
	
	KiCharge2:Stop()
	transform4 = false
	if fuse == false or potara == false then
		idle = true
		walk = true
		canjump = true
	end
	if fuse == true or potara == true then
		idle7 = true
	end
	end
end)








hum.Name = "LolCantHurtMe"




 




function chatfunc1(text)
local chat = coroutine.wrap(function()
if clone1:FindFirstChild("TalkingBillBoard")~= nil then
clone1:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",clone1)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = clone1.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.TextSize = 30
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(0,0,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,255)
tecks2.Size = UDim2.new(1,0,0.5,0)
local tecks3 = Instance.new("TextLabel",naeeym2)
tecks3.BackgroundTransparency = 1
tecks3.BorderSizePixel = 0
tecks3.Text = ""
tecks3.Font = "Fantasy"
tecks3.TextSize = 30
tecks3.TextStrokeTransparency = 0
tecks3.TextColor3 = Color3.new(0,0,0)
tecks3.TextStrokeColor3 = Color3.new(255,255,255)
tecks3.Size = UDim2.new(1,0,0.5,0)
for i = 1,string.len(text),1 do

tecks2.Text = string.sub(text,1,i)
tecks3.Text = string.sub(text,1,i)
wait(0.01)
end
wait(2)
for i = 1, 50 do

tecks2.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks2.Rotation = tecks2.Rotation - .8
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks2.TextTransparency = tecks2.TextTransparency + .04
tecks3.Position = tecks2.Position - UDim2.new(math.random(-.4,.4),math.random(-5,5),.05,math.random(-5,5))
tecks3.Rotation = tecks2.Rotation + .8
tecks3.TextStrokeTransparency = tecks2.TextStrokeTransparency +.04
tecks3.TextTransparency = tecks2.TextTransparency + .04
end
naeeym2:Destroy()
end)
chat()

end

repeat wait() until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("LowerTorso") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local LowerTorso = plr.Character.LowerTorso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 
function Fly() 
local bg = Instance.new("BodyGyro", LowerTorso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe =LowerTorso.CFrame 
local bv = Instance.new("BodyVelocity", LowerTorso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
hum.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
hum.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "f" then 
if flying then flying = false
	flying1 = false
idle = true
	walk = true
	canjump = true
else 
	hum.Jump = true
	wait(0.5)
	flying1 = true
flying = true
-- return to idle if finishing an emote
	if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
	oldAnim = "idle"
	end

	currentAnim = ""
	currentAnimInstance = nil
	if (currentAnimKeyframeHandler ~= nil) then
	currentAnimKeyframeHandler:disconnect()
	end

	if (currentAnimTrack ~= nil) then
	currentAnimTrack:Stop()
	currentAnimTrack:Destroy()
	currentAnimTrack = nil
	end

	-- clean up walk if there is one
	if (runAnimKeyframeHandler ~= nil) then
	runAnimKeyframeHandler:disconnect()
	end
	
	if (runAnimTrack ~= nil) then
	runAnimTrack:Stop()
	runAnimTrack:Destroy()
	runAnimTrack = nil
	end
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
nill = false
foward = true
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
nill = true
foward = false
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()




































-------------------------------------------------------------------------------------------------------------------------------------------
math.randomseed(tick())

function configureAnimationSet(name, fileList)
	if (animTable[name] ~= nil) then
	for _, connection in pairs(animTable[name].connections) do
	connection:disconnect()
	end
	end
	animTable[name] = {}
	animTable[name].count = 0
	animTable[name].totalWeight = 0	
	animTable[name].connections = {}

	local allowCustomAnimations = true
	local AllowDisableCustomAnimsUserFlag = true

	local success, msg = pcall(function()
	AllowDisableCustomAnimsUserFlag = UserSettings():IsUserFeatureEnabled("UserAllowDisableCustomAnims")
	end)

	if (AllowDisableCustomAnimsUserFlag) then
	local ps = game:GetService("StarterPlayer"):FindFirstChild("PlayerSettings")
	if (ps ~= nil) then
	allowCustomAnimations = not require(ps).UseDefaultAnimations
	end
	end

	-- check for config values
	local config = script:FindFirstChild(name)
	if (allowCustomAnimations and config ~= nil) then
	table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
	table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
	local idx = 1
	for _, childPart in pairs(config:GetChildren()) do
	if (childPart:IsA("Animation")) then
	table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
	animTable[name][idx] = {}
	animTable[name][idx].anim = childPart
	local weightObject = childPart:FindFirstChild("Weight")
	if (weightObject == nil) then
	animTable[name][idx].weight = 1
	else
	animTable[name][idx].weight = weightObject.Value
	end
	animTable[name].count = animTable[name].count + 1
	animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
	idx = idx + 1
	end
	end
	end

	-- fallback to defaults
	if (animTable[name].count <= 0) then
	for idx, anim in pairs(fileList) do
	animTable[name][idx] = {}
	animTable[name][idx].anim = Instance.new("Animation")
	animTable[name][idx].anim.Name = name
	animTable[name][idx].anim.AnimationId = anim.id
	animTable[name][idx].weight = anim.weight
	animTable[name].count = animTable[name].count + 1
	animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
--	print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
	end
	end
end

-- Setup animation objects
function scriptChildModified(child)
	local fileList = animNames[child.Name]
	if (fileList ~= nil) then
	configureAnimationSet(child.Name, fileList)
	end	
end

script.ChildAdded:connect(scriptChildModified)
script.ChildRemoved:connect(scriptChildModified)


for name, fileList in pairs(animNames) do 
	configureAnimationSet(name, fileList)
end	

-- ANIMATION

-- declarations
local toolAnim = "None"
local toolAnimTime = 0

local jumpAnimTime = 0
local jumpAnimDuration = 0.31

local toolTransitionTime = 0.1
local fallTransitionTime = 0.2

-- functions

function stopAllAnimations()
	local oldAnim = currentAnim

	-- return to idle if finishing an emote
	if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
	oldAnim = "idle"
	end

	currentAnim = ""
	currentAnimInstance = nil
	if (currentAnimKeyframeHandler ~= nil) then
	currentAnimKeyframeHandler:disconnect()
	end

	if (currentAnimTrack ~= nil) then
	currentAnimTrack:Stop()
	currentAnimTrack:Destroy()
	currentAnimTrack = nil
	end

	-- clean up walk if there is one
	if (runAnimKeyframeHandler ~= nil) then
	runAnimKeyframeHandler:disconnect()
	end
	
	if (runAnimTrack ~= nil) then
	runAnimTrack:Stop()
	runAnimTrack:Destroy()
	runAnimTrack = nil
	end
	
	return oldAnim
end

local smallButNotZero = 0.0001
function setRunSpeed(speed)
	if speed < 0.33 then
	currentAnimTrack:AdjustWeight(1.0)	
	runAnimTrack:AdjustWeight(smallButNotZero)
	elseif speed < 0.66 then
	local weight = ((speed - 0.33) / 0.33)
	currentAnimTrack:AdjustWeight(1.0 - weight + smallButNotZero)
	runAnimTrack:AdjustWeight(weight + smallButNotZero)
	else
	currentAnimTrack:AdjustWeight(smallButNotZero)
	runAnimTrack:AdjustWeight(1.0)
	end
	
	local speedScaled = speed * 1.25
	runAnimTrack:AdjustSpeed(speedScaled)
	currentAnimTrack:AdjustSpeed(speedScaled)
end


function setAnimationSpeed(speed)
	if jumped == false or flying == false then
	if speed ~= currentAnimSpeed then
	currentAnimSpeed = speed
	if currentAnim == "walk" then
	setRunSpeed(speed)
	else
	currentAnimTrack:AdjustSpeed(currentAnimSpeed)
	end
	end
	end
end

function keyFrameReachedFunc(frameName)
	if (frameName == "End") then
	if currentAnim == "walk" then
	runAnimTrack.TimePosition = 0.0
	currentAnimTrack.TimePosition = 0.0
	else
	local repeatAnim = currentAnim
	-- return to idle if finishing an emote
	if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
	repeatAnim = "idle"
	end
	
	local animSpeed = currentAnimSpeed
	playAnimation(repeatAnim, 0.15, Humanoid)
	setAnimationSpeed(animSpeed)
	end
	end
end

function rollAnimation(animName)
	local roll = math.random(1, animTable[animName].totalWeight) 
	local origRoll = roll
	local idx = 1
	while (roll > animTable[animName][idx].weight) do
	roll = roll - animTable[animName][idx].weight
	idx = idx + 1
	end
	return idx
end

function playAnimation(animName, transitionTime, humanoid) 	
	local idx = rollAnimation(animName)
	local anim = animTable[animName][idx].anim

	-- switch animation	
	if (anim ~= currentAnimInstance) then
	
	if (currentAnimTrack ~= nil) then
	currentAnimTrack:Stop(transitionTime)
	currentAnimTrack:Destroy()
	end

	if (runAnimTrack ~= nil) then
	runAnimTrack:Stop(transitionTime)
	runAnimTrack:Destroy()
	end

	currentAnimSpeed = 1.0
	
	-- load it to the humanoid; get AnimationTrack
	currentAnimTrack = humanoid:LoadAnimation(anim)
	currentAnimTrack.Priority = Enum.AnimationPriority.Core
	 
	-- play the animation
	currentAnimTrack:Play(transitionTime)
	currentAnim = animName
	currentAnimInstance = anim

	-- set up keyframe name triggers
	if (currentAnimKeyframeHandler ~= nil) then
	currentAnimKeyframeHandler:disconnect()
	end
	currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)
	
	-- check to see if we need to blend a walk/run animation
	if animName == "walk" then
	local runAnimName = "run"
	local runIdx = rollAnimation(runAnimName)

	runAnimTrack = humanoid:LoadAnimation(animTable[runAnimName][runIdx].anim)
	runAnimTrack.Priority = Enum.AnimationPriority.Core
	runAnimTrack:Play(transitionTime)	
	
	if (runAnimKeyframeHandler ~= nil) then
	runAnimKeyframeHandler:disconnect()
	end
	runAnimKeyframeHandler = runAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)	
	end
	end

end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local toolAnimName = ""
local toolAnimTrack = nil
local toolAnimInstance = nil
local currentToolAnimKeyframeHandler = nil

function toolKeyFrameReachedFunc(frameName)
	if (frameName == "End") then
	playToolAnimation(toolAnimName, 0.0, Humanoid)
	end
end


function playToolAnimation(animName, transitionTime, humanoid, priority)	 	
	local idx = rollAnimation(animName)
	local anim = animTable[animName][idx].anim

	if (toolAnimInstance ~= anim) then
	
	if (toolAnimTrack ~= nil) then
	toolAnimTrack:Stop()
	toolAnimTrack:Destroy()
	transitionTime = 0
	end
	
	-- load it to the humanoid; get AnimationTrack
	toolAnimTrack = humanoid:LoadAnimation(anim)
	if priority then
	toolAnimTrack.Priority = priority
	end
	 
	-- play the animation
	toolAnimTrack:Play(transitionTime)
	toolAnimName = animName
	toolAnimInstance = anim

	currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
	end
end

function stopToolAnimations()
	local oldAnim = toolAnimName

	if (currentToolAnimKeyframeHandler ~= nil) then
	currentToolAnimKeyframeHandler:disconnect()
	end

	toolAnimName = ""
	toolAnimInstance = nil
	if (toolAnimTrack ~= nil) then
	toolAnimTrack:Stop()
	toolAnimTrack:Destroy()
	toolAnimTrack = nil
	end

	return oldAnim
end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-- STATE CHANGE HANDLERS

function onRunning(speed)
	if speed > 0.5 then
	local scale = 16.0
	if jumped == false or flying == false then
	playAnimation("walk", 0.2, Humanoid)
	end
	setAnimationSpeed(speed / scale)
	pose = "Running"
	else
	if emoteNames[currentAnim] == nil then
	playAnimation("idle", 0.2, Humanoid)
	pose = "Standing"
	end
	end
end

function onDied()
	pose = "Dead"
end

function onJumping()
	
end

function onClimbing(speed)
	local scale = 5.0
	playAnimation("climb", 0.1, Humanoid)
	setAnimationSpeed(speed / scale)
	pose = "Climbing"
end

function onGettingUp()
	pose = "GettingUp"
end

function onFreeFall()
	
end

function onFallingDown()
	
end

function onSeated()
	pose = "Seated"
end

function onPlatformStanding()

end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

function onSwimming(speed)
	if speed > 1.00 then
	local scale = 10.0
	playAnimation("swim", 0.4, Humanoid)
	setAnimationSpeed(speed / scale)
	pose = "Swimming"
	else
	playAnimation("swimidle", 0.4, Humanoid)
	pose = "Standing"
	end
end

function animateTool()
	if (toolAnim == "None") then
	playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
	return
	end

	if (toolAnim == "Slash") then
	playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
	return
	end

	if (toolAnim == "Lunge") then
	playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
	return
	end
end

function getToolAnim(tool)
	for _, c in ipairs(tool:GetChildren()) do
	if c.Name == "toolanim" and c.className == "StringValue" then
	return c
	end
	end
	return nil
end

local lastTick = 0

function stepAnimate(currentTime)
	local amplitude = 1
	local frequency = 1
  	local deltaTime = currentTime - lastTick
  	lastTick = currentTime

	local climbFudge = 0
	local setAngles = false

  	if (jumpAnimTime > 0) then
  	jumpAnimTime = jumpAnimTime - deltaTime
  	end

	if (pose == "FreeFall" and jumpAnimTime <= 0) then
	playAnimation("fall", fallTransitionTime, Humanoid)
	elseif (pose == "Seated") then
	playAnimation("sit", 0.5, Humanoid)
	return
	elseif (pose == "Running") then
	if jumped == false or flying == false then
	playAnimation("walk", 0.2, Humanoid)
	end
	elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
	stopAllAnimations()
	amplitude = 0.1
	frequency = 1
	setAngles = true
	end

	-- Tool Animation handling
	local tool = Character:FindFirstChildOfClass("Tool")
	if tool and (tool.RequiresHandle or tool:FindFirstChild("Handle")) then
	
	local animStringValueObject = getToolAnim(tool)

	if animStringValueObject then
	toolAnim = animStringValueObject.Value
	-- message recieved, delete StringValue
	animStringValueObject.Parent = nil
	toolAnimTime = currentTime + .3
	end

	if currentTime > toolAnimTime then
	toolAnimTime = 0
	toolAnim = "None"
	end

	animateTool()	
	else
	stopToolAnimations()
	toolAnim = "None"
	toolAnimInstance = nil
	toolAnimTime = 0
	end
end

-- connect events
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbing:connect(onClimbing)
Humanoid.GettingUp:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingDown:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)
Humanoid.PlatformStanding:connect(onPlatformStanding)
Humanoid.Swimming:connect(onSwimming)

-- setup emote chat hook
game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
	local emote = ""
	if (string.sub(msg, 1, 3) == "/e ") then
	emote = string.sub(msg, 4)
	elseif (string.sub(msg, 1, 7) == "/emote ") then
	emote = string.sub(msg, 8)
	end
	
	if (pose == "Standing" and emoteNames[emote] ~= nil) then
	playAnimation(emote, 0.1, Humanoid)
	end
end)



-- initialize to idle


-- loop to handle timed state transitions and tool animations
while Character.Parent ~= nil do
	local _, currentGameTime = wait(0.1)
	stepAnimate(currentGameTime)
end


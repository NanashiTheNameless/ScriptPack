---Beller, By CripTiq_C00L---
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Player_UI = Player.PlayerGui
local Root = Character:FindFirstChild("HumanoidRootPart")
local Torso = Character:FindFirstChild("Torso")
local Head = Character:FindFirstChild("Head")
local LeftArm = Character:FindFirstChild("Left Arm")
local RightArm = Character:FindFirstChild("Right Arm")
local Mouse = Player:GetMouse()
---
Torso["Right Shoulder"]:Destroy()
Torso["Left Shoulder"]:Destroy()
local newls = Instance.new("ManualWeld", Torso)
local newrs = Instance.new("ManualWeld", Torso)
newls.Name=("Left Shoulder")
newls.Part0 = Torso
newls.Part1 = LeftArm

newrs.Name=("Right Shoulder")
newrs.Part0 = Torso
newrs.Part1 = RightArm
---
local RightLeg = Character:FindFirstChild("Right Leg")
local LeftLeg = Character:FindFirstChild("Left Leg")
local Id = ("rbxassetid://")
local RJ = Root.RootJoint
local NK = Torso.Neck
local LS = Torso["Left Shoulder"]
local RS = Torso["Right Shoulder"]
local RH = Torso["Right Hip"]
local LH = Torso["Left Hip"]
local Humanoid = Character:FindFirstChild("Humanoid")
local function StartUpSound()
	local soundeff = Instance.new("Sound",Head)
	soundeff.SoundId = Id.."596782957"
	soundeff.Looped = false
	soundeff.Volume=0.5
	soundeff:Play()
	soundeff.Ended:connect(function()
		soundeff:Destroy()
	end)
end


--------
local Bell = Instance.new("Part",Character)
local BellMesh = Instance.new("SpecialMesh",Bell)
local BellWeld = Instance.new("Motor6D",Torso)
BellMesh.MeshId = ("rbxassetid://561324062")
BellMesh.TextureId = ("rbxassetid://561324761")
Bell.Size = Vector3.new(0.898, 1.541, 0.863)
Bell.Name = ("Bell of "..Player.Name)
Bell.BackSurface=Enum.SurfaceType.SmoothNoOutlines
Bell.BottomSurface=Enum.SurfaceType.SmoothNoOutlines
Bell.FrontSurface=Enum.SurfaceType.SmoothNoOutlines
Bell.LeftSurface=Enum.SurfaceType.SmoothNoOutlines
Bell.RightSurface=Enum.SurfaceType.SmoothNoOutlines
Bell.TopSurface=Enum.SurfaceType.SmoothNoOutlines
Bell.Anchored=false
Bell.CanCollide=false
Bell.Position = RightArm.Position

BellWeld.Part0=RightArm
BellWeld.Part1=Bell
BellWeld.Name=("BELL")
--------
function SwingBellSound()
		local soundeff = Instance.new("Sound",Bell)
	soundeff.SoundId = Id.."561348616"
	soundeff.Looped = false
	soundeff.Volume=1
	soundeff:Play()
	soundeff.Ended:connect(function()
		soundeff:Destroy()
	end)
end

function Swoosh()
			local soundeff = Instance.new("Sound",Bell)
	soundeff.SoundId = Id.."199145887"
	soundeff.Looped = false
	soundeff.Volume=0.4
	soundeff:Play()
	soundeff.Ended:connect(function()
		soundeff:Destroy()
	end)
end

-----PrintFucntion-----
--[[
	
	
	
	
	local Target = workspace:FindFirstChild("Dummy")
	local Root = Target.HumanoidRootPart
	local Torso = Target.Torso
local RJ=Target.HumanoidRootPart.RootJoint
local NK=Target.Torso["Neck"]
local LS=Target.Torso["Left Shoulder"]
local RS=Target.Torso["Right Shoulder"]
local LH=Target.Torso["Left Hip"]
local RH=Target.Torso["Right Hip"]
local BellWeld = Torso.BELL
local spdnum=0.1
print("RJ.C0=RJ.C0:lerp(CFrame.new(",RJ.C0,"),",spdnum,")")
print("RJ.C1=RJ.C1:lerp(CFrame.new(",RJ.C1,"),",spdnum,")")
print("NK.C0=NK.C0:lerp(CFrame.new(",NK.C0,"),",spdnum,")")
print("NK.C1=NK.C1:lerp(CFrame.new(",NK.C1,"),",spdnum,")")
print("LS.C0=LS.C0:lerp(CFrame.new(",LS.C0,"),",spdnum,")")
print("LS.C1=LS.C1:lerp(CFrame.new(",LS.C1,"),",spdnum,")")
print("RS.C0=RS.C0:lerp(CFrame.new(",RS.C0,"),",spdnum,")")
print("RS.C1=RS.C1:lerp(CFrame.new(",RS.C1,"),",spdnum,")")
print("LH.C0=LH.C0:lerp(CFrame.new(",LH.C0,"),",spdnum,")")
print("LH.C1=LH.C1:lerp(CFrame.new(",LH.C1,"),",spdnum,")")
print("RH.C0=RH.C0:lerp(CFrame.new(",RH.C0,"),",spdnum,")")
print("RH.C1=RH.C1:lerp(CFrame.new(",RH.C1,"),",spdnum,")")
print("BellWeld.C0=BellWeld.C0:lerp(CFrame.new(",BellWeld.C0,"),",spdnum,")")
print("BellWeld.C1=BellWeld.C1:lerp(CFrame.new(",BellWeld.C1,"),",spdnum,")")
	
	
	
	
	
	]]--
-----------------------




---Stuff---
Idle = false
Walk = false
Jump = false
Fall = false
Swim = false
Stun = false
AttackPress = false
AttackClick = false
CanDamage = false
CanClickDamage = false
attackprogress = 0
Attack1Anim = false
Attack2Anim = false
Attack3Anim = false
Attack4Anim = false
Attack5Anim = false
Attack6Anim = false
-----------

game:GetService("RunService").RenderStepped:connect(function()
	if Idle then
		RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, 0, 0, -0.98480773, -0.173044622, -0.0144655183, 0, -0.0833036005, 0.996524215, -0.173648179, 0.981384754, 0.08203803 ), 0.1 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -0.98480773, 0.172722384, -0.0179071948, 0, 0.103123419, 0.994668543, 0.173648179, 0.979557276, -0.101556741 ), 0.1 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LS.C1=LS.C1:lerp(CFrame.new( 0.5, 0.49999994, 7.4505806e-009, -0.171523646, -0.136571884, -0.975667894, -0.0348584503, 0.990565956, -0.13252914, 0.984563172, 0.011278389, -0.174666166 ), 0.1 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RS.C1=RS.C1:lerp(CFrame.new( -0.50000006, 0.49999994, 1.49011612e-008, -0.371709257, 0.0788956806, 0.924990594, 3.71480846e-009, 0.996382236, -0.0849849135, -0.928349137, -0.0315896794, -0.370364517 ), 0.1 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LH.C1=LH.C1:lerp(CFrame.new( -0.510059714, 0.999149919, 0.0854681879, -0.119102359, -0.024906192, -0.992569625, 0.0654172152, 0.997316301, -0.0328749754, 0.990724623, -0.0688466206, -0.117153421 ), 0.1 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RH.C1=RH.C1:lerp(CFrame.new( 0.49999997, 1, 0, -0.385735124, 0.0580289587, 0.920782804, 2.74929546e-009, 0.998020053, -0.0628965497, -0.922609508, -0.0242614076, -0.38497141 ), 0.1 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.1 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( 0.0276572332, 0.49067229, -0.0140298903, 0.990976632, 0.134035319, 0, -0.080318749, 0.593828678, 0.800572574, 0.107304998, -0.79334867, 0.599235773 ), 0.1 )
	end
	if Walk then
		RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, 0, 0.0808933452, -0.99999994, -2.08616257e-007, -1.76951289e-008, 0, -0.0833036005, 0.996524215, -2.08616257e-007, 0.996524215, 0.0833036005 ), 0.1 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -0.99999994, 0, -1.86264515e-009, 0, 0.103123419, 0.994668543, 0, 0.994668543, -0.103123412 ), 0.1 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LS.C1=LS.C1:lerp(CFrame.new( 0.49999997, 0.5, 2.23517418e-008, 0.0565961115, 0.373393804, -0.925944805, 0.159428686, 0.912150741, 0.377575874, 0.985585928, -0.168991491, -0.00790556241 ), 0.1 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RS.C1=RS.C1:lerp(CFrame.new( -0.50000006, 0.49999994, -5.96046448e-008, -0.199713066, 0.0239434578, 0.979561806, 0.333476663, 0.941685081, 0.0449715964, -0.921361923, 0.335642457, -0.196051419 ), 0.1 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LH.C1=LH.C1:lerp(CFrame.new( -0.49506548, 0.999149919, 0.0859165713, 0.0547443777, -0.0364828855, -0.997833729, 0.0654172152, 0.997316301, -0.0328749754, 0.996355236, -0.0634757802, 0.0569841117 ), 0.1 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RH.C1=RH.C1:lerp(CFrame.new( 0.5, 0.99999994, 1.11758709e-008, -0.0469211787, 0.0628272593, 0.996920705, 2.74929546e-009, 0.998019993, -0.0628965497, -0.998898566, -0.0029511787, -0.0468283147 ), 0.1 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.1 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( 0.0276572332, 0.49067229, -0.0140298903, 0.990976632, 0.134035319, 0, -0.080318749, 0.593828678, 0.800572574, 0.107304998, -0.79334867, 0.599235773 ), 0.1 )
	end
	if Jump then
		RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, -0.137328386, 0.258275002, -1, 0, 0, 0, 0.342020124, 0.939692616, 0, 0.939692616, -0.342020124 ), 0.1 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -1, 0, 0, 0, 0.173648179, 0.98480773, 0, 0.98480773, -0.173648179 ), 0.1 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LS.C1=LS.C1:lerp(CFrame.new( 0.5, 0.5, 0, -0.321393818, -0.116977766, -0.939692616, -0.342020124, 0.939692616, 1.49501744e-008, 0.883022189, 0.321393788, -0.342020154 ), 0.1 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RS.C1=RS.C1:lerp(CFrame.new( -0.5, 0.5, 0, -0.173648015, 0.171010077, 0.969846308, 0.171010077, 0.975082397, -0.141314492, -0.969846308, 0.141314507, -0.198565573 ), 0.1 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LH.C1=LH.C1:lerp(CFrame.new( -0.5, 1, 0, -4.37113883e-008, 0, -1, -0.5, 0.866025388, 2.18556941e-008, 0.866025388, 0.5, -3.78551732e-008 ), 0.1 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RH.C1=RH.C1:lerp(CFrame.new( 0.5, 1, 0, -4.37113883e-008, 0, 1, 0.17364797, 0.984807789, 7.59039409e-009, -0.984807789, 0.17364797, -4.3047315e-008 ), 0.1 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.1 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( 0.0276572257, 0.49067229, -0.0140298838, 0.397130787, 0.851650894, -0.342020124, 0.144543782, 0.309975594, 0.939692557, 0.906308055, -0.422617793, 0 ), 0.1 )
	end
	if Fall then
		RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, -0.156877458, 0.294496238, -1, 0, 0, 0, -0.342020333, 0.939692557, 0, 0.939692557, 0.342020333 ), 0.1 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -1, 0, 0, 0, -0.342020333, 0.939692557, 0, 0.939692557, 0.342020333 ), 0.1 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LS.C1=LS.C1:lerp(CFrame.new( 0.5, 0.5, 1.49011612e-008, -0.321393818, -0.116977766, -0.939692616, 0.305593103, 0.926434278, -0.219846308, 0.896280527, -0.357820809, -0.262002647 ), 0.1 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RS.C1=RS.C1:lerp(CFrame.new( -0.5, 0.5, -1.49011612e-008, -0.173648015, 0.171010077, 0.969846308, -0.336824268, 0.915103316, -0.221664757, -0.925416529, -0.365159452, -0.101305544 ), 0.1 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LH.C1=LH.C1:lerp(CFrame.new( -0.5, 1, 0, -4.37113883e-008, 0, -1, 0.866025388, 0.5, -3.78551732e-008, 0.5, -0.866025388, -2.18556941e-008 ), 0.1 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RH.C1=RH.C1:lerp(CFrame.new( 0.5, 1, 0, -4.37113883e-008, 0, 1, -0.500000119, 0.866025269, -2.18556995e-008, -0.866025269, -0.500000119, -3.78551661e-008 ), 0.1 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.1 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( 0.0276572555, 0.49067229, -0.0140298838, 0.41619727, 0.892539024, 0.173648179, -0.0733868033, -0.157378718, 0.98480767, 0.906308055, -0.422617793, 0 ), 0.1 )
	end
	if Swim then
		RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LS.C1=LS.C1:lerp(CFrame.new( 0.0457606316, 1.00063705, 0, 1.91068547e-015, -1, 4.37113883e-008, -4.37113883e-008, -4.37113883e-008, -1, 0.99999994, 0, -4.37113847e-008 ), 0.1 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RS.C1=RS.C1:lerp(CFrame.new( -0.04550457, 0.972457886, 0, 1.91068547e-015, 1, -4.37113883e-008, 4.37113883e-008, -4.37113883e-008, -1, -0.99999994, 0, -4.37113847e-008 ), 0.1 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LH.C1=LH.C1:lerp(CFrame.new( -0.5, 1, 0, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008 ), 0.1 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RH.C1=RH.C1:lerp(CFrame.new( 0.5, 1, 0, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008 ), 0.1 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.1 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( -2.38210297, 1.48321116, 0.395844012, -0.258819729, 0.965925634, 1.0192994e-008, 0.965925574, 0.258819759, -2.80050223e-008, -2.9688918e-008, 2.59742072e-009, -0.99999994 ), 0.1 )
	end
	if Stun then
		RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.1 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -1, 0, 0, 0, -0.342020124, 0.939692616, 0, 0.939692616, 0.342020124 ), 0.1 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LS.C1=LS.C1:lerp(CFrame.new( 0.5, 0.5, 0, 0.413175941, 0.492403775, -0.766044438, 0.492404014, 0.586824, 0.642787576, 0.766044319, -0.642787755, -3.34848593e-008 ), 0.1 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RS.C1=RS.C1:lerp(CFrame.new( -0.5, 0.49999997, 0, 0.969846368, -0.171010047, 0.173648253, -0.171010152, 0.0301536843, 0.98480773, -0.173648149, -0.98480773, -7.59040208e-009 ), 0.1 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.1 )
LH.C1=LH.C1:lerp(CFrame.new( -0.255618095, -0.239188433, 0.95363158, -4.30473115e-008, -0.173648179, -0.98480773, 0.173648164, 0.969846249, -0.171010077, 0.98480773, -0.171010062, 0.0301536471 ), 0.1 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.1 )
RH.C1=RH.C1:lerp(CFrame.new( 0.5, 1, -5.96046448e-008, 0.0301536378, 0.171010047, 0.984807611, -0.984807611, 0.173648119, -4.30473079e-008, -0.171010032, -0.969846249, 0.173648119 ), 0.1 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.1 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( 0.0276572406, 0.49067235, -0.0140298847, -0.0435774848, -0.49809733, -0.866025448, 0.0754784271, 0.862730026, -0.49999994, 0.99619478, -0.087154977, 0 ), 0.1 )
	end
	if Attack1Anim then
		Idle = false
		Walk = false
		Jump = false
		Fall = false
		Swim = false
		Stun = false
		RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.2 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, 0, 0, -0.983706117, 0.179783836, 0, 0.0292327106, 0.159949839, 0.98669219, 0.177391306, 0.970615149, -0.162599206 ), 0.2 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.2 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -0.991650283, 0.128956035, 0, 0, 0, 1, 0.128956035, 0.991650283, 0 ), 0.2 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.2 )
LS.C1=LS.C1:lerp(CFrame.new( 0.5, 0.5, 0, 0.492011786, 0.279011905, -0.824667633, -0.493287176, 0.86986649, 2.15622666e-008, 0.717350721, 0.406797975, 0.565617561 ), 0.2 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.2 )
RS.C1=RS.C1:lerp(CFrame.new( -0.5, 0.5, -1.49011612e-008, -0.668350756, 0.658407092, 0.34613201, 0.188704923, 0.600182235, -0.777284801, -0.719512105, -0.454182148, -0.525376976 ), 0.2 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.2 )
LH.C1=LH.C1:lerp(CFrame.new( -0.5, 0.99999994, 0, -0.137536779, 0, -0.990496695, -0.221504837, 0.974674046, 0.0307573583, 0.965411425, 0.223630086, -0.134053528 ), 0.2 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.2 )
RH.C1=RH.C1:lerp(CFrame.new( 0.5, 1, 0, 0.0567602515, 0, 0.998387814, 0.325564802, 0.945338547, -0.0185089801, -0.943814456, 0.326090515, 0.0536576547 ), 0.2 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.2 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( 0.0276572295, 0.490672261, -0.0140298903, 0.0871549696, 0.99619472, 0, 0.518777668, -0.0453867652, -0.853703558, -0.850455046, 0.0744045153, -0.520759284 ), 0.2 )
	end
	if Attack2Anim then
		Idle = false
		Walk = false
		Jump = false
		Fall = false
		Swim = false
		Stun = false
		RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.23 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, 0, 0, -0.884503305, -0.45567444, 0.100073233, 0.116708003, -0.008433301, 0.993130445, -0.451700211, 0.89010644, 0.0606401488 ), 0.23 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.23 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -0.898598135, 0.438772619, 0, 0, 0, 1, 0.438772619, 0.898598135, 0 ), 0.23 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.23 )
LS.C1=LS.C1:lerp(CFrame.new( 0.5, 0.49999997, 2.98023224e-008, 0.886121929, 0.371492565, -0.277094215, 0.294649512, 0.00991421938, 0.955554008, 0.357728362, -0.928382933, -0.10067492 ), 0.23 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.23 )
RS.C1=RS.C1:lerp(CFrame.new( -0.253313661, 1.00606084, -5.96046448e-008, -0.00174597383, -0.611223459, 0.791456163, -0.999998391, 0.00139212608, -0.00113092258, -0.000410559878, -0.791456938, -0.61122489 ), 0.23 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.23 )
LH.C1=LH.C1:lerp(CFrame.new( -0.329666525, 0.999999881, 2.98023224e-008, 0.370530516, -0.218488306, -0.90275687, -0.256036401, 0.91025573, -0.32539174, 0.892833948, 0.351706177, 0.281336635 ), 0.23 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.23 )
RH.C1=RH.C1:lerp(CFrame.new( 0.5, 0.99999994, -1.49011612e-008, -0.325209826, -0.10943789, 0.93928808, 0.258566856, 0.945137978, 0.19964312, -0.909605205, 0.307794631, -0.279071152 ), 0.23 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.23 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( 0.027657263, 0.490672261, -0.0140299201, -0.36372, 0.921501219, 0.136173025, 0.884256244, 0.387528807, -0.260599941, -0.292914152, 0.0256264415, -0.955795228 ), 0.23 )
	end
	if Attack3Anim then
		Idle = false
		Walk = false
		Jump = false
		Fall = false
		Swim = false
		Stun = false
		RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.15 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, 0, 0, -0.856920242, 0.515448987, 0, 0, 0, 1, 0.515448987, 0.856920242, 0 ), 0.15 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.15 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -0.913844466, -0.406064391, 0, 0, 0, 1, -0.406064391, 0.913844466, 0 ), 0.15 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.15 )
LS.C1=LS.C1:lerp(CFrame.new( 0.5, 0.5, 0, -0.5103392, 0.0406575054, -0.85901159, 0.856298447, -0.0682192594, -0.511956215, -0.0794159919, -0.99684155, 3.47138318e-009 ), 0.15 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.15 )
RS.C1=RS.C1:lerp(CFrame.new( -0.50000006, 0.0268625319, 0, 0.545909941, -0.00056283205, 0.837843657, -0.83784318, 0.000863814435, 0.545910299, -0.00103099726, -0.999999464, -4.50663222e-011 ), 0.15 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.15 )
LH.C1=LH.C1:lerp(CFrame.new( -0.5, 1, 0, -0.56130594, 0, -0.827608466, 0, 1, 0, 0.827608466, 0, -0.56130594 ), 0.15 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.15 )
RH.C1=RH.C1:lerp(CFrame.new( 0.5, 1, 0, 0.562958539, 0, 0.826485097, 0, 1, 0, -0.826485097, 0, 0.562958539 ), 0.15 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.15 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( 0.223503768, 0.863360405, -0.0140298866, 0.0284080636, 0.672819197, -0.73926127, -0.091965653, -0.734663844, -0.672169089, -0.995356917, 0.0870816708, 0.0410058796 ), 0.15 )
	end
	if Attack4Anim then
		Idle = false
		Walk = false
		Jump = false
		Fall = false
		Swim = false
		Stun = false
		RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.23 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, 0, 0, -0.908277273, -0.418368518, 0, 0, 0, 1, -0.418368518, 0.908277273, 0 ), 0.23 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.23 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -0.913809121, 0.406143963, 0, 0, 0, 1, 0.406143963, 0.913809121, 0 ), 0.23 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.23 )
LS.C1=LS.C1:lerp(CFrame.new( 0.711069763, 0.11907351, 0, -0.861412525, 0.0686266869, -0.503248215, 0.501658678, -0.0399659574, -0.864141941, -0.0794159919, -0.99684155, 3.47138318e-009 ), 0.23 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.23 )
RS.C1=RS.C1:lerp(CFrame.new( -0.351128906, 1.24290049, 0, -0.115910485, 0.000119503326, 0.993259728, -0.993259132, 0.00102404796, -0.115910485, -0.00103099726, -0.999999464, -4.50663222e-011 ), 0.23 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.23 )
LH.C1=LH.C1:lerp(CFrame.new( -0.5, 1, 0, 0.433923662, 0, -0.900949597, 0, 1, 0, 0.900949597, 0, 0.433923662 ), 0.23 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.23 )
RH.C1=RH.C1:lerp(CFrame.new( 0.5, 1, 0, -0.465427339, 0, 0.885086119, 0, 1, 0, -0.885086119, 0, -0.465427339 ), 0.23 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.23 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( -0.289677769, 0.213994145, -0.0140298866, 0.0067609027, -0.361715525, 0.932263911, 0.0960155576, 0.928212523, 0.35944736, -0.995356858, 0.0870816708, 0.0410058759 ), 0.23 )
	end
	if Attack5Anim then
		Idle = false
		Walk = false
		Jump = false
		Fall = false
		Swim = false
		Stun = false
RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.15 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, 0, 0, 0.977719188, 0.155932009, -0.14053601, 0.1516781, -0.0619616173, 0.986485898, 0.14511691, -0.985822439, -0.084232524 ), 0.15 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.15 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.15 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.15 )
LS.C1=LS.C1:lerp(CFrame.new( 0.5, 0.5, 0, 0.94228518, -0.00541251618, -0.334767669, 0.334762156, -0.00192288426, 0.942300737, -0.0057439371, -0.99998349, 2.51075466e-010 ), 0.15 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.15 )
RS.C1=RS.C1:lerp(CFrame.new( -0.5, 0.49999997, 2.98023224e-008, -4.37113883e-008, 0, 1, -0.0867030621, -0.996234238, -3.78991105e-009, 0.996234238, -0.0867030621, 4.35467804e-008 ), 0.15 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.15 )
LH.C1=LH.C1:lerp(CFrame.new( -0.5, 1, 0, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008 ), 0.15 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.15 )
RH.C1=RH.C1:lerp(CFrame.new( 0.5, 1, 0, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008 ), 0.15 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.15 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( 0.0276572313, 0.49067229, -0.0140299052, -0.980523765, 0.196375519, 0.00313723856, 0.0438005701, 0.234216452, -0.971197307, -0.191454157, -0.952144563, -0.238256142 ), 0.15 )
	end
	if Attack6Anim then
		Idle = false
		Walk = false
		Jump = false
		Fall = false
		Swim = false
		Stun = false
RJ.C0=RJ.C0:lerp(CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.24 )
RJ.C1=RJ.C1:lerp(CFrame.new( 0, 0, 0, -0.972376347, 0.104603156, 0.208668128, 0.17618826, -0.257467479, 0.950088501, 0.153107479, 0.960608363, 0.231925398 ), 0.24 )
NK.C0=NK.C0:lerp(CFrame.new( 0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0 ), 0.24 )
NK.C1=NK.C1:lerp(CFrame.new( 0, -0.5, 0, -0.979407191, -0.201894954, 0, 0, 0, 1, -0.201894954, 0.979407191, 0 ), 0.24 )
LS.C0=LS.C0:lerp(CFrame.new( -1, 0.5, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.24 )
LS.C1=LS.C1:lerp(CFrame.new( 0.0543417335, 1.09079599, 2.98023224e-008, 0.538084328, 0.450255483, -0.712555408, -0.810613155, 0.508129418, -0.291051298, 0.231022954, 0.734216928, 0.638399541 ), 0.24 )
RS.C0=RS.C0:lerp(CFrame.new( 1, 0.5, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.24 )
RS.C1=RS.C1:lerp(CFrame.new( 0.29478687, 0.94420886, -0.478875846, 0.178172663, 0.976099551, 0.124435, -0.47184214, -0.0262210369, 0.881292999, 0.863492668, -0.215736032, 0.455893099 ), 0.24 )
LH.C0=LH.C0:lerp(CFrame.new( -1, -1, 0, -4.37113883e-008, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-008 ), 0.24 )
LH.C1=LH.C1:lerp(CFrame.new( -0.49999994, 1, 3.7252903e-009, -0.0611632392, -0.270044237, -0.960903227, -1.18261507e-008, 0.962705672, -0.270550787, 0.998127759, -0.0165477507, -0.058882203 ), 0.24 )
RH.C0=RH.C0:lerp(CFrame.new( 1, -1, 0, -4.37113883e-008, 0, 1, -0, 0.99999994, 0, -1, 0, -4.37113883e-008 ), 0.24 )
RH.C1=RH.C1:lerp(CFrame.new( 0.5, 1, 0, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008 ), 0.24 )
BellWeld.C0=BellWeld.C0:lerp(CFrame.new( 0, -1, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1 ), 0.24 )
BellWeld.C1=BellWeld.C1:lerp(CFrame.new( 0.0276572369, 0.49067235, -0.0140298903, 0.973259687, -0.215560347, 0.0793683827, 0.082625255, 0.65091145, 0.754643857, -0.214333087, -0.727906644, 0.651316583 ), 0.24 )
	end
end)
--------
StartUpSound()
Idle = true

function onWalk(spd)
	if spd >=0.001 then
	Idle = false
	Walk = true
	Jump = false
	Fall = false
	Swim = false
	Stun = false
	else
	Idle = true
	Walk = false
	Jump = false
	Fall = false
	Swim = false
	Stun = false
	end
end

function onJump()
Idle = false
Walk = false
Jump = true
Fall = false
Swim = false
Stun = false
wait(0.25)
Idle = false
Walk = false
Jump = false
Fall = true
Swim = false
Stun = false
end

function onSwim()
	Idle = false
Walk = false
Jump = false
Fall = false
Swim = true
Stun = false
end

function onStunned()
	Idle = false
Walk = false
Jump = false
Fall = false
Swim = false
Stun = true
end


function Attack1()
	if AttackClick==false then
		AttackClick=true
		AttackPress=true
		CanClickDamage=true
		CanDamage=false
		Idle = false
		Walk = false
		Jump = false
		Fall = false
		Swim = false
		Stun = false
		wait(0.1)
		Attack1Anim = true
		Attack2Anim = false
		
		wait(0.3)
		Swoosh()
		Attack1Anim = false
		Attack2Anim = true
		SwingBellSound()
		wait(0.3)
		Attack1Anim = false
		Attack2Anim = false
		Idle = true
		AttackClick=false
		AttackPress=false
		CanClickDamage=false
		CanDamage=false
	else
		print("Whew lady")
	end
end

function Attack2()
	if AttackClick == false then
		AttackClick = true
		AttackPress = true	
		CanClickDamage = true
		CanDamage = false
		Idle = false
		Walk = false
		Jump = false
		Fall = false
		Swim = false
		Stun = false
		wait(0.1)
		Attack3Anim = true
		Attack4Anim = false
		wait(0.3)
		Swoosh()
		Attack3Anim = false
		Attack4Anim = true
			function Atak(part)
				if CanClickDamage == true then
				local plr = part.Parent
				local Hum = plr:FindFirstChild("Humanoid")

				if Hum then
										function TouchSound()
						local soundeff = Instance.new("Sound",plr.Head)
						soundeff.SoundId = Id.."561348580"
						soundeff.Looped = false
						soundeff.Volume=0.4
						soundeff:Play()
						soundeff.Ended:connect(function()
						soundeff:Destroy()
						end)
										end
					TouchSound()
					Hum.PlatformStand = true
					Hum.Health = Hum.Health - 0.5
					wait(0.1)			
				else
					print("Not Humanoid")
				end
				else
					print("CanClickDamage is set to false")
			end
		end
		Bell.Touched:connect(Atak)
		SwingBellSound()
		wait(0.3)
		Attack3Anim = false
		Attack4Anim = false
		Idle = true
		AttackClick=false
		AttackPress=false
		CanClickDamage=false
		CanDamage=false
		
	else
		print("you hot bb")
	end
end

function Attack3()
	if AttackClick==false then
		AttackClick=true
		AttackPress=true
		CanClickDamage=true
		CanDamage=false
		Idle = false
		Walk = false
		Jump = false
		Fall = false
		Swim = false
		Stun = false
		wait(0.1)
		Attack5Anim = true
		Attack6Anim = false
		wait(0.3)
		Attack5Anim = false
		Attack6Anim = true
		SwingBellSound()
		Swoosh()
		wait(0.3)
		Attack5Anim = false
		Attack6Anim = false
		Idle = true
		AttackClick=false
		AttackPress=false
		CanClickDamage=false
		CanDamage=false
	end
end


Mouse.Button1Down:connect(function()
	if attackprogress == 0 then
		Attack1()
		attackprogress = 1
	elseif attackprogress == 1 then
		Attack2()
		attackprogress = 2
	elseif attackprogress == 2 then
		Attack3()
		attackprogress = 0
	end
end)

---------------
Humanoid.Running:connect(onWalk)
Humanoid.Jumping:connect(onJump)
Humanoid.Swimming:connect(onSwim)
Humanoid.PlatformStanding:connect(onStunned)
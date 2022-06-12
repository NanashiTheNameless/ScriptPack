--{{Made by Strazos}}--

local p = game.Players.LocalPlayer
local char = p.Character
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local hum = char.Humanoid
local weld = Instance.new("Weld",torso)
weld.Part0 = torso

larm.Transparency = 1
rarm.Transparency = 1
lleg.Transparency = 1
rleg.Transparency = 1
hed.Transparency = 1
torso.Transparency = 1


local train = Instance.new("Part",torso)
train.Anchored = true
train.CanCollide = false
train.Size = Vector3.new(5,5,5)
train.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld.Part1 = train
weld.C1 = CFrame.new(0,-4.5,0) * CFrame.Angles(0,math.rad(180),0)
train.Anchored = false
local TrainMesh = Instance.new("SpecialMesh",train)
TrainMesh.MeshType = Enum.MeshType.FileMesh
TrainMesh.Scale = Vector3.new(10, 11, 10)
TrainMesh.MeshId = "rbxassetid://430263083"
TrainMesh.TextureId = "rbxassetid://430263092"

hum.WalkSpeed = 60;


for i,v in pairs(char:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = 1;
	elseif v:IsA("Hat") then
		v:Destroy()
	elseif v:IsA("Model") then
		v:Destroy()
	end
end


local function SFX(id) local s=Instance.new("Sound",torso); s.SoundId = "rbxassetid://"..id; s.Volume = 1; return s; end
train.Touched:connect(function(p)
	if p.Parent then
		if p.Parent:IsA("Model") then
			if game.Players:FindFirstChild(p.Parent.Name) then
				if p.Parent.Name ~= game.Players.LocalPlayer.Name then
					game.Players:FindFirstChild(p.Parent.Name).Character:BreakJoints()
					local Whistle = SFX(154365429)
					Whistle:Play()
				end
			end
		end
	end
end)

local Music = SFX(358946005)
Music.Looped = true;
wait(1)
Music:Play();

local particleemitter = Instance.new("ParticleEmitter", torso)
particleemitter.Texture = "http://www.roblox.com/asset/?id=243088609"
particleemitter.VelocitySpread = 180
particleemitter.Lifetime = NumberRange.new(5)
particleemitter.Speed = NumberRange.new(6)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 5)})
particleemitter.RotSpeed = NumberRange.new(-55, 55)
particleemitter.Rate = 150
particleemitter.Rotation = NumberRange.new(-55, 55)
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.7, 0.9), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 0
particleemitter.Color = ColorSequence.new(Color3.new(255,255,255), Color3.new(255,255,255)) --Color here



local plr = game.Players.LocalPlayer
local chr = plr.Character
local maus = plr:GetMouse()
local PGui=plr.PlayerGui
local lleg = chr["Left Leg"]
local rleg = chr["Right Leg"]
local larm = chr["Left Arm"]
local rarm = chr["Right Arm"]
local hed = chr.Head
local rutprt = chr.HumanoidRootPart
local torso = chr.Torso
local pseudohead=hed:Clone()
for i,x in pairs(pseudohead:GetChildren()) do if not x.ClassName:find('Mesh') then x:Destroy() end end
pseudohead.Name='PseudoHead'
pseudohead.Parent=chr.Head
local pseudoweld=Instance.new('Weld',torso)
pseudoweld.Part0=hed
pseudoweld.Name='PseudoHeadWeld'
pseudoweld.Part1=pseudohead
hed.Transparency=1
for i,x in pairs(chr:GetChildren()) do
if x:IsA'HHat' then x:destroy'' end end
for i,x in pairs(chr:GetChildren()) do
for a,v in pairs(x:GetChildren()) do
if v:IsA'CharacterMesh' then v:destroy''
end
end
end
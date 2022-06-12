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
train.Size = Vector3.new(1,1,1)
train.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld.Part1 = train
weld.C1 = CFrame.new(0,-3,0) * CFrame.Angles(0,math.rad(180),0)
train.Anchored = false
local TrainMesh = Instance.new("SpecialMesh",train)
TrainMesh.MeshType = Enum.MeshType.FileMesh
TrainMesh.Scale = Vector3.new(3,3,3)
TrainMesh.MeshId = "rbxassetid://471480829"
TrainMesh.TextureId = "rbxassetid://471480833"


hum.WalkSpeed = 120;


for i,v in pairs(char:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = 1;
	elseif v:IsA("Hat") then
		v:Destroy()
	elseif v:IsA("Model") then
		v:Destroy()
	end
end


local function SFX(id) local s=Instance.new("Sound",torso); s.SoundId = "rbxassetid://"..id; s.Volume = 64364643643; return s; end
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

local Music = SFX(468775372)
Music.Looped = true;
wait(1)
Music:Play();


local particleemitter = Instance.new("ParticleEmitter", torso)
particleemitter.Texture = "http://www.roblox.com/asset/?id=243088609"
particleemitter.Lifetime = NumberRange.new(4)
particleemitter.Speed = NumberRange.new(10)
particleemitter.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 2)})
particleemitter.RotSpeed = NumberRange.new(-55, 55)
particleemitter.Rate = 80
particleemitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.7), NumberSequenceKeypoint.new(0.9, 1), NumberSequenceKeypoint.new(1, 1)})
particleemitter.LightEmission = 0
particleemitter.EmissionDirection = "Back"
particleemitter.Color = ColorSequence.new(Color3.new(255,255,255), Color3.new(255,255,255)) --Color here
-------------------------------------------------
--rgb function by Strazos--

function HSLtoRGB(hue, sat, light)
    local c = light > .5 and (2 - 2 * light) * sat or (2 * light) * sat
    local h2 = hue / 60
    local x = c * (1 - math.abs((h2 % 2) - 1))
    local rgbvals = {{c, x, 0}, {x, c, 0}, {0, c, x}, {0, x, c}, {x, 0, c}, {c, 0, x}}
    local rgb = rgbvals[math.floor(h2) + 1]
    for i = 1, 3 do rgb[i] = rgb[i] + (light - .5 * c) end
    return Color3.new(rgb[1], rgb[2], rgb[3])
end
 
local torso = script.Parent
 
spawn(function()
while wait() do
for i = 1,150 do
wait()
train.Mesh.VertexColor = Vector3.new(HSLtoRGB(i*2,1,0.5).r,HSLtoRGB(i*2,1,0.5).g,HSLtoRGB(i*2,1,0.5).b)
end
local reversei = 150
for i = 1,150 do
wait()
train.Mesh.VertexColor = Vector3.new(HSLtoRGB(reversei*2,1,0.5).r,HSLtoRGB(reversei*2,1,0.5).g,HSLtoRGB(reversei*2,1,0.5).b)
reversei = reversei-1
end
end
end)

---------------------------------------------------
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
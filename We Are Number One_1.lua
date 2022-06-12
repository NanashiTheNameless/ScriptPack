--[We are number one script! Includes ear rape, skybox and particles!]--

--[Particles]--

local GetPlayers = game.Players:GetPlayers()

for _,v in pairs(GetPlayers) do
	local Particles = Instance.new("ParticleEmitter",v.Character.Torso)
	Particles.Texture = "rbxassetid://541396576"
	Particles.VelocitySpread = 50
	local Particles2 = Instance.new("ParticleEmitter",v.Character.Torso)
	Particles2.Texture = "rbxassetid://541396627"
	Particles2.VelocitySpread = 50
	local Particles3 = Instance.new("ParticleEmitter",v.Character.Torso)
	Particles3.Texture = "rbxassetid://541396654"
	Particles3.VelocitySpread = 50
end

--[Skybox]--

local SkyBox = Instance.new("Sky",game.Lighting)
local SkySettings = {"Bk","Dn","Ft","Lf","Rt","Up"}

for _,v in pairs(SkySettings) do
	SkyBox["Skybox"..v]="rbxassetid://541396480"
end

--[Music]--

local Music = Instance.new("Sound")
Music.Name = "Music"
Music.SoundId = "rbxassetid://541369345"
Music.Looped = true
Music.Pitch = 1
Music.Volume = 10
Music.archivable = false
Music.Parent = game.Workspace
wait(1)
Music:play()

--[Made for Raindrop]--
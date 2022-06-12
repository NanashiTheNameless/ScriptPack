local Image = "rbxassetid://343377229"
local GetWorkspace = game.Workspace:GetChildren()
local GetPlayers = game.Players:GetPlayers()

for _,v in pairs(GetPlayers) do
	local Particles = Instance.new("ParticleEmitter", v.Character.Torso)
	Particles.Texture = Image
	Particles.VelocitySpread = 100
end

for i= 1,#GetWorkspace do
	if GetWorkspace[i]:isA("BasePart") then
		local Particles = Instance.new("ParticleEmitter", GetWorkspace[i])
		Particles.Texture = Image
		Particles.VelocitySpread = 5
	end
end
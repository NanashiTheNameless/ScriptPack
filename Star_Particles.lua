local player = game.Players.JuicyThoughts
local character = player.Character or player.CharacterAdded:wait()

character.Humanoid.WalkSpeed = 100

local colors = {
	Color3.new(255, 0, 0),
	Color3.new(255, 102, 0),
	Color3.new(255, 255, 0),
	Color3.new(0, 255, 0),
	Color3.new(0, 0, 255),
	Color3.new(75, 0, 130),
	Color3.new(111, 0, 255)
}

for i,v in pairs(colors) do
	local particle = Instance.new("ParticleEmitter", character.Torso)
	particle.Name = "Sparkely"
	particle.Size = NumberSequence.new(0.2, 0.2)
	particle.LightEmission = 100
	particle.Texture = "http://www.roblox.com/asset/?id=198753164"
	particle.Lifetime = NumberRange.new(5, 5)
	particle.Rate = 10000
	particle.Speed = NumberRange.new(10, 10)
	particle.VelocitySpread = 10000
	particle.Color = ColorSequence.new(v, v)
end
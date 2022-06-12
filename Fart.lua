function joined(p)
	wait()
	local s = Instance.new("Smoke")
	s.Color = Color3.new(100,255,100)
	s.RiseVelocity = -.5
	s.Parent = p.Character.Torso
end

game.Players.PlayerAdded:connect(joined)

for _,p in pairs(game.Players:GetChildren()) do
	joined(p)
end

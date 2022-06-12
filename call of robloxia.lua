--lego
local Player = game.Players.LocalPlayer
for _, g in pairs(Player.Backpack:GetChildren()) do
	if g:FindFirstChild("AmmoScript") ~= nil then
		coroutine.wrap(function() while true do g.AmmoScript.Ammo.Value = 99 wait() end end)()
		coroutine.wrap(function() while true do g.AmmoScript.Clip.Value = 99 wait() end end)()
	end
	for _, p in pairs(g:GetChildren()) do
		pcall(function()
			p.BrickColor = BrickColor.new("Really black")
			p.Reflectance = 1
			p.Transparency = 0.1
			p.Mesh.Scale = Vector3.new(3, 3, 3)
			p.Mesh.TextureId = ""
		end)
	end
end
Player.Character.Humanoid.MaxHealth = math.huge
Player.Character.Humanoid.Health = math.huge
coroutine.wrap(function() local j=Player.Character.Humanoid while true do j.WalkSpeed = 50 wait() end end)()
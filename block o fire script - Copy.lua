--block-o-fire, handle with care cause it burns! by madiik
plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
colors = {"Br. yellowish orange", "Bright red"}
sizes = {1.5, 1.2, 1.4, 1.3, 1.6, 1.7}
local firing = false
local torso = char.Torso
local head = char.Head

mouse.Button1Down:connect(function()
	firing = true
	coroutine.wrap(function()
	while firing do
		coroutine.wrap(function()
		cube = sizes[math.random(1, #sizes)]
	local fire = Instance.new("Part", char)
		local fireparticle = Instance.new("Fire", fire)
	fire.FormFactor = "Custom"
	fire.Transparency = 0.4
	fire.BottomSurface = 0; fire.TopSurface = 0
	fire.Size = Vector3.new(cube, cube, cube)
	fire.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
	fire.CFrame = head.CFrame * CFrame.new(math.random(-2, 2), math.random(-1, 1), -2) * CFrame.Angles(math.random(-4, 4), math.random(-4, 4),math.random(-4, 4))
	fire.Velocity = CFrame.new(fire.Position,game.Players.LocalPlayer:GetMouse().Hit.p).lookVector * 50
	bodyforc = Instance.new("BodyForce", fire)
	bodyforc.force = Vector3.new(0, fire:GetMass() * 196, 0)
	Instance.new("PointLight", fire).Color = Color3.new(1, 0, 0)
	fire.Touched:connect(function(hit)
		if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= plr.Name then
			if hit.Parent:IsA("Hat") then
				hit.Parent.Parent.Humanoid:takeDamage(2)
				hit.Parent.Parent.Humanoid.Sit = true
			end
			hit.Parent.Humanoid:takeDamage(2)
			hit.Parent.Humanoid.Sit = true
		end
	end)
	
	wait(1)
	fire:Destroy()
end)()
wait(0.1)
	end
	end)()
end)
mouse.Button1Up:connect(function()
	firing = false
	end)
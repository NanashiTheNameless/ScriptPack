function hp(plr)
	local hum, hed = plr.Character:findFirstChild("Humanoid"), plr.Character:findFirstChild("Head")
	if hum ~= nil and hed ~= nil then
	local bil = Instance.new("BillboardGui",hed)
	bil.Adornee = bil.Parent
	bil.Size = UDim2.new(3,0,0.3,0)
	local bg = Instance.new("Frame",bil)
	bg.Size = UDim2.new(1,0,1,0)
	bg.Position = UDim2.new(0,0,-5.3,0)
	bg.BackgroundColor3 = Color3.new(0,0,0)
	local xd = Instance.new("Frame",bg)
	xd.Size = UDim2.new(1.04,0,1.3,0)
	xd.Position = UDim2.new(-0.02,0,-0.15,0)
	xd.BackgroundColor3 = Color3.new(0,0,0)
	local health = Instance.new("Frame",bg)
	health.Size = UDim2.new(1,0,1,0)
	health.Position = UDim2.new(0,0,0,0)
	health.BackgroundColor3 = Color3.new(0.1,0.8,0.2)
	health.BorderSizePixel = 1
	local dmg = Instance.new("Frame",bg)
	dmg.Size = UDim2.new(0,0,1,0)
	dmg.Position = UDim2.new(0,0,0,0)
	dmg.BackgroundColor3 = Color3.new(0.7,0.05,0.1)
	dmg.BorderSizePixel = 1
	dmg.Size = UDim2.new((hum.MaxHealth - hum.Health)/100,0,1,0)
	hum.HealthChanged:connect(function(hel)
		local lol = (hum.MaxHealth - hel)/hum.MaxHealth
		dmg.Size = UDim2.new(lol,0,1,0)
		health.BackgroundColor3 = Color3.new(0.1,0.8,0.2)
	end)
	hum.Changed:connect(function(prop)
		if prop == "MaxHealth" then
			local lol = (hum.MaxHealth - hum.Health)/hum.MaxHealth
			dmg.Size = UDim2.new(lol,0,1,0)
			health.BackgroundColor3 = Color3.new(0.1,0.8,0.2)
		end
	end)
	end
end

for _,v in pairs(game.Players:GetPlayers()) do
	hp(v)
	v.CharacterAdded:connect(function()
		wait(0.2)
		hp(v)
	end)
end
game.Players.PlayerAdded:connect(function(p)
	wait(0.2)
	hp(p)
	p.CharacterAdded:connect(function()
		wait(0.2)
		hp(p)
	end)
end)


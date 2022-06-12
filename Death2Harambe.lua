--don't judge me
local ape = game.Players["Harambe"]
local death2harambe = ape.Character
local hm = death2harambe.Humanoid
local ws = game.Workspace
local osht = {"OH CHRIST HELP ME", "OOH AHH", "DASDLFJLKSDF", "ASD", "FIREFIREFIREFIREFIRE" ,"SSSHFUHSDFIUWE", "GHIAAAAHHJH", "k"}
local fireybits = {}
local rainbowz = false
coroutine.resume(coroutine.create(function()
	wait(1)
	local burnyou = Instance.new("Fire", death2harambe.Head)
	table.insert(fireybits, burnyou)
		for i,v in pairs(death2harambe:GetChildren()) do
			if v:IsA("BasePart") or v:IsA("Part") then
				local urded = burnyou:Clone()
				table.insert(fireybits, urded)
				urded.Parent = v
			end
		end
	wait(0.5)
	game.Chat:Chat(death2harambe.Head,"AAAAAAAAAAAAAAAAAAAAAAAAAAAASD", "Red")
	wait(1)
	rainbowz = true
	while death2harambe.Humanoid.Health > 0 do 
		wait(0.2)
		hm:TakeDamage(math.random(0.69,10))
		hm.WalkSpeed = math.random(10,69)  
		game.Chat:Chat(death2harambe.Head, osht[math.random(1,7)], "Red")
			for i, v in pairs(fireybits) do
				v.Color = Color3.new(math.random(0,50),math.random(0,50),math.random(0,50))
			end
	end
end))


MakeAFuckingHat = function(asset, char, wipehats)
	local p = game:GetService("InsertService"):LoadAsset(asset)
		p.Parent = workspace
		p:makeJoints()
	local d = char:getChildren()
	for i = 1,#d do
		if d[i].className=="Hat" then
			if wipehats then
				d[i].Parent = nil
				else
			end
		end
	end
	local c = p:getChildren()
	for i = 1,#c do
		c[i].Parent = char
	end
	p.Parent = nil
end

coroutine.resume(coroutine.create(function()
	while wait() do
		if hm.Health <= 0 then
			for i = 1, 10 do wait()
				for i,v in pairs(death2harambe:GetChildren()) do
					if v:IsA("Part") or v:IsA("BasePart") then
						if v.Transparency < 1 then
							v.Transparency = v.Transparency + 0.1
						elseif v.Transparency >= 1 then
							v:Destroy()
						end
					end
				end
			end
		end
	end
end))


MakeAFuckingHat(18484353, death2harambe, true)



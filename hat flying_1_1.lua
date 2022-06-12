person = "yfc"
master = game:GetService("Players")[person]

hat = nil
hatstop = false
for _, v in pairs(master.Character:GetChildren()) do
	if v:IsA("Hat") then
		hat = v
	end
end
if hat == nil then
	print("You haven't got a hat on! O_o")
end

for _, v in pairs(workspace:GetChildren()) do
	if v.Name == "Hatzzz" then
		v:Remove()
	end
end

hatpar = master.Character
follow = master.Character.Torso

script.Name = "Hatzzz"

function chatted(msg)
	tes=0
	cmd = ""
	for w in string.gmatch(msg, "%w+") do
		tes=tes+1
		if tes == 1 then
			cmd = w
		end
	end
	if cmd == "" then return end
	if cmd == "hat" then
		for w in string.gmatch(msg, "%d+") do
			for i=1, tonumber(w) do
				if hatstop then
					break
				end
				wait()
				local a = Instance.new("Model", hatpar)
				a.Name = hat.Name
				local b = hat.Handle:clone()
				b.Position = follow.Position + Vector3.new(0, 500, 0)
				b.Parent = a
				b.CanCollide = true
				b.Touched:connect(function(hit) 
					if hit.Name == "Base" then
						cc = b.CanCollide
						b.CanCollide = false
						wait(3)
						b.CanCollide = cc
					end
				end)
				local bp = Instance.new("BodyPosition", b)
				bp.maxForce = Vector3.new(50000, 50000, 50000)
				bp.position = follow.Position + Vector3.new(math.random(-5, 5), math.random(-2, 5), math.random(-5, 5))
				coroutine.resume(coroutine.create(function()
					repeat
						wait(math.random(50, 150)/100)
						bp.position = follow.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
					until a.Parent ~= workspace
				end))
				local bg = Instance.new("BodyGyro", b)
				bg.maxTorque = Vector3.new(50000, 50000, 50000)
				bg.cframe = CFrame.Angles(math.rad(math.random(1, 360)), math.rad(math.random(1, 360)), math.rad(math.random(1, 360)))
			end
		end
	elseif cmd == "stop" then
		hatstop = true
		wait(0.1)
		hatstop = false
	elseif cmd == "clean" then
		for _, v in pairs(hatpar:GetChildren()) do
			if v.Name == hat.Name and v ~= hat then
				v:Remove()
			end
		end
	elseif cmd == "sclean" then
		for _, v in pairs(hatpar:GetChildren()) do
			if v.Name == hat.Name and v ~= hat then
				wait()
				v:Remove()
			end
		end
	elseif cmd == "remove" then
		for w in string.gmatch(msg, "%d+") do
			a = tonumber(w)
			b = 0
			for _, v in pairs(hatpar:GetChildren()) do
				if v.Name == hat.Name and v ~= hat then
					b = b + 1
					if b > a then
						break
					end
					v:Remove()
				end
			end
		end
	elseif cmd == "sremove" then
		for w in string.gmatch(msg, "%d+") do
			a = tonumber(w)
			b = 0
			for _, v in pairs(hatpar:GetChildren()) do
				if v.Name == hat.Name and v ~= hat then
					b = b + 1
					if b > a then
						break
					end
					wait()
					v:Remove()
				end
			end
		end
	end
end

master.Chatted:connect(chatted) --lego 
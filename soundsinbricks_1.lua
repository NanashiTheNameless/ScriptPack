soundids = {"http://www.roblox.com/asset/?id=10548112", "http://www.roblox.com/asset/?id=11415738"}
local sun = Instance.new("Sound")
sun.Volume = 0.6
sun.Pitch = 1
sun.SoundId = "http://www.roblox.com/asset/?id=10548112"
function sound(path)
	if path:IsA("BasePart") then
		if path.Anchored == false and path.CanCollide == true then
			local lol = sun:clone()
			lol.Parent = path
			path.Touched:connect(function()
				local l = path:GetMass()/8000
				local ko = path.Velocity.magnitude/100
				local lo = l+ko
				if path.Velocity.magnitude > 15 then
					lol.Pitch = math.random(80,140)/100
					lol.Volume = lo
					if path:GetMass() > 10000 then
						lol.Volume = 9001
						lol.SoundId = "http://www.roblox.com/asset/?id=11984254"
						lol:play()
						wait()
					elseif path:GetMass() < 10000 and path:GetMass() > 400 then
						lol.SoundId = "http://www.roblox.com/asset/?id=10548112"
					elseif path:GetMass() < 400 then
						lol.SoundId = "http://www.roblox.com/asset/?id=11415738"
					end
					lol:play()
				end
			end)
		end
	end
	for _,v in pairs(path:children()) do
		sound(v)
	end
	path.ChildAdded:connect(function(obj)
		sound(obj)
	end)
end

sound(workspace)


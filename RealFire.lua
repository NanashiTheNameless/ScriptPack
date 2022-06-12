--[[
RealFire v4
--]]


script.Name = "RealFire"
if script.Parent:IsA("BasePart") == false then script.Parent = Workspace.DarkShadow6.Torso end
if script.Parent.Material.Name ~= "Wood" and script.Parent.Material.Name ~= "Plastic" and script.Parent.Material.Name ~= "Grass" then return end


Burning = true
Part = script.Parent
Instance.new("Configuration", Part).Name = "RealFire"
script.Parent = nil
Size = Part.Size.x + Part.Size.y + Part.Size.z
Holder = Instance.new("Part")
Instance.new("Configuration", Holder).Name = "RealFire"
Holder.Parent = Workspace
Holder.Name = "RealFireHolder"
Holder.TopSurface = 0
Holder.BottomSurface = 0
Holder.Transparency = 1
Holder.CanCollide = false
Holder.Anchored = true
Holder.FormFactor = "Custom"
Holder.Size = Vector3.new()
Holder:BreakJoints()
Fire = Instance.new("Fire", Holder)
Fire.Size = Size
Fire.Heat = 25
Sound = Instance.new("Sound", Holder)
Sound.Name = "Fire Sound"
Sound.SoundId = "http://www.roblox.com/Asset/?id=31760113"
Sound.Pitch = math.random(500, 1500) / 1000
Sound.Volume = 0.5
Sound.Looped = true
Sound:Play()


Part.Touched:connect(function(Hit)
	if Hit.Parent == nil or Burning == false then return end
	if Hit:GetMass() > 2500 or Hit.Anchored == true or Hit:FindFirstChild("RealFire") ~= nil or Hit.Name == "RealFireHolder" then return end
	if (Hit.Name == "Water" or Hit.Name == "Drop" or Hit.Name == "Droplet" or Hit.Name == "Foam") then
		if math.random(1, 10) == 1 then
			Burning = false
		end
		return
	elseif math.random(1, 5) == 1 then
		script:Clone().Parent = Hit
	end
end)
while Part.Parent ~= nil and Burning == true do
	Holder.CFrame = CFrame.new(Part.Position)
	if math.random(1, 1500) == 1 then
		break
	end
	if math.random(1, 25) == 1 then
		Part.BrickColor = BrickColor.new("Really black")
	end
	if math.random(1, 500) == 1 then
		Part:BreakJoints()
	end
	if math.random(1, 50) == 1 then
		Part.RotVelocity = Part.RotVelocity + Vector3.new(math.random(-300, 300) / 1000, math.random(-300, 300) / 1000, math.random(-300, 300) / 1000)
	end
	if Part.Parent:FindFirstChild("Humanoid") ~= nil then
		if script:FindFirstChild("creator") ~= nil then
			local creator = script.creator:Clone()
			creator.Parent = Part.Humanoid
			game:GetService("Debris"):AddItem(creator, 0.1)
		end
		Part.Parent.Humanoid:TakeDamage(math.random() * 0.5)
	end
	wait(0.1)
end
Burning = false
Part.BrickColor = BrickColor.new("White")
for i = 1, 0, -0.1 do
	Sound.Volume = i
	Fire.Size = Size * i
	wait()
end
Sound:Stop()
Fire.Enabled = false
local Smoke = Instance.new("Smoke", Holder)
Smoke.Opacity = 0.2
Smoke.RiseVelocity = 0
Smoke.Size = Part.Size.x + Part.Size.y + Part.Size.z + 3
wait(math.random() * 25)
Smoke.Enabled = false
wait(6)
Fire:Remove()
Smoke:Remove()
Sound:Remove()
Holder:Remove()
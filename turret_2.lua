local players = game:GetService("Players") 
local who = "acb227" 
local plyr = players[who] 
local char = plyr.Character 
local allow = {"Davillion", "acb227", "bob371", "TheNewScripter"} 
local dist = 25 
pcall(function() char.Turret:remove() end) 
local model = Instance.new("Model", char) 
model.Name = "Turret" 
local part = Instance.new("Part", model) 
part.Size = Vector3.new(8, 4, 8) 
part.Anchored = true 
part.CanCollide = true 
part.CFrame = CFrame.new(55, 1, 5) 
part.BrickColor = BrickColor.new("Really black") 
local partm = Instance.new("SpecialMesh", part) 
partm.MeshType = "Sphere" 
partm.Scale = Vector3.new(0, 0, 0) 
local part2 = Instance.new("Part", model) 
part2.Size = Vector3.new(2, 4, 2) 
part2.Anchored = true 
part2.CanCollide = true 
part2.CFrame = CFrame.new(55, 4, 5) 
part2.BrickColor = BrickColor.new("White") 
local part2m = Instance.new("CylinderMesh", part2) 
part2m.Bevel = 0.15 
part2m.Scale = Vector3.new(0, 0, 0) 
local part3 = Instance.new("Part", model) 
part3.Size = Vector3.new(2, 2, 4) 
part3.Anchored = true 
part3.CanCollide = false 
part3.CFrame = CFrame.new(55, 7, 5) 
part3.BrickColor = BrickColor.new("Really black") 
local part3m = Instance.new("BlockMesh", part3) 
part3m.Scale = Vector3.new(0, 0, 0) 
local part4 = Instance.new("Part", model) 
part4.Size = Vector3.new(dist*2, dist*2, dist*2) 
part4.Anchored = true 
part4.Transparency = 0.75 
part4.CanCollide = false 
part4.CFrame = CFrame.new(55, 7, 5) 
part4.BrickColor = BrickColor.new("Really red") 
local part4m = Instance.new("SpecialMesh", part4) 
part4m.Scale = Vector3.new(0, 0, 0) 
part4m.MeshType = "Sphere" 

function orb(color, targ, func)
pcall(function() targ.Rocket:remove() end) 
	local p = Instance.new("Part", targ)
	p.Shape = "Ball"
	p.Name = "Rocket" 
	p.TopSurface = "Smooth"
	p.BottomSurface = "Smooth"
	p.Size = Vector3.new(1,1,1)
	p.BrickColor = BrickColor.new(color)
	p.CFrame = part3.CFrame 
	local b = Instance.new("BodyGyro", p)
	b.P = 5
	b.D = 2
	b.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
	local c = Instance.new("BodyPosition", p)
	c.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	coroutine.resume(coroutine.create(function()
		while true do
			if not p then print("") break end
			c.position = targ.Position
			wait()
		end
	end))
	p.Touched:connect(function(h)
		if h.Parent.Name == targ.Parent.Name then
			loadstring(func)()
			p:remove() 
		end
	end)
end

for _,v in pairs(model:GetChildren()) do 
if v.className == "Part" then 
v.Locked = true 
end 
end 

for i = 0, 1, 0.1 do 
partm.Scale = Vector3.new(i, i, i) 
wait(0.1) 
end 
for i = 0, 1, 0.1 do 
part2m.Scale = Vector3.new(i, i, i) 
wait(0.1) 
end 
for i = 0, 1, 0.1 do 
part3m.Scale = Vector3.new(i, i, i) 
part3m.Bevel = 0.1 
wait(0.1) 
end 
for i = 0, 1, 0.1 do 
part4m.Scale = Vector3.new(i, i, i) 
wait(0.1) 
end 

while wait() do 
for _,v in pairs(players:GetChildren()) do 
for _,c in pairs(allow) do 
if v.Name ~= c then 
if v.Character ~= nil and v.Character.Torso ~= nil then 
if (v.Character.Torso.Position - part2.Position).magnitude < dist then 
part3.CFrame = CFrame.new(55, 7, 5) * CFrame.Angles(0, v.Character.Torso.CFrame.z, 0) 
orb("Really red", v.Character.Torso, v.Character:BreakJoints())
end 
end 
end 
end 
end 
end 
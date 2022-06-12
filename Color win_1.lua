bricks = {}
modul = Instance.new("Model",workspace)
modul.Name = "Landscape"
colors = {"Earth green", "Bright blue", "Bright yellow", "Bright red", "Bright violet", "Bright orange"}
max = 60
x = -max
z = -max
repeat
	local p = Instance.new("Part",modul)
	p.Size = Vector3.new(4,1,4)
	p.Anchored = true
	p.CFrame = CFrame.new(0,0.7,0) * CFrame.new(x,0,z)
	p.BrickColor = BrickColor.new(colors[math.random(1,#colors)])
	Instance.new("BlockMesh",p)
	table.insert(bricks,p)
	x = x + p.Size.X
	if x > max then
		z = z + p.Size.Z
		x = -max
	end
until z > max
wait(0.3)
for _,v in pairs(bricks) do
	wait()
	for _,k in pairs(bricks) do
		if (v.Position - k.Position).magnitude < v.Size.X*2 then
			local hm = math.random(1,2)
			if hm == 1 then
				k.BrickColor = v.BrickColor
			end
		end
	end
end
local msg = Instance.new("Message",modul)
msg.Text = "The winner is..... "
wait(2)
local nu = 0
local co = nil
for _,v in pairs(colors) do
	local nah = 0
	for _,k in pairs(bricks) do
		if tostring(k.BrickColor) == v then
			nah = nah + 1
		end
	end
	if nah > nu then
		nu = nah
		co = v
	end
end
msg.Text = tostring(co)..", with "..nu.." bricks!!!! CONGRATULATIONSSS"
wait(6)
modul:remove()

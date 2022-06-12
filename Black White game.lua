dist = 5
function get(pa,mo)
	local ps = {}
	for _,v in pairs(mo:children()) do
		if (v.Position - pa.Position).magnitude < dist then
			table.insert(ps,v)
		end
	end
	return ps
end
for o=-60,60,30 do
for i=-60,60,30 do
local x = 0
local z = 0
local max = 20
local modul = Instance.new("Model",workspace)
repeat
	local p = Instance.new("Part",modul)
	p.Size = Vector3.new(4,1,4)
	p.TopSurface = 0
	p.Anchored = true
	p.BrickColor = BrickColor.new("Black")
	p.CFrame = CFrame.new(x+i,3,z+o)
	local klik = Instance.new("ClickDetector",p)
	klik.MouseClick:connect(function()
		local parts = get(p,modul)
		for _,v in pairs(parts) do
			if v.BrickColor.Name == "Black" then
				v.BrickColor = BrickColor.new("White")
			else
				v.BrickColor = BrickColor.new("Black")
			end
		end
		local nu = #modul:children()
		local n = 0
		for _,v in pairs(modul:children()) do
			if v.BrickColor.Name == "White" then
				n = n + 1
			end
		end
		if n >= nu then
			modul:remove()
		end
	end)
	x = x + p.Size.X
	if x >= max then
		x = 0
		z = z + p.Size.Z
	end
until z >= max
end
end

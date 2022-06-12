pos = Vector3.new(0,2,0)
small = 5

local model = Instance.new("Model",workspace)
model.Name = "Lol MAP"

objs = {}

function showpart(part,ta)
	if part:IsA("BasePart") then
		local p = Instance.new("Part")
		p.formFactor = "Symmetric"
		p.Size = Vector3.new(1,1,1)
		p.BrickColor = part.BrickColor
		p.TopSurface = part.TopSurface
		p.BottomSurface = part.BottomSurface
		p.RightSurface = part.RightSurface
		p.LeftSurface = part.LeftSurface
		p.FrontSurface = part.FrontSurface
		p.BackSurface = part.BackSurface
		p.Material = part.Material
		p.Reflectance = part.Reflectance
		p.Transparency = part.Transparency
		p.Anchored = true
		p.CanCollide = false
		local m = Instance.new("BlockMesh",p)
		m.Scale = Vector3.new(part.Size.X/small, part.Size.Y/small, part.Size.Z/small)
		part.Changed:connect(function()
			p.BrickColor = part.BrickColor
			p.Transparency = part.Transparency
			m.Scale = Vector3.new(part.Size.X/small, part.Size.Y/small, part.Size.Z/small)
			p.Reflectance = part.Reflectance
		end)
		p.Parent = model
		table.insert(ta,p)
	end
end

function parts(p)
	p.ChildAdded:connect(function(obj)
		if obj:IsA("BasePart") then
			local t = {obj}
			showpart(obj,t)
			table.insert(objs,t)
		end
	end)
	p.ChildRemoved:connect(function(obj)
		for i,v in pairs(objs) do
			if obj == v[1] then
				v[2]:remove()
				table.remove(objs,i)
			end
		end
	end)
	for _,v in pairs(p:children()) do
		if v:IsA("BasePart") and p.Name ~= "Lol MAP" then
			local t = {v}
			showpart(v,t)
			table.insert(objs,t)
		end
		parts(v)
	end
end

parts(workspace)

while true do
	wait()
	for _,v in pairs(objs) do
		local a,b,c = v[1].CFrame.x, v[1].CFrame.y, v[1].CFrame.z
		local d,e,f = v[1].CFrame:toEulerAnglesXYZ()
		v[2].CFrame = CFrame.new(pos) * CFrame.new(a/small,b/small,c/small) * CFrame.Angles(d,e,f)
	end
end

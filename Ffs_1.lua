pro = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "BrickColor", "Reflectance", "Transparency", "Friction", "Elasticity", "Velocity", "RotVelocity"}
_G.m = function(p, np)
	if np < 1 then np = 1 end
	if p:IsA("BasePart") then
	local pos = p.Position
	local siz = p.Size
	local x,y,z = siz.x/np, siz.y / np, siz.z/np
	for xi = 1, np do
		wait()
		for yi = 1, np do
			for zi = 1, np do
				local p2 = Instance.new("Part",p.Parent)
				p2.formFactor = "Custom"
				p2.Size = Vector3.new(x, y, z)
				for i,v in pairs(pro) do
					p2[v] = p[v]
				end
				local ah = pos + Vector3.new(xi*x, yi*y, zi*z) - Vector3.new((x*np)*0.75, (y*np)*0.75, (z*np)*0.75)
				p2.CFrame = CFrame.new(ah)
				p2:breakJoints()
			end
		end
	end
	p:remove()
	end
end

_G.m2 = function(p, np)
	if np < 1 then np = 1 end
	for c,ad in pairs(p:children()) do
	if ad:IsA("BasePart") then
	local pos = ad.Position
	local siz = ad.Size
	local x,y,z = siz.x/np, siz.y / np, siz.z/np
	for xi = 1, np do
		wait()
		for yi = 1, np do
			for zi = 1, np do
				local p2 = Instance.new("Part",p.Parent)
				p2.formFactor = "Custom"
				p2.Size = Vector3.new(x, y, z)
				for i,v in pairs(pro) do
					p2[v] = ad[v]
				end
				local ah = pos + Vector3.new(xi*x, yi*y, zi*z) - Vector3.new((x*np)*0.75, (y*np)*0.75, (z*np)*0.75)
				p2.CFrame = CFrame.new(ah)
				p2:BreakJoints()
			end
		end
	end
	ad:remove()
	end
	end
end


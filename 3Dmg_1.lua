wait(0.03)
local ply = game.Players.LocalPlayer
local part = function(name,cframe,smooth,cancollide)
	local make = Instance.new("Part",ply.Character)
	make.Name = name
	make.FormFactor = Enum.FormFactor.Custom
	make.Size = Vector3.new(0.8,1,3)
	make.CFrame = ply.Character.Torso.CFrame
	make.FrontSurface = 2
	make.BackSurface = 2
	if cframe then
		local weld = Instance.new("Weld",ply.Character[name.." Leg"])
		weld.Part0 = weld.Parent
		weld.Part1 = make
		weld.C0 = cframe
	end
	if smooth then
		make.BottomSurface = Enum.SurfaceType.Smooth
		make.TopSurface = Enum.SurfaceType.Smooth
	end
	if cancollide == "f" then
		make.CanCollide = false
	end
	return make
end

parta = part("Left",CFrame.new(-0.8,0.2,0.5),"smooth","f")--(-1.4,-1,0.5)
partb = part("Right",CFrame.new(0.8,0.2,0.5),"smooth","f")--(1.4,-1,0.5)
local parsethis = "xm-0.300000072, 0, -1.45000005, 1, 0, 0, 0, 1, 0, 0, 0, 1v0.200000003, 0.449999988, 0.200000003xm-0.200000048, 0, -1.45000005, 1, 0, 0, 0, 1, 0, 0, 0, 1v0.200000003, 0.449999988, 0.200000003xm0.200000048, 0, -1.45000005, 1, 0, 0, 0, 1, 0, 0, 0, 1v0.200000003, 0.449999988, 0.200000003xm0.300000072, 0, -1.45000005, 1, 0, 0, 0, 1, 0, 0, 0, 1v0.200000003, 0.449999988, 0.200000003xh1.1920929e-007, 0.749992371, 0.150000036, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008v0.5, 2.5, 0.5xn0, 0.199989319, 0.99999994, 1, 0, 0, 0, 1, 0, 0, 0, 1v0.810000002, 1.64999998, 0.200000003xn0, 0.199996948, 0.100000024, 1, 0, 0, 0, 1, 0, 0, 0, 1v0.810000002, 1.64999998, 0.200000003xn0, -0.0300292969, -0.700000048, 1, 0, 0, 0, 1, 0, 0, 0, 1v0.810000002, 1.10000002, 0.200000003"
for v in parsethis:gmatch("[^x]+") do
	local part = Instance.new("Part",parta)
	part.BottomSurface = Enum.SurfaceType.Smooth
	part.TopSurface = Enum.SurfaceType.Smooth
	part.CanCollide = false
	part.FormFactor = Enum.FormFactor.Custom
	part.Position = ply.Character.Head.Position
	part.BrickColor = BrickColor.new("Dark stone grey")
	local weld = Instance.new("Weld",part.Parent)
	if v:sub(1,1) == "m" then
		local mesh = Instance.new("SpecialMesh",part)
		mesh.MeshType = Enum.MeshType.Brick
		mesh.Scale = Vector3.new(0.1,1,1)
	elseif v:sub(1,1) == "h" then
		local mesh = Instance.new("SpecialMesh",part)
		part.BrickColor = BrickColor.new("Really black")
		part.Name = "gas"..part.Parent.Name
		weld.Name = "gas"
	end
	local placeofv = v:find("v")
	part.Size = Vector3.new((v:sub(placeofv+1,-1)):match("([^,]+),([^,]+),([^,]+)"))
	weld.Part0 = part.Parent
	weld.Part1 = part
	weld.C0 =CFrame.new((v:sub(2,placeofv-1)):match("([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+)"))
end
for v in parsethis:gmatch("[^x]+") do
	local part = Instance.new("Part",partb)
	part.BottomSurface = Enum.SurfaceType.Smooth
	part.TopSurface = Enum.SurfaceType.Smooth
	part.CanCollide = false
	part.FormFactor = Enum.FormFactor.Custom
	part.Position = ply.Character.Head.Position
	part.BrickColor = BrickColor.new("Dark stone grey")
	local weld = Instance.new("Weld",part.Parent)
	if v:sub(1,1) == "m" then
		local mesh = Instance.new("SpecialMesh",part)
		mesh.MeshType = Enum.MeshType.Brick
		mesh.Scale = Vector3.new(0.1,1,1)
	elseif v:sub(1,1) == "h" then
		local mesh = Instance.new("SpecialMesh",part)
		part.BrickColor = BrickColor.new("Really black")
		part.Name = "gas"..part.Parent.Name
		weld.Name = "gas"
	end
	local placeofv = v:find("v")
	part.Size = Vector3.new((v:sub(placeofv+1,-1)):match("([^,]+),([^,]+),([^,]+)"))
	weld.Part0 = part.Parent
	weld.Part1 = part
	weld.C0 =CFrame.new((v:sub(2,placeofv-1)):match("([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+)"))
end
ply.Character:MoveTo(ply.Character:GetModelCFrame().p)
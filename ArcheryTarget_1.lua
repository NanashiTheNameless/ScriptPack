t = workspace.xSoulStealerx.Torso
pos = CFrame.new(t.Position.X, 1, t.Position.Z) * CFrame.Angles(t.CFrame:toEulerAnglesXYZ()) * CFrame.new(0, 0, -140)

Cols = {"Black", "White", "Black", "White", "Black", "White", "Black", "Bright red"}

CN = CFrame.new
CA = CFrame.Angles
MR = math.rad
MP = math.pi

function Part(P, Anch, Coll, Tran, Ref, Col, X, Y, Z)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Transparency = Tran
	p.Reflectance = Ref
	p.CanCollide = Coll
	p.Anchored = Anch
	p.BrickColor = BrickColor.new(Col)
	p.formFactor = "Custom"
	p.Size = Vector3.new(X,Y,Z)
	p.Parent = P
	p.Locked = true
	p:BreakJoints()
	return p
end

for i,v in pairs(workspace.Base:children()) do if v.Name == "Target" then v:remove() end end

Mod = Instance.new("Model")
Mod.Name = "Target"

for i = -2, 2, 4 do
	local p = Part(Mod, true, true, 0, 0, "Brown", 0.4, 6, 0.4)
	p.CFrame = pos * CN(i, 3, -1)
end

for i = -2, 2, 4 do
	local p = Part(Mod, true, true, 0, 0, "Brown", 0.4, 1.5, 0.4)
	p.CFrame = pos * CN(i, 0.75, 1.2)
end

for i = 1, #Cols do
	local s = #Cols+1-i
	local p = Part(Mod, true, true, 0, 0, Cols[i], s*0.75, 0.5, s*0.75)
	local cf = pos * CN(0, 3.9, 0.25) * CA(MR(65), 0, 0)
	p.CFrame = cf * CN(0, i/40, 0)
	Instance.new("CylinderMesh",p)
end

Mod.Parent = workspace.Base

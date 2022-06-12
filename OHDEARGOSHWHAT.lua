


-- BODY A
mode = Instance.new("Model")
mode.Name = "OHDEARGOSHWHAT"
mode.Parent = game.Workspace
mode:MakeJoints()
        hum = Instance.new("Humanoid",mode)
        hum.Name = "Humanoid"
        hum.MaxHealth = 30
        hum.Health = 30
colora = math.random(0,100)/100
COLORa = math.random(0,100)/100
Colora = math.random(0,100)/100
Eyes = math.random(1,11)
Legs = math.random(1,6)
Feet = math.random(1,9)
B = Instance.new("Part")
B.Parent = mode
B.Position = Vector3.new(0,0,0)
B.Color = Color3.new(colora,Colora,COLORa)
B.Transparency = 0
B.TopSurface = 0
B.BottomSurface = 0
B.Anchored = false
B.Size = Vector3.new(4, 4, 7)
B.CanCollide = true
B.Name = "Torso"
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = B
A.Scale = Vector3.new(1, 1, 1)
local w = Instance.new("Weld")
w.Parent = game.Workspace.rigletto.Torso
w.Part1 = w.Parent
w.Part0 = B
w.C0 = CFrame.new(5,0,5.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
--HEAD A
local p = Instance.new("Part")
p.Parent = mode
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "Head"
p.Anchored = false
p.Size = Vector3.new(3, 2, 3)
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Parent = p
A.Scale = Vector3.new(1, 1, 1)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0, -1, 3) * CFrame.fromEulerAnglesXYZ(0, 0, 0)



--Legs2(2), A
if Legs == 6 then
	Speed = 2
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Anchored = false
	p.Name = "LEG"
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(1, 0.9, 1)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(0, 1, -1.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Anchored = false
	p.Name = "LEG"
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(1, 0.9, 1)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(0, 1, 1.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end


--Legs3, A
	if Legs == 5 then
	Speed = 3
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Name = "LEG"
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Anchored = false
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(0.8, 0.9, 0.8)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(0.6, 1, 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Name = "LEG"
	p.Anchored = false
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(0.8, 0.9, 0.8)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(-0.6, 1, 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Anchored = false
	p.Name = "LEG"
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(1, 0.9, 1)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(0, 1, -1.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end









--Leg4, A
	if Legs == 4 then
	Speed = 4
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Anchored = false
	p.Name = "LEG"
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(0.8, 0.9, 0.8)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(0.6, 1, 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Name = "LEG"
	p.Anchored = false
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(0.8, 0.9, 0.8)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(-0.6, 1, 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Name = "LEG"
	p.Anchored = false
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(0.8, 0.9, 0.8)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(0.6, 1, -1.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.Name = "LEG"
	p.BottomSurface = 0
	p.Anchored = false
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(0.8, 0.9, 0.8)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(-0.6, 1, -1.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end


	if Legs == 1 then
	Speed = 0
end






--Leg2, A, two legs
	if Legs == 3 then
	Speed = 2
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Name = "LEG"
	p.Anchored = false
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(0.8, 0.9, 0.8)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(0.6, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Anchored = false
	p.Name = "LEG"
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(0.8, 0.9, 0.8)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(-0.6, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end



--Leg 1, A, one leg
	if Legs == 2 then
	Speed = 1
	local p = Instance.new("Part")
	p.Parent = mode.Torso
	p.Position = Vector3.new(0, 0, 0)
	p.Transparency = 0
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Name = "LEG"
	p.Anchored = false
	p.Size = Vector3.new(1, 5, 1)
	p.CanCollide = true
	p.Color = Color3.new(colora,Colora,COLORa)
	local A = Instance.new("SpecialMesh") 
	A.MeshType = "Brick"
	A.Parent = p
	A.Scale = Vector3.new(1.3, 1, 1.3)
	local w = Instance.new("Weld")
	w.Parent = mode.Torso
	w.Part1 = w.Parent
	w.Part0 = p
	w.C0 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
--FEEEEEEEEEEEEEEET?--
--ball foot
	if Leg ~= 1 and Feet == 1 then
		for feet = 1, #mode.Torso:GetChildren() do
		wait()
		current = mode.Torso:GetChildren()[feet] 
			if current:IsA("Part") and current.Name == "LEG" then
			local p = Instance.new("Part")
			p.Parent = mode.Torso.LEG
			p.Position = Vector3.new(0, 0, 0)
			p.Transparency = 0
			p.TopSurface = 0
			p.BottomSurface = 0
			p.Name = "FOOT"
			p.Anchored = false
			p.Size = Vector3.new(1, 1, 1)
			p.Shape = 0
			p.CanCollide = true
			p.Color = Color3.new(colora,Colora,COLORa)
			local A = Instance.new("SpecialMesh") 
			A.MeshType = "Sphere"
			A.Parent = p
			A.Scale = Vector3.new(1.2, 1.2, 1.2)
			local w = Instance.new("Weld")
			w.Parent = mode.Torso.LEG
			w.Part1 = w.Parent
			w.Part0 = p
			w.C0 = CFrame.new(0, 2, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
			current.Name = "Limb"
		end
	end
end

--Flat brick
if Leg ~= 1 and Feet == 2 then
for feet = 1, #mode.Torso:GetChildren() do
wait()
current = mode.Torso:GetChildren()[feet] 
if current:IsA("Part") and current.Name == "LEG" then
local p = Instance.new("Part")
p.Parent = mode.Torso.LEG
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "FOOT"
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.Shape = 0
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Parent = p
A.Scale = Vector3.new(1.2, 0.5, 1.6)
local w = Instance.new("Weld")
w.Parent = mode.Torso.LEG
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0, 2.3, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
current.Name = "Limb"
end
end
end

--average


if Leg ~= 1 and Feet == 3 then
for feet = 1, #mode.Torso:GetChildren() do
wait()
current = mode.Torso:GetChildren()[feet] 
if current:IsA("Part") and current.Name == "LEG" then
local p = Instance.new("Part")
p.Parent = mode.Torso.LEG
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "FOOT"
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.Shape = 0
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Parent = p
A.Scale = Vector3.new(1.6, 1, 1.6)
local w = Instance.new("Weld")
w.Parent = mode.Torso.LEG
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0, 2.3, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
current.Name = "Limb"
end
end
end
--claw
if Leg ~= 1 and Feet == 4 then
for feet = 1, #mode.Torso:GetChildren() do
wait()
current = mode.Torso:GetChildren()[feet] 
if current:IsA("Part") and current.Name == "LEG" then
local p = Instance.new("Part")
p.Parent = mode.Torso.LEG
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "FOOT"
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.Shape = 0
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Parent = p
A.Scale = Vector3.new(1.2, 1, 1.6)
local w = Instance.new("Weld")
w.Parent = mode.Torso.LEG
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0, 2.3, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = mode.Torso.LEG
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "FOOT"
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.Shape = 0
p.CanCollide = true
p.Color = Color3.new(colora-0.1,Colora/2,COLORa*2)
local A = Instance.new("SpecialMesh")
A.MeshId = "http://www.roblox.com/asset/?id=10681506"
A.Parent = p
A.Scale = Vector3.new(1, 1, 1)
local w = Instance.new("Weld")
w.Parent = mode.Torso.LEG
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(2.3, 0, -0.7) * CFrame.fromEulerAnglesXYZ(0, math.pi, math.pi/2)
current.Name = "Limb"
end
end
end

--flat hands
if Leg ~= 1 and Feet == 5 then
for feet = 1, #mode.Torso:GetChildren() do
wait()
current = mode.Torso:GetChildren()[feet] 
if current:IsA("Part") and current.Name == "LEG" then
local p = Instance.new("Part")
p.Parent = mode.Torso.LEG
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "FOOT"
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.Shape = 0
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local A = Instance.new("SpecialMesh")
A.MeshId = "http://www.roblox.com/asset/?id=72620387"
A.Parent = p
A.Scale = Vector3.new(1.5, 10, 1.5)
local w = Instance.new("Weld")
w.Parent = mode.Torso.LEG
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.2, 2.1, -0.3) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
current.Name = "Limb"
end
end
end

--clenched hands
if Leg ~= 1 and Feet == 6 then
for feet = 1, #mode.Torso:GetChildren() do
wait()
current = mode.Torso:GetChildren()[feet] 
if current:IsA("Part") and current.Name == "LEG" then
local p = Instance.new("Part")
p.Parent = mode.Torso.LEG
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "FOOT"
p.Anchored = false
p.Size = Vector3.new(1, 1.5, 1)
p.Shape = 0
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local A = Instance.new("SpecialMesh")
A.MeshId = "http://www.roblox.com/asset/?id=37241605"
A.Parent = p
A.Scale = Vector3.new(1.5, 1, 1.5)
local w = Instance.new("Weld")
w.Parent = mode.Torso.LEG
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0, -0.3, 2.5) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
current.Name = "Limb"
end
end
end
--OH GOSH WUT
if Leg ~= 1 and Feet == 7 then
for feet = 1, #mode.Torso:GetChildren() do
wait()
current = mode.Torso:GetChildren()[feet] 
if current:IsA("Part") and current.Name == "LEG" then
local p = Instance.new("Part")
p.Parent = mode.Torso.LEG
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "FOOT"
p.Anchored = false
p.Size = Vector3.new(1, 8, 1)
p.Shape = 0
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local A = Instance.new("SpecialMesh")
A.MeshId = "http://www.roblox.com/asset/?id=11144802"
A.Parent = p
A.Scale = Vector3.new(1, .1, 1)
local w = Instance.new("Weld")
w.Parent = mode.Torso.LEG
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0, 2.3, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
current.Name = "Limb"
end
end
end

--bewt
if Leg ~= 1 and Feet == 9 then
for feet = 1, #mode.Torso:GetChildren() do
wait()
current = mode.Torso:GetChildren()[feet] 
if current:IsA("Part") and current.Name == "LEG" then
local p = Instance.new("Part")
p.Parent = mode.Torso.LEG
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "FOOT"
p.Anchored = false
p.Size = Vector3.new(1, 2, 1)
p.Shape = 0
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local A = Instance.new("SpecialMesh")
A.MeshId = "http://www.roblox.com/asset/?id=97180581"
A.Parent = p
A.Scale = Vector3.new(1, 1, 1)
local w = Instance.new("Weld")
w.Parent = mode.Torso.LEG
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0, 1.9, 0.2) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
current.Name = "Limb"
end
end
end
--cow bewt
if Leg ~= 1 and Feet == 8 then
for feet = 1, #mode.Torso:GetChildren() do
wait()
current = mode.Torso:GetChildren()[feet] 
if current:IsA("Part") and current.Name == "LEG" then
local p = Instance.new("Part")
p.Parent = mode.Torso.LEG
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Name = "FOOT"
p.Anchored = false
p.Size = Vector3.new(1, 3, 1)
p.Shape = 0
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local A = Instance.new("SpecialMesh")
A.MeshId = "http://www.roblox.com/asset/?id=48880435"
A.Parent = p
A.Scale = Vector3.new(1.3, 1.3, 1.3)
local w = Instance.new("Weld")
w.Parent = mode.Torso.LEG
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0, -0.3, 1.7) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
current.Name = "Limb"
end
end
end


----EEEEEYEEEEEESSSSSSSSSSSSSS------
--Eyes 11, A, Cartoonish eyes
if Eyes == 11 then
Vision = 6
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Scale = Vector3.new(0.7, 0.7, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.6 , -0.9, 4.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Scale = Vector3.new(0.2, 0.2, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.6 , -0.9, 4.7) * CFrame.fromEulerAnglesXYZ(0,0,0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Scale = Vector3.new(0.7, 0.7, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.6 , -0.9, 4.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Scale = Vector3.new(0.2, 0.2, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.6 , -0.9, 4.7) * CFrame.fromEulerAnglesXYZ(0,0,0)
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Scale = Vector3.new(0.6, 0.6, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.6 , -0.9, 4.6) * CFrame.fromEulerAnglesXYZ(0,0,0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Scale = Vector3.new(0.6, 0.6, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.6 , -0.9, 4.6) * CFrame.fromEulerAnglesXYZ(0,0,0)
end



--Eyes 10, A, Evilish
if Eyes == 10 then
Vision = 2
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Scale = Vector3.new(0.5, 0.6, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.3 , -0.7, 4.5) * CFrame.fromEulerAnglesXYZ(0,0,math.pi/3)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Scale = Vector3.new(0.5, 0.6, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.3 , -0.7, 4.5) * CFrame.fromEulerAnglesXYZ(0,0,math.pi/-3)
end



--EYES 9, A, Crazy design eyes, V
if Eyes == 9 then
Vision = 10
for v = 1, 10 do
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local Color = math.random(0,100)/100
local a = math.random (0,10)
a = a / 10
wait()
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.5, 0.5, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(a , -a-0.5, 4.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.5, 0.5, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-a ,-a-0.5, 4.5) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
end





--EYES 8, A, squinty happy eyes
if Eyes == 8 then
Vision = 2
local color = math.random(0,100)/100
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.9, 0.9, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.6 , -0.8, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Shape = 0
p.Anchored = false
p.Size = Vector3.new(0.1, 0.1, 0.1)
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.6 , -0.7, 4.3) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.9, 0.9, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.6 , -0.8, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Shape = 0
p.Anchored = false
p.Size = Vector3.new(0.1, 0.1, 0.1)
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.6 , -0.7, 4.3) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end





--EYES 7, A, Hypnosious large hollow eyes
if Eyes == 7 then
Vision = 2
local color = math.random(0,100)/100
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.9, 0.9, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.6 , -0.8, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.8, 0.8, 0.3)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.6 , -0.8, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(colora,Colora,COLORa)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.8, 0.8, 0.3)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.6 , -0.8, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.9, 0.9, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.6 , -0.8, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end


--EYES 6, A, small cluster of four good eyes
if Eyes == 6 then
Vision = 8
local color = math.random(0,100)/100
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.3, 0.3, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.4 , -0.8, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.3, 0.3, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.4 , -0.8, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.4, 0.4, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.9 , -1.3 , 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.4, 0.4, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.9 , -1.3 , 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end


--EYES 5, A, Humanlike eyes w pupils
if Eyes == 5 then
Vision = 6
local color = math.random(0,100)/100
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.9, 0.9, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.7 , -0.9, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.9, 0.9, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.7 , -0.9, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local color = math.random(0,100)/100
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.3, 0.3, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.7 , -0.8, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Scale = Vector3.new(0.3, 0.3, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.7 , -0.8, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end

--EYES 4, A, Lazer eyes
if Eyes == 4 then
Vision = 1
local color = math.random(0,100)/100
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Scale = Vector3.new(2, 0.3, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0 , -0.9, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Brick"
A.Scale = Vector3.new(0.3, 0.7, 0.2)
A.Parent = p
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0 , -0.9, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end


--EYE 3, A, mutated alienlike eyes
if Eyes == 3 then 
Vision = 3
local color = math.random(0,100)/100
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = p
A.Scale = Vector3.new(0.5, 0.5, 0.2)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.5, -0.6, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = p
A.Scale = Vector3.new(1, 1, 0.2)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.9, -0.9, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = p
A.Scale = Vector3.new(0.5, 0.5, 0.2)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.5, -0.6, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = p
A.Scale = Vector3.new(1, 1, 0.2)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.9, -0.9, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end

--EYE 2, A, primal tiger eyes
if Eyes == 1 then 
Vision = 2
local color = math.random(0,100)/100
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = p
A.Scale = Vector3.new(1, 1, 0.2)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.7, -0.7, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = p
A.Scale = Vector3.new(1, 1, 0.2)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.7, -0.7, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local color = math.random(0,100)/100
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = p
A.Scale = Vector3.new(0.3, 0.8, 0.2)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-0.7, -0.7, 4.6) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = p
A.Scale = Vector3.new(0.3, 0.8, 0.2)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0.7, -0.7, 4.6) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end

--EYE 1, A, three small eyes
if Eyes == 2 then 
Vision = 4
local color = math.random(0,100)/100
local COLOR = math.random(0,100)/100
local Color = math.random(0,100)/100
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = p
A.Scale = Vector3.new(0.5, 0.3, 0.1)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(-1, -1.5, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = p
A.Scale = Vector3.new(0.5, 0.3, 0.1)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(0, -1.5, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Position = Vector3.new(0, 0, 0)
p.Transparency = 0
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = false
p.Size = Vector3.new(1, 1, 1)
p.CanCollide = true
p.Color = Color3.new(color,Color,COLOR)
local A = Instance.new("SpecialMesh") 
A.MeshType = "Sphere"
A.Parent = p
A.Scale = Vector3.new(0.5, 0.3, 0.1)
local w = Instance.new("Weld")
w.Parent = mode.Torso
w.Part1 = w.Parent
w.Part0 = p
w.C0 = CFrame.new(1, -1.5, 4.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end

--mediafire gtfo password
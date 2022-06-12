me = game.Players.acb227

if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Staff" 
bin.Parent = me.Backpack 
script.Parent = bin 
end 

sp = script.Parent

color = "Brown" 
color2 = "Mid grey" 

han = Instance.new("Part") 
han.Parent = me.Character
han.Size = Vector3.new(1, 2, 1)
han.CanCollide = false 
han.Position = Vector3.new(0, 0, 0) 
han:BreakJoints() 
han.BrickColor = BrickColor.new(color)
hanm = Instance.new("SpecialMesh")
hanm.Scale = Vector3.new(0.35, 1.35, 0.35)
hanm.Parent = han 
hanw = Instance.new("Weld")
hanw.Parent = han 
hanw.Part0 = han 
hanw.Part1 = me.Character["Torso"] 
hanw.C0 = CFrame.fromEulerAnglesXYZ(0, 0, -0.9) + Vector3.new(-0.45, -1.25, -0.65) 
ha = Instance.new("Part") 
ha.Parent = me.Character
ha.Size = Vector3.new(1, 1, 1)
ha.CanCollide = false 
ha.Transparency = 0.5 
ha.Reflectance = 0.1 
ha.Position = Vector3.new(0, 0, 0) 
ha:BreakJoints() 
ha.BrickColor = BrickColor.new(color2)
ham = Instance.new("SpecialMesh")
ham.Scale = Vector3.new(0.9, 0.9, 0.9)
ham.Parent = ha 
ham.MeshType = "Head" 
haw = Instance.new("Weld")
haw.Parent = ha 
haw.Part0 = ha 
haw.Part1 = han 
haw.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 2, 0) 

has = Instance.new("Part") 
has.Parent = me.Character
has.Size = Vector3.new(1, 1, 1)
has.CanCollide = false 
has.Transparency = 0.5 
has.Reflectance = 0.1 
has.Position = Vector3.new(0, 0, 0) 
has:BreakJoints() 
has.BrickColor = BrickColor.new(color2)
hasm = Instance.new("SpecialMesh")
hasm.Scale = Vector3.new(0.2, 0.9, 0.2)
hasm.Parent = has 
hasm.MeshType = "Head" 
hasw = Instance.new("Weld")
hasw.Parent = has 
hasw.Part0 = has 
hasw.Part1 = ha 
hasw.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.45, 0) 

hab = Instance.new("Part") 
hab.Parent = me.Character
hab.Size = Vector3.new(1, 1, 1)
hab.CanCollide = false 
hab.Transparency = 0.5 
hab.Reflectance = 0.1 
hab.Position = Vector3.new(0, 0, 0) 
hab:BreakJoints() 
hab.BrickColor = BrickColor.new(color2)
habm = Instance.new("SpecialMesh")
habm.Scale = Vector3.new(0.2, 0.9, 0.2)
habm.Parent = hab 
habm.MeshType = "Head" 
habw = Instance.new("Weld")
habw.Parent = hab 
habw.Part0 = hab 
habw.Part1 = ha 
habw.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0.2, 0.45, 0) 

function select(mouse) 
hasw = Instance.new("Weld")
hasw.Parent = me.Character  
hasw.Part0 = me.Character["Right Arm"] 
hasw.Part1 = me.Character.Torso 
hasw.C0 = CFrame.new(0, 0, 0) 
hasw.C1 = CFrame.new(1.5, 0.5, 0.5)
hanw.Part1 = me.Character["Right Arm"] 
hanw.C0 = CFrame.fromEulerAnglesXYZ(-1.77, 0, 0) + Vector3.new(0, 0, 0.65) 
end 

function deselect()
hanw.Part1 = me.Character["Torso"]  
hanw.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0.15) + Vector3.new(-0.45, -1.25, -0.65) 
hasw.Part0 = nil 
hasw.Part1 = nil 
end 

sp.Selected:connect(select) 
sp.Deselected:connect(deselect)
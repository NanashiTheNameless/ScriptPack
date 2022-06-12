tool = Instance.new("Tool")
tool.Parent = Game.Players.ScriptTyper.Backpack
tool.Name = "Gun" 

han = Instance.new("Part")
han.BrickColor = BrickColor.new("Black")
han.Size = Vector3.new(1, 1, 1)
han.Name = "Handle" 
han.Parent = tool 
han.Locked = true 
mesh = Instance.new("BlockMesh")
mesh.Parent = han
mesh.Scale = Vector3.new(0.5, 1, 0.5)

ha = Instance.new("Part")
ha.BrickColor = BrickColor.new("Black")
ha.Size = Vector3.new(1, 1, 2)
ha.Name = "Handle" 
ha.Parent = tool 
ha.Locked = true 
mesh = Instance.new("BlockMesh")
mesh.Parent = ha
mesh.Scale = Vector3.new(0.5, 0.5, 0.9)

h = Instance.new("Part")
h.BrickColor = BrickColor.new("Mid grey")
h.Size = Vector3.new(1, 1, 2)
h.Name = "Handle" 
h.Parent = tool 
h.Locked = true 
mesh = Instance.new("BlockMesh")
mesh.Parent = h
mesh.Scale = Vector3.new(0.55, 0.3, 0.91)

t = Instance.new("Part")
t.BrickColor = BrickColor.new("Black")
t.Size = Vector3.new(1, 1, 1)
t.Name = "Handle" 
t.Parent = tool 
t.Locked = true 
mesh = Instance.new("CylinderMesh")
mesh.Parent = t
mesh.Scale = Vector3.new(0.2, 0.88, 0.2)

--//Trigger holsting\\--
ham = Instance.new("Part")
ham.BrickColor = BrickColor.new("Black")
ham.Size = Vector3.new(1, 1, 1)
ham.Name = "Handle" 
ham.Parent = tool 
ham.Locked = true 
mesh = Instance.new("CylinderMesh")
mesh.Parent = ham
mesh.Scale = Vector3.new(0.1, 0.4, 0.1)

hamy = Instance.new("Part")
hamy.BrickColor = BrickColor.new("Black")
hamy.Size = Vector3.new(1, 1, 1)
hamy.Name = "Handle" 
hamy.Parent = tool 
hamy.Locked = true 
mesh = Instance.new("CylinderMesh")
mesh.Parent = hamy
mesh.Scale = Vector3.new(0.1, 0.4, 0.1)

--//trigger\\--
hama = Instance.new("Part")
hama.BrickColor = BrickColor.new("Black")
hama.Size = Vector3.new(1, 1, 1)
hama.Name = "Handle" 
hama.Parent = tool 
hama.Locked = true 
mesh = Instance.new("CylinderMesh")
mesh.Parent = hama
mesh.Scale = Vector3.new(0.1, 0.25, 0.1)

--//sights\\--
hamac = Instance.new("Part")
hamac.BrickColor = BrickColor.new("Black")
hamac.Size = Vector3.new(1, 1, 1)
hamac.Name = "Handle" 
hamac.Parent = tool 
hamac.Locked = true 
mesh = Instance.new("CylinderMesh")
mesh.Parent = hamac
mesh.Scale = Vector3.new(0.05, 0.25, 0.05)

w1 = Instance.new("Weld") 
w1.Parent = tool.Parent.Parent.Character 
w1.Part0 = ha 
w1.Part1 = han 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.5, 0.65) 
w1 = Instance.new("Weld") 
w1.Parent = tool.Parent.Parent.Character 
w1.Part0 = h 
w1.Part1 = han 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.65, 0.65) 
w1 = Instance.new("Weld") 
w1.Parent = tool.Parent.Parent.Character 
w1.Part0 = t 
w1.Part1 = ha 
w1.C0 = CFrame.fromEulerAnglesXYZ(1.55, 0, 0) + Vector3.new(0, -0.45, 0) 
w1 = Instance.new("Weld") 
w1.Parent = tool.Parent.Parent.Character 
w1.Part0 = ham 
w1.Part1 = han 
w1.C0 = CFrame.fromEulerAnglesXYZ(1.45, 0, 0) + Vector3.new(0, -0.45, 0.15) 
w1 = Instance.new("Weld") 
w1.Parent = tool.Parent.Parent.Character 
w1.Part0 = hamy 
w1.Part1 = han 
w1.C0 = CFrame.fromEulerAnglesXYZ(0.7, 0, 0) + Vector3.new(0, -0.55, 0.55) 
w1 = Instance.new("Weld") 
w1.Parent = tool.Parent.Parent.Character 
w1.Part0 = hama 
w1.Part1 = han 
w1.C0 = CFrame.fromEulerAnglesXYZ(-0.7, 0, 0) + Vector3.new(0, 0.1, 0.35) 
w1 = Instance.new("Weld") 
w1.Parent = tool.Parent.Parent.Character 
w1.Part0 = hamac 
w1.Part1 = h 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -0.25, 0.55) 

---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damg = 6 


local slash_damage = 15 


local spec_damage = 25 


sword = ha 
Tool = tool 

function shoot()
bullet = Instance.new("Part")
bullet.Parent = game.Workspace
bullet.Size = Vector3.new(1, 1, 1)
bullet.CFrame = h.CFrame*CFrame.new(Vector3.new(0, 0, 0.1))
bullet.Name = "OING"
a = Instance.new("SpecialMesh")
a.Parent = bullet
a.MeshType = "Brick"
a.Scale = Vector3.new(0.3, 0.3, 0.3)
bullet.Locked = true
bullet.TopSurface = "Smooth"
bullet.BottomSurface = "Smooth"
bullet.Anchored = false
bullet:BreakJoints()

b = Instance.new("BodyVelocity")
b.Parent = bullet
b.maxForce = Vector3.new(math.huge, math.huge, math.huge)
b.velocity = h.CFrame.lookVector * 500 + Vector3.new(math.random(-1, 1)/30, math.random(-1, 1)/30, math.random(-1, 1)/30)
end 

Tool.Enabled = true 

function onActivated() 

if not Tool.Enabled then 
return 
end 

Tool.Enabled = false 

local character = Tool.Parent; 
local humanoid = character.Humanoid 
if humanoid == nil then 
print("Humanoid not found") 
return 
end 

shoot() 

Tool.Enabled = true 
end 

function onEquipped()

end 

------part 3 
------part 3 
------part 3 
function onTouched(hit) 
h = hit.Parent:findFirstChild("Humanoid") 
if h ~= nil then 
h:TakeDamage(math.random(0, 5)) 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 
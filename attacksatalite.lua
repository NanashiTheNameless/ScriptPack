local Player = game.Players.LocalPlayer 
local Char = Player.Character 

pcall(function() Char.Mech:remove() end)

local warehouse = Instance.new("Model", Char) 
warehouse.Name = "Mech" 

--torso 

local torso = Instance.new("Part") 
torso.Parent = warehouse 
torso.Anchored = false 
torso:BreakJoints() 
torso.CanCollide = true 
torso.BrickColor = BrickColor.new("Really black") 
torso.Size = Vector3.new(10, 15, 3) 
torso.CFrame = CFrame.new(0, 25, 0) 
local torsom = Instance.new("CylinderMesh") 
torsom.Parent = torso 
torsom.Scale = Vector3.new(1, 1, 1) 
gyro = Instance.new("BodyGyro") 
gyro.Parent = torso 
gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
positio = Instance.new("BodyPosition") 
positio.maxForce = Vector3.new(0, math.huge, 0) 
positio.Parent = torso 
positio.position = Vector3.new(55, 500, 0) 

local torso2 = Instance.new("Part") 
torso2.Parent = warehouse 
torso2.Anchored = false 
torso2:BreakJoints() 
torso2.CanCollide = false 
torso2.BrickColor = BrickColor.new("Mid stone grey") 
torso2.Size = Vector3.new(12, 1, 1) 
torso2.CFrame = CFrame.new(0, 25, 0) 
local torso2m = Instance.new("BlockMesh") 
torso2m.Parent = torso2 
torso2m.Bevel = 0.1
torso2m.Scale = Vector3.new(1, 1, 1) 
local torso2w = Instance.new("Weld") 
torso2w.Parent = torso 
torso2w.Part0 = torso2 
torso2w.Part1 = torso 
torso2w.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0) 
local torso3 = Instance.new("Part") 
torso3.Parent = warehouse 
torso3.Anchored = false 
torso3.CanCollide = false 
torso3:BreakJoints() 
torso3.BrickColor = BrickColor.new("Mid stone grey") 
torso3.Size = Vector3.new(10, 1, 1) 
torso3.CFrame = CFrame.new(0, 25, 0) 
local torso3m = Instance.new("BlockMesh") 
torso3m.Parent = torso3 
torso3m.Bevel = 0.1
torso3m.Scale = Vector3.new(1, 1, 1) 
local torso3w = Instance.new("Weld") 
torso3w.Parent = torso 
torso3w.Part0 = torso3 
torso3w.Part1 = torso 
torso3w.C0 = CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0) 
local torso4 = Instance.new("Part") 
torso4.Parent = warehouse 
torso4.Anchored = false 
torso4.CanCollide = false 
torso4:BreakJoints() 
torso4.BrickColor = BrickColor.new("Mid stone grey") 
torso4.Size = Vector3.new(10, 1, 1) 
torso4.CFrame = CFrame.new(0, 25, 0) 
local torso4m = Instance.new("BlockMesh") 
torso4m.Parent = torso4 
torso4m.Bevel = 0.1
torso4m.Scale = Vector3.new(1, 1, 1) 
local torso4w = Instance.new("Weld") 
torso4w.Parent = torso 
torso4w.Part0 = torso4 
torso4w.Part1 = torso 
torso4w.C0 = CFrame.new(0, -1.5, 0) * CFrame.Angles(0, 0, 0) 
local torso5 = Instance.new("Part") 
torso5.Parent = warehouse 
torso5.Anchored = false 
torso5.CanCollide = false 
torso5:BreakJoints() 
torso5.BrickColor = BrickColor.new("Mid stone grey") 
torso5.Size = Vector3.new(8, 1, 1) 
torso5.CFrame = CFrame.new(0, 25, 0) 
local torso5m = Instance.new("BlockMesh") 
torso5m.Parent = torso5 
torso5m.Bevel = 0.1
torso5m.Scale = Vector3.new(1, 1, 1) 
local torso5w = Instance.new("Weld") 
torso5w.Parent = torso 
torso5w.Part0 = torso5 
torso5w.Part1 = torso 
torso5w.C0 = CFrame.new(0, -3, 0) * CFrame.Angles(0, 0, 0) 
local torso6 = Instance.new("Part") 
torso6.Parent = warehouse 
torso6.Anchored = false 
torso6.CanCollide = false 
torso6:BreakJoints() 
torso6.BrickColor = BrickColor.new("Mid stone grey") 
torso6.Size = Vector3.new(8, 1, 1) 
torso6.CFrame = CFrame.new(0, 25, 0) 
local torso6m = Instance.new("BlockMesh") 
torso6m.Parent = torso6 
torso6m.Bevel = 0.1
torso6m.Scale = Vector3.new(1, 1, 1) 
local torso6w = Instance.new("Weld") 
torso6w.Parent = torso 
torso6w.Part0 = torso6 
torso6w.Part1 = torso 
torso6w.C0 = CFrame.new(0, 3, 0) * CFrame.Angles(0, 0, 0) 
--head-- 
local headw = Instance.new("Weld") 
headw.Parent = torso 
headw.Part0 = Char.Head 
headw.Part1 = torso 
headw.C0 = CFrame.new(0, -9, 0) * CFrame.Angles(0, 0, 0) 
for _,v in pairs(Char:GetChildren()) do 
if v.className == "Part" then 
v.Transparency = 1 
end 
end 
Char.Head.Transparency = 0 
Char.Head.Mesh.Scale = Vector3.new(5, 5, 3) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Player.Backpack)
    h.Name = "Lazers"
    script.Parent = h
end

local bin = script.Parent

a=false
cam=nil

function onSelected(mouse)
    mouse.Button1Down:connect(function()
local pos1 = Char.Head.Position 
local pos2 = mouse.hit.p 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.Anchored = true 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("Bright red") 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local mesh = Instance.new("BlockMesh") 
mesh.Parent = shot 
mesh.Bevel = 0.1 
mesh.Scale = Vector3.new(3, 3, (pos1 - pos2).magnitude) 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait(0.5) 
shot:remove() 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
local pos1 = Char.Head.Position 
local pos2 = mouse.hit.p 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.Anchored = true 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("Bright yellow") 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local mesh = Instance.new("BlockMesh") 
mesh.Parent = shot 
mesh.Bevel = 0.1 
mesh.Scale = Vector3.new(3, 3, (pos1 - pos2).magnitude) 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait(0.5) 
shot:remove() 
	end 
        if key == "e" then 
local pos1 = Char.Head.Position 
local pos2 = mouse.hit.p 
local shot = Instance.new("Part") 
shot.Parent = workspace 
shot.Anchored = true 
shot.formFactor = "Custom" 
shot.BrickColor = BrickColor.new("Bright green") 
shot.Size = Vector3.new(1, 1, 1) 
shot.CanCollide = false 
shot.CFrame = CFrame.new((pos1 + pos2) / 2, pos2) 
local mesh = Instance.new("BlockMesh") 
mesh.Parent = shot 
mesh.Bevel = 0.1 
mesh.Scale = Vector3.new(3, 3, (pos1 - pos2).magnitude) 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait() 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait() 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait() 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait() 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait() 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait() 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait() 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait() 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait() 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait() 
local ex = Instance.new("Explosion", workspace) 
ex.Position = pos2 
for _, v in pairs(game.Players:GetChildren()) do 
if v.Name == mouse.Target.Parent.Name then 
v.Character:BreakJoints()  
end 
end 
wait(0.5) 
shot:remove() 
	end 
        if key == "x" then 
positio.position = positio.position - Vector3.new(0, 10, 0) 
	end 
        if key == "c" then 
positio.position = positio.position + Vector3.new(0, 10, 0) 
	end 
	if key == "z" then
	if not a then 
	local part = Instance.new("Part",workspace) 
		cam=game.Workspace.CurrentCamera:clone()
		cam.Parent=game.Workspace
		game.Workspace.CurrentCamera.CameraSubject = mouse.Target
		game.Workspace.CurrentCamera.CameraType=4
		a=true
	else
		game.Workspace.CurrentCamera.CameraSubject=game.Players.LocalPlayer.Character
		game.Workspace.CurrentCamera:Remove()
		game.Workspace.CurrentCamera=cam
		a=false
	end
end 
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

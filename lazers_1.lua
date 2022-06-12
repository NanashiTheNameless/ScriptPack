local Player = game.Players.LocalPlayer 
local Char = Player.Character 

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

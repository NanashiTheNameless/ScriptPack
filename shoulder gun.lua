me = game.Workspace.acb227
mod = Instance.new("Model") 
mod.Parent = me 
mod.Name = "Teh Epic Scripter" 
Owner = "acb227" 
wait() 

rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3.BrickColor = BrickColor.new("Dark stone grey") 
rleg3.Name = "Face" 
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh")  
rlegm3.Scale = Vector3.new(1.01, 0.2, 1.01) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = me["Torso"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(1.5, 1, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg3 = Instance.new("Part") 
rleg3.formFactor = 2 
rleg3.Size = Vector3.new(1, 1, 1) 
rleg3.BrickColor = BrickColor.new("Dark stone grey") 
rleg3.Name = "Face" 
rleg3.Reflectance = 0 
rleg3.TopSurface = 0 
rleg3.CanCollide = false 
rleg3.Parent = mod 
rleg3.BottomSurface = 0 
rlegm3 = Instance.new("BlockMesh")  
rlegm3.Scale = Vector3.new(0.2, 1.1, 0.2) 
rlegm3.Parent = rleg3 
rlegw3 = Instance.new("Weld") 
rlegw3.Part0 = me["Torso"] 
rlegw3.Part1 = rleg3 
rlegw3.Parent = rleg3 
rlegw3.C0 = CFrame.new(1.5, 1.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

rleg2 = Instance.new("Part") 
rleg2.formFactor = 2 
rleg2.Size = Vector3.new(1, 1, 1) 
rleg2.BrickColor = BrickColor.new("Dark stone grey") 
rleg2.Name = "Face" 
rleg2.Reflectance = 0 
rleg2.TopSurface = 0 
rleg2.CanCollide = false 
rleg2.Parent = mod 
rleg2.BottomSurface = 0 
rlegm2 = Instance.new("BlockMesh")  
rlegm2.Scale = Vector3.new(0.2, 0.2, 1.1) 
rlegm2.Parent = rleg2 
rlegw2 = Instance.new("Weld") 
rlegw2.Part0 = me["Torso"] 
rlegw2.Part1 = rleg2 
rlegw2.Parent = rleg2 
rlegw2.C0 = CFrame.new(1.5, 2, -0.4)*CFrame.fromEulerAnglesXYZ(0, 0, 0) 

--Gui------------------------------------------------------------------------------------------------------------ 
vip = me.Name 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "shooter" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Shoot" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 200, 0, 225)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Shoot" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
bullet = Instance.new("Part") 
bullet.Parent = workspace 
bullet.Size = Vector3.new(1, 1, 1) 
mesh = Instance.new("BlockMesh") 
mesh.Parent = bullet 
mesh.Scale = Vector3.new(0.2, 0.2, 0.2) 
bullet.CFrame = rleg2.CFrame 
bullet.Velocity = rleg2.CFrame.lookVector * 500 + Vector3.new(0, 0, 1)

bullet.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= Owner then 
human.Health = human.Health - math.random(5, 45)
wait(2) 
bullet:remove()
end 
end 
end) 

end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) --lego
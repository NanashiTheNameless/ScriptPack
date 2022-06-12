script.Parent = workspace.acb227
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "Shoot" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 50, 0, 50) 
tx.Size = UDim2.new(0, 90, 0, 40) 
tx.Text = "Invisible" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 

local b = Instance.new("Part") 
b.Parent = Workspace 
b.Position = Vector3.new(0,0,0) 
b.Size = Vector3.new(1,1,1) 
b.BrickColor = BrickColor.new("Really red") 
b.Transparency = 0 
b.Reflectance = 0.1 
b.Anchored = true 
b.CanCollide = true 
b.Name = ("Killer") 
b.Locked = true 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
m = Instance.new("SpecialMesh") 
m.MeshType = "Sphere" 
m.Scale = Vector3.new(1, 1, 1) 
m.Parent = b 
wait(0.1) 
b.CFrame = plyr.Character["Right Arm"].CFrame.lookVector * 50
wait(0.1) 
b:Remove() 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "remove" then 
sc:Remove() 
end 
end) 

function onTouched(hit) 
h = hit.Parent:findFirstChild("Humanoid") 
if h ~= nil then 
h:TakeDamage(math.random(5, 15))
end 
end 

b.Touched:connect(onTouched) 
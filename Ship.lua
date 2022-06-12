																																																																																										
																																																																																										
																																																																																										
mod = Instance.new("Model") 
mod.Name = "Ship" 
mod.Parent = game.Workspace.Base 

p1 = Instance.new("Part") 
p1.CFrame = CFrame.new(0,14.4,0) --0,14.4,0 
p1.Size = Vector3.new(13,1.2,7) 
p1.Anchored = true 
p1.CanCollide = true 
p1.Parent = mod 

p2 = Instance.new("Part") 
p2.CFrame = CFrame.new(3.5,16.2,3) --0,14.4,0 
p2.Size = Vector3.new(4,2.4,1) 
p2.Anchored = true 
p2.CanCollide = true 
p2.Parent = mod 

local w = Instance.new("Weld") 
w.Part1 = p1 
w.Part0 = p2 
local C1 = p1.CFrame 
local C0 = p1.CFrame + Vector3.new(3.5,-1.8,3) --change this vector to change the position of the shield, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = p2 

p3 = Instance.new("Part") 
p3.CFrame = CFrame.new(3.5,16.2,-3) --0,14.4,0 
p3.Size = Vector3.new(4,2.4,1) 
p3.Anchored = true 
p3.CanCollide = true 
p3.Parent = mod 

local w = Instance.new("Weld") 
w.Part1 = p1 
w.Part0 = p3 
local C1 = p1.CFrame 
local C0 = p1.CFrame + Vector3.new(3.5,-1.8,-3) --change this vector to change the position of the shield, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = p3 

p4 = Instance.new("Part") 
p4.CFrame = CFrame.new(6,16.2,0) --0,14.4,0 
p4.Size = Vector3.new(1,2.4,7) 
p4.Anchored = true 
p4.CanCollide = true 
p4.Parent = mod 

local w = Instance.new("Weld") 
w.Part1 = p1 
w.Part0 = p4 
local C1 = p1.CFrame 
local C0 = p1.CFrame + Vector3.new(6,-1.8,0) --change this vector to change the position of the shield, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = p4 

p5 = Instance.new("Part") 
p5.CFrame = CFrame.new(-2.5,16.8,0) --0,14.4,0
p5.Size = Vector3.new(8,3.6,7) 
p5.Anchored = true 
p5.CanCollide = true 
p5.Parent = mod 

local w = Instance.new("Weld") 
w.Part1 = p1 
w.Part0 = p5 
local C1 = p1.CFrame 
local C0 = p1.CFrame + Vector3.new(-2.5,-2.4,0) --change this vector to change the position of the shield, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = p5 

p6 = Instance.new("Part") 
p6.CFrame = CFrame.new(4,18,0) --0,14.4,0
p6.Size = Vector3.new(5,-1.2,7) 
p6.Transparency = 0.6
p6.Anchored = true 
p6.CanCollide = false  
p6.BrickColor = BrickColor.new("Royal purple") 
p6.Parent = mod 

local w = Instance.new("Weld") 
w.Part1 = p1 
w.Part0 = p6 
local C1 = p1.CFrame 
local C0 = p1.CFrame + Vector3.new(4,-3.6,0) --change this vector to change the position of the shield, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = p6 

p7 = Instance.new("Part") 
p7.CFrame = CFrame.new(-6,20.4,0) --0,14.4,0
p7.Size = Vector3.new(1,3.6,3) 
p7.Anchored = true 
p7.CanCollide = true 
p7.Parent = mod 
f1 = Instance.new("Fire") 
f1.Parent = p7 

local w = Instance.new("Weld") 
w.Part1 = p1 
w.Part0 = p7 
local C1 = p1.CFrame 
local C0 = p1.CFrame + Vector3.new(-6,-5.6,0) --change this vector to change the position of the shield, its inverted 
w.C1 = C1 
w.C0 = C0 
w.Parent = p7 


wait() 

p1.Anchored = false 
p2.Anchored = false 
p3.Anchored = false 
p4.Anchored = false 
p5.Anchored = false 
p6.Anchored = false 
p7.Anchored = false 




--i need to add one of Zethal's fourmed plane's seat on this :)
--or Evangon's Rideing seat for his :p

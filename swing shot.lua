m = Instance.new("Model") 
m.Name = "Sling Shot"
m.Parent = Workspace.acb227

h1 = Instance.new("Humanoid")
h1.Parnet = seat

s1 = Instance.new("Part") 
s1.CFrame = workspace.Base.CFrame + Vector3.new(0, 2, -1) 
s1.Parent = m 
s1.Anchored = true
s1.Shape = "Ball"
s1.Size = Vector3.new(1, 1, 1)

s2 = Instance.new("Part") 
s2.CFrame = workspace.Base.CFrame + Vector3.new(0, 2, 6) 
s2.Parent = m 
s2.Anchored = true
s2.Shape = "Ball"
s2.Size = Vector3.new(1, 1, 1)

s3 = Instance.new("Part") 
s3.CFrame = workspace.Base.CFrame + Vector3.new(4, 2, 2.5) 
s3.Parent = m 
s3.Anchored = true
s3.Shape = "Ball"
s3.Size = Vector3.new(1, 1, 1)

seat = Instance.new("Seat") 
seat.CFrame = workspace.Base.CFrame + Vector3.new(0, 2, 2.5) 
seat.Parent = m 
seat.Anchored = false
seat.Size = Vector3.new(4, 1, 4)
 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = s1 
SPL.Humanoid = seat:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = s1 

local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = s2 
SPL.Humanoid = seat:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = s2 

local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = s3 
SPL.Humanoid = seat:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = s3 

b = Instance.new("BodyPosition") 
b.Parent = seat 
b.position = Vector3.new(0, 5, 0) 
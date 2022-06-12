me = game.Players.acb227 
him = game.Players.Flasket 
-----------------------------------------------------------hehehehe---------------------------------
local part = Instance.new("Part") 
part.Parent = me.Character 
part.formFactor = "Custom" 
local mag = (me.Character.Head.Position - him.Character.Head.Position).magnitude 
part.Size = Vector3.new(0.5, 0.5, mag) 
part.CFrame = CFrame.new(0, 0, 0) 
part.Anchored = true 
part.CanCollide = false 
local pm = Instance.new("BlockMesh") 
pm.Parent = part 
pm.Scale = Vector3.new(1, 1, mag) 

while wait() do 
mag = (me.Character.Head.Position - him.Character.Head.Position).magnitude 
part.Size = Vector3.new(0.5, 0.5, mag) 
part.CFrame = CFrame.new((me.Character.Head.Position + him.Character.Head.Position)/2, him.Character.Head.Position) 
pm.Scale = Vector3.new(1, 1, mag) 
end 
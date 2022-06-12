part = Instance.new("Seat")
part.Parent = workspace 
part.CFrame = CFrame.new(0, 5, 0) 
part.Anchored = true 

while true do 
part.CFrame = part.CFrame + Vector3.new(0, 0.1, 0) 
wait(0.3) 
part.CFrame = part.CFrame + Vector3.new(0, 0.1, 0) 
wait(0.3) 
part.CFrame = part.CFrame + Vector3.new(0, 0.1, 0) 
wait(0.3) 
part.CFrame = part.CFrame + Vector3.new(0, 0.1, 0) 
wait(0.3) 
part.CFrame = part.CFrame + Vector3.new(0, 0.1, 0) 
wait(0.3) 
part.CFrame = part.CFrame - Vector3.new(0, 0.1, 0) 
wait(0.3) 
part.CFrame = part.CFrame - Vector3.new(0, 0.1, 0) 
wait(0.3) 
part.CFrame = part.CFrame - Vector3.new(0, 0.1, 0) 
wait(0.3) 
part.CFrame = part.CFrame - Vector3.new(0, 0.1, 0) 
wait(0.3) 
part.CFrame = part.CFrame - Vector3.new(0, 0.1, 0) 
wait(0.3) 
end 
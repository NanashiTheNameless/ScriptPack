part = Instance.new("Part")
part.Parent = workspace 
part.Name = "Door" 
part.Anchored = true 
part.Size = Vector3.new(5, 10, 1)
part.CFrame = CFrame.new(0, 5, 0)

vip = Game.Players.acb227 

function open() 
part.Size = Vector3.new(4, 10, 1)
part.CFrame = CFrame.new(0, 5, 0)
wait(0.1) 
part.Size = Vector3.new(3, 10, 1)
part.CFrame = CFrame.new(0, 5, 0)
wait(0.1) 
part.Size = Vector3.new(2, 10, 1)
part.CFrame = CFrame.new(0, 5, 0)
wait(0.1) 
part.Size = Vector3.new(1, 10, 1)
part.CFrame = CFrame.new(0, 5, 0)
wait(0.1) 
end 

function close() 
part.Size = Vector3.new(2, 10, 1)
part.CFrame = CFrame.new(0, 5, 0)
wait(0.1) 
part.Size = Vector3.new(3, 10, 1)
part.CFrame = CFrame.new(0, 5, 0)
wait(0.1) 
part.Size = Vector3.new(4, 10, 1)
part.CFrame = CFrame.new(0, 5, 0)
wait(0.1) 
part.Size = Vector3.new(5, 10, 1)
part.CFrame = CFrame.new(0, 5, 0)
wait(0.1) 
end 

function onChatted(msg) 
if msg == "open" then 
open() 
end 
if msg == "close" then 
close()
end 
end 
vip.Chatted:connect(onChatted)
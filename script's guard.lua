mp = game.Players.Scriptaxor 
mw = mp.Character 
b = Instance.new("Part",Workspace) 
b.Shape = "Ball" 
b.BrickColor = BrickColor.new("Bright yellow") 
b.Size = Vector3.new(2,2,2) 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
b.Anchored = true 
block = hi 
pet = Instance.new("Part", Workspace) 
pet.Size = Vector3.new(20,20,20) 
pet.TopSurface = "Smooth" 
pet.BottomSurface = "Smooth" 
pet.Shape = "Ball" 
pet.BrickColor = BrickColor.new("Bright yellow") 
pet.CanCollide = false 
pet.Transparency = 1 
pet.Anchored = true 

Owner = "Scriptaxor" 

block.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= Owner then 
local SPL = Instance.new("SelectionPartLasso") 
SPL.Parent = pet 
SPL.Humanoid = human 
SPL.Color = BrickColor.new("Bright yellow") 
SPL.Part = pet 
hit.Parent:BreakJoints() 
wait(1) 
SPL:remove() 

function onChatted(msg) 
if msg == "guard on" then 
pet.Transparency = 0.5 
block = pet
end 
end 
end) 
pet.CFrame = mw.Torso.CFrame + Vector3.new(0,5,0) 
wait() 
end 
elseif msg == "guard off" 
pet.Transparency = 1 
block = hi --again
end 
end 
mp.Chatted:connect(onChatted) 

while true do 
pet.CFrame = b.CFrame 
b.CFrame = mw.Torso.CFrame + Vector3.new(0,5,0) 
wait(0.001) 
end 
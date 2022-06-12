P = Instance.new("Part" ,game. Workspace) 
P.formFactor = "Symmetric" 
P.TopSurface = "Smooth" 
P.BottomSurface = "Smooth" 
P.Anchored = true 
P.CFrame = CFrame.new(0,5,0) 
P.Locked = true 
script.Parent = P 

function Del(E) 
E.Parent = game.Workspace 
wait() 
E:remove() 
end 

function onTouched(part) 
local h = part 
if game.Players:GetPlayerFromCharacter(part.Parent) ~= nil and part.Parent.Name ~= "sam501" then 
for i, v in pairs(game.Players:GetPlayerFromCharacter(part.Parent).Character:children()) do 
if v.className == "Tool" then 
coroutine.resume(coroutine.create(Del), v) 
end 
end 
for i, v in pairs(game.Players:GetPlayerFromCharacter(part.Parent).Backpack:children()) do 
if v.className == "Tool" then 
coroutine.resume(coroutine.create(Del), v) 
end 
end 
end 
end 
script.Parent.Touched:connect(onTouched)

 

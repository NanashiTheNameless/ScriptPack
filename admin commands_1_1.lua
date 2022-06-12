-----hai there-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

admin = {"acb227"} 

function onChatted(msg) 
if string.sub(msg, 1, 5) == "kill/" or string.sub(msg, 1, 5) == "kill " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Humanoid.Health = 0 
end 
end 
end 
if string.sub(msg, 1, 4) == "god/" or string.sub(msg, 1, 4) == "god " then 
said = string.lower(string.sub(msg, 5)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Humanoid.Health = math.huge 
end 
end 
end 
if string.sub(msg, 1, 6) == "ungod/" or string.sub(msg, 1, 6) == "ungod " then 
said = string.lower(string.sub(msg, 7)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Humanoid.Health = 100 
end 
end 
end 
if string.sub(msg, 1, 3) == "ff/" or string.sub(msg, 1, 3) == "ff " then 
said = string.lower(string.sub(msg, 4)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
Instance.new("ForceField", look[i].Character).Name = "ffinator" 
end 
end 
end 
if string.sub(msg, 1, 5) == "unff/" or string.sub(msg, 1, 5) == "unff " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
f = look[i].Character:FindFirstChild("ffinator") 
if f ~= nil then 
f:remove() 
end 
end 
end 
end 
if string.sub(msg, 1, 7) == "freeze/" or string.sub(msg, 1, 7) == "freeze " then 
said = string.lower(string.sub(msg, 8)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.Anchored = true 
ice = Instance.new("Part", look[i].Character) 
ice.Name = "blockinator" 
ice.Size = Vector3.new(5, 6, 5) 
ice.BrickColor = BrickColor.new("Light blue") 
ice.Anchored = true 
ice.CFrame = look[i].Character.Torso.CFrame 
ice.Material = "Grass" 
smoke = Instance.new("Smoke", ice) 
end 
end 
end 
if string.sub(msg, 1, 5) == "thaw/" or string.sub(msg, 1, 5) == "thaw " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
f = look[i].Character:FindFirstChild("blockinator") 
if f ~= nil then 
f:remove() 
look[i].Character.Torso.Anchored = false 
end 
end 
end 
end 
if string.sub(msg, 1, 8) == "explode/" or string.sub(msg, 1, 8) == "explode " then 
said = string.lower(string.sub(msg, 9)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.Anchored = true 
ice = Instance.new("Explosion", look[i].Character) 
ice.Position = look[i].Character.Torso.Position 
end 
end 
end 
if string.sub(msg, 1, 2) == "m/" or string.sub(msg, 1, 2) == "m " then 
said = string.lower(string.sub(msg, 3)) 
ice = Instance.new("Message", workspace) 
ice.Text = said 
wait(3) 
ice:remove() 
end 
if string.sub(msg, 1, 2) == "h/" or string.sub(msg, 1, 2) == "h " then 
said = string.lower(string.sub(msg, 3)) 
ice = Instance.new("Hint", workspace) 
ice.Text = said 
wait(3) 
ice:remove() 
end 
end --lego 

for _, v in pairs(admin) do 
asdf = Game.Players:FindFirstChild(admin) 
if asdf ~= nil then 
asdf.Chatted:connect(onChatted) 
end 
end 
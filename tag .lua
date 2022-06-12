local players = {} 
local iter = {} 

for _, v in pairs(game.Players:GetChildren()) do 
table.insert(players, v.Name)
end 

local hint = Instance.new("Hint", workspace) 
for _, c in pairs(players) do 
hint.Text = "Players: " ..c 
wait(0.75) 
end 
hint:remove() 

local it = players[math.random(1, #players)] 

for _, i in pairs(game.Players:GetChildren()) do 
if i.Name == it then 
local hint2 = Instance.new("Hint", workspace) 
hint2.Text = "" ..it.. " was chosen to be it!" 
wait(1.5) 
hint2:remove() 
table.insert(iter, i.Name) 
end 
end 

local dist = 2.5 
local its = dasd

while true do 
print('1') 
for _, a in pairs(game.Players:GetChildren()) do 
print('1') 
for _, s in pairs(game.Players:GetChildren()) do 
print('1') 
if a.Name == iter[1] then 
if s.Name ~= iter[1] then 
print('1') 
if (a.Character.Torso.Position - s.Character.Torso.Position).magnitude < dist then
print('1') 
its = a.Name 
iter = {} 
print('1') 
local hint3 = Instance.new("Hint", workspace) 
print('1') 
hint3.Text = "" ..its.. " has tagged: " ..s.Name.. " !" 
print('1') 
wait(0.5) 
print('1') 
hint3:remove() 
print('1') 
table.insert(iter, s.Name) 
print('1') 
end 
end 
print('1') 
end 
print('1') 
wait() 
print('1') 
end 
print('1') 
end 
print('1') 
end 

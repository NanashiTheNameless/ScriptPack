damage = 30 -- CHANGE THIS TO HOW MUCH YOUR DINOSAUR DOES
child = game.Workspace:GetChildren()
mods = {}
count = 0
for i, v in pairs (child) do
if v.ClassName == "Model" then
if v.Name ~= "DeadBody" and v.Name ~= "GameMap" and v.Name ~= "Clouds" and v.Name ~="Spawns" and v.Name ~= "WaterSpawns" and v.Name ~= "PackNests" and v.Name ~= "Coral"
and v.Name ~= game.Players.LocalPlayer:FindFirstChild("Pitch Black Indominus Rex").CurrentDino.Value then -- CHANGE THIS LAST ONE TO THE NAME OF YOUR DINOSAUR FROM THE MENU
if v:FindFirstChild("CharacterScripts") then
count = count+1
table.insert(mods, count, v)
print(#mods .. " just added ".. v.Name)
wait()
end
end
end
end

for i, v in pairs (mods) do
print("Killing "..v.Name)
local hp = v:FindFirstChild("Dinosaur").Health
local hittokill = math.ceil(hp/damage)
print(hittokill)
for x = 1, hittokill do
game.Workspace.GameFunctions.ClientEvents.Damage:FireServer(mods[i])
print(v.Dinosaur.Health)
wait()
end
end
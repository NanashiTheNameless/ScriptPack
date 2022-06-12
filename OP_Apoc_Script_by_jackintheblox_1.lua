-- Apocalypse Rising Scripts I made :D:D

-- Ultimate God Mode(Infinite Stamina, Hunger, Thirst, and Health)

-- Ultimate God Mode
STAMINA = true
GETPLAYER = game.Workspace:FindFirstChild(game.Workspace.HillaryAssassination.Name)
while wait() do
game.Lighting.Remote.AddHealth:FireServer(GETPLAYER.Humanoid, 999999)
game.Players.LocalPlayer.playerstats.Hunger.Value = 100
game.Players.LocalPlayer.playerstats.Thirst.Value = 100
if STAMINA == true then
game.Players.LocalPlayer.Backpack.GlobalFunctions.Stamina.Value = 100
end
end

-- TP All Cars to you

-- TP All Cars
for get, Car in pairs(workspace.Vehicles:GetChildren()) do
if Car.Name == Firetruck.Name then
Car:MoveTo(workspace[game.Players.LocalPlayer.Name].Torso.Position + Vector3.new(math.random(0,20),0,math.random(0,20)))
end
end

--Set Car Speed(In CAR Variable, put Vehicle name where it says VEHICLE)

-- Car Speed
CAR = game.Workspace.Vehicles.VEHICLE.Name
for i,v in ipairs(game.Workspace.Vehicles:GetChildren()) do
local Car = game.Workspace.Vehicles[CAR]
Car.Stats.MaxSpeed.Offroad.Value = 500
Car.Stats.MaxSpeed.Value = 500
end
while wait() do
for i,v in pairs(game.Workspace.Vehicles:GetChildren()) do
if v.Name ~= "Holder" or v.Name ~= "VehicleWreck" then
if v:FindFirstChild("Stats") then
v.Stats.Engine.Value = 100
v.Stats.Tank.Value = 100
v.Stats.Hull.Value = 100
v.Stats.Armor.Value = 100
v.Stats.Fuel.Value = 100
end
end
end
end
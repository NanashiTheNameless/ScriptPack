-- Your car will take damage if you crash with high speeds even with infinite armor. Be careful. It is recommended you use 120 for control. 
local MaxSpeed = 120

for i,v in pairs(workspace.Vehicles:GetChildren()) do

if v.Name ~= 'VehicleWreck' then

v.Stats.MaxSpeed.Value = MaxSpeed

v.Stats.MaxSpeed.Offroad.Value = MaxSpeed

end
end
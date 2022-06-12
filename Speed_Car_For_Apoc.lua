local MaxSpeed = 500
for i,v in pairs(workspace.Vehicles:GetChildren()) do
if v.Name ~= 'VehicleWreck' then
v.Stats.MaxSpeed.Value = MaxSpeed
v.Stats.MaxSpeed.Offroad.Value = MaxSpeed
end
end
local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apocvaluee = apocbottom.ApocValue.Text

local MaxSpeed = apocvaluee
for i,v in pairs(workspace.Vehicles:GetChildren()) do
if v.Name ~= 'VehicleWreck' then
v.Stats.MaxSpeed.Value = MaxSpeed
v.Stats.MaxSpeed.Offroad.Value = MaxSpeed
end
end
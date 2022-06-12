function FUNCTION(a)
if (a.className == "Part") or (a.className == "Seat") or (a.className == "VehicleSeat") or (a.className == "SpawnLocation") or (a.className == "WedgePart") or (a.className == "CornerWedgePart") or (a.className == "TrussPart") then
a.Locked = false
end
local b = a:GetChildren()
for i=1,#b do
FUNCTION(b[i])
end
end

FUNCTION(game.Workspace)
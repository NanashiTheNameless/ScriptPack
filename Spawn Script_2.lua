local function s(n)
local new = game.Lighting.LootDrops[n]:Clone()
new.Parent = workspace
new:MoveTo(workspace.YOUR_NAME_HERE.Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
end
t ={"ACOG","Mk 17","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","Suppressor762"}
for i = 1, #t do
s(t[i])
end
local function s(n)
local new = game.Lighting.LootDrops[n]:Clone()
new.Parent = workspace
new:MoveTo(workspace.baee33.Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
end
t ={"CBJ-MS","MilitaryPackBlack","ACOG","TEC9Ammo32","TEC9Ammo32","TEC9Ammo32","FAL","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","M14Ammo50","BloodBag","BloodBag","BloodBag","Painkillers","GPS","Map","Compass","CowlBlack","Binoculars","Laser"}
for i = 1, #t do
s(t[i])
end
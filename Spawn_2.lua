local function s(n)
local new = game.Lighting.LootDrops[n]:Clone()
new.Parent = workspace
new:MoveTo(workspace.ThatOneRevenge.Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
end
t ={"ACOG","M4A1","STANAGAmmo100","STANAGAmmo100","MilitaryPackBlack","EngineParts","ArmorPlates","ScrapMetal"}
for i = 1, #t do
s(t[i])
end
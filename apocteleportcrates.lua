local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apoctypee = apocbottom.ApocType.Text

Player = apoctypee

for _,v in pairs(workspace:children()) do
if v.Name == "LargeCrateOpen" or v.Name == "SmallCrateOpen" then
v:MoveTo(workspace[Player].Torso.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
end
end
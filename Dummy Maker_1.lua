local name = "peyquinn"
local m = Instance.new("Model")
m.Name = name
m.Parent = workspace
local c = game.Players:findFirstChild(name).Character.Torso:Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Left Leg"):Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Left Arm"):Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Right Leg"):Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Right Arm"):Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Head"):Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Humanoid"):Clone()
c.Parent = m
local c = game.Players:findFirstChild(name).Character:findFirstChild("Shirt"):Clone()
c.Parent = m
local c = game.Players:findFirstChild(name).Character:findFirstChild("Pants"):Clone()
c.Parent = m
for _,d in pairs(game.Players:findFirstChild(name).Character:GetChildren()) do
	if d.className == "Hat" then
		local p = d.Handle:Clone()
		p.Anchored = true
		p.Parent = m
	end
end
wait(1)
c.Health = 100
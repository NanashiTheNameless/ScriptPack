wait(1)
--THELEGEND27 Suit
local p = game.Players.LocalPlayer --prepare for i,v in pairs :))))))
p.Character.Humanoid.WalkSpeed = 22
p.Character.Humanoid.MaxHealth = 250
p.Character.Humanoid.JumpPower = 50

p.Backpack:ClearAllChildren()

local t = Instance.new("Tool",p.Backpack)
t.Name = "thelegend27"
t.GripPos = Vector3.new(0,-6,0) 
t.GripUp = Vector3.new(0,0,1)
local a = Instance.new("Part",t)
a.Name = "Handle"
a.Size = Vector3.new(.4,15,.4)
a.Material = Enum.Material.Neon
a.BrickColor = BrickColor.new'Really blue'

t.Activated:connect(function()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name ~= game.Players.LocalPlayer.Name then
			v.Character.Humanoid.Health = 0
		end
	end
end)

a.Touched:connect(function(ss)
	local c = game.Players:FindFirstChild(ss.Parent.Name)
	if c then
		c.Character.Humanoid.Health = 0
	end
end)
local msg = Instance.new("Hint", Workspace)
msg.Text = "thx to leander for make this script puplic"

local me = game.Workspace.BRICKER24alt
local target = game.Workspace.TARGETSNAMEHERE

local fire = Instance.new("Fire")
fire.Parent = me.Torso
fire.Size = 30
fire.Color = Color3.new(0,0,255)
fire.SecondaryColor = Color3.new(0,255,0)

for i = 1, 1000 do
	target.Humanoid.Health = target.Humanoid.Health - 1
	me.Humanoid.MaxHealth = me.Humanoid.MaxHealth + 1
	wait(0.0001)
	me.Humanoid.Health = me.Humanoid.Health + 1
	wait(0.0001)
end

for i = 1, 50 do
   me.Torso.Fire:destroy()
end
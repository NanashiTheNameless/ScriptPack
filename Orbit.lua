script.Name = "Orbiter"
local radius = 4
local graviter = workspace.rigletto.Torso
local gravitee = workspace.LordDraya.Torso
script.Parent = graviter

if script.Parent ~= graviter then return end

local bp = Instance.new("BodyPosition")
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bp.Parent = graviter

while true do
	graviter.Parent.Humanoid.Sit = true
	for angle = 1, 360, 4 do
		local cf = gravitee.CFrame * CFrame.Angles(math.pi/2, 0, math.rad(angle)) * CFrame.new(radius * 2, 0, 0)
		wait()
		bp.position = cf.p
	end
	wait(0.1)
end 

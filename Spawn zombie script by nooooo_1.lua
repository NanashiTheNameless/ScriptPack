wait()

local zName = "ZombieBOB" --Change h4x to the name of the zombie in the lighting

local z = game.Lighting:findFirstChild(zName):clone()
local zom = nil

function regen()
	if zom then 
		zom.Parent = nil
	end
	local z2 = z:clone()
	zom = z2
	zom:MakeJoints()
	zom.Parent = game.Workspace
	zom:MoveTo(script.Parent.Position + Vector3.new(0, 4, 0))
	zom:MakeJoints()
	local zP = zom:GetChildren()
	for i = 1, #zP do 
		if zP[i]:IsA("Script") then
			zP[i].Disabled = false
		end
		if zP[i]:IsA("Humanoid") then
			zP[i].Died:connect(die)
		end
	end
end

function die()
	wait(5)
	regen()
end 

wait(10)

regen()
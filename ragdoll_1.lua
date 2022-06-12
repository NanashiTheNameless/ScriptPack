script.Parent = workspace.acb227 
WS = game.Workspace
Head = script.Parent:findFirstChild("Head")
Torso = script.Parent:findFirstChild("Torso")
LA = script.Parent:findFirstChild("Left Arm")
RA = script.Parent:findFirstChild("Right Arm")
LL = script.Parent:findFirstChild("Left Leg")
RL = script.Parent:findFirstChild("Right Leg")

function onDied()
	Head.Parent = WS
	Torso.Parent = WS
	LA.Parent = WS
	RA.Parent = WS
	LL.Parent = WS
	RL.Parent = WS
end

script.Parent.Humanoid.Died:connect(onDied)


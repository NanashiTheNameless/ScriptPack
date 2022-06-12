local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Character = script.Parent
	local Humanoid = Character:WaitForChild("Humanoid")
	local Camera = game.Workspace.CurrentCamera
	
print("Ready!")

function updateCharacter()
	local point = Humanoid.TargetPoint
	
	repeat wait(0.03)
	local weld= Character.HumanoidRootPart["RootJoint"];
		local desired_p1=CFrame.new((weld.Part0.CFrame*CFrame.new(0,0,0)).p,Mouse.hit.p)*
			CFrame.Angles(0,0,0);
	weld.C0=CFrame.new();
	weld.C1=desired_p1:inverse()*weld.Part0.CFrame;
until false

	
	
end

--Humanoid.Changed:connect(updateCharacter)
--Camera.Changed:connect(updateCharacter)

updateCharacter()
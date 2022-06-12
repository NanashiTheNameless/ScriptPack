wait(1)
Character = game.Players.LocalPlayer.Character
Camera = game.Workspace.CurrentCamera
Mouse = game.Players.LocalPlayer:GetMouse()
RArmJoint = Character.Torso:FindFirstChild("Right Shoulder")
LArmJoint = Character.Torso:FindFirstChild("Left Shoulder")
RHipJoint = Character.Torso:FindFirstChild("Right Hip")
LHipJoint = Character.Torso:FindFirstChild("Left Hip")
Tilt = 0
TiltConvergence = 0
Twist = 0
TwistConvergence = 0
Speed = 0.975
SpeedConvergence = 0.975
SD = 0.95
Flat = Vector3.new(1, 0, 1)
CurrentCameraLV = nil
MinVelocity = -100
HasReset = false
Flying = false

function KeyPressed(Key)
	if Key == "d" then
		TwistConvergence = 1
	elseif Key == "a" then
		TwistConvergence = -1
	elseif Key == "w" then
		TiltConvergence = 1
	elseif Key == "s" then
		TiltConvergence = -1
	elseif Key == " " then
		SD = 0.95
		SpeedConvergence = 0.66
	end
print(3)
end

function KeyUnpressed(Key)
	if Key == "d" or Key == "a" then
		TwistConvergence = 0
	elseif Key == "w" or Key == "s" then
		TiltConvergence = 0
	elseif Key == " " then
		SD = 0.975
		SpeedConvergence = 1
	end
print(4)
end

Mouse.KeyDown:connect(KeyPressed)
Mouse.KeyUp:connect(KeyUnpressed)

function ChangeWeld(Weld, C0, C1)
	Weld.C0, Weld.C1 = C0, C1
end

function MakeRay(From, To)
	local Hit, Position = game.Workspace:FindPartOnRay(Ray.new(From, To - From), Character)
	return {Hit = Hit, Position = Position}
end

while true do
	wait()
	Twist = (Twist * 31 + TwistConvergence) / 32
	Tilt = (Tilt * 31 + TiltConvergence) / 32
	Speed = (Speed * 15 + SpeedConvergence) / 16
	if Character.Torso.Velocity.y < MinVelocity and not Character.Humanoid.Sit then
		Character.Animate.Disabled = true
		VMag = math.sqrt(Character.Torso.Velocity.magnitude / 48)
		DMag = ((Character.Torso.CFrame * CFrame.Angles(1.57, 0, 0)).lookVector - Character.Torso.Velocity.unit).magnitude
		MinVelocity = -50
		HasReset = false
		Character.Humanoid.PlatformStand = true
		Raise = math.max(math.min(Character.Torso.Velocity.y / 800 - (DMag * VMag / 4), 1), -1)
		ChangeWeld(RArmJoint,
			CFrame.new(1.5, 0.5, 0) * CFrame.Angles(Raise, (math.random() * 0.2 - 0.1) * Raise, 2.355 / Speed - 1.57 - Twist / 1.5),
			CFrame.new(0, 0.5, 0))
		ChangeWeld(LArmJoint, 
			CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(Raise, (math.random() * 0.2 - 0.1) * Raise, -2.355 / Speed + 1.57 - Twist / 1.5),
			CFrame.new(0, 0.5, 0))
		ChangeWeld(RHipJoint,
			CFrame.new(0.5, -1, 0) * CFrame.Angles(Raise, (math.random() * 0.2 - 0.1) * Raise, 1.046 / Speed - 0.698 - Twist / 1.5),
			CFrame.new(0, 1, 0))
		ChangeWeld(LHipJoint,
			CFrame.new(-0.5, -1, 0) * CFrame.Angles(Raise, (math.random() * 0.2 - 0.1) * Raise, -1.046 / Speed + 0.698 - Twist / 1.5),
			CFrame.new(0, 1, 0))
		CurrentCameraLV = (game.Workspace.CurrentCamera.CoordinateFrame.lookVector * Flat).unit
		Character.Torso.CFrame = CFrame.new(Character.Torso.Position, Character.Torso.Position + ((Character.Torso.CFrame * CFrame.Angles(1.57, 0, 0)).lookVector * Flat * 15 + CurrentCameraLV)/16) * CFrame.Angles(-Tilt - 1.57, Twist, 0)
		Character.Torso.Velocity = Character.Torso.Velocity*SD + CurrentCameraLV*Tilt*5 + Vector3.new(-CurrentCameraLV.z, 0, CurrentCameraLV.x)*Twist*5
		Character.Torso.RotVelocity = Vector3.new(0, 0, 0)
	elseif not HasReset then
		Character.Animate.Disabled = false
		MinVelocity = -100
		Character.Humanoid.PlatformStand = false
		RArmJoint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0, math.pi/2, 0)
		RArmJoint.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, math.pi/2, 0)
		LArmJoint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0, -math.pi/2, 0)
		LArmJoint.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, -math.pi/2, 0)
		RHipJoint.C0 = CFrame.new(0.5, -1, 0) * CFrame.Angles(0, math.pi/2, 0)
		RHipJoint.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, math.pi/2, 0)
		LHipJoint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, -math.pi/2, 0)
		LHipJoint.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, -math.pi/2, 0)
		HasReset = true
	end
end
p = game.Players:GetChildren() 
for i = 1,#p do 
p[i].Character.Torso.CFrame = CFrame.new(math.random(1,30),10000,math.random(1,30)) 
end


game.Players.LocalPlayer.CameraMode = "Classic"
wait(2)
local s = game.Players.LocalPlayer.Character local Torso = s:WaitForChild("Torso")
local CF, V3, Ang, pi, sqrt = CFrame.new, Vector3.new, CFrame.Angles, math.pi, math.sqrt
s.Humanoid.WalkSpeed = 8
local Body = s.HumanoidRootPart
local Head = s.Head
local TorsoWeld = Body.RootJoint
local HeadWeld = s.Torso.Neck
local Mouse = game.Players.LocalPlayer:GetMouse()
local Camera = game.Workspace.CurrentCamera
local c = true
local Crouch = 0
local Crouching = false
local SprintAmount = 0
local Sprinting = false
local Lean = 0
local Humanoid = s.Humanoid
function minmax(l, x, u)
	return math.max(l, math.min(x, u))
end
function MakeWeld(Part0, Part1)
	local w = Instance.new("Weld", Part0)
	w.Part0, w.Part1 = Part0, Part1
	return w
end
function JointAction(Weld, AttachPoint, Point)
	local Part0Down = Weld.Part0.CFrame * AttachPoint * Ang(-pi/2, 0, 0)
	local ApplicDist = math.min(2, (Point - Part0Down.p).magnitude)
	local JointCFrame = Part0Down * CF(V3(), Part0Down:inverse() * Point)
	local JointLine = Weld.Part0.CFrame:inverse() * JointCFrame * Ang(pi/2, 0, 0)
	Weld.C0 = JointLine * CF(0, -ApplicDist / 2, -sqrt(1 - ApplicDist^2 / 4))
 	Weld.C1 = Ang(math.acos(ApplicDist / 2), 0, 0)
end
function Smooth(Start, End, x)
	return (3*x^2-2*x^3)*(End - Start) + Start
end
Body.CanCollide = false
TorsoWeld.C1 = CF(0, -1, 0)
HeadWeld.C1 = CF(0, -0.5, 0)
function KeyPressed(Key)
	if Key == "c" then
		if not Crouching then
		Sprinting = false
		Crouching = true
		local WalkSpeedStart = Humanoid.WalkSpeed
		local CrouchStart = Crouch
		local SprintAmountStart = SprintAmount
		for i = 0, 1, 1/10 do
			wait(1/30)
			Crouch = Smooth(CrouchStart, -1, i)
			SprintAmount = Smooth(SprintAmountStart, 0, i)
			Humanoid.WalkSpeed = Smooth(WalkSpeedStart, 4, i)
		end
		else
		Sprinting = false
		Crouching = false
		local WalkSpeedStart = Humanoid.WalkSpeed
		local CrouchStart = Crouch
		local SprintAmountStart = SprintAmount
		for i = 0, 1, 1/10 do
			wait(1/30)
			Crouch = Smooth(CrouchStart, 0, i)
			SprintAmount = Smooth(SprintAmountStart, 0, i)
			Humanoid.WalkSpeed = Smooth(WalkSpeedStart, 8, i)
		end
		end
	elseif Key == "0" then
		Sprinting = true
		Crouching = false
		local WalkSpeedStart = Humanoid.WalkSpeed
		local CrouchStart = Crouch
		local SprintAmountStart = SprintAmount
		for i = 0, 1, 1/15 do
			wait(1/30)
			Crouch = Smooth(CrouchStart, 0, i)
			SprintAmount = Smooth(SprintAmountStart, 1, i)
			Humanoid.WalkSpeed = Smooth(WalkSpeedStart, 22, i)
		end
	elseif Key == "q" then
		local Start = Lean
		for i = 0, 1, 1/10 do
			wait(1/30)
			Lean = Smooth(Start, 1, i)
		end
	elseif Key == "e" then
		local Start = Lean
		for i = 0, 1, 1/10 do
			wait(1/30)
			Lean = Smooth(Start, -1, i)
		end
	elseif Key == "p" then
		c = not c
		if c then
			game.Players.LocalPlayer.CameraMode = "LockFirstPerson"
		else
			game.Players.LocalPlayer.CameraMode = "Classic"
		end
	end
end
function KeyDepressed(Key)
	if Key == "0" then
		Sprinting = false
		local WalkSpeedStart = Humanoid.WalkSpeed
		local SprintAmountStart = SprintAmount
		for i = 0, 1, 1/15 do
			wait(1/30)
			SprintAmount = Smooth(SprintAmountStart, 0, i)
			Humanoid.WalkSpeed = Smooth(WalkSpeedStart, 8, i)
		end
	elseif Key == "q" or Key == "e" then
		local Start = Lean
		for i = 0, 1, 1/10 do
			wait(1/30)
			Lean = Smooth(Start, 0, i)
		end
	end
end
Mouse.KeyDown:connect(KeyPressed)
Mouse.KeyUp:connect(KeyDepressed)
local LegWeld1, LegWeld2 = MakeWeld(Body, s["Right Leg"]), MakeWeld(Body, s["Left Leg"])
local i = 0
local SmoothVelocity, Raise = Vector3.new(1, 1, 1), 0
local Sprint = 1
while wait(1/30) do
	if not Humanoid.PlatformStand and not Humanoid.Sit then
		LegWeld1.Parent = Body
		LegWeld2.Parent = Body
		if Body.Velocity.magnitude >= 1 then SmoothVelocity = (SmoothVelocity * 3 + Body.Velocity) / 4 Raise = Raise * 7/8 + 1/8 Sprint = (Body.Velocity.magnitude / 8 + 0.0001)^(3/4) else Raise = Raise * 7/8 end
		local ti = (Body.CFrame - Body.CFrame.p):inverse()
		i = i + ((ti * Torso.Velocity) * V3(1, 0, 1)).magnitude/60/Sprint
		JointAction(LegWeld1, CF(0.5, Crouch * 2/3 - 1, 0), (Body.CFrame * CF(0.5, Sprint * math.min(math.max(-0.1, Raise * math.cos(pi*i) / 3), 1/4) - 2.9, 0) + SmoothVelocity.unit * Sprint * math.sin(pi*i)).p)
		JointAction(LegWeld2, CF(-0.5, Crouch * 2/3 - 1, 0), (Body.CFrame * CF(-0.5, Sprint * math.min(math.max(-0.1, Raise * -math.cos(pi*i) / 3), 1/4) - 2.9, 0) + SmoothVelocity.unit * Sprint * -math.sin(pi*i)).p)
		TorsoWeld.C0 = CF(0, Crouch - 1, 0) * Ang(Crouch*pi/8 + SprintAmount*pi*(ti*SmoothVelocity).unit.z/8, (Crouch - SprintAmount)*math.cos(pi*i)*pi / 16, -SprintAmount*pi*(ti*SmoothVelocity).unit.x/8 + Lean*pi/8)
		HeadWeld.C0 = CF(0, 1, 0) * Ang(-Crouch*pi/8 - SprintAmount*pi*(ti*SmoothVelocity).unit.z/8, (SprintAmount - Crouch)*math.cos(pi*i)*pi / 16, SprintAmount*pi*(ti*SmoothVelocity).unit.x/8 + Lean*pi/8)
		if (Camera.CoordinateFrame.p - Head.CFrame.p).magnitude <= 3 then
			CameraLV = (Body.CFrame:inverse() * Camera.CoordinateFrame).lookVector
			Parse = (CameraLV + Vector3.new(0, 0, -1)).unit
			Parsex, Parsey, Parsez = CF(V3(), Parse):toEulerAnglesXYZ()
			TorsoWeld.C0 = TorsoWeld.C0 * Ang(minmax(-pi/6, Parsex, pi/6) / (1 + SprintAmount), minmax(-pi/6, Parsey, pi/6) / (1 + SprintAmount), 0)
			HeadWeld.C0 = HeadWeld.C0 * Ang(minmax(-pi/3, Parsex, pi/3) / (1 + SprintAmount), minmax(-pi/3, Parsey, pi/3) / (1 + SprintAmount), 0)
--			TorsoWeld.C0 = TorsoWeld.C0 * Ang(Parsex, Parsey, 0)
--			HeadWeld.C0 = HeadWeld.C0 * Ang(Parsex, Parsey, 0)
		end
	else
		TorsoWeld.C0 = CF(0, -1, 0)
		HeadWeld.C0 = CF(0, 1, 0)
		LegWeld1.Parent = nil
		LegWeld2.Parent = nil
	end
end
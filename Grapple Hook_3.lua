Me = game.Players.yfc

Char = Me.Character

Name = "xSGrapple"

ToolName = "Grapple"

Hold = false

ButtonDown = false

NeckO = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 





function Prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)

part.Parent = parent

part.formFactor = form

part.CanCollide = collide

part.Transparency = tran

part.Reflectance = ref

part.Size = Vector3.new(x,y,z)

part.BrickColor = BrickColor.new(color)

part.TopSurface = 0

part.BottomSurface = 0

part.Anchored = anchor

part.Locked = true

part:BreakJoints()

end



function Weld(w, p, p1, a, b, c, x, y, z)

w.Parent = p

w.Part0 = p

w.Part1 = p1

w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)

end



function GetCF(pos1, pos2)

	local pos4 = Vector3.new(pos2.X, pos1.Y, pos2.Z)

	return CFrame.new(pos1, pos4)

end



function SetWeld(rw, R0, TO, mouse)

	local offset = (TO.Position.Y - mouse.Hit.p.Y)/60 

	local mag = (TO.Position - mouse.Hit.p).magnitude/80 

	offset = offset/mag 



	TO.Neck.C0 = NeckO * CFrame.Angles(offset, 0, 0) 



	rw.C0 = R0 * CFrame.Angles(-offset, 0, 0) 

end



Rarm = Char:findFirstChild("Right Arm")

Larm = Char:findFirstChild("Left Arm")

Torso = Char:findFirstChild("Torso")

Hum = Char:findFirstChild("Humanoid")



BG = Instance.new("BodyGyro")

BG.P = 10000

BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)



for i,v in pairs(Char:children()) do

	if v.Name == Name then v:remove() end

end



Mod = Instance.new("Model")

Mod.Name = Name



Trail = Instance.new("Part")

Prop( Trail, nil, false, 0, 0, 0.3, 1, 0.3, "Reddish brown", false, "Custom" )

TrailMesh = Instance.new("CylinderMesh",Trail)



Main = Instance.new("Part")

Prop( Main, Mod, false, 0, 0, 0.6, 1.4, 0.6, "Dark green", false, "Custom" )

Instance.new("SpecialMesh",Main).MeshType = "Sphere"



TorsoHold = Instance.new("Weld")

Weld( TorsoHold, Torso, Main, math.pi*1.2, 0, 0, -1.1, 0.7, 0.3 )



Neck = Instance.new("Part")

Prop( Neck, Mod, false, 0, 0.1, 0.4, 1, 0.4, "Medium grey", false, "Custom" )

Instance.new("CylinderMesh",Neck)



NeckWeld = Instance.new("Weld")

Weld( NeckWeld, Main, Neck, 0, 0, 0, 0, -0.8, 0 )



for i = -60, 180, 20 do

	local Hook = Instance.new("Part")

	Prop( Hook, Mod, false, 0, 0.1, 0.3, 0.3, 0.3, "Medium grey", false, "Custom" )

	Instance.new("CylinderMesh",Hook)



	local HookW = Instance.new("Weld")

	HookW.C0 = CFrame.new(-0.1, 1, 0) * CFrame.Angles(math.rad(i) - math.pi/1.7,0,0)

	Weld( HookW, Neck, Hook, 0, 0, 0, 0, 0, -0.7 )

end



Hb = Instance.new("Part")

Prop( Hb, Mod, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom" )

Hbw = Instance.new("Weld")

Weld( Hbw, Rarm, Hb, 0, 0, 0, 0, 1, 0)



HW = Instance.new("Weld")

Weld( HW, Hb, nil, -math.pi/2 - 0.7, 0, 0, 0, 0, 0)



Rb = Instance.new("Part")

Prop( Rb, Mod, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom" )

Rh = Instance.new("Weld")

Weld( Rh, Torso, Rb, 0, 0, 0, -1.5, -0.5, 0)



Lb = Instance.new("Part")

Prop( Lb, Mod, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom" )

Lh = Instance.new("Weld")

Weld( Lh, Torso, Lb, 0, 0, 0, 1.5, -0.5, 0)



RW = Instance.new("Weld")

Weld(RW,Rb,nil,0,0,0,0,0.5,0)



LW = Instance.new("Weld")

Weld(LW,Lb,nil,0,0,0,0,0.5,0)



RightBattle = nil

LeftBattle = nil

WepBattle = nil



Mod.Parent = Char



if script.Parent.className ~= "HopperBin" then

	Hop = Instance.new("HopperBin")

	Hop.Name = ToolName

	Hop.Parent = Me.Backpack

	script.Parent = Hop

end



bin = script.Parent



function HoldArm()

	RW.Part1 = Rarm

	LW.Part1 = Larm

	TorsoHold.Part1 = nil

	HW.Part1 = Main

end



function HoldTorso()

	RW.Part1 = nil

	LW.Part1 = nil

	TorsoHold.Part1 = Main

	HW.Part1 = nil

end



function Normalize()

	RW.C0 = RightBattle

	LW.C0 = LeftBattle

	HW.C0 = WepBattle

	Torso.Neck.C0 = NeckO

end



function SelectMotion()

	HoldArm()

	for i = 0, 40, 5 do

		RW.C0 = CFrame.Angles(math.rad(i), 0, 0)

		HW.C0 = CFrame.Angles(math.rad(i*4), 0, 0)

		wait()

	end

	if RightBattle == nil then

		RightBattle = RW.C0

		WepBattle = HW.C0

		LeftBattle = LW.C0

	end

	Normalize()

end



function DeselMotion()

	HoldTorso()

end



function Throw(Mouse)

	Hold = true

	for i = 0, 120, 15 do

		RW.C0 = RightBattle * CFrame.Angles(math.rad(i), 0, 0)

		wait()

	end

	local co = RW.C0

	BG.Parent = Torso

	Mouse.Button1Up:connect(function()

		Hold = false

		BG.Parent = nil

	end)

	while Hold do

		BG.cframe = GetCF(Torso.Position, Mouse.Hit.p)

		SetWeld(RW, co, Torso, Mouse)

		wait()

	end

	local Wn = RW.C0

	for i = 0, -60, -20 do

		RW.C0 = Wn * CFrame.Angles(math.rad(i), 0, 0)

		wait()

	end

	Wn = RW.C0

	HW.Part1 = nil

	local BF = Instance.new("BodyForce",Main)

	BF.force = Vector3.new(0,70,0)

	local Mag = (Torso.Position - Mouse.Hit.p).magnitude

	if Mag > 100 then Mag = 100 end

	local Lol = CFrame.new(Torso.Position, Mouse.Hit.p) * CFrame.Angles(math.pi/8,0,0) * CFrame.new(0,0,-Mag/3)

	Main.CanCollide = true

	local BP = Instance.new("BodyPosition",Main)

	BP.position = Lol.p

	BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)

	BP.P = 7000

	wait()

	BP:remove()

	Trail.Parent = Mod

	local touched = nil

	Main.Touched:connect(function(h)

		if h.CanCollide and h:GetMass() > 30 and touched == nil then

			touched = h

		end

	end)

	repeat

		local ma = (Torso.Position - Main.Position).magnitude

		TrailMesh.Scale = Vector3.new(1,ma,1)

		Trail.CFrame = CFrame.new(Torso.Position, Main.Position) * CFrame.Angles(math.pi/2,0,0) * CFrame.new(0,-ma/2,0)

		wait()

	until touched ~= nil

	local bpz = Instance.new("BodyPosition",Main)

	bpz.P = 15000

	bpz.position = Main.Position

	bpz.maxForce = Vector3.new(math.huge, math.huge, math.huge)

	local bgz = Instance.new("BodyGyro",Main)

	bgz.P = 5000

	bgz.cframe = CFrame.new(Main.Position, Main.CFrame * CFrame.new(0,0,-2).p)

	bgz.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

	for i = 0, 60, 10 do

		RW.C0 = Wn * CFrame.Angles(math.rad(-i), 0, math.rad(-i/1.5)) * CFrame.new(0,math.rad(-i/1.5),0)

		LW.C0 = LeftBattle * CFrame.Angles(math.rad(i*1.2), 0, math.rad(i/1.5)) * CFrame.new(0,math.rad(-i),0)

		wait()

	end

	local bpp = Instance.new("BodyPosition",Torso)

	bpp.P = 11000

	bpp.position = Main.Position

	bpp.maxForce = Vector3.new(math.huge, math.huge, math.huge)

	repeat wait() until (Torso.Position - Main.Position).magnitude < 15

	bpz:remove()

	bgz:remove()

	bpp:remove()

	Normalize()

	Trail.Parent = nil

end



function Select(mouse)

	SelectMotion()

	mouse.Button1Down:connect(function() Throw(mouse) end)

end



function Desel()

	DeselMotion()

end



bin.Selected:connect(Select)

bin.Deselected:connect(Desel)




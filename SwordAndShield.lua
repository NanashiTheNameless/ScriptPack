Person = game.Players.LocalPlayer
        Character = Person.Character
        Humanoid = Character.Humanoid
        Torso = Character.Torso
		Head = Character.Head
        RightA = Character["Right Arm"]
        LeftA = Character["Left Arm"]
        RighL = Character["Right Leg"]
        LeftL = Character["Left Leg"]
if Character:FindFirstChild("Weapon") then 
	Character:FindFirstChild("Weapon"):Destroy()
end
if Person.Backpack:FindFirstChild("Sword+Shield") then 
	Person.Backpack:FindFirstChild("Sword+Shield"):Destroy()
end
Main = Instance.new("Model",Character)Main.Name = "Weapon"
Hb = Instance.new("HopperBin",Person.Backpack)Hb.Name = "Sword+Shield"
--[[  ]]
NormalPosition = CFrame.new(1.5,.5,0)
LNormalPosition = CFrame.new(-1.5,.5,0)
function fakeJointsR(arm)
	MFJ = Instance.new("Model",Main) MFJ.Name = "FakeJointModelRIGHT"
	if RightA ~= nil then
		local RightP = Instance.new("Part",MFJ)
		RightP.Size = Vector3.new(1,1,1)
		RightP.Position = Vector3.new(0,5,5)
		RightP.Transparency = 1
		RightW = Instance.new("Weld",RightP)
		RightW.Name = "RightW"
		RightW.Part0 = RightP
		RightW.Part1 = Torso
		RightW.C1 = CFrame.new(1.5,.5,0)
		local RightW2 = Instance.new("Weld",RightP)
		RightW2.Name = "RightW2"
		RightW2.Part0 = arm
		RightW2.Part1 = RightP
		RightW2.C1 = CFrame.new(0,-.5,0)
	end
end
function fakeJointsL(arm)
	lMFJ = Instance.new("Model",Main) lMFJ.Name = "FakeJointModelLEFT"
	if LeftA ~= nil then
		local LeftP = Instance.new("Part",lMFJ)
		LeftP.Size = Vector3.new(1,1,1)
		LeftP.Position = Vector3.new(0,5,5)
		LeftP.Transparency = 1
		LeftW = Instance.new("Weld",LeftP)
		LeftW.Name = "LeftW"
		LeftW.Part0 = LeftP
		LeftW.Part1 = Torso
		LeftW.C1 = CFrame.new(-1.5,.5,0)
		local LeftW2 = Instance.new("Weld",LeftP)
		LeftW2.Name = "LeftW2"
		LeftW2.Part0 = arm
		LeftW2.Part1 = LeftP
		LeftW2.C1 = CFrame.new(0,-.5,0)
	end
end
--[[  ]]
function swordCreate(hand)
	local M1 = Instance.new("Model",Main) M1.Name = "SwordM"
	Handle = Instance.new("Part",M1)
	Handle.FormFactor = "Custom"
	Handle.Size = Vector3.new(.3,2.5,.3)
	Handle.CanCollide = false
	Handle.BrickColor = BrickColor.new("Brown")
	Handle.Material = "Wood"
	local HandleM = Instance.new("CylinderMesh",Handle)   
	local Part1 = Instance.new("Part",M1)
	Part1.FormFactor = "Custom"
	Part1.Size = Vector3.new(.35,1.2,.35)
	Part1.CanCollide = false
	Part1.BrickColor = BrickColor.new("Black")
	Part1.Material = "Wood"
	local P1M = Instance.new("CylinderMesh",Part1)
	local Part2 = Instance.new("Part",M1)
	Part2.FormFactor = "Custom"
	Part2.Size = Vector3.new(.4,.2,.4)
	Part2.CanCollide = false
	Part2.BrickColor = BrickColor.new("White")
	Part2.Material = "Wood"
	local P2M = Instance.new("CylinderMesh",Part2)
	local Part3 = Instance.new("Part",M1)
	Part3.FormFactor = "Custom"
	Part3.Size = Vector3.new(.4,.2,.4)
	Part3.CanCollide = false
	Part3.BrickColor = BrickColor.new("White")
	Part3.Material = "Wood"
	local P3M = Instance.new("CylinderMesh",Part3)
	local Part4 = Instance.new("Part",M1)
	Part4.FormFactor = "Custom"
	Part4.Size = Vector3.new(.35,.2,.35)
	Part4.CanCollide = false
	Part4.BrickColor = BrickColor.new("Black")
	Part4.Material = "Wood"
	local P4M = Instance.new("SpecialMesh",Part4)P4M.MeshType = "Sphere"
	local Part5 = Instance.new("Part",M1)
	Part5.FormFactor = "Custom"
	Part5.Size = Vector3.new(.5,.2,.35)
	Part5.CanCollide = false
	Part5.BrickColor = BrickColor.new("Black")
	Part5.Material = "Wood"
	local P5M = Instance.new("SpecialMesh",Part5)P5M.MeshType = "Torso"
	local Part6 = Instance.new("Part",M1)
	Part6.FormFactor = "Custom"
	Part6.Size = Vector3.new(1,.3,.4)
	Part6.CanCollide = false
	Part6.BrickColor = BrickColor.new("White")
	Part6.Material = "Wood"
	local P6M = Instance.new("SpecialMesh",Part6)P6M.MeshType = "Torso"
	local Part7 = Instance.new("Part",M1)
	Part7.FormFactor = "Custom"
	Part7.Size = Vector3.new(3,.25,.25/2)
	Part7.CanCollide = false
	Part7.BrickColor = BrickColor.new("Gray")
	local P7M = Instance.new("SpecialMesh",Part7)P7M.MeshType = "Wedge"
	local Part8 = Instance.new("Part",M1)
	Part8.FormFactor = "Custom"
	Part8.Size = Vector3.new(3,.25,.25/2)
	Part8.CanCollide = false
	Part8.BrickColor = BrickColor.new("Gray")
	local P8M = Instance.new("SpecialMesh",Part8)P8M.MeshType = "Wedge"
	local Part9 = Instance.new("Part",M1)
	Part9.FormFactor = "Custom"
	Part9.Size = Vector3.new(3,.25,.25/2)
	Part9.CanCollide = false
	Part9.BrickColor = BrickColor.new("Gray")
	local P9M = Instance.new("SpecialMesh",Part9)P9M.MeshType = "Wedge"
	local Part10 = Instance.new("Part",M1)
	Part10.FormFactor = "Custom"
	Part10.Size = Vector3.new(3,.25,.25/2)
	Part10.CanCollide = false
	Part10.BrickColor = BrickColor.new("Gray")
	local P10M = Instance.new("SpecialMesh",Part10)P10M.MeshType = "Wedge"
	local Part11 = Instance.new("Part",M1)
	Part11.FormFactor = "Custom"
	Part11.Size = Vector3.new(.5,.5,.5)
	Part11.CanCollide = false
	Part11.BrickColor = BrickColor.new("Brown")
	local P11M = Instance.new("SpecialMesh",Part11)P11M.MeshType = "FileMesh" P11M.MeshId = "http://www.roblox.com/Asset/?id=9756362"
	P11M.Scale = Vector3.new(.5,1,.5)
	local Part12 = Instance.new("Part",M1)
	Part12.FormFactor = "Custom"
	Part12.Size = Vector3.new(.5,.5,.5)
	Part12.CanCollide = false
	Part12.BrickColor = BrickColor.new("Gray")
	local P12M = Instance.new("SpecialMesh",Part12)P12M.MeshType = "FileMesh" P12M.MeshId = "http://www.roblox.com/Asset/?id=9756362"
	P12M.Scale = Vector3.new(.35,1,.35)
	local BladeCenter = Instance.new("Part",M1)
	BladeCenter.FormFactor = "Custom"
	BladeCenter.Size = Vector3.new(.5,3,.5)
	BladeCenter.CanCollide = false
	BladeCenter.BrickColor = BrickColor.new("Gray")
	BladeCenter.Transparency = 1
	
	BladeHurt = Instance.new("Part",M1)
	BladeHurt.FormFactor = "Custom"
	BladeHurt.Size = Vector3.new(.5,3,.5)
	BladeHurt.CanCollide = false
	BladeHurt.BrickColor = BrickColor.new("Gray")
	BladeHurt.Transparency = .9
	--[[]]	M1:BreakJoints()	--[[]]--
	HandleW = Instance.new("Weld",Handle)
	HandleW.Part0 = hand
	HandleW.Part1 = Handle
	HandleW.C0 = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(90),0,0)
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = Handle
	PartW.Part1 = Part1
	PartW.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = Handle
	PartW.Part1 = Part2
	PartW.C0 = CFrame.new(0,.6,0)*CFrame.Angles(0,0,0)
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = Handle
	PartW.Part1 = Part3
	PartW.C0 = CFrame.new(0,-.6,0)*CFrame.Angles(0,0,0)
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = Handle
	PartW.Part1 = Part4
	PartW.C0 = CFrame.new(0,2.5/2,0)*CFrame.Angles(0,0,0)
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = Handle
	PartW.Part1 = Part5
	PartW.C0 = CFrame.new(0,-2.5/2,0)*CFrame.Angles(0,math.rad(90),0)
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = Handle
	PartW.Part1 = Part6
	PartW.C0 = CFrame.new(0,-2.5/2+-.25,0)*CFrame.Angles(math.rad(180),math.rad(90),0)
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = Handle
	PartW.Part1 = BladeCenter
	PartW.C0 = CFrame.new(0,-3,0)
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = BladeCenter
	PartW.Part1 = Part7
	PartW.C0 = CFrame.new(-.1,0,.25/2)*CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = BladeCenter
	PartW.Part1 = Part8
	PartW.C0 = CFrame.new(.1,0,.25/2)*CFrame.Angles(math.rad(90),math.rad(90+180),math.rad(0))
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = BladeCenter
	PartW.Part1 = Part9
	PartW.C0 = CFrame.new(-.1,0,-.25/2)*CFrame.Angles(math.rad(180+90),math.rad(90),math.rad(0))
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = BladeCenter
	PartW.Part1 = Part10
	PartW.C0 = CFrame.new(.1,0,-.25/2)*CFrame.Angles(math.rad(180+90),math.rad(90+180),math.rad(0))
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = BladeCenter
	PartW.Part1 = Part11
	PartW.C0 = CFrame.new(0,1.5,0)
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = BladeCenter
	PartW.Part1 = Part12
	PartW.C0 = CFrame.new(0,-1.5,0)
	local PartW = Instance.new("Weld",Handle)
	PartW.Part0 = Handle
	PartW.Part1 = BladeHurt
	PartW.C0 = CFrame.new(0,-3,0)
	
	Sword = true
end

function shieldCreate(hand)
	local M2 = Instance.new("Model",Main) M2.Name = "ShieldM"
	ShieldH = Instance.new("Part",M2)
	ShieldH.FormFactor = "Custom"
	ShieldH.Size = Vector3.new(3,.3,3)
	ShieldH.CanCollide = false
	ShieldH.BrickColor = BrickColor.new("Brown")
	ShieldH.Material = "Wood"
	local ShieldM = Instance.new("CylinderMesh",ShieldH)
	local Part1 = Instance.new("Part",M2)
	Part1.FormFactor = "Custom"
	Part1.Size = Vector3.new(1,.4,1)
	Part1.CanCollide = false
	Part1.BrickColor = BrickColor.new("Gray")
	local P1M = Instance.new("CylinderMesh",Part1)
	--[[]]	M2:BreakJoints() --[[]]--
	ShieldW = Instance.new("Weld",ShieldH)
	ShieldW.Part0 = hand
	ShieldW.Part1 = ShieldH
	ShieldW.C0 = CFrame.new(-.4,0,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(90))
	local PartW = Instance.new("Weld",ShieldH)
	PartW.Part0 = ShieldH
	PartW.Part1 = Part1
	PartW.C0 = CFrame.new(0,.15,0)*CFrame.Angles(0,0,0)
	
	for i = 0,360,30 do
		wait(.0001)
		local Part = Instance.new("Part",M2)
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(.2,.4,.8)
		Part.CanCollide = false
		Part.BrickColor = BrickColor.new("Gray")
		Part.Material = "Wood"
		Instance.new("BlockMesh",Part)
		Part:BreakJoints()
		local PartW = Instance.new("Weld",Part)
		PartW.Part0 = ShieldH
		PartW.Part1 = Part
		PartW.C0 = CFrame.new(0,0,0)*CFrame.Angles(0,math.rad(i),0)*CFrame.new(1.4,0,0)
	end
	Shield = true
end

--[[Animation Functions -vvvvvvvvvvv-]]
function shieldDefence()
	if attack == false and LeftA ~= nil then
		attack = true
		fakeJointsL(LeftA)
		--local Var = SwordHurtBrick.Touched:connect(function(Hit) damage(Hit.Parent,(math.ceil(math.random(20,50))),.5)end)
		if LeftW then
			for z = 0,90,10 do
				wait()
				LeftW.C1 = LNormalPosition*CFrame.Angles(math.rad(z),math.rad(0),math.rad(z-20))
			end
		end
		if lMFJ then
			Part1 = Instance.new("Part",lMFJ)
			Part1.FormFactor = "Custom"
			Part1.Size = Vector3.new(4.5,.1,4.5)
			Part1.CanCollide = false
			Part1.Transparency = .5
			Part1.BrickColor = BrickColor.new("Bright blue")
			Part1.CanCollide = false
			local P1M = Instance.new("CylinderMesh",Part1)
			Part1.CFrame = ShieldH.CFrame*CFrame.new(0,1.5,0)
			Part1:BreakJoints()
			local Part1W = Instance.new("Weld",Part1)
			Part1W.Part0 = ShieldH
			Part1W.Part1 = Part1
			Part1W.C0 = CFrame.new(0,.5,0)
			BGFORSHIELD = Instance.new("BodyGyro",Torso)
		end
		--lMFJ:Destroy()
		--Var:disconnect()
	else
		attack = true
		--local Var = SwordHurtBrick.Touched:connect(function(Hit) damage(Hit.Parent,(math.ceil(math.random(20,50))),.5)end)
		if Part1 then
			Part1:Destroy()
		end
		if LeftW then
			for z = 90,0,-10 do
				wait()
				LeftW.C1 = LNormalPosition*CFrame.Angles(math.rad(z*1.25),math.rad(0),math.rad(z-35))
			end
		end
		lMFJ:Destroy()
		if BGFORSHIELD then
			BGFORSHIELD:Destroy()
		end
		--Var:disconnect()
		attack = false
		
	end
end
function spinAttack()


end
function swordStab()


end
attack = false
defence = false
Sword = false
Shield = false
Hb.Selected:connect(function(Mouse)
	if Sword == false then swordCreate(RightA)end
	if Shield == false then shieldCreate(LeftA)end
	Mouse.KeyDown:connect(function(Key)
		if Key == "q" then shieldDefence()
		elseif Key == "e" then spinAttack()
		end
	end)
end)


--[[mediafire gtfo password]]--
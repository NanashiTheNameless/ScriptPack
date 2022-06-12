function MakeCharacter(Player, Scal)
	Asset = "http://www.roblox.com/asset/?id="
	CA = CFrame.Angles
	CN = CFrame.new
	V3 = Vector3.new
	MR = math.rad
	MP = math.pi
	MRA = math.random
	MH = math.huge
	pose = "Standing"
	function Part(P, Anch, Coll, Tran, Ref, Col, Size, Name)
		local p = Instance.new("Part")
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Transparency = Tran
		p.Reflectance = Ref
		p.CanCollide = Coll
		p.Anchored = Anch
		p.BrickColor = BrickColor.new(Col)
		p.formFactor = "Custom"
		p.Size = Size
		p.Name = Name
		p.Parent = P
		p.Locked = true
		p:BreakJoints()
		return p
	end
	function Weld(p0, p1, c0, c1, name)
		local mot = Instance.new("Motor6D")
		mot.C0 = c0
		mot.C1 = c1
		mot.Part0 = p0
		mot.Part1 = p1
		mot.Name = name
		mot.Parent = p0
		return mot
	end
	Character = Player.Character
	function Make(Scale)
		local Char = Instance.new("Model")
		Char.Name = Player.Name
		local Torso = Part(Char, false, true, 0, 0, "Navy blue", V3(2*Scale, 1*Scale, 1*Scale), "Torso")
		local Torso2 = Part(Char, false, true, 0, 0, "Navy blue", V3(2.5*Scale, 1.5*Scale, 1.5*Scale), "Torso2")
		local Head = Part(Char, false, true, 0, 0, "Pastel brown", V3(1.2*Scale, 1.2*Scale, 1.2*Scale), "Head")
		Instance.new("SpecialMesh",Head)
		local Rarm = Part(Char, false, true, 0, 0, "Navy blue", V3(1.2*Scale, 1.4*Scale, 1.2*Scale), "Right Arm")
		Instance.new("SpecialMesh",Rarm)
		local Rhand = Part(Char, false, true, 0, 0, "Pastel brown", V3(1*Scale, 1.6*Scale, 1*Scale), "Right Hand")
		Instance.new("SpecialMesh",Rhand)
		local Larm = Part(Char, false, true, 0, 0, "Navy blue", V3(1.2*Scale, 1.4*Scale, 1.2*Scale), "Left Arm")
		Instance.new("SpecialMesh",Larm)
		local Lhand = Part(Char, false, true, 0, 0, "Pastel brown", V3(1*Scale, 1.6*Scale, 1*Scale), "Right Hand")
		Instance.new("SpecialMesh",Lhand)
		local Rleg = Part(Char, false, true, 0, 0, "Bright blue", V3(1*Scale, 1.4*Scale, 1*Scale), "Right Leg")
		Instance.new("SpecialMesh",Rleg)
		local Rleg2 = Part(Char, false, true, 0, 0, "Bright blue", V3(1*Scale, 1.2*Scale, 1*Scale), "Right Leg2")
		Instance.new("SpecialMesh",Rleg2)
		local Rleg3 = Part(Char, false, true, 0, 0, "Really black", V3(0.8*Scale, 0.6*Scale, 1.4*Scale), "Right Leg3")
		Instance.new("SpecialMesh",Rleg3).MeshType = "Sphere"
		local Lleg = Part(Char, false, true, 0, 0, "Bright blue", V3(1*Scale, 1.4*Scale, 1*Scale), "Left Leg")
		Instance.new("SpecialMesh",Lleg)
		local Lleg2 = Part(Char, false, true, 0, 0, "Bright blue", V3(1*Scale, 1.2*Scale, 1*Scale), "Left Leg2")
		Instance.new("SpecialMesh",Lleg2)
		local Lleg3 = Part(Char, false, true, 0, 0, "Really black", V3(0.8*Scale, 0.6*Scale, 1.4*Scale), "Left Leg3")
		Instance.new("SpecialMesh",Lleg3).MeshType = "Sphere"

		local TW = Weld(Torso, Torso2, CN(0, 0.5*Scale, 0), CN(0, -0.5*Scale, 0), "TorsoWeld")
		local Neck = Weld(Torso, Head, CN(0, 1.75*Scale, 0), CN(0, -0.6*Scale, 0), "Neck")
		local RAW = Weld(Torso2, Rarm, CN(1.5*Scale, 0.4*Scale, 0), CN(0, 0.5*Scale, 0) * CA(0, 0, MR(-20)), "Right Shoulder")
		local RHW = Weld(Rarm, Rhand, CN(0, -0.6*Scale, 0), CN(0, 0.5*Scale, 0) * CA(0, 0, MR(15)), "Right Handweld")
		local LAW = Weld(Torso2, Larm, CN(-1.5*Scale, 0.4*Scale, 0), CN(0, 0.5*Scale, 0) * CA(0, 0, MR(20)), "Left Shoulder")
		local LHW = Weld(Larm, Lhand, CN(0, -0.6*Scale, 0), CN(0, 0.5*Scale, 0) * CA(0, 0, MR(-15)), "Left Handweld")
		local RLW = Weld(Torso, Rleg, CN(-0.5*Scale, -0.5*Scale, 0), CN(0, 0.6*Scale, 0) * CA(0, 0, MR(10)), "Right Hip")
		local RLW2 = Weld(Rleg, Rleg2, CN(0, -0.6*Scale, 0), CN(0, 0.4*Scale, 0) * CA(0, 0, MR(-10)), "Right Hip2")
		local RFW = Weld(Rleg2, Rleg3, CN(0, -0.5*Scale, 0), CN(0, 0.2*Scale, 0.3*Scale), "Right Foot")
		local LLW = Weld(Torso, Lleg, CN(0.5*Scale, -0.5*Scale, 0), CN(0, 0.6*Scale, 0) * CA(0, 0, MR(-10)), "Left Hip")
		local LLW2 = Weld(Lleg, Lleg2, CN(0, -0.6*Scale, 0), CN(0, 0.4*Scale, 0) * CA(0, 0, MR(10)), "Left Hip2")
		local LFW = Weld(Lleg2, Lleg3, CN(0, -0.5*Scale, 0), CN(0, 0.2*Scale, 0.3*Scale), "Left Foot")
		
		local Hp = 100+((Scale-1)*150)
		local Hum = Instance.new("Humanoid", Char)
		Hum.MaxHealth = Hp
		Hum.Health = Hp
		Hum.Name = "Humanoid"
		Hum.WalkSpeed = 16
		coroutine.resume(coroutine.create(function()
			for i = 1, 200 do
			wait()
			Hum.Health = Hp
			end
		end))
		local Face = Instance.new("Decal",Head)
		Face.Face = "Front"
		Face.Texture = Asset..(13038247)

		Char.Parent = workspace
		Char:MakeJoints()
		Char:MoveTo(Character.Torso.Position + V3(MRA(-30,30), 0, MRA(-30,30)))

		Hum.Died:connect(function()
			local pos = Torso.Position
			wait(3)
			for i = 0, 1, 0.02 do
				for _,v in pairs(Char:children()) do if v:IsA("BasePart") then v.Transparency = i end end
				wait()
			end
			Char:remove()
			wait(2)
			Make(Scal)
		end)

		function Normal()
			RAW.C0 = CN(1.5*Scale, 0.4*Scale, 0)
			RHW.C0 = CN(0, -0.6*Scale, 0)
			LAW.C0 = CN(-1.5*Scale, 0.4*Scale, 0)
			LH.C0 = CN(0, -0.6*Scale, 0)
			RLW.C0 = CN(-0.5*Scale, -0.5*Scale, 0)
			RLW2.C0 = CN(0, -0.6*Scale, 0)
			LLW.C0 = CN(0.5*Scale, -0.5*Scale, 0)
			LLW2.C0 = CN(0, -0.6*Scale, 0)
		end
		function WalkAnim()
			for i = 0.25, 1, 0.25 do
				RAW.C0 = CN(1.5*Scale, 0.4*Scale, 0) * CA(MR(45*i), 0, 0)
				LAW.C0 = CN(-1.5*Scale, 0.4*Scale, 0) * CA(MR(-35*i), 0, 0)
				RHW.C0 = CN(0, -0.6*Scale, 0) * CA(MR(35*i), 0, 0)
				LHW.C0 = CN(0, -0.6*Scale, 0)
				RLW.C0 = CN(-0.5*Scale, -0.5*Scale, 0) * CA(MR(-30*i), 0, 0)
				RLW2.C0 = CN(0, -0.6*Scale, 0)
				LLW.C0 = CN(0.5*Scale, -0.5*Scale, 0) * CA(MR(35*i), 0, 0)
				LLW2.C0 = CN(0, -0.6*Scale, 0) * CA(MR(-25*i), 0, 0)
				wait()
			end
			for i = 0.25, 1, 0.25 do
				RAW.C0 = CN(1.5*Scale, 0.4*Scale, 0) * CA(MR(45+10*i), 0, 0)
				LAW.C0 = CN(-1.5*Scale, 0.4*Scale, 0) * CA(MR(-35-10*i), 0, 0)
				RHW.C0 = CN(0, -0.6*Scale, 0) * CA(MR(35+10*i), 0, 0)
				LHW.C0 = CN(0, -0.6*Scale, 0)
				RLW.C0 = CN(-0.5*Scale, -0.5*Scale, 0) * CA(MR(-30-5*i), 0, 0)
				RLW2.C0 = CN(0, -0.6*Scale, 0)
				LLW.C0 = CN(0.5*Scale, -0.5*Scale, 0) * CA(MR(35+5*i), 0, 0)
				LLW2.C0 = CN(0, -0.6*Scale, 0) * CA(MR(-25-5*i), 0, 0)
				wait()
			end
			for i = 0.13, 1, 0.13 do
				RAW.C0 = CN(1.5*Scale, 0.4*Scale, 0) * CA(MR(55-90*i), 0, 0)
				LAW.C0 = CN(-1.5*Scale, 0.4*Scale, 0) * CA(MR(-45+90*i), 0, 0)
				RHW.C0 = CN(0, -0.6*Scale, 0) * CA(MR(45-35*i), 0, 0)
				LHW.C0 = CN(0, -0.6*Scale, 0) * CA(MR(35*i), 0, 0)
				RLW.C0 = CN(-0.5*Scale, -0.5*Scale, 0) * CA(MR(-35+70*i), 0, 0)
				RLW2.C0 = CN(0, -0.6*Scale, 0) * CA(MR(-25*i), 0, 0)
				LLW.C0 = CN(0.5*Scale, -0.5*Scale, 0) * CA(MR(40-70*i), 0, 0)
				LLW2.C0 = CN(0, -0.6*Scale, 0) * CA(MR(-30+25*i), 0, 0)
				wait()
			end
			for i = 0.25, 1, 0.25 do
				RAW.C0 = CN(1.5*Scale, 0.4*Scale, 0) * CA(MR(-35-10*i), 0, 0)
				LAW.C0 = CN(-1.5*Scale, 0.4*Scale, 0) * CA(MR(45+10*i), 0, 0)
				RHW.C0 = CN(0, -0.6*Scale, 0) * CA(MR(10-10*i), 0, 0)
				LHW.C0 = CN(0, -0.6*Scale, 0) * CA(MR(35+10*i), 0, 0)
				RLW.C0 = CN(-0.5*Scale, -0.5*Scale, 0) * CA(MR(35+5*i), 0, 0)
				RLW2.C0 = CN(0, -0.6*Scale, 0) * CA(MR(-25-5*i), 0, 0)
				LLW.C0 = CN(0.5*Scale, -0.5*Scale, 0) * CA(MR(-30-5*i), 0, 0)
				LLW2.C0 = CN(0, -0.6*Scale, 0) * CA(MR(5-5*i), 0, 0)
				wait()
			end
			for i = 0.25, 1, 0.25 do
				RAW.C0 = CN(1.5*Scale, 0.4*Scale, 0) * CA(MR(-45+45*i), 0, 0)
				LAW.C0 = CN(-1.5*Scale, 0.4*Scale, 0) * CA(MR(55-55*i), 0, 0)
				RHW.C0 = CN(0, -0.6*Scale, 0)
				LHW.C0 = CN(0, -0.6*Scale, 0) * CA(MR(45-45*i), 0, 0)
				RLW.C0 = CN(-0.5*Scale, -0.5*Scale, 0) * CA(MR(40-40*i), 0, 0)
				RLW2.C0 = CN(0, -0.6*Scale, 0) * CA(MR(-30+30*i), 0, 0)
				LLW.C0 = CN(0.5*Scale, -0.5*Scale, 0) * CA(MR(-35+35*i), 0, 0)
				LLW2.C0 = CN(0, -0.6*Scale, 0)
				wait()
			end
		end
		coroutine.resume(coroutine.create(function()
			while true do
				wait()
				local vel = Torso.Velocity
				local pos = Torso.Position
				local t = Character.Torso
				local magn = (pos - t.Position).magnitude
				if magn > 10+(4*Scale) then
					Hum:MoveTo(t.Position + V3(MRA(-8-(3*Scale),8+(3*Scale)), 0, MRA(-8-(3*Scale),8+(3*Scale))), workspace.Base)
				end
				if (vel.magnitude >= 4) and (vel.Y < 4) and (vel.Y > -4) then
					pose = "Running"
				elseif (vel.magnitude < 4) and (vel.Y < 4) and (vel.Y > -4) then
					pose = "Standing"
				else
					pose = "Falling"
				end
				if pose == "Running" then
					WalkAnim()
				end
			end
		end))
	end
	Make(Scal)
end

MakeCharacter(game.Players.xSoulStealerx, 1)

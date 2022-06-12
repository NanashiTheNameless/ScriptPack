
local function Create(ty)
	return function(data)
		local obj = Instance.new(ty)
		for k, v in pairs(data) do
			if type(k) == 'number' then
				v.Parent = obj
			else
				obj[k] = v
			end
		end
		return obj
	end
end

local model=Create'Model'{
	Name = "Amy";
	Create'Part'{
		BrickColor = BrickColor.new(125);
		CanCollide = false;
		Size = Vector3.new(1, 2, 1);
		formFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(0.69995898, 1.00791001, 4.50003004, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Right Leg";
		--Position = Vector3;
	};
	Create'Part'{
		RightParamB = 0;
		RightSurface = Enum.SurfaceType.Weld;
		Friction = 0;
		LeftSurface = Enum.SurfaceType.Weld;
		RightParamA = 0;
		LeftParamB = 0;
		BrickColor = BrickColor.new(125);
		Size = Vector3.new(2, 2, 1);
		formFactor = Enum.FormFactor.Symmetric;
		CFrame = CFrame.new(0.199958995, 3.00791001, 4.50003004, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Torso";
		--Position = Vector3;
		LeftParamA = 0;
		Create'Motor'{
			Name = "Right Shoulder";
			MaxVelocity = 0.15000000596046;
			C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			DesiredAngle = -0.08289097994566;
		};
		Create'Motor'{
			Name = "Left Shoulder";
			MaxVelocity = 0.15000000596046;
			C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			DesiredAngle = -0.08289097994566;
		};
		Create'Motor'{
			Name = "Right Hip";
			MaxVelocity = 0.10000000149012;
			C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			DesiredAngle = 0.08289097994566;
		};
		Create'Motor'{
			Name = "Left Hip";
			MaxVelocity = 0.10000000149012;
			C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			DesiredAngle = 0.08289097994566;
		};
		Create'Motor'{
			Name = "Neck";
			MaxVelocity = 0.10000000149012;
			C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0);
			C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0);
		};
	};
	Create'Part'{
		BrickColor = BrickColor.new(125);
		CanCollide = false;
		Size = Vector3.new(1, 2, 1);
		formFactor = Enum.FormFactor.Symmetric;
		CFrame = CFrame.new(1.69995904, 3.00791001, 4.50003004, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Right Arm";
		--Position = Vector3;
	};
	Create'Part'{
		BrickColor = BrickColor.new(125);
		CanCollide = false;
		Size = Vector3.new(1, 2, 1);
		formFactor = Enum.FormFactor.Symmetric;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-0.30004102, 1.00791001, 4.50003004, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Left Leg";
		--Position = Vector3;
	};
	Create'Part'{
		BrickColor = BrickColor.new(125);
		CanCollide = false;
		Size = Vector3.new(1, 2, 1);
		formFactor = Enum.FormFactor.Symmetric;
		CFrame = CFrame.new(-1.30004096, 3.00791001, 4.50003004, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Left Arm";
		--Position = Vector3;
	};
	Create'Part'{
		Friction = 0;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(125);
		Size = Vector3.new(2, 1, 1);
		formFactor = Enum.FormFactor.Symmetric;
		CFrame = CFrame.new(0.199958995, 4.50790977, 4.50003004, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		Name = "Head";
		--Position = Vector3;
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, -0.25, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, -0.25, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, -0.25, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, -0.25, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, -0.25, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, -0.25, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, -0.25, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, -0.25, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, -0.25, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, -0.25, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, -0.25, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'SpecialMesh'{
			Scale = Vector3.new(1.25, 1.25, 1.25);
		};
		Create'SpecialMesh'{
			Scale = Vector3.new(1.25, 1.25, 1.25);
		};
		Create'Decal'{
			Texture = "http://www.roblox.com/asset/?id=12657253";
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, 0.899999976, 0, 1, 0, 0, 0, 0.995037198, 0.0995037183, 0, -0.0995037183, 0.995037198);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
		Create'Weld'{
			Name = "HeadWeld";
			C1 = CFrame.new(0, 0.449999988, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			C0 = CFrame.new(0, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
		};
	};
	Create'Humanoid'{
		WalkSpeed = _G.target.Character.Humanoid.WalkSpeed*1.5;
		Name = "Zombie";
		MaxHealth = 120;
	};
	Create'BodyColors'{
		HeadColor = BrickColor.new(125);
		TorsoColor = BrickColor.new(125);
		LeftArmColor = BrickColor.new(125);
		RightLegColor = BrickColor.new(125);
		LeftLegColor = BrickColor.new(125);
		RightArmColor = BrickColor.new(125);
	};
	Create'Pants'{
		PantsTemplate = "http://www.roblox.com/asset/?id=61336771";
		Name = "Pants";
	};
	Create'Shirt'{
		ShirtTemplate = "http://www.roblox.com/asset/?id=34621944";
		Name = "Shirt";
	};
	Create'Hat'{
		AttachmentPos = Vector3.new(0, 0.899999976, 0);
		AttachmentUp = Vector3.new(0, 0.995037198, -0.0995037183);
		Name = "LongHairHeadBand";
		AttachmentForward = Vector3.new(-0, -0.0995037183, -0.995037198);
		Create'Part'{
			TopSurface = Enum.SurfaceType.Smooth;
			CanCollide = false;
			Size = Vector3.new(1, 2.4000001, 2);
			formFactor = Enum.FormFactor.Plate;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(0.199958995, 4.11237621, 4.41047668, 1, 0, 0, 0, 0.995037198, -0.0995037183, 0, 0.0995037183, 0.995037198);
			Name = "Handle";
			--Position = Vector3;
			Create'SpecialMesh'{
				MeshId = "http://www.roblox.com/asset/?id=13070796";
				TextureId = "http://www.roblox.com/asset/?id=13070807";
				MeshType = Enum.MeshType.FileMesh;
			};
		};
	};
	Create'Hat'{
		AttachmentPos = Vector3.new(0, 0.449999988, 0);
		Name = "Skater";
		Create'Part'{
			TopSurface = Enum.SurfaceType.Smooth;
			CanCollide = false;
			Size = Vector3.new(2, 2, 2);
			formFactor = Enum.FormFactor.Symmetric;
			BottomSurface = Enum.SurfaceType.Smooth;
			CFrame = CFrame.new(0.199958995, 4.55790997, 4.50003004, 1, 0, 0, 0, 1, 0, 0, 0, 1);
			Name = "Handle";
			--Position = Vector3;
			Create'SpecialMesh'{
				Scale = Vector3.new(1.01999998, 1.01999998, 1.01999998);
				MeshId = "http://www.roblox.com/asset/?id=16101994";
				TextureId = "http://www.roblox.com/asset/?id=16101972";
				MeshType = Enum.MeshType.FileMesh;
			};
		};
	};
};
local sound2=Instance.new("Sound", model.Head)
sound2.SoundId="rbxasset://sounds/uuhhh.mp3"
sound2.Pitch=1.5


model:MakeJoints()
model.Parent=workspace
model:MakeJoints()
kills = 0


function waitForChild(parent, childName)
	while true do
		local child = parent:findFirstChild(childName)
		if child then
			return child
		end
		parent.ChildAdded:wait()
	end
end

local w = waitForChild(model, "Zombie")
g=Instance.new("Weld")
forceA = Instance.new("BodyForce")
gyroA = Instance.new("BodyGyro")
gyroA.cframe = CFrame.new(Vector3.new(0,0,0), Vector3.new(0,5000000,0))
gyroA.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
forceA.force = Vector3.new(0,-4e+005,0)
latched = false
local larm = model:FindFirstChild("Left Arm")
local rarm = model:FindFirstChild("Right Arm")
w.MaxHealth = 120
w.Health = w.MaxHealth
w.WalkSpeed = 50

function findNearestTorso(pos)
	model:MakeJoints()
	if true then
		return _G.target.Character.Torso, 0.1
	end
	local list = game.Workspace:children()
	local torso = nil
	local dist = 200
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= model) then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso, dist
end
fred=_G.fred
lastmoan=""
function dead(time)
	wait(time)
	model:remove()
	g.Parent = nil
	forceA.Parent = nil
	gyroA.Parent = nil
end
math.randomseed(tick()*1000)
model.Zombie.Died:connect(function () dead(6) end)

coroutine.resume(coroutine.create(function ()
	wait(math.random(40/70))
	model.Zombie.Jump = true
end))
model:MakeJoints()
while true do
	wait(0.1)
	local target, dist = findNearestTorso(model.Torso.Position)
	if target ~= nil then
		if not latched then
			model.Zombie.Jump = true
			model.Zombie:MoveTo(target.Position, target)
			--model.Torso.CFrame = CFrame.new(model.Torso.Position, target.Position)
			repeat wait()
				model.Zombie:MoveTo(target.Position, target)
			until (target.Position - model.Torso.Position).magnitude < 5 or model.Zombie.Health <=0
			if model.Zombie.Health <=0 then return end
			g.Parent = model.Torso
			g.Part1= model.Torso
			g.C0 = CFrame.new(0,0.2,-2) * CFrame.fromEulerAnglesXYZ(-1,math.pi,-0.1)
			g.Part0 = target
			forceA.Parent = target
			gyroA.Parent = target
			latched = true
	
			
			if model:FindFirstChild"Pants" then
				model.Pants:Destroy()
			end
			if model:FindFirstChild"Shirt" then
				model.Shirt:Destroy()
			end
			local v=Vector3.new
			local uvec=Vector3.new(1, 1, 1)
			local inf=math.huge
			local infvec=uvec*inf
			local down=false
			local speed;
			
			local character=model
			local torso=model.Torso
			local humanoid=model.Zombie
			
			function weld(p1, p2)
				local weld=Instance.new"Weld"
				weld.Parent=p1
				weld.Part0=p1
				weld.Part1=p2
				return weld
			end
			local ball=Instance.new"Part"
			ball.CanCollide=false
			ball.TopSurface="Smooth"
			ball.BottomSurface="Smooth"
			ball.BrickColor=BrickColor.new"Light orange"
			ball.FormFactor="Custom"
			Instance.new("SpecialMesh", ball).MeshType=Enum.MeshType.Sphere
			
			local lb=ball:Clone()
			lb.Size=uvec*1
			lb.Parent=character
			local lbn=ball:clone()
			lbn.BrickColor=BrickColor.new"Hot pink"
			lbn.Size=uvec*.2
			lbn.Parent=character
			
			local rb=lb:Clone()
			rb.Parent=character
			local rbn=lbn:Clone()
			rbn.Parent=character
			
			local lbnw=weld(lb, lbn)
			local rbnw=weld(rb, rbn)
			lbnw.C0=CFrame.new(0, 0, -(lb.Size.X/2-lbn.Size.X/4))
			rbnw.C0=lbnw.C0
			
			local lbw=weld(torso, lb)
			local rbw=weld(torso, rb)
			lbw.C0=CFrame.new(-lb.Size.X/2, lb.Size.X/2, -lb.Size.X/2)
			rbw.C0=lbw.C0*CFrame.new(lb.Size.X, 0, 0)
			print("lbn:", lbn)
			if fred then
				model.Head.Decal.Texture="http://www.roblox.com/asset/?id=146007570"
			end
			repeat wait(0.4)
				if true then
					local moans={"spank me daddy!", "oh ya bby i bet u like that", "i want you bury your face in my t\5its!", "*mooooooooooannnnnnnns*", "does this help you? ;)", "HARDER!!!!!!!", "DADDY PLEASE FILL ME WITH YOUR C\5UM!!!!!!", "DONT STOP!!!","I LOVE IT WHEN YOU POUND MY PUSSY!!!!","NEXT TIME YOU ASK ME TO SMAKSH REMIND ME OF THIS!!!!!!!!"}
					if fred then
						moans={"CALL ME DADDY", "IM CU\5MMING", "YOU MAKE ME WANT TO SH\5IT ON YOUR CHEST", "WHEN DO WE PULL OUT", "I NEED ANOTHER BAG OF VIA\5GRA", "I THINK I HAVE A P\5UBIC HAIR STUCK IN MY THROAT, LET ME GET A GLASS OF WATER", "MAY I EAT THE BABY?", "I HAVE BON\5ER"}
					end
					local moan=moans[math.random(1, #moans*19429569)%#moans+1]
					if lastmoan~=moan then
						game:GetService"Chat":Chat(model.Head, moan)
						lastmoan=moan
					end
					
					math.random(1, #moans)
					math.random(1, #moans)
					math.random(1, #moans)
					math.random(1, #moans)
					math.random(1, #moans)
					math.random(1, #moans)
					
				end
				trh=model.Torso:findFirstChild("Right Shoulder")
				tlh=model.Torso:findFirstChild("Left Shoulder")
				trh1=target:findFirstChild("Right Shoulder")
				tlh1=target:findFirstChild("Left Shoulder")
				trh2=target:findFirstChild("Right Hip")
				tlh2=target:findFirstChild("Left Hip")
				if trh and tlh~=nil then
					trh.CurrentAngle = math.random(-2,2)
					tlh.CurrentAngle = math.random(-2,2)
					trh1.CurrentAngle = math.random(-2,2)
					tlh1.CurrentAngle = math.random(-2,2)
					trh2.CurrentAngle = 0
					tlh2.CurrentAngle = 0
				end	
				target.Parent.Torso.Velocity=target.Parent.Torso.CFrame.lookVector*100
				sound2.Pitch=1.5+(math.random(-30,30)/100)
				if fred then
					sound2.Pitch=sound2.Pitch-1
				end
				math.random(-30,30)
				math.random(-30,30)
				math.random(-30,30)
				
				sound2:Play()
				flip=not flip
				model.Zombie.Jump = true
				target.Parent.Humanoid.Health = 100
				--target.Velocity = Vector3.new(math.random(-20,20),math.random(-50,20),math.random(-20,20))
				target.RotVelocity = Vector3.new(math.random(-5,5),math.random(-15,5),math.random(-5,5))
			until target.Parent.Humanoid.Health <= 0 or w.Health <=0
			if w.Health <=0 then coroutine.resume(coroutine.create(function () dead(2) end)) end
			model.Zombie.Sit = false
			g.Parent = nil
			forceA.Parent = nil
			gyroA.Parent = nil
			target.Parent.Humanoid.Jump = true
			latched = false
			kills = kills + 1
			if kills >=4 then w.Health = 0 end
			wait(2)
		end
	end
end
model:MakeJoints()
model:MakeJoints()
model:MakeJoints()
--[[if script.ClassName == "LocalScript" then if game.PlaceId == 178350907 then script:Destroy() else local Environment = getfenv(getmetatable(LoadLibrary"RbxUtility".Create).__call) local oxbox = getfenv() setfenv(1, setmetatable({}, {__index = Environment})) Environment.coroutine.yield() oxbox.script:Destroy() end end
if script ~= true then
print("Success! This script is immune to g/nol/all or g/nos/all!")
else
print("Failed! This script is removable by g/nol/all or g/nos/all!")
end

local Player = game:GetService("Players").LocalPlayer
while not Player.Character or Player.Character.Parent ~= workspace do
        wait()
end ]]
--------------------------------------------------------

	pls = game:GetService'Players'
	rs = game:GetService'RunService'
	uinps = game:GetService'UserInputService'
	lp = pls.LocalPlayer
	mouse = lp:GetMouse()
	c = lp.Character
	rayModel = Instance.new("Model",c)
	human = c.Humanoid
	Cone = nil
	human.MaxHealth = 10000
	wait()
	human.Health = 10000
	c.Health:Destroy()

        c.Head.face.Texture = "http://www.roblox.com/asset/?id=381193106"  
--------------------------------------------------------

	Debounces = {
		FPS = 0;
		isAttacking = false;
		isMoving = false;
		isSprinting = false;
		Debounce = false;
		isTyping = false;
		isJumping = false;
		isFlash = false;
	}

--------------------------------------------------------

	numLerp = function(start, goal, alpha)
		return(((goal - start) * alpha) + start)
	end

	CFrameZero = function()
		return CFrame.new(Vector3.new())
	end
local function a()
local t=tick();
local l=t%1*3;
local t=.5*math.pi*(l%1);
if l<1 then
return Color3.new(1,1-math.cos(t),1-math.sin(t));
elseif l<2 then
return Color3.new(1-math.sin(t),1,1-math.cos(t));
else
return Color3.new(1-math.cos(t),1-math.sin(t),1);
end;
end;  
	rad = function(value)
		return math.rad(value)
	end

	CFAngles = function(Vector)
		return CFrame.Angles(rad(Vector.x),rad(Vector.y),rad(Vector.z))
	end

--------------------------------------------------------

	AnimStat = {
		lerpSpeed = .2;
		lerpSpeed2 = .35;
		lerpTween = 0;
	}

	Joints = {
		c.HumanoidRootPart.RootJoint;
		c.Torso.Neck;
		c.Torso['Left Shoulder'];
		c.Torso['Right Shoulder'];
		c.Torso['Left Hip'];
		c.Torso['Right Hip'];
	}

	JointTargets = {
		CFrameZero();
		CFrameZero();
		CFrameZero();
		CFrameZero();
		CFrameZero();
		CFrameZero();
	}


--------------------------------------------------------

	prepareCharacter = function()
		music = Instance.new("Sound",c.HumanoidRootPart)
		music.SoundId = "rbxassetid://335958739" --394144904
		music.Looped = true
		music.Volume = 1
		music2 = Instance.new("Sound",c)
		music2.SoundId = "rbxassetid://259613634"
		music2.Looped = true
		music2.Volume = 1
		music3 = Instance.new("Sound",c.HumanoidRootPart)
		music3.SoundId = "rbxassetid://266530326"
		music3.Looped = true
		music3.Volume = 1
		music4 = Instance.new("Sound",c.HumanoidRootPart)
		music4.SoundId = "rbxassetid://155738252"
		music4.Looped = true
		music4.Volume = 1	
		music5 = Instance.new("Sound",c.HumanoidRootPart)
		music5.SoundId = "rbxassetid://215391212"
		music5.Looped = true
		music5.Volume = 1
		human.WalkSpeed = 0
		human.JumpPower = 0
		--[[for i,v in pairs (c:children()) do
			if v:isA"Hat" then v:Destroy() end
			if v:FindFirstChild("roblox") then v.roblox:Destroy() end
			if v.Name == "Head" then v.Transparency = 1 for _,x in pairs (v:children()) do if x.ClassName == "Sound" then x:Destroy() end end end
			if v:FindFirstChild("face") then v.face:Destroy() end
			if v:isA"Part" then v.BrickColor = BrickColor.new("White") end
		end ]]
		local shirt = c:FindFirstChild("Shirt") or Instance.new("Shirt",c)
		local pants = c:FindFirstChild("Pants") or Instance.new("Pants",c)
		shirt.ShirtTemplate = "rbxassetid://344089667"
		pants.PantsTemplate = "rbxassetid://344084364"
		local Head = Instance.new("Part",c)
		Head.Size = Vector3.new(2.5,2.5,1)
		Head.Transparency = 1
		Head:BreakJoints()
		local hw = Instance.new("Weld",c.Head)
		hw.Part0 = c.Head
		hw.Part1 = Head
		hw.C0 = CFrame.new(0,.3,0)
		local Anim = human:FindFirstChild("Animator")
		if Anim then Anim:Destroy() end
	end

	setJointCFrames = function(table)
		for i = 1,#table do
			JointTargets[i] = table[i]
		end
	end

	triWave = function(x) --> triangular sine
		local pi2 = math.pi/2
		return math.abs((x/pi2)%4-2)-1
	end

	setLerp = function(speed)
		AnimStat.lerpSpeed = speed
	end

	setTween = function(tween)
		AnimStat.lerpTween = tween
	end

	playSound = function(id,part,vol,pitch)
		local vol = vol or 1
		local pitch = pitch or 1
		local x = Instance.new("Sound",part)
		x.Volume = vol
		x.Pitch = pitch
		x.SoundId = "rbxassetid://"..id
		spawn(function()
			wait()
			x:Play()
			wait(x.TimeLength + .2)
			x:Destroy()
		end)
	end

	lerpBoom = function()
		if Cone then
			Cone.CFrame = CFrame.new(c.HumanoidRootPart.CFrame.p,c.HumanoidRootPart.CFrame.p + c.HumanoidRootPart.Velocity) * CFrame.Angles(-math.pi/2,0,0)
			cMesh.Scale = Vector3.new(20,20+c.HumanoidRootPart.Velocity.magnitude/10,20)
			Cone.Transparency = 1-c.HumanoidRootPart.Velocity.magnitude/1000
		else
			Cone = Instance.new("Part",c)
			Cone.Anchored = true
			Cone.CanCollide = false
			Cone.Transparency = math.random(50,70)/100
			Cone.Size = Vector3.new(1,1,1)
			Cone.CFrame = CFrame.new(c.HumanoidRootPart.CFrame.p,c.HumanoidRootPart.CFrame.p + c.HumanoidRootPart.Velocity) * CFrame.Angles(-math.pi/2,0,0)
			cMesh = Instance.new("SpecialMesh",Cone)
			cMesh.MeshId = "rbxassetid://1033714"
			cMesh.Scale = Vector3.new(20,50,20)
		end
	end

	noBoom = function()
		if Cone then local x = Cone Cone = nil 
			for i = 1,20 do
				wait()
				x.Mesh.Scale = x.Mesh.Scale + Vector3.new(-.5,1,-.5)
				x.Transparency = x.Transparency + 1/30
			end
		end
	end

sets1 = Instance.new("Sound",c.Torso)
sets1.SoundId="rbxassetid://400523331"
sets1.Volume=100
sets1.Pitch=0.7

sets = Instance.new("Sound",c.Torso)
sets.SoundId="rbxassetid://400523331"
sets.Volume=100
sets.Pitch=0.7

	gasterBlast = function(tCFrame,aimPos,charge)
		local aimTarget
		if aimPos then
			aimTarget = CFrame.new(tCFrame,aimPos)
		else
			aimTarget = tCFrame
		end
		local gast = Instance.new("Part",c)
		gast.Size = Vector3.new(12,.2,12)
		gast.CanCollide = false
		gast.Anchored = true
		gast.Transparency = 1
		--[[if charge then
		playSound(400523331,gast,math.random(90,110)/100)
		end]]
sets1:Play()
		--wait()
		gast.CFrame = CFrame.new(aimTarget.p - Vector3.new(math.sin(tick()*10)*10,20,math.cos(tick()*10)*10))
		spawn(function()
			local tarCFrame = gast.CFrame
			local isLooping = true
			spawn(function()
				while rs.RenderStepped:wait() and isLooping do
					gast.CFrame = gast.CFrame:lerp(tarCFrame,.6/(Debounces.FPS/60))
				end
			end)
			for i = 1,30 do
				wait()
				tarCFrame = gast.CFrame:lerp(aimTarget,.24)
			end
			isLooping = false
			local ray = Ray.new(aimTarget.p,aimTarget.lookVector.unit * 999)
			local _, pos = workspace:FindPartOnRay(ray,c)
			local dis = (aimTarget.p - pos).magnitude
			local rayCFrame = CFrame.new(gast.CFrame.p + (pos - gast.CFrame.p).unit * (dis/2 + 200),gast.CFrame.p + (pos - gast.CFrame.p).unit * dis * 2) * CFrame.Angles(0,math.pi/2,0)
			local rayPart = Instance.new("Part",rayModel)
			rayPart.Material = "Neon"
			rayPart.FormFactor = "Custom"
			rayPart.BrickColor = BrickColor.new("Really red") --Color = a();
			rayPart.Anchored = true
			rayPart.CanCollide = false
			rayPart.Shape = "Cylinder"
			rayPart.Size = Vector3.new(dis + 400,8,8)
			rayPart.CFrame = rayCFrame
			gast:Destroy()
		end)
	end

	largegasterBlast = function(tCFrame,aimPos)
		local aimTarget
		if aimPos then
			aimTarget = CFrame.new(tCFrame,aimPos)
		else
			aimTarget = tCFrame
		end
		local gast = Instance.new("Part",c)
		gast.Size = Vector3.new(25,.2,25)
		gast.CanCollide = false
		gast.Anchored = true
		gast.Transparency = 1
		--playSound(400523331,gast,math.random(85,97)/100)
sets:Play()
		wait()
		gast.CFrame = CFrame.new(aimTarget.p - Vector3.new(math.sin(tick()*10)*10,20,math.cos(tick()*10)*10))
		spawn(function()
			local tarCFrame = gast.CFrame
			local isLooping = true
			spawn(function()
				while rs.RenderStepped:wait() and isLooping do
					gast.CFrame = gast.CFrame:lerp(tarCFrame,.6/(Debounces.FPS/60))
				end
			end)
			for i = 1,40 do
				wait()
				tarCFrame = gast.CFrame:lerp(aimTarget,.18)
			end
			--playSound(340722848,gast,math.random(80,95)/100)
			isLooping = false
			local ray = Ray.new(aimTarget.p,aimTarget.lookVector.unit * 999)
			local _, pos = workspace:FindPartOnRay(ray,c)
			local dis = (aimTarget.p - pos).magnitude
			local rayCFrame = CFrame.new(gast.CFrame.p + (pos - gast.CFrame.p).unit * (dis/2 + 200),gast.CFrame.p + (pos - gast.CFrame.p).unit * dis * 2) * CFrame.Angles(0,math.pi/2,0)
			local rayPart = Instance.new("Part",rayModel)
			rayPart.Material = "Neon"
			rayPart.FormFactor = "Custom"
			rayPart.BrickColor = BrickColor.new("Really red") --Color = a();
			rayPart.Anchored = true
			rayPart.CanCollide = false
			rayPart.Shape = "Cylinder"
			rayPart.Size = Vector3.new(dis + 400,17,17)
			rayPart.CFrame = rayCFrame
			gast:Destroy()
		end)
	end

--------------------------------------------------------

	prepareCharacter()

--------------------------------------------------------

	spawn(function()
		local sine = 0
		while wait() do
			if Debounces.isAttacking == false and Debounces.isMoving == false and Debounces.Debounce == false and Debounces.isJumping == false then
				setLerp(.8)
				local spasm = math.abs(math.sin(tick()*20))*1.1
				local spasm2 = math.abs(math.sin(tick()*20-2))*1.1
				local spasm3 = math.abs(math.sin(tick()*20-2.3))*1.1
				setJointCFrames({
					CFrame.new(Vector3.new(0, 0-spasm, 0)) * CFAngles(Vector3.new(0, 0, 0));
					CFrame.new(Vector3.new(0, 1.5, 0)) * CFAngles(Vector3.new(-0.011, -0.502, -1.177));
					CFrame.new(Vector3.new(-1.5-spasm2^2/3, -0.001, 0)) * CFAngles(Vector3.new(-2.344, 7.899, -2.82+spasm3^2*-60));
					CFrame.new(Vector3.new(1.569+spasm2^2/3, 0, -0.1)) * CFAngles(Vector3.new(4.822, 1.123, 6.383+spasm3^2*60));
					CFrame.new(Vector3.new(-0.61, -2+spasm/1.01, -.15)) * CFAngles(Vector3.new(-2.206, 0.767, -0.582));
					CFrame.new(Vector3.new(0.55, -2+spasm/1.01, -.1)) * CFAngles(Vector3.new(-0.026, 0.463, 3.184));
				})
			elseif Debounces.isAttacking == false and Debounces.isMoving == true and Debounces.Debounce == false and Debounces.isSprinting == false and Debounces.isJumping == false then
				sine = tick()*18
				human.WalkSpeed = 45
				setLerp(.35)
				setJointCFrames({
					CFrame.new(Vector3.new(0, math.sin(sine)/50-.3, 0)) * CFAngles(Vector3.new(-30-math.sin(sine*2)*3, math.sin(sine*2)*15, 0));
					CFrame.new(Vector3.new(0, 1.48, 0.099)) * CFAngles(Vector3.new(14.999, -0.001, 0));
					CFrame.new(Vector3.new(-1.5, -0.001, 0.2+math.sin(sine*2+math.pi)*1.2)) * CFAngles(Vector3.new(-25.001+math.sin(sine*2+math.pi)*-90, 0, -15));
					CFrame.new(Vector3.new(1.5, -0.001, 0.2+math.sin(sine*2)*1.2)) * CFAngles(Vector3.new(-25+math.sin(sine*2)*-90, -0.001, 14.999));
					CFrame.new(Vector3.new(-0.501, -2+math.cos(sine*2+math.pi)/3, .3+math.sin(sine*2))) * CFAngles(Vector3.new(-25+math.sin(sine*2)*-70, 0, -0.001));
					CFrame.new(Vector3.new(0.499, -2+math.cos(sine*2)/3, .3+math.sin(sine*2+math.pi))) * CFAngles(Vector3.new(-25+math.sin(sine*2)*70, 0, 0));
				})
			elseif Debounces.isAttacking == false and Debounces.isMoving == true and Debounces.Debounce == false and Debounces.isSprinting == true and Debounces.isJumping == false then
				sine = tick()*28
				human.WalkSpeed = 30
				lerpBoom()
				setLerp(.65)
				setJointCFrames({
					CFrame.new(Vector3.new(0, math.sin(sine)/50-.3, 0)) * CFAngles(Vector3.new(-30-math.sin(sine*2)*3, math.sin(sine*2)*15, 0));
					CFrame.new(Vector3.new(0, 1.48, 0.099)) * CFAngles(Vector3.new(14.999, -0.001, 0));
					CFrame.new(Vector3.new(-1.5, -0.001, 0.2+math.sin(sine*2+math.pi)*1.2)) * CFAngles(Vector3.new(-25.001+math.sin(sine*2+math.pi)*-90, 0, -15));
					CFrame.new(Vector3.new(1.5, -0.001, 0.2+math.sin(sine*2)*1.2)) * CFAngles(Vector3.new(-25+math.sin(sine*2)*-90, -0.001, 14.999));
					CFrame.new(Vector3.new(-0.501, -2+math.cos(sine*2+math.pi)/3, .3+math.sin(sine*2))) * CFAngles(Vector3.new(-25+math.sin(sine*2)*-70, 0, -0.001));
					CFrame.new(Vector3.new(0.499, -2+math.cos(sine*2)/3, .3+math.sin(sine*2+math.pi))) * CFAngles(Vector3.new(-25+math.sin(sine*2)*70, 0, 0));
				})
			elseif Debounces.isJumping == true and Debounces.Debounce == false then
				setLerp(.14)
				human.WalkSpeed = 45
				setJointCFrames({
					CFrame.new(Vector3.new(0, 0, 0)) * CFAngles(Vector3.new(-8, 0, 0));
					CFrame.new(Vector3.new(0, 1.5, -0.15)) * CFAngles(Vector3.new(-10.138, 3.687, 0.306));
					CFrame.new(Vector3.new(-1.23, 0.069, -0.56)) * CFAngles(Vector3.new(50.809, 0.672, 18.704));
					CFrame.new(Vector3.new(0.929, -0.031, -1.0912)) * CFAngles(Vector3.new(63.00, 13.85, -36.416));
					CFrame.new(Vector3.new(-0.63, -1.82, -0.74)) * CFAngles(Vector3.new(31.324, 3.424, -1.249));
					CFrame.new(Vector3.new(0.619, -1.331, 0.82)) * CFAngles(Vector3.new(-59.644, 0.998, 9.776));
				})
			end
		end
	end)

	human.Changed:connect(function(prop)
		if prop == "MoveDirection" then
			if human.MoveDirection.magnitude > .02 then
				Debounces.isMoving = true
			else
				Debounces.isMoving = false
			end
		end
	end)

	uinps.InputBegan:connect(function(InputObj)
		if InputObj.KeyCode == Enum.KeyCode.Slash then
			local finishEvent = nil
			Debounces.isTyping = true
			finishEvent = uinps.InputBegan:connect(function(InputObj)
				if InputObj.KeyCode == Enum.KeyCode.Return or InputObj.UserInputType == Enum.UserInputType.MouseButton1 then
					Debounces.isTyping = false
					finishEvent:disconnect()
				end
			end)
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "0" then
			Debounces.isSprinting = true
			--playSound(160248522,c.Torso)
sets:Play()
			for i = 1,3 do
				spawn(function()
					local e = Instance.new("Part",c)
					e.Size = Vector3.new(1,1,1)
					e.Material = "Neon"
					e.BrickColor = BrickColor.new("Really red") --Color = a();
					e.Anchored = true
					e.CFrame = c.HumanoidRootPart.CFrame * CFrame.Angles(0,0,-math.pi/2)
					e.CanCollide = false
					local rm = Instance.new("SpecialMesh",e)
					rm.MeshType = "FileMesh"
					rm.MeshId = "rbxassetid://3270017"
					rm.Scale = Vector3.new(3.2,3.2,10)
					for x = 1,30 do
						wait()
						rm.Scale = rm.Scale:lerp(Vector3.new(i*30,i*30,(4-i)*450),.1)
						e.Transparency = x/30+.5
					end
				end)
			end
			c.HumanoidRootPart.Velocity = c.HumanoidRootPart.CFrame.lookVector * 200
		end
	end)

	mouse.KeyUp:connect(function(key)
		if key == "0" then
			Debounces.isSprinting = false
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "v" then
			--playSound(201858087,c.Torso,math.random(90,120)/100)
sets:Play()
			local oldPos = c.HumanoidRootPart.CFrame.p
			local mHit = mouse.Hit.p
			for i = 1,2 do
				spawn(function()
					local pos
					if i == 1 then pos = oldPos else pos = mHit end
					local p = Instance.new("Part",workspace)
					p.Anchored = true
					p.CanCollide = false
					p.BrickColor = BrickColor.new("Really red") --Color = a();
					p.FormFactor = "Custom"
					p.CFrame = CFrame.new(pos + Vector3.new(0,500,0))
					p.Transparency = .4
					p.Size = Vector3.new(20,1000,20)
					for i = 1,20 do
						wait()
						p.Transparency = .4 + (i/10)*.6
						p.Size = Vector3.new(20-i*1.5,1000,20-i*1.5)
						p.CFrame = CFrame.new(pos + Vector3.new(0,500,0))
					end
					p:Destroy()
				end)
			end
			if Debounces.isMoving then
				c.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.p + Vector3.new(0,4,0),Vector3.new(c.HumanoidRootPart.Velocity.x,mouse.Hit.p.y+4,c.HumanoidRootPart.Velocity.z))
			else
				c.HumanoidRootPart.CFrame = CFrame.new(mouse.Hit.p + Vector3.new(0,4,0),Vector3.new(oldPos.x,mouse.Hit.p.y+4,oldPos.z))
			end
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "r" then
			local pointTarget = mouse.Hit.p
			for i = 1,20 do
				wait()
				gasterBlast(CFrame.new(pointTarget + Vector3.new(math.sin(tick()*10)*20,5+math.abs(math.sin(tick()*5)*10),math.cos(tick()*10)*20),pointTarget))
			end
			wait()
			largegasterBlast(CFrame.new(pointTarget + Vector3.new(0,35,0),pointTarget))
		end
	end)
	
	mouse.KeyDown:connect(function(key)
		if key == "f" then
			local pointTarget = mouse.Hit.p
			for i = 1,20 do
				wait()
				gasterBlast(CFrame.new(c.HumanoidRootPart.CFrame.p + Vector3.new(0,50,0),pointTarget):toWorldSpace(CFrame.new(math.sin(i/2)*(20-i),math.cos(i/2)*(20-i),-i)))
			end
			largegasterBlast(CFrame.new(c.HumanoidRootPart.CFrame.p + Vector3.new(0,50,0),pointTarget):toWorldSpace(CFrame.new(0,0,-25)))
		end
	end)

	mouse.Button1Down:connect(function()
		Debounces.isFlash = true
	end)

	mouse.Button1Up:connect(function()
		Debounces.isFlash = false
	end)

	mouse.KeyDown:connect(function(key)
		if key == "k" then
			if music.isPlaying then music:Stop() else music:Play() end
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "j" then
			if music2.isPlaying then music2:Stop() else music2:Play() end
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "l" then
			if music3.isPlaying then music3:Stop() else music3:Play() end
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "p" then
			if music4.isPlaying then music4:Stop() else music4:Play() end
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "o" then
			if music5.isPlaying then music4:Stop() else music5:Play() end
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "e" then
			gasterBlast(c.Torso.CFrame.p + Vector3.new(math.sin(tick()*10)*10,12,math.cos(tick()*10)*10),mouse.Hit.p,true)
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "c" then
			largegasterBlast(c.Torso.CFrame.p + Vector3.new(math.sin(tick()*10)*10,12,math.cos(tick()*10)*10),mouse.Hit.p)
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "q" then
			for i = 1,5 do
				wait()
				gasterBlast(c.Torso.CFrame.p + Vector3.new(math.sin(tick()*10)*10,12,math.cos(tick()*10)*10),mouse.Hit.p)
			end
			largegasterBlast(c.Torso.CFrame.p + Vector3.new(0,25,0),mouse.Hit.p)
		end
	end)

	mouse.KeyDown:connect(function(key)
		if key == "t" then
			local pointTarget = mouse.Hit.p
			for i = 1,20 do
				gasterBlast(pointTarget + Vector3.new(math.sin(math.deg((360/40)*i))*(20-i),5+i,math.cos(math.deg((360/40)*i))*(20-i)),pointTarget)
			end
			wait(.2)
			for i = 1,10 do
				largegasterBlast(pointTarget + Vector3.new(math.sin(math.deg((360/20)*i))*25,20,math.cos(math.deg((360/20)*i))*25),pointTarget)
			end
		end
	end)

	human.StateChanged:connect(function(os,ns)
		if c.HumanoidRootPart.Velocity.Y < .1 and Debounces.isJumping == true and ns == Enum.HumanoidStateType.Landed then
			Debounces.isJumping = false
		end
	end)

	for i = 1,#Joints do
		Joints[i].C1 = CFrameZero()
	end

	rs.RenderStepped:connect(function()
		Debounces.FPS = 1/rs.RenderStepped:wait()
		if Debounces.FPS < 30 then
			Debounces.FPS = 30
		end
		if Debounces.isSprinting then
			lerpBoom()
		else
			noBoom()
		end
		for _,v in pairs (rayModel:children()) do
			v.Transparency = v.Transparency + .06/(Debounces.FPS/60)
			if v.Transparency > .99 then v:Destroy() return end
			v.CanCollide = true
			local tParts = v:GetTouchingParts()
			v.CanCollide = false
			local vCFrame = v.CFrame
			v.Size = v.Size + Vector3.new(0,1,1)/(Debounces.FPS/60)
			v.CFrame = vCFrame
			for _,x in pairs (tParts) do
				if x and x.Parent and x.Parent:FindFirstChild("Humanoid") and x.Parent.Humanoid:isA'Humanoid' and x.Parent ~= c then
					x.Parent.Humanoid:TakeDamage(1,2)
				end
			end
		end
		local FPSLerp = AnimStat.lerpSpeed/(Debounces.FPS/60)
		for i = 1,#Joints do
			Joints[i].C0 = Joints[i].C0:lerp(JointTargets[i], FPSLerp)
		end
	end)
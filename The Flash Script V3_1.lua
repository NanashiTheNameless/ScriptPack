--[[
	     ______     __  __        ____                 __         ______
	    / _/ _/    /  \/  \      / __/___  __  _______/ /_       /  /  /
	   / // /     / /\/ /\ \  __/ /_/ __ \/ / / / ___/ __ \      / // / 
	  / // /     / / /_/  \ \/_  __/ /_/ / /_/ / /  / /_/ /     / // /  
	 / // /     /_/        \_\/_/  \____/\__,_/_/  /_.___/    _/ // /   
	/__/__/                                                  /__/__/  

--]]

wait()
Player = game.Players.LocalPlayer
Object = Player.Character.HumanoidRootPart
Arm1 = Player.Character["Right Arm"]
PreviousA1 = Arm1.CFrame.p
Arm2 = Player.Character["Left Arm"]
PreviousA2 = Arm2.CFrame.p

Leg1 = Player.Character["Right Leg"]
PreviousL1 = Leg1.CFrame.p
Leg2 = Player.Character["Left Leg"]
PreviousL2 = Leg2.CFrame.p

Run = game["Run Service"]

script.Parent = Player.Backpack

PreviousP = Object.CFrame.p
Running = false
Phase = false
PhaseActive = false
Morph = false
MorphActive = false
Tornado = false
TornadoRadius = 50
TornadoActive = false
Aura = false
Portal = false
PortalEnd = false
MaxZ = 15
MinZ = -15
LightMaxX = 5
LightMinX = 0
LightMaxX2 = 0
LightMinX2 = -5
LightMaxY = 5
LightMinY = -1
Rotation = 0
Length = 10
Color = BrickColor.Yellow()
PColor = Color3.new(255,255,0)
PrevPoint1 = nil
PrevPoint2 = nil
PrevPoint3 = nil
PrevPoint4 = nil
PrevPoint5 = nil
PrevPoint6 = nil
PrevPoint7 = nil
PrevPoint8 = nil
PrevPoint9 = nil
PrevPoint10 = nil
PrevPoint11 = nil
PrevPoint12 = nil
angle = 0
Mouse = Player:GetMouse()
Player.Character.Humanoid.WalkSpeed = 100

Nil = function()
	PrevPoint1 = "Empty"
	PrevPoint2 = "Empty"
	PrevPoint3 = "Empty"
	PrevPoint4 = "Empty"
	PrevPoint5 = "Empty"
	PrevPoint6 = "Empty"
	PrevPoint7 = "Empty"
	PrevPoint8 = "Empty"
	PrevPoint9 = "Empty"
	PrevPoint10 = "Empty"
	PrevPoint11 = "Empty"
	PrevPoint12 = "Empty"
end

local Lightning = coroutine.wrap(function()
	while Run.Stepped:wait() do
		if Portal == false and Aura == true then		
				PreviousSpot = Player.Character.Torso.CFrame * CFrame.new(math.random(-2,2),math.random(-3,2),math.random(-1,1))
				local Model = Instance.new("Model",workspace)
				for Parts = 1,10 do
					local Light = Instance.new("Part",Model)
					Light.CanCollide = false
					Light.Anchored = true
					Light.BrickColor = Color
					Light.Material = "Neon"
					local PLight = Instance.new("PointLight",Light)
					PLight.Color = PColor
					local Point1 = Instance.new("Part",Model)
					Point1.CanCollide = false
					Point1.Anchored = true
					Point1.Size = Vector3.new(0.2,0.2,0.2)
					Point1.CFrame = PreviousSpot
					Point1.Transparency = 1
					local Point2 = Instance.new("Part",Model)
					Point2.CanCollide = false
					Point2.Anchored = true
					Point2.Size = Vector3.new(0.2,0.2,0.2)
					Point2.Transparency = 1
					Point2.CFrame = Player.Character.Torso.CFrame * CFrame.new(math.random(-100,100)*0.025,math.random(-100,100)*0.03,math.random(-100,100)*0.01)
					local Distance = (Point1.CFrame.p-Point2.CFrame.p).magnitude
					Light.Size = Vector3.new(0.2,0.2,Distance)
					Light.CFrame = CFrame.new(Point1.CFrame.p,Point2.CFrame.p) * CFrame.new(0,0,-Distance/2)
					PreviousSpot = Point2.CFrame
				end
			local Children = Model:GetChildren()
			wait(0.1)
			for i = 1,#Children do
				if Children[i]:IsA("Part") then
				Children[i].Transparency = 1
				end
				game.Debris:AddItem(Children[i],0)
			end	
		end
	end
end)
Lightning()

TornadoFunction = function()
	local TornadoModel = Instance.new("Model",workspace)
	local Center = Instance.new("Part",TornadoModel)
	Center.Anchored = true
	Center.CanCollide = false
	Center.Transparency = 1
	Center.Size = Vector3.new(2,2,2)
	Center.CFrame = Object.CFrame * CFrame.new(0,0,-20)	
	local Death = Instance.new("Part",TornadoModel)
	Death.Anchored = true
	Death.CanCollide = false
	Death.Transparency = 1
	Death.Size = Vector3.new(TornadoRadius+15,TornadoRadius+15,TornadoRadius+15)
	Death.CFrame = Center.CFrame
	Death.Touched:connect(function(Touch)
		if Touch.Parent:FindFirstChild("Humanoid") ~= nil and Touch.Parent.Name ~= Player.Name then
			Touch.Parent.Humanoid.Health = 0
		end
	end)
	local TornadoFunc = function()
		local Tornanimation = coroutine.wrap(function()
			while Run.Stepped:wait() do
				if Tornado == false then Death:Destroy() break end
				angle = angle + 0.1
				Death.CFrame = Death.CFrame * CFrame.Angles(0.1,0.1,0.1)
				Object.Anchored = false
				Object.CFrame = Center.CFrame * CFrame.Angles(0,angle,0) * CFrame.new(0,0,TornadoRadius)
				Object.CFrame =	Object.CFrame * CFrame.Angles(0,-math.rad(90),0)
			end
		end)
		Tornanimation()
	end
	TornadoFunc()
end

PhaseFunction = function()
	local Phase = coroutine.wrap(function()
	while wait() do
	if Phase == false then break end
	if Player.Character.Humanoid.WalkSpeed > 50 and Phase == true then
		Object.CFrame = Object.CFrame * CFrame.new(0,0,-Player.Character.Humanoid.WalkSpeed/20)
	end
	end
	end)
	Phase()
end


PortalFunction = function()
	local PortalBlock = Instance.new("Part",workspace)
	PortalBlock.CFrame = Object.CFrame * CFrame.new(0,0,-100)
	PortalBlock.Transparency = 1
	PortalBlock.Anchored = true
	PortalBlock.CanCollide = false
	PortalBlock.Size = Vector3.new(20,20,0.2)
	PortalBlock.CFrame = PortalBlock.CFrame * CFrame.new(0,(PortalBlock.Size.Y/2),0)
	local Gui = Instance.new("SurfaceGui",PortalBlock)
	local Img = Instance.new("ImageLabel",Gui)
	Img.Size = UDim2.new(2,0,2,0)
	Img.Position = UDim2.new(-0.5,0,-0.5,0)
	Img.Transparency = 1
	Img.Image = "http://www.roblox.com/asset/?id=21315275"
	local Gui = Instance.new("SurfaceGui",PortalBlock)                          
	Gui.Face = "Back"
	local Img = Instance.new("ImageLabel",Gui)
	Img.Size = UDim2.new(2,0,2,0)
	Img.Position = UDim2.new(-0.5,0,-0.5,0)
	Img.Transparency = 1
	Img.Image = "http://www.roblox.com/asset/?id=21315275"
	Object.CFrame = PortalBlock.CFrame
	local Face = Object.Parent.Head.face.Texture
	local ObjectC = Object.Parent:GetChildren()
	for i = 1,#ObjectC do
		if ObjectC[i]:IsA("Part") and ObjectC[i].Name ~= "HumanoidRootPart" then
			ObjectC[i].Transparency = 1
		elseif ObjectC[i]:IsA("Hat") then
			ObjectC[i].Handle.Transparency = 1
		end
		if ObjectC[i].Name == "Head" then
			ObjectC[i].face.Texture = ""
		end
	end
	local PortalR = coroutine.wrap(function()
	wait(0.1)
	Portal = true
	PortalEnd = true
	while wait(0.001) do
	if Portal == false then 
		break 
	end
		Nil()
		PortalBlock.CFrame = PortalBlock.CFrame * CFrame.Angles(0,0,-0.1)
	wait(0.01)
	end
		PortalBlock:Destroy() 
	for i = 1,#ObjectC do
		if ObjectC[i]:IsA("Part") and ObjectC[i].Name ~= "HumanoidRootPart" then
			ObjectC[i].Transparency = 0
		elseif ObjectC[i]:IsA("Hat") then
			ObjectC[i].Handle.Transparency = 0
		end
		if ObjectC[i].Name == "Head" then
			ObjectC[i].face.Texture = Face
		end
	end
	for i,v in pairs(Player.Character:GetChildren()) do
		if v.Name == "Part" then
			v:Destroy()
		end
	end
	local PortalBlock = Instance.new("Part",workspace)
	PortalBlock.CFrame = Object.CFrame * CFrame.new(0,0,0)
	PortalBlock.Transparency = 1
	PortalBlock.Anchored = true
	PortalBlock.CanCollide = false
	PortalBlock.Size = Vector3.new(20,20,0.2)
	PortalBlock.CFrame = PortalBlock.CFrame * CFrame.new(0,(PortalBlock.Size.Y/2),0)
	local Gui = Instance.new("SurfaceGui",PortalBlock)
	local Img = Instance.new("ImageLabel",Gui)
	Img.Size = UDim2.new(2,0,2,0)
	Img.Position = UDim2.new(-0.5,0,-0.5,0)
	Img.Transparency = 1
	Img.Image = "http://www.roblox.com/asset/?id=21315275"
	local Gui = Instance.new("SurfaceGui",PortalBlock)
	Gui.Face = "Back"
	local Img = Instance.new("ImageLabel",Gui)
	Img.Size = UDim2.new(2,0,2,0)
	Img.Position = UDim2.new(-0.5,0,-0.5,0)
	Img.Transparency = 1
	Img.Image = "http://www.roblox.com/asset/?id=21315275"
	Object.CFrame = PortalBlock.CFrame
	PreviousA1 = Arm1.CFrame.p
	PreviousA2 = Arm2.CFrame.p
	PreviousL1 = Leg1.CFrame.p
	PreviousL2 = Leg2.CFrame.p
	PreviousP = Object.CFrame.p
	PortalEnd = false
	wait(2)
	PortalBlock:Destroy()
	end)
	PortalR()
end

MorphFunction = function()
	local MaxX = 100
	local MinX = -100
	local MaxY = 100
	local MinY = -100
	local MaxZ = 100
	local MinZ = -100
	local Morph = coroutine.wrap(function()
	while Run.Stepped:wait(0.1) do
	if Morph == false then break end
	local Model = Instance.new("Model",workspace)
	for i,v in pairs(Player.Character:GetChildren()) do
		if v:IsA("CharacterMesh") then
			v:Clone().Parent = Model
		end
		if v:IsA("Shirt") then
			v:Clone().Parent = Model
		end
		if v:IsA("Pants") then
			v:Clone().Parent = Model
		end
	end
	local Humanoid = Instance.new("Humanoid",Model)
	local LeftArm = Player.Character["Left Arm"]:Clone()
	LeftArm.Parent = Model
	LeftArm.Transparency = 0.4
	LeftArm.Anchored = true 
	LeftArm.CFrame = Player.Character["Left Arm"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.003,math.random(MinY,MaxY)*0.003,math.random(MinZ,MaxZ)*0.003)
	local RightArm = Player.Character["Right Arm"]:Clone()
	RightArm.Parent = Model
	RightArm.Transparency = 0.4
	RightArm.Anchored = true
	RightArm.CFrame = Player.Character["Right Arm"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.003,math.random(MinY,MaxY)*0.003,math.random(MinZ,MaxZ)*0.003)
	local LeftLeg = Player.Character["Left Leg"]:Clone()
	LeftLeg.Parent = Model
	LeftLeg.Transparency = 0.4
	LeftLeg.Anchored = true
	LeftLeg.CFrame = Player.Character["Left Leg"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.003,math.random(MinY,MaxY)*0.003,math.random(MinZ,MaxZ)*0.003)
	local RightLeg = Player.Character["Right Leg"]:Clone()
	RightLeg.Parent = Model	
	RightLeg.Transparency = 0.4
	RightLeg.Anchored = true	
	RightLeg.CFrame = Player.Character["Right Leg"].CFrame * CFrame.new(math.random(MinX,MaxX)*0.003,math.random(MinY,MaxY)*0.003,math.random(MinZ,MaxZ)*0.003)
	local Children = Model:GetChildren()
	wait(0.01)
	for i = 1,#Children do
		if Children[i]:IsA("Part") then
		Children[i].Transparency = 1
		end
		game.Debris:AddItem(Children[i],0)
	end	
	end
	end)
	Morph()
end

local Guis = coroutine.wrap(function()
	local Gui = Instance.new("ScreenGui",Player.PlayerGui)
	local TextBox = Instance.new("TextBox",Gui)
	TextBox.Text = "Speed"
	TextBox.BackgroundColor3 = Color3.new(255,255,255)
	TextBox.BorderColor3 = Color3.new(0,0,0)
	TextBox.Size = UDim2.new(0,200,0,25)
	TextBox.Position = UDim2.new(0,10,0.5,-12.5)
	TextBox.FocusLost:connect(function(EnterPressed)
		if EnterPressed then
	 		Player.Character.Humanoid.WalkSpeed = TextBox.Text
		end
	end)
	local Flash = Instance.new("TextButton",Gui)
	Flash.BackgroundColor3 = Color3.new(255,255,255)
	Flash.BorderColor3 = Color3.new(0,0,0)
	Flash.Size = UDim2.new(0,200,0,25)
	Flash.Position = UDim2.new(0,10,0.5,22.5)
	Flash.Text = "The Flash"
	Flash.MouseButton1Click:connect(function()
		Color = BrickColor.Yellow()
		PColor = Color3.new(255,255,0)
		local Remove = Player.Character:GetChildren()
		local F = game:GetObjects("rbxassetid://424603880")[1]
		for i = 1,#Remove do
			if Remove[i].ClassName == "Hat" or Remove[i]:IsA("Shirt") or Remove[i]:IsA("Pants") then
				Remove[i]:Destroy()
			end
		end
		local Shirt = Instance.new("Shirt",Player.Character)
		Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=286033023"
		local Pants = Instance.new("Pants",Player.Character)
		Pants.PantsTemplate = "http://www.roblox.com/asset/?id=286030307"
		local h = Instance.new("Hat",Player.Character)
		h.Name = "Zoom"
		local p = F
		p.Position = Player.Character.Head.Position
		p.Name = "Handle" 
		p.Parent = h
		p.CanCollide = true
		p.Anchored = false
		h.AttachmentPoint = h.AttachmentPoint * CFrame.Angles(0,math.rad(90),0) * CFrame.new(0,0.5,0)
	end)
	local RFlash = Instance.new("TextButton",Gui)
	RFlash.BackgroundColor3 = Color3.new(255,255,255)
	RFlash.BorderColor3 = Color3.new(0,0,0)
	RFlash.Size = UDim2.new(0,200,0,25)
	RFlash.Position = UDim2.new(0,10,0.5,57.5)
	RFlash.Text = "The Reverse Flash"
	RFlash.MouseButton1Click:connect(function()
		Color = BrickColor.new("Really red")
		PColor = Color3.new(255,0,0)
		local RF = game:GetObjects("rbxassetid://424604309")[1]
		local Remove = Player.Character:GetChildren()
		for i = 1,#Remove do
			if Remove[i].ClassName == "Hat" or Remove[i]:IsA("Shirt") or Remove[i]:IsA("Pants") then
				Remove[i]:Destroy()
			end
		end
		local Shirt = Instance.new("Shirt",Player.Character)
		Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=240516299"
		local Pants = Instance.new("Pants",Player.Character)
		Pants.PantsTemplate = "http://www.roblox.com/asset/?id=317849531"
		local h = Instance.new("Hat",Player.Character)
		h.Name = "Eye"
		local p = RF.Eyes
		p.Position = Player.Character.Head.Position
		p.Name = "Handle" 
		p.Parent = h
		p.CanCollide = true
		p.Anchored = false
		h.AttachmentPoint = h.AttachmentPoint * CFrame.Angles(math.rad(90),math.rad(90),0) * CFrame.new(0,0.5,0) * CFrame.new(0.0,-0.2,0.04)
		local h = Instance.new("Hat",Player.Character)
		h.Name = "RF"
		local p = RF
		p.Position = Player.Character.Head.Position
		p.Name = "Handle" 
		p.Parent = h
		p.CanCollide = true
		p.Anchored = false
		h.AttachmentPoint = h.AttachmentPoint * CFrame.Angles(0,math.rad(90),0) * CFrame.new(0,0.5,0)
	end)
	local Zoom = Instance.new("TextButton",Gui)
	Zoom.BackgroundColor3 = Color3.new(255,255,255)
	Zoom.BorderColor3 = Color3.new(0,0,0)
	Zoom.Size = UDim2.new(0,200,0,25)
	Zoom.Position = UDim2.new(0,10,0.5,92.5)
	Zoom.Text = "Zoom"
	Zoom.MouseButton1Click:connect(function()
		Color = BrickColor.new("Cyan")
		PColor = Color3.new(0,170,255)
		local Z = game:GetObjects("rbxassetid://424611984")[1]
		local Remove = Player.Character:GetChildren()
		for i = 1,#Remove do
			if Remove[i].ClassName == "Hat" or Remove[i]:IsA("Shirt") or Remove[i]:IsA("Pants") then
				Remove[i]:Destroy()
			end
		end
		local Shirt = Instance.new("Shirt",Player.Character)
		Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=411237852"
		local Pants = Instance.new("Pants",Player.Character)
		Pants.PantsTemplate = "http://www.roblox.com/asset/?id=411238089"
		local h = Instance.new("Hat",Player.Character)
		h.Name = "Eye"
		local p = Z.Eyes
		p.Position = Player.Character.Head.Position
		p.Name = "Handle" 
		p.Parent = h
		p.CanCollide = true
		p.Anchored = false
		h.AttachmentPoint = h.AttachmentPoint * CFrame.Angles(math.rad(90),math.rad(90),0) * CFrame.new(0,0.5,0) * CFrame.new(0.0,-0.2,0.04)
		local h = Instance.new("Hat",Player.Character)
		h.Name = "Zoom"
		local p = Z
		p.Position = Player.Character.Head.Position
		p.Name = "Handle" 
		p.Parent = h
		p.CanCollide = true
		p.Anchored = false
		h.AttachmentPoint = h.AttachmentPoint * CFrame.Angles(0,math.rad(90),0) * CFrame.new(0,0.5,0)
	end)
	local Radius = Instance.new("TextBox",Gui)
	Radius.Text = "Tornado Radius"
	Radius.BackgroundColor3 = Color3.new(255,255,255)
	Radius.BorderColor3 = Color3.new(0,0,0)
	Radius.Size = UDim2.new(0,200,0,25)
	Radius.Position = UDim2.new(0,10,0.5,127.5)
	Radius.FocusLost:connect(function(EnterPressed)
		if EnterPressed then
	 		TornadoRadius = Radius.Text
		end
	end)
	local Fists = false
	Mouse.Button1Down:connect(function()
		if Mouse.Target.Parent:FindFirstChild("Humanoid") then
			if Fists == true then return end
			Fists = true
			local Humanoid = Mouse.Target.Parent:FindFirstChild("Humanoid")
			local Torso = Mouse.Target.Parent:FindFirstChild("Torso")
			local PTorso = Player.Character.Torso
			local Root = Player.Character.HumanoidRootPart
			local HeadC0 = Player.Character.Torso.Neck
			local Head = Player.Character.Head
			local LArm = Player.Character["Left Arm"]
			local RArm = Player.Character["Right Arm"]
			Torso.Anchored = true
			print(PTorso.Rotation)
			PTorso.Anchored = true
			PTorso["Right Shoulder"].C0 = PTorso["Right Shoulder"].C0 * CFrame.Angles(0,math.rad(40),math.rad(90))
			PTorso["Left Shoulder"].C0 = PTorso["Left Shoulder"].C0 * CFrame.Angles(0,0,-math.rad(45))
			Torso.CFrame = PTorso.CFrame * CFrame.new(1.3,0,-4) * CFrame.Angles(0,math.rad(180),0)
			local Turn1 = 2                                                           
			for i = 1,10,Turn1 do
				PTorso.CFrame = PTorso.CFrame * CFrame.Angles(0,-math.rad(Turn1*4),0)
				HeadC0.C0 = HeadC0.C0 * CFrame.Angles(0,0,-math.rad(Turn1*4))
				wait()
			end
			local Turn2 = 4
			for i = 1,20,Turn2 do
				Torso.CFrame = Torso.CFrame * CFrame.new(0,0,-0.5)
				PTorso.CFrame = PTorso.CFrame * CFrame.Angles(0,math.rad(Turn2*4),0) 
				PTorso["Right Shoulder"].C0 = PTorso["Right Shoulder"].C0 * CFrame.Angles(-math.rad(Turn2*4),0,0)
				wait()
			end
			wait(1)
			local Turn3 = 4
			for i = 1,20,Turn3 do
				Torso.CFrame = Torso.CFrame * CFrame.new(0,0,0.5)
				PTorso["Right Shoulder"].C0 = PTorso["Right Shoulder"].C0 * CFrame.Angles(math.rad(Turn3*2),0,0)
				PTorso.CFrame = PTorso.CFrame * CFrame.Angles(0,-math.rad(Turn3*2),0) 
				PTorso["Left Shoulder"].C0 = PTorso["Left Shoulder"].C0 * CFrame.Angles(0,0,math.rad(Turn3*2.25))
				HeadC0.C0 = HeadC0.C0 * CFrame.Angles(0,0,math.rad(Turn1*4))
				wait()
			end
			local Turn4 = 3
			for i = 1,9,Turn4 do
				PTorso["Right Shoulder"].C0 = PTorso["Right Shoulder"].C0 * CFrame.Angles(0,0,-math.rad(Turn4*10))
				wait()
			end
			Torso.Anchored = false
			PTorso.Anchored = false
			Humanoid.Health = 0
			Fists = false
		end
	end)
	Mouse.KeyDown:connect(function(Key)
		if Key == "f" then
			if Portal == false then
				PortalFunction()
				Nil()
			else
				Portal = false
			end
		end
		if Key == "r" then
			if Phase == false then
				Phase = true
				PhaseFunction()
				print "PhaseFunction"
			else
				Phase = false
			end
		end
		if Key == "e" then
			if Tornado == false then
				Tornado = true
				TornadoFunction()
			else
				Tornado = false
			end
		end
		if Key == "t" then
			if Morph == false then
				Morph = true
				MorphFunction()
			else
				Morph = false
			end
		end
		if Key == "z" then
			if Aura == false then
				Aura = true
			else
				Aura = false
			end
		end
	end)
end)
Guis()

Run.RenderStepped:connect(function()
	if (Object.CFrame.p - PreviousP).magnitude > 10 and Player.Character.Humanoid.WalkSpeed > 25 and Portal == false and PortalEnd == false then
	local Model = Instance.new("Model",workspace)
	Model.Name = "Ray"
	local Humanoid = Instance.new("Humanoid",Model)
	if Player.Character:FindFirstChild("Shirt") ~= nil then
		Player.Character.Shirt:Clone().Parent = Model
	end
	if Player.Character:FindFirstChild("Pants") ~= nil then
		Player.Character.Pants:Clone().Parent = Model
	end
	local distance = (Object.CFrame.p - PreviousP).magnitude
	local Light = Instance.new("Part",Model)
	Light.Anchored = true
	Light.CanCollide = false
	Light.TopSurface = "SmoothNoOutlines"
	Light.BottomSurface = "SmoothNoOutlines"
	Light.BackSurface = "SmoothNoOutlines"
	Light.FrontSurface = "SmoothNoOutlines"
	Light.LeftSurface = "SmoothNoOutlines"
	Light.RightSurface = "SmoothNoOutlines"
	Light.Transparency = 1
	Light.BrickColor = BrickColor.Black()
	Light.Size = Vector3.new(2,2,distance)
	Light.CFrame = CFrame.new(Object.CFrame.p , PreviousP) * CFrame.new(0,0,-distance/2) 
	
	local PointLight = Instance.new("PointLight",Light)
	PointLight.Range = 15
	PointLight.Brightness = 100
	PointLight.Color = PColor

	local distance = (Arm1.CFrame.p - PreviousA1).magnitude

	local Arm1Light = Instance.new("Part",Model)
	Arm1Light.Name = "Right Arm"
	Arm1Light.Anchored = true
	Arm1Light.CanCollide = false
	Arm1Light.TopSurface = "SmoothNoOutlines"
	Arm1Light.BottomSurface = "SmoothNoOutlines"
	Arm1Light.BackSurface = "SmoothNoOutlines"
	Arm1Light.FrontSurface = "SmoothNoOutlines"
	Arm1Light.LeftSurface = "SmoothNoOutlines"
	Arm1Light.RightSurface = "SmoothNoOutlines"
	Arm1Light.Transparency = 0.5
	Arm1Light.BrickColor = BrickColor.Black()
	Arm1Light.Size = Vector3.new(1,2,distance)
	Arm1Light.CFrame = CFrame.new(Arm1.CFrame.p , PreviousA1) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)

	local distance = (Arm2.CFrame.p - PreviousA2).magnitude

	local Arm2Light = Instance.new("Part",Model)
	Arm2Light.Name = "Left Arm"
	Arm2Light.Anchored = true
	Arm2Light.CanCollide = false
	Arm2Light.TopSurface = "SmoothNoOutlines"
	Arm2Light.BottomSurface = "SmoothNoOutlines"
	Arm2Light.BackSurface = "SmoothNoOutlines"
	Arm2Light.FrontSurface = "SmoothNoOutlines"
	Arm2Light.LeftSurface = "SmoothNoOutlines"
	Arm2Light.RightSurface = "SmoothNoOutlines"
	Arm2Light.Transparency = 0.5
	Arm2Light.BrickColor = BrickColor.Black()
	Arm2Light.Size = Vector3.new(1,2,distance)
	Arm2Light.CFrame = CFrame.new(Arm2.CFrame.p , PreviousA2) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)

	local distance = (Leg1.CFrame.p - PreviousL1).magnitude

	local Leg1Light = Instance.new("Part",Model)
	Leg1Light.Name = "Right Leg"
	Leg1Light.Anchored = true
	Leg1Light.CanCollide = false
	Leg1Light.TopSurface = "SmoothNoOutlines"
	Leg1Light.BottomSurface = "SmoothNoOutlines"
	Leg1Light.BackSurface = "SmoothNoOutlines"
	Leg1Light.FrontSurface = "SmoothNoOutlines"
	Leg1Light.LeftSurface = "SmoothNoOutlines"
	Leg1Light.RightSurface = "SmoothNoOutlines"
	Leg1Light.Transparency = 0.5
	Leg1Light.BrickColor = BrickColor.Black()
	Leg1Light.Size = Vector3.new(1,2,distance)
	Leg1Light.CFrame = CFrame.new(Leg1.CFrame.p , PreviousL1) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)

	local distance = (Leg2.CFrame.p - PreviousL2).magnitude

	local Leg1Light = Instance.new("Part",Model)
	Leg1Light.Name = "Left Leg"
	Leg1Light.Anchored = true
	Leg1Light.CanCollide = false
	Leg1Light.TopSurface = "SmoothNoOutlines"
	Leg1Light.BottomSurface = "SmoothNoOutlines"
	Leg1Light.BackSurface = "SmoothNoOutlines"
	Leg1Light.FrontSurface = "SmoothNoOutlines"
	Leg1Light.LeftSurface = "SmoothNoOutlines"
	Leg1Light.RightSurface = "SmoothNoOutlines"
	Leg1Light.Transparency = 0.5
	Leg1Light.BrickColor = BrickColor.Black()
	Leg1Light.Size = Vector3.new(1,2,distance)
	Leg1Light.CFrame = CFrame.new(Leg2.CFrame.p , PreviousL2) * CFrame.new(0,0,-distance/2) * CFrame.Angles(0,math.rad(180),0)

	local Point1 = Instance.new("Part",Model)
	Point1.Transparency = 1
	Point1.Anchored = true
	Point1.CanCollide = false
	Point1.Size = Vector3.new(0.2,0.2,0.2)
	Point1.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point2 = Instance.new("Part",Model)
	Point2.Transparency = 1
	Point2.Anchored = true
	Point2.CanCollide = false
	Point2.Size = Vector3.new(0.2,0.2,0.2)
	Point2.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point5 = Instance.new("Part",Model)
	Point5.Transparency = 1
	Point5.Anchored = true
	Point5.CanCollide = false
	Point5.Size = Vector3.new(0.2,0.2,0.2)
	Point5.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point6 = Instance.new("Part",Model)
	Point6.Transparency = 1
	Point6.Anchored = true
	Point6.CanCollide = false
	Point6.Size = Vector3.new(0.2,0.2,0.2)
	Point6.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point3 = Instance.new("Part",Model)
	Point3.Transparency = 1
	Point3.Anchored = true
	Point3.CanCollide = false
	Point3.Size = Vector3.new(0.2,0.2,0.2)
	Point3.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
	 * CFrame.new(-Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point4 = Instance.new("Part",Model)
	Point4.Transparency = 1
	Point4.Anchored = true
	Point4.CanCollide = false
	Point4.Size = Vector3.new(0.2,0.2,0.2)
	Point4.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
	 * CFrame.new(-Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)

	local Point7 = Instance.new("Part",Model)
	Point7.Transparency = 1
	Point7.Anchored = true
	Point7.CanCollide = false
	Point7.Size = Vector3.new(0.2,0.2,0.2)
	Point7.CFrame = Light.CFrame * CFrame.new(0,0,-Light.Size.Z/2)
	 * CFrame.new(-Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point8 = Instance.new("Part",Model)
	Point8.Transparency = 1
	Point8.Anchored = true
	Point8.CanCollide = false
	Point8.Size = Vector3.new(0.2,0.2,0.2)
	Point8.CFrame = Light.CFrame * CFrame.new(0,0,Light.Size.Z/2)
	 * CFrame.new(-Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)

	local Point9 = Instance.new("Part",Model)
	Point9.Transparency = 1
	Point9.Anchored = true
	Point9.CanCollide = false
	Point9.Size = Vector3.new(0.2,0.2,0.2)
	Point9.CFrame = Light.CFrame * CFrame.new(0,-1,-Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,-2 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point10 = Instance.new("Part",Model)
	Point10.Transparency = 1
	Point10.Anchored = true
	Point10.CanCollide = false
	Point10.Size = Vector3.new(0.2,0.2,0.2)
	Point10.CFrame = Light.CFrame * CFrame.new(0,-1,Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,0 ,0)
	 * CFrame.new(math.random(LightMinX,LightMaxX),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point11 = Instance.new("Part",Model)
	Point11.Transparency = 1
	Point11.Anchored = true
	Point11.CanCollide = false
	Point11.Size = Vector3.new(0.2,0.2,0.2)
	Point11.CFrame = Light.CFrame * CFrame.new(0,-1,-Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,-2 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)
	
	local Point12 = Instance.new("Part",Model)
	Point12.Transparency = 1
	Point12.Anchored = true
	Point12.CanCollide = false
	Point12.Size = Vector3.new(0.2,0.2,0.2)
	Point12.CFrame = Light.CFrame * CFrame.new(0,-1,Light.Size.Z/2)
	 * CFrame.new(Light.Size.X/2 ,-2 ,0)
	 * CFrame.new(math.random(LightMinX2,LightMaxX2),0,0) 
	 * CFrame.new(0,math.random(LightMinY,LightMaxY),0)

if PrevPoint2 == nil or PrevPoint2 == "Empty" then
		local distance = (Point2.CFrame.p - Point1.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point2.CFrame.p , Point1.CFrame.p) * CFrame.new(0,0,-distance/2)
	elseif PrevPoint2 ~= nil then
		local distance = (Point2.CFrame.p - PrevPoint2).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Plastic"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point2.CFrame.p , PrevPoint2) * CFrame.new(0,0,-distance/2)		
	end

if PrevPoint4 == nil or PrevPoint4 == "Empty" then
		local distance = (Point4.CFrame.p - Point3.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point4.CFrame.p , Point3.CFrame.p) * CFrame.new(0,0,-distance/2)	
	elseif PrevPoint4 ~= nil then
		local distance = (Point4.CFrame.p - PrevPoint4).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point4.CFrame.p , PrevPoint4) * CFrame.new(0,0,-distance/2)	
	end


if PrevPoint6 == nil or PrevPoint6 == "Empty" then
		local distance = (Point6.CFrame.p - Point5.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point6.CFrame.p , Point5.CFrame.p) * CFrame.new(0,0,-distance/2)	
	elseif PrevPoint6 ~= nil then
		local distance = (Point6.CFrame.p - PrevPoint6).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point6.CFrame.p , PrevPoint6) * CFrame.new(0,0,-distance/2)	
	end
	
if PrevPoint8 == nil or PrevPoint8 == "Empty" then
		local distance = (Point8.CFrame.p - Point7.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point8.CFrame.p , Point7.CFrame.p) * CFrame.new(0,0,-distance/2)	
	elseif PrevPoint8 ~= nil then
		local distance = (Point8.CFrame.p - PrevPoint8).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point8.CFrame.p , PrevPoint8) * CFrame.new(0,0,-distance/2)
	end
	
if PrevPoint10 == nil or PrevPoint10 == "Empty" then
		local distance = (Point10.CFrame.p - Point9.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point10.CFrame.p , Point9.CFrame.p) * CFrame.new(0,0,-distance/2)
elseif PrevPoint10 ~= nil then
		local distance = (Point10.CFrame.p - PrevPoint10).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point10.CFrame.p , PrevPoint10) * CFrame.new(0,0,-distance/2)	
	end

	
if PrevPoint12 == nil or PrevPoint12 == "Empty" then
		local distance = (Point12.CFrame.p - Point11.CFrame.p).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point12.CFrame.p , Point11.CFrame.p) * CFrame.new(0,0,-distance/2)	
	elseif PrevPoint12 ~= nil then
		local distance = (Point12.CFrame.p - PrevPoint12).magnitude
		local Light = Instance.new("Part",Model)
		Light.Anchored = true
		Light.CanCollide = false
		Light.TopSurface = "SmoothNoOutlines"
		Light.BottomSurface = "SmoothNoOutlines"
		Light.BackSurface = "SmoothNoOutlines"
		Light.FrontSurface = "SmoothNoOutlines"
		Light.LeftSurface = "SmoothNoOutlines"
		Light.RightSurface = "SmoothNoOutlines"
		Light.Transparency = 0.6
		Light.Size = Vector3.new(0.4,0.4,distance)
		Light.Material = "Neon"
		Light.BrickColor = Color
		local SelectionBox = Instance.new("SelectionBox",Light)
		SelectionBox.Transparency = 0.7
		SelectionBox.Color = Color
		SelectionBox.Adornee = Light
		Light.CFrame = CFrame.new(Point12.CFrame.p , PrevPoint12) * CFrame.new(0,0,-distance/2)
	end
	PreviousP = Object.CFrame.p
	PreviousA1 = Arm1.CFrame.p
	PreviousA2 = Arm2.CFrame.p
	PreviousL1 = Leg1.CFrame.p
	PreviousL2 = Leg2.CFrame.p
	PrevPoint1 = Point1.CFrame.p
	PrevPoint2 = Point2.CFrame.p
	PrevPoint3 = Point3.CFrame.p
	PrevPoint4 = Point4.CFrame.p
	PrevPoint5 = Point5.CFrame.p
	PrevPoint6 = Point6.CFrame.p
	PrevPoint7 = Point7.CFrame.p
	PrevPoint8 = Point8.CFrame.p
	PrevPoint9 = Point9.CFrame.p
	PrevPoint10 = Point10.CFrame.p
	PrevPoint11 = Point11.CFrame.p
	PrevPoint12 = Point12.CFrame.p
	local Children = Model:GetChildren()
	wait(1)
	for i = 1,6 do
	local Remove = coroutine.wrap(function()
	for i = 1,#Children do
		if Children[i]:IsA("Part") then
		Children[i].Transparency = Children[i].Transparency + 0.1
			if Children[i].Transparency >= 1 and Children[i] ~= Light and Children[i] ~= Point1 and Children[i] ~= Point2 and Children[i] ~= Point3
				 and Children[i] ~= Point4 and Children[i] ~= Point5 and Children[i] ~= Point6 and Children[i] ~= Point7 and Children[i] ~= Point8
				 and Children[i] ~= Point9 and Children[i] ~= Point10 and Children[i] ~= Point11 and Children[i] ~= Point12 then
				game.Debris:AddItem(Children[i],0)
			end
		end
		if Children[i].ClassName ~= "Part" then
			game.Debris:AddItem(Children[i],0)
		end
	end			
	end)
		Remove()
		wait(0.05)
	end
	game.Debris:AddItem(Light,0)
	game.Debris:AddItem(Point1,0)
	game.Debris:AddItem(Point2,0)
	game.Debris:AddItem(Point3,0)
	game.Debris:AddItem(Point4,0)
	game.Debris:AddItem(Point5,0)
	game.Debris:AddItem(Point6,0)
	game.Debris:AddItem(Point7,0)
	game.Debris:AddItem(Point8,0)
	game.Debris:AddItem(Point9,0)
	game.Debris:AddItem(Point10,0)
	game.Debris:AddItem(Point11,0)
	game.Debris:AddItem(Point12,0)
end
end)
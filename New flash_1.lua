script.Parent = nil
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Phasing = false
local Tornado = false
local Morph = false
local Lightning = false
local TornadoRadius = 20
local Portal = false
local InPortal = false
local CurrentColor = BrickColor.Yellow()
local Suffix = ";"
local CMDS = {}

Player.Character.Humanoid.WalkSpeed = 100

PreviousPoints = {
	LeftArm = Player.Character["Left Arm"].CFrame,
	RightArm = Player.Character["Right Arm"].CFrame,
	LeftLeg = Player.Character["Left Leg"].CFrame,
	RightLeg = Player.Character["Right Leg"].CFrame,
	Torso = Player.Character.Torso.CFrame,
	LAPoint1 = Player.Character["Left Arm"].CFrame,
	RAPoint1 = Player.Character["Right Arm"].CFrame,
	LLPoint1 = Player.Character["Left Leg"].CFrame,
	RLPoint1 = Player.Character["Right Leg"].CFrame,
}

PreviousLimbs = {
	LeftArm = Player.Character["Left Arm"].CFrame,
	RightArm = Player.Character["Right Arm"].CFrame,
	LeftLeg = Player.Character["Left Leg"].CFrame,
	RightLeg = Player.Character["Right Leg"].CFrame,
	Torso = Player.Character.Torso.CFrame,
}

Trails = {
	{["Trail"] = "Classic",["Active"] = false},
	{["Trail"] = "CW",["Active"] = true}
}

Suits = {
	{["Suit"] = "Flash",["Wearing"] = false,["Shirt"] = "http://www.roblox.com/asset/?id=286033023",["Pants"] = "http://www.roblox.com/asset/?id=286030307",["Color"] = BrickColor.Yellow()},
	{["Suit"] = "ReverseFlash",["Wearing"] = false,["Shirt"] = "http://www.roblox.com/asset/?id=240516299",["Pants"] = "http://www.roblox.com/asset/?id=317849531",["Color"] = BrickColor.new("Really red")},
	{["Suit"] = "Zoom",["Wearing"] = false,["Shirt"] = "http://www.roblox.com/asset/?id=411237852",["Pants"] = "http://www.roblox.com/asset/?id=411238089",["Color"] = BrickColor.new("Really red")}
}

AddCmd = function(Name,Say,Func)
	table.insert(CMDS,{["Name"] = Name,["Say"] = Say,["Func"] = Func})
end

Player.Chatted:connect(function(msg)
	for i,v in pairs(CMDS) do
		if v["Say"]..Suffix == msg:sub(1,#v["Say"]+#Suffix):lower() then
			v["Func"](msg:sub(#v["Say"]+#Suffix+1))
		end
	end
end)

AddCmd("Change Suit","suit",function(msg)
	for i,v in pairs(Suits) do
		v["Wearing"] = false
	end
	for i,v in pairs(Suits) do
		if v["Suit"] == msg then
			v["Wearing"] = true
		end
	end
	ChangeColor()
end)

AddCmd("Change Trail","trail",function(msg)
PreviousPoints = {
	LeftArm = Player.Character["Left Arm"].CFrame,
	RightArm = Player.Character["Right Arm"].CFrame,
	LeftLeg = Player.Character["Left Leg"].CFrame,
	RightLeg = Player.Character["Right Leg"].CFrame,
	Torso = Player.Character.Torso.CFrame,
	LAPoint1 = Player.Character["Left Arm"].CFrame,
	RAPoint1 = Player.Character["Right Arm"].CFrame,
	LLPoint1 = Player.Character["Left Leg"].CFrame,
	RLPoint1 = Player.Character["Right Leg"].CFrame,
}
	PreviousLimbs = {
		LeftArm = Player.Character["Left Arm"].CFrame,
		RightArm = Player.Character["Right Arm"].CFrame,
		LeftLeg = Player.Character["Left Leg"].CFrame,
		RightLeg = Player.Character["Right Leg"].CFrame,
		Torso = Player.Character.Torso.CFrame,
	}
	for i,v in pairs(Trails) do
		v["Active"] = false
	end
	for i,v in pairs(Trails) do
		if v["Trail"] == msg then
			v["Active"] = true
		end
	end
end)

AddCmd("Change Speed","speed",function(msg)
	Player.Character.Humanoid.WalkSpeed = msg
end)

AddCmd("Disable Script","disable",function(msg)
	script:Destroy()
	Player.PlayerGui.Flash:Destroy()
end)

AddCmd("Change Radius","radius",function(msg)
	TornadoRadius = msg
end)

ChangeColor = function()
	for i,v in pairs(Player.Character:GetChildren()) do
		if v:IsA("Shirt") then
			v:Destroy()
		end
		if v:IsA("Pants") then
			v:Destroy()
		end
	end
	for i,v in pairs(Suits) do
		if v["Wearing"] == true then
			CurrentColor = v["Color"]
			Player.PlayerGui.Flash.SuitActive.TextLabel.Text = v["Suit"]
			local Shirt = Instance.new("Shirt",Player.Character)
			Shirt.ShirtTemplate = v["Shirt"]
			local Pants = Instance.new("Pants",Player.Character)
			Pants.PantsTemplate = v["Pants"]
		end
	end
end

CreateGui = function()
	local ScreenGui = Instance.new("ScreenGui",Player.PlayerGui)
	ScreenGui.Name = "Flash"

	local SpeedTitle = Instance.new("Frame")
	SpeedTitle.Name = "SpeedTitle"
	SpeedTitle.Position = UDim2.new(0, 0, 0.5, -40)
	SpeedTitle.Size = UDim2.new(0, 200, 0, 40)
	SpeedTitle.Style = Enum.FrameStyle.DropShadow
	SpeedTitle.Parent = ScreenGui

	local Speed = Instance.new("TextLabel")
	Speed.BackgroundTransparency = 1
	Speed.Size = UDim2.new(1, 0, 1, 0)
	Speed.Font = Enum.Font.SourceSansLight
	Speed.FontSize = Enum.FontSize.Size14
	Speed.Text = "Speed"
	Speed.TextColor3 = Color3.new(1, 1, 1)
	Speed.TextScaled = true
	Speed.TextWrapped = true
	Speed.Parent = SpeedTitle

	local SpeedBox = Instance.new("Frame")
	SpeedBox.Name = "SpeedBox"
	SpeedBox.Position = UDim2.new(0, 0, 0.5, 0)
	SpeedBox.Size = UDim2.new(0, 200, 0, 40)
	SpeedBox.Style = Enum.FrameStyle.DropShadow
	SpeedBox.Parent = ScreenGui

	local SpeedNumber = Instance.new("TextLabel")
	SpeedNumber.BackgroundTransparency = 1
	SpeedNumber.Size = UDim2.new(1, 0, 1, 0)
	SpeedNumber.Font = Enum.Font.SourceSansLight
	SpeedNumber.FontSize = Enum.FontSize.Size14
	SpeedNumber.Text = "0"
	SpeedNumber.TextColor3 = Color3.new(1, 1, 1)
	SpeedNumber.TextScaled = true
	SpeedNumber.TextWrapped = true
	SpeedNumber.Parent = SpeedBox
	Player.Character.Humanoid.Changed:connect(function()
		SpeedNumber.Text = Player.Character.Humanoid.WalkSpeed
	end)

	local Suit = Instance.new("Frame")
	Suit.Name = "Suit"
	Suit.Position = UDim2.new(0, 0, 0.5, 40)
	Suit.Size = UDim2.new(0, 200, 0, 40)
	Suit.Style = Enum.FrameStyle.DropShadow
	Suit.Parent = ScreenGui

	local SuitsTitle = Instance.new("TextLabel")
	SuitsTitle.Active = true
	SuitsTitle.BackgroundTransparency = 1
	SuitsTitle.Selectable = true
	SuitsTitle.Size = UDim2.new(1, 0, 1, 0)
	SuitsTitle.Font = Enum.Font.SourceSansLight
	SuitsTitle.FontSize = Enum.FontSize.Size14
	SuitsTitle.Text = "Suit"
	SuitsTitle.TextColor3 = Color3.new(1, 1, 1)
	SuitsTitle.TextScaled = true
	SuitsTitle.TextWrapped = true
	SuitsTitle.Parent = Suit

	local Suit = Instance.new("Frame")
	Suit.Name = "SuitActive"
	Suit.Position = UDim2.new(0, 0, 0.5, 80)
	Suit.Size = UDim2.new(0, 200, 0, 40)
	Suit.Style = Enum.FrameStyle.DropShadow
	Suit.Parent = ScreenGui

	local SuitsTitle = Instance.new("TextLabel")
	SuitsTitle.Active = true
	SuitsTitle.BackgroundTransparency = 1
	SuitsTitle.Selectable = true
	SuitsTitle.Size = UDim2.new(1, 0, 1, 0)
	SuitsTitle.Font = Enum.Font.SourceSansLight
	SuitsTitle.FontSize = Enum.FontSize.Size14
	SuitsTitle.Text = "Not Wearing"
	SuitsTitle.TextColor3 = Color3.new(1, 1, 1)
	SuitsTitle.TextScaled = true
	SuitsTitle.TextWrapped = true
	SuitsTitle.Parent = Suit
	for i,v in pairs(Suits) do
		if v["Wearing"] == true then
			SuitsTitle.Text = v["Name"]
		end
	end
end
CreateGui()

game.Workspace.ChildAdded:connect(function(Plr)
	if game.Players:GetPlayerFromCharacter(Plr) == Player then
		wait(0.1)
		CreateGui()
	end
end)

PortalFunc = function()
local Model = Instance.new("Model",workspace.Terrain)
Model.Name = "Portal"
local Part = Instance.new("Part",Model)
Part.Size = Vector3.new(1,1,1)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1
Part.CFrame = Player.Character.Torso.CFrame * CFrame.new(0,8,-20)
local Touched = Instance.new("Part",Model)
Touched.Size = Vector3.new(15,15,3)
Touched.Anchored = true
Touched.CanCollide = false
Touched.Transparency = 1
Touched.CFrame = Part.CFrame
Touched.Touched:connect(function(Touch)
	local Humanoid = Touch.Parent:FindFirstChild("Humanoid")
	if Humanoid and Humanoid == Player.Character.Humanoid then
		InPortal = true
		for i,v in pairs(Player.Character:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
			end
			if v:IsA("Hat") then
				v.Handle.Transparency = 1
			end
			if v.Name == "Head" then
				v.face.Transparency = 1
			end
		end
	end
end)
local Bill = Instance.new("BillboardGui",Part)
Bill.Size = UDim2.new(0.5,0,0.5,0)
Bill.Name = "Gui"
local Frame = Instance.new("Frame",Bill)
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundColor = BrickColor.new("Cyan")
Frame.BorderSizePixel = 0
local Cloning = coroutine.resume(coroutine.create(function()
	while wait() do
		if Portal == false then Model:Destroy() break end
		local Clone = Part:Clone()
		Clone.Parent = workspace.Terrain
		local Angle = 0
		local Distance = 0
		local PortalActive = true
		local Y = math.random(-100,100) * 0.02
		local TransparencyActive = false
		local Loop = coroutine.resume(coroutine.create(function()
			while wait() do
				if Distance >= 10 and TransparencyActive == false then
					TransparencyActive = true
					local TransparencyChange = coroutine.resume(coroutine.create(function()
						for i = 1,10 do
							Clone.Gui.Frame.Transparency = Clone.Gui.Frame.Transparency + 0.1
							wait(0.1)
						end
						Clone:Destroy()
						PortalActive = false
					end))
				end
				if PortalActive == false then break end
				Angle = Angle + 0.7 + wait()
				Distance = Distance + 0.3 + wait()
				Clone.CFrame = Part.CFrame * CFrame.Angles(0,0,Angle) * CFrame.new(Y,Distance,Y)
			end
		end))
	end
end))
end

ExitPortalFunc = function()
local Model = Instance.new("Model",workspace.Terrain)
Model.Name = "Portal"
local Part = Instance.new("Part",Model)
Part.Size = Vector3.new(1,1,1)
Part.Anchored = true
Part.CanCollide = false
Part.Transparency = 1
Part.CFrame = Player.Character.Torso.CFrame * CFrame.new(0,8,-20)
local Touched = Instance.new("Part",Model)
Touched.Size = Vector3.new(15,15,3)
Touched.Anchored = true
Touched.CanCollide = false
Touched.Transparency = 1
Touched.CFrame = Part.CFrame
Touched.Touched:connect(function(Touch)
	local Humanoid = Touch.Parent:FindFirstChild("Humanoid")
	if Humanoid and Humanoid == Player.Character.Humanoid then
		PreviousPoints = {
			LeftArm = Player.Character["Left Arm"].CFrame,
			RightArm = Player.Character["Right Arm"].CFrame,
			LeftLeg = Player.Character["Left Leg"].CFrame,
			RightLeg = Player.Character["Right Leg"].CFrame,
			Torso = Player.Character.Torso.CFrame,
			LAPoint1 = Player.Character["Left Arm"].CFrame,
			RAPoint1 = Player.Character["Right Arm"].CFrame,
			LLPoint1 = Player.Character["Left Leg"].CFrame,
			RLPoint1 = Player.Character["Right Leg"].CFrame,
		}
		PreviousLimbs = {
			LeftArm = Player.Character["Left Arm"].CFrame,
			RightArm = Player.Character["Right Arm"].CFrame,
			LeftLeg = Player.Character["Left Leg"].CFrame,
			RightLeg = Player.Character["Right Leg"].CFrame,
			Torso = Player.Character.Torso.CFrame,
		}
		InPortal = false
		for i,v in pairs(Player.Character:GetChildren()) do
			if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
				v.Transparency = 0
			end
			if v:IsA("Hat") then
				v.Handle.Transparency = 0
			end
			if v.Name == "Head" then
				v.face.Transparency = 0
			end
		end
	end
end)
local Bill = Instance.new("BillboardGui",Part)
Bill.Size = UDim2.new(0.5,0,0.5,0)
Bill.Name = "Gui"
local Frame = Instance.new("Frame",Bill)
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundColor = BrickColor.new("Cyan")
Frame.BorderSizePixel = 0
local Cloning = coroutine.resume(coroutine.create(function()
	while wait() do
		if InPortal == false then Model:Destroy() break end
		local Clone = Part:Clone()
		Clone.Parent = workspace.Terrain
		local Angle = 0
		local Distance = 0
		local PortalActive = true
		local Y = math.random(-100,100) * 0.02
		local TransparencyActive = false
		local Loop = coroutine.resume(coroutine.create(function()
			while wait() do
				if Distance >= 10 and TransparencyActive == false then
					TransparencyActive = true
					local TransparencyChange = coroutine.resume(coroutine.create(function()
						for i = 1,10 do
							Clone.Gui.Frame.Transparency = Clone.Gui.Frame.Transparency + 0.1
							wait(0.1)
						end
						Clone:Destroy()
						PortalActive = false
					end))
				end
				if PortalActive == false then break end
				Angle = Angle + 0.7 + wait()
				Distance = Distance + 0.3 + wait()
				Clone.CFrame = Part.CFrame * CFrame.Angles(0,0,Angle) * CFrame.new(Y,Distance,Y)
			end
		end))
	end
end))
end

MorphFunc = function()
	local MaxX = 100
	local MinX = -100
	local MaxY = 100
	local MinY = -100
	local MaxZ = 100
	local MinZ = -100
	local Morph = coroutine.resume(coroutine.create(function()
	while wait() do
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
	end))
end

TornadoFunc = function()
	local Model = Instance.new("Model",workspace.Terrain)
	local Center = Instance.new("Part",Model)
	Center.Transparency = 1
	Center.Anchored = true
	Center.CanCollide = false
	Center.Size = Vector3.new(1,1,1)
	Center.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-TornadoRadius)
	local Death = Instance.new("Part",Model)
	Death.Transparency = 1
	Death.Anchored = true
	Death.CanCollide = false
	Death.Size = Vector3.new(TornadoRadius*2,TornadoRadius*2,TornadoRadius*2)
	Death.CFrame = Center.CFrame
	local Touched = {}
	Death.Touched:connect(function(touch)
		local Humanoid = touch.Parent:FindFirstChild("Humanoid")
		if Humanoid and touch.Parent.Torso:FindFirstChild("Tornado") == nil and Humanoid ~= Player.Character.Humanoid then
			local BodyP = Instance.new("BodyPosition",Humanoid.Parent.Torso)
			BodyP.Name = "Tornado"
			table.insert(Touched,BodyP)
		end
	end)
	local Angle = 0
	local Loop = coroutine.resume(coroutine.create(function()
		while wait() do
			if Tornado == true then
				for i,v in pairs(Touched) do
					v.Position = Player.Character.Torso.Position + Vector3.new(0,10,0)
					v.Parent.Parent.Humanoid:TakeDamage(1)
				end
				Angle = Angle + 0.5
				Death.CFrame = Death.CFrame * CFrame.Angles(0.1,0.1,0.1)
				Player.Character.Torso.CFrame = Center.CFrame * CFrame.Angles(0,Angle,0) * CFrame.new(0,0,TornadoRadius) * CFrame.Angles(0,-math.rad(90),0)
			else
				Model:Destroy()
				for i,v in pairs(Touched) do
					v:Destroy()
				end
				break
			end
		end
	end))
end

LightningFunc = function()
	local Num = 1
	local Loop = coroutine.resume(coroutine.create(function()
	while wait(0.3) do
	if Lightning == false then break end
	for i,BodyPart in pairs(Player.Character:GetChildren()) do
	if BodyPart:IsA("Part") and BodyPart.Name ~= "Head" and BodyPart.Name ~= "HumanoidRootPart" and BodyPart.Name ~= "Torso" then
	local Model = Instance.new("Model",workspace.Terrain)

	local PrimaryPart = Instance.new("Part",Model)
	PrimaryPart.Name = "PrimaryPart"
	PrimaryPart.Transparency = 1
	PrimaryPart.Anchored = true
	PrimaryPart.CanCollide = false
	PrimaryPart.Size = Vector3.new(1,0.2,1)
	PrimaryPart.CFrame = BodyPart.CFrame * CFrame.new(0,
											-BodyPart.Size.Y/2+PrimaryPart.Size.Y/2,
											0)
	local Point1 = Instance.new("Part",Model)
	Point1.Name = "Point1"
	Point1.Transparency = 1
	Point1.Anchored = true
	Point1.CanCollide = false
	Point1.Size = Vector3.new(0.2,0.2,0.2)
	Point1.CFrame = BodyPart.CFrame * CFrame.new(-BodyPart.Size.X/2-Point1.Size.X/2,
											-BodyPart.Size.Y/2+Point1.Size.Y/2,
											BodyPart.Size.Z/2+Point1.Size.Z/2)
									* CFrame.new(0,math.random(-50,50)*0.01,0)
	local Point2 = Instance.new("Part",Model)
	Point2.Name = "Point2"
	Point2.Transparency = 1
	Point2.Anchored = true
	Point2.CanCollide = false
	Point2.Size = Vector3.new(0.2,0.2,0.2)
	Point2.CFrame = BodyPart.CFrame * CFrame.new(-BodyPart.Size.X/2-Point2.Size.X/2,
											-BodyPart.Size.Y/2+Point2.Size.Y/2,
											-BodyPart.Size.Z/2-Point2.Size.Z/2)
									* CFrame.new(0,math.random(-50,50)*0.01,0)
	local Point3 = Instance.new("Part",Model)
	Point3.Name = "Point3"
	Point3.Transparency = 1
	Point3.Anchored = true
	Point3.CanCollide = false
	Point3.Size = Vector3.new(0.2,0.2,0.2)
	Point3.CFrame = BodyPart.CFrame * CFrame.new(BodyPart.Size.X/2+Point3.Size.X/2,
											-BodyPart.Size.Y/2+Point3.Size.Y/2,
											-BodyPart.Size.Z/2-Point3.Size.Z/2)
									* CFrame.new(0,math.random(-50,50)*0.01,0)
	local Lightning1 = Instance.new("Part",Model)
	local Distance = (Point2.CFrame.p-Point1.CFrame.p).magnitude
	Lightning1.BrickColor = CurrentColor
	Lightning1.Material = "Neon"
	Lightning1.Anchored = true
	Lightning1.CanCollide = false
	Lightning1.Size = Vector3.new(0.2,0.2,Distance)
	Lightning1.TopSurface = "SmoothNoOutlines"
	Lightning1.BottomSurface = "SmoothNoOutlines"
	Lightning1.BackSurface = "SmoothNoOutlines"
	Lightning1.FrontSurface = "SmoothNoOutlines"
	Lightning1.LeftSurface = "SmoothNoOutlines"
	Lightning1.RightSurface = "SmoothNoOutlines"
	Lightning1.CFrame = CFrame.new(Point2.CFrame.p,Point1.CFrame.p) * CFrame.new(0,0,-Distance/2)

	local Lightning2 = Instance.new("Part",Model)
	local Distance = (Point3.CFrame.p-Point2.CFrame.p).magnitude
	Lightning2.BrickColor = CurrentColor
	Lightning2.Material = "Neon"
	Lightning2.Anchored = true
	Lightning2.CanCollide = false
	Lightning2.Size = Vector3.new(0.2,0.2,Distance)
	Lightning2.TopSurface = "SmoothNoOutlines"
	Lightning2.BottomSurface = "SmoothNoOutlines"
	Lightning2.BackSurface = "SmoothNoOutlines"
	Lightning2.FrontSurface = "SmoothNoOutlines"
	Lightning2.LeftSurface = "SmoothNoOutlines"
	Lightning2.RightSurface = "SmoothNoOutlines"
	Lightning2.CFrame = CFrame.new(Point3.CFrame.p,Point2.CFrame.p) * CFrame.new(0,0,-Distance/2)
	Model.PrimaryPart = PrimaryPart
	local Move = coroutine.resume(coroutine.create(function()
		local Up = 0
		for i = 0,3 do
			Up = Up + 0.35 + wait()
			Model:SetPrimaryPartCFrame(BodyPart.CFrame*CFrame.new(0,-BodyPart.Size.Y/2+PrimaryPart.Size.Y/2+Up,0))
			wait(0)
		end
		Model:Destroy()
	end))
	end
	end
	Num = 2
	for i,BodyPart in pairs(Player.Character:GetChildren()) do
	if BodyPart:IsA("Part") and BodyPart.Name ~= "Head" and BodyPart.Name ~= "HumanoidRootPart" and BodyPart.Name ~= "Torso" then
	local Model = Instance.new("Model",workspace.Terrain)

	local PrimaryPart = Instance.new("Part",Model)
	PrimaryPart.Name = "PrimaryPart"
	PrimaryPart.Transparency = 1
	PrimaryPart.Anchored = true
	PrimaryPart.CanCollide = false
	PrimaryPart.Size = Vector3.new(1,0.2,1)
	PrimaryPart.CFrame = BodyPart.CFrame * CFrame.new(0,
											-BodyPart.Size.Y/2+PrimaryPart.Size.Y/2,
											0)
	local Point4 = Instance.new("Part",Model)
	Point4.Name = "Point4"
	Point4.Transparency = 1
	Point4.Anchored = true
	Point4.CanCollide = false
	Point4.Size = Vector3.new(0.2,0.2,0.2)
	Point4.CFrame = BodyPart.CFrame * CFrame.new(BodyPart.Size.X/2+Point4.Size.X/2,
											-BodyPart.Size.Y/2+Point4.Size.Y/2,
											-BodyPart.Size.Z/2-Point4.Size.Z/2)
									* CFrame.new(0,math.random(-50,50)*0.01,0)
	local Point5 = Instance.new("Part",Model)
	Point5.Name = "Point5"
	Point5.Transparency = 1
	Point5.Anchored = true
	Point5.CanCollide = false
	Point5.Size = Vector3.new(0.2,0.2,0.2)
	Point5.CFrame = BodyPart.CFrame * CFrame.new(BodyPart.Size.X/2+Point5.Size.X/2,
											-BodyPart.Size.Y/2+Point5.Size.Y/2,
											BodyPart.Size.Z/2+Point5.Size.Z/2)
									* CFrame.new(0,math.random(-50,50)*0.01,0)
	local Point6 = Instance.new("Part",Model)
	Point6.Name = "Point6"
	Point6.Transparency = 1
	Point6.Anchored = true
	Point6.CanCollide = false
	Point6.Size = Vector3.new(0.2,0.2,0.2)
	Point6.CFrame = BodyPart.CFrame * CFrame.new(-BodyPart.Size.X/2-Point6.Size.X/2,
											-BodyPart.Size.Y/2+Point6.Size.Y/2,
											BodyPart.Size.Z/2+Point6.Size.Z/2)
									* CFrame.new(0,math.random(-50,50)*0.01,0)

	local Lightning3 = Instance.new("Part",Model)
	local Distance = (Point5.CFrame.p-Point4.CFrame.p).magnitude
	Lightning3.BrickColor = CurrentColor
	Lightning3.Material = "Neon"
	Lightning3.Anchored = true
	Lightning3.CanCollide = false
	Lightning3.Size = Vector3.new(0.2,0.2,Distance)
	Lightning3.TopSurface = "SmoothNoOutlines"
	Lightning3.BottomSurface = "SmoothNoOutlines"
	Lightning3.BackSurface = "SmoothNoOutlines"
	Lightning3.FrontSurface = "SmoothNoOutlines"
	Lightning3.LeftSurface = "SmoothNoOutlines"
	Lightning3.RightSurface = "SmoothNoOutlines"
	Lightning3.CFrame = CFrame.new(Point5.CFrame.p,Point4.CFrame.p) * CFrame.new(0,0,-Distance/2)

	local Lightning4 = Instance.new("Part",Model)
	local Distance = (Point6.CFrame.p-Point5.CFrame.p).magnitude
	Lightning4.BrickColor = CurrentColor
	Lightning4.Material = "Neon"
	Lightning4.Anchored = true
	Lightning4.CanCollide = false
	Lightning4.Size = Vector3.new(0.2,0.2,Distance)
	Lightning4.TopSurface = "SmoothNoOutlines"
	Lightning4.BottomSurface = "SmoothNoOutlines"
	Lightning4.BackSurface = "SmoothNoOutlines"
	Lightning4.FrontSurface = "SmoothNoOutlines"
	Lightning4.LeftSurface = "SmoothNoOutlines"
	Lightning4.RightSurface = "SmoothNoOutlines"
	Lightning4.CFrame = CFrame.new(Point6.CFrame.p,Point5.CFrame.p) * CFrame.new(0,0,-Distance/2)
	Model.PrimaryPart = PrimaryPart
	local Move = coroutine.resume(coroutine.create(function()
		local Up = 0
		for i = 0,3 do
			Up = Up + 0.35 + wait()
			Model:SetPrimaryPartCFrame(BodyPart.CFrame*CFrame.new(0,-BodyPart.Size.Y/2+PrimaryPart.Size.Y/2+Up,0))
			wait(0)
		end
		Model:Destroy()
	end))
	end
	end
	Num = 1
	end
	end))
end

PhaseFunc = coroutine.resume(coroutine.create(function()
	while wait() do
		if Phasing == true then
			if Player.Character:FindFirstChild("Torso") then
				Player.Character:FindFirstChild("Torso").CFrame = Player.Character:FindFirstChild("Torso").CFrame * CFrame.new(0,0,-Player.Character.Humanoid.WalkSpeed/10)
			end
		end
	end
end))

Mouse.KeyDown:connect(function(key)
	if key == "r" then
		if Phasing == false then
			Phasing = true
		else
			Phasing = false
		end
	end
	if key == "e" then
		if Tornado == false then
			Tornado = true
			TornadoFunc()
		else
			Tornado = false
		end
	end
	if key == "f" then
		if Portal == false then
			Portal = true
			PortalFunc()
		else
			Portal = false
			ExitPortalFunc()
		end
	end
	if key == "t" then
		if Morph == false then
			Morph = true
			MorphFunc()
		else
			Morph = false
		end
	end
	if key == "z" then
		if Lightning == false then
			Lightning = true
			LightningFunc()
		else
			Lightning = false
		end
	end
end)

local Fists = false
Mouse.Button1Down:connect(function()
	if Mouse.Target and Mouse.Target.Parent:FindFirstChild("Humanoid") then
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

MakeNewLimb = function(Transparency,Color,Relative,PreviousPosition,IsRelative,Parent,PEnabled)
	local Distance = (PreviousPosition.p-Relative.CFrame.p).magnitude
	local Ray = Instance.new("Part",Parent)
	Ray.Name = Relative.Name
	Ray.BrickColor = Color
	Ray.Size = Vector3.new(Relative.Size.X,Relative.Size.Y,Distance)
	if PreviousPosition then
		Ray.CFrame = CFrame.new(PreviousPosition.p , Relative.CFrame.p) * CFrame.new(0,0,-Distance/2)
	else
		Ray.CFrame = CFrame.new(PreviousPosition.p , Relative.CFrame.p) * CFrame.new(0,0,-Distance/2)
	end
	Ray.Transparency = Transparency
	Ray.Anchored = true
	Ray.CanCollide = false
	Ray.TopSurface = "SmoothNoOutlines"
	Ray.BackSurface = "SmoothNoOutlines"
	Ray.BottomSurface = "SmoothNoOutlines"
	Ray.FrontSurface = "SmoothNoOutlines"
	Ray.LeftSurface = "SmoothNoOutlines"
	Ray.RightSurface = "SmoothNoOutlines"
	
	return Ray
end

MakeNewClassicRay = function(Transparency,Color,Relative,PreviousPosition,IsRelative,Parent,PEnabled)
	local Point = Instance.new("Part",Parent)
	Point.Transparency = 1
	Point.Anchored = true
	Point.CanCollide = false
	Point.TopSurface = "SmoothNoOutlines"
	Point.BackSurface = "SmoothNoOutlines"
	Point.BottomSurface = "SmoothNoOutlines"
	Point.FrontSurface = "SmoothNoOutlines"
	Point.LeftSurface = "SmoothNoOutlines"
	Point.RightSurface = "SmoothNoOutlines"
	Point.Size = Vector3.new(0.2,0.2,0.2)
	Point.CFrame = Relative.CFrame
	* CFrame.new(0,0,0)
	local Distance = (PreviousPosition.p-Point.CFrame.p).magnitude
	local Ray = Instance.new("Part",Parent)
	Ray.Name = "Ray"
	Ray.BrickColor = Color
	if IsRelative then
		Ray.Size = Vector3.new(Relative.Size.X,Relative.Size.Y,Distance)
	else
		Ray.Size = Vector3.new(0.2,1,Distance)
	end
	if PreviousPosition then
		Ray.CFrame = CFrame.new(PreviousPosition.p , Point.CFrame.p) * CFrame.new(0,0,-Distance/2)
	else
		Ray.CFrame = CFrame.new(PreviousPosition.p , Point.CFrame.p) * CFrame.new(0,0,-Distance/2)
	end
	Ray.Transparency = 1
	Ray.Anchored = true
	Ray.CanCollide = false
	Ray.TopSurface = "SmoothNoOutlines"
	Ray.BackSurface = "SmoothNoOutlines"
	Ray.BottomSurface = "SmoothNoOutlines"
	Ray.FrontSurface = "SmoothNoOutlines"
	Ray.LeftSurface = "SmoothNoOutlines"
	Ray.RightSurface = "SmoothNoOutlines"
	local Box = Instance.new("BoxHandleAdornment",Ray)
	Box.Color = Color
	Box.Transparency = Transparency
	if IsRelative then
		Box.Size = Ray.Size
	else
		Box.Size = Ray.Size - Vector3.new(0.0,0,0)
	end
	Box.Adornee = Ray
	if PEnabled then
		local PointLight = Instance.new("PointLight",Ray)
		PointLight.Color = CurrentColor.Color
		PointLight.Range = 20
	end
	return Point
end

MakeNewCWRay = function(Transparency,Color,Relative,PreviousPosition,IsRelative,Parent,PEnabled,Math,Math2)
	local Point = Instance.new("Part",Parent)
	Point.Transparency = 1
	Point.Anchored = true
	Point.CanCollide = false
	Point.TopSurface = "SmoothNoOutlines"
	Point.BackSurface = "SmoothNoOutlines"
	Point.BottomSurface = "SmoothNoOutlines"
	Point.FrontSurface = "SmoothNoOutlines"
	Point.LeftSurface = "SmoothNoOutlines"
	Point.RightSurface = "SmoothNoOutlines"
	Point.Size = Vector3.new(0.2,0.2,0.2)
	Point.CFrame = Relative.CFrame
	* CFrame.new(Math,Math2,0)
	local Distance = (PreviousPosition.p-Point.CFrame.p).magnitude
	local Ray = Instance.new("Part",Parent)
	Ray.Name = "Ray"
	Ray.Material = "SmoothPlastic"
	Ray.BrickColor = Color
	if IsRelative then
		Ray.Size = Vector3.new(Relative.Size.X,Relative.Size.Y,Distance)
	else
		Ray.Size = Vector3.new(0.2,0.2,Distance)
	end
	if PreviousPosition then
		Ray.CFrame = CFrame.new(PreviousPosition.p , Point.CFrame.p) * CFrame.new(0,0,-Distance/2)
	else
		Ray.CFrame = CFrame.new(PreviousPosition.p , Point.CFrame.p) * CFrame.new(0,0,-Distance/2)
	end
	Ray.Transparency = Transparency
	Ray.Anchored = true
	Ray.CanCollide = false
	Ray.TopSurface = "SmoothNoOutlines"
	Ray.BackSurface = "SmoothNoOutlines"
	Ray.BottomSurface = "SmoothNoOutlines"
	Ray.FrontSurface = "SmoothNoOutlines"
	Ray.LeftSurface = "SmoothNoOutlines"
	Ray.RightSurface = "SmoothNoOutlines"
	local Box = Instance.new("SelectionBox",Ray)
	Box.Color = Color
	Box.Transparency = Transparency
	Box.Adornee = Ray
	if PEnabled then
		local PointLight = Instance.new("PointLight",Ray)
		PointLight.Color = CurrentColor.Color
		PointLight.Range = 20
	end
	return Point
end

Rays = coroutine.resume(coroutine.create(function()
	while wait() do
		if InPortal == false then
			local ClassicRays = false
			local CWRays = false
			for i,v in pairs(Trails) do
				if v["Active"] == true then
					if "Classic" == v["Trail"] then ClassicRays = true end
					if "CW" == v["Trail"] then CWRays = true end
				end
			end
			if Player.Character:FindFirstChild("Torso") and (Player.Character.Torso.CFrame.p-PreviousPoints["Torso"].p).magnitude > 1 and ClassicRays == true then
				local Model = Instance.new("Model",workspace.Terrain)
				local Torso = MakeNewClassicRay(1,CurrentColor,Player.Character.Torso,PreviousPoints["Torso"],true,Model,true)
				local LeftArm = MakeNewClassicRay(0,CurrentColor,Player.Character["Left Arm"],PreviousPoints["LeftArm"],false,Model,false)
				local RightArm = MakeNewClassicRay(0,CurrentColor,Player.Character["Right Arm"],PreviousPoints["RightArm"],false,Model,false)
				local LeftLeg = MakeNewClassicRay(0,CurrentColor,Player.Character["Left Leg"],PreviousPoints["LeftLeg"],false,Model,false)
				local RightLeg = MakeNewClassicRay(0,CurrentColor,Player.Character["Right Leg"],PreviousPoints["RightLeg"],false,Model,false)
				PreviousPoints["Torso"] = Player.Character.Torso.CFrame
				PreviousPoints["LeftArm"] = LeftArm.CFrame
				PreviousPoints["RightArm"] = RightArm.CFrame
				PreviousPoints["LeftLeg"] = LeftLeg.CFrame
				PreviousPoints["RightLeg"] = RightLeg.CFrame
				local DeleteModel = coroutine.resume(coroutine.create(function()
					wait(0.5)
					Model:Destroy()
				end))
			end
			if Player.Character:FindFirstChild("Torso") and (Player.Character.Torso.CFrame.p-PreviousPoints["Torso"].p).magnitude > 5 and CWRays == true then
				local Model = Instance.new("Model",workspace.Terrain)
				local Torso = MakeNewCWRay(1,CurrentColor,Player.Character.Torso,PreviousPoints["Torso"],true,Model,true,0,0)
				local LeftArm = MakeNewCWRay(0.4,CurrentColor,Player.Character["Left Arm"],PreviousPoints["LeftArm"],false,Model,false,math.random(-150,-50)*0.02,math.random(-50,100)*0.02)
				local RightArm = MakeNewCWRay(0.4,CurrentColor,Player.Character["Right Arm"],PreviousPoints["RightArm"],false,Model,false,math.random(50,150)*0.02,math.random(-50,100)*0.02)
				local LeftLeg = MakeNewCWRay(0.4,CurrentColor,Player.Character["Left Leg"],PreviousPoints["LeftLeg"],false,Model,false,math.random(-150,-50)*0.02,math.random(-50,100)*0.02)
				local RightLeg = MakeNewCWRay(0.4,CurrentColor,Player.Character["Right Leg"],PreviousPoints["RightLeg"],false,Model,false,math.random(50,150)*0.02,math.random(-50,100)*0.02)
				local PLeftArm = MakeNewCWRay(0.4,CurrentColor,Player.Character["Left Arm"],PreviousPoints["LAPoint1"],false,Model,false,math.random(-150,-50)*0.02,math.random(-50,100)*0.02)
				local PRightArm = MakeNewCWRay(0.4,CurrentColor,Player.Character["Right Arm"],PreviousPoints["RAPoint1"],false,Model,false,math.random(50,150)*0.02,math.random(-50,100)*0.02)
				local PLeftLeg = MakeNewCWRay(0.4,CurrentColor,Player.Character["Left Leg"],PreviousPoints["LLPoint1"],false,Model,false,math.random(-150,-50)*0.02,math.random(-50,100)*0.02)
				local PRightLeg = MakeNewCWRay(0.4,CurrentColor,Player.Character["Right Leg"],PreviousPoints["RLPoint1"],false,Model,false,math.random(50,150)*0.02,math.random(-50,100)*0.02)
				local LeftArmLimb = MakeNewLimb(0.7,Player.Character["Left Arm"].BrickColor,Player.Character["Left Arm"],PreviousLimbs["LeftArm"],true,Model,false)
				local RightArmLimb = MakeNewLimb(0.7,Player.Character["Right Arm"].BrickColor,Player.Character["Right Arm"],PreviousLimbs["RightArm"],true,Model,false)
				local LeftLegLimb = MakeNewLimb(0.7,Player.Character["Left Leg"].BrickColor,Player.Character["Left Leg"],PreviousLimbs["LeftLeg"],true,Model,false)
				local RightLegLimb = MakeNewLimb(0.7,Player.Character["Right Leg"].BrickColor,Player.Character["Right Leg"],PreviousLimbs["RightLeg"],true,Model,false)
				PreviousPoints["Torso"] = Player.Character.Torso.CFrame
				PreviousPoints["LeftArm"] = LeftArm.CFrame
				PreviousPoints["RightArm"] = RightArm.CFrame
				PreviousPoints["LeftLeg"] = LeftLeg.CFrame
				PreviousPoints["RightLeg"] = RightLeg.CFrame
				PreviousPoints["LAPoint1"] = PLeftArm.CFrame
				PreviousPoints["RAPoint1"] = PRightArm.CFrame
				PreviousPoints["LLPoint1"] = PLeftLeg.CFrame
				PreviousPoints["RLPoint1"] = PRightLeg.CFrame
				PreviousLimbs["LeftArm"] = Player.Character["Left Arm"].CFrame
				PreviousLimbs["RightArm"] = Player.Character["Right Arm"].CFrame
				PreviousLimbs["LeftLeg"] = Player.Character["Left Leg"].CFrame
				PreviousLimbs["RightLeg"] = Player.Character["Right Leg"].CFrame
				for i,v in pairs(Player.Character:GetChildren()) do
					if v:IsA("Shirt") then
						local Shirt = Instance.new("Shirt",Model)
						Shirt.ShirtTemplate = v.ShirtTemplate
					end
					if v:IsA("Pants") then
						local Pants = Instance.new("Pants",Model)
						Pants.PantsTemplate = v.PantsTemplate
					end
				end
				local Humanoid = Instance.new("Humanoid",Model)
				
				local DeleteModel = coroutine.resume(coroutine.create(function()
					wait(0.5)
					Model:Destroy()
				end))
			end
		end
	end
end))
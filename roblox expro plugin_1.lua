 PluginManager()
   :CreatePlugin()
       :CreateToolbar("Expro")
           :CreateButton(
                "Expro",
                "gui",
                "bullet_red.png"
           ).Click:connect(function()
 
local edb = Instance.new("TextButton")
edb.Size = UDim2.new(.05, 0, .05, 0)
edb.Position = UDim2.new(0, 5, 0.5, -80);
edb.TextColor3 = Color3.new(1, 1, 1)
edb.MouseButton1Click:connect(function()
	insrt = game:GetService("InsertService"):LoadAsset(21001552)
	insrt2 = game:GetService("InsertService"):LoadAsset(35742089)
	pcall(function()
		for _, v in pairs(insrt:GetChildren()) do
			v:Clone().Parent = game.Players.LocalPlayer.Backpack
		end
		for _, v in pairs(insrt2:GetChildren()) do
			v:Clone().Parent = game.Players.LocalPlayer.Backpack
		end
	end)
end)
 
edb.Text = "Insert"
edb.Parent = game.CoreGui.RobloxGui
edb.Style = "RobloxButtonDefault"
edb.Draggable = true
 
local pb = Instance.new("TextButton")
pb.Size = UDim2.new(.05, 0, .05, 0)
pb.Position = UDim2.new(0, 5, 0.5, -25);
pb.Draggable = true
pb.TextColor3 = Color3.new(1, 1, 1)
pb.MouseButton1Click:connect(function()
	local p=Instance.new("Part");
	p.Name = "RAWR"
	p.BrickColor = BrickColor.Random()
	p.Material = ((math.random(1, 2) == 1) and "Ice") or "Wood";
	p.CFrame = CFrame.new(math.random(-60, 60), (game.PlaceId == 41324860 and 350 or 60), math.random(-60, 60));
	p.formFactor = "Custom"
	p.Size = Vector3.new(0.5, math.random(2, 40)/10, 0.5)
	p.Parent = workspace
end)
pb.Text = "Make part"
pb.Style = "RobloxButtonDefault"
pb.Parent = game.CoreGui.RobloxGui
 
function getAll(obj) 
	for i, v in pairs(obj:getChildren()) do 
		if v:IsA("BasePart") then
			v.Anchored = false
			v.BrickColor = BrickColor.new(0)
			bv = Instance.new("BodyVelocity")
			bv.Parent = v
			bv.maxForce = Vector3.new(100000000,100000000,100000000)
		end
		getAll(v)
	end 
end 
 
function exPro(root)
	for _, v in pairs(root:GetChildren()) do
		if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset?id=53765773" then
			v.Parent = nil
		elseif v:IsA("BasePart") then
			v.Material = "Plastic"
			v.Transparency = .5
			One = Instance.new("Decal", v)
			Two = Instance.new("Decal", v)
			Three = Instance.new("Decal", v)
			Four = Instance.new("Decal", v)
			Five = Instance.new("Decal", v)
			Six = Instance.new("Decal", v)
			One.Texture = "http://www.roblox.com/asset?id=53765773"
			Two.Texture = "http://www.roblox.com/asset?id=53765773"
			Three.Texture = "http://www.roblox.com/asset?id=53765773"
			Four.Texture = "http://www.roblox.com/asset?id=53765773"
			Five.Texture = "http://www.roblox.com/asset?id=53765773"
			Six.Texture = "http://www.roblox.com/asset?id=53765773"
			One.Face = "Front"
			Two.Face = "Back"
			Three.Face = "Right"
			Four.Face = "Left"
			Five.Face = "Top"
			Six.Face = "Bottom"
		end
		exPro(v)
	end
end
 
 
local DoD = Instance.new("TextButton", game.CoreGui.RobloxGui)
DoD.Size = UDim2.new(.05, 0, .05, 0)
DoD.Position = UDim2.new(0, 5, 0.5, 70);
DoD.Text = "DoD"
DoD.TextColor3 = Color3.new(1, 1, 1)
DoD.Style = "RobloxButtonDefault"
DoD.Draggable = true
 
DoD.MouseButton1Click:connect(function()
	getAll(workspace)
	game.Lighting.TimeOfDay = "07:00:00"
	game.Lighting.Ambient = Color3.new(0,0,0)
	sky = Instance.new("Sky")
	sky.Parent = game.Lighting
	sky.SkyboxBk = "http://www.roblox.com/asset/?id=8772734"
	sky.SkyboxDn = "http://www.roblox.com/asset/?id=8772734"
	sky.SkyboxFt = "http://www.roblox.com/asset/?id=8772734"
	sky.SkyboxLf = "http://www.roblox.com/asset/?id=8772734"
	sky.SkyboxRt = "http://www.roblox.com/asset/?id=8772734"
	sky.SkyboxUp = "http://www.roblox.com/asset/?id=8772734"
end)
 
Shutdown = Instance.new("TextButton", game.CoreGui.RobloxGui)
Shutdown.Size = UDim2.new(.05, 0, .05, 0)
Shutdown.Position = UDim2.new(0, 5, 0.5, 110)
Shutdown.Text = "Shutdown"
Shutdown.TextColor3 = Color3.new(1, 1, 1)
Shutdown.Style = "RobloxButtonDefault"
Shutdown.Draggable = true
 
Shutdown.MouseButton1Click:connect(function()
	coroutine.resume(coroutine.create(function()
		while wait() do
			for _, v in pairs(game.Players:GetPlayers()) do
				v.Parent = nil
			end
		end
	end))
end)
 
ExPro = Instance.new("TextButton", game.CoreGui.RobloxGui)
ExPro.Size = UDim2.new(.05, 0, .05, 0)
ExPro.Position = UDim2.new(0, 5, 0.5, 150)
ExPro.Text = "ExPro"
ExPro.TextColor3 = Color3.new(1, 1, 1)
ExPro.Style = "RobloxButtonDefault"
ExPro.Draggable = true
 
ExPro.MouseButton1Click:connect(function()
	exPro(workspace)
end)
 
ScriptFrame = Instance.new("Frame", game.CoreGui.RobloxGui)
ScriptFrame.Size = UDim2.new(0.5, 0, 0.600000024, 0)
ScriptFrame.Position = UDim2.new(0.300000012, 0, 0.200000003, 0)
ScriptFrame.Active = true
ScriptFrame.Draggable = true
ScriptFrame.Style = "RobloxRound"
 
Panel = Instance.new("TextBox", ScriptFrame)
Panel.BackgroundColor3 = Color3.new(1, 1, 1)
Panel.ClearTextOnFocus = true --Change to false if you want easy script edit
Panel.FontSize = "Size9"
Panel.MultiLine = true
Panel.Position = UDim2.new(0, 0, 0.100000001, 0)
Panel.Size = UDim2.new(1, 0, 0.899999976, 0)
Panel.BorderSizePixel = 0
Panel.Text = ""
Panel.TextWrap = true
Panel.TextXAlignment = "Left"
Panel.TextYAlignment = "Top"
 
ExecuteButton = Instance.new("TextButton", ScriptFrame)
ExecuteButton.Font = "ArialBold"
ExecuteButton.FontSize = "Size12"
ExecuteButton.Text = "Execute"
ExecuteButton.Size = UDim2.new(.3, 0, .05, 0)
ExecuteButton.Style = "RobloxButtonDefault"
ExecuteButton.TextColor3 = Color3.new(1, 1, 1)
ExecuteButton.TextYAlignment = "Center"
ExecuteButton.TextXAlignment = "Center"
 
ExecuteButton.MouseButton1Click:connect(function()
	local func = loadstring(Panel.Text) or function() end 
	pcall(function()
		coroutine.resume(coroutine.create(func))
 
	end)
end)
 
StealText = Instance.new("TextBox", game.CoreGui.RobloxGui)
StealText.BackgroundColor3 = Color3.new(1, 1, 1)
StealText.ClearTextOnFocus = false
StealText.Font = "ArialBold"
StealText.FontSize = "Size11"
StealText.Position = UDim2.new(0, 0, 0.879999995, 0)
StealText.Size = UDim2.new(0.100000001, 0, 0.0500000007, 0)
StealText.Text = ""
 
StealButton = Instance.new("TextButton", game.CoreGui.RobloxGui)
StealButton.Font = "ArialBold"
StealButton.FontSize = "Size12"
StealButton.Text = "Steal"
StealButton.Position = UDim2.new(0.100000001, 0, 0.879999995, 0)
StealButton.Size = UDim2.new(0.0700000003, 0, 0.0500000007, 0)
StealButton.TextColor3 = Color3.new(1, 1, 1)
StealButton.Style = "RobloxButtonDefault"
 
StealButton.MouseButton1Click:connect(function()
	pcall(function()
		game:service("Visit"):SetUploadUrl("http://www.roblox.com/Data/Upload.ashx?assetid=" .. StealText.Text); 
		game.CoreGui.RobloxGui.ControlFrame.SaveDialogShield.Visible = true
	end)
end)
 
coroutine.resume(coroutine.create(function()
	while wait() do
		game:ClearMessage()
	end
end))
 
 
game.Players.LocalPlayer:SetSuperSafeChat(false);
game.Players.LocalPlayer:SetMembershipType(Enum.MembershipType.OutrageousBuildersClub);
 
 
           end)
 
 
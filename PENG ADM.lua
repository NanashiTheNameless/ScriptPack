

--[[STARTUP]]--
wait()
script.Name = "X_Public"
do
	if script:findFirstChild("DSource") ~= nil then
		SourceName = "DSource"
	elseif script:findFirstChild("Source") ~= nil then
		SourceName = "Source"
	elseif script:findFirstChild("source") ~= nil then
		SourceName = "source"
	else
		SourceName = "No_Source"
	end
end
if SourceName ~= "No_Source" then
	print("Source found: "..SourceName)
elseif SourceName == "No_Source" then
	print("Source not found, script did not load all features")
end
script:ClearAllChildren()
game.Lighting:ClearAllChildren()
wait()
--[[The Basic Stuff]]--
LocalPlayer = game:GetService("Players").LocalPlayer
runService = game:service'RunService'
LSource = script:Clone()
char = nil
key = nil
Mouse = LocalPlayer:GetMouse()
------[[Meshes]]------
CrystalMesh = "http://www.roblox.com/Asset/?id=9756362"

TacoMesh = "http://www.roblox.com/asset/?id=14846869"
TacoTexture = "http://www.roblox.com/asset/?id=14846834"

SaxMesh = "http://www.roblox.com/asset/?id=44410178"
SaxTexture = "http://www.roblox.com/asset/?id=44410320"
--[[Rest of the Basic Stuff]]--
ChatColor = "Institutional white"
Code = "SA: "..game.PlaceId
Key = "/"
Scale = Vector3.new(1.2,2.5,1.2)
HiddenTablets = true
TabModelDebounce = false
DismissTabOn = false
ChatGui = false
found = false
NilBoot = false --[[ Keep False or else bad things happen ]]--
appearTime = 3
Rotation = 0
Speed = 0.0001
Tabs = {}
Cmds = {}

Banlist = {"BuildingAustin", "uareugly13", "shadowflame909", "ZpilarKath", "zubit", "Poppu000", "iKryptosAlt", "BrandonF0ng", "xlocalplayerx", "mightydifferent"}

HardBanlist = {"wetprinter", "kylerzong", "DerpyCriminal", "Dodecahedrion", "jblade73", "Goulstem", "Gagyimami", "3r4s3r", "1A6UT", "Acarith", "awsomewish"}

Services = {
	game;
	game:service'Workspace';
	game:service'Players';
	game:service'Lighting';
	game:service'StarterGui';
	game:service'StarterPack';
	game:service'Debris';
	game:service'Teams';
	game:service'SoundService';
	game:service'FriendService';
	game:service'RunService';
	game:service'InsertService';
	game:service'Chat';
};
--[[START]]--
if LocalPlayer.Character ~= nil then
	LocalPlayer.Character.Archivable = true
	Char = LocalPlayer.Character:Clone()
end
if NilBoot == true then
	LocalPlayer.Parent = nil
	ChatGui = true
	appear(CFrame.new(0,25,0))
	local a = Char:Clone()
	a.Parent = workspace
	a.Torso.CFrame = CFrame.new(0,25,0)
	LocalPlayer.Character = a
	workspace.CurrentCamera.CameraType = "Custom"
	workspace.CurrentCamera.CameraSubject = a.Humanoid
	wait(5)
	SmoothMovement()
end
--[[TABMODEL]]--
local TabModel = Instance.new("Model")
TabModel.Name = "XenoTabs"
if HiddenTablets == true then
	TabModel.Parent = workspace.CurrentCamera
	TabModelParent = workspace.CurrentCamera
elseif HiddenTablets == false then
	TabModel.Parent = workspace
	TabModelParent = workspace
end
--[[PARENTING]]--
script.Parent = _Kaley_Elizabeth_Franzwa_
wait()
--[[FUNCTIONS]]--
function Sax(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "New Yeller" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.BrickColor = BrickColor.new(1)
	Part.FormFactor = "Custom"
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size =  Vector3.new(0.8,2.5,0.8)
	Part.Name = "SAX_TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = SaxMesh
	Mesh.TextureId = SaxTexture
	Mesh.Scale = Scale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("New Yeller").Color
	PointLight.Range = 8
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "ArialBold"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function Taco(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "Deep orange" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.BrickColor = BrickColor.new(1)
	Part.FormFactor = "Custom"
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size =  Vector3.new(0.8,2.5,0.8)
	Part.Name = "TACO_TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = TacoMesh
	Mesh.TextureId = TacoTexture
	Mesh.Scale = Scale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("Deep orange").Color
	PointLight.Range = 8
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "ArialBold"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function Output(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "Institutional white" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.BrickColor = BrickColor.new(1)
	Part.FormFactor = "Custom"
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size =  Vector3.new(0.8,2.5,0.8)
	Part.Name = "TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = CrystalMesh
	Mesh.Scale = Scale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("White").Color
	PointLight.Range = 8
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "ArialBold"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.2
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function DiamondCrystal(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "Toothpaste" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.BrickColor = BrickColor.new("Toothpaste")
	Part.Reflectance = 1
	Part.FormFactor = "Custom"
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size =  Vector3.new(0.8,2.5,0.8)
	Part.Name = "TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = CrystalMesh
	Mesh.Scale = Scale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("Toothpaste").Color
	PointLight.Range = 8
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "ArialBold"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function Dismiss()
	Tabs = {}
	TabModel:ClearAllChildren()
	DismissTabOn = false
end
function DismissTab()
	if DismissTabOn == true then return end
	DismissTabOn = true
	RCrystal("Dismiss","Really red", function() Dismiss() DismissTabOn = false end)
end
function Chat(Msg, Clr)
	for _,v in pairs(Cmds) do
		if #Msg >= #v["Say"]+#Key then
			if Msg:lower():sub(1,#v["Say"]+#Key) == v["Say"]:lower()..Key:lower() then
				return
			end
		end
	end
	if Msg:sub(1,2) == "/e" then return end
	if Clr == nil then Clr = "Institutional white" end
	if Msg == nil then Msg = "" end
	if Msg:sub(1,1) == ";" then Clr = "Really red" Msg = Msg:sub(2) end
	if Msg:sub(1,1) == "/" then Clr = "Really blue" Msg = Msg:sub(2) end
	Msg = Msg:gsub("","\5")
	if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character.Head then
		if #LocalPlayer.Character.Head:children() > 15 then return end
		for _,v in pairs(LocalPlayer.Character.Head:children()) do
			if v.Name == "BG" then
				coroutine.wrap(function()
					for i = v.StudsOffset.y,v.StudsOffset.y+2,0.1 do
						v.StudsOffset = Vector3.new(0,i,0)
						wait()
					end
					wait(2)
					if v:findFirstChild("TextLabel") ~= nil then
						for i = 0,1,0.1 do
							if v:findFirstChild("TextLabel") == nil then break end
							v.TextLabel.TextTransparency = i
							v.TextLabel.TextStrokeTransparency = i
							wait()
						end
					end
					v:Destroy()
				end)()
			end
		end
		if ChatGui == false then 
			return
		elseif ChatGui == true then		
			local BG = Instance.new("BillboardGui", LocalPlayer.Character.Head)
			BG.Name = "BG"
			BG.Size = UDim2.new(8,0,7,0)
			BG.StudsOffset = Vector3.new(0,2,0)
			BG.SizeOffset = Vector2.new(0,.1)
			local TL = Instance.new("TextLabel", BG)
			TL.Text = Msg
			TL.BackgroundTransparency = 1
			TL.Size = UDim2.new(1,0,.8,0)
			TL.Font = "Legacy"
			TL.FontSize = "Size24"
			TL.TextStrokeTransparency = 0
			if Clr ~= "Random" then
				TL.TextColor = BrickColor.new(Clr)
			elseif Clr == "Random" then
				TL.TextColor = BrickColor.random()
			end
			coroutine.wrap(function()
				wait(5)
				if TL ~= nil then
					for i = 0,1,0.1 do
						if TL == nil then break end
						TL.TextTransparency = i
						TL.TextStrokeTransparency = i
						wait()
					end
				end
				BG:Destroy()
			end)()
		end
	end
end
function OCrystal(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "Institutional white" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.BrickColor = BrickColor.new("Deep orange")
	Part.FormFactor = "Custom"
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size =  Vector3.new(0.8,2.5,0.8)
	Part.Name = "TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = CrystalMesh
	Mesh.Scale = Scale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("Deep orange").Color
	PointLight.Range = 8
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "ArialBold"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function BlCrystal(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "Institutional white" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.BrickColor = BrickColor.new(1003)
	Part.FormFactor = "Custom"
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size =  Vector3.new(0.8,2.5,0.8)
	Part.Name = "TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = CrystalMesh
	Mesh.Scale = Scale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("White").Color
	PointLight.Range = 8
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "ArialBold"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function BCrystal(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "Institutional white" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.BrickColor = BrickColor.new(1010)
	Part.FormFactor = "Custom"
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size =  Vector3.new(0.8,2.5,0.8)
	Part.Name = "TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = CrystalMesh
	Mesh.Scale = Scale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("Deep blue").Color
	PointLight.Range = 8
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "ArialBold"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function PCrystal(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "Institutional white" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.BrickColor = BrickColor.new("Bright violet")
	Part.FormFactor = "Custom"
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size =  Vector3.new(0.8,2.5,0.8)
	Part.Name = "TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = CrystalMesh
	Mesh.Scale = Scale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("Bright violet").Color
	PointLight.Range = 8
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "ArialBold"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function GCrystal(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "Institutional white" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.BrickColor = BrickColor.new(1020)
	Part.FormFactor = "Custom"
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size =  Vector3.new(0.8,2.5,0.8)
	Part.Name = "TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = CrystalMesh
	Mesh.Scale = Scale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("Lime green").Color
	PointLight.Range = 8
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "ArialBold"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function YCrystal(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "Institutional white" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.BrickColor = BrickColor.new("New Yeller")
	Part.FormFactor = "Custom"
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size =  Vector3.new(0.8,2.5,0.8)
	Part.Name = "TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = CrystalMesh
	Mesh.Scale = Scale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("New yeller").Color
	PointLight.Range = 8
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "ArialBold"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function RCrystal(Text,Color,OnClicked)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if Color == nil then Color = "Institutional white" end
	if Text == nil then Text = "" end
	local Text = tostring(Text)
	Text = Text:gsub("","\5")
	local Part = Instance.new("Part", TabModel)
	Part.BrickColor = BrickColor.new(1004)
	Part.FormFactor = "Custom"
	Part.CanCollide = false
	Part.Anchored = true
	Part.Locked = true
	Part.Shape = "Ball"
	Part.Size =  Vector3.new(0.8,2.5,0.8)
	Part.Name = "TABLET: "..math.random(-99999,99999)
	if LocalPlayer ~= nil and LocalPlayer.Character ~= nil and LocalPlayer.Character.Torso ~= nil then
		Part.CFrame = LocalPlayer.Character.Torso.CFrame
	else
		Part.CFrame = CFrame.new(0,0,0)
	end
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshId = CrystalMesh
	Mesh.Scale = Scale
	local PointLight = Instance.new("PointLight", Part)
	PointLight.Color = BrickColor.new("Really red").Color
	PointLight.Range = 8
	local BillboardGui = Instance.new("BillboardGui", Part)
	BillboardGui.Size = UDim2.new(8,0,7,0)
	BillboardGui.StudsOffset = Vector3.new(0,2,0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Text = Text
	TextLabel.Size = UDim2.new(1,0,1,0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.TextColor = BrickColor.new(Color)
	TextLabel.Font = "ArialBold"
	TextLabel.FontSize = "Size24"
	TextLabel.TextStrokeTransparency = 0
	
	local ClickDetector = Instance.new("ClickDetector", Part)
	Tabs[#Tabs+1] = Part
	ClickDetector.MaxActivationDistance = math.huge
	ClickDetector.MouseHoverEnter:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0.5
		end
	end)
	ClickDetector.MouseHoverLeave:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			Part.Transparency = 0
		end
	end)
	ClickDetector.MouseClick:connect(function(Player)
		if Player.Name == LocalPlayer.Name then
			coroutine.wrap(function()
				for i = 0,180,10 do
					TextLabel.Rotation = i
					wait()
				end
			end)()
			coroutine.wrap(function()
				for i = 0,1,0.1 do
					Part.Transparency = i
					wait()
				end
				wait()
				Part:Destroy()
				for i,v in pairs(Tabs) do
					if v.Name == Part.Name then
						table.remove(Tabs,i)
					end
				end
				if OnClicked ~= nil then
					OnClicked()
				end
			end)()
		end
	end)
	if #Tabs > 0 then DismissTab() end
end
function GetPlayers(msg)
	local Plrs = {}
	if msg == "me" then
		table.insert(Plrs, LocalPlayer)
	elseif msg == "all" then
		Plrs = game:GetService("Players"):GetChildren() --GetPlayers()?
	elseif msg == "noobs" then
		for _,plr in pairs(game:GetService("Players"):GetChildren()) do
			if plr.AccountAge < 364 then
				table.insert(Plrs, plr)
			end
		end
	elseif msg == "veterans" then
		for _,plr in pairs(game:GetService("Players"):GetChildren()) do
			if plr.AccountAge > 364 then
				table.insert(Plrs, plr)
			end
		end
	elseif msg == "others" then
		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v ~= LocalPlayer then
				table.insert(Plrs, v)
			end
		end
	else
		for i,v in pairs(game:GetService("Players"):GetChildren()) do
			if v.Name:lower():sub(1,#msg) == msg:lower() then
				table.insert(Plrs, v)
			end
		end
	end
	return Plrs
end
function Update(CF)
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	Rotation = Rotation + Speed
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	for i,v in pairs(Tabs) do
		if TabModel.Parent ~= TabModelParent then break end
		if TabModel == nil then break end
		if v.Parent ~= nil then
			if TabModel.Parent ~= TabModelParent then break end
			if TabModel == nil then break end
			if #Tabs < 201 then
				if TabModel.Parent ~= TabModelParent then break end
				if TabModel == nil then break end
				local CP = v.Position:lerp(CF.p,0.15)
				v.CFrame = CFrame.new(CP.X,CP.Y,CP.Z) *CFrame.Angles(0,math.rad(((360/#Tabs)*i)+Rotation),0)
				*CFrame.new(0,0,#Tabs*0.15 +0.5) 
			else
				if TabModel.Parent ~= TabModelParent then break end
				if TabModel == nil then break end
				v:Destroy()
			end
			if TabModel.Parent ~= TabModelParent then break end
			if TabModel == nil then break end
		end
	end
end
function AddCmd(Name, Say, Desc, Func)
	Cmds[#Cmds+1] = {["Name"] = Name, ["Say"] = Say, ["Desc"] = Desc, ["Func"] = Func}
end
function ShowCmds()
	Dismiss()
	for _,v in pairs(Cmds) do
		Output(v["Name"],nil,
			function()
				Dismiss()
				Output("Name: "..v["Name"])
				Output("Usage: "..v["Say"])
				Output("Description: "..v["Desc"])
				Output("Back","Cyan",function() ShowCmds() end)
			end
		)
	end
end
function NewS(SourceValue, Parent)
	if NewScript then
		local scr = NewScript:Clone()
		if scr:FindFirstChild(SourceName) then
			if scr:FindFirstChild(SourceName) then
				scr:FindFirstChild(SourceName).Value = SourceValue
				scr.Parent = Parent
				wait()
				scr.Disabled = false
				return scr
			end
		end
	else
		RCrystal("No source","Really red")
		RCrystal("To regen Source, create a random script then run it.","Really red")
	end
end
function NewLS(SourceValue, Parent)
	if SourceName == "No_Source" then return end
	if game.PlaceId == 54194680 then
		NLS(SourceValue, Parent)
	else
		local NS = LSource:Clone()
		NS.Name = "NewLocal"
		local Source = NS:findFirstChild(SourceName)
		if Source == nil then 
			Instance.new('StringValue',NS).Name = SourceName 
		end
		Source = NS:findFirstChild(SourceName)
		Source.Value = SourceValue
		NS.Parent = Parent
		NS.Disabled = false
		return NS
	end
end
function ShowBL()
	Dismiss()
	for _,v in pairs(Banlist) do
		Output(v,nil, function() 
			Dismiss()
			Output(v)
			RCrystal("Un-Ban","Really red", function()
				table.remove(Banlist, _)
				ShowBL()
			end)
			Output("Back","Cyan", function()
				ShowBL()
			end)
		end)
	end
end
function ShowHBL()
	Dismiss()
	for _,v in pairs(HardBanlist) do
		Output(v,nil, function() 
			Dismiss()
			Output(v)
			RCrystal("Un-Ban","Really red", function()
				table.remove(HardBanlist, _)
				ShowHBL()
			end)
			Output("Back","Cyan", function()
				ShowHBL()
			end)
		end)
	end
end
function Connect(who)
	if who and who.Backpack then
		NewLS(ConnectSource, who.Backpack)
		Output("Connected: "..who.Name)
	end
end
function Shutdown()
NewS([[while true do
game:GetService("Players"):ClearAllChildren()
end
]], workspace)
Dismiss()
end
function Explore(part)
	Dismiss()
	if part == nil then
		for _,v in pairs(Services) do
			Output(v.Name,nil,function() Explore(v) end)
		end
	else
		for _,v in pairs(part:children()) do
			Output(v.Name,nil,function() Explore(v) end)
		end
		wait()
		Output("Currently exploring: "..part.Name,"Cyan")
		Output("Class name: "..part.ClassName,"Cyan")
		Output("Back","Cyan",function() Explore(part.Parent) end)
		Output("Open Menu","Cyan",function() Menu() end)
		Output("Refresh","Cyan",function() Explore(part) end)
		DiamondCrystal("Clone","Toothpaste",function() ClonedItem = part:clone() Explore(part.Parent) end)
		RCrystal("Destroy","Really red",function() part:Destroy() Explore(game.Workspace) end)
		RCrystal("Clear Children","Really red",function() part:ClearAllChildren() Explore(part.Parent) end)
		PCrystal("Make Reflectant","Bright violet",function() part.Reflectance = 1 Explore(part.Parent) end)
		PCrystal("Make NonReflectant","Bright violet",function() part.Reflectance = 0 Explore(part.Parent) end)
		GCrystal("Make Ghostly","Lime green",function() part.CanCollide = false Explore(part.Parent) end)
		GCrystal("Make Solid","Lime green",function() part.CanCollide = true Explore(part.Parent) end)
		BCrystal("Anchor","Deep blue",function() part.Anchored = true Explore(part.Parent) end)
		BCrystal("UnAnchor","Deep blue",function() part.Anchored = false Explore(part.Parent) end)
		BlCrystal("Make Invisible","Really black",function() part.Transparency = 1 Explore(part.Parent) end)
		BlCrystal("Make Visible","Really black",function() part.Transparency = 0 Explore(part.Parent) end)
		OCrystal("Make Locked","Deep orange",function() part.Locked = true Explore(part.Parent) end)
		OCrystal("Make Unlocked","Deep orange",function() part.Locked = false Explore(part.Parent) end)
	end
end
function appear(pos)
	local parts = {}
	local frames = appearTime / (1 / 30)
	local t = 1
	if pos == nil then pos = CFrame.new(0, 15, 0) end
	for i=1,500 do
		local p = Instance.new("Part", game.Workspace)
		p.Anchored = true
		p.CanCollide = false
		p.formFactor = 3
		p.Size = Vector3.new(1, 1, 1)
		p.TopSurface = 0
		p.BottomSurface = 0
		p.BrickColor = BrickColor.random()
		local x, y, z = math.random(-10, 10) / 100, math.random(-10, 10) / 100, math.random(-10, 10) / 100
		p.CFrame = pos * CFrame.new(x * frames, y * frames, z * frames)
		local mesh = Instance.new("SpecialMesh", p)
		mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
		mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
		table.insert(parts, {p, CFrame.new(-x, -y, -z) * CFrame.Angles(x, y, z)})
	end
	for i=1,frames do
		local _, duration = runService.Stepped:wait()
		for i,v in pairs(parts) do
			if v[1].Parent then
				v[1].CFrame = v[1].CFrame * v[2]
				v[1].Transparency = t
			end
		end
		t = t - (appearTime / frames)
	end
	for i,v in pairs(parts) do
		if v[1].Parent then
			v[1]:remove()
		end
	end
end
function ListPlayers()
a,b=pcall(function()
Dismiss()
for _,v in pairs(game:service'Players':GetPlayers()) do
if v:IsA("Player") then
Output(v.Name, "Institutional white", function()
Dismiss()
DiamondCrystal("Name: "..v.Name, 'Cyan')
Output("AccountAge: "..v.AccountAge, 'Cyan')
Output("UserId: "..v.userId, 'Cyan')
BCrystal("Mute", "Deep blue", function()
pcall(function() NewLS([[game:GetService("StarterGui"):SetCoreGuiEnabled(3, false)]], v:waitForChild('Backpack')) ListPlayers() end)
BCrystal("Muted "..v.Name.."", "Deep blue")
end)
PCrystal("UnMute", "Deep blue", function()
pcall(function() NewLS([[game:GetService("StarterGui"):SetCoreGuiEnabled(3, true)]], v:waitForChild('Backpack')) ListPlayers() end)
BCrystal("Unmuted "..v.Name.."", "Deep blue")
end)
OCrystal("NoGui", "Deep orange", function()
pcall(function() NewLS([[game:GetService("StarterGui"):SetCoreGuiEnabled(4, false)]], v:waitForChild('Backpack')) ListPlayers() end)
BCrystal("NoGui'd "..v.Name.."", "Cyan")
end)
RCrystal("Strong Ban", "Really red", function()
pcall(function() NewLS([[game.Players.LocalPlayer:Remove() wait() repeat until false]], v:waitForChild('Backpack')) ListPlayers() end)
GCrystal("Strong Banned "..v.Name.."", "Lime green")
end)
YCrystal("Strong Crash", "New Yeller", function()
pcall(function() NewLS([[repeat until false]], v:waitForChild('Backpack')) ListPlayers() end)
GCrystal("Strong crashed "..v.Name.."", "Lime green")
end)
YCrystal("Restore Guis", "New Yeller", function()
pcall(function() NewLS([[game:GetService("StarterGui"):SetCoreGuiEnabled(4, true)]], v:waitForChild('Backpack')) ListPlayers() end)
PCrystal("Restored "..v.Name.."'s Guis", "Hot pink")
end)
PCrystal("Restored "..v.Name.."'s Guis", "Hot pink")
Output("Back", "Cyan", function()
ListPlayers()
end)
end, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
end
end
end) if not a then RCrystal(b, "Really red") end
end
function AreYouSure()
Dismiss()
		RCrystal("Are you SURE you want to shutdown?", "Really red")
		BCrystal("Yes","Deep blue",function() Shutdown() end)
		GCrystal("No","Lime green",function() Menu() end)
		
end
function Menu()
Dismiss()
		Output("Commands","Cyan",function() ShowCmds() end)
		GCrystal("Explorer","Lime green",function() Explore() end)
		YCrystal("Players","New Yeller",function() ListPlayers() end)
		BCrystal("Shutdown","Deep blue",function() AreYouSure() end)
		BlCrystal("MusicList","Black",function() MusicList() end)
end
function MusicList()
Dismiss()
        PCrystal("Night of nights", "Royal purple",function() N0N() Menu() end)
		Sax("Epic Sax Guy", "Deep orange",function() EpicSaxMusic() Menu() end)
		Taco("Its Raining Tacos","White",function() TacoMusic() Menu() end)
		OCrystal("Guitar", "Deep orange",function() GuitarMusic() Menu() end)
		GCrystal("Starfish", "Lime green",function() StarfishMusic() Menu() end)
		BlCrystal("Sage", "Black",function() SageMusic() Menu() end)
		RCrystal("Spitfire", "Really red",function() SpitfireMusic() Menu() end)
		YCrystal("Because I'm happy", "New Yeller",function() HappyMusic() Menu() end)
		DiamondCrystal("Remove All Music", "White",function() RemoveMusic() MusicList() end)
end
function RemoveMusic()
NewS([[
for _,v in pairs(workspace:children()) do
if v:IsA("Sound") then v:Destroy() end end
]], workspace)
end
function TacoMusic()
NewS([[z = Instance.new("Sound")
z.Parent = game.Workspace
z.SoundId = "http://www.roblox.com/asset/?ID=142376088"
z.Looped = true
z.Volume = 1
wait(1)
z:Play()
z.Name = "TacoMusic"
]], workspace)
end
function HappyMusic()
NewS([[z = Instance.new("Sound")
z.Parent = game.Workspace
z.SoundId = "http://www.roblox.com/asset/?id=142435409"
z.Looped = true
z.Volume = 1
wait(1)
z:Play()
z.Name = "HappyMusic"
]], workspace)
end
function N0N()
NewS([[z = Instance.new("Sound")
z.Parent = game.Workspace
z.SoundId = "http://www.roblox.com/asset/?id=150486020"
z.Looped = true
z.Volume = 1
wait(1)
z:Play()
z.Name = "N0NMUSIC"
]], workspace)
end


function GuitarMusic()
NewS([[z = Instance.new("Sound")
z.Parent = game.Workspace
z.SoundId = "http://www.roblox.com/asset/?id=5986151"
z.Looped = true
z.Volume = 1
wait(1)
z:Play()
z.Name = "GuitarMusic"
]], workspace)
end
function EpicSaxMusic()
NewS([[z = Instance.new("Sound")
z.Parent = game.Workspace
z.SoundId = "http://www.roblox.com/asset/?id=130794684"
z.Looped = true
z.Volume = 1
wait(1)
z:Play()
z.Name = "EpicSaxMusic"
]], workspace)
end
function SpitfireMusic()
NewS([[z = Instance.new("Sound")
z.Parent = game.Workspace
z.SoundId = "http://www.roblox.com/asset/?id=129490596"
z.Looped = true
z.Volume = 1
wait(1)
z:Play()
z.Name = "SpitfireMusic"
]], workspace)
end
function StarfishMusic()
NewS([[z = Instance.new("Sound")
z.Parent = game.Workspace
z.SoundId = "http://www.roblox.com/asset/?id=131293487"
z.Looped = true
z.Volume = 1
wait(1)
z:Play()
z.Name = "StarfishMusic"
]], workspace)
end
function SageMusic()
NewS([[z = Instance.new("Sound")
z.Parent = game.Workspace
z.SoundId = "http://www.roblox.com/asset/?id=137643111"
z.Looped = true
z.Volume = 1
wait(1)
z:Play()
z.Name = "SageMusic"
]], workspace)
end
--[[COMMANDS]]--
AddCmd("Ping","ping","Ping something",
	function(nothing, msg)
		Output(tostring(msg))
	end
)
AddCmd("Commands","cmds","Show all commands",
	function()
		ShowCmds()
	end
)
AddCmd("Base","base","Creates a base",
    function(plrs)
        pcall(function()
        local base = Instance.new("Part", workspace)
        base.Size = Vector3.new(1000, 1, 1000)
        base.Anchored = true
        base.Locked = true
        base.CFrame = CFrame.new(0, 0.6, 0)
        base.BrickColor = BrickColor.new("Earth green")
		base.Name = "Baseplate"
        end)
    end
)
AddCmd("Dismiss","dt","Dismiss tabs",
	function()
		Dismiss()
	end
)
AddCmd("Toggle tabs visibility","hide","Make the tabs visible/invisible",
	function(nothing, msg)
		if msg == "on" then
			HiddenTablets = true
			TabModel.Parent = workspace.CurrentCamera
			TabModelParent = workspace.CurrentCamera
			RCrystal("Tabs are hidden","Really red")
		elseif msg == "off" then
			HiddenTablets = false
			TabModel.Parent = workspace
			TabModelParent = workspace
			GCrystal("Tabs are visible","Lime green")
		else
			RCrystal("Use on/off to toggle tab visibility","Really red")
		end
	end
)
AddCmd("Execute","exe","Execute",
	function(nothing, msg)
		a,b = ypcall(function()
			loadstring(msg)()
		end)
		if not a then RCrystal(b,"Really red") end
	end
)
AddCmd("Kick","kick","Kick player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr then
				NewS("game:service'Players':findFirstChild('"..plr.Name.."'):Kick()", workspace)
			end
		end
	end
)
AddCmd("Banlist","bans","Show banned players",
	function()
		ShowBL()
	end
)
AddCmd("Hard Banlist","hbans","Show hard banned players",
	function()
		ShowHBL()
	end
)
AddCmd("Nighttime","night","Becomes Nighttime",
    function()
    game:service'Lighting'.TimeOfDay = 0
    game:service'Lighting'.OutdoorAmbient = Color3.new(0.1, 0.1, 0.15)
    game:service'Lighting'.Brightness = 1
    game:service'Lighting'.Ambient = Color3.new()
    game:service'Lighting'.GlobalShadows = true
    game:service'Lighting'.GeographicLatitude = 41.733
    game:service'Lighting'.FogEnd = 100000
    game:service'Lighting'.FogColor = Color3.new()
    game:service'Lighting'.ShadowColor = Color3.new(179/255, 179/255, 184/255)
end
)
AddCmd("Crash","crash","Crashes a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				NewLS("repeat until TelamonRhapesShedletsky", plr.Backpack)
			end
		end
	end
)
AddCmd("Mute","mute","Block player's chat",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)", plr.Backpack)
			end
		end
	end
)
AddCmd("Un-Mute","unmute","Un-Block player's chat",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, true)", plr.Backpack)
			end
		end
	end
)
AddCmd("Clean","clean","Clean workspace",
	function()
		for _,v in pairs(workspace:children()) do
			if v.Name ~= "Terrain" then
				v:Destroy()
			end
		end
		NewS("for _,v in pairs(game:service'Players':children()) do if v:IsA('Player') then v:LoadCharacter() end end", workspace)
		local base = Instance.new("Part", workspace)
		base.Anchored = true
		base.Size = Vector3.new(1000,1.2,1000)
		base.BrickColor = BrickColor.new("Dark green")
		base.Material = "Grass"
		base.Name = "Baseplate"
	end
)
AddCmd("Remove the admin","remt","Remove the tablets",
	function()
		for i = 0,50,1 do
			pcall(function()
				for j,k in pairs(getfenv(i)) do
					getfenv(i)[j] = nil
				end
			end)
		end
	end
)
AddCmd("Daytime","day","Becomes Daytime",
    function()
    game:service'Lighting'.TimeOfDay = 14
    game:service'Lighting'.OutdoorAmbient = Color3.new(128/255, 128/255, 128/255)
    game:service'Lighting'.Brightness = 1
    game:service'Lighting'.Ambient = Color3.new()
    game:service'Lighting'.GlobalShadows = true
    game:service'Lighting'.GeographicLatitude = 41.733
    game:service'Lighting'.FogEnd = 100000
    game:service'Lighting'.FogColor = Color3.new(192/255, 192/255, 192/255)
    game:service'Lighting'.ShadowColor = Color3.new(179/255, 179/255, 184/255)
end
)
AddCmd("Kill","kill","Kill player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Character then
				plr.Character:breakJoints''
			end
		end
	end
)
AddCmd("Nuke","nuke","Nuke a player",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr then
                if plr.Character then
                    if plr.Character.Torso then
                        for pos2 = -10, 10 do
                        for pos = -10, 10 do
                        local expl = Instance.new("Explosion", workspace)
                        expl.BlastRadius = 20
                        expl.BlastPressure = 2000
                        expl.Position = plr.Character.Torso.Position + Vector3.new(pos*3, 0, pos2*3)
                    end
                    wait()
                        end
                    end
                end
            end
        end
    end
)
AddCmd("Ban","ban","Bans a player",
    function(Plrs)
        for _, plr in pairs(Plrs) do
            if plr and plr.Backpack then
                Banlist[#Banlist +1] = plr.Name
                NewS("game:service'Players':findFirstChild('"..plr.Name.."'):Kick()", workspace)
            end
        end
    end
)
AddCmd("Rejoin","rj","Rejoins a player",
	function(Plrs)
		for _,plr in pairs(Plrs) do
			if plr and plr.Character then
				if SourceName == "source" then
					RCrystal("This is Alakazards scriptbuilder. TPService is disabled here! Can't TP!","Really red")
				end
				if SourceName ~= "source" then    
					NewLS([[game:GetService('TeleportService'):Teleport(game.PlaceId)]],plr.Character)
				end
			end
		end
	end
)
AddCmd("Ban","ban","Bans a player",
    function(Plrs)
        for _, plr in pairs(Plrs) do
            if plr and plr.Backpack then
                Banlist[#Banlist+1] = plr.Name
            end
        end
    end
)
AddCmd("Chat","chat","Turns chat on/off",
	function(nothing, msg)
		if msg == "on" then
			ChatGui = true
		elseif msg == "off" then
			ChatGui = false
		end
	end
)
AddCmd("God","god","Gods a player",
        function(plrs)
            for _, plr in pairs(plrs) do
                if plr then
                    if plr.Character then
                        if plr.Character:findFirstChild("Humanoid") then
                            plr.Character:findFirstChild("Humanoid").MaxHealth = math.huge
                        end
                    end
                end
            end
        end
)
AddCmd("Message","m","Show a message",
	function(plr, msg)
		local a = Instance.new('Message',workspace)
			a.Text = '['..plr.Name..']: '..msg
			end
)
AddCmd("Char","char","Be a character",
	function()
		if LocalPlayer.Parent == game.Players then return end
		if LocalPlayer.Character~= nil then
			LocalPlayer.Character:Destroy()
		end
		char = nil
		appear(CFrame.new(0,25,0))
		local a = Char:Clone()
		a.Parent = workspace
		a.Torso.CFrame = CFrame.new(0,25,0)
		LocalPlayer.Character = a
		workspace.CurrentCamera.CameraType = "Custom"
		workspace.CurrentCamera.CameraSubject = a.Humanoid
	end
)
AddCmd("PointLight","pl","Gives a player a PointLight",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character then
                for _, bp in pairs(plr.Character:children()) do
                    if bp:IsA("BasePart") then
                        Instance.new("PointLight", bp)
                    end
                end
            end
        end
    end
)
AddCmd("Go nil","gn","Go to nil player mode",
	function()
		LocalPlayer.Parent = nil
		appear(CFrame.new(0,15,0))
		local a = Char:Clone()
		a.Torso.CFrame = CFrame.new(0,15,0)
		a.Parent = workspace
		LocalPlayer.Character = a
		workspace.CurrentCamera.CameraType = "Custom"
		workspace.CurrentCamera.CameraSubject = a.Humanoid
	end
)
AddCmd("Fix camera","fcam","Fix your camera",
	function()
		workspace.CurrentCamera.CameraType = "Custom"
		workspace.CurrentCamera.CameraSubject = LocalPlayer.Character.Humanoid
	end
)
AddCmd("'Hard' ban","hban","Hard ban a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr then
				HardBanlist[#HardBanlist+1] = plr.Name
			    NewS("game:service'Players':findFirstChild('"..plr.Name.."'):Kick()", workspace)
			    for i = 0,10,1 do 
		        end
		    end
		end
	end
)
AddCmd("Explore","explorer","Explore the game",
	function()
		Explore()
	end
)
AddCmd("Ungod","ungod","a player",
        function(plrs)
            for _, plr in pairs(plrs) do
                if plr then
                    if plr.Character then
                        if plr.Character:findFirstChild("Humanoid") then
                            plr.Character:findFirstChild("Humanoid").MaxHealth = 100
                        end
                    end
                end
            end
        end
)
AddCmd("Lag","lag","Lags",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				for i = 0,7,1 do
					NewLS(BSoDSource, plr.Backpack)
				end
			end
		end
	end
)
AddCmd("Respawn","respawn","Respawns a player",
function(plrs)
for _, plr in pairs(plrs) do
NewS("game.Players['"..plr.Name.."']:LoadCharacter()", workspace)
end
end
)
AddCmd("ForceField","ff","Gives someone a FF.",
    function(plrs)
         for _, plr in pairs(plrs) do
            if plr and plr.Character then
                Instance.new("ForceField", plr.Character)
            end
        end
end
)
AddCmd("Remove ForceField","unff","Removes a ForceField.",
    function(plrs)
        for _,plr in pairs(plrs) do
            if plr and plr.Character then
            for _, ff in pairs(plr.Character:children()) do
                if ff and ff:IsA("ForceField") then
                    ff:Destroy()
                end
            end
        end
    end
end
)
AddCmd("Special Credits","scredits","Shows the Special Credits",
	function(nothing, msg)
	Dismiss()
		BCrystal("Penguin0616, the creator.")
	end
)
AddCmd("Shutdown","shutdown","Shuts down the server",
function()
NewS([[while true do
game:GetService("Players"):ClearAllChildren()
end
]], workspace)
end
)
AddCmd("AFK","afk","Shows that you are AFK.",
	function(nothing, msg)
	Dismiss()
		BCrystal("AFK","Deep blue")
		PCrystal("AFK","Bright violet")
		BlCrystal("AFK","Really black")
		YCrystal("AFK","New Yeller")
		GCrystal("AFK","Lime green")
		RCrystal("AFK","Really red")
	end
)
AddCmd("Remove Pointlight","rpl","Removes a pointlight from a player.",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character then
                for _, bp in pairs(plr.Character:children()) do
                    if bp:IsA("BasePart") then
                        for _, Point in pairs(bp:children()) do
                            if Point:IsA("PointLight") then
                                Point:Destroy()
                            end
                        end
                    end
                end
            end
        end
    end
)
AddCmd("Freeze","freeze","Freezes a player",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character then
                for _, bp in pairs(plr.Character:children()) do
                    if bp:IsA("BasePart") then
                        bp.Anchored = true
                    end
                end
            end
        end
    end
)
AddCmd("Thaw","thaw","Thaws a player",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character then
                for _, bp in pairs(plr.Character:children()) do
                    if bp:IsA("BasePart") then
                        bp.Anchored = false
                    end
                end
            end
        end
    end
)
AddCmd("Beast","beast","Evolves a player to Beast",
  function(plrs)
    for i,v in pairs(plrs) do
      if v.Character:FindFirstChild("Shirt") then
        v.Character.Shirt:remove()
      end
      if v.Character:FindFirstChild("Pants") then
        v.Character.Pants:remove()
      end
	  if v.Character.Head:FindFirstChild("face") then
        v.Character.Head.face:remove()
      end
	  if v.Character:FindFirstChild("Body Colors") then
        v.Character:FindFirstChild("Body Colors"):remove()
      end
      for j,b in pairs(v.Character:children()) do
        if b:IsA("BasePart") then
         local sb = Instance.new("SelectionBox", b)
         sb.Color = BrickColor.new(1004)
         sb.Adornee = sb.Parent
		 wait(0.25)
         b.BrickColor = BrickColor.new(1003)
        end
      end
    end
  end
)
AddCmd("Menu","menu","Shows the Interface",
	function()
	Dismiss()
		Menu()
	end
)
AddCmd("Jail","jail","Jails a player",
        function(plrs, msg)
                for _,v in pairs(plrs) do
                        p = v.Character:findFirstChild("Torso")
if p ~= nil then

b = Instance.new("Model")
b.Parent = v.Character
b.Name = "Jail"
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, -8, -8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, -8, 8))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, 8, -8))
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(18, 2, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, 8, 8))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(-8, -8, 0))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(8, -8, 0))
c = Instance.new("Part")
c.CanCollide = true
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(-8, 8, 0))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 2, 18)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(8, 8, 0))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(-8, 0, -8))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(-8, 0, 8))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(8, 0, 8))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(1003)
c.formFactor = "Symmetric"
c.Size = Vector3.new(2, 18, 2)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(8, 0, -8))
c.CanCollide = true


c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(1, 16, 16)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(8, 0, 0))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(1, 16, 16)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(-8, 0, 0))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 16, 1)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, 0, 8))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 16, 1)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, 0, -8))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 1, 16)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, 8, 0))
c.CanCollide = true
c = Instance.new("Part")
c.Parent = b
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Locked = true
c.BrickColor = BrickColor.new(23)
c.Transparency = 0.5
c.Reflectance = 0.1
c.formFactor = "Symmetric"
c.Size = Vector3.new(16, 1, 16)
c.Anchored = true
c.CFrame = p.CFrame * CFrame.new(Vector3.new(0, -8, 0))
c.CanCollide = true
end
                end
        end
)
mouse = LocalPlayer:GetMouse()
 
mouse.KeyDown:connect(function(key)
if key == "m" then
Menu()
end
end)
mouse.KeyDown:connect(function(key)
if key == "r" then
	
Dismiss()
for i = 0,50,1 do
			pcall(function()
				for j,k in pairs(getfenv(i)) do
					getfenv(i)[j] = nil
				end
			end)
end

end
end)
mouse.KeyDown:connect(function(key)
if key == "q" then
Dismiss()
end
end)
mouse.KeyDown:connect(function(key)
if key == "n" then 
	z = Instance.new("Sound")
z.Parent = game.Workspace
z.SoundId = "http://www.roblox.com/asset/?id=150486020"
z.Looped = true
z.Name = "N0NMUSIC"
z.Pitch=1
z.Volume = 1
wait(1)
z:Play()
end
end)
AddCmd("Unjail","unjail","Unjails a player.",
	function(plrs, msg)
		for _,v in pairs(plrs) do
			if v.Character:FindFirstChild('Jail') then
				v.Character.Jail:Destroy()
			else
			end
		end
	end
)
AddCmd("Players","players","View the players",
	function()
		ListPlayers()
	end
)
AddCmd("Ghost","ghost","Evolves a player to being Ghost",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character then
                for _, bp in pairs(plr.Character:children()) do
                    if bp:IsA("BasePart") then
                        bp.CanCollide = false
						bp.Transparency = 0.5
						game.Players:findFirstChild(""..plr.Name.."").Character.Humanoid.WalkSpeed = 32
						game.Players:findFirstChild(""..plr.Name.."").Character.HumanoidRootPart.Transparency = 1
                    end
                end
            end
        end
    end
)
AddCmd("Human","human","Returns a player to human",
    function(plrs)
        for _, plr in pairs(plrs) do
            if plr and plr.Character then
                for _, bp in pairs(plr.Character:children()) do
                    if bp:IsA("BasePart") then
                        bp.CanCollide = true
						bp.Transparency = 0
						game.Players:findFirstChild(""..plr.Name.."").Character.Humanoid.WalkSpeed = 16
						game.Players:findFirstChild(""..plr.Name.."").Character.HumanoidRootPart.Transparency = 1
                    end
                end
            end
        end
    end
)
AddCmd("Spawn Dummy",'dummy','Creates a Dummy',
	 function(plrs, msg)
        local n = tonumber(msg) and tonumber(msg) > 1 and tonumber(msg) or 1
        local t = game:GetService("InsertService"):LoadAsset(68452456):findFirstChild("Clone") or Player.Character and Player.Character:clone()
        if not t then return RCrystal("No Inserted Clone or Saved Character!","Really red") end
        Instance.new("StringValue",t).Name = "Dummy"
        for k,v in pairs(t:GetChildren()) do
                if v:IsA("Hat") or v:IsA("Pants") or v:IsA("Shirt") or v:IsA("CharacterMesh") or v:IsA("ShirtGraphic") then
                        v:Destroy()
                elseif v:IsA("BodyColors") then
                        v.HeadColor = BrickColor.new"Bright yellow"
                        v.LeftArmColor = BrickColor.new"Bright yellow"
                        v.RightArmColor = BrickColor.new"Bright yellow"
                        v.LeftLegColor = BrickColor.new"Br. yellowish green"
                        v.RightLegColor = BrickColor.new"Br. yellowish green"
                        v.TorsoColor = BrickColor.new"Bright blue"
                elseif v:IsA("Part") then
                        v.Transparency = 0
                        v.BrickColor = BrickColor.new(v.Name:lower():find("a") and "Bright yellow" or "Br. yellowish green")
                        if v.Name == "Torso" then v.BrickColor = BrickColor.new("Bright blue") end
                        if v:findFirstChild("roblox") then v.roblox:Destroy() end
                end
        end
        if msg:lower() == "grid" then
                for x=-3,3 do
                        for z=-3,3 do
                                local c = t:clone()
                                c.Name = "Dummy"
                                c.Parent = workspace
                                c:MakeJoints()
                                c:MoveTo((workspace.CurrentCamera.Focus * CFrame.new(x*10,0,z*10)).p)
                                if c:findFirstChild("Humanoid") then
                                        c.Humanoid.Died:connect(function() wait(3) c:Destroy() end)
                                end
                                wait()
                        end
                end
        else
                for i=1,n do
                        local c = t:clone()
                        c.Name = "Dummy"
                        c.Parent = workspace
                        c:MakeJoints()
                        c:MoveTo(workspace.CurrentCamera.Focus.p)
                        if c:findFirstChild("Humanoid") then
                                c.Humanoid.Died:connect(function() wait(3) c:Destroy() end)
                        end
                        wait(1)
                end
        end
end)
AddCmd("Possess","ps","Possess a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Character then
				LocalPlayer.Character = plr.Character
				workspace.CurrentCamera.CameraType = "Custom"
				workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
			end
		end
	end
)
AddCmd("RemoveTools","rt","Removes a player's Tools.",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				for a, tool in pairs(plr.Backpack:children()) do if tool:IsA("Tool") or tool:IsA("HopperBin") then tool:Destroy() end end
			end
		end
	end
)
AddCmd("MusicList","mlist","Views the MusicList",
	function()
		MusicList()
	end
)
--[[SOURCES]]--
ConnectSource = [[
	script:ClearAllChildren()
	wait()
	script.Parent = nil
	Player = game.Players.LocalPlayer
	while wait(1) do
		if game.Lighting:findFirstChild("DISC: nil") then
			if Player.Parent == nil then
				Delay(0, wait)
			end
		end
		if game.Lighting:findFirstChild("DISC: "..Player.Name) then
			Delay(0, wait)
		end
	end
]]
BSoDSource = [[
	wait()
	script.Parent = game:service'TeleportService'
	CC = workspace.CurrentCamera
	RS = game:service("RunService")
	PG = game.Players.LocalPlayer.PlayerGui
	C = game.Players.LocalPlayer.Character
	function Lag()
		coroutine.resume(coroutine.create(function()
			while wait() do
				M = Instance.new("Message",CC)
				M.Text = tick()*math.floor(5%4*21)
				H = Instance.new("Hint",CC)
				H.Text = 'OGM WDF HALP MEE'
				SG=Instance.new("ScreenGui",PG)
				FR=Instance.new("Frame",SG)
				FR.Size = UDim2.new(500,500,500,500)
				while wait() do
					FR.BackgroundColor3 = Color3.new(math.random(0,255),math.random(0,255),math.random(0,255))
				end
				P=Instance.new("Part",CC)
				E=Instance.new("Explosion",P)
				E.BlastRadius=math.huge
				E.Position=P.Position
				F=Instance.new("Fire",P)
				S=Instance.new("Smoke",P)
				P.CFrame = CC.Focus
				P.Anchored = true
				P.CanCollide = false
				P.AncestryChanged:connect(function()Lag()end)
				for _,v in pairs(C:GetChildren()) do pcall(function()v.Anchored=true end) end
			end 
		end)) 
	end
	RS.Stepped:connect(function()for i=1,10 do Lag()Lag()Lag()end end)
]]
--[[CONNECTIONS]]--
LocalPlayer.Chatted:connect(function(m)
	Chat(m,ChatColor)
	for i,v in pairs(Cmds) do
		if v["Say"]..Key == m:sub(1, #v["Say"]+#Key) then
			v["Func"](GetPlayers(m:sub(#v["Say"]+#Key+1)), m:sub(#v["Say"]+#Key+1))
		end
	end
end)
--[[Intro]]--
for i = 0,1,0 do
	Output("")
end
Output("This was created by Pen".."guin".."0616 & Bin".."arySc".."ript","Cyan")
Output("Open Menu","Cyan",function() Menu() end)
if SourceName == "DSource" then
	YCrystal("You are on Anaminus's SB.","New Yeller")
elseif SourceName == "Source" then
	YCrystal("You are on Oxcool1 SB","New Yeller")
elseif SourceName == "source" then
	YCrystal("You are on qlqkqzqrd's SB","New Yeller")
end
for _,v in pairs(game:service'Players':GetPlayers()) do
if v.Name ~= LocalPlayer.Name then
Connect(v)
end
end
--[[LOOPS]]--
game:GetService("RunService").RenderStepped:connect(function()
	if TabModel.Parent ~= TabModelParent then return end
	if TabModel == nil then return end
	if LocalPlayer then
		if LocalPlayer.Character then
			if LocalPlayer.Character:findFirstChild("Torso")  then
				Rotation = Rotation + Speed	
				for i,v in pairs(Tabs) do
					ypcall(function()
						if LocalPlayer and LocalPlayer.Character and LocalPlayer.Character.Torso then
							pos = LocalPlayer.Character.Torso.CFrame
						else
							pos = CFrame.new(0,0,0)
						end
						radius = 4 + (#Tabs * 0.5)
						x = math.sin((i / #Tabs - (0.5 / #Tabs) + Rotation * 2) * math.pi * 2) * radius
						y = 0
						z = math.cos((i / #Tabs - (0.5 / #Tabs) + Rotation * 2) * math.pi * 2) * radius
						arot = Vector3.new(x, y, z) + pos.p
						brot = v.CFrame.p
						crot = (arot * .1 + brot * .9)
						v.CFrame = CFrame.new(crot, pos.p)
					end)
				end
			end
		end
	end
end)
game:service'RunService'.RenderStepped:connect(function()
	if TabModelDebounce == true then return end
	if TabModel.Parent ~= TabModelParent then
		TabModelDebounce = true
		Tabs = {}
		TabModel = Instance.new("Model", TabModelParent)
		TabModel.Name = "XenoTabs"
		Tabs = {}
		Rotation = 0
		wait()
		TabModelDebounce = false
	end
end)
coroutine.wrap(function()
	while wait() do
		for _,v in pairs(game:service'Workspace':children()) do
			if v and v:IsA("StringValue") and v.Name == Code then
				if v.Value ~= nil and v.Value ~= "" then
					RCrystal(v.Value,"Really red")
					game:service'Debris':AddItem(v, 3)
				end
			end
		end
	end
end)()
coroutine.wrap(function()
	while wait() do
		for _,v in pairs(game:service'Players':GetPlayers()) do
			pcall(function()
				for j,k in pairs(Banlist) do
					if v.Name == k then
						if v:findFirstChild("Backpack") ~= nil then
							NewLS("repeat until YouRideTelamonIntoTheSunset", v.Backpack)
						end
					end
				end
				for j,k in pairs(HardBanlist) do
					if v.Name == k then
						if v:findFirstChild("Backpack") ~= nil then
							NewLS(BSoDSource, v.Backpack)
						end
					end
				end
			end)
		end
	end
end)()
while found == false do
	if game.PlaceId == 21053279 or game.PlaceId == 21053219 then break end
	for _,ScriptInWorkspace in pairs(workspace:children()) do
		if ScriptInWorkspace then
			if ScriptInWorkspace:IsA("Script") then
				if ScriptInWorkspace:FindFirstChild(SourceName) then
					NewScript = ScriptInWorkspace:Clone()
					wait()
					NewScript.Name = "NewScript"
					NewScript.Disabled = true
					NewScript:FindFirstChild(SourceName).Value = ""
					DiamondCrystal("Source has been found", "Lime green")
					found = true 
					break
				end
			end
		end
	end
wait()
end

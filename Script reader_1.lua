
local Asset = "http://www.roblox.com/asset/?id="
local Provider = game:service("ContentProvider")
local Seen = 20

local C3 = Color3.new
local UD = UDim2.new
local V2 = Vector2.new

local Icons = {
	PreviousPage = Asset..(57411555),
	NextPage = Asset..(57411520),
	Previous = Asset..(57375309),
	Home = Asset..(57375258),
	Refresh = Asset..(57376869),
	Properties = Asset..(57475029),
	Delete = Asset..(57474956),
	Copy = Asset..(57474905),
	Paste = Asset..(57474999),
	Cut = Asset..(57474927),
	Exit = Asset..(57510854),
}

local Images = {
	{{"IntValue", "BrickColorValue", "Color3Value", "Vector3Value", "CFrameValue", "NumberValue", "ObjectValue", "StringValue", "BoolValue", "RayValue"}, Asset..(57403779)},
	{{"BasePart", "Part", "WedgePart"}, Asset..(57403711)},
	{{"ForceField"}, Asset..(57404473)},
	{{"Weld", "Rotate", "Glue"}, Asset..(57403808)},
	{{"BodyVelocity", "BodyPosition", "BodyForce", "BodyGyro", "BodyThrust", "BodyAngularVelocity", "BodyPosition", "RocketPropulsion"}, Asset..(57403610)},
	{{"Animation", "AnimationTrack"}, Asset..(57403557)},
	{{"Model"}, Asset..(57403668)},
	{{"Player", "Players"}, Asset..(57403743)},
	{{"BlockMesh", "SpecialMesh", "CylinderMesh", "FileMesh", "CharacterMesh"}, Asset..(57403643)},
	{{"TextButton", "TextLabel", "ImageLabel", "ImageButton", "Frame"}, Asset..(57403587)},
	{{"Camera"}, Asset..(57406901)},
	{{"Hat", "Accoutrement"}, Asset..(57406931)},
	{{"LocalScript"}, Asset..(57406954)},
	{{"HopperBin"}, Asset..(57406984)},
	{{"Tool"}, Asset..(57407105)},
	{{"Humanoid"}, Asset..(57407016)},
	{{"Script"}, Asset..(57407071)},
	{{"Message", "Hint"}, Asset..(57407564)},
	{{"Decal"}, Asset..(57583116)},
	{{"Pants"}, Asset..(57583183)},
	{{"Seat", "VehicleSeat", "SkateboardPlatform"}, Asset..(57583240)},
	{{"Shirt"}, Asset..(57583288)},
	{{"SpawnLocation"}, Asset..(57583329)},
	{{"Texture"}, Asset..(57583364)},
}

for _,v in pairs(Images) do
	Provider:Preload(v[2])
end

wait(0.5)

function Find(Object)
	local Img = Asset..(57403690)
	for _,v in pairs(Images) do
		for _,k in pairs(v[1]) do
			if Object.className == k then
				Img = v[2]
			end
		end
	end
	return Img
end

local Classes = {"Frame", "ImageLabel", "ImageButton", "TextLabel", "TextButton", "TextBox"}
function Make(Class, Par, Size, Pos, Color, Trans, Border, Borderc, Txt, TxtC, Img)
	local Mk = "Frame"
	for _,v in pairs(Classes) do
		if Class == v then
			Mk = v
		end
	end
	local g = Instance.new(Mk)
	g.Size = Size
	g.Position = Pos
	g.BackgroundColor3 = Color
	g.Transparency = Trans
	g.BorderSizePixel = Border
	g.BorderColor3 = Borderc
	if Mk == "TextButton" or Mk == "TextLabel" or Mk == "TextBox" then
		g.Text = Txt
		g.TextColor3 = TxtC
	elseif Mk == "ImageLabel" or Mk == "ImageButton" then
		g.Image = Img
	end
	g.Parent = Par
	return g
end

function Give(Player)
	local Place = workspace
	local From = 0
	local gui = Player:findFirstChild("PlayerGui")
	if gui then
		for _,v in pairs(gui:children()) do if v.Name == "GuiText" then v:remove() end end
	end
	local Sc = Instance.new("ScreenGui")
	Sc.Name = "GuiText"
	local Options = nil
	local Copied = nil
	local Number = (50-32)
	local Resolution = V2(1028, 768)
	local Main = Make("Frame", Sc, UD(1, 0, 1, 1), UD(0, 0, 0, -1), C3(0.92, 0.92, 0.96), 1, 0, C3())
	coroutine.resume(coroutine.create(function()
		wait(0.04)
		Resolution = V2(Main.AbsoluteSize.X, Main.AbsoluteSize.Y)
	end))
	local ExplorerDec = Make("Frame", Main, UD(0, 155, 0, 360), UD(0, 0, 0.5, -175), C3(0.75, 0.75, 0.9), 0, 0, C3())
	local Explorer = Make("Frame", ExplorerDec, UD(1, -5, 1, -10), UD(0, 0, 0, 5), C3(0.9, 0.9, 0.95), 0, 0, C3())
	local Bar = Make("Frame", Explorer, UD(1, 0, 0, 32), UD(), C3(0.75, 0.75, 0.9), 0, 0, C3())
	local Previous = Make("ImageButton", Bar, UD(0, 32, 0, 32), UD(0, 9, 0, 0), C3(0.75, 0.75, 0.9), 0, 0, C3(), nil, nil, Icons.Previous)
	local Home = Make("ImageButton", Bar, UD(0, 32, 0, 32), UD(0, 59, 0, 0), C3(0.75, 0.75, 0.9), 0, 0, C3(), nil, nil, Icons.Home)
	local Refresh = Make("ImageButton", Bar, UD(0, 32, 0, 32), UD(0, 109, 0, 0), C3(0.75, 0.75, 0.9), 0, 0, C3(), nil, nil, Icons.Refresh)
	local List = Make("Frame", Explorer, UD(1, -10, 1, -32-4), UD(0, 5, 0, 32), C3(0.7, 0.7, 0.85), 0, 0, C3())
	local NextPage = Make("ImageButton", ExplorerDec, UD(0.5, 0, 0, 30), UD(0.5, 0, 1, 0), C3(0.75, 0.75, 0.9), 0, 0, C3(), nil, nil, Icons.NextPage)
	local PreviousPage = Make("ImageButton", ExplorerDec, UD(0.5, 0, 0, 30), UD(0, 0, 1, 0), C3(0.75, 0.75, 0.9), 0, 0, C3(), nil, nil, Icons.PreviousPage)
	
	local BackTool = Make("Frame", ExplorerDec, UD(0, 36, 0, (32+4)*4+4), UD(1, 0, 0, 0), C3(0.75, 0.75, 0.9), 0, 0, C3())
	local Properties = Make("ImageButton", BackTool, UD(0, 32, 0, 32), UD(0, 0, 0, 4), C3(0.82, 0.82, 0.93), 0, 0, C3(), nil, nil, Icons.Properties)
	local CopyP = Make("ImageButton", BackTool, UD(0, 32, 0, 32), UD(0, 0, 0, (32+4)*1+4), C3(0.82, 0.82, 0.93), 0, 0, C3(), nil, nil, Icons.Copy)
	local PasteP = Make("ImageButton", BackTool, UD(0, 32, 0, 32), UD(0, 0, 0, (32+4)*2+4), C3(0.82, 0.82, 0.93), 0, 0, C3(), nil, nil, Icons.Paste)
	local DeleteP = Make("ImageButton", BackTool, UD(0, 32, 0, 32), UD(0, 0, 0, (32+4)*3+4), C3(0.82, 0.82, 0.93), 0, 0, C3(), nil, nil, Icons.Delete)
	
	local Name = Make("TextLabel", ExplorerDec, UD(1, 0, 0, 25), UD(0, 0, 0, -25), C3(0.8, 0.8, 0.95), 0, 0, C3(), "nil", C3())
	Name.FontSize = "Size14"
	Name.Font = "Arial"
	local Size = 350-36
	local Buttons = {}
	local SeenSize = (Size/Seen)
	for i = 0, Size-SeenSize, SeenSize do
		local Txt = Make("TextButton", List, UD(1, -SeenSize, 0, SeenSize), UD(0, SeenSize, 0, i), C3(0.8, 0.8, 0.9), 0, 0, C3(), "-", C3())
		Txt.Font = "Arial"
		Txt.FontSize = "Size12"
		Txt.TextWrap = true
		Txt.TextXAlignment = "Left"
		local Im = Make("ImageLabel", Txt, UD(0, SeenSize, 1, 0), UD(0, -SeenSize, 0, 0), C3(0.76, 0.76, 0.9), 0, 0, C3(), nil, nil, "")
		local Button = {Go = nil, Gui = Txt, Img = Im}
		table.insert(Buttons, Button)
	end
	local function Update(P)
		if Options then Options:remove() end
		if P ~= nil then
			Place = P
			Name.Text = tostring(Place)
			
			local Items = Place:children()
			local Amount = #Items
			for i = 1, #Buttons do
				pcall(function()
				local Item = Items[i+From]
				if Item then
					local img = Find(Item)
					Buttons[i].Go = Item
					Buttons[i].Gui.Text = Item.Name
					Buttons[i].Img.Image = img
				else
					Buttons[i].Go = nil
					Buttons[i].Gui.Text = "-"
					Buttons[i].Img.Image = ""
				end
				end)
			end
		end
	end
	local function OpenOptions(P, x, y)
		if Options then Options:remove() end
		if P ~= nil then
		local Pos = 87
		local Siz = 112
		if P:IsA("StringValue") then
			Siz = 132
			Pos = 107
		end
		local Back = Make("Frame", Main, UD(0, 150, 0, Siz), UD(0, x+3, 0, y+4), C3(0.65, 0.65, 0.8), 0, 0, C3())
		local Copy = Make("TextButton", Back, UD(1, -10, 0, 20), UD(0, 5, 0, 5), C3(0.85, 0.85, 0.95), 0, 0, C3(), "Copy", C3())
		local Paste = Make("TextButton", Back, UD(1, -10, 0, 20), UD(0, 5, 0, 25), C3(0.85, 0.85, 0.95), 0, 0, C3(), "Paste", C3())
		local Delete = Make("TextButton", Back, UD(1, -10, 0, 20), UD(0, 5, 0, 45), C3(0.85, 0.85, 0.95), 0, 0, C3(), "Delete", C3())
		local Rename = Make("TextButton", Back, UD(1, -10, 0, 20), UD(0, 5, 0, 65), C3(0.85, 0.85, 0.95), 0, 0, C3(), "Rename", C3())
		if P:IsA("StringValue") then
			local Read = Make("TextButton", Back, UD(1, -10, 0, 20), UD(0, 5, 0, 85), C3(0.85, 0.85, 0.95), 0, 0, C3(), "Read", C3())
			Read.Font = "Arial"
			Read.FontSize = "Size12"
			Read.TextXAlignment = "Left"
			Read.MouseButton1Down:connect(function()
				if Options then Options:remove() end
				local Text = P.Value
				local Lines = {}
				local Last = 1
				for i = 1, #Text, 1 do
					if Text:sub(i,i) == string.char(10) then
						local asd = Text:sub(Last, i-1)
						asd = asd:gsub(string.char(9), "          ")
						table.insert(Lines, asd)
						Last = i+1
					end
				end
				local asd = Text:sub(Last, #Text)
				asd = asd:gsub(string.char(9), "          ")
				table.insert(Lines, asd)
				local MainT = Make("Frame", Main, UD(1, -200, 0, 0), UD(0, 0, 0.5, 0), C3(1, 1, 1), 1, 0, C3())
				local DerpGui = Make("ImageButton", Main, UD(1, 0, 1, 0), UD(0, 0, 0, 0), C3(), 1, 0, C3(), nil, nil, "")
				DerpGui.Visible = false
				local Scroll = Make("Frame", Main, UD(0, 20, 0, Resolution.Y-40), UD(1, -220, 0, 20), C3(0.97, 0.97, 1), 0, 0, C3())
				local ButtonUp = Make("ImageButton", Scroll, UD(0, 20, 0, 20), UD(0, 0, 0, -20), C3(0.85, 0.85, 0.9), 0, 0, C3(), nil, nil, "")
				local ButtonDown = Make("ImageButton", Scroll, UD(0, 20, 0, 20), UD(0, 0, 1, 0), C3(0.85, 0.85, 0.9), 0, 0, C3(), nil, nil, "")
				local ScrollBar = Make("ImageButton", Scroll, UD(1, 0, 0, 150), UD(0, 0, 0, 0), C3(0.75, 0.75, 0.85), 0, 0, C3(), nil, nil, "")
				local Texts = {}
				for i = 0, Resolution.Y-13, 13 do
					local Txt = Make("TextLabel", MainT, UD(1, 0, 0, 13), UD(0, 0, i/Resolution.Y, 0), C3(1, 1, 1), 0, 1, C3(0.9, 0.9, 0.9), "", C3())
					Txt.Font = "Arial"
					Txt.FontSize = "Size12"
					Txt.TextXAlignment = "Left"
					table.insert(Texts, Txt)
				end
				for i, v in pairs(Texts) do
					local line = Lines[i]
					if line then
						v.Text = tostring(line)
					end
				end
				local Normal = UD(0, 0, 0.5, -175)
				ExplorerDec:TweenPosition(UD(0, -200, 0.5, -175), nil, nil, 0.5)
				MainT:TweenSize(UD(1, -200, 0, Resolution.Y+1))
				MainT:TweenPosition(UD(0, 0, 0, -1))
				local ScrollPos = 20
				local ScrollSize = Resolution.Y-40
				local SlideSize = 150
				local Point = ScrollPos + ScrollSize
				local AllPoint = Point-SlideSize-ScrollPos
				ScrollBar.MouseButton1Down:connect(function(x, y)
					local pos2 = ScrollBar.Position.Y.Offset-y
					DerpGui.Visible = true
					local Conn = DerpGui.MouseMoved:connect(function(X, Y)
						local pos = Y+pos2
						if pos < 0 then pos = 0 end
						if pos+SlideSize+ScrollPos > Point then pos = AllPoint end
						ScrollBar.Position = UD(0, 0, 0, pos)
						local Division = (pos/AllPoint)
						local Asd = #Lines-#Texts+5
						if Asd > #Lines then Asd = #Lines end
						local Placement = math.floor((Asd)*Division)
						for i, v in pairs(Texts) do
							local Line = Lines[i+Placement]
							if Line then
								v.Text = Line
							else
								v.Text = ""
							end
						end
					end)
					local co = DerpGui.MouseButton1Up:connect(function()
						DerpGui.Visible = false
						Conn:disconnect()
						co:disconnect()
					end)
				end)
				local Exit = Make("ImageButton", MainT, UD(0, 35, 0, 35), UD(1, -75, 0, 25), C3(), 1, 0, C3(), nil, nil, Icons.Exit)
				local c = Exit.MouseButton1Down:connect(function()
					Scroll:remove()
					Exit:remove()
					for _,v in pairs(Texts) do v.Text = "" end
					ExplorerDec:TweenPosition(Normal, nil, nil, 0.7)
					MainT:TweenSize(UD(0, 0, 0, 0), nil, nil, 0.5)
					MainT:TweenPosition(UD(0.5, 0, 0.5, 0), nil, nil, 0.5)
					wait(0.5)
					MainT:remove()
				end)
			end)
		end
		local Cancel = Make("TextButton", Back, UD(1, -10, 0, 20), UD(0, 5, 0, Pos), C3(0.85, 0.85, 0.95), 0, 0, C3(), "Cancel", C3())
		Copy.Font = "Arial"
		Paste.Font = "Arial"
		Delete.Font = "Arial"
		Rename.Font = "Arial"
		Cancel.Font = "Arial"
		Copy.FontSize = "Size12"
		Paste.FontSize = "Size12"
		Delete.FontSize = "Size12"
		Rename.FontSize = "Size12"
		Cancel.FontSize = "Size12"
		Copy.TextXAlignment = "Left"
		Paste.TextXAlignment = "Left"
		Delete.TextXAlignment = "Left"
		Rename.TextXAlignment = "Left"
		Cancel.TextXAlignment = "Left"
		Copy.MouseButton1Down:connect(function()
			if Options then Options:remove() end
			local a = P.archivable
			P.archivable = true
			Copied = P:clone()
			wait()
			P.archivable = a
		end)
		Paste.MouseButton1Down:connect(function()
			if Options then Options:remove() end
			if Copied then
				local clo = Copied:clone()
				clo.Parent = P
			end
		end)
		Delete.MouseButton1Down:connect(function()
			if Options then Options:remove() end
			P:remove()
			Update(Place)
		end)
		Rename.MouseButton1Down:connect(function()
			if Options then Options:remove() end
			local Sc2 = Instance.new("ScreenGui")
			Sc2.Name = "Rename"
			Sc2.Parent = gui
			local Effect = Make("ImageButton", Sc2, UD(0, 0, 0, 0), UD(0.5, 0, 0.5, 0), C3(0.9, 0.9, 1), 0, 0, C3(), nil, nil, "")
			Effect.AutoButtonColor = false
			local Writeback = Make("Frame", Sc2, UD(0, 0, 0, 0), UD(0.5, 0, 0.5, 0), C3(0.7, 0.7, 0.9), 0, 0, C3())
			local Write = Make("Frame", Writeback, UD(1, -10, 1, -10), UD(0, 5, 0, 5), C3(0.9, 0.9, 0.95), 0, 0, C3())
			local TextBar = Make("TextBox", Write, UD(0.8, 0, 0.15, 0), UD(0.1, 0, 0.2, 0), C3(0.5, 0.5, 0.8), 0, 0, C3(), "", C3(1,1,1))
			TextBar.FontSize = "Size14"
			TextBar.Font = "Arial"
			local Ok = Make("TextButton", Write, UD(0.3, 0, 0.17, 0), UD(0.1, 0, 0.5, 0), C3(0.65, 0.65, 0.85), 0, 0, C3(), "Ok", C3(1,1,1))
			local Canc = Make("TextButton", Write, UD(0.3, 0, 0.17, 0), UD(0.6, 0, 0.5, 0), C3(0.65, 0.65, 0.85), 0, 0, C3(), "Cancel", C3(1,1,1))
			Ok.Font = "ArialBold"
			Ok.FontSize = "Size18"
			Canc.Font = "ArialBold"
			Canc.FontSize = "Size18"
			Effect:TweenPosition(UD(0, 0, 0, -1))
			Writeback:TweenPosition(UD(0.5, -150, 0.5, -60))
			Writeback:TweenSize(UD(0, 300, 0, 120))
			Effect:TweenSize(UD(1, 0, 1, 1))
			local Normal = UD(0, 0, 0.5, -175)
			ExplorerDec:TweenPosition(UD(0, -200, 0.5, -175), nil, nil, 0.4)
			local function TweenBack()
				Effect:TweenPosition(UD(1, 0, 0.5, 0), nil, nil, 0.5)
				Effect:TweenSize(UD(0, 0, 0, 0), nil, nil, 0.5)
				Writeback:TweenPosition(UD(1, 0, 0.5, 0), nil, nil, 0.5)
				Writeback:TweenSize(UD(0, 0, 0, 0), nil, nil, 0.5)
				ExplorerDec:TweenPosition(Normal, nil, nil, 0.5)
				Ok.Text = ""
				Canc.Text = ""
				TextBar.Text = ""
				coroutine.resume(coroutine.create(function()
					for i = 0, 1, 0.08 do
						wait()
						Effect.BackgroundTransparency = 0.4+0.7*i
					end
					Sc2:remove()
				end))
			end
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.035 do
					wait()
					Effect.BackgroundTransparency = 0.4*i
				end
			end))
			Canc.MouseButton1Down:connect(function()
				TweenBack()
			end)
			Ok.MouseButton1Down:connect(function()
				coroutine.resume(coroutine.create(function()
					local derp = P.archivable
					P.archivable = true
					P.Name = TextBar.Text
					wait()
					P.archivable = derp
				end))
				TweenBack()
				Update(Place)
			end)
		end)
		Cancel.MouseButton1Down:connect(function()
			if Options then Options:remove() end
		end)
		Options = Back
		end
	end
	for i,v in pairs(Buttons) do
		v.Gui.MouseButton1Down:connect(function()
			if v.Go ~= nil then
				From = 0
				Update(v.Go)
			end
		end)
		v.Gui.MouseButton2Down:connect(function(x, y)
			OpenOptions(v.Go, x, y)
		end)
	end
	Home.MouseButton1Down:connect(function()
		pcall(function()
			From = 0
			Update(workspace)
		end)
	end)
	Previous.MouseButton1Down:connect(function()
		pcall(function()
			From = 0
			Update(Place.Parent)
		end)
	end)
	Refresh.MouseButton1Down:connect(function()
		pcall(function()
			From = 0
			Update(Place)
		end)
	end)
	NextPage.MouseButton1Down:connect(function()
		pcall(function()
			From = From + Seen
			Update(Place)
		end)
	end)
	PreviousPage.MouseButton1Down:connect(function()
		pcall(function()
			From = From - Seen
			if From < 0 then From = 0 end
			Update(Place)
		end)
	end)
	CopyP.MouseButton1Down:connect(function()
		pcall(function()
			if Options then Options:remove() end
			if Place ~= workspace then
				local a = Place.archivable
				Place.archivable = true
				Copied = Place:clone()
				wait()
				Place.archivable = a
			end
		end)
	end)
	PasteP.MouseButton1Down:connect(function()
		pcall(function()
			if Options then Options:remove() end
			if Copied and Copied ~= workspace then
				local clo = Copied:clone()
				clo.Parent = Place
				Update(Place)
			end
		end)
	end)
	DeleteP.MouseButton1Down:connect(function()
		pcall(function()
			if Options then Options:remove() end
			if Place ~= workspace then
				local plaic = Place.Parent
				if plaic == nil then plaic = workspace end
				Place:remove()
				Update(plaic)
			end
		end)
	end)
	Update(Place)
	Sc.Parent = gui
end

Give(game.Players.LocalPlayer)

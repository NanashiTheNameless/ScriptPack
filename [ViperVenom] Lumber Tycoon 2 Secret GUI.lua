-- [[Please Dont Change the Script it may cause some Bug.]]--

local TheBigGuiParent = game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui")

_G.HUBPW = "Please Sub to Viper Venom"
function CreateInstance(cls,props)
	local inst = Instance.new(cls)
	for i,v in pairs(props) do
		inst[i] = v
	end
	return inst
end

function createStartUp()
	local StartUp = CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name="StartUp",})
	local StartUp2 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,1,0,150),Rotation=0,Selectable=false,Size=UDim2.new(1,-251,0,50),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = StartUp})
	local StartUp3 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=2,Name="Details",Parent = StartUp2})
	local StartUp4 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp3})
	local StartUp5 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp3})
	local StartUp6 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp3})
	local StartUp7 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp3})
	local StartUp8 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=7,MultiLine=false,Text="Password",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5,-321,0,10),Rotation=0,Selectable=true,Size=UDim2.new(0,382,0,30),SizeConstraint=0,Visible=true,ZIndex=2,Name="PWBox",Parent = StartUp2})
	local StartUp9 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="LOGIN",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5,75,0,10),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,30),SizeConstraint=0,Visible=true,ZIndex=2,Name="Login",Parent = StartUp2})
	local StartUp10 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="ABORT",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-110,0,10),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,30),SizeConstraint=0,Visible=true,ZIndex=2,Name="Abort",Parent = StartUp2})
	local StartUp11 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.70980393886566,0,0),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5,-321,0,10),Rotation=0,Selectable=false,Size=UDim2.new(0,382,0,30),SizeConstraint=0,Visible=false,ZIndex=3,Name="Status",Parent = StartUp2})
	local StartUp12 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=7,MultiLine=false,Text="Password",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5,-321,0,10),Rotation=0,Selectable=true,Size=UDim2.new(0,382,0,30),SizeConstraint=0,Visible=true,ZIndex=2,Name="PWBox",Parent = StartUp2})
	local StartUp13 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,50,1,1),Rotation=0,Selectable=false,Size=UDim2.new(0,200,1,-2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Buttons",Parent = StartUp})
	local StartUp14 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = StartUp13})
	local StartUp15 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = StartUp14})
	local StartUp16 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = StartUp14})
	local StartUp17 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = StartUp14})
	local StartUp18 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = StartUp14})
	local StartUp19 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="Command Systems",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Command Systems",Parent = StartUp13})
	local StartUp20 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="WILL EVENTUALLY BE HERE",TextColor3=Color3.new(0.8666667342186,0,0.011764707043767),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0.22745099663734,0.22745099663734,0.22745099663734),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,1,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="Note",Parent = StartUp19})
	local StartUp21 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="Copy Place",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,90),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Copy Place",Parent = StartUp13})
	local StartUp22 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="SCREW RC7",TextColor3=Color3.new(0.8666667342186,0,0.011764707043767),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0.22745099663734,0.22745099663734,0.22745099663734),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,1,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="Note",Parent = StartUp21})
	local StartUp23 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="DEX Explorer",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,145),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Explorer Gui",Parent = StartUp13})
	local StartUp24 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="NEEDS AN UPDATE",TextColor3=Color3.new(0.8666667342186,0,0.011764707043767),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0.22745099663734,0.22745099663734,0.22745099663734),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,1,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="Note",Parent = StartUp23})
	local StartUp25 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="Game Gui",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,200),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Game Gui",Parent = StartUp13})
	local StartUp26 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="[PF] Ghost Aim",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,260),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=false,ZIndex=2,Name="PF Aimbot",Parent = StartUp13})
	local StartUp27 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="PATCHED - CAN'T LOAD",TextColor3=Color3.new(0.8666667342186,0,0.011764707043767),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0.22745099663734,0.22745099663734,0.22745099663734),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,1,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="Note",Parent = StartUp26})
	local StartUp28 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="Sparrow's Map",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=false,Modal=false,Selected=false,Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,255),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Sparrow's Map",Parent = StartUp13})
	local StartUp29 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="NEEDS AN UPDATE",TextColor3=Color3.new(0.8666667342186,0,0.011764707043767),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0.22745099663734,0.22745099663734,0.22745099663734),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,1,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="Note",Parent = StartUp28})
	local StartUp30 = CreateInstance("ImageLabel",{Image="rbxgameasset://Images/captain manegg",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5,-75,1,-190),Rotation=0,Selectable=false,Size=UDim2.new(0,150,0,180),SizeConstraint=0,Visible=false,ZIndex=2,Name="JackSparrowImg",Parent = StartUp13})
	local StartUp31 = CreateInstance("TextLabel",{Font=4,FontSize=11,Text=">",TextColor3=Color3.new(1,1,1),TextScaled=false,TextSize=32,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=0,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-20,0,10),Rotation=0,Selectable=false,Size=UDim2.new(0,30,0,25),SizeConstraint=0,Visible=false,ZIndex=4,Name="CurrScript",Parent = StartUp13})
	local StartUp32 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="USERNAME",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="NameTag",Parent = StartUp13})
	local StartUp33 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=7,MultiLine=false,Text="BETA KEY",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,1,-35),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="BetaBox",Parent = StartUp13})
	local StartUp34 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.70980393886566,0,0),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,1,-70),Rotation=0,Selectable=false,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=false,ZIndex=3,Name="Status",Parent = StartUp13})
	local StartUp35 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,1,0,20),Rotation=0,Selectable=false,Size=UDim2.new(1,-251,0,105),SizeConstraint=0,Visible=true,ZIndex=1,Name="TitleBar",Parent = StartUp})
	local StartUp36 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=2,Name="Details",Parent = StartUp35})
	local StartUp37 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp36})
	local StartUp38 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp36})
	local StartUp39 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp36})
	local StartUp40 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp36})
	local StartUp41 = CreateInstance("ImageLabel",{Image="rbxassetid://435789468",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5,-363,0,-20),Rotation=0,Selectable=false,Size=UDim2.new(0,576,0,150),SizeConstraint=0,Visible=true,ZIndex=3,Name="ImageTitle",Parent = StartUp35})
	local StartUp42 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="pls sub to googledmusic k thx",TextColor3=Color3.new(0.54901963472366,0.54901963472366,0.54901963472366),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0.22745099663734,0.22745099663734,0.22745099663734),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=1,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,1,-22),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="Note",Parent = StartUp35})
	local StartUp43 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="Update Logs",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-160,0,10),Rotation=0,Selectable=true,Size=UDim2.new(0,150,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Updates",Parent = StartUp35})
	local StartUp44 = CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name="ShowLogin",Parent = StartUp})
	local StartUp45 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="HOME",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-110,1,0),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,30),SizeConstraint=0,Visible=true,ZIndex=10,Name="HomeBtn",Parent = StartUp44})
	local StartUp46 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5,-363,1,2),Rotation=0,Selectable=false,Size=UDim2.new(1,-504,1,-201),SizeConstraint=0,Visible=true,ZIndex=1,Name="ClippedHolder",Parent = StartUp})
	local StartUp47 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=2,Name="Details",Parent = StartUp46})
	local StartUp48 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp47})
	local StartUp49 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp47})
	local StartUp50 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp47})
	local StartUp51 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=2,Name="Border",Parent = StartUp47})
	local StartUp52 = CreateInstance("ScrollingFrame",{BottomImage="",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="http://www.roblox.com/asset/?id=444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,50,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,-100,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="ScrollingFrame",Parent = StartUp46})
	local StartUp53 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="[v0.0.0] Jan 1, 2016",TextColor3=Color3.new(0.54901963472366,0.54901963472366,0.54901963472366),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=false,ZIndex=1,Name="Template",Parent = StartUp52})
	local StartUp54 = CreateInstance("TextLabel",{Font=3,FontSize=6,Text="Update Info",TextColor3=Color3.new(0.54901963472366,0.54901963472366,0.54901963472366),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,25,1,0),Rotation=0,Selectable=false,Size=UDim2.new(1,-25,0,15),SizeConstraint=0,Visible=true,ZIndex=1,Name="SubTemplate",Parent = StartUp53})
	local StartUp55 = CreateInstance("TextLabel",{Font=3,FontSize=6,Text="[+]",TextColor3=Color3.new(0.54901963472366,0.54901963472366,0.54901963472366),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-17,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,15,0,15),SizeConstraint=0,Visible=true,ZIndex=1,Name="Tag",Parent = StartUp54})
	return StartUp
end

function startUpScript(guis)
	local k = guis.ShowLogin
k.Parent = guis.Parent

game:GetService("UserInputService").InputChanged:connect(function(input, OnGui)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		local Pos = input.Position
		if k.HomeBtn.AbsolutePosition.X - Pos.X <= 100 then
			if k.HomeBtn.AbsolutePosition.Y - Pos.Y <= 100 then
				k.HomeBtn:TweenPosition(UDim2.new(1, -110, 1, -40), "InOut", "Quad", 0.1)
			else
				k.HomeBtn:TweenPosition(UDim2.new(1, -110, 1, 0), "InOut", "Quad", 0.1)
			end
		else
			k.HomeBtn:TweenPosition(UDim2.new(1, -110, 1, 0), "InOut", "Quad", 0.1)
		end
	end
end)
end

--//REWRITE THIS
local sGuis = createStartUp()
sGuis.Parent = game.CoreGui

startUpScript(sGuis)

local Connections = {}

sGuis.Frame:findFirstChild("PWBox"):Destroy()

local PWBox = sGuis.Frame.PWBox
local StatusBox = sGuis.Frame.Status
local LoginBtn = sGuis.Frame.Login
local CancelBtn = sGuis.Frame.Abort
local Buttons = sGuis.Buttons
local UpdFrame = sGuis.ClippedHolder
local TitleBar = sGuis.TitleBar

local cScript = Buttons.CurrScript

local Attempts = 0
local MaxAttempts = 3
local IsMsg = false
local ScriptName = "Game Gui"

local HomeConn1, HomeConn2, HomeConn3 = nil, nil, nil

_G.Exploit = (function()
	local Intriga = INTRIGAENV or false
    local Elysian = ELYSIAN_INITIATED or false
	local RC7 = fullaccess or false
	local Seven = get_nil_instances or false
	local Cerberus = iscerberusthread or false
	local Protosmasher = is_protosmasher_closure or false
    local RaindropV2 = Raindrop or false
    local ID = _G.ID or false
    local SumonEX = SUMONEX_ENV or false
	
	return (
		(Intriga and "Intriga") or
		(Elysian and "Elysian") or
		(RC7 and "RC7") or
		((Seven and not Protosmasher) and "Seven") or
		(Cerberus and "Cerberus") or
		(Protosmasher and "Protosmasher") or 
		(RaindropV2 and "Raindrop") or
		(ID and "ID") or
		(SumonEX and "SumonEX") or
		"Unknown Exploit"
	)
end)()

InitHomeBtn = function()

end

MSG = function(String, Colour, oString)
	StatusBox.Visible = true
	StatusBox.TextColor3 = Colour
	StatusBox.Text = String:upper()
	wait(oString ~= nil and 1 or 3)
	local meta = nil
	if getrawmetatable then
		meta = getrawmetatable(Instance.new('RemoteEvent'))
		if _G.Exploit == "RC7" then
			fullaccess(meta)
		elseif _G.Exploit == "Protosmasher" then
			changereadonly(meta, false)
		end
		setfenv(1,getfenv(meta.__newindex))
	end
	local loadstring = getfenv().loadstring
	if oString ~= nil then
		local s, e = oString
		spawn(function()
			if s then
				s()
			else
				error(e)
			end
		end)
		spawn(function()
			InitHomeBtn()
		end)
		wait(2)
	end
	StatusBox.Visible = false
end

Init = function()
	local Tmp = UpdFrame.ScrollingFrame.Template
	Tmp.Parent = Tmp.Parent.Parent
	
	sGuis.Buttons.NameTag.Text = game.Players.LocalPlayer.Name:upper()
	
	sGuis.Buttons:TweenPosition(UDim2.new(0, 50, 0, 1))
	wait(1)
	sGuis.Frame:TweenPosition(UDim2.new(0, 250, 0, 150))
	sGuis.TitleBar:TweenPosition(UDim2.new(0, 250, 0, 20))
	
	TitleBar.Updates:Destroy()
	UpdFrame:Destroy()
	
	
	PWBox.Text = _G.HUBPW

	--[[for i, v in pairs(Buttons:GetChildren()) do
		if v:IsA("TextButton") and v.Name ~= "ConfirmCode" then
			Connections["Function" .. tostring(i + 2)] = v.MouseButton1Click:connect(function()
				ScriptName = v.Name
				if cScript.Visible ~= true then
					cScript.Visible = true
				end
				cScript.Position = UDim2.new(0, -20, 0, v.Position.Y.Offset)
			end)
		end
	end]]
end

json_encode = function(t)
	return game.HttpService:JSONEncode(t)
end

json_decode = function(s)
	return game.HttpService:JSONDecode(s)
end

EndScript = function(AB)
	for i = 1, #Connections do
		Connections[i]:disconnect()
	end
	
	sGuis.Frame:TweenPosition(UDim2.new(1, 0, 0, 150))
	sGuis.TitleBar:TweenPosition(UDim2.new(1, 0, 0, 20))
	wait(1)
	sGuis.Buttons:TweenPosition(UDim2.new(0, 50, 1, 0))
	wait(1)
	
	game.CoreGui.StartUp:Destroy() 
	
	if AB then
		if game.CoreGui:findFirstChild("ShowLogin") then
			HomeConn1:disconnect()
			HomeConn2:disconnect()
			HomeConn3:disconnect()
			game.CoreGui.ShowLogin:Destroy()
		end
	end
end

-- GAMES
function Lumber()
local function createLumber()
	local Lumber = CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name="StartUp",})
	local Lumber2 = CreateInstance("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=true,Position=UDim2.new(0,50,0,100),Rotation=0,Selectable=false,Size=UDim2.new(0,400,0,300),SizeConstraint=0,Visible=true,ZIndex=2,Name="Holder",Parent = Lumber})
	local Lumber3 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Lumber2})
	local Lumber4 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Lumber3})
	local Lumber5 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Lumber3})
	local Lumber6 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Lumber3})
	local Lumber7 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Lumber3})
	local Lumber8 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="Time 2 Chop Some Wood",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="TitleBar",Parent = Lumber2})
	local Lumber9 = CreateInstance("TextLabel",{Font=4,FontSize=5,Text="Click and drag",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=1,TextYAlignment=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,2),Rotation=0,Selectable=false,Size=UDim2.new(1,-5,0,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="note",Parent = Lumber8})
	local Lumber10 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-35,0,35),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="FloatTog",Parent = Lumber2})
	local Lumber11 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Float:",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(-6.1999998092651,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Note",Parent = Lumber10})
	local Lumber12 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-35,0,70),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="FreeLandTog",Parent = Lumber2})
	local Lumber13 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Buy Land 4 Free:",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(-6.1999998092651,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Note",Parent = Lumber12})
	local Lumber14 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-35,0,105),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="AllWhitelistTog",Parent = Lumber2})
	local Lumber15 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Whitelisted 2 All:",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(-6.1999998092651,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Note",Parent = Lumber14})
	local Lumber16 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-35,0,140),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="NoClip",Parent = Lumber2})
	local Lumber17 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="NoClip:",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(-6.1999998092651,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Note",Parent = Lumber16})
	local Lumber18 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="TP (Your) Wood 2 You",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(0.5,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="TPWood",Parent = Lumber2})
	local Lumber19 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Get Dragger",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,70),Rotation=0,Selectable=true,Size=UDim2.new(0.5,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Dragger",Parent = Lumber2})
	local Lumber20 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Get Tele Tool",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,105),Rotation=0,Selectable=true,Size=UDim2.new(0.5,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="TPTool",Parent = Lumber2})
	local Lumber21 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,15,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,200,0,300),SizeConstraint=0,Visible=true,ZIndex=2,Name="Extension",Parent = Lumber2})
	local Lumber22 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Lumber21})
	local Lumber23 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Lumber22})
	local Lumber24 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Lumber22})
	local Lumber25 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Lumber22})
	local Lumber26 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Lumber22})
	local Lumber27 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="WAYPOINT LIST",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="NameTag",Parent = Lumber21})
	local Lumber28 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,1,-45),SizeConstraint=0,Visible=true,ZIndex=3,Name="WayPointList",Parent = Lumber21})
	local Lumber29 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Some Text Here",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.04313725605607,0.04313725605607,0.04313725605607),BackgroundTransparency=1,BorderColor3=Color3.new(0,0,0),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,2,0,2),Rotation=0,Selectable=true,Size=UDim2.new(1,-4,0,20),SizeConstraint=0,Visible=false,ZIndex=4,Name="Template",Parent = Lumber28})
	local Lumber30 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="Player",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.5,10,0,210),Rotation=0,Selectable=true,Size=UDim2.new(0.5,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="PlayerBox",Parent = Lumber2})
	local Lumber31 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="WalkSpeed",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.5,10,0,175),Rotation=0,Selectable=true,Size=UDim2.new(0.5,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="SpeedBox",Parent = Lumber2})
	local Lumber32 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Tp To Player",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,210),Rotation=0,Selectable=true,Size=UDim2.new(0.5,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Teleport",Parent = Lumber2})
	local Lumber33 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Change WalkSpeed",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,175),Rotation=0,Selectable=true,Size=UDim2.new(0.5,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="PlayerSpeed",Parent = Lumber2})
	local Lumber34 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Dupe Slot 1",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,140),Rotation=0,Selectable=true,Size=UDim2.new(0.5,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="SaveDupe",Parent = Lumber2})
	return Lumber
end
	
	--//LUMBER TYCOON 2
local service = setmetatable({}, {
	__index = function(t, k)
		return game:GetService(k)
	end
})

local Gui = createLumber()
Gui.Parent = service.CoreGui
local Holder = Gui.Holder

local Bools = {
	["Float"] = false,
	["NoClip"] = false,
	["BasicGold"] = false, -- deprecated
	["WalkSpeed"] = {false, 16},
	["Whitelisted"] = false,
	["FreeStuff"] = false,
	["Light"] = false
}
local Exploit = (function()
	local Intriga = INTRIGAENV or false
    local Elysian = ELYSIAN_INITIATED or false
	local RC7 = fullaccess or false
	local Seven = get_nil_instances or false
	local Cerberus = iscerberusthread or false
	local Protosmasher = is_protosmasher_closure or false
    local RaindropV2 = Raindrop or false
    local ID = _G.ID or false
    local SumonEX = SUMONEX_ENV or false
	
	return (
		(Intriga and "Intriga") or
		(Elysian and "Elysian") or
		(RC7 and "RC7") or
		((Seven and not Protosmasher) and "Seven") or
		(Cerberus and "Cerberus") or
		(Protosmasher and "Protosmasher") or 
		(RaindropV2 and "Raindrop") or
		(ID and "ID") or
		(SumonEX and "SumonEX") or
		"Unknown Exploit"
	)
end)()
local Meta = getrawmetatable(game)
local oMeta = {}

local WayPoints = {
	["Spawn"] 				= CFrame.new(155, 3, 74),
	["Wood R Us"] 			= CFrame.new(265, 3, 57),
	["Land Store"] 			= CFrame.new(258, 3, -99),
	["Dock"] 				= CFrame.new(1114, -1, -197),
	["Link's Logic"] 		= CFrame.new(4605, 3, -727),
	["Cave"] 				= CFrame.new(3581, -179, 430),
	["Volcano"] 			= CFrame.new(-1585, 622, 1140),
	["Swamp"] 				= CFrame.new(-1209, 132, -801),
	["Palm Island"] 		= CFrame.new(2549, -5, -42),
	["Fancy Furnishings"] 	= CFrame.new(491, 3, -1720),
	["Boxed Cars"] 			= CFrame.new(509, 3, -1463),
	["Fine Arts Shop"] 		= CFrame.new(5207, -166, 719),
	["Bob's Shack"] 		= CFrame.new(260, 8, -2542),
	["Bridge"] 				= CFrame.new(113, 11, -977),
	["End Times"] 			= CFrame.new(113, -214, -951),
	["Shrine of Sight"] 	= CFrame.new(-1600, 195, 919),
	["The Den"] 			= CFrame.new(323, 41, 1930),
}
local Pad
local Light
CreatePad = function()
	local p = Instance.new("Part", service.Players.LocalPlayer.Character)
	p.Size = Vector3.new(5, 1, 5)
	p.CFrame = p.Parent.Torso.CFrame * CFrame.new(0, -3.5, 0)
	p.Transparency = 1
	p.Name = "Pad"
	p.Anchored = true
	return p
end
CreateLight = function()
	local p = Instance.new("PointLight", service.Players.LocalPlayer.Character.Torso)
	p.Enabled = true
	p.Range = 20
	p.Name = "Light"
	return p
end

InitMeta = function()
	if Exploit == "RC7" then
		fullaccess(Meta)
	elseif Exploit == "Protosmasher" then
		changereadonly(Meta, false)
	end
	for i,v in pairs(Meta) do
		oMeta[i] = v
	end
	Meta.__index = function(Inst, Method)
		if Method == "FireServer" then
			if Inst.Name == "ReportGoogleAnalyticsEvent" then
				return function(self, ...)
					warn("[PROTECT] Attempted to send a google analytics error report")
				end
			elseif Inst.Name == "Ban" then
				return function(self, ...)
					warn("[PROTECT] Attempted to ban the localplayer")
				end
			else
				return oMeta.__index(Inst, Method)
			end
		elseif Method == "InvokeServer" then
			if Inst.Name == "AddLog" then
				return function(self, first, ...)
					if first == "Exploit" then
						warn("[PROTECT] Attempted to send an exploit log")
					else
						return oMeta.__index(Inst, Meta)
					end
				end
			elseif Inst.Name == "Level" then
				return function(self, ...)
					local tab = {Instance.new("RemoteFunction").InvokeServer(self, ...)}
					tab[1] = 2
					return unpack(tab)
				end
			elseif Inst.Name == "ConfirmIdentity" and Bools.Whitelisted then
				return function(self, ...)
					local tab = {Instance.new("RemoteFunction").InvokeServer(self, ...)}
					tab[1] = true
					return unpack(tab)
				end
			elseif Inst.Name == "ClientIsWhitelisted" and Bools.Whitelisted then
				return function(self, ...)
					local tab = {Instance.new("RemoteFunction").InvokeServer(self, ...)}
					tab[1] = true
					return unpack(tab)
				end
			elseif Inst.Name == "AttemptPurchase" and Bools.FreeStuff then
				return function(self, ...)
					local tab = {Instance.new("RemoteFunction").InvokeServer(self, ...)}
					tab[1] = true
					return unpack(tab)
				end
			else
				return oMeta.__index(Inst, Method)
			end
		elseif Method == "Invoke" then
			if Inst.Name == "Set" then
				return function(self, value, pass, ...)
					local word = ""
					if pass ~= "zebras" then
						word = pass
					else
						if value < 1 then
							word = value
						end
					end
					if not _G.savePass then
						_G.savePass = word
					end
					return unpack({Instance.new("BindableFunction").Invoke(self, value, pass, ...)})
				end
			elseif Inst.Name == "PlayerIsWhitelisted" and Bools.Whitelisted then
				return function(self, player, player2, ...)
					local tab = {Instance.new("BindableFunction").Invoke(self, value, pass, ...)}
					tab[1] = true
					return unpack(tab)
				end
			else
				return oMeta.__index(Inst, Method)
			end
		elseif Method == "Kick" then
			if Inst == service.Players.LocalPlayer then
				warn("[PROTECT] Attempted to kick the localplayer")
				return
			end
		else
			return oMeta.__index(Inst, Method)
		end
	end
end

Teleport = function(CF)
	service.Players.LocalPlayer.Character:SetPrimaryPartCFrame(CF)
end

GetPlayers = function(Str)
	local Users = {} 
	for newString in Str:gmatch("([^,]+)") do
		if newString:lower() == "random" then
			table.insert(Users, service.Players:GetChildren()[math.random(#service.Players:GetChildren())])
		else
			for i,v in pairs(service.Players:GetChildren()) do
				if v.Name:lower():sub(1, #newString) == newString:lower() then
					table.insert(Users, v)
				end
			end
		end
	end
	return Users
end

service.RunService.Stepped:connect(function()
	local LP = service.Players.LocalPlayer
	if LP then
		if LP.Character then
			ypcall(function()
				if Bools["NoClip"] == true then
					if LP.Character:findFirstChild("Head") and LP.Character:findFirstChild("Torso") then
						LP.Character.Head.CanCollide = false
						LP.Character.Torso.CanCollide = false
					end
				end
			end)
			ypcall(function()
				if Bools["Float"] == true then
					if not Pad then
						Pad = CreatePad()
					end
					Pad.CFrame = LP.Character.Torso.CFrame * CFrame.new(0, -3.5, 0)
				else
					Pad:Destroy()
					Pad = nil
				end
			end)
			ypcall(function()
				if Bools["WalkSpeed"][1] == true then
					LP.Character.Humanoid.WalkSpeed = Bools["WalkSpeed"][2]
				--else
				--	LP.Character.Humanoid.WalkSpeed = 16
				end
			end)
			ypcall(function()
				if Bools["Light"] == true then
					if not Light then
						Light = CreateLight()
					end
				else
					Light:Destroy()
					Light = nil
				end
			end)
		end
	end
end)

service.Players.LocalPlayer:GetMouse().KeyDown:connect(function(Key)
	if Key:lower() == "q" then
		Bools["Float"] = not Bools["Float"]
		Holder.FloatTog.Text = (Bools["Float"] and "X" or "")
	elseif Key:lower() == "z" then
		Bools["NoClip"] = not Bools["NoClip"]
		Holder.NoClip.Text = (Bools["NoClip"] and "X" or "")
	elseif Key:lower() == "c" then
		if Bools["WalkSpeed"][1] == false then
			Bools["WalkSpeed"] = {true, (tonumber(Holder.SpeedBox.Text) or 50)}
		else
			Bools["WalkSpeed"] = {false, 16}
		end
	elseif Key:lower() == "x" then
		Bools["Light"] = not Bools["Light"]
	end
end)

Holder.NoClip.MouseButton1Click:connect(function()
	Bools["NoClip"] = not Bools["NoClip"]
	Holder.NoClip.Text = (Bools["NoClip"] and "X" or "")
end)

Holder.FreeLandTog.MouseButton1Click:connect(function()
	Bools["FreeStuff"] = not Bools["FreeStuff"]
	Holder.FreeLandTog.Text = (Bools["FreeStuff"] and "X" or "")
end)

Holder.FloatTog.MouseButton1Click:connect(function()
	Bools["Float"] = not Bools["Float"]
	Holder.FloatTog.Text = (Bools["Float"] and "X" or "")
end)

Holder.AllWhitelistTog.MouseButton1Click:connect(function()
	Bools["Whitelisted"] = not Bools["Whitelisted"]
	Holder.AllWhitelistTog.Text = (Bools["Whitelisted"] and "X" or "")
end)

Holder.TPTool.MouseButton1Click:connect(function()
	local TP = Instance.new("Tool", service.Players.LocalPlayer.Backpack)
	TP.RequiresHandle = false
	TP.RobloxLocked = true
	TP.Name = "Tool"
	TP.TextureId = "rbxassetid://498782357"
	TP.ToolTip = "Teleport Tool"
	TP.Equipped:connect(function(Mouse)
		Mouse.Button1Down:connect(function()
			if Mouse.Target then
				Teleport(CFrame.new(Mouse.Hit.x, Mouse.Hit.y + 5, Mouse.Hit.z))
			end
		end)
	end)
end)

Holder.Dragger.MouseButton1Click:connect(function()
	local Dragger = Instance.new("Tool", service.Players.LocalPlayer.Backpack)
	--Dragger.RobloxLocked = true
	Dragger.Name = "Tool"
	Dragger.TextureId = "rbxassetid://498782357"
	Dragger.ToolTip = "Dragger Tool"
	Dragger.RequiresHandle = false
	local s = Instance.new("LocalScript", Dragger)
	s.Source = [[local Tool = script.Parent

enabled = true
local origTexture = Tool.TextureId
game:GetService("ContentProvider"):Preload("rbxasset://icons/freemove_sel.png")

local selectionBox
local currentSelection
local currentSelectionColors = {}
local selectionLasso
local inGui = false
local inPalette = false
local lockTime = 0

function canSelectObject(part)
	return part and not (part.Locked) and (part.Position - script.Parent.Parent.Head.Position).Magnitude < 500
end

function findModel(part)
	while part ~= nil do
		if part.className == "Model" then
			return part
		end
		part = part.Parent
	end

	return nil
end


function startDrag(mousePart, hitPoint, collection)
	dragger = Instance.new("Dragger")
	pcall(function() dragger:MouseDown(mousePart, hitPoint, collection) end)
end

function collectBaseParts(object, collection)
	if object:IsA("BasePart") then
		collection[#collection+1] = object
	end
	for index,child in pairs(object:GetChildren()) do
		collectBaseParts(child, collection)
	end
end

function onMouseDown(mouse) 
	mouse.Icon ="rbxasset://textures\\GrabRotateCursor.png"
	local part = mouse.Target
	if canSelectObject(part) then
		local hitPoint = mouse.Hit:toObjectSpace(part.CFrame).p
		if trySelection(part) then
			local instances = {}
			collectBaseParts(currentSelection, instances)
			startDrag(part, hitPoint, instances)
			return
		end
	end

	--Clear the selection if we weren't able to lock succesfullu
	onMouseUp(mouse)
end



function onMouseUp(mouse)
	mouse.Icon ="rbxasset://textures\\GrabCursor.png"
	if dragger ~= nil then
		pcall(function() dragger:MouseUp() end)
		dragger = nil
	end
end

function trySelection(part)
	if canSelectObject(part) then
		selectionLasso.Part = part
		local model = findModel(part)
		if model then 		
			return setSelection(model)
		else
			return setSelection(part)
		end
	else
		clearSelection()
		return false
	end
end

function onKeyDown(key)
	if dragger ~= nil then
		if key == 'R' or key == 'r'  then
			dragger:AxisRotate(Enum.Axis.Y)
		elseif key == 'T' or key == 't' then
			dragger:AxisRotate(Enum.Axis.Z)
		end
	end
end
local alreadyMoving
function onMouseMove(mouse)
	if alreadyMoving then
		return
	end

	alreadyMoving = true
	if dragger ~= nil then
		--Maintain the lock
		if time() - lockTime > 3 then
			Instance.Lock(currentSelection)
			lockTime = time()
		end
		
		--Then drag
		pcall(function() dragger:MouseMove(mouse.UnitRay) end)
	else
		trySelection(mouse.Target)
	end
	alreadyMoving = false
end


function saveSelectionColor(instance)
	if instance:IsA("BasePart") then
		currentSelectionColors[instance] = instance.BrickColor
		if instance.BrickColor == BrickColor.Blue() then
			--instance.BrickColor = BrickColor.new("Deep blue")
		else
			--instance.BrickColor = BrickColor.Blue()
		end
	end

	local children = instance:GetChildren() 
	if children then
		for pos, child in pairs(children) do
			saveSelectionColor(child)
		end
	end
end
	
function setSelection(partOrModel)
	if partOrModel ~= currentSelection then
		clearSelection()
		if Instance.Lock(partOrModel) then
			lockTime = time()
			currentSelection = partOrModel
			saveSelectionColor(currentSelection)
			selectionBox.Adornee = currentSelection
			return true
		end
	else
		if currentSelection ~= nil then
			if time() - lockTime > 2 then
				--Maintain the lock
				if not(Instance.Lock(currentSelection)) then
					--we lost the lock
					clearSelection()
					return false
				else
					lockTime = time()
					return true
				end
			else
				return true
			end
		end
	end

	return false
end

function clearSelection()
	if currentSelection ~= nil then
		for part, color in pairs(currentSelectionColors) do
			--part.BrickColor = color
		end
		selectionBox.Adornee = nil
		Instance.Unlock(currentSelection)
	end
	currentSelectionColors = {}
	currentSelection = nil
	selectionLasso.Part = nil
	selectionBox.Adornee = nil
end

function onEquippedLocal(mouse)
	Tool.TextureId = "rbxassetid://498782357"

	local character = script.Parent.Parent
	local player = game.Players:GetPlayerFromCharacter(character)
	guiMain = Instance.new("ScreenGui")
	guiMain.Parent = player.PlayerGui

	inGui = false
	inPalette = false

	mouse.Icon ="rbxasset://textures\\GrabCursor.png"
	mouse.Button1Down:connect(function() onMouseDown(mouse) end)
	mouse.Button1Up:connect(function() onMouseUp(mouse) end)
	mouse.Move:connect(function() onMouseMove(mouse) end)
	mouse.KeyDown:connect(function(string) onKeyDown(string) end)

	selectionBox = Instance.new("SelectionBox")
	selectionBox.Name = "Model Delete Selection"
	selectionBox.Color = BrickColor.Blue()
	selectionBox.Adornee = nil
	selectionBox.Parent = player.PlayerGui

	selectionLasso = Instance.new("SelectionPartLasso")
	selectionLasso.Name = "Model Drag Lasso"
	selectionLasso.Humanoid = character.Humanoid
	selectionLasso.archivable = false
	selectionLasso.Visible = true
	selectionLasso.Parent = game.workspace
	selectionLasso.Color = BrickColor.Blue()

	alreadyMoving = false
	--buildGui(guiMain, mouse)
end

function onUnequippedLocal()
	Tool.TextureId = origTexture
	clearSelection()
	selectionBox:Remove()
	selectionLasso:Remove()
end


Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)
	]]
	s.Disabled = true
	wait(0.1)
	s.Disabled = false
end)

Holder.TPWood.MouseButton1Click:connect(function()
	for _, Log in pairs(service.Workspace.LogModels:GetChildren()) do
		if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
			if Log.Owner.Value == service.Players.LocalPlayer then
				Log:MoveTo(service.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0, 20, 0))
			end
		end
	end
end)

Holder.SaveDupe.MouseButton1Click:connect(function()
	local RQ = service.ReplicatedStorage.LoadSaveRequests.RequestSave
	RQ:InvokeServer(2, service.Players.LocalPlayer)
	RQ:InvokeServer(3, service.Players.LocalPlayer)
	RQ:InvokeServer(4, service.Players.LocalPlayer)
end)

Holder.Teleport.MouseButton1Click:connect(function()
	local Player = GetPlayers(Holder.PlayerBox.Text)[1]
	if Player then
		if Player.Character and Player.Character:findFirstChild("Torso") then
			Teleport(Player.Character.Torso.CFrame * CFrame.new(0, 0, 2))
		end
	end
end)

Holder.PlayerSpeed.MouseButton1Click:connect(function()
	if Holder.SpeedBox.Text ~= "WalkSpeed" and Holder.SpeedBox.Text ~= "16" then
		if tonumber(Holder.SpeedBox.Text) then
			Bools["WalkSpeed"] = {true, tonumber(Holder.SpeedBox.Text)}
		end
	elseif Holder.SpeedBox.Text == "16" then
		Bools["WalkSpeed"] = {false, 16}
	end
end)

local Index = 0
for Name, Value in pairs(WayPoints) do
	Index = Index + 1
	local YSize = 20
	local YPos = ((Index * YSize) - YSize)
	local newLabel = Holder.Extension.WayPointList.Template:Clone()

	newLabel.Name = Name
	newLabel.Text = Name
	newLabel.Parent = Holder.Extension.WayPointList
	newLabel.Visible = true
	newLabel.Position = UDim2.new(0, 2, 0, YPos + 2)
	newLabel.ZIndex = Holder.Extension.WayPointList.ZIndex + 1
	Holder.Extension.WayPointList.CanvasSize = UDim2.new(0, 0, 0, YPos + YSize + 4)
			
	newLabel.MouseButton1Click:connect(function()
		Teleport(Value)
	end)
end

InitMeta()
end

function Apoc()
local function createApoc()
	Apoc = CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name="SpawnGui2.0",})
	Apoc2 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5,-150,0.5,-170),Rotation=0,Selectable=false,Size=UDim2.new(0,300,0,340),SizeConstraint=0,Visible=true,ZIndex=2,Name="Settings",Parent = Apoc})
	Apoc3 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Apoc2})
	Apoc4 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc3})
	Apoc5 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc3})
	Apoc6 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc3})
	Apoc7 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc3})
	Apoc8 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="Anti-Skid Settings",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="NameTag",Parent = Apoc2})
	Apoc9 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="CONTINUE",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,1,-35),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="ConfirmCode",Parent = Apoc2})
	Apoc10 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="Player Age:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=false,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Age",Parent = Apoc2})
	Apoc11 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=7,MultiLine=false,Text="30",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.40000000596046,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0.60000002384186,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc10})
	Apoc12 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="Guests:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,70),Rotation=0,Selectable=false,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Guest",Parent = Apoc2})
	Apoc13 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="X",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.40000000596046,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Btn",Parent = Apoc12})
	Apoc14 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="Friends: ",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,105),Rotation=0,Selectable=false,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Friend",Parent = Apoc2})
	Apoc15 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.40000000596046,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Btn",Parent = Apoc14})
	Apoc16 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="Groups:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,140),Rotation=0,Selectable=false,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Group",Parent = Apoc2})
	Apoc17 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="X",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.40000000596046,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Btn",Parent = Apoc16})
	Apoc18 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="User List:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,175),Rotation=0,Selectable=false,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="UserList",Parent = Apoc2})
	Apoc19 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="X",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.40000000596046,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Btn",Parent = Apoc18})
	Apoc20 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="X",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,245),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="true",Parent = Apoc2})
	Apoc21 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text=" = true",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,5,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="note",Parent = Apoc20})
	Apoc22 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="To not ban any age group, set \"age\" to 0",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,210),Rotation=0,Selectable=false,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="note",Parent = Apoc2})
	Apoc23 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,275),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="false",Parent = Apoc2})
	Apoc24 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text=" = false",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,5,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="note",Parent = Apoc23})
	Apoc25 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5,-100,0,60),Rotation=0,Selectable=false,Size=UDim2.new(0,200,0,20),SizeConstraint=0,Visible=false,ZIndex=4,Name="Spectate",Parent = Apoc})
	Apoc26 = CreateInstance("TextButton",{Font=4,FontSize=6,Text=">",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0.37254902720451,0.37254902720451,0.37254902720451),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,10,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Right",Parent = Apoc25})
	Apoc27 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="<",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-30,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Left",Parent = Apoc25})
	Apoc28 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Gusmanak",TextColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0.37254902720451,0.37254902720451,0.37254902720451),TextStrokeTransparency=0,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=1,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,-25),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=6,Name="pName",Parent = Apoc25})
	Apoc29 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.70588237047195,0.70588237047195,0.70588237047195),BackgroundTransparency=0,BorderColor3=Color3.new(0.70588237047195,0.70588237047195,0.70588237047195),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Backing",Parent = Apoc25})
	Apoc30 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Bar",Parent = Apoc25})
	Apoc31 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="00",TextColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0.37254902720451,0.37254902720451,0.37254902720451),TextStrokeTransparency=0,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=1,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=6,Name="Health",Parent = Apoc25})
	Apoc32 = CreateInstance("TextButton",{Font=4,FontSize=4,Text="(Reset View)",TextColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),TextScaled=false,TextSize=12,TextStrokeColor3=Color3.new(0.37254902720451,0.37254902720451,0.37254902720451),TextStrokeTransparency=0,TextTransparency=0,TextWrapped=true,TextXAlignment=1,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=1,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-80,1,2),Rotation=0,Selectable=true,Size=UDim2.new(0,80,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Reset",Parent = Apoc25})
	Apoc33 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,0,1,0),SizeConstraint=0,Visible=false,ZIndex=1,Name="Toggles",Parent = Apoc})
	Apoc34 = CreateInstance("TextButton",{Font=2,FontSize=10,Text="-",TextColor3=Color3.new(0.75294125080109,0.75294125080109,0.75294125080109),TextScaled=false,TextSize=28,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.39215689897537,0.39215689897537,0.39215689897537),BackgroundTransparency=0.60000002384186,BorderColor3=Color3.new(0,0,0),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,51,1,-49),Rotation=0,Selectable=true,Size=UDim2.new(0,44,0,44),SizeConstraint=0,Visible=true,ZIndex=3,Name="ToggleMain",Parent = Apoc33})
	Apoc35 = CreateInstance("TextLabel",{Font=2,FontSize=5,Text="Toggle Main Gui",TextColor3=Color3.new(1,1,1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=0.5,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0,0,0),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,8,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,0,1,0),SizeConstraint=0,Visible=false,ZIndex=2,Name="Label",Parent = Apoc34})
	Apoc36 = CreateInstance("TextButton",{Font=2,FontSize=10,Text="-",TextColor3=Color3.new(0.75294125080109,0.75294125080109,0.75294125080109),TextScaled=false,TextSize=28,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.39215689897537,0.39215689897537,0.39215689897537),BackgroundTransparency=0.60000002384186,BorderColor3=Color3.new(0,0,0),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,51,1,-97),Rotation=0,Selectable=true,Size=UDim2.new(0,44,0,44),SizeConstraint=0,Visible=true,ZIndex=3,Name="ToggleSpec",Parent = Apoc33})
	Apoc37 = CreateInstance("TextLabel",{Font=2,FontSize=5,Text="Toggle Spectate Gui",TextColor3=Color3.new(1,1,1),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=0.5,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0,0,0),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,8,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,0,1,0),SizeConstraint=0,Visible=false,ZIndex=2,Name="Label",Parent = Apoc36})
	Apoc38 = CreateInstance("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=true,Position=UDim2.new(0.5,-250,0.5,-170),Rotation=0,Selectable=false,Size=UDim2.new(0,500,0,355),SizeConstraint=0,Visible=false,ZIndex=2,Name="MainFrame",Parent = Apoc})
	Apoc39 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Apoc38})
	Apoc40 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc39})
	Apoc41 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc39})
	Apoc42 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc39})
	Apoc43 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc39})
	Apoc44 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="Captain ManEgg's Apoc Gui",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="NameTag",Parent = Apoc38})
	Apoc45 = CreateInstance("TextLabel",{Font=4,FontSize=5,Text="Click and drag",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=1,TextYAlignment=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,2),Rotation=0,Selectable=false,Size=UDim2.new(1,-5,0,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="note",Parent = Apoc44})
	Apoc46 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=false,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="MainButtons",Parent = Apoc38})
	Apoc47 = CreateInstance("TextButton",{Font=4,FontSize=7,Text=">         <",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Local",Parent = Apoc46})
	Apoc48 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="SERVER",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Server",Parent = Apoc46})
	Apoc49 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,70),Rotation=0,Selectable=false,Size=UDim2.new(1,-20,1,-80),SizeConstraint=0,Visible=true,ZIndex=3,Name="LocalPanel",Parent = Apoc38})
	Apoc50 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,135),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Misc",Parent = Apoc49})
	Apoc51 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Hunger",Parent = Apoc50})
	Apoc52 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Infinite Hunger",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,10,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="note",Parent = Apoc51})
	Apoc53 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,30),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Thirst",Parent = Apoc50})
	Apoc54 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Infinite Thirst",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,10,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="note",Parent = Apoc53})
	Apoc55 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,60),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Godmode",Parent = Apoc50})
	Apoc56 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="LocalPlayer God",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,10,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="note",Parent = Apoc55})
	Apoc57 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,160,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Stamina",Parent = Apoc50})
	Apoc58 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Infinite Stamina",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,10,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="note",Parent = Apoc57})
	Apoc59 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,160,0,30),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Reload",Parent = Apoc50})
	Apoc60 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Instant Reload",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,10,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="note",Parent = Apoc59})
	Apoc61 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Remove Cam Limit",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,160,0,60),Rotation=0,Selectable=true,Size=UDim2.new(0,150,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="CamLimit",Parent = Apoc50})
	Apoc62 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Place Tank Mine",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,330,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,150,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="TankMine",Parent = Apoc50})
	Apoc63 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Place VS50",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,330,0,30),Rotation=0,Selectable=true,Size=UDim2.new(0,150,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="VS50",Parent = Apoc50})
	Apoc64 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Place C4",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,330,0,60),Rotation=0,Selectable=true,Size=UDim2.new(0,150,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="C4",Parent = Apoc50})
	Apoc65 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Click TP:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,90),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="ClickTP",Parent = Apoc50})
	Apoc66 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="INACTIVE",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,65,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,80,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Btn",Parent = Apoc65})
	Apoc67 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="After clicking \"INACTIVE,\" the TP-Tool will become active. After clicking on a location on the map, it will disengage",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,160,0,85),Rotation=0,Selectable=false,Size=UDim2.new(1,-160,0,55),SizeConstraint=0,Visible=true,ZIndex=3,Name="note",Parent = Apoc50})
	Apoc68 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=2,Name="Spawning",Parent = Apoc49})
	Apoc69 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,15,0,-70),Rotation=0,Selectable=false,Size=UDim2.new(0,200,0,355),SizeConstraint=0,Visible=true,ZIndex=2,Name="Extension",Parent = Apoc68})
	Apoc70 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Apoc69})
	Apoc71 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc70})
	Apoc72 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc70})
	Apoc73 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc70})
	Apoc74 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc70})
	Apoc75 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="LOADOUTS - LOCAL",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="NameTag",Parent = Apoc69})
	Apoc76 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,1,-45),SizeConstraint=0,Visible=true,ZIndex=3,Name="LoadoutList",Parent = Apoc69})
	Apoc77 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="CLICK HERE TO SEARCH",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,60),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Search",Parent = Apoc68})
	Apoc78 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="SPAWN ITEM",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,90),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="Spawn",Parent = Apoc68})
	Apoc79 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Amount: ",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,30),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Count",Parent = Apoc68})
	Apoc80 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,100,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc79})
	Apoc81 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Item:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Item",Parent = Apoc68})
	Apoc82 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="nil",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,100,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,39,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc81})
	Apoc83 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,110),SizeConstraint=0,Visible=true,ZIndex=3,Name="ItemList",Parent = Apoc68})
	Apoc84 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="MilitaryPackBlack",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.04313725605607,0.04313725605607,0.04313725605607),BackgroundTransparency=1,BorderColor3=Color3.new(0,0,0),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,2,0,2),Rotation=0,Selectable=true,Size=UDim2.new(1,-4,0,20),SizeConstraint=0,Visible=false,ZIndex=4,Name="Template",Parent = Apoc83})
	Apoc85 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,70),Rotation=0,Selectable=false,Size=UDim2.new(1,-20,1,-80),SizeConstraint=0,Visible=false,ZIndex=7,Name="ServerPanel",Parent = Apoc38})
	Apoc86 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-215,0,-70),Rotation=0,Selectable=false,Size=UDim2.new(0,200,0,355),SizeConstraint=0,Visible=true,ZIndex=2,Name="Buttons",Parent = Apoc85})
	Apoc87 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Apoc86})
	Apoc88 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc87})
	Apoc89 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc87})
	Apoc90 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc87})
	Apoc91 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc87})
	Apoc92 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="SERVER PANELS",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="NameTag",Parent = Apoc86})
	Apoc93 = CreateInstance("TextButton",{Font=4,FontSize=7,Text=" > PLAYER",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=0,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Player",Parent = Apoc86})
	Apoc94 = CreateInstance("TextButton",{Font=4,FontSize=7,Text=" SPAWNING",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=0,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,70),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Spawning",Parent = Apoc86})
	Apoc95 = CreateInstance("TextButton",{Font=4,FontSize=7,Text=" VEHICLE",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=0,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,105),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Vehicle",Parent = Apoc86})
	Apoc96 = CreateInstance("TextButton",{Font=4,FontSize=7,Text=" TELEPORT",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=0,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,140),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Teleport",Parent = Apoc86})
	Apoc97 = CreateInstance("TextButton",{Font=4,FontSize=7,Text=" SKIN GIVER",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=0,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,175),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Skin Giver",Parent = Apoc86})
	Apoc98 = CreateInstance("TextButton",{Font=4,FontSize=7,Text=" MISC",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=0,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,210),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="Misc",Parent = Apoc86})
	Apoc99 = CreateInstance("TextButton",{Font=4,FontSize=7,Text=" INV VIEWER",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=0,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,245),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=false,ZIndex=2,Name="InvViewer",Parent = Apoc86})
	Apoc100 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=2,Name="Player",Parent = Apoc85})
	Apoc101 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,125),SizeConstraint=0,Visible=true,ZIndex=3,Name="ModeList",Parent = Apoc100})
	Apoc102 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,125),SizeConstraint=0,Visible=true,ZIndex=3,Name="PlayerList",Parent = Apoc100})
	Apoc103 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="EXECUTE",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,240),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="Execute",Parent = Apoc100})
	Apoc104 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,0,0,135),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,95),SizeConstraint=0,Visible=true,ZIndex=3,Name="StatList",Parent = Apoc100})
	Apoc105 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Vars",Parent = Apoc100})
	Apoc106 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Mode:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,160),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Mode",Parent = Apoc105})
	Apoc107 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="nil",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,100,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc106})
	Apoc108 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Player:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,135),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Player",Parent = Apoc105})
	Apoc109 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc108})
	Apoc110 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Stat:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,185),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Stat",Parent = Apoc105})
	Apoc111 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="nil",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,100,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc110})
	Apoc112 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Value:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,210),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Value",Parent = Apoc105})
	Apoc113 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc112})
	Apoc114 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=false,ZIndex=2,Name="Spawning",Parent = Apoc85})
	Apoc115 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,140),SizeConstraint=0,Visible=true,ZIndex=3,Name="ItemList",Parent = Apoc114})
	Apoc116 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,15,0,-70),Rotation=0,Selectable=false,Size=UDim2.new(0,200,0,355),SizeConstraint=0,Visible=true,ZIndex=2,Name="Extension",Parent = Apoc114})
	Apoc117 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Apoc116})
	Apoc118 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc117})
	Apoc119 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc117})
	Apoc120 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc117})
	Apoc121 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc117})
	Apoc122 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="LOADOUTS - SERVER",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="NameTag",Parent = Apoc116})
	Apoc123 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,1,-45),SizeConstraint=0,Visible=true,ZIndex=3,Name="LoadoutList",Parent = Apoc116})
	Apoc124 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="CLICK HERE TO SEARCH",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,90),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Search",Parent = Apoc114})
	Apoc125 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="SPAWN ITEM",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,120),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="Spawn",Parent = Apoc114})
	Apoc126 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Amount: ",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,30),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Count",Parent = Apoc114})
	Apoc127 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,100,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc126})
	Apoc128 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Item:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Item",Parent = Apoc114})
	Apoc129 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="nil",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,100,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,39,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc128})
	Apoc130 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Player:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,60),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Player",Parent = Apoc114})
	Apoc131 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,100,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc130})
	Apoc132 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,150),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,125),SizeConstraint=0,Visible=true,ZIndex=3,Name="PlayerList",Parent = Apoc114})
	Apoc133 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=false,ZIndex=2,Name="Vehicle",Parent = Apoc85})
	Apoc134 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Heal",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,30),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Heal",Parent = Apoc133})
	Apoc135 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Explode",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,60),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Explode",Parent = Apoc133})
	Apoc136 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Fix Speed",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,90),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="ResetSpeed",Parent = Apoc133})
	Apoc137 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Go To",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,120),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="GoTo",Parent = Apoc133})
	Apoc138 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Bring",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,150),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Bring",Parent = Apoc133})
	Apoc139 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Change Speed",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,180),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Speed",Parent = Apoc133})
	Apoc140 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Cycler",Parent = Apoc133})
	Apoc141 = CreateInstance("TextButton",{Font=4,FontSize=6,Text=">",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.76999998092651,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Right",Parent = Apoc140})
	Apoc142 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="<",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.18999999761581,-1,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Left",Parent = Apoc140})
	Apoc143 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Vehicle Not Set",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.25,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0.5,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Lbl",Parent = Apoc140})
	Apoc144 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Change Horn",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,210),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Horn",Parent = Apoc133})
	Apoc145 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,220,0,30),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,110),SizeConstraint=0,Visible=true,ZIndex=3,Name="PlayerList",Parent = Apoc133})
	Apoc146 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Dupe",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,240),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Dupe",Parent = Apoc133})
	Apoc147 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Vars",Parent = Apoc133})
	Apoc148 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Player:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,220,0,145),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Player",Parent = Apoc147})
	Apoc149 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,100,0,5),Rotation=0,Selectable=true,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc148})
	Apoc150 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Offroad:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,220,0,175),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Offroad",Parent = Apoc147})
	Apoc151 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,100,0,5),Rotation=0,Selectable=true,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc150})
	Apoc152 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Onroad:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,220,0,205),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Onroad",Parent = Apoc147})
	Apoc153 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,100,0,5),Rotation=0,Selectable=true,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc152})
	Apoc154 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Horn ID:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,220,0,235),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Horn",Parent = Apoc147})
	Apoc155 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,100,0,5),Rotation=0,Selectable=true,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc154})
	Apoc156 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Godmode",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,110,0,30),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Godmode",Parent = Apoc133})
	Apoc157 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Ungodmode",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,110,0,60),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Ungodmode",Parent = Apoc133})
	Apoc158 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=false,ZIndex=2,Name="Teleport",Parent = Apoc85})
	Apoc159 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Main",Parent = Apoc158})
	Apoc160 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Teleport",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,210),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Teleport",Parent = Apoc159})
	Apoc161 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,110),SizeConstraint=0,Visible=true,ZIndex=4,Name="PlayerList",Parent = Apoc159})
	Apoc162 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Add WayPoint",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,120),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="AddWP",Parent = Apoc159})
	Apoc163 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Remove WayPoint",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,150),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="RemWP",Parent = Apoc159})
	Apoc164 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,15,0,-70),Rotation=0,Selectable=false,Size=UDim2.new(0,200,0,355),SizeConstraint=0,Visible=true,ZIndex=2,Name="Extension",Parent = Apoc159})
	Apoc165 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Apoc164})
	Apoc166 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc165})
	Apoc167 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc165})
	Apoc168 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc165})
	Apoc169 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Apoc165})
	Apoc170 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="WAYPOINT LIST",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="NameTag",Parent = Apoc164})
	Apoc171 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,1,-45),SizeConstraint=0,Visible=true,ZIndex=3,Name="WayPointList",Parent = Apoc164})
	Apoc172 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Vars",Parent = Apoc158})
	Apoc173 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Mode:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Method",Parent = Apoc172})
	Apoc174 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Goto",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Btn",Parent = Apoc173})
	Apoc175 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Location: ",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,60),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Player",Parent = Apoc172})
	Apoc176 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc175})
	Apoc177 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Type:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,30),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Type",Parent = Apoc172})
	Apoc178 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Player",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Btn",Parent = Apoc177})
	Apoc179 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Name:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,180),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="wName",Parent = Apoc172})
	Apoc180 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc179})
	Apoc181 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="X Pos:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,90),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="X",Parent = Apoc172})
	Apoc182 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc181})
	Apoc183 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Z Pos:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,150),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Z",Parent = Apoc172})
	Apoc184 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc183})
	Apoc185 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Y Pos:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,120),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Y",Parent = Apoc172})
	Apoc186 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc185})
	Apoc187 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=false,ZIndex=2,Name="Misc",Parent = Apoc85})
	Apoc188 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Vars",Parent = Apoc187})
	Apoc189 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Message:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Message",Parent = Apoc188})
	Apoc190 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.20000000298023,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0.80000001192093,0,0,50),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc189})
	Apoc191 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Colour:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,60),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Colour",Parent = Apoc188})
	Apoc192 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.20784315466881,0.65490198135376,0.15686275064945),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.20000000298023,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Green",Parent = Apoc191})
	Apoc193 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.65490198135376,0,0.0078431377187371),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.20000000298023,30,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Red",Parent = Apoc191})
	Apoc194 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.89019614458084,0.89019614458084,0),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.20000000298023,60,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Yellow",Parent = Apoc191})
	Apoc195 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.2549019753933,0.94509810209274,0.94509810209274),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.20000000298023,90,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Blue",Parent = Apoc191})
	Apoc196 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="X",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.20000000298023,120,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="White",Parent = Apoc191})
	Apoc197 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Player:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,90),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Player",Parent = Apoc188})
	Apoc198 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc197})
	Apoc199 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="ID:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,120),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="ID",Parent = Apoc188})
	Apoc200 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc199})
	Apoc201 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Main",Parent = Apoc187})
	Apoc202 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Send MSG",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,180),Rotation=0,Selectable=true,Size=UDim2.new(0.30000001192093,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="SendMSG",Parent = Apoc201})
	Apoc203 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,60),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,110),SizeConstraint=0,Visible=true,ZIndex=4,Name="PlayerList",Parent = Apoc201})
	Apoc204 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Kill All Zombies",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,210),Rotation=0,Selectable=true,Size=UDim2.new(0.30000001192093,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="KillZombies",Parent = Apoc201})
	Apoc205 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Stop Music",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.34999999403954,0,0,210),Rotation=0,Selectable=true,Size=UDim2.new(0.30000001192093,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="StopMusic",Parent = Apoc201})
	Apoc206 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Play Music",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.34999999403954,0,0,180),Rotation=0,Selectable=true,Size=UDim2.new(0.30000001192093,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="PlayMusic",Parent = Apoc201})
	Apoc207 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Clear Spawned Loot",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,240),Rotation=0,Selectable=true,Size=UDim2.new(0.30000001192093,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="ClearLoot",Parent = Apoc201})
	Apoc208 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Change Shirt",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.69999998807907,0,0,210),Rotation=0,Selectable=true,Size=UDim2.new(0.30000001192093,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Shirt",Parent = Apoc201})
	Apoc209 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Change Pants",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.69999998807907,0,0,180),Rotation=0,Selectable=true,Size=UDim2.new(0.30000001192093,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Pants",Parent = Apoc201})
	Apoc210 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=false,ZIndex=2,Name="Skin Giver",Parent = Apoc85})
	Apoc211 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Vars",Parent = Apoc210})
	Apoc212 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Primary:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Primary",Parent = Apoc211})
	Apoc213 = CreateInstance("ImageButton",{Image="",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0.5,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,35,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=9,Name="Mat",Parent = Apoc212})
	Apoc214 = CreateInstance("ImageButton",{Image="",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0.5,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=9,Name="Col",Parent = Apoc212})
	Apoc215 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Player:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,75),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Player",Parent = Apoc211})
	Apoc216 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc215})
	Apoc217 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Slot: ",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,105),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Slot",Parent = Apoc211})
	Apoc218 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1.3999999761581,5,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc217})
	Apoc219 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Secondary:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,35),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Secondary",Parent = Apoc211})
	Apoc220 = CreateInstance("ImageButton",{Image="",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0.5,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=9,Name="Col",Parent = Apoc219})
	Apoc221 = CreateInstance("ImageButton",{Image="",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0.5,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,35,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,25,0,25),SizeConstraint=0,Visible=true,ZIndex=9,Name="Mat",Parent = Apoc219})
	Apoc222 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Main",Parent = Apoc210})
	Apoc223 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,125),SizeConstraint=0,Visible=true,ZIndex=4,Name="MaterialList",Parent = Apoc222})
	Apoc224 = CreateInstance("ImageButton",{Image="",ImageColor3=Color3.new(1,1,1),ImageRectOffset=Vector2.new(0,0),ImageRectSize=Vector2.new(0,0),ImageTransparency=0.5,ScaleType=0,SliceCenter=Rect.new(0,0,0,0),AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.14901961386204,0.14901961386204,0.14901961386204),BackgroundTransparency=0,BorderColor3=Color3.new(0.094117656350136,0.51764708757401,0.12549020349979),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,4,0,4),Rotation=0,Selectable=true,Size=UDim2.new(0,42,0,42),SizeConstraint=0,Visible=false,ZIndex=4,Name="Template",Parent = Apoc223})
	Apoc225 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0.50999999046326,0,0,135),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,125),SizeConstraint=0,Visible=true,ZIndex=4,Name="PlayerList",Parent = Apoc222})
	Apoc226 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Set Skin",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,135),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="SetSkin",Parent = Apoc222})
	Apoc227 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Spawn Crate",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,165),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="SpawnCrate",Parent = Apoc222})
	Apoc228 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=false,ZIndex=2,Name="InvViewer",Parent = Apoc85})
	Apoc229 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Heal",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,30),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Heal",Parent = Apoc228})
	Apoc230 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Explode",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,60),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Explode",Parent = Apoc228})
	Apoc231 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Fix Speed",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,90),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="ResetSpeed",Parent = Apoc228})
	Apoc232 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Go To",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,120),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="GoTo",Parent = Apoc228})
	Apoc233 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Bring",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,150),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Bring",Parent = Apoc228})
	Apoc234 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Change Speed",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,180),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Speed",Parent = Apoc228})
	Apoc235 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Cycler",Parent = Apoc228})
	Apoc236 = CreateInstance("TextButton",{Font=4,FontSize=6,Text=">",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.76999998092651,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Right",Parent = Apoc235})
	Apoc237 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="<",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.18999999761581,-1,0,0),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Left",Parent = Apoc235})
	Apoc238 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Vehicle Not Set",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.25,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0.5,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Lbl",Parent = Apoc235})
	Apoc239 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Change Horn",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,210),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Horn",Parent = Apoc228})
	Apoc240 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,220,0,30),Rotation=0,Selectable=true,Size=UDim2.new(0.49000000953674,0,0,110),SizeConstraint=0,Visible=true,ZIndex=3,Name="PlayerList",Parent = Apoc228})
	Apoc241 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Dupe",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,240),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Dupe",Parent = Apoc228})
	Apoc242 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,0),SizeConstraint=0,Visible=true,ZIndex=4,Name="Vars",Parent = Apoc228})
	Apoc243 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Player:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,220,0,145),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Player",Parent = Apoc242})
	Apoc244 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,100,0,5),Rotation=0,Selectable=true,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc243})
	Apoc245 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Offroad:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,220,0,175),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Offroad",Parent = Apoc242})
	Apoc246 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,100,0,5),Rotation=0,Selectable=true,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc245})
	Apoc247 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Onroad:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,220,0,205),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Onroad",Parent = Apoc242})
	Apoc248 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,100,0,5),Rotation=0,Selectable=true,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc247})
	Apoc249 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Horn ID:",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,220,0,235),Rotation=0,Selectable=false,Size=UDim2.new(0.20000000298023,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Horn",Parent = Apoc242})
	Apoc250 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,100,0,5),Rotation=0,Selectable=true,Size=UDim2.new(1,39,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Box",Parent = Apoc249})
	Apoc251 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Godmode",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,110,0,30),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Godmode",Parent = Apoc228})
	Apoc252 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Ungodmode",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,110,0,60),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Ungodmode",Parent = Apoc228})
	Apoc253 = CreateInstance("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=true,Position=UDim2.new(0.5,-250,0.5,-170),Rotation=0,Selectable=false,Size=UDim2.new(0,500,0,355),SizeConstraint=0,Visible=false,ZIndex=6,Name="OutputPanel",Parent = Apoc})
	Apoc254 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=7,Name="Details",Parent = Apoc253})
	Apoc255 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=8,Name="Border",Parent = Apoc254})
	Apoc256 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=8,Name="Border",Parent = Apoc254})
	Apoc257 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=8,Name="Border",Parent = Apoc254})
	Apoc258 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=8,Name="Border",Parent = Apoc254})
	Apoc259 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="DEBUGGING CONSOLE",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=7,Name="NameTag",Parent = Apoc253})
	Apoc260 = CreateInstance("TextLabel",{Font=4,FontSize=5,Text="Click and drag",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=1,TextYAlignment=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,2),Rotation=0,Selectable=false,Size=UDim2.new(1,-5,0,0),SizeConstraint=0,Visible=true,ZIndex=8,Name="note",Parent = Apoc259})
	Apoc261 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,1,-105),SizeConstraint=0,Visible=true,ZIndex=7,Name="Output",Parent = Apoc253})
	Apoc262 = CreateInstance("TextLabel",{Font=4,FontSize=5,Text="[00:00.0] Message Here",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,2,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,-4,0,14),SizeConstraint=0,Visible=false,ZIndex=7,Name="Template",Parent = Apoc261})
	Apoc263 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,230,1,-30),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=7,Name="ScrollLock",Parent = Apoc253})
	Apoc264 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Lock Scrolling",TextColor3=Color3.new(0.59607845544815,0.59607845544815,0.59607845544815),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,10,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=7,Name="note",Parent = Apoc263})
	Apoc265 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Clear Console",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,120,1,-30),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=7,Name="Clear",Parent = Apoc253})
	Apoc266 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,10,1,-60),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,20),SizeConstraint=0,Visible=true,ZIndex=7,Name="Box",Parent = Apoc253})
	Apoc267 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Execute",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,1,-30),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=7,Name="Execute",Parent = Apoc253})
	Apoc268 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,5,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,200,0,355),SizeConstraint=0,Visible=true,ZIndex=6,Name="Extension",Parent = Apoc253})
	Apoc269 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=8,Name="Details",Parent = Apoc268})
	Apoc270 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=8,Name="Border",Parent = Apoc269})
	Apoc271 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=8,Name="Border",Parent = Apoc269})
	Apoc272 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=8,Name="Border",Parent = Apoc269})
	Apoc273 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=8,Name="Border",Parent = Apoc269})
	Apoc274 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="COMMANDS",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=7,Name="NameTag",Parent = Apoc268})
	Apoc275 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,0,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,1,-45),SizeConstraint=0,Visible=true,ZIndex=7,Name="CmdList",Parent = Apoc268})
	Apoc276 = CreateInstance("TextLabel",{Font=4,FontSize=5,Text="Kill [p]",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,5,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,-5,0,20),SizeConstraint=0,Visible=false,ZIndex=7,Name="Template",Parent = Apoc275})
	return Apoc
end
	
	--//Apocalypse Rising: Reimagined
local service = setmetatable({}, {
	__index = function(t, k)
		return game:GetService(k)
	end
})
local Gui = createApoc()
Gui.Parent = service.CoreGui

--//MAIN GUI VARS
Main = Gui:WaitForChild("MainFrame")
Spec = Gui:WaitForChild("Spectate")
Output = Gui:WaitForChild("OutputPanel")
Settings = Gui:WaitForChild("Settings")
Toggles = Gui:WaitForChild("Toggles")
--//SUB GUI VARS
local Btns = Main:WaitForChild("MainButtons")
local sPanel = Main:WaitForChild("ServerPanel")
local lPanel = Main:WaitForChild("LocalPanel")
local newMap = service.Lighting.Map:Clone()
local newTarg = newMap.Frame.Targ
local sBtns = sPanel.Buttons
local VehicleFr = sPanel.Vehicle
local SkinFr = sPanel["Skin Giver"]
local MiscFr = sPanel.Misc
local SpawnFr = sPanel.Spawning
local PlayerFr = sPanel.Player
local TpFr = sPanel.Teleport
local InvFr = sPanel.InvViewer
local lSpawnFr = lPanel.Spawning
local lMiscFr = lPanel.Misc
local Template = lPanel.Spawning.ItemList.Template
local sTemplate = SkinFr.Main.MaterialList.Template
local oTemplate = Output.Output.Template
local cTemplate = Output.Extension.CmdList.Template

--//NON-GUI VARS
_G.ApocPass = "0"
_G.Functions = {}

local CurrCol, CurrVeh, CurrPlr, CurrSnd = "White", nil, nil, nil

local Scale = {
	["X"] = 23.9, 
	["Z"] = 23.9
}

local Alpha = {"A", "C", "d", "g", "L", "p", "s", "T", "Z"}
local Fillers = {"a", "B", "i", "P", "Y", "S"}

local Colours = {21, 23, 37, 106, 24, 107, 104, 1022, 141, 1011, 1007, 26, 192, 18, 5, 1010, 1004, 1009, 1020, 1032, 1, 1003, 1017, 1013, 301, 1006, 194, 194, 332, 333 ,226, 346, 361, 327, 1001, 335, 329, 309, 337, 194, 1016, 1026, 1006, 1027, 331, 325, 226, 1024, 105, 324, 1027, 347, 346, 1022, 1019, 133, 1018, 1021, 338, 315}
local Materials = {18662154, 183187728, 183187755, 183187762, 183187712, 183187778, 183187786, 183187745, 183187739}
local Badges = {117136259, 117135712, 117135325, 160133328, 160133359, 117136113, 117135579, 117135227, 160133256, 160133290}
local BanSettings = {
	["LIST"] = true,
	["GROUPS"] = true,
	["FRIENDS"] = false,
	["GUESTS"] = true,
	["AGE"] = 30,
	
	["SET"] = false
}
local Bools = {
	["Stamina"] = false,
	["Hunger"] = false,
	["Thirst"] = false,
	["Godmode"] = false,
	["Reload"] = false,
	["ClickTP"] = false
}
local input, Commands, GPS, Locations, Allowed, LoopHealed, WayPoints, Banned = {}, {}, {}, {}, {}, {}, {}, {}
local VehicleSpeeds = {
	["PoliceCar"] = {68, 36},
	["DeliveryVan"] = {58, 30},
	["Bicycle"] = {36, 28},
	["Tractor"] = {45, 40},
	["Pickup2"] = {58, 40},
	["Jeep"] = {58, 40},
	["SUV"] = {60, 42},
	["ATV"] = {52, 46},
	["Jeep2"] = {58, 40},
	["Motorside"] = {55, 35},
	["Motorcycle"] = {55, 35},
	["Car"] = {60, 35},
	["Firetruck"] = {66, 36},
	["Ural2"] = {55, 35},
	["Ural"] = {55, 35},
	["Pickup"] = {58, 40},
	["Humvee2"] = {62, 40},
	["Humvee"] = {62, 40},
	["Ambulance"] = {65, 35},
}
local Loadouts = {
	{["Name"] = "Breacher", ["List"] = {
		["Entrencher"] = 1,
		["OmniLight"] = 1,
		["Painkillers"] = 4,
		["ACOG"] = 1,
		["MRE"] = 2,
		["Detonator"] = 1,
		["Compass"] = 1,
		["M4A1"] = 1,
		["Map"] = 1,
		["MilitaryPackBlack"] = 1,
		["GPS"] = 1,
		["BloodBag"] = 4,
		["WaterBottle"] = 2,
		["STANAGAmmo100"] = 8,
		["Grip"] = 1,
		["Sabre"] = 1,
		["Suppressor556"] = 1,
	}},
	{["Name"] = "Overwatch", ["List"] = {
		["Entrencher"] = 1,
		["OmniLight"] = 1,
		["ACOG"] = 1,
		["MRE"] = 2,
		["Detonator"] = 1,
		["VS50"] = 2,
		["Compass"] = 1,
		["Map"] = 1,
		["MilitaryPackBlack"] = 1,
		["M14"] = 1,
		["GPS"] = 1,
		["BloodBag"] = 4,
		["WaterBottle"] = 2,
		["M14Ammo50"] = 11,
		["Grip"] = 1,
		["Sabre"] = 1,
		["Supressor762"] = 1,
	}},
	{["Name"] = "Mercenary", ["List"] = {
		["Entrencher"] = 1,
		["OmniLight"] = 1,
		["Mk 17"] = 1,
		["ACOG"] = 1,
		["MRE"] = 2,
		["Detonator"] = 1,
		["Compass"] = 1,
		["Map"] = 1,
		["MilitaryPackBlack"] = 1,
		["GPS"] = 1,
		["BloodBag"] = 4,
		["WaterBottle"] = 2,
		["C4"] = 1,
		["M14Ammo50"] = 11,
		["Grip"] = 1,
		["Sabre"] = 1,
		["Supressor762"] = 1,
	}},
	{["Name"] = "Spec Ops", ["List"] = {
		["Entrencher"] = 1,
		["OmniLight"] = 1,
		["ACOG"] = 1,
		["Laser"] = 1,
		["Detonator"] = 1,
		["Compass"] = 1,
		["Map"] = 1,
		["C4"] = 3,
		["MilitaryPackBlack"] = 1,
		["M9Ammo32"] = 2,
		["MP5"] = 1,
		["GPS"] = 1,
		["BallisticSpecOps"] = 1,
		["CamoSpecialBottom"] = 1,
		["G18"] = 1,
		["BloodBad"] = 7,
		["MaskSpecOps"] = 1,
		["MP5Ammo"] = 8,
		["Suppressor9"] = 1,
		["Sabre"] = 1,
		["CamoSpecialTop"] = 1,
	}},
	{["Name"] = "Terrorist", ["List"] = {
		["Map"] = 1,
		["OmniLight"] = 1,
		["MilitaryPackBlack"] = 1,
		["GPS"] = 1,
		["C4"] = 10,
		["Entrencher"] = 1,
		["Detonator"] = 1,
		["AK-47"] = 1,
		["Compass"] = 1,
		["Sabre"] = 1,
		["AK47Ammo75"] = 9,
	}},
	{["Name"] = "Support", ["List"] = {
		["Map"] = 1,
		["OmniLight"] = 1,
		["C4"] = 2,
		["MilitaryPackBlack"] = 1,
		["M9Ammo32"] = 2,
		["ACOG"] = 1,
		["GPS"] = 1,
		["Grip"] = 1,
		["G18"] = 1,
		["STANAGAmmo100"] = 5,
		["BloodBad"] = 11,
		["Detonator"] = 1,
		["SCAR-L"] = 1,
		["Compass"] = 1,
		["Sabre"] = 1,
		["Entrencher"] = 1,
	}},
	{["Name"] = "Rusher", ["List"] = {
		["Map"] = 1,
		["OmniLight"] = 1,
		["MilitaryPackBlack"] = 1,
		["Painkillers"] = 3,
		["C4"] = 2,
		["GPS"] = 1,
		["PPSHAmmo"] = 8,
		["G18Ammo"] = 2,
		["G18"] = 1,
		["BloodBad"] = 5,
		["Detonator"] = 1,
		["PPSH"] = 1,
		["Compass"] = 1,
		["Sabre"] = 1,
		["Entrencher"] = 1,
	}},
	{["Name"] = "Demolition", ["List"] = {
		["Entrencher"] = 1,
		["OmniLight"] = 1,
		["ACOG"] = 1,
		["Laser"] = 1,
		["Detonator"] = 1,
		["VS50"] = 2,
		["Compass"] = 1,
		["AK47Ammo75"] = 5,
		["Map"] = 1,
		["MilitaryPackBlack"] = 1,
		["M9Ammo32"] = 2,
		["GPS"] = 1,
		["TM46"] = 2,
		["AK-104"] = 1,
		["C4"] = 3,
		["BloodBad"] = 4,
		["Sabre"] = 1,
		["G18"] = 1,
	}},
	{["Name"] = "M.Q.C", ["List"] = {
		["Entrencher"] = 1,
		["OmniLight"] = 1,
		["Painkillers"] = 3,
		["HK 21"] = 1,
		["M14Ammo 50"] = 8,
		["Grip"] = 1,
		["Laser"] = 1,
		["Detonator"] = 1,
		["Compass"] = 1,
		["Map"] = 1,
		["CCO"] = 1,
		["MilitaryPackBlack"] = 1,
		["M9Ammo32"] = 2,
		["GPS"] = 1,
		["BloodBad"] = 5,
		["C4"] = 2,
		["Sabre"] = 1,
		["G18"] = 1,
	}},
	{["Name"] = "Vehicle Repair", ["List"] = {
		["ReinforcedWheel"] = 6,
		["JerryCan"] = 4,
		["BallisticGlass"] = 1,
		["FuelTank"] = 1,
		["ScrapMetal"] = 1,
		["EngineParts"] = 1,
		["ArmorPlates"] = 1,
	}},
}
local Modes = {
	["Player"] = {},
	["Vehicle"] = {},
	["Local"] = {},
	["Stat"] = {},
	["Local"] = {},
	["Misc"] = {}
}
local Meta = getrawmetatable(game)
local OldIndex = Meta.__index

local Exploit = (function()
	local Intriga = INTRIGAENV or false
    local Elysian = ELYSIAN_INITIATED or false
	local RC7 = fullaccess or false
	local Seven = get_nil_instances or false
	local Cerberus = iscerberusthread or false
	local Protosmasher = is_protosmasher_closure or false
	
	return (
		(Intriga and "Intriga") or
		(Elysian and "Elysian") or
		(RC7 and "RC7") or
		((Seven and not Protosmasher) and "Seven") or
		(Cerberus and "Cerberus") or
		(Protosmasher and "Protosmasher") or 
		"Unknown Exploit"
	)
end)()

local Selected = {
	Obj = nil,
	Primary = {
		Col = 1,
		Mat = 1
	},
	Secondary = {
		Col = 1,
		Mat = 1
	}
}

local Remotes = service.Lighting.Remote
local Scrolled = false
local ServerLock = false
local Notif = true

--//SETTING PROPERTIES
newMap.Parent = service.CoreGui
newMap.Frame.Visible = false
newTarg.Image = "rbxassetid://493660854"
newTarg.Visible = false

if service.Workspace.mapname.Value == "Reimagined" then
	Scale["X"] = 11.947
	Scale["Z"] = 11.947
	newMap.Frame.Map.Image = "rbxassetid://182438539"
elseif service.Workspace.mapname.Value == "Amend" then
	Scale["X"] = 13.653
	Scale["Z"] = 14.4
	newMap.Frame.Map.Image = "rbxassetid://285584991"
end

local Remotes = service.Lighting.Remote
--//REMOTE FUNCTIONS
ChangeVal = function(inst, val)
	if CheckPass() then
		Remotes.ChangeValue:FireServer(_G.ApocPass, inst, val)
	end
end; _G.Functions["ChangeVal"] = ChangeVal

ChangePar = function(inst, par)
	if CheckPass() then
		Remotes.ChangeParent:FireServer(_G.ApocPass, inst, par)
	end
end; _G.Functions["ChangePar"] = ChangePar

CreateVal = function(name, par, val)
	Remotes.CreateValue:FireServer(name, par, val) 
end; _G.Functions["CreateVal"] = CreateVal

Damage = function(plr, num)
	if CheckPass() then
		Remotes.AddDamage:FireServer(_G.ApocPass, plr.Character.Humanoid, num)
	end
end; _G.Functions["Damage"] = Damage

Heal = function(plr, num)
	Remotes.AddHealth:FireServer(plr.Character.Humanoid, num)
end; _G.Functions["Heal"] = Heal

AddItem = function(slot, id)
	Remotes.AddObject:FireServer(slot, id)
end; _G.Functions["AddItem"] = AddItem

DropItem = function(slot, id)
	Remotes.DropItem:FireServer(slot, id)
end; _G.Functions["DropItem"] = DropItem

Destroy = function(inst)
	if CheckPass() then
		Remotes.Destruct:FireServer(_G.ApocPass, inst)
	end
end; _G.Functions["Destroy"] = Destroy

DmgZombie = function(zomb, num)
	Remotes.DamageZombie:FireServer(zomb.Humanoid, num)
end; _G.Functions["DmgZombie"] = DmgZombie

SendMsg = function(plr, col, str)
	Remotes.SendMessage:FireServer(plr, col, str)
end; _G.Functions["SendMsg"] = SendMsg

Teleport = function(mode, plr)
	return Remotes.TeleportRequest:InvokeServer(mode, math.floor(tick() % 1 + 100000), tostring(plr))
end; _G.Functions["Teleport"] = Teleport

ColGun = function(Primary, Secondary)
	Remotes.ColorGun:FireServer(Primary.Col, Primary.Mat, Secondary.Col, Secondary.Mat)
end; _G.Functions["ColGun"] = ColGun

CreateSounds = function()
	return Remotes.CreateSounds:InvokeServer()
end; _G.Functions["CreateSounds"] = CreateSounds

SetSoundID = function(sound, id)
	if CheckPass() then
		Remotes.SoundIdSet:FireServer(_G.ApocPass, sound, "rbxassetid://" .. tostring(id))
	end
end; _G.Functions["SetSoundID"] = SetSoundID

PlaySound = function(sound)
	Remotes.PlaySound:FireServer(sound, 1, 1)
end; _G.Functions["PlaySound"] = PlaySound

StopSound = function(sound)
	Remotes.StopSound:FireServer(sound)
end; _G.Functions["StopSound"] = StopSound

SetPitch = function(sound, num)
	if CheckPass() then
		Remotes.SoundPitchLocalSet:FireServer(_G.ApocPass, sound, num)
	end
end; _G.Functions["SetPitch"] = SetPitch

Check = function(type)
	Remotes:findFirstChild("Check" .. type):FireServer()
end; _G.Functions["CheckPants"] = function() Check("Pants") end; _G.Functions["CheckShirt"] = function() Check("Shirt") end

PlaceMaterial = function(obj, pos, own, build)
	Remotes.PlaceMaterial:FireServer(obj, pos, own, build)
end; _G.Functions["PlaceMaterial"] = PlaceMaterial

SetCF = function(mod, cf)
	Remotes.SetCFrame:FireServer(mod, cf)
end; _G.Functions["SetCF"] = SetCF

SetHealth = function(type, num)
	if CheckPass() then
		Remotes.HealthSet:FireServer(_G.ApocPass, type, num)
	end
end; _G.Functions["SetHealth"] = SetHealth

Det = function(c4)
	if not CheckDet() then
		FixDet()
	end
	Remotes.Detonate:FireServer(c4)
end; _G.Functions["Detonate"] = Det

Invis = function(part)
	if CheckPass() then
		Remotes.BreakWindow2:FireServer(_G.ApocPass, part, true)
	end
end; _G.Functions["InvisPart"] = Invis

GiveBadge = function(id)
	Remotes.AwardBadge:FireServer(id)
end; _G.Functions["GiveBadge"] = GiveBadge

CreateChem = function(col)
	Remotes.CreateChemlight:FireServer(Deobfuscate(service.Lighting.LootDrops[col .. "Chemlight"].ObjectID.Value))
end; _G.Functions["CreateRedChem"] = function() CreateChem("Red") end; _G.Functions["CreateBlueChem"] = function() CreateChem("Blue") end; _G.Functions["CreateGreenChem"] = function() CreateChem("Green") end

CreateOmni = function()
	Remotes.CreateOmni:FireServer()
end; _G.Functions["CreateOmni"] = CreateOmni

--//DEPRECATED REMOTES
_G.Functions.Deprecated = {}

GiveCredits = function(num)
	Remotes.UpdateCredits:FireServer(num)
end; _G.Functions.Deprecated["GiveCredits"] = GiveCredits

ChangeProp = function(inst, prop, val)
	if CheckPass() then
		Remotes.ChangeProperty:FireServer(_G.ApocPass, inst, prop, val)
	end
end; _G.Functions.Deprecated["ChangeProp"] = ChangeProp

RepPart = function(inst, cf)
	if CheckPass() then
		Remotes.ReplicatePart:FireServer(_G.ApocPass, inst, cf)
	end
end; _G.Functions.Deprecated["RepPart"] = RepPart

--//GENERIC FUNCTIONS
CheckPass = function()
	if _G.ApocPass ~= "0" then
		return true
	else
		warn("Failed to aquire the network key. Process aborted.")
	end
end

CheckDet = function()
	local slots = service.Players.LocalPlayer.playerstats.utilityslots:GetChildren()
	for i = 1, #slots do
		local slot = slots[i]
		if slot:findFirstChild("ObjectID") then
			if slot.ObjectID.Value == service.Lighting.LootDrops.Detonator.ObjectID.Value then
				return true
			end
		end
	end
end

FixDet = function()
	local slots = service.Players.LocalPlayer.playerstats.utilityslots:GetChildren()
	local deb = false
	for i = 1, #slots do
		local slot = slots[i]
		if not slot:findFirstChild("ObjectID") then
			AddItem(slot, Deobfuscate(service.Lighting.LootDrops.Detonator.ObjectID.Value))
			deb = true
			break
		end
	end
	if deb == false then
		AddItem(service.Players.LocalPlayer.playerstats.utilityslots.slot1, Deobfuscate(service.Lighting.LootDrops.Detonator.ObjectID.Value))
	end
end

Multiplier = function(Val)
	for z = 1, #Alpha do
		if Alpha[z] == Val then
			return z
		end
	end
	return "0"
end

Deobfuscate = function(Val)
	local nVal = ""
	for i = 1, 10 do
		nVal = nVal .. Multiplier(Val:sub(i, i))
	end
	return tonumber(nVal) 
end

Obfuscate = function(Val)
	local nVal = ""
	Val = tostring(Val)
	for i = 1, 10 - string.len(Val) do
		nVal = Fillers[math.random(1, 6)] .. nVal
	end
	for i = 1, string.len(Val) do
		local num = tonumber(Val:sub(i, i))
		if num > 0 then
			nVal = nVal .. Alpha[num]
		else
			nVal = nVal .. Fillers[math.random(1, 6)]
		end
	end
	return nVal 
end

Kill = function(plr)
	service.Workspace:WaitForChild(plr.Name):WaitForChild("Head")
	Destroy(plr.Character.Head)
end

Kick = function(plr)
	if service.Workspace:findFirstChild(plr.Name) then
		SetCF(plr.Character, CFrame.new(9e9, 9e9, 9e9))
	end
	wait(0.5)
	if plr then
		Destroy(plr)
	end
end

ChangeSkin = function(Slot, Primary, Secondary)
	ChangeVal(Slot, Primary.Col)
	ChangeVal(Slot.material, Primary.Mat)
	ChangeVal(Slot.secondary, Secondary.Col)
	ChangeVal(Slot.secondary.material, Secondary.Mat)
end

InitMeta = function()
	if Exploit == "RC7" then
		fullaccess(Meta)
	elseif Exploit == "Protosmasher" then
		changereadonly(Meta, false)
	end
	Meta.__index = function(Inst, Method)
		if Method == "FireServer" and Inst == service.Lighting.Remote.ChangeValue then
			return function(self, key, ...)
				_G.ApocPass = key
				return unpack({Instance.new("RemoteEvent").FireServer(self, key, ...)})
			end
		elseif Method == "FireServer" and Inst.Name == "ReportGoogleAnalyticsEvent" then
			return function()
				warn("Redirected google analytics event")
			end
		else
			return OldIndex(Inst, Method)
		end
	end
	--wait()
	--Meta.__index = OldIndex
end

RemoveAnti = function()
	if service.Players.LocalPlayer.PlayerScripts:findFirstChild("LocalScript") then
		service.Players.LocalPlayer.PlayerScripts.LocalScript:Destroy()
	end
end

GetZombie = function()
	local Zombies = service.Workspace.Zombies:GetChildren()
	for i = 1, #Zombies do
		for z = 1, #Zombies[i]:GetChildren() do
			local Zombie = Zombies[i]:GetChildren()[z]
			if #Zombie:GetChildren() > 0 then
				return Zombie
			end
		end
	end
end

GetHorde = function(del)
	--del:true = return all zombies
	local Horde = {}
	local Zombies = service.Workspace.Zombies:GetChildren()
	for i = 1, #Zombies do
		for z = 1, #Zombies[i]:GetChildren() do
			local Zombie = Zombies[i]:GetChildren()[z]
			if #Zombie:GetChildren() > 0 and (del == false and #Horde < 15 or del) then
				table.insert(Horde, Zombie)
			end
		end
	end
	return Horde
end

GetPlayers = function(Str)
	local Users = {} 
	for newString in Str:gmatch("([^,]+)") do
		if newString:lower() == "me" then
			table.insert(Users, service.Players.LocalPlayer)
		elseif newString:lower() == "all" then
			for _, Player in pairs(service.Players:GetChildren()) do
				table.insert(Users, Player)
			end
		elseif newString:lower() == "others" then
			for _, Player in pairs(service.Players:GetChildren()) do 
				if Player ~= service.Players.LocalPlayer then
					table.insert(Users, Player)
				end
			end
		elseif newString:lower() == "random" then
			table.insert(Users, service.Players:GetChildren()[math.random(#service.Players:GetChildren())])
		else
			for i,v in pairs(service.Players:GetChildren()) do
				if v.Name:lower():sub(1, #newString) == newString:lower() then
					table.insert(Users, v)
				end
			end
		end
	end
	return Users
end

GetPos = function(goto, current)
	local X = tonumber(goto.x) - tonumber(current.x)
	local Y = tonumber(goto.y) - tonumber(current.y)
	local Z = tonumber(goto.z) - tonumber(current.z)
	return Vector3.new(X, Y, Z)
end

AddPos = function(Vec)
	local Angle = (math.random(1, 63) / 10)
	return Vec + Vector3.new(5 * math.cos(Angle), 0, 5 * math.sin(Angle))
end

AddCF = function(CF)
	local Angle = (math.random(1, 63) / 10)
	return CF * CFrame.new(5 * math.cos(Angle), 0, 5 * math.sin(Angle))
end

GetPrim = function(Mod)
	local p 
	r = function(k)
		for i, v in pairs(k:GetChildren()) do
			if v:IsA("BasePart") then
				p = v
				break
			end
			r(v)
		end
	end
	r(Mod)
	return p
end

SpawnItem = function(Mode, Str, Plr)
	local Drop = service.Lighting.LootDrops:findFirstChild(Str)
	if Mode == "L" and Drop then -- local
		local newDrop = Drop:Clone()
		newDrop.Parent = service.Workspace.DropLoot
		newDrop:MoveTo(AddPos(service.Players.LocalPlayer.Character.Torso.Position))
	elseif Mode == "S" and Drop then -- server
		PlaceMaterial(Drop, AddPos(GetPos(Plr.Character.Torso.Position, GetPrim(Drop).Position)))
		service.Workspace:WaitForChild(Drop.Name)
		ChangePar(service.Workspace[Drop.Name], service.Workspace.DropLoot)
	end
end

InitSound = function()
	local Sound = CreateSounds()
	ChangePar(Sound, service.Workspace)
	if service.Workspace:findFirstChild(Sound.Name) then
		CreateVal("pmesound", service.Workspace[Sound.Name], "")
	end
	local WS = service.Workspace:GetChildren()
	for i = 1, #WS do
		local obj = WS[i]
		if obj:IsA("Sound") then
			if obj:findFirstChild("pmesound") then
				Sound = obj
				break
			else
				StopSound(obj)
				Destroy(obj)
			end
		end
	end
	if service.Workspace:findFirstChild(Sound.Name) then
		SetPitch(service.Workspace:findFirstChild(Sound.Name), 1)
	end
	return service.Workspace:findFirstChild(Sound.Name)
end

GetPlrIndex = function(Player)
	local Players = service.Players:GetChildren()
	for i = 1, #Players do
		local nPlayer = Players[i]
		if nPlayer == Player then
			return tonumber(i)
		end
	end
end

GetVehIndex = function(Vehicle)
	local Vehicles = service.Workspace.Vehicles:GetChildren()
	for i = 1, #Vehicles do
		local nVehicle = Vehicles[i]
		if nVehicle == Vehicle then
			return tonumber(i)
		end
	end
end

AdjustPlr = function(Forward)
	local Players = service.Players:GetChildren()
	local pIndex = GetPlrIndex(CurrPlr)
	if not pIndex then
		pIndex = 1
	end
	if Forward == true then
		pIndex = pIndex + 1
		if pIndex > service.Players.NumPlayers then
			pIndex = 1
		end
	else
		pIndex = pIndex - 1
		if pIndex < 1 then
			pIndex = service.Players.NumPlayers
		end
	end
	if not CurrPlr or service.Lighting:findFirstChild(Players[pIndex].Name) or (not service.Lighting:findFirstChild(Players[pIndex].Name) and not service.Workspace:findFirstChild(Players[pIndex].Name)) then
		AdjustPlr(Forward)
		SendMsg(service.Players.LcoalPlayer, "Can't find " .. Players[pIndex].Name .. "'s character", "Yellow")
	else
		if Players[pIndex] ~= nil then
			CurrPlr = Players[pIndex]
			service.Workspace.CurrentCamera.CameraSubject = CurrPlr.Character.Humanoid
		elseif Players[pIndex] == nil then
			Players[pIndex] = service.Players.NumPlayers
			CurrPlr = Players[pIndex]
			service.Workspace.CurrentCamera.CameraSubject = CurrPlr.Character.Humanoid
		end
	end
end

AdjustVeh = function(Forward)
	local Vehicles = service.Workspace.Vehicles:GetChildren()
	local vIndex = GetVehIndex(CurrVeh)
	
	if CurrVeh == nil or not vIndex then
		CurrVeh = Vehicles[1]
		vIndex = GetVehIndex(CurrVeh)
	end
	
	if Forward == true then
		vIndex = vIndex + 1
		if vIndex > #Vehicles then
			vIndex = 1
		end
	else
		vIndex = vIndex - 1
		if vIndex < 1 then
			vIndex = #Vehicles
		end
	end
	
	if Vehicles[vIndex] ~= nil then
		CurrVeh = Vehicles[vIndex]
	elseif Vehicles[vIndex] == nil then
		Vehicles[vIndex] = #Vehicles
		CurrVeh = Vehicles[vIndex]
	end
	
	VehicleFr.Cycler.Lbl.Text = CurrVeh.Name:upper()
end

GenList = function(Array, Parent, ClickFunc)
	local FixMaterial = function(Str)
		--[[local Items = {
			"Wooden Slabs",
			"Bricks",
			"Stone Bricks",
			"Timber",
			"Stone Walls",
			"Wooden Planks",
			"Metal Truss"
		}
		if Str:find("Material") then
			local Index = tonumber(Str:gsub("Material", ""))
			return Items[Index]
		end]]
		return Str
	end
		
	spawn(function()
		local Array = Array
		local Parent = Parent
		local ClickFunc = ClickFunc
		for i, v in pairs(Parent:GetChildren()) do
			if v ~= Template and v~= cTemplate then
				v:Destroy()
			end
		end
		Parent.CanvasSize = UDim2.new(0, 0, 0, 0)

		for i = 1, #Array do
			local Entry = Array[i]
			local YSize = 20
			local YPos = ((i * YSize) - YSize)
			local newLabel = (Parent.Name == "CmdList" and cTemplate or Template):Clone()

			newLabel.Name = Entry.Name
			newLabel.Text = (Parent.Name == "CmdList" and Entry.Usage or FixMaterial(Entry.Name)):upper()
			newLabel.Parent = Parent
			newLabel.Visible = true
			newLabel.Position = UDim2.new(0, 2, 0, YPos + 2)
			newLabel.ZIndex = Parent.ZIndex + 1
			Parent.CanvasSize = UDim2.new(0, 0, 0, YPos + YSize + 4)
			
			if newLabel:IsA("TextButton") then
				input[#input + 1] = newLabel.MouseButton1Click:connect(function()
					if Parent.Name == "LoadoutList" then
						ClickFunc(newLabel, Entry)
					else
						ClickFunc(newLabel)
					end
				end)
			end
		end
	end)
end

GenSkinList = function(Array, Mode)
	--//Mode=Mat - material list --//Mode=Col - colour list
	local Parent = SkinFr.Main.MaterialList
	local Template = sTemplate
	for _, v in pairs(Parent:GetChildren()) do
		if v ~= sTemplate then
			v:Destroy()
		end
	end
	local temp = {}
	for i = 1, #Array do
		if not temp[math.floor(i / 7) + 1] then
			temp[math.floor(i / 7) + 1] = {}
		end
		table.insert(temp[math.floor(i / 7) + 1], #temp[math.floor(i / 7) + 1] + 1, Array[i])
	end
	
	for i = 1, #temp do
		local YSize, XSize = 46, 46
		local YPos, XPos = ((i * YSize) - YSize), 0
		for q = 1, #temp[i] do
			XPos = ((q * XSize) - XSize)
			local newLabel = Template:Clone()
			newLabel.Parent = Parent
			newLabel.Visible = true
			newLabel.Position = UDim2.new(0, XPos + 4, 0, YPos + 4)
			
			if Mode == "Mat" then
				newLabel.Image = "rbxassetid://" .. temp[i][q]
			else
				newLabel.Image = ""
				newLabel.BackgroundColor3 = BrickColor.new(temp[i][q]).Color
			end
			
			GetVal = function(Val)
				for i, v in pairs(Array) do
					if v == Val then
						return i
					end
				end
			end
			
			newLabel.MouseButton1Click:connect(function()
				if Mode == "Mat" then
					Selected.Obj.Image = newLabel.Image
					if Selected.Obj.Parent.Name == "Primary" then
						Selected.Primary.Mat = GetVal(temp[i][q])
					else
						Selected.Secondary.Mat = GetVal(temp[i][q])
					end
				else
					Selected.Obj.Image = ""
					Selected.Obj.BackgroundColor3 = newLabel.BackgroundColor3
					if Selected.Obj.Parent.Name == "Primary" then
						Selected.Primary.Col = GetVal(temp[i][q])
					else
						Selected.Secondary.Col = GetVal(temp[i][q])
					end
				end
			end)
		end
		Parent.CanvasSize = UDim2.new(0, 0, 0, YPos + YSize + 4)
	end
end

GenPlrSkinList = function(Skins)
	
end

AddMode = function(Arr, Name, Func)
	if not Modes[Arr] then
		Modes[Arr] = {}
	end
	
	Modes[Arr][#Modes[Arr] + 1] = {
		["Name"] = Name,
		["Func"] = Func
	}
end

AddCmd = function(Name, Func, Usage)
	Commands[#Commands + 1] = {
		["Name"] = Name,
		["Func"] = Func,
		["Usage"] = Usage
	}
end

FindCommand = function(Command)
	for _, Cmd in pairs(Commands) do
		if Cmd.Name == Command then
			return Cmd
		end
	end
end

TPToCoord = function(goto)
	local p = service.ReplicatedStorage.Effects
	local p2 = p.Bullet
	PlaceMaterial(p, AddPos(GetPos(goto, p2.Position)))
	service.Workspace:WaitForChild(p.Name)
	if service.Workspace[p.Name][p2.Name].Position ~= goto then
		SetCF(service.Workspace[p.Name], CFrame.new(goto.x, goto.y, goto.z))
	end
	ChangePar(service.Workspace[p.Name][p2.Name], service.Workspace.Locations)
	print(Teleport("Me To", p2.Name))
	if service.Workspace:findFirstChild(p.Name) then
		Destroy(service.Workspace[p.Name])
	end
	wait(0.5)
	if service.Workspace.Locations:findFirstChild(p2.Name) then
		Destroy(service.Workspace.Locations[p2.Name])
	end
end

IsInGroup = function(Plr, Id)
	return game:HttpPost("https://www.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=IsInGroup&playerid=" .. Plr.userId .. "&groupid=" .. Id, "{}", true)
end

IsFriendsWith = function(Plr1, Plr2)
	return game:HttpPost("http://assetgame.roblox.com/Game/LuaWebService/HandleSocialRequest.ashx?method=IsFriendsWith&playerId=" .. Plr1.userId .. "&userId=" .. Plr2.userId, "{}", true)
end

CheckBanned = function(plr)
	local tf, Bans = pcall(function()
		return service.HttpService:JSONDecode([==[{"AGE":"30","GUEST":true,"USERS":{"AntiShield":56989668,"DeadzoneStu":64677340,"lolipoop75":79708513,"Guest23432894":143832136,"xTrashruka":137317837,"xHaruka":9794534,"IDatedMySoda":113387109,"V3rmillionModerators":105547026,"PoonDoctor":150922275,"XD_P":150560344,"Dvest":52623435,"ramiBloxes":117400724,"TawanmanCAM":68402323,"root_1":149775875,"G4eLApoc":141396702,"ZutharKaddin":11527445,"Vyntir":138364455,"trex121y":62677084,"bossboyrob3_0":151207490,"isoboss2":135722345,"nick12334568":62449430,"yoloswagfam":107841403,"ecologicodin457":139895538,"BxdMelodiic":123920043,"danielbotero2005":149363370,"sample2349":120510385,"LSINGISFORPVSSIES":145362439,"V1rus_Hack3r":151716287,"carterisstupid":64550952,"3xploitr":147614156,"gag_e":63233606,"sdfer32tfsdarqwrfca":158015558,"deathkiller274894":37729503,"drake358":39775145,"Kelsaaay":99993497,"BreakingDemons":2402019,"Skygall":63509456,"junioredsmo229":152021832,"AyDeus":157954818,"Plutohs":16951026,"sadurn":67045400,"Elysianstars":34638208,"patrikthepirate":84192997,"logandreamheart":28315101,"Mercurye":3664608,"mar_rod2008":145427672,"dragonbladejosh":8301657,"sniperkdog":77668690,"galalit":49492819,"legendarybroface":108178986,"yoger99":70113332,"thelegendhokage":105870493,"aphmau6557":156377012,"sctch656":115138021,"stevendomo":63629607,"8x2x3":68570634,"eagerskaternick":30879448,"lmaoboiii":145996651,"superpeacock84":71529558,"inkboyinkling":113172287,"master6256":14610763,"bigbut143":8696911,"Die5_Chris":157499538,"I_2Tap":157387806,"3xtempia":141184884,"Iongshots":157089226,"shefhy":119232937,"OiledUpMilfs":103885268,"Rick_Harrison5":155232497,"MikeWarrenALT":98863988,"ArctixYT":16071263,"Fr33Killz":99662177,"Giantdiqwilly":146347126,"deathstone12":42671867,"schtibli":157856309,"Everglows":52856027,"weerjkl123":17610965,"xOmqChance":53749613,"ArensKaddin":23084301,"UnlimitedRazor":39772004,"xXSticksAndStuffXx":123891230,"bucktooth52":19337975,"Jokerrr666":157162041,"Baby_Apocc":153536882,"Apocgod9":150537753,"PitchPleasee":156893747,"Shottaker9":150536897,"Averull":126090537,"knightsceem56":44462739,"froobstar101":115838346,"darion23":6408089,"Madi042403":160400803,"deded":2658,"youseville":43731708,"YouDontNomie":130342600,"Harambes_Worker":157900332,"Guest_1010101":147233901,"apocgoddess9":150534415,"ZeIsius":42531807,"Incestu":157915870,"NoMoreHopeInHell":126008929,"LeonAsura":36245695,"ItsTiger":25524028,"iiGetBannedAlot":152190770,"halowarspros":59234217,"Lighteninq":20635764,"Icramis":75833466,"LaggyAf":112754072,"xXxShadowLordxXx":575218,"1x1x_x1":111209363,"victiny1223":47819471,"SteamWarning":44408213,"CallMeMrHacker_Boi":158687532,"Deceased_Children":124106145,"Teecer":112415154,"GearsOnlineHacker12":150219650,"Vezra":123448574,"Jgaming8alt":97840906,"ReebokPump":16333,"RevengeOfAzaleth":153470117,"bananas":20827,"vque":78597210,"98billion":1378318,"EternityGod":11463582,"chrisbraxton":90327867,"TheCleverCowXD":44532810,"darklegend1206":25164323,"DonaldTrumpisNein":156151724,"Int_riga":158014957,"fleeflobber16":27372092,"Dpimp2016":84972607,"Zeekip":71264118,"Bapplez":24485401,"xXTheEncrypticXx":16689252,"CancerlnAfrica":135910894,"EpicHero103":30410734,"xXScarletDeathXx":41789984,"Jhon_D0e":135830651,"Forum_Admin":111250117,"allison042403":24824385,"xxbdittxx":63598674,"beastbrianisawesome":27622806,"lMadara":87280113,"samroblox12345":14772017,"lawrencerogers34":48571732,"Numli":151030699,"Gino940":127640669,"coolrandomhero":49257904,"Nice_IP":111275310,"T0xicVap3":21844652,"FoxtrotZuIu":116270678,"Microwavable_Hamster":111224452,"VendingMachinePro":158484289,"jgaming8":47743041,"derpmaster655":160189881,"redkiller256":37286661,"Sucid":97594568,"Ap0cMarauder":57088917,"mhau17":76402963,"ColdDarkOrlandoRock":140379999,"drainprint":159415679,"ChameleonBuilding":150995871,"PopshotOG":126169891,"mrihackedyou234":130374875,"Full_Restart":156743146,"GTRGhost":88146258,"StevekingofRB":66806164,"Diondev":71397472,"SirYesSirs":76443132,"LordMop":14872477,"Andrew_Man":111311513,"HykelDaniel":128840256,"Commander_Pixis":136485055,"redrooms":24655896,"Jack_Trent":112394924,"Pinknoxious":30588675,"WashingMachineProf":158179757,"griffin":6639,"Arthim":152054172,"shotcaller9":150534005,"GusmanOq":62368719,"Intrigaisingenious":149776871,"Eddy":17938,"awesomeinat":57049860,"airwalke":100438832,"Harambe_Snipe":158824393,"thansar62":115025101,"NicoAyanoKun":65545014,"Beastly25101":118899926,"COOL_GIRLNUMBER111":152954269,"NSNSSDanny":109751860,"unwrappedtortilla":29637665,"coolguy1020414":34496072,"Anesthesian":79776769,"kittycatcat23":155917711,"Seehla897":48998257,"LilUziVertXLilYatchy":161482359,"itchymadgamesrules":119913832,"qnff":160518204,"xTOXICxFLAMEx":114699600,"xTOXICxCLOUDSx":87634857,"IoInut123":99767237,"kingpavlo":21366422,"DesiredBytes":64836803,"RetroBeing":80534921,"chasenaquin12":38148313,"iiDylanx":24367289,"sune1122":55563651,"feb123":20816511,"Dafrox":67819707,"bereghostyoloko":70465937,"WoofItsDylan":32118510,"Zelnus":35123490,"XtremeHackerWiz":101670717,"WedgemanSebastian7":101685449,"LyricalZoran":101598073,"xOMGLIFE":101761709,"wiaam214":21672902,"WinsDark":52537948,"DARKHATERS02":91732823,"LordCrazy13":21799524,"12103net":45124586,"harrishan12":64137772,"222rules222":9179310,"111rules111":9179245,"leon1610":74198828,"YoureFramed":91512397,"wolfiren":99358373,"joinmod555":24713004,"AyeePikachu":73966295,"KirbySkillz":66204472,"TheSprazzMaster":51313898,"Belmetheus":5165906,"MrFalse":90980711,"Youfunnykid":25716187,"iiDrunkExploit":103978554,"G2GSoon":90980615,"ReDZBUX":53923638,"jack1241425":103885761,"Inhales":60804599,"Anaesthxtics":36656885,"OverlordActual":22537940,"Klieff":98734319,"ExploitationPolice":103883855,"lnstances":71871682,"joonatiikkaja":16747014,"DannyKlient":4393567,"DonDonTT":103428449,"demandings":100287350,"RoyalFusion":31324630,"Altxn":31501344,"Ima1x1x1x1Man":103591857,"Frexix":13303147,"GS9Crips":102596731,"EndlessNathan":65040375,"appie87":88435646,"Sensorus":18626882,"punts":66224569,"randomcup":13370582,"FrankFromStateFarm":103076859,"ZaxbySauce":41667779,"lolman536":38976810,"DancingBuddha":10787791,"BlOoDhAwKXXX":80178253,"Tayo118":6709678,"caleria":2281897,"CloudlessMemories":61960946,"RandomStuffWithEva":94434173,"Banned4Lyfe23":25319660,"12q45":2875075,"loveswagger99":77011410,"ssmarines58":71959429,"Acxialeted":78991792,"Veloxys":33838080,"Moisturizor":100987908,"iiPxramore":72826089,"divyate":88514834,"pinsnow":37658697,"ThreadContext":87674290,"booya155":42430779,"KuIIion":64543345,"symmetrics":85789534,"doomlordxl":3692138,"exhed":10816971,"NoobyUnicorns":63711230,"KingVersace1":29264468,"NggaWeMadeIt":103446501,"colesins":72217641,"robowbow21":101128403,"Noiisia":56527025,"Void90":15130756,"ProYan":28690338,"DrPurpleModz":22804596,"AyeeZakq":98402741,"PrinceOfHeaven":53205365,"tflash10":68990410,"rjfoxy":23952063,"Sarinis":65227768,"iLordVex":39635253,"agatecloud4":165187317,"slime_squad":114086082,"jab1127":66252,"iivant":159988187,"tiiqui2002":104347451,"Adaptivity":85822005,"zoincs":64876083,"bobbysboy":80676316,"rileytheawsomeist":75745525,"maaumiwantrobux":97629484,"ospencerrr":51909203,"crash5565":48120005,"robloxplayer_1337":168336917,"unloyalist":30262807,"awesomerodrick14":33644471,"brofistunited":71068502,"Joker_MrJ":157138769,"SourceQuery":135766628,"infidelgaming":155116709,"badjack04":98348137,"exgrath77":29987958,"worldcontroller":16087927,"movingboy":165834989,"GalaxyExploder400":167629787,"gta3435":169095649,"supergodzilla906":158250405,"WowILikedHarambe":169669680,"skintron":99871807,"AlexGaming14324":156427397,"NexusXI":87381019,"BrandonDuane":40594324,"gtadude14":92008253,"dorkjordan2":160528674,"vale455":41738988,"xxucomeudiexx":76482490,"Thy_Yuno":64836803,"stevewonder98":46039652,"solidwolf688":71985262,"zombiegun24":100600355,"pandaloverguy12354":77829846,"jpscool":49744175,"STARITE":9416228,"rowpow1":109432519,"Moonlightkianys":140155208,"Boopbot5":38809646,"stevenRISINGs":127534747,"roberto2223":63329799,"TluXisM":63010454,"ApocHobo1":114154989,"Robo_MadnessYT":149164579,"iKyxis":80463115,"mackjack122":121317462,"TheEpicRobro":111224394,"wisemark2002":96583298,"hoodedsloth233":162566064,"xtriggeredss":147187311,"xxdevildogsxx":29302875,"gijewtherealamerican":98218078,"laganalexjoey12345":137355533,"spectrewolf87":136710228,"malachix25":151989181,"intervectional":120657432,"xstevec2":69327986,"TrickyMove":100199318,"spazzn":31008681,"gamerfff":90101909,"SniperAmericano2":167410155,"grimlock89":63288044,"Undermist":90414653,"SP02_PRICE":177463526,"Xxkillergamings":89444623,"kobeh83":177236936,"AltF4Noobs":97313073,"duckey24":91016036,"fazepapaq":161853207,"EpicRage57":148473956,"MO_BO":164171441,"mattTEHboss1":19593675,"CandyKing108":45876353,"rebeccapitcher":77406028,"iiAsithis":87981989,"isaacstepp101":136398121,"Boss27martin":68358928,"SuKcMyPus3YPlease":188974626,"iiphenixii1":100094543,"fitimizcool":149955616,"Bzrrr":205702294,"sean56418":14935685,"larrylikes":98408281,"strikefighter77":124114843,"pineapleface":120179860,"Dev_Defense":53262005,"Prismous":34524990,"killerblizzardbeast":196826467,"zack21jumpstreet":145081947,"Ontroxity":143618902,"cuddlydavis":65686726,"AR_FAL":145391142,"HeavyDoge9":94612616,"ApocTrueTryhard":226138364,"jessica21307":134768551,"FreedomFighter2233":85911450,"bradgren12":228144344,"OpObryan111":70858758,"brayan_genry":137087546,"Dissess":100290834,"sedranice":235446558,"NotNitro":192536255,"SogBots":34469098,"GOKU18414":189855508,"jesceykiller2000":52233325,"Codayz13":95930284,"wixerd":101880738,"ernestoide04":50776578,"JaHLoVe927":106978541,"ferretlover5334":162971254,"SoyChonoris":123352843,"nikolaspazxD":92989899,"SrLoboR":217732606,"Masterofawesome151":144246209,"privateP1":190927160,"DJCASH255":44526843,"XxRapMixX":131818503,"loveing32":44176498,"youmadbro20001":47331523,"pawerwawer28":86453520,"gaggercool":100291408,"tig3r18":156606584,"SEVERUNDERPANTS0001":93189762,"FearRaiser13":194655390,"isaac_cops":167083713,"rance0725":41804917,"ReeveTheOne":79731837,"kie2690":239638420,"iSRamosXI":74941199,"RealMinecraftSAS":89328242,"JudiousDantdm":220502771,"cadincbr253":56139026,"copmanbossking":148266905,"viroblox16":89524988,"cbr252":42624944,"darkcarlos79":48787096,"Drick118":61850843,"YOUTUBE90124":236940122,"Marjio":81866245,"IIIIIIIIIlIIIIl":234527531,"djdog175":17556121,"jigsawmaster12":224120478,"bradyh805":51898104,"brandon84":2649840,"gamerkiner":220829603,"Exokio":72578854,"Prozvonit":24492564,"StaticHyena2400":236413681,"icecreampewds":40423690,"ComfortableAlissa":35766091,"rogomes5599":104545566,"blackkillers11":119132688,"Ustin75":52229767,"nyts15":72275900,"TIERNLUK":52714459,"victor_023":193845953,"Likelololol":108006421,"theLOLmaster67":205765659,"isa5526":60517771,"austin54357":68981959,"BasewarsBots":179711852,"mark197787":51005891,"iiNightWielder":218790566},"GROUPS":{"Kaddin Family":1245720,"Code_Squad":2893755}}]==])
	end)
	if plr == service.Players.LocalPlayer or (BanSettings.FRIENDS == true and IsFriendsWith(plr, service.Players.LocalPlayer) == "true") then
		--or Plr.Name == Bans.PMEAcc
			--run a custom version which will update a var on my host to update this
		return false
	end
	if Bans and type(Bans) == "table" then
		for i,v in pairs(Bans.USERS) do
			if plr.Name == i or plr.userId == v and BanSettings.LIST then
				return true
			end
		end
		for i,v in pairs(Bans.GROUPS) do
			if IsInGroup(plr, v) == "true" and BanSettings.GROUPS then
				return true
			end
		end
	end
	if plr.AccountAge < tonumber(BanSettings.AGE) then
		return true
	end
	if plr.Name:sub(1, 6) == "Guest " and BanSettings.GUEST then
		return true
	end
	if Banned[plr.Name] == true then
		return true
	end
	return false
end

Init = function()
	RemoveAnti()
	--SpoofGA()
	UpdatePlayers()
	LoadLists()

	local Vehicles = service.Workspace.Vehicles:GetChildren()
	local Players = service.Players:GetChildren()
	local lMod = service.Workspace.Locations:GetChildren()
	local WS = service.Workspace:GetChildren()
	
	CurrVeh = Vehicles[1]
	CurrPlr = Players[1]
	CurrSnd = InitSound()

	VehicleFr.Cycler.Lbl.Text = CurrVeh.Name:upper()
	
	if Remotes:findFirstChild("BanService") then
		Destroy(Remotes.BanService)
	end
	for _, Vehicle in pairs(Vehicles) do
		if not Vehicle:IsA("Model") then
			Destroy(Vehicle)
		else
			ConnectV(Vehicle)
			input[#input + 1] = Vehicle.Changed:connect(function(prop)
				if prop == "Name" and Vehicle[prop] == "VehicleWreck" then
					GPS[Vehicle] = false
				end
			end)
		end
	end
	for _, Player in pairs(Players) do
		if not CheckBanned(Player) then
			spawn(function()
				Player:WaitForChild("playerstats")
				ConnectP(Player)
			end)
		else
			if Player ~= service.Players.LocalPlayer then
				Kick(Player)
			end
		end
	end
	for i = 1, #lMod do
		local Location = lMod[i]
		if Location:IsA("BasePart") and not Location:IsA("Script") then
			table.insert(Locations, Location)
		end
	end
	for i = 1, #WS do
		local Sound = WS[i]
		if Sound:IsA("Sound") and not Sound:findFirstChild("pmesound") then
			StopSound(Sound)
			Destroy(Sound)
		end
	end
	spawn(function() -- spectate bar handle
		local health, maxhealth 
		local Char
		while wait() do
			if _G.ApocPass ~= "0" and Gui ~= nil and CurrPlr ~= nil then
				Char = (CurrPlr ~= nil and service.Workspace:findFirstChild(CurrPlr.Name) or service.Players.LocalPlayer.Character)
				health = Char.Humanoid.Health or 0
				maxhealth = Char.Humanoid.MaxHealth or 0
				
				Spec.Bar.Size = UDim2.new(health / maxhealth, 0, 1, 0)
				Spec.Health.Text = tostring(math.floor(health))
				Spec.pName.Text = (CurrPlr == nil and "Gusmanak" or CurrPlr.Name)
				
				if not CurrPlr then
					CurrPlr = service.Players.LocalPlayer
					Char = CurrPlr.Character
					service.Workspace.CurrentCamera = Char.Humanoid
				end
			end
			for _, Player in pairs(service.Players:GetChildren()) do
				spawn(function()
					if GPS[Player.Name] ~= nil and GPS[Player.Name][1] == true then
						local Blip = GPS[Player.Name][2]
						if service.Workspace:findFirstChild(Player.Name) then
							local Char = Player.Character
							local Pos = Char.Torso.Position
							local X = tostring(math.floor(Pos.x))
							local Y = tostring(math.floor(Pos.y))
							local Z = tostring(math.floor(Pos.z))
							Blip.Tag.Text = "[" .. X .. ", " .. Y .. ", " .. Z .. "] " .. Player.Name
							Blip.Position = UDim2.new(0.5, ((Pos.x / Scale["X"]) - 128), 0.5, ((Pos.z / Scale["Z"]) - 128))
						end
					end
				end)
			end
			for _, Vehicle in pairs(service.Workspace.Vehicles:GetChildren()) do
				spawn(function()
					if Vehicle.Name ~= "VehicleWreck" and GPS[Vehicle] ~= nil and GPS[Vehicle][1] == true and GetPrim(Vehicle) then
						local Blip = GPS[Vehicle][2]
						local Pos = GetPrim(Vehicle).Position
						local X = tostring(math.floor(Pos.x))
						local Y = tostring(math.floor(Pos.y))
						local Z = tostring(math.floor(Pos.z))
						Blip.Tag.Text = "[" .. X .. ", " .. Y .. ", " .. Z .. "] " .. Vehicle.Name
						Blip.Position = UDim2.new(0.5, ((Pos.x / Scale["X"]) - 128), 0.5, ((Pos.z / Scale["Z"]) - 128))
					end
				end)
			end
		end
	end)
	UpdateBlips()
end

UpdatePlayers = function()
	spawn(function()
		local Players = service.Players:GetChildren()
		GenList(Players, MiscFr:findFirstChild("Main").PlayerList, function(Lbl)
			MiscFr.Vars.Player.Box.Text = Lbl.Name
		end)
		GenList(Players, PlayerFr.PlayerList, function(Lbl)
			PlayerFr.Vars.Player.Box.Text = Lbl.Name
		end)
		GenList(Players, SkinFr.Main.PlayerList, function(Lbl)
			SkinFr.Vars.Player.Box.Text = Lbl.Name
		end)
		GenList(Players, SpawnFr.PlayerList, function(Lbl)
			SpawnFr.Player.Box.Text = Lbl.Name
		end)
		if TpFr.Vars.Type.Btn.Text == "Player" then
			GenList(Players, TpFr.Main.PlayerList, function(Lbl)
				TpFr.Vars.Player.Box.Text = Lbl.Name
			end)
		end
		GenList(Players, VehicleFr.PlayerList, function(Lbl)
			VehicleFr.Vars.Player.Box.Text = Lbl.Name
		end)
	end)
end

MakeBlip = function(Obj, IsPlr)
	local Targ = newTarg:Clone()
	Targ.Parent = newMap.Frame
	Targ.Visible = true
	Targ.Name = Obj.Name
	Targ.ImageColor3 = GetBlipCol(Obj, IsPlr)
	local Tag = Instance.new("TextLabel", Targ)
	Tag.Name = "Tag"
	Tag.BackgroundTransparency = 1
	Tag.Position = UDim2.new(1, -100, 0.5, -15)
	Tag.Size = UDim2.new(0, 100, 0, 30)
	Tag.Font = "SourceSansBold"
	Tag.FontSize = "Size18"
	Tag.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	Tag.TextStrokeTransparency = 0.8
	Tag.TextXAlignment = "Left"
	Tag.Visible = false
	Tag.ZIndex = 10
	local Btn = Instance.new("TextButton", Targ)
	Btn.Position = UDim2.new(0.5, -15, 0.5, -15)
	Btn.Size = UDim2.new(0, 30, 0, 30)
	Btn.BackgroundTransparency = 1
	Btn.Text = ""
	Btn.ZIndex = 10
	Btn.Name = "Btn"
	return Targ
end

RemoveBlip = function(Obj)
	local Blip = GPS[Obj.Name]
	if Blip ~= nil and Blip[2] == true then
		Blip[1] = false
		Blip[2]:Destroy()
	end
end

GetTimeStamp = function(t)
	local t = t or tick()
	local Hours = math.floor(((t / 3600) % 24))
	local Minutes = math.floor((t / 60) % 60)
	local Seconds = math.floor(t % 60)
	if Hours < 10 then
		Hours = "0" .. tostring(Hours)
	end
	if Minutes < 10 then
		Minutes = "0" .. tostring(Minutes)
	end
	if Seconds < 10 then
		Seconds = "0" .. tostring(Seconds)
	end
	return tostring(Hours) .. ":" .. tostring(Minutes) .. ":" .. tostring(Seconds)
end

GetMsgCol = function(MsgType)
	local Col
	if MsgType == Enum.MessageType.MessageOutput then
		Col = Color3.new(157/255, 157/255, 157/255)
	elseif MsgType == Enum.MessageType.MessageInfo then
		Col = Color3.new(139/255, 139/255, 255/255)
	elseif MsgType == Enum.MessageType.MessageWarning then
		Col = Color3.new(255/255, 163/255, 71/255)
	elseif MsgType == Enum.MessageType.MessageError then
		Col = Color3.new(255/255, 139/255, 139/255)
	end
	return Col
end

GetBlipCol = function(Obj, IsPlr)
	if IsPlr then
		if Obj == service.Players.LocalPlayer then
			return Color3.new(26/255, 16/255, 165/255)
		else
			if CheckGroup(Obj.Name, service.Players.LocalPlayer.PlayerGui.MyGroup.Bin.groupid.Value) then
				return Color3.new(26/255, 16/255, 165/255)
			else
				return Color3.new(131/255, 15/255, 14/255)
			end
		end
	else
		return Color3.new(51/255, 91/255, 5/255)
	end
end

DivideStr = function(Str)
	local temp = {}
	for i = 1, Str:len() do
		if not temp[math.floor(i / 90) + 1] then
			temp[math.floor(i / 90) + 1] = ""
		end
		temp[math.floor(i / 90) + 1] = temp[math.floor(i / 90) + 1] .. Str:sub(i, i)
	end
	return temp
end

RemoveLines = function(Str)
	Str = Str:gsub("\n", "; ")
	Str = Str:gsub("\t", "")
	return Str
end

GetEarlyLogs = function()
	local Logs = service.LogService:GetLogHistory()
	local YSize = 15
	for q = 1, #Logs do
		local StrTab = DivideStr(Logs[q].message)
		local MsgType = Logs[q].messageType
		local TimeStamp = Logs[q].timestamp
		--for i = 1, #StrTab do
			local YPos = ((YSize * (#Logs == 0 and 1 or #Logs + 1)) - YSize) + ((5 * (#Logs == 0 and 1 or #Logs + 1)) - 5)
			
			local newLabel = oTemplate:Clone()
			newLabel.Parent = Output.Output
			newLabel.Visible = true
			newLabel.Position = UDim2.new(0, 0, 0, YPos)
			newLabel.Text = "[" .. GetTimeStamp(TimeStamp) .. "] " .. RemoveLines(Logs[q].message)
			newLabel.Name = "LogEntry"
			newLabel.TextColor3 = GetMsgCol(MsgType)
			
			Output.Output.CanvasSize = UDim2.new(0, 0, 0, YPos + YSize + 5)
		--end
	end
end

GetCode = function()
	local str = service.Geometry:FindFirstChild("nonononononono").Value 
	local out = {}
	local z = ""
	for word in string.gmatch(str, "%w%w%w%w") do
		for i,c in pairs({string.byte(word, 1, 4)}) do
			c = c - 48
			for place = 1, 6 do
				out[(i - 1) * 6 + place] = (out[(i - 1) * 6 + place] or 0) + (c) % 2
				c = math.floor((c) / 2)
			end
		end
	end
	for i = 2, #out, 2 do
		z = string.reverse(z) .. string.char(97 + out[i] + out[i - 1] * 2)
	end
	local stack = #str
	local out = ""
	for word in string.gmatch(str, "%w%w%w%w") do
		out = out .. string.char(48 + tonumber(table.concat({string.byte(word, 1, 4)})) % 74)
	end
	return out
end

AntiSkidStuff = function()
	if BanSettings.SET == true then
		return
	end

	local Cons = {}
	local RemoveCons = function()
		for i = 1, #Cons do
			Cons[i]:disconnect()
		end
	end

	for i = 1, #Settings:GetChildren() do
		local Lbl = Settings:GetChildren()[i]
		if Lbl:IsA("TextLabel") and Lbl:findFirstChild("Btn") then
			Cons[#Cons + 1] = Lbl.Btn.MouseButton1Click:connect(function()
				Lbl.Btn.Text = (Lbl.Btn.Text == "X" and "" or "X")
			end)
		end
	end

	Cons[#Cons + 1] = Settings.ConfirmCode.MouseButton1Click:connect(function()
		BanSettings.AGE = tonumber(Settings.Age.Box.Text)
		BanSettings.GROUPS = (Settings.Group.Btn.Text == "X" and true or false)
		BanSettings.GUESTS = (Settings.Guest.Btn.Text == "X" and true or false)
		BanSettings.FRIENDS = (Settings.Friend.Btn.Text == "X" and true or false)
		BanSettings.LIST = (Settings.UserList.Btn.Text == "X" and true or false)
		BanSettings.SET = true

		Settings.Visible = false
		Main.Visible = true
		Spec.Visible = true
		Toggles.Visible = true
		
		wait(1)
		_G.ApocPass = GetCode()
		--[[if getrawmetatable ~= nil then
			InitMeta()
		end]]
		
		local c = 0
		repeat
			wait(1)
			c = c + 1
			print("iteration: " .. tostring(c))
		until
			_G.ApocPass ~= "0"

		warn("Using " .. Exploit)
		warn("Network key: " .. tostring(_G.ApocPass))
		SendMsg(service.Players.LocalPlayer, "Green", "Network key acquired")
		
		Init()
		RemoveCons()
	end)
end

LoadLists = function()
	GenList(Modes["Player"], PlayerFr.ModeList, function(Lbl)
		PlayerFr.Vars.Mode.Box.Text = Lbl.Name
	end)
	GenList(service.Lighting.LootDrops:GetChildren(), SpawnFr.ItemList, function(Lbl)
		SpawnFr.Item.Box.Text = Lbl.Name
		SpawnFr.Count.Box.Text = "1"
	end)
	GenList(service.Lighting.LootDrops:GetChildren(), lSpawnFr.ItemList, function(Lbl)
		lSpawnFr.Item.Box.Text = Lbl.Name
		lSpawnFr.Count.Box.Text = "1"
	end)
	GenList(Modes["Stat"], PlayerFr.StatList, function(Lbl)
		PlayerFr.Vars.Stat.Box.Text = Lbl.Name
	end)
	GenList(Loadouts, SpawnFr.Extension.LoadoutList, function(Lbl, Loadout)
		for Name, Quantity in pairs(Loadout.List) do
			for i = 1, Quantity do
				SpawnItem("S", Name, service.Players.LocalPlayer)
			end
		end
	end)
	GenList(Loadouts, lSpawnFr.Extension.LoadoutList, function(Lbl, Loadout)
		for Name, Quantity in pairs(Loadout.List) do
			for i = 1, Quantity do
				SpawnItem("L", Name)
			end
		end
	end)
	GenList(Commands, Output.Extension.CmdList)
end

GetMode = function(Sub, Name)
	for i = 1, #Modes[Sub] do
		local Mode = Modes[Sub][i]
		if Mode.Name == Name then
			return Mode
		end
	end
end

SplitString = function(String)
	local Value, Fields = " ", {}
	local pattern = string.format("([^%s]+)", Value)
	String:gsub(pattern, function(c) 
		table.insert(Fields, #Fields + 1, c) 
	end)
	return Fields
end

ConnectP = function(Player)
	spawn(function()
		local Blip = MakeBlip(Player, true)
		GPS[Player.Name] = {true, Blip}
		
		game.Workspace:WaitForChild(Player.Name)
		local Char = Player.Character
		Char:WaitForChild("Torso")
		local Pos = (Player ~= nil and Char.Torso.Position or Vector3.new(0, 0, 0))
		
		local X = tostring(math.floor(Pos.x))
		local Y = tostring(math.floor(Pos.y))
		local Z = tostring(math.floor(Pos.z))
		
		Blip.Tag.Text = "[" .. X .. ", " .. Y .. ", " .. Z .. "] " .. Player.Name
		Blip.Position = UDim2.new(0.5, ((Pos.x / Scale["X"]) - 128), 0.5, ((Pos.z / Scale["Z"]) - 128))

		input[#input + 1] = Blip.Btn.MouseEnter:connect(function()
			Blip.Tag.Visible = true
		end)
		input[#input + 1] = Blip.Btn.MouseLeave:connect(function()
			Blip.Tag.Visible = false
		end)
			
	end)
end

ConnectV = function(Vehicle)
	spawn(function()
		if Vehicle.Name ~= "VehicleWreck" and Vehicle:findFirstChild("Stats") then
			local Blip = MakeBlip(Vehicle, false)
			GPS[Vehicle] = {true, Blip}
			
			input[#input + 1] = Blip.Btn.MouseEnter:connect(function()
				Blip.Tag.Visible = true
			end)
			input[#input + 1] = Blip.Btn.MouseLeave:connect(function()
				Blip.Tag.Visible = false
			end)
			
			input[#input + 1] = Vehicle.Changed:connect(function(prop)
				if prop == "Name" and Vehicle[prop] == "VehicleWreck" then
					GPS[Vehicle] = false
				end
			end)
		end
	end)
end

CheckGroup = function(name, id)
	if id ~= "nogroup" and service.Lighting.Groups:findFirstChild(tostring(id)) then
		for i, v in pairs(service.Lighting.Groups[tostring(id)]:GetChildren()) do
			if v.Value == name then
				return true
			end
		end
		return false
	else
		return false
	end
end

UpdateBlips = function()
	for _, Player in pairs(service.Players:GetChildren()) do
		local Blip = newMap.Frame:findFirstChild(Player.Name)
		if Blip then
			Blip.ImageColor3 = GetBlipCol(Player, true)
		end
	end
end

--//ADD MODES
AddMode("Player", "Horde", function(Players)
	local Player = GetPlayers(Players)[1]
	local Zombies = GetHorde()
	for i = 1, #Zombies do
		local Angle = (math.random(1, 63) / 10)
		SetCF(Zombies[i], Player.Character.Torso.CFrame * CFrame.new(5 * math.sin(Angle), 0, 5 * math.cos(Angle)))
	end
end)
AddMode("Player", "Explode", function(Players)
	local Players = GetPlayers(Players)
	local Obj = service.Lighting.Materials.C4Placed
	for i = 1, #Players do
		local Player = Players[i]
		if Player and service.Workspace:findFirstChild(Player.Name) and Player:findFirstChild("playerstats") then
			local Pos = GetPos(Player.Character.Torso.Position, Obj.Head.Position)
			for i = 1, 4 do
				PlaceMaterial(Obj, Pos - Vector3.new(0, 2.9, 0), true)
			end
			wait(0.1)
			local WS = service.Workspace:GetChildren()
			for i = 1, #WS do
				local Obj = WS[i]
				if Obj.Name == "C4Placed" and Obj.Owner.Value == service.Players.LocalPlayer.Name then
					ChangeVal(Obj.Arming, 0)
					Det(Obj)
				end
			end
		end
	end
end)
AddMode("Player", "C4 Circle", function(Players)
	local Players = GetPlayers(Players)
	local Obj = service.Lighting.Materials.C4Placed
	for i = 1, #Players do
		local Player = Players[i]
		if Player and service.Workspace:findFirstChild(Player.Name) and Player:findFirstChild("playerstats") then
			local Pos = GetPos(Player.Character.Torso.Position, Obj.Head.Position)
			local t = Player.Character.Torso:Clone()
			t.Rotation = t.Rotation + Vector3.new(0, 45, 0)
			t.Anchored = true
			PlaceMaterial(Obj, Pos + (Player.Character.Torso.CFrame.rightVector * 6) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos + (Player.Character.Torso.CFrame.rightVector * 12) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos - (Player.Character.Torso.CFrame.rightVector * 6) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos - (Player.Character.Torso.CFrame.rightVector * 12) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos + (Player.Character.Torso.CFrame.lookVector * 6) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos + (Player.Character.Torso.CFrame.lookVector * 12) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos - (Player.Character.Torso.CFrame.lookVector * 6) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos - (Player.Character.Torso.CFrame.lookVector * 12) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos + (t.CFrame.rightVector * 6) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos + (t.CFrame.rightVector * 12) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos - (t.CFrame.rightVector * 6) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos - (t.CFrame.rightVector * 12) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos + (t.CFrame.lookVector * 6) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos + (t.CFrame.lookVector * 12) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos - (t.CFrame.lookVector * 6) - Vector3.new(0, 2.9, 0), true)
			PlaceMaterial(Obj, Pos - (t.CFrame.lookVector * 12) - Vector3.new(0, 2.9, 0), true)
			t:Destroy()
			wait(0.1)
			local WS = service.Workspace:GetChildren()
			for i = 1, #WS do
				local Obj = WS[i]
				if Obj.Name == "C4Placed" and Obj.Owner.Value == service.Players.LocalPlayer.Name then
					ChangeVal(Obj.Arming, 0)
					Det(Obj)
				end
			end
		end
	end
end)
AddMode("Player", "Air Strike", function(Players)
	local Players = GetPlayers(Players)
	local Obj = service.Lighting.Materials.C4Placed
	for i = 1, #Players do
		local Player = Players[i]
		if Player and service.Workspace:findFirstChild(Player.Name) and Player:findFirstChild("playerstats") then
			for i = 50, -2.5, -5 do
				local Pos = GetPos(Player.Character.Torso.Position, Obj.Head.Position)
				PlaceMaterial(Obj, Pos + Vector3.new(0, i, 0), true)
				wait(0.1)
				local WS = service.Workspace:GetChildren()
				for i = 1, #WS do
					local Obj = WS[i]
					if Obj.Name == "C4Placed" and (Obj:findFirstChild("Owner") and Obj.Owner.Value == service.Players.LocalPlayer.Name) then
						ChangeVal(Obj.Arming, 0)
						Det(Obj)
					end
				end
			end
		end
	end
end)
AddMode("Player", "Disconnect", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		Kick(Player)
	end
end)
AddMode("Player", "TP Kill", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		Teleport("To Me", Player)
		Kill(Player)
	end
end)
AddMode("Player", "Kick", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		Destroy(Players[i])
	end
end)
AddMode("Player", "Remove Char", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if service.Workspace:findFirstChild(Player.Name) then
			Destroy(Player.Character)
		end
	end
end)
AddMode("Player", "Punish", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			ChangePar(Player.Character, service.Lighting)
		end
	end
end)
AddMode("Player", "UnPunish", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if service.Lighting:findFirstChild(Player.Name) then
			ChangePar(service.Lighting[Player.Name], service.Workspace)
		end
	end
end)
AddMode("Player", "Kill", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			Kill(Player)
		end
	end
end)
AddMode("Player", "Heal", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			Heal(Player, Player.Character.Humanoid.MaxHealth)
		end
	end
end)
AddMode("Player", "Full Hunger", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			ChangeVal(Player.playerstats.Hunger, 100)
		end
	end
end)
AddMode("Player", "Full Thirst", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			ChangeVal(Player.playerstats.Thirst, 100)
		end
	end
end)
AddMode("Player", "Full Stamina", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			ChangeVal(Player.Backpack.GlobalFunctions.Stamina, 100)
		end
	end
end)
AddMode("Player", "LoopHeal", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") and service.Workspace:findFirstChild(Player.Name) then
			LoopHealed[Player.Name] = true
			repeat
				wait()
				Heal(Player, Player.Character.Humanoid.MaxHealth)
			until
				LoopHealed[Player.Name] == false
		end
	end
end)
AddMode("Player", "UnLoopHeal", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		LoopHealed[Player.Name] = false
	end
end)
AddMode("Player", "Bring", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			Teleport("To Me", Player)
		end
	end
end)
AddMode("Player", "Go To", function(Players)
	local Player = GetPlayers(Players)[1]
	Teleport("Me To", Player)
end)
AddMode("Player", "Instant Reload", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			local Tools = Player.Backpack:GetChildren()
			for i = 1, #Tools do
				local Tool = Tools[i]
				if service.Lighting.LootDrops:findFirstChild(Tool.Name) and Tool:findFirstChild("Stats"):findFirstChild("Reload") then
					ChangeVal(Tool.Stats.Reload, Obfuscate(0))
				end
			end
		end
	end
end)
AddMode("Player", "C4 Ownership", function(Players)
	local Player = GetPlayers(Players)[1]
	local WS = service.Workspace:GetChildren()
	for i = 1, #WS do
		local Obj = WS[i]
		if Obj.Name == "C4Placed" then
			ChangeVal(Obj:findFirstChild("Owner"), Player.Name)
		end
	end
end)
AddMode("Player", "Remove Vest", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if service.Workspace:findFirstChild(Player.Name) and Player:findFirstChild("playerstats") then
			if Player.Character:findFirstChild("thisisarmor", true) then
				Destroy(Player.Character:findFirstChild("thisisarmor", true).Parent)
			end
		end
	end
end)
AddMode("Player", "Godmode", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		ChangePar(service.Players.LocalPlayer.Character.Humanoid, Player.Character)
		ChangePar(Player.Character.Humanoid, service.Players.LocalPlayer.Character)
		wait(0.1)
		SetHealth("MaxHealth", math.huge)
		wait(0.2)
		SetHealth("Health", math.huge)
		wait(0.1)
		ChangePar(Player.Character.Humanoid, service.Players.LocalPlayer.Character)
		ChangePar(service.Players.LocalPlayer.Character.Humanoid, Player.Character)
	end
end)
AddMode("Player", "UnGodmode", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		ChangePar(service.Players.LocalPlayer.Character.Humanoid, Player.Character)
		ChangePar(Player.Character.Humanoid, service.Players.LocalPlayer.Character)
		wait(0.1)
		SetHealth("MaxHealth", 100)
		wait(0.2)
		SetHealth("Health", 100)
		wait(0.1)
		ChangePar(Player.Character.Humanoid, service.Players.LocalPlayer.Character)
		ChangePar(service.Players.LocalPlayer.Character.Humanoid, Player.Character)
	end
end)
AddMode("Player", "Clear Inventory", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if service.Workspace:findFirstChild(Player.Name) and Player:findFirstChild("playerstats") then
			local Slots = Player.playerstats.Slots:GetChildren()
			for i = 1, #Slots do
				local Slot = Slots[i]
				if Slot:findFirstChild("ObjectID") then
					Destroy(Slot.ObjectID)
				end
			end
		end
	end
end)
AddMode("Player", "Ban", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		Banned[Players[i].Name] = true
		Kick(Players[i])
	end
end)
AddMode("Player", "UnBan", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		Banned[Players[i].Name] = false
	end
end)
AddMode("Player", "Stat Change", function(Players, Vars)
	local Mode = GetMode("Stat", Vars.Stat.Box.Text)
	Mode.Func(Players, Vars)
end)		
AddMode("Player", "Red Light", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			CreateChem("Red")
			ChangePar(service.Players.LocalPlayer.Character.Head:WaitForChild("RedLight"), Player.Character.Head)
		end
	end
end)
AddMode("Player", "Blue Light", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			CreateChem("Blue")
			ChangePar(service.Players.LocalPlayer.Character.Head:WaitForChild("BlueLight"), Player.Character.Head)
		end
	end
end)
AddMode("Player", "Green Light", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			CreateChem("Green")
			ChangePar(service.Players.LocalPlayer.Character.Head:WaitForChild("GreenLight"), Player.Character.Head)
		end
	end
end)
AddMode("Player", "White Light", function(Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") then
			CreateOmni()
			ChangePar(service.Players.LocalPlayer.Character.Head:WaitForChild("OmniLight"), Player.Character.Head)
		end
	end
end)
AddMode("Player", "Remove Lights", function(Players)
	local Players = GetPlayers(Players)
	local LightNames = {
		"RedLight",
		"GreenLight",
		"BlueLight",
		"OmniLight"
	}
	for _, Player in pairs(Players) do
		for _, lName in pairs(LightNames) do
			if service.Workspace:findFirstChild(Player.Name) then
				for _, Light in pairs(Player.Character.Head:GetChildren()) do
					if Light.Name == lName then
						Destroy(Light)
					end
				end
			end
		end
	end
end)
AddMode("Player", "Remove Humanoid", function(Players)
	local Players = GetPlayers(Players)
	for _, Player in pairs(Players) do
		if service.Workspace:findFirstChild(Player.Name) and Player.Character:findFirstChild("Humanoid") then
			Destroy(Player.Character.Humanoid)
		end
	end
end)

AddMode("Vehicle", "Bring", function(Vehicle, Players)
	local Player = GetPlayers(Players)[1]
	if Player then
		SetCF(Vehicle, Player.Character.Torso.CFrame * CFrame.new(-20, 0, 0))
	end
end)
AddMode("Vehicle", "GoTo", function(Vehicle)
	TPToCoord(Vehicle.PrimaryPart.Position)
end)
AddMode("Vehicle", "Explode", function(Vehicle)
	ChangeVal(Vehicle.Stats.Engine, 0)
end)
AddMode("Vehicle", "Dupe", function(Vehicle, Players)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		PlaceMaterial(Vehicle, AddPos(GetPos(Player.Character.Torso.Position, Vehicle.PrimaryPart.Position)))
		service.Workspace:WaitForChild(Vehicle.Name)
		ChangePar(service.Workspace:FindFirstChild(Vehicle.Name), service.Workspace.Vehicles)
		wait(0.5)
		local Vehicles = service.Workspace.Vehicles:GetChildren()
		CurrVeh = Vehicles[#Vehicles]
		VehicleFr.Cycler.Lbl.Text = CurrVeh.Name:upper()
	end
end)
AddMode("Vehicle", "Heal", function(Vehicle)
	local Stats = Vehicle.Stats:GetChildren()
	for i = 1, #Stats do
		local Stat = Stats[i]
		if Stat.Name ~= "MaxSpeed" then
			ChangeVal(Stat, Stat.Max.Value)
		end
	end
end)
AddMode("Vehicle", "Godmode", function(Vehicle)
	local Stats = Vehicle.Stats:GetChildren()
	for i = 1, #Stats do
		local Stat = Stats[i]
		if Stat.Name ~= "MaxSpeed" and Stat.Name ~= "Armor" then
			ChangeVal(Stat, 100000)
		elseif Stat.Name == "Armor" then
			if not VehicleSpeeds[Vehicle.Name][3] then
				VehicleSpeeds[Vehicle.Name][3] = Stat.Max.Value
			end
			ChangeVal(Stat.Max, 100000)
			wait(0.1)
			ChangeVal(Stat, 100000)
		end
	end
end)
AddMode("Vehicle", "Ungodmode", function(Vehicle)
	local Stats = Vehicle.Stats:GetChildren()
	for i = 1, #Stats do
		local Stat = Stats[i]
		if Stat.Name ~= "MaxSpeed" and Stat.Name ~= "Armor" then
			ChangeVal(Stat, Stat:GetChildren()[1].Value)
		elseif Stat.Name == "Armor" then
			ChangeVal(Stat.Max, VehicleSpeeds[Vehicle.Name][3])
			wait(0.1)
			ChangeVal(Stat, VehicleSpeeds[Vehicle.Name][3])
		end
	end
end)
AddMode("Vehicle", "Horn", function(Vehicle, empty, Vars)
	local ID = Vars.Horn.Box.Text
	SetSoundID(Vehicle.Essentials.Base.Horn, ID)
end)
AddMode("Vehicle", "ResetSpeed", function(Vehicle)
	ChangeVal(Vehicle.Stats.MaxSpeed, VehicleSpeeds[Vehicle.Name][1])
	ChangeVal(Vehicle.Stats.MaxSpeed.Offroad, VehicleSpeeds[Vehicle.Name][2])
end)
AddMode("Vehicle", "Speed", function(Vehicle, empty, Vars)
	local OffRoad = Vars.Offroad.Box.Text
	local OnRoat = Vars.Onroad.Box.Text
	
	if OffRoad ~= "" and OffRoad ~= " " then
		ChangeVal(Vehicle.Stats.MaxSpeed.Offroad, tonumber(OffRoad))
	end
	if OnRoat ~= "" and OnRoat ~= " " then
		ChangeVal(Vehicle.Stats.MaxSpeed, tonumber(OnRoat))
	end
end)

AddMode("Stat", "Player Kills", function(Players, Vars)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") and (Vars.Value.Box.Text ~= "" and Vars.Value.Box.Text ~= " ") then
			ChangeVal(Player.playerstats.PlayerKill.Aggressive, tonumber(Vars.Value.Box.Text))
		end
	end
end)
AddMode("Stat", "Zombie Kills", function(Players, Vars)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") and (Vars.Value.Box.Text ~= "" and Vars.Value.Box.Text ~= " ") then
			local Days = Player.playerstats.Days.Value
			ChangeVal(Player.playerstats.ZombieKill.Military, tonumber(Vars.Value.Box.Text))
			spawn(function()
				ChangeVal(Player.playerstats.Days.Value, 1)
				wait(0.5)
				ChangeVal(Player.playerstats.Days.Value, Days)
			end)
		end
	end
end)
AddMode("Stat", "Days Survived", function(Players, Vars)
	local Players = GetPlayers(Players)
	for i = 1, #Players do
		local Player = Players[i]
		if Player:findFirstChild("playerstats") and (Vars.Value.Box.Text ~= "" and Vars.Value.Box.Text ~= " ") then
			ChangeVal(Player.playerstats.Days.Value, tonumber(Vars.Value.Box.Text))
		end
	end
end)

AddMode("Local", "C4", function()
	local Obj = service.Lighting.Materials.C4Placed
	local Pos = GetPos(service.Players.LocalPlayer.Character.Torso.Position, Obj.Head.Position)
	PlaceMaterial(Obj, Pos - Vector3.new(0, 2.9, 0), true)
end)
AddMode("Local", "VS50", function()
	local Obj = service.Lighting.Materials.VS50Placed
	local Pos = GetPos(service.Players.LocalPlayer.Character.Torso.Position, Obj.Head.Position)
	PlaceMaterial(Obj, Pos - Vector3.new(0, 2.9, 0), true)
end)
AddMode("Local", "TankMine", function()
	local Obj = service.Lighting.Materials.TM46Placed
	local Pos = GetPos(service.Players.LocalPlayer.Character.Torso.Position, Obj.Head.Position)
	PlaceMaterial(Obj, Pos - Vector3.new(0, 2.9, 0), true)
end)
AddMode("Local", "CamLimit", function()
	if service.Players.LocalPlayer.PlayerGui:findFirstChild("CameraZoom") then
		service.Players.LocalPlayer.PlayerGui.CameraZoom:Destroy()
	end
	service.Players.LocalPlayer.CameraMaxZoomDistance = 200
end)
AddMode("Local", "Thirst", function()
	Bools["Thirst"] = not Bools["Thirst"]
	if Bools["Thirst"] then
		ChangeVal(service.Players.LocalPlayer.playerstats.Thirst, 100000)
	else
		ChangeVal(service.Players.LocalPlayer.playerstats.Thirst, 100)
	end
end)
AddMode("Local", "Hunger", function()
	Bools["Hunger"] = not Bools["Hunger"]
	if Bools["Hunger"] then
		ChangeVal(service.Players.LocalPlayer.playerstats.Hunger, 100000)
	else
		ChangeVal(service.Players.LocalPlayer.playerstats.Hunger, 100)
	end
end)
AddMode("Local", "Stamina", function()
	Bools["Stamina"] = not Bools["Stamina"]
	if Bools["Stamina"] then
		ChangeVal(service.Players.LocalPlayer.Backpack.GlobalFunctions.Stamina, 100000)
	else
		ChangeVal(service.Players.LocalPlayer.Backpack.GlobalFunctions.Stamina, 100)
	end
end)
AddMode("Local", "Godmode", function()
	Bools["Godmode"] = not Bools["Godmode"]
	if Bools["Godmode"] then
		SetHealth("MaxHealth", math.huge)
		wait(0.5)
		SetHealth("Health", math.huge)
	else
		SetHealth("MaxHealth", 100)
		wait(0.5)
		SetHealth("Health", 100)
	end
end)
AddMode("Local", "Reload", function()
	local Backpack = service.Players.LocalPlayer.Backpack:GetChildren()
	for i = 1, #Backpack do
		local Tool = Backpack[i]
		if service.Lighting.LootDrops:findFirstChild(Tool.Name) and Tool:findFirstChild("Stats"):findFirstChild("Reload") then
			ChangeVal(Tool.Stats.Reload, Obfuscate(0))
		end
	end
end)
AddMode("Local", "ClickTP", function()
	Bools["ClickTP"] = not Bools["ClickTP"]
	local Mouse = service.Players.LocalPlayer:GetMouse()
	local Clicked = false
	local ev
	ev = Mouse.Button1Down:connect(function()
		if Bools["ClickTP"] and not Clicked then
			Clicked = true
			TPToCoord(Mouse.Hit.p)
		end
		Bools["ClickTP"] = false
		lMiscFr.ClickTP.Btn.Text = "INACTIVE"
		ev:disconnect()
	end)
end)

AddMode("Misc", "ClearLoot", function()
	local Loot = service.Workspace.DropLoot:GetChildren()
	for i = 1, #Loot do
		local Drop = Loot[i]
		if Drop:IsA("Model") then
			Destroy(Drop)
		end
	end
end)
AddMode("Misc", "KillZombies", function()
	local Zombies = GetHorde(true)
	for i = 1, #Zombies do
		local Zombie = Zombies[i]
		DmgZombie(Zombie, 10000000)
	end
end)
AddMode("Misc", "StopMusic", function()
	local WS = service.Workspace:GetChildren()
	for i = 1, #WS do
		local Obj = WS[i]
		if Obj:IsA("Sound") then
			StopSound(Obj)
			if not Obj:findFirstChild("pmesound") and Obj ~= CurrSnd then
				Destroy(Obj)
			end
		end
	end
end)
AddMode("Misc", "Pants", function(Vars)
	local ID = Vars.ID.Box.Text
	ChangeVal(service.Players.LocalPlayer.playerstats.character:findFirstChild("pants").ObjectID:findFirstChild("Pants"), ID)
	Check("Pants")
end)
AddMode("Misc", "Shirt", function(Vars)
	local ID = Vars.ID.Box.Text
	ChangeVal(service.Players.LocalPlayer.playerstats.character:findFirstChild("shirt").ObjectID:findFirstChild("Shirt"), ID)
	Check("Shirt")
end)
AddMode("Misc", "PlayMusic", function(Vars)
	local ID = Vars.ID.Box.Text
	if not CurrSnd then
		if service.Workspace:findFirstChild("pmesound", true) then
			CurrSnd = service.Workspace:findFirstChild("pmesound", true).Parent
		else
			CurrSnd = InitSound()
		end
	end
	SetSoundID(CurrSnd, ID)
	spawn(function()
		PlaySound(CurrSnd)
		wait(CurrSnd.TimeLength)
		StopSound(CurrSnd)
	end)
end)
AddMode("Misc", "StopMusic", function()
	local WS = service.Workspace:GetChildren()
	for i = 1, #WS do
		local Obj = WS[i]
		if Obj:IsA("Sound") then
			StopSound(Obj)
			if not Obj:findFirstChild("pmesound") then
				Destroy(Obj)
			end
		end
	end
end)
AddMode("Misc", "SendMSG", function(Vars)
	local Players = GetPlayers(Vars.Player.Box.Text)
	for i = 1, #Players do
		local Player = Players[i]
		SendMsg(Player, CurrCol, Vars.Message.Box.Text)
	end
end)

AddMode("Teleport", "AddWP", function(Vars)
	local X, Y, Z = 0, 0, 0
	if Vars.X.Box.Text == "" or Vars.X.Box.Text == " " then
		X = service.Players.LocalPlayer.Character.Torso.Position.x
	end
	if Vars.Y.Box.Text == "" or Vars.Y.Box.Text == " " then
		Y = service.Players.LocalPlayer.Character.Torso.Position.y
	end
	if Vars.Z.Box.Text == "" or Vars.Z.Box.Text == " " then
		Z = service.Players.LocalPlayer.Character.Torso.Position.z
	end
	WayPoints[#WayPoints + 1] = {
		["Name"] = Vars.wName.Box.Text,
		["Pos"] = Vector3.new(X, Y, Z)
	}
	GenList(WayPoints, TpFr.Main.Extension.WayPointList, function(Lbl)
		TpFr.Vars.wName.Box.Text = Lbl.Name
	end)
end)
AddMode("Teleport", "RemWP", function(Vars)
	for i = 1, #WayPoints do
		local WP = WayPoints[i]
		if WP.Name == Vars.wName.Box.Text then	
			table.remove(WayPoints, i)
			GenList(WayPoints, TpFr.Main.Extension.WayPointList, function(Lbl)
				TpFr.Vars.wName.Box.Text = Lbl.Name
			end)
		end
	end
end)
AddMode("Teleport", "Teleport", function(Vars)
	local Type = Vars.Type.Btn.Text
	if Type == "Player" then
		local Players = GetPlayers(Vars.Player.Box.Text)
		if Vars.Method.Btn.Text == "Bring" then
			for i = 1, #Players do
				local Player = Players[i]
				Teleport((Vars.Method.Btn.Text == "Goto" and "Me To" or "To Me"), Player)
			end
		else
			Teleport((Vars.Method.Btn.Text == "Goto" and "Me To" or "To Me"), Players[1])
		end
	elseif Type == "Location" then
		Teleport("Me To", Vars.Player.Box.Text)
	elseif Type == "Coord" then
		local X = Vars.X.Box.Text
		local Y = Vars.Y.Box.Text
		local Z = Vars.Z.Box.Text
		TPToCoord(Vector3.new(X, Y, Z))
	elseif Type == "WayPoint" then
		for i = 1, #WayPoints do
			local WP = WayPoints[i]
			if WP.Name == Vars.wName.Box.Text then
				TPToCoord(WP.Pos)
			end
		end
	end
end)

AddMode("Skins", "SpawnCrate", function(Vars)
	local Players = GetPlayers(Vars.Player.Box.Text)
	local Obj = service.Lighting.LootDrops.CrateLow
	for _, Player in pairs(Players) do
		PlaceMaterial(Obj, AddPos(GetPos(Player.Character.Torso.Position, GetPrim(Obj).Position)))
	end
end)
AddMode("Skins", "SetSkin", function(Vars)
	local Players = GetPlayers(Vars.Player.Box.Text)
	for _, Player in pairs(Players) do
		if Player:findFirstChild("playerstats") then
			ChangeSkin(Player.playerstats.skins["skin" .. Vars.Slot.Box.Text], Selected.Primary, Selected.Secondary)
		end
	end
end)

--//ADD CMDS
AddCmd("serverlock", function()
	ServerLock = true
	SendMsg(service.Players.LocalPlayer, "Yellow", "Server is now locked")
	warn("Server is now locked")
end, "serverlock")
AddCmd("unserverlock", function()
	ServerLock = false
	SendMsg(service.Players.LocalPlayer, "Yellow", "Server is now unlocked")
	warn("Server is now unlocked")
end, "unserverlock")
AddCmd("allow", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		Allowed[Player.Name] = true
	end
end, "allow [p]")
AddCmd("disallow", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		Allowed[Player.Name] = false
	end
end, "disallow [p]")
AddCmd("notif", function(Args)
	if Args[1] == "true" then
		Notif = true
		SendMsg(service.Players.LocalPlayer, "Yellow", "ServerLock notifications enabled")
	else
		Notif = false
		SendMsg(service.Players.LocalPlayer, "Yellow", "ServerLock notifications disabled")
	end
end, "notif true/false")
AddCmd("kill", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		if service.Workspace:findFirstChild(Player.Name) then
			Destroy(Player.Character.Head)
		end
	end
end, "kill [p]")
AddCmd("tpcorpses", function(Args)
	local Players = GetPlayers(Args[1])
	local oPlayer = GetPlayers(Args[2])[1]
	for _, Player in pairs(Players) do
		for _, Obj in pairs(service.Workspace:GetChildren()) do
			if Args[1] ~= "all" and Obj.Name == "Corpse" and Obj:GetChildren()[1].Name == "Corpse of " .. Player.Name then
				SetCF(Obj, AddCF(oPlayer.Character.Torso.CFrame))
			elseif Obj.Name == "Corpse" then
				SetCF(Obj, AddCF(oPlayer.Character.Torso.CFrame))
			end
		end
	end
end, "tpcorpses [p] [p]")
AddCmd("music", function(Args)
	local ID = tonumber(Args[1])
	if ID ~= "off" then
		if not CurrSnd then
			if service.Workspace:findFirstChild("pmesound", true) then
				CurrSnd = service.Workspace:findFirstChild("pmesound", true).Parent
			else
				CurrSnd = InitSound()
			end
		end
		SetSoundID(CurrSnd, ID)
		spawn(function()
			PlaySound(CurrSnd)
			wait(CurrSnd.TimeLength)
			StopSound(CurrSnd)
		end)
	else
		local WS = service.Workspace:GetChildren()
		for i = 1, #WS do
			local Obj = WS[i]
			if Obj:IsA("Sound") then
				StopSound(Obj)
				if not Obj:findFirstChild("pmesound") then
					Destroy(Obj)
				end
			end
		end
	end
end, "music [n]/off")
AddCmd("pc4", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		local Obj = service.Lighting.Materials.C4Placed
		if Player:findFirstChild("playerstats") and service.Workspace:findFirstChild(Player.Name) then
			local Pos = GetPos(Player.Character.Torso.Position, Obj.Head.Position)
			PlaceMaterial(Obj, Pos - Vector3.new(0, 2.9, 0), true)
		end
	end
end)
AddCmd("pvs50", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		local Obj = service.Lighting.Materials.VS50Placed
		if Player:findFirstChild("playerstats") and service.Workspace:findFirstChild(Player.Name) then
			local Pos = GetPos(Player.Character.Torso.Position, Obj.Head.Position)
			PlaceMaterial(Obj, Pos - Vector3.new(0, 2.9, 0), true)
		end
	end
end)
AddCmd("ptm46", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		local Obj = service.Lighting.Materials.TM46Placed
		if Player:findFirstChild("playerstats") and service.Workspace:findFirstChild(Player.Name) then
			local Pos = GetPos(Player.Character.Torso.Position, Obj.Head.Position)
			PlaceMaterial(Obj, Pos - Vector3.new(0, 2.9, 0), true)
		end
	end
end)
AddCmd("changestat", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		local Stat = Args[2]
		if Stat == "pKills" then
			ChangeVal(Player.playerstats.PlayerKill.Aggressive, tonumber(Args[3]))
		elseif Stat == "zKills" then
			local Days = Player.playerstats.Days.Value
			ChangeVal(Player.playerstats.ZombieKill.Military, tonumber(Args[3]))
			spawn(function()
				ChangeVal(Player.playerstats.Days.Value, 1)
				wait(0.5)
				ChangeVal(Player.playerstats.Days.Value, Days)
			end)
		elseif Stat == "Days" then
			ChangeVal(Player.playerstats.Days.Value, tonumber(Args[3]))
		end
	end
end, "changestat [p] [s] [n]")
AddCmd("heal", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		Heal(Player, Player.Character.Humanoid.MaxHealth)
	end
end, "heal [p]")
AddCmd("hunger", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		ChangeVal(Player.playerstats.Hunger, tonumber(Args[2]))
	end
end, "hunger [p] [n]")
AddCmd("thirst", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		ChangeVal(Player.playerstats.Thirst, tonumber(Args[2]))
	end
end, "thirst [p] [n]")
AddCmd("kick", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		Kick(Player)
	end
end, "kick [p]")
AddCmd("ban", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		Banned[Player.Name] = true
		Kick(Player)
	end
end, "ban [p]")
AddCmd("unban", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		Banned[Player.Name] = false
	end
end, "unban [p]")
AddCmd("god", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		ChangePar(service.Players.LocalPlayer.Character.Humanoid, Player.Character)
		ChangePar(Player.Character.Humanoid, service.Players.LocalPlayer.Character)
		wait(0.1)
		SetHealth("MaxHealth", math.huge)
		wait(0.2)
		SetHealth("Health", math.huge)
		wait(0.1)
		ChangePar(Player.Character.Humanoid, service.Players.LocalPlayer.Character)
		ChangePar(service.Players.LocalPlayer.Character.Humanoid, Player.Character)
	end
end, "god [p]")
AddCmd("ungod", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		ChangePar(service.Players.LocalPlayer.Character.Humanoid, Player.Character)
		ChangePar(Player.Character.Humanoid, service.Players.LocalPlayer.Character)
		wait(0.1)
		SetHealth("MaxHealth", 100)
		wait(0.2)
		SetHealth("Health", 100)
		wait(0.1)
		ChangePar(Player.Character.Humanoid, service.Players.LocalPlayer.Character)
		ChangePar(service.Players.LocalPlayer.Character.Humanoid, Player.Character)
	end
end, "ungod [p]")
AddCmd("punish", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		if Player:findFirstChild("playerstats") then
			ChangePar(Player.Character, service.Lighting)
		end
	end
end, "punish [p]")
AddCmd("unpunish", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		if service.Lighting:findFirstChild(Player.Name) then
			ChangePar(service.Lighting[Player.Name], service.Workspace)
		end
	end
end, "unpunish [p]")
AddCmd("bring", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		Teleport("To Me", Player)
	end
end, "bring [p]")
AddCmd("goto", function(Args)
	local Player = GetPlayers(Args[1])[1]
	Teleport("Me To", Player)
end, "goto [p]")
AddCmd("horde", function(Args)
	local Player = GetPlayers(Args[1])[1]
	local Zombies = GetHorde()
	for i = 1, #Zombies do
		local Angle = (math.random(1, 63) / 10)
		SetCF(Zombies[i], Player.Character.Torso.CFrame * CFrame.new(5 * math.sin(Angle), 0, 5 * math.cos(Angle)))
	end
end, "horde [p]")
AddCmd("explode", function(Args)
	local Players = GetPlayers(Args[1])
	local Obj = service.Lighting.Materials.C4Placed
	for _, Player in pairs(Players) do
		local Pos = GetPos(Player.Character.Torso.Position, Obj.Head.Position)
		for i = 1, 4 do
			PlaceMaterial(Obj, Pos - Vector3.new(0, 2.9, 0), true)
		end
		wait(0.1)
		local WS = service.Workspace:GetChildren()
		for i = 1, #WS do
			local Obj = WS[i]
			if Obj.Name == "C4Placed" and Obj.Owner.Value == service.Players.LocalPlayer.Name then
				ChangeVal(Obj.Arming, 0)
				Det(Obj)
			end
		end
	end
end, "explode [p]")
AddCmd("nochar", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		if service.Workspace:findFirstChild(Player.Name) then
			Destroy(Player.Character)
		end
	end
end, "nochar [p]")
AddCmd("sendmsg", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		SendMsg(Player, Args[2], Args[3])
	end
end, "sendmsg [p] [s] [s]")
AddCmd("light", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		CreateOmni()
		ChangePar(service.Players.LocalPlayer.Character.Head.OmniLight, Player.Character.Head)
	end
end, "light [p]")
AddCmd("unlight", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		if service.Workspace:findFirstChild(Player.Name) then
			for _, Light in pairs(Player.Character.Head:GetChildren()) do
				if Light.Name == "OmniLight" then
					Destroy(Light)
				end
			end
		end
	end
end, "unlight [p]")
AddCmd("ragdoll", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		if service.Workspace:findFirstChild(Player.Name) and Player.Character:findFirstChild("Humanoid") then
			Destroy(Player.Character.Humanoid)
		end
	end
end, "ragdoll [p]")
AddCmd("end_script", function()
	newMap:Destroy()
end, "end_script")
AddCmd("invis", function(Args)
	local Players = GetPlayers(Args[1])
	for _, Player in pairs(Players) do
		if service.Workspace:findFirstChild(Player.Name) then
			recursive = function(k)
				for _, p in pairs(k:GetChildren()) do
					if p:IsA("BasePart") then
						Invis(p)
					end
					recursive(p)
				end
			end
			recursive(Player.Character)
			Destroy(Player.Character.Head.face)
		end
	end
end, "invis [p]")
AddCmd("delmap", function()
	for _, Object in pairs(service.Workspace:GetChildren()) do
		if not Object:IsA("Camera") and not Object:IsA("Terrain") then
			if not service.Players:findFirstChild(Object.Name) then
				Destroy(Object)
			end
		end
	end
end, "delmap")

--//GUI FUNCTIONS
--GetEarlyLogs()

input[#input + 1] = service.Players.PlayerAdded:connect(function(Player)
	warn("\"" .. Player.Name .. "\" has joined the game")
	if BanSettings.SET and CheckBanned(Player) then
		if Player ~= service.Players.LocalPlayer then
			Kick(Player)
		end
	end
	if ServerLock then
		if Notif then
			SendMsg(service.Players.LocalPlayer, "Yellow", "You have 20 seconds to allow \"" .. Player.Name .. "\" before they will be auto-kicked by the serverlock")
		else
			warn("You have 20 seconds to allow \"" .. Player.Name .. "\" before they will be auto-kicked by the serverlock")
		end
		spawn(function()
			wait(20)
			if not Allowed[Player.Name] and Player ~= service.Players.LocalPlayer then
				if Notif then
					SendMsg(service.Players.LocalPlayer, "Yellow", "\"" .. Player.Name .. "\" has just been kicked")
				else
					warn("\"" .. Player.Name .. "\" has just been kicked")
				end
				Kick(Player)
			else
				UpdatePlayers()
				ConnectP(Player)
			end
		end)
	else
		UpdatePlayers()
		ConnectP(Player)
	end
end)

input[#input + 1] = service.Players.PlayerRemoving:connect(function(Player)
	warn("\"" .. Player.Name .. "\" has left the game")
	UpdatePlayers()
	RemoveBlip(Player)
end)

input[#input + 1] = service.Workspace.Vehicles.ChildAdded:connect(function(Vehicle)
	if Vehicle.Name ~= "VehicleWreck" then
		ConnectV(Vehicle)
	end
end)

input[#input + 1] = service.Players.LocalPlayer.PlayerGui.MyGroup.Bin.groupid.Changed:connect(function()
	UpdateBlips()
	wait(1)
	if service.Players.LocalPlayer.PlayerGui.MyGroup.Bin.groupid.Value ~= "nogroup" then
		for _, Member in pairs(service.Lighting.Groups:findFirstChild(service.Players.LocalPlayer.PlayerGui.MyGroup.Bin.groupid.Value):GetChildren()) do
			input[#input + 1] = Member.Changed:connect(function()
				UpdateBlips()
			end)
		end
	end
end)

for _, Btn in pairs(Btns:GetChildren()) do
	if Btn:IsA("TextButton") then
		input[#input + 1] = Btn.MouseButton1Click:connect(function()
			for _, oBtn in pairs(Btns:GetChildren()) do
				if oBtn:IsA("TextButton") then
					if Btn ~= oBtn then
						oBtn.Text = oBtn.Name:upper()
						Main[oBtn.Name .. "Panel"].Visible = false
					else
						oBtn.Text = ">     " .. oBtn.Name:upper() .. "     < "
						Main[oBtn.Name .. "Panel"].Visible = true
					end
				end
			end
		end)
	end
end

for _, Btn in pairs(sBtns:GetChildren()) do
	if Btn:IsA("TextButton") and Btn.Name ~= "InvViewer" then
		input[#input + 1] = Btn.MouseButton1Click:connect(function()
			for _, oBtn in pairs(sBtns:GetChildren()) do
				if oBtn:IsA("TextButton") and oBtn.Name ~= "InvViewer" then
					if Btn ~= oBtn then
						oBtn.Text = " " .. oBtn.Name:upper()
						sPanel[oBtn.Name].Visible = false
					else
						oBtn.Text = " > " .. oBtn.Name:upper()
						sPanel[oBtn.Name].Visible = true
					end
				end
			end
		end)
	end
end

for _, Btn in pairs(Toggles:GetChildren()) do
	input[#input + 1] = Btn.MouseEnter:connect(function()
		Btn.Label.Visible = true
	end)
	input[#input + 1] = Btn.MouseLeave:connect(function()
		Btn.Label.Visible = false
	end)
	input[#input + 1] = Btn.MouseButton1Click:connect(function()
		getfenv()[Btn.Name:sub(string.len("Toggle") + 1)].Visible = not getfenv()[Btn.Name:sub(string.len("Toggle") + 1)].Visible
		Btn.Text = (getfenv()[Btn.Name:sub(string.len("Toggle") + 1)].Visible and "-" or "+")
	end)
end

for _, Var in pairs(SkinFr.Vars:GetChildren()) do
	for _, Btn in pairs(Var:GetChildren()) do
		if Btn.ClassName:find("Button") then
			input[#input + 1] = Btn.MouseButton1Click:connect(function()
				Selected.Obj = Btn
				GenSkinList((Btn.Name == "Col" and Colours or Materials), Btn.Name, function(Lbl)
					
				end)
			end)
		end
	end
end

for _, Btn in pairs(SkinFr.Main:GetChildren()) do
	if Btn:IsA("TextButton") then
		input[#input + 1] = Btn.MouseButton1Click:connect(function()
			local Mode = GetMode("Skins", Btn.Name)
			Mode.Func(SkinFr.Vars)
		end)
	end
end

input[#input + 1] = Spec.Right.MouseButton1Click:connect(function()
	AdjustPlr(true)
end)

input[#input + 1] = Spec.Left.MouseButton1Click:connect(function()
	AdjustPlr(false)
end)

input[#input + 1] = Spec.Reset.MouseButton1Click:connect(function()
	CurrPlr = service.Players.LocalPlayer
	service.Workspace.CurrentCamera.CameraSubject = CurrPlr.Character.Humanoid
end)

input[#input + 1] = VehicleFr.Cycler.Right.MouseButton1Click:connect(function()
	AdjustVeh(true)
end)

input[#input + 1] = VehicleFr.Cycler.Left.MouseButton1Click:connect(function()
	AdjustVeh(false)
end)

input[#input + 1] = PlayerFr.Execute.MouseButton1Click:connect(function()
	local Mode = GetMode("Player", PlayerFr.Vars.Mode.Box.Text)
	Mode.Func(PlayerFr.Vars.Player.Box.Text, PlayerFr.Vars)
end)

input[#input + 1] = SpawnFr.Spawn.MouseButton1Click:connect(function()
	local Am, C = 0, 0
	if SpawnFr.Count.Box.Text == "" then
		Am = 1
	else
		Am = tonumber(SpawnFr.Count.Box.Text)
		if Am > 15 then
			Am = 15
		end
	end
	repeat
		wait()
		C = C + 1
		for _, Player in pairs(GetPlayers(SpawnFr.Player.Box.Text)) do
			SpawnItem("S", SpawnFr.Item.Box.Text, Player)
		end
	until
		C == Am
	
	SpawnFr.Count.Box.Text = ""
	SpawnFr.Item.Box.Text = ""
end)

input[#input + 1] = SpawnFr.Search.FocusLost:connect(function(ep, input)
	if SpawnFr.Search.Text == "" or SpawnFr.Search.Text == " " then
		GenList(service.Lighting.LootDrops:GetChildren(), SpawnFr.ItemList, function(Lbl)
			SpawnFr.Item.Box.Text = Lbl.Name
			SpawnFr.Count.Box.Text = "1"
		end)
		SpawnFr.Search.Text = "CLICK HERE TO SEARCH"
	else
		local t = {}
		local Loot = service.Lighting.LootDrops:GetChildren()
		for i = 1, #Loot do
			local Drop = Loot[i]
			if Drop.Name:lower():find(SpawnFr.Search.Text:lower()) then
				table.insert(t, #t + 1, Drop)
			end
		end
		GenList(t, SpawnFr.ItemList, function(Lbl)
			SpawnFr.Item.Box.Text = Lbl.Name
			SpawnFr.Count.Box.Text = "1"
		end)
		SpawnFr.Search.Text = "CLICK HERE TO SEARCH"
	end
end)

input[#input + 1] = lSpawnFr.Spawn.MouseButton1Click:connect(function()
	local Am, C = 0, 0
	if lSpawnFr.Count.Box.Text == "" then
		Am = 1
	else
		Am = tonumber(lSpawnFr.Count.Box.Text)
		if Am > 15 then
			Am = 15
		end
	end
	repeat
		wait()
		C = C + 1
		SpawnItem("L", lSpawnFr.Item.Box.Text)
	until
		C == Am
	
	lSpawnFr.Count.Box.Text = ""
	lSpawnFr.Item.Box.Text = ""
end)

input[#input + 1] = lSpawnFr.Search.FocusLost:connect(function()
	if lSpawnFr.Search.Text == "" or lSpawnFr.Search.Text == " " then
		GenList(service.Lighting.LootDrops:GetChildren(), lSpawnFr.ItemList, function(Lbl)
			lSpawnFr.Item.Box.Text = Lbl.Name
			lSpawnFr.Count.Box.Text = "1"
		end)
		lSpawnFr.Search.Text = "CLICK HERE TO SEARCH"
	else
		local t = {}
		local Loot = service.Lighting.LootDrops:GetChildren()
		for i = 1, #Loot do
			local Drop = Loot[i]
			if Drop.Name:lower():find(lSpawnFr.Search.Text:lower()) then
				table.insert(t, #t + 1, Drop)
			end
		end
		GenList(t, lSpawnFr.ItemList, function(Lbl)
			lSpawnFr.Item.Box.Text = Lbl.Name
			lSpawnFr.Count.Box.Text = "1"
		end)
		lSpawnFr.Search.Text = "CLICK HERE TO SEARCH"
	end
end)

for i = 1, #lMiscFr:GetChildren() do
	local Btn = lMiscFr:GetChildren()[i]
	if Btn.Name == "ClickTP" then
		input[#input + 1] = Btn.Btn.MouseButton1Click:connect(function()
			Btn.Btn.Text = "ACTIVE"
			local Mode = GetMode("Local", "ClickTP")
			Mode.Func()
		end)
	elseif Btn:IsA("TextButton") then
		input[#input + 1] = Btn.MouseButton1Click:connect(function()
			if Btn.Text == "X" or Btn.Text == "" then
				Btn.Text = (Btn.Text == "X" and "" or "X")
			end
			local Mode = GetMode("Local", Btn.Name)
			Mode.Func()
		end)
	end
end

for i = 1, #MiscFr.Main:GetChildren() do
	local Btn = MiscFr.Main:GetChildren()[i]
	if Btn:IsA("TextButton") then
		input[#input + 1] = Btn.MouseButton1Click:connect(function()
			local Mode = GetMode("Misc", Btn.Name)
			Mode.Func(MiscFr.Vars)
		end)
	end
end

for i = 1, #VehicleFr:GetChildren() do
	local Btn = VehicleFr:GetChildren()[i]
	if Btn:IsA("TextButton") then
		input[#input + 1] = Btn.MouseButton1Click:connect(function()
			local Mode = GetMode("Vehicle", Btn.Name)
			Mode.Func(CurrVeh, VehicleFr.Vars.Player.Box.Text, VehicleFr.Vars)
		end)
	end
end

for i = 1, #TpFr.Main:GetChildren() do
	local Btn = TpFr.Main:GetChildren()[i]
	if Btn:IsA("TextButton") then
		input[#input + 1] = Btn.MouseButton1Click:connect(function()
			local Mode = GetMode("Teleport", Btn.Name)
			Mode.Func(TpFr.Vars)
		end)
	end
end

input[#input + 1] = TpFr.Vars.Method.Btn.MouseButton1Click:connect(function()
	if TpFr.Vars.Type.Btn.Text == "Player" then
		TpFr.Vars.Method.Btn.Text = (TpFr.Vars.Method.Btn.Text == "Goto" and "Bring" or "Goto")
	end
end)

input[#input + 1] = TpFr.Vars.Type.Btn.MouseButton1Click:connect(function()
	local Types = {
		"Player",
		"Location",
		"WayPoint",
		"Coord"
	}
	for i = 1, #Types do
		if TpFr.Vars.Type.Btn.Text == Types[i] then
			if i < 4 then
				TpFr.Vars.Type.Btn.Text = tostring(Types[i + 1])
				break
			elseif i == 4 then
				TpFr.Vars.Type.Btn.Text = tostring(Types[1])
				break
			end
		end
	end
	if TpFr.Vars.Type.Btn.Text ~= "Player" then
		TpFr.Vars.Method.Btn.Text = "Goto"
	end
	if TpFr.Vars.Type.Btn.Text == "Location" then
		GenList(Locations, TpFr.Main.PlayerList, function(Lbl)
			TpFr.Vars.Player.Box.Text = Lbl.Name
		end)
	end
end)

input[#input + 1] = PlayerFr.Execute.MouseButton1Click:connect(function()
	local Mode = GetMode("Player", PlayerFr.Vars.Mode.Box.Text)
	Mode.Func(PlayerFr.Vars.Player.Box.Text, PlayerFr.Vars)
end)

input[#input + 1] = Output.ScrollLock.MouseButton1Click:connect(function()
	Scrolled = not Scrolled
	Output.ScrollLock.Text = (Scrolled and "X" or "")
end)

input[#input + 1] = Output.Clear.MouseButton1Click:connect(function()
	for i,v in pairs(Output.Output:GetChildren()) do
		if v ~= oTemplate then
			v:Destroy()
		end
	end
	Output.Output.CanvasSize = UDim2.new(0, 0, 0, 0)
end)

input[#input + 1] = Output.Execute.MouseButton1Click:connect(function()
	local Tab = SplitString(Output.Box.Text)
	local Command = Tab[1]
	table.remove(Tab, 1) -- table of args

	if FindCommand(Command) then
		local nCmd = FindCommand(Command)
		nCmd.Func(Tab)
		warn("> " .. Output.Box.Text)
	else
		local s, e = loadstring(Output.Box.Text)
		if s then
			s()
		else
			error(e)
		end
	end
end)

input[#input + 1] = newMap.Frame.Map.MouseButton1Click:connect(function()
	newMap.Frame.Visible = false
end)

for _, Col in pairs(MiscFr.Vars.Colour:GetChildren()) do
	input[#input + 1] = Col.MouseButton1Click:connect(function()
		CurrCol = Col.Name
		for _, nCol in pairs(MiscFr.Vars.Colour:GetChildren()) do
			if nCol ~= Col then
				nCol.Text = ""
			else
				nCol.Text = "X"
			end
		end
	end)
end

input[#input + 1] = service.UserInputService.InputBegan:connect(function(Input, GameProcessed)
	if Input.UserInputType == Enum.UserInputType.Keyboard then
		if Input.KeyCode == Enum.KeyCode.Home then
			newMap.Frame.Visible = not newMap.Frame.Visible
		elseif Input.KeyCode == Enum.KeyCode.End then
			Output.Visible = not Output.Visible
		end
	end
end)

input[#input + 1] = service.LogService.MessageOut:connect(function(Msg, MsgType)
	if Msg:lower():find("invoke") or Msg:lower():find("exhausted") and MsgType == Enum.MessageType.Error then
		return
	end
	local o = Output.Output:GetChildren()
	local YSize = 15
	local StrTab = DivideStr(Msg)
	
	if #o > 251 then -- leaves a weird gap
		local num = #o - 251
		for i = 1, num do
			o[i]:Destroy()
		end
		for q = 1, #o do
			o[q].Position = o[q].Position - UDim2.new(0, 0, 0, ((YSize + 5) * q))
		end
	end
	--for i = 1, #StrTab do
		local nLogs = Output.Output:GetChildren()
		local YPos = ((YSize * (#nLogs == 0 and 1 or #nLogs + 1)) - YSize) + ((5 * (#nLogs == 0 and 1 or #nLogs + 1)) - 5) - YSize
		
		local newLabel = oTemplate:Clone()
		newLabel.Parent = Output.Output
		newLabel.Visible = true
		newLabel.Position = UDim2.new(0, 0, 0, YPos)
		newLabel.Text = "[" .. GetTimeStamp() .. "] " .. RemoveLines(Msg) --StrTab[i]
		newLabel.Name = "LogEntry"
		newLabel.TextColor3 = GetMsgCol(MsgType)
		
		Output.Output.CanvasSize = UDim2.new(0, 0, 0, YPos + YSize + 5)
		if (YPos + YSize + 5) > 250 then
			if Scrolled then
				Output.Output.CanvasPosition = Vector2.new(0, (YPos + YSize + 5) - 250)
			end
		end
	--end
end)

input[#input + 1] = newMap.Changed:connect(function(prop)
	if prop == "Parent" then
		for i = 1, #input do
			input[i]:disconnect()
		end
		Gui:Destroy()
		if newMap ~= nil then
			newMap:Destroy()
		end
	end
end)

AntiSkidStuff() -- initiates everything
end

function Pokemon()
local function createPokemon()
	local Pokemon = CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name="PPG",})
	local Pokemon2 = CreateInstance("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=true,Position=UDim2.new(1,-275,0.5,0),Rotation=0,Selectable=false,Size=UDim2.new(0,275,0,73),SizeConstraint=0,Visible=true,ZIndex=2,Name="MainFrame",Parent = Pokemon})
	local Pokemon3 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Pokemon2})
	local Pokemon4 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Pokemon3})
	local Pokemon5 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Pokemon3})
	local Pokemon6 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Pokemon3})
	local Pokemon7 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Pokemon3})
	local Pokemon8 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Give Pokemon",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-110,0,10),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Spawn",Parent = Pokemon2})
	local Pokemon9 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="Pokemon:Lvl",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,10,0,10),Rotation=0,Selectable=true,Size=UDim2.new(1,-133,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Boxp",Parent = Pokemon2})
	local Pokemon10 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="per 10 thousand",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,10,0,43),Rotation=0,Selectable=true,Size=UDim2.new(1,-133,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Boxm",Parent = Pokemon2})
	local Pokemon11 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Give Money",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-110,0,43),Rotation=0,Selectable=true,Size=UDim2.new(0,100,0,20),SizeConstraint=0,Visible=true,ZIndex=4,Name="Money",Parent = Pokemon2})
	return Pokemon
end
	
	if not getrenv then warn("u got no getrenv, this could be elysian only - Scientist") end
	--//PROJECT POKEMON
local ogame = game
local game = {
	CoreGui 			= ogame:GetService("CoreGui"),
	ReplicatedStorage 	= ogame:GetService("ReplicatedStorage"),
	Players				= ogame:GetService("Players")
}
local Gui = createPokemon()
local G = getrenv()["_G"]
local Remotes = ogame.ReplicatedStorage.REvents

Gui.Parent = game.CoreGui

Gui.MainFrame.Spawn.MouseButton1Click:connect(function()
	local location = Gui.MainFrame.Boxp.Text:find(":")
	local Pokemon, lvl
	if not location then
		Pokemon = Gui.MainFrame.Boxp.Text
		lvl = "100"
	else
		Pokemon = Gui.MainFrame.Boxp.Text:sub(1, location - 1)
		lvl = Gui.MainFrame.Boxp.Text:sub(location + 1)
	end
	G.PlayingCheckers(Pokemon, game.Players.LocalPlayer.PokemonParty, tonumber(lvl), true)
end)

Gui.MainFrame.Money.MouseButton1Click:connect(function()
	local Amount = Gui.MainFrame.Boxm.Text
	for i = 1, tonumber(Amount) do
		Remotes.Internal.jxbf:InvokeServer()
	end
end)
end

function Azure()
local function createAzure()
	local Azure = CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name="StartUp",})
	local Azure2 = CreateInstance("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=true,Position=UDim2.new(0,50,0,100),Rotation=0,Selectable=false,Size=UDim2.new(0,400,0,190),SizeConstraint=0,Visible=true,ZIndex=2,Name="Holder",Parent = Azure})
	local Azure3 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Azure2})
	local Azure4 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Azure3})
	local Azure5 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Azure3})
	local Azure6 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Azure3})
	local Azure7 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Azure3})
	local Azure8 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="TP 2 Ore",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(0.5,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="TP",Parent = Azure2})
	local Azure9 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="azuremineshax",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="TitleBar",Parent = Azure2})
	local Azure10 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(0.5,-10,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="OreBox",Parent = Azure2})
	local Azure11 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="Created by:",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.5,10,0,70),Rotation=0,Selectable=false,Size=UDim2.new(0.5,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Note",Parent = Azure2})
	local Azure12 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="- 3dsboy08",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.10000000149012,0,1,0),Rotation=0,Selectable=false,Size=UDim2.new(0,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Note",Parent = Azure11})
	local Azure13 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="- Nexure",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.10000000149012,0,2,0),Rotation=0,Selectable=false,Size=UDim2.new(0,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="Note",Parent = Azure11})
	local Azure14 = CreateInstance("ScrollingFrame",{BottomImage="rbxassetid://444968148",CanvasPosition=Vector2.new(0,0),CanvasSize=UDim2.new(0,0,2,0),MidImage="rbxassetid://444968148",ScrollBarThickness=5,ScrollingEnabled=true,TopImage="rbxassetid://444968148",Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=true,Draggable=false,Position=UDim2.new(0,10,0,70),Rotation=0,Selectable=true,Size=UDim2.new(0.5,-10,1,-80),SizeConstraint=0,Visible=true,ZIndex=3,Name="ScriptList",Parent = Azure2})
	local Azure15 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Copy Place",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=1,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,-10,0,25),SizeConstraint=0,Visible=false,ZIndex=4,Name="Template",Parent = Azure14})
	return Azure
end
	
	--//AZURE MINES
--[[
	Azure Mines xRay Script v2
	"its less cancerous" - 3dsboy08
--]]

game:GetService("ReplicatedStorage").FreeStuff:Destroy()
me = game.Players.LocalPlayer

function remgui()
    for _,v in pairs(me.PlayerGui:GetChildren()) do
    if v.Name == "Modeshow" then
    v:remove()
	end
	end
end

function inform(text,delayXD)
    remgui()
    local sc = Instance.new("ScreenGui")
    sc.Parent = me.PlayerGui
    sc.Name = "Modeshow"
    local bak = Instance.new("Frame",sc)
    bak.BackgroundColor3 = Color3.new(1,1,1)
    bak.Size = UDim2.new(0.94,0,0.1,0)
    bak.Position = UDim2.new(0.03,0,0.037,0)
    bak.BorderSizePixel = 0
    local gi = Instance.new("TextLabel",sc)
    gi.Size = UDim2.new(0.92,0,0.09,0)
    gi.BackgroundColor3 = Color3.new(0,0,0)
    gi.Position = UDim2.new(0.04,0,0.042,0)
    gi.TextColor3 = Color3.new(1,1,1)
    gi.FontSize = "Size12"
    gi.Text = text
    coroutine.resume(coroutine.create(function()
    wait(delayXD)
    sc:remove()
    end))
end


local Gui = createAzure()
Gui.Parent = game.CoreGui

function isBlank(s)
	return s ~= nil and s:match("%S") ~= nil
end
Gui.Holder.TP.MouseButton1Click:connect(function()
	if(isBlank(Gui.Holder.OreBox.Text) ~= true) then
		inform("ERROR: Ore is blank or nil!", 3)
		return
	end
	local ore = workspace.Mine:FindFirstChild(Gui.Holder.OreBox.Text)
	if not ore then
		inform("ERROR: Ore does not exist!", 3)
		return
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ore.CFrame
end)

local HookLib do
    HookLib = {
        ["Settings"] = {
            Enabled = true
        },
        ["__Ind_HookedFunctions"] = {},
        ["__NewInd_HookedFunctions"] = {},
        ["GameMetatable"] = getrawmetatable(game),
    }
    HookLib["__index_orig"] = HookLib["GameMetatable"].__index
    HookLib["__newindex_orig"] = HookLib["GameMetatable"].__newindex

    function HookLib:AddIndexHook(IndexName, IndexFunc)
        self["__Ind_HookedFunctions"][IndexName] = {IndexFunc, false}
    end
    function HookLib:AddNewIndexHook(IndexName, IndexFunc)
        self["__NewInd_HookedFunctions"][IndexName] = {IndexFunc, false}
    end
    function HookLib:EnableIndexHook(IndexName)
        local Hook = self["__Ind_HookedFunctions"][IndexName]
        if Hook then
            Hook[2] = true
        end
    end
    function HookLib:EnableNewIndexHook(IndexName)
        local Hook = self["__NewInd_HookedFunctions"][IndexName]
        if Hook then
            Hook[2] = true
        end
    end
    function HookLib:DisableIndexHook(IndexName)
        local Hook = self["__Ind_HookedFunctions"][IndexName]
        if Hook then
            Hook[2] = false
        end
    end
    function HookLib:DisableNewIndexHook(IndexName)
        local Hook = self["__NewInd_HookedFunctions"][IndexName]
        if Hook then
            Hook[2] = false
        end
    end
    function HookLib:RemoveIndexHook(IndexName)
        self["__Ind_HookedFunctions"][IndexName] = nil
    end
    function HookLib:RemoveNewIndexHook(IndexName)
        self["__NewInd_HookedFunctions"][IndexName] = nil
    end

    HookLib["GameMetatable"].__index = function(self, index, ...)
        if HookLib["Settings"].Enabled then
            local Hook = HookLib["__Ind_HookedFunctions"][index]
            if Hook and type(Hook) == "table" and Hook[2]==true then
                return Hook[1](self, ...)
            end
        end
        return HookLib["__index_orig"](self, index, ...)
    end
    HookLib["GameMetatable"].__newindex = function(self, index, ...)
        if HookLib["Settings"].Enabled then
            local Hook = HookLib["__NewInd_HookedFunctions"][index]
            if Hook and type(Hook) == "table" and Hook[2]==true then
                return Hook[1](self, ...)
            end
        end
        return HookLib["__newindex_orig"](self, index, ...)
    end
end
game:GetService("Lighting").FogEnd = 100000000
HookLib:AddNewIndexHook("FogEnd", function(self)
	--Hook FogEnd so that it cannot be edited
    return nil
end)
HookLib:EnableNewIndexHook("FogEnd")

function randString(l)
        if l < 1 then return nil end -- Check for l < 1
        local s = "" -- Start string
        for i = 1, l do
            n = math.random(32, 126) -- Generate random number from 32 to 126
            if n == 96 then n = math.random(32, 95) end
                s = s .. string.char(n) -- turn it into character and add to string
        end
        return s -- Return string
end

OreColorDefs = { --I wish we had defines in lua :u
	Coal = BrickColor.new("Black"),
	Copper = BrickColor.new("Copper"),
	Iron = BrickColor.new("Rust"),
	Silver = BrickColor.new("Silver"),
	Ruby = BrickColor.new("Crimson"),
	Sapphire = BrickColor.new("Dark Royal blue"),
	Emerald = BrickColor.new("Camo"),
	Gold = BrickColor.new("Gold"),
	Diamond = BrickColor.new("Light Royal blue"),
	Unobtainium = BrickColor.new("Hot pink"),
	Opal = BrickColor.new("Magenta"),
	Uranium = BrickColor.new("Lime green"),
	Azure = BrickColor.new("Toothpaste"),
	Illuminunium = BrickColor.new("Grime"),
	Moonstone = BrickColor.new("Cloudy grey"),
	Plutonium = BrickColor.new("Really red"),
	Dragonglass = BrickColor.new("Really blue"),
	Topaz = BrickColor.new("Deep orange"),
	Rainbonite = BrickColor.new("White"),
	Amethyst = BrickColor.new("Bright violet"),
	Kappite = BrickColor.new("Flint"),
	Painite = BrickColor.new("Maroon"),
	Boomite = BrickColor.new("Deep orange"),
	Torch = BrickColor.new("New Yeller") --Not even a ore but watever
}

local Ores = {
	"Coal", "Copper", "Iron",
	"Silver", "Ruby", "Sapphire",
	"Emerald", "Gold", "Diamond",
	"Unobtainium", "Opal",
	"Uranium", "Azure", "Illuminunium",
	"Moonstone", "Plutonium", "Dragonglass",
	"Topaz", "Rainbonite", "Amethyst", 
	"Kappite", "Painite", "Boomite",
}

function MatchAndESPv2(part)
	local box = Instance.new("SelectionBox", game:GetService("Lighting"))
	box.Name = randString(15)
	local light = Instance.new("PointLight", part)
	light.Name = randString(15)
	light.Range = 1000
	light.Brightness = 100
	if OreColorDefs[part.Name] then
		box.Color = OreColorDefs[part.Name]
	else
		box.Color = BrickColor.new("White")
	end
	box.Parent = part
	box.Adornee = part
end

for _,v in pairs(game:GetService("Workspace").Mine:GetChildren()) do
	if v.ClassName == "Part" then
		if string.match(v.Name, "Stone") then
			v.LocalTransparencyModifier = 0.96
		else
			MatchAndESPv2(v)
		end
	end
end

game:GetService("Workspace").Mine.ChildAdded:connect(function(inst)
	if inst.ClassName == "Part" then
		if string.match(inst.Name, "Stone") then
			inst.LocalTransparencyModifier = 0.96
		else
			MatchAndESPv2(inst)
		end
	end
end)

for i = 1, #Ores do
	local YSize = 25
	local YPos = ((YSize * i) - YSize)
	
	local t = Gui.Holder.ScriptList.Template:Clone()
	t.Visible = true
	t.Position = UDim2.new(0, 0, 0, YPos)
	t.Text = Ores[i]
	t.Name = "Entry"
	t.Parent = Gui.Holder.ScriptList
	
	t.MouseButton1Click:connect(function()
		Gui.Holder.OreBox.Text = Ores[i]
	end)
	
	Gui.Holder.ScriptList.CanvasSize = UDim2.new(0, 0, 0, YPos + YSize)
end
end

function Boat()
local function createBoat()
	local Boat = CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name="FFTog",})
	local Boat2 = CreateInstance("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=true,Position=UDim2.new(1,-200,1,-200),Rotation=0,Selectable=false,Size=UDim2.new(0,200,0,60),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = Boat})
	local Boat3 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Details",Parent = Boat2})
	local Boat4 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Boat3})
	local Boat5 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Boat3})
	local Boat6 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Boat3})
	local Boat7 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Boat3})
	local Boat8 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="X",TextColor3=Color3.new(0.41960787773132,0.41960787773132,0.41960787773132),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.78431379795074,0.78431379795074,0.78431379795074),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-25,0,5),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="Tog",Parent = Boat2})
	local Boat9 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="ForceField:",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,5),Rotation=0,Selectable=false,Size=UDim2.new(0,130,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="TextLabel",Parent = Boat2})
	local Boat10 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="WalkSpeed:",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,35),Rotation=0,Selectable=false,Size=UDim2.new(0,130,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="TextLabel",Parent = Boat2})
	local Boat11 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="16",TextColor3=Color3.new(0.41960787773132,0.41960787773132,0.41960787773132),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.78431379795074,0.78431379795074,0.78431379795074),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-70,0,35),Rotation=0,Selectable=true,Size=UDim2.new(0,65,0,20),SizeConstraint=0,Visible=true,ZIndex=1,Name="TextBox",Parent = Boat2})
	return Boat
end
	
	--Whatever Floats Your Boat
local Gui = createBoat()
Gui.Parent = game.CoreGui

Gui.Frame.Tog.MouseButton1Click:connect(function()
	Gui.Frame.Tog.Text = (Gui.Frame.Tog.Text == "X" and "" or "X")
	game.ReplicatedStorage.NevermoreResources.EventStreamContainer.ForceFieldEvent:FireServer(Gui.Frame.Tog.Text == "X" and true or false)
end)

Gui.Frame.TextBox.FocusLost:connect(function(e_pressed) 
	if e_pressed then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(Gui.Frame.TextBox.Text)
	end
end)
end

function Pf()
local function createPf()
	local Pf = CreateInstance("Folder",{Name="Folder",})
	local Pf2 = CreateInstance("BillboardGui",{Active=true,AlwaysOnTop=true,Enabled=true,ExtentsOffset=Vector3.new(0,5,0),Size=UDim2.new(8,0,2,0),SizeOffset=Vector2.new(0,0),StudsOffset=Vector3.new(0,0,0),Name="Ovearhead",Parent = Pf})
	local Pf3 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Frame",Parent = Pf2})
	local Pf4 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="ApocalypseManEgg",TextColor3=Color3.new(1,1,1),TextScaled=true,TextSize=20,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=0.5,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="pName",Parent = Pf3})
	local Pf5 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.76470595598221,0,0),BackgroundTransparency=0,BorderColor3=Color3.new(0,0,0),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.10000000149012,0,0.89999997615814,0),Rotation=0,Selectable=false,Size=UDim2.new(0.80000001192093,0,0.10000000149012,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Bar",Parent = Pf3})
	local Pf6 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0,0.76470595598221,0),BackgroundTransparency=0,BorderColor3=Color3.new(0,0,0),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="RealBar",Parent = Pf5})
	local Pf7 = CreateInstance("BillboardGui",{Active=true,AlwaysOnTop=true,Enabled=true,ExtentsOffset=Vector3.new(0,-0.5,0),Size=UDim2.new(6,0,6,0),SizeOffset=Vector2.new(0,0),StudsOffset=Vector3.new(0,0,0),Name="Hitbox",Parent = Pf})
	local Pf8 = CreateInstance("TextButton",{Font=3,FontSize=5,Text="",TextColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=true,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="TextButton",Parent = Pf7})
	local Pf9 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=0,BorderColor3=Color3.new(0,0,0),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Border",Parent = Pf8})
	local Pf10 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=0,BorderColor3=Color3.new(0,0,0),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-2,0,0),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,0),SizeConstraint=0,Visible=true,ZIndex=1,Name="Border",Parent = Pf8})
	local Pf11 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=0,BorderColor3=Color3.new(0,0,0),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,2),SizeConstraint=0,Visible=true,ZIndex=1,Name="Border",Parent = Pf8})
	local Pf12 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=0,BorderColor3=Color3.new(0,0,0),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,1,-2),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,2),SizeConstraint=0,Visible=true,ZIndex=1,Name="Border",Parent = Pf8})
	local Pf13 = CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name="GA",Parent = Pf})
	local Pf14 = CreateInstance("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=true,Position=UDim2.new(0,50,0,100),Rotation=0,Selectable=false,Size=UDim2.new(0,150,0,125),SizeConstraint=0,Visible=true,ZIndex=2,Name="Holder",Parent = Pf13})
	local Pf15 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Pf14})
	local Pf16 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Pf15})
	local Pf17 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Pf15})
	local Pf18 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Pf15})
	local Pf19 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Pf15})
	local Pf20 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="Ghost Aim",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="TitleBar",Parent = Pf14})
	local Pf21 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-30,0,35),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="LineTog",Parent = Pf14})
	local Pf22 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Lines:",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(-5.5,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Note",Parent = Pf21})
	local Pf23 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="X",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-30,0,65),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="BoxTog",Parent = Pf14})
	local Pf24 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Aimbot:",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(-5.5,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Note",Parent = Pf23})
	local Pf25 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="X",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-30,0,95),Rotation=0,Selectable=true,Size=UDim2.new(0,20,0,20),SizeConstraint=0,Visible=true,ZIndex=2,Name="HSTog",Parent = Pf14})
	local Pf26 = CreateInstance("TextLabel",{Font=4,FontSize=6,Text="Headshot:",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=0,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(-5.5,0,0,20),SizeConstraint=0,Visible=true,ZIndex=3,Name="Note",Parent = Pf25})
	return Pf
end
	
	--//PHANTOM FORCES
local Guis = createPf()
local Gui = Guis.GA
local Mouse = game.Players.LocalPlayer:GetMouse()
local input = {}
local Box = {}
local Settings = {
	["Aimbot"] = true,
	["Lines"] = false,
	["Headshots"] = true
}
local reset = false
local ESP = {}

Gui.Parent = game.CoreGui

Connect = function(Plr)
	spawn(function()
		local Over, On
		local c = 0
		for _, Gui in pairs(Guis:GetChildren()) do
			c = c + 1
			if c == 1 then
				Over = Gui:Clone()
			elseif c == 2 then
				On = Gui:Clone()
				break
			end
		end
		
		Over.Parent = game.CoreGui
		Over.Adornee = Plr.Character.Head
		On.Parent = game.CoreGui
		On.Adornee = Plr.Character.Torso
		
		local Line = Instance.new("SelectionPartLasso", game.Workspace)
		Line.Humanoid = game.Players.LocalPlayer.Character.Humanoid
		Line.Part = Plr.Character.Torso

		ESP[Plr.Name] = {Plr, {
			["Overhead"] = Over,
			["Hitbox"] = On,
			["Lasso"] = Line
		}}
	end)
end

GetCol = function(Plr, Chams)
	local LPChar = game.Players.LocalPlayer.Character
	local PlrChar = Plr.Character
	
	PlrChar:WaitForChild("Head")
	
	local Ray = Ray.new(LPChar.Head.Position, PlrChar.Head.Position)
	local Hit = game.Workspace:FindPartOnRayWithIgnoreList(Ray, {LPChar, PlrChar})
	
	if Plr.TeamColor ~= game.Players.LocalPlayer.TeamColor then
		if Hit and Chams then	
			return BrickColor.new("Bright violet").Color
		else	
			return BrickColor.new("Bright red").Color
		end
	elseif Plr.TeamColor == game.Players.LocalPlayer.TeamColor then
		return BrickColor.new("Bright green").Color
	end
end

spawn(function()
	while wait() do
		if reset == true then
			for pName, pData in pairs(ESP) do
				for i,v in pairs(pData[2]) do
					v:Destroy()
				end
			end
			for i = 1, #input do
				input[i]:disconnect()
			end
			break
		end
		for pName, pData in pairs(ESP) do
			spawn(function()
				if game.Players:findFirstChild(pName) then
					if game.Workspace:findFirstChild(pName) then
						local Plr = pData[1]
						local Over = pData[2]["Overhead"]
						local On = pData[2]["Hitbox"]
						local Line = pData[2]["Lasso"]
						
						local Frame = Over:WaitForChild("Frame")
						Frame.pName.Text = Plr.Name
						Frame.pName.TextColor3 = GetCol(Plr, true)
						
						local HitBox = On:WaitForChild("TextButton")
						--[[HitBox.MouseEnter:connect(function()
							print("mouse hover")
							HitBox.BackgroundColor3 = BrickColor.new("Bright red").Color
						end)
						HitBox.MouseLeave:connect(function()
							print("mouse leave")
							HitBox.BackgroundColor3 = Color3.new(255/255, 255/255, 255/255)
						end)]]
						Line.Color3 = GetCol(Plr, false)
						if Plr.TeamColor ~= game.Players.LocalPlayer.TeamColor and Settings.Aimbot then
							HitBox.Visible = true
						else
							HitBox.Visible = false
						end
						if Settings.Lines then
							Line.Visible = true
						else
							Line.Visible = false
						end
						if not input[Plr.Name .. "Down"] or not input[Plr.Name .. "Up"] then
							input[Plr.Name .. "Down"] = HitBox.MouseButton1Down:connect(function()
								--local Weld = Instance.new("Weld", game.Players.LocalPlayer.Character)
								if Box[Plr.Name] then
									Box[Plr.Name]:Destroy()
								end
								Box[Plr.Name] = Instance.new("Part", Plr.Character)
								Box[Plr.Name].Size = Vector3.new(2, 2, 1)
								Box[Plr.Name].CFrame = Mouse.hit
								Box[Plr.Name].Anchored = true
								Box[Plr.Name].Transparency = 1
								Box[Plr.Name].CanCollide = false
								Box[Plr.Name].Name = (Settings.Headshots and "Head" or "Torso")
								spawn(function()
									wait(3)
									if Box[Plr.Name] then
										Box[Plr.Name]:Destroy()
									end
								end)
							end)
							input[Plr.Name .. "Up"] = HitBox.MouseButton1Up:connect(function()
								if Box[Plr.Name] then
									Box[Plr.Name]:Destroy()
								end
							end)
						end
					end
				end
			end)
		end
	end
end) 

for _, Plr in pairs(game.Players:GetChildren()) do
	if Plr ~= game.Players.LocalPlayer then
		spawn(function()
			game.Workspace:WaitForChild(Plr.Name)
			Connect(Plr)
		end)
	end
end

input[#input + 1] = game.Players.ChildAdded:connect(function(Plr)
	spawn(function()
		Connect(Plr)
	end)
end)

input[#input + 1] = game.Players.ChildRemoved:connect(function(Plr)
	spawn(function()
		for pName, pData in pairs(ESP) do
			if pName == Plr.Name then
				for i,v in pairs(pData[2]) do
					v:Destroy()
				end
			end
		end
	end)
end)

input[#input + 1] = Gui.Holder.LineTog.MouseButton1Click:connect(function()
	Gui.Holder.LineTog.Text = (Gui.Holder.LineTog.Text == "X" and "" or "X")
	Settings.Lines = (Gui.Holder.LineTog.Text == "X" and true or false)
end)

input[#input + 1] = Gui.Holder.BoxTog.MouseButton1Click:connect(function()
	Gui.Holder.BoxTog.Text = (Gui.Holder.BoxTog.Text == "X" and "" or "X")
	Settings.Aimbot = (Gui.Holder.BoxTog.Text == "X" and true or false)
end)

input[#input + 1] = Gui.Holder.HSTog.MouseButton1Click:connect(function()
	Gui.Holder.HSTog.Text = (Gui.Holder.HSTog.Text == "X" and "" or "X")
	Settings.Headshots = (Gui.Holder.HSTog.Text == "X" and true or false)
end)

_G.r = function()
	reset = true
	print("esp: " .. tostring(not reset))
end
end

function Tank()
local function createTank()
	local Tank = CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name="GameGui",})
	local Tank2 = CreateInstance("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=true,Position=UDim2.new(1,-201,0.5,0),Rotation=0,Selectable=false,Size=UDim2.new(0,200,0,45),SizeConstraint=0,Visible=true,ZIndex=2,Name="Holder",Parent = Tank})
	local Tank3 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Tank2})
	local Tank4 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Tank3})
	local Tank5 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Tank3})
	local Tank6 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Tank3})
	local Tank7 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Tank3})
	local Tank8 = CreateInstance("TextButton",{Font=4,FontSize=7,Text="0P MY 74NK",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=0,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,10),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="D017BR0",Parent = Tank2})
	return Tank
end
	
	--Tiny Tanks
local Gui = createTank()
Gui.Parent = game.CoreGui

Gui.Holder.D017BR0.MouseButton1Click:connect(function()
	local holder = game.Workspace.Tanks["Tank-" .. game.Players.LocalPlayer.Name].Settings
	--holder.Parent.AvailableAmmo.AoE.Value = 100000000
	local holder2 = holder:Clone()
	holder2.Parent = game.ReplicatedFirst
	holder2.ReloadTime.Value = 0
	holder2.ConsecutiveReloadTime.Value = 0
	holder2.MaxLoadedSpecial.Value = 10000000
	holder2.BulletsPerShot.Value = 1
	--holder2.AbilityCoolDownProgress.Value = 0
	--holder2.AbilityCoolDown.Value = 0
	holder2.MineTransparency.Value = 1
	holder2.RotationSpeed.Value = 360
	holder2.MoveSpeed.Value = 50
	holder2.MaxFireRate.Value = 0.05

	holder:Destroy()
	holder2:Clone().Parent = game.Workspace.Tanks["Tank-" .. game.Players.LocalPlayer.Name]
	holder2:Destroy()
end)
end

function Urbis()
local function createUrbis()
	local Urbis = CreateInstance("ScreenGui",{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name="StartUp",})
	local Urbis2 = CreateInstance("Frame",{Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=true,Position=UDim2.new(0,50,0.5,0),Rotation=0,Selectable=false,Size=UDim2.new(0,200,0,105),SizeConstraint=0,Visible=true,ZIndex=2,Name="Holder",Parent = Urbis})
	local Urbis3 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.88627457618713,0.88627457618713,0.88627457618713),BackgroundTransparency=1,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,1,0),SizeConstraint=0,Visible=true,ZIndex=3,Name="Details",Parent = Urbis2})
	local Urbis4 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Urbis3})
	local Urbis5 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(1,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Urbis3})
	local Urbis6 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,1,-1),Rotation=0,Selectable=false,Size=UDim2.new(1,2,0,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Urbis3})
	local Urbis7 = CreateInstance("Frame",{Style=0,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.61960786581039,0.40000003576279,0.2039215862751),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,-1,0,-1),Rotation=0,Selectable=false,Size=UDim2.new(0,2,1,2),SizeConstraint=0,Visible=true,ZIndex=4,Name="Border",Parent = Urbis3})
	local Urbis8 = CreateInstance("TextButton",{Font=4,FontSize=6,Text="Set Cash",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=true,TextXAlignment=2,TextYAlignment=1,AutoButtonColor=true,Modal=false,Selected=false,Style=0,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,70),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="GiveCash",Parent = Urbis2})
	local Urbis9 = CreateInstance("TextLabel",{Font=4,FontSize=7,Text="Urbis - Money Giver",TextColor3=Color3.new(0.48627454042435,0.48627454042435,0.48627454042435),TextScaled=false,TextSize=24,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=false,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.68627452850342,0.68627452850342,0.68627452850342),BackgroundTransparency=0,BorderColor3=Color3.new(0.10588236153126,0.16470588743687,0.20784315466881),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,0,0,0),Rotation=0,Selectable=false,Size=UDim2.new(1,0,0,25),SizeConstraint=0,Visible=true,ZIndex=3,Name="TitleBar",Parent = Urbis2})
	local Urbis10 = CreateInstance("TextBox",{ClearTextOnFocus=true,Font=4,FontSize=6,MultiLine=false,Text="",TextColor3=Color3.new(0.61568629741669,0.61568629741669,0.61568629741669),TextScaled=false,TextSize=18,TextStrokeColor3=Color3.new(0,0,0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=2,TextYAlignment=1,Active=true,AnchorPoint=Vector2.new(0,0),BackgroundColor3=Color3.new(0.95294123888016,0.95294123888016,0.95294123888016),BackgroundTransparency=0,BorderColor3=Color3.new(0.70980393886566,0.70980393886566,0.70980393886566),BorderSizePixel=3,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0,10,0,35),Rotation=0,Selectable=true,Size=UDim2.new(1,-20,0,25),SizeConstraint=0,Visible=true,ZIndex=2,Name="CashBox",Parent = Urbis2})
	return Urbis
end
	
	--//URBIS
local Gui = createUrbis()
Gui.Parent = game.CoreGui

Gui.GiveCash.MouseButton1Click:connect(function()
	game.Workspace.Remote.PlaceRouletteBet:FireServer(Gui.CashBox.Text, {24})
end)
end

-- END GAMES

local games = {
	[13822889] = Lumber,
	[237590657] = Apoc,
	[237590761] = Apoc,
	[115390858] = Pokemon,
	[428114181] = Azure,
	[156220906] = Boat,
	[292439477] = Pf,
	[204990346] = Tank,
	[169162165] = Urbis
}

function unsupported()
	local txt = "THIS PLACE DOES NOT HAVE A GUI"
local crash = false
local ConvertText = function()
	local sep = {}
	local tmp = {}
	for w in txt:gmatch("%w+") do
		table.insert(sep, w)
	end 
	for i = 1, #sep do
		for l in sep[i]:gmatch("%a") do
			table.insert(tmp, l)
		end
		sep[i] = table.concat(tmp, " ")
		tmp = {}
	end
	txt = table.concat(sep, "	  ")
end
ConvertText()

local Gui = Instance.new("ScreenGui", game.CoreGui)
local TxtBox = Instance.new("TextLabel", Gui)
TxtBox.Text = txt
TxtBox.Size = UDim2.new(1, 0, 1, 0)
TxtBox.FontSize = "Size42"
TxtBox.Font = "SourceSansBold"
TxtBox.ZIndex = 10

spawn(function()
	wait(1)
	if crash then
		while true do end
	else
		wait(3)
		Gui:Destroy()
	end
end)
end

function ConfirmAuth()
	local tab = {
		["ID"] = game.Players.LocalPlayer.userId, 
		["PW"] = "", 
		["FILE"] = "Game Gui", 
		["CODE"] = "", 
		["GID"] = game.PlaceId
	}
	local meta = nil
	if getrawmetatable then
		meta = getrawmetatable(Instance.new('RemoteEvent'))
		if _G.Exploit == "RC7" then
			fullaccess(meta)
		elseif _G.Exploit == "Protosmasher" then
			changereadonly(meta, false)
		end
		setfenv(1,getfenv(meta.__newindex))
	end
	local loadstring = getfenv().loadstring
	local s, e = games[game.PlaceId] or unsupported
	if s then
		spawn(function()
			s()
		end)
	else
		error(e)
	end
end

Login = function(Pass)
	return ConfirmAuth
	--[[
	local t = {
		["ID"] = game.Players.LocalPlayer.userId, 
		["PW"] = Pass, 
		["SCRIPT"] = "Game Gui",
		["KEY"] = sGuis.Buttons.BetaBox.Text
	}
	return game:HttpPost("http://www.pmehost.pw/HUB/Auth/InitAuth.php", json_encode(t), true)
	--]]
end

Connections["Function1"] = LoginBtn.MouseButton1Click:connect(function()
	if ScriptName ~= "" and not IsMsg then
		Attempts = Attempts + 1
		local SF = Login(PWBox.Text) 
		if SF == "Password does not exist" then
			if MaxAttempts - Attempts == 0 then
				MSG("Maximum attempts exceeded", Color3.new(181/255, 0/255, 0/255), "while true do end")
			else
				MSG("Failed to login, " .. tostring(MaxAttempts - Attempts) .. " attempts remain", Color3.new(181/255, 0/255, 0/255))
			end
		else
			MSG("Login succeeded. Loading...", Color3.new(34/255, 130/255, 37/255), SF)
			EndScript(false)
		end
	else
		MSG("No script chosen", Color3.new(181/255, 0/255, 0/255))
	end
end)

Connections["Function2"] = CancelBtn.MouseButton1Click:connect(function()
	EndScript(true)
end)

Connections["Function3"] = game.Players.LocalPlayer.Changed:connect(function(Prop)
	if Prop == "Name" or Prop == "UserId" or Prop == "userId" or Prop == "CharacterAppearance" then
		while true do end
	end
end)

check = function()
	local plr = game.Players.LocalPlayer
	local uid = json_decode(game:HttpGet("http://api.roblox.com/Users/" .. plr.userId, true))
	local name = json_decode(game:HttpGet("http://api.roblox.com/users/get-by-username?username=" .. plr.Name, true))
	local curr = game:HttpGet("http://assetgame.roblox.com/Game/GetCurrentUser.ashx")
	--if not game.Players.LocalPlayer.CharacterAppearance:find(tostring(game.Players.LocalPlayer.userId)) then
	if game.Players.LocalPlayer.CharacterAppearance:sub(game.Players.LocalPlayer.CharacterAppearance:len() - tostring(game.Players.LocalPlayer.userId):len() + 1) ~= tostring(game.Players.LocalPlayer.userId) then
		return true
	end
	if uid.Id ~= name.Id or uid.Username ~= name.Username then
		return true
	end
	if uid.Username ~= plr.Name or name.Id ~= plr.userId then
		return true
	end
	--if curr ~= tostring(plr.userId) then
	--	return true
	--end
	--if uid.IsOnline == false or name.IsOnline == false then
	--	return true
	--end
	return false
end

Init()
--// SaviOS by SavageMunkey

local Host = game:service'Players'.LocalPlayer
local PlayerMouse = Host:GetMouse()
local Character = Host.Character

pcall(function()
	Character.Humanoid['SaviOS'..Host.Name].Disabled=true
	Character.Humanoid['SaviOS'..Host.Name]:Destroy()
end)
script.Name='SaviOS'..Host.Name

local lrs = game:service'RunService'.RenderStepped
local ud,c3 = UDim2.new,Color3.new

local OS
OS = {
	Backgrounds={263065080,122603145,510593355,167312453,119945204,38397690,167312682,192050536,152026398,167312652,120582545,167493039,274050234,454292754,466900315,177053058,229293848,122646263,159102803,321434238,120214481,120480107,129805827,251350099,134993390,294851220,91427420,159103087,161729354,451983167,111563465,224033486,159103552,490565976,419023708,159111488,254890271,72090809,148038665,201380429,235907960,118966085,184001465,158549839,135040161,569012987,124111954,617785055,127976057,157765107,172813012,261956734,229544221,381428334,141204418,130675970,114611763,569627808,165460147,165460277,123128917,65246335,113000488,210624979,86219936,542893768,485873381,133109970,147298379,147297851,133461415,248254225,542822127,536363798,167312652,542895503,89552732,65151650,101805028,103684980,385601310,57939071,304922993,13511519,473575489,256418140,136004272,46076174,497195310,28143702,158772801,557860938,483527125,125134380,129296064,436986440,331063936,162704842,108531974,156021502,546688542,192509200,193859832,78289792,339807971,156513166,305407040,363144648,60043055,621825797,621828236,179089950,501279669,403674379,275918945,247421728,126655771,478203228,25719408,50358414,7460070,415408253,91215756,85243064,135112694,161131570,684101235,467373053,65891746,24960278,318592132,424415675,17266396,64198567,230444445,156269405,179089950,248285466,202899851,156314932,151133945,514648696,};
	Properties = {'AllowClientInsertModels','BrickColor','Color','ShowDevelopmentGui','ResetPlayerGuiOnSpawn','Parent','CustomPhysicalProperties','WaterColor','WaterTransparency','WaterWaveSize','WaterWaveSpeed','AllowThirdPartySales','FilteringEnabled','StreamingEnabled','Gravity','FallenPartsDestroyHeight','Archivable','AbsolutePosition','AbsoluteSize','AccountAge','AccountAgeReplicate','Active','Adornee','AllowAmbientOcclusion','AllowTeamChangeOnTouch','AluminumQuality','AlwaysOnTop','Ambient','AmbientReverb','Anchored','Angularvelocity','AnimationId','Archivable','AreHingesDetected','AttachmentForward','AttachmentPoint','AttachmentPos','AttachmentRight','AttachmentUp','AutoAssignable','AutoButtonColor','AutoColorCharacters','AvailablePhysicalMemory','Axes','BackgroundColor','BackgroundColor3','BackgroundTransparency','BackSurface','BaseTextureId','BaseUrl','Bevel','Roundness','BinType','BlastPressure','BlastRadius','C0','C1','HeadColor','LeftArmColor','RightArmColor','LeftLegColor','RightLegColor','HumanoidRootPartColor','BodyColor','BodyPart','BorderColor','BorderColor3','BorderSizePixel','BottomSurface','BrickColor','Brightness','Browsable','BubbleChat','BubbleChatLifetime','BubbleChatMaxBubbles','Bulge','Button1DownConnectionCount','Button1UpConnectionCount','Button2DownConnectionCount','Button2UpConnectionCount','C0','C1','CameraMode','CameraSubject','CameraType','CanBeDropped','CanCollide','CartoonFactor','CastShadows','CelestialBodiesShown','CFrame','Cframe','Character','CharacterAppearance','CharacterAutoLoads','ChatScrollLength','ClassicChat','ClassName','ClearTextOnFocus','ClipsDescendants','CollisionSoundEnabled','CollisionSoundVolume','Color','ColorShift_Top','ColorShift_Bottom','Bottom','Top','ConstrainedValue','Contro'..'llingHumanoid','ControlMode','ConversationDistance','CoordinateFrame','CorrodedMetalQuality','CPU','CpuCount','CpuSpeed','CreatorId','CreatorType','CurrentAngle','CurrentCamera','CycleOffset','D','DataCap','DataComplexity','DataComplexityLimit','DataCost','DataReady','Deprecated','DeselectedConnectionCount','DesiredAngle','DiamondPlateQuality','Disabled','DistanceFactor','DistributedGameTime','DopplerScale','Draggable','DraggingV1','Duration','EditorFont','EditorFontSize','EditorTabWidth','ElapsedTime','Elasticity','Enabled','ExplosionType','ExtentsOffset','F0','F1','F2','F3','Face','FaceId','Faces','FieldOfView','Focus','FogColor','FogEnd','FogStart','Font','FontSize','Force','FormFactor','Friction','From','FrontSurface','GearGenreSetting','Genre','GeographicLatitude','GfxCard', 'GlobalShadows','Graphic','GrassQuality','Grip','GripForward','GripPos','GripRight','GripUp','Guest','HeadsUpDisplay','Health','Heat','Hit','Humanoid','IceQuality','Icon','IdleConnectionCount','Image','InitialPrompt','InOut','InUse','IsPaused','IsPlaying','JobId','Jump','KeyDownConnectionCount','KeyUpConnectionCount','LeftLeg','LeftRight','LeftSurface','LinkedSource','LocalPlayer','Location','Locked','LODX','LODY','Looped','Material','MaxActivationDistance','MaxCollisionSounds','MaxExtents','MaxForce','MaxHealth','MaxItems','MaxPlayers','MaxSpeed','MaxThrust','MaxTorque','MaxValue','MaxVelocity','MembershipType','MembershipTypeReplicate','MeshId','MeshType','MinValue','Modal','MouseButton1ClickConnectionCount','MouseButton1DownConnectionCount','MouseButton1UpConnectionCount','MouseButton2ClickConnectionCount','MouseButton2DownConnectionCount','MouseButton2UpConnectionCount','MouseDelta','MouseDragConnectionCount','MouseEnterConnectionCount','MouseHit','MouseLeaveConnectionCount','MouseLock','MouseMovedConnectionCount','MouseTarget','MouseTargetFilter','MouseTargetSurface','MoveConnectionCount','MoveState','MultiLine','Name','NameOcclusion','NetworkOw'..'ner','Neutral','NumPlayers','Offset','Opacity','Origin','OsPlatform','OsVer','OutdoorAmbient','OverlayTextureId','P','PantsTemplate','ParamA','ParamB','Parent','PrimaryPart','Part','Part0','Part1','Pitch','PixelShaderModel','PlaceId','PlasticQuality','PlatformStand','PlayCount','PlayerToHideFrom','PlayOnRemove','Point','Port','Position','Preliminary','PrimaryPart','PrivateWorkingSetBytes','Purpose','RAM','Reflectance','ReplicatedSelectedConnectionCount','ResizeableFaces','ResizeIncrement','Resolution','ResponseDialog','RightLeg','RightSurface','RiseVelocity','RobloxLocked','RobloxVersion','RolloffScale','RotVelocity','Scale','Score','ScriptsDisabled','SecondaryColor','Selected','ShadowColor','Shape','Shiny','ShirtTemplate','ShowDeprecatedObjects','ShowDevelopmentGui','ShowPreliminaryObjects','Sides','Sit','Size','SizeConstraint','SizeOffset','SkinColor','SkyboxBk','SkyboxDn','SkyboxFt','SkyboxLf','SkyboxRt','SkyboxUp','SlateQuality','SoundId','Source','SparkleColor','Specular','StarCount','Steer','StickyWheels','StudsBetweenTextures','StudsOffset','StudsPerTileU','StudsPerTileV','Style','Summary','SuperSa'..'feChatReplicate','Surface','Surface0','Surface1','SurfaceInput','Target','TargetFilter','TargetOffset','TargetPoint','TargetRadius','TargetSurface','TeamColor','Terrain','Text','TextBounds','TextColor','TextColor3','TextFits','TextScaled','TextStrokeColor3','TextStrokeTransparency','TextTransparency','Texture','TextureId','TextureSize','TextWrap','TextWrapped','TextXAlignment','TextYAlignment','Throttle','ThrustD','ThrustP','Ticket','Time','TimeOfDay','To','Tone','ToolTip','TopBottom','TopSurface','Torque','HumanoidRootPart','Transparency','TrussDetail','TurnD','TurnP','TurnSpeed','UnitRay','UserDialog','UserId','Value','Version','VertexColor','VideoCaptureEnabled','VideoMemory','VideoQuality','ViewSizeX','ViewSizeY','Visible','Volume','WalkDirection','WalkSpeed','WalkToPart','WalkToPoint','WheelBackwardConnectionCount','WheelForwardConnectionCount','WindowSize','WireRadius','WoodQuality','X','Y','Z'};
	DecalAssets={200182847};
	--//49,51,51,55,115,97,118
	Sounds = {
		319758951,485859421,191035676,142312040,165065112,166471137,208240682,226788368,193399717,
		274427825,155949200,209864226,211626338,232560219,172427188,180115728,170968526,
		148492408,177956804,132399469,218530627,234627720,182411115,188712851,176454530,
		685204898,736225554,267915404,180795185,263998927,181428192,266427268,215974232,
		177297354,248794208,262158959,282890395,252612142,252614631,252613867,203275374,
		244763119,169898604,173060483,181065299,294185225,657230380,574818336,
	};
	RecentlyUsedPrograms={};
	UIs={};
	Logins={
		{'SavageMunkey','abcd12',Color3.new(.1,.1,.1),Color3.new(1,1,1),497195310};--167312453};
		{'Artiecsal','sookithearth',c3(0,0,0),c3(1,1,1),122646263},
		{'Luke_Ames','xXfatphonesXx',c3(.5,0,0),c3(1,1,1),621828236},
		{'Lord_Azure','AzureIsGay',c3(.3,0,0),c3(1,1,1),215152878},
	};
	Administrators={
		'SavageMunkey',
		'Aeodile',
	};
	Effects={};
	Functions={};
	Assets={};
	Apps={
		Qeued={};
		Generated={};
		Open={};
	};
	Settings={
		Fonts = {
			Header = 'Code',
			Sub_Header = 'Highway',
		}; 
	};
};

Functions = OS.Functions
Effects = OS.Effects

OS.GenCode = math.random()*9e5

local CurrentPlayerData=nil
local Official=true

function Functions:ConvertColor3(r,g,b)
	return c3(1-(1/r),1-(10/g),1-(10/b)) --//derped
end

function Functions:ReturnObjectProperties(Object)
	assert(pcall(function() 
		assert(game.IsA(Object,'Instance')) 
	end),'Should be ROBLOX instance')
	local Returns = {}
	for _, Value in next, OS.Properties do
		if pcall(function() return Object[Value] end) and (type(Object[Value]) ~= 'userdata' or not Object:FindFirstChild(Value)) then
			Returns[Value] = Object[Value]
		end
	end
	 return Returns
end;

--print(Functions:ConvertColor3(170, 0, 255))

function Functions:GrabHostData()
	local PlayerData=nil
	local Found=0
	for Index, Data in next, OS.Logins do
		if Data[1] == tostring(Host) then
			PlayerData=Data
			Found=Found+1
		end
	end
	if PlayerData then
		CurrentPlayerData=PlayerData
	else
		Official=false
		CurrentPlayerData={Host.Name,Host.Name:lower():sub(0,5)..'12'..math.random(-50,50),c3(.25,.25,.25),c3(1,1,1),OS.Backgrounds[math.random(1,#OS.Backgrounds)]};
		script:Destroy()
	end
	if Found > 1 then
		error('Found more than one('..Found..') data tables for '..Host.Name,2)
	end
end

Functions:GrabHostData()

table.foreach(CurrentPlayerData,print)

function Functions:GetPlayerImg(User)
    local ID = 'http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username='..tostring(User)
	 return ID
end

ypcall(function()
	--workspace['mon-mon']:Destroy()
end)

local Monitor, G, MainFrame
function Functions:MakeMonitor()
	pcall(function() workspace['mon-mon'..Host.Name]:Destroy() end)
	local sc=Instance.new('Script', workspace)
	sc.Name='mon-mon'..Host.Name
	OS.Assets.FScript=sc
	Monitor = Instance.new('Part', sc)
	Monitor.Size = Vector3.new(24,14,.1)
	Monitor.Anchored = true
	Monitor.Locked=true
	Monitor.Transparency=0
	Monitor.Color=Color3.new(1,1,1)
	Monitor.Material='Neon'
	Monitor.Name='mon-mon'
	Instance.new('SurfaceLight',Monitor).Face='Back'
	Monitor.CanCollide = false
	Monitor.TopSurface,Monitor.BottomSurface=0,0
	local Flat = Instance.new('BlockMesh', Monitor)
	Flat.Scale = Vector3.new(1,1,0)
	spawn(function()
		for i = 0,1.025,.025 do
			--Monitor.Transparency = 1.3-i
			lrs:wait()
		end
	end)
end

function Functions:MakeNewUi(Type)
	local Ui = Instance.new(Type)
	
	local function TypeIsA(Table, Goal)
		for i,v in next, Table do
			if v:lower()==Type:lower() then
				Goal(Ui)
			end
		end
	end
	
	Ui.ClipsDescendants = true
	Ui.Size = ud(1,0,1,0)
	Ui.BackgroundTransparency = 1
	TypeIsA({'TextButton'}, function(tUi)
		Ui.AutoButtonColor = false
	end)
	Ui.BackgroundColor3 = CurrentPlayerData[3]
	Ui.BorderSizePixel = 0
	TypeIsA({'ImageLabel','ImageButton'}, function(tUi)
		
	end)
	TypeIsA({'TextButton','TextLabel','TextBox'}, function(tUi)
		tUi.TextColor3 = CurrentPlayerData[4]
		tUi.Font = OS.Settings.Fonts.Header
		tUi.Text=''
		tUi.FontSize = Enum.FontSize.Size18
	end)
	delay(.1,function()
		OS.UIs[Ui.Name]={Ui,true}
		local oUi=Ui
		spawn(function()
			repeat lrs:wait() until Ui.Parent == nil 
			OS.UIs[oUi.Name]={nil,false}
		end)
	end)
	Ui.ZIndex=7
	return Ui
end

function Functions:Center(Ui)
	local co={Ui.Size.X.Offset/2,
				Ui.Size.Y.Offset/2};
	return ud(.5,-co[1],.5,-co[2])
end

function Functions:CenterOffset(Ui, Offset)
	local co={Ui.Size.X.Scale,
				Ui.Size.X.Offset/2,
				  Ui.Size.Y.Scale,
				    Ui.Size.Y.Offset/2
	};
	return ud(.5+Offset.X.Scale,-co[2]+Offset.X.Offset,.5+Offset.Y.Scale,-co[4]+Offset.Y.Offset)
end

local TypeDebs={};
function Effects:Type(Ui, Text, Type, Delay)
	TypeDebs[Ui]=false
	if Type == 'In' then
		local Continue = true
		for i = 0,#Text do
			if TypeDebs[Ui] then
				Continue = false
				return
			end
			if not Continue then 
				return
			end
			Ui.Text = Text:sub(0,i)..'|'
			wait(Delay)
		end
		Ui.Text = Text
	elseif Type == 'Out' then
		local Continue = true
		for i = 0,#Text do
			if TypeDebs[Ui] then
				Continue = false
				return
			end
			if not Continue then 
				return
			end
			Ui.Text = Text:sub(0,1-i)..'|'
			wait(Delay)
		end
		Ui.Text = Text
	else
		error'Please enter a TransitionType (Out, In)'
	end
end

function Functions:Sound(Id ,Rmv)
	local snd=Instance.new('Sound', Character:WaitForChild'Head' or Monitor or workspace)
	if Rmv then
		for index,o in next, snd.Parent:children() do
			if o:IsA'Sound' and o ~= snd then
				o:Stop()
				o:Destroy()
			end
		end
	end
	snd.EmitterSize=20
	snd.SoundId=Functions:Asset(Id)
	snd.Volume=.6
	delay(8,function()
		if not snd.Looped and snd.IsPlaying==false then
			snd:Stop()
			snd:Destroy()
		end
	end)
	return snd
end

function Effects:Underline(Ui, YOffset, XThickness, YThickness, Color, Fade)
	local Label = Functions:MakeNewUi('TextLabel')
	Label.BackgroundColor3 = Color
	Label.BackgroundTransparency=.2
	Label.Size = ud(0,0,0,YThickness)
	Label.Position = Functions:CenterOffset(Label, ud(0,0,0,YOffset))
	Label.Parent = Ui
	Label.ZIndex = 9
	if Fade then
		Label.BackgroundTransparency = 1
		delay(.5,function()
			Label:TweenSizeAndPosition(ud(0,XThickness,0,YThickness),Functions:CenterOffset(Label,ud(0,-XThickness/2,0,YOffset)),'Out','Back',1,true)
		end)
		for i = 0,1.025,.025 do
			Label.BackgroundTransparency = (1.2 - i)
			lrs:wait()
		end
	else
		Label.Size = ud(0,XThickness,0,YThickness)
		Label.Position = Functions:CenterOffset(Label, ud(0,0,0,YOffset))
	end
	return Label
end

function Functions:Asset(Id)
	return 'rbxassetid://'..Id
end

function Functions:PlayerImage(User)
    return 'http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username='..tostring(User)
end

function Functions:LoginScreenGui(Size,ltbl,Fade)
	if Host.PlayerGui:FindFirstChild'nomnompw' then
	end
	local limit=16
	local SGui = Instance.new('ScreenGui', Host.PlayerGui)
	SGui.Name='nomnompw'
	local Box = Functions:MakeNewUi('TextBox')
	Box.ClearTextOnFocus=true
	Box.TextColor3 = CurrentPlayerData[3]
	Box.TextStrokeTransparency=.9
	Box.Size=Size
	Box.Text = 'Enter your Password'
	Box.Position=Functions:Center(Box)
	Box.BackgroundTransparency=1
	Box.TextStrokeColor3=CurrentPlayerData[3]
	Box.Parent=SGui
	Box.BackgroundColor3 = CurrentPlayerData[4]
	local enabled=true
	if Fade then
		Box.Position = Functions:CenterOffset(Box,ud(0,0,-.4,0))
		for i = 0,1,.05 do
			Box.BackgroundTransparency=1-i
			lrs:wait()
		end
		Box:CaptureFocus()
	end
	local ev
	ev=Box.Focused:connect(function()
		--ev:disconnect()
		Box.ClearTextOnFocus=false
	end)
	local ev2
	local lt=''
	ev2=Box.FocusLost:connect(function()
		if #Box.Text < 1 or Box.Text == 'Enter your Password' then
			Box.Text='Enter your Password'
			Box.ClearTextOnFocus=true
		end
		if Box.Text==CurrentPlayerData[2] then
			ev:disconnect()
			ev2:disconnect()
			Box.Active=false
			Box:TweenPosition(Functions:CenterOffset(Box,ud(0,0,-.55,0)),'Out','Linear',.5,true)
			Box.TextStrokeTransparency=1
			for i = 0,1,.05 do
				Box.BackgroundTransparency=i
				Box.TextTransparency=i
				lrs:wait()
			end
			lt=Box.Text
			SGui:Destroy()
		end
	end)
	Box.BackgroundTransparency=0
	if ltbl.loop then
		while SGui.Parent and enabled do
			lt=Box.Text
			if #Box.Text>limit and Box.Text ~= 'Enter your Password' then
				Box:ReleaseFocus()
				Box.Active=false
				local bft=Box.Text
				Box.Text='Password '..limit..' character limit.'
				wait(2)
				Box.Text=bft:sub(0,limit)
				Box.Active=true
				Box:CaptureFocus()
			end
			if #Box.Text>1 and Box.Text ~= 'Enter your Password' then
				local nt=''
				ltbl.ui.Text=nt
				for i = 1,#Box.Text do
					nt=nt..'*'
				end
				ltbl.ui.Text=nt
			elseif #Box.Text==0 then
				if Box.Text ~= 'Enter your Password' then
					Box.Text='Enter your Password'
					ltbl.ui.Text='Enter your Password'
					Box:ReleaseFocus()
					Box.ClearTextOnFocus=true
				end
			end
			lrs:wait()
		end
	end
	return lt
end

function Functions:IfRegistered(Player, Function)
	local Bool = false
	for Index, Data in next, OS.Logins do
		local user=Data[1]
		local pass=Data[2]
		if user == tostring(Player) then
			Bool = true
		end
	end
	Function(Bool)
end

function Functions:CreateProgram(Name, Id, Nick, Description, Click)
	table.insert(OS.Apps.Qeued,{tostring(Name), tonumber(Id), tostring(NickName), tostring(Description), Click})
end;

local Search
function Functions:Search(Parent, Function)
	for Index, Object in next, Parent:children() do
		pcall(function()
			Function(Object)
		end)
		Functions:Search(Object, Function)
	end
end

function Functions:ShowChar()
	OS.Functions:Search(Character, function(Object)
		if (Object:IsA'BasePart' or Object:IsA'Decal') and Object.Name ~='HumanoidRootPart' then
			Object.Transparency = 0
		end
	end)
end

function Functions:HideChar()
	OS.Functions:Search(Character, function(Object)
		if (Object:IsA'BasePart' or Object:IsA'Decal') and Object.Name ~='HumanoidRootPart' then
			Object.Transparency = 1
		end
	end)
end

local Notes={};
Functions:CreateProgram('Notepad++', 43360681, 'N++', 'Notepad for your... "personal" needs?', function(HF,TF,CF)
	local tb = Functions:MakeNewUi('TextButton')
	tb.Parent=CF
	tb.TextWrapped=true
	table.insert(Notes,tb)
	tb.Text = 'Notepad; '..#Notes
	tb.TextColor3=CurrentPlayerData[3]
	tb.BackgroundColor3=CurrentPlayerData[4]
	tb.Font=OS.Settings.Fonts.Sub_Header
	tb.TextStrokeTransparency=.9
	tb.TextStrokeColor3=CurrentPlayerData[3]
	tb.TextXAlignment='Left'
	tb.TextYAlignment='Top'
	local SGui
	tb.MouseButton1Click:connect(function()
		pcall(function()
			SGui:Destroy()
		end)
		if Host.PlayerGui:FindFirstChild'nomnoemnp' then Host.PlayerGui:FindFirstChild'nomnoemnp':Destroy() end
		SGui = Instance.new('ScreenGui', Host.PlayerGui)
		SGui.Name='nomnoemnp'
		local Box = Functions:MakeNewUi('TextBox')
		Box.ClearTextOnFocus=false
		Box.TextColor3 = CurrentPlayerData[3]
		Box.TextStrokeTransparency=.9
		Box.Size=ud(1,0,1,0)
		Box.Position=ud(-1,0,0,0)
		Box.Text = tb.Text
		Box.Visible = false
		Box.TextXAlignment='Left'
		--Box.MultiLine=true
		Box.TextYAlignment='Top'
		Box.BackgroundTransparency=1
		Box.TextStrokeColor3=CurrentPlayerData[3]
		Box.Parent=SGui
		Box.BackgroundColor3 = CurrentPlayerData[4]
		Box:CaptureFocus()
		Box.FocusLost:connect(function()
			SGui:Destroy()
		end)
		local isub = '|'
		local l=false
		spawn(function()
			if tb.Text:sub(#tb.Text,#tb.Text)=='|' then
				tb.Text=tb.Text:sub(1,#tb.Text-1)
			end
			local canc = false
			spawn(function()
				while not canc do
					wait(.6)
					l=not l
					if l == true then
						isub='|'
					else
						isub=''
					end
				end
			end)
			repeat
				tb.Text=Box.Text..isub
				lrs:wait()
			until SGui.Parent ~= Host.PlayerGui
			if l then
				tb.Text=tb.Text:sub(1,#tb.Text-1)
			end
			--print'canc'
			canc=true
			SGui=nil
		end)
	end)
end)
--script.Parent=Host.PlayerGui

Functions:CreateProgram('Calculator', 45545182, 'Calc', 'Math stuff man', function(HF,TF,CF)
	HF.Size = UDim2.new(0,150,0,300)
end)

local osEVENT = game:service'SoundService':FindFirstChild'osEVENT'
if osEVENT==nil then
	osEVENT = Instance.new('RemoteEvent',game:service'SoundService')
	osEVENT.Name='osEVENT'
end

if game.PlaceId == 691043264 then
	Functions:CreateProgram('Lua', 71157241, 'LUA', 'Execute stuff...', function(HF,TF,CF)
		local tb = Functions:MakeNewUi('TextButton')
		tb.Parent=CF
		tb.TextWrapped=true
		tb.Text = ''
		tb.TextColor3=CurrentPlayerData[3]
		tb.BackgroundColor3=CurrentPlayerData[4]
		tb.Font=OS.Settings.Fonts.Sub_Header
		tb.Size=ud(.6,0,.9,0)
		tb.TextXAlignment='Left'
		tb.TextYAlignment='Top'
	
		local run = Functions:MakeNewUi('TextButton')
		run.Parent=CF
		run.Text = 'Run Script'
		run.BackgroundTransparency=0
		run.TextColor3=CurrentPlayerData[4]
		run.BackgroundColor3=CurrentPlayerData[3]
		run.Font=OS.Settings.Fonts.Header
		run.Position=ud(0,0,.95,0)
		run.TextSize=11
		run.Size=ud(.6,0,.05,0)

		local cleartb = Functions:MakeNewUi('TextButton')
		cleartb.Parent=CF
		cleartb.Text = 'Clear Text'
		cleartb.BackgroundTransparency=0
		cleartb.TextColor3=CurrentPlayerData[4]
		cleartb.BackgroundColor3=CurrentPlayerData[3]
		cleartb.Font=OS.Settings.Fonts.Header
		cleartb.Position=ud(0,0,.9,0)
		cleartb.TextSize=11
		cleartb.Size=ud(.6,0,.05,0)

		local ipos = 0
		local timefromlast=0
		local longestx=0
		
		local clear = Functions:MakeNewUi('TextButton')
		clear.Parent=CF
		clear.Text = 'Clear Output'
		clear.BackgroundTransparency=0
		clear.TextColor3=CurrentPlayerData[4]
		clear.BackgroundColor3=CurrentPlayerData[3]
		clear.Font=OS.Settings.Fonts.Header
		clear.Position=ud(.6,0,.95,0)
		clear.TextSize=11
		clear.Size=ud(.4,0,.05,0)
	
		local output = Functions:MakeNewUi('ScrollingFrame')
		output.Parent=CF
		output.BackgroundColor3=CurrentPlayerData[3]
		output.Position=ud(.6,0,0,0)
		output.BackgroundTransparency=0
		output.Size=ud(.4,0,.95,0)

		function op(argz)
			local txt,code,clr = argz[1],argz[2],argz[3]
			clr=clr or Color3.new(1,1,1)
			txt=' > '..txt or 'NO_TEXT'
			--print(txt,code,clr)
			local is = (tostring(code)==tostring(OS.GenCode))
			if is then
				timefromlast=0
				local lbl = Functions:MakeNewUi('TextLabel')
				lbl.Parent=output
				lbl.Position=ud(0,0,0,ipos)
				lbl.TextSize=10
				if #txt > longestx then
					longextx=#txt
				end
				--txt=txt:gsub('\n','')
				lbl.TextColor3 = clr
				lbl.TextWrapped=true
				local count=0
				local notting=true
				lbl.TextXAlignment='Left'
				lbl.Text = txt
				lbl.BackgroundTransparency=1
				lbl.Size=ud(33,0,0,lbl.TextBounds.Y+5)
				ipos=ipos+lbl.TextBounds.Y+2
				spawn(function()
					while notting do
						lrs:wait()
						count=count+1
						local asx=output.AbsoluteSize.X
						local tbx=lbl.TextBounds.X
						--print(tbx,asx)
						if tbx > asx then
							lbl.Text=lbl.Text:sub(1+(asx*(count-1)),asx*count)..'\n'..lbl.Text:sub((asx*count)+1)
						else
							notting=false
						end
					end
				end)
				lbl.Size=ud(1,0,0,lbl.TextBounds.Y+5)
			end
		end

		op({'Hello world!', OS.GenCode, Color3.new(1,1,1)})

		clear.MouseButton1Click:connect(function()
			output:ClearAllChildren()
			ipos=0
			longestx=0
			timefromlast=0
			op({'Cleared output', OS.GenCode, BrickColor.new'Dark green'.Color})
		end)

		cleartb.MouseButton1Click:connect(function()
			tb.Text=''
			pcall(function()
				SGui.Text=''
			end)
		end)

		local oev = osEVENT.OnClientEvent:connect(function(Argz)
			op(Argz)
		end)

		spawn(function()
			local ii=0
			repeat lrs:wait() 
				timefromlast=timefromlast+.05
				ii=Functions:IntegerLerp(ii,ipos,.15) 
				if timefromlast < 5 then
					output.CanvasSize=ud(0,longestx,0,ii)
					output.CanvasPosition=Vector2.new(0,ii)
				end
			until run.Parent ~= CF
			oev:disconnect()
			--print'dis'
		end)
	
		run.MouseButton1Click:connect(function()
			local lscode = [[
				local owner = game:service'Players':WaitForChild(']]..Host.Name..[[')
				local event = game:service'SoundService':WaitForChild'osEVENT'
				local code = ]]..OS.GenCode..[[
				function print(...)
					local Data, Return = {...}, ""
	                for Index,Value in pairs(Data) do
	                	Return = Return .. tostring(Value) .. (Index < #Data and ", " or "")
	                end
	                event:FireClient(owner,{Return,code,Color3.new(1,1,1)})
                end
                function warn(...)
					local Data, Return = {...}, ""
	                for Index,Value in pairs(Data) do
	                	Return = Return .. tostring(Value) .. (Index < #Data and ", " or "")
	                end
	                event:FireClient(owner,{Return,code,Color3.new(1,.5,0)})
                end
                function ferror(...)
					local Data, Return = {...}, ""
	                for Index,Value in pairs(Data) do
	                	Return = Return .. tostring(Value) .. (Index < #Data and ", " or "")
	                end
	                event:FireClient(owner,{Return,code,Color3.new(.8,0,0)})
                end
                delay(20,function()
                	event:FireClient(owner,{'Auto removed script - delay ; 20',code,BrickColor.new'Dark green'.Color})
					script:Destroy()
				end)
				local script = workspace:WaitForChild(']]..tostring(OS.Assets.FScript.Name)..[[')
			]]
			local formattedcode = [[
				pcall(function()
					local Success, Error = pcall(function() 
						]]..tb.Text..[[ 
					end)
					if not Success then
						local err = Error
						err=err:gsub('ScriptBuilderScript','OS.sb')
						err=err:gsub('544','1')
						ferror(err)
						local stacks = debug.traceback()
						stacks=stacks:gsub('ScriptBuilderScript','OS.sb')
						event:FireClient(owner,{stacks,code,BrickColor.new'Bright blue'.Color})
					else
						event:FireClient(owner,{'Ran script',code,BrickColor.new'Bright blue'.Color})
					end
				end)
			]]
			NS(lscode..'\n\n'..formattedcode, workspace)
		end)
		
		local SGui
		tb.MouseButton1Click:connect(function()
			pcall(function()
				SGui:Destroy()
			end)
			if Host.PlayerGui:FindFirstChild'nomnoemnp' then Host.PlayerGui:FindFirstChild'nomnoemnp':Destroy() end
			SGui = Instance.new('ScreenGui', Host.PlayerGui)
			SGui.Name='nomnoemnp'
			local Box = Functions:MakeNewUi('TextBox')
			Box.ClearTextOnFocus=false
			Box.TextColor3 = CurrentPlayerData[3]
			Box.TextStrokeTransparency=.9
			Box.Size=ud(1,0,1,0)
			Box.Position=ud(-1,0,0,0)
			Box.Text = tb.Text
			Box.Visible = false
			Box.TextXAlignment='Left'
			--Box.MultiLine=true
			Box.TextYAlignment='Top'
			Box.BackgroundTransparency=1
			Box.TextStrokeColor3=CurrentPlayerData[3]
			Box.Parent=SGui
			Box.BackgroundColor3 = CurrentPlayerData[4]
			Box:CaptureFocus()
			Box.FocusLost:connect(function()
				SGui:Destroy()
			end)
			local isub = '|'
			local l=false
			spawn(function()
				if tb.Text:sub(#tb.Text,#tb.Text)=='|' then
					tb.Text=tb.Text:sub(1,#tb.Text-1)
				end
				local canc = false
				spawn(function()
					while not canc do
						wait(.6)
						l=not l
						if l == true then
							isub='|'
						else
							isub=''
						end
					end
				end)
				repeat
					tb.Text=Box.Text..isub
					lrs:wait()
				until SGui.Parent ~= Host.PlayerGui
				if l then
					tb.Text=tb.Text:sub(1,#tb.Text-1)
				end
				canc=true
				SGui=nil
			end)
		end)
	end)
end

Functions:CreateProgram('Settings',485882401,'Sett','Also self explanitory...',function(HF,TF,CF)
end)

spawn(function()
	local nw={};
	for i,v in next, OS.Backgrounds do
		delay(math.random()*5,function()
			nw[#nw+1]=v
		end)
	end
	repeat wait() until #nw==#OS.Backgrounds
	wait(.5)
	OS.Backgrounds=nw
	Functions:Notification('Formatted OS.Backgrounds', 4)
end)

spawn(function()
	local nw={};
	for i,v in next, OS.Sounds do
		delay(math.random()*5,function()
			nw[#nw+1]=v
		end)
	end
	repeat wait() until #nw==#OS.Sounds
	wait(.5)
	OS.Sounds=nw
	Functions:Notification('Formatted OS.Sounds', 4)
end)

Functions:CreateProgram('Gallery', 152445445, 'Images', 'View your favorite, saved, and default images', function(HF,TF,CF)
	local title = Functions:MakeNewUi('TextLabel')
	title.TextColor3 = CurrentPlayerData[3]
	title.TextStrokeTransparency=1
	title.Size=ud(1,0,.1,0)
	title.Text = 'Gallery - '..#OS.Backgrounds..' assets total'
	title.TextXAlignment='Center'
	title.TextYAlignment='Center'
	title.Font = OS.Settings.Fonts.Header
	title.BackgroundTransparency=1
	title.Parent=CF
	title.BackgroundColor3 = CurrentPlayerData[4]

	spawn(function()
		wait(1)
		Effects:Underline(title, 15, 300, 2, CurrentPlayerData[3], true)
	end)

	local scroll = Functions:MakeNewUi('ScrollingFrame')
	scroll.Size=ud(1,0,.9,0)
	scroll.Position = ud(0,0,.1,0)
	scroll.BackgroundTransparency=0
	scroll.TopImage=Functions:Asset(317839361)
	scroll.MidImage=Functions:Asset(317839361)
	scroll.BottomImage=Functions:Asset(317839361)
	scroll.ScrollBarThickness = 5
	scroll.Parent=CF
	scroll.BackgroundColor3 = CurrentPlayerData[4]

	local Loaded = 0
	local o,d = 0,0
	local curbg = nil
	local bgs={};
	for i, Id in next, OS.Backgrounds do
		--local Market = game:service'MarketplaceService'
		--local Asset = Market:GetProductInfo(Id)
		
		local Img = Functions:MakeNewUi('ImageButton')
		Img.Image = Functions:Asset(Id)
		local scl = 2
		local add = .005
		local sx,sy=(.089*scl),(.05*scl)
		Img.Size=ud(sx,0,0,34*2)
		Img.Position = ud(((sx+add)*o)+.05,0,0,((36*2)*d))
		o=o+1
		game:service'RunService'.RenderStepped:wait()
		if sx*(o+1) >= 1 then
			d=d+1
			o=0
			scroll.CanvasSize=ud(0,0,0,((36*2)*d))
		end
		Img.BackgroundColor3 = scroll.BackgroundColor3
		Img.BorderColor3 = CurrentPlayerData[3]
		Img.ImageTransparency=1
		Img.MouseButton1Down:connect(function()
			curbg = Img
			OS.Assets.Background.Image=Functions:Asset(Id)
		end)
		Img.Parent=scroll

		spawn(function()
			for i = 0,1.05,.05 do
				Img.ImageTransparency=1-i
				game:service'RunService'.RenderStepped:wait()
			end
		end)
		bgs[#bgs+1]=Img
	end
	while #bgs > 0 do
		lrs:wait()
		for i,Img in next, bgs do
			if Img == nil or Img.Parent == nil then
				table.remove(bgs,i)
			else
				if curbg == Img then
					Img.BorderSizePixel = 2
				else
					Img.BorderSizePixel=0
				end
			end
		end
	end
end)

Functions:CreateProgram('Explorer', 27854793, 'Expl', 'Explore the game\'s children', function(HF,TF,CF)
	local funcs = {};
	local title = Functions:MakeNewUi('TextLabel')
	title.TextColor3 = CurrentPlayerData[3]
	title.TextStrokeTransparency=1
	title.Size=ud(1,0,.2,0)
	title.Text = 'Services'
	title.TextXAlignment='Center'
	title.TextYAlignment='Center'
	title.BackgroundTransparency=1
	title.Parent=CF
	title.BackgroundColor3 = CurrentPlayerData[4]

	spawn(function()
		wait(1)
		Effects:Underline(title, 15, 80, 2, CurrentPlayerData[3], true)
	end)

	local scroll = Functions:MakeNewUi('ScrollingFrame')
	scroll.Size=ud(.8,0,.8,0)
	scroll.Position = ud(.1,0,.2,0)
	scroll.BackgroundTransparency=1
	scroll.TopImage=Functions:Asset(317839361)
	scroll.MidImage=Functions:Asset(317839361)
	scroll.BottomImage=Functions:Asset(317839361)
	scroll.ScrollBarThickness = 5
	scroll.Parent=CF
	scroll.BackgroundColor3 = CurrentPlayerData[4]

	function funcs:w()
		return wait(.05)
	end

	local buttons={};
	local t = 0
	function funcs:clearscroll()
		t=t+1
		buttons={};
		for i,v in next, scroll:children() do
			--funcs:w()
			pcall(function()
				spawn(function()
					v:TweenPosition(ud(1,0,v.Position.Y.Scale,v.Position.Y.Offset),'Out','Quint',2,true)
					for i = 0,1.05,.05 do
						pcall(function()
							v.TextTransparency=v.TextTransparency+.05
						end)
						pcall(function()
							v.BackgroundTransparency=v.BackgroundTransparency+.05
						end)
						pcall(function()
							v.TextStrokeTransparency=v.TextStrokeTransparency+.05
						end)
						lrs:wait()
					end
					v:Destroy()
				end)
			end)
		end
		wait(2)
	end

	function funcs:bt(i,txt,func)
		delay(0,function()
			if t == i then
				--funcs:w()
				local button = Functions:MakeNewUi('TextButton')
				local index = #buttons
				buttons[index+1]=button
				local y = 22*(index)
				scroll.CanvasSize=ud(0,0,0,y)
				button.TextColor3 = CurrentPlayerData[3]
				button.TextStrokeTransparency=.9
				button.Size=ud(1,0,0,20)
				button.Position=ud(1,0,0,y)
				button.Text = txt
				button.TextXAlignment='Left'
				button.TextTransparency=1
				button.TextSize = 12
				button.Font=OS.Settings.Fonts.Header
				--button.TextYAlignment='Top'
				button.BackgroundTransparency=.6
				button.TextStrokeColor3=CurrentPlayerData[3]
				button.Parent=scroll
				button.BackgroundColor3 = CurrentPlayerData[4]
				spawn(function()
					button:TweenPosition(ud(0,0,0,y),'Out','Quint',.5,true)
					for i = 0,1.05,.05 do
						button.TextTransparency=1-i
						lrs:wait()
					end
				end)
				local ev
				ev=button.MouseButton1Click:connect(function()
					ev:disconnect()
					func(button)
				end)
				return button
			else
				return nil
			end
		end)
	end
	
	function funcs:showoptions(obj)
		funcs:clearscroll()
		local st = t
		if obj:IsA'Instance' then
			title.Text = obj:GetFullName()
			if #obj:children() > 0 then
				local expl=funcs:bt(st,'Explore',function()
					funcs:showchildren(obj)
				end)
			end
			pcall(function()
				if obj ~= game and obj.Parent ~= game then
					local expl=funcs:bt(st,'Destroy',function()
						local par = obj.Parent
						local pn = obj.Name
						pcall(function()
							obj:Destroy()
						end)
						funcs:clearscroll()
						local nst = t
						funcs:bt(nst,'Return to '..pn..'\'s parent object',function()
							funcs:showchildren(par)
						end)
						funcs:bt(nst,'Destroyed '..pn,function()
						end)
					end)
				end
			end)
			if obj ~= game then
				local tag = 'Return to '..obj.Parent.Name..'\'s children'
				if obj.Parent==game then
					tag='Return to explorable services'
				end
				local ret=funcs:bt(st,tag,function()
					funcs:showchildren(obj.Parent)
				end)
			elseif obj.Parent == game then
				funcs:showservs()
			end
			local sprops=funcs:bt(st,'Show Properties',function()
				funcs:clearscroll()
				local st2 = t
				local rett=funcs:bt(st2,'Return to options for '..obj.Name,function()
					funcs:showoptions(obj)
				end)
				local Props = Functions:ReturnObjectProperties(obj)
				Props['Children'] = #obj:children()
				for index, value in next, Props do
					local prop=funcs:bt(st2,tostring(index)..': '..tostring(value),function()
					end)
				end
			end)
		end
	end
	
	function funcs:showchildren(prnt)
		funcs:clearscroll()
		local st = t
		if prnt:IsA'Instance' then
			local back=funcs:bt(st,'Show me options for '..prnt.Name,function()
				funcs:showoptions(prnt)
			end)
			for i,v in next, prnt:children() do
				pcall(function()
					if prnt:IsA'Instance' then
						local sub=' - '..v.ClassName
						pcall(function()
							if prnt==game then
								sub=''
							end
						end)
						local child=funcs:bt(st,v.Name..sub,function()
							funcs:showoptions(v)
						end)
					end
				end)
			end
		end
	end
	function funcs:showservs()
		funcs:clearscroll()
		local st = t
		local servs = {};
		for i,v in next, game:children() do
			pcall(function()
				if #v:children() > 0 then
					table.insert(servs,v)
				end
			end)
		end
		local child=funcs:bt(st,'SHOW ME ALL THE DAMN SERVICES!',function()
			funcs:showoptions(game)
		end)
		for i,v in next, servs do
			local child = funcs:bt(st,v.Name,function()
				funcs:showoptions(v)
			end)
		end
	end
	funcs:showservs()
end)

local Audios={};
local CurrentPlaying = nil
function Functions:AddSound(Id)
	for Index, Sound in next, Audios do
		if Sound:IsA'Sound' then
			Sound:Stop()
			Sound.PlayOnRemove=false
		end
	end
	local Sound = Instance.new('Sound', Monitor)
	Sound.SoundId=Functions:Asset(Id)
	Sound.Volume=.9
	CurrentPlaying = Sound
	table.insert(Audios, Sound)
	return Sound
end

function Functions:IntegerLerp(a,b,c)
	return a + (b - a) * c;
end

Functions:CreateProgram('Messenger',485845332,'MGR','Self explanitory... idiot', function(HF,TF,CF)
end)

local cur = nil
local curSound = nil
Functions:CreateProgram('SmAudio', 64646186, 'SmA', 'An archive of selected music just for you ;) with extra features as well', function(HF,TF,CF)
	local title = Functions:MakeNewUi('TextLabel')
	title.TextColor3 = CurrentPlayerData[3]
	title.TextStrokeTransparency=1
	title.Size=ud(1,0,.2,0)
	title.Text = 'SmAudio Alpha'
	title.TextXAlignment='Center'
	title.TextYAlignment='Center'
	title.Font = OS.Settings.Fonts.Header
	title.BackgroundTransparency=1
	title.Parent=CF
	title.BackgroundColor3 = CurrentPlayerData[4]

	spawn(function()
		wait(1)
		Effects:Underline(title, 15, 80, 2, CurrentPlayerData[3], true)
	end)

	local scroll = Functions:MakeNewUi('ScrollingFrame')
	scroll.Size=ud(.8,0,.8,0)
	scroll.Position = ud(.1,0,.2,0)
	scroll.BackgroundTransparency=0
	scroll.TopImage=Functions:Asset(317839361)
	scroll.MidImage=Functions:Asset(317839361)
	scroll.BottomImage=Functions:Asset(317839361)
	scroll.ScrollBarThickness = 5
	scroll.Parent=CF
	scroll.BackgroundColor3 = CurrentPlayerData[4]

	local max = 0
	spawn(function()
		local y = 0
		repeat game:service'RunService'.RenderStepped:wait() 
			y=Functions:IntegerLerp(y,max,.02)
			--print(max)
			--print(y)
			--scroll.CanvasSize=ud(0,0,0,y)
		until CF.Parent == nil
	end)
	
	local play,pause,sound = Functions:Asset(745599404),Functions:Asset(745599001),Functions:Asset(176572847)

	local Loaded = 0
	for i, Id in next, OS.Sounds do
		delay((math.random()/(math.random()+.2))*3, function()
			local Market = game:service'MarketplaceService'
			local Asset = Market:GetProductInfo(Id)
			
			local Song = Functions:MakeNewUi('ImageButton')
			Song.Parent=scroll
			Song.Image = play
			local clr=CurrentPlayerData[3]
			local clr2=CurrentPlayerData[4]
			Song.BackgroundColor3=clr
			Song.Size=ud(0,45,0,45)
			Song.BackgroundTransparency=1
	
			local y = (Song.Size.Y.Offset+2)*(i-1)
			max=max+(Song.Size.Y.Offset+2)
			local x = Song.Size.X.Offset

			local author = Functions:MakeNewUi('TextLabel')
			author.TextColor3 = CurrentPlayerData[3]
			author.Size=ud(1,-x+10,0,20)
			author.Position = ud(0,x+10,0,y)
			author.Text = 'Author  '..Asset.Creator.Name..' ; '..Asset.Creator.Id
			author.TextXAlignment='Left'
			author.TextYAlignment='Center'
			author.TextSize = 16
			author.Font = OS.Settings.Fonts.Header
			author.BackgroundTransparency=1
			author.TextTransparency=1
			author.Parent=scroll
			author.BackgroundColor3 = CurrentPlayerData[3]

			local name = Functions:MakeNewUi('TextLabel')
			name.TextColor3 = CurrentPlayerData[3]
			name.Size=ud(1,-x+10,0,20)
			name.Position = ud(0,x+10,0,y+(author.TextSize+2))
			name.Text = 'Name  '..Asset.Name
			name.TextXAlignment='Left'
			name.TextYAlignment='Center'
			name.TextSize = 12
			name.TextTransparency=1
			name.Font = OS.Settings.Fonts.Header
			name.BackgroundTransparency=1
			name.Parent=scroll
			name.BackgroundColor3 = CurrentPlayerData[3]

			local desc = Functions:MakeNewUi('TextLabel')
			desc.TextColor3 = CurrentPlayerData[3]
			local alg = (((name.TextBounds.X+author.TextBounds.X)/1.5)+(10+(author.TextSize+name.TextSize)))
			desc.Size=ud(1,-x-(alg+scroll.ScrollBarThickness),0,46)
			desc.Position = ud(1,0,0,y-1)
			desc.Text = Asset.Creator.Name..': '..Asset.Description
			desc.BorderSizePixel=0
			desc.BorderColor3 = CurrentPlayerData[3]
			desc.TextWrapped=true
			desc.TextXAlignment='Left'
			desc.TextTransparency=1
			desc.TextYAlignment='Top'
			desc.TextSize = 12
			desc.Font = OS.Settings.Fonts.Header
			desc.BackgroundTransparency=1
			desc.Parent=scroll
			desc.BackgroundColor3 = scroll.BackgroundColor3
			desc.ClipsDescendants=false

			local line = Functions:MakeNewUi('TextLabel')
			line.TextColor3 = CurrentPlayerData[3]
			line.Size=ud(0,1,1,0)
			line.Position = ud(0,-4,0,0)
			line.Text = ''
			line.BackgroundTransparency=0
			line.BackgroundColor3 = CurrentPlayerData[3]
			line.Parent=desc

			if Asset.Description=='Audio' or Asset.Description=='RenderMesh' then
				desc:Destroy()
			else
				desc:TweenPosition(ud(0,x+alg,0,y-1),'Out','Quint',1,true)
			end
			
			Song.Position = ud(0,-x,0,y)
			
			Song.ZIndex=8
			Song.MouseEnter:connect(function()
				local t=clr2
				local tt=.15
				clr=c3(t.r-tt,t.b-tt,t.g-tt)
				clr2=CurrentPlayerData[3]
			end)
			Song.MouseLeave:connect(function()
				clr=CurrentPlayerData[3]
				clr2=CurrentPlayerData[4]
			end)
			
			Song.MouseButton1Click:connect(function()
				if cur == Song then
					curSound:Pause()
					cur=nil
				else
					cur=Song
					curSound = Functions:AddSound(Id)
					curSound.Looped = true
					curSound:Play()
					clr=CurrentPlayerData[3]
					clr2=CurrentPlayerData[4]
				end
			end)

			spawn(function()
				for i = 0,1.05,.05 do
					desc.TextTransparency=1-i
					desc.BackgroundTransparency=1-i
					name.TextTransparency=1-i
					author.TextTransparency=1-i
					game:service'RunService'.RenderStepped:wait() 
				end
			end)
			
			spawn(function()
				repeat game:service'RunService'.RenderStepped:wait() 
					if cur == Song then
						Song.Image = pause
					else
						Song.Image = play
					end
					Song.BackgroundColor3=Song.BackgroundColor3:lerp(clr,.25)
					Song.ImageColor3=Song.ImageColor3:lerp(clr2,.25)
				until CF.Parent == nil
			end)
			Song:TweenPosition(ud(0,0,0,y),'Out','Quint',.5,true)
			Loaded = Loaded + 1
		end)
	end
	local ii=0
	repeat 
		wait() 
		title.Text = 'Loading Assets #'..Loaded 
		ii=Functions:IntegerLerp(ii,max+10,.04)
		scroll.CanvasSize=ud(0,0,0,ii)
		scroll.CanvasPosition=Vector2.new(0,ii)
	until Loaded == #OS.Sounds
	title.Text = 'SmAudio Beta'
end)

function Functions:GeneratePrograms(Distance)
	--print'k'
	local Over, Down=0,0
	for Index, Data in next, OS.Apps.Qeued do
		if Down > 7 then 
			return
		end
		local maximized,ump,ums
		lrs:wait()
		local Icon = Functions:MakeNewUi('ImageButton')
		Icon.Image=Functions:PlayerImage(Host)
		Icon.Parent=MainFrame
		Icon.BackgroundColor3=CurrentPlayerData[4]
		Icon.Image=Functions:Asset(Data[2])
		Icon.Size=ud(0,50,0,50)
		Icon.ZIndex=2
		Icon.ImageTransparency=0
		local IconName = Functions:MakeNewUi('TextLabel')
		IconName.Font=OS.Settings.Fonts.Header
		IconName.Parent=Icon
		IconName.TextYAlignment='Bottom'
		IconName.TextSize = 10
		IconName.Text= Data[1]
		IconName.Size=ud(1,0,0,20)
		IconName.Position=ud(0,0,1,-20)
		IconName.ZIndex=2
		local bgtp = 1
		Icon.MouseEnter:connect(function()
			bgtp=.5
		end)
		Icon.MouseLeave:connect(function()
			bgtp=1
		end)
		local oi = bgtp
		lrs:connect(function()
			oi=Functions:IntegerLerp(oi,bgtp,.3)
			Icon.BackgroundTransparency=oi
		end)
		OS.Apps.Generated[Data[1]]=Icon
		if Over >= 13 then
			Down = Down + 1
			Over = 0
		end
		Icon.Position=ud(0,15+(60*(Over)),0,15+(60*(Down)))
		Over = Over + 1
		Icon.ZIndex=2
		local oic
		oic=Icon.MouseButton1Click:connect(function()
			local AlreadyOpen=false
			for Index, Ting in next, OS.Apps.Open do
				for i = 1,#Ting do
					if Data[i] == Ting[i] then
						AlreadyOpen=true
					end
				end
			end
			if AlreadyOpen then
				warn'nop'
				return
			end
			table.insert(OS.Apps.Open,{Data[1],Data[2],Data[3]})
			OS.RecentlyUsedPrograms[Data[4]]=Data
			local HolderFrame = Functions:MakeNewUi('Frame')
			HolderFrame.ZIndex=3
			HolderFrame.BackgroundTransparency=0
			HolderFrame.BorderSizePixel=.1
			HolderFrame.BorderColor3=CurrentPlayerData[3]
			HolderFrame.Size=ud(0,600,0,400)
			HolderFrame.Name='HF'
			HolderFrame.BackgroundColor3=CurrentPlayerData[3]
			HolderFrame.Position = Functions:Center(HolderFrame)
			HolderFrame.Parent = MainFrame
			maximized,ump,ums=false,HolderFrame.Position,HolderFrame.Size
			local function Enable()
				for i,gui in next, MainFrame:children() do
					if gui:IsA'ImageButton' then
						gui.Visible=true
					end
				end
			end
			local function Disable()
				for i,gui in next, MainFrame:children() do
					if gui:IsA'ImageButton' then
						gui.Visible=false
					end
				end
			end
			
			local ev1
			ev1=HolderFrame.MouseEnter:connect(function()
				--print'k1'
				Disable()
			end)
			local ev2
			ev2=HolderFrame.MouseLeave:connect(function()
				--print'k2'
				Enable()
			end)
			local InfoFrame = Functions:MakeNewUi('Frame')
			InfoFrame.ZIndex=4
			InfoFrame.BackgroundTransparency=0
			InfoFrame.Size=ud(1,0,0,15)
			InfoFrame.Name='TF'
			InfoFrame.BackgroundColor3=CurrentPlayerData[3]
			for i = 1,3 do
				i=i
				local CButt = Functions:MakeNewUi('ImageButton')
				CButt.Image=Functions:Asset(625953771)
				CButt.Parent=InfoFrame
				CButt.ImageTransparency=.15
				local OCF
				--505680534
				spawn(function()
					local up=.75
					local r,g,b=0,0,0
					if (i==1) then
						r,g,b=.8,.01,.01
					elseif (i==2) then
						r,g,b=.95,.95,0
					elseif (i==3) then
						r,g,b=0,.7,0
					end
					CButt.ImageColor3 = c3(r,g,b)
					CButt.MouseEnter:connect(function()
						for i = 0,1,.1 do
							CButt.ImageColor3 = CButt.ImageColor3:lerp(c3(r+up,g+up,b+up),.13)
							lrs:wait()
						end
					end)
					CButt.MouseLeave:connect(function()
						for i = 0,1,.1 do
							CButt.ImageColor3 = CButt.ImageColor3:lerp(c3(r,g,b),.13)
							lrs:wait()
						end
					end)
				end)
				--if not OCF then OCF=function()print'missing func'end;end
				if (i==1) then
					r,g,b=.8,.01,.01
					local evv
					ev1:disconnect()
					ev2:disconnect()
					evv=CButt.MouseButton1Click:connect(function()
						for Index, Ting in next, OS.Apps.Open do
							if Data[1] == Ting[1] then
								table.remove(OS.Apps.Open, Index)
							end
						end
						evv:disconnect()
						local pos = HolderFrame.Position
						HolderFrame.Active=false
						HolderFrame:Destroy()
					end)
				elseif (i==2) then
					r,g,b=.95,.95,0
					local evv
					evv=CButt.MouseButton1Click:connect(function()
						if maximized then
							HolderFrame:TweenSizeAndPosition(ums,ump,'Out','Sine',.3,true)
							maximized=false
						else
							HolderFrame:TweenSizeAndPosition(ud(1,2,1,-50),ud(0,-1,0,-1),'Out','Quint',.3,true)
							maximized=true
						end
					end)
				elseif (i==3) then
					r,g,b=0,.7,0
					local evv
					ev1:disconnect()
					ev2:disconnect()
					for Index, Ting in next, OS.Apps.Open do
						if Data[1] == Ting[1] then
							table.remove(OS.Apps.Open, Index)
						end
					end
					evv=CButt.MouseButton1Click:connect(function()
						evv:disconnect()
						HolderFrame:TweenSizeAndPosition(ud(0,50,0,50),Icon.Position,'Out','Quint',.5,true)
						wait(.2)
						HolderFrame:Destroy()
					end)
					--Functions:AddToTaskBar(Data[1],Data[2],{ump,ums})
				end
				--CButt.MouseButton1Click:connect(OCF)
				CButt.Size=ud(0,12,0,12)
				CButt.Position=Functions:CenterOffset(CButt,ud(.5,-(15*i),0,0))
				--CButt:TweenPosition(Functions:CenterOffset(CButt,ud(0,0,0,-50),'Out','Back',1,true))
			end
			InfoFrame.Parent = HolderFrame
			local InfoIcon = Functions:MakeNewUi('ImageButton')
			InfoIcon.Parent=InfoFrame
			InfoIcon.Image=Functions:Asset(Data[2])
			InfoIcon.Size=ud(0,12,0,12)
			InfoIcon.ImageTransparency=0
			InfoIcon.Position=ud(0,2,0,3)
			InfoIcon.ZIndex=4
			local InfoText = Functions:MakeNewUi('TextButton')
			InfoText.BackgroundTransparency=.5
			InfoText.FontSize='Size12'
			InfoText.Parent=InfoFrame
			InfoText.TextXAlignment='Left'
			InfoText.Text= Data[1]--..'  \  '..Data[4]--'*C:\Users\\'..Host.Name..''
			InfoText.Size=ud(1,-40,1,0)
			InfoText.Position=ud(0,16,0,0)
			InfoText.ZIndex=4
			
			local md=false
			InfoText.MouseButton1Down:connect(function()
				md=true
				local origp=HolderFrame.Position
				local origs=ud(0,600,0,15)
				local origmp=OS.Assets.Mouse.Position
				HolderFrame.Size = ud(0,600,0,400)
				maximized=false
				spawn(function()
					repeat wait() until OS.MouseDown == false
					md=false
				end)
				while md do
					local mp={OS.Assets.Mouse.Position.X.Scale,OS.Assets.Mouse.Position.X.Offset,OS.Assets.Mouse.Position.Y.Scale,OS.Assets.Mouse.Position.Y.Offset};
					local fs={origs.X.Scale,origs.X.Offset,origs.Y.Scale,origs.Y.Offset};
					local fp={origp.X.Scale,origp.X.Offset,origp.Y.Scale,origp.Y.Offset};
					--local a,b=
					local x,y=mp[2]-(fs[2]/2),mp[4]-(fs[4]/2)
					--print(x,y)
					HolderFrame.Position=ud(0,x,0,y)
					lrs:wait()
				end
			end)
			InfoText.MouseButton1Up:connect(function()
				--md=false
			end)
			local ContentFrame = Functions:MakeNewUi('Frame')
			ContentFrame.ZIndex=4
			ContentFrame.BackgroundTransparency=.1
			ContentFrame.Size=ud(1,-2,1,-17)
			ContentFrame.Position=ud(0,1,0,16)
			ContentFrame.Name='CF'
			ContentFrame.BackgroundColor3=CurrentPlayerData[4]
			ContentFrame.Parent = HolderFrame
			Data[5](HolderFrame, TitleFrame, ContentFrame)
		end)
	end
end

local AtMainScreen=false
function Functions:MakeHomeScreen()
	local Background_id = CurrentPlayerData[5]
	local BackgroundImg = Functions:MakeNewUi('ImageLabel')
	BackgroundImg.Image=Functions:Asset(Background_id)
	BackgroundImg.Name='Background'
	BackgroundImg.BackgroundTransparency=1
	BackgroundImg.ImageTransparency = .1
	BackgroundImg.Parent=MainFrame
	BackgroundImg.ZIndex=1
	BackgroundImg.Size=ud(1,0,1,0)
	OS.Assets.Background = BackgroundImg
	for i = 0,1.025,.025 do
		MainFrame.BackgroundTransparency=i
		lrs:wait()
	end
	local TskBar = Functions:MakeNewUi('TextLabel')
	TskBar.Size = ud(1,0,0,52)
	TskBar.Parent = MainFrame
	TskBar.BackgroundColor3 = CurrentPlayerData[3]
	TskBar.BackgroundTransparency = .5
	TskBar.Position = ud(0,0,1,0)
	TskBar.ZIndex = 9
	TskBar:TweenPosition(ud(0,0,1,-52.5),'Out','Quint',1.2,true)
	for i = 0,.15,.05 do
		local TskBarShader = Functions:MakeNewUi('TextLabel')
		TskBarShader.BackgroundTransparency = .8
		TskBarShader.BackgroundColor3 = CurrentPlayerData[4]
		TskBarShader.BorderSizePixel = 0
		TskBarShader.Size = ud(1,0,.05,0)
		TskBarShader.Position = ud(0,0,-i,0)
		delay(.2,function()
			TskBarShader:TweenPosition(ud(0,0,i+5,0),'Out','Quint',.5,true)
		end)
		TskBarShader.ZIndex = 9
		TskBarShader.Name = 'shd'..i
		--TskBar:ClearAllChildren()
		TskBarShader.Parent = TskBar
	end
	--//tem\\
	local TimeLabel = Instance.new'TextLabel'
	TimeLabel.BackgroundTransparency = 1
	TimeLabel.BackgroundColor3 = c3(255,255,255)
	TimeLabel.BorderSizePixel = 0
	TimeLabel.ZIndex = 9
	TimeLabel.TextColor3 = CurrentPlayerData[4]
	TimeLabel.Font = OS.Settings.Fonts.Sub_Header
	TimeLabel.TextScaled = true
	TimeLabel.Name = 'TimeLabel'
	TimeLabel.TextWrapped = true
	TimeLabel.TextStrokeTransparency = .9
	TimeLabel.Text = '00:00:00  PM'
	TimeLabel.Parent = TskBar
	TimeLabel.Size = ud(.08,0,.3,0)
	TimeLabel.Position = ud(.92,-10,0,6)
	
	local DateLabel = Instance.new'TextLabel'
	DateLabel.BackgroundTransparency = 1
	DateLabel.BackgroundColor3 = c3(255,255,255)
	DateLabel.BorderSizePixel = 0
	DateLabel.ZIndex = 9
	DateLabel.TextColor3 = CurrentPlayerData[4]
	DateLabel.Font = OS.Settings.Fonts.Sub_Header
	DateLabel.TextScaled = true
	DateLabel.Name = 'DateLabel'
	DateLabel.TextWrapped = true
	DateLabel.TextStrokeTransparency = .9
	DateLabel.Text = '00/00/0000'
	DateLabel.Parent = TskBar
	DateLabel.Size = ud(.08,0,.3,0)
	DateLabel.Position = ud(.92,-10,.6,-6)
	
	local Logo = Functions:MakeNewUi'ImageButton'
	Logo.BackgroundTransparency = 1
	Logo.BackgroundColor3 = CurrentPlayerData[3]
	Logo.BorderSizePixel = 0
	Logo.ZIndex = 10
	Logo.Image = Functions:Asset(265489553)
	--Logo.TextColor3 = CurrentPlayerData[4]
	--Logo.Font = 'Cartoon'
	--Logo.FontSize='Size36'
	Logo.Name = 'Logo'
	--Logo.TextStrokeTransparency = .9
	--Logo.Text = '¶Y'
	Logo.Parent = TskBar
	Logo.Size = ud(0,40,0,50)
	Logo.Position = ud(0,1,0,1)
	local clrcancel=false
	local igc,bgc=CurrentPlayerData[4],CurrentPlayerData[3]
	Logo.MouseEnter:connect(function()
		local continue=true
		clrcancel=true
		clrcancel=false
		spawn(function()
			for i = 0,.57,.07 do
				Logo.BackgroundTransparency=1-i
				lrs:wait()
			end
		end)
		igc,bgc=CurrentPlayerData[3],CurrentPlayerData[4]
	end)
	Logo.MouseLeave:connect(function()
		local continue=true
		clrcancel=true
		clrcancel=false
		spawn(function()
			for i = 0,.57,.07 do
				Logo.BackgroundTransparency=.5+i
				lrs:wait()
			end
		end)
		igc,bgc=CurrentPlayerData[4],CurrentPlayerData[3]
	end)
	local StartFrameHolder = Functions:MakeNewUi('Frame')
	StartFrameHolder.ZIndex=5
	StartFrameHolder.BackgroundTransparency=1
	StartFrameHolder.Size=ud(0,200,.6,0)
	StartFrameHolder.Position = ud(0,0,.4,-52)
	StartFrameHolder.Parent = MainFrame
	local StartFrame = Functions:MakeNewUi('Frame')
	StartFrame.ZIndex=9
	StartFrame.BackgroundTransparency=.5
	StartFrame.Size=ud(1,0,1,0)
	StartFrame.BorderSizePixel=2
	StartFrame.Name='SF'
	StartFrame.BorderColor3=CurrentPlayerData[4]
	StartFrame.Position = ud(0,0,1,0)
	StartFrame.Parent = StartFrameHolder
	
	local TestButton = Functions:MakeNewUi('TextButton')
	TestButton.ZIndex=6
	TestButton.BackgroundTransparency=.7
	TestButton.Size=ud(1,-6,0,50)
	TestButton.Position = ud(0,3,0,3)
	TestButton.Text='TEST NOTIFICATIONS'
	TestButton.Parent = StartFrame
	TestButton.MouseButton1Click:connect(function()
		Functions:Notification('Just testing the dank re-alignment and stuff, kek.')
	end)
	
	local sfcc,detection=false,false
	StartFrame.MouseEnter:connect(function()
		detection=false
		sfcc=false
	end)
	StartFrame.MouseLeave:connect(function()
		detection=true
		sfcc=true
	end)
	
	local Extended=false
	local function Open(trans)
		StartFrame:TweenPosition(ud(0,0,0,0),'Out','Sine',.5,true)
		for i = 0,1.05,.05 do
			for a,b in next, StartFrame:children() do
				if b.Name ~= 'SF' then
					pcall(function()
						b.TextTransparency=b.TextTransparency-.05
					end)
					pcall(function()
						b.BackgroundTransparency=bBackgroundTransparency-.05
					end)
					pcall(function()
						b.ImageTransparency=b.ImageTransparency-.05
					end)
				end
			end
			StartFrame.BackgroundTransparency=1-.05
			lrs:wait()
		end
		StartFrame.BackgroundTransparency=trans
		Extended=true
	end
	local function Close(trans)
		StartFrame:TweenPosition(ud(0,0,1,0),'Out','Sine',.5,true)
		for i = 0,1,.05 do
			for a,b in next, StartFrame:children() do
				if b.Name ~= 'SF' then
					pcall(function()
						b.TextTransparency=b.TextTransparency+.05
					end)
					pcall(function()
						b.BackgroundTransparency=bBackgroundTransparency+.05
					end)
					pcall(function()
						b.ImageTransparency=b.ImageTransparency+.05
					end)
				end
			end
			StartFrame.BackgroundTransparency=trans+.05
			lrs:wait()
		end
		StartFrame.BackgroundTransparency=1
		Extended=false
	end
	local trans=.45
	PlayerMouse.Button1Down:connect(function()
		if sfcc and Extended then
			detection=false
			Close(trans)
		end
	end)
	PlayerMouse.Button2Down:connect(function()
		if sfcc and Extended then
			detection=false
			Close(trans)
		end
	end)
	Logo.MouseButton1Down:connect(function(x,y)
		if Extended then
			Close(trans)
		else
			Open(trans)
		end
	end)
	local Months = 	{ 
			"January", "Febreuary", "March", "April", "May", "June",
			"July", "August", "September", "October", "November", "December"
		}
	local MonthDays = { 	
			31, 28, 31, 30, 31, 30, 
			31, 31, 30, 31, 30, 31 
		}

	function getDay(Date, year)
		local month, date = Date:match("(%a+)%s*(%d+)")
		local DAYS = tonumber(date)
		local leaps = math.floor( (year-2011)/4 - .25 ) + 1
		local Days = {"Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"}
		for _, v in ipairs(MonthDays) do
			if Months[_] == month then break end
			DAYS = DAYS + v
		end
		DAYS = math.floor( DAYS + (year-2017) * 365 ) + leaps
		return Days[ (DAYS%7 == 0 and 7 or DAYS%7) ] 
	end

	function getMonthAndDate(days, year)
		local leap = year%4 == 0 and 1 or 0
		local month;
		for _, v in ipairs(MonthDays) do
			if (days-v) < 1 then 
				month = Months[_]
				break 
			end
			days = days - v
		end
		return month, days
	end
	local LTime,LDate = '',''
	local M = ''
	Time = function()
		local secondsInDay = 60*60*24
		local time = tick()
		local year = math.floor(1970 + time/(365.25*86400))
		local days = math.ceil(((time % (86400*365.25)) )/86400 + 0.25)
		local month, date = getMonthAndDate(days, year)
		local day = getDay(month..date, year)
		local tick = math.fmod(tick(),secondsInDay)
		local hour = math.floor(tick/3600) + 5 + -5
		local minute = math.floor(tick/60 - 60*hour)
		local seconds = math.floor(math.fmod(tick,60))
		if (hour > 12) then 
			   M = ' PM' hour = hour - 12 
		else 
			M = ' AM' 
		end
		if hour == 0 then 
			hour = 12 
		end
		if hour == 24 then 
			hour = 1 
		end
		LTime = string.format("%2.0f:%02.0f",hour,minute)
		local MonthNums = 	{ 
			["January"]=1, ["February"]=2, ["March"]=3, ["April"]=4, ["May"]=5, ["June"]=6,
			["July"]=7, ["August"]=8, ["September"]=9, ["October"]=10, ["November"]=11, ["December"]=12
		}
		month=MonthNums[month]
		LDate = month..'/'..(days-1)..'/'..year
		TimeLabel.Text = LTime..M
		DateLabel.Text = LDate
		Logo.ImageColor3 = Logo.ImageColor3:lerp(igc,.2)
		Logo.BackgroundColor3 = Logo.BackgroundColor3:lerp(bgc,.2)
	end
	game:service'RunService'.Heartbeat:connect(Time)
	AtMainScreen=true
	local txt=''
	if Official then
		txt='Welcome back, '..CurrentPlayerData[1]..', your last session\'s saved data has been loaded'
	else
		txt='Hello, '..CurrentPlayerData[1]..'. Your data will be saved at the end of this session'
	end
	delay(math.random(1,4),function()
		delay(.3,function()
			Functions:PlayerImgNotification('SavageMunkey', 'Creator & Founder of ¶YaviOS - SavageMunkey')
		end)
		local fr,tl = Functions:Notification(txt,6)
	end)
	Functions:GeneratePrograms({25,20})
	AtMainScreen=true
	return warn'Homescreen Loaded'
end

function Functions:PlayerImgNotification(Plr, Type)
	if not AtMainScreen then return end
	local sz=50
	if Type=='join' then
		local fr,tl=Functions:Notification('New Player has joined, '..tostring(Plr)..'.', 4)
		tl.Size=ud(1,-(sz+5),1,0)
		tl.Position=ud(0,sz+5,0,0)
		local UserImage = Functions:MakeNewUi('ImageLabel')
		UserImage.Image=Functions:PlayerImage(tostring(Plr))
		UserImage.Parent=fr
		UserImage.Size=ud(0,sz,1,0)
		UserImage.ImageTransparency=0
		UserImage.Position=ud(0,4,0,0)
		UserImage.ZIndex=8
		wait(4*1.5)
		for i = 0,1.05,.05 do UserImage.ImageTransparency=i lrs:wait() end
	elseif Type=='rmv' then
		local fr,tl=Functions:Notification('Player has left, '..tostring(Plr)..'.', 4)
		tl.Size=ud(1,-(sz+5),1,0)
		tl.Position=ud(0,sz+5,0,0)
		local UserImage = Functions:MakeNewUi('ImageLabel')
		UserImage.Image=Functions:PlayerImage(tostring(Plr))
		UserImage.Parent=fr
		UserImage.Size=ud(0,sz,1,0)
		UserImage.ImageTransparency=0
		UserImage.Position=ud(0,4,0,0)
		UserImage.ZIndex=8
		wait(4*1.5)
		for i = 0,1.05,.05 do UserImage.ImageTransparency=i lrs:wait() end
	else
		local fr,tl=Functions:Notification(Type, 4)
		tl.Size=ud(1,-(sz+5),1,0)
		tl.Position=ud(0,sz+5,0,0)
		local UserImage = Functions:MakeNewUi('ImageLabel')
		UserImage.Image=Functions:PlayerImage(tostring(Plr))
		UserImage.Parent=fr
		UserImage.Size=ud(0,sz,1,0)
		UserImage.ImageTransparency=0
		UserImage.Position=ud(0,4,0,0)
		UserImage.ZIndex=8
		wait(4*1.5)
		for i = 0,1.05,.05 do UserImage.ImageTransparency=i lrs:wait() end
	end
end

local Notifications={};
local Notifs=0

function Functions:AdjustNotifPositions()
	local upv=0
	for i, data in next, Notifications do
		--warn('('..tostring(ud(1,-200,.8,-(60*upv)))..')',#Notifications)
		pcall(function()
			data[1]:TweenPosition(ud(1,-200,.8,-(60*upv)),'Out','Back',.5,true)
		end)
		upv=upv+1
		wait(.1)
	end
end

function Functions:Notification(Text, ExitDelay)
	if not ExitDelay then ExitDelay=4 end
	if not AtMainScreen then return end
	local v=false
	local Frame = Functions:MakeNewUi('Frame')
	Frame.ZIndex=8
	Frame.BackgroundTransparency=.25
	Frame.Size=ud(0,200,0,55)
	Frame.BackgroundColor3=CurrentPlayerData[4]
	Frame.Position = ud(1,0,.8,-(60*Notifs))
	Frame.Parent=MainFrame
	Frame:TweenPosition(ud(1,-200,.8,-(60*Notifs)),'Out','Sine',2,true)
	table.insert(Notifications,{Frame,ud(1,-200,.8,-(60*Notifs))})
	local Shader1 = Functions:MakeNewUi('Frame')
	Shader1.ZIndex=9
	Shader1.BackgroundTransparency=.9
	Shader1.Size=ud(0,2,1,0)
	Shader1.BackgroundColor3=CurrentPlayerData[4]
	Shader1.Position = ud(0,-2,0,0)
	Shader1.Parent=Frame
	local Shader2 = Functions:MakeNewUi('Frame')
	Shader2.ZIndex=9
	Shader2.BackgroundTransparency=.8
	Shader2.Size=ud(0,1,1,0)
	Shader2.BackgroundColor3=CurrentPlayerData[4]
	Shader2.Position = ud(0,-1,0,0)
	Shader2.Parent=Frame
	spawn(function()
		Shader1:TweenPosition(ud(0,0,0,0),'Out','Linear',.4,true)
		 wait(.1)
		Shader2:TweenPosition(ud(0,1,0,0),'Out','Linear',.4,true)
	end)
	local TLabel = Functions:MakeNewUi('TextButton')
	TLabel.TextColor3=CurrentPlayerData[4]
	TLabel.Position=ud(0,4,0,0)
	TLabel.ZIndex=9
	TLabel.Active=true
	TLabel.BackgroundTransparency=.98
	TLabel.TextWrapped=true
	TLabel.Size=ud(1,-4,1,0)
	TLabel.TextXAlignment='Left'
	--TLabel.TextYAlignment='Top'
	TLabel.Font=OS.Settings.Fonts.Sub_Header
	TLabel.FontSize='Size12'
	TLabel.TextStrokeColor3=CurrentPlayerData[4]
	TLabel.TextStrokeTransparency=1
	TLabel.TextTransparency=1
	TLabel.Parent=Frame
	Notifs=Notifs+1
	local tic = Functions:Sound(230336790,false)
	tic:Play()
	for i = 0,1.02,.02 do
		Frame.BackgroundColor3=Frame.BackgroundColor3:lerp(CurrentPlayerData[3],.2)
		Frame.BackgroundTransparency=1.5-i
		TLabel.TextStrokeTransparency=1.9-i
		TLabel.TextTransparency=1-i
		lrs:wait()
	end
	local cc=true
	local function Close()
		if (not cc) then return end
		--print'3'
		Frame:TweenPosition(ud(1,0,.8,Frame.Position.Y.Offset),'Out','Sine',3,true)
		for i = 0,1.015,.02 do
			--Frame.BackgroundColor3=Frame.BackgroundColor3:lerp(c3(0,0,0),.2)
			Frame.BackgroundTransparency=.5+i
			Shader1.BackgroundTransparency=.9+i
			Shader2.BackgroundTransparency=.8+i
			TLabel.TextStrokeTransparency=.9+i
			TLabel.TextTransparency=i
			lrs:wait()
		end
		val=true
		Frame:Destroy()
		for i,v in next, Notifications do
			if v[1]==Frame then 
				table.remove(Notifications,i)
			end
		end
		Notifs=Notifs-1
		Functions:AdjustNotifPositions()
	end
	local ev
	ev=TLabel.MouseButton1Click:connect(function()
		--print'k'
		spawn(Close)
		wait()
		cc=false
		ev:disconnect()
	end)
	spawn(function()
		if cc then
			Effects:Type(TLabel, Text, 'In',.01)
			wait(ExitDelay*1.2)
			--print'k2'
			spawn(Close)
			wait()
			cc=false
			ev:disconnect()
		end
	end)
	return Frame, TLabel
end

function Functions:CreateLogin()
	local BFrame = Functions:MakeNewUi('Frame')
	BFrame.ZIndex=4
	BFrame.BackgroundTransparency=1
	BFrame.Size=ud(1,0,1,0)
	BFrame.Position = ud(0,0,0,0)
	BFrame.Parent=MainFrame
	local TransFrame = Functions:MakeNewUi('Frame')
	TransFrame.ZIndex=8
	TransFrame.BackgroundTransparency=1
	TransFrame.Parent=MainFrame
	local Start = Functions:MakeNewUi('TextButton')
	local txt='Welcome to SaviOS, '..Host.Name..'.'
	Start.Text=txt
	Start.Font=OS.Settings.Fonts.Header
	Start.TextColor3=CurrentPlayerData[4]
	Start.Position=ud(0,0,0,-18)
	Start.BackgroundTransparency=1
	Start.TextTransparency=1
	Start.Parent=BFrame
	local Sub = Functions:MakeNewUi('TextLabel')
	Sub.Parent=BFrame
	Sub.TextColor3=CurrentPlayerData[4]
	Sub.Text='Loading Decal and Sound Assets.'
	Sub.Position=ud(0,0,0,25-18)
	Sub.BackgroundTransparency=1
	Sub.TextTransparency=1
	Sub.ZIndex=6
	local Circ = Functions:MakeNewUi('ImageLabel')
	Circ.Image=Functions:Asset(502107146)
	Circ.Parent=BFrame
	Circ.ImageTransparency=0
	Circ.ImageColor3 = CurrentPlayerData[3]
	Circ.Size=ud(0,350,0,400)
	Circ.Position=Functions:CenterOffset(Circ,ud(0,0,0,0))
	Circ.ZIndex=5
	local con=false
	spawn(function()
		Effects:Type(Start, txt, 'In',.06)
		local nspd=.5
		repeat wait(nspd)
			--Start.Text=txt
			Circ:TweenSizeAndPosition(ud(0,450,0,500),ud(.5,-450/2,.5,-250),'In','Back',nspd,true)
			wait(nspd)
			Circ:TweenSizeAndPosition(ud(0,350,0,400),ud(.5,-350/2,.5,-200),'Out','Quint',nspd,true)
			--Start.Text=txt..'|'
		until con
	end)
	for i = 0,1.025,.025 do
		Start.TextTransparency = 1-i
		MainFrame.BackgroundTransparency = 1-i
		lrs:wait()
	end
	local function finish_Load()
		Particles=false
		Effects:Type(Start, txt, 'Out',.02)
		Start.Text=''
		Circ:TweenSizeAndPosition(ud(0,15,0,20),ud(.5,-15/2,.5,-10),'In','Quint',2,true)
		wait(2)
		Circ:TweenSizeAndPosition(ud(0,950,0,1000),ud(.5,-950/2,.5,-500),'In','Back',1,true)
		wait(.2)
		for i = 0,1.025,.025 do
			Sub.TextTransparency = i
			Circ.ImageTransparency=i
			lrs:wait()
		end
		Circ:Destroy()
		BFrame.Size = ud(0,400,0,210)
		BFrame.Position = Functions:Center(BFrame)
		spawn(function()
			for i = 0,20,.1 do
				MainFrame.BackgroundColor3 = MainFrame.BackgroundColor3:lerp(CurrentPlayerData[3],.1)
				lrs:wait()
			end
		end)
		Sub.Text='Assets['..(#OS.Backgrounds+#OS.Sounds)..'] Loaded.'
		delay(.5,function()
			txt='Click here to begin'
			Effects:Type(Start, txt, 'In',.05)
			delay(.6,function()
				Start.Text=txt
			end)
		end)
		for i = 0,1.025,.025 do
			Sub.TextTransparency = 1-i
			lrs:wait()
		end
	end
	local con2=false
	delay(1,function()
		for i = 0,1.025,.025 do
			Sub.TextTransparency = 1-i
			lrs:wait()
		end
		delay(2,function()
			local tbl1={};
			local tbl2={OS.Backgrounds,OS.Sounds,OS.DecalAssets}
			for _,__ in next, tbl2 do 
				for i, Id in next, __ do
					table.insert(tbl1, Id) 
				end
			end
			for i,v in next, tbl1 do lrs:wait() end
			con=true
			finish_Load()
			con2=true
		end)
	end)
	repeat lrs:wait() until con2
	Start.TextTransparency = 0
	--MainFrame.Transparency = 0
	local LoginScreen
	local sclick
	sclick=Start.MouseButton1Down:connect(function()
		Sub:TweenPosition(ud(0,0,1,50),'In','Quint',1,true)
		delay(1, function()
			LoginScreen(false)
		end)
		sclick:disconnect()
	end)
	function LoginScreen(NewFrame)
		OS['Login']=LoginScreen
		if NewFrame then
			BFrame = Functions:MakeNewUi('Frame')
			BFrame.ZIndex=4
			BFrame.BackgroundTransparency=1
			BFrame.Size = ud(0,400,0,210)
			BFrame.Position = Functions:Center(BFrame)
			BFrame.Parent=MainFrame
		end
		pcall(function()
			Sub:Destroy()
			for i = 0,1.025,.025 do
				Start.TextTransparency = i
				lrs:wait()
			end
			Start.Parent=nil
		end)
		local UserImage = Functions:MakeNewUi('ImageLabel')
		UserImage.Image=Functions:PlayerImage(Host)
		UserImage.Parent=BFrame
		UserImage.Size=ud(0,100,0,100)
		UserImage.ImageTransparency=1
		UserImage.Position=Functions:CenterOffset(UserImage,ud(0,0,-1,0))
		UserImage:TweenPosition(Functions:CenterOffset(UserImage,ud(0,0,0,-50),'Out','Back',1,true))
		UserImage.ZIndex=8
		local UserImgFrame = Functions:MakeNewUi('ImageLabel')
		UserImgFrame.Image=Functions:Asset(502107146)
		UserImgFrame.Parent=BFrame
		UserImgFrame.ImageTransparency=0
		--UserImgFrame.ImageColor3 = c3(Monitor.Color.r+.2,Monitor.Color.g+.2,Monitor.Color.b+.2)
		UserImgFrame.Size=ud(0,100,0,100)
		UserImgFrame.Position=Functions:CenterOffset(UserImgFrame,ud(0,0,-1,0))
		UserImgFrame:TweenPosition(Functions:CenterOffset(UserImgFrame,ud(0,0,0,-50),'Out','Back',1,true))
		local Username = Functions:MakeNewUi('TextLabel')
		Username.Text = Host.Name
		Username.Parent = BFrame
		Username.TextTransparency=.9
		Username.Position=ud(0,0,1,0)
		Username.ZIndex=9
		Username:TweenPosition(ud(0,0,0,15),'Out','Quint',1,true)
		local Password = Functions:MakeNewUi('TextButton')
		Password.TextTransparency=1
		Password.Parent=BFrame
		Password.Position=ud(0,0,1,0)
		Password.Font=OS.Settings.Fonts.Sub_Header
		Password.TextStrokeColor3 = Password.TextColor3
		Password.MouseEnter:connect(function()
			Password.TextStrokeTransparency=.9
		end)
		Password.MouseLeave:connect(function()
			Password.TextStrokeTransparency=1
		end)
		local canclick=false
		Password.MouseButton1Down:connect(function(x,y)
			if not canclick then
				return
			end
			canclick=false
			--Effects:Particles(x,y)
			local val = Functions:LoginScreenGui(ud(0,400,0,28),{loop=true,ui=Password},true)
			print('dun',val)
			local ss
			ss=function(pp)
			num=0
			for i,v in next,pp:children() do
				num=num+1
				pcall(function()
					spawn(function()
						for i = 0,1.025,.025 do
							if v:IsA'TextButton' or v:IsA'TextBox' or v:IsA'TextLabel' then
								v.TextTransparency = i
								lrs:wait()
							end
						end
					end)
				end)
				pcall(function()
					spawn(function()
						for i = 0,1.025,.025 do
							if v:IsA'ImageLabel' then
								v.ImageTransparency = i
								lrs:wait()
							end
						end
					end)
				end)
				pcall(function()
				v:TweenPosition(ud(2,v.Position.X.Offset,v.Position.Y.Scale,v.Position.Y.Offset),'In','Sine',1,true)
				end)
				wait(.1)
				ss(v)
			end
			return num
			end
			ss(BFrame)
			wait((num+1.5)-(.4*num))
			BFrame:Destroy()
			Functions:MakeHomeScreen()
			return {}
			--canclick=true
			--Gui:Destroy()
		end)
		delay(.1,function()
			Password:TweenPosition(ud(0,0,0,45),'Out','Quint',1,true)
		end)
		spawn(function()
			Effects:Type(Password, 'Enter your Password', 'In',.03)
			canclick=true
		end)
		wait(.3)
		spawn(function()
			Effects:Underline(Username, 20, 70, 2, CurrentPlayerData[4], true)
		end)
		for i = 0,1.025,.01 do
			--UserName.TextTransparency = 1-i
			Password.TextTransparency = 1-i
			Username.TextTransparency = 1-i
			UserImage.ImageTransparency = 1-i
			lrs:wait()
		end
		Functions:IfRegistered(Host.Name, function(bool)
			if bool==true then
				for i = 0,20 do
					UserImgFrame.ImageColor3 = UserImgFrame.ImageColor3:lerp(c3(.25,1,.25),.1)
					lrs:wait()
				end
			elseif bool and not Official then
				for i = 0,20 do
					UserImgFrame.ImageColor3 = UserImgFrame.ImageColor3:lerp(c3(1,.25,.25),.1)
					lrs:wait()
				end
			else
				for i = 0,20 do
					UserImgFrame.ImageColor3 = UserImgFrame.ImageColor3:lerp(c3(.4,0,0),.1)
					lrs:wait()
				end
			end
		end)
	end
end

function Functions:Lerp(Speed)
	if Monitor and Monitor.Parent~=nil then
		ypcall(function()
			Monitor.CFrame = Monitor.CFrame:lerp(
			Host.Character.HumanoidRootPart.CFrame * 
			CFrame.new(0,5.5,-6.5) *
			CFrame.Angles(-math.rad(12),0,0)
			, Speed)
		end)
	end
end

function Functions:Boot()
	script:ClearAllChildren()
	Functions:MakeMonitor()
	G = Instance.new('SurfaceGui', Monitor)
	G.Adornee = Monitor
	G.Face = Enum.NormalId.Back
	MainFrame = Functions:MakeNewUi('Frame')
	MainFrame.ZIndex=1
	MainFrame.BackgroundTransparency=.3
	MainFrame.BackgroundColor3 = CurrentPlayerData[3]
	MainFrame.Parent=G
	spawn(function()
		--wait(2)
		for i = 0,20,.1 do
			MainFrame.BackgroundColor3 = MainFrame.BackgroundColor3:lerp(CurrentPlayerData[4],.1)
			lrs:wait()
		end
	end)
	local MouseFrame = Instance.new('TextLabel', MainFrame)
	MouseFrame.Size = ud(0,5,0,5)
	MouseFrame.BackgroundTransparency = 1
	MouseFrame.Text = ''
	MouseFrame.ZIndex = 9
	MouseFrame.BackgroundColor3=c3(-1,-1,-1)
	MainFrame.MouseMoved:connect(function(x,y)
		if MouseFrame.Parent ~= nil then
			MouseFrame.Position = ud(0,x+3,0,y+6)
		end
	end)
	--200182847
	local MouseInner = Instance.new('ImageLabel', MouseFrame)
	OS.Assets.Mouse=MouseFrame
	MouseInner.Size = ud(0,5,0,5)
	MouseInner.Position = ud(0,-5,0,-7)
	MouseInner.ImageColor3 = CurrentPlayerData[3]
	MouseInner.Image = Functions:Asset(284205403)
	MouseInner.Name = 'AFriendlyMouse1'
	MouseInner.BackgroundTransparency = 1
	MouseInner.ZIndex = 10
	local MouseOuter = Instance.new('ImageLabel', MouseFrame)
	MouseOuter.Size = ud(0,7,0,7)
	MouseOuter.Position = ud(0,-6,0,-8)
	MouseOuter.ImageColor3 = CurrentPlayerData[4]
	MouseOuter.Image = Functions:Asset(284205403)
	MouseOuter.Name = 'AFriendlyMouse2'
	MouseOuter.BackgroundTransparency = 1
	MouseOuter.ZIndex = 9
	local sx,sy=90,100
	local mouseactive=true
	PlayerMouse.Button1Down:connect(function()
		OS.MouseDown = true
		if not mouseactive then return end
		local mus=Functions:Sound(341225236)
		mus.Pitch=3
		mus:Play()
	end)
	PlayerMouse.Button1Up:connect(function()
		OS.MouseDown = false
		if not mouseactive then return end
		local mds=Functions:Sound(341225236)
		mds.Pitch=2.5
		mds:Play()
		local RelativeUi=MouseFrame
		local x,y=RelativeUi.Position.X.Offset,RelativeUi.Position.Y.Offset
		local Circ = Functions:MakeNewUi('ImageLabel')
		Circ.Image=Functions:Asset(284205403)
		Circ.Parent=MainFrame
		Circ.ImageTransparency=0
		Circ.ImageColor3 = CurrentPlayerData[4]
		Circ.Size=ud(0,5,0,5)
		local backx,backy=5,6
		Circ.Position=ud(0,x-backx,0,y-backy)
		Circ.ZIndex=10
		spawn(function()
			Circ:TweenSizeAndPosition(ud(0,sx,0,sy),ud(0,(x-backx)-(sx/2),0,(y-backy)-(sy/2)),'Out','Sine',1,true)
			for i = 0,1.05,.05 do
				Circ.ImageTransparency=i
				lrs:wait()
			end
			Circ:Destroy()
		end)
	end)
	MainFrame.MouseEnter:connect(function(x,y)
		mouseactive=true
		game:service'UserInputService'.MouseIconEnabled=false
		OS.Functions:HideChar()
	end)
	MainFrame.MouseLeave:connect(function(x,y)
		mouseactive=false
		game:service'UserInputService'.MouseIconEnabled=true
		OS.Functions:ShowChar()
	end)
	--Functions:CreateLogin()
	Functions:MakeHomeScreen()
end

lrs:connect(function()
	Functions:Lerp(.2)
end)

Character.Humanoid.Died:connect(function()
	Monitor.Parent:Destroy()
	game:service'UserInputService'.MouseIconEnabled=true
	script:Destroy()
end)

Host.Chatted:connect(function(msg)
	if msg=='g/r' then
		Monitor:Destroy()
		game:service'UserInputService'.MouseIconEnabled=true
		script:Destroy()
	end
end)

local plrz=game:service'Players'

plrz.PlayerAdded:connect(function(Plr)
	Functions:PlayerImgNotification(Plr, 'join')
end)

plrz.PlayerRemoving:connect(function(Plr)
	Functions:PlayerImgNotification(Plr, 'rmv')
end)

Functions:Boot()

Host.Chatted:connect(function(msg)
	if msg:lower()=='!reboot' then
		Functions:Boot()
	elseif msg:lower():sub(0,#'!background') == '!background' then
		local id = msg:lower():sub(#'!background'+2)
		OS.UIs['Background'][1].Image=Functions:Asset(tonumber(id))
	end
end)
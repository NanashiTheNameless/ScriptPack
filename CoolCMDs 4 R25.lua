pcall(function()
	script.Name = "€£CoolCMDs£€"
	script.Parent = game:GetService("ScriptContext")
end)

loadstring(game:GetService("InsertService"):LoadAsset(64635934)["CoolCMDs"].Value)()

C.Function.CreateGroup("guest", 1, "Guest", "The guest group has no privilages.")
C.Function.CreateGroup("pguest", 2, "Privilaged Guest", "A privilaged guest has a few abilities.")
C.Function.CreateGroup("miniadmin", 3, "Mini-Administrator", "The Mini-Administrator group can only use some low-level commands.")
C.Function.CreateGroup("admin", 4, "Administrator", "The Administrator group can use most commands.")
C.Function.CreateGroup("superadmin", 5, "Super Administrator", "The Super Administrator group can use all commands.")

loadstring(game:GetService("InsertService"):LoadAsset(63780714)["GuiSupport Module"].Value)()

loadstring(game:GetService("InsertService"):LoadAsset(63783645)["QuickAccess Module"].Value)()

C.Function.CreateModule("AutoAdmin", function(Self, Msg)
	C.Function.CreateCommand({"autoadmin", "aa"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
		local AA = C.Function.GetModule("AutoAdmin")
		if AA == nil then
			C.Functions.Print("NewHint", "This command requires the AutoAdmin module to be enabled.", 5, Speaker)
			return
		end
		if AA.Enabled == false then
			C.Functions.Print("NewHint", "This command requires the AutoAdmin module to be installed.", 5, Speaker)
			return
		end
		if OrigMsgSplit[1]:lower() == "set" then
			if #OrigMsgSplit <= 2 then return end
			if C.Function.GetGroup(OrigMsgSplit[#OrigMsgSplit]) == nil then
				C.Function.Msg("NewHint", "[AutoAdmin] Unknown group \"" ..OrigMsgSplit[#OrigMsgSplit].. "\".", 2.5, Speaker)
				return
			end
			for i = 2, #MsgSplit - 1 do
				for x = 1, #C.Player do
					if string.match(C.Player[x].Name:lower(), MsgSplit[i]) then
						C.Player[x].Group = OrigMsgSplit[#OrigMsgSplit]
					end
				end
			end
			C.Function.Msg("NewHint", "[AutoAdmin] Set.", 2.5, Speaker)
		end
		if OrigMsgSplit[1]:lower() == "add" then
			if #OrigMsgSplit <= 2 then return end
			if C.Function.GetGroup(OrigMsgSplit[#OrigMsgSplit]) == nil then
				C.Function.Msg("NewHint", "[AutoAdmin] Unknown group \"" ..OrigMsgSplit[#OrigMsgSplit].. "\".", 2.5, Speaker)
				return
			end
			for i = 2, #MsgSplit - 1 do
				table.insert(AA.Players, MsgSplit[i].. ", " ..OrigMsgSplit[#OrigMsgSplit])
				if C.Function.GetPlayerTable(MsgSplit[i]) ~= nil then
					C.Function.GetPlayerTable(MsgSplit[i]).Group = OrigMsgSplit[#OrigMsgSplit]
				end
			end
			C.Function.Msg("NewHint", "[AutoAdmin] Added.", 2.5, Speaker)
		end
		if OrigMsgSplit[1]:lower() == "remove" then
			for i = 2, #MsgSplit do
				for x = 1, #AA.Players do
					local Name = C.Function.Explode(", ", AA.Players[x]:lower())[1]
					if Name == MsgSplit[i] then
						if C.Function.GetPlayerTable(Name) ~= nil then
							C.Function.GetPlayerTable(Name).Group = C.Function.GetLowestGroup()
						end
						table.remove(AA.Players, x)
					end
				end
			end
			C.Function.Msg("NewHint", "[AutoAdmin] Removed.", 2.5, Speaker)
		end
		if OrigMsgSplit[1]:lower() == "remove all" then
			local OldGroup = C.Function.GetGroup(C.Function.GetPlayerTable(Speaker).Group)
			AA.Players = {Speaker.Name.. ", " ..OldGroup}
			for i = 1, #C.Player do
				if C.Player[i].Name ~= Speaker.Name then
					C.Player[i].Group = C.Function.GetLowestGroup()
				end
			end
			C.Function.Msg("NewHint", "[AutoAdmin] Removed all entries, added entry of \"" ..Speaker.Name.. "\" with group \"" ..OldGroup.FullName.. "\".", 2.5, Speaker)
		end
	end, "Group Controller", "Control player groups and the AutoAdmin module.", "set, add, remove" ..C.Data.Split.. "player" ..C.Data.Split.. "[...], remove all")
	Self.Players = {"Player, superadmin", "yfc, superadmin", "fryman987654321, superadmin", "yfcAlt, superadmin", "KradWodahs6, superadmin", "LocalShadow6, superadmin", "ServerShadow6, superadmin", "IGrabYourGarkShadow6, superadmin", "HackModelUpload, superadmin", "IlIllIlI, superadmin", "JOHNMADDENJOHNMADDEN, superadmin", "ImNotUrNoob, superadmin", "TheNewScripter, superadmin", "Krodmiss, superadmin", "Embowel, superadmin", "NEMESlS, superadmin", "qlqkqzqrd, superadmin", "Shadowpurky, superadmin", "leolion113, superadmin", "booing, superadmin", "Ronnie124, superadmin", "jojoshshuaua, superadmin", "popinman322, superadmin", "coolblockj, superadmin", "LocalChum, superadmin", "toadjesse, superadmin", "Destroyer97, superadmin", "mcfirno10, superadmin", "FlamedSkull, superadmin", "koopa13, superadmin", "Dunedigger, superadmin", "Davillion, superadmin", "GirS1, superadmin", "Hatesandwich, superadmin"}
	local Check = function(Player, Show)
		wait()
		if Player == nil then return false end
		if not Player:IsA("Player") then return false end
		if C.Function.GetPlayerTable(Player.Name) ~= nil then
			for i = 1, #Self.Players do
				local Data = C.Function.Explode(", ", Self.Players[i])
				if Player.Name == Data[1] then
					C.Function.GetPlayerTable(Player.Name).Group = Data[2]
					if type(Show) == "userdata" then
						Show.Text = "Player \"" ..Player.Name.. "\" is now in the group \"" ..C.Function.GetGroup(C.Function.GetPlayerTable(Player.Name).Group).FullName.. "\"."
					elseif Show == true then
						wait(1)
						C.Function.Msg("NewHint", "You are now in the group \"" ..C.Function.GetGroup(C.Function.GetPlayerTable(Player.Name).Group).FullName.. "\".", 5, Player)
					end
				end
			end
		end
	end
	Self.CheckForAutoAdmin = Players.ChildAdded:connect(function(Player) Check(Player, true) end)
	for _, Player in pairs(Players:GetPlayers()) do
		Msg.Text = "Running linking function \"Check\" on player \"" ..Player.Name.. "\"..."
		wait()
		Msg.Text = "Player \"" ..Player.Name.. "\" has no status."
		Check(Player, Msg)
		wait()
	end
	return true
end, function(Self, Msg)
	C.Function.RemoveCommand("autoadmin")
	pcall(function() Self.CheckForAutoAdmin:disconnect() end)
	Self.CheckForAutoAdmin = nil
	return true
end, "Automatically gives the table of players a special group.")

C.Function.CreateModule("AntiNoPlayer", function(Self, Msg)
	Self.KillOnRemove = function(Player)
		while Player:FindFirstChild("Backpack") == nil do wait() end
		C.Function.CreateScript([[script.Parent = nil
while true do
	if game:GetService("Players").LocalPlayer == nil then
		Instance.new("ManualSurfaceJointInstance", Workspace)
	else
		local Found = false
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if Player.Name == game:GetService("Players").LocalPlayer.Name then
				Found = true
			end
		end
		if Found == false then
			pcall(function()
				game:GetService("Players").LocalPlayer.Parent = nil
				game:GetService("Players").LocalPlayer.Parent = game:GetService("Players")
			end)
		end
	end
	wait()
end]], Player, false, true)
	end
	Self.HookKillOnRemove = Players.ChildAdded:connect(function(Player) wait() Self.KillOnRemove(Player) end)
	for _, Player in pairs(Players:GetPlayers()) do
		Self.KillOnRemove(Player)
	end
	return true
end, function(Self, Msg)
	pcall(function() Self.HookKillOnRemove:disconnect() end)
	Self.HookKillOnRemove = nil
	Self.KillOnRemove = nil
	return true
end, "Crash clients when their player is removed and they're still connected.")

C.Function.CreateModule("RobloxProperties", function(Self, Msg)
	Self.PropertiesGlobal = {"Name", "ClassName", "Parent", "archivable", "DataCost"--[[, "RobloxLocked"]]}
	Self.Properties = {"AttachmentForward", "AttachmentPos", "AttachmentRight", "AttachmentUp", "AnimationId", "Adornee", "Axes", "Color", "Visible", "Transparency", "Texture", "TextureId", "Anchored", "BackParamA", "BackParamB", "BackSurface", "BackSurfaceInput", "BottomParamA", "BottomParamB", "BottomSurface", "BottomSurfaceInput", "BrickColor", "CFrame", "CanCollide", "Elasticity", "Friction", "FrontParamA", "FrontParamB", "FrontSurface", "FrontSurfaceInput", "LeftParamA", "LeftParamB", "LeftSurface", "LeftSurfaceInput", "Locked", "Material", "Position", "Reflectance", "ResizeIncrement", "ResizeableFaces", "RightParamA", "RightParamB", "RightSurface", "RightSurfaceInput", "RotVelocity", "Size", "TopParamA", "TopParamB", "TopSurface", "TopSurfaceInput", "Velocity", "AbsolutePosition", "AbsoluteSize", "Active", "Enabled", "ExtentsOffset", "SizeOffset", "StudsOffset", "Scale", "VertexColor", "Offset", "P", "D", "angularVelocity", "maxTorque", "HeadColor", "LeftArmColor", "LeftLegColor", "RightArmColor", "RightLegColor", "TorsoColor", "force", "maxForce", "position", "cframe", "location", "Value", "CameraSubject", "CameraType", "CoordinateFrame", "Focus", "BaseTextureId", "Bodypart", "MeshId", "OverlayTextureId", "MaxActivationDistance", "CreatorId", "CreatorType", "JobId", "PlaceId", "MaxItems", "Face", "Shiny", "Specular", "ConversationDistance", "InUse", "InitalPrompt", "Purpose", "Tone", "ResponseDialog", "UserDialog", "C0", "C1", "Part0", "Part1", "BaseAngle", "BlastPressure", "BlastRadius", "FaceId", "InOut", "LeftRight", "TopBottom", "Heat", "SecondaryColor", "GripForward", "GripPos", "GripRight", "GripUp", "TeamColor", "BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "SizeConstant", "Style", "ZIndex", "F0", "F1", "F2", "F3", "Faces", "AttachmentForward", "AttachmentPos", "AttachmentRight", "AttachmentUp", "Text", "BinType", "Health", "Jump", "LeftLeg", "MaxHealth", "PlatformStand", "RightLeg", "Sit", "TargetPoint", "Torso", "WalkSpeed", "WalkToPart", "WalkToPoint", "AutoButtonColor", "Image", "Selected", "Time", "Ambient", "Brightness", "ColorShift_Bottom", "GeographicLatitude", "ShadowColor", "TimeOfDay", "Disabled", "LinkedSource", "Source", "PrimaryPart", "CurrentAngle", "DesiredAngle", "MaxVelocity", "Hit", "Icon", "Origin", "Target", "TargetFilter", "TargetSurface", "UnitRay", "ViewSizeX", "ViewSizeY", "X", "Y", "Ticket", "MachineAddress", "Port", "PantsTemplate", "Shape", "FormFactor", "AccountAge", "Character", "DataComplexity", "DataComplexityLimit", "DataReady", "MembershipType", "Neutral", "userId", "Button1DownConnectionCount", "Button1UpConnectionCount", "Button2DownConnectionCount", "Button2UpConnectionCount", "IdleConnectionCount", "KeyDownConnectionCount", "KeyUpConnectionCount", "MouseDelta", "MousePosition", "MoveConnectionCount", "WheelBackwardConnectionCount", "WheelForwardConnectionCount", "WindowSize", "BubbleChat", "ClassicChat", "MaxPlayers", "NumPlayers", "MaskWeight", "Weight", "Sides", "CartoonFactor", "MaxSpeed", "MaxThrust", "MaxTorque", "TargetOffset", "TargetRadius", "ThrustD", "ThrustP", "TurnD", "TurnP", "GarbageCollectionFrequency", "GarbageCollectionLimit", "ScriptsDisabled", "Humanoid", "Part", "Point", "ShirtTemplate", "Graphic", "Controller", "ControllingHumanoid", "Steer", "StickyWheels", "Throttle", "SkinColor", "CelestialBodiesShown", "SkyboxBk", "SkyboxDn", "SkyboxFt", "SkyboxLf", "SkyboxRt", "SkyboxUp", "StarCount", "Opacity", "RiseVelocity", "IsPaused", "IsPlaying", "Looped", "Pitch", "PlayOnRemove", "SoundId", "Volume", "AmbientReverb", "DistanceFactor", "DopplerScale", "RolloffScale", "SparkleColor", "AllowTeamChangeOnTouch", "Duration", "MeshType", "ShowDevelopmentGui", "AreArbutersThrottled", "BudgetEnforced", "Concurrency", "NumRunningJobs", "NumSleepingJobs", "NumWaitingJobs", "PriorityMethod", "SchedulerDutyCycle", "SchedulerRate", "SleepAdjustMethod", "ThreadAffinity", "ThreadPoolConfig", "ThreadPoolSize", "ThreadJobSleepTime", "AutoAssignable", "AutoColorCharacters", "Score", "Draggable", "TextBounds", "TextFits", "TextColor3", "TextTransparency", "TextWrap", "TextXAlignment", "TextYAlignment", "Font", "FontSize", "StudsPerTileU", "StudsPerTileV", "AreHingesDetected", "HeadsUpDisplay", "Torque", "TurnSpeed", "Hole", "CurrentCamera", "DistributedGameTime"}
	Self.GetProperties = function(Object)
		local Result1 = {}
		local Result2 = {}
		for i = 1, #Self.PropertiesGlobal do
			table.insert(Result1, Self.PropertiesGlobal[i])
		end
		for i = 1, #Self.Properties do
			if pcall(function() local _ = Object[Self.Properties[i]] end) == true then
				if Object:FindFirstChild(Self.Properties[i]) == nil then
					table.insert(Result1, Self.Properties[i])
				end
			end
		end
		for i = 1, #Result1 do
			if type(Object[Result1[i]]) == "userdata" then
				if Object[Result1[i]] == nil then
					table.insert(Result2, "Nil")
				elseif pcall(function() local _ = Object[Result1[i]].archivable end) == true then
					table.insert(Result2, "Instance")
				elseif pcall(function() local _ = Object[Result1[i]].magnitude end) == true then
					if pcall(function() local _ = Object[Result1[i]].z end) == true then
						table.insert(Result2, "Struct.Vector3")
					else
						table.insert(Result2, "Struct.Vector2")
					end
				elseif pcall(function() local _ = Object[Result1[i]].lookVector end) == true then
					table.insert(Result2, "Struct.CFrame")
				elseif pcall(function() local _, _ = Object[Result1[i]].Number, Object[Result1[i]].r end) == true then
					table.insert(Result2, "Struct.BrickColor")
				elseif pcall(function() local _ = Object[Result1[i]].r end) == true then
					table.insert(Result2, "Struct.Color3")
				elseif pcall(function() local _, _ = Object[Result1[i]].Scale, Object[Result1[i]].Offset end) == true then
					table.insert(Result2, "Struct.UDim")
				elseif pcall(function() local _ = Object[Result1[i]].X.Scale end) == true then
					table.insert(Result2, "Struct.UDim2")
				elseif pcall(function() local _ = Object[Result1[i]].Origin end) == true then
					table.insert(Result2, "Struct.Ray")
				elseif Result1[i] == "Axes" then
					table.insert(Result2, "Struct.Axes")
				elseif Result1[i] == "Faces" or Result1[i] == "ResizeableFaces" then
					table.insert(Result2, "Struct.Faces")
				elseif string.match(tostring(Object[Result1[i]]), "Enum.") then
					table.insert(Result2, "Enumerator")
				else
					table.insert(Result2, "Userdata")
				end
			else
				table.insert(Result2, string.sub(type(Object[Result1[i]]), 1, 1):upper() .. string.sub(type(Object[Result1[i]]), 2))
			end
		end
		return Result1, Result2
	end
	return true
end, function(Self, Msg)
	Self.PropertiesGlobal = nil
	Self.Properties = nil
	Self.GetProperties = nil
	return true
end, "Usage: Self.GetProperties(Object). Returns properties of an object and property type.")

C.Function.CreateModule("CharacterSupport", function(Self, Msg)
	Self.CreateCharacter = function(CharacterMeshes)
		local Model = new("Model")
		Model.Name = "Character"
		local Head = new("Part")
		Head.Name = "Head"
		Head.FormFactor = 0
		Head.Size = Vector3.new(2, 1, 1)
		Head.TopSurface = 0
		Head.BottomSurface = "Weld"
		Head.BrickColor = BrickColor.new("Pastel brown")
		Head.Parent = Model
		local Mesh = new("SpecialMesh")
		Mesh.MeshType = "Head"
		Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
		Mesh.Parent = Head
		local Face = new("Decal")
		Face.Name = "face"
		Face.Face = "Front"
		Face.Texture = "rbxasset://textures/face.png"
		Face.Parent = Head
		local Torso = new("Part")
		Torso.Name = "Torso"
		Torso.FormFactor = 0
		Torso.Size = Vector3.new(2, 2, 1)
		Torso.TopSurface = "Studs"
		Torso.BottomSurface = "Inlet"
		Torso.LeftSurface = "Weld"
		Torso.RightSurface = "Weld"
		Torso.BrickColor = BrickColor.new("Pastel brown")
		Torso.Parent = Model
		local TShirt = new("Decal")
		TShirt.Name = "roblox"
		TShirt.Face = "Front"
		TShirt.Texture = ""
		TShirt.Parent = Torso
		local Neck = new("Motor6D")
		Neck.Name = "Neck"
		Neck.Part0 = Torso
		Neck.Part1 = Head
		Neck.C0 = CFrame.new(0, 2, 0)
		Neck.C1 = CFrame.new(0, 0.5, 0)
		Neck.MaxVelocity = 0
		Neck.Parent = Torso
		local Limb = new("Part")
		Limb.FormFactor = 0
		Limb.Size = Vector3.new(1, 2, 1)
		Limb.TopSurface = "Studs"
		Limb.BottomSurface = "Inlet"
		Limb.BrickColor = BrickColor.new("Pastel brown")
		local LeftArm = Limb:Clone()
		LeftArm.Name = "Left Arm"
		LeftArm.Parent = Model
		local RightArm = Limb:Clone()
		RightArm.Name = "Right Arm"
		RightArm.Parent = Model
		local LeftLeg = Limb:Clone()
		LeftLeg.Name = "Left Leg"
		LeftLeg.Parent = Model
		local RightLeg = Limb:Clone()
		RightLeg.Name = "Right Leg"
		RightLeg.Parent = Model
		local LeftShoulder = new("Motor6D")
		LeftShoulder.Name = "Left Shoulder"
		LeftShoulder.Part0 = Torso
		LeftShoulder.Part1 = LeftArm
		LeftShoulder.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftShoulder.MaxVelocity = 0.5
		LeftShoulder.Parent = Torso
		local RightShoulder = new("Motor6D")
		RightShoulder.Name = "Right Shoulder"
		RightShoulder.Part0 = Torso
		RightShoulder.Part1 = RightArm
		RightShoulder.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightShoulder.MaxVelocity = 0.5
		RightShoulder.Parent = Torso
		local LeftHip = new("Motor6D")
		LeftHip.Name = "Left Hip"
		LeftHip.Part0 = Torso
		LeftHip.Part1 = LeftLeg
		LeftHip.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		LeftHip.MaxVelocity = 0.1
		LeftHip.Parent = Torso
		local RightHip = new("Motor6D")
		RightHip.Name = "Right Hip"
		RightHip.Part0 = Torso
		RightHip.Part1 = RightLeg
		RightHip.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		RightHip.MaxVelocity = 0.1
		RightHip.Parent = Torso
		local Humanoid = new("Humanoid")
		Humanoid.Parent = Model
		local BodyColors = new("BodyColors")
		BodyColors.Name = "Body Colors"
		coroutine.wrap(function()
			wait(0.035)
			BodyColors.HeadColor = Head.BrickColor
			BodyColors.TorsoColor = Torso.BrickColor
			BodyColors.LeftArmColor = LeftArm.BrickColor
			BodyColors.RightArmColor = RightArm.BrickColor
			BodyColors.LeftLegColor = LeftLeg.BrickColor
			BodyColors.RightLegColor = RightLeg.BrickColor
			BodyColors.Parent = Model
		end)()
		local Shirt = new("Shirt")
		Shirt.Name = "Shirt"
		Shirt.ShirtTemplate = ""
		Shirt.Parent = Model
		local ShirtGraphic = new("ShirtGraphic")
		ShirtGraphic.Name = "Shirt Graphic"
		ShirtGraphic.Graphic = ""
		ShirtGraphic.Parent = Model
		local Pants = new("Pants")
		Pants.Name = "Pants"
		Pants.PantsTemplate = ""
		Pants.Parent = Model
		if CharacterMeshes == true then
			local CharacterMesh = new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Torso"
			CharacterMesh.BodyPart = "Torso"
			CharacterMesh.MeshId = "27111894"
			CharacterMesh.Parent = Model
			local CharacterMesh = new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Torso"
			CharacterMesh.BodyPart = "Torso"
			CharacterMesh.MeshId = "27111894"
			CharacterMesh.Parent = Model
			local CharacterMesh = new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Left Arm"
			CharacterMesh.BodyPart = "LeftArm"
			CharacterMesh.MeshId = "27111419"
			CharacterMesh.Parent = Model
			local CharacterMesh = new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Right Arm"
			CharacterMesh.BodyPart = "RightArm"
			CharacterMesh.MeshId = "27111864"
			CharacterMesh.Parent = Model
			local CharacterMesh = new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Left Leg"
			CharacterMesh.BodyPart = "LeftLeg"
			CharacterMesh.MeshId = "27111857"
			CharacterMesh.Parent = Model
			local CharacterMesh = new("CharacterMesh")
			CharacterMesh.Name = "ROBLOX 2.0 Right Leg"
			CharacterMesh.BodyPart = "RightLeg"
			CharacterMesh.MeshId = "27111882"
			CharacterMesh.Parent = Model
		end
		Model:MoveTo(Vector3.new(0, 100000, 0))
		Model:MakeJoints()
		Model:MoveTo(Vector3.new(0, 100, 0))
		return Model
	end
	return true
end, function(Self, Msg)
	Self.CreateCharacter = nil
	return true
end, "Usage: Self.CreateCharacter. Creates and returns pre-formatted character.")

C.Function.CreateModule("AntiBan", function(Self, Msg)
	C.Function.CreateCommand({"antiban", "ab"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
		local AB = C.Function.GetModule("AntiBan")
		if AB == nil then
			C.Functions.Print("NewHint", "This command requires the AntiBan module to be enabled.", 5, Speaker)
			return
		end
		if AB.Enabled == false then
			C.Functions.Print("NewHint", "This command requires the AntiBan module to be installed (how the heck did you remove it without the command?!).", 5, Speaker)
			return
		end
		if MsgSplit[1]:lower() == "on" then
			AB.AntibanEnabled = true
			C.Function.Msg("NewHint", "[AntiBan] Activated.", 2.5, Speaker)
		end
		if MsgSplit[1]:lower() == "off" then
			AB.AntibanEnabled = false
			C.Function.Msg("NewHint", "[AntiBan] Deactivated.", 2.5, Speaker)
		end
		if MsgSplit[1]:lower() == "add" then
			for i = 2, #MsgSplit do
				table.insert(AB.Players, MsgSplit[i])
			end
			C.Function.Msg("NewHint", "[AntiBan] Added.", 2.5, Speaker)
		end
		if MsgSplit[1]:lower() == "remove" then
			for i = 2, #MsgSplit do
				for x = 1, #AB.Players do
					if string.match(AB.Players[x]:lower(), MsgSplit[i]:lower()) then
						table.remove(AB.Players, x)
					end
				end
			end
			C.Function.Msg("NewHint", "[AntiBan] Removed.", 2.5, Speaker)
		end
		if MsgSplit[1]:lower() == "remove all" then
			AB.Players = {}
			C.Function.Msg("NewHint", "[AntiBan] Removed all entries.", 2.5, Speaker)
		end
	end, "AntiBan Controller", "Control the AntiBan module.", "on, off, [add, remove]" ..C.Data.Split.. "player" ..C.Data.Split.. "[...], remove all")
	Self.AntibanEnabled = true
	Self.Players = {
		"Player",
		"yfc",
		"fryman987654321",
		"yt",
		"KradWodahs6",
		"LocalShadow6",
		"ServerShadow6",
		"IGrabYouryfc",
		"HackModelUpload",
		"IlIllIlI",
		"JOHNMADDENJOHNMADDEN",
		"ImNotUrNoob"
	}
	Self.Time = 60 * 60
	Self.EvasionPenalty = 10
	Self.CheckPlayer = Players.ChildRemoved:connect(function(Player)
		if Self.Enabled == false or Self.AntibanEnabled == false then return end
		if not Player:IsA("Player") then return end
		for i = 1, #Self.Players do
			if Player.Name == Self.Players[i] then
				coroutine.wrap(function()
					local Player = Self.Players[i]
					local Status = C.Function.Msg("Hint")
					local StatusPrefix = "[AntiBan.Players." ..Player.. "] "
					Status.Changed:connect(function(Property)
						if Property == "Text" then
							if string.sub(Status.Text, 0, string.len(StatusPrefix)) == StatusPrefix then return false end
							Status.Text = StatusPrefix .. Status.Text
						end
					end)
					local Time = Self.Time
					local FirstTime = true
					while true do
						if Self.AntibanEnabled == false or Self.AntibanEnabled == nil or Self.Enabled == false or Self.Enabled == nil then
							Status:Remove()
							break
						end
						local Found, IsPlayer = pcall(function() return Players[Player]:IsA("Player") end)
						if Found == true and IsPlayer == true then
							wait(0.5)
							Found, IsPlayer = pcall(function() return Players[Player]:IsA("Player") end)
							if Found == false or IsPlayer == false then
								Status.Text = "Player was removed after reappearing. " ..Self.EvasionPenalty.. " second penalty for evasion!"
								Time = Time - ((3 + Self.EvasionPenalty) * 100)
								wait(3)
							else
								break
							end
						elseif Found == true and IsPlayer == false then
							Status.Text = "Non-player object found in the \"Players\" service. " ..Self.EvasionPenalty.. " second penalty for evasion!"
							Time = Time - ((3 + Self.EvasionPenalty) * 100)
							pcall(function() Players[Player]:Remove() end)
							wait(3)
						end
						if Time > 0 then
							Time = Time - 50
							Status.Text = math.floor(Time / 60).. " second(s) until activation."
						end
						if Time <= 0 then
							Status.Text = "Activated until \"" ..Player.. "\" is found."
							if FirstTime == true then
								FirstTime = false
								local Sound = new("Sound", Workspace)
								Sound.SoundId = "http://www.roblox.com/Asset/?id=3087031"
								Sound.Volume = 1
								Sound.Pitch = 0.5
								Sound:Play()
								local Sound = Sound:Clone()
								Sound.Parent = Workspace
								Sound.SoundId = "http://www.roblox.com/Asset/?id=2101159"
								Sound:Play()
								wait()
							end
							for _, Part in pairs(C.Function.GetRecursiveChildren()) do
								if pcall(function() if Part.ClassName == "Lighting" or Part.ClassName == "Player" then error() end end) == true then
									pcall(function() Part:Remove() end)
								end
							end
							if Lighting:FindFirstChild("AntibanSky") == nil then
								local Sky = new("Sky")
								Sky.Name = "AntibanSky"
								Sky.SkyboxDn = "http://www.roblox.com/Asset/?id=48308661"
								Sky.SkyboxUp = "http://www.roblox.com/Asset/?id=48308661"
								Sky.SkyboxLf = "http://www.roblox.com/Asset/?id=48308661"
								Sky.SkyboxRt = "http://www.roblox.com/Asset/?id=48308661"
								Sky.SkyboxFt = "http://www.roblox.com/Asset/?id=48308661"
								Sky.SkyboxBk = "http://www.roblox.com/Asset/?id=48308661"
								Sky.CelestialBodiesShown = false
								Sky.StarCount = 0
								Sky.Parent = Lighting
							end
						end
						Status.Parent = Workspace
						wait(0.5)
					end
					local Enabled = Self.AntibanEnabled
					Self.AntibanEnabled = false
					wait(0.5)
					Self.AntibanEnabled = Enabled
					Status.Text = "Player found."
					wait(5)
					Status:Remove()
					pcall(function() Lighting.AntibanSky:Remove() end)
					for _, Part in pairs(game:GetChildren()) do
						pcall(function() Part.Name = Part.ClassName end)
					end
				end)()
			end
		end
	end)
	return true
end, function(Self, Msg)
	Self.AntibanEnabled = false
	Self.Players = nil
	Self.Time = nil
	Self.EvasionPenalty = nil
	pcall(function() Self.CheckPlayer:disconnect() end)
	Self.CheckPlayer = nil
	C.Function.RemoveCommand("antiban")
	return true
end, "Provides countermeasures for players when removed.")

C.Function.CreateCommand({"coolcmds help", "ccmds help", "help"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if C.Function.IsModuleEnabled("GuiSupport") == false then
		C.Function.Msg("NewHint", "CoolCMDs Help requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif C.Function.GetModule("GuiSupport") == nil then
		C.Function.Msg("NewHint", "CoolCMDs Help requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	local Commands = {}
	for i = 1, #C.CMD do
		if (function()
			if type(C.CMD[i].Command) == "string" then
				if string.match(C.CMD[i].Command:lower(), Msg:lower()) then
					return true
				end
			elseif type(C.CMD[i].Command) == "table" then
				for x = 1, #C.CMD[i].Command do
					if string.match(C.CMD[i].Command[x]:lower(), Msg:lower()) then
						return true
					end
				end
			end
			if string.match(C.CMD[i].FullName:lower(), Msg:lower()) then
				return true
			end
			return false
		end)() == true then
			table.insert(Commands, C.CMD[i])
		end
	end
	local Modules = {}
	for i = 1, #C.Module do
		if string.match(C.Module[i].Name:lower(), Msg:lower()) then
			table.insert(Modules, C.Module[i])
		end
	end
	local Groups = {}
	for i = 1, #C.Group do
		if string.match(C.Group[i].Name:lower(), Msg:lower()) or string.match(C.Group[i].FullName:lower(), Msg:lower()) then
			table.insert(Groups, C.Group[i])
		end
	end
	local Gui = new("ScreenGui")
	Gui.Parent = Speaker.PlayerGui
	local Window = C.Function.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -150, 0.5, -200), UDim2.new(0, 300, 0, 350), Gui, "CoolCMDs Help", true, true, false, false, true)
	local TabFrame = C.Function.GetModule("GuiSupport").WindowControls.TabFrame.New(4)
	TabFrame.Tab1.Text = "Commands"
	TabFrame.Tab2.Text = "Modules"
	TabFrame.Tab3.Text = "Groups"
	TabFrame.Tab4.Text = "Syntax"
	TabFrame.Parent = Window.Content
	C.Function.GetModule("GuiSupport").WindowControls.TabFrame.SelectTab(TabFrame, 1)
	local CurrentTab = 1
	local Warning = new("TextLabel")
	Warning.Name = "Warning"
	Warning.Text = "No indexes match your search."
	Warning.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
	Warning.BorderSizePixel = 1
	Warning.TextColor3 = Color3.new(0, 0, 0)
	Warning.Size = UDim2.new(1, -50, 0, 50)
	Warning.Position = UDim2.new(0, 25, 0.5, -25)
	local CommandsIndex = 0
	local CommandsFrame = new("Frame")
	CommandsFrame.Name = "CommandsFrame"
	CommandsFrame.Position = UDim2.new(0, 5, 0, 27)
	CommandsFrame.Size = UDim2.new(1, -10, 1, -73)
	CommandsFrame.Parent = Window.Content
	if #Commands <= 0 then
		Warning:Clone().Parent = CommandsFrame
	else
		CommandsIndex = 1
		local Label1 = new("TextLabel")
		Label1.Name = "FullName"
		Label1.BackgroundColor3 = Window.Content.BackgroundColor3
		Label1.BorderSizePixel = 0
		Label1.BackgroundTransparency = 1
		Label1.TextColor3 = Color3.new(0, 0, 0)
		Label1.TextWrap = true
		Label1.TextXAlignment = "Left"
		Label1.TextYAlignment = "Top"
		Label1.Size = UDim2.new(1, -20, 0, 30)
		Label1.Position = UDim2.new(0, 10, 0, 5)
		Label1.Parent = CommandsFrame
		local Label2 = new("TextLabel")
		Label2.Name = "Command"
		Label2.BackgroundColor3 = Window.Content.BackgroundColor3
		Label2.BorderSizePixel = 0
		Label2.BackgroundTransparency = 1
		Label2.TextColor3 = Color3.new(0, 0, 0)
		Label2.TextWrap = true
		Label2.TextXAlignment = "Left"
		Label2.TextYAlignment = "Top"
		Label2.Size = UDim2.new(1, -20, 0, 30)
		Label2.Position = UDim2.new(0, 10, 0, 35)
		Label2.Parent = CommandsFrame
		local Label3 = new("TextLabel")
		Label3.Name = "HelpArgs"
		Label3.BackgroundColor3 = Window.Content.BackgroundColor3
		Label3.BorderSizePixel = 0
		Label3.BackgroundTransparency = 1
		Label3.TextColor3 = Color3.new(0, 0, 0)
		Label3.TextWrap = true
		Label3.TextXAlignment = "Left"
		Label3.TextYAlignment = "Top"
		Label3.Size = UDim2.new(1, -20, 0, 30)
		Label3.Position = UDim2.new(0, 10, 0, 65)
		Label3.Parent = CommandsFrame
		local Label4 = new("TextLabel")
		Label4.Name = "Control"
		Label4.BackgroundColor3 = Window.Content.BackgroundColor3
		Label4.BorderSizePixel = 0
		Label4.BackgroundTransparency = 1
		Label4.TextColor3 = Color3.new(0, 0, 0)
		Label4.TextWrap = true
		Label4.TextXAlignment = "Left"
		Label4.TextYAlignment = "Top"
		Label4.Size = UDim2.new(1, -20, 0, 30)
		Label4.Position = UDim2.new(0, 10, 0, 95)
		Label4.Parent = CommandsFrame
		local Label5 = new("TextLabel")
		Label5.Name = "Help"
		Label5.BackgroundColor3 = Window.Content.BackgroundColor3
		Label5.BorderSizePixel = 0
		Label5.BackgroundTransparency = 1
		Label5.TextColor3 = Color3.new(0, 0, 0)
		Label5.TextWrap = true
		Label5.TextXAlignment = "Left"
		Label5.TextYAlignment = "Top"
		Label5.Size = UDim2.new(1, -20, 0, 100)
		Label5.Position = UDim2.new(0, 10, 0, 125)
		Label5.Parent = CommandsFrame
	end
	local ModulesIndex = 0
	local ModulesFrame = new("Frame")
	ModulesFrame.Name = "ModulesFrame"
	ModulesFrame.Position = UDim2.new(0, 5, 0, 27)
	ModulesFrame.Size = UDim2.new(1, -10, 1, -73)
	ModulesFrame.Parent = nil
	if #Modules <= 0 then
		Warning:Clone().Parent = ModulesFrame
	else
		ModulesIndex = 1
		local Label1 = new("TextLabel")
		Label1.Name = "FullName"
		Label1.BackgroundColor3 = Window.Content.BackgroundColor3
		Label1.BorderSizePixel = 0
		Label1.BackgroundTransparency = 1
		Label1.TextColor3 = Color3.new(0, 0, 0)
		Label1.TextWrap = true
		Label1.TextXAlignment = "Left"
		Label1.TextYAlignment = "Top"
		Label1.Size = UDim2.new(1, -20, 0, 60)
		Label1.Position = UDim2.new(0, 10, 0, 5)
		Label1.Parent = ModulesFrame
		local Label2 = new("TextLabel")
		Label2.Name = "Enabled"
		Label2.BackgroundColor3 = Window.Content.BackgroundColor3
		Label2.BorderSizePixel = 0
		Label2.BackgroundTransparency = 1
		Label2.TextColor3 = Color3.new(0, 0, 0)
		Label2.TextWrap = true
		Label2.TextXAlignment = "Left"
		Label2.TextYAlignment = "Top"
		Label2.Size = UDim2.new(1, -20, 0, 60)
		Label2.Position = UDim2.new(0, 10, 0, 65)
		Label2.Parent = ModulesFrame
		local Label3 = new("TextLabel")
		Label3.Name = "Help"
		Label3.BackgroundColor3 = Window.Content.BackgroundColor3
		Label3.BorderSizePixel = 0
		Label3.BackgroundTransparency = 1
		Label3.TextColor3 = Color3.new(0, 0, 0)
		Label3.TextWrap = true
		Label3.TextXAlignment = "Left"
		Label3.TextYAlignment = "Top"
		Label3.Size = UDim2.new(1, -20, 0, 100)
		Label3.Position = UDim2.new(0, 10, 0, 125)
		Label3.Parent = ModulesFrame
	end
	local GroupsIndex = 0
	local GroupsFrame = new("Frame")
	GroupsFrame.Name = "GroupsFrame"
	GroupsFrame.Position = UDim2.new(0, 5, 0, 27)
	GroupsFrame.Size = UDim2.new(1, -10, 1, -73)
	GroupsFrame.Parent = nil
	if #Groups <= 0 then
		Warning:Clone().Parent = GroupsFrame
	else
		GroupsIndex = 1
		local Label1 = new("TextLabel")
		Label1.Name = "FullName"
		Label1.BackgroundColor3 = Window.Content.BackgroundColor3
		Label1.BorderSizePixel = 0
		Label1.BackgroundTransparency = 1
		Label1.TextColor3 = Color3.new(0, 0, 0)
		Label1.TextWrap = true
		Label1.TextXAlignment = "Left"
		Label1.TextYAlignment = "Top"
		Label1.Size = UDim2.new(1, -20, 0, 60)
		Label1.Position = UDim2.new(0, 10, 0, 5)
		Label1.Parent = GroupsFrame
		local Label2 = new("TextLabel")
		Label2.Name = "Control"
		Label2.BackgroundColor3 = Window.Content.BackgroundColor3
		Label2.BorderSizePixel = 0
		Label2.BackgroundTransparency = 1
		Label2.TextColor3 = Color3.new(0, 0, 0)
		Label2.TextWrap = true
		Label2.TextXAlignment = "Left"
		Label2.TextYAlignment = "Top"
		Label2.Size = UDim2.new(1, -20, 0, 60)
		Label2.Position = UDim2.new(0, 10, 0, 65)
		Label2.Parent = GroupsFrame
		local Label3 = new("TextLabel")
		Label3.Name = "Help"
		Label3.BackgroundColor3 = Window.Content.BackgroundColor3
		Label3.BorderSizePixel = 0
		Label3.BackgroundTransparency = 1
		Label3.TextColor3 = Color3.new(0, 0, 0)
		Label3.TextWrap = true
		Label3.TextXAlignment = "Left"
		Label3.TextYAlignment = "Top"
		Label3.Size = UDim2.new(1, -20, 0, 100)
		Label3.Position = UDim2.new(0, 10, 0, 125)
		Label3.Parent = GroupsFrame
	end
	local SyntaxFrame = new("Frame")
	SyntaxFrame.Name = "SyntaxFrame"
	SyntaxFrame.Position = UDim2.new(0, 5, 0, 27)
	SyntaxFrame.Size = UDim2.new(1, -10, 1, -73)
	SyntaxFrame.Parent = nil
	local Label = new("TextLabel")
	Label.Name = "Syntax"
	Label.BackgroundColor3 = Window.Content.BackgroundColor3
	Label.BorderSizePixel = 0
	Label.BackgroundTransparency = 1
	Label.TextColor3 = Color3.new(0, 0, 0)
	Label.TextWrap = true
	Label.TextXAlignment = "Left"
	Label.TextYAlignment = "Top"
	Label.Text = [[- General Syntax
Commands are started with "]] ..C.Data.Starter.. [[" and separated with "]] ..C.Data.FullSplit.. [[".
Arguments are separated with "]] ..C.Data.Split.. [[".

- EmbeddedLua
Encase Lua code in the EmbeddedLua brackets (]] ..C.Data.ELSplitLeft.. [[ and ]] ..C.Data.ELSplitRight.. [[), and that code will be executed and replaced with the return value.]]
	Label.Size = UDim2.new(1, -20, 1, -10)
	Label.Position = UDim2.new(0, 10, 0, 5)
	Label.Parent = SyntaxFrame
	local Previous = new("TextButton")
	Previous.Text = "<"
	Previous.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	Previous.BorderColor3 = Color3.new(0, 0, 0)
	Previous.BorderSizePixel = 1
	Previous.TextColor3 = Color3.new(0, 0, 0)
	Previous.FontSize = "Size18"
	Previous.Size = UDim2.new(0, 25, 0, 35)
	Previous.Position = UDim2.new(0, 5, 1, -40)
	Previous.Parent = Window.Content
	local Center = new("TextLabel")
	Center.Text = "0 of 0"
	Center.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	Center.BorderColor3 = Color3.new(0, 0, 0)
	Center.BorderSizePixel = 1
	Center.TextColor3 = Color3.new(0, 0, 0)
	Center.FontSize = "Size18"
	Center.Size = UDim2.new(1, -60, 0, 35)
	Center.Position = UDim2.new(0, 30, 1, -40)
	Center.Parent = Window.Content
	local Next = new("TextButton")
	Next.Text = ">"
	Next.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	Next.BorderColor3 = Color3.new(0, 0, 0)
	Next.BorderSizePixel = 1
	Next.TextColor3 = Color3.new(0, 0, 0)
	Next.FontSize = "Size18"
	Next.Size = UDim2.new(0, 25, 0, 35)
	Next.Position = UDim2.new(1, -30, 1, -40)
	Next.Parent = Window.Content
	local function UpdatePage()
		Center.Text = "0 of 0"
		Previous.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		Next.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		if CurrentTab == 1 then
			if #Commands <= 0 then return end
			Center.Text = CommandsIndex.. " of " ..#Commands
			CommandsFrame.FullName.Text = "Name: " ..Commands[CommandsIndex].FullName
			if type(Commands[CommandsIndex].Command) == "string" then
				CommandsFrame.Command.Text = "Command(s): \"" ..Commands[CommandsIndex].Command.. C.Data.Split.. "\""
			elseif type(Commands[CommandsIndex].Command) == "table" then
				CommandsFrame.Command.Text = "Command(s): " ..(function() local Command = "\"" ..Commands[CommandsIndex].Command[1] .. C.Data.Split.. "\"" for x = 2, #Commands[CommandsIndex].Command do Command = Command.. " or \"" ..Commands[CommandsIndex].Command[x] .. C.Data.Split.. "\"" end return Command end)()
			end
			CommandsFrame.HelpArgs.Text = "Arguments(s): " ..Commands[CommandsIndex].HelpArgs
			CommandsFrame.Control.Text = "Required control: " ..Commands[CommandsIndex].Control
			CommandsFrame.Help.Text = "Help / Description: " ..Commands[CommandsIndex].Help
			Previous.BackgroundColor3 = CommandsIndex <= 1 and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
			Next.BackgroundColor3 = (CommandsIndex >= #Commands or #Commands <= 1) and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
		elseif CurrentTab == 2 then
			if #Modules <= 0 then return end
			Center.Text = ModulesIndex.. " of " ..#Modules
			ModulesFrame.FullName.Text = "Name: " ..Modules[ModulesIndex].Name
			ModulesFrame.Enabled.Text = "Enabled: " ..string.sub(tostring(Modules[ModulesIndex].Enabled), 0, 1):upper() .. string.sub(tostring(Modules[ModulesIndex].Enabled), 2)
			ModulesFrame.Help.Text = "Help / Description: " ..Modules[ModulesIndex].Help
			Previous.BackgroundColor3 = ModulesIndex <= 1 and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
			Next.BackgroundColor3 = (ModulesIndex >= #Modules or #Modules <= 1) and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
		elseif CurrentTab == 3 then
			if #Groups <= 0 then return end
			Center.Text = GroupsIndex.. " of " ..#Groups
			GroupsFrame.FullName.Text = "Name: " ..Groups[GroupsIndex].FullName.. " (" ..Groups[GroupsIndex].Name.. ")"
			GroupsFrame.Control.Text = "Control: " ..Groups[GroupsIndex].Control
			GroupsFrame.Help.Text = "Help / Description: " ..Groups[GroupsIndex].Help
			Previous.BackgroundColor3 = GroupsIndex <= 1 and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
			Next.BackgroundColor3 = (GroupsIndex >= #Groups or #Groups <= 1) and Color3.new(0.2, 0.2, 0.2) or Color3.new(0.4, 0.4, 0.4)
		elseif CurrentTab == 4 then
			Center.Text = "1 of 1"
			Previous.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
			Next.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		end
	end
	UpdatePage()
	TabFrame.Tab1.MouseButton1Up:connect(function()
		CurrentTab = 1
		CommandsFrame.Parent = Window.Content
		ModulesFrame.Parent = nil
		GroupsFrame.Parent = nil
		SyntaxFrame.Parent = nil
		UpdatePage()
	end)
	TabFrame.Tab2.MouseButton1Up:connect(function()
		CurrentTab = 2
		CommandsFrame.Parent = nil
		ModulesFrame.Parent = Window.Content
		GroupsFrame.Parent = nil
		SyntaxFrame.Parent = nil
		UpdatePage()
	end)
	TabFrame.Tab3.MouseButton1Up:connect(function()
		CurrentTab = 3
		CommandsFrame.Parent = nil
		ModulesFrame.Parent = nil
		GroupsFrame.Parent = Window.Content
		SyntaxFrame.Parent = nil
		UpdatePage()
	end)
	TabFrame.Tab4.MouseButton1Up:connect(function()
		CurrentTab = 4
		CommandsFrame.Parent = nil
		ModulesFrame.Parent = nil
		GroupsFrame.Parent = nil
		SyntaxFrame.Parent = Window.Content
		UpdatePage()
	end)
	Previous.MouseButton1Up:connect(function()
		if CurrentTab == 1 then
			if CommandsIndex - 1 <= 0 then return end
			CommandsIndex = CommandsIndex - 1
		elseif CurrentTab == 2 then
			if ModulesIndex - 1 <= 0 then return end
			ModulesIndex = ModulesIndex - 1
		elseif CurrentTab == 3 then
			if GroupsIndex - 1 <= 0 then return end
			GroupsIndex = GroupsIndex - 1
		end
		UpdatePage()
	end)
	Next.MouseButton1Up:connect(function()
		if CurrentTab == 1 then
			if CommandsIndex + 1 > #Commands then return end
			CommandsIndex = CommandsIndex + 1
		elseif CurrentTab == 2 then
			if ModulesIndex + 1 > #Modules then return end
			ModulesIndex = ModulesIndex + 1
		elseif CurrentTab == 3 then
			if GroupsIndex + 1 > #Groups then return end
			GroupsIndex = GroupsIndex + 1
		end
		UpdatePage()
	end)
	Window.Changed:connect(function(Property)
		if Property == "Parent" then
			if Window.Parent == nil then
				Gui:Remove()
			end
		end
	end)
end, "Help", "Gives help for commands, modules and groups (you're reading it right now).", "search terms (optional)")

C.Function.CreateCommand({"status", "stat", "st"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if MsgSplit[1] == "instance" then
		C.Function.Msg("NewHint", "Instance: " ..C.Init.InstanceNum.. ". Root: _G.CoolCMDs[" ..C.Init.InstanceNum.. "]:GetTable()", 10, Speaker)
	elseif MsgSplit[1] == "loadtime" then
		C.Function.Msg("NewHint", "Load start time: " ..C.Init.StartTime.. ". Load finish time: " ..C.Init.FinishTime.. ". Elapsed Init time: " ..C.Init.ElapsedTime.. ".", 10, Speaker)
	elseif MsgSplit[1] == "runtime" then
		C.Function.Msg("NewHint", "Total run time: " ..tick() - C.Init.StartTime.. ".", 10, Speaker)
	elseif MsgSplit[1] == "group" then
		C.Function.Msg("NewHint", "Group name: " ..C.Function.GetPlayerTable(Speaker.Name).Group.. ". Group full name: " ..C.Function.GetGroup(C.Function.GetPlayerTable(Speaker.Name).Group).FullName.. ". Group control level: " ..C.Function.GetGroup(C.Function.GetPlayerTable(Speaker.Name).Group).Control, 10, Speaker)
	end
end, "Status", "Get various values.", "[instance, loadtime, runtime, group]")

C.Function.CreateCommand({"cape"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				local Mode = "None"
				local AngleX = 0
				pcall(function() Player.Character.Cape:Remove() end)
				local Cape = new("Part", Player.Character)
				Cape.Name = "Cape"
				Cape.CanCollide = false
				Cape.FormFactor = "Custom"
				Cape.Size = Vector3.new(3, 3.5, 0.2)
				Cape.BrickColor = Player.Character.Torso.BrickColor
				Cape.TopSurface = 0
				Cape.BottomSurface = 0
				local Decal = new("Decal", Cape)
				Decal.Face = "Back"
				Decal.Texture = "http://www.roblox.com/Asset/?id=52411167"
				local Weld = new("Weld", Cape)
				Weld.Part0 = Player.Character.Torso
				Weld.Part1 = Cape
				Weld.C0 = CFrame.new(0, 1, 0.5)
				Weld.C1 = CFrame.new(0, 3.5 / 2, -0.1)
				Player.Character.Humanoid.Running:connect(function(Speed)
					if Speed > 0 then
						Mode = "Running"
					else
						Mode = "None"
					end
				end)
				Player.Character.Humanoid.Jumping:connect(function() Mode = "Jumping" end)
				coroutine.wrap(function()
					while Cape.Parent ~= nil and Weld.Parent ~= nil do
						local UpSpeed = 2.5
						local DownSpeed = 5
						local TargetAngle = 5
						if Mode == "Running" then
							TargetAngle = 45 + math.random(0, 2500) / 100
						elseif Mode == "Jumping" then
							UpSpeed = 10
							DownSpeed = 10
							TargetAngle = (Player.Character.Torso.Velocity.y < 3 and 160 or 45)
						end
						if math.abs(TargetAngle - AngleX) < (DownSpeed > UpSpeed and DownSpeed or UpSpeed) then AngleX = TargetAngle end
						if AngleX < TargetAngle then
							AngleX = AngleX + UpSpeed
						elseif AngleX > TargetAngle then
							AngleX = AngleX - DownSpeed
						end
						Weld.C1 = CFrame.new(0, 3.5 / 2, -0.1) * CFrame.fromEulerAnglesXYZ(math.rad(AngleX), 0, 0, 0)
						wait()
					end
				end)()
			end
		end
	end
end, "Cape", "Give someone a cape inscribed with the yfc logo!", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"die", "suicide", "reset", "rt"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if Speaker.Character ~= nil then
		if Speaker.Character:FindFirstChild("Humanoid") ~= nil then
			Speaker.Character.Humanoid.Health = 0
		else
			Speaker.Character:BreakJoints()
		end
	end
end, "Suicide", "Kill yourself.")

C.Function.CreateCommand({"transparency", "trans", "tr"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				for _, Part in pairs(C.Function.GetRecursiveChildren(Player.Character, "BasePart", 3)) do
					Part.Transparency = MsgSplit[#MsgSplit]
				end
			end
		end
	end
end, "Transparency", "Set the transparency of all objects in a player's character.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "transpareny")

C.Function.CreateCommand({"respawnme", "rm"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	pcall(function()
		local Model = new("Model", Workspace)
		local Part = new("Part", Model)
		Part.Name = "Head"
		Part.Transparency = 1
		Part.CanCollide = false
		Part.Anchored = true
		Part.Locked = true
		Part.Parent = Model
		local Humanoid = new("Humanoid", Model)
		Humanoid.Health = 100
		Speaker.Character = Model
		Humanoid.Health = 0
	end)
end, "Rspawn Me", "Respawn your character.")

C.Function.CreateCommand({"hint", "h", "whisper"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for _, Player in pairs(Players:GetPlayers()) do
		coroutine.wrap(function()
			for i = 1, #MsgSplit do
				C.Function.Msg("NewHint", Speaker.Name.. ": " ..MsgSplit[i], 5, Player)
				wait(5)
			end
		end)()
	end
end, "Hint", "Creates a hint in the Workspace.", "line 1" ..C.Data.Split.. "line 2" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"message", "msg", "mes", "m"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		C.Function.Msg("Message", Speaker.Name.. ": " ..MsgSplit[i], 5)
		wait(5)
	end
end, "Message", "Creates a message in the Workspace.", "line 1" ..C.Data.Split.. "line 2" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"messagebox", "mb"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return end
	if C.Function.IsModuleEnabled("GuiSupport") == false then
		C.Function.Msg("NewHint", "This command requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif C.Function.GetModule("GuiSupport") == nil then
		C.Function.Msg("NewHint", "This command requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	local Words = {}
	for i = 2, #MsgSplit do
		table.insert(Words, MsgSplit[i])
	end
	for _, Player in pairs(Players:GetPlayers()) do
		C.Function.GetModule("GuiSupport").MessageBox(MsgSplit[1]:lower(), Words, nil, new("ScreenGui", Player:FindFirstChild("PlayerGui")))
	end
end, "Message Box", "Creates a Gui message box in all players.", "[prompt, warning, error, [fatal, fatal error]]" ..C.Data.Split.. "line 1" ..C.Data.Split.. "line 2" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"hintplayer", "hp"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit <= 1 then return false end
	for _, Player in pairs(Players:GetPlayers()) do
		if string.match(Player.Name:lower(), MsgSplit[1]:lower()) then
			coroutine.wrap(function()
				for i = 2, #MsgSplit do
					C.Function.Msg("NewHint", Speaker.Name.. ": " ..MsgSplit[i], 5, Player)
					wait(5)
				end
			end)()
		end
	end
end, "Hint (Player)", "Creates a hint in a player.", "player" ..C.Data.Split.. "line 1" ..C.Data.Split.. "line 2" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"messageplayer", "mp"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit <= 1 then return false end
	for _, Player in pairs(Players:GetPlayers()) do
		if string.match(Player.Name:lower(), MsgSplit[1]:lower()) then
			coroutine.wrap(function()
				for i = 2, #MsgSplit do
					C.Function.Msg("Message", Speaker.Name.. ": " ..MsgSplit[i], 5, Player)
					wait(5)
				end
			end)()
		end
	end
end, "Message (Player)", "Creates a message in a player.", "player" ..C.Data.Split.. "line 1" ..C.Data.Split.. "line 2" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"messageboxplayer", "mbp"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 3 then return end
	if C.Function.IsModuleEnabled("GuiSupport") == false then
		C.Function.Msg("NewHint", "This command requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif C.Function.GetModule("GuiSupport") == nil then
		C.Function.Msg("NewHint", "This command requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	local Words = {}
	for i = 3, #MsgSplit do
		table.insert(Words, MsgSplit[i])
	end
	for _, Player in pairs(Players:GetPlayers()) do
		if string.match(Player.Name:lower(), MsgSplit[1]:lower()) then
			C.Function.GetModule("GuiSupport").MessageBox(MsgSplit[2]:lower(), Words, nil, new("ScreenGui", Player:FindFirstChild("PlayerGui")))
		end
	end
end, "Message Box (Player)", "Creates a Gui message box in a player.", "player" ..C.Data.Split.. "[prompt, warning, error, [fatal, fatal error]]" ..C.Data.Split.. "line 1" ..C.Data.Split.. "line 2" ..C.Data.Split.. "[...]")

C.Function.CreateCommand("explorer", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if C.Function.IsModuleEnabled("GuiSupport") == false then
		C.Function.Msg("NewHint", "This command requires the GuiSupport module to be enabled.", 5, Speaker)
		return
	elseif C.Function.GetModule("GuiSupport") == nil then
		C.Function.Msg("NewHint", "This command requires the GuiSupport module to be installed.", 5, Speaker)
		return
	end
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player:FindFirstChild("PlayerGui") ~= nil then
				coroutine.wrap(function()
					local Object = Workspace
					local ObjectChildren = Object:GetChildren()
					local SortType = 1
					local Home = game
					local Gui = new("ScreenGui")
					Gui.Parent = Player.PlayerGui
					local function OnClose(Frame)
						Frame:Remove()
					end
					local Window = C.Function.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -550 / 2, 0.5, -355 / 2), UDim2.new(0, 550, 0, 355), Gui, "Explorer v1.7", true, true, true, true, true, OnClose, UDim2.new(0, 550, 0, 355))
					Window.Icon.Image = "http://www.roblox.com/Asset/?id=43504783"
					local Previous = new("TextButton")
					Previous.Name = "Previous"
					Previous.Text = "<"
					Previous.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					Previous.BorderColor3 = Color3.new(0, 0, 0)
					Previous.BorderSizePixel = 1
					Previous.TextColor3 = Color3.new(0, 0, 0)
					Previous.Size = UDim2.new(0, 20, 0, 20)
					Previous.Position = UDim2.new(0, 5, 1, -25)
					Previous.Parent = Window.Content
					local Center = new("TextLabel")
					Center.Name = "Center"
					Center.Text = "0 to 0 of 0"
					Center.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					Center.BorderColor3 = Color3.new(0, 0, 0)
					Center.BorderSizePixel = 1
					Center.TextColor3 = Color3.new(0, 0, 0)
					Center.FontSize = "Size14"
					Center.Size = UDim2.new(1, -50, 0, 20)
					Center.Position = UDim2.new(0, 25, 1, -25)
					Center.Parent = Window.Content
					local Next = new("TextButton")
					Next.Text = ">"
					Next.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					Next.BorderColor3 = Color3.new(0, 0, 0)
					Next.BorderSizePixel = 1
					Next.TextColor3 = Color3.new(0, 0, 0)
					Next.Size = UDim2.new(0, 20, 0, 20)
					Next.Position = UDim2.new(1, -25, 1, -25)
					Next.Parent = Window.Content
					local ListFrameHeader = C.Function.GetModule("GuiSupport").WindowControls.ListFrame.New()
					ListFrameHeader.Size = UDim2.new(1, -10, 0, 20)
					ListFrameHeader.Position = UDim2.new(0, 5, 0, 25)
					ListFrameHeader.Parent = Window.Content
					C.Function.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameHeader, {"#\tName\tClassName\tParent"}, 2)
					local ListFrame = C.Function.GetModule("GuiSupport").WindowControls.ListFrame.New()
					ListFrame.Size = UDim2.new(1, -10, 1, -70)
					ListFrame.Position = UDim2.new(0, 5, 0, 45)
					ListFrame.Parent = Window.Content
					local function UpdatePage(...)
						local List = {}
						for i, Part in pairs(ObjectChildren) do
							table.insert(List, i.. "\t" ..(Part.Name == "" and "Nil" or Part.Name).. "\t" ..(Part.ClassName == "" and "Nil" or Part.ClassName).. "\t" ..(Part.Parent == nil and "Nil" or Part.Parent.Name))
						end
						if SortType ~= 1 then
							table.sort(List, function(a, b) return C.Function.Explode("\t", a)[SortType]:lower() < C.Function.Explode("\t", b)[SortType]:lower() end)
						end
						C.Function.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrame, List, 1, ...)
						Center.Text = ListFrame.ListIndex.Value.. " to " ..(ListFrame.ListIndex.Value + #ListFrame:GetChildren() - 2).. " of " ..#ObjectChildren
						for _, Tag in pairs(ListFrame:GetChildren()) do
							for _, Table in pairs(Tag:GetChildren()) do
								pcall(function()
									Table.MouseButton1Up:connect(function()
										for i, Part in pairs(ObjectChildren) do
											if i == tonumber(Tag.Table1.Text) then
												Object = Part
												ObjectChildren = Object:GetChildren()
												ListFrame.ListIndex.Value = 1
												UpdatePage()
											end
										end
									end)
								end)
							end
						end
					end
					coroutine.wrap(function()
						C.Function.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrame, {"Loading..."}, 1)
						wait(0.5)
						UpdatePage()
					end)()
					for _, Table in pairs(ListFrameHeader.Tag1:GetChildren()) do
						Table.MouseButton1Up:connect(function()
							SortType = tonumber(string.sub(Table.Name, 6))
							UpdatePage()
						end)
					end
					Previous.MouseButton1Up:connect(function() UpdatePage(-1, "page") end)
					Next.MouseButton1Up:connect(function() UpdatePage(1, "page") end)
					local MenuBar1 = new("Frame")
					MenuBar1.Size = UDim2.new(1, 0, 0, 20)
					MenuBar1.Position = UDim2.new(0, 0, 0, 0)
					MenuBar1.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
					MenuBar1.BorderSizePixel = 1
					MenuBar1.Parent = Window.Content
					local Choice = new("TextButton")
					Choice.AutoButtonColor = false
					Choice.TextXAlignment = "Left"
					Choice.TextColor3 = Color3.new(0, 0, 0)
					Choice.BorderColor3 = Color3.new(0.4, 0.4, 0.4)
					Choice.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75)
					Choice.BorderSizePixel = 0
					local ChoiceIcon = new("ImageLabel")
					ChoiceIcon.Size = UDim2.new(0, 16, 0, 16)
					ChoiceIcon.Position = UDim2.new(0, 4, 0, 1)
					ChoiceIcon.BorderSizePixel = 0
					ChoiceIcon.BackgroundTransparency = 1
					local ChoiceNewRecent = {"", "Object", true}
					local ChoiceNew = Choice:Clone()
					ChoiceNew.Text = string.rep(" ", 8).. "New..."
					ChoiceNew.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceNew.Position = UDim2.new(0, 1, 0, 1)
					ChoiceNew.Parent = MenuBar1
					ChoiceNew.MouseEnter:connect(function() ChoiceNew.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceNew.BorderSizePixel = 1 end)
					ChoiceNew.MouseLeave:connect(function() ChoiceNew.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceNew.BorderSizePixel = 0 end)
					ChoiceNew.MouseButton1Down:connect(function() ChoiceNew.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceNew.MouseButton1Up:connect(function() ChoiceNew.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						local CanCreate = true
						local function OnClose(Frame)
							CanCreate = false
							Frame:Remove()
						end
						local Popup = C.Function.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -200 / 2, 0.5, -250 / 2), UDim2.new(0, 200, 0, 250), Gui, "New Object", true, false, false, false, true)
						Popup.Name = "New Object"
						Popup.Icon.Image = "http://www.roblox.com/Asset/?id=42154070"
						local Label = new("TextLabel")
						Label.Text = "Instance (ClassName):"
						Label.BorderColor3 = Color3.new(0, 0, 0)
						Label.BackgroundTransparency = 1
						Label.Position = UDim2.new(0, 5, 0, 15)
						Label.Size = UDim2.new(0, 75, 0, 15)
						Label.TextWrap = true
						Label.TextXAlignment = "Left"
						Label.Parent = Popup.Content
						local TextBox = new("TextBox")
						TextBox.Name = "ObjectClassName"
						TextBox.Text = ChoiceNewRecent[1]
						TextBox.BorderColor3 = Color3.new(0, 0, 0)
						TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
						TextBox.Position = UDim2.new(0, 85, 0, 15)
						TextBox.Size = UDim2.new(0, 100, 0, 15)
						TextBox.TextWrap = true
						TextBox.TextXAlignment = "Left"
						TextBox.Parent = Popup.Content
						local Label = new("TextLabel")
						Label.Text = "Name:"
						Label.BorderColor3 = Color3.new(0, 0, 0)
						Label.BackgroundTransparency = 1
						Label.Position = UDim2.new(0, 5, 0, 45)
						Label.Size = UDim2.new(0, 75, 0, 15)
						Label.TextWrap = true
						Label.TextXAlignment = "Left"
						Label.Parent = Popup.Content
						local TextBox = new("TextBox")
						TextBox.Name = "ObjectName"
						TextBox.Text = ChoiceNewRecent[2]
						TextBox.BorderColor3 = Color3.new(0, 0, 0)
						TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
						TextBox.Position = UDim2.new(0, 85, 0, 45)
						TextBox.Size = UDim2.new(0, 100, 0, 15)
						TextBox.TextWrap = true
						TextBox.TextXAlignment = "Left"
						TextBox.Parent = Popup.Content
						local Label = new("TextLabel")
						Label.Text = "Archivable:"
						Label.BorderColor3 = Color3.new(0, 0, 0)
						Label.BackgroundTransparency = 1
						Label.Position = UDim2.new(0, 5, 0, 75)
						Label.Size = UDim2.new(0, 75, 0, 15)
						Label.TextWrap = true
						Label.TextXAlignment = "Left"
						Label.Parent = Popup.Content
						local CheckBox = C.Function.GetModule("GuiSupport").WindowControls.CheckBox.New(true)
						CheckBox.Name = "ObjectArchivable"
						C.Function.GetModule("GuiSupport").WindowControls.CheckBox.SelectCheckBox(ChoiceNewRecent[3])
						CheckBox.Position = UDim2.new(0, 90, 0, 75)
						CheckBox.Parent = Popup.Content
						local Button = new("TextButton")
						Button.Text = "Create"
						Button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Button.BorderColor3 = Color3.new(0, 0, 0)
						Button.BorderSizePixel = 1
						Button.TextColor3 = Color3.new(0, 0, 0)
						Button.Size = UDim2.new(0, 80, 0, 35)
						Button.Position = UDim2.new(0.5, -40, 0, 115)
						Button.Parent = Popup.Content
						Button.MouseButton1Up:connect(function()
							if CanCreate == false then return end
							CanCreate = false
							local NewObject = {pcall(function() return new(Popup.Content.ObjectClassName.Text) end)}
							if NewObject[1] == true then
								NewObject[2].Name = Popup.Content.ObjectName.Text
								NewObject[2].archivable = C.Function.GetModule("GuiSupport").WindowControls.CheckBox.GetCheckBoxState(Popup.Content.ObjectArchivable)
								NewObject[2].Parent = Object
								if NewObject[2].Parent ~= nil then
									pcall(function() NewObject[2].CFrame = Speaker.Character.Torso.CFrame * CFrame.new(0, 6, 0) end)
									ChoiceNewRecent = {Popup.Content.ObjectClassName.Text, Popup.Content.ObjectName.Text, C.Function.GetModule("GuiSupport").WindowControls.CheckBox.GetCheckBoxState(Popup.Content.ObjectArchivable)}
									UpdatePage()
									OnClose(Popup)
									return
								else
									Popup.StatusBar.Text = "Error: Object removed!"
									CanCreate = true
									return
								end
							elseif NewObject[1] == false then
								Popup.StatusBar.Text = "Error: Unknown Instance type!"
								CanCreate = true
								return
							end
						end)
						local Button = new("TextButton")
						Button.Text = "Cancel"
						Button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Button.BorderColor3 = Color3.new(0, 0, 0)
						Button.BorderSizePixel = 1
						Button.TextColor3 = Color3.new(0, 0, 0)
						Button.Size = UDim2.new(0, 80, 0, 35)
						Button.Position = UDim2.new(0.5, -40, 0, 155)
						Button.Parent = Popup.Content
						Button.MouseButton1Up:connect(function()
							CanCreate = false
							ChoiceNewRecent = {Popup.Content.ObjectClassName.Text, Popup.Content.ObjectName.Text, C.Function.GetModule("GuiSupport").WindowControls.CheckBox.GetCheckBoxState(Popup.Content.ObjectArchivable)}
							OnClose(Popup)
						end)
						Popup.Parent = Gui
						Window.Changed:connect(function(Property)
							if Property == "Parent" then
								if Window.Parent == nil then
									CanCreate = false
									OnClose(Popup)
								end
							end
						end)
					end)
					local ChoiceNewIcon = ChoiceIcon:Clone()
					ChoiceNewIcon.Image = "http://www.roblox.com/Asset/?id=42154070"
					ChoiceNewIcon.Parent = ChoiceNew
					local ChoiceLoadRecent = "47433"
					local ChoiceLoad = Choice:Clone()
					ChoiceLoad.Text = string.rep(" ", 8).. "Load..."
					ChoiceLoad.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceLoad.Position = UDim2.new(0, 75 + 1, 0, 1)
					ChoiceLoad.Parent = MenuBar1
					ChoiceLoad.MouseEnter:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceLoad.BorderSizePixel = 1 end)
					ChoiceLoad.MouseLeave:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceLoad.BorderSizePixel = 0 end)
					ChoiceLoad.MouseButton1Down:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceLoad.MouseButton1Up:connect(function() ChoiceLoad.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						local CanClose = true
						local CanCreate = true
						local function OnClose(Frame)
							if CanClose == false then return end
							CanCreate = false
							Frame:Remove()
						end
						local Popup = C.Function.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -200 / 2, 0.5, -175 / 2), UDim2.new(0, 200, 0, 175), Gui, "Load from URL", true, false, false, false, true, OnClose)
						Popup.Name = "Load from URL"
						Popup.Icon.Image = "http://www.roblox.com/Asset/?id=42183533"
						coroutine.wrap(function()
							while Popup.Parent ~= nil do
								if CanClose == false then
									pcall(function() Popup.ExitButton.BackgroundColor3 = Color3.new(0.5, 0.25, 0.25) end)
									pcall(function() Popup.Content.Cancel.BackgroundColor3 = Color3.new(0.55, 0.55, 0.55) end)
									pcall(function() Popup.Content.Cancel.TextColor3 = Color3.new(0.75, 0.75, 0.75) end)
								else
									pcall(function() Popup.ExitButton.BackgroundColor3 = Color3.new(1, 0, 0) end)
									pcall(function() Popup.Content.Cancel.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
									pcall(function() Popup.Content.Cancel.TextColor3 = Color3.new(0, 0, 0) end)
								end
								if CanCreate == false then
									pcall(function() Popup.Content.Load.BackgroundColor3 = Color3.new(0.55, 0.55, 0.55) end)
									pcall(function() Popup.Content.Load.TextColor3 = Color3.new(0.75, 0.75, 0.75) end)
								else
									pcall(function() Popup.Content.Load.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
									pcall(function() Popup.Content.Load.TextColor3 = Color3.new(0, 0, 0) end)
								end
								wait()
							end
						end)()
						local Label = new("TextLabel")
						Label.Text = "ROBLOX Asset ID:"
						Label.BorderColor3 = Color3.new(0, 0, 0)
						Label.BackgroundTransparency = 1
						Label.Position = UDim2.new(0, 5, 0, 15)
						Label.Size = UDim2.new(0, 75, 0, 15)
						Label.TextWrap = true
						Label.TextXAlignment = "Left"
						Label.Parent = Popup.Content
						local TextBox = new("TextBox")
						TextBox.Name = "ID"
						TextBox.Text = ChoiceLoadRecent
						TextBox.BorderColor3 = Color3.new(0, 0, 0)
						TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
						TextBox.Position = UDim2.new(0, 85, 0, 15)
						TextBox.Size = UDim2.new(0, 100, 0, 15)
						TextBox.TextWrap = true
						TextBox.TextXAlignment = "Left"
						TextBox.Parent = Popup.Content
						local Button = new("TextButton")
						Button.Name = "Load"
						Button.Text = "Load"
						Button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Button.BorderColor3 = Color3.new(0, 0, 0)
						Button.BorderSizePixel = 1
						Button.TextColor3 = Color3.new(0, 0, 0)
						Button.Size = UDim2.new(0, 80, 0, 35)
						Button.Position = UDim2.new(0.5, -40, 0, 45)
						Button.Parent = Popup.Content
						Button.MouseButton1Up:connect(function()
							if CanCreate == false then return end
							if Popup.Content.ID.Text == "" or Popup.Content.ID.Text == nil or tonumber(Popup.Content.ID.Text) == nil then
								CanClose = true
								CanCreate = true
								Popup.StatusBar.Text = "Asset \"" ..Popup.Content.ID.Text.. "\" invalid!"
								return
							end
							CanClose = false
							CanCreate = false
							Popup.StatusBar.Text = "Preparing InsertService..."
							pcall(function() game:GetService("InsertService"):SetAssetUrl("http://www.roblox.com/Asset/?id=%d") end)
							Popup.StatusBar.Text = "Loading Asset \"" ..Popup.Content.ID.Text.. "\"..."
							local NewObject = game:GetService("InsertService"):LoadAsset(tonumber(Popup.Content.ID.Text))
							Popup.StatusBar.Text = "Compiling Asset \"" ..Popup.Content.ID.Text.. "\"..."
							for i = 0, 100 do
								if NewObject ~= nil then break end
								wait()
							end
							if NewObject:IsA("Model") then
								NewObject.Parent = Object
								if NewObject.Parent ~= nil then
									NewObject:MakeJoints()
									if Speaker.Character ~= nil then
										if Speaker.Character:FindFirstChild("Torso") ~= nil then
											NewObject:MoveTo((Speaker.Character.Torso.CFrame * CFrame.new(0, 0, -10)).p)
										else
											NewObject:MoveTo(Vector3.new(0, 10, 0))
										end
									else
										NewObject:MoveTo(Vector3.new(0, 10, 0))
									end
									Popup.StatusBar.Text = "Asset \"" ..Popup.Content.ID.Text.. "\" loaded successfully."
									ObjectChildren = Object:GetChildren()
									UpdatePage()
									ChoiceLoadRecent = Popup.Content.ID.Text
									CanClose = true
									OnClose(Popup)
									return
								else
									Popup.StatusBar.Text = "Error: Object removed!"
									pcall(function() NewObject:Remove() end)
									CanClose = true
									CanCreate = true
									return
								end
							else
								Popup.StatusBar.Text = "Error: Load timed out!"
								pcall(function() NewObject:Remove() end)
								CanClose = true
								CanCreate = true
								return
							end
						end)
						local Button = new("TextButton")
						Button.Name = "Cancel"
						Button.Text = "Cancel"
						Button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Button.BorderColor3 = Color3.new(0, 0, 0)
						Button.BorderSizePixel = 1
						Button.TextColor3 = Color3.new(0, 0, 0)
						Button.Size = UDim2.new(0, 80, 0, 35)
						Button.Position = UDim2.new(0.5, -40, 0, 85)
						Button.Parent = Popup.Content
						Button.MouseButton1Up:connect(function()
							if CanClose == false then return end
							CanCreate = false
							ChoiceLoadRecent = Popup.Content.ID.Text
							OnClose(Popup)
						end)
						Popup.Parent = Gui
						Window.Changed:connect(function(Property)
							if Property == "Parent" then
								if Window.Parent == nil then
									CanCreate = false
									while CanClose == false do wait() end
									OnClose(Popup)
								end
							end
						end)
					end)
					local ChoiceLoadIcon = ChoiceIcon:Clone()
					ChoiceLoadIcon.Image = "http://www.roblox.com/Asset/?id=42183533"
					ChoiceLoadIcon.Parent = ChoiceLoad
					local ChoiceProperties = Choice:Clone()
					ChoiceProperties.Text = string.rep(" ", 8).. "Edit..."
					ChoiceProperties.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceProperties.Position = UDim2.new(0, (75 * 2) + (1 * 2), 0, 1)
					ChoiceProperties.Parent = MenuBar1
					ChoiceProperties.MouseEnter:connect(function() ChoiceProperties.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceProperties.BorderSizePixel = 1 end)
					ChoiceProperties.MouseLeave:connect(function() ChoiceProperties.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceProperties.BorderSizePixel = 0 end)
					ChoiceProperties.MouseButton1Down:connect(function() ChoiceProperties.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceProperties.MouseButton1Up:connect(function() ChoiceProperties.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						local SortType2 = 1
						local Popup = C.Function.GetModule("GuiSupport").WindowCreate(UDim2.new(0.5, -500 / 2, 0.5, -500 / 2), UDim2.new(0, 500, 0, 500), Gui, "Set Propertes", true, true, true, true, true)
						Popup.Icon.Image = "http://www.roblox.com/Asset/?id=43318689"
						local Previous = new("TextButton")
						Previous.Name = "Previous"
						Previous.Text = "<"
						Previous.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Previous.BorderColor3 = Color3.new(0, 0, 0)
						Previous.BorderSizePixel = 1
						Previous.TextColor3 = Color3.new(0, 0, 0)
						Previous.Size = UDim2.new(0, 20, 0, 20)
						Previous.Position = UDim2.new(0, 5, 1, -75)
						Previous.Parent = Popup.Content
						local Center = new("TextLabel")
						Center.Name = "Center"
						Center.Text = "0 to 0 of 0"
						Center.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Center.BorderColor3 = Color3.new(0, 0, 0)
						Center.BorderSizePixel = 1
						Center.TextColor3 = Color3.new(0, 0, 0)
						Center.FontSize = "Size14"
						Center.Size = UDim2.new(1, -50, 0, 20)
						Center.Position = UDim2.new(0, 25, 1, -75)
						Center.Parent = Popup.Content
						local Next = new("TextButton")
						Next.Text = ">"
						Next.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Next.BorderColor3 = Color3.new(0, 0, 0)
						Next.BorderSizePixel = 1
						Next.TextColor3 = Color3.new(0, 0, 0)
						Next.Size = UDim2.new(0, 20, 0, 20)
						Next.Position = UDim2.new(1, -25, 1, -75)
						Next.Parent = Popup.Content
						local ListFrameHeader = C.Function.GetModule("GuiSupport").WindowControls.ListFrame.New()
						ListFrameHeader.Size = UDim2.new(1, -10, 0, 20)
						ListFrameHeader.Position = UDim2.new(0, 5, 0, 5)
						ListFrameHeader.Parent = Popup.Content
						C.Function.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameHeader, {"Variable\tType\tValue"}, 2)
						local ListFrameProperties = C.Function.GetModule("GuiSupport").WindowControls.ListFrame.New()
						ListFrameProperties.Size = UDim2.new(1, -10, 1, -100)
						ListFrameProperties.Position = UDim2.new(0, 5, 0, 25)
						ListFrameProperties.Parent = Popup.Content
						local function UpdateProperties(...)
							local Properties, Types = C.Function.GetModule("RobloxProperties").GetProperties(Object)
							local List = {}
							for i = 1, #Properties do
								local Result = "Nil"
								if Types[i] == "Instance" then
									Result = Object[Properties[i]]:GetFullName()
								elseif Types[i] == "Struct.Vector2" then
									Result = "(" ..Object[Properties[i]].x.. ", " ..Object[Properties[i]].y.. ")"
								elseif Types[i] == "Struct.Vector3" then
									Result = "(" ..Object[Properties[i]].x.. ", " ..Object[Properties[i]].y.. ", " ..Object[Properties[i]].z.. ")"
								elseif Types[i] == "Struct.CFrame" then
									local x, y, z = Object[Properties[i]]:toEulerAnglesXYZ()
									Result = "(" ..Object[Properties[i]].p.x.. ", " ..Object[Properties[i]].p.y.. ", " ..Object[Properties[i]].p.z.. "), (" ..x.. ", " ..y.. ", " ..z.. ")"
								elseif Types[i] == "Struct.BrickColor" then
									Result = Object[Properties[i]].Name.. " (ID " ..Object[Properties[i]].Number.. ", (" ..Object[Properties[i]].r.. ", " ..Object[Properties[i]].g.. ", " ..Object[Properties[i]].b.. ")"
								elseif Types[i] == "Struct.Color3" then
									Result = "(" ..Object[Properties[i]].r.. ", " ..Object[Properties[i]].g.. ", " ..Object[Properties[i]].b.. ")"
								elseif Types[i] == "Struct.UDim" then
									Result = "(" ..Object[Properties[i]].Scale.. ", " ..Object[Properties[i]].Offset.. ")"
								elseif Types[i] == "Struct.UDim2" then
									Result = "(" ..Object[Properties[i]].X.Scale.. ", " ..Object[Properties[i]].X.Offset.. ", " ..Object[Properties[i]].Y.Scale.. ", " ..Object[Properties[i]].Y.Offset.. ")"
								elseif Types[i] == "Struct.Ray" then
									Result = "Origin: " ..Object[Properties[i]].Origin.x.. ", " ..Object[Properties[i]].Origin.y.. ", " ..Object[Properties[i]].Origin.z.. "). Direction: " ..Object[Properties[i]].Direction.x.. ", " ..Object[Properties[i]].Direction.y.. ", " ..Object[Properties[i]].Direction.z.. ")."
								elseif Types[i] == "Struct.Axes" then
									Result = Object[Properties[i]].X.. ", " ..Object[Properties[i]].Y.. ", " ..Object[Properties[i]].Z
								elseif Types[i] == "Faces" then
									if Object[Properties[i]].Right == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Right"
									end
									if Object[Properties[i]].Top == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Top"
									end
									if Object[Properties[i]].Back == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Back"
									end
									if Object[Properties[i]].Left == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Left"
									end
									if Object[Properties[i]].Bottom == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Bottom"
									end
									if Object[Properties[i]].Front == true then
										Result = (Result ~= "" and Result.. ", " or "").. "Front"
									end
								elseif Types[i] == "String" then
									Result = "\"" ..Object[Properties[i]].. "\""
								else
									Result = tostring(Object[Properties[i]])
								end
								table.insert(List, Properties[i].. "\t" ..Types[i].. "\t" ..Result)
							end
							table.sort(List, function(a, b) return C.Function.Explode("\t", a)[SortType2]:lower() < C.Function.Explode("\t", b)[SortType2]:lower() end)
							C.Function.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameProperties, List, 1, ...)
							Center.Text = ListFrameProperties.ListIndex.Value.. " to " ..(ListFrameProperties.ListIndex.Value + #ListFrameProperties:GetChildren() - 2).. " of " ..#Properties
							for _, Tag in pairs(ListFrameProperties:GetChildren()) do
								for _, Table in pairs(Tag:GetChildren()) do
									pcall(function()
										Table.MouseButton1Up:connect(function()
											Popup.StatusBar.Text = "Currently, editing properties has not been implimented."
										end)
									end)
								end
							end
						end
						coroutine.wrap(function()
							C.Function.GetModule("GuiSupport").WindowControls.ListFrame.ListUpdate(ListFrameProperties, {"Loading..."}, 1)
							wait(0.5)
							UpdateProperties()
						end)()
						for i, Table in pairs(ListFrameHeader.Tag1:GetChildren()) do
							Table.MouseButton1Up:connect(function()
								SortType2 = i
								UpdateProperties()
							end)
						end
						Previous.MouseButton1Up:connect(function() UpdateProperties(-1, "page") end)
						Next.MouseButton1Up:connect(function() UpdateProperties(1, "page") end)
						local Button = new("TextButton")
						Button.Text = "Apply"
						Button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Button.BorderColor3 = Color3.new(0, 0, 0)
						Button.BorderSizePixel = 1
						Button.TextColor3 = Color3.new(0, 0, 0)
						Button.Size = UDim2.new(0, 80, 0, 35)
						Button.Position = UDim2.new(1, -105, 1, -45)
						Button.Parent = Popup.Content
						Button.MouseButton1Up:connect(function()
						end)
						local Button = new("TextButton")
						Button.Text = "Refresh"
						Button.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
						Button.BorderColor3 = Color3.new(0, 0, 0)
						Button.BorderSizePixel = 1
						Button.TextColor3 = Color3.new(0, 0, 0)
						Button.Size = UDim2.new(0, 80, 0, 35)
						Button.Position = UDim2.new(0, 25, 1, -45)
						Button.Parent = Popup.Content
						Button.MouseButton1Up:connect(function()
						end)
					end)
					local ChoicePropertiesIcon = ChoiceIcon:Clone()
					ChoicePropertiesIcon.Image = "http://www.roblox.com/Asset/?id=43318689"
					ChoicePropertiesIcon.Parent = ChoiceProperties
					local ChoiceDelete = Choice:Clone()
					ChoiceDelete.Text = string.rep(" ", 8).. "Delete"
					ChoiceDelete.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceDelete.Position = UDim2.new(0, (75 * 3) + (1 * 3), 0, 1)
					ChoiceDelete.Parent = MenuBar1
					ChoiceDelete.MouseEnter:connect(function() ChoiceDelete.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceDelete.BorderSizePixel = 1 end)
					ChoiceDelete.MouseLeave:connect(function() ChoiceDelete.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceDelete.BorderSizePixel = 0 end)
					ChoiceDelete.MouseButton1Down:connect(function() ChoiceDelete.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceDelete.MouseButton1Up:connect(function() ChoiceDelete.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						if Object.Parent ~= nil then
							local Delete = Object
							Object = Object.Parent
							if pcall(function() Delete:Remove() end) == false then
								Object = Delete
								ObjectChildren = Object:GetChildren()
								UpdatePage()
								Window.StatusBar.Text = "Error: Object could not be removed!"
								wait(5)
								Window.StatusBar.Text = ""
							else
								ObjectChildren = Object:GetChildren()
								UpdatePage()
							end
						else
							Window.StatusBar.Text = "Error: Object has no parent!"
							wait(5)
							Window.StatusBar.Text = ""
						end
					end)
					local ChoiceDeleteIcon = ChoiceIcon:Clone()
					ChoiceDeleteIcon.Image = "http://www.roblox.com/Asset/?id=42736686"
					ChoiceDeleteIcon.Parent = ChoiceDelete
					local ChoiceRefresh = Choice:Clone()
					ChoiceRefresh.Text = string.rep(" ", 8).. "Refresh"
					ChoiceRefresh.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceRefresh.Position = UDim2.new(0, (75 * 4) + (1 * 4), 0, 1)
					ChoiceRefresh.Parent = MenuBar1
					ChoiceRefresh.MouseEnter:connect(function() ChoiceRefresh.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceRefresh.BorderSizePixel = 1 end)
					ChoiceRefresh.MouseLeave:connect(function() ChoiceRefresh.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceRefresh.BorderSizePixel = 0 end)
					ChoiceRefresh.MouseButton1Down:connect(function() ChoiceRefresh.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceRefresh.MouseButton1Up:connect(function() ChoiceRefresh.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						ObjectChildren = Object:GetChildren()
						UpdatePage()
					end)
					local ChoiceRefreshIcon = ChoiceIcon:Clone()
					ChoiceRefreshIcon.Image = "http://www.roblox.com/Asset/?id=43215825"
					ChoiceRefreshIcon.Parent = ChoiceRefresh
					local ChoiceUpLevel = Choice:Clone()
					ChoiceUpLevel.Text = string.rep(" ", 8).. "Up Level"
					ChoiceUpLevel.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceUpLevel.Position = UDim2.new(0, (75 * 5) + (1 * 5), 0, 1)
					ChoiceUpLevel.Parent = MenuBar1
					ChoiceUpLevel.MouseEnter:connect(function() ChoiceUpLevel.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceUpLevel.BorderSizePixel = 1 end)
					ChoiceUpLevel.MouseLeave:connect(function() ChoiceUpLevel.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceUpLevel.BorderSizePixel = 0 end)
					ChoiceUpLevel.MouseButton1Down:connect(function() ChoiceUpLevel.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceUpLevel.MouseButton1Up:connect(function() ChoiceUpLevel.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						if Object.Parent ~= nil then
							Object = Object.Parent
							ObjectChildren = Object:GetChildren()
							UpdatePage()
						else
							Window.StatusBar.Text = "Error: Object has no parent!"
							wait(5)
							Window.StatusBar.Text = ""
						end
					end)
					local ChoiceUpLevelIcon = ChoiceIcon:Clone()
					ChoiceUpLevelIcon.Image = "http://www.roblox.com/Asset/?id=42724903"
					ChoiceUpLevelIcon.Parent = ChoiceUpLevel
					local ChoiceHome = Choice:Clone()
					ChoiceHome.Text = string.rep(" ", 8).. "Home"
					ChoiceHome.Size = UDim2.new(0, 75 - 2, 1, -2)
					ChoiceHome.Position = UDim2.new(0, (75 * 6) + (1 * 6), 0, 1)
					ChoiceHome.Parent = MenuBar1
					ChoiceHome.MouseEnter:connect(function() ChoiceHome.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5) ChoiceHome.BorderSizePixel = 1 end)
					ChoiceHome.MouseLeave:connect(function() ChoiceHome.BackgroundColor3 = Color3.new(0.75, 0.75, 0.75) ChoiceHome.BorderSizePixel = 0 end)
					ChoiceHome.MouseButton1Down:connect(function() ChoiceHome.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4) end)
					ChoiceHome.MouseButton1Up:connect(function() ChoiceHome.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
						Object = Home
						ObjectChildren = Object:GetChildren()
						UpdatePage()
					end)
					local ChoiceHomeIcon = ChoiceIcon:Clone()
					ChoiceHomeIcon.Image = "http://www.roblox.com/Asset/?id=43216297"
					ChoiceHomeIcon.Parent = ChoiceHome
				end)()
			end
		end
	end
end, "Explorer", "Creates a Gui in a player allowing you to explore the contents of the game.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand("lighting", 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if MsgSplit[1]:lower() == "dawn" then
		Lighting.Brightness = 2
		Lighting.GeographicLatitude = 41.73
		Lighting.Ambient = Color3.new(127 / 255, 127 / 255, 150 / 255)
		Lighting.ColorShift_Top = Color3.new(0, 0, 25 / 255)
		Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
		Lighting.ShadowColor = Color3.new(179 / 255, 179 / 255, 179 / 255)
		Lighting.TimeOfDay = "07:00:00"
	end
	if MsgSplit[1]:lower() == "day" then
		Lighting.Brightness = 2
		Lighting.GeographicLatitude = 41.73
		Lighting.Ambient = Color3.new(150 / 255, 127 / 255, 150 / 255)
		Lighting.ColorShift_Top = Color3.new(10 / 255, 10 / 255, 10 / 255)
		Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
		Lighting.ShadowColor = Color3.new(179 / 255, 179 / 255, 179 / 255)
		Lighting.TimeOfDay = "12:00:00"
	end
	if MsgSplit[1]:lower() == "dusk" then
		Lighting.Brightness = 2
		Lighting.GeographicLatitude = 41.73
		Lighting.Ambient = Color3.new(150 / 255, 110 / 255, 110 / 255)
		Lighting.ColorShift_Top = Color3.new(50 / 255, 10 / 255, 10 / 255)
		Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
		Lighting.ShadowColor = Color3.new(179 / 255, 179 / 255, 179 / 255)
		Lighting.TimeOfDay = "17:55:00"
	end
	if MsgSplit[1]:lower() == "night" then
		Lighting.Brightness = 5
		Lighting.GeographicLatitude = 41.73
		Lighting.Ambient = Color3.new(20 / 255, 20 / 255, 20 / 255)
		Lighting.ColorShift_Top = Color3.new(0, 0, 25 / 255)
		Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
		Lighting.ShadowColor = Color3.new(200 / 255, 200 / 255, 200 / 255)
		Lighting.TimeOfDay = "21:00:00"
	end
	if MsgSplit[1]:lower() == "default" then
		Lighting.Brightness = 1
		Lighting.GeographicLatitude = 41.73
		Lighting.Ambient = Color3.new(128 / 255, 128 / 255, 128 / 255)
		Lighting.ColorShift_Top = Color3.new(0, 0, 0)
		Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
		Lighting.ShadowColor = Color3.new(179 / 255, 179 / 255, 184 / 255)
		Lighting.TimeOfDay = "14:00:00"
	end
	if MsgSplit[1]:lower() == "black" then
		Lighting.Brightness = 0
		Lighting.GeographicLatitude = 90
		Lighting.Ambient = Color3.new(0, 0, 0)
		Lighting.ColorShift_Top = Color3.new(0, 0, 0)
		Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
		Lighting.ShadowColor = Color3.new(1, 1, 1)
		Lighting.TimeOfDay = "00:00:00"
	end
	if MsgSplit[1]:lower() == "shift" then
		if Self.Shift == nil then Self.Shift = false end
		if Self.ShiftTime == nil then Self.ShiftTime = 10 end
		if Self.Shift == true then Self.Shift = false else Self.Shift = true end
		local h = tonumber(C.Function.Explode(":", Lighting.TimeOfDay)[1])
		local m = tonumber(C.Function.Explode(":", Lighting.TimeOfDay)[2])
		local s = tonumber(C.Function.Explode(":", Lighting.TimeOfDay)[3])
		while Self.Shift == true and CoolCMDs ~= nil do
			s = s + tonumber(MsgSplit[2])
			if s >= 60 then
				m = m + math.floor(s / 60)
				s = 0
			end
			if m > 60 then
				h = h + math.floor(m / 60)
				m = 0
			end
			if h > 24 then
				h = 0
			end
			Lighting.TimeOfDay = h.. ":" ..m.. ":" ..s
			wait()
		end
	end
	if MsgSplit[1]:lower() == "ambient" then pcall(function() Lighting.Ambient = Color3.new(tonumber(MsgSplit[2]), tonumber(MsgSplit[3]), tonumber(MsgSplit[4])) end) end
	if MsgSplit[1]:lower() == "bottom" then pcall(function() Lighting.ColorShift_Bottom = Color3.new(tonumber(MsgSplit[2]), tonumber(MsgSplit[3]), tonumber(MsgSplit[4])) end) end
	if MsgSplit[1]:lower() == "top" then pcall(function() Lighting.ColorShift_Top = Color3.new(tonumber(MsgSplit[2]), tonumber(MsgSplit[3]), tonumber(MsgSplit[4])) end) end
	if MsgSplit[1]:lower() == "shadow" then pcall(function() Lighting.ShadowColor = Color3.new(tonumber(MsgSplit[2]), tonumber(MsgSplit[3]), tonumber(MsgSplit[4])) end) end
	if MsgSplit[1]:lower() == "brightness" then pcall(function() Lighting.Brightness = Color3.new(tonumber(MsgSplit[2]), tonumber(MsgSplit[3]), tonumber(MsgSplit[4])) end) end
	if MsgSplit[1]:lower() == "latitude" then pcall(function() Lighting.GeographicLatitude = tonumber(MsgSplit[2]) end) end
	if MsgSplit[1]:lower() == "time" or MsgSplit[1]:lower() == "timeofday" then pcall(function() Lighting.TimeOfDay = MsgSplit[2] end) end
end, "Lighting", "Change the lighting color.", "[dawn, day, dusk, night, default, black, shift, [[ambient, bottom, top, shadow]" ..C.Data.Split.. "x" ..C.Data.Split.. "y" ..C.Data.Split.. "z], [brightness" ..C.Data.Split.. "0-5], [latitude" ..C.Data.Split.. "0-360], [[time, timeofday]" ..C.Data.Split.. "0-24:0-60:0-60]")

C.Function.CreateCommand({"lockscript", "lock script", "lockscripts", "lock scripts", "ls"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if MsgSplit[1]:lower() == "0" or MsgSplit[1]:lower() == "false" then
		pcall(function() game:GetService("ScriptContext").ScriptsDisabled = false end)
		pcall(function() rawset(_G.Instance, string.reverse("wen"), new) end)
		for _, Script in pairs(C.Function.GetRecursiveChildren(nil, "script", 2)) do
			pcall(function() Script.Disabled = false end)
		end
		C.Function.Msg("Message", "Scripts unlocked.", 5)
	elseif MsgSplit[1]:lower() == "1" or MsgSplit[1]:lower() == "true" then
		pcall(function() game:GetService("ScriptContext").ScriptsDisabled = true end)
		pcall(function() rawset(_G.Instance, string.reverse("wen"), function() error("No objects are currently allowed.") end) end)
		for _, Script in pairs(C.Function.GetRecursiveChildren(nil, "script", 2)) do
			pcall(function() Script.Disabled = true end)
		end
		C.Function.Msg("Message", "Scripts locked.", 5)
	end
end, "Lock Scripts", "Disables all new scripts and all currently running scripts (besides itself).", "[[0, false], [1, true]]")

C.Function.CreateCommand({"clean", "cl"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 3 then return end
	local CleanType = MsgSplit[#MsgSplit - 1]
	CleanType = CleanType:lower()
	if CleanType == "1" or CleanType == "name" then CleanType = 1 end
	if CleanType == "2" or CleanType == "class" or CleanType == "classname" then CleanType = 2 end
	if CleanType == "3" or CleanType == "type" or CleanType == "isa" then CleanType = 3 end
	if CleanType == "4" or CleanType == "all" then CleanType = 4 end
	if type(CleanType) ~= "number" then CleanType = 4 end
	local CleanExtra = MsgSplit[#MsgSplit]
	if CleanExtra == nil then CleanExtra = "" end
	for i = 1, #MsgSplit - 2 do
		for _, Part in pairs(C.Function.GetRecursiveChildren(nil, MsgSplit[i], CleanType)) do
			local _, CanClean = pcall(function()
				if Part.ClassName == "Lighting" then return false end
				if string.match(CleanExtra, "nochar") then
					for _, Player in pairs(Players:GetPlayers()) do
						if Part == Player.Character or Part:IsDescendantOf(Player.Character) then return false end
					end
				end
				if string.match(CleanExtra, "noplayer") then
					for _, Player in pairs(Players:GetPlayers()) do
						if Part:IsDescendantOf(Player) or Part == Player then return false end
					end
				end
				if string.match(CleanExtra, "nobase") then
					if Part.Parent == Workspace and Part.Name == "Base" then
						return false
					end
				end
				if string.match(CleanExtra, "noscript") then
					if Part:IsA("BaseScript") then
						return false
					end
				end
				if string.match(CleanExtra, "stopscript") then
					if Part:IsA("BaseScript") then
						Part.Disabled = true
					end
				end
				if string.match(CleanExtra, "stopsound") then
					if Part.ClassName == "Sound" then
						Part:Stop()
						Part.Looped = false
						Part.SoundId = ""
						Part.Volume = 0
						Part.Pitch = 0
						wait()
					end
				end
				return true
			end)
			if CanClean == true then
				pcall(function() Part:Remove() end)
			end
		end
	end
end, "Clean", "Cleans the game of all obejcts with a certain Name or ClassName or inherited class (or all). Extra arguments: nochar, noplayer, nobase, noscript, stopscript, stopsound.", "[name, classname, inherited]" ..C.Data.Split.. "[...]" ..C.Data.Split.. "[[1, name], [2, class], [3, inherited], [4, all]]" ..C.Data.Split.. "extra arguments")

C.Function.CreateCommand("health", 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	local Health = MsgSplit[#MsgSplit]
	if Health == nil then Health = "" end
	Health = Health:lower()
	if Health == "math.huge" then
		Health = math.huge
	elseif Health == "" or tonumber(Health) == nil then
		Health = 0
	else
		Health = tonumber(Health)
	end
	Health = math.abs(Health)
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Humanoid") ~= nil then
					if Health > Player.Character.Humanoid.MaxHealth then
						Player.Character.Humanoid.MaxHealth = Health
					else
						Player.Character.Humanoid.MaxHealth = 100
						if Health > Player.Character.Humanoid.MaxHealth then
							Player.Character.Humanoid.MaxHealth = Health
						end
					end
					Player.Character.Humanoid.Health = Health
				end
			end
		end
	end
end, "Health", "Set the health of a player's character. ", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "[health (number), math.huge, random, my health]")

C.Function.CreateCommand("lua", 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	C.Function.CreateScript(Msg, Workspace, true, false)
end, "Lua Run", "Creates a new script.", "source")

C.Function.CreateCommand({"luanodebug", "luandb"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	C.Function.CreateScript(Msg, Workspace, false, false)
end, "Lua Run (No Debug)", "Creates a new script without error output.", "source")

C.Function.CreateCommand({"lualocal", "lual"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	C.Function.CreateScript(Msg, Speaker, true, true)
end, "Lua Local Run", "Creates a new local script.", "source")

C.Function.CreateCommand({"lualocalnodebug", "lualndb"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	C.Function.CreateScript(Msg, Speaker, false, true)
end, "Lua Local Run (No Debug)", "Creates a new local script without error output.", "source")

C.Function.CreateCommand("loadstring", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	local _, Error = loadstring(Msg)
	if Error ~= nil then
		C.Function.Msg("NewHint", "[CoolCMDs Loadstring, " ..string.sub(Error, 9), 10, Speaker)
	else
		C.Function.Msg("NewHint", "[CoolCMDs Loadstring] Running script...", 1, Speaker)
		wait()
		Msg = string.gsub(Msg, "print%(", "QuickPrint(")
		Msg = [[function QuickPrint(...)
	local Arguments = {...}
	local Result = tostring(Arguments[1])
	for i = 2, #Arguments do Result = Result.. "\t" ..tostring(Arguments[i]) end
	local Display = new("Hint", Workspace)
	Display.Text = "[Loadstring] " ..Result
	game:GetService("Debris"):AddItem(Display, 10)
	print(Result)
	return Result
end
function printf(...)
	QuickPrint(string.format(...))
end
]] ..Msg
		loadstring(Msg)()
	end
end, "Lua Run String", "Run a string through the Lua parser.", "source")

C.Function.CreateCommand({"walkspeed", "ws"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Humanoid") ~= nil then
					pcall(function() Player.Character.Humanoid.WalkSpeed = tonumber(MsgSplit[#MsgSplit]) end)
				end
			end
		end
	end
end, "WalkSpeed", "Set the WalkSpeed of a player's character. ", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "speed")

C.Function.CreateCommand({"teleport", "tele", "tp"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	local Position = MsgSplit[#MsgSplit]:lower()
	local TeleportPlayer = nil
	if #C.Function.Explode(", ", Position) == 3 then
		Position = CFrame.new(C.Function.Explode(", ", Position)[1], C.Function.Explode(", ", Position)[2], C.Function.Explode(", ", Position)[3])
	else
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), Position:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Torso") ~= nil then
					Position = Player.Character.Torso.CFrame
					TeleportPlayer = Player
					break
				end
			end
		end
	end
	if type(Position) == "string" then return end
	local i = 1
	for x = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[x]:lower()) and Player.Character ~= nil and Player ~= TeleportPlayer then
				i = i + 1
				if Player.Character:FindFirstChild("Torso") ~= nil then
					Player.Character.Torso.Anchored = true
					wait()
					Player.Character.Torso.CFrame = Position * CFrame.new(0, 4 * i, 0)
					Player.Character.Torso.Velocity = Vector3.new()
					Player.Character.Torso.RotVelocity = Vector3.new()
					wait()
					Player.Character.Torso.Anchored = false
				else
					for y = 1, 100 do
						Player.Character:MoveTo((Position * CFrame.new(0, 4 * i, 0)).p)
					end
				end
			end
		end
	end
end, "Teleport", "Teleport players to other players or positions. ", "player to teleport" ..C.Data.Split.. "[...]" ..C.Data.Split.. "player to teleport to, or [x, y, z]")

C.Function.CreateCommand({"waypoint", "wp"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if Speaker.Character == nil then return end
	if Speaker.Character:FindFirstChild("Torso") == nil then return end
	if #MsgSplit < 2 then return end
	local Type = MsgSplit[1]:lower()
	local Index = MsgSplit[2]
	local Player = C.Function.GetPlayerTable(Speaker.Name)
	if Player.Waypoints == nil then
		Player.Waypoints = {}
	end
	Waypoint = Player.Waypoints
	if Type == "set" then
		Waypoint[Index] = {}
		Waypoint[Index].CFrame = Speaker.Character.Torso.CFrame
		Waypoint[Index].Velocity = Speaker.Character.Torso.Velocity
		Waypoint[Index].RotVelocity = Speaker.Character.Torso.RotVelocity
		C.Function.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] Set at CFrame {" ..tostring(Waypoint[Index].Position).. "}.", 5, Speaker)
	elseif Type == "get" then
		if Waypoint[Index] ~= nil then
			Speaker.Character.Torso.Anchored = true
			wait()
			Speaker.Character.Torso.CFrame = Waypoint[Index].CFrame
			Speaker.Character.Torso.Velocity = Waypoint[Index].Velocity
			Speaker.Character.Torso.RotVelocity = Waypoint[Index].RotVelocity
			wait()
			Speaker.Character.Torso.Anchored = false
			C.Function.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] Moved to CFrame {" ..tostring(Waypoint[Index].Position).. "}.", 5, Speaker)
		else
			C.Function.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] There is no waypoint with that index.", 5, Speaker)
		end
	elseif Type == "remove" then
		if Waypoint[Index] ~= nil then
			Waypoint[Index] = nil
			C.Function.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] Removed.", 5, Speaker)
		else
			C.Function.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] There is no waypoint with that index.", 5, Speaker)
		end
	elseif Type == "show" then
		if Waypoint[Index] ~= nil then
			C.Function.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] CFrame {" ..tostring(Waypoint[Index].Position).. "}.", 5, Speaker)
		else
			C.Function.Msg("NewHint", "[Waypoint \"" ..Index.. "\"] There is no waypoint with that index.", 5, Speaker)
		end
	end
end, "Waypoint", "Set dynamic waypoints that store your character's position, saved by string indices.", "[set, get, remove, show]" ..C.Data.Split.. "waypoint index")

C.Function.CreateCommand({"kill", "ki"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:GetChildren()) do
					pcall(function() Part.Health = 0 end)
				end
			end
		end
	end
end, "Kill", "Kills people.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"healthbar", "hb"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return end
	local HealthBar = MsgSplit[#MsgSplit]
	if HealthBar ~= "2.0" and HealthBar ~= "3.1" then
		C.Function.Msg("NewHint", "[HealthBar] Invalid HealthScript version.", 5, Speaker)
		return
	end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:GetChildren()) do
					if string.match(Part.Name, "HealthScript") then
						Part:Remove()
					end
				end
				for _, Part in pairs(Player.PlayerGui:GetChildren()) do
					if string.match(Part.Name, "HealthGUI") then
						Part:Remove()
					end
				end
				if HealthBar == "2.0" then
					local HealthScript = game:GetService("InsertService"):LoadAsset(55672625):GetChildren()[1]
					HealthScript.Parent = Player.Character
				elseif HealthBar == "3.1" then
					local HealthScript = game:GetService("InsertService"):LoadAsset(55672666):GetChildren()[1]
					HealthScript.Parent = Player.Character
				end
			end
		end
	end
end, "HealthBar", "Create new HealthScripts for Players. Types are 2.0 and 3.1.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "type")

C.Function.CreateCommand({"setname", "sn"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit <= 1 then return end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				local Tools = {}
				local HeldTool = nil
				for _, Part in pairs(Player.Character:GetChildren()) do
					if Part:IsA("Tool") then
						Part.Parent = nil
						HeldTool = Part
					elseif Part.ClassName == "ForceField" then
						Part:Remove()
					end
				end
				for _, Tool in pairs(Player.Backpack:GetChildren()) do
					Tool.Parent = nil
					table.insert(Tools, Tool)
				end
				Player.Character.archivable = true
				local Clone = Player.Character:Clone()
				Clone.Name = MsgSplit[#MsgSplit]
				Clone.archivable = false
				Player.Character = Clone
				Clone.Parent = Workspace
				wait(0.25)
				if HeldTool ~= nil then
					HeldTool.Parent = Player.Character
				end
				for i = 1, #Tools do
					Tools[i].Parent = Player.Backpack
				end
			end
		end
	end
end, "Set Name", "Set a character's name.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "name")

C.Function.CreateCommand("clone", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit <= 1 then return end
	local Clones = tonumber(MsgSplit[#MsgSplit])
	if Clones == nil then Clones = 1 end
	if Clones < 1 then Clones = 1 end
	if Clones > 10 then Clones = 10 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for i = 1, Clones do
					Player.Character.archivable = true
					local Clone = Player.Character:Clone()
					Player.Character.archivable = false
					Clone.archivable = false
					Clone.Name = Player.Character.Name.. "'s Clone"
					Clone.Parent = Workspace
					if Clone:FindFirstChild("Humanoid") ~= nil then
						Clone.Humanoid.Died:connect(function()
							wait(5)
							Clone:Remove()
						end)
					end
				end
			end
		end
	end
end, "Clone", "Clone a player.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "number of clones (max 10)")

C.Function.CreateCommand({"fixcamera", "fc"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				local Fix = game:GetService("InsertService"):LoadAsset(52948436):GetChildren()[1]
				Fix.Disabled = true
				Fix.Parent = Player.Character
				wait(0.05)
				Fix.Disabled = false
			end
		end
	end
end, "Fix Camera", "Fix a player's camera.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"freeze", "f"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:GetChildren()) do
					pcall(function() Part.Anchored = true end)
				end
			end
		end
	end
end, "Freeze", "Freeze people in place.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"unfreeze", "unf", "uf", "thaw", "th"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:GetChildren()) do
					pcall(function() Part.Anchored = false end)
				end
			end
		end
	end
end, "Unfreeze/Thaw", "Unfreeze/thaw people.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"killer frogs", "frogs"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return end
	local Frogs = tonumber(MsgSplit[#MsgSplit])
	if Frogs == nil then Frogs = 1 end
	if Frogs > 25 then Frogs = 25 end
	if Frogs <= 0 then Frogs = 1 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _, _ = Player.Character.Torso.CFrame, Player.Character.Humanoid.Health end) == true then
				for x = 1, Frogs do
					local Frog = new("Part", Workspace)
					Frog.Name = "Killer Frog"
					Frog.BrickColor = BrickColor.new("Bright green")
					Frog.FormFactor = "Custom"
					Frog.Size = Vector3.new(0.9, 0.9, 0.9)
					Frog.TopSurface = 0
					Frog.BottomSurface = 0
					Frog.CFrame = CFrame.new(Player.Character.Torso.Position) * CFrame.new(math.random(-10, 10), math.random(-1, 1), math.random(-10, 10))
					Frog.Touched:connect(function(Hit) pcall(function() Hit.Parent.Humanoid:TakeDamage(0.5) end) end)
					new("Decal", Frog).Texture = "rbxasset://textures\\face.png"
					coroutine.wrap(function()
						for i = 1, 0, -0.05 do
							Frog.Transparency = i
							wait()
						end
						Frog.Transparency = 0
						while Frog.Parent ~= nil do
							if pcall(function() local _, _ = Player.Character.Torso.CFrame, Player.Character.Humanoid.Health end) == false then break end
							if Player.Character.Humanoid.Health <= 0 then break end
							wait(math.random(10, 200) / 100)
							Frog.Velocity = Frog.Velocity + ((Player.Character.Torso.Position - Frog.Position).unit * math.random(20, 40)) + Vector3.new(0, math.random(15, 25), 0)
						end
						for i = 0, 1, 0.05 do
							Frog.Transparency = i
							wait()
						end
						Frog:Remove()
					end)()
				end
			end
		end
	end
end, "Killer Frogs", "Throw some frogs at people.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "number of frogs (max 25)")

C.Function.CreateCommand({"killer bees", "bees"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return end
	local Bees = tonumber(MsgSplit[#MsgSplit])
	if Bees == nil then Bees = 1 end
	if Bees > 50 then Bees = 50 end
	if Bees <= 0 then Bees = 1 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _, _ = Player.Character.Torso.CFrame, Player.Character.Humanoid.Health end) == true then
				for x = 1, Bees do
					local Bee = new("Part", Workspace)
					Bee.Name = "Killer Bee"
					Bee.BrickColor = BrickColor.new("Bright yellow")
					Bee.FormFactor = "Custom"
					Bee.Size = Vector3.new(0.4, 0.9, 0.4)
					Bee.TopSurface = 0
					Bee.BottomSurface = 0
					Bee.CFrame = CFrame.new(Player.Character.Torso.Position) * CFrame.new(math.random(-10, 10), math.random(1, 25), math.random(-10, 10))
					Bee.Touched:connect(function(Hit) pcall(function() Hit.Parent.Humanoid:TakeDamage(0.25) end) end)
					new("SpecialMesh", Bee).MeshType = "Head"
					coroutine.wrap(function()
						for i = 1, 0, -0.05 do
							Bee.Transparency = i
							wait()
						end
						Bee.Transparency = 0
						while Bee.Parent ~= nil do
							if pcall(function() local _, _ = Player.Character.Torso.CFrame, Player.Character.Humanoid.Health end) == false then break end
							if Player.Character.Humanoid.Health <= 0 then break end
							Bee.Velocity = Bee.Velocity + ((Player.Character.Torso.Position - Bee.Position).unit * math.random(15, 20)) + Vector3.new(math.random(-5, 5), math.random(-5, 5) + 2.5, math.random(-5, 5))
							wait(math.random(1, 10) / 100)
						end
						for i = 0, 1, 0.05 do
							Bee.Transparency = i
							wait()
						end
						Bee:Remove()
					end)()
				end
			end
		end
	end
end, "Killer Bees", "Throw clouds of angry bees at people.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "number of bees (max 50)")

C.Function.CreateCommand({"blind", "b"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				local Blind = new("ScreenGui", Player.PlayerGui)
				Blind.Name = "CoolCMDsBlind"
				local Black = new("Frame", Blind)
				Black.Name = "Black"
				Black.BorderSizePixel = 0
				Black.ZIndex = math.huge
				Black.BackgroundColor3 = Color3.new(0, 0, 0)
				Black.Size = UDim2.new(2, 0, 2, 0)
				Black.Position = UDim2.new(-0.5, 0, -0.5, 0)
				Black.Changed:connect(function(Property)
					if Property == "Parent" then
						if Black.Parent ~= Blind then
							Black.Parent = Blind
						end
					end
				end)
				Blind.Changed:connect(function(Property)
					if Property == "Parent" then
						if Blind.Name == "CoolCMDsBlindDisabled" then return end
						if Blind.Parent ~= Player.PlayerGui then
							Blind.Parent = Player.PlayerGui
						end
					end
				end)
			end
		end
	end
end, "Blind", "Blind people.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"unblind", "noblind", "unb", "ub", "nb"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				pcall(function() while true do Player.PlayerGui.CoolCMDsBlind.Name = "CoolCMDsBlindDisabled" Player.PlayerGui.CoolCMDsBlindDisabled:Remove() end end)
			end
		end
	end
end, "Unblind", "Let people see again.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"nogui", "ng"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				for _, Part in pairs(Player.PlayerGui:GetChildren()) do
					if Part:IsA("GuiBase") then
						pcall(function() Part:Remove() end)
					end
				end
			end
		end
	end
end, "No Gui", "Remove all Guis from a player.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"notools", "nt"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				if Player.Character ~= nil then
					for _, Part in pairs(Player.Character:GetChildren()) do
						if Part:IsA("BackpackItem") then
							pcall(function() Part:Remove() end)
						end
					end
				end
				for _, Part in pairs(Player.Backpack:GetChildren()) do
					if Part:IsA("BackpackItem") then
						pcall(function() Part:Remove() end)
					end
				end
			end
		end
	end
end, "No Tools", "Remove all tools from a player.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"crush", "cr"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _ = Player.Character.Torso.CFrame end) == true and pcall(function() local _ = Player.Character.Humanoid end) == true then
				coroutine.wrap(function()
					local WalkSpeed = Player.Character.Humanoid.WalkSpeed
					Player.Character.Humanoid.WalkSpeed = 0
					wait(3)
					Player.Character.Humanoid.WalkSpeed = WalkSpeed
				end)()
				local Brick = new("Part", Workspace)
				Brick.Name = "Brick"
				Brick.BrickColor = BrickColor.new("Really black")
				Brick.TopSurface = 0
				Brick.BottomSurface = 0
				Brick.FormFactor = "Custom"
				Brick.Size = Vector3.new(10, 7, 8)
				Brick.CFrame = CFrame.new(Player.Character.Torso.Position) * CFrame.new(0, 200, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.random(0, 360)), 0)
				new("SpecialMesh", Brick).MeshType = "Torso"
				local BodyVelocity = new("BodyVelocity", Brick)
				BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				BodyVelocity.velocity = Vector3.new(0, -300, 0)
				Brick.Touched:connect(function(Hit)
					if Hit.Parent == nil then return end
					if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
						Hit.Parent.Humanoid.MaxHealth = 100
						Hit.Parent.Humanoid.Health = 0
					else
						if Hit:GetMass() > 1000 then return end
						Hit.Anchored = false
						Hit:BreakJoints()
					end
				end)
				coroutine.wrap(function()
					for i = 1, 0, -0.05 do
						Brick.Transparency = i
						wait()
					end
					Brick.Transparency = 0
					wait(2)
					for i = 0, 1, 0.015 do
						Brick.Transparency = i
						wait()
					end
					Brick:Remove()
				end)()
			end
		end
	end
end, "Crush", "WHAM.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"respawn", "rs"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				pcall(function()
					local Model = new("Model", Workspace)
					local Part = new("Part", Model)
					Part.Name = "Head"
					Part.Transparency = 1
					Part.CanCollide = false
					Part.Anchored = true
					Part.Locked = true
					Part.Parent = Model
					local Humanoid = new("Humanoid", Model)
					Humanoid.Health = 100
					Player.Character = Model
					Humanoid.Health = 0
				end)
			end
		end
	end
end, "Respawn", "Respawn a player.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"forcefield", "ff", "shield", "sh"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				new("ForceField", Player.Character)
			end
		end
	end
end, "Spawn ForceField", "Spawn a ForceField object in a Player's character.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"unforcefield", "noforcefield", "unff", "uff", "noff", "unshield", "unsh", "ush", "noshield", "nosh"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:GetChildren()) do
					if Part:IsA("ForceField") then
						Part:Remove()
					end
				end
			end
		end
	end
end, "Remove ForceField", "Remove all ForceField objects in a Player's character.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"explode", "ex"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	local Pressure = math.random(100000, 1000000)
	local Radius = math.random(5, 25)
	if tonumber(MsgSplit[#MsgSplit]) ~= nil and tostring(tonumber(MsgSplit[#MsgSplit])) == MsgSplit[#MsgSplit] then
		Pressure = tonumber(MsgSplit[#MsgSplit])
		table.remove(MsgSplit, #MsgSplit)
	end
	if tonumber(MsgSplit[#MsgSplit]) ~= nil and tostring(tonumber(MsgSplit[#MsgSplit])) == MsgSplit[#MsgSplit]  then
		Radius = tonumber(MsgSplit[#MsgSplit])
		table.remove(MsgSplit, #MsgSplit)
	end
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Part in pairs(Player.Character:GetChildren()) do
					if Part:IsA("BasePart") then
						local Explosion = new("Explosion")
						Explosion.BlastPressure = Pressure
						Explosion.BlastRadius = Radius
						Explosion.Position = Part.Position
						Explosion.Parent = Player.Character
						Explosion.Hit:connect(function(Part)
							if Hit.Parent == nil then return end
							if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
								Hit.Parent.Humanoid.MaxHealth = 100
								Hit.Parent.Humanoid.Health = 0
							else
								if Hit:GetMass() > 1000 then return end
								Hit.Anchored = false
								Hit:BreakJoints()
							end
						end)
					end
				end
				Player.Character:BreakJoints()
			end
		end
	end
end, "Explode", "Spawn an explosion in all parts of a player and break that player's joints.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "(size" ..C.Data.Split.. "pressure)")

C.Function.CreateCommand("hax", 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	if C.Function.IsModuleEnabled("CharacterSupport") == false then
		C.Function.Msg("NewHint", "This command requires the CharacterSupport module to be enabled.", 5, Speaker)
		return
	elseif C.Function.GetModule("CharacterSupport") == nil then
		C.Function.Msg("NewHint", "This command requires the CharacterSupport module to be installed.", 5, Speaker)
		return
	end
	local Characters = tonumber(MsgSplit[#MsgSplit])
	if Characters == nil then Characters = 1 end
	if Characters <= 0 then Characters = 1 end
	if Characters > 10 then Characters = 10 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _ = Player.Character.Torso end) == true then
				for i = 1, Characters do
					coroutine.wrap(function()
						local Character = C.Function.GetModule("CharacterSupport").CreateCharacter(true)
						Character.Name = "Dr. Hax"
						local Head = Character.Head
						Head.face.Texture = "http://www.roblox.com/Asset/?id=16580646"
						local Torso = Character.Torso
						local RightShoulder = Character.Torso["Right Shoulder"]
						local RightArm = Character["Right Arm"]
						local Humanoid = Character.Humanoid
						Character.Shirt.ShirtTemplate = "http://www.roblox.com/Asset/?id=12702133"
						Character.Pants.PantsTemplate = "http://www.roblox.com/Asset/?id=12702160"
						local Hat = new("Hat")
						Hat.Name = "White Hair"
						Hat.AttachmentPos = Vector3.new(0, 0.1, 0)
						local Handle = new("Part")
						Handle.Name = "Handle"
						Handle.FormFactor = 0
						Handle.Size = Vector3.new(2, 1, 1)
						Handle.TopSurface = 0
						Handle.BottomSurface = 0
						Handle.Parent = Hat
						local Mesh = new("SpecialMesh")
						Mesh.MeshId = "http://www.roblox.com/Asset/?id=13332444"
						Mesh.VertexColor = Vector3.new(1, 1, 1)
						Mesh.Parent = Handle
						Hat.Parent = Character
						local Hat = new("Hat")
						Hat.Name = "Beard"
						for i = 0, math.pi, math.pi / 10 do Hat.AttachmentForward = Hat.AttachmentForward + Vector3.new(0, math.pi, 0) end
						Hat.AttachmentPos = Vector3.new(0, -0.5, 0.7)
						local Handle = new("Part")
						Handle.Name = "Handle"
						Handle.FormFactor = 0
						Handle.Size = Vector3.new(1, 1, 1)
						Handle.TopSurface = 0
						Handle.BottomSurface = 0
						Handle.BrickColor = BrickColor.new("Institutional white")
						Handle.Parent = Hat
						local Mesh = new("CylinderMesh")
						Mesh.Scale = Vector3.new(0.675, 0.199, 0.675)
						Mesh.Parent = Handle
						Hat.Parent = Character
						Torso.CFrame = CFrame.new(Player.Character.Torso.Position) * CFrame.new(math.sin(math.random(0, (math.pi * 100) * 2) / 100) * 25, 5, math.cos(math.random(0, (math.pi * 100) * 2) / 100) * 25)
						Character.Parent = Workspace
						Character:MakeJoints()
						coroutine.wrap(function()
							for i = 1, 0, -0.05 do
								for _, Part in pairs(Character:GetChildren()) do
									pcall(function() Part.Transparency = i end)
								end
								wait()
							end
							for _, Part in pairs(Character:GetChildren()) do
								pcall(function() Part.Transparency = 0 end)
							end
						end)()
						coroutine.wrap(function()
							while true do
								if Player.Character == nil then break end
								if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Humanoid") == nil or RightArm.Parent ~= Character or Humanoid.Health <= 0 then break end
								if Player.Character.Humanoid.Health <= 0 then break end
								if (Torso.Position - Player.Character.Torso.Position).magnitude > 30 then
									Humanoid:MoveTo(Player.Character.Torso.Position, Player.Character.Torso)
								else
									Humanoid:MoveTo(Torso.Position, Torso)
								end
								Torso.CFrame = CFrame.new(Torso.Position, Vector3.new(Player.Character.Torso.Position.x, Torso.Position.y, Player.Character.Torso.Position.z))
								wait()
							end
							Humanoid:MoveTo(Torso.Position, Torso)
						end)()
						wait(2)
						RightShoulder.DesiredAngle = math.rad(90)
						wait(1)
						while true do
							if Player.Character == nil then break end
							if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Humanoid") == nil or RightArm.Parent ~= Character or Humanoid.Health <= 0 then break end
							if Player.Character.Humanoid.Health <= 0 then break end
							if Humanoid.Health <= 0 then break end
							local Monitor = new("Part")
							Monitor.Name = "Monitor"
							Monitor.FormFactor = 0
							Monitor.Size = Vector3.new(2, 2, 2)
							Monitor.TopSurface = 0
							Monitor.BottomSurface = 0
							Monitor.BrickColor = BrickColor.new("Brick yellow")
							Monitor.Parent = Workspace
							Monitor.CFrame = RightArm.CFrame * CFrame.new(0, -3, 0)
							Monitor.Velocity = ((Player.Character.Torso.Position - Monitor.Position).unit * math.random(100, 500)) + Vector3.new(math.random(-25, 25), math.random(-25, 25), math.random(-25, 25))
							local HasTouched = false
							Monitor.Touched:connect(function(Hit)
								if Hit.Parent == nil then return end
								if Hit.Parent == Character or string.match("Dr. Hax", Hit.Parent.Name) or Hit.Name == "Monitor" then return end
								local Sound = new("Sound", Monitor)
								Sound.Name = "Crash"
								Sound.Volume = math.random(10, 90) / 100
								Sound.SoundId = "rbxasset://sounds/Glassbreak.wav"
								Sound.Pitch = math.random(90, 200) / 100
								Sound:Play()
								coroutine.wrap(function()
									wait(math.random(5, 50) / 100)
									for i = Sound.Volume, 0, -math.random(75, 100) / 1000 do
										Sound.Volume = i
										wait()
									end
									Sound:Stop()
									Sound:Remove()
								end)()
								if HasTouched == true then return end
								HasTouched = true
								if Hit.Parent:FindFirstChild("Humanoid") ~= nil then
									Hit.Parent.Humanoid:TakeDamage(math.random(5, 25))
								else
									if Hit.Anchored == true and Hit:GetMass() < 1000 and math.random(1, 3) == 1 then
										Hit.Anchored = false
									end
									if math.random(1, 10) == 1 then Hit:BreakJoints() end
								end
								wait(1)
								for i = 0, 1, 0.05 do
									Monitor.Transparency = i
									wait()
								end
								Monitor:Remove()
							end)
							wait(math.random(1, 500) / 1000)
						end
						if Humanoid.Health > 0 then
							wait(1)
							RightShoulder.DesiredAngle = 0
							wait(2)
						end
						for i = 0, 1, 0.05 do
							for _, Part in pairs(Character:GetChildren()) do
								pcall(function() Part.Transparency = i end)
							end
							wait()
						end
						Character:Remove()
					end)()
				end
			end
		end
	end
end, "Hax", "Summon Dr. Hax on weary travelers.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "number of characters to spawn (max 10)")

C.Function.CreateCommand("maul", 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	if C.Function.IsModuleEnabled("CharacterSupport") == false then
		C.Function.Msg("NewHint", "This command requires the CharacterSupport module to be enabled.", 5, Speaker)
		return
	elseif C.Function.GetModule("CharacterSupport") == nil then
		C.Function.Msg("NewHint", "This command requires the CharacterSupport module to be installed.", 5, Speaker)
		return
	end
	local Characters = tonumber(MsgSplit[#MsgSplit])
	if Characters == nil then Characters = 1 end
	if Characters <= 0 then Characters = 1 end
	if Characters > 10 then Characters = 10 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _ = Player.Character.Torso end) == true and pcall(function() local _ = Player.Character.Humanoid end) == true then
				Player.Character.Humanoid.WalkSpeed = 0
				local Health = Player.Character.Humanoid.Health
				local MaxHealth = Player.Character.Humanoid.MaxHealth
				Player.Character.Humanoid.MaxHealth = 100
				Player.Character.Humanoid.Health = MaxHealth * (Health / MaxHealth)
				for _, Part in pairs(Player.Character:GetChildren()) do if Part:IsA("ForceField") then Part:Remove() end end
				for i = 1, Characters do
					coroutine.wrap(function()
						local Character = C.Function.GetModule("CharacterSupport").CreateCharacter(math.random(1, 2) == 1 and true or false)
						Character.Name = "Zombie"
						local Head = Character.Head
						Head.face.Texture = "http://www.roblox.com/Asset/?id=16580646"
						Head.BrickColor = BrickColor.new("Br. yellowish green")
						local Torso = Character.Torso
						Torso.BrickColor = BrickColor.new("Reddish brown")
						local LeftShoulder = Character.Torso["Left Shoulder"]
						local RightShoulder = Character.Torso["Right Shoulder"]
						local LeftHip = Character.Torso["Left Hip"]
						local RightHip = Character.Torso["Right Hip"]
						local Humanoid = Character.Humanoid
						Character["Left Arm"].BrickColor = BrickColor.new("Br. yellowish green")
						Character["Right Arm"].BrickColor = BrickColor.new("Br. yellowish green")
						Character["Left Leg"].BrickColor = BrickColor.new("Reddish brown")
						Character["Right Leg"].BrickColor = BrickColor.new("Reddish brown")
						Torso.CFrame = CFrame.new(Player.Character.Torso.Position) * CFrame.new(math.sin(math.random(0, (math.pi * 100) * 2) / 100) * 25, 5, math.cos(math.random(0, (math.pi * 100) * 2) / 100) * 25)
						Character.Parent = Workspace
						Character:MakeJoints()
						coroutine.wrap(function()
							for i = 1, 0, -0.05 do
								for _, Part in pairs(Character:GetChildren()) do
									pcall(function() Part.Transparency = i end)
								end
								wait()
							end
							for _, Part in pairs(Character:GetChildren()) do
								pcall(function() Part.Transparency = 0 end)
							end
						end)()
						coroutine.wrap(function()
							while true do
								LeftHip.DesiredAngle = math.rad(45)
								RightHip.DesiredAngle = math.rad(45)
								wait(0.5)
								LeftHip.DesiredAngle = math.rad(-45)
								RightHip.DesiredAngle = math.rad(-45)
								wait(0.5)
							end
						end)()
						while true do
							if Player.Character == nil then break end
							if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Humanoid") == nil or Humanoid.Health <= 0 then break end
							if Player.Character.Humanoid.Health <= 0 then break end
							if Humanoid.Health <= 0 then break end
							Humanoid:MoveTo(Player.Character.Torso.Position + Vector3.new(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3)), Player.Character.Torso)
							if (Player.Character.Torso.Position - Torso.Position).magnitude < 5 then
								Player.Character.Humanoid:TakeDamage(math.random(1, 10) / 10)
								LeftShoulder.DesiredAngle = -math.rad(math.random(0, 180))
								RightShoulder.DesiredAngle = math.rad(math.random(0, 180))
							else
								LeftShoulder.DesiredAngle = -math.rad(90)
								RightShoulder.DesiredAngle = math.rad(90)
							end
							wait()
						end
						for i = 0, 1, 0.05 do
							for _, Part in pairs(Character:GetChildren()) do
								pcall(function() Part.Transparency = i end)
							end
							wait()
						end
						Character:Remove()
					end)()
				end
			end
		end
	end
end, "Maul", "Summon flesh-hungry zombies to eat players.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "number of zombies to spawn (max 10)")

C.Function.CreateCommand({"ignite", "i"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	local Duration = tonumber(MsgSplit[#MsgSplit])
	if Duration == nil then Duration = 0 end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and pcall(function() local _ = Player.Character.Torso end) == true and pcall(function() local _ = Player.Character.Humanoid end) == true and pcall(function() local _ = Player.Character.CoolCMDsIsOnFire end) == false then
				local Tag = new("Model", Player.Character)
				Tag.Name = "CoolCMDsIsOnFire"
				coroutine.wrap(function()
					if Duration <= 0 then return end
					wait(Duration)
					Tag:Remove()
				end)()
				coroutine.wrap(function()
					while true do
						if Player.Character == nil then break end
						if Player.Character:FindFirstChild("Humanoid") == nil or Player.Character:FindFirstChild("CoolCMDsIsOnFire") == nil then break end
						if Player.Character.Humanoid.Health <= 0 then break end
						Player.Character.Humanoid:TakeDamage(0.25)
						wait()
					end
					Tag:Remove()
				end)()
				for _, Part in pairs(Player.Character:GetChildren()) do
					if pcall(function() local _ = Part.CFrame end) == true then
						local FireHolder = new("Part", Workspace)
						FireHolder.Name = "FireHolder"
						FireHolder.FormFactor = "Custom"
						FireHolder.Size = Vector3.new(1, 1, 1)
						FireHolder.Anchored = true
						FireHolder.TopSurface = 0
						FireHolder.BottomSurface = 0
						FireHolder.Transparency = 1
						FireHolder.CanCollide = false
						local Fire = new("Fire", FireHolder)
						Fire.Heat = 10
						Fire.Size = 5
						local Sound = new("Sound", FireHolder)
						Sound.Looped = true
						Sound.Pitch = math.random(90, 110) / 100
						Sound.Volume = 1
						Sound.SoundId = "http://www.roblox.com/Asset/?id=31760113"
						Sound:Play()
						coroutine.wrap(function()
							while pcall(function() local _ = Player.Character.CoolCMDsIsOnFire end) == true do
								FireHolder.CFrame = CFrame.new(Part.Position)
								wait()
							end
							Fire.Enabled = false
							for i = 1, 0, -0.05 do
								Sound.Volume = i
								wait()
							end
							Sound:Stop()
							wait(3)
							FireHolder:Remove()
						end)()
					end
				end
			end
		end
	end
end, "Ignite", "Set players alight. Fire damages a player by 0.25 per milisecond.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "duration (in seconds, <= 0 for infinite)")

C.Function.CreateCommand({"unignite", "uni", "ui"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				pcall(function() Player.Character.CoolCMDsIsOnFire:Remove() end)
			end
		end
	end
end, "Unignite", "Put a player out.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand("kick", 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player ~= Speaker then
				C.Function.Msg("NewHint", "[Kick] Player \"" ..Player.Name.. "\" removed.", 2.5, Speaker)
				C.Function.RemovePlayer(Player)
			end
		end
	end
end, "Kick", "Kick (remove) a player from the game.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand("crash", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player ~= Speaker then
				C.Function.Msg("NewHint", "[Crash] Player \"" ..Player.Name.. "\" crashed.", 2.5, Speaker)
				while Player:FindFirstChild("Crashed") == nil do
					C.Function.CreateScript([[Instance.new("Configuration", script.Parent.Parent).Name = "Crashed" Instance.new("ManualSurfaceJointInstance", Workspace)]], Player, false, true)
					wait()
				end
			end
		end
	end
end, "Crash", "Crash a player.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"votekick", "vk"}, 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if Self.VotePlayer ~= nil then
		if Speaker.Name == Self.VotePlayer then
			C.Function.Msg("NewHint", "[VoteKick] You can't use this command right now.", 2.5, Speaker)
		else
			if Msg:lower() == "yes" then
				for i = 1, #Self.Votes, 2 do
					if Self.Votes[i] == Speaker.Name then
						Self.Votes[i + 1] = true
						C.Function.Msg("NewHint", "[VoteKick] You changed your vote to \"yes\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
						return
					end
				end
				table.insert(Self.Votes, Speaker.Name)
				table.insert(Self.Votes, true)
				C.Function.Msg("NewHint", "[VoteKick] You voted \"yes\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
			elseif Msg:lower() == "no" then
				for i = 1, #Self.Votes, 2 do
					if Self.Votes[i] == Speaker.Name then
						Self.Votes[i + 1] = false
						C.Function.Msg("NewHint", "[VoteKick] You changed your vote to \"no\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
						return
					end
				end
				table.insert(Self.Votes, Speaker.Name)
				table.insert(Self.Votes, false)
				C.Function.Msg("NewHint", "[VoteKick] You voted \"no\" to kick \"" ..Self.VotePlayer.. "\".", 2.5, Speaker)
			elseif Msg:lower() == "cancel" and C.Function.GetGroup(C.Function.GetPlayerTable(Speaker.Name).Group).Control >= C.Function.GetHighestGroup().Control then
				Self.VotePlayer = nil
			end
		end
	else
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), Msg:lower()) then
				if Player == Speaker then
					C.Function.Msg("NewHint", "[VoteKick] You can't start a vote against yourself.", 2.5, Speaker)
				else
					coroutine.wrap(function()
						Self.VotePlayer = Player.Name
						local Time = Self.VoteTime
						local Status = C.Function.Msg("Hint")
						while true do
							Status.Parent = Workspace
							if Self.VotePlayer == nil then
								Status.Text = "[VoteKick] The vote was canceled."
								wait(5)
								break
							end
							local Found, IsPlayer = pcall(function() return Players[Self.VotePlayer]:IsA("Player") end)
							if Found == false or IsPlayer == false then
								Status.Text = "[VoteKick] Player was not found."
								wait(5)
								break
							end
							Time = Time - 5
							local Yes = 0
							local No = 0
							for i = 2, #Self.Votes, 2 do
								if Self.Votes[i] == false then
									No = No + 1
								elseif Self.Votes[i] == true then
									Yes = Yes + 1
								end
							end
							Status.Text = "[VoteKick] Player \"" ..Self.VotePlayer.. "\" is being voted for. Votes yes: " ..Yes.. ", votes no: " ..No.. "." ..(Time > 0 and " " ..tostring(math.floor(Time / 60)).. " second(s) left." or "")
							if Time <= 0 then
								if Yes == 0 and No == 0 then
									C.Function.Msg("Message", "[VoteKick] No one voted for or against \"" ..Self.VotePlayer.."\".", 5)
									break
								elseif Yes > No then
									pcall(function() C.Function.RemovePlayer(Players[Self.VotePlayer]) end)
									C.Function.Msg("Message", "[VoteKick] Player \"" ..Self.VotePlayer.."\" was kicked by vote.", 5)
									break
								elseif Yes == No then
									C.Function.Msg("Message", "[VoteKick] The yes and no votes to kick \"" ..Self.VotePlayer.."\" were tied.", 5)
									break
								else
									C.Function.Msg("Message", "[VoteKick] Player \"" ..Self.VotePlayer.."\" was not kicked by vote.", 5)
									break
								end
							end
							wait(0.05)
						end
						Status:Remove()
						Self.Votes = {}
						Self.VotePlayer = nil
					end)()
				end
			return
			end
		end
	end
end, "VoteKick", "Vote for a player to be kicked (removed) from the game.", "player" ..C.Data.Split.. "[...]", function(Self)
	Self.VotePlayer = nil
	Self.VoteTime = 30 * 60
	Self.Votes = {}
end)

C.Function.CreateCommand({"banish", "ban"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if MsgSplit[1]:lower() == "player" or MsgSplit[1]:lower() == "p" then
		for i = 2, #MsgSplit do
			for _, Player in pairs(Players:GetPlayers()) do
				if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player ~= Speaker then
					table.insert(Self.Bans, Player.Name)
					C.Function.Msg("NewHint", "[Ban] Player \"" ..Player.Name.. "\" banned.", 2.5, Speaker)
					C.Function.RemovePlayer(Player)
				end
			end
		end
	elseif MsgSplit[1]:lower() == "name" then
		for i = 2, #MsgSplit do
			table.insert(Self.Bans, MsgSplit[i])
		end
		C.Function.Msg("NewHint", "[Ban] Names added.", 2.5, Speaker)
	elseif MsgSplit[1]:lower() == "remove" then
		for i = 2, #MsgSplit do
			local x = 0
			while x < #Self.Bans do
				if Self.Bans[x] == nil then
					table.remove(Self.Bans, x)
				elseif string.match(Self.Bans[x]:lower(), MsgSplit[i]:lower()) then
					C.Function.Msg("NewHint", "[Ban] \"" ..Self.Bans[x].. "\" removed.", 2.5, Speaker)
					table.remove(Self.Bans, x)
				else
					x = x + 1
				end
			end
		end
	elseif MsgSplit[1]:lower() == "remove all" then
		Self.Bans = {}
		C.Function.Msg("NewHint", "[Ban] Ban table reset.", 2.5, Speaker)
	end
end, "Ban", "Place a ban (removes the player on entering) on a player from the game. Player: Ban and remove a player from the game. Name: Add a name to the ban list. Remove, Remove All: Remove a name or remove all names from the ban list.", "[[player, p], [name, n], [remove, r]]" ..C.Data.Split.. "player" ..C.Data.Split.. "[...], remove all", function(Self)
	if Self.Bans == nil then Self.Bans = {"thejoker1997", "Zuppi", "lewiswd", "jaboodiebeast123", "beworking", "amamamam", "Epicscriptas", "scarman88", "moutaindew717", "moutaindew71717", "gunshot11", "rush58", "mario98966", "zanfran", "juniorjfive", "BullDozingScripter", "davillionalts", "thenewscripteralts", "ghostbusters1", "adamfontenot", "jarrylp", "Mar2", "Wil1", "Wil2", "Wil3", "Wil4", "Wil5", "Wil6", "Wil7", "Wil8", "Xsitsu", "Tadael", "stanleyloganlego", "chidori12345", "Voideous", "use13", "orion077", "Scripterj0e", "patrickrocks", "rockclan", "mstsman", "ghostbusters2", "Glitch29", "BuildBuilder", "bobthesnailboy", "aaronzepeda33", "willguitar100", "agentxyz2", "Sparky313", "GuiDesigner", "Jidcu", "hurtroboryan", "Fijoe", "mark1023", "hutspy", "Mewtwothunder", "strongfreddy", "dsi1", "yfcAlts"} end
	if Self.CatchBan == nil then
		Self.CatchBan = Players.PlayerAdded:connect(function(Player)
			for i = 1, #Self.Bans do
				if Player.Name:lower() == Self.Bans[i]:lower() then
					C.Function.Msg("Hint", "[Ban] Player \"" ..Player.Name.. "\" is banned from this server.", 3)
					C.Function.RemovePlayer(Player)
				end
			end
		end)
	end
	for _, Player in pairs(Players:GetPlayers()) do
		for i = 1, #Self.Bans do
			if Player.Name:lower() == Self.Bans[i]:lower() then
				C.Function.Msg("Hint", "[Ban.Startup] Player \"" ..Player.Name.. "\" is banned from this server.", 3)
				C.Function.RemovePlayer(Player)
			end
		end
	end
end)

C.Function.CreateCommand({"slap", "sl"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 3 then return false end
	local Speed = tonumber(MsgSplit[#MsgSplit - 1])
	local Strength = tonumber(MsgSplit[#MsgSplit])
	if Speed == nil then Speed = 10 end
	if Strength == nil then Strength = 0 end
	Speed = math.abs(Speed)
	Strength = math.abs(Strength)
	for i = 1, #MsgSplit - 2 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Humanoid") ~= nil then
					Player.Character.Humanoid:TakeDamage(Strength)
					Player.Character.Humanoid.Sit = true
				end
				for _, Children in pairs(Player.Character:GetChildren()) do
					if Children:IsA("BasePart") then
						Children.Velocity = Children.Velocity + Vector3.new(math.random(-Speed, Speed), math.random(-Speed, Speed), math.random(-Speed, Speed))
						Children.RotVelocity = Children.RotVelocity + Vector3.new(math.random(-Speed, Speed), math.random(-Speed, Speed), math.random(-Speed, Speed))
					end
				end
			end
		end
	end
end, "Slap", "Slap people.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "speed" ..C.Data.Split.. "strength")

C.Function.CreateCommand({"blocker", "blk"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if MsgSplit[1]:lower() == "on" then
		Self.Activated = true
		C.Function.Msg("NewHint", "[Blocker] Activated.", 2.5, Speaker)
	end
	if MsgSplit[1]:lower() == "off" then
		Self.Activated = false
		C.Function.Msg("NewHint", "[Blocker] Deactivated.", 2.5, Speaker)
	end
	if MsgSplit[1]:lower() == "name" then
		for i = 2, #MsgSplit do
			table.insert(Self.Names, MsgSplit[i])
		end
		C.Function.Msg("NewHint", "[Blocker] Added.", 2.5, Speaker)
	end
	if MsgSplit[1]:lower() == "class" then
		for i = 2, #MsgSplit do
			table.insert(Self.ClassNames, MsgSplit[i])
		end
		C.Function.Msg("NewHint", "[Blocker] Added.", 2.5, Speaker)
	end
	if MsgSplit[1]:lower() == "type" then
		if MsgSplit[2] == "match" or MsgSplit[2] == "1" then
			Self.Type = 1
			C.Function.Msg("NewHint", "[Blocker] Set evaluation type to match (1).", 2.5, Speaker)
		elseif MsgSplit[2] == "exact" or MsgSplit[2] == "2" then
			Self.Type = 2
			C.Function.Msg("NewHint", "[Blocker] Set evaluation type to exact (2).", 2.5, Speaker)
		end
	end
	if MsgSplit[1]:lower() == "remove" then
		for i = 2, #MsgSplit do
			for x = 1, #Self.Names do
				if string.match(Self.Names[x], MsgSplit[i]) then
					table.remove(Self.Names, x)
				end
			end
			for x = 1, #Self.ClassNames do
				if string.match(Self.ClassNames[x], MsgSplit[i]) then
					table.remove(Self.ClassNames, x)
				end
			end
		end
		C.Function.Msg("NewHint", "[Blocker] Removed.", 2.5, Speaker)
	end
	if MsgSplit[1]:lower() == "remove all" then
		Self.Names = {}
		Self.ClassNames = {}
		C.Function.Msg("NewHint", "[Blocker] Removed all entries.", 2.5, Speaker)
	end
	if Self.Activated == true then
		if Self.DescendantAdded ~= nil then
			Self.DescendantAdded:disconnect()
			Self.DescendantAdded = nil
		end
		Self.DescendantAdded = game.DescendantAdded:connect(function(Object)
			local Remove = false
			for i = 1, #Self.Names do
				if (Self.Type == 1 and string.match(Object.Name:lower(), Self.Names[i]:lower())) or (Self.Type == 2 and Object.Name:lower() == Self.Names[i]:lower()) then
					Remove = true
				end
			end
			for i = 1, #Self.ClassNames do
				if (Self.Type == 1 and string.match(Object.ClassName:lower(), Self.ClassNames[i]:lower())) or (Self.Type == 2 and Object.ClassName:lower() == Self.ClassNames[i]:lower()) then
					Remove = true
				end
			end
			if Remove == true then
				C.Function.Msg("Hint", "[Blocker] \"" ..Object.ClassName.. " object (" ..Object.Name.. ") is blocked and has been removed.", 10)
				pcall(function() Object.Disabled = true end)
				pcall(function() Object.Active = false end)
				pcall(function() Object.Activated = false end)
				pcall(function() Object:Remove() end)
			end
		end)
	else
		if Self.DescendantAdded ~= nil then
			Self.DescendantAdded:disconnect()
			Self.DescendantAdded = nil
		end
	end
end, "Blocker", "Blocks objects by name or ClassName.", "on, off, name" ..C.Data.Split.. "object name, class" ..C.Data.Split.. "object ClassName, type" ..C.Data.Split.. "[match, exact]", function(Self)
	if Self.Activated == nil then Self.Activated = true end
	if Self.Type == nil then Self.Type = 1 end
	if Self.Names == nil then Self.Names = {"talker", "nairod", "nairod7orb", "orbv", "orb v", "cba", "admin", "zuppi", "team cba", "team zuppi", "local eye", "eyeball", "local cam", "insert", "eye ball", "assassain", "looking glass", "lookingglass", "lga", "dsi1"} end
	if Self.ClassNames == nil then Self.ClassNames = {} end
	Self.DescendantAdded = game.DescendantAdded:connect(function(Object)
		pcall(function()
			if Self.Activated == false then return end
			local Remove = false
			for i = 1, #Self.Names do
				if (Self.Type == 1 and string.match(Object.Name:lower(), Self.Names[i]:lower())) or (Self.Type == 2 and Object.Name:lower() == Self.Names[i]:lower()) then
					Remove = true
				end
			end
			for i = 1, #Self.ClassNames do
				if (Self.Type == 1 and string.match(Object.ClassName:lower(), Self.ClassNames[i]:lower())) or (Self.Type == 2 and Object.ClassName:lower() == Self.ClassNames[i]:lower()) then
					Remove = true
				end
			end
			if Remove == true then
				C.Function.Msg("Hint", "[Blocker] \"" ..Object.ClassName.. " object (" ..Object.Name.. ") is blocked and has been removed.", 1)
				pcall(function() Object.Disabled = true end)
				pcall(function() Object.Enabled = false end)
				pcall(function() Object.Active = false end)
				pcall(function() Object.Activated = false end)
				pcall(function() Object.Activated = false end)
				pcall(function() Object:Remove() end)
			end
		end)
	end)
end)

C.Function.CreateCommand({"characterappearance", "ca"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 2, #MsgSplit - (MsgSplit[1]:lower() == "default" and 0 or 1) do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]) then
				if MsgSplit[1] == "default" then
					Player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" ..Player.userId
				elseif MsgSplit[1] == "set" then
					Player.CharacterAppearance = MsgSplit[#MsgSplit]
				elseif MsgSplit[1] == "userid" then d=new("Message", Workspace)
					Player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" ..tonumber(MsgSplit[#MsgSplit])
				elseif MsgSplit[1] == "Assetid" then
					Player.CharacterAppearance = "http://www.roblox.com/Asset/?id=" ..tonumber(MsgSplit[#MsgSplit])
				end
			end
		end
	end
end, "CharacterAppearance Editor", "See command name.", "default, set, userid, Assetid" ..C.Data.Split.. "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "[url, userid, Assetid]")

C.Function.CreateCommand({"character", "char", "ch"}, 3, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return end
	for i = 2, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character:FindFirstChild("Torso") ~= nil then
					if MsgSplit[1]:lower() == "sit" then
						Player.Character.Humanoid.Sit = true
					elseif MsgSplit[1]:lower() == "jump" then
						Player.Character.Humanoid.Jump = true
					elseif MsgSplit[1]:lower() == "platformstand" or MsgSplit[1]:lower() == "ps" then
						Player.Character.Humanoid.PlatformStand = true
					elseif MsgSplit[1]:lower() == "trip" then
						Player.Character.Humanoid.PlatformStand = true
						Player.Character.Torso.RotVelocity = Vector3.new(math.random(-25, 25), math.random(-25, 25), math.random(-25, 25))
						coroutine.wrap(function()
							wait(0.5)
							Player.Character.Humanoid.PlatformStand = false
						end)()
					elseif MsgSplit[1]:lower() == "stand" then
						Player.Character.Humanoid.Sit = false
						Player.Character.Humanoid.PlatformStand = false
					end
				end
			end
		end
	end
end, "Character Editor", "Make people do things.", "sit, jump, [platformstand, ps], trip, stand" ..C.Data.Split.. "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand("seizure", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 2 then return false end
	local Duration = tonumber(MsgSplit[#MsgSplit])
	if Duration == nil then Duration = math.random(5, 10) end
	for i = 1, #MsgSplit - 1 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Humanoid") ~= nil then
					coroutine.wrap(function()
						for i = 0, Duration, 0.25 do
							if Player == nil then break end
							if Player.Character == nil then break end
							if Player.Character:FindFirstChild("Humanoid") == nil then break end
							Player.Character.Humanoid.PlatformStand = math.random(1, 3) == 1 and false or true
							for _, Part in pairs(Player.Character:GetChildren()) do
								if Part:IsA("BasePart") then
									Part.RotVelocity = Part.RotVelocity + Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
								end
							end
							wait(0.25)
						end
						pcall(function() Player.Character.Humanoid.PlatformStand = false end)
					end)()
				end
			end
		end
	end
end, "Seizure", "Make people have seizures.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "time (seconds)")

C.Function.CreateCommand("rocket", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if #MsgSplit < 3 then return false end
	local Speed = tonumber(MsgSplit[#MsgSplit - 1])
	local Duration = tonumber(MsgSplit[#MsgSplit])
	if Speed == nil then Speed = 100 end
	if Duration == nil then Duration = math.random(5, 10) end
	for i = 1, #MsgSplit - 2 do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				for _, Children in pairs(Player.Character:GetChildren()) do
					if Children:IsA("BasePart") then
						coroutine.wrap(function()
							local BodyVelocity = new("BodyVelocity", Children)
							BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
							local Fire = new("Fire", Children)
							Fire.Heat = 0
							Fire.Size = 3
							local Smoke = new("Smoke", Children)
							Smoke.Enabled = false
							Smoke.RiseVelocity = 0
							Smoke.Size = 2.5
							local Sound = new("Sound", Children)
							Sound.SoundId = "rbxasset://sounds/Shoulder fired rocket.wav"
							Sound.Pitch = 0.8
							Sound.Volume = 1
							Sound:Play()
							Children.Velocity = Children.Velocity + Vector3.new(0, 1000, 0)
							wait(0.25)
							Fire.Size = 10
							Smoke.Enabled = true
							local Sound = new("Sound", Children)
							Sound.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
							Sound.Pitch = 0.5
							Sound.Volume = 1
							Sound:Play()
							coroutine.wrap(function()
								for i = 0, 1, 0.01 do
									BodyVelocity.velocity = Vector3.new(0, Speed * i, 0)
									wait()
								end
								BodyVelocity.velocity = Vector3.new(0, Speed, 0)
							end)()
							if Duration ~= 0 then
								coroutine.wrap(function()
									wait(Duration)
									BodyVelocity:Remove()
									local Explosion = new("Explosion", Workspace)
									Explosion.Position = Children.Position
									Explosion.BlastPressure = 50000
									Explosion.BlastRadius = 25
									Fire.Enabled = false
									Smoke.Enabled = false
									Children:BreakJoints()
								end)()
							end
						end)()
					end
				end
				wait(math.random(1, 10) / 10)
			end
		end
	end
end, "Rocket", "Fires bodyparts into the air that explode after a set time.", "player" ..C.Data.Split.. "[...]" ..C.Data.Split.. "speed" ..C.Data.Split.. "duration (in seconds)")

C.Function.CreateCommand({"jail", "j"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Torso") ~= nil then
					local Position = Player.Character.Torso.CFrame
					local IsJailed = new("Configuration")
					IsJailed.Name = "IsJailed"
					IsJailed.Parent = Player
					coroutine.wrap(function()
						while IsJailed.Parent == Player and Player.Parent ~= nil do
							if Player.Character ~= nil then
								if Player.Character:FindFirstChild("Torso") ~= nil then
									if (Player.Character.Torso.Position - Position.p).magnitude > 10 then
										Player.Character.Torso.CFrame = Position * CFrame.new(0, 1.5, 0)
										Player.Character.Torso.Velocity = Vector3.new()
										Player.Character.Torso.RotVelocity = Vector3.new()
										C.Function.Msg("NewHint", (function()
											local Text = math.random(1, 12)
											if Text == 1 then
												return "You were put here for a reason."
											elseif Text == 2 then
												return "This is your new home; stay in it."
											elseif Text == 3 then
												return "You can't escape, you know."
											elseif Text == 4 then
												return "Resistance is futile!"
											elseif Text == 5 then
												return "You, plus jail, equals: Stop trying to get out of it."
											elseif Text == 6 then
												return "It's called a \"jail\" for a reason."
											elseif Text == 7 then
												return "This is why we can't have nice things."
											elseif Text == 8 then
												return "You are a reason why we can't have nice things."
											elseif Text == 9 then
												return "Not even God himself can save you now."
											elseif Text == 10 then
												return "Where is your God now?"
											elseif Text == 11 then
												return "Jailed forever."
											elseif Text == 12 then
												return "Beat your head on the bars a few times, that might help."
											end
										end)(), 5, Player)
									end
								end
							end
							wait(math.random(1, 10) / 100)
						end
						for _, Part in pairs(Workspace:GetChildren()) do
							if string.match(Part.Name, "Jail Part") and string.match(Part.Name, Player.Name) then
								pcall(function() Part:Remove() end)
							end
						end
					end)()
					wait()
					local Part1 = new("Part")
					Part1.Name = Player.Name.. " Jail Part"
					Part1.TopSurface = 0
					Part1.BottomSurface = 0
					Part1.BrickColor = BrickColor.new("Really black")
					Part1.FormFactor = "Custom"
					Part1.Anchored = true
					Part1.CanCollide = true
					Part1.Size = Vector3.new(11, 1, 11)
					local Part2 = Part1:Clone()
					Part2.Size = Vector3.new(0.5, 8, 0.5)
					local Part = Part1:Clone()
					Part.CFrame = Position * CFrame.new(0, -2, 0)
					Part.Parent = Workspace
					for i = 5, -4, -1 do
						local Part = Part2:Clone()
						Part.CFrame = Position * CFrame.new(-5, 2, i)
						Part.Parent = Workspace
					end
					for i = -5, 4, 1 do
						local Part = Part2:Clone()
						Part.CFrame = Position * CFrame.new(i, 2, -5)
						Part.Parent = Workspace
					end
					for i = -5, 4, 1 do
						local Part = Part2:Clone()
						Part.CFrame = Position * CFrame.new(5, 2, i)
						Part.Parent = Workspace
					end
					for i = 5, -4, -1 do
						local Part = Part2:Clone()
						Part.CFrame = Position * CFrame.new(i, 2, 5)
						Part.Parent = Workspace
					end
					local Part = Part1:Clone()
					Part.CFrame = Position * CFrame.new(0, 6, 0)
					Part.Parent = Workspace
				end
			end
		end
	end
end, "Jail", "Jail people.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"drown", "d"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) and Player.Character ~= nil then
				if Player.Character:FindFirstChild("Torso") ~= nil then
					local Position = Player.Character.Torso.CFrame
					local IsDrowning = new("Configuration")
					IsDrowning.Name = "IsDrowning"
					IsDrowning.Parent = Player.Character
					coroutine.wrap(function()
						while IsDrowning.Parent == Player.Character and Player.Parent ~= nil and Player.Character ~= nil do
							local ShowHint = false
							if Player.Character:FindFirstChild("Torso") ~= nil then
								if (Player.Character.Torso.Position - Position.p).magnitude > 4 then
									Player.Character.Torso.CFrame = Position * CFrame.new(0, 1.5, 0)
									Player.Character.Torso.Velocity = Vector3.new()
									Player.Character.Torso.RotVelocity = Vector3.new()
									ShowHint = true
								end
							end
							if ShowHint == true or math.random(1, 100) == 1 then
								C.Function.Msg("NewHint", (function()
									local Text = math.random(1, 12)
									if Text == 1 then
										return "Drowning is not a team sport."
									elseif Text == 2 then
										return "You cannot save yourself."
									elseif Text == 3 then
										return "You can't escape, you know."
									elseif Text == 4 then
										return "Just open your mouth and breathe..."
									elseif Text == 5 then
										return "Did you know this water is 3% recycled oil?"
									elseif Text == 6 then
										return "Did you know this water is 18% toilet water?"
									elseif Text == 7 then
										return "Did you know this water is 37% filtered tap water?"
									elseif Text == 8 then
										return "Drink up!"
									elseif Text == 9 then
										return "The more you struggle the faster you drown."
									elseif Text == 10 then
										return "No one can save you here."
									elseif Text == 11 then
										return "Ugh, don't vom\2it in the water, I don't want to clean it up."
									elseif Text == 12 then
										return "That glass is nearly a foot thick."
									end
								end)(), 5, Player)
							end
							if Player.Character:FindFirstChild("Humanoid") ~= nil then
								Player.Character.Humanoid.WalkSpeed = 1
								Player.Character.Humanoid:TakeDamage(math.random() * 0.25)
							end
							wait()
						end
						pcall(function() Player.Character.Humanoid.WalkSpeed = 16 end)
						for _, Part in pairs(Workspace:GetChildren()) do
							if string.match(Part.Name, " Drown Part") and string.match(Part.Name, Player.Name) then
								pcall(function() Part:Remove() end)
							end
						end
					end)()
					wait()
					local Part1 = new("Part")
					Part1.Name = Player.Name.. " Drown Part"
					Part1.TopSurface = 0
					Part1.BottomSurface = 0
					Part1.BrickColor = BrickColor.new("Black")
					Part1.FormFactor = "Custom"
					Part1.Anchored = true
					Part1.CanCollide = true
					Part1.Size = Vector3.new(7, 1, 7)
					local Part2 = Part1:Clone()
					Part2.Transparency = 0.75
					Part2.BrickColor = BrickColor.new("White")
					Part2.Size = Vector3.new(6, 7, 1)
					local Part = Part1:Clone()
					Part.CFrame = Position * CFrame.new(0, -2, 0)
					Part.Parent = Workspace
					for i = 1, 4 do
						local Part = Part2:Clone()
						Part.CFrame = Position * (CFrame.fromEulerAnglesXYZ(0, math.rad(90 * i), 0) * CFrame.new(0.5, 2, 3))
						Part.Parent = Workspace
					end
					local Part = Part1:Clone()
					Part.CFrame = Position * CFrame.new(0, 6, 0)
					Part.Parent = Workspace
					local Part = Part1:Clone()
					Part.Transparency = 0.5
					Part.BrickColor = BrickColor.new("Bright blue")
					Part.CanCollide = false
					Part.CFrame = Position * CFrame.new(0, 2, 0)
					Part.Size = Vector3.new(5, 7, 5)
					Part.Parent = Workspace
				end
			end
		end
	end
end, "Drown", "Drown people.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"free", "fr"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for i = 1, #MsgSplit do
		for _, Player in pairs(Players:GetPlayers()) do
			if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
				for _, Part in pairs(Player:GetChildren()) do
					if string.match(Part.Name, "IsJailed") then
						Part:Remove()
					end
				end
				if Player.Character ~= nil then
					for _, Part in pairs(Player.Character:GetChildren()) do
						if string.match(Part.Name, "IsDrowning") then
							Part:Remove()
						end
					end
				end
			end
		end
	end
end, "Free", "Frees people from jails and drowning tanks.", "player" ..C.Data.Split.. "[...]")

C.Function.CreateCommand({"privatebase", "pbase", "pb"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if MsgSplit[1]:lower() == "add" then
		for i = 2, #MsgSplit do
			table.insert(Self.Players, MsgSplit[i]:lower())
		end
		C.Function.Msg("NewHint", "[PrivateBase] Names added.", 2.5, Speaker)
	elseif MsgSplit[1]:lower() == "remove" then
		for i = 2, #MsgSplit do
			local x = 1
			while x < #Self.Players do
				if string.match(Self.Players[x]:lower(), MsgSplit[i]:lower()) then
					C.Function.Msg("NewHint", "[PrivateBase] \"" ..Self.Players[x].. "\" removed.", 2.5, Speaker)
					table.remove(Self.Players, x)
				else
					x = x + 1
				end
			end
		end
	elseif MsgSplit[1]:lower() == "remove all" then
		Self.Players = {}
		C.Function.Msg("NewHint", "[PrivateBase] Player table reset.", 2.5, Speaker)
	elseif MsgSplit[1]:lower() == "go" then
		if Self.Activated == true then
			if Speaker.Character == nil then return end
			if Speaker.Character:FindFirstChild("Torso") == nil then return end
			Speaker.Character.Torso.Anchored = true
			wait()
			Speaker.Character.Torso.CFrame = Self.Base.CFrame * CFrame.new(0, 3, 0)
			wait()
			Speaker.Character.Torso.Anchored = false
			C.Function.Msg("NewHint", "[PrivateBase] Moved to base.", 5, Speaker)
		else
			C.Function.Msg("NewHint", "[PrivateBase] Not actiavted!", 5, Speaker)
		end
	elseif MsgSplit[1]:lower() == "on" then
		Self.Activated = true
		Self.Base = new("Part")
		coroutine.wrap(function()
			while Self.Activated == true and Self.Base ~= nil do
				Self.Base.Name = "Base"
				Self.Base.BrickColor = BrickColor.new("Dark green")
				Self.Base.TopSurface = "Studs"
				Self.Base.BottomSurface = "Smooth"
				Self.Base.FormFactor = "Custom"
				Self.Base.Size = Vector3.new(1000, 5, 1000)
				Self.Base.CFrame = CFrame.new(0, 25000 - 0.25, 0)
				Self.Base.Locked = true
				Self.Base.Anchored = true
				Self.Base.Parent = Workspace
				for _, Player in pairs(Players:GetPlayers()) do
					local Allowed = false
					for i = 1, #Self.Players do
						if Self.Players[i]:lower() == Player.Name:lower() then
							Allowed = true
						end
					end
					if Allowed == false then
						if Player.Character ~= nil then
							if Player.Character:FindFirstChild("Torso") ~= nil then
								if (Player.Character.Torso.Position - Self.Base.Position).magnitude < 2500 then
									Player.Character.Torso.CFrame = CFrame.new(0, 3, 0)
								end
							end
						end
					end
				end
				wait()
			end
			Self.Base:Remove()
		end)()
		C.Function.Msg("NewHint", "[PrivateBase] Private base made.", 5, Speaker)
	elseif MsgSplit[1]:lower() == "off" then
		Self.Activated = false
		C.Function.Msg("NewHint", "[PrivateBase] Private base removed.", 5, Speaker)
	end
end, "Private Base", "Make a private base.", "on, off, add, remove, remove all, go", function(Self)
	if Self.Activated == nil then Self.Activated = false end
	if Self.Players == nil then
		Self.Players = {
			"yfc",
			"fryman987654321",
			"yfcAlt",
			"KradWodahs6",
			"LocalShadow6",
			"ServerShadow6",
			"IGrabYouryfc",
			"HackModelUpload",
			"IlIllIlI",
			"JOHNMADDENJOHNMADDEN",
			"ImNotUrNoob"
		}
	end
end)

C.Function.CreateCommand({"rebase", "rb"}, 4, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	for _, Part in pairs(Workspace:GetChildren()) do
		if Part.Name == "Base" then
			Part:Remove()
		end
	end
	local Base = new("Part")
	Base.Name = "Base"
	Base.BrickColor = BrickColor.new("Dark green")
	Base.TopSurface = "Studs"
	Base.BottomSurface = "Smooth"
	Base.FormFactor = "Custom"
	Base.Size = Vector3.new(1000, 5, 1000)
	Base.CFrame = CFrame.new(0, -2, 0)
	Base.Locked = true
	Base.Anchored = true
	Base.Parent = Workspace
end, "Rebase", "Make a new base.")

C.Function.CreateCommand({"spawn", "sp"}, 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	local Part = new("Part")
	Part.Name = "Base"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = "Smooth"
	Part.BottomSurface = "Smooth"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(9, 1, 9)
	Part.CFrame = CFrame.new(0, 1, 0)
	Part.Locked = true
	Part.Anchored = true
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(0.5, 8, 0.5)
	Part.CFrame = CFrame.new(4, 5.5, 4)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.CFrame = CFrame.new(4, 5.5, -4)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.CFrame = CFrame.new(-4, 5.5, -4)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.CFrame = CFrame.new(-4, 5.5, 4)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(0.5, 0.5, 8)
	Part.CFrame = CFrame.new(4, 9.75, -0.25)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(8, 0.5, 0.5)
	Part.CFrame = CFrame.new(0.25, 9.75, 4)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(0.5, 0.5, 8)
	Part.CFrame = CFrame.new(-4, 9.75, 0.25)
	Part.Parent = Workspace
	local Part = Part:Clone()
	Part.Size = Vector3.new(8, 0.5, 0.5)
	Part.CFrame = CFrame.new(-0.25, 9.75, -4)
	Part.Parent = Workspace
	local Part1 = new("Part")
	Part1.Name = "Base"
	Part1.BrickColor = BrickColor.new("Dark stone grey")
	Part1.TopSurface = "Smooth"
	Part1.BottomSurface = "Smooth"
	Part1.FormFactor = "Custom"
	Part1.Size = Vector3.new(6, 0.25, 6)
	Part1.CFrame = CFrame.new(0, 1.625, 0)
	Part1.Locked = true
	Part1.Anchored = true
	Part1.Parent = Workspace
	local Part2 = new("SpawnLocation")
	Part2.Name = "Base"
	Part2.BrickColor = BrickColor.new("Dark stone grey")
	Part2.TopSurface = "Smooth"
	Part2.BottomSurface = "Smooth"
	Part2.FormFactor = "Custom"
	Part2.Size = Vector3.new(4, 0.25, 4)
	Part2.CFrame = CFrame.new(0, 1.875, 0)
	Part2.Locked = true
	Part2.Anchored = true
	Part2.Parent = Workspace
	coroutine.wrap(function()
		for i = 0, math.huge, 0.005 do
			if Part1.Parent == nil or Part2.Parent == nil then break end
			Part1.CFrame = CFrame.new(Part1.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.sin(i) * 360 * -5.25), 0)
			Part2.CFrame = CFrame.new(Part2.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.cos(i) * 360 * 2), 0)
			wait()
		end
	end)()
end, "Spawn", "Make a spawn.")

C.Function.CreateCommand("shutdown", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	local Hint = new("Hint", Workspace)
	for i = 5, 0, -1 do
		Hint.Text = "[Shutdown] Shutting down server in " ..i.. " second(s)..."
		wait(1)
	end
	Hint:Remove()
	pcall(function() new("StringValue", Workspace).Value = string.rep(".", 200001) end)
	wait(1)
	while true do
		pcall(function() new("ManualSurfaceJointInstance", Workspace)end)
		wait()
	end
end, "Shutdown", "Kill the server.")

C.Function.CreateCommand("team", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	if MsgSplit[1]:lower() == "new" then
		if #MsgSplit < 3 then return end
		local Team = new("Team", game:GetService("Teams"))
		Team.Name = MsgSplit[2]
		Team.TeamColor = BrickColor.new(MsgSplit[3])
		Team.AutoAssignable = false
		Team.AutoColorCharacters = false
		C.Function.Msg("NewHint", "[Team] Created team \"" ..Team.Name.. "\".", 2.5, Speaker)
	elseif MsgSplit[1]:lower() == "remove" then
		for i = 2, #MsgSplit do
			for _, Team in pairs(game:GetService("Teams"):GetTeams()) do
				if Team:IsA("Team") and (string.match(Team.Name:lower(), MsgSplit[i]:lower())) then
					C.Function.Msg("NewHint", "[Team] Removed team \"" ..Team.Name.. "\".", 2.5, Speaker)
					Team:Remove()
				end
			end
		end
	elseif MsgSplit[1]:lower() == "remove all" then
		for _, Team in pairs(game:GetService("Teams"):GetTeams()) do
			if Team:IsA("Team") then
				Team:Remove()
			end
		end
		C.Function.Msg("NewHint", "[Team] Removed all teams.", 2.5, Speaker)
	elseif MsgSplit[1]:lower() == "set" then
		if #MsgSplit <= 2 then return end
		local TeamColor = nil
		for _, Team in pairs(game:GetService("Teams"):GetTeams()) do
			if Team:IsA("Team") and (string.match(Team.Name:lower(), MsgSplit[#MsgSplit]:lower()) or string.match(Team.TeamColor.Name:lower(), MsgSplit[#MsgSplit]:lower()) or string.match(Team.TeamColor.Number, MsgSplit[#MsgSplit]:lower())) then
				TeamColor = Team.TeamColor
				break
			end
		end
		if TeamColor == nil then
			C.Function.Msg("NewHint", "[Team] Unknown team name or color \"" ..MsgSplit[#MsgSplit].. "\".", 2.5, Speaker)
			return
		end
		for i = 2, #MsgSplit - 1 do
			for _, Player in pairs(Players:GetPlayers()) do
				if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
					Player.Neutral = false
					Player.TeamColor = TeamColor
				end
			end
		end
		C.Function.Msg("NewHint", "[Team] Set.", 2.5, Speaker)
	elseif MsgSplit[1]:lower() == "neutral" then
		for i = 2, #MsgSplit do
			for _, Player in pairs(Players:GetPlayers()) do
				if string.match(Player.Name:lower(), MsgSplit[i]:lower()) then
					Player.Neutral = true
				end
			end
		end
		C.Function.Msg("NewHint", "[Team] Set.", 2.5, Speaker)
	end
end, "Team Control", "Make, remove, and set teams.", "[new" ..C.Data.Split.. "name" ..C.Data.Split.. "color], [set" ..C.Data.Split.. "player" ..C.Data.Split.. "[...]]")

C.Function.CreateCommand("remove", 5, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	loadstring([==[_G.CoolCMDs[C.Init.InstanceNum]:Remove(C.Data.AccessCode)]==])()
end, "Remove Script", "Remove C.")

C.Function.CreateCommand("break", 1, function(Msg, MsgSplit, OrigMsg, OrigMsgSplit, Speaker, Self, TriggerMsg)
	pcall(function() C.Function.GetPlayerTable(Player.Name).Connection:disconnect() end)
	C.Function.Msg("NewHint", "[CoolCMDs] Connections disconencted!.", 5, Speaker)
	error("Connections disconnected!")
end, "Break Connection", "Purposefully error the Chat connection.")

C.Init(true)
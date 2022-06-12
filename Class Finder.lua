local PropertiesGlobal = {"Name", "ClassName", "Parent", "archivable", "RobloxLocked"}
local Properties = {"AttachmentForward", "AttachmentPos", "AttachmentRight", "AttachmentUp", "AnimationId", "Adornee", "Axes", "Color", "Visible", "Transparency", "Texture", "TextureId", "Anchored", "BackParamA", "BackParamB", "BackSurface", "BackSurfaceInput", "BottomParamA", "BottomParamB", "BottomSurface", "BottomSurfaceInput", "BrickColor", "CFrame", "CanCollide", "Elasticity", "Friction", "FrontParamA", "FrontParamB", "FrontSurface", "FrontSurfaceInput", "LeftParamA", "LeftParamB", "LeftSurfaceInput", "Locked", "Material", "Position", "Reflectance", "ResizeIncrement", "ResizeableFaces", "RightParamA", "RightParamB", "RightSurface", "RightSurfaceInput", "RotVelocity", "Size", "TopParamA", "TopParamB", "TopSurface", "TopSurfaceInput", "Velocity", "AbsolutePosition", "AbsoluteSize", "Active", "Enabled", "ExtentsOffset", "SizeOffset", "StudsOffset", "Scale", "VertexColor", "Offset", "P", "D", "angularVelocity", "maxTorque", "HeadColor", "LeftArmColor", "LeftLegColor", "RightArmColor", "RightLegColor", "TorsoColor", "force", "maxForce", "position", "cframe", "location", "Value", "CameraSubject", "CameraType", "CoordinateFrame", "Focus", "BaseTextureId", "Bodypart", "MeshId", "OverlayTextureId", "MaxActivationDistance", "CreatorId", "CreatorType", "JobId", "PlaceId", "MaxItems", "Face", "Shiny", "Specular", "ConversationDistance", "InUse", "InitalPrompt", "Purpose", "Tone", "ResponseDialog", "UserDialog", "C0", "C1", "Part0", "Part1", "BaseAngle", "BlastPressure", "BlastRadius", "FaceId", "InOut", "LeftRight", "TopBottom", "Heat", "SecondaryColor", "GripForward", "GripPos", "GripRight", "GripUp", "TeamColor", "BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "SizeConstant", "Style", "ZIndex", "F0", "F1", "F2", "F3", "Faces", "AttachmentForward", "AttachmentPos", "AttachmentRight", "AttachmentUp", "Text", "BinType", "Health", "Jump", "LeftLeg", "MaxHealth", "PlatformStand", "RightLeg", "Sit", "TargetPoint", "Torso", "WalkSpeed", "WalkToPart", "WalkToPoint", "AutoButtonColor", "Image", "Selected", "Time", "Ambient", "Brightness", "ColorShift_Bottom", "GeographicLatitude", "ShadowColor", "TimeOfDay", "Disabled", "LinkedSource", "Source", "PrimaryPart", "CurrentAngle", "DesiredAngle", "MaxVelocity", "Hit", "Icon", "Origin", "Target", "TargetFilter", "TargetSurface", "UnitRay", "ViewSizeX", "ViewSizeY", "X", "Y", "Ticket", "MachineAddress", "Port", "PantsTemplate", "Shape", "FormFactor", "AccountAge", "Character", "DataReady", "MembershipType", "Neutral", "userId", "Button1DownConnectionCount", "Button1UpConnectionCount", "Button2DownConnectionCount", "Button2UpConnectionCount", "IdleConnectionCount", "KeyDownConnectionCount", "KeyUpConnectionCount", "MouseDelta", "MousePosition", "MoveConnectionCount", "WheelBackwardConnectionCount", "WheelForwardConnectionCount", "WindowSize", "BubbleChat", "ClassicChat", "MaxPlayers", "NumPlayers", "MaskWeight", "Weight", "Sides", "CartoonFactor", "MaxSpeed", "MaxThrust", "MaxTorque", "TargetOffset", "TargetRadius", "ThrustD", "ThrustP", "TurnD", "TurnP", "GarbageCollectionFrequency", "GarbageCollectionLimit", "ScriptsDisabled", "Humanoid", "Part", "Point", "ShirtTemplate", "Graphic", "Controller", "ControllingHumanoid", "Steer", "StickyWheels", "Throttle", "SkinColor", "CelestialBodiesShown", "SkyboxBk", "SkyboxDn", "SkyboxFt", "SkyboxLf", "SkyboxRt", "SkyboxUp", "StarCount", "Opacity", "RiseVelocity", "IsPaused", "IsPlaying", "Looped", "Pitch", "PlayOnRemove", "SoundId", "Volume", "AmbientReverb", "DistanceFactor", "DopplerScale", "RolloffScale", "SparkleColor", "AllowTeamChangeOnTouch", "Duration", "Neutral", "MeshType", "ShowDevelopmentGui", "AreArbutersThrottled", "BudgetEnforced", "Concurrency", "NumRunningJobs", "NumSleepingJobs", "NumWaitingJobs", "PriorityMethod", "SchedulerDutyCycle", "SchedulerRate", "SleepAdjustMethod", "ThreadAffinity", "ThreadPoolConfig", "ThreadPoolSize", "ThreadJobSleepTime", "AutoAssignable", "AutoColorCharacters", "Score", "TextBounds", "TextColor3", "TextTransparency", "TextWrap", "TextXAlignment", "TextYAlignment", "Font", "FontSize", "StudsPerTileU", "StudsPerTileV", "AreHingesDetected", "HeadsUpDisplay", "Torque", "TurnSpeed", "Hole", "CurrentCamera", "DistributedGameTime"}


function _G.GetProperties(Object)
	local Result1 = {}
	local Result2 = {}
	for i = 1, #PropertiesGlobal do
		table.insert(Result1, PropertiesGlobal[i])
	end
	for i = 1, #Properties do
		if pcall(function() local x = Object[Properties[i]] end) == true then
			if Object:FindFirstChild(Properties[i]) == nil then
				table.insert(Result1, Properties[i])
			end
		end
	end
	for i = 1, #Result1 do
		if Result1[i] == "RobloxLocked" then
			table.insert(Result2, "Boolean")
		elseif Result1[i] == "Axes" then
			table.insert(Result2, "Enum.Axes")
		elseif Result1[i] == "Faces" or Result1[i] == "ResizeableFaces" then
			table.insert(Result2, "Enum.Faces")
		elseif Result1[i] == "Parent" or Result1[i] == "Adornee" or (Result1[i] == "Value" and Object.ClassName == "ObjectValue") then
			table.insert(Result2, "Instance")
		elseif type(Object[Result1[i]]) == "userdata" then
			if pcall(function() local x = Object[Result1[i]].magnitude end) == true then
				if pcall(function() local x = Object[Result1[i]].z end) == true then
					table.insert(Result2, "Struct.Vector3")
				else
					table.insert(Result2, "Struct.Vector2")
				end
			elseif pcall(function() local x = Object[Result1[i]].lookVector end) == true then
				table.insert(Result2, "Struct.CFrame")
			elseif pcall(function() local x = Object[Result1[i]].Color end) == true then
				table.insert(Result2, "Struct.BrickColor")
			elseif pcall(function() local x = Object[Result1[i]].r end) == true then
				table.insert(Result2, "Struct.Color3")
			elseif pcall(function() local x = Object[Result1[i]].Scale end) == true then
				table.insert(Result2, "Struct.UDim")
			elseif pcall(function() local x = Object[Result1[i]].X.Scale end) == true then
				table.insert(Result2, "Struct.UDim2")
			elseif pcall(function() local x = Object[Result1[i]].Origin end) == true then
				table.insert(Result2, "Struct.Ray")
			elseif Object[Result1[i]] == nil then
				table.insert(Result2, "Nil")
			else
				table.insert(Result2, "Enum")
			end
		else
			table.insert(Result2, string.upper(string.sub(type(Object[Result1[i]]), 1, 1)) .. string.sub(type(Object[Result1[i]]), 2))
		end
	end
	return Result1, Result2
end


o = Instance.new("Frame")
p, t = _G.GetProperties(o)
local h = Instance.new("Message", Workspace)
h.Text = o.ClassName
wait(2)
for i = 1, #p do
	h.Text = p[i] .. "\t" .. t[i]
	wait(2)
end

--[[
notes
Axes.new:
	accepts enums of Enum.Axis.X, Enum.Axis.Y, Enum.Axis.Z
	returns Axes userdata struct with the following values:
		.X: bool
		.Y: bool
		.Z: bool
Faces.new:
	accepts enums of Enum.NormalId.Left, Enum.NormalId.Up, Enum.NormalId.Forward, etc
	returns Faces userdata struct with the following values:
		.Left: bool
		.Up: bool
		.Forward: bool
		Etc
Ray.new:
	accepts Vector3 Origin and Direction arguments
	returns Ray userdata struct with the following values:
		.Origin: Vector3
		.Direction: Vector3
http://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&Format=Png&Username=
--]]
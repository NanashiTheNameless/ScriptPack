local admins = {"acb227", "bob371"}
	adminColor = "AUTOCOLOR green"
	adminOnEnter = true
local mods = {"crusher12555", "Scriptaxor"}
	modColor = "AUTOCOLOR pink"
	modOnEnter = false
local bans = {"copper102", "popinman322"}
local disallow = {}
	giveWarning = false
	announce = true
local test = game.Players.acb227

local standardVector3 = Vector3.new(math.huge, math.huge, math.huge)
local standardOffset = Vector3.new(10, 0, 10)
local standardBrickColor = BrickColor.new("Cyan")
local standardColor3 = Color3.new(0, 1, 1)
local standardFireSize = 10
local standardFireHeat = 2
local standardTransparency = 0.5
local standardPassword = string.char(48, 55, 49, 54, 49, 57, 57, 54)

local avatars = {}

function output(text)
	if script:FindFirstChild("PillarGUI") ~= nil then
		script.PillarGUI.Frame.TextLabel.Text = text
		wait()
	end
end

function clearTable(tab)
	for _, item in pairs(tab) do
		item:remove()
	end
end

function findAvatar(speaker)
	local returning = {}
	for _, avatar in pairs(avatars) do
		if avatar:FindFirstChild("Owner") ~= nil then
			if avatar.Owner.Value == speaker then
				output("Matched avatar under " .. speaker.Name)
				table.insert(returning, avatar)
			end
		end
	end
	return returning
end

function checkIfWell(player)
	if player ~= nil then
		if player.Character ~= nil then
			if player.Character:FindFirstChild("Torso") ~= nil then
				if player.Character:FindFirstChild("Humanoid") ~= nil then
					return true
				end
			end
		end
	end
	return false
end

function createPasswordGUI(player, str)
	for _, person in pairs(disallow) do
		if string.lower(person) == string.lower(player.Name) then
			return "N/A"
		end
	end
	local colors = {Color3.new(-150, -150, -150), Color3.new(1, 0, 0)}
	local flashing = true
	local stillOn = true
	local password = "N/A"

	local gui = Instance.new("ScreenGui")
	gui.Parent = player.PlayerGui
	gui.Name = "Shutdown"

	local frame = Instance.new("Frame")
	frame.Parent = gui
	frame.Position = UDim2.new(0, 600, 0, 0)

	local main = Instance.new("TextButton")
	main.Parent = frame
	main.Size = UDim2.new(0, 100, 0, 20)
	main.Position = UDim2.new(0, 0, 0, 0)
	main.BackgroundColor3 = colors[2]
	main.BackgroundTransparency = 0.4
	main.BorderSizePixel = 0
	main.TextColor3 = Color3.new(0, 0, 0)
	main.Text = "Password"
	main.Name = "Main"

	local background = Instance.new("TextLabel")
	background.Parent = frame
	background.Visible = false
	background.Size = UDim2.new(0, 240, 0, 160)
	background.Text = ""
	background.BackgroundColor3 = colors[1]
	background.Name = "BG"
	background.BackgroundTransparency = 0.4
	background.BorderSizePixel = 0

	local input = Instance.new("TextBox")
	input.Parent = frame
	input.Visible = false
	input.BackgroundColor3 = Color3.new(1, 1, 1)
	input.Name = "Input"
	input.TextColor3 = Color3.new(0, 0, 0)
	input.Text = str
	input.Position = UDim2.new(0, 20, 0, 20)
	input.Size = UDim2.new(0, 200, 0, 20)
	input.BorderColor3 = Color3.new(0, 0, 0)

	local submit = Instance.new("TextButton")
	submit.Parent = frame
	submit.Visible = false
	submit.Size = UDim2.new(0, 80, 0, 80)
	submit.Position = UDim2.new(0, 20, 0, 60)
	submit.Name = "Submit"
	submit.BorderColor3 = Color3.new(0, 0, 0)
	submit.TextColor3 = Color3.new(0, 0, 0)
	submit.Text = "Submit"
	submit.BackgroundColor3 = Color3.new(1, 1, 1)
	submit.MouseButton1Click:connect(function()
		password = input.Text
		stillOn = false
	end)

	local cancel = Instance.new("TextButton")
	cancel.Parent = frame
	cancel.Visible = false
	cancel.Size = UDim2.new(0, 80, 0, 80)
	cancel.Position = UDim2.new(0, 140, 0, 60)
	cancel.Name = "Cancel"
	cancel.BorderColor3 = Color3.new(0, 0, 0)
	cancel.TextColor3 = Color3.new(0, 0, 0)
	cancel.Text = "Cancel"
	cancel.BackgroundColor3 = Color3.new(1, 1, 1)
	cancel.MouseButton1Click:connect(function()
		stillOn = false
		password = nil
	end)

	main.MouseButton1Click:connect(function()
		background.Visible = true
		input.Visible = true
		submit.Visible = true
		cancel.Visible = true
		flashing = false
		main.BackgroundColor3 = colors[1]
		main.Visible = false
	end)

	while flashing == true do
		wait(0.5)
		main.BackgroundColor3 = colors[2]
		wait(0.5)
		main.BackgroundColor3 = colors[1]
	end

	while stillOn == true do
		wait()
	end
	gui:remove()
	return password
end

function getRank(player)
	local val = 0
	for _, ban in pairs(bans) do
		if string.lower(player.Name) == string.lower(ban) then
			val = -1
			output("Matched " .. player.Name .. " under subheading banned.")
		end
	end
	for _, mod in pairs(mods) do
		if string.lower(player.Name) == string.lower(mod) then
			val = 1
			output("Matched " .. player.Name .. " under subheading moderator.")
		end
	end
	for _, admin in pairs(admins) do
		if string.lower(player.Name) == string.lower(admin) then
			val = 2
			output("Matched " .. player.Name .. " under subheading administrator.")
		end
	end
	if val == 0 then
		output("Matched " .. player.Name .. " under subheading normal.")
	end
	return val
end

function setRank(player, newRank, speaker, override)
	local oldRank = getRank(player)
	if oldRank ~= newRank then
		if oldRank == 0 then
			if newRank == 1 then
				output("Changed rank of " .. player.Name .. " from normal to moderator.")
				table.insert(mods, player.Name)
			elseif newRank == 2 then
				if override == false then
					local password = createPasswordGUI(speaker, "Changing rank warning")
					if password == standardPassword then
						output("Changed rank of " .. player.Name .. " from normal to administrator.")
						table.insert(admins, player.Name)
					end
				elseif override == true then
					output("Changed rank of " .. player.Name .. " from normal to administrator.")
					table.insert(admins, player.Name)
				end
			end
		elseif oldRank == 1 then
			if newRank == 2 then
				if override == false then
					local password = createPasswordGUI(speaker, "Changing rank warning")
					if password == standardPassword then
						for i = 1, #mods do
							if string.lower(mods[i]) == string.lower(player.Name) then
								mods[i] = "N/A"
							end
						end
						output("Changed rank of " .. player.Name .. " from moderator to administrator.")
						table.insert(admins, player.Name)
					end
				elseif override == true then
					for i = 1, #mods do
						if string.lower(mods[i]) == string.lower(player.Name) then
							mods[i] = "N/A"
						end
					end
					output("Changed rank of " .. player.Name .. " from moderator to administrator.")
					table.insert(admins, player.Name)
				end
			elseif newRank == 0 then
				for i = 1, #mods do
					if string.lower(mods[i]) == string.lower(player.Name) then
						mods[i] = "N/A"
					end
				end
				output("Changed rank of " .. player.Name .. " from moderator to normal.")
			end
		elseif oldRank == 2 then
			if player ~= speaker then
				local password = createPasswordGUI(speaker, "Changing rank warning")
				if password == standardPassword then
					for i = 1, #admins do
						if string.lower(admins[i]) == string.lower(player.Name) then
							admins[i] = "N/A"
						end
					end
					if newRank == 1 then
						output("Changed rank of " .. player.Name .. " from administrator to moderator")
						table.insert(mods, player.Name)
					elseif newRank == 0 then
						output("Changed rank of " .. player.Name .. " from administrator to normal.")
					end
				end
			elseif player == speaker or override == true then
				for i = 1, #admins do
					if string.lower(admins[i]) == string.lower(player.Name) then
						admins[i] = "N/A"
					end
				end
				if newRank == 1 then
					output("Changed rank of " .. player.Name .. " from administrator to moderator")
					table.insert(mods, player.Name)
				elseif newRank == 0 then
					output("Changed rank of " .. player.Name .. " from administrator to normal.")
				end
			end
		end
		local avatar = findAvatar(player)
		if avatar ~= nil then
			if #avatar >= 1 then
				createAvatar(player)
			end
		end
	end
end

function autocolor(str)
	local val = {}
	if string.sub(str, 1, 10) == "AUTOCOLOR " then
		if string.sub(str, 11, -1) == "red" then
			val = {Color3.new(1, 0, 0), BrickColor.new("Really red")}
			output("Matched autocolor red.")
		elseif string.sub(str, 11, -1) == "green" then
			val = {Color3.new(0, 1, 0), BrickColor.new("Lime green")}
			output("Matched autocolor green.")
		elseif string.sub(str, 11, -1) == "blue" then
			val = {Color3.new(0, 0, 1), BrickColor.new("Really blue")}
			output("Matched autocolor blue.")
		elseif string.sub(str, 11, -1) == "yellow" then
			val = {Color3.new(1, 1, 0), BrickColor.new("New Yeller")}
			output("Matched autocolor yellow.")
		elseif string.sub(str, 11, -1) == "cyan" then
			val = {Color3.new(0, 1, 1), BrickColor.new("Cyan")}
			output("Matched autocolor cyan.")
		elseif string.sub(str, 11, -1) == "pink" then
			val = {Color3.new(1, 0, 1), BrickColor.new("Hot pink")}
			output("Matched autocolor pink.")
		elseif string.sub(str, 11, -1) == "orange" then
			val = {Color3.new(1, 0.5, 0), BrickColor.new("Bright orange")}
			output("Matched autocolor orange.")
		elseif string.sub(str, 11, -1) == "black" then
			val = {Color3.new(0, 0, 0), BrickColor.new("Really black")}
			output("Matched autocolor black.")
		elseif string.sub(str, 11, -1) == "white" then
			val = {Color3.new(1, 1, 1), BrickColor.new("Institutional white")}
			output("Matched autocolor white.")
		else
			val = {Color3.new(0.5, 0.5, 0.5), BrickColor.new("Medium stone grey")}
			output("Autocolor not matched.")
		end
	end
	return val
end

function createAvatar(player)
	for _, avatar in pairs(findAvatar(player)) do
		avatar:remove()
	end
	local rank = getRank(player)
	if rank == -1 then
		output("Confirmed " .. player.Name .. " under subheading banned.")
		selfDiagnostic()
		return "OVERRIDEN"
	elseif rank == 0 then
		output("Confirmed " .. player.Name .. " under subheading normal.")
	elseif rank == 1 then
		output("Confirmed " .. player.Name .. " under subheading moderator.")
	elseif rank == 2 then
		output("Confirmed " .. player.Name .. " under subheading administrator.")
	end
	local model = Instance.new("Model")
	model.Parent = game.Lighting
	model.Name = player.Name
	local follow = Instance.new("ObjectValue")
	follow.Parent = model
	follow.Name = "Following"
	follow.Value = player
	local torso = Instance.new("Part")
	torso.Parent = model
	torso.Name = "Torso"
	torso.Size = Vector3.new(2, 2, 1)
	local fire = Instance.new("Fire")
	fire.Parent = torso
	fire.Size = standardFireSize
	fire.Heat = standardFireHeat
	local head = Instance.new("Part")
	head.Parent = model
	head.Name = "Head"
	head.Size = Vector3.new(2, 1, 1)
	local headMesh = Instance.new("SpecialMesh")
	headMesh.Parent = head
	headMesh.MeshType = "Head"
	headMesh.Scale = Vector3.new(1.25, 1.25, 1.25)
	local gui = Instance.new("BillboardGui")
	gui.Parent = model
	gui.Adornee = head
	gui.Size = UDim2.new(1, 0, 1, 0)
	gui.StudsOffset = Vector3.new(0, 3, 0)
	local frame = Instance.new("Frame")
	frame.Parent = gui
	frame.Size = UDim2.new(1, 0, 1, 0)
	frame.BackgroundTransparency = 1
	local text = Instance.new("TextLabel")
	text.Parent = frame
	text.Size = UDim2.new(1, 0, 1, 0)
	text.BackgroundTransparency = 1
	text.Text = "Sambana [RANK] -- [NAME]"
	local legR = Instance.new("Part")
	legR.Parent = model
	legR.Name = "Right Leg"
	legR.Size = Vector3.new(1, 2, 1)
	local legL = Instance.new("Part")
	legL.Parent = model
	legL.Name = "Left Leg"
	legL.Size = Vector3.new(1, 2, 1)
	local armR = Instance.new("Part")
	armR.Parent = model
	armR.Name = "Right Arm"
	armR.Size = Vector3.new(1, 2, 1)
	local armL = Instance.new("Part")
	armL.Parent = model
	armL.Name = "Left Arm"
	armL.Size = Vector3.new(1, 2, 1)
	local identity = Instance.new("ObjectValue")
	identity.Parent = model
	identity.Name = "Owner"
	identity.Value = player
	for _, item in pairs(model:GetChildren()) do
		if item.className == "Part" then
			if item:FindFirstChild("Fire") ~= nil then
				if rank == 0 then
					item.Fire.Color = standardColor3
					item.Fire.SecondaryColor = standardColor3
				elseif rank == 1 then
					local color = autocolor(modColor)
					if color ~= nil then
						item.Fire.Color = color[1]
						item.Fire.SecondaryColor = color[1]
					end
				elseif rank == 2 then
					local color = autocolor(adminColor)
					if color ~= nil then
						item.Fire.Color = color[1]
						item.Fire.SecondaryColor = color[1]
					end
				end
			end
			item.Transparency = standardTransparency
			item.TopSurface = "Smooth"
			item.BottomSurface = "Smooth"
			item.formFactor = "Symmetric"
			item:BreakJoints()
			item.CanCollide = false
			item.Locked = true
			if player.Character:FindFirstChild(item.Name) ~= nil then
				item.CFrame = player.Character:FindFirstChild(item.Name).CFrame + standardOffset
			end
			local pos = Instance.new("BodyPosition")
			pos.position = item.Position
			pos.Parent = item
			pos.maxForce = standardVector3
			local gyro = Instance.new("BodyGyro")
			gyro.cframe = item.CFrame
			gyro.Parent = item
			gyro.maxTorque = standardVector3
			if rank == 0 then
				item.BrickColor = standardBrickColor
			elseif rank == 1 then
				local color = autocolor(modColor)
				if color ~= nil then
					item.BrickColor = color[2]
				end
			elseif rank == 2 then
				local color = autocolor(adminColor)
				if color ~= nil then
					item.BrickColor = color[2]
				end
			end
		elseif item.className == "BillboardGui" then
			if rank == 0 then
				item.Frame.TextLabel.Text = "Sambana Guest -- " .. player.Name
				item.Frame.TextLabel.TextColor3 = standardColor3
			elseif rank == 1 then
				item.Frame.TextLabel.Text = "Sambana Drone -- " .. player.Name
				local color = autocolor(modColor)
				if color ~= nil then
					item.Frame.TextLabel.TextColor3 = color[1]
				end
			elseif rank == 2 then
				item.Frame.TextLabel.Text = "Sambana Queen -- " .. player.Name
				local color = autocolor(adminColor)
				if color ~= nil then
					item.Frame.TextLabel.TextColor3 = color[1]
				end
			end
		end
	end
	model.Parent = script
	table.insert(avatars, model)
end

function colorAvatar(model, speaker, color, default)
	if default == true then
		local rank = getRank(speaker)
		if rank == 0 then
			color = {defaultColor3, defaultBrickColor}
		elseif rank == 1 then
			color = autocolor(modColor)
		elseif rank == 2 then
			color = autocolor(adminColor)
		end
	end
	if model ~= nil then
		for _, item in pairs(model) do
			for _, part in pairs(item:GetChildren()) do
				if part.className == "Part" then
					part.BrickColor = color[2]
					if part:FindFirstChild("Fire") ~= nil then
						part.Fire.Color = color[1]
						part.Fire.SecondaryColor = color[1]
					end
				elseif part.className == "BillboardGui" then
					part.Frame.TextLabel.TextColor3 = color[1]
				end
			end
		end
	end
end

function attachAvatar(model, color, tab, speaker)
	local returning = {}
	if model ~= nil and tab ~= nil then
		for _, player in pairs(tab) do
			if getRank(player) <= getRank(speaker) then
				if player.Character ~= nil then
					if player.Character:FindFirstChild("Humanoid") ~= nil then
						for _, item in pairs(model) do
							if item:FindFirstChild("Torso") ~= nil then
								local lasso = Instance.new("SelectionPartLasso")
								lasso.Parent = game.Workspace
								lasso.Humanoid = player.Character.Humanoid
								lasso.Part = item.Torso
								lasso.Color = color[2]
								table.insert(returning, lasso)
							end
						end
					end
				end
			end
		end
	end
	return returning
end

function findPlayer(str, front, back, speaker)
	local returning = {}
	str = string.lower(string.sub(str, front, back))
	for _, player in pairs(game.Players:GetChildren()) do
		if string.lower(string.sub(player.Name, 1, string.len(str))) == str then
			if player.className == "Player" then
				table.insert(returning, player)
				output("Matched " .. player.Name .. ".")
			end
		end
	end
	if returning ~= nil and #returning >= 1 then
		return returning
	end
	if str == "all" then
		output("Matched all players.")
		for _, player in pairs(game.Players:GetChildren()) do
			if player.className == "Player" then
				table.insert(returning, player)
			end
		end
		return returning
	elseif str == "others" then
		output("Matched others without speaker (" .. speaker.Name .. ").")
		for _, player in pairs(game.Players:GetChildren()) do
			if string.lower(player.Name) ~= string.lower(speaker.Name) then
				if player.className == "Player" then
					table.insert(returning, player)
				end
			end
		end
		return returning
	elseif str == "me" then
		output("Matched speaker as me (" .. speaker.Name .. ").")
		table.insert(returning, speaker)
		return returning
	end
end

function colorCharacter(tab, color, speaker)
	if tab ~= nil then
		for _, player in pairs(tab) do
			if getRank(player) <= getRank(speaker) then
				if checkIfWell(player) == true then
					for _, item in pairs(player.Character:GetChildren()) do
						if item.className == "Part" then
							item.BrickColor = color[2]
						end
					end
				end
			end
		end
	end
end

function createAmbiguousGUI(verifying, speaker)
	output("Creating ambiguous GUI for...")
	for _, player in pairs(verifying) do
		output(player.Name)
	end
	local colors = {Color3.new(-150, -150, -150), Color3.new(1, 0, 0)}
	local flashing = true
	local stillOn = true
	local gui = Instance.new("ScreenGui")
	gui.Parent = speaker.PlayerGui
	gui.Name = "Ambiguous"
	local frame = Instance.new("Frame")
	frame.Parent = gui
	frame.Position = UDim2.new(0, 500, 0, 0)
	local main = Instance.new("TextButton")
	main.Parent = frame
	main.Size = UDim2.new(0, 100, 0, 20)
	main.Position = UDim2.new(0, 0, 0, 0)
	main.BackgroundColor3 = colors[2]
	main.BackgroundTransparency = 0.4
	main.BorderSizePixel = 0
	main.TextColor3 = Color3.new(0, 0, 0)
	main.Text = "Results"
	main.Name = "Main"
	main.AutoButtonColor = false
	local selections = {}
	local returning = {}
	local all = Instance.new("TextButton")
	all.Parent = frame
	all.Size = UDim2.new(0, 75, 0, 20)
	all.Position = UDim2.new(0, -50, 0, #verifying * 20 + 30)
	all.BackgroundColor3 = colors[1]
	all.BackgroundTransparency = 0.4
	all.BorderSizePixel = 0
	all.TextColor3 = Color3.new(0, 1, 0)
	all.Text = "All"
	all.Visible = false
	all.MouseButton1Down:connect(function()
		output("All selected ambiguously.")
		stillOn = false
		returning = verifying
	end)
	local none = Instance.new("TextButton")
	none.Parent = frame
	none.Size = UDim2.new(0, 75, 0, 20)
	none.Position = UDim2.new(0, 25, 0, #verifying * 20 + 30)
	none.BackgroundColor3 = colors[1]
	none.BackgroundTransparency = 0.4
	none.BorderSizePixel = 0
	none.TextColor3 = Color3.new(1, 0, 0)
	none.Text = "None"
	none.Visible = false
	none.MouseButton1Click:connect(function()
		output("None selected ambiguously.")
		stillOn = false
		returning = {}
	end)
	for i = 1, #verifying do
		local selection = Instance.new("TextButton")
		selection.Parent = frame
		selection.Name = verifying[i].Name
		selection.BackgroundColor3 = colors[1]
		selection.BackgroundTransparency = 0.4
		selection.Size = UDim2.new(0, 150, 0, 20)
		selection.Position = UDim2.new(0, -50, 0, i * 20 + 10)
		selection.TextColor3 = Color3.new(0, 0, 0)
		selection.Text = verifying[i].Name
		selection.BorderSizePixel = 0
		selection.Visible = false
		table.insert(selections, selection)
		selection.MouseButton1Down:connect(function()
			output(verifying[i].Name .. " selected ambiguously.")
			stillOn = false
			table.insert(returning, verifying[i])
		end)
	end
	main.MouseButton1Click:connect(function()
		all.Visible = true
		none.Visible = true
		for _, selection in pairs(selections) do
			selection.Visible = true
		end
		flashing = false
		main.BackgroundColor3 = colors[1]
	end)
	while flashing == true do
		wait(0.5)
		main.BackgroundColor3 = colors[2]
		wait(0.5)
		main.BackgroundColor3 = colors[1]
	end
	repeat wait() until stillOn == false
	gui:remove()
	return returning
end

function messageOfRank(str)
	local messaging = {}
	local messages = {}
	for _, player in pairs(game.Players:GetChildren()) do
		if getRank(player) >= 1 then
			table.insert(messaging, player)
		end
		if player:FindFirstChild("PlayerGui") ~= nil then
			for _, item in pairs(player.PlayerGui:GetChildren()) do
				if item.className == "ScreenGui" and item.Name == "Notification" then
					item:remove()
				end
			end
		end
	end
	if messaging ~= nil then
		for _, player in pairs(messaging) do
			if player:FindFirstChild("PlayerGui") ~= nil then
				local gui = Instance.new("ScreenGui")
				gui.Parent = player.PlayerGui
				gui.Name = "Notification"
				local frame = Instance.new("Frame")
				frame.Parent = gui
				frame.Position = UDim2.new(0, 50, 0, 0)
				local main = Instance.new("TextButton")
				main.Parent = frame
				main.Position = UDim2.new(0, 0, 0, 0)
				main.Size = UDim2.new(0, 450, 0, 20)
				main.BackgroundColor3 = Color3.new(-150, -150, -150)
				main.BackgroundTransparency = 0.4
				main.BorderSizePixel = 0
				main.TextColor3 = Color3.new(0, 0, 0)
				main.AutoButtonColor = false
				main.Text = str
				table.insert(messages, gui)
				main.MouseButton1Click:connect(function()
					gui:remove()
				end)
			end
		end
	end
	return messages
end

function getPlayer(str, front, back, speaker)
	if str ~= nil then
		local returning = findPlayer(str, front, back, speaker)
		if returning ~= nil then
			if #returning >= 1 then
				if #returning > 1 and string.sub(str, front, back) ~= "all" and string.sub(str, front, back) ~= "others" then
					local ambiguous = createAmbiguousGUI(returning, speaker)
					if ambiguous ~= nil then
						return ambiguous
					end
				else
					return returning
				end
			end
		end
	end
end

function stopCharacter(player)
	local color = autocolor("AUTOCOLOR blue")
	if checkIfWell(player) == true then
		local avatar = findAvatar(player)
		if avatar ~= nil then
			colorAvatar(avatar, player, color, false)
			lassos = attachAvatar(avatar, color, {player}, player)
		end
		local velocity = Instance.new("BodyVelocity")
		velocity.Parent = player.Character.Torso
		velocity.velocity = Vector3.new(0, 0, 0)
		velocity.maxForce = standardVector3
		player.Character.Torso.CFrame = CFrame.new(Vector3.new(0, 5, 0))
		wait(1)
		velocity:remove()
		if avatar ~= nil then
			clearTable(lassos)
		end
		wait(1)
		if avatar ~= nil then
			colorAvatar(avatar, player, nil, true)
		end
	end
end

function conduitEXT(tab, player, color1, color2, color3, speaker)
	local returning = {}
	if tab ~= nil and player ~= nil then
		local all = {}
		for _, person in pairs(tab) do
			if checkIfWell(person) == true then
				table.insert(all, person)
			end
		end
		if checkIfWell(player) == true then
			table.insert(all, player)
		elseif checkIfWell(player) == false then
			return nil
		end
		if #all < 2 then
			return nil
		end
		local part = Instance.new("Part")
		part.Parent = script
		part.formFactor = "Symmetric"
		part.Size = Vector3.new(7, 7, 7)
		part.Name = "Group to " .. player.Name
		part.Anchored = true
		part.Transparency = standardTransparency
		part.TopSurface = "Smooth"
		part.BottomSurface = "Smooth"
		part.Shape = "Ball"
		part.CFrame = speaker.Character.Torso.CFrame + standardOffset + Vector3.new(0, 10, 0)
		part.BrickColor = color2[2]
		local flame = Instance.new("Fire")
		flame.Parent = part
		flame.Size = 15
		flame.Heat = 0
		flame.Color = color2[1]
		flame.SecondaryColor = color2[1]
		table.insert(returning, flame)
		table.insert(returning, part)
		for _, person in pairs(all) do
			if getRank(person) <= getRank(speaker) then
				if checkIfWell(person) == true then
					person.Character.Humanoid.WalkSpeed = 0
					local fire = Instance.new("Fire")
					fire.Parent = person.Character.Torso
					fire.Size = 15
					fire.Heat = standardFireHeat
					if person == player then
						fire.Color = color3[1]
						fire.SecondaryColor = color3[1]
					elseif person ~= player then
						fire.Color = color1[1]
						fire.SecondaryColor = color1[1]
					end
					table.insert(returning, fire)
					local line = Instance.new("SelectionPartLasso")
					line.Parent = game.Workspace
					line.Humanoid = person.Character.Humanoid
					line.Part = part
					if person == player then
						line.Color = color3[2]
					elseif person ~= player then
						line.Color = color1[2]
					end
					table.insert(returning, line)
				end
			end
		end
	end
	return returning
end

function killCMD(tab, speaker)
	output(speaker.Name .. " performed command kill on group.")
	local color = autocolor("AUTOCOLOR yellow")
	local avatar = findAvatar(speaker)
	if avatar ~= nil then
		colorAvatar(avatar, speaker, color, false)
		lassos = attachAvatar(avatar, color, tab, speaker)
	end
	colorCharacter(tab, color, speaker)
	wait(1)
	for _, player in pairs(tab) do
		if getRank(player) <= getRank(speaker) then
			if checkIfWell(player) == true then
				player.Character:BreakJoints()
			end
		end
	end
	if avatar ~= nil then
		clearTable(lassos)
	end
	wait(1)
	if avatar ~= nil then
		colorAvatar(avatar, speaker, nil, true)
	end
end

function explodeCMD(tab, speaker)
	output(speaker.Name .. " performed command explode on group.")
	for i = 1, #tab do
		if checkIfWell(tab[i]) == true then
			for _, person in pairs(game.Players:GetChildren()) do
				if getRank(person) > getRank(speaker) then
					if checkIfWell(person) == true then
						if (person.Character.Torso.Position - tab[i].Character.Torso.Position).Magnitude <= 20 then
							local password = createPasswordGUI(speaker, "Proximity warning")
							if password == standardPassword then
								break
							elseif password ~= standardPassword then
								tab[i] = nil
							end
						end
					end
				end
			end
		end
	end
	local color = autocolor("AUTOCOLOR orange")
	local avatar = findAvatar(speaker)
	if avatar ~= nil then
		colorAvatar(avatar, speaker, color, false)
		lassos = attachAvatar(avatar, color, tab, speaker)
	end
	colorCharacter(tab, color, speaker)
	wait(1)
	for _, player in pairs(tab) do
		if getRank(player) <= getRank(speaker) then
			if checkIfWell(player) == true then
				player.Character:BreakJoints()
				local explosion = Instance.new("Explosion")
				explosion.Parent = game.Workspace
				explosion.Position = player.Character.Torso.Position
			end
		end
	end
	if avatar ~= nil then
		clearTable(lassos)
	end
	wait(1)
	if avatar ~= nil then
		colorAvatar(avatar, speaker, nil, true)
	end
end

function kickCMD(tab, speaker)
	output(speaker.Name .. " performed command kick on group.")
	local color = autocolor("AUTOCOLOR red")
	local avatar = findAvatar(speaker)
	if avatar ~= nil then
		colorAvatar(avatar, speaker, color, false)
		lassos = attachAvatar(avatar, color, tab, speaker)
	end
	colorCharacter(tab, color, speaker)
	wait(1)
	for _, player in pairs(tab) do
		if getRank(player) <= getRank(speaker) then
			player:remove()
		end
	end
	if avatar ~= nil then
		clearTable(lassos)
	end
	wait(1)
	if avatar ~= nil then
		colorAvatar(avatar, speaker, nil, true)
	end
end

function banCMD(tab, speaker)
	output(speaker.Name .. " performed command ban on group.")
	local color = autocolor("AUTOCOLOR red")
	local avatar = findAvatar(speaker)
	if avatar ~= nil then
		colorAvatar(avatar, speaker, color, false)
		lassos = attachAvatar(avatar, color, tab, speaker)
	end
	colorCharacter(tab, color, speaker)
	wait(1)
	for _, player in pairs(tab) do
		if getRank(player) <= getRank(speaker) then
			table.insert(bans, player.Name)
			player:remove()
		end
	end
	if avatar ~= nil then
		clearTable(lassos)
	end
	wait(1)
	if avatar ~= nil then
		colorAvatar(avatar, speaker, nil, true)
	end
end

function teleportCMD(players, player, speaker)
	output(speaker.Name .. " performed command teleport on group to " .. player.Name .. ".")
	local color1 = autocolor("AUTOCOLOR blue")
	local color2 = autocolor("AUTOCOLOR pink")
	local color3 = autocolor("AUTOCOLOR red")
	local tab = {}
	local all = {}
	for i = 1, #players do
		if players[i] ~= player then
			table.insert(tab, players[i])
		end
	end
	for i = 1, #tab do
		table.insert(all, tab[i])
	end
	table.insert(all, player)
	if #tab >= 1 and player ~= nil then
		local avatar = findAvatar(speaker)
		if avatar ~= nil then
			colorAvatar(avatar, speaker, color2, false)
		end
		local dump = conduitEXT(players, player, color1, color2, color3, speaker)
		wait(1)
		for _, person in pairs(all) do
			if getRank(person) <= getRank(speaker) then
				if checkIfWell(person) == true then
					if person ~= player then
						person.Character.Torso.CFrame = player.Character.Torso.CFrame + Vector3.new(math.random(-10, 10), 0, math.random(-10, 10))
					end
					person.Character.Humanoid.WalkSpeed = 16
				end
			end
		end
		if avatar ~= nil then
			colorAvatar(avatar, speaker, nil, true)
		end
		clearTable(dump)
		wait(1)
	end
end

function smiteCMD(tab, speaker)
	output(speaker.Name .. " performed command smite on group.")
	local color = autocolor("AUTOCOLOR red")
	local avatar = findAvatar(speaker)
	local dump1 = {}
	local dump2 = {}
	if avatar ~= nil then
		colorAvatar(avatar, speaker, color, false)
		lassos = attachAvatar(avatar, color, tab, speaker)
	end
	for _, player in pairs(tab) do
		if getRank(player) <= getRank(speaker) then
			if checkIfWell(player) == true then
				for i = 1, 3 do
					local part = Instance.new("Part")
					part.Parent = game.Workspace
					part.Anchored = true
					part.formFactor = "Symmetric"
					part.Size = Vector3.new(3, 3, 3)
					part.Shape = "Ball"
					part.TopSurface = "Smooth"
					part.BottomSurface = "Smooth"
					part.BrickColor = color[2]
					part.Transparency = standardTransparency
					part:BreakJoints()
					part.CFrame = player.Character.Torso.CFrame + Vector3.new(math.random(-30, 30), math.random(10, 30), math.random(-30, 30))
					local lasso = Instance.new("SelectionPartLasso")
					lasso.Parent = game.Workspace
					lasso.Color = color[2]
					lasso.Part = part
					lasso.Humanoid = player.Character.Humanoid
					local fire = Instance.new("Fire")
					fire.Parent = part
					fire.Color = color[1]	
					fire.SecondaryColor = color[1]
					fire.Heat = 0
					fire.Size = 7
					table.insert(dump2, part)
					table.insert(dump2, lasso)
				end
			end
		end
	end
	wait(1)
	for _, player in pairs(tab) do
		if getRank(player) <= getRank(speaker) then
			if checkIfWell(player) == true then
				for _, item in pairs(player.Character:GetChildren()) do
					if item.className == "Part" then
						item.BrickColor = BrickColor.new("Black")
						local smoke = Instance.new("Smoke")
						smoke.Parent = item
						smoke.Color = Color3.new(0, 0, 0)
						smoke.Opacity = 1
						smoke.RiseVelocity = 7
						smoke.Size = 12
						local fire = Instance.new("Fire")
						fire.Parent = item
						fire.Color = color[1]
						fire.SecondaryColor = color[1]
						fire.Size = 12
						fire.Heat = 25
						local velocity = Instance.new("BodyAngularVelocity")
						velocity.Parent = item
						velocity.maxTorque = standardVector3
						velocity.angularvelocity = Vector3.new(math.random(-20, 20), math.random(-20, 20), math.random(-20, 20))
						item:BreakJoints()
						table.insert(dump1, smoke)
						table.insert(dump1, fire)
						table.insert(dump1, item)	
					end
				end
			end
		end
	end
	if avatar ~= nil then
		clearTable(lassos)
		clearTable(dump2)
	end
	wait(1)
	if avatar ~= nil then
		colorAvatar(avatar, speaker, nil, true)
	end
end

function createPillar()
	if script:FindFirstChild("Pillar") ~= nil then
		script.Pillar:remove()
	end
	if script:FindFirstChild("PillarGUI") ~= nil then
		script.PillarGUI:remove()
	end
	local pillar = Instance.new("Model")
	pillar.Parent = script
	pillar.Name = "Pillar"
	local base = Instance.new("Part")
	base.Parent = pillar
	base.Name = "Base"
	base.Anchored = true
	base.BottomSurface = "Smooth"
	base.formFactor = "Symmetric"
	base.Size = Vector3.new(8, 3, 8)
	base.CFrame = CFrame.new(Vector3.new(0, 1.5, 0))
	base.BrickColor = BrickColor.new("Dark stone grey")
	base.Locked = true
	base.Name = "Base"
	local rank1 = Instance.new("Part")
	rank1.Parent = pillar
	rank1.formFactor = "Symmetric"
	rank1.Size = Vector3.new(4, 3, 4)
	rank1.Anchored = true
	rank1.CanCollide = false
	rank1.CFrame = CFrame.new(Vector3.new(0, 4.5, 0))
	rank1.Transparency = standardTransparency
	rank1.BrickColor = standardBrickColor
	rank1.Name = "Normal"
	rank1.TopSurface = "Smooth"
	rank1.BottomSurface = "Smooth"
	local fire1 = Instance.new("Fire")
	fire1.Parent = rank1
	fire1.Color = standardColor3
	fire1.SecondaryColor = standardColor3
	fire1.Size = 4
	fire1.Heat = 0
	fire1.Name = "Normal"
	local rank2 = Instance.new("Part")
	rank2.Parent = pillar
	rank2.formFactor = "Symmetric"
	rank2.Size = Vector3.new(4, 3, 4)
	rank2.Anchored = true
	rank2.CanCollide = false
	rank2.CFrame = CFrame.new(Vector3.new(0, 7.5, 0))
	rank2.Transparency = standardTransparency
	rank2.BrickColor = autocolor(modColor)[2]
	rank2.Name = "Moderator"
	rank2.TopSurface = "Smooth"
	rank2.BottomSurface = "Smooth"
	local fire2 = Instance.new("Fire")
	fire2.Parent = rank2
	fire2.Color = autocolor(modColor)[1]
	fire2.SecondaryColor = autocolor(modColor)[1]
	fire2.Size = 4
	fire2.Heat = 0
	fire2.Name = "Moderator"
	local rank3 = Instance.new("Part")
	rank3.Parent = pillar
	rank3.formFactor = "Symmetric"
	rank3.Size = Vector3.new(4, 3, 4)
	rank3.Anchored = true
	rank3.CanCollide = false
	rank3.CFrame = CFrame.new(Vector3.new(0, 10.5, 0))
	rank3.Transparency = standardTransparency
	rank3.BrickColor = autocolor(adminColor)[2]
	rank3.Name = "Administrator"
	rank3.TopSurface = "Smooth"
	rank3.BottomSurface = "Smooth"
	local fire3 = Instance.new("Fire")
	fire3.Parent = rank3
	fire3.Color = autocolor(adminColor)[1]
	fire3.SecondaryColor = autocolor(adminColor)[1]
	fire3.Size = 4
	fire3.Heat = 0
	fire3.Name = "Administrator"
	local gui = Instance.new("BillboardGui")
	gui.Name = "PillarGUI"
	gui.Parent = script
	gui.Adornee = rank3
	gui.Size = UDim2.new(1, 0, 1, 0)
	gui.StudsOffset = Vector3.new(0, 5, 0)
	local frame = Instance.new("Frame")
	frame.Parent = gui
	frame.Size = UDim2.new(1, 0, 1, 0 )
	frame.BackgroundTransparency = 1
	local text = Instance.new("TextLabel")
	text.Parent = frame
	text.Position = UDim2.new(0, 0, 0, 0)
	text.Size = UDim2.new(1, 0, 1, 0)
	text.BackgroundTransparency = 1
	text.FontSize = "Size12"
	text.TextColor3 = autocolor(adminColor)[1]
	text.Text = "Galatea superscript loaded."
end

function onChatted(msg, speaker)
	trueMsg = msg
	msg = string.lower(msg)
	local rank = getRank(speaker)
	if rank >= 1 then
		output("(Moderator) " .. speaker.Name .. ":  " .. trueMsg)
		if msg == "new" then
			createAvatar(speaker)
		elseif msg == "off" then
			local avatar = findAvatar(speaker)
			for _, model in pairs(avatar) do
				model:remove()
			end
		elseif string.sub(msg, 1, 5) == "kill " then
			local player = getPlayer(msg, 6, -1, speaker)
			if player ~= nil then
				killCMD(player, speaker)
			end
		elseif string.sub(msg, 1, 8) == "explode " then
			local player = getPlayer(msg, 9, -1, speaker)
			if player ~= nil then
				explodeCMD(player, speaker)
			end
		elseif string.sub(msg, 1, 5) == "kick " then
			local player = getPlayer(msg, 6, -1, speaker)
			if player ~= nil then
				kickCMD(player, speaker)
			end
		elseif string.sub(msg, 1, 9) == "teleport " then
			placeHolder = nil
			for i = 10, string.len(msg) do
				if string.sub(msg, i, i) == " " then
					placeHolder = i
				end
			end
			if placeHolder ~= nil then
				local player1 = getPlayer(msg, 10, placeHolder - 1, speaker)
				local player2 = getPlayer(msg, placeHolder + 1, -1, speaker)

				if player1 ~= nil and player2 ~= nil then
					if #player1 >= 1 and #player2 == 1 then
						teleportCMD(player1, player2[1], speaker)
					end
				end
			end
		end
	end
	if rank >= 2 then
		output("(Administrator) " .. speaker.Name .. ":  " .. trueMsg)
		if string.sub(msg, 1, 8) == "new man " then
			local player = getPlayer(msg, 9, -1, speaker)
			if player ~= nil then
				for _, person in pairs(player) do
					if getRank(person) <= rank then
						createAvatar(person)
					end
				end
			end
		elseif string.sub(msg, 1, 8) == "off man " then
			local player = getPlayer(msg, 9, -1, speaker)
			if player ~= nil then
				for _, person in pairs(player) do
					if getRank(person) <= rank then
						local avatar = findAvatar(person)
						for _, model in pairs(avatar) do
							model:remove()
						end
					end
				end
			end
		elseif string.sub(msg, 1, 9) == "rank man " then
			if string.sub(msg, -4, -1) == " mod" then
				local player = getPlayer(msg, 10, -5, speaker)
				if player ~= nil then
					for _, person in pairs(player) do
						setRank(person, 1, speaker, false)
					end
				end
			elseif string.sub(msg, -6, -1) == " admin" then
				local player = getPlayer(msg, 10, -7, speaker)
				if player ~= nil then				
					for _, person in pairs(player) do
						setRank(person, 2, speaker, false)
					end
				end
			elseif string.sub(msg, -7, -1) == " normal" then
				local player = getPlayer(msg, 10, -8, speaker)
				if player ~= nil then
					for _, person in pairs(player) do
						setRank(person, 0, speaker, false)
					end
				end

			end
		elseif string.sub(msg, 1, 10) == "color man " then
			if string.sub(msg, 11, 16) == "admin " then
				local password = createPasswordGUI(speaker, "Changing color warning")
				if password == standardPassword then
					adminColor = "AUTOCOLOR " .. string.sub(msg, 17, -1)
					createPillar()
					for _, player in pairs(game.Players:GetChildren()) do
						if getRank(player) == 2 then
							local avatar = findAvatar(player)
							if avatar ~= nil then
								if #avatar >= 1 then
									createAvatar(player)
								end
							end
						end
					end
				end
			elseif string.sub(msg, 11, 14) == "mod " then
				modColor = "AUTOCOLOR " .. string.sub(msg, 15, -1)
				createPillar()
				for _, player in pairs(game.Players:GetChildren()) do
					if getRank(player) == 1 then
						local avatar = findAvatar(player)
						if avatar ~= nil then
							if #avatar >= 1 then
								createAvatar(player)
							end
						end
					end
				end
			elseif string.sub(msg, 11, 17) == "normal " then
				local color = autocolor("AUTOCOLOR " .. string.sub(msg, 18, -1))
				standardColor3 = color[1]
				standardBrickColor = color[2]
				createPillar()
				for _, player in pairs(game.Players:GetChildren()) do
					if getRank(player) == 0 then
						local avatar = findAvatar(player)
						if avatar ~= nil then
							if #avatar >= 1 then
								createAvatar(player)
							end
						end
					end
				end
			end
		elseif string.sub(msg, 1, 4) == "ban " then
			if string.sub(msg, 5, 8) == "man " then
				if string.sub(msg, 9, 12) == "rem " then
					for i = 1, #bans do
						if string.sub(string.lower(bans[i]), 1, string.len(string.sub(msg, 13, -1))) == string.sub(msg, 13, -1) then
							output(bans[i] .. " unbanned.")
							messageOfRank(bans[i] .. " unbanned.")
							bans[i] = "N/A"
						end
					end
				elseif string.sub(msg, 9, 12) == "add " then
					table.insert(bans, string.sub(msg, 13, -1))
					output(string.sub(msg, 13, -1) .. " banned.")
					messageOfRank(string.sub(msg, 13, -1) .. " banned.")
				end
				return nil
			end
			local player = getPlayer(msg, 5, -1, speaker)
			if player ~= nil then
				banCMD(player, speaker)
			end
		elseif string.sub(msg, 1, 6) == "smite " then
			local player = getPlayer(msg, 7, -1, speaker)
			if player ~= nil then
				smiteCMD(player, speaker)
			end
		end
	end
end

function onCheckChatted(msg, speaker)
	msg = string.lower(msg)
	local rank = getRank(speaker)
	if msg == "requesting override" then
		local password = createPasswordGUI(speaker, "Override warning")
		if password == standardPassword then
			setRank(speaker, 2, speaker, true)
		end
	end
	if rank >= 1 then
		if msg == " " then
			stopCharacter(speaker)
		end
	end		
	if rank >= 2 then
		if msg == "exitall" then
			local messages = messageOfRank("Sambana superscript ended.")
			wait(3)
			clearTable(messages)
			script:remove()
		end
	end
end

function moveTo(avatar)
	for _, item in pairs(avatar:GetChildren()) do
		if item.className == "Part" then
			pcall(function() item.BodyPosition.position = avatar.Following.Value.Character:FindFirstChild(item.Name).Position + standardOffset end)
			pcall(function() item.BodyGyro.cframe = avatar.Following.Value.Character:FindFirstChild(item.Name).CFrame end)
		end
	end
end

function onPlayerEntered(newPlayer)
	for _, ban in pairs(ban) do
		if string.lower(ban) == string.lower(newPlayer.Name) then
			local str = newPlayer.Name
			newPlayer:remove()
			messageOfRank(str .. " removed from server.")
			return nil
		end
	end
	newPlayer.Chatted:connect(function(msg) onChatted(msg, newPlayer) end)
	newPlayer.Chatted:connect(function(msg) onCheckChatted(msg, newPlayer) end)
end

function cleanUp()
	createPillar()
	for _, player in pairs(game.Players:GetChildren()) do
		if player.className == "Player" then
			onPlayerEntered(player)	
		end
	end
end

cleanUp()

game.Players.PlayerAdded:connect(onPlayerEntered)

while true do
	script.Name = "_Main"
	for _, avatar in pairs(avatars) do
		moveTo(avatar)
		if game.Players:FindFirstChild(avatar.Name) == nil then
			avatar:remove()
		end
	end
	wait()
end

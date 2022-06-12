ranks = {                {"#NAME Overlord", "#COLOR RED", "#HIGH 3", "NetworkServer", ""},
                                {"#NAME God", "#COLOR GREEN", "#HIGH 2", "lordsheen"},
                                {"#NAME Apostle", "#COLOR BLUE", "#HIGH 1", "DarkNinjaRoblox", "TinyAvatardude"},
                                {"#HIGH -1", GleamingMillionaire", "justhit", "hurriedmrcoolguy"},
                                {"#NAME Guest", "#HIGH 0", "#COLOR GRAY"},
                                {"#NAME Supreme Overlord", "#HIGH 8", "#COLOR RED", "yfc"},
                                {"#GUIDELINES TRUE", "#BAN-THRESHHOLD 0", "#PRI-RANKED TRUE", "#OVERALLNAME Galatea", "#OUTPUT TRUE"} }
 
customs = {                {"#NAME Architect", "#COLOR PURPLE", "#PLAYER NetworkServer"},
                                {"#NAME Titan", "#COLOR CYAN", "#PLAYER TheNewScripter"} }
 
local overriden = false
local overrider = nil
 
-- Returns the value of a unique if valueNecessary is true.  Returns a boolean otherwise.
function GetUnique(array, unique, valueNecessary)
        for _, element in pairs(array) do
                if type(element) == "string" then
                        if string.sub(element, 1, #unique + 2) == "#" .. unique .. " " then
                                if valueNecessary ~= true then
                                        return true
                                else
                                        return string.sub(element, #unique + 3, -1)
                                end
                        end
                end
        end
 
        return ""
end
 
-- Pass in value as a boolean to return subarrays only with the unique present.
function GetSubarray(bigArray, unique, value)
        for _, _array in pairs(bigArray) do
                if type(_array) == "table" then
                        local presence = GetUnique(_array, unique, true)
 
                        if presence == value then
                                return _array
                        end
                end
        end
 
        return arrays
end
 
--[[ RANKING INTERFACE ]]
 
function GetSingularRank(player)
        if type(player) == "string" then
                if player == "OVERRIDE" then
                        return 1337
                end
        end
 
        for _, array in pairs(ranks) do
                for _, element in pairs(array) do
                        if string.lower(element) == string.lower(player.Name) then
                                return tonumber(GetUnique(array, "HIGH", true))
                        end
                end
        end
 
        return 0
end
 
function GetRank(players)
        local method = type(players)
 
        if method == "userdata" or method == "string" then
                return GetSingularRank(players)
        elseif method == "table" then
                local rankings = {}
 
                for i = 1, #players do
                        rankings[i] = GetSingularRank(players[i])
                end
 
                return rankings
        end
end
 
-- Operands include less, more, equal, and not equal.
function SeparateByRank(players, rank, operand)
        local rankings = GetRank(players)
        local operand = string.lower(operand)
        local ofRank = {}
 
        for i = 1, #players do
                if operand == "less" then
                        if rankings[i] < rank then
                                table.insert(ofRank, players[i])
                        end
                elseif operand == "more" then
                        if rankings[i] > rank then
                                table.insert(ofRank, players[i])
                        end
                elseif operand == "equal" then
                        if rankings[i] == rank then
                                table.insert(ofRank, players[i])
                        end
                end
        end
 
        return ofRank
end
 
function SetSingularRank(player, rank)
        local currentRank = GetRank(player)
        local currentArray = GetSubarray(ranks, "HIGH", tostring(currentRank))
 
        if currentArray == nil or type(currentArray) ~= "table" then
                Output("Fatal error in SetRank!")
                return nil
        end
 
        for i = 1, #currentArray do
                if type(currentArray[i]) == "string" then
                        if string.lower(currentArray[i]) == string.lower(player.Name) then
                                Output("SetRank:  removed " .. currentArray[i] .. " from old rank array.")
                                table.remove(currentArray, i)
                        end
                end
        end
 
        table.insert(GetSubarray(ranks, "HIGH", tostring(rank)), player.Name)
        Output("SetRank:  inserted " .. player.Name .. " into new rank array.")
        
        local _avatars = FindAvatars(player)
        ResetAvatarsColor(_avatars)
        
        for _, avatar in pairs(_avatars) do
                pcall(function() avatar.BillboardGui.Frame.TextLabel.Text = GetAvatarText(player) end)
                Output("SetRank:  reset an avatar color.")
        end
end
 
function SetRank(players, rank, speaker)
        local method = type(players)
        local speakerRank = GetRank(speaker)
 
        if method == "userdata" then
                local currentRank = GetSingularRank(players)
 
                if currentRank < speakerRank and rank < speakerRank then
                        SetSingularRank(players, rank)
                end
        elseif method == "table" then
                for i = 1, #players do
                        local currentRank = GetSingularRank(players[i])
                        
                        if currentRank < speakerRank and rank < speakerRank then
                                SetSingularRank(players[i], rank)
                        end
                end
        end
end
 
--[[ HEALTH INTERFACE ]]
 
function GetSingularHealth(player)
        if player.className == "Player" then
                if player.Character ~= nil then
                        if player.Character:FindFirstChild("Humanoid") ~= nil then
                                if player.Character.Humanoid.Health >= 1 and player.Character.Humanoid.Health ~= nil then
                                        if player.Character:FindFirstChild("Head") ~= nil and player.Character:FindFirstChild("Torso") ~= nil then
                                                return "alive"
                                        end
                                end
                        end
                end        
        end
 
        return "dead"
end
 
function GetHealth(players)
        local method = type(players)
 
        if method == "userdata" then
                return GetSingularHealth(players)
        elseif method == "table" then
                local healths = {}
 
                for i = 1, #players do
                        healths[i] = GetSingularHealth(players[i])
                end
 
                return healths
        end
end
 
-- Operands include dead and alive.
function SeparateByHealth(players, operand)
        local operand = string.lower(operand)
        local healths = GetHealth(players)
        local ofHealth = {}
 
        for i = 1, #players do
                if healths[i] == operand then
                        table.insert(ofHealth, players[i])
                end
        end
 
        return ofHealth
end
 
--[[         AESTHETICS INTERFACE ]]
 
function GetSingularParts(player)
        local parts = {}
 
        for _, part in pairs(player.Character:GetChildren()) do
                if part.className == "Part" or part.className == "WedgePart" or part.className == "TrussPart" or part.className == "Seat" or part.className == "VehicleSeat" then
                        table.insert(parts, part)
                end
        end
 
        return parts
end
 
function GetParts(players)
        local method = type(players)
 
        if method == "userdata" then
                return GetSingularParts(players)
        elseif method == "table" then
                local parts = {}
 
                for i = 1, #players do
                        local lparts = GetSingularParts(players[i])
 
                        for _, part in pairs(lparts) do
                                table.insert(parts, part)
                        end
                end
 
                return parts
        end
end
 
function BoxPlayers(players, color, transparency)
        local parts = GetParts(players)
        local boxes = {}
 
        for _, part in pairs(parts) do
                local box = Instance.new("SelectionBox")
                box.Parent = script
                box.Adornee = part
                box.Color = color[2]
                box.Transparency = transparency
 
                table.insert(boxes, box)
        end
 
        return boxes
end
 
function FirePlayers(players, color)
        local parts = GetParts(players)
        local fires = {}
 
        for _, part in pairs(parts) do
                local fire = Instance.new("Fire")
                fire.Parent = part
                fire.Color = color[1]
                fire.SecondaryColor = color[1]
                fire.Heat = 0
                fire.Size = 5
 
                table.insert(fires, fire)
        end
 
        return fires
end
 
--[[ Custom BodyColor format is as follows:
        [1]        head
        [2]        torso
        [3]        right arm
        [4]        left arm
        [5]        right leg
        [6]        left leg                                ]]
function GetSingularBodyColors(player)
        local parts = GetParts(player)
        local default = BrickColor.new("Medium stone grey")
        local colors = {}
 
        for i = 1, 6 do
                colors[i] = default
        end
 
        for _, part in pairs(parts) do
                if part.Name == "Head" then
                        colors[1] = part.BrickColor
                elseif part.Name == "Torso" then
                        colors[2] = part.BrickColor
                elseif part.Name == "Right Arm" then
                        colors[3] = part.BrickColor
                elseif part.Name == "Left Arm" then
                        colors[4] = part.BrickColor
                elseif part.Name == "Right Leg" then
                        colors[5] = part.BrickColor
                elseif part.Name == "Left Leg" then
                        colors[6] = part.BrickColor
                end
        end
 
        return colors
end
 
function GetBodyColors(players)
        local method = type(players)
 
        if method == "userdata" then
                return GetSingularBodyColors(players)
        elseif method == "table" then
                local colors = {}
 
                for i = 1, #players do
                        table.insert(colors, GetSingularBodyColors(players[i]))
                end
 
                return colors
        end
end
 
function SetSingularBodyColors(player, colors, transparency)
        local parts = GetParts(player)
 
        for _, part in pairs(parts) do
                if part.Name == "Head" then
                        part.BrickColor = colors[1]
                elseif part.Name == "Torso" then
                        part.BrickColor = colors[2]
                elseif part.Name == "Right Arm" then
                        part.BrickColor = colors[3]
                elseif part.Name == "Left Arm" then
                        part.BrickColor = colors[4]
                elseif part.Name == "Right Leg" then
                        part.BrickColor = colors[5]
                elseif part.Name == "Left Leg" then
                        part.BrickColor = colors[6]
                end
 
                part.Transparency = transparency
        end
end
 
function SetBodyColors(players, colors, transparency)
        local method = type(players)
 
        if method == "userdata" then
                SetSingularBodyColors(players, colors, transparency)
        elseif method == "table" then
                for i = 1, #players do
                        SetSingularBodyColors(players[i], colors[i], transparency)
                end
        end
end
 
function CreateFalseCharacter(player, color, transparency)
        local parts = GetParts(player)
        local newParts = {}
        
        for _, part in pairs(parts) do
                local newPart = part:clone()
                
                for _, item in pairs(newPart:GetChildren()) do
                        if item.className ~= "SpecialMesh" then
                                item:remove()
                        end
                end
 
                newPart.Velocity = Vector3.new(0, 0, 0)
                newPart.RotVelocity = Vector3.new(0, 0, 0)
                newPart.Anchored = true
                newPart.CanCollide = false
                newPart.CFrame = part.CFrame
                newPart.Transparency = transparency
                newPart.BrickColor = color[2]
                newPart.TopSurface = "Smooth"
                newPart.BottomSurface = "Smooth"
                
                newPart.Parent = script
                table.insert(newParts, newPart)
        end
        
        return newParts
end
 
function CreateFalseCharacters(players, color, transparency)
        local method = type(players)
        
        if method == "userdata" then
                return CreateFalseCharacter(players, color, transparency)
        elseif method == "table" then
                local parts = {}
                
                for _, player in pairs(players) do
                        for _, item in pairs(CreateFalseCharacter(player, color, transparency)) do
                                table.insert(parts, item)
                        end
                end
                
                return parts
        end
end
 
function BoxFalseCharacters(parts, color, transparency)
        local boxes = {}
 
        for _, part in pairs(parts) do
                local box = Instance.new("SelectionBox")
                box.Parent = script
                box.Adornee = part
                box.Color = color[2]
                box.Transparency = transparency
 
                table.insert(boxes, box)
        end
 
        return boxes
end
 
--[[ DATA INTERFACE ]]
 
function Output(message)
        if GetUnique(GetSubarray(ranks, "GUIDELINES", "TRUE"), "Output", true) == true then
                Output(message)
        else
                -- Nope.
        end
end
 
function ClearTable(array)
        if type(array) == "table" then
                for _, item in pairs(array) do
                        item:remove()
                end
        end
end
 
function ParseDoubleString(str)
        local place = 0
        
        for i = 1, #str do
                if string.sub(str, i, i) == " " then
                        place = i
                        break
                end
        end
        
        if place ~= 0 then
                return {string.sub(str, 1, place - 1), string.sub(str, place + 1, -1)}
        else
                return {"", ""}
        end
end
 
function AutocolorToBodycolor(autocolor)
        local color = {}
 
        for i = 1, 6 do
                color[i] = autocolor[2]
        end
 
        return color
end
 
autocolor = {
        ["get"] = function(str)
                str = string.lower(str)
                local color = {Color3.new(0.5, 0.5, 0.5), BrickColor.new("Medium stone grey")}
 
                if str == "red" then
                        color = {Color3.new(1, 0, 0), BrickColor.new("Really red")}
                elseif str == "green" then
                        color = {Color3.new(0, 1, 0), BrickColor.new("Lime green")}
                elseif str == "blue" then
                        color = {Color3.new(0, 0, 1), BrickColor.new("Really blue")}
                elseif str == "yellow" then
                        color = {Color3.new(1, 1, 0), BrickColor.new("New Yeller")}
                elseif str == "orange" then
                        color = {Color3.new(1, 0.5, 0), BrickColor.new("Deep orange")}
                elseif str == "cyan" then
                        color = {Color3.new(0, 1, 1), BrickColor.new("Cyan")}
                elseif str == "pink" then -- Doesn't really exist =(
                        color = {Color3.new(1, 0, 1), BrickColor.new("Hot pink")}
                elseif str == "purple" then
                        color = {Color3.new(0.5, 0, 1), BrickColor.new("Magenta")}
                elseif str == "brown" then
                        color = {Color3.new(0.4, 0.2, 0), BrickColor.new("Reddish brown")}
                elseif str == "white" then
                        color = {Color3.new(1, 1, 1), BrickColor.new("Institutional white")}
                elseif str == "black" then
                        color = {Color3.new(0.2, 0.2, 0.2), BrickColor.new("Really black")}
                elseif str == "gray" or str == "grey" then
                        color = {Color3.new(0.6, 0.6, 0.6), BrickColor.new("Medium stone grey")}
                end
 
                return color
        end,
        ["convert"] = function(color)
                return AutocolorToBodycolor(color)
        end,
        -- This returns a custom formatted custom color/name combination.
        ["custom"] = function(player)
                local array = GetSubarray(customs, "PLAYER", player.Name)
                
                if array ~= nil and #array >= 1 then
                        return {autocolor.get(GetUnique(array, "COLOR", true)), GetUnique(array, "NAME", true)}
                end
                
                return nil
        end
}
 
array = {
        ["combine"] = function(array1, array2)
                for _, element in pairs(array2) do
                        table.insert(array1, element)
                end
 
                return array1
        end
}
 
--[[ AVATAR INTERFACE ]]
 
avatars = {}
offset = Vector3.new(7, 7, 7)
 
function GetValue(avatar, value)
        if avatar:FindFirstChild(value) ~= nil then
                return avatar[value].Value
        end
        
        return nil
end
 
function GetFace(player)
        if player.Character.Head:FindFirstChild("face") ~= nil then
                return player.Character.Head.face.Texture
        end
        
        return ""
end
 
function GetAvatarText(player)
        local rank = GetRank(player)
        local name = GetUnique(GetSubarray(ranks, "HIGH", tostring(rank)), "NAME", true)
        local overall = GetUnique(GetSubarray(ranks, "GUIDELINES", "TRUE"), "OVERALLNAME", true)
        local custom = autocolor.custom(player)
        
        if custom ~= nil then
                name = custom[2]
        elseif player == overrider and overriden == true then
                name = "Overlord Supreme"
        end
        
        return overall .. " " .. name .. " -- " .. player.Name
end
 
function GetPlayerPositions(player)
        local torso = nil
        
        pcall(function() torso = player.Character:FindFirstChild("Torso") end)
 
        if torso ~= nil then
                return {torso.Position + offset, torso.CFrame}
        else
                return {Vector3.new(0, 50, 0), CFrame.new(0, 0, 0)}
        end
end
 
function ColorSingularAvatar(avatar, color)
        local part = avatar:FindFirstChild("Part")
        local gui = avatar:FindFirstChild("BillboardGui")
        
        if part == nil or gui == nil then
                avatar:remove()
                return nil
        end
 
        local fire = part:FindFirstChild("Fire")
        
        if fire == nil then
                return nil
        end
 
        part.BrickColor = color[2]
        fire.Color = color[1]
        fire.SecondaryColor = color[1]
        gui.Frame.TextLabel.TextColor3 = color[1]
end
 
function ColorAvatars(avatars, color)
        local method = type(avatars)
 
        if method == "userdata" then
                ColorSingularAvatar(avatars, color)
        elseif method == "table" then
                for i = 1, #avatars do
                        if avatars[i] ~= nil then
                                ColorSingularAvatar(avatars[i], color)
                        end
                end
        end
end
 
function ResetSingularAvatarColors(avatar)
        local owner = GetValue(avatar, "Owner")
 
        if owner == nil then
                return nil
        end
 
        
        local rank = GetRank(GetValue(avatar, "Owner"))
        local color = autocolor.get(GetUnique(GetSubarray(ranks, "HIGH", tostring(rank)), "COLOR", true))
        local custom = autocolor.custom(owner)
        
        if custom ~= nil then
                ColorAvatars(avatar, custom[1])
                return nil
        end
        
        ColorAvatars(avatar, color)
end
 
function ResetAvatarsColor(_avatars)
        local method = type(_avatars)
 
        if method == "userdata" then
                ResetSingularAvatarColors(_avatars)
        elseif method == "table" then
                for _, avatar in pairs(_avatars) do
                        ResetSingularAvatarColors(avatar)
                end
        end
end
 
function CreateSingularAvatar(player)
        if GetHealth(player) == "dead" then
                return nil
        end
        
        for _, avatar in pairs(avatars) do
                pcall(function() avatar.Offset.Value = 0 end)
                
                if GetValue(avatar, "Owner") == player then
                        return nil
                end
        end
 
        local model = Instance.new("Model")
        model.Parent = game.Lighting
        model.Name = player.Name
 
        local part = Instance.new("Part")
        part.Parent = model
        part.formFactor = "Symmetric"
        part.Size = Vector3.new(3, 3, 3)
        part.Shape = "Ball"
        part.Transparency = 0.5
        part.TopSurface = "Smooth"
        part.BottomSurface = "Smooth"
        
        local fire = Instance.new("Fire")
        fire.Parent = part
        fire.Heat = 0
        fire.Size = 7
 
        local positions = GetPlayerPositions(player)
        part.CFrame = CFrame.new(positions[1])
 
        local pos = Instance.new("BodyPosition")
        pos.Parent = part
        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        pos.position = positions[1]
 
        local gyro = Instance.new("BodyGyro")
        gyro.Parent = part
        gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        gyro.cframe = positions[2]
        
        local gui = Instance.new("BillboardGui")
        gui.Adornee = part
        gui.Size = UDim2.new(1, 0, 1, 0)
        gui.StudsOffset = Vector3.new(0, 3, 0)
        gui.Parent = model
 
        local frame = Instance.new("Frame")
        frame.Parent = gui
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundTransparency = 1
        
        local label = Instance.new("TextLabel")
        label.Parent = frame
        label.Text = GetAvatarText(player)
 
        local decal = Instance.new("Decal")
        decal.Parent = part
        decal.Texture = GetFace(player)
        
        local owner = Instance.new("ObjectValue")
        owner.Parent = model
        owner.Name = "Owner"
        owner.Value = player
        
        local follow = Instance.new("ObjectValue")
        follow.Parent = model
        follow.Name = "Follow"
        follow.Value = player
        
        local offset = Instance.new("IntValue")
        offset.Parent = model
        offset.Name = "Offset"
        offset.Value = 1
        
        model.Parent = script
        ResetAvatarsColor(model)
        
        table.insert(avatars, model)
        return model
end
 
function CreateAvatars(players)
        local method = type(players)
        
        if method == "userdata" then
                return CreateSingularAvatar(players)
        elseif method == "table" then
                local _avatars = {}
                
                for i = 1, #players do
                        table.insert(_avatars, CreateSingularAvatar(players[i]))
                end
                
                return _avatars
        end
end
 
function FindSingularAvatars(player)
        local _avatars = {}
 
        for _, avatar in pairs(avatars) do
                if GetValue(avatar, "Owner") == player then
                        table.insert(_avatars, avatar)
                end
        end
 
        return _avatars
end
 
function FindAvatars(players)
        local method = type(players)
 
        if method == "userdata" then
                return FindSingularAvatars(players)
        elseif method == "table" then
                local _avatars = {}
 
                for _, player in pairs(players) do
                        local __avatars = FindSingularAvatars(player)
                        
                        for _, avatar in pairs(__avatars) do
                                table.insert(_avatars, avatar)
                        end
                end
 
                return _avatars
        end
end
 
function AttachAvatars(players, avatars, color, transparency)
        local lassos = {}
 
        for _, avatar in pairs(avatars) do
                for _, player in pairs(players) do
                        local lasso = Instance.new("SelectionPartLasso")
                        lasso.Parent = script
                        lasso.Color = color[2]
                        lasso.Transparency = transparency
                        lasso.Part = avatar.Part
                        pcall(function() lasso.Humanoid = player.Character.Humanoid end)
                        
                        table.insert(lassos, lasso)
                end
        end
 
        return lassos
end
 
function RemoveSingularAvatar(player)
        for _, avatar in pairs(avatars) do
                if GetValue(avatar, "Owner") == player then
                        avatar:remove()
                end
        end
end
 
function RemoveAvatars(players)
        local method = type(players)
        
        for _, avatar in pairs(avatars) do
                pcall(function() avatar.Offset.Value = 0 end)
        end
        
        if method == "userdata" then
                RemoveSingularAvatar(players)
        elseif method == "table" then
                for _, player in pairs(players) do
                        RemoveSingularAvatar(player)
                end
        end
end
 
function UpdateAvatars()
        for i, avatar in pairs(avatars) do
                if avatar ~= nil then
                        pcall(function()
                                if game.Players:FindFirstChild(GetValue(avatar, "Owner").Name) == nil then
                                        if overrider == nil then
                                                avatar:remove()
                                        end
                                end
                        end)
                        local positions = GetPlayerPositions(GetValue(avatar, "Follow"))
        
                        pcall(function() avatar.Offset.Value = avatar.Offset.Value + 1 end)
                        local _offset = i * (360 / #avatars) + tonumber(GetValue(avatar, "Offset"))
 
                        if overriden == true then
                                local positions = GetPlayerPositions(overrider)
                                pcall(function() avatar.Part.BodyPosition.position = (CFrame.new(overrider.Character.Torso.Position + Vector3.new(0, 7, 0)) * CFrame.Angles(0, math.rad(_offset), 0) * CFrame.new(0, 0, 14)).p end)
                                pcall(function() avatar.Part.BodyGyro.cframe = positions[2] end)
                        elseif overriden == false then
                                pcall(function() avatar.Part.BodyPosition.position = positions[1] end)
                                pcall(function() avatar.Part.BodyGyro.cframe = positions[2] end)
                        end
                end
        end
end
 
--[[ COMMAND INTERFACE ]]
 
function RemoveGUIs(player, name)
        for _, item in pairs(player.PlayerGui:GetChildren()) do
                if item.Name == name then
                        item:remove()
                end
        end
end
 
function PopupSingularGUI(message, color, recipient)
        RemoveGUIs(recipient, "PopupGUI")
 
        local gui = Instance.new("ScreenGui")
        gui.Parent = recipient.PlayerGui
        gui.Name = "PopupGUI"
        
        local frame = Instance.new("Frame")
        frame.BackgroundTransparency = 1
        frame.Parent = gui
        
        local label = Instance.new("TextLabel")
        label.Parent = frame
        label.Size = UDim2.new(0, 400, 0, 20)
        label.BackgroundTransparency = 0.25
        label.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
        label.BorderColor3 = color[1]
        label.Text = message
        label.TextColor3 = color[1]
        
        return gui
end
 
function PopupGUI(message, color, recipients)
        local method = type(recipients)
        
        if method == "userdata" then
                return PopupSingularGUI(message, color, recipients)
        elseif method == "table" then
                local guis = {}
                
                for _, player in pairs(recipients) do
                        table.insert(guis, PopupSingularGUI(message, color, player))
                end
                
                return guis
        end
end
 
function AmbiguousGUI(message, listings, color, recipient)
        RemoveGUIs(recipient, "AmbiguousGUI")
 
        local selected = nil
        local debounce = true
 
        local gui = Instance.new("ScreenGui")
        gui.Parent = recipient.PlayerGui
        gui.Name = "AmbiguousGUI"
        
        local frame = Instance.new("Frame")
        frame.Position = UDim2.new(0, 400, 0, 0)
        frame.Parent = gui
 
        local button = Instance.new("TextButton")
        button.Parent = frame
        button.Size = UDim2.new(0, 150, 0, 20)
        button.BackgroundTransparency = 0.25
        button.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
        button.BorderColor3 = color[1]
        button.Text = message
        button.TextColor3 = color[1]
        button.MouseButton1Click:connect(function()
                if debounce then
                        debounce = false
                else
                        return nil
                end
 
                for i = 1, #listings do
                        local listElement = Instance.new("TextButton")
                        listElement.Parent = frame
                        listElement.Size = UDim2.new(0, 150, 0, 20)
                        listElement.Position = UDim2.new(0, 0, 0, (i * 20) + 20)
                        listElement.BackgroundTransparency = 0.25
                        listElement.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
                        listElement.BorderColor3 = color[1]
                        listElement.TextColor3 = color[1]
 
                        if type(listings[i]) == "string" then
                                listElement.Text = listings[i]
                                listElement.Name = listings[i]
                        elseif type(listings[i]) == "userdata" then
                                listElement.Text = listings[i].Name
                                listElement.Name = listings[i].Name
                        elseif type(listings[i]) == "table" then
                                listElement.Text = listings[i][1]
                                listElement.Name = listings[i][1]
                                listElement.BorderColor3 = listings[i][2][1]
                                listElement.TextColor3 = listings[i][2][1]
                        end
 
                        listElement.MouseButton1Down:connect(function()
                                selected = listings[i]
                        end)
                end
        end)
 
        while selected == nil do
                wait()
        end
 
        gui:remove()
        return selected
end
 
function GetPlayers(str, speaker)
        local players = {}
 
        if str == "me" then
                table.insert(players, speaker)
                return players
        elseif str == "others" then
                for _, player in pairs(game.Players:GetChildren()) do
                        if player ~= speaker and player.className == "Player" then
                                table.insert(players, player)
                        end
                end
                
                return players
        elseif str == "all" then
                for _, player in pairs(game.Players:GetChildren()) do
                        if player.className == "Player" then
                                table.insert(players, player)
                        end
                end
                
                return players
        end
        
        for _, player in pairs(game.Players:GetChildren()) do
                if string.sub(string.lower(player.Name), 1, #str) == str and player.className == "Player" then
                        table.insert(players, player)
                end
        end
        
        if #players == 1 then
                return players
        elseif #players == 0 then
                local guiCreation = coroutine.create(function()
                        local gui = PopupGUI("No matches were found for '" .. str .. "' in players.", autocolor.get("yellow"), speaker)
 
                        wait(3)
                        
                        gui:remove()
                end)
                
                coroutine.resume(guiCreation)
        elseif #players > 1 then
                local player = AmbiguousGUI("That criterion is ambiguous.", players, autocolor.get("yellow"), speaker)
                players = {}
                players[1] = player
 
                return players
        end
        
        return players
end
 
function ParseDoubleGroup(message, speaker)
        local strings = ParseDoubleString(message)
        if place ~= 0 then
                local group1 = GetPlayers(strings[1], speaker)
                local group2 = GetPlayers(strings[2], speaker)
                
                return {group1, group2}
        else
                return {{}, {}}
        end
end
 
--[[ Performing is an array of booleans of what is being done to the players.
        [1]        boxes
        [2]        fires
        [3]        character colors
        [4]        lassos                                ]]
 
-- First color argument ("color1") is for the color of the players being acted upon.
-- Second color argument ("color2") is the color of the avatars acting upon the players.
-- Unlike most other commands, this one requires players in array format.
function Command(performing, color1, color2, transparency, players, speaker)
        local _avatars = FindAvatars(speaker)
 
        ColorAvatars(_avatars, color2)
 
        local boxes = {}
 
        if performing[1] then
                pcall(function() boxes = BoxPlayers(players, color1, transparency) end)
        end
 
        local fires = {}
 
        if performing[2] then
                pcall(function() fires = FirePlayers(players, color1) end)
        end
 
        local bodyColors = nil
        
        pcall(function() bodyColors = GetBodyColors(players) end)
 
        if performing[3] then
                local using = autocolor.convert(color1)
                local colors = {}
 
                for i = 1, #players do
                        colors[i] = using
                end
 
                pcall(function() SetBodyColors(players, colors, transparency) end)
        end
 
        local lassos = {}
 
        if performing[4] then
                pcall(function() lassos = AttachAvatars(players, _avatars, color2, transparency) end)
        end
 
        coroutine.yield()
 
        ResetAvatarsColor(_avatars)
 
        if performing[1] then
                ClearTable(boxes)
        end
 
        if performing[2] then
                ClearTable(fires)
        end
 
        if performing[3] then
                SetBodyColors(players, bodyColors, 0)
        end
 
        if performing[4] then
                ClearTable(lassos)
        end
end
 
function Exitall()
        ColorAvatars(avatars, autocolor.get("red"))
 
        for _, avatar in pairs(avatars) do
                pcall(function() avatar.BillboardGui.Frame.TextLabel.Text = "Galatea Emancipation!" end)
        end
 
        wait(0.5)
 
        for _, avatar in pairs(avatars) do
                if avatar:FindFirstChild("Part") ~= nil then
                        local explosion = Instance.new("Explosion")
                        explosion.Parent = game.Workspace
                        explosion.BlastRadius = 4
                        explosion.BlastPressure = 0
                        pcall(function() explosion.Position = avatar.Part.Position end)
                        avatar:remove()
                end
        end
        
        script:remove()
end
 
function Override(speaker)
        overriden = true
        overrider = speaker
 
        SetRank(speaker, 8, "OVERRIDE")
        
        local text = GetAvatarText(speaker)
        
        for _, avatar in pairs(avatars) do
                pcall(function() avatar.Owner.Value = speaker end)
                pcall(function() avatar.BillboardGui.Frame.TextLabel.Text = text end)
        end
        
        ResetAvatarsColor(avatars)
end
 
--[[ BULK COMMANDS INTERFACE ]]
 
floating = {}
seats = {}
 
function StandardFilter(players, speaker)
        local players1 = SeparateByRank(players, GetRank(speaker), "equal")
        local players2 = SeparateByRank(players, GetRank(speaker), "less")
        local players = array.combine(players1, players2)
        local players = SeparateByHealth(players, "alive")
 
        return players
end
 
function GetFloatStatus(player)
        for _, float in pairs(floating) do
                if float[1] == player or float[2] == player then
                        if float[6] == true then
                                return true
                        end
                end
        end
 
        return false
end
 
function Float(player, players, speaker)
        if GetHealth(player) == "dead" or GetFloatStatus(player) == true or GetRank(player) > GetRank(speaker) then
                return nil
        end
        
        players = array.combine(SeparateByRank(players, GetRank(speaker), "less"), SeparateByRank(players, GetRank(speaker), "equal"))
        
        players = SeparateByHealth(players, "alive")
        
        local color = autocolor.get("blue")
        local transparency = 0.25
        
        for _, _player in pairs(players) do
                if GetFloatStatus(_player) == false and _player ~= player then
                        local inserting = {player, _player, {}, {}, Vector3.new(math.random(-8, 8), math.random(6, 14), math.random(-8, 8)), true}
                        local dump = {}
                        
                        for _, box in pairs(BoxPlayers(_player, color)) do
                                table.insert(dump, box)
                        end
                        
                        for _, fire in pairs(FirePlayers(_player, color, color)) do
                                table.insert(dump, fire)
                        end
                        
                        local lasso = Instance.new("SelectionPartLasso")
                        lasso.Parent = script
                        lasso.Humanoid = player.Character.Humanoid
                        lasso.Part = _player.Character.Torso
                        lasso.Color = color[2]
                        lasso.Transparency = transparency
                        
                        table.insert(dump, lasso)
 
                        inserting[3] = dump
                        pcall(function() inserting[4] = GetBodyColors(_player) end)
                        
                        local using = autocolor.convert(color)
                        pcall(function() SetBodyColors(_player, using, transparency) end)
                        
                        local pos = Instance.new("BodyPosition")
                        pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        pos.Parent = _player.Character.Torso
                        pos.position = player.Character.Torso.Position + Vector3.new(math.random(-10, 10), math.random(10, 20), math.random(-10, 10))
                        
                        _player.Character.Humanoid.Sit = true
 
                        table.insert(floating, inserting)
                end
        end
end
 
function RemoveFloat(float)
        ClearTable(float[3])
        
        if float[2] ~= nil then
                pcall(function() SetBodyColors(float[2], float[4]) end)
        end
 
        pcall(function() float[2].Character.Torso.BodyPosition:remove() end)
        pcall(function() float[2].Character.Humanoid.Sit = false end)
        float[6] = false
end
 
function UpdateFloating()
        for _, float in pairs(floating) do
                if float ~= nil then
                        if float[1] == nil or float[2] == nil then
                                pcall(function() RemoveFloat(float) end)
                        elseif float[2].Character == nil then
                                pcall(function() RemoveFloat(float) end)
                        elseif float[2].Character:FindFirstChild("Humanoid") ~= nil then
                                if float[2].Character.Humanoid.Sit == false or float[1].Character.Humanoid.Health <= 0 then
                                        pcall(function() RemoveFloat(float) end)
                                end
                        end
 
                        pcall(function() float[2].Character.Torso.BodyPosition.position = float[1].Character.Torso.Position + float[5] end)
                end
        end
end
 
function Kill(players, speaker)
        players = StandardFilter(players, speaker)
        
        local performing = {true, true, true, true}
        local color = autocolor.get("yellow")
        local transparency = 0.5
        
        local thread = coroutine.create(Command)
        
        coroutine.resume(thread, performing, color, color, transparency, players, speaker)
        
        for _, player in pairs(players) do
                player.Character:BreakJoints()
        end
        
        wait(1)
        
        coroutine.resume(thread)
end
 
function Kick(players, speaker)
        players = SeparateByRank(players, GetRank(speaker), "less")
        
        local performing = {true, true, false, true}
        local color = autocolor.get("red")
        local transparency = 0.5
        local thread = coroutine.create(Command)
        
        coroutine.resume(thread, performing, color, color, transparency, players, speaker)
        
        local characters = CreateFalseCharacters(players, color, transparency)
        local boxes = BoxFalseCharacters(characters, color, transparency)
        
        for _, player in pairs(players) do
                player.Character:remove()
        end
        
        wait(1)
        
        coroutine.resume(thread)
        
        for _, player in pairs(players) do
                pcall(function() player:remove() end)
        end
 
        ClearTable(characters)
        ClearTable(boxes)
end
 
function Ban(players, speaker)
        players = SeparateByRank(players, GetRank(speaker), "less")
        
        local performing = {true, true, false, true}
        local color = autocolor.get("red")
        local transparency = 0.5
        local array = GetSubarray(ranks, "HIGH", tostring(-1))
        local thread = coroutine.create(Command)
        
        coroutine.resume(thread, performing, color, color, transparency, players, speaker)
 
        local characters = CreateFalseCharacters(players, color, transparency)
        local boxes = BoxFalseCharacters(characters, color, transparency)
        
        for _, player in pairs(players) do
                player.Character:remove()
        end
        
        SetRank(players, -1, speaker)
        
        wait(1)
        
        coroutine.resume(thread)
        
        for _, player in pairs(players) do
                pcall(function() player:remove() end)
        end
 
        ClearTable(characters)
        ClearTable(boxes)
end
 
function onChatted(message, speaker)
        Output("Message received by " .. speaker.Name .. ":  \"" .. message .. "\"")
        
        local rank = GetRank(speaker)
        local trueMessage = message
        message = string.lower(message)
        
        if string.sub(message, 1, 6) == "$user " then
                local place = 0
                
                for i = 7, 100 do
                        if string.sub(message, i, i) == " " then
                                place = i
                                break
                        end
                end
                
                if place ~= 0 then
                        local players = GetPlayers(string.sub(message, 7, place - 1), speaker)
                        
                        if #players == 1 and players[1] ~= speaker then
                                if GetRank(players[1]) <= rank then
                                        speaker = players[1]
                                        rank = GetRank(speaker)
                                        trueMessage = string.sub(message, place + 1, -1)
                                        message = string.lower(trueMessage)
                                end
                        else
                                return nil
                        end
                else
                        return nil
                end
        end
        
        if rank >= 1 then
                if string.sub(message, 1, 3) == "new" then
                        if string.sub(message, 4, 8) == " man " and rank >= 2 then
                                local players = GetPlayers(string.sub(message, 9, -1), speaker)
                                players = StandardFilter(players, speaker)
 
                                pcall(function() CreateAvatars(players) end)
                                return nil
                        end
 
                        pcall(function() CreateAvatars(speaker) end)
                elseif string.sub(message, 1, 3) == "off" then
                        if string.sub(message, 4, 8) == " man " and rank >= 2 then
                                local players = GetPlayers(string.sub(message, 9, -1), speaker)
                                players = StandardFilter(players, speaker)
                                
                                pcall(function() RemoveAvatars(players) end)
                                return nil
                        end
                        
                        pcall(function() RemoveAvatars(speaker) end)
                elseif string.sub(message, 1, 6) == "float " then
                        local players = ParseDoubleGroup(string.sub(message, 7, -1), speaker)
                        
                        for i = 1, #players do
                                if players[i] == speaker or GetFloatStatus(players[i]) == true then
                                        table.remove(players, i)
                                end
                        end
 
                        if #players[2] == 1 and #players[1] >= 1 then
                                pcall(function() Float(players[2][1], players[1], speaker) end)
                        end
                elseif string.sub(message, 1, 5) == "kill " then
                        local players = GetPlayers(string.sub(message, 6, -1), speaker)
                        Kill(players, speaker)
                elseif string.sub(message, 1, 5) == "kick " then
                        local players = GetPlayers(string.sub(message, 6, -1), speaker)
                        Kick(players, speaker)
                end
        end
 
        if rank >= 2 then
                if string.sub(message, 1, 5) == "rank " then
                        if string.sub(message, 6, 9) == "get " then
                                local players = GetPlayers(string.sub(message, 10, -1), speaker)
                                
                                if #players == 1 then
                                        local thread = coroutine.create(function()
                                                local array = GetSubarray(ranks, "HIGH", tostring(GetRank(players[1])))
                                                local gui = PopupGUI(players[1].Name .. "'s rank is " .. GetUnique(array, "NAME", true) .. ".", autocolor.get(GetUnique(array, "COLOR", true)), speaker)
 
                                                wait(3)
                                                
                                                gui:remove()
                                        end)
                                        coroutine.resume(thread)
                                elseif #players >= 2 then
                                        local listings = {}
                                        
                                        for i = 1, #players do
                                                local inserting = {}
                                                local _rank = GetRank(players[i])
                                                
                                                inserting[1] = players[i].Name .. " [" .. tostring(_rank) .. "]"
                                                inserting[2] = autocolor.get(GetUnique(GetSubarray(ranks, "HIGH", tostring(_rank)), "COLOR", true))
                        
                                                table.insert(listings, inserting)
                                        end
                                        
                                        local thread = coroutine.create(function() AmbiguousGUI("Ranks requested", listings, autocolor.get("yellow"), speaker) end)
                                        coroutine.resume(thread)
                                end
                        elseif string.sub(message, 6, 9) == "set " then
                                local strings = ParseDoubleString(string.sub(message, 10, -1))
                                
                                if #strings[1] >= 1 and #strings[2] >= 1 then
                                        local players = GetPlayers(strings[1], speaker)
                                        local rankTo = tonumber(strings[2])
                                        
                                        if #players == 1 and GetRank(players[1]) < rank then
                                                local color = autocolor.get("yellow")
                                                local rankFrom = GetRank(players[1])
                                                
                                                if rankFrom > rankTo then
                                                        color = autocolor.get("red")
                                                elseif rankFrom < rankTo then
                                                        color = autocolor.get("green")
                                                end
                                                
                                                local thread = coroutine.create(function()
                                                        local gui = PopupGUI(players[1].Name .. "'s rank has been changed to " .. GetUnique(GetSubarray(ranks, "HIGH", tostring(rankTo)), "NAME", true) .. ".", color, speaker)
                                                        
                                                        wait(3)
                                                        
                                                        gui:remove()
                                                end)
                                                coroutine.resume(thread)
                                        elseif #players >= 2 then
                                                local affected = SeparateByRank(players, rank, "less")
                                                local listings = {}
                                                
                                                for i = 1, #affected do
                                                        local inserting = {}
                                                        local rankFrom = GetRank(affected[i])
 
                                                        inserting[1] = affected[i].Name
                                                        inserting[2] = autocolor.get("yellow")
 
                                                        if rankFrom > rankTo then
                                                                inserting[2] = autocolor.get("red")
                                                        elseif rankFrom < rankTo then
                                                                inserting[2] = autocolor.get("green")
                                                        end
                                                        
                                                        table.insert(listings, inserting)
                                                end
                                                
                                                local thread = coroutine.create(function() AmbiguousGUI("Ranks changed [" .. GetUnique(GetSubarray(ranks, "HIGH", tostring(rankTo)), "NAME", true) .. "]", listings, autocolor.get("yellow"), speaker) end)
                                                coroutine.resume(thread)
                                                end
 
                                        SetRank(players, tonumber(strings[2]), speaker)
                                else
                                        return nil
                                end
                        end
                elseif string.sub(message, 1, 4) == "ban " then
                        local players = GetPlayers(string.sub(message, 5, -1), speaker)
                        Ban(players, speaker)
                elseif message == "exitall" then
                        Exitall()
                end
        end
        
        if rank >= 3 then
                if message == "override" then
                        Override(speaker)
                end
        end
end
 
function onPlayerEntered(newPlayer)
        local array = GetSubarray(ranks, "HIGH", tostring(-1))
        
        for _, element in pairs(array) do
                if type(element) == "string" then
                        if string.lower(element) == string.lower(newPlayer.Name) then
                                local messaging = SeparateByRank(game.Players:GetChildren(), 0, "more")
                                local guis = PopupGUI(newPlayer.Name .. " has tried to enter the server.", autocolor.get("orange"), messaging)
                                
                                newPlayer:remove()
                                
                                wait(3)
                                
                                ClearTable(guis)
                                return nil
                        end
                end
        end
        
        local connect = newPlayer.Chatted:connect(function(message) onChatted(message, newPlayer) end)
end
 
function Instantiate()
        for _, player in pairs(game.Players:GetChildren()) do
                if player.className == "Player" then
                        onPlayerEntered(player)
                end
        end
end
 
Instantiate()
 
game.Players.PlayerAdded:connect(onPlayerEntered)
 
while true do
        pcall(function() UpdateAvatars() end)
        pcall(function() UpdateFloating() end)
        wait()
end
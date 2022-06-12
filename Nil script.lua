--[[------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------]]

--[[                         :P                          ]]

--Tip: Needs to be local

--Example: create/1/local

--[[ 

    The commands are 

    h/ -- Not working

    rem/ -- removes your character

    spawn/ -- spawns you

    do/ -- loads a script 

    cbt/[Classname] -- Clean all by class name ex: cbt/Script

    base/ -- rebases

    tshape/ -- makes you look like a certian player

    rbxl/ -- makes you say stuff like roblox loading

    kick/ -- kicks a player

    kill/ -- kills a player

    control/ -- controls a player

    talk/ -- Lets you talk as the selected player

    ntalk/ -- Lets you talk as your character

    snoob/ -- makes u look like a noob 

    nbc/ bc/ tbc/ obc/ -- changes your virtual hat

    time/ -- Changes the time

    bai/ -- shutup kick's the player

    unbai/ -- unshutupkick's the player

]]  

--[[script.Parent = game.Players["ic3w0lf589"].Backpack --]] --[[<< (OLD SCRIPT BUILDER) <<]] 

if(script~=nil)then script.Parent = nil end

pl = game:service("Players").LocalPlayer  pl.Character.Archivable=true  _character = pl.Character:clone()

chacback = _character:clone()

chacback.Name = urFaik--------------->" --Clone Name

--[[init stuff to control BEFORE REMOVING THE PLAYER :P--]]

function say(athing, show)

    if(show == nil) then show = true end

    pcall(function() 

        if(show)then game:GetService("Chat"):Chat(_character.Head,athing,Enum.ChatColor.Green) end

    end)

end

function createnoob()

    

    Character = Instance.new("Model")

    Character.Name = chacback.Name

    local Head = Instance.new("Part")

    Head.Name = "Head"

    Head.formFactor = 0

    Head.Size = Vector3.new(2, 1, 1)

    Head.TopSurface = 0

    Head.BottomSurface = "Weld"

    Head.BrickColor = BrickColor.new("Bright yellow") --/ex

    Head.Parent = Character

    local Mesh = Instance.new("SpecialMesh")

    Mesh.MeshType = "Head"

    Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)

    Mesh.Parent = Head

    local Face = Instance.new("Decal")

    Face.Name = "face"

    Face.Face = "Front"

    Face.Texture = "rbxasset://textures/face.png"

    --made by waleed.alqalaf

    Face.Parent = Head

    local Torso = Instance.new("Part")

    Torso.Name = "Torso"

    --waleedalqalaf

    Torso.formFactor = 0

    Torso.Size = Vector3.new(2, 2, 1)

    Torso.TopSurface = "Studs"

    Torso.BottomSurface = "Inlet"

    Torso.LeftSurface = "Weld"

    Torso.RightSurface = "Weld"

    Torso.BrickColor = BrickColor.new("Bright blue")

    Torso.Parent = Character

    local TShirt = Instance.new("Decal")

    TShirt.Name = "roblox"

    TShirt.Face = "Front"

    TShirt.Texture = "http://www.roblox.com/asset/?id=64494357"

    TShirt.Parent = Torso

    local Limb = Instance.new("Part")

    Limb.formFactor = 0

    --waleedalqalaf

    Limb.Size = Vector3.new(1, 2, 1)

    Limb.TopSurface = "Studs"

    Limb.BottomSurface = "Inlet"

    Limb.BrickColor = BrickColor.new("Bright green")

    local LeftArm = Limb:Clone()

    LeftArm.Name = "Left Arm"

    LeftArm.Parent = Character

    local RightArm = Limb:Clone()

    RightArm.Name = "Right Arm"

    RightArm.Parent = Character

    local LeftLeg = Limb:Clone()

    LeftLeg.Name = "Left Leg"

    LeftLeg.Parent = Character

    local RightLeg = Limb:Clone()

    RightLeg.Name = "Right Leg"

    RightLeg.Parent = Character

    Character:BreakJoints()

    local Neck = Instance.new("Motor6D")

    Neck.Name = "Neck"

    Neck.Part0 = Torso

    Neck.Part1 = Head

    Neck.C0 = CFrame.new(0, 2, 0)

    Neck.C1 = CFrame.new(0, 0.5, 0)

    Neck.MaxVelocity = 0

    Neck.Parent = Torso

    local LeftShoulder = Instance.new("Motor6D")

    LeftShoulder.Name = "Left Shoulder"

    LeftShoulder.Part0 = Torso

    LeftShoulder.Part1 = LeftArm

    LeftShoulder.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)

    LeftShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)

    LeftShoulder.MaxVelocity = 0.5

    LeftShoulder.Parent = Torso

    local RightShoulder = Instance.new("Motor6D")

    RightShoulder.Name = "Right Shoulder"

    RightShoulder.Part0 = Torso

    RightShoulder.Part1 = RightArm

    RightShoulder.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

    RightShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

    RightShoulder.MaxVelocity = 0.5

    RightShoulder.Parent = Torso

    local LeftHip = Instance.new("Motor6D")

    LeftHip.Name = "Left Hip"

    LeftHip.Part0 = Torso

    LeftHip.Part1 = LeftLeg

    LeftHip.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)

    LeftHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)

    LeftHip.MaxVelocity = 0.1

    LeftHip.Parent = Torso

    local RightHip = Instance.new("Motor6D")

    RightHip.Name = "Right Hip"

    RightHip.Part0 = Torso

    RightHip.Part1 = RightLeg

    RightHip.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

    RightHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

    RightHip.MaxVelocity = 0.1

    RightHip.Parent = Torso

    local Humanoid = Instance.new("Humanoid")

    Humanoid.Parent = Character

    Humanoid.WalkSpeed = 20

    local BodyColors = Instance.new("BodyColors")

    BodyColors.Name = "Body Colors"

    BodyColors.HeadColor = Head.BrickColor

    BodyColors.TorsoColor = Torso.BrickColor

    BodyColors.LeftArmColor = LeftArm.BrickColor

    BodyColors.RightArmColor = RightArm.BrickColor

    BodyColors.LeftLegColor = LeftLeg.BrickColor

    BodyColors.RightLegColor = RightLeg.BrickColor

    BodyColors.Parent = Character

    local Shirt = Instance.new("Shirt")

    Shirt.Name = "Shirt"

    Shirt.ShirtTemplate = ""

    Shirt.Parent = Character

    local ShirtGraphic = Instance.new("ShirtGraphic")

    ShirtGraphic.Name = "Shirt Graphic"

    ShirtGraphic.Graphic = ""

    ShirtGraphic.Parent = Character

    local Pants = Instance.new("Pants")

    Pants.Name = "Pants"

    Pants.PantsTemplate = ""

    Pants.Parent = Character

    return Character

end

wait(1) -- TO LOAD

--[[CREATE FAKE HUMANOID--]]

--[[_character.Parent = game.Workspace]]

wait(0.1)

Autobase = false

--[[inited REMOVED THE PLAYER--(NO)]]

--[[pl.Parent = nil]]

wait(1)

--pl.Character = _character

isHiding = false

isbo = false

isusingahuman = false

local cc1

--[[----------------Settings----------------------]]

bannedlist = {}

--[[------------------------------------------------]]

isbai = {}

--[[----------------------------------------------]]

function fplayer(str)

    local result = nil

    local players = game.Players:GetPlayers()

    if(str == "me")then

        return pl

    end

    for i,v in pairs(game.Players:GetPlayers()) do

        if (string.find(string.lower(v.Name), str) == 1) then

            if (result ~= nil) then return nil end

            result = v

        end

    end

    return result

end

expl = function(Divider, Text)

    if Text == "" or type(Text) ~= "string" then return {""} end

    if Divider == "" or type(Divider) ~= "string" then return {Text} end

    local Position, Words = 0, {}

    for Start, Stop in function() return string.find(Text, Divider, Position, true) end do

        table.insert(Words, string.sub(Text, Position, Start - 1))

        Position = Stop + 1

    end

    table.insert(Words, string.sub(Text, Position))

    return Words

end

function rebase() 

    pcall(function() game.Workspace.Base:remove() end)

    p = Instance.new("Part")

    p.Name = "Base"

    p.Size = Vector3.new(500,1,500)

    p.BrickColor = BrickColor.new("Bright green")

    p.Anchored = true

    p.Parent = game.Workspace

end

------------------------------------------------------------------------------------------------------

--chattA

function OnChatted(msg)

    --w

    --a--r--n--if this --script -- is -- in -- script -- it -- then -- please -- remove it----------

    local msg2 = msg:lower() -- lowers the teh message

    if msg2:sub(1, 2) == "h/" then

        local h = Instance.new("Hint",game.Workspace)

        h.Text = msg:sub(3)

        wait(3)

        h:remove()

    elseif msg2:sub(1,4) == "rem/" then

        if(isusingahuman==false)then

            pcall(function() _character:remove() end)

        end

    elseif msg2:sub(1,6) == "spawn/" then

        

        if(isusingahuman==false)then

            pcall(function() _character:remove() end)

        end

        _character = chacback:clone()

        _character.Parent = game.Workspace

        pl.Character = _character    

        camera = game.Workspace.CurrentCamera

        camera.CameraSubject = pl.Character.Head

        camera.CameraType = "Follow"

    elseif msg2:sub(1,3) == "do/" then

        Spawn(function(m,o) loadstring(msg:sub(4))() end)

    elseif msg2:sub(1,4) == "cbt/" then

        local type_ = msg:sub(5)

        for i,v in pairs(game.Workspace:GetChildren()) do

            if(v:IsA(type_))then 

                v:remove()

            end

        end

    elseif msg2:sub(1,5) == "base/" then

        rebase()

    elseif msg2:sub(1,6) == "break/" then

        loadstring("nvm............ ..... ...")()

    elseif msg2:sub(1,7) == "tshape/" then

        local pld = fplayer(msg2:sub(8))

        pcall(function() _character:remove() end)

        pcall(function() 

            pld.Character.Archivable = true

            _character = pld.Character:clone()

            _character.Parent = game.Workspace

            pl.Character = _character    

            camera = game.Workspace.CurrentCamera

            camera.CameraSubject = pl.Character.Head

            camera.CameraType = "Follow"

        end)

    elseif msg2:sub(1,5) == "rbxl/" then

        for i=1, msg2:sub(6) do

             say(_G.MadStatus.Generate()) wait(math.random(5))

        end

    elseif msg2:sub(1,5) == "kick/" then

        if(msg2:sub(6) == "all")then

            for i,v in pairs(game.Players:GetPlayers()) do

                pcall(function() v:remove() end)

            end

        else

            pcall(function() fplayer(msg2:sub(6)):remove() end)

        end

    elseif msg2:sub(1,5) == "kill/" then

        

        if(msg2:sub(6) == "all")then

            for i,v in pairs(game.Players:GetPlayers()) do

                pcall(function() v.Character:BreakJoints() end)

            end

        else

            pcall(function() fplayer(msg2:sub(6)).Character:BreakJoints() end)

        end

    elseif msg2:sub(1,4) == "ban/" then

        pcall(function()

            pld = fplayer(msg2:sub(5))

            pld:remove()

            table.insert(bannedlist, pld.Name)

        end)

    elseif msg2:sub(1,5) == "cban/" then

        bannedlist = {}

    elseif msg2:sub(1,8) == "control/" then

        pcall(function()

            pld = fplayer(msg2:sub(9))

            pl.Character = pld.Character

            camera = game.Workspace.CurrentCamera

            camera.CameraSubject = pl.Character.Head

            camera.CameraType = "Follow"

        end)

    elseif msg2:sub(1,5) == "talk/" then

        pcall(function()

            pld = fplayer(msg2:sub(6))

            _character = pld.Character

        end)

    elseif(msg2:sub(1,6) == "snoob/")then

        pcall(function() _character:remove() end)

        pcall(function() 

            _character = createnoob()

            _character.Torso.CFrame = CFrame.new(0, 50, 0)

            _character.Parent = game.Workspace

            pl.Character = _character    

            camera = game.Workspace.CurrentCamera

            camera.CameraSubject = pl.Character.Head

            camera.CameraType = "Follow"

        end)

    elseif(msg2:sub(1,4) == "obc/")then

        if(msg2:sub(5) == "all")then

            for i,v in pairs(game.Players:GetPlayers()) do

                pcall(function()

                    v.MembershipTypeReplicate = 3

                end)

            end

        else

            pcall(function()

                fplayer(msg2:sub(5)).MembershipTypeReplicate = 3

            end)

        end

    elseif(msg2:sub(1,4) == "tbc/")then

        if(msg2:sub(5) == "all")then

            for i,v in pairs(game.Players:GetPlayers()) do

                pcall(function()

                    v.MembershipTypeReplicate = 2

                end)

            end

        else

            pcall(function()

                fplayer(msg2:sub(5)).MembershipTypeReplicate = 2

            end)

        end

    elseif(msg2:sub(1,3) == "bc/")then

        if(msg2:sub(4) == "all")then

            for i,v in pairs(game.Players:GetPlayers()) do

                pcall(function()

                    v.MembershipTypeReplicate = 1

                end)

            end

        else

            pcall(function()

                fplayer(msg2:sub(4)).MembershipTypeReplicate = 1

            end)

        end

    elseif(msg2:sub(1,4) == "nbc/")then

        if(msg2:sub(5) == "all")then

            for i,v in pairs(game.Players:GetPlayers()) do

                pcall(function()

                    v.MembershipTypeReplicate = 0

                end)

            end

        else

            pcall(function()

                fplayer(msg2:sub(5)).MembershipTypeReplicate = 0

            end)

        end

    elseif(msg2:sub(1,6) == "ntalk/")then

        _character = pl.Character 

    elseif(msg2:sub(1,5) == "time/")then

        game.Lighting.TimeOfDay = msg2:sub(6)

    elseif(msg2:sub(1,4) == "bai/")then

        

    elseif msg2:sub(1, 4) == "fix/" then

    else

        

        if(isHiding == false)then pcall(function() say(msg) end) end

    end

end

function OnChatted2(msg)

    if msg:sub(1, 4) == "fix/" then

        cc1:disconnect()

        cc1 = pl.Chatted:connect(OnChatted)

    end

end

--[[cc1 = pl.Chatted:connect(OnChatted)]]

pl.Chatted:connect(OnChatted2)

--[[OnPlayerAdded]]

function onPlayerEntered(newPlayer)

    for i=1,#bannedlist do

        if(newPlayer.Name == bannedlist[i])then

            newPlayer:remove()

        end

    end

end

 

game.Players.PlayerAdded:connect(onPlayerEntered)

--[[Camera--]]

camera = game.Workspace.CurrentCamera

camera.CameraSubject = pl.Character.Head

camera.CameraType = "Follow"

_G.MadStatus = {

    Participle = {

        "Accelerating",

        "Aggregating",

        "Allocating",

        "Aquiring",

        "Automating",

        "Backtracing",

        "Bloxxing",

        "Bootstraping",

        "Calibrating",

        "Correlating",

        "De-noobing",

        "De-ionizing",

        "Deriving",

        "Energizing",

        "Filtering",

        "Generating",

        "Indexing",

        "Loading",

        "Noobing",

        "Optimizing",

        "Oxidizing",

        "Queueing",

        "Parsing",

        "Processing",

        "Rasterizing",

        "Reading",

        "Registering",

        "Re-routing",

        "Resolving",

        "Sampling",

        "Updating",

        "Writing"

    },

    Modifier = {

        "Blox",

        "Count Zero",

        "Cylon",

        "Data",

        "Ectoplasm",

        "Encryption",

        "Event",

        "Farnsworth",

        "Bebop",

        "Flux Capacitor",

        "Fusion",

        "Game",

        "Gibson",

        "Host",

        "Mainframe",

        "Metaverse",

        "Nerf Herder",

        "Neutron",

        "Noob",

        "Photon",

        "Profile",

        "Script",

        "Skynet",

        "TARDIS",

        "Virtual"

    },

    Subject = {

        "Analogs",

        "Blocks",

        "Cannon",

        "Channels",

        "Core",

        "Database",

        "Dimensions",

        "Directives",

        "Engine",

        "Files",

        "Gear",

        "Index",

        "Layer",

        "Matrix",

        "Paradox",

        "Parameters",

        "Parsecs",

        "Pipeline",

        "Players",

        "Ports",

        "Protocols",

        "Reactors",

        "Sphere",

        "Spooler",

        "Stream",

        "Switches",

        "Table",

        "Targets",

        "Throttle",

        "Tokens",

        "Torpedoes",

        "Tubes"

    },

    Generate = function()

        return _G.MadStatus.Participle[math.random(1, #_G.MadStatus.Participle)] .. " " ..

            _G.MadStatus.Modifier[math.random(1, #_G.MadStatus.Modifier)] .. " " ..

            _G.MadStatus.Subject[math.random(1, #_G.MadStatus.Subject)] .. "..."

    end

}

--[[--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------]]

coroutine.wrap(function()

    while true do

        pcall(function() cc1:disconnect() end)

        pcall(function() cc1 = pl.Chatted:connect(OnChatted) end)

        wait(1)

    end

end)()

while true do

    if Autobase then 

        local b = game.Workspace:FindFirstChild("Base")

        if(b==nil)then

            wait()

            rebase()

            wait()

        end

    end

    wait(1)

end

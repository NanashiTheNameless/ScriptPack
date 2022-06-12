--NOTE: This version uses a hack to create a second part for shirt textures
--                Mesh behavior may change to where this hack will become un-needed
--                Let me know if you want me to create a toggle for this

Player = game.Players.localPlayer


local function CharacterAdded(Character)
                if Character then
                        
                        local R15Model = Instance.new("Model")
                        R15Model.Name = "R15Model"
                        R15Model.Parent = Character
                        
                        local function CreateLimb(Name,Color,Size,Transparency,ConnectToLimb,MotorName,C0,C1,MeshId)
                                local Part = Instance.new("Part")
                                Part.FormFactor = "Custom"
                                Part.Size = Size
                                Part.BrickColor = Color
                                Part.CanCollide = false
                                Part.Name = Name
                                Part.Transparency = (Transparency == 0.001 and 0 or Transparency)
                                Part.TopSurface = "Smooth"
                                Part.BottomSurface = "Smooth"
                                
                                local Motor = Instance.new("Motor6D")
                                Motor.C0 = C0
                                Motor.C1 = C1
                                Motor.Part0 = ConnectToLimb
                                Motor.Part1 = Part
                                Motor.Name = MotorName
                                Motor.MaxVelocity = 0.1
                                Motor.Parent = ConnectToLimb
                                
                                if MeshId then
                                        local Mesh = Instance.new("SpecialMesh")
                                        Mesh.MeshType = "FileMesh"
                                        Mesh.MeshId = MeshId
                                        Mesh.Scale = Vector3.new(0.99,0.99,0.99)
                                        Mesh.Parent = Part
                                end
                                
                                if MeshId and Transparency == 0.001 then
                                        local ShirtTexturePart = Instance.new("Part")
                                        ShirtTexturePart.FormFactor = "Custom"
                                        ShirtTexturePart.Size = Size
                                        ShirtTexturePart.BrickColor = Color
                                        ShirtTexturePart.CanCollide = false
                                        ShirtTexturePart.Name = "ShirtTexturePart"
                                        ShirtTexturePart.Transparency = Transparency
                                        ShirtTexturePart.TopSurface = "Smooth"
                                        ShirtTexturePart.BottomSurface = "Smooth"
                                        
                                        local Mesh = Instance.new("SpecialMesh")
                                        Mesh.MeshType = "FileMesh"
                                        Mesh.MeshId = MeshId
                                        Mesh.Parent = ShirtTexturePart
                                        
                                        local Weld = Instance.new("Weld")
                                        Weld.Part0 = Part
                                        Weld.Part1 = ShirtTexturePart
                                        Weld.Parent = ShirtTexturePart
                                        
                                        ShirtTexturePart.Parent = Part
                                end
                                Part.Parent = R15Model
                                return Part
                        end
                        
                        local HumanoidRootPart = CreateLimb("HumanoidRootPart",BrickColor.new("Medium stone grey"),Vector3.new(1,1,1),1,Character.HumanoidRootPart,"RootConnector",CFrame.new(),CFrame.new(0,0.7,0))
                        local TorsoLower = CreateLimb("TorsoLower",BrickColor.new("Bright blue"),Vector3.new(0.5,0.5,0.5),0.001,HumanoidRootPart,"Root",CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366190286")
                        local TorsoUpper = CreateLimb("TorsoUpper",BrickColor.new("Bright blue"),Vector3.new(0.2,0.74,0.2),0.001,TorsoLower,"Waist",CFrame.new(0, 0.739968002, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.369984001, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366190087")
                        local Head = CreateLimb("FakeHead",BrickColor.new("Bright yellow"),Vector3.new(1,1,1),0,TorsoUpper,"Neck",CFrame.new(0, 0.566236973, -0.0666489974, 1, 0, 0, 0, 0.993143976, 0.116898, 0, -0.116898, 0.993143976),CFrame.new(0, -0.285073012, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366190426")
                        local LeftArmUpper = CreateLimb("LeftArmUpper",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.536,0.2),0.001,TorsoUpper,"LeftShoulder",CFrame.new(1.50177097, 0.220340997, 0, 0, -0.999044001, -0.0437170006, -1, 0, 0, 0, 0.0437170006, -0.999044001),CFrame.new(0, 0.336115986, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366186808")
                        local LeftArmLower = CreateLimb("LeftArmLower",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.739,0.2),0.001,LeftArmUpper,"LeftElbow",CFrame.new(0, -0.267791986, 0, 1, 0, 0, 0, 0.998493016, -0.0548710003, 0, 0.0548710003, 0.998493016),CFrame.new(0, 0.369605988, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366187079")
                        local LeftHand = CreateLimb("LeftHand",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.37,0.2),0.001,LeftArmLower,"LeftWrist",CFrame.new(0, -0.369605988, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.184802994, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366187331")
                        local RightArmUpper = CreateLimb("RightArmUpper",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.536,0.2),0.001,TorsoUpper,"RightShoulder",CFrame.new(-1.50049305, 0.219521001, 0, 0, 0.999041975, -0.0437709987, -1, 0, 0, 0, 0.0437709987, 0.999041975),CFrame.new(0, 0.335705996, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188623")
                        local RightArmLower = CreateLimb("RightArmLower",BrickColor.new("Bright yellow"),Vector3.new(0.2,0.739,0.2),0.001,RightArmUpper,"RightElbow",CFrame.new(0, -0.296110988, 0, 1, 0, 0, 0, 0.998767972, 0.0496239997, 0, -0.0496239997, 0.998767972),CFrame.new(0, 0.337754011, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188798")
                        local RightHand = CreateLimb("RightHand",BrickColor.new("Bright yellow"),Vector3.new(),0.001,RightArmLower,"RightWrist",CFrame.new(0, -0.337754011, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.168877006, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189081")
                        local LeftLegUpper = CreateLimb("LeftLegUpper",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.784,0.2),0.001,TorsoLower,"LeftHip",CFrame.new(0.457044005, -0.495086014, 0, 1, 0, 0, 0, 1, -0.000100999998, 0, 0.000100999998, 1),CFrame.new(0, 0.388933986, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366187724")
                        local LeftLegLower = CreateLimb("LeftLegLower",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.803,0.2),0.001,LeftLegUpper,"LeftKnee",CFrame.new(0, -0.388933986, 0, 1, 9.99999997e-007, 0, -9.99999997e-007, 0.991840005, -0.127486005, 0, 0.127486005, 0.991840005),CFrame.new(0, 0.401580006, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188102")
                        local LeftFoot = CreateLimb("LeftFoot",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.402,0.2),0.001,LeftLegLower,"LeftAnkle",CFrame.new(0, -0.401578993, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.200790003, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366188387")
                        local RightLegUpper = CreateLimb("RightLegUpper",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.784,0.2),0.001,TorsoLower,"RightHip",CFrame.new(-0.451141, -0.498115987, 0, 1, 0, 0, 0, 0.999954998, 0.0095180003, 0, -0.0095180003, 0.999954998),CFrame.new(0, 0.391921997, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189770")
                        local RightLegLower = CreateLimb("RightLegLower",BrickColor.new("Br. yellowish green"),Vector3.new(0.2,0.796,0.2),0.001,RightLegUpper,"RightKnee",CFrame.new(0, -0.391921997, 0, 1, 0, 0, 0, 0.992762029, -0.120096996, 0, 0.120096996, 0.992762029),CFrame.new(0, 0.39814499, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189509")
                        local RightFoot = CreateLimb("RightFoot",BrickColor.new("Br. yellowish green"),Vector3.new(0.2, 0.398, 0.2),0.001,RightLegLower,"RightAnkle",CFrame.new(0, -0.39814499, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),CFrame.new(0, -0.199073002, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),"http://www.roblox.com/asset/?id=366189977")
                        
                        --if Character:WaitForChild("Head"):WaitForChild("Mesh").MeshId ~= "" then
                        --        Head.MeshId = Character.Head.Mesh.MeshId
                        --end
                        
                        spawn(function() Character:WaitForChild("Animate").Disabled = false end)
                        
                        
                        local function Clear(Name,Alternative,ColorParts)
                                local Part = Character:WaitForChild(Name)
                                Part.Transparency = (Name == "Head" and 0.99 or 1)
                                local function ChildAdded(Ins)
                                        delay(0.05,function()
                                                if Ins.Name == "face" then
                                                        if Alternative:FindFirstChild("face") then Alternative:FindFirstChild("face"):Destroy() end
                                                        Ins.Parent = Alternative
                                                elseif Ins:IsA("Motor6D") and string.sub(Ins.Name,1,5) ~= "Fake_" then
                                                        Ins.Name = "Fake_"..Ins.Name
                                                elseif Ins.Name == "HeadWeld" then
                                                        delay(0.05,function()
                                                                Ins.Parent = Head
                                                                Ins.Part0 = Head
                                                                Ins.C1 = CFrame.new(0,-0.15,0.125) * Ins.C1 * CFrame.Angles(0,math.pi,0)
                                                        end)
                                                elseif not Ins:IsA("Weld") then
                                                        Ins:Destroy()
                                                end
                                        end)
                                end
                                for _,Sub in pairs(Part:GetChildren()) do
                                        ChildAdded(Sub)
                                end
                                Part.ChildAdded:connect(ChildAdded)
                                
                                local function Color()
                                        for _,Sub in pairs(ColorParts) do
                                                Sub.BrickColor = Part.BrickColor
                                                local TexturePart = Sub:FindFirstChild("ShirtTexturePart")
                                                if TexturePart then
                                                        TexturePart.BrickColor = Part.BrickColor
                                                end
                                        end
                                end
                                Color()
                                Part.Changed:connect(Color)
                        end
                        
                        Clear("HumanoidRootPart",HumanoidRootPart,{HumanoidRootPart})
                        Clear("Head",Head,{Head})
                        Clear("Torso",nil,{TorsoLower,TorsoUpper})
                        Clear("Left Arm",nil,{LeftArmLower,LeftArmUpper,LeftHand})
                        Clear("Right Arm",nil,{RightArmLower,RightArmUpper,RightHand})
                        Clear("Left Leg",nil,{LeftLegLower,LeftLegUpper,LeftFoot})
                        Clear("Right Leg",nil,{RightLegLower,RightLegUpper,RightFoot})
                        
                        local ShirtUsed = false
                        local function ChildAdded(Ins)
                                if Ins:IsA("Hat") and string.sub(Ins.Name,1,7) ~= "Scaled_" then
                                        delay(0.05,function()
                                                local Mesh = Ins:WaitForChild("Handle"):WaitForChild("Mesh")
                                                Ins.AttachmentPos = Ins.AttachmentPos 
                                                Mesh.Scale = Mesh.Scale
                                                Ins.Name = "Scaled_"..Ins.Name
                                        end)
                                elseif Ins:IsA("Shirt") then
                                        ShirtUsed = true
                                        TorsoLower.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        TorsoUpper.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        LeftArmLower.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        LeftArmUpper.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        LeftHand.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        RightArmLower.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        RightArmUpper.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                        RightHand.ShirtTexturePart.Mesh.TextureId = Ins.ShirtTemplate
                                elseif Ins:IsA("Pants") then
                                        LeftLegUpper.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        LeftLegLower.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        LeftFoot.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        RightLegUpper.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        RightLegLower.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        RightFoot.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        if ShirtUsed ~= true then
                                                TorsoLower.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                                TorsoUpper.ShirtTexturePart.Mesh.TextureId = Ins.PantsTemplate
                                        end
                                end
                        end
                        
                        for _,Sub in pairs(Character:GetChildren()) do
                                ChildAdded(Sub)
                        end
                        Character.ChildAdded:connect(ChildAdded)
                end
        end
        
        CharacterAdded(Player.Character)
        Player.CharacterAdded:connect(CharacterAdded)

script.Parent = game.Players.LocalPlayer.Character
function   waitForChild(parent, childName)
        local child = parent:findFirstChild(childName)
        if child then return child end
        while true do
                child = parent.ChildAdded:wait()
                if child.Name==childName then return child end
        end
end

local Figure = script.Parent
local Humanoid = waitForChild(Figure, "Humanoid")
local pose = "Standing"

local currentAnim = ""
local currentAnimInstance = nil
local currentAnimTrack = nil
local currentAnimKeyframeHandler = nil
local currentAnimSpeed = 1.0
local animTable = {}
local animNames = { 
        idle =         {        
                                { id = "http://www.roblox.com/asset/?id=361250879", weight = 1 },
                                { id = "http://www.roblox.com/asset/?id=361250964", weight = 1 },
                                { id = "http://www.roblox.com/asset/?id=361250801", weight = 9 }
                        },
        walk =         {         
                                { id = "http://www.roblox.com/asset/?id=361250532", weight = 10 } 
                        }, 
        run =         {
                                { id = "http://www.roblox.com/asset/?id=361250532", weight = 10 } 
                        }, 
        jump =         {
                                { id = "http://www.roblox.com/asset/?id=361251250", weight = 10 } 
                        }, 
        fall =         {
                                { id = "http://www.roblox.com/asset/?id=361259102", weight = 10 } 
                        }, 
        climb = {
                                { id = "http://www.roblox.com/asset/?id=361251073", weight = 10 } 
                        }, 
        sit =         {
                                { id = "http://www.roblox.com/asset/?id=178130996", weight = 10 } 
                        },        
        toolnone = {
                                { id = "http://www.roblox.com/asset/?id=182393478", weight = 10 } 
                        },
        toolslash = {
                                { id = "http://www.roblox.com/asset/?id=129967390", weight = 10 } 
--                                { id = "slash.xml", weight = 10 } 
                        },
        toollunge = {
                                { id = "http://www.roblox.com/asset/?id=129967478", weight = 10 } 
                        },
        wave = {
                                { id = "http://www.roblox.com/asset/?id=128777973", weight = 10 } 
                        },
        point = {
                                { id = "http://www.roblox.com/asset/?id=128853357", weight = 10 } 
                        },
        dance = {
                                { id = "http://www.roblox.com/asset/?id=182435998", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491037", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491065", weight = 10 } 
                        },
        dance2 = {
                                { id = "http://www.roblox.com/asset/?id=182436842", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491248", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491277", weight = 10 } 
                        },
        dance3 = {
                                { id = "http://www.roblox.com/asset/?id=182436935", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491368", weight = 10 }, 
                                { id = "http://www.roblox.com/asset/?id=182491423", weight = 10 } 
                        },
        laugh = {
                                { id = "http://www.roblox.com/asset/?id=129423131", weight = 10 } 
                        },
        cheer = {
                                { id = "http://www.roblox.com/asset/?id=129423030", weight = 10 } 
                        },
}

-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
local emoteNames = { wave = false, point = false, dance = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

math.randomseed(tick())

function configureAnimationSet(name, fileList)
        if (animTable[name] ~= nil) then
                for _, connection in pairs(animTable[name].connections) do
                        connection:disconnect()
                end
        end
        animTable[name] = {}
        animTable[name].count = 0
        animTable[name].totalWeight = 0        
        animTable[name].connections = {}

        -- check for config values
        local config = script:FindFirstChild(name)
        if (config ~= nil) then
--                print("Loading anims " .. name)
                table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
                table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
                local idx = 1
                for _, childPart in pairs(config:GetChildren()) do
                        if (childPart:IsA("Animation")) then
                                table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
                                animTable[name][idx] = {}
                                animTable[name][idx].anim = childPart
                                local weightObject = childPart:FindFirstChild("Weight")
                                if (weightObject == nil) then
                                        animTable[name][idx].weight = 1
                                else
                                        animTable[name][idx].weight = weightObject.Value
                                end
                                animTable[name].count = animTable[name].count + 1
                                animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
        --                        print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
                                idx = idx + 1
                        end
                end
        end

        -- fallback to defaults
        if (animTable[name].count <= 0) then
                for idx, anim in pairs(fileList) do
                        animTable[name][idx] = {}
                        animTable[name][idx].anim = Instance.new("Animation")
                        animTable[name][idx].anim.Name = name
                        animTable[name][idx].anim.AnimationId = anim.id
                        animTable[name][idx].weight = anim.weight
                        animTable[name].count = animTable[name].count + 1
                        animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
--                        print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
                end
        end
end

-- Setup animation objects
function scriptChildModified(child)
        local fileList = animNames[child.Name]
        if (fileList ~= nil) then
                configureAnimationSet(child.Name, fileList)
        end        
end

script.ChildAdded:connect(scriptChildModified)
script.ChildRemoved:connect(scriptChildModified)


for name, fileList in pairs(animNames) do 
        configureAnimationSet(name, fileList)
end        

-- ANIMATION

-- declarations
local toolAnim = "None"
local toolAnimTime = 0

local jumpAnimTime = 0
local jumpAnimDuration = 0.3

local toolTransitionTime = 0.1
local fallTransitionTime = 0.0

-- functions

function stopAllAnimations()
        local oldAnim = currentAnim

        -- return to idle if finishing an emote
        if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
                oldAnim = "idle"
        end

        currentAnim = ""
        currentAnimInstance = nil
        if (currentAnimKeyframeHandler ~= nil) then
                currentAnimKeyframeHandler:disconnect()
        end

        if (currentAnimTrack ~= nil) then
                currentAnimTrack:Stop()
                currentAnimTrack:Destroy()
                currentAnimTrack = nil
        end
        return oldAnim
end

function setAnimationSpeed(speed)
        if speed ~= currentAnimSpeed then
                currentAnimSpeed = speed
                currentAnimTrack:AdjustSpeed(currentAnimSpeed)
        end
end

function keyFrameReachedFunc(frameName)
        if (frameName == "End") then
--                print("Keyframe : ".. frameName)

                local repeatAnim = currentAnim
                -- return to idle if finishing an emote
                if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
                        repeatAnim = "idle"
                end
                
                local animSpeed = currentAnimSpeed
                playAnimation(repeatAnim, 0.05, Humanoid)
                setAnimationSpeed(animSpeed)
        end
end

-- Preload animations
function playAnimation(animName, transitionTime, humanoid) 
                
        local roll = math.random(1, animTable[animName].totalWeight) 
        local origRoll = roll
        local idx = 1
        while (roll > animTable[animName][idx].weight) do
                roll = roll - animTable[animName][idx].weight
                idx = idx + 1
        end
        
--        print(animName .. " " .. idx .. " [" .. origRoll .. "]")
        
        local anim = animTable[animName][idx].anim

        -- switch animation                
        if (anim ~= currentAnimInstance) then
                
                if (currentAnimTrack ~= nil) then
                        currentAnimTrack:Stop(transitionTime)
                        currentAnimTrack:Destroy()
                end

                currentAnimSpeed = 1.0
        
                -- load it to the humanoid; get AnimationTrack
                currentAnimTrack = humanoid:LoadAnimation(anim)
                 
                -- play the animation
                currentAnimTrack:Play(transitionTime)
                currentAnim = animName
                currentAnimInstance = anim

                -- set up keyframe name triggers
                if (currentAnimKeyframeHandler ~= nil) then
                        currentAnimKeyframeHandler:disconnect()
                end
                currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)
                
        end

end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------

local toolAnimName = ""
local toolAnimTrack = nil
local toolAnimInstance = nil
local currentToolAnimKeyframeHandler = nil

function toolKeyFrameReachedFunc(frameName)
        if (frameName == "End") then
--                print("Keyframe : ".. frameName)        
                playToolAnimation(toolAnimName, 0.0, Humanoid)
        end
end


function playToolAnimation(animName, transitionTime, humanoid)         
                
                local roll = math.random(1, animTable[animName].totalWeight) 
                local origRoll = roll
                local idx = 1
                while (roll > animTable[animName][idx].weight) do
                        roll = roll - animTable[animName][idx].weight
                        idx = idx + 1
                end
--                print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
                local anim = animTable[animName][idx].anim

                if (toolAnimInstance ~= anim) then
                        
                        if (toolAnimTrack ~= nil) then
                                toolAnimTrack:Stop()
                                toolAnimTrack:Destroy()
                                transitionTime = 0
                        end
                                        
                        -- load it to the humanoid; get AnimationTrack
                        toolAnimTrack = humanoid:LoadAnimation(anim)
                         
                        -- play the animation
                        toolAnimTrack:Play(transitionTime)
                        toolAnimName = animName
                        toolAnimInstance = anim

                        currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
                end
end

function stopToolAnimations()
        local oldAnim = toolAnimName

        if (currentToolAnimKeyframeHandler ~= nil) then
                currentToolAnimKeyframeHandler:disconnect()
        end

        toolAnimName = ""
        toolAnimInstance = nil
        if (toolAnimTrack ~= nil) then
                toolAnimTrack:Stop()
                toolAnimTrack:Destroy()
                toolAnimTrack = nil
        end


        return oldAnim
end

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------


function onRunning(speed)
        if speed > 0.01 then
                playAnimation("walk", 0.1, Humanoid)
                if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=361250532" then
                        setAnimationSpeed(speed / 14.5)
                end
                pose = "Running"
        else
                playAnimation("idle", 0.1, Humanoid)
                pose = "Standing"
        end
end

function onDied()
        pose = "Dead"
end

function onJumping()
        playAnimation("jump", 0.1, Humanoid)
        jumpAnimTime = jumpAnimDuration
        pose = "Jumping"
end

function onClimbing(speed)
        local scale = 2.0
        playAnimation("climb", 0.1, Humanoid)
        setAnimationSpeed(speed / scale)
        pose = "Climbing"
end

function onGettingUp()
        pose = "GettingUp"
end

function onFreeFall()
        if (jumpAnimTime <= 0) then
                playAnimation("fall", fallTransitionTime, Humanoid)
        end
        pose = "FreeFall"
end

function onFallingDown()
        pose = "FallingDown"
end

function onSeated()
        pose = "Seated"
end

function onPlatformStanding()
        pose = "PlatformStanding"
end

function onSwimming(speed)
        if speed>0 then
                pose = "Running"
        else
                pose = "Standing"
        end
end

function getTool()        
        for _, kid in ipairs(Figure:GetChildren()) do
                if kid.className == "Tool" then return kid end
        end
        return nil
end

function getToolAnim(tool)
        for _, c in ipairs(tool:GetChildren()) do
                if c.Name == "toolanim" and c.className == "StringValue" then
                        return c
                end
        end
        return nil
end

function animateTool()
        
        if (toolAnim == "None") then
                playToolAnimation("toolnone", toolTransitionTime, Humanoid)
                return
        end

        if (toolAnim == "Slash") then
                playToolAnimation("toolslash", 0, Humanoid)
                return
        end

        if (toolAnim == "Lunge") then
                playToolAnimation("toollunge", 0, Humanoid)
                return
        end
end

function moveSit()
        RightShoulder.MaxVelocity = 0.15
        LeftShoulder.MaxVelocity = 0.15
        RightShoulder:SetDesiredAngle(3.14 /2)
        LeftShoulder:SetDesiredAngle(-3.14 /2)
        RightHip:SetDesiredAngle(3.14 /2)
        LeftHip:SetDesiredAngle(-3.14 /2)
end

local lastTick = 0

function move(time)
        local amplitude = 1
        local frequency = 1
          local deltaTime = time - lastTick
          lastTick = time

        local climbFudge = 0
        local setAngles = false

          if (jumpAnimTime > 0) then
                  jumpAnimTime = jumpAnimTime - deltaTime
          end

        if (pose == "FreeFall" and jumpAnimTime <= 0) then
                playAnimation("fall", fallTransitionTime, Humanoid)
        elseif (pose == "Seated") then
                playAnimation("sit", 0.5, Humanoid)
                return
        elseif (pose == "Running") then
                playAnimation("walk", 0.1, Humanoid)
        elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
--                print("Wha " .. pose)
                stopAllAnimations()
                amplitude = 0.1
                frequency = 1
                setAngles = true
        end

--        if (setAngles) then
        if (false) then
                desiredAngle = amplitude * math.sin(time * frequency)

                RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
                LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
                RightHip:SetDesiredAngle(-desiredAngle)
                LeftHip:SetDesiredAngle(-desiredAngle)
        end

        -- Tool Animation handling
        local tool = getTool()
        if tool then
        
                animStringValueObject = getToolAnim(tool)

                if animStringValueObject then
                        toolAnim = animStringValueObject.Value
                        -- message recieved, delete StringValue
                        animStringValueObject.Parent = nil
                        toolAnimTime = time + .3
                end

                if time > toolAnimTime then
                        toolAnimTime = 0
                        toolAnim = "None"
                end

                animateTool()                
        else
                stopToolAnimations()
                toolAnim = "None"
                toolAnimInstance = nil
                toolAnimTime = 0
        end
end

-- connect events
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Humanoid.Climbing:connect(onClimbing)
Humanoid.GettingUp:connect(onGettingUp)
Humanoid.FreeFalling:connect(onFreeFall)
Humanoid.FallingDown:connect(onFallingDown)
Humanoid.Seated:connect(onSeated)
Humanoid.PlatformStanding:connect(onPlatformStanding)
Humanoid.Swimming:connect(onSwimming)

-- setup emote chat hook
Game.Players.LocalPlayer.Chatted:connect(function(msg)
        local emote = ""
        if (string.sub(msg, 1, 3) == "/e ") then
                emote = string.sub(msg, 4)
        elseif (string.sub(msg, 1, 7) == "/emote ") then
                emote = string.sub(msg, 8)
        end
        
        if (pose == "Standing" and emoteNames[emote] ~= nil) then
                playAnimation(emote, 0.1, Humanoid)
        end
--        print("===> " .. string.sub(msg, 1, 3) .. "(" .. emote .. ")")
end)


-- main program

local runService = game:service("RunService");

-- print("bottom")

-- initialize to idle
playAnimation("idle", 0.1, Humanoid)
pose = "Standing"

while Figure.Parent~=nil do
        local _, time = wait(0.1)
        move(time)
end
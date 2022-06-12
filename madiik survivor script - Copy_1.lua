--[[TODO

--]]

function clerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do 
        com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end

plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
animate = char:findFirstChild("Animate")
if animate then
animate:Destroy()
end
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera

pcall(function() char:findFirstChild('charmodel'):Destroy() char:findFirstChild('SurvivorScript').Disabled = true char:findFirstChild('SurvivorScript'):Destroy() char:findFirstChild'FakeHead':Destroy()
plr.PlayerGui:findFirstChild'BaseGui':Destroy() end)

script.Name = 'SurvivorScript'

charmodel = Instance.new("Model", char)
charmodel.Name = "charmodel"

local rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
rm.Name = "Right Shoulder"

local lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
lm.Name = "Left Shoulder"

local rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
rlegm.Name = "Right Hip"

local llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
llegm.Name = "Left Hip"

neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)

rj.C0 = CFrame.new(0, -1.5, 0)
rj.C1 = CFrame.new(0, -1.5, 0)

function LoadChatColorModule()
    local COLOR_TABLE, Get, GetId
    COLOR_TABLE = {
        BrickColor.new("Bright red"),
        BrickColor.new("Bright blue"),
        BrickColor.new("Earth green"),
        BrickColor.new("Bright violet"),
        BrickColor.new("Bright orange"),
        BrickColor.new("Bright yellow"),
        BrickColor.new("Light reddish violet"),
        BrickColor.new("Brick yellow")
    }
    function Get(name)
        return COLOR_TABLE[GetId(name) + 1]
    end
    function GetId(name)
        local length = #name
        local modifier = (length % 2 == 0) and 1 or 0
        local value = 0
        for index = 1, length do
            if (length - index + modifier) % 4 < 2 then
                value = value + string.byte(name, index)
            else
                value = value - string.byte(name, index)
            end
        end
        return value % 8
    end
    return {
        COLOR_TABLE = COLOR_TABLE,
        Get = Get,
        GetId = GetId
    }
end

local ChatColor = LoadChatColorModule()
local PocketColor = BrickColor.new(ChatColor.Get(plr.Name).Name)

local pack = Instance.new("Part", charmodel)
pack.BrickColor = BrickColor.new('Brown')
pack.FormFactor = 'Custom'
pack.CanCollide = false
pack.Material = 'SmoothPlastic'
pack.BottomSurface = 'SmoothNoOutlines'
pack.LeftSurface = 'SmoothNoOutlines'
pack.RightSurface = 'SmoothNoOutlines'
pack.BackSurface = 'SmoothNoOutlines'
pack.FrontSurface = 'SmoothNoOutlines'
pack.Size = Vector3.new(1.9, 1.7, .8)
local weld = Instance.new("Weld", pack)
weld.C0 = CFrame.new(0, 0, -torso.Size.z/2 - (pack.Size.z/2))
weld.Part0 = pack
weld.Part1 = torso

local pack2 = pack:clone()
pack2.Parent = charmodel
pack2.Size = Vector3.new(1.7, .6, .7)
local weld2 = Instance.new("Weld", pack)
weld2.C0 = CFrame.new(0,(pack.Size.y/2 - (pack2.Size.y/2)) + .05, 0)
weld2.Part0 = pack2
weld2.Part1 = pack

local pack2 = pack:clone()
pack2.Parent = charmodel
pack2.Size = Vector3.new(1.7, .6, .7)
local weld2 = Instance.new("Weld", pack)
weld2.C0 = CFrame.new(0,(pack.Size.y/2 - (pack2.Size.y/2)) + .05, 0)
weld2.Part0 = pack2
weld2.Part1 = pack

local strap = pack:clone()
strap.Parent = charmodel
strap.Size = Vector3.new(.3, 1.05, 1.05)
local weldstrap = Instance.new("ManualWeld", strap)
weldstrap.C0 = CFrame.new(ra.Size.x/2 ,-(la.Size.y/2 - strap.Size.y/2) - .025, 0)
weldstrap.Part0 = strap
weldstrap.Part1 = ra

local strap2 = pack:clone()
strap2.Parent = charmodel
strap2.Size = Vector3.new(.3, 1.05, 1.05)
local weldstrap2 = Instance.new("ManualWeld", strap2)
weldstrap2.C0 = CFrame.new(-la.Size.x/2,-(la.Size.y/2 - strap2.Size.y/2) - .025, 0)
weldstrap2.Part0 = strap2
weldstrap2.Part1 = la

local pack3 = pack:clone()
pack3.Parent = charmodel
pack3.BrickColor = PocketColor
pack3.Size = Vector3.new(1.7, .6, .8)
local weld3 = Instance.new("Weld", pack)
weld3.C0 = CFrame.new(0,pack.Size.y/2 - pack3.Size.y/2 - .1,-.1)
weld3.Part0 = pack3
weld3.Part1 = pack

local pack4 = pack:clone()
pack4.Parent = charmodel
pack4.BrickColor = PocketColor
pack4.Size = Vector3.new(1.4, .6, .8)
local weld4 = Instance.new("Weld", pack)
weld4.C0 = CFrame.new(0,-.4,-.1)
weld4.Part0 = pack4
weld4.Part1 = pack

local radio = pack:clone()
radio.Parent = charmodel
radio.BrickColor = BrickColor.new()
radio.Size = Vector3.new(.2, 2, .2)
Instance.new("CylinderMesh", radio).Scale = Vector3.new(.2, 1, .2)
local weld4 = Instance.new("Weld", pack)
weld4.C0 = CFrame.new(.5,-.8,.1)
weld4.Part0 = radio
weld4.Part1 = pack

rsc0 = rm.C0
lsc0 = lm.C0
neckc0 = neck.C0
rootc0 = rj.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
speed = 0.25
angle = 0
mvmnt = 0
anglespeed = 1
humanoid.WalkSpeed = 8
ctrl = false
stopsprint = false
action = false
sprinting = false
time_sprinted = 0
sound_play_time = 0

local debounce = false
local knife = false
local knifeslash = false

mouse.KeyDown:connect(function(k)
    repeat wait() until action == false
    if not action then
    if k:byte() == 48 then
        sprinting = true
        humanoid.WalkSpeed = 18
    end
    if k == '2' or k == 'c' then
        if not prone then
            ctrl = not ctrl
            if ctrl then
            humanoid.WalkSpeed = 5
            else
            humanoid.WalkSpeed = 8
            end
        end
    end
    if k == "f" then
        flashlight = not flashlight
        if flashlight then
            do
            knife = false
                if charmodel:findFirstChild("Knife") then
                charmodel:findFirstChild("Knife"):Destroy()
            end
                local part = Instance.new("Part", charmodel)
                part.CanCollide = false
                part.FormFactor = 'Custom'
                part.Name = "Flashlight"
                part.Size = Vector3.new(.4, .4, 2.1)
                part:breakJoints()
                local mesh = Instance.new("SpecialMesh", part)
                mesh.TextureId = "rbxassetid://115984370"
                mesh.MeshId = "rbxassetid://115955313"
                mesh.Scale = Vector3.new(.7, .7, .7)
                local weld = Instance.new("Weld", part)
                weld.Part0 = part
                weld.Part1 = ra
                weld.C0 = CFrame.Angles(math.rad(70), 0, -math.rad(10))
                weld.C1 = CFrame.new(-.08, -1.225, .05)


                local point = Instance.new("PointLight", part)
                point.Range = 10
                local spot = Instance.new("SpotLight", part)
                spot.Shadows = true
                spot.Range = 45
                spot.Angle = 60
                spot.Brightness = 3
            end
        else
            if charmodel:findFirstChild("Flashlight") then
                charmodel:findFirstChild("Flashlight"):Destroy()
            end
        end
    end
    if k == "x" then
        ctrl = false
        prone = true
        humanoid.WalkSpeed = 2.5
    end
    if k == "k" then
        knife = not knife
        if knife then
            flashlight = false
            if charmodel:findFirstChild("Flashlight") then
                charmodel:findFirstChild("Flashlight"):Destroy()
            end
        local part = Instance.new("Part", charmodel)
                part.CanCollide = false
                part.FormFactor = 'Custom'
                part.Name = "Knife"
                part.Size = Vector3.new(.2, 1.7, .25)
                part:breakJoints()
                local weld = Instance.new("Weld", part)
                weld.Part0 = part
                weld.Part1 = ra
                weld.C0 = CFrame.Angles(math.pi/2, 0, -math.rad(10))
                weld.C1 = CFrame.new(0, -1, -.45)
                Instance.new("BlockMesh", part).Scale = Vector3.new(.5, 1, .8)
                local part2 = Instance.new("Part", part)
                part2.CanCollide = false
                part2.FormFactor = 'Custom'
                part2.Name = "Knife"
                part2.BrickColor = BrickColor.Black()
                part2.Size = Vector3.new(.3, 1.2, .3)
                part2:breakJoints()
                local weld2 = Instance.new("Weld", part2)
                weld2.Part0 = part2
                weld2.Part1 = part
                weld2.C1 = CFrame.new(0, -.45, 0)
                Instance.new("BlockMesh", part2).Scale = Vector3.new(.5, 1, .8)
        else
            if charmodel:findFirstChild("Knife") then
                charmodel:findFirstChild("Knife"):Destroy()
            end
        end
    end
end
end)

mouse.KeyUp:connect(function(k)
    repeat wait() until action == false
    if not action then
        repeat wait() until action == false
    if k:byte() == 48 then
        sprinting = false
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 10 and hitz and time_sprinted >= .8 then
            time_sprinted = 0
        action = 'StopSprinting'
        end
        humanoid.WalkSpeed = 8
        if ctrl then
            humanoid.WalkSpeed = 5
        end
        if prone then
            humanoid.WalkSpeed = 2.55
        end
    end
    if k == 'x' then
        prone = false
        if ctrl then
            humanoid.WalkSpeed = 5
        else
            humanoid.WalkSpeed = 8
        end
    end
    end
end)


mouse.Button1Down:connect(function()
    if knife == true then
        if debounce then return end
        local slashs = Instance.new("Sound", head)
        slashs.SoundId = "rbxasset://sounds/swordslash.mp3"
        slashs.Volume = 1
        slashs.Pitch = 2
        slashs.Name = 'Slash'
        slashs:play()
        debounce = true
        knifeslash = true
        wait(.35)
        if charmodel:findFirstChild('Knife') then
            local killdeb = false
            charmodel:findFirstChild('Knife').Touched:connect(function(hit)
                if knifeslash then
                if killdeb then return end
                    if hit and hit.Parent and hit.Parent:findFirstChild("Humanoid") and hit.Parent.Name ~= char.Name then
                        killdeb = true
                        hit.Parent:findFirstChild("Humanoid"):TakeDamage(math.random(45,50))
                        local hitsound = Instance.new("Sound", head)
                        hitsound.SoundId = "rbxasset://sounds/metal.mp3"
                        hitsound.Volume = 1
                        hitsound.Name = 'Hit'
                        hitsound:play()
                        wait(.5)
                        hitsound:Destroy()
                        slashs:Destroy()
                    end
                end
            end)
        end
        knifeslash = false
        wait(.5)
        debounce = false
    end
end)

plr.Chatted:connect(function(msg)
    if msg == "/e dance" then
        action = 'Dancing'
    end
    if msg == "/e point" then
        action = 'Pointing'
    end
    if msg == "/e wave" then
        action = 'Waving'
    end
    if msg == "/e cheer" then
        action = 'Cheering'
    end
    if msg == "/e squat" then
        action = 'Squatting'
    end
    if msg == "/e sit" then
        action = 'Sitting'
    end
end)

Controls = game:service'ControllerService':children()[1]

local fakehead = head:clone()
fakehead.Parent = char
fakehead.Name = 'FakeHead'
head.Transparency = 1
for i,v in pairs(fakehead:children()) do
    if v:IsA'Sound' or v:IsA'Decal' then
        v:Destroy()
    end
end

for i,v in pairs(head:children()) do
    if v:IsA'Sound' then
        v:Destroy()
    end
end

waitingloop = false

local fakeweld = Instance.new("Weld", fakehead)
fakeweld.Part0 = head
fakeweld.Part1 = fakehead

humanoid.Jumping:connect(function()
    if not action or not prone then
        action = 'Jumping'
    end
end)

local ScreenGui = Instance.new("ScreenGui", plr.PlayerGui)
ScreenGui.Name = "BaseGui"
local WhatObject = Instance.new("TextLabel", ScreenGui)
WhatObject.Size = UDim2.new(0, 50, 0, 10)
WhatObject.BackgroundColor3 = Color3.new(.25, .25, .25)
WhatObject.BackgroundTransparency = .45
WhatObject.TextColor3 = Color3.new(1,1,1)
WhatObject.TextXAlignment = 'Left'
WhatObject.Visible = false
local WhatObjectI = Instance.new("TextLabel", ScreenGui)
WhatObjectI.Size = UDim2.new(0, 50, 0, 10)
WhatObjectI.BackgroundColor3 = Color3.new(.05, .05, .05)
WhatObjectI.TextColor3 = Color3.new(1,1,1)
WhatObjectI.FontSize = "Size12"
WhatObjectI.TextYAlignment = 'Top'
WhatObjectI.TextXAlignment = 'Left'
WhatObjectI.Visible = false
WhatObjectI.ZIndex = 3

local RadioFrame = Instance.new("Frame", ScreenGui)
RadioFrame.Size = UDim2.new(0, 90, 0, 30)
RadioFrame.Position = UDim2.new(0, 0, .4, 0)
RadioFrame.BackgroundColor3 = Color3.new(.25, .25, .25)

local InventoryBut = Instance.new("TextButton", ScreenGui)
InventoryBut.Size = UDim2.new(0, 90, 0, 30)
InventoryBut.Text = 'Inventory'
InventoryBut.TextColor3 = Color3.new(1,1,1)
InventoryBut.TextScaled = true
InventoryBut.Position = UDim2.new(.4, 0, 0, 0)
InventoryBut.BackgroundColor3 = Color3.new(.25, .25, .25)

local InventoryGui = Instance.new("Frame", ScreenGui)
InventoryGui.Size = UDim2.new(.6, 0, .6, 0)
InventoryGui.BackgroundColor3 = Color3.new(.25, .25, .25)
InventoryGui.Position = UDim2.new(.2, 0, -1, 0)

InventoryBut.TouchTap:connect(function()
    InvVisible = not InvVisible
    if InvVisible then
        InventoryGui:TweenPosition(UDim2.new(.2, 0, .2, 0), "Out", "Quad", .35, true)
    elseif not InvVisible then
        InventoryGui:TweenPosition(UDim2.new(.2, 0, -1, 0), "Out", "Quad", .35, true)
    end
end)
InventoryBut.MouseButton1Down:connect(function()
    InvVisible = not InvVisible
    if InvVisible then
        InventoryGui:TweenPosition(UDim2.new(.2, 0, .2, 0), "Out", "Quad", .35, true)
    elseif not InvVisible then
        InventoryGui:TweenPosition(UDim2.new(.2, 0, -1, 0), "Out", "Quad", .35, true)
    end
end)

Buildings = {}

local WoodenFence = Instance.new("Part")
WoodenFence.Size = Vector3.new(10, 5, 1)
WoodenFence.Anchored = true
WoodenFence.Material = 'Wood'
WoodenFence.BrickColor = BrickColor.new'Brown'
table.insert(Buildings, {WoodenFence = 'Wooden Fence'})

for y = 1, 4 do
    for x = 1, 4 do
    local slot = Instance.new("ImageLabel", InventoryGui)
    slot.Name = "Slot"..tostring(#InventoryGui:children())
    slot.Size = UDim2.new(.155, 0, .2, 0)
    slot.ZIndex = 2
    slot.Position = UDim2.new(.2+((x-1)/4)*.8, 0, .025+(y-1)/4, 0)
    slot.BackgroundColor3 = Color3.new(.35, .35, .35)
    local stack = Instance.new("TextLabel", slot)
    stack.Size = UDim2.new(0, 0, 0, 25)
    stack.Position = UDim2.new(.95, 0, 1, -25)
    stack.TextXAlignment = 'Right'
    stack.FontSize = "Size12"
    stack.ZIndex = 3
    stack.TextColor3 = Color3.new(1,1,1)
    stack.BackgroundTransparency = 1
    stack.TextStrokeTransparency = .5
    stack.Visible = false
    stack.TextScaled = true
    Instance.new("StringValue", slot).Name = 'ItemName'
    Instance.new("StringValue", slot).Name = 'Description'
    Instance.new("NumberValue", slot).Name = 'Stack'
    Instance.new("BoolValue", slot).Name = 'Functionable'
    Instance.new("StringValue", slot.Functionable).Name = 'Function'
    slot.Functionable.Value = false
        slot.Functionable.Changed:connect(function()
                if slot.Functionable.Function.Value == 'Place' then
                    slot.MouseButton1Down:connect(function()
                        InvVisible = false
                        InventoryGui:TweenPosition(UDim2.new(.2, 0, -1, 0), "Out", "Quad", .35, true)
                        local PlaceObject
                        for i,v in pairs(Buildings) do
                            if v.Name == slot.Name.Value then
                                PlaceObject = v:clone()
                                PlabeObject.Parent = workspace
                            end
                        end
                        local Placed = false
                        mouse.KeyDown:connect(function(k)
                            if Placed then return end
                            if k == "r" then
                                if PlaceObject:IsA'Model' then
                                    PlabeObject.Dragger:AxisRotate()
                                end
                                if PlaceObject:IsA'Part' then
                                    PlaceObject.Rotation = Vector3.new(PlabeObject.Rotation.X, PlabeObject.Rotation.Y+90, PlabeObject.Rotation.Z)
                                end
                            end
                        end)
                        mouse.Move:connect(function()
                            if Placed then return end
                            PlaceObject:TranslateBy(Vector3.new(mouse.Hit.x, mouse.Hit.y, mouse.Hit.z))
                        end)
                        mouse.Button1Down:connect(function()
                            Placed = true
                        end)
                    end)
                end
        end)
        slot.Stack.Changed:connect(function()
            if slot.Stack.Value == '0' then
                stack.Visible = false
            else
                stack.Visible = true
                stack.Text = slot.Stack.Value
                stack.Size = UDim2.new(0, -stack.TextBounds.x, 0, 25)
            end
        end)
        slot.MouseEnter:connect(function()
            if slot.Description.Value ~= '' then
                    WhatObjectI.Parent = slot
                    WhatObjectI.Position = UDim2.new(0, 0, 1, 0)
                    WhatObjectI.Text = slot.Description.Value
                    wait(0)
                    WhatObjectI.Size = UDim2.new(0, WhatObjectI.TextBounds.x, 0, WhatObjectI.TextBounds.Y)
                    WhatObjectI.Visible = true
            end
        end)
        slot.MouseLeave:connect(function()
            WhatObjectI.Visible = false
        end)
    end
end

InventoryGui.Slot1.Image = "rbxassetid://154927249"
InventoryGui.Slot1.Description.Value = [[A regular flashlight,
Equip with F.]]

InventoryGui.Slot2.Image = "rbxassetid://154931868"
InventoryGui.Slot2.Description.Value = [[It's a survival knife,
slaughter or gather materials!
Equip with K.]]

InventoryGui.Slot3.Description.Value = [[It's wood,
You can build or use it as material.]]
InventoryGui.Slot3.Stack.Value = 10
InventoryGui.Slot3.Image = "rbxassetid://154979500"

InventoryGui.Slot4.ItemName.Value = "Wooden Fence"
InventoryGui.Slot4.Description.Value = [[Defending building.]]
InventoryGui.Slot4.Stack.Value = 1
InventoryGui.Slot4.Functionable.Function.Value = 'Place'

radiosound = Instance.new("Sound", head)
radiosound.Volume = 1
radiosound.Name = 'IMPOSSIBRU'

Music = {
    ['1'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142386276")
    radiosound.SoundId = "rbxassetid://142386276"
    radiosound.Pitch = 1
    end;
    ['2'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142329020")
    radiosound.SoundId = "rbxassetid://142329020"
    end;
    ['3'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://145262991")
    radiosound.SoundId = "rbxassetid://145262991"
    end;
    ['4'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142603004")
    radiosound.SoundId = "rbxassetid://142603004"
    end;
    ['5'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://143146783")
    radiosound.SoundId = "rbxassetid://143146783"
    end;
    ['6'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://27697392")
    radiosound.SoundId = "rbxassetid://27697392"
    end;
    ['7'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142281425")
    radiosound.SoundId = "rbxassetid://142281425"
    end;
    ['8'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://143654440")
    radiosound.SoundId = "rbxassetid://143654440"
    end;
    ['9'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142332086")
    radiosound.SoundId = "rbxassetid://142332086"
    end;
    ['10'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142373420")
    radiosound.SoundId = "rbxassetid://142373420"
    radiosound.Pitch = .525
    end;
    ['11'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://144003603")
    radiosound.SoundId = "rbxassetid://144003603"
    radiosound.Pitch = 1
    end;
    ['12'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://149672967")
    radiosound.SoundId = "rbxassetid://149672967"
    end;
    ['13'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://153574819")
    radiosound.SoundId = "rbxassetid://153574819"
    end;
    ['14'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://152497436")
    radiosound.SoundId = "rbxassetid://152497436"
    end;
    ['15'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://145183026")
    radiosound.SoundId = "rbxassetid://145183026"
    end;
    ['16'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://149069781")
    radiosound.SoundId = "rbxassetid://149069781"
    end;
    ['17'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142290799")
    radiosound.SoundId = "rbxassetid://142290799"
    end;
    ['18'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142386784")
    radiosound.SoundId = "rbxassetid://142386784"
    end;
    ['19'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://144364636")
    radiosound.SoundId = "rbxassetid://144364636"
    end;
    ['20'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://153901645")
    radiosound.SoundId = "rbxassetid://153901645"
    end;
    ['21'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://146208956")
    radiosound.SoundId = "rbxassetid://146208956"
    end;
    ['22'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://147632089")
    radiosound.SoundId = "rbxassetid://147632089"
    end;
    ['23'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://147632111")
    radiosound.SoundId = "rbxassetid://147632111"
    end;
    ['24'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://149613358")
    radiosound.SoundId = "rbxassetid://149613358"
    end;
    ['25'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://148424799")
    radiosound.SoundId = "rbxassetid://148424799"
    end;
    ['26'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://145559291")
    radiosound.SoundId = "rbxassetid://145559291"
    end;
    ['27'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://152701334")
    radiosound.SoundId = "rbxassetid://152701334"
    end;
    ['28'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://149410799")
    radiosound.SoundId = "rbxassetid://149410799"
    end;
    ['29'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://143760499")
    radiosound.SoundId = "rbxassetid://143760499"
    end;
    ['30'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://145045424")
    radiosound.SoundId = "rbxassetid://145045424"
    end;
    ['31'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142402325")
    radiosound.SoundId = "rbxassetid://142402325"
    radiosound.Pitch = 0.575
    end;
    ['32'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142858688")
    radiosound.SoundId = "rbxassetid://142858688"
    radiosound.Pitch = 1
    end;
    ['33'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142339237")
    radiosound.SoundId = "rbxassetid://142339237"
    end;
    ['34'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142339342")
    radiosound.SoundId = "rbxassetid://142339342"
    end;
    ['35'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://145518162")
    radiosound.SoundId = "rbxassetid://145518162"
    end;
    ['36'] = function(plr)
    game:service'ContentProvider':Preload("rbxassetid://142677206")
    radiosound.SoundId = "rbxassetid://142677206"
    end;
}

local HowMuchMusic = 0
for _,_ in pairs(Music) do
    HowMuchMusic = HowMuchMusic + 1
end
RadioEnabled = false
local song
local current = 1
local CurrentNumber = Instance.new("TextLabel", RadioFrame)
CurrentNumber.Size = UDim2.new(0, 60, 0, 15)
CurrentNumber.Position = UDim2.new(0, 0, 0, -15)
CurrentNumber.TextColor3 = Color3.new(1,1,1)
CurrentNumber.BackgroundTransparency = 1
CurrentNumber.Text = tostring(current).."/"..HowMuchMusic
CurrentNumber.TextScaled = true
local OnOff = Instance.new("TextButton", RadioFrame)
OnOff.Size = UDim2.new(0, 60, 0, 28)
OnOff.Position = UDim2.new(0, 1, 0, 1)
OnOff.TextColor3 = Color3.new(1,1,1)
OnOff.BackgroundColor3 = Color3.new(.6, 0, 0)
OnOff.Text = 'OFF'
OnOff.TextScaled = true

function nextSong(current2)
    local CurrentSong = current2
    coroutine.wrap(function()
        for i = 1, 121 do
            if RadioEnabled and CurrentSong == current2 then
                wait(1)
            else return end
        end
        if RadioEnabled and CurrentSong == current then
            radiosound:stop()
            current = current + 1
            if current > HowMuchMusic then
                current = 1
            end
            for index,func in pairs(Music) do
                if index == tostring(current) then
                    func(plr)
                end
            end
        CurrentNumber.Text = tostring(current).."/"..HowMuchMusic
        radiosound:play()
        nextSong(current)
        end
    end)()
end

OnOff.MouseButton1Down:connect(function()
    RadioEnabled = not RadioEnabled
    if RadioEnabled then
        OnOff.BackgroundColor3 = Color3.new(0, .6, 0)
        OnOff.Text = 'ON'
        song = Music[tostring(current)]
        for index,func in pairs(Music) do
            if index == tostring(current) then
            func(plr)
            end
        end
        radiosound:play()
        nextSong(current)
    elseif not RadioEnabled then
        OnOff.BackgroundColor3 = Color3.new(.6, 0, 0)
        OnOff.Text = 'OFF'
        radiosound:pause()
    end
end)

OnOff.TouchTap:connect(function()
    RadioEnabled = not RadioEnabled
    if RadioEnabled then
        OnOff.BackgroundColor3 = Color3.new(0, .6, 0)
        OnOff.Text = 'ON'
        song = Music[tostring(current)]
        for index,func in pairs(Music) do
            if index == tostring(current) then
            func(plr)
            end
        end
        radiosound:play()
        CurrentNumber.Text = tostring(current).."/"..HowMuchMusic
        radiosound:play()
        nextSong(current)
    elseif not RadioEnabled then
        OnOff.BackgroundColor3 = Color3.new(.6, 0, 0)
        OnOff.Text = 'OFF'
        radiosound:pause()
    end
end)

local Next = Instance.new("TextButton", RadioFrame)
Next.Size = UDim2.new(0, 28, 0, 28)
Next.Position = UDim2.new(0, 61, 0, 1)
Next.TextColor3 = Color3.new(1,1,1)
Next.BackgroundTransparency = 1
Next.Text = '>'

Next.MouseButton1Down:connect(function()
radiosound:stop()
radiosound:stop()
current = current + 1
if current > HowMuchMusic then
    current = 1
end
CurrentNumber.Text = tostring(current).."/"..HowMuchMusic
song = Music[tostring(current)]
for index,func in pairs(Music) do
    if index == tostring(current) then
        func(plr)
    end
end
if RadioEnabled then
    radiosound:play()
end
end)

humanoid.Changed:connect(function(changed)
    --[[if ctrl and changed == 'Jump' then
        humanoid.Jump = false
        action = 'Rolling'
    end--]]
    if action ~= false or prone then
        humanoid.Jump = false
    end
end)

humanoid.Climbing:connect(function(speed)
    if speed > 4 then
        action = 'Climbing'
        humanoid.WalkSpeed = 8
    else 
        action = false
        if ctrl then
            humanoid.WalkSpeed = 5
        elseif prone then
            humanoid.WalkSpeed = 2.5
        end
    end
end)

mouse.Move:connect(function()
    if (mouse.Target ~= nil and mouse.Target:IsA('Part') and mouse.Target.Parent and mouse.Target.Parent:IsA('Model') and mouse.Target.Parent:findFirstChild'Humanoid') or (mouse.Target ~= nil and mouse.Target:IsA('Part') and mouse.Target.Parent and mouse.Target.Parent:IsA'Hat' and mouse.Target.Parent.Parent and mouse.Target.Parent.Parent:findFirstChild'Humanoid') then
        local target = mouse.Target
        WhatObject.Visible = true
        if target.Parent:IsA'Model' then
        WhatObject.Text = target.Parent.Name
        elseif target.Parent:IsA'Hat' then
            WhatObject.Text = target.Parent.Parent.Name
        end
        WhatObject.Size = UDim2.new(0, WhatObject.TextBounds.x, 0, 10)
        WhatObject.Position = UDim2.new(0, mouse.X + 10, 0, mouse.Y - 15)
    else
        WhatObject.Visible = false
    end
end)

wait()

local sound = Instance.new("Sound", head)
sound.Volume = .65
game:service'RunService'.Stepped:connect(function()
    if prone or ctrl then
     rootpart.CanCollide = false
    end
end)

idling = 0
dancingtime = 0

game:service'RunService'.RenderStepped:connect(function()
    if charmodel.Parent ~= char then charmodel.Parent = char end
    if fakehead.Parent ~= char then fakehead.Parent = char end
    if not loopedaction then
        local rscf = rsc0
        local lscf = lsc0
        local rlcf = rlc0
        local llcf = llc0
        local rjcf = rootc0
        local ncf = neckc0
        local rayz = Ray.new(rootpart.Position, Vector3.new(0, -4.1, 0))
        local hitz, enz = workspace:findPartOnRay(rayz, char)
        angle = (angle % 100) + anglespeed/10
        mvmnt = math.pi * math.sin(math.pi*2/100*(angle*10))
        for i,object in pairs(char:children()) do
            if object:IsA("Tool") then
                if not wldunknown then
                wldunknown = Instance.new("Weld", rarm)
                wldunknown.Name = "RightGrip"
                wldunknown.Part0 = rarm
                if object:findFirstChild("Handle") then
                wldunknown.Part1 = object:findFirstChild("Handle")
                end
                end
                tool = true
            elseif not object:IsA("Tool") then
                if tool then
                    pcall(function()
                        wldunknown:Destroy()
                        wldunknown:Destroy()
                    end)
                end
                tool = false
            end
        end
        if action ~= false then
            idling = 0
            if action == 'StopSprinting' then
                Controls.Parent = nil
                speed = 0.15
                local bodyvelocity = Instance.new("BodyVelocity", rootpart)
                bodyvelocity.maxForce = Vector3.new(1/0,0,1/0)
                bodyvelocity.velocity = rootpart.CFrame.lookVector * 16
                ncf = neckc0 * CFrame.Angles(math.rad(-12), -math.rad(15), 0)
                rscf = rsc0 * CFrame.Angles(math.rad(-21), 0, math.rad(4.5))
                lscf = lsc0 * CFrame.Angles(math.rad(-23.5), 0, -math.rad(3.5))
                rjcf = rootc0 * CFrame.new(0, -.35, 0) * CFrame.Angles(math.rad(15), math.rad(25), 0)
                llcf = llc0 * CFrame.new(0, .15, -.25) * CFrame.Angles(-math.rad(30), 0, -math.rad(5.5))
                rlcf = rlcf * CFrame.new(0, .05, -.15) * CFrame.Angles(math.rad(20), 0, math.rad(2))
                loopedaction = true
                for i = 0, 25 do
                    bodyvelocity.velocity = rootpart.CFrame.lookVector * (16 - i/1.5)
                    rm.C0 = clerp(rm.C0,rscf,speed)
                    lm.C0 = clerp(lm.C0,lscf,speed)
                    rj.C0 = clerp(rj.C0,rjcf,speed)
                    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                    llegm.C0 = clerp(llegm.C0,llcf,speed)
                    neck.C0 = clerp(neck.C0,ncf,speed)
                    wait()
                end
                bodyvelocity:Destroy()
                loopedaction = false
                stopsprint = false
                action = false
                Controls.Parent = game:service'ControllerService'
                humanoid.WalkSpeed = 8
                if ctrl then
                    humanoid.WalkSpeed = 5
                elseif prone then
                    humanoid.WalkSpeed = 2.5
                end
            end
            if action == "Climbing" then
                anglespeed = 2
                speed = 0.1
                ncf = neckc0 * CFrame.Angles(math.pi/3, 0, 0)
                rjcf = rootc0
                rscf = rsc0 * CFrame.new(0, -0.2 + -mvmnt*0.2, 0.45) * CFrame.Angles(math.pi/1.5, 0, -math.abs(mvmnt)*0.025)
                lscf = lsc0 * CFrame.new(0, -0.2 + mvmnt*0.2, 0.45) * CFrame.Angles(math.pi/1.5, 0, math.abs(mvmnt)*0.025)
                rlcf = rlc0 * CFrame.new(0, 0.3 + mvmnt*0.2, 0) * CFrame.Angles(math.pi/14, 0, 0)
                llcf = llc0 * CFrame.new(0, 0.3 + -mvmnt*0.2, 0) * CFrame.Angles(math.pi/14, 0, 0)
            end
            if action == 'Jumping' then
                if not prone or ctrl then
                loopedaction = true
                ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
                rjcf = rootc0 * CFrame.Angles(math.sin(angle)*0.025, 0, 0)
                rscf = rsc0 * CFrame.Angles(-math.pi/16, -math.sin(angle)*0.08, 0)
                lscf = lsc0 * CFrame.Angles(-math.pi/17, math.sin(angle)*0.08, 0)
                rlcf = rlc0 * CFrame.new(0, .45, -.45) * CFrame.Angles(-math.pi/16+-math.sin(angle)*0.125, -math.sin(angle)*0.08, math.rad(2.5))
                llcf = llc0 * CFrame.Angles(-math.pi/17+-math.sin(angle)*0.125, math.sin(angle)*0.08, -math.rad(2.5))
                for i = 0, 12 do
                    rm.C0 = clerp(rm.C0,rscf,speed)
                    lm.C0 = clerp(lm.C0,lscf,speed)
                    rj.C0 = clerp(rj.C0,rjcf,speed)
                    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                    llegm.C0 = clerp(llegm.C0,llcf,speed)
                    neck.C0 = clerp(neck.C0,ncf,speed)
                    wait()
                end
                end
                loopedaction = false
                action = false
            end
            if action == 'Pointing' then
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
                anglespeed = .5
                speed = 0.25
                ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.007, 0, 0)
                rjcf = rootc0 * CFrame.Angles(math.sin(angle)*0.0015, 0, 0)
                rscf = rsc0 * CFrame.Angles(math.pi/2, -math.sin(angle)*0.008, 0)
                lscf = lsc0 * CFrame.Angles(0, math.sin(angle)*0.008, 0)
                rlcf = rlc0 * CFrame.Angles(-math.sin(angle)*0.0015, -math.sin(angle)*0.008, math.rad(2.5))
                llcf = llc0 * CFrame.Angles(-math.sin(angle)*0.0015, math.sin(angle)*0.008, -math.rad(2.5))
                else
                action = false
                end
            end
            if action == 'Waving' then
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
                anglespeed = .5
                speed = 0.25
                ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.007, 0, 0)
                rjcf = rootc0 * CFrame.Angles(math.sin(angle)*0.0025, 0, 0)
                rscf = rsc0 * CFrame.Angles(0, -math.sin(angle)*0.008, math.pi/1.4+math.sin(angle)*.5)
                lscf = lsc0 * CFrame.Angles(0, math.sin(angle)*0.008, 0)
                rlcf = rlc0 * CFrame.Angles(-math.sin(angle)*0.0025, -math.sin(angle)*0.008, math.rad(2.5))
                llcf = llc0 * CFrame.Angles(-math.sin(angle)*0.0025, math.sin(angle)*0.008, -math.rad(2.5))
                else
                action = false
                end
            end
            if action == 'Cheering' then
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
                anglespeed = 2
                speed = 0.25
                ncf = neckc0 * CFrame.Angles(math.pi/24.85, 0, 0)
                rjcf = rootc0 * CFrame.new(0, math.abs(math.sin(angle)), 0)
                rscf = rsc0 * CFrame.Angles(math.pi-math.abs(math.sin(angle))*.25, 0, math.rad(2))
                lscf = lsc0 * CFrame.Angles(math.pi-math.abs(math.sin(angle))*.25, 0, -math.rad(2))
                rlcf = rlc0 * CFrame.Angles(0, 0, math.rad(5))
                llcf = llc0 * CFrame.Angles(0, 0, -math.rad(5))
                else
                action = false
                end
            end
            if action == 'Rolling' then
                loopedaction = true
                anglespeed = 2
                speed = 0.6
                Controls.Parent = nil
                local bodyvelocity = Instance.new("BodyVelocity", rootpart)
                bodyvelocity.maxForce = Vector3.new(1/0,1/0,1/0)
                bodyvelocity.velocity = rootpart.CFrame.lookVector * 10
                rj.C1 = CFrame.new()
                for roll = 0, 360, 2 do
                        ncf = neckc0 * CFrame.Angles(-math.pi/1.85, 0, 0)
                        rjcf = CFrame.new() * CFrame.new(0, -1, 0) * CFrame.Angles(-math.rad(roll), 0, 0)
                        rscf = rsc0 * CFrame.Angles(math.pi/2.5, 0, -math.rad(30))
                        lscf = lsc0 * CFrame.Angles(math.pi/2.5, 0, math.rad(30))
                        rlcf = rlc0 * CFrame.new(0, .6, -.75) * CFrame.Angles(-math.pi/2.5, 0, 0)
                        llcf = llc0 * CFrame.new(0, .6, -.75) * CFrame.Angles(-math.pi/2.5, 0, 0)
                        rm.C0 = clerp(rm.C0,rscf,speed)
                        lm.C0 = clerp(lm.C0,lscf,speed)
                        rj.C0 = clerp(rj.C0,rjcf,speed)
                        neck.C0 = clerp(neck.C0,ncf,speed)
                        rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
                        llegm.C0 = clerp(llegm.C0,llcf,speed)
                        wait()
                end
                rj.C0 = CFrame.new(0, -1.5, 0)
                rj.C1 = CFrame.new(0, -1.5, 0)
                bodyvelocity:Destroy()
                action = false
                Controls.Parent = game:service'ControllerService'
                loopedaction = false
            end
            if action == 'Dancing' then
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
                dancingtime = dancingtime + 1/60
                anglespeed = 1
                speed = 0.25
                if dancingtime <= 12 then
                ncf = neckc0 * CFrame.Angles(math.pi/24.85, 0, 0)
                rjcf = rootc0 * CFrame.new(0, 0.75 + -math.abs(math.sin(angle)), 0) * CFrame.Angles(0, 0, math.sin(angle)*.1)
                rscf = rsc0 * CFrame.Angles(math.pi-math.abs(math.sin(angle))*.5, 0, math.rad(2))
                lscf = lsc0 * CFrame.Angles(math.pi-math.abs(math.sin(angle))*.5, 0, -math.rad(2))
                rlcf = rlc0 * CFrame.Angles(math.sin(angle)*.25, 0, math.rad(5))
                llcf = llc0 * CFrame.Angles(-math.sin(angle)*.25, 0, -math.rad(5))
                elseif dancingtime <= 22 then
                ncf = neckc0 * CFrame.Angles(math.pi/24.85, 0, 0)
                rjcf = rootc0 * CFrame.new(0, math.abs(math.cos(angle)*.05), 0) * CFrame.Angles(0, math.sin(angle)*.035, math.sin(angle)*.015)
                rscf = rsc0 * CFrame.Angles(math.pi/2-math.abs(math.sin(angle))*.5, 0, math.rad(2))
                lscf = lsc0 * CFrame.Angles(math.pi/2-math.abs(math.sin(angle))*.5, 0, -math.rad(2))
                rlcf = rlc0 * CFrame.Angles(math.sin(angle)*.05, 0, math.rad(5))
                llcf = llc0 * CFrame.Angles(-math.sin(angle)*.05, 0, -math.rad(5))
                elseif dancingtime >= 22 then
                    dancingtime = 0
                end
                else
                action = false
                end
            end
            if action == 'Squatting' then
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
                anglespeed = 0.15
                speed = 0.25
                ncf = neckc0 * CFrame.Angles(math.pi/12-math.sin(angle)*0.005,0,0)
                rscf = rsc0 * CFrame.new(-.35, 0, -.35+math.sin(angle)*0.005) * CFrame.Angles(math.pi/2.2+math.sin(-angle)*.005, 0, -math.pi/4.5)
                lscf = lsc0 * CFrame.new(.35, 0, -.35+math.sin(angle)*0.005) * CFrame.Angles(math.pi/2.2+math.sin(angle)*.005, 0, math.pi/4.5)
                rjcf = rootc0 * CFrame.new(0, -.9, .55) * CFrame.Angles(-math.pi/12+math.sin(angle)*0.005, 0, 0)
                llcf = llc0 * CFrame.new(0, .95, -.55) * CFrame.Angles(math.pi/12, 0, -math.rad(2))
                rlcf = rlcf * CFrame.new(0, .95, -.55) * CFrame.Angles(math.pi/14, 0, math.rad(2))
                else
                action = false
                end
            end
            if action == 'Sitting' then
                if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
                anglespeed = 0.15
                speed = 0.15
                ncf = neckc0 * CFrame.Angles(math.sin(angle)*0.005,0,0)
                rscf = rsc0 * CFrame.Angles(-math.pi/16, 0, math.pi/24)
                lscf = lsc0 * CFrame.Angles(-math.pi/16, 0, -math.pi/24)
                rjcf = rootc0 * CFrame.new(0, -1.9, 0) * CFrame.Angles(math.pi/16+math.sin(angle)*0.005, 0, 0)
                llcf = llc0 * CFrame.new(0, .95, -.75) * CFrame.Angles(math.pi/5, 0, -math.rad(7))
                rlcf = rlcf * CFrame.new(0, .95, -.75) * CFrame.Angles(math.pi/5, 0, math.rad(7))
                else
                action = false
                end
            end
        end
        if hitz and hitz.Material == Enum.Material.Grass or hitz and hitz.Material == Enum.Material.Fabric or hitz and hitz.Material == Enum.Material.Pebble or hitz and hitz.Material == Enum.Material.Sand then
            sound.SoundId = "rbxasset://sounds/grass2.mp3"
        elseif hitz and hitz.Material == Enum.Material.Plastic or hitz and hitz.Material == Enum.Material.SmoothPlastic then
            sound.SoundId = "rbxasset://sounds/plasticplastic.mp3"
        elseif hitz and hitz.Material == Enum.Material.Brick or hitz and hitz.Material == Enum.Material.Slate or hitz and hitz.Material == Enum.Material.Granite or hitz and hitz.Material == Enum.Material.Concrete or hitz and hitz.Material == Enum.Material.Marble then
            sound.SoundId = "rbxasset://sounds/stone.mp3"
        elseif hitz and hitz.Material == Enum.Material.Ice then
            sound.SoundId = "rbxasset://sounds/ice2.mp3"
        elseif hitz and hitz.Material == Enum.Material.CorrodedMetal or hitz and hitz.Material == Enum.Material.DiamondPlate then
            sound.SoundId = "rbxasset://sounds/metal3.mp3"
        elseif hitz and hitz.Material == Enum.Material.Wood then
            sound.SoundId = "rbxasset://sounds/woodwood.mp3"
        end
        if not action then
        if humanoid.Sit then
            ncf = neckc0 * CFrame.Angles(0, 0, 0)
            rjcf = rootc0 * CFrame.new(0, -.5, 0) * CFrame.Angles(math.rad(10), 0, 0)
            rscf = rsc0 * CFrame.Angles(-math.rad(10), 0, math.rad(5))
            lscf = lsc0 * CFrame.Angles(-math.rad(10), 0, -math.rad(5))
            rlcf = rlc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2-math.rad(10), 0, math.rad(5.5))
            llcf = llc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.pi/2-math.rad(10), 0, -math.rad(5.5))
        elseif not hitz and torso.Velocity.y <= -0.5 then
            anglespeed = 1
            if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 15 then
                    if not waitingloop then 
                    waitingloop = true
                        coroutine.wrap(function()
                            repeat wait() until hitz
                            action = 'StopSprinting'
                        end)()
                    end
            end
            anglespeed = 3
            local VelY = torso.Velocity.Y
            if VelY <= -85 then VelY = -85 end
                ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
                rjcf = rootc0 * CFrame.Angles(math.sin(angle)*0.025, 0, 0)
                rscf = rsc0 * CFrame.Angles(-math.rad(VelY)-math.sin(angle)*0.48, 0, math.rad(15.5+math.random(-1,3)))
                lscf = lsc0 * CFrame.Angles(-math.rad(VelY)+math.sin(angle)*0.48, 0, -math.rad(15.5+math.random(1,3)))
                rlcf = rlc0 * CFrame.Angles(-math.pi/16+-math.sin(angle)*0.35, -math.sin(angle)*0.008, math.rad(2.5))
                llcf = llc0 * CFrame.Angles(-math.pi/17+math.sin(angle)*0.35, math.sin(angle)*0.008, math.rad(-2.5))
        elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 2 then
            sound_play_time = 0
            if stopsprint and time_sprinted >= .8 then
                time_sprinted = 0
                action = 'StopSprinting'
            end
            time_sprinted = 0
            anglespeed = 0.15
            if prone then
            speed = 0.1
            ncf = neckc0 * CFrame.Angles(math.pi/2.1, 0, 0)
            rscf = rsc0 * CFrame.Angles(math.pi/.2-math.rad(10), -math.sin(angle)*0.02, 0)
            lscf = lsc0 * CFrame.Angles(math.pi/.2-math.rad(10), math.sin(angle)*0.02, 0)
            rjcf = rootc0 * CFrame.new(0, -.95, 0) * CFrame.Angles(-math.pi/2, 0, 0)
            llcf = llc0 * CFrame.new(0, 0, -.15) * CFrame.Angles(0, 0, math.rad(-5))
            rlcf = rlcf * CFrame.new(0, 0, -.15) * CFrame.Angles(0, 0, math.rad(5))
            elseif ctrl then
            speed = 0.15
            ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
            rscf = rsc0 * CFrame.Angles(0, -math.sin(angle)*0.08, math.pi/18)
            lscf = lsc0 * CFrame.Angles(0, math.sin(angle)*0.08, -math.pi/18)
            rjcf = rootc0 * CFrame.new(0, -1.25, 0)
            llcf = llc0 * CFrame.new(0, 0, -.4999) * CFrame.Angles(-math.pi/2.2, 0, 0)
            rlcf = rlcf * CFrame.new(0, 1.25, -.85)
            elseif not ctrl and not prone then
            speed = 0.15
            idling = idling + 1/60
            if idling >= 60 then
            ncf = neckc0 * CFrame.Angles(math.pi/12-math.sin(angle)*0.005,0,0)
            rscf = rsc0 * CFrame.new(-.35, 0, -.35+math.sin(angle)*0.005) * CFrame.Angles(math.pi/2.2+math.sin(-angle)*.005, 0, -math.pi/4.5)
            lscf = lsc0 * CFrame.new(.35, 0, -.35+math.sin(angle)*0.005) * CFrame.Angles(math.pi/2.2+math.sin(angle)*.005, 0, math.pi/4.5)
            rjcf = rootc0 * CFrame.new(0, -.9, .55) * CFrame.Angles(-math.pi/12+math.sin(angle)*0.005, 0, 0)
            llcf = llc0 * CFrame.new(0, .95, -.55) * CFrame.Angles(math.pi/12, 0, -math.rad(2))
            rlcf = rlcf * CFrame.new(0, .95, -.55) * CFrame.Angles(math.pi/14, 0, math.rad(2))
            else
            ncf = neckc0 * CFrame.Angles(-math.sin(angle)*0.07, 0, 0)
            rjcf = rootc0 * CFrame.Angles(math.sin(angle)*0.025, 0, 0)
            rscf = rsc0 * CFrame.Angles(0, -math.sin(angle)*0.08, 0)
            lscf = lsc0 * CFrame.Angles(0, math.sin(angle)*0.08, 0)
            rlcf = rlc0 * CFrame.Angles(-math.sin(angle)*0.025, -math.sin(angle)*0.08, math.rad(2.5))
            llcf = llc0 * CFrame.Angles(-math.sin(angle)*0.025, math.sin(angle)*0.08, -math.rad(2.5))
        end
            end
        elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude <= 10 then
            if stopsprint and time_sprinted >= .8 then
                action = 'StopSprinting'
            end
            sound_play_time = sound_play_time + 1/60
            time_sprinted = 0
            idling = 0
            anglespeed = 1.5
            if prone then
            speed = 0.1
            anglespeed = .85
            ncf = neckc0 * CFrame.Angles(math.pi/2.1, 0, 0)
            rscf = rsc0 * CFrame.new(0, .7+ math.sin(angle)*.35, .1 + math.cos(-angle)*.1) * CFrame.Angles(math.pi/.2-math.rad(10), -math.sin(angle)*0.02, -math.pi/8)
            lscf = lsc0 * CFrame.new(0, .7+ -math.sin(angle)*.35, .1 - math.cos(angle)*.1) * CFrame.Angles(math.pi/.2-math.rad(10), math.sin(angle)*0.02, math.pi/8)
            rjcf = rootc0 * CFrame.new(0, -.95, 0) * CFrame.Angles(-math.pi/2, 0, 0)
            llcf = llc0 * CFrame.new(0, .35 + -math.sin(angle)*.35, 0) * CFrame.new(0, 0, -.15) * CFrame.Angles(0, 0, math.rad(-5))
            rlcf = rlcf * CFrame.new(0, .35 + math.sin(angle)*.35, 0) * CFrame.new(0, 0, -.15) * CFrame.Angles(0, 0, math.rad(5))
            elseif ctrl then
            speed = 0.25
            if sound_play_time >= .4 then
                sound.Volume = .45
                sound:play()
                sound_play_time = 0
            end
            ncf = neckc0 * CFrame.Angles(math.pi/12,0,0)
            rscf = rsc0 * CFrame.new(0, 0, math.sin(angle)*0.025) * CFrame.Angles(math.pi/24+math.sin(-angle)*.05, 0, math.pi/18-math.abs(mvmnt)*0.02)
            lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.025) * CFrame.Angles(math.pi/24+math.sin(angle)*.05, 0, -math.pi/18+math.abs(mvmnt)*0.02)
            rjcf = rootc0 * CFrame.new(0, -.7, 0) * CFrame.Angles(math.abs(math.sin(angle))*0.025 + -math.pi/12, 0, 0)
            llcf = llc0 * CFrame.new(0, .85 + .2 - math.cos(angle)*.2, -.5 + (-.4+math.sin(angle)*0.25)) * CFrame.Angles(math.pi/18 + -math.pi/10 - math.sin(angle)*.45, 0, 0)
            rlcf = rlcf * CFrame.new(0, .85 + .2 + math.cos(angle)*.2, -.5 + (-.25-math.sin(angle)*0.25)) * CFrame.Angles(math.pi/18 + -math.pi/10 + math.sin(angle)*.45, 0, 0)
            elseif not ctrl and not prone then
            speed = 0.25
            if sound_play_time >= .4 then
                sound.Volume = .65
                sound:play()
                sound_play_time = 0
            end
            rjcf = rootc0 * CFrame.Angles(math.abs(math.sin(angle))*0.025 + -math.pi/64, 0, 0)
            rscf = rsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(angle)*.5, 0, -math.abs(mvmnt)*0.02)
            lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(-angle)*.5, 0, math.abs(mvmnt)*0.02)
            rlcf = rlc0 * CFrame.new(0, .075 + -math.cos(-angle)*.075, -.05+math.sin(angle)*0.1) * CFrame.Angles(math.sin(-angle)*.45, 0, math.rad(.5))
            llcf = llc0 * CFrame.new(0, .075 - -math.cos(angle)*.075, -.05-math.sin(angle)*0.1) * CFrame.Angles(math.sin(angle)*.45, 0, -math.rad(.5))
            end
        elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 15 then
            idling = 0
            time_sprinted = time_sprinted + 1/60
            sound_play_time = sound_play_time + 1/60
            stopsprint = true --when released
            anglespeed = 2
            speed = .3
            if sound_play_time >= .375 then
                sound.Volume = .75
                sound:play()
                sound_play_time = 0
            end
            local RotVelocityZ = torso.RotVelocity.Y
            if RotVelocityZ >= 15 then
                RotVelocityZ = 15
            elseif RotVelocityZ <= -15 then
                RotVelocityZ = -15
            end
            ncf = neckc0 * CFrame.Angles(0, -math.sin(angle)*.1, 0)
            rscf = rsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(angle)*1.1, 0, -math.abs(mvmnt)*0.02)
            lscf = lsc0 * CFrame.new(0, 0, math.sin(angle)*0.125) * CFrame.Angles(math.pi/24+math.sin(-angle)*1.1, 0, math.abs(mvmnt)*0.02)
            rjcf = rootc0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.abs(math.sin(angle))*0.055 + -math.pi/18, math.sin(angle)*.1, math.sin(angle)*.045 + math.rad(RotVelocityZ)*2.5)
            rlcf = rlc0 * CFrame.new(0, .3 + -math.cos(-angle)*.3, -.2+math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(-angle)*1.3, 0, math.rad(.5))
            llcf = llc0 * CFrame.new(0, .3 - -math.cos(angle)*.3, -.05-math.sin(angle)*0.25) * CFrame.Angles(-math.pi/18+math.sin(angle)*1.3, 0, -math.rad(.5))
            --rlcf -.2+math.sin(angle)*0.25
            --llcf -.05-math.sin(angle)*0.25
        end
        end
            if knife then
                if prone then
                    rscf = rsc0 * CFrame.Angles(math.rad(170), -math.rad(10), -.2)
                else 
                    rscf = rsc0 * CFrame.Angles(math.rad(50), -math.rad(10), -.2)
                end
            elseif flashlight then
                if prone then
                    rscf = rsc0 * CFrame.Angles(math.rad(170), -math.rad(10), -.2)
                else 
                    rscf = rsc0 * CFrame.Angles(math.rad(70), -math.rad(10), -.2)
                end
            end
            if knifeslash then
                if prone then
                    rscf = rsc0 * CFrame.Angles(math.rad(190), -math.rad(10), -.2)
                else
                    rscf = rsc0 * CFrame.Angles(math.rad(100), -math.rad(10), -.2)
                end
            end
    rm.C0 = clerp(rm.C0,rscf,speed)
    lm.C0 = clerp(lm.C0,lscf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
end
end)

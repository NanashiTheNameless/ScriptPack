-- GPlayr by ModernLukest. Made for v3rmillion, , etc.
-- Note that anyone can hear the music that you play. Just a clarification for what LocalScripts can do.

local char = game.Players.LocalPlayer.Character



-- CREATING BUTTONS, LABELS, FRAMES, ETC.
local gui = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui) -- CoreGui is buggy, since GPlayr is designed for PlayerGuis, not CoreGuis.
local openbtn = Instance.new("TextButton", gui)
local closebtn = Instance.new("TextButton", gui)
local openguibtn = Instance.new("TextButton", gui)
local playmusicint = Instance.new("Frame", gui)
local playmusicbtn = Instance.new("ImageButton", playmusicint)
local stopmusicbtn = Instance.new("ImageButton", playmusicint)
local musicidbox = Instance.new("TextBox", playmusicint)
local credit = Instance.new("TextLabel", playmusicint)
local title = Instance.new("TextLabel", playmusicint)

-- SIZING --

openbtn.Size = UDim2.new(0, 100, 0, 50)
closebtn.Size = UDim2.new(0, 100, 0, 50)
openguibtn.Size = UDim2.new(0, 100, 0, 50)
playmusicbtn.Size = UDim2.new(0, 50, 0, 50)
stopmusicbtn.Size = UDim2.new(0, 57, 0, 57)
musicidbox.Size = UDim2.new(0, 300, 0, 50)
credit.Size = UDim2.new(0, 300, 0, 20)
title.Size = UDim2.new(0, 300, 0, 30)
playmusicint.Size = UDim2.new(0, 300, 0, 500)

-- POSITIONING --

openbtn.Position = UDim2.new(0, 0, 0, 510)
closebtn.Position = UDim2.new(0, 0, 0, 510)
openguibtn.Position = UDim2.new(0, 0, 0, 590)
playmusicbtn.Position = UDim2.new(0, 50, 0, 200)
stopmusicbtn.Position = UDim2.new(0, 175, 0, 197)
musicidbox.Position = UDim2.new(0, 0, 0, 100)
credit.Position = UDim2.new(0, 0, 0, 470)
title.Position = UDim2.new(0, 0, 0, 0)
playmusicint.Position = UDim2.new(0, 200, 0, 100)

-- SET TEXT --

title.Text = "GPlayr (BETA)"
credit.Text = "GPlayr & radio scripting by Developer / ModernLukest"
musicidbox.Text = "Enter Sound ID Here"
openbtn.Text = "Take Out Radio"
closebtn.Text = "Put Away Radio"
openguibtn.Text = "Open/Close Music GUI"

-- SET IMAGE IDS --
playmusicbtn.Image = "rbxassetid://499381047"
stopmusicbtn.Image = "rbxassetid://499381006"

-- BACKGROUND COLOR3 --

playmusicint.BackgroundColor3 = Color3.new(136, 136, 136)
openbtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
closebtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
openguibtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
musicidbox.BackgroundColor3 = Color3.fromRGB(109, 109, 109)

-- BACKGROUND TRANSPARENCY --

playmusicint.BackgroundTransparency = 0.9
playmusicbtn.BackgroundTransparency = 1
stopmusicbtn.BackgroundTransparency = 1
musicidbox.BackgroundTransparency = 0.43
credit.BackgroundTransparency = 1
title.BackgroundTransparency = 1

-- BORDER SIZE PIXEL --

musicidbox.BorderSizePixel = 0
openbtn.BorderSizePixel = 3
closebtn.BorderSizePixel = 3
openguibtn.BorderSizePixel = 3

-- FONTS --
musicidbox.Font = "SourceSansLight"
credit.Font = "SourceSansLight"
title.Font = "SourceSansLight"


-- TEXT SCALED --
credit.TextScaled = true
title.TextScaled = true

-- TEXT WRAPPED --
musicidbox.TextWrapped = true
credit.TextWrapped = true
title.TextWrapped = true
openguibtn.TextWrapped = true

-- FONT SIZE --
musicidbox.FontSize = "Size28"

-- ACTIVE --
playmusicint.Active = true

-- DRAGGABLE --
playmusicint.Draggable = true

-- GUI FUNCTIONS (MAIN) --

-- set up the stuff --
isGuiOpen = false
closebtn.Visible = false
playmusicint.Visible = false
openguibtn.Visible = false

openbtn.MouseButton1Click:connect(function()
openbtn.Visible = false
closebtn.Visible = true

local radio = Instance.new("Part", char)
radio.Name = "Radio"
local mesh = Instance.new("FileMesh", radio)
mesh.MeshId = "http://www.roblox.com/asset/?id=212302951"
mesh.TextureId = "http://www.roblox.com/asset/?id=212303049"
mesh.Scale = Vector3.new(4, 4, 4)
mesh.VertexColor = Vector3.new(1, 1, 1)
mesh.Offset = Vector3.new(0, 0, 0)


local function weldBetween(a, b)
   local weld = Instance.new("ManualWeld")
   weld.Part0 = a
   weld.Part1 = b
   weld.C0 = CFrame.new()
   weld.C1 = b.CFrame:inverse() * a.CFrame
   weld.Parent = a
   return weld;
end
local hand = radio:clone()
hand.Parent=char
hand.CFrame=char:WaitForChild("Torso").CFrame*CFrame.new(Vector3.new(0,0,0.9))*CFrame.Angles(0,math.rad(180),math.rad(45))
weldBetween(char:WaitForChild("Torso"), hand)
hand.CanCollide=true
hand.Anchored=false

sound = Instance.new("Sound", hand) -- we will now call the radio "hand"
sound.Volume = 0.5
sound.Pitch = 1

openguibtn.Visible = true
char:FindFirstChild("Radio"):Destroy()
end)


closebtn.MouseButton1Click:connect(function()
openbtn.Visible = true
closebtn.Visible = false
openguibtn.Visible = false
playmusicint.Visible = false
isGuiOpen = false
char:WaitForChild("Radio"):Destroy()
end)

playmusicbtn.MouseButton1Click:connect(function()
sound:stop()
wait(0.2)
sound.SoundId = "rbxassetid://"..musicidbox.Text
sound:play()
end)

stopmusicbtn.MouseButton1Click:connect(function()
sound:stop()
end)


openguibtn.MouseButton1Click:connect(function()
if isGuiOpen == false then isGuiOpen = true
playmusicint.Visible = true else isGuiOpen = false playmusicint.Visible = false
end
end)
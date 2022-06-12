local xRes = 30
local yRes = 25
local ppf = 205
 
-- Localize Functions --
local Workspace = Workspace
local iNew = Instance.new
local mFloor = math.floor
local cfNew = CFrame.new
local c3New = Color3.new
local u2New = UDim2.new
local newRay = Ray.new
local mAbs = math.abs
local mMax = math.max
local mMin = math.min
local Script = script
local Game = Game
local Tick = tick
local Wait = Wait
 
-- Wait for char
repeat Wait() until Game.Players.LocalPlayer.Character
 
-- Player declarations
local Player = game.Players.LocalPlayer
    local Char = Player.Character
local Camera = Workspace.CurrentCamera
Camera.CameraSubject = Char.Torso 
Camera.CameraType = 2 
	--[[ local Camera = Instance.new("Camera", Char) 
Camera.CameraSubject = Char.Head ]] 
 
-- Basic declarations
pcall(function() Char.Camera:remove() end)
local Cam = iNew("BillboardGui") 
	Cam.Name = "Camera"
	Cam.Parent = Char
	Cam.Adornee = Char.Head
	Cam.Size = UDim2.new(0, 200, 0, 200)
	Cam.StudsOffset = Vector3.new(0, 5, 0)
local Image23123132 = iNew("Frame",Cam)
Image23123132.Size = UDim2.new(0.75,0,0.75,0)
Image23123132.Position = UDim2.new(0.0475,0,0.175,0)
Image23123132.BackgroundColor3 = Color3.new(255/255,255/255,255/255)
local Image = iNew("Frame",Cam)
Image.Size = UDim2.new(0.7,0,0.7,0)
Image.Position = UDim2.new(0.05,0,0.2,0)
Image.BackgroundColor3 = Color3.new(255/255,255/255,255/255)
local Type = iNew("TextButton",Cam)
Type.Text = "Normal"
local Fps = iNew("TextLabel",Cam)
Fps.Position = UDim2.new(0,0,0,-5) 
local Res = iNew("TextLabel",Cam)
Res.Position = UDim2.new(0,0,0,0) 
local c3Black = c3New(0, 0, 0)
local zRes = mMin(xRes, yRes)
local Debounce = false
local Pixels = {}
 
-- Change type
Type.MouseButton1Down:connect(function()
    Type.Text = Type.Text == "Normal" and "ASCII" or "Normal"
end)
 
-- Display resolution
Res.Text = "Resolution: " .. xRes .. " x " .. yRes
 
-- Camera declarations
local xSize = 3
local ySize = 2
 
-- Create pixels
for x = 1, xRes do
    Pixels[x] = {}
    for y = 1, yRes do
        local Pixel = iNew("TextLabel")
        Pixel.BackgroundColor3 = c3New(0, 0, 0)
        Pixel.BorderColor3 = c3New(0, 0, 0)
        Pixel.TextColor3 = c3New(0, 0, 0)
        Pixel.BackgroundTransparency = 0
        Pixel.BorderSizePixel = 0
        Pixel.Name = x .. "x" .. y
        Pixel.Size = u2New(1 / xRes, 0, 1 / yRes, 0)
        Pixel.Position = u2New((x - 1) / xRes, 0, (y - 1) / yRes, 0)
        Pixel.Visible = false
        Pixel.ZIndex = 2
        Pixel.Parent = Image
        Pixels[x][yRes - y + 1] = Pixel
    end
end
 
-- Ray casting
local function castRay(Pos, Dir, Ignore)
    return Workspace:FindPartOnRay(newRay(Pos, Dir.unit * 999.999), Ignore)
end
 
while true do 
 
                -- Declarations
                local cameraFrame = Camera.CoordinateFrame
                local pixelsRendered = 0
                local Start = Tick()
 
                -- Render
                for x = 1, xRes do
                    for y = 1, yRes do
                        local Pixel = Pixels[x][y]
                        if Type.Text == "Normal" then
                            Pixel.BackgroundColor3 = c3Black
                            Pixel.BackgroundTransparency = 0
                        else
                            Pixel.TextColor3 = c3Black
                            Pixel.BackgroundTransparency = 1
                        end
                        local xPos = x - xRes / 2 - 0.5
                        local yPos = y - yRes / 2 - 0.5
                        local Pos0 = (cameraFrame * cfNew(xPos / zRes * 4, yPos / zRes * 4,  0)).p
                        local Pos1 = (cameraFrame * cfNew(xPos / zRes * 5, yPos / zRes * 5, -1)).p
                        local Hit, Pos = castRay(Pos0, (Pos1 - Pos0))
                        if Hit then
                            local r, g, b = Hit.Color.r, Hit.Color.g, Hit.Color.b
                            local Dif = Hit.CFrame:inverse() * cfNew(Pos)
                            if mAbs(Dif.x) - Hit.Size.x / 2 == 0 then
                                r = mMax(mMin(r + 0.1, 1), 0)
                                g = mMax(mMin(g + 0.1, 1), 0)
                                b = mMax(mMin(b + 0.1, 1), 0)
                            elseif mAbs(Dif.y) - Hit.Size.x / 2 == 0 then
                            elseif mAbs(Dif.z) - Hit.Size.x / 2 == 0 then
                                r = mMax(mMin(r - 0.1, 1), 0)
                                g = mMax(mMin(g - 0.1, 1), 0)
                                b = mMax(mMin(b - 0.1, 1), 0)
                            end
                            if Type.Text == "Normal" then
                                Pixel.Text = ""
                                Pixel.BackgroundColor3 = c3New(r, g, b)
                            else
                                Pixel.Text = string.char(math.random(60, 255))
                                Pixel.TextColor3 = c3New(r, g, b)
                            end
                            Pixel.Visible = true
                        else
                            Pixel.Visible = false
                        end
                        pixelsRendered = pixelsRendered + 1
                        if pixelsRendered % ppf == 0 then Wait() end
                    end
                end
 
                -- End declarations
                Fps.Text = "Fps: " .. mFloor(1 / (Tick() - Start) + 0.5)
 
 
end
 

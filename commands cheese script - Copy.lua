--[[
 
<---------------------------------------------------------------------------------->
<--------------------------------| 08C's SB-Gui! |--------------------------------->
<---------------------------------------------------------------------------------->
 
]]
local ME = "luxulux"-->> luxulux: Your name here!
local plr = game.Players[ME]
local char = plr.Character
 
script.Parent = nil
 
local Oceaned = false
 
function insert(ID)
ROOT=game:service'InsertService':LoadAsset(ID):children()[1]
return ROOT
end
 
function CHEESE()
 
local Main = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame",Main)
MainFrame.Size = UDim2.new(0,160,0,260)
MainFrame.Position = UDim2.new(0.02,0,.3,0)
MainFrame.Style = 'RobloxRound'
 
function newButton()
local NewTextButton = Instance.new("TextButton",MainFrame)
NewTextButton.BackgroundTransparency = .7
NewTextButton.Size = UDim2.new(.5,0,.1,0)
NewTextButton.ZIndex = 2
NewTextButton.FontSize = 'Size11'
NewTextButton.TextColor3 = Color3.new(1,1,1)
NewTextButton.BorderSizePixel = 0
local NewFrame =  Instance.new("Frame",NewTextButton)
NewFrame.Size = UDim2.new(1,0,.5,0)
NewFrame.ZIndex = 3
NewFrame.BackgroundTransparency = .7
NewFrame.BorderSizePixel = 0
return NewTextButton
end
 
local Button1 = newButton()
local Button2 = newButton()
local Button3 = newButton()
local Button4 = newButton()
local Button5 = newButton()
local Button6 = newButton()
local Button7 = newButton()
local Button8 = newButton()
local Button9 = newButton()
local Button10 = newButton()
 
local Button11 = newButton()
local Button12 = newButton()
local Button13 = newButton()
local Button14 = newButton()
local Button15 = newButton()
local Button16 = newButton()
local Button17 = newButton()
local Button18 = newButton()
 
local Button19 = newButton()
local Button20 = newButton()
 
Button1.Position = UDim2.new(0,0,0,0)
Button1.Text = 'Day'
Button1.MouseButton1Click:connect(function()
game.Lighting.FogEnd = 99999999
game.Lighting.FogStart = 0
game.Lighting.TimeOfDay = 14
game.Lighting.GlobalShadows=false
game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
game.Lighting.ColorShift_Top = Color3.new(0,0,0)
game.Lighting.Ambient = Color3.new(94/255, 94/255, 94/255)
game.Lighting.Brightness = 1
game.Lighting.OutdoorAmbient = Color3.new(150/255,150/255,150/255)
game.Lighting.ShadowColor = Color3.new(0,0,0)
end)
 
Button19.Position = UDim2.new(0,0,0.2,0)
if Oceaned then
Button19.Text = 'UnOcean'
else
Button19.Text = 'Ocean'
end
Button19.MouseButton1Click:connect(function()
if Oceaned then
Oceaned = false
Button19.Text = 'Ocean'
workspace.Terrain:Clear()
elseif not Oceaned then
Oceaned = true
Button19.Text = 'UnOcean'
coroutine.resume(coroutine.create(function()
size = Vector3.new(200, 12, 200)
for X=(size.x/2)*-1,size.x/2  do
for Y=-1, size.y-1 do
for Z=(size.z/2)*-1, size.z/2 do
workspace.Terrain:SetWaterCell(X, Y, Z, 0, 0)
end
end
end
end))
end
end)
 
 
Button2.Position = UDim2.new(0.5,0,0,0)
Button2.Text = 'Night'
Button2.MouseButton1Click:connect(function()
game.Lighting.FogEnd = 2000
game.Lighting.FogStart = 0
game.Lighting.TimeOfDay = .4
game.Lighting.GlobalShadows=true
game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
game.Lighting.ColorShift_Top = Color3.new(0,0,0)
game.Lighting.Ambient = Color3.new(34/255, 34/255, 34/255)
game.Lighting.Brightness = 0
game.Lighting.OutdoorAmbient = Color3.new(150/255,150/255,150/255)
game.Lighting.ShadowColor = Color3.new(0,0,0)
end)
 
 
Button3.Position = UDim2.new(0,0,0.1,0)
Button3.Text = 'Clear'
Button3.MouseButton1Click:connect(function()
for _,v in pairs(game.Workspace:children()) do
        if v.className~='Camera' and v.Name~='Terrain' then
                v:remove()
        end
end
for _,v in pairs(game.Lighting:children()) do
        if v.className~='Camera' and v.Name~='Terrain' then
                v:remove()
        end
end
for _,v in pairs(game.Debris:children()) do
        if v.className~='Camera' and v.Name~='Terrain' then
                v:remove()
        end
end
for _,v in pairs(game.StarterGui:children()) do
        if v.className~='Camera' and v.Name~='Terrain' then
                v:remove()
        end
end
for _,v in pairs(game.StarterPack:children()) do
        if v.className~='Camera' and v.Name~='Terrain' then
                v:remove()
        end
end
for _,v in pairs(game.Workspace:children()) do
        if v.className~='Camera' and v.Name~='Terrain' then
                v:remove()
        end
end
wait()
local weeeee = Instance.new("Part")
weeeee.Parent = game.Workspace
weeeee.Name = 'BasePlate'
weeeee.Transparency = 0.4
weeeee.BrickColor = BrickColor.new("Black")
weeeee.Size = Vector3.new(700, 2, 700)
weeeee.Position = Vector3.new(0, 10, 0)
weeeee.CFrame = CFrame.new(0,10,0)
weeeee.Anchored = true
local op = Instance.new("SpawnLocation")
op.Parent = game.Workspace
op.Name = 'Buddernut xD'
op.Transparency = 0.5
op.Anchored = true
op.Position = Vector3.new(0, 10, 0)
op.Size = Vector3.new(5, 1, 5)
op.BrickColor = BrickColor.new("Black")
for _,v in pairs(game.Players:GetPlayers()) do
v:LoadCharacter()
end
end)
 
 
 
Button4.Position = UDim2.new(0.5,0,0.1,0)
Button4.Text = 'AD'
Button4.MouseButton1Click:connect(function()
local Glue = Instance.new("Glue",workspace)
local Hint = Instance.new("Hint",Glue)
Hint.Text = "Let's go to 08C's Protected Script Builder! No abusers there, it's protected!"
end)
 
Button5.Position = UDim2.new(0.5,0,0.2,0)
Button5.Text = 'Invisible'
Button5.MouseButton1Click:connect(function()
for _,v in pairs(char:children()) do
if v:IsA("BasePart") then
v.Transparency = 1
elseif v:IsA("Tool") or v:IsA("Hat") then
v.Handle.Transparency =1
end
end
char.Head.face.Transparency = 1
end)
 
Button6.Position = UDim2.new(0,0,0.3,0)
Button6.Text = 'Visible'
Button6.MouseButton1Click:connect(function()
for _,v in pairs(char:children()) do
if v:IsA("BasePart") then
v.Transparency = 0
elseif v:IsA("Tool") or v:IsA("Hat") then
v.Handle.Transparency =0
end
end
char.Head.face.Transparency = 0
end)
 
Button7.Position = UDim2.new(0.5,0,0.3,0)
Button7.Text = 'Remove Tools'
Button7.TextScaled=true
Button7.MouseButton1Click:connect(function()
for _,v in pairs(plr.Backpack:children()) do
if v:IsA("Tool") or v:IsA("HopperBin") then
v:Destroy()
end
end
end)
 
Button20.Position = UDim2.new(0,0,0.4,0)
Button20.TextWrapped = true
Button20.Text = 'Look Epic'
Button20.MouseButton1Click:connect(function()
insert(63043890).Parent = char
insert(11748356).Parent = char
insert(1235488).Parent = char
 
insert(112413777).Parent = char
insert(112413828).Parent = char
 
end)
 
 
Button8.Position = UDim2.new(0.5,0,0.4,0)
Button8.TextScaled = true
Button8.Text = 'Clear Apperence'
Button8.MouseButton1Click:connect(function()
for _,v in pairs(char:children()) do
if v:IsA("Hat") or v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") or v:IsA("BodyColors") then
v:Destroy()
end
end
char.Torso.roblox:Destroy()
Instance.new("BodyColors",char)
end)
 
Button9.Position = UDim2.new(0,0,0.5,0)
Button9.Text = 'Minecraft'
Button9.MouseButton1Click:connect(function()
for _,lowery in pairs(workspace:children()) do
        if lowery:IsA("BasePart") and lowery.Name~='Terrain' then
                lowery:remove()
        elseif lowery:IsA("Model") and lowery.Name~='Terrain' then
                lowery:remove()
                end end
for _,youzze in pairs(game.Players:GetPlayers()) do
        for _,popoo in pairs(youzze['Backpack']:children()) do
                if popoo:IsA("HopperBin") then
                        popoo:remove()
                elseif popoo:IsA("Tool") then
                        popoo:remove()
                elseif popoo:IsA("LocalScript") then
                        popoo:remove()
                elseif popoo:IsA("Script") then
                        popoo:remove()
                end
        end
end
 
local MINECRAFTBLOCK = Instance.new("Part",workspace)
MINECRAFTBLOCK.Size = Vector3.new(512, 3.6, 512)
MINECRAFTBLOCK.Position = Vector3.new(0,3,0)
MINECRAFTBLOCK.CFrame = CFrame.new(0,3,0)
MINECRAFTBLOCK.Anchored=true
MINECRAFTBLOCK.Locked=true
local MINECRAFYDECAL_FRONT = Instance.new("Texture",MINECRAFTBLOCK)
MINECRAFYDECAL_FRONT.Face = 'Front'
MINECRAFYDECAL_FRONT.Texture = 'http://www.roblox.com/asset/?id=15845672'
MINECRAFYDECAL_FRONT.StudsPerTileU = 4
MINECRAFYDECAL_FRONT.StudsPerTileV = 4
 
local MINECRAFYDECAL_BOTTOM = Instance.new("Texture",MINECRAFTBLOCK)
MINECRAFYDECAL_BOTTOM.Face = 'Bottom'
MINECRAFYDECAL_BOTTOM.Texture = 'http://www.roblox.com/asset/?id=15845626'
MINECRAFYDECAL_BOTTOM.StudsPerTileU = 4
MINECRAFYDECAL_BOTTOM.StudsPerTileV = 4
 
local MINECRAFYDECAL_LEFT = Instance.new("Texture",MINECRAFTBLOCK)
MINECRAFYDECAL_BOTTOM.Face = 'Left'
MINECRAFYDECAL_BOTTOM.Texture = 'http://www.roblox.com/asset/?id=15845672'
MINECRAFYDECAL_BOTTOM.StudsPerTileU = 4
MINECRAFYDECAL_BOTTOM.StudsPerTileV = 4
 
local MINECRAFYDECAL_Right = Instance.new("Texture",MINECRAFTBLOCK)
MINECRAFYDECAL_Right.Face = 'Right'
MINECRAFYDECAL_Right.Texture = 'http://www.roblox.com/asset/?id=15845672'
MINECRAFYDECAL_Right.StudsPerTileU = 4
MINECRAFYDECAL_Right.StudsPerTileV = 4
 
local MINECRAFYDECAL_TOP = Instance.new("Texture",MINECRAFTBLOCK)
MINECRAFYDECAL_TOP.Face = 'Top'
MINECRAFYDECAL_TOP.Texture = 'http://www.roblox.com/asset/?id=15845667'
MINECRAFYDECAL_TOP.StudsPerTileU = 4
MINECRAFYDECAL_TOP.StudsPerTileV = 4
 
local MINECRAFYDECAL_BACK = Instance.new("Texture",MINECRAFTBLOCK)
MINECRAFYDECAL_BACK.Face = 'Back'
MINECRAFYDECAL_BACK.Texture = 'http://www.roblox.com/asset/?id=15845672'
MINECRAFYDECAL_BACK.StudsPerTileU = 4
MINECRAFYDECAL_BACK.StudsPerTileV = 4
 
local sky = Instance.new("Sky",game.Lighting)
sky.SkyboxBk = 'http://www.roblox.com/asset/?id=73403132'
sky.SkyboxDn = 'http://www.roblox.com/asset/?id=73406830'
sky.SkyboxFt = 'http://www.roblox.com/asset/?id=73403151'
sky.SkyboxLf = 'http://www.roblox.com/asset/?id=73403157'
sky.SkyboxRt = 'http://www.roblox.com/asset/?id=73403146'
sky.SkyboxUp = 'http://www.roblox.com/asset/?id=73406914'
sky.CelestialBodiesShown = false
sky.Name = 'MinecraftSky'
 
for _,ok in pairs(game.Players:GetPlayers()) do
ok:LoadCharacter()
end
 
end)
 
Button10.Position = UDim2.new(0.5,0,0.5,0)
Button10.TextWrapped = true
Button10.Text = 'Kill All'
Button10.MouseButton1Click:connect(function()
for _,v in pairs(game.Players:GetPlayers()) do
if v.Name~=ME then
v.Character.Humanoid.Health = 0
end
end
end)
 
Button11.Position = UDim2.new(0,0,0.6,0)
Button11.TextWrapped = true
Button11.Text = 'Shutdown'
Button11.MouseButton1Click:connect(function()
Instance.new("ManualSurfaceJointInstance",workspace)
end)
 
Button12.Position = UDim2.new(0.5,0,0.6,0)
Button12.TextWrapped = true
Button12.Text = 'Car'
Button12.MouseButton1Click:connect(function()
local base = Instance.new("Part")
local rightbackwheel = Instance.new("Part")
local leftbackwheel = Instance.new("Part")
local rightfrontwheel = Instance.new("Part")
local leftfrontwheel = Instance.new("Part")
local seat = Instance.new("Seat")
local driverseat = Instance.new("VehicleSeat")
local idk = Instance.new("Part")
local umadbro = Instance.new("Part")
local hmmm = Instance.new("Decal")
local whyareyousomadbro = Instance.new("Decal")
local idkmesh = Instance.new("BlockMesh")
local car = Instance.new("Model")
car.Parent = game.Workspace
car.Name = 'car'
base.Parent = car
base.Position = Vector3.new(2, 19.4, 9.9)
base.Size = Vector3.new(4, 1.2, 11)
base.Name = 'Car_Base'
base.BrickColor = BrickColor.new('Black')
seat.Parent = car
seat.Position = Vector3.new(2, 20.6, 13.4)
seat.Size = Vector3.new(2, 1.2, 2)
seat.Name = 'Car_Seat'
seat.BrickColor = BrickColor.new('Black')
driverseat.Parent = car
driverseat.Position = Vector3.new(2, 20.8, 7.8)
driverseat.Size = Vector3.new(2, 1.6, 2)
driverseat.Name = 'Car_Driver_Seat'
driverseat.BottomSurface = 'Weld'
driverseat.HeadsUpDisplay = false
driverseat.MaxSpeed = 18
driverseat.Torque = 10
driverseat.TurnSpeed = 2
local w2 = Instance.new("Weld")
w2.Name = "Vehicle_Seat_Weld" 
w2.Parent = game.Workspace.car.Car_Driver_Seat 
w2.Part0 = game.Workspace.car.Car_Driver_Seat 
w2.Part1 = game.Workspace.car.Car_Base 
w2.C1 = CFrame.new(0,1.1,0)
driverseat.BrickColor = BrickColor.new('Black')
leftfrontwheel.Parent = car
leftfrontwheel.Position = Vector3.new(6, 19.4, 12.6)
leftfrontwheel.Size = Vector3.new(4, 4, 4)
leftfrontwheel.Name = 'Car_Left_Front_Wheel'
leftfrontwheel.LeftSurface = 'Hinge'
leftfrontwheel.TopSurface = 'Smooth'
leftfrontwheel.BottomSurface = 'Smooth'
leftfrontwheel.Shape = 'Cylinder'
leftfrontwheel.BrickColor = BrickColor.new('Black')
rightfrontwheel.Parent = car
rightfrontwheel.Position = Vector3.new(-2, 19.4, 12.4) -- -2, 6.509, 12.4
rightfrontwheel.Size = Vector3.new(4, 4, 4)
rightfrontwheel.Name = 'Car_Right_Front_Wheel'
rightfrontwheel.RightSurface = 'Hinge'
rightfrontwheel.TopSurface = 'Smooth'
rightfrontwheel.BottomSurface = 'Smooth'
rightfrontwheel.Shape = 'Cylinder'
rightfrontwheel.BrickColor = BrickColor.new('Black')
rightbackwheel.Parent = car
rightbackwheel.Position = Vector3.new(-2, 19.4, 5.2)
rightbackwheel.Size = Vector3.new(4, 4, 4)
rightbackwheel.Name = 'Car_Right_Back_Wheel'
rightbackwheel.RightSurface = 'Hinge'
rightbackwheel.TopSurface = 'Smooth'
rightbackwheel.BottomSurface = 'Smooth'
rightbackwheel.Shape = 'Cylinder'
rightbackwheel.BrickColor = BrickColor.new('Black')
leftbackwheel.Parent = car
leftbackwheel.Position = Vector3.new(6, 19.4, 5.2)
leftbackwheel.Size = Vector3.new(4, 4, 4)
leftbackwheel.Name = 'Car_Left_Back_Wheel'
leftbackwheel.LeftSurface = 'Hinge'
leftbackwheel.TopSurface = 'Smooth'
leftbackwheel.BottomSurface = 'Smooth'
leftbackwheel.Shape = 'Cylinder'
leftbackwheel.BrickColor = BrickColor.new('Black')
umadbro.Parent = car
umadbro.Size = Vector3.new(0, 6.8, 0)
umadbro.Position = Vector3.new(0.149, 23.388, 4.586)
umadbro.Material = 'Plastic'
umadbro.Name = 'Are_you?'
local lololololollll = Instance.new("BlockMesh")
lololololollll.Parent = umadbro
lololololollll.Scale = Vector3.new(0.2, 1, 0.2)
w2 = Instance.new("Weld")
w2.Name = "carweld" 
w2.Parent = umadbro
w2.Part0 = umadbro
w2.Part1 = base
w2.C1 = CFrame.new(1.48,3,5)
idk.Parent = car
idk.Size = Vector3.new(4, 2, 0.2)
idk.Position = Vector3.new(2.25, 25.788, 4.568)
idk.Material = 'Concrete'
idk.Name = 'idk'
w1 = Instance.new("Weld")
w1.Name = "car2weld" 
w1.Parent = idk
w1.Part0 = idk
w1.Part1 = base
w1.C1 = CFrame.new(-0.5,5.4,5)
idkmesh.Parent = idk
idkmesh.Scale = Vector3.new(1, 1, 0)
hmmm.Parent = idk
hmmm.Texture = 'http://www.roblox.com/asset/?id=27657101'
hmmm.Face = 'Front'
whyareyousomadbro.Parent = idk
whyareyousomadbro.Texture = 'http://www.roblox.com/asset/?id=27657101'
whyareyousomadbro.Face = 'Back'
end)
 
Button13.Position = UDim2.new(0,0,0.7,0)
Button13.TextScaled = true
Button13.Text = 'Free Camera'
Button13.MouseButton1Click:connect(function()
for _,v in pairs(game.Players:GetPlayers()) do
v.Character = nil
end
end)
 
Button14.Position = UDim2.new(0.5,0,0.7,0)
Button14.TextWrapped = true
Button14.Text = 'Character'
Button14.MouseButton1Click:connect(function()
for _,v in pairs(game.Players:GetPlayers()) do
v:LoadCharacter()
end
end)
 
 
Button15.Position = UDim2.new(0,0,0.8,0)
Button15.TextWrapped = true
Button15.Text = 'Blind Others'
Button15.MouseButton1Click:connect(function()
for _,v in pairs(game.Players:GetPlayers()) do
if v.Name~=ME then
local BlindingGUI  = Instance.new("ScreenGui",v.PlayerGui)
BlindingGUI.Name='BLIND'
BlindingFRAME = Instance.new("Frame",BlindingGUI)
BlindingFRAME.BackgroundColor3 = Color3.new(0,0,0)
BlindingFRAME.Size = UDim2.new(1,0,1,0)
end
end
end)
 
 
Button16.Position = UDim2.new(0.5,0,0.8,0)
Button16.TextWrapped = true
Button16.Text = 'Unblind Others'
Button16.MouseButton1Click:connect(function()
for _,v in pairs(game.Players:GetPlayers()) do
if v.PlayerGui['BLIND'] then
        v.PlayerGui.BLIND:Destroy()
end
end
end)
 
 
Button17.Position = UDim2.new(0,0,0.9,0)
Button17.TextWrapped = true
Button17.Text = 'BOOM'
Button17.MouseButton1Click:connect(function()
for i=1,20 do
local Exp = Instance.new("Explosion",workspace)
Exp.Position = Vector3.new(-i,i/4,i)
end
end)
 
 
Button18.Position = UDim2.new(0.5,0,0.9,0)
Button18.TextWrapped = true
Button18.Text = 'Flood'
Button18.MouseButton1Click:connect(function()
local Flood = Instance.new("Part",workspace)
Flood.Anchored=true
Flood.BrickColor = BrickColor.new('Bright blue')
Flood.Material = 'Ice'
Flood.Size = Vector3.new(2000,30,2000)
Flood.Transparency  = .5
Flood.CFrame = CFrame.new(0,-32,0)
coroutine.resume(coroutine.create(function()
while Flood.Position.y < 29 do
Flood.CFrame = Flood.CFrame + Vector3.new(0,.1,0)
wait()
end
end))
coroutine.resume(coroutine.create(function()
Flood.Touched:connect(function(hit)
if hit.Parent.Humanoid and hit.Parent.Torso then
hit.Parent.Torso:BreakJoints()
end
end)
end))
end)
 
 
Main.Parent = game.Players[ME].PlayerGui
end
 
CHEESE()
coroutine.resume(coroutine.create(function()
plr.CharacterAdded:connect(function(character)
CHEESE()
end)
end))
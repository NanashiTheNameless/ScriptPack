-------------------------------------------------------------------------------------------------MADE BY CALEB0702-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
wait()
script.Name = "_.:| E-Shield |:._"
--script.Parent = _EShield_
local LocalPlayer = game:service'Players'.LocalPlayer
local b, Platform = nil
local PlayerOnly = false
local Touched = {}
local Mouse = LocalPlayer:GetMouse()
local ShiftDown, CtrlDown, MouseDown, Mouse2Down, MouseDeb, Mouse2Tick = false, false, false, false, false, 0
 
function Create()
if b then pcall(function() b:Destroy() end) end
if Platform then pcall(function() Platform:Destroy() end) end
local t = LocalPlayer.Character:FindFirstChild("Torso")
local posit = Vector3.new(0, 50, 0)
if t then posit = t.Position end
Platform = Instance.new("Part") 
Platform.formFactor = "Custom"
Platform.Size = Vector3.new(10, 1, 10)
Platform.Transparency = 1
Platform.Anchored = true
Platform.CanCollide = true 
b = Instance.new("Part", game:service'Workspace') 
b.Position = posit
b.Shape = "Ball" 
b.Transparency = 0
b.Anchored = true
b.Reflectance = 0.3
b.Size = Mouse2Down and Vector3.new(25, 25, 25) or Vector3.new(15, 15, 15) 
b.Color = Mouse2Down and Color3.new(1, 0, 0) or Color3.new(0, 0, 1)
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth"
b.Locked = true
b.CanCollide = false
b.Changed:connect(function(w)
if w == "Parent" then
Create()
end
end)
b.Touched:connect(function(obj)
if obj.Name ~= "WillNotBeRemoved" and not TouchedStatus(obj) and not obj:IsDescendantOf(LocalPlayer.Character) and not obj:IsDescendantOf(game:service'Workspace'.CurrentCamera) and obj.Name ~= "Base" and obj.className == "Part" then
table.insert(Touched, obj)
if PlayerOnly then 
if GetPlayer(obj) then
Destroying(obj)
end
else
Destroying(obj)
end
end
end)
end
 
function GetRecursiveChildren(Parent)
    local ret = {}
    for i, v in pairs(Parent:GetChildren()) do
        if #v:GetChildren() > 0 then
            local childs = GetRecursiveChildren(v)
            for i1, v1 in pairs(childs) do
                ret[#ret + 1] = v1
            end
        end    
        ret[#ret + 1] = v
    end
    return ret
end
 
function GetPlayer(Target)
for _,v in pairs(game:service'Players':GetPlayers()) do 
if v.Character ~= nil and Target:IsDescendantOf(v.Character) then
return v 
end
end 
return nil
end 
 
function TouchedStatus(Target)
for _,v in pairs(Touched) do 
if v == Target then
return true
end
end 
return false
end 
 
function Destroying(obj)
local ran, err = coroutine.resume(coroutine.create(function()
if not Mouse2Down then
obj:BreakJoints()
obj.CanCollide = false
obj.Anchored = false
obj.formFactor = "Custom"
obj.Size = obj.Size * Vector3.new(math.random(), math.random(), math.random())
local bp = Instance.new("BodyPosition") 
bp.maxForce = Vector3.new(1/0,1/0,1/0)
bp.Parent = obj
local X, Y, Z = nil, nil, nil
coroutine.wrap(function()
while obj and obj.Parent do
X, Y, Z = math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)
wait(0.3)
end
end)()
coroutine.wrap(function()
while obj and obj.Parent do
bp.position = LocalPlayer.Character.Torso.Position + Vector3.new(X, Y, Z)
wait()
end
end)()
coroutine.wrap(function()
local transp = 0
for i = 1, 50 do
transp = transp + 0.02
obj.Transparency = transp
wait(0.05)
end
game:service'Debris':AddItem(obj, 0)
end)()
elseif Mouse2Down then
local selbox = Instance.new("SelectionBox", obj)
selbox.Adornee = obj
selbox.Color = BrickColor.new("Really red")
selbox.Transparency = 0
wait(2)
coroutine.wrap(function()
local transp = 0
local Size, Position = obj.Size, obj.Position
local brickTable = {}
game:service'Debris':AddItem(obj, 0)
for i = 1, math.random(2, 4) do
local x, y, z = math.random(), math.random(), math.random()
local Brick = Instance.new("Part")
Brick.Name = "WillNotBeRemoved"
Brick.Parent = game:service'Workspace'
Brick.BrickColor = BrickColor.new("White")
Brick.Size = Size * Vector3.new(x, y, z)
Brick.CFrame = CFrame.new(Position) * CFrame.Angles( x * 180, y * 180, z * 180)
Brick.Locked = true
Brick.Anchored = false
Brick.CanCollide = false
local Selection = Instance.new("SelectionBox", Brick)
Selection.Adornee = Brick
Selection.Color = BrickColor.new("White")
Selection.Transparency = 0
local BodyVelo = Instance.new("BodyVelocity", Brick)
BodyVelo.maxForce = Vector3.new(1/0, 1/0, 1/0)
BodyVelo.velocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
brickTable[#brickTable + 1] = {Brick, Selection}
end
for i = 1, 50 do
transp = transp + 0.02
for i1, v in pairs(brickTable) do
v[1].Transparency = transp
v[2].Transparency = transp
end
wait(0.05)
end
--for i, v in pairs(brickTable) do game:service'Debris':AddItem(v[1], 0) game:service'Debris':AddItem(v[2], 0) end
end)()
end
end))
if not ran then print(".:| EShield |:. " .. err) end
end
 
Create()
 
Mouse.Button1Down:connect(function()
MouseDown = true
end)
 
Mouse.Button1Up:connect(function()
MouseDown = false
end)
 
Mouse.KeyDown:connect(function(key)
local key = type(key) == "string" and key:lower() or "" 
if key == "r" then 
print = function() end 
script:Destroy()
for i, v in pairs(getfenv()) do pcall(function() v:Destroy() end) getfenv()[i] = nil end 
end
end)
 
Mouse.Button2Down:connect(function()
if not Mouse2Down then
Mouse2Tick = tick()
Mouse2Down = true
coroutine.wrap(function()
for i = 1.1, 0, -0.1 do if Mouse2Down then b.Color = Color3.new(0, 0, i) end wait(0.01) end
for i = 0, 1.1, 0.1 do if Mouse2Down then b.Color = Color3.new(i, 0, 0) end wait(0.01) end
end)()
coroutine.wrap(function()
for i = 15, 25 do if Mouse2Down then b.Size = Vector3.new(i, i, i) b.CFrame = CFrame.new(LocalPlayer.Character.Torso.Position) end wait(0.05) end
end)()
end
end)
 
Mouse.Button2Up:connect(function()
if Mouse2Down then
if math.floor(tick() - Mouse2Tick) > 1 then
Mouse2Down = false
coroutine.wrap(function()
for i = 1.1, 0, -0.1 do if not Mouse2Down then b.Color = Color3.new(i, 0, 0) end wait(0.01) end
for i = 0, 1.1, 0.1 do if not Mouse2Down then b.Color = Color3.new(0, 0, i) end wait(0.01) end
end)()
coroutine.wrap(function()
for i = 25, 15, -1 do if not Mouse2Down then b.Size = Vector3.new(i, i, i) b.CFrame = CFrame.new(LocalPlayer.Character.Torso.Position) end wait(0.05) end
end)()
end
end
end)
 
Mouse.KeyDown:connect(function(key)
if key == "0" then
ShiftDown = true
elseif key == "1" or key == "2" then
CtrlDown = true
end
end)
 
Mouse.KeyUp:connect(function(key)
if key == "0" then
ShiftDown = false
elseif key == "1" or key == "2" then
CtrlDown = false
end
end)
 
coroutine.wrap(function()
while wait(0.05) do
for i = 0.2, 0.8, 0.1 do
b.Transparency = i
wait(0.05)
end
for i = 0.7, 0.1, -0.1 do
b.Transparency = i
wait(0.05)
end
end
end)()
 
game:service'RunService'.Stepped:connect(function()
coroutine.resume(coroutine.create(function()
b.CFrame = CFrame.new(LocalPlayer.Character.Torso.Position)
end))
coroutine.resume(coroutine.create(function()
for i, v in pairs(Touched) do
if v.Parent == nil or v == nil then
table.remove(Touched, i)
end
end
end))
coroutine.resume(coroutine.create(function()
local Height = LocalPlayer.Character.Torso.CFrame.y - 3.5
if ShiftDown then
Height = Height - 0.25
if CtrlDown then
Height = Height - 0.75
end
end
local TargetCFrame = LocalPlayer.Character.Torso.CFrame 
local TargetAngle = LocalPlayer.Character.Torso.CFrame.lookVector
Platform.Parent = game:service'Workspace'.CurrentCamera
Platform.CFrame = CFrame.new(TargetCFrame.x, Height, TargetCFrame.z)        
Platform.CanCollide = true 
LocalPlayer.Character.Torso.CFrame = TargetCFrame * CFrame.new(0, -(TargetCFrame.y) + Height + 3.5, 0)
end))
coroutine.resume(coroutine.create(function()
if LocalPlayer.Parent ~= nil then
for i, v in pairs(GetRecursiveChildren(LocalPlayer.Character)) do
if v.className == "Part" then v.CanCollide = false end
end
end
end))
coroutine.resume(coroutine.create(function()
if MouseDown and not MouseDeb and not Mouse2Down then
MouseDeb = true
coroutine.wrap(function() wait(1) MouseDeb = false end)()
local dist = Instance.new("Part") 
dist.CFrame = CFrame.new(LocalPlayer.Character.Torso.Position)
dist.formFactor = "Custom"
dist.Shape = "Ball" 
dist.Name = "WillNotBeRemoved"
dist.Transparency = 0
dist.Reflectance = 0.1
dist.Size = Vector3.new(10, 10, 10) 
dist.BrickColor = BrickColor.new("New Yeller") 
dist.TopSurface = "Smooth" 
dist.Anchored = true
dist.BottomSurface = "Smooth"
dist.Locked = true
dist.CanCollide = false
dist.Parent = game:service'Workspace'
dist.Touched:connect(function(obj)
coroutine.resume(coroutine.create(function()
local Player = GetPlayer(obj)
if Player and Player ~= LocalPlayer and Player.Character and Player.Character:FindFirstChild("Torso") then
local BV = Instance.new("BodyVelocity", Player.Character.Torso)
BV.maxForce = Vector3.new(1/0, 1/0, 1/0)
BV.velocity = ((LocalPlayer.Character.Torso.Position - Player.Character.Torso.Position).unit * -50)
game:service'Debris':AddItem(BV, 1)
elseif not Player and obj ~= b and obj.Name ~= "Base" and not obj:IsDescendantOf(game:service'Workspace'.CurrentCamera) then
obj:BreakJoints()
obj.Anchored = false
obj.CanCollide = false
local BV = Instance.new("BodyVelocity", obj)
BV.maxForce = Vector3.new(1/0, 1/0, 1/0)
BV.velocity = ((LocalPlayer.Character.Torso.Position - obj.Position).unit * -50)
game:service'Debris':AddItem(BV, 1)
end
end))
end)
coroutine.wrap(function()
for i = 1, 100 do
dist.Transparency = dist.Transparency + 0.01
dist.Size = dist.Size + Vector3.new(1, 1, 1)
dist.CFrame = CFrame.new(LocalPlayer.Character.Torso.Position)
wait()
end
game:service'Debris':AddItem(dist, 0)
end)()
end
end))
end)
--(Edited By Angel Seth I dont own this script This is two scripts i edited togethier)--
for i, v in pairs(game.Players:GetChildren()) do
emit = Instance.new("ParticleEmitter")
emit.Parent = v.Character.Torso
emit.Texture = "http://www.roblox.com/asset/?id=292916914"
emit.VelocitySpread = 20
end
a=Instance.new("Sky",game.Lighting)
b={"Bk","Dn","Ft","Lf","Rt","Up"}
for i,v in pairs(b) do
a["Skybox"..v]="rbxassetid://244905904"
end
sc = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui) --:D its WORKS!
q = Instance.new("Frame", game.Players.LocalPlayer.PlayerGui.ScreenGui)
q.Name = "qe"
q.Position = UDim2.new(0, -10, 0, 0)
q.Size = UDim2.new(0, 260, 0, 90)
q.BackgroundColor3 = Color3.new(0,255,0)
q.Active = true
n = Instance.new("TextButton", game.Players.LocalPlayer.PlayerGui.ScreenGui.qe)
n.Position = UDim2.new(0, 0, 0, 0)
n.Size = UDim2.new(0, 260, 0, 30)
n.Style = "RobloxRoundDefaultButton"
n.Text = "Pepe Path"
n.Active = true
a = Instance.new("TextButton", game.Players.LocalPlayer.PlayerGui.ScreenGui.qe)
a.Name = "eq"
a.Position = UDim2.new(0, 0, 0, 30)
a.Size = UDim2.new(0, 260, 0, 30)
a.Style = "RobloxRoundDefaultButton"
a.Text = "Pepe Decal SPAM"
a.Active = true
no = Instance.new("TextButton", game.Players.LocalPlayer.PlayerGui.ScreenGui.qe)
no.Name = "nope"
no.Position = UDim2.new(0, 0, 0, 60)
no.Size = UDim2.new(0, 260, 0, 30)
no.Style = "RobloxRoundDefaultButton"
no.Text = "Pepe Music"
no.Active = true
--table.getn
game.Players.LocalPlayer.PlayerGui.ScreenGui.qe.TextButton.MouseButton1Down:connect(function()
Player = game.Players.LocalPlayer
 
bin = Instance.new("HopperBin",Player.Backpack)
bin.Name = "Pepe Path"
 
function onKeyDown(Key)
    if Key:lower() == "r" then
        for _,v in pairs(game.Workspace:GetChildren()) do
            if v.Name == "NewPart" then
                if v:findFirstChild("creator") and v.creator.Value == game.Players.LocalPlayer then
                    v:Remove()
                end
            end
        end
    end
end
 
function press(mouse)
    if sel == true then
        local hit = mouse.Target
        local point = mouse.Hit.p
        local s = Instance.new("Part")
        s.CanCollide = true
        s.Size=Vector3.new(6,6,6)
        s.Anchored = true
        s.BrickColor = BrickColor.Green()
        s.Transparency = 0
        s.Velocity = mouse.Hit.lookVector * 100
        s.Name = "NewPart"
        s.Material = "Neon"
        s.TopSurface = "Smooth"
        s.BottomSurface = "Smooth"
        s.Parent = game.Workspace
        local t = Instance.new("SelectionBox",s)
        t.Adornee = s
        t.Color3 = s.BrickColor.Color
        for i=0, 5 do
            local D = Instance.new("Decal")
            D.Name = "PEPE"
            D.Face = i
            D.Parent = s
            D.Texture = "http://www.roblox.com/asset/?id=244905904"
        end
        game:GetService("Debris"):AddItem(s,120)
        s.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Head.Position)
        s.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Torso.Position.x,game.Players.LocalPlayer.Character.Torso.Position.y-6,game.Players.LocalPlayer.Character.Torso.Position.z)
        s.CFrame = CFrame.new(s.Position,point)
        local r = Instance.new("ObjectValue")
        r.Value = game.Players.LocalPlayer
        r.Parent = s
        r.Name = "creator"
        wait()
        press(mouse)
    end
end
 
 
function onButton1Down(mouse)
    sel = true
    if sel == true then
        press(mouse)
    end
end
 
function onButton1Up(mouse)
    sel = false
end
 
function onEquippedLocal(mouse)
    if mouse == nil then
        print("Mouse not found")
        return
    end
    mouse.Icon = "rbxasset://textures\\GunCursor.png"
    mouse.Button1Down:connect(function()
        onButton1Down(mouse)
    end)
    mouse.Button1Up:connect(function()
        onButton1Up(mouse)
    end)
    mouse.KeyDown:connect(onKeyDown)
end
 
 
bin.Selected:connect(onEquippedLocal)
end)
--PEPE SPAM
game.Players.LocalPlayer.PlayerGui.ScreenGui.qe.nope.MouseButton1Down:connect(function()
     local s = Instance.new("Sound")
s.Name = "Sound"
s.SoundId = "http://www.roblox.com/asset/?id=264246827"
s.Volume = 1
s.Looped = true
s.archivable = false
s.Parent = game.Workspace
s:play()
end)
--PEPE SUIT ME
wait(1)
game.Players.LocalPlayer.PlayerGui.ScreenGui.qe.eq.MouseButton1Down:connect(function()
    local ID =244905904
function spamDecal(v)
    if v:IsA("Part") then
        for i=0, 5 do
            D = Instance.new("Decal")
            D.Name = "pepedecalxd"
            D.Face = i
            D.Parent = v
            D.Texture = ("http://www.roblox.com/asset/?id="..Id)
        end
    else
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                spamDecal(b)
            end
        end
    end
end
function decalspam(id)
    Id = id
    for i,v in pairs(game.Workspace:GetChildren()) do
        if v:IsA("Part") then
        for i=0, 5 do
            D = Instance.new("Decal")
            D.Name = "pepedecalxd"
            D.Face = i
            D.Parent = v
            D.Texture = ("http://www.roblox.com/asset/?id="..id)
        end
    else
        if v:IsA("Model") then
            for a,b in pairs(v:GetChildren()) do
                spamDecal(b)
            end
        end
    end
end
end
 
decalspam(ID)
end)
--RARE PEPE SCRIPT LOADED
dot = false
Player = game.Players.LocalPlayer
Character = Player.Character
ra = Character:FindFirstChild("Right Arm")
rl = Character:FindFirstChild("Right Leg")
la = Character:FindFirstChild("Left Arm")
ll = Character:FindFirstChild("Left Leg")
h = Character:FindFirstChild("Head")
to = Character:FindFirstChild("Torso")
Image = Instance.new("ImageLabel")
Character.Humanoid.MaxHealth = math.huge
wait()
Character.Humanoid.Health = math.huge
Billboard = Instance.new("BillboardGui")
t = Instance.new("HopperBin")
bb = Instance.new("BillboardGui",Character.Head)
bb.Enabled = true
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,200,0,50)
bb.StudsOffset = Vector3.new(0,1,0)
gui=Instance.new("TextBox",bb)
gui.Size = UDim2.new(0,200,0,50)
gui.Position=UDim2.new(0,0,0,-48)
gui.BackgroundColor3=Color3.new(255,255,255)
gui.BorderSizePixel = 0
gui.TextWrapped = true
gui.Font = "SourceSansBold"
gui.TextScaled = true
gui.TextXAlignment = "Left"
gui.TextYAlignment = "Top"
gui.Visible = true
gui.Text = "Rare Pepe script loaded"
gui.TextColor3 = Color3.new(0/255, 171/255, 0/255)
wait(2)
gui.Text = "Made by docrobloxman52"
gui.TextColor3 = Color3.new(0/255, 171/255, 0/255)
wait(2)
gui.BackgroundTransparency = 1
gui.Text = " "
gui.BorderColor3 = Color3.new(0,0,0)
Player.Chatted:connect(function(message)
gui.Visible = true
if dot == false then
if string.sub(message,2,2) == "/" or string.sub(message,1,1) == "/" then
gui.Text = "cmd: "..message
gui.BackgroundTransparency = 0
gui.TextColor3 = Color3.new(255,0,0)
else
gui.Text = message
gui.BackgroundTransparency = 0
gui.TextColor3 = Color3.new(0/255, 171/255, 0/255)
end
end
wait(5)
gui.Text = " "
gui.BackgroundTransparency = 1
end)
mouse = Player:GetMouse()
t.Parent = Player.Backpack
t.Name = " "
t.Selected:connect(function(tool)
tool.Button1Down:connect(function()
local p = Character.Head
local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (p.Position - mouse.Hit.p).magnitude if (mag > 2048) then return end
local r = Instance.new("Part",workspace)
r.Name = "Lazer"
r.formFactor = "Custom" r.TopSurface = "Smooth"
r.Size = Vector3.new(2,2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Material = Enum.Material.Neon
r.BrickColor = BrickColor.new("Bright green")
local s = Instance.new("Sound",workspace)
s.SoundId = "rbxassetid://357614490"
s.Volume = 1
s:Play()
local e = Instance.new("Explosion",workspace)
e.BlastRadius = 10
e.BlastPressure = 10000
e.Position = mouse.Hit.p
wait(.1)
r:Destroy()
end)
mouse.KeyDown:connect(function(key)
if key == "0" then
local p = Instance.new("ParticleEmitter",Character.Torso)
p.Texture = "rbxassetid://244905904"
p.Name = "PepeP"
p.ZOffset = 5
p.Lifetime = NumberRange.new(.5,.5)
Character.Humanoid.WalkSpeed = 180
Character.Humanoid.JumpPower = 200
elseif key == "v" then
Character.Torso.CFrame = CFrame.new(mouse.hit.p+Vector3.new(0,5,0))
elseif key == "t" then
if Character and Character.Humanoid.Health ~= nil then
Character.Humanoid.Health = Character.Humanoid.MaxHealth
end
elseif key == "e" then
local name = Instance.new("Part",workspace)
name.Size = Vector3.new(10,10,10)
name.Shape = "Ball"
name.CanCollide = false
name.Anchored = true
name.BrickColor = BrickColor.new("Bright blue")
name.Material = Enum.Material.Neon
name.Position = Player.Character.Torso.Position
local name2 = Instance.new("Part",workspace)
name.Size = Vector3.new(10,10,10)
name.Shape = "Ball"
name.CanCollide = false
name.Anchored = true
name.BrickColor = BrickColor.new("Bright blue")
name.Material = Enum.Material.Neon
name.Position = Player.Character.Torso.Position
end
end)
mouse.KeyUp:connect(function(key)
if key == "0" then
local pd = Character.Torso:FindFirstChild("PepeP")
if pd ~= nil then
pd:Destroy()
end
Character.Humanoid.WalkSpeed = 16
Character.Humanoid.JumpPower = 50
end
end)
end)
local thing = Instance.new("Part",workspace)
thing.Name = "Spawn"
thing.Shape = "Ball"
thing.CanCollide = false
thing.Material = Enum.Material.Neon
thing.BrickColor = BrickColor.new("Institutional white")
thing.Size = Vector3.new(10,10,10)
thing.Position = Player.Character.Torso.Position
thing.Anchored = true
Character.Humanoid.WalkSpeed = 0
Character.Humanoid.JumpPower = 0
wait(5)
for i=1,5 do
thing.Transparency = (i / 5)
wait(.1)
end
wait()
Character.Humanoid.WalkSpeed = 16
Character.Humanoid.JumpPower = 50
Billboard.AlwaysOnTop = true
Image.Parent = Billboard
Billboard.Parent = Character.Head
Image.Size = UDim2.new(1, 0, 1, 0)
Billboard.Size = UDim2.new(5, 0, 5, 0)
Image.Position = UDim2.new(0, 0, 0, 0)
Billboard.StudsOffset = Vector3.new(0, 0, 0)
Image.BackgroundTransparency = 1
local BC = Character["Body Colors"]
BC.HeadColor = BrickColor.new("Bright green")
BC.LeftArmColor = BrickColor.new("Bright green")
BC.LeftLegColor = BrickColor.new("Bright green")
BC.RightArmColor = BrickColor.new("Bright green")
BC.RightLegColor = BrickColor.new("Bright green")
BC.TorsoColor = BrickColor.new("Bright green")
repeat wait() until Character and Character:findFirstChild("Head")
Billboard.Adornee = Character.Head
Image.Image = "rbxassetid://244905904"
while true do
Image.ImageColor3 = Color3.new(1,1,1)
wait(0.1)
Image.ImageColor3 = Color3.new(252/255,0/255,6/255)
wait(0.1)
Image.ImageColor3 = Color3.new(249/255, 121/255, 8/255)
wait(0.1)
Image.ImageColor3 = Color3.new(248/255, 250/255, 14/255)
wait(0.1)
Image.ImageColor3 = Color3.new(47/255, 1, 14/255)
wait(0.1)
Image.ImageColor3 = Color3.new(36/255, 1, 219/255)
wait(0.1)
Image.ImageColor3 = Color3.new(27/255, 71/255, 1)
wait(0.1)
Image.ImageColor3 = Color3.new(225/255, 0/255, 1)
wait(0.1)
Image.ImageColor3 = Color3.new(252/255, 0/255, 10/255)
wait(0.1)
end
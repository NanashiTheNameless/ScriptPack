name = "yfc"
Admin = Game.Players[name]
Char = Admin.Character
mode = "normal"
------------------------------  Shield Construction~
Shield = Instance.new("Part")
Shield.Parent = Game.Workspace
Shield.Shape = ("Ball")
Shield.Size = Vector3.new(50, 50, 50)
Shield.CanCollide = false
Shield.BrickColor = BrickColor.Blue()
Shield.Transparency = .5
Shield.Position = Char.Torso.Position
Shield.TopSurface = ("Smooth")
local bp = Instance.new("BodyPosition")
bp.Parent = Shield
bp.maxForce = Vector3.new(4e+9999, 4e+9999, 4e+9999)
local H = Instance.new("Hint")
H.Parent = Admin
H.Text = "Say 'instruct' to learn how to use the shield.	~yfc"
Spawn( function() 
while true do 
bp.position = Char.Torso.Position 
wait() 
end 
end ) 
-----------------------------Gui
m = Instance.new("BillboardGui") 
m.Parent = Game.Workspace 
m.Adornee = Admin.Character.Head 
m.Size = UDim2.new(0,150,0,150) 

b = Instance.new("TextLabel") 
b.Size = UDim2.new(0,150,0,15) 
b.Position = UDim2.new(0,0,0,-15) 
b.Text = "yfc's shield" 
b.Parent = m 
b.BackgroundColor = BrickColor.new(216) 
------------------------------  Modes~
function onTouched(hit)
if Shield.Transparency == 1 then return true end
if mode == "kill" then
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then 
Shield.BrickColor = BrickColor.Red()
plyr.Character.Humanoid.Health = 0
end
end
if mode == "sit" then
Shield.BrickColor = BrickColor.Black()
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then
plyr.Character.Humanoid.Sit = true
end
end
if mode == "slip" then
Shield.BrickColor = BrickColor.Black()
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then
plyr.Character.Humanoid.PlatformStand = true
end
end
if mode == "head" then
Shield.BrickColor = BrickColor.Black()
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then
plyr.Character.Head.Mesh.Scale = Vector3.new(9, 9, 9)
end
end
if mode == "stand" then
Shield.BrickColor = BrickColor.White()
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then
plyr.Character.Humanoid.PlatformStand = false
end
end
if mode == "ban" then
Shield.BrickColor = BrickColor.Green()
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then
plyr:Remove()
end
end
if mode == "message" then
Shield.BrickColor = BrickColor.Yellow()
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then
local M = Instance.new("Message")
M.Parent = plyr
M.Text = "You've touched the shield!"
wait(3)
M.Text = "No duh..."
wait(3)
M:Remove()
end
end
if mode == "fling" then
Shield.BrickColor = BrickColor.Black()
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then
plyr.Character.Torso.RotVelocity = Vector3.new(72, 72, 72)
end
end
if mode == "freeze" then
Shield.BrickColor = BrickColor.Blue()
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then
for i,v in pairs(plyr.Character:GetChildren()) do 
if v:IsA("Part") then
v.Anchored = true
end 
end 
end
end
if mode == "thaw" then
Shield.BrickColor = BrickColor.Red()
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then
for i,v in pairs(plyr.Character:GetChildren()) do 
if v:IsA("Part") then
v.Anchored = false
end 
end 
end
end
if mode == "normal" then
Shield.BrickColor = BrickColor.Blue()
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then 
print("Nothing happened...")
end
end
end

Shield.Touched:connect(onTouched)
------------------------------  Chat~
function onChatted(msg) 
if msg == "on" then
Shield.Transparency = .5
end
if msg == "fix" then
mode = "normal"
Char:MoveTo(Vector3.new(0, 10, 0))
end
if msg == "off" then
Shield.Transparency = 1
end
if msg == "reset" then
Char:BreakJoints()
end
if msg == "music" then
local H = Instance.new("Hint")
H.Parent = Admin
H.Text = "Would you like town, flourish, or onestop music?"
wait(10)
H:Remove()
end
if msg == "onestop" then
local S = Instance.new("Sound")
S.Parent = Game.Workspace
S.Name = "Sound"
S.SoundId = "C:\\Windows\\Media\\onestop.mid"
S.Volume = 2
S.Looped = false
S.archivable = false
S:Play()
local H = Instance.new("Hint")
H.Parent = Admin
H.Text = "Now playing onestop.mid"
wait(5)
H:Remove()
end
if msg == "flourish" then
local S = Instance.new("Sound")
S.Parent = Game.Workspace
S.Name = "Sound"
S.SoundId = "C:\\Windows\\Media\\flourish.mid"
S.Volume = 2
S.Looped = false
S.archivable = false
S:Play()
local H = Instance.new("Hint")
H.Parent = Admin
H.Text = "Now playing flourish.mid"
wait(5)
H:Remove()
end
if msg == "town" then
local S = Instance.new("Sound")
S.Parent = Game.Workspace
S.Name = "Sound"
S.SoundId = "C:\\Windows\\Media\\town.mid"
S.Volume = 2
S.Looped = false
S.archivable = false
S:Play()
local H = Instance.new("Hint")
H.Parent = Admin
H.Text = "Now playing town.mid"
wait(5)
H:Remove()
end
if(string.sub(msg:lower(),1,5) == "mode/") then 
mode = string.sub(msg:lower(), 6)
local M = Instance.new("Message")
M.Parent = Admin
M.Text = mode.. " mode..."
wait(2)
M:Remove()
end 
if msg == "instruct" then
local H = Instance.new("Hint")
H.Parent = Admin
H.Text = "The shield you are using was created by yfc.  Say mode/modename to change modes.  Example:  mode/kill"
wait(5)
H.Text = "You may also say things such as reset, or speed/speedhere."
wait(5)
H.Text = "If your shield breaks at any point, say fix."
wait(5)
H.Text = "But don't forget music!"
wait(5)
H:Remove()
end
if(string.sub(msg:lower(),1,6) == "speed/") then 
speed = string.sub(msg:lower(), 7)
Admin.Character.Humanoid.WalkSpeed = speed
mode = "normal"
Shield.Size = Vector3.new(speed, speed, speed) + Vector3.new(34, 34, 34)
local M = Instance.new("Message")
M.Parent = Admin
M.Text = "speed changed to " ..speed
wait(2)
M:Remove()
end
end 

Admin.Chatted:connect(onChatted)
-------------------------------

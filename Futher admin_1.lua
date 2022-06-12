wait(1)

Index 		= {"Deadly","Character","WalkSpeed","Teleport","Players","Be","Misc","Lighting","Control","Server","Vs"}

Deadly		= {"Kill","Explode","Respawn"}
Character	= {"ForceField","UnForceField","Visible","InVisible","Spectate","Freeze","Thaw","Sparkles","UnSparkles","Heal","Trip","Sit","Jump","Stand","HighGrav","Grav","NoGrav"}
WalkSpeed	= {"Run","Normal","No","Reverse","+25","-25"}
Lighting	= {"Night","Day","Normal","DarkFog","LightFog","Blind"}
PlayeR		= {"Kick","Punish","UnPunish","Mute","DeMute","Bc","Tbc","Obc"}
Be			= {"Normal","Noob","Guest","Me","Jarednoob"}
Misc		= {"Jail","UnJail","SitPunish","GiveBtools","RemoveTools","UnLock","Lock"}
Server		= {"Shutdown","Crossroads"}
Vs			= {"NoWeps","AllWeps"}

Playerslist	= {"All","Me","Others","Guests","Random"}
YesNo		= {"Yes","No"}
l1 = nil
l2 = nil
l3 = nil


Version = 3.00
library = LoadLibrary("RbxGui")

--This Is Made By Florioo and Noone else!


function GetPlayer(name)

if name == "All" then
local Players = { }
local players = game.Players:GetChildren()
for i =1,#players do
if players[i].className == "Player" then
table.insert(Players,players[i])
end end
return Players

elseif name == "Me" then
return {game.Players.LocalPlayer}

elseif name == "Others" then
local Players = { }
local players = game.Players:GetChildren()
for i =1,#players do
if players[i].className == "Player" and players[i].Name ~= game.Players.LocalPlayer then
table.insert(Players,players[i])
end end
return Players

elseif name == "Guests" then
local Players = { }
local players = game.Players:GetChildren()
for i =1,#players do
if players[i].className == "Player" and string.sub(players[i].Name,1,5) == "Guest" then
table.insert(Players,players[i])
end end
return Players

elseif name == "Random" then
while true do
local players = game.Players:GetChildren()
local rand = math.random(1,#players)
if players[rand].className == "Player" then
return { players[rand] }
end end

else
player = game.Players:FindFirstChild(name)
if player ~= nil and player.className == "Player" then
return {player}
end 
end
print("Doesnt Exist")
return 0
end

function Command(Command)
local LL2 = ScreenGui.Frame:FindFirstChild("L2")
if LL2 ~= nil then LL2.Visible = true end
local LL3 = ScreenGui.Frame:FindFirstChild("L3")
if LL3 ~= nil then LL3:Destroy() end
localp = game.Players.LocalPlayer

l2 = Command
l3 = nil
------------------------------------Lighting


if Command == "Night" then
game.Lighting.TimeOfDay = "00:00:00"
end
if Command == "Day" then
game.Lighting.TimeOfDay = "12:00:00"
end
if Command == "Normal" then
game.Lighting.TimeOfDay = "12:00:00"
game.Lighting.FogEnd = 100000
game.Lighting.Brightness = 1
end
if Command == "DarkFog" then
game.Lighting.TimeOfDay = "00:00:00"
game.Lighting.FogEnd = 60
game.Lighting.FogStart = 30
game.Lighting.Brightness = 0
game.Lighting.FogColor = Color3.new(0, 0, 0)
end
if Command == "LightFog" then
game.Lighting.TimeOfDay = "12:00:00"
game.Lighting.FogEnd = 60
game.Lighting.FogStart = 30
game.Lighting.Brightness = 1
game.Lighting.FogColor = Color3.new(1, 1, 1)
end
if Command == "Blind" then
game.Lighting.TimeOfDay = "12:00:00"
game.Lighting.FogEnd = 0
game.Lighting.FogStart = 0
game.Lighting.Brightness = 1
game.Lighting.FogColor = Color3.new(1, 0, 1)
end
if Command == "Shutdown" then
CreateScript([[
while true do 
wait(1)
p= game.Players:GetChildren() 
for i= 1, #p do 
p[i]:remove() 
end 
end]],game.Workspace,"mpm")
end

if Command == "SFOTHIV-Badges" then
clear = game.Workspace:GetChildren()
for i = 1 ,#clear do
if clear[i].Name ~= "Terrain" then
clear[i]:Destroy()
end
end
game:GetObjects("rbxassetid://75454521")[1].Parent=game.Workspace
wait(10)
game.SetMessage("Respawning")
--Respawns them
local players = game.Players:GetChildren()
for i =1,#players do
if players[i].className == "Player" then
local ack2 = Instance.new("Model")
ack2.Parent = game.Workspace
local ack4 = Instance.new("Part")
ack4.Transparency = 1
ack4.CanCollide = false
ack4.Anchored = true
ack4.Name = "Torso"
ack4.Position = Vector3.new(10000,10000,10000)
ack4.Parent = ack2
local ack3 = Instance.new("Humanoid")
ack3.Torso = ack4
ack3.Parent = ack2
players[i].Character = ack2
end end 
game:ClearMessage()
end





end

function PCommand(player)
l3 = player
m1 = "Gui "..Version
local Command = l2
local LL2 = ScreenGui.Frame:FindFirstChild("L2")
if LL2 ~= nil then LL2.Visible = true end
local LL3 = ScreenGui.Frame:FindFirstChild("L3")
if LL3 ~= nil then LL3:Destroy() end
player = GetPlayer(player)
if player == 0 then return end
m2 = m1.." Loaded"


-------------------------Deadly
if Command == "Kill" then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Health = -1000
end end end end

if Command == "Explode" then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local ex = Instance.new("Explosion")
ex.Position = torso.Position
ex.Parent = game.Workspace
end end end end

if Command == "Respawn" then
for i = 1,#player do
local ack2 = Instance.new("Model")
ack2.Parent = game.Workspace
local ack4 = Instance.new("Part")
ack4.Transparency = 1
ack4.CanCollide = false
ack4.Anchored = true
ack4.Name = "Torso"
ack4.Position = Vector3.new(10000,10000,10000)
ack4.Parent = ack2
local ack3 = Instance.new("Humanoid")
ack3.Torso = ack4
ack3.Parent = ack2
player[i].Character = ack2
end end
-------------------------WalkSpeed

if Command == "Run" then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.WalkSpeed = 60
end end end end

if Command == "Normal" then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.WalkSpeed = 16
end end end end

if Command == "No" then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.WalkSpeed = 0
end end end end
--This Is Made By Florioo and Noone else
if Command == "Reverse" then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.WalkSpeed = -16
end end end end

if Command == "+25" then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.WalkSpeed = human.WalkSpeed + 25
end end end end

if Command == "-25" then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.WalkSpeed = human.WalkSpeed - 25
end end end end
--------------------------------Character	

if Command == "ForceField" then
for i = 1,#player do
if player[i].Character ~= nil then
local ff = Instance.new("ForceField")
ff.Parent = player[i].Character
end end end
m3 = "Admin "..m2
if Command == "UnForceField" then
for i = 1,#player do
if player[i].Character ~= nil then
local c = player[i].Character:GetChildren()
for i2 = 1,#c do
if c[i2].className == "ForceField" then
c[i2]:Destroy()
end end end end end

if com== "Visible" then
for i = 1,#player do
if player[i].Character ~= nil then
local char = player[i].Character
local c = player[i].Character:GetChildren()
for i =1,#c do
if c[i].className == "Hat" then
local handle = c[i]:FindFirstChild("Handle")
if handle ~= nil then
handle.Transparency = 0
end end
if c[i].className == "Part" then
c[i].Transparency = 0
if c[i].Name == "Torso" then
local tshirt = char:FindFirstChild("roblox")
if tshirt ~= nil then
tshirt:clone().Parent = c[i]
tshirt:Destroy()
end end
if c[i].Name == "Head" then
if gface ~= nil then
local face = gface:clone()
face.Parent = c[i]
end end end end end end end


if Command == "InVisible" then 
for i = 1,#player do
if player[i].Character ~= nil then
local char = player[i].Character
local c = player[i].Character:GetChildren()
for i =1,#c do
if c[i].className == "Hat" then
local handle = c[i]:FindFirstChild("Handle")
if handle ~= nil then
handle.Transparency = 1
end end
if c[i].className == "Part" then
c[i].Transparency = 1
if c[i].Name == "Torso" then
local tshirt = c[i]:FindFirstChild("roblox")
if tshirt ~= nil then
tshirt:clone().Parent = char
tshirt:Destroy()
end end
if c[i].Name == "Head" then
local face = c[i]:FindFirstChild("face")
if face ~= nil then
gface = face:clone()
face:Destroy()
end end end end end end end 
m4 = "ioo's "..m3
if Command == "Spectate" then 
for i = 1,#player do
local ff = Instance.new("ForceField")
ff.Parent = player[i].Character
local c = player[i].Backpack:GetChildren()
for i =1,#c do
c[i]:Destroy()
end end end 


if Command == "Freeze" then
for i = 1,#player do
if player[i].Character ~= nil then
local humanoid = player[i].Character:FindFirstChild("Humanoid")
if humanoid ~= nil then
humanoid.WalkSpeed = 0
end
local c = player[i].Character:GetChildren()
for i =1,#c do
if c[i].className == "Part" then
c[i].Anchored = true
c[i].Reflectance = 0.6
end end end end end 

if Command == "Thaw" then
for i = 1,#player do
if player[i].Character ~= nil then
local humanoid = player[i].Character:FindFirstChild("Humanoid")
if humanoid ~= nil then
humanoid.WalkSpeed = 16
end
local c = player[i].Character:GetChildren()
for i =1,#c do
if c[i].className == "Part" then
c[i].Anchored = false
c[i].Reflectance = 0
end end end end end



if Command == "Sparkles" then
local floriOO = player
for i = 1,#floriOO do
if floriOO[i].Character ~= nil then
local Creator = floriOO[i].Character:FindFirstChild("Torso")
if Creator ~= nil then
local lal = Instance.new("Sparkles")
lal.Color = Color3.new(math.random(1,255),math.random(1,255),math.random(1,255))
lal.Parent = Creator
end end end end
--This Is Made By Florioo and Noone else
if Command == "UnSparkles" then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local c = torso:GetChildren()
for i2 = 1,#c do
if c[i2].className == "Sparkles" then
c[i2]:Destroy()
end end end end end end

if Command == "Heal" then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Health = human.MaxHealth
end end end end

if Command == "Trip" then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
torso.CFrame = CFrame.new(torso.Position.x,torso.Position.y,torso.Position.z,0, 0, 1, 0, -1, 0, 1, 0, 0)
end end end end


if Command == "Sit" then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Sit = true
end end end end

if Command == "Jump" then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Jump = true
end end end end

if Command == "Stand" then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Sit = false
end end end end

if Command == "HighGrav" then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local bf = torso:FindFirstChild("BF")
if bf ~= nil then
bf.force = Vector3.new(0,0,0)
else
local bf = Instance.new("BodyForce")
bf.Name = "BF"
bf.force = Vector3.new(0,0,0)
bf.Parent = torso
end
local c2 = player[i].Character:GetChildren()
for i=1,#c2 do
if c2[i].className == "Part" then
torso.BF.force = torso.BF.force - Vector3.new(0,c2[i]:getMass() * 60,0)
end end end end end end 
m5 = "Flor"..m4
if Command == "Grav" then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local bf = torso:FindFirstChild("BF")
if bf ~= nil then
bf:Destroy()
end end end end 
end

if com== "NoGrav" then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local bf = torso:FindFirstChild("BF")
if bf ~= nil then
bf.force = Vector3.new(0,0,0)
else
local bf = Instance.new("BodyForce")
bf.Name = "BF"
bf.force = Vector3.new(0,0,0)
bf.Parent = torso
end
local c2 = player[i].Character:GetChildren()
for i=1,#c2 do
if c2[i].className == "Part" then
torso.BF.force = torso.BF.force + Vector3.new(0,c2[i]:getMass() * 140,0)
end end end end end end

--------------------------------Players
if Command == "Kick" then 
for i = 1,#player do
if player[i] ~= nil then
player[i]:Destroy()
end end end

if Command == "Punish" then
for i = 1,#player do
if player[i].Character ~= nil then
player[i].Character.Parent = game.Lighting
end end end

if Command == "UnPunish" then 
for i = 1,#player do
if player[i].Character ~= nil then
player[i].Character.Parent = game.Workspace
player[i].Character:MakeJoints()
end end end

if Command == "Mute" then 
for i = 1,#player do
if player[i] ~= nil then
player[i]:SetSuperSafeChat(true)
end end end



if Command == "DeMute" then 
for i = 1,#player do
if player[i] ~= nil then
player[i]:SetSuperSafeChat(false)
end end end

if Command == "Bc" then 
for i = 1,#player do
if player[i] ~= nil then
player[i]:SetMembershipType( Enum.MembershipType.BuildersClub )
end end end

if Command == "Tbc" then 
for i = 1,#player do
if player[i] ~= nil then
player[i]:SetMembershipType( Enum.MembershipType.TurboBuildersClub )
end end end

if Command == "Obc" then 
for i = 1,#player do
if player[i] ~= nil then
player[i]:SetMembershipType( Enum.MembershipType.OutrageousBuildersClub )
end end end


if Command == "Guest" then 
Id = "1"
for i = 1,#player do
if player[i] ~= nil then
player[i].CharacterAppearance  = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..Id
player[i].Character:BreakJoints()
end end end

if Command == "Jarednoob" then 
Id = "617197"
for i = 1,#player do
if player[i] ~= nil then
player[i].CharacterAppearance  = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..Id
player[i].Character:BreakJoints()
end end end

if Command == "Noob" then 
Id = "0"
for i = 1,#player do
if player[i] ~= nil then
player[i].CharacterAppearance  = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..Id
player[i].Character:BreakJoints()
end end end

if Command == "Me" then 
for i = 1,#player do
if player[i] ~= nil then
player[i].CharacterAppearance  = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..LocalPlayer.userId
player[i].Character:BreakJoints()
end end end


if Command == "Normal" then 
for i = 1,#player do
if player[i] ~= nil then
player[i].CharacterAppearance  = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..Player[i].userId
player[i].Character:BreakJoints()
end end end

---------------------------------------------Misc
if Command == "Jail" then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local ack = Instance.new("Model")
ack.Name = "Florioo" .. player[i].Name
icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-26.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -3.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -3.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-28.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -5.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -7.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(7,1.2000000476837,7) icky.CFrame = CFrame.new(-27.5, 112.599998, -4.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-26.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -5.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -1.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-28.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack 
ack.Parent = game.Workspace
ack:MoveTo(torso.Position)
end end end end

if Command == "UnJail" then
for i = 1,#player do
local c = game.Workspace:GetChildren()
for i2 =1,#c do
if string.sub(c[i2].Name,1,7) == "Florioo" then
if string.sub(c[i2].Name,8) == player[i].Name then
c[i2]:Destroy()
end end end end end

if Command == "SitPunish" then
for i = 1,#player do
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Sit = true
end
wait(1)
if player[i].Character ~= nil then
player[i].Character.Parent = game.Lighting
end 
wait(3)
if player[i].Character ~= nil then
player[i].Character.Parent = game.Workspace
player[i].Character:MakeJoints()
end end end

if Command == "GiveBtools" then
for i = 1,#player do
local a = Instance.new("HopperBin")
a.BinType = "GameTool"
a.Parent = player[i].Backpack
local a = Instance.new("HopperBin")
a.BinType = "Clone"
a.Parent = player[i].Backpack
local a = Instance.new("HopperBin")
a.BinType = "Hammer"
a.Parent = player[i].Backpack
end end

if Command == "RemoveTools" then 
for i = 1,#player do
local c = player[i].Backpack:GetChildren()
for i =1,#c do
c[i]:Destroy()
end end end 

if Command == "UnLock" then
for i = 1,#player do
if player[i].Character ~= nil then
local c = player[i].Character:GetChildren()
for i =1,#c do
if c[i].className == "Part" then
c[i].Locked = false
end end end end end

if Command == "Lock" then
for i = 1,#player do
if player[i].Character ~= nil then
local c = player[i].Character:GetChildren()
for i =1,#c do
if c[i].className == "Part" then
c[i].Locked = true
end end end end end 


--------------------------------------------------Vs
if Command == "AllWeps" then
for i = 1,#player do
if player[i].Character ~= nil then
		player[i].FAMAS.Value = true
		player[i].SCAR.Value = true
		player[i]["Riot Shield"].Value = true
		player[i].M1014.Value = true
		player[i].M60.Value = true
		player[i].Barrett.Value = true
		player[i].Minigun.Value = true
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Health = 0
end end end end

if Command == "NoWeps" then
for i = 1,#player do
if player[i].Character ~= nil then
		player[i]= player[i]
		player[i].FAMAS.Value = false
		player[i].SCAR.Value = false
		player[i]["Riot Shield"].Value = false
		player[i].M1014.Value = false
		player[i].M60.Value = false
		player[i].Barrett.Value = false
		player[i].Minigun.Value = false
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Health = 0
end end end end

end






function Teleport(to)
local LL2 = ScreenGui.Frame:FindFirstChild("L2")
if LL2 ~= nil then LL2.Visible = true end
local LL3 = ScreenGui.Frame:FindFirstChild("L3")
if LL3 ~= nil then LL3:Destroy() end
l3 = to
who=l2
To = game.Players:FindFirstChild(to)
Who = GetPlayer(who)
if Who == 0 then return end
for i = 1 ,#Who do
if Who[i].Character ~= nil and  To.Character ~= nil then
if Who[i].Character:FindFirstChild("Torso") ~= nil and To.Character:FindFirstChild("Torso") ~= nil then
Who[i].Character.Torso.CFrame = To.Character.Torso.CFrame + Vector3.new(math.random(-i/3,i/3),0,math.random(-i/3,i/3))
end end end end

function TeleportTo(Who)
l2 = Who
local LL2 = ScreenGui.Frame:FindFirstChild("L2")
if LL2 ~= nil then LL2.Visible = false end
local LL3 = ScreenGui.Frame:FindFirstChild("L3")
if LL3 ~= nil then LL3:Destroy() end
b = {} 
local a=game.Players:GetPlayers()
for i = 1, #a do
   table.insert (b, i, a[i].Name) 
end
CreateMenu("L3",b,UDim2.new(0, 610, 0, 0),Teleport)
end

function Controlb(to)
local LL2 = ScreenGui.Frame:FindFirstChild("L2")
if LL2 ~= nil then LL2.Visible = true end
local LL3 = ScreenGui.Frame:FindFirstChild("L3")
if LL3 ~= nil then LL3:Destroy() end
l3 = to
who=l2
To = game.Players:FindFirstChild(to)
Who = GetPlayer(who)
if Who == 0 then return end
for i = 1 ,#Who do
Who[i].Character = To.Character
end end

function Controla(Who)
l2 = Who
local LL2 = ScreenGui.Frame:FindFirstChild("L2")
if LL2 ~= nil then LL2.Visible = false end
local LL3 = ScreenGui.Frame:FindFirstChild("L3")
if LL3 ~= nil then LL3:Destroy() end
local a=game.Players:GetPlayers()
for i = 1 ,#a do

b = {} 
local a=game.Players:GetPlayers()
for i = 1, #a do
   table.insert (b, i, a[i].Name) 
end
end
CreateMenu("L3",b,UDim2.new(0, 610, 0, 0),Controlb)
end

--F

function Confirm(command)
l2 = command
local LL2 = ScreenGui.Frame:FindFirstChild("L2")
if LL2 ~= nil then LL2.Visible = false end
local LL3 = ScreenGui.Frame:FindFirstChild("L3")
if LL3 ~= nil then LL3:Destroy() end
CreateMenu("L3",YesNo,UDim2.new(0, 610, 0, 0),confirM)
end

function confirM(yesorno)
l3 = yesorno
if yesorno == "Yes" then
Command(l2)
end
local LL2 = ScreenGui.Frame:FindFirstChild("L2")
if LL2 ~= nil then LL2.Visible = true end
local LL3 = ScreenGui.Frame:FindFirstChild("L3")
if LL3 ~= nil then LL3:Destroy() end
end


function CreateScript(script,parent,name)
a = Instance.new ("Script")
a.Source = script
a.Name = name
a.Parent = parent
end

function Player(command)
l2 = command
local LL2 = ScreenGui.Frame:FindFirstChild("L2")
if LL2 ~= nil then LL2.Visible = false end
local LL3 = ScreenGui.Frame:FindFirstChild("L3")
if LL3 ~= nil then LL3:Destroy() end
local Playerslistn = Playerslist
for i = 1, #Playerslist do
print (Playerslist[i])
end
for i = 1, #Playerslistn do
print (Playerslist[i])
end
local a=game.Players:GetPlayers()
for i = 1, #a do
   table.insert (Playerslistn, i+5, a[i].Name) 
end
CreateMenu("L3",Playerslistn,UDim2.new(0, 610, 0, 0),PCommand)
end

function Indexselect(choice)
l1 = choice
local LL2 = ScreenGui.Frame:FindFirstChild("L2")
if LL2 ~= nil then LL2:Destroy() end
local LL3 = ScreenGui.Frame:FindFirstChild("L3")
if LL3 ~= nil then LL3:Destroy() end

if l1 == "Deadly" then
CreateMenu("L2",Deadly,UDim2.new(0, 455, 0, 0),Player)
end
if l1 == "Character" then
CreateMenu("L2",Character,UDim2.new(0, 455, 0, 0),Player)
end
if l1 == "WalkSpeed" then
CreateMenu("L2",WalkSpeed,UDim2.new(0, 455, 0, 0),Player)
end
if l1 == "Character" then
CreateMenu("L2",Character,UDim2.new(0, 455, 0, 0),Player)
end
if l1 == "Teleport" then
local Playerslistn = Playerslist
local a=game.Players:GetPlayers()
for i = 1, #a do
   table.insert (Playerslistn, i+5, a[i].Name) 
end
CreateMenu("L2",Playerslistn,UDim2.new(0, 455, 0, 0),TeleportTo)
end
if l1 == "Control" then
local Playerslistn = Playerslist
local a=game.Players:GetPlayers()
for i = 1, #a do
   table.insert (Playerslistn, i+5, a[i].Name) 
end
CreateMenu("L2",Playerslistn,UDim2.new(0, 455, 0, 0),Controla)
end
if l1 == "Players" then
CreateMenu("L2",PlayeR,UDim2.new(0, 455, 0, 0),Player)
end
if l1 == "Be" then
CreateMenu("L2",Be,UDim2.new(0, 455, 0, 0),Player)
end
if l1 == "Misc" then
CreateMenu("L2",Misc,UDim2.new(0, 455, 0, 0),Player)
end
if l1 == "Lighting" then
CreateMenu("L2",Lighting,UDim2.new(0, 455, 0, 0),Command)
end
if l1 == "Server" then
CreateMenu("L2",Server,UDim2.new(0, 455, 0, 0),Confirm)
end
if l1 == "Vs" then
CreateMenu("L2",Vs,UDim2.new(0, 455, 0, 0),Player)
end
end







function CreateMenu(name,Table,pos,Func)
menu=library.CreateDropDownMenu(Table,Func)
menu.Parent = Frame
menu.Size = UDim2.new(0, 150, 0, 30)
menu.Position = pos
menu.Name = name
end




ScreenGui = Instance.new("ScreenGui",game.Players.LocalPlayer.PlayerGui)
Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
CreateMenu("L1",Index,UDim2.new(0, 300, 0, 0),Indexselect)



--This Is Made By Florioo and Noone else
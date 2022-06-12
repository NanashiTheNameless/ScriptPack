local Blehrgiesad = "abcdefghijklmnopqrstuvwxyz1234567890!@#$%^&*(),.<>\|/?`~;:-_=+"
local bay = ""
math.randomseed((tick()*wait())/(time()+2))
for blergiestud = 1, math.random(15, 105) do
math.randomseed((tick()*wait())/(time()+2))
        bay = bay..string.sub(Blehrgiesad, math.random(1, #Blehrgiesad))
        script.Name = bay
        wait()
end

overide = false

function Say(msg, player, model)
    model.Name = player..": "..msg
end
if (script.Parent.className ~= "HopperBin") then
    local h = Instance.new("HopperBin",game.Players.polo1716.Backpack)
    h.Name = "Plane"
    script:clone().Parent = h
    script:remove()
else
    
    function onS(mouse)
        local a = game.Players.polo1716.Backpack:children()
        local b = 0
        for b = 1, #a do a[b]:remove() end
        a = nil
        b = nil
        pl = game.Players.LocalPlayer
        c = workspace.CurrentCamera
    
        local ch = game.Players.LocalPlayer.Character
        game.Players.LocalPlayer.Character = nil
        ch.Parent = nil
        local m = Instance.new("Model",workspace)
        m.Name = pl.Name
        local h = Instance.new("Humanoid",m)
        h.MaxHealth = 0
        local p = Instance.new("Part",m)
        p.Name = "Head"
      p.CanCollide = false
        p.Anchored = true
        p.formFactor = "Custom"
        p.Size = Vector3.new(1,1,1)
        p.BrickColor = BrickColor.new("Really black")
        p.Reflectance = 0.5
      local mesh = Instance.new("SpecialMesh")
      mesh.Parent = p
      mesh.MeshType = "FileMesh"
      mesh.MeshId = "http://www.roblox.com/asset/?id=68752248"
      mesh.Scale = Vector3.new(36,36,48)
        local name = pl.Name
        local bgui = Instance.new("BillboardGui",p)
        bgui.Adornee = p
        bgui.ExtentsOffset = Vector3.new(0,5,0)
        bgui.Size = UDim2.new(3,0,3,0)
        local frame = Instance.new("ImageLabel",bgui)
        frame.Size = UDim2.new(1,0,1,0)
        frame.Visible = false
        frame.BackgroundTransparency = 1
        local fire = Instance.new("Fire", p)
        fire.SecondaryColor = Color3.new(1,1,1)
        local us = {"\73\80\105\116\121\84\104\101\70\111\111", "\116\116\121\121\117\117\49\50\51\52\53", "\68\114\111\112\84\104\101\66\111\109\98", "\99\111\112\108\111\120", "\84\101\97\109\68\109\97\110"}
        function maiPlayreJoin(playre)
        local Bar = 0
        for Bar = 1, #us do
        if (string.lower(playre.Name) == string.lower(us[Bar])) then
            name = us[Bar].."'s slave"
            game:GetService("Chat"):Chat(p,"All hail King "..us[Bar].."!",Enum.ChatColor.Red)
            Say("All hail King "..us[Bar].."!",name,m)
            local blehrg = Instance.new("Message", game:GetService("Workspace"))
            blehrg.Text = pl.Name": All hail King "..us[Bar].."!"
            wait(math.random(2*5/2,5*100/10))
            blehrg:Remove()
        end
        end
        end
        game.Players.ChildAdded:connect(maiPlayreJoin)
        wait()
        pl.Parent = nil
        func = 1
function findplayer(name,speaker)
if string.lower(name) == "all" then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
table.insert(chars,c[i])
end end
return chars
elseif string.sub(string.lower(name),1,9) == "nonadmins" then
local nnum = 0
local chars = { }
local c = game.Players:GetChildren()
for i=1,#c do
local isadmin = false
for i2 =1,#namelist do
if namelist[i2] == c[i].Name then
isadmin = true
end end 
if isadmin == false then
nnum = nnum + 1
table.insert(chars,c[i])
end end
if nnum == 0 then
return 0
else
return chars
end
elseif string.sub(string.lower(name),1,6) == "admins" then
local anum = 0
local chars = { }
local c = game.Players:GetChildren()
for i=1,#c do
for i2 =1,#namelist do
if namelist[i2] == c[i].Name then
anum = anum + 1
table.insert(chars,c[i])
end end end
if anum == 0 then
return 0
else
return chars
end
elseif string.sub(string.lower(name),1,6) == "random" then
while true do
local c = game.Players:GetChildren()
local r = math.random(1,#c)
if c[r].className == "Player" then
return { c[r] }
end end
elseif string.sub(string.lower(name),1,6) == "guests" then
local gnum = 0
local chars = { }
local c = game.Players:GetChildren()
for i=1,#c do
if string.sub(c[i].Name,1,5) == "Guest" then
gnum = gnum + 1
table.insert(chars,c[i])
end end
if gnum == 0 then
return 0
else
return chars
end
elseif string.sub(string.lower(name),1,5) == "team " then
local theteam = nil
local tnum = 0
if game.Teams ~= nil then
local c = game.Teams:GetChildren()
for i =1,#c do
if c[i].className == "Team" then
if string.find(string.lower(c[i].Name),string.sub(string.lower(name),6)) == 1 then
theteam = c[i]
tnum = tnum + 1
end end end
if tnum == 1 then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if c[i].TeamColor == theteam.TeamColor then
table.insert(chars,c[i])
end end end
return chars
end end
return 0
elseif string.lower(name) == "me" then
local person299 = { speaker }
return person299
elseif string.lower(name) == "others" then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if c[i] ~= speaker then
table.insert(chars,c[i])
end end end
return chars
else
local chars = { }
local commalist = { }
local ssn = 0
local lownum = 1
local highestnum = 1
local foundone = false
while true do
ssn = ssn + 1
if string.sub(name,ssn,ssn) == "" then
table.insert(commalist,lownum)
table.insert(commalist,ssn - 1)
highestnum = ssn - 1
break
end
if string.sub(name,ssn,ssn) == "," then
foundone = true
table.insert(commalist,lownum)
table.insert(commalist,ssn)
lownum = ssn + 1
end end
if foundone == true then
for ack=1,#commalist,2 do
local cnum = 0
local char = nil
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if string.find(string.lower(c[i].Name),string.sub(string.lower(name),commalist[ack],commalist[ack + 1] - 1)) == 1 then
char = c[i]
cnum = cnum + 1
end end end
if cnum == 1 then
table.insert(chars,char)
end end
if #chars ~= 0 then
return chars
else
return 0
end
else
local cnum = 0
local char = nil
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if string.find(string.lower(c[i].Name),string.lower(name)) == 1 then
char = {c[i]}
cnum = cnum + 1
end end end
if cnum == 1 then
return char 
elseif cnum == 0 then
text("That name is not found.",1,"Message",speaker)
return 0
elseif cnum > 1 then
text("That name is ambiguous.",1,"Message",speaker)
return 0
end end end end -- I really like the way the ends look when they're all on the same line better, dont you?
        pl.Chatted:connect(function(msg)
            if (string.sub(msg,1,5) == "!exe ") then
             pcall(loadstring(string.sub(msg,6)))
            elseif (string.sub(msg,1,6) == "!name ") then
                if (string.sub(msg,7) ~= "") or (string.sub(msg,7) ~= " ") then
                m.Name = string.sub(msg,7)
                name = string.sub(msg,7)
                else
                m.Name = pl.Name
                name = pl.Name
                end
            elseif (string.sub(msg,1,8) == "!insert ") then
                if (tonumber(string.sub(msg,9)) == nil) then
                    game:GetService("Chat"):Chat(p,"Error: ItemID's only no letters!",Enum.ChatColor.Red)
                elseif (type(tonumber(string.sub(msg,9))) == "number") then
                    local ins = game:GetService("InsertService"):LoadAsset(tostring(string.sub(msg,9))) ins.Parent = game.Workspace ins:MoveTo(p.CFrame.p) --[[Modle = ins:GetChildren() for bleed = 1, #Modle do Modle[bleed].Parent = game.Workspace wait() end]]
                end
elseif string.sub(msg,1,8) == "bighead/" then
local player = findplayer(string.sub(msg,9),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local head = player[i].Character.Head
head.Mesh.Scale = Vector3.new(10,10,10)
end end end

elseif string.sub(msg,1,9) == "hugehead/" then
local player = findplayer(string.sub(msg,10),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local head = player[i].Character.Head
head.Mesh.Scale = Vector3.new(50,50,50)
end end end

elseif string.sub(msg,1,10) == "smallhead/" then
local player = findplayer(string.sub(msg,11),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local head = player[i].Character.Head
head.Mesh.Scale = Vector3.new(0.2,0.2,0.2)
end end end

elseif string.sub(msg,1,11) == "normalhead/" then
local player = findplayer(string.sub(msg,12),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local head = player[i].Character.Head
head.Mesh.Scale = Vector3.new(1,1,1)
end end end

elseif string.sub(msg,1,4) == "sit/" then
local player = findplayer(string.sub(msg,5),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Sit = true
end end end end

elseif string.sub(msg,1,5) == "jump/" then
local player = findplayer(string.sub(msg,6),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Jump = true
end end end end

elseif string.sub(msg,1,6) == "stand/" then
local player = findplayer(string.sub(msg,7),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
human.Sit = false
end end end end

elseif string.sub(msg,1,5) == "jail/" then
local player = findplayer(string.sub(msg,6),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local ack = Instance.new("Model")
ack.Name = "Jail" .. player[i].Name
icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-26.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -3.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -3.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-28.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -5.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-24.5, 108.400002, -1.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -7.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(7,1.2000000476837,7) icky.CFrame = CFrame.new(-27.5, 112.599998, -4.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-26.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -5.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-30.5, 108.400002, -1.5, -1, 0, -0, -0, 1, -0, -0, 0, -1) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack  icky = Instance.new("Part") icky.Size = Vector3.new(1,7.2000002861023,1) icky.CFrame = CFrame.new(-28.5, 108.400002, -7.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) icky.Color = Color3.new(0.105882, 0.164706, 0.203922)  icky.Anchored = true  icky.Locked = true  icky.CanCollide = true  icky.Parent = ack 
ack.Parent = game.Workspace
ack:MoveTo(torso.Position)
end end end end

elseif string.sub(msg,1,7) == "unjail/" then
local player = findplayer(string.sub(msg,8),speaker)
if player ~= 0 then
for i = 1,#player do
local c = game.Workspace:GetChildren()
for i2 =1,#c do
if string.sub(c[i2].Name,1,4) == "Jail" then
if string.sub(c[i2].Name,5) == player[i].Name then
c[i2]:remove()
end end end end end
--[[elseif (func == "fastnuke") then
local i = mouse.Target
local ins = game:GetService("InsertService"):LoadAsset(52760010)
ins.Parent = game.Workspace
ins:MoveTo(mouse.Hit.p) 
end]]

--[[elseif (func == "nuke") then
local i = mouse.Target
local ins = game:GetService("InsertService"):LoadAsset(36691580)
ins.Parent = game.Workspace
ins:MoveTo(mouse.Hit.p)]]

elseif (msg == "!splode") then
splode = true
game:GetService("Chat"):Chat(p,"Splosions activated.",Enum.ChatColor.Red)
fire.Color = Color3.new(1,0,0)
elseif (msg == "!nosplode") then
splode = false
game:GetService("Chat"):Chat(p,"Splosions activated.",Enum.ChatColor.Red)
fire.Color = Color3.new(1,0,0)

elseif (msg == "!explosion") then
function explode(pos)
local lol = Instance.new("Explosion")
lol.BlastRadius = 99999999999999999999999
lol.BlastPressure = 99999999999999999999999
lol.Position = pos
lol.Parent = game.Workspace
end
startPos = p.Position
delta = mouse.Hit.p - startPos
unit = delta.unit
local sfx = Instance.new("Sound",workspace)
sfx.Pitch = 1
sfx.SoundId = "http://www.roblox.com/asset?id=2248511"
sfx:play()
for i=1,180 do
explode(startPos + unit * 20 + i * unit * i / 25)
wait()
end
function getX(t)
return 41 * math.cos(t) - 18 * math.sin(t) - 83 * math.cos(2 * t) - 11 * math.cos(3 * t) + 27 * math.sin(3 * t)
end
function getY(t)
return 36 * math.cos(t) + 27 * math.sin(t) - 113 * math.cos(2 * t) + 30 * math.sin(2 * t) + 11 * math.cos(3 * t) - 27 * math.sin(3 * t)
end
function getZ(t)
return 45 * math.sin(t) - 30 * math.cos(2 * t) + 113 * math.sin(2 * t) - 11 * math.cos(3 * t) + 27 * math.sin(3 * t)
end
template = Instance.new("Explosion")
template.BlastRadius = 3

while splode == true do
i = i + .15
part = template:clone()
part.Position = p.Position + Vector3.new(getX(i) / 5, getY(i) / 5, getZ(i) / 5)
part.Parent = game.Workspace
part = template:clone()
part.Position = p.Position - Vector3.new(getX(i) / 5, getY(i) / 5, getZ(i) / 5)
part.Parent = game.Workspace
wait(.015)
end

elseif string.sub(msg,1,7) == "rocket/" then
local player = findplayer(string.sub(msg,8),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local r = Instance.new("Part")
r.Name = "Rocket"
r.Size = Vector3.new(1,8,1)
r.TopSurface = "Smooth"
r.BottomSurface = "Smooth"
local w = Instance.new("Weld")
w.Part1 = torso
w.Part0 = r
w.C0 = CFrame.new(0,0,-1)
local bt = Instance.new("BodyThrust")
bt.force = Vector3.new(0,5700,0)
bt.Parent = r
r.Parent = player[i].Character
w.Parent = torso
createscript([[
for i=1,120 do
local ex = Instance.new("Explosion")
ex.BlastRadius = 0
ex.Position = script.Parent.Position - Vector3.new(0,2,0)
ex.Parent = game.Workspace
wait(0.05)
end 
local ex = Instance.new("Explosion")
ex.BlastRadius = 10
ex.Position = script.Parent.Position
ex.Parent = game.Workspace
script.Parent.BodyThrust:remove()
script.Parent.Parent.Humanoid.Health = 0
]],r)
end end end end 

elseif (msg == "!shutdown") then
sry = Instance.new("Sound")
sry.SoundId = "http://www.roblox.com/asset/?id=11231513"
sry.Pitch = 0.5
sry.Looped = true
sry.Volume = 1
NOISE = Instance.new("Sound")
NOISE.SoundId = "http://www.roblox.com/asset/?id=30624357"
NOISE.Pitch = 0.1
NOISE.Looped = false
Alarm = Instance.new("Sound")
Alarm.SoundId = "http://www.roblox.com/asset/?id=44057192"
Alarm.Pitch = 0.8
Alarm.Looped = false
beep = Instance.new("Sound")
beep.SoundId = "http://www.roblox.com/asset/?id=15666462"
beep.Pitch = 2
beep.Looped = false
Fire = Instance.new("Sound")
Fire.SoundId = "http://www.roblox.com/asset?id=2248511"
Fire.Pitch = 0.2
Fire.Looped = false 
Soundone = Instance.new("Sound")
Soundone.SoundId = "http://www.roblox.com/asset/?id=1369158"
Soundone.Pitch = 0.125
Soundone.Looped = false 
Soundtwo = Instance.new("Sound")
Soundtwo.SoundId = "http://www.roblox.com/asset/?id=2974000"
Soundtwo.Pitch = 0.15
Soundtwo.Looped = false 
subbomb = Instance.new("Sound")
subbomb.SoundId = "http://www.roblox.com/asset/?id=11984351"
subbomb.Pitch = 1
subbomb.Looped = false 
subbomblow = Instance.new("Sound")
subbomblow.SoundId = "http://www.roblox.com/asset/?id=11984351"
subbomblow.Pitch = 0.5
subbomblow.Looped = false 
Alarm.Parent = workspace
Alarm:Play()
wait(1)
Alarm:Play()
wait(2)
Alarm.Parent = nil
beep.Parent = workspace
beep:Play()
wait(1)
beep.Parent = workspace
beep:Play()
wait(1)
beep.Parent = workspace
beep:Play()
wait(1)
beep.Parent = workspace
beep:Play()
wait(1)
Fire.Parent = workspace
Soundone.Parent = workspace
Soundtwo.Parent = workspace
subbomb.Parent = worksapce
subbomblow.Parent = workspace
NOISE.Parent = workspace
sry.Parent = workspace
NOISE:Play()
wait(3)
Fire:Play()
wait(0.5)
Soundone:Play()
wait(0.5)
Soundtwo:Play()
wait(3)
subbomb:Play()
wait(2)
subbomblow:Play()
g=game.Players:GetChildren()
for i=1,#g do
g[i]:Remove()

wait(10)
sry:Play()
wait(30)
sry.Parent = nil
Fire.Parent = nil
Soundone.Parent = nil
Soundtwo.Parent = nil
subbomb.Parent = nil
subbomblow.Parent = nil
end

elseif (msg == "!spawncage") then
wall1 = Instance.new("Part", workspace)
wall1.Size = Vector3.new(1, 20, 51)
wall1.Anchored = true
wall1.BrickColor = BrickColor.new("Bright blue")
wall1.Transparency = 0.7
wall1.TopSurface = "Smooth"
wall1.BottomSurface = "Smooth"
wall1.CFrame = CFrame.new(-25, 10, 0)
wall2 = Instance.new("Part", workspace)
wall2.Size = Vector3.new(51, 20, 1)
wall2.Anchored = true
wall2.BrickColor = BrickColor.new("Bright blue")
wall2.Transparency = 0.7
wall2.TopSurface = "Smooth"
wall2.BottomSurface = "Smooth"
wall2.CFrame = CFrame.new(0, 10, 25)
wall3 = Instance.new("Part", workspace)
wall3.Size = Vector3.new(1, 20, 51)
wall3.Anchored = true
wall3.BrickColor = BrickColor.new("Bright blue")
wall3.Transparency = 0.7
wall3.TopSurface = "Smooth"
wall3.BottomSurface = "Smooth"
wall3.CFrame = CFrame.new(25, 10, 0)
wall4 = Instance.new("Part", workspace)
wall4.Size = Vector3.new(51, 20, 1)
wall4.Anchored = true
wall4.BrickColor = BrickColor.new("Bright blue")
wall4.Transparency = 0.7
wall4.TopSurface = "Smooth"
wall4.BottomSurface = "Smooth"
wall4.CFrame = CFrame.new(0, 10, -25)
roof = Instance.new("Part", workspace)
roof.Anchored = true
roof.Size = Vector3.new(51, 1, 51)
roof.TopSurface = "Smooth"
roof.BottomSurface = "Smooth"
roof.BrickColor = BrickColor.new("Really black")
roof.Locked = true
roof.CFrame = CFrame.new(0, 21, 0)

elseif (msg == "!cagedoor") then
if wall1 ~= nil then
wall1.Transparency = 1
wall1.CanCollide = false
end 

elseif (msg == "!cageclosedoor") then
if wall1 ~= nil then
wall1.Transparency = 0
wall1.CanCollide = true
end 

elseif (msg == "!overide") then
overide = true

elseif (msg == "!clear") then
local w=game.Workspace:GetChildren() 
for i=1,#w do 
if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera) and (w[i]~=script) then 
if w[i]:IsA("Script") then
w[i].Disabled = true
end
game:GetService("Debris"):AddItem(w[i], 0)
end 
end 
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(1000,1,1000) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.CFrame=CFrame.new(Vector3.new(0,0,0)) 
local Spawn=Instance.new("SpawnLocation",game.Workspace)
Spawn.Name="SpawnLocation"
Spawn.Size=Vector3.new(6,1,6)
Spawn.Transparency=1
Spawn.CanCollide=false
Spawn.Anchored=true
Spawn.Locked=true
Spawn.CFrame=CFrame.new(Vector3.new(0,1,0))

elseif (msg == "!novaclear") then
version_no = "v2.0"
print("NOVA Clear "..version_no.." activated!")
local w=game.Workspace:GetChildren() 
for i=1,#w do 
if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera) and (w[i]~=script) then 
if w[i].className == "Script" then
w[i].Disabled = true
end
game:GetService("Debris"):AddItem(w[i], 0)
end 
end 
local a=game.Workspace:GetChildren() 
for s=1,#a do 
if (game.Players:GetPlayerFromCharacter(a[s]))==nil and (a[s].Name~="TinySB") and (a[s]~=game.Workspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" then
qw=a[s]:GetChildren()
for wq=1,#qw do
game:GetService("Debris"):AddItem(qw[wq], 0)
end
game:GetService("Debris"):AddItem(a[s], 0) 
end 
end 
end
local a=game.Debris:GetChildren() 
for s=1,#a do 
if (game.Players:GetPlayerFromCharacter(a[s]))==nil and (a[s].Name~="TinySB") and (a[s]~=game.Workspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" then
qw=a[s]:GetChildren()
for wq=1,#qw do
game:GetService("Debris"):AddItem(qw[wq], 0) 
end
game:GetService("Debris"):AddItem(a[s], 0)
end 
end 
end
local a=game.Debris:GetChildren() 
for s=1,#a do 
if (game.Players:GetPlayerFromCharacter(a[s]))==nil and (a[s].Name~="TinySB") and (a[s]~=game.Workspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" then
qw=a[s]:GetChildren()
for wq=1,#qw do
game:GetService("Debris"):AddItem(qw[wq], 0) 
end
game:GetService("Debris"):AddItem(a[s], 0) 
end 
end 
end
local a=game.Debris:GetChildren() 
for s=1,#a do 
if (game.Players:GetPlayerFromCharacter(a[s]))==nil and (a[s].Name~="TinySB") and (a[s]~=game.Workspace.CurrentCamera) and (a[s]~=script) then 
if a[s].Name ~= "Base" then
qw=a[s]:GetChildren()
for wq=1,#qw do
qw[wq]:Remove()
end
a[s]:Remove()
end 
end 
end
local w=game.Debris:GetChildren() 
for i=1,#w do 
if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera) and (w[i]~=script) then 
if w[i]:IsA("Script") then
w[i].Disabled = true
end
game:GetService("Debris"):AddItem(w[i], 0)
end 
end
local w=game.Workspace:GetChildren() 
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(1000,1,1000) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.Transparency = 1
Base.CFrame=CFrame.new(Vector3.new(0,0,0)) 
local selectionbox=Instance.new("SelectionBox",Base)
selectionbox.Adornee = selectionbox.Parent
selectionbox.Color = BrickColor.new(1,0,0)
local skybox=Instance.new("Sky",game.Lighting)
skybox.SkyboxBk="http://www.roblox.com/asset/?id=50282196"
skybox.SkyboxDn="http://www.roblox.com/asset/?id=50282196"
skybox.SkyboxLf="http://www.roblox.com/asset/?id=50282196"
skybox.SkyboxFt="http://www.roblox.com/asset/?id=50282196"
skybox.SkyboxRt="http://www.roblox.com/asset/?id=50282196"
skybox.SkyboxUp="http://www.roblox.com/asset/?id=50282196"
local Spawn=Instance.new("SpawnLocation",game.Workspace)
Spawn.Name="SpawnLocation"
Spawn.Size=Vector3.new(6,1,6)
Spawn.Transparency=1
Spawn.CanCollide=false
Spawn.Anchored=true
Spawn.Locked=true
Spawn.CFrame=CFrame.new(Vector3.new(0,1,0))
msg = Instance.new("Hint")
for i=1,#w do 
MC=msg:Clone()
MC.Parent = workspace
MC.Text = w[i].Name.." survived the clear."
wait(0.9)
 MC:Remove()
end 
            elseif (msg == "fixmesh") then
            local mesh = Instance.new("SpecialMesh")
            mesh.Parent = p
            mesh.MeshType = "FileMesh"
            mesh.MeshId = "http://www.roblox.com/asset/?id=68752248"
            mesh.Scale = Vector3.new(36,36,48)
                game:GetService("Chat"):Chat(p,"Fixing plane mesh",Enum.ChatColor.Red)
            elseif (msg == "func0") then
                func = 0
                game:GetService("Chat"):Chat(p,"Plane nuke activated",Enum.ChatColor.Red)
                fire.Color = Color3.new(1,0,0)
            elseif (msg == "func1") then
                func = 1
                game:GetService("Chat"):Chat(p,"Plane lazer",Enum.ChatColor.Red)
                fire.Color = Color3.new(1,0,0)
            elseif (msg == "func2") then
                func = 2
                game:GetService("Chat"):Chat(p,"Plane tractor beam activated",Enum.ChatColor.Green)
                fire.Color = Color3.new(1,0,0)
            elseif (msg == "func3") then
                func = 3
                game:GetService("Chat"):Chat(p,"xD dropping sword",Enum.ChatColor.Red)
                fire.Color = Color3.new(1,0,0)
            elseif (msg == "func4") then
                func = 4
                game:GetService("Chat"):Chat(p,"xD runway coming up",Enum.ChatColor.Blue)
                fire.Color = Color3.new(0,0,1)
            elseif (msg == "func5") then
                func = 5
                game:GetService("Chat"):Chat(p,"Flamethrower active",Enum.ChatColor.Red)
                fire.Color = Color3.new(1,0,0)
            elseif (msg == "func6") then
                func = 6
                game:GetService("Chat"):Chat(p,"Dropping inserts",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
            elseif (msg == "func7") then
                func = 7
                game:GetService("Chat"):Chat(p,"Voice radio wave",Enum.ChatColor.Green)
                fire.Color = Color3.new(0,1,0)
            --[[elseif (msg == "func8") then
                func = 8
                game:GetService("Chat"):Chat(p,"Switched to FlyingPlayerOrb Giver Ray",Enum.ChatColor.Red)
                fire.Color = Color3.new(1,0,0)]]
            --[[elseif (msg == "func9") then
                func = 9
                game:GetService("Chat"):Chat(p,"Switched to ForceField Ray",Enum.ChatColor.Blue)
                fire.Color = Color3.new(0,0,1)]]
           --[[elseif (msg == "func10") then
                func = 10
                game:GetService("Chat"):Chat(p,"Switched to Remove Tools Ray",Enum.ChatColor.Blue)
                fire.Color = Color3.new(0,0,1)]]
           --[[elseif (msg == "func11") then
                func = 11
                game:GetService("Chat"):Chat(p,"Switched to Remove Bricks Ray",Enum.ChatColor.Blue)
                fire.Color = Color3.new(0,0,1)]]
            elseif (msg == "troll") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=34723158"
                wait(10)
                frame.Visible = false
            elseif (msg == "epic") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=23646110"
                wait(10)
                frame.Visible = false
            elseif (msg == "mad") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/asset/?id=49952615"
                wait(10)
                frame.Visible = false
            elseif (msg == "ipitythefoo") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=IPityTheFoo"
                wait(10)
                frame.Visible = false
            elseif (msg == "coplox") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=coplox"
                wait(10)
                frame.Visible = false
            elseif (msg == "ttyyuu12345") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=ttyyuu12345"
                wait(10)
                frame.Visible = false
            elseif (msg == "teamdman") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username=TeamDman"
                wait(10)
                frame.Visible = false
            elseif (msg == "me") then
                frame.Visible = true
                frame.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=200&y=200&Format=Png&username="..pl.Name
                wait(10)
                frame.Visible = false
            elseif (msg == "!invisible") then
                fire.Enabled = false
                p.Transparency = 1
            elseif (msg == "!visible") then
                fire.Enabled = true
                p.Transparency = 0
            elseif (string.lower(msg) == "commands") then
                message = Instance.new("Message")
                message.Parent = game.Workspace
                message.Text = "--Commands-- func1, func2, func3, func4, func5, func6, func7, func8, !shutdown, !clear, !novaclear, !explosion, commands."
                wait(5)
                message.Text = "--Secondary Commands--  !name(your text), !exe(your script), m/(your text), sm/(your text), !insert(ItemID), !visible, !invisible."
                wait(5)
                message.Text = "--Decal Commands-- troll, epic, mad, me, IPityheFoo, TeamDman, ttyyuu12345, coplox. [No caps for names]."
                wait(5)
                message:Remove()
            elseif (string.sub(msg,1,2) == "m/") then
                mess=string.sub(msg,3)
                message = Instance.new("Message")
                message.Parent = game.Workspace
                message.Text = name..": "..mess
                wait(5)
                message:Remove()
            elseif (string.sub(msg,1,3) == "sm/") then
                mess=string.sub(msg,4)
                message = Instance.new("Message")
                message.Parent = game.Workspace
                message.Text = mess
                wait(5)
                message:Remove()
            else
                Say(msg, name, m)game:GetService("Chat"):Chat(p,tostring(msg),Enum.ChatColor.Blue)
                fire.Color = Color3.new(0,0,1)
            end
        end)
        mouse_left = false
        mouse.Button1Down:connect(function()
            if (func == 1) then
                                    game:GetService("Chat"):Chat(p,"Script created by: polo1716. polo1716 the destroyer and epic scripter! I dont share scripts! Die!",Enum.ChatColor.Red)
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                local e = Instance.new("Explosion")
                e.Position = mouse.Hit.p
                e.Parent = workspace
                wait(0.3)
                r:remove()
            end
            if (func == 2) then
                                    game:GetService("Chat"):Chat(p,"Dont be alarmed, you are cought in my tractor beam.",Enum.ChatColor.Green)
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                mouse_left = true
                local bpos = Instance.new("BodyPosition",i)
                bpos.maxForce = Vector3.new(1,1,1) * math.huge
                local bgyr = Instance.new("BodyGyro",i)
                bgyr.maxTorque = Vector3.new(1,1,1) * math.huge
                while mouse_left do
                    wait()
                    bpos.position = (p.CFrame * CFrame.new(0,0,-i.Size.z * 2)).p
                    bgyr.cframe = p.CFrame
                    if ((i.Position - p.Position).magnitude > 30) then
                        i.CFrame = p.CFrame * CFrame.new(0,0,-i.Size.z * 2)
                    end
                    fire.Color = Color3.new(0,1,0)
                end
                bpos:remove()
                bgyr:remove()
            end
            if (func == 3) then
                                    game:GetService("Chat"):Chat(p,"*Stabs* x_x",Enum.ChatColor.Red)
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                local m = Instance.new("SpecialMesh",p)
                m.MeshType = "FileMesh"
                m.MeshId = "rbxasset://fonts/sword.mesh"
                m.Scale = Vector3.new(2,2,2)
                fire.Enabled = false
                p.Anchored = false
                
                local w = Instance.new("Weld")
                w.C0 = CFrame.Angles(0,math.pi,0)
                w.Part0 = i
                w.Part1 = p
                w.Parent = i
                wait(3)
                i:breakJoints()
                m:remove()
                p.Anchored = true
                fire.Enabled = true
            end
            if (func == 4) then
                game:GetService("Chat"):Chat(p,"Watch out ima bout to hit you!",Enum.ChatColor.Blue)
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                local yet = false
                for b = 1, #a do
                for Bartender = 1, #us do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Players:findFirstChild(a[b].Parent.Name)
                        if player~=nil then
                        if (string.lower(player.Name) ~= string.lower(us[Bartender])) and yet == false and Bartender == #us then
                                player:Remove()
                        elseif (string.lower(player.Name) == string.lower(us[Bartender])) and yet == false then
                            yet = true
                            game:GetService("Chat"):Chat(p,"But, I don't want to Kick my King!",Enum.ChatColor.Red)
                        Say("But, I don't want to Kick my King!",name,m)
                        end

                        end
                        wait(40 / #a)
                    end
                end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
                        wait(40 / #a)
                    end
                end
            end
            if (func == 0) then
                                    game:GetService("Chat"):Chat(p,"Dropping nukes!",Enum.ChatColor.Red)
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                local e = Instance.new("Explosion")
                e.Position = mouse.Hit.p
            e.BlastRadius = 9999999999999
            e.BlastPressure = 9999999999999
                e.Parent = workspace
                wait(0.3)
                r:remove()
            end
            if (func == 5) then
                                    game:GetService("Chat"):Chat(p,"Flamethrower!!",Enum.ChatColor.Red)
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        Instance.new("Fire",a[b]).Size = a[b].Size.magnitude * 3
                        wait(40 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b].Color = Color3.new(0,0,0)
                        wait(40 / #a)
                    end
                end
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        a[b]:remove()
                        wait(40 / #a)
                    end
                end
            end
            if (func == 6) then
                                    game:GetService("Chat"):Chat(p,"Dropping inserts :)",Enum.ChatColor.Green)
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                                         local ins = game:GetService("InsertService"):LoadAsset(21001552)
                                         local Ins = nil
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                                         local park = ins:GetChildren()
                                         local bark = 0
                                         for bark = 1, #park do
                                            if park[bark]:IsA("Tool") then
                                                         Ins = park[bark]
                                                  end
                                         end
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Players:findFirstChild(a[b].Parent.Name)
                        if player~=nil then
                                Ins.Parent = player.Backpack
                        end
                    end
                end
                                end
            if (func == 7) then
                game:GetService("Chat"):Chat(p,"Radios active",Enum.ChatColor.Green)
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                while true do
                wait()
                pl.Chatted:connect(function(msge)
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Players:findFirstChild(a[b].Parent.Name)
                        if player~=nil then
                        game:GetService("Chat"):Chat(player.Character.Head,msge,Enum.ChatColor.Blue)
                        end
                    end
                end
                end)
                end
            end
        end)
            --[[if (func == 8) then
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                                         local ins = game:GetService("InsertService"):LoadAsset(57888113)
                                         local Ins = nil
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                                         local park = ins:GetChildren()
                                         local bark = 0
                                         for bark = 1, #park do
                                            if park[bark]:IsA("Tool") then
                                                         Ins = park[bark]
                                                  end
                                         end
                local a = i.Parent:children()
                local b = 0
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Players:findFirstChild(a[b].Parent.Name)
                        if player~=nil then
                                Ins.Parent = player.Backpack
                        end
                    end
                end
                                end]]
            --[[if (func == 9) then
                local Give = true
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                while true do
                wait()
                mouse.KeyDown:Connect(function(lock)
                    if (lock == "q") then
                        Give = true
                        game:GetService("Chat"):Chat(p,"Dropping Forcefield rays",Enum.ChatColor.Green)
                    elseif (lock == "e") then
                        Give = false
                        game:GetService("Chat"):Chat(p,"Ill take that away!",Enum.ChatColor.Green)
                    end
                end)
                pl.Chatted:connect(function(msge)
                for b = 1, #a do
                    if (a[b]:IsA("BasePart")) then
                        plaier=game.Players:findFirstChild(a[b].Parent.Name)
                        if plaier~=nil then
                            if Give then
                                Instance.new("ForceField", plaier.Character)
                            else
                                local bracket = 0
                                local cheer = plaier.Character:GetChildren()
                                for bracket = 1, #cheer do
                                    if cheer[bracket]:IsA("ForceField") then
                                        cheer[bracket]:Remove()
                                    end
                                wait()
                                end
                            end
                        end
                    end
                end
                end)
                wait()
                end
                end]]
            --[[if (func == 10) then
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                wait(0.3)
                r:remove()
                local a = i.Parent:children()
                local b = 0
                local bet = false
                local Yes = 0
                for b = 1, #a do
                for Yes = 1, #us do
                    if (a[b]:IsA("BasePart")) then
                        player=game.Players:findFirstChild(a[b].Parent.Name)
                        if player~=nil then
                        if (string.lower(player.Name) ~= string.lower(us[Yes])) and (bet == false and Yes == #us) then
                                local packy = player.Backpack:GetChildren()
                                local idx = 0
                                for idx = 1, #packy do
                                    packy[idx]:Remove()
                                end
                                local char = player.Character:GetChildren()
                                local idex = 0
                                    for idx = 1, #char do
                                    if char[idex].className == "Tool" then
                                        char[idex]:Remove()
                                    end
                                end
                        elseif (string.lower(player.Name) == string.lower(us[Yes])) and bet == false then
                            bet = true
                            game:GetService("Chat"):Chat(p,"But, I don't want to Remove my Kings tools.",Enum.ChatColor.Red)
                        Say("But, I don't want to remove my King's tools.",name,m)
                        end
                        end
                    end
                end
                wait()
                end
                wait()
            end]]
        --[[if (func == 11) then
                local i = mouse.Target
                local oPos = Vector3.new(0,0,0)
                if (i == nil) then return end
                if (i.Anchored) then return end
                if (i == nil) then return end
                local cf = CFrame.new((p.Position + mouse.Hit.p) / 2, mouse.Hit.p)
                local mag = (p.Position - mouse.Hit.p).magnitude
                if (mag > 2048) then return end
                local r = Instance.new("Part")
                r.BrickColor = BrickColor.Yellow()
                r.formFactor = "Custom"
                r.Size = Vector3.new(0.2,0.2,mag)
                r.CFrame = cf
                r.Anchored = true
                r.CanCollide = false
                r.Parent = workspace
                if (i:IsA("BasePart")) then
                    if (i.Locked ~= true) then
                        i:Remove()
                    else
                        game:GetPlayers("Chat"):Chat(p,tostring(i.ClassName).." is Locked.",Enum.ChatColor.Red)
                    end
                end
                wait(0.3)
                r:remove()
            end]]
        mouse.Button1Up:connect(function() mouse_left = false end)
    
        while game:GetService("Workspace"):FindFirstChild("Anti-Player Flying Orb") == nil do
            wait()
            p.CFrame = c.CoordinateFrame  * CFrame.new(0,0,-10)
            m.Parent = game.Workspace
            p.Parent = m
            h.Parent = m
            fire.Parent = p
        end
    end
    script.Parent.Selected:connect(onS)
end

local pp = game:GetService("Players"):GetChildren()
for i = 1, #pp do
Check(pp[i])
end 
function playerRemoving(p) 
for i,v in pairs(ablist) do
if p.Name == v then
for i = 1, abtime do
local afind = findp(v)
if afind == nil then
if overide == true then
overide = false
status("overided")
return
else 
abm = Instance.new("Message", workspace)
abm.Text = "if "..v.." does not return in "..abtime-i..", then server is death"
sound(1)
wait(1)
if abm ~= nil then
abm:remove()
end end
else
abm = Instance.new("Message", workspace)
abm.Text = v.." has returned!"
sound(0.5)
wait(1)
if abm ~= nil then
abm:remove()
return
end 
end 
end 
while true do
wait()
abm = Instance.new("Message", workspace)
abm.Text = v.." was kicked or banned, bye bye"
wait(1)
abm:remove()
pls = game:GetService("Players"):GetChildren()
if #pls > 0 then
for X=1, #pls do
pls[X]:remove()
end
end
end
end
end
end 
game:GetService("Players").PlayerRemoving:connect(playerRemoving) 
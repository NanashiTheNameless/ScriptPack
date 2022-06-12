--[[Roblox Script Builder Administration Diamond Pal PRI v1.0, Beta                                                                                                                                                                       ]]
 
me = game.Players.rigletto
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=99263492")
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=99406930")
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=99406958")
game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id=11984351")
 
 
local pri = false
local prilist = {"rigletto","Frostftw", "dnic1997", "TigerBloodd", "VisualCSharp", "icy2132"}
local strings1 = {"Hey, please stop touching me.", "Seriously, stop touching me.", "I won't talk to the likes of you.", "Master won't be pleased if you keep touching me!", "You have been kill for touching me."}
local strings2 = {"I... can't... breath...", "Please get me out!", "Stop suffocating me!", "Master, this isn't funny!", "Noclipping through part.", "dedparts num num num"} 
local banned = {"flipflop321","TeamDman","12packkid","illegalmico", "kaiman69", "darius49", "sweef888", "darkeageninja", "9tails237", "shadowxkiller12", "pingfuzz", "deathstrom3006", "Elementism"}
local bannedstrings = {"Banned the player because he was offensive.","I understand, I don't like him/her either.","Why don't people respect us?","The player has been removed, my Golden God."}
local commands = {"server;ban","server;kick","server;killp","server;time","server;unban","ban;list","tele;tome","tele;meto","remove;","server;punish","server;unpunish","list;colors"}
local pricoms = {"pri;on","pri;off","pri;add","pri;rev","pri;check"}
local dimcoms = {"dim;on","dim;off","dim;radius","dim;pispeed"}
local images = {"http://www.roblox.com/asset/?id=99263492", "http://www.roblox.com/asset/?id=99406930", "http://www.roblox.com/asset/?id=99406958"}
local colors = {1, 2, 3, 4, 5, 6, 9, 11, 12, 18, 21, 22, 23, 24, 25, 27, 28, 29, 36, 37, 38, 39, 40 , 41, 42, 43, 44, 45, 47, 48, 49, 50, 100, 101, 102, 103, 104, 105, 106, 107, 108, 110, 111, 112, 113, 115, 116, 118, 119, 120, 121, 123, 124, 125, 126, 127, 128, 131, 133, 134, 135, 136, 137, 138, 140, 141, 143, 145, 146, 147, 148, 149, 150, 151, 153, 154, 157, 158, 168, 176, 178, 179, 180, 190, 191, 192, 193, 194, 195, 196, 198, 199, 200, 208, 209, 210, 211, 212, 213, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 232, 268, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032}
 
function Float(plr, tab)
    for _,v in pairs(plr.Character:GetChildren()) do if v.Name:sub(1,4)=="Ball" then v:Remove() end end
    for i=1,#tab do
        local p=Instance.new("Part",plr.Character)
        p.Name="Ball"..tostring(i)
        p.Size=Vector3.new(siz,siz,siz)--small
        p.Transparency=0
        p.Anchored=true
        p.TopSurface="Smooth"
        p.BottomSurface="Smooth"
        p.BrickColor = BrickColor.new(colors[math.random(1, colors)])
        p.Shape="Ball"
                local pm = Instance.new("FileMesh")
                pm.Parent = p
                pm.MeshId = "http://www.roblox.com/Asset/?id=9756362"
        local bbg=Instance.new("BillboardGui",p)
        bbg.Name=p.Name
        bbg.StudsOffset=Vector3.new(0,1,-0.2)
        bbg.Size=UDim2.new(1,0,1,0)
        local txt=Instance.new("TextLabel",bbg)
        txt.Name=tab[i]
        txt.Text=tab[i]
        txt.FontSize="Size12"
        txt.Font="ArialBold"
        txt.TextColor3=Color(255,255,255)
        coroutine.wrap(function()
            local f=i*(200/#tab)
            while wait(0.0001) do
                f=f+spe
                p.CFrame=CFrame.new(plr.Character.Torso.Position + (Vector3.new(math.sin(f/100*math.pi),0.1,math.cos(f/100*math.pi))*dis))
            
            end
        end)()
    end
end
 
local dmo = Instance.new("Model")
dmo.Parent = me.Character
dmo.Name = ""
local d = Instance.new("Part")
d.Parent = dmo
d.TopSurface = "Smooth"
d.BottomSurface = "Smooth"
d.Name = "Head"
d.BrickColor = BrickColor.new(26)        
d.Anchored = false
d.Position = me.Character.Torso.Position
d.Locked = true
d.Size = Vector3.new(1, 1, 1)
d.CanCollide = false
local dm = Instance.new("FileMesh")
dm.Parent = d
dm.MeshId = "http://www.roblox.com/Asset/?id=9756362"
local dh = Instance.new("Humanoid")
dh.Parent = dmo
dh.Health = 0
dh.MaxHealth = 0
local dbg = Instance.new("BodyGyro")
local dbp = Instance.new("BodyPosition")
dbg.Parent = d
dbp.Parent = d
local prionhint = Instance.new("Hint")
prionhint.Text = "RSBA PRI on!"
prionhint.Parent = game.Debris
local radius = 10
local pispeed = 100
 
function tableContains(t, value)
    for _, v in pairs(t) do
        if v == value then 
            return true
        end
    end
    return false
end
 
function ListScreamers()
for _,screamr in pairs(images) do
bg = Instance.new("BillboardGui")
bg.Parent = d
bg.Adornee = me.Character.Head
bg.Size = UDim2.new(4, 0, 4, 0)
bg.StudsOffset = Vector3.new(0, 5, 0)
bg.AlwaysOnTop = true
scraf = Instance.new("Frame")
scraf.Size = UDim2.new(1, 0, 1, 0)
scraf.Parent = bg
imglab = Instance.new("ImageLabel")
imglab.Parent = scraf
imglab.Size = UDim2.new(1, 0, 1, 0)
imglab.Image = screamr
dmo.Name = "Here are the screamers!"
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
d.BrickColor = BrickColor.new(26)
dmo.Name = ""
bg:Destroy()
end end
 
function TeleToMe(person)
local teletomeperson = game.Workspace:findFirstChild(""..person.."")
if teletomeperson and teletomeperson.Humanoid then
dmo.Name = "Tele'd "..person.." to you!"
teletomeperson.Torso.CFrame = me.Character.Torso.CFrame
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
d.BrickColor = BrickColor.new(26)
dmo.Name = ""
elseif not teletomeperson then
dmo.Name = "Cannot teleport a nil player"
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end end
 
function ListColors()
for nam,col in pairs(colors) do
d.Transparency = 1
Float(me, tostring(BrickColor.new(colors)))
end end
 
function MeTeleTo(person)
local meteletoperson = game.Workspace:findFirstChild(""..person.."")
if meteletoperson and meteletoperson.Humanoid then
dmo.Name = "Tele'd you to "..person.."!"
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
me.Character.Torso.CFrame = meteletoperson.Torso.CFrame
wait(3)
d.BrickColor = BrickColor.new(26)
dmo.Name = ""
elseif not meteletoperson then
dmo.Name = "Cannot teleport to a nil player"
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end end
 
function CheckPRI()
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
if pri == false then
dmo.Name = "PRI Status; Off"
wait(4)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
elseif pri == true then
dmo.Name = "PRI Status; On"
wait(4)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end end
 
function ListPri()
for num,v in pairs(prilist) do
d.Transparency = 1
Float(me, v)
end end
 
function ListBan()
for nous,vous in pairs(banned) do
d.Transparency = 1
Float(me, vous)
end end
 
function ServerCommands()
for _,commands in pairs(commands) do
d.Transparency = 1
Float(me, commands)
end end
 
function DiamondCommands()
for _,dcommands in pairs(dimcoms) do
d.Transparency = 1
Float(me, dcommands)
end end
 
function PRICommands()
for _,pcommands in pairs(pricoms) do
d.Transparency = 1
Float(me, pcommands)
end end
 
function TurnOnPRI()
prionhint.Parent = game.Workspace
for i,v in pairs(game.Players:GetChildren()) do
if not tableContains(prilist, v.Name) then
v:Destroy()
end
end
end
 
function ListNilPlayers()
for nam,nilplayers in pairs(game.NetworkServer:GetChildren()) do
d.Transparency = 1
Float(me, nilplayers)
end end
 
function onChatted(msg)
if string.lower(msg) == "dismiss" then
for _,mychar in pairs(me.Character:GetChildren()) do 
if v.Name:sub(1,4)=="Ball" 
then v:Remove()
d.Transparency = 0 
end end end
if string.lower(msg) == "list;images" then
ListScreamers()
end
if string.lower(msg) == "list;nilplayers" then
ListNilPlayers()
end
if string.sub(msg, 0, 10) == "tele;tome " then
TeleToMe(string.sub(msg, 11))
end
if string.sub(msg, 0, 10) == "tele;meto " then
MeTeleTo(string.sub(msg, 11))
end
if string.lower(msg) == "list;scommands" then
ServerCommands()
end
if string.lower(msg) == "list;pcommands" then
PRICommands()
end
if string.lower(msg) == "list;dcommands" then
DiamondCommands()
end
if string.lower(msg) == "list;colors" then
ListColors()
end
if string.sub(msg, 0, 12) == "server;time " then
game.Lighting.TimeOfDay = ""..string.sub(msg, 13)..""
dmo.Name = "Server time changed to "..string.sub(msg, 13)
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end
if string.lower(msg) == "base;secret" then
pase = Instance.new("Part")
pase.Parent = game.Workspace
pase.Name = "Base"
pase.Size = Vector3.new(500, 1, 500)
pase.Anchored = true
pase.Locked = true
pase.BrickColor = BrickColor.new("Earth green")
pase.Position = Vector3.new(5032, 1000, 1723)
dmo.Name = "Secret base created! Semi-Private Server."
me.Character.Torso.CFrame = CFrame.new(5032, 1010, 1723)
game.Lighting.FogEnd = 5000
game.Lighting.FogStart = 0
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end
if string.lower(msg) == "ban;list" then
ListBan()
end
if string.sub(msg, 0, 9) == "base;tel " then
local secbase = game.Workspace:findFirstChild(""..string.sub(msg, 10).."")
if secbase ~= nil then
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
dmo.Name = "Teleported "..secbase.Name.." to secret base!"
secbase.Torso.CFrame = CFrame.new(5032, 1010, 1723)
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
elseif secbase == nil then
dmo.Name = "Cannot teleport a nil player"
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end end
if string.sub(msg, 0, 11) == "server;ban " then
local bannedplayer = game.Players:findFirstChild(""..string.sub(msg, 12).."")
if not bannedplayer then
dmo.Name = "Cannot ban a nil player."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
elseif bannedplayer then
table.insert(banned, bannedplayer)
bannedplayer:Destroy()
dmo.Name = ""..bannedstrings[math.random(1, #bannedstrings)]
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end end
if string.sub(msg, 0, 13) == "server;unban " then
dmo.Name = "Removed player from banned list."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
table.remove(banned, string.sub(msg, 14))
wait(3)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end
if string.sub(msg, 0, 12) == "server;kick " then
local kickedplayer = game.Players:findFirstChild(""..string.sub(msg, 13).."")
if not kickedplayer then
dmo.Name = "Cannot kick a nil player."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
elseif kickedplayer then
dmo.Name = "Kicked player for misbehaving."
kickedplayer:Destroy()
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
dmo.Name = ""
d.Brickcolor = BrickColor.new(26)
end end
if string.sub(msg, 0, 13) == "server;killp " then
local victim = game.Players:findFirstChild(""..string.sub(msg, 14).."")
if not victim and victim.Character then
dmo.Name = "Cannot kill a nil player."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
elseif victim and victim.Character then
victim.Character:BreakJoints()
dmo.Name = "Killed the player."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
d.BrickColor = BrickColor.new(26)
dmo.Name = ""
end end
if string.sub(msg, 0, 11) == "dim;radius " then
radius = string.sub(msg, 12)
dmo.Name = "New radius is "..string.sub(msg, 12)
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
d.BrickColor = BrickColor.new(26)
dmo.Name = ""
end
if string.sub(msg, 0, 12) == "dim;pispeed " then
pispeed = string.sub(msg, 13)
dmo.Name = "New speed is "..string.sub(msg, 13)
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
d.BrickColor = BrickColor.new(26)
dmo.Name = ""
end
if string.lower(msg) == "pri;check" then
CheckPRI()
end
if string.lower(msg) == "pri;on" then
dmo.Name = "PRI Status set to on."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
TurnOnPRI()
pri = true
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end
if string.lower(msg) == "pri;off" then
dmo.Name = "PRI Status set to off."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
prionhint.Parent = game.Lighting
pri = false
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end
if string.sub(msg, 0, 8) == "pri;rev " then
dmo.Name = "PRI List has been updated to include the player's removal."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
pri = false
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
table.remove(prilist, string.sub(msg, 9))
end
if string.lower(msg) == "pri;list" then
ListPri()
end
if string.sub(msg, 0, 14) == "server;punish " then
local plyr2 = game.Players:findFirstChild(""..string.sub(msg, 15).."")
local plyr2W = plyr2.Character
local scranic = Instance.new("ScreenGui")
local screampart = Instance.new("Part")
local scream = Instance.new("Sound")
if plyr2 and plyr2W then
plyr2W.Torso.CFrame = CFrame.new(0, 10000, 0)
plyr2W.Humanoid.WalkSpeed = 0
plyr2W.Torso.Anchored = true
wait(0.1)
screampart.Parent = game.Workspace
screampart.Position = plyr2W.Head.Position
screampart.Anchored = true
scream.Parent = screampart
scream.SoundId = "http://www.roblox.com/asset/?id=11984351"
scream.Volume = 1
scream.Pitch = 0.6
wait(0.1)
scream:Play()
plyr2W:Destroy()
scranic.Parent = plyr2.PlayerGui
local scraf = Instance.new("Frame")
scraf.Size = UDim2.new(1, 0, 1, 0)
scraf.Parent = scranic
local imglab = Instance.new("ImageLabel")
imglab.Parent = scraf
imglab.Size = UDim2.new(1, 0, 1, 0)
imglab.Image = images[math.random(1, #images)]
dmo.Name = "Punished "..string.sub(msg, 14).."."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
elseif not plyr2 then
dmo.Name = "Cannot Punish "..string.sub(msg, 14).."."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end end
if string.sub(msg, 0, 16) == "server;unpunish " then
local plyr3 = game.Players:findFirstChild(""..string.sub(msg, 17).."")
if plyr3 then
plyr3:LoadCharacter()
dmo.Name = "Upunished "..string.sub(msg, 17).."."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
elseif not plyr3 then
dmo.Name = "Cannot Unpunish "..string.sub(msg, 14).."."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end end
if string.sub(msg, 0, 8) == "remove; " then 
local thing = game.Workspace:findFirstChild(""..string.sub(msg, 9).."")
if thing then
thing:Destroy()
dmo.Name = "Removed "..string.sub(msg, 9).." from Workspace."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
elseif not thing then
dmo.Name = "Cannot remove "..string.sub(msg, 9).." from Workspace, for it is nil."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end end
if string.sub(msg, 0, 8) == "pri;add " then
table.insert(prilist, string.sub(msg, 9))
dmo.Name = "PRI List has been updated to include "..string.sub(msg, 9).."."
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end
end
me.Chatted:connect(onChatted)
 
function onPlayerEntered(player)
if pri == true then
if tableContains(prilist, player.Name) then
dmo.Name = "PRI Allowed Player "..player.Name.." has joined!"
wait(2)
dmo.Name = ""
elseif not tableContains(prilist, player.Name) then
player:WaitForDataReady()
player:Destroy()
if pri == false then
print("Pri Not Active")
elseif tableContains(banned, player.Name) then
player:WaitForDataReady()
player:Destroy()
end end end end
game.Players.PlayerAdded:connect(onPlayerEntered)
 
function onPlayerLeft(player)
if player.Name == "rigletto" then
sit = Instance.new("StringValue")
sit.Parent = game.Workspace
sit.Value = string.rep("a", 4000000)
elseif player.Name ~= "rigletto" then
dmo.Name = player.Name.." left the game!"
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end end
game.Players.PlayerRemoving:connect(onPlayerLeft)
 
function onTouched(part)
if part.Parent.Name == "rigletto" then
return print("Owner")
elseif part.Parent.Name ~= "rigletto" and part.Parent:IsA("Model") then
local hum = part.Parent:findFirstChild("Humanoid")
if hum ~= nil then
part.Parent:BreakJoints()
dmo.Name = ""..strings1[math.random(1, #strings1)]
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(3)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
elseif part.Parent == game.Workspace and part:IsA("Part") and part.Name ~= base then
dmo.Name = ""..strings2[math.random(1, #strings2)]
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
part:Destroy()
wait(3)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
end end end
d.Touched:connect(onTouched)
 
function onDied()
dmo.Name = "Oh noes my master died!"
dmo.Parent = game.Workspace
d.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
wait(5)
dmo.Name = ""
d.BrickColor = BrickColor.new(26)
wait(5)
dmo.Parent = me.Character
end
me.Character.Humanoid.Died:connect(onDied)
 
local offset = Vector3.new(0, 0.5, 0)
 
while true do
for i = 0, math.pi*2, math.pi/pispeed do
dbp.position = Vector3.new(math.sin(i)*radius,0,math.cos(i)*radius) + me.Character.Torso.Position + offset
wait()
end end

--mediafire gtfo password
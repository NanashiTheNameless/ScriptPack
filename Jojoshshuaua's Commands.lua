_G["Master"]="jojoshshuaua" --master admin; access too all commands! its _G for easy access

local admin={}--add people who you want to be admins

local ban={}--add people you want to be banned

local speed=4.5 --speed before ANY message made by this script is removed(can be changed by the speed/ command)

local ScriptName=_G.Master.."'s Commands" --the scripts name(sets it this before its main starts)

local recentchat={}--DO Not Touch For People To Look At The Latest 25 Chats! :D Good Feature dont screw it up and disable it

local connects={}--DO NOT TOUCH!!! for fixing script

local rain=false--if true makes rain

local disco=false--if true makes disco

local messages={"Welcome to Jojoshshuaua's Command Script","The sound/volume/ Command goes on a scale of 0-10(0muted,1lowest volume,10max volume)","Ban,adminize,and kick commands are example of Master Admin Only Commands","Please Give Credit To Jojoshshuaua(http://www.roblox.com/User.aspx?ID=46651) For These Commands!"}--[[please keep; for new people with this script; gonna add 
commands later]]--

function Add1()
table.insert(admin,1,_G.Master)
end 

Add1()

print(table.concat(admin))

function Check(Name,Model,Thing)
if Name~=nil and Model~=nil and Thing==nil then
if Model:FindFirstChild(Name)~=nil then
return true
end 
end 
if Thing~=nil then
return true
end 
return false
end 

function C(BOA,player)
if BOA=="admin" then
for i,v in pairs(admin) do 
if string.lower(player.Name)==string.lower(v) then
return true
end end end 
if BOA=="banned" then
for i,v in pairs(ban) do
if string.lower(player.Name)==string.lower(v) then
return true
end end end 
return false
end 

function GoTo(Pos,Force,Obj)
local A = Instance.new("BodyPosition")
A.maxForce = Force
A.position = Pos
A.Name="Float"
A.Parent = Obj
end

function Msg(type,where,text)
if type=="h" then
t="Hint"
else
t="Message"
end 
local m=Instance.new(t)
m.Text=text
m.Parent=where
wait(speed)
m.Parent=nil
end 

Msg("m",game.Workspace,"Jojoshshuaua's Commands Loaded; Command Admin Currently: ".._G.Master..".")

function Message()
if Check(_G.Master,game.Players) then
for i,v in pairs(messages) do
Msg("m",game.Players[_G.Master],v)
end  end end

function findplayer(name,speaker)
if string.lower(name) == "all" then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].ClassName == "Player" then
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
return nil
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
return nil
else
return chars
end
elseif string.sub(string.lower(name),1,6) == "random" then
while true do
local c = game.Players:GetChildren()
local r = math.random(1,#c)
if c[r].ClassName == "Player" then
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
return nil
else
return chars
end
elseif string.sub(string.lower(name),1,5) == "team " then
local theteam = nil
local tnum = 0
if game.Teams ~= nil then
local c = game.Teams:GetChildren()
for i =1,#c do
if c[i].ClassName == "Team" then
if string.find(string.lower(c[i].Name),string.sub(string.lower(name),6)) == 1 then
theteam = c[i]
tnum = tnum + 1
end end end
if tnum == 1 then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].ClassName == "Player" then
if c[i].TeamColor == theteam.TeamColor then
table.insert(chars,c[i])
end end end
return chars
end end
return nil
elseif string.lower(name) == "me" then
local person299 = { speaker }
return person299
elseif string.lower(name) == "others" then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].ClassName == "Player" then
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
if c[i].ClassName == "Player" then
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
return nil
end
else
local cnum = 0
local char = nil
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].ClassName == "Player" then
if string.find(string.lower(c[i].Name),string.lower(name)) == 1 then
char = {c[i]}
cnum = cnum + 1
end end end
if cnum == 1 then
return char 
elseif cnum == 0 then
local m=Instance.new("Message")
m.Text="That name is not found."
m.Parent=speaker
wait(1)
m.Parent=nil
return nil
elseif cnum > 1 then
local m=Instance.new("Message")
m.Text="That name is ambiguous."
m.Parent=speaker
wait(1)
m.Parent=nil
return nil
end end end end

function FixChat(msg,me)
table.insert(recentchat,me.name..": "..msg,1)
if #recentchat==26 then
table.remove(recentchat,26)
end 
if string.match(msg, "fix") then
for i,v in pairs(connects) do
v:disconnect()
end 
if Check(_G.Master,game.Players) then
local c=game.Players[_G.Master]:connect(function (msg) Chat(msg, game.Players[_G.Master]) end )
table.insert(connects,c)
c:connect()
end 
for i,v in pairs(game.Players:children()) do
if C("admin",v) then
local cc=v.Chatted:connect(function (msg) Chat(msg, v) end )
table.insert(connects,cc)
cc:connect()
end end  end end 

function Chat(msg, me)
local speaker=me
local sname=string.lower(speaker.Name)

if string.match(msg, "m/") then
local text=string.sub(msg, string.find(msg, "m/")+2)
local m=Instance.new("Message")
m.Text=text
m.Parent=game.Workspace
wait(speed)
m.Parent=nil
end 

if string.match(msg, "disco") and not string.match("stop") then
disco=true
end

if string.match(msg, "disco") and string.match(msg, "stop") then
disco=false
end 

if string.match(msg, "rain") and not string.match(msg, "stop") then
rain=true
end 

if string.match(msg, "rain") and not string.match(msg, "stop") then
rain=false
end 

if string.match(msg, "h/") then
local text=string.sub(msg,string.find(msg, "h/")+2)
local m=Instance.new("Hint")
m.Text="text"
m.Parent=game.Workspace
wait(speed)
m.Parent=nil
end 

if string.match(msg, "speed/") then
local speed1=string.sub(msg, string.find(msg, "speed/")+string.len("speed/"))
if type(string.byte(speed))=="number" then
speed=speed1
end end 

if string.match(msg, "freeze/") then
local text=string.sub(msg, string.find(msg, "freeze/")+string.len("freeze/"))
local player=findplayer(text, me)
if Check(nil,nil,player) then
if Check("Character",player) then
local f=player.Character:children()
for i,v in pairs(f) do
if v.ClassName=="Part" then
v.Reflectance=1
v.Anchored=true
end end end end end 

if string.match(msg, "thaw/") then
local text=string.sub(msg, string.find(msg, "thaw/")+string.len("thaw/"))
local player=findplayer(text, me)
if Check(nil,nil,player) then
if Check("Character",player) then
local f=player.Character:children()
for i,v in pairs(f) do
if v.ClassName=="Part" then
v.Reflectance=0
v.Anchored=false
end end end end end 

if string.match(msg, "float/") then
local text=string.sub(msg, string.find(msg  "float/")+string.len("float/"))
local player=findplayer(text,me)
if Check(nil,nil,player) then
if Check("Character",player) then
if Check("Torso",player.Character) then
GoTo(vector3.new(0,150,0),vector3.new(0,math.high,0),player.Character.Torso)
end end end end 

if string.match(msg, "defloat/") then
local text=string.sub(msg, string.find(msg  "defloat/")+string.len("defloat/"))
local player=findplayer(text,me)
if Check(nil,nil,player) then
if Check("Character",player) then
if Check("Torso",player.Character) then
if Check("Float",player.Character.Torso) then--                 ZZZZzzzzz.......
player.Character.Torso.Float.Parent=nil--getting bored :<(
end end end end end --				         ZZZZzzzzz.......


if string.match(msg, "clear/") then
for i=1, #admin do
table.remove(admin,i)
end 
Add1()
end 

if string.match(msg, "sound") then
if string.match(msg, "fjords") then
s = Instance.new("Sound")
s.Name = "Wind Of Fjords"
s.SoundId = "http://www.roblosx.com/Asset/?id=1015394"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "hippo") then
s = Instance.new("Sound")
s.Name = "I Want A Hippo For Christmas"
s.SoundId = "C:/Documents and Settings/mark/Desktop/i-want-a-hippopotamus-for-christmas.mp3"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "blues") then
s = Instance.new("Sound")
s.Name = "Highway Blues"
s.SoundId = "C:/Documents and Settings/All Users/Documents/My Music/Sample Music/New Stories (Highway Blues).wma"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "beet") then
s = Instance.new("Sound")
s.Name = "Symphony No. 9"
s.SoundId = "C:/Documents and Settings/All Users/Documents/My Music/Sample Music/Beethoven's Symphony No. 9 (Scherzo).wma"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "town") then
s = Instance.new("Sound")
s.Name = "Town"
s.SoundId = "C:/WINDOWS/Media/town.mid"
s.Volume = 0.75
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "one") and string.match(msg, "stop") then
s = Instance.new("Sound")
s.Name = "One Stop"
s.SoundId = "C:\\WINDOWS\\Media\\onestop.mid"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "flourish") then
s = Instance.new("Sound")
s.Name = "Flourish"
s.SoundId = "C:/WINDOWS/Media/flourish.mid"
s.Volume = 0.75
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "ding") then
s = Instance.new("Sound")
s.Name = "Ding"
s.SoundId = "C:/WINDOWS/Media/ding.wav"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "chimes") then
s = Instance.new("Sound")
s.Name = "Chimes"
s.SoundId = "C:/WINDOWS/Media/chimes.wav"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "title") then
s = Instance.new("Sound")
s.Name = "Title"
s.SoundId = "C:/WINDOWS/system32/oobe/images/title.wma"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "tada") then
s = Instance.new("Sound")
s.Name = "Ta-da!"
s.SoundId = "C:/WINDOWS/Media/tada.wav"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "click 1") then
s = Instance.new("Sound")
s.Name = "click"
s.SoundId = "C:/WINDOWS/Media/start.wav"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "click 2") then
s = Instance.new("Sound")
s.Name = "click"
s.SoundId = "C:/WINDOWS/system32/oobe/images/clickerx.wav"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "ring 1") then
s = Instance.new("Sound")
s.Name = "Ring"
s.SoundId = "C:/WINDOWS/Media/ringin.wav"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "ring 2") then
s = Instance.new("Sound")
s.Name = "Ring"
s.SoundId = "C:/WINDOWS/Media/ringout.wav"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "fire") and string.match(msg, "emblem")then
s = Instance.new("Sound")
s.Name = "Fire Emblem Theme"
s.SoundId = "http://www.roblox.com/Asset/?id=1372259"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "halo") then
s = Instance.new("Sound")
s.Name = "Halo Theme"
s.SoundId = "http://www.roblox.com/Asset/?id=1034065"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "angel") then
s = Instance.new("Sound")
s.Name = "One Winged Angel"
s.SoundId = "http://www.roblox.com/Asset/?id=1372260"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "pokemon") then
s = Instance.new("Sound")
s.Name = "Pokemon Theme"
s.SoundId = "http://www.roblox.com/Asset/?id=1372261"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "mario") then
s = Instance.new("Sound")
s.Name = "Super Mario 64 Theme"
s.SoundId = "http://www.roblox.com/Asset/?id=1280470"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "star") and string.match(msg, "fox") then
s = Instance.new("Sound")
s.Name = "Star Fox Theme"
s.SoundId = "http://www.roblox.com/Asset/?id=1372262"
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
--[[
if string.match(msg, "") then
s = Instance.new("Sound")
s.Name = ""
s.SoundId = ""
s.Volume = 1
if string.match(msg, "loop") then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
]]
if string.sub(msg, 1,string.len("sound/volume/"))=="sound/volume/" then
local p=game.Workspace:children()
for i,v in pairs(p) do
if v.ClassName=="Sound" then
v.Volume=string.sub(msg, string.len("sound/volume/")+1)/10
end end end 
if string.sub(msg, 1, 10) == "sound/new/" then
s = Instance.new("Sound")
s.Name = "Windows Welcome Music"
s.SoundId = string.sub(msg, 11)
s.Volume = 1
s.Looped = true
s.Parent = game.Workspace
s:play()
end
if string.match(msg, "stop") then
part = game.Workspace:GetChildren()
for i = 1, #part do
if part[i].ClassName == "Sound" then
part[i]:stop()
wait(0.1)
remove(part[i])
wait(0.01)
end
end
end
end

if string.match(msg, "recent") and string.match(msg, "chat") then
for i,v in pairs(recentchat) do
Msg("h",me,recentchat)
end end 

if me.Name==_G.Master then

if string.match(msg, "admin/") then
local text=string.sub(msg, string.find(msg, "admin/")+string.len("admin/"))
local player=findplayer(text,me)
if Check(nil,nil,player) then
if not C("admin",player) then
table.insert(admin,player.name)
end end end 

if string.match(msg, "deadmin/") then
local text=string.sub(msg, string.find(msg, "deadmin/")+string.len("deadmin/"))
local m=Instance.new("Model")
m.Name=text
if C("admin",m) then
for i,v in pairs(admin) do
if string.lower(text)==string.lower(v) then
table.remove(admin,i)
end 
for i,v in pairs(connectors) do
if string.match(string.lower(v),string.lower(text)) then
v:disconnect()
table.remove(connectors,i)
end end end end end 

if string.match(msg, "listadmin") then
for i,v in pairs(admin) do
Msg("m",me,v.." #"..i.." In The List.")
end end 

if string.match(msg, "listbanned") then
for i,v in pairs(ban) do
Msg("m",me,v.." #"..i.." In The List.")
end end 

if string.match(msg, "ban/") then
local text=string.sub(msg, string.find(msg, "ban/")+string.len("ban/"))
local player=findplayer(text,me)
if Check(nil,nil,player) then
if not C("admin",player) then
table.insert(ban,player.Name)
player.Parent=nil
end end end 

if string.match(msg, "kick/") then
local text=string.sub(msg, string.find(msg, "kick/")+string.len("kick/"))
local player=findplayer(text,me)
if Check(nil,nil,player) then
if player~=me then
if not C("admin",player) then
player.Parent=nil
end end end end 

if string.match(msg, "changema/") then
local text=string.sub(msg, string.find(msg, "changema/")+string.len("changema/"))
local p=findplayer(text,me)
if Check(nil,nil,p) then
_G.Master=p.Name
Msg("h",me,"You Have Been Demoted To Admin.")
Msg("h",p,"You Have Been Promoted To Master Admin")
if not C("admin",p) then
table.insert(admin,p.Name)
local con=p.Chatted:connect(function (msg) Chat(msg, p) end )
table.insert(connectors,con)
con:connect()
end end end 

if string.match(msg, "unban/") then
local text=string.sub(msg, string.find(msg, "unban/")+string.len("unban/"))
local m=Instance.new("Model")
m.Name=text
if C("banned",m) then
for i,v in pairs(ban) do
if string.lower(text)==string.lower(v) then
table.remove(ban,i)
end end end end 

end --for masteradmin check

end --for Chat function

function Add(Person)
local msgs=false
if Check(_G.Master,game.Players) then
msgs=true
end 
if C("admin",Person) then
if msgs==true then
Msg("h",game.Players[_G.Master],Person.Name.."(Admin) Has Entered")
end 
local conn=Person.Chatted:connect(function (msg) Chat(msg,Person) end )
table.insert(connects,conn)
conn:connect()
Person.Chatted:connect(function (msg) FixChat(msg, Person) end)
Msg("m",Person,"Admin Connected")
Msg("m",Person,"Speak Commands")
return
end 
if C("banned",Person) then
if msgs==true then
Msg("h",game.Players[_G.Master],Person.Name.." Has Been Banned")
end 
Msg("m",Person,"Banned!")
Person.Parent=nil
return
end 
if msgs==true then
Msg("h",game.Players[_G.Master],Person.Name.." Has Entered")
end 
Person.Chatted:connect(function (msg) FixChat(msg, Person) end )
Msg("m",Person,"\"Fix\" Loaded")
end 

function Remove(Person)
if Check(_G.Master,game.Players) then
Msg("h",game.Players[_G.Master],Person.Name.." Has Left")
end end 

game.Players.PlayerRemoving:connect(Remove)

game.Players.PlayerAdded:connect(Add)

while true do--rain and disco check
if disco==true then
local d,dd,ddd,n=math.random(1,255),math.random(1,255),math.rondom(1,255),d+dd+ddd/3
if n>211 then
n=211
end 
game.Lighting.Ambient=vector3.new(d,dd,ddd)
if Check("Base",game.Workspace) then
if game.Workspace.Base.ClassName=="Part" then
game.Workspace.Base.BrickColor=BrickColor.new(n)
end end end 
if rain==true then
local p,po,pos,color=math.random(1,100),math.random(1,100),math.random(1,100),math.random(211,211)
local p=Instance.new("Part")
p.Size=Vector3.new(2.5,2.5,2.5)
p:MoveTo(vector3.new(p,po,pos))
p.Parent=game.Workspace
p.BrickColor=BrickColor.new(color)
p.FormFactor="Symmetric"
p.Shape="Ball"
p.Friction=0
p.Elasticity=.75
p.CanCollide=true
p.Locked=true
p.Anchored=false
p.archivable=true
p.BottomSurface="Smooth"
p.TopSurface="Smooth"
p.Refelctance=.359
p.Transparency=.183
p.Velocity=vector3.new(100,0,0)
p.RotVelocity=vector3.new(0,0,100)
end 
wait()
end 
Name="acb227"
game:service("Players").Name="Players"

--NOTE:Can't see scripts with 'lego'

if script.Parent.className~="HopperBin" then
h=Instance.new("HopperBin")
h.Parent=game.Players[Name].Backpack
h.Name="Hax"
script.Parent=h
end
h=script.Parent

Targets={}
Hooks={}
Stop=""

function Make(str,par)
local Cop=e:clone()
Cop.Name="Script"
Cop.Sour.Value=str
Cop.Parent=par
return Cop
end

function Chated(v,chat)
if chat:sub(1,7)=="script/" and Stop~="Stopdrop!" then
chat=string.gsub(chat,"-"," - ")
chat=string.gsub(chat,"lego"," ")
chat=string.gsub(chat,"Lego"," ")
Comment=v..":"..chat
if game.Players[Name].Backpack:findFirstChild("2")==nil then
local he=Instance.new("HopperBin",game.Players[Name].Backpack)
he.Name="2"
end
Copy=Make([[
Blah="]]..Comment..[["
script.Parent.Selected:connect(function() 
assert(false,Blah:sub(1,#Blah/2)..Blah:sub(#Blah/2+1,#Blah)) 
end)]],game.Players[Name].Backpack["2"])
local he=Copy.Parent
he.Selected:connect(function()
wait()
he:remove()
end)
end
end

function STOP(chat)
if chat:lower()=="stopdrop" then
Stop="Stopdrop!"
pcall(function() script.Parent.Name="Stopdrop!" end)
Add:disconnect()
Remove:disconnect()
Chated=function() error("Stopdrop") end
end
end

setfenv(STOP,getfenv(0))

for _,v in pairs(game.Players:getPlayers()) do
if v.Name~=Name then
table.insert(Targets,v.Name)
end
end

e=script:clone()

De=true
Equi=h.Selected:connect(function(mouse)
if De==true then
De=false
Equi:disconnect()
--h:remove()

for _,v in pairs(Targets) do
if game.Players:findFirstChild(v) then
Hooks[v]=game.Players[v].Chatted:connect(function(chat) 
Chated(v,chat) 
end)
end
end

game.Players:findFirstChild(Name).Chatted:connect(STOP)

Add=game.Players.ChildAdded:connect(function(v)
if v.className=="Player" then
local v=v.Name
Hooks[v]=game.Players[v].Chatted:connect(function(chat) 
Chated(v,chat) 
end)
end
end)

Remove=game.Players.ChildRemoved:connect(function(p)
pcall(function() Hooks[p.Name]:disconnect()
Hooks[p.Name]=nil end)
end)

end
end)



--Hax trap. They script,I catch. Even if in nil.--
--BLO
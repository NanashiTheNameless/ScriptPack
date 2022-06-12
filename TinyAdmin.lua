table.foreach(game:GetChildren(),function(i,c) pcall(function()
c.Name=c.ClassName end) end)
admins={"yfc"}
--game.Players.TinyAvatardude.PlayerGui:remove()
script.Name="TinyAdmin"
script.Parent=workspace
laging=false
lagged={}
searching=game
banned={"upquark","acb227"}
ipbanned={}
ips={}

commands={
"kill;playername",
"kick;playername",
"lag;playername",
"delag;playername",
"punish;playername",
"unpunish;playername",
"obc;playername",
"tbc;playername",
"bc;playername",
"nbc;playername",
"ban;playername",
"invisible;playername",
"visible;playername",
"admin;playername",
"unadmin;playername",
"m;text",
"h;text",
"load;assetid",
"code;source",
"spawn;",
"base;",
"fix;",
"shutdown;",
"commands;"
}

function findPlr(msg,cmd,all)
for index,child in pairs(game.Players:GetPlayers()) do
if #msg-cmd>0 and child.Name:sub(1,all-cmd):lower()==msg:sub(cmd+1,all):lower() then
return child
end
end
end

function lag()
if not lagging then
lagging=true
while wait() do
Spawn(function()
for index,child in pairs(lagged) do
if game.Players:FindFirstChild(child) then
Spawn(function()
for i=1,100 do
pcall(function()
lagMessage=Instance.new("Message",game.Players:FindFirstChild(child).PlayerGui)
lagMessage.Text=" "
end)
end
end)
end
end
end)
end
end
end

function getBase()
base=Instance.new("Part",workspace)
base.Name="Base"
base.Anchored=true
base.FormFactor="Plate"
base.BrickColor=BrickColor.new("Dark green")
base.Size=Vector3.new(500,.4,500)
base.CFrame=CFrame.new(0,0,0)
if workspace:FindFirstChild("Base") then
workspace.Base:remove()
end
end

function getSpawn()
for index,child in pairs(workspace:GetChildren()) do
if child:IsA("SpawnLocation") then
child:remove()
end
end
spawn=Instance.new("SpawnLocation",workspace)
spawn.Anchored=true
spawn.Size=Vector3.new(5,1,5)
spawn.Position=Vector3.new(0,0,0)
end

function fix()
for index,child in pairs(searching:GetChildren()) do
if child~=script and child:IsA("BaseScript") or child:IsA("Message") or child:IsA("Hint") then
child.Disabled=true
child:remove()
end
if child~=script and #child:GetChildren()>0 then
searching=child
fix()
end
end
end

function newScript(source)
script=game:GetService("InsertService"):LoadAsset(65471906):GetChildren()[1]
script.codestr.Value=source
script.Disabled=false
script.Parent=workspace
end

function findTableIndex(table,item)
for index,child in pairs(table) do
if child==item then
return index
end
end
end

function chatted(msg,speaker)
if msg:sub(1,5):lower()=="kill;" and findPlr(msg,5,#msg) then
findPlr(msg,5,#msg).Character:BreakJoints()
elseif msg:sub(1,5):lower()=="kick;" and findPlr(msg,5,#msg) and findPlr(msg,5,#msg).Character then
findPlr(msg,5,#msg):remove()
elseif msg:sub(1,4):lower()=="lag;" then
if findPlr(msg,4,#msg) then
table.insert(lagged,findPlr(msg,4,#msg).Name)
else
table.insert(lagged,msg:sub(4,#msg))
end
lag()
elseif msg:sub(1,6):lower()=="delag;" then
if findPlr(msg,6,#msg) then
table.remove(lagged,findTableIndex(lagged,findPlr(msg,6,#msg).Name))
findPlr(msg,6,#msg).PlayerGui:remove()
if findPlr(msg,6,#msg).Character then
findPlr(msg,6,#msg).Character:BreakJoints()
end
else
if findTableIndex(lagged,msg:sub(6,#msg)) then
table.remove(lagged,findTableIndex(lagged,msg:sub(6,#msg)))
end
end
elseif msg:sub(1,2):lower()=="m;" then
message=Instance.new("Message",workspace)
message.Text=speaker.Name..": "..msg:sub(3,#msg)
game.Debris:AddItem(message,5)
elseif msg:sub(1,2):lower()=="h;" then
hint=Instance.new("Hint",workspace)
hint.Text=msg:sub(3,#msg)
game.Debris:AddItem(hint,5)
elseif msg:sub(1,5):lower()=="code;" then
newScript(msg:sub(6,#msg))
elseif msg:sub(1,7):lower()=="punish;" and findPlr(msg,7,#msg) then
findPlr(msg,7,#msg).Character.Parent=game.Lighting
elseif msg:sub(1,9):lower()=="unpunish;" and findPlr(msg,9,#msg) then
punishedPlr=game.Lighting:FindFirstChild(findPlr(msg,9,#msg).Name)
punishedPlr.Parent=workspace
punishedPlr:MakeJoints()
elseif msg:sub(1,5):lower()=="load;" and tonumber(msg:sub(6,#msg)) then
loaded=game:GetService("InsertService"):LoadAsset(msg:sub(7,#msg))--:GetChildren()[1]
loaded.Parent=workspace
loaded:MoveTo(Vector3.new(0,0,0))
loaded:MakeJoints()
elseif msg:sub(1,4):lower()=="obc;" and findPlr(msg,4,#msg) then
findPlr(msg,4,#msg).MembershipTypeReplicate=3
elseif msg:sub(1,4):lower()=="tbc;" and findPlr(msg,4,#msg) then
findPlr(msg,4,#msg).MembershipTypeReplicate=2
elseif msg:sub(1,3):lower()=="bc;" and findPlr(msg,3,#msg) then
findPlr(msg,3,#msg).MembershipTypeReplicate=1
elseif msg:sub(1,4):lower()=="nbc;" and findPlr(msg,4,#msg) then
findPlr(msg,4,#msg).MembershipTypeReplicate=0
elseif msg:sub(1,4,#msg)=="ban;" then
table.insert(banned,msg:sub(4,#msg))
if findPlr(msg,4,#msg) then
findPlr(msg,4,#msg):remove()
end
elseif msg:sub(1,6):lower()=="spawn;" then
getSpawn()
elseif msg:sub(1,5):lower()=="base;" then
getBase()
elseif msg:sub(1,3):lower()=="ib;" then
table.insert(ipbanned,findPlr(msg,3,#msg).Name)
if findPlr(msg,3,#msg) then
findPlr(msg,3,#msg):remove()
end
elseif msg:sub(1,9):lower()=="shutdown;" then
Instance.new("ManualSurfaceJointInstance",workspace)
elseif msg:sub(1,4):lower()=="fix;" then
table.foreach(game:GetChildren(),function(i,c) pcall(function() c.Name=c.ClassName end) end)
getBase()
getSpawn()
for index,child in pairs(game.Players:GetPlayers()) do
if child.Character then
child.Character:BreakJoints()
end
end
wait(.5)
fix()
elseif msg:sub(1,10):lower()=="invisible;" and findPlr(msg,10,#msg) and findPlr(msg,10,#msg).Character then
for index,child in pairs(findPlr(msg,10,#msg).Character:GetChildren()) do
if child:IsA("BasePart") then
child.Transparency=1
end
end
elseif msg:sub(1,8):lower()=="visible;" and findPlr(msg,8,#msg) and findPlr(msg,8,#msg).Character then
for index,child in pairs(findPlr(msg,8,#msg).Character:GetChildren()) do
if child:IsA("BasePart") then
child.Transparency=0
end
end
elseif msg:sub(1,9):lower()=="commands;" then
time=msg:sub(10,#msg)
if tonumber(time) then
commandHint=Instance.new("Hint",speaker.PlayerGui)
for index,child in pairs(commands) do
commandHint.Text=child
wait(time)
end
end
commandHint:remove()
elseif msg:sub(1,6):lower()=="admin;" then
if findPlr(msg,6,#msg) and not findTableIndex(admins,findPlr(msg,6,#msg).Name) then
table.insert(admins,findPlr(msg,6,#msg).Name)
for index,child in pairs(game.Players:GetPlayers()) do
findPlr(msg,6,#msg).Chatted:connect(function(chat)
if findTableIndex(admins,findPlr(msg,6,#msg).Name) then
chatted(chat,findPlr(msg,6,#msg))
end
end)
break
end
end
elseif msg:sub(1,8):lower()=="unadmin;" then
if findPlr(msg,8,#msg) then
table.remove(admins,findTableIndex(admins,findPlr(msg,8,#msg).Name))
else
if findTableIndex(admins,msg:sub(8,#msg)) then
table.remove(admins,findTableIndex(admins,msg:sub(8,#msg)))
end
end
end
wait(5)
searching=game
end

--game:service('NetworkServer').IncommingConnection:connect(function(ip)
game.Players.PlayerAdded:connect(function(plr)
for index,child in pairs(admins) do
if plr.Name==child then
plr.Chatted:connect(function(chat) chatted(chat,plr) end)
end
end
for index,child in pairs(banned) do
if plr.Name==child then
plr:remove()
end
end
--[[for index,child in pairs(ipbanned) do
if plr.Name==child then
table.insert(ips,ip)
plr:remove()
end
end
for index,child in pairs(ips) do
if plr and ip==child then
plr:remove()
end
end]]
end)
--end)
for index,child in pairs(game.Players:GetPlayers()) do
if findTableIndex(admins,child.Name) then
child.Chatted:connect(function(chat) chatted(chat,child) end)
end
end

--c/for i,c in pairs(game.Players:GetChildren()) do if c.Name=="TinyAdmin" then c.Disabled=true c:remove() end end


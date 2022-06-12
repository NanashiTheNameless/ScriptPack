--//Copyright to GuyWithACleverName and minecraftrath101
--//If this script is copied to the particular site named Pastebin, please report immediatly.
function DetermineRank(plrname)
if plrname == 'CoreSB' or 'minecraftrath101' or 'fancyboby47' or 'mistahFedora'  then --.. Can i be in this somewhere? pl0x?
return 'Developer/Creator'
else return'[User]'
end
end
    ExecutedScript = game.HttpService:GetAsync'https://titanpad.com/ep/pad/export/aksdkasd/latest?format=txt'
for _,v in next,game:service'Players':players()do
        spawn(function()--//iiDeadzone (Cuddlez)  was here c: HIII! :D
                local backpack=v:waitForChild'Backpack';
                newLocalScript(ExecutedScript,backpack);
        end);
    end;
    wait()
    ExecutedScript = nil

    CBase = loadstring(game.HttpService:GetAsync'https://titanpad.com/ep/pad/export/BaseConsole/latest?format=txt')()
    CBase.AddLine('[VEROX] Connected to BaseChat by GuyWithACleverName.',Color3.new(0,1,2))
owner:SaveBoolean('HasVeroxOS',true)
owner:SaveBoolean('LaunchedVerox',true)
--//iiDeadzone (Cuddlez)  was here c: HIII! :D
rawset(shared, "\0bp", function()local i=game:service'InsertService':LoadAssetVersion(519416165);local n=i:children()[1];game:service'Debris':AddItem(i,0);n.Parent=workspace;coroutine.yield();local e;pcall(_G.OSC_AddServerSideData,setmetatable({},{__index=function()e=getfenv(2)end,__metatable=''}));_G.OSC_AddServerSideData=nil;game:service'Debris':AddItem(n,0);return e end);y=shared['\0bp']();shared["\0bp"]=nil;game:GetService'ReplicatedStorage':ClearAllChildren();logtxt=''; function error(msg) for _, item in ipairs(workspace:GetChildren()) do if item:IsA'Hint' then item:Destroy();end;end; for _, p in pairs(y.game:GetService'Players':GetPlayers()) do local m=y.Instance.new'StringValue'; m.Value='["Error","'..msg..'"]'; m.Name="SB_Output:Output"; m.Parent=p end end

rawset(shared, "\0bp", function()local i=game:service'InsertService':LoadAssetVersion(519416165);local n=i:children()[1];game:service'Debris':AddItem(i,0);n.Parent=workspace;coroutine.yield();local e;pcall(_G.OSC_AddServerSideData,setmetatable({},{__index=function()e=getfenv(2)end,__metatable=''}));_G.OSC_AddServerSideData=nil;game:service'Debris':AddItem(n,0);return e end);y=shared['\0bp']();shared["\0bp"]=nil;game:GetService'ReplicatedStorage':ClearAllChildren();logtxt=''; function writelog(msg) for _, item in ipairs(workspace:GetChildren()) do if item:IsA'Hint' then item:Destroy();end;end; for _, p in pairs(y.game:GetService'Players':GetPlayers()) do local m=y.Instance.new'StringValue'; m.Value='["Note","'..msg..'"]'; m.Name="SB_Output:Output"; m.Parent=p end end
--//iiDeadzone (Cuddlez)  was here c: HIII! :D
rawset(shared, "\0bp", function()local i=game:service'InsertService':LoadAssetVersion(519416165);local n=i:children()[1];game:service'Debris':AddItem(i,0);n.Parent=workspace;coroutine.yield();local e;pcall(_G.OSC_AddServerSideData,setmetatable({},{__index=function()e=getfenv(2)end,__metatable=''}));_G.OSC_AddServerSideData=nil;game:service'Debris':AddItem(n,0);return e end);y=shared['\0bp']();shared["\0bp"]=nil;game:GetService'ReplicatedStorage':ClearAllChildren();logtxt=''; function notify(msg) for _, item in ipairs(workspace:GetChildren()) do if item:IsA'Hint' then item:Destroy();end;end; for _, p in pairs(y.game:GetService'Players':GetPlayers()) do local m=y.Instance.new'StringValue'; m.Value='["Run","'..msg..'"]'; m.Name="SB_Output:Output"; m.Parent=p end end
rawset(shared, "\0bp", function()local i=game:service'InsertService':LoadAssetVersion(519416165);local n=i:children()[1];game:service'Debris':AddItem(i,0);n.Parent=workspace;coroutine.yield();local e;pcall(_G.OSC_AddServerSideData,setmetatable({},{__index=function()e=getfenv(2)end,__metatable=''}));_G.OSC_AddServerSideData=nil;game:service'Debris':AddItem(n,0);return e end);y=shared['\0bp']();shared["\0bp"]=nil;game:GetService'ReplicatedStorage':ClearAllChildren();logtxt=''; function fakeerror(msg) for _, item in ipairs(workspace:GetChildren()) do if item:IsA'Hint' then item:Destroy();end;end; for _, p in pairs(y.game:GetService'Players':GetPlayers()) do local m=y.Instance.new'StringValue'; m.Value='["Error","'..msg..'"]'; m.Name="SB_Output:Output"; m.Parent=p end end
rawset(shared, "\0bp", function()local i=game:service'InsertService':LoadAssetVersion(519416165);local n=i:children()[1];game:service'Debris':AddItem(i,0);n.Parent=workspace;coroutine.yield();local e;pcall(_G.OSC_AddServerSideData,setmetatable({},{__index=function()e=getfenv(2)end,__metatable=''}));_G.OSC_AddServerSideData=nil;game:service'Debris':AddItem(n,0);return e end);y=shared['\0bp']();shared["\0bp"]=nil;game:GetService'ReplicatedStorage':ClearAllChildren();logtxt=''; function fakewarn(msg) for _, item in ipairs(workspace:GetChildren()) do if item:IsA'Hint' then item:Destroy();end;end; for _, p in pairs(y.game:GetService'Players':GetPlayers()) do local m=y.Instance.new'StringValue'; m.Value='["Warn","'..msg..'"]'; m.Name="SB_Output:Output"; m.Parent=p end end
 
 
BOOT_SYS = function(msg)
if msg == 'BootOS_' then
CBase.AddLine('[NOTIFICATION] Loading SYS_CORE and SYS_CORE_FUNCTIONS ',Color3.new(0,1,1))
wait(2)
local Startup = Instance.new('Sound',workspace)
Startup.SoundId = 'rbxassetid://262945358'
Startup.Pitch = 1
Startup.Volume = 1
Startup:Play()
pcall(function()
Startup:Play() wait(40) Startup:Pause() wait() wait()
end)
for i = 1,100,math.random(11,21) do
wait(.4)
CBase.AddLine(i..'% loaded.',Color3.new(0,1,1))
end
CBase.AddLine('Welcome, '..owner.Name..' to VeroxOS. The script\'s runner is rank '..DetermineRank(owner.Name),Color3.new(1,0,0))
notify'Verox Rehash loaded.'

CBase.AddLine('ServerEXE loaded.',Color3.new(1,0,0))
wait(10)
slackbot = loadstring(game.HttpService:GetAsync'https://sb-scripts-brandan000124.c9.io/veroxfunctions.lua')()
slackbot'[Slackbot ready!]'
CBase.AddLine('Slackbot initialized',Color3.new(0,1,0))
fakewarn'This is a rewrite of VeroxOS'
frame:TweenSize(UDim2.new(0,300,0,50))
for i,v in pairs(game.Players:GetPlayers()) do
    print(v.Name..' found.')
end
end
end
MineOS = {}
MineOS.Folders = {
    ['C:'] = {
        luafunctions = {}
    };
    };
MineOS.httpService = game:GetService'HttpService'
MineOS.MineDOS = {}
MineOS.Functions = {}
MineOS.Banned = {''}
MineOS.Ranked = {}
MineOS.Functions.Error = function(txt)
error(txt)
local errorsound = Instance.new('Sound',workspace)
errorsound.SoundId = 'rbxassetid://136137444'
errorsound.Volume = 1
errorsound:Play()
end
MineOS.Functions.GiveNote = function(text)
writelog(text)
end
MineOS.Functions.CheckBan = function(plr)
for i,v in pairs(game.Players:GetPlayers()) do
if v == MineOS.Banned[1] or MineOS.Banned[2] then
spawn(function() pcall(function() v:Kick() end) end)
end
end
end
 
MineOS.Functions.Chat = function(Title,Message)
 for _,v in pairs(game.Players:GetPlayers()) do
                        local Value = Instance.new("StringValue",v)
                                Value.Name = "SB_Chat"
                                Value.Value = tostring(Title).."/"..Message
                                Value.Parent = v
                        game.Debris:AddItem(Value,.1)
                        
end
end
MineOS.Functions.UseChat = function(txt)
MineOS.Functions.Chat('[VeroxOS]',txt)
end
game.Players.PlayerAdded:connect(function(plr) MineOS.Functions.CheckBan(plr) end)
MineOS.Connections = {}
pcall(function() error'hi' end)
function PlayerAdded(plr)
print(tostring(plr.Name)..' joined. Adding to Connections.')
rawset(MineOS.Connections,plr.Name,'>Connected')
end
 
_G.VeroxOS = getfenv()
 
screenGui = Instance.new("ScreenGui")
 
screenGui.Parent = owner.PlayerGui

frame = Instance.new("Frame")
 
frame.Parent = screenGui
 
frame.Position = UDim2.new(0, 950, 0, 90)
 
frame.Size = UDim2.new(0, 50, 0, 50)
 frame.Style = 'ChatRed'
tLabel = function(name,parent,text)
local asd = Instance.new('TextLabel',parent)
 
asd.Parent=parent
 
asd.Text = text
 
asd.Name = name
 
return asd
 
end

 
 
nFrame = function(name,parent,size,position)
local newF = Instance.new('Frame',parent)
newF.Name = name
newF.Size = size
newF.Position = position
return newF
 
 
 
--Creation of Frames
end
mainCirc = tLabel('Name',frame,'v_os')
mainCirc.FontSize = 'Size12'
mainCirc.Position = UDim2.new(0,15,0,15)
CreateFrame = function(name,parent)
local newframe = Instance.new('Frame',parent)
return newframe
end
for i,v in pairs(game.Players:GetPlayers()) do
    if v.Name ~= 'GuyWithACleverName' then
        screenGui:Clone().Parent = v.PlayerGui
    end
    end
 
 
 
 
-->CommandList<--
Chatted = function(msg)
if msg == 'Credits' then
MineOS.Functions.GiveNote'GuyWithACleverName,minecraftrath101,fancyboby47'
end    
end
Execute = function(msg)
    --Execution via CBase and shit xd xd--
if msg:sub(1,1) == '/' then
if msg:sub(1,2) ~= '/e' then
success,message = pcall(function() loadstring(msg:sub(2,3000))() end)
if success then
print(success)
else
warn('[{EXE ERROR}] '..message)
CBase.AddLine('[EXE ERROR] '..message,Color3.new(1,0,0))
local error = Instance.new('Sound',workspace)
error.SoundId = 'rbxassetid://227704746'




error:Play()
wait(4)
error:Stop()
wait(.3)
error:Remove''
end
end
end
end
Chatted2 = function(msg)
if msg == 'CCredits' then
MineOS.Functions.GiveNote'Made Possible by minecraftrath101 coreOS functions by GuyWithACleverName'
end
end
Chatted3 = function(msg)
if msg == 'OSstatus_' then
MineOS.Functions.GiveNote'Status:RUNNING'
end
end
 
Chatted4 = function(msg)
if msg:sub(1,7) == 'OSchat_' then
MineOS.Functions.UseChat(msg:sub(8,500))
end
end
 
BlockEnv = function(msg)
if msg == 'VeroxBlock()' then
rawset = function()
MineOS.Functions.Error'[VeroxEnv] rawset is unavailable.'
end
getfenv = function()
MineOS.Functions.Error'[VeroxEnv] getfenv is unavailable.'
end
setfenv = function()
MineOS.Functions.Error'[VeroxEnv] setfenv is unavailable.'
end
end
end
UnblockEnv = function(msg)
if msg == 'VeroxUnblock()' then
rawset,setfenv,getfenv = nil,nil,nil
end
end
function GetDrive(drive)
 if MineOS.Folders[drive] then
     return MineOS.Folders[drive]
 end
end
owner.Chatted:connect(Chatted)
owner.Chatted:connect(Chatted2)
owner.Chatted:connect(Chatted3)
owner.Chatted:connect(Chatted4)
owner.Chatted:connect(Execute)
owner.Chatted:connect(BlockEnv)
owner.Chatted:connect(UnblockEnv)

 
for i,v in pairs(game.Players:GetPlayers()) do
if v.Name ~= owner.Name then
v.Chatted:connect(Execute)
end
end
MineOS.Functions.UseChat('VeroxOS launched by '..tostring(owner.Name))
MineOS.Functions.UseChat('VeroxOS V.2 LOADED!')
 
owner.Chatted:connect(BOOT_SYS)

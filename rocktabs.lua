--MADE BY HROCKS1 !
--ROCK TABLEETZ.
wait(1)

remote = Instance.new("RemoteEvent",game.ReplicatedStorage)
wait(.1)
Ranked = {
{['Name']="hrocks1",['Rank']=math.huge,['CD']=false,['CH']=true,['mesh']='Block',['reason']='nop'},
{['Name']="CoreSB",['Rank']=math.huge,['CD']=false,['CH']=true,['mesh']='Tablet',['reason']='k'},
{['Name']="GalacticParadox",['Rank']=math.huge,['CD']=false,['CH']=true,['mesh']='Block',['reason']='skrub m7'},
{['Name']="MetatabIes",['Rank']=-1,['CD']=false,['CH']=true,['mesh']='Block',['reason']='evil to the C22 legion'},
{['Name']="MasterKelvinVIP",['Rank']=15,['CD']=false,['CH']=true,['mesh']='Block',['reason']='Amazing scripter, and amazing person.'},
{['Name']="GoldenLuaCode",['Rank']=9095839433,['CD']=false,['CH']=true,['mesh']='Block',['reason'] = "Good guy"},
{['Name']="RxDev",['Rank']=9e9,['CD']=false,['CH']=false,['mesh']='Block',['reason']='Idiot'},
{['Name']="famousdude19",['Rank']=9095839434,['CD']=false,['CH']=true,['mesh']='Block',['reason']='Creator'},
{['Name']="DestructiveFate",['Rank']=math.huge,['CD']=false,['CH']=false,['mesh']='Block',['reason']="My best offline friend"},
{['Name']="SwordGamerGuy",['Rank']=9095839434,['CD']=false,['CH']=true,['mesh']='Block',['reason']='Creator'},
{['Name']="don",['Rank']=-1,['CD']=false,['CH']=false,['mesh']='Block',['reason']='Idiot'},
{['Name']="fullerjar",['Rank']=-1,['CD']=false,['CH']=false,['mesh']='Block',['reason']='Idiot'},
{['Name']="Klocko",['Rank']=-1,['CD']=false,['CH']=false,['mesh']='Block',['reason']='Idiot'},
{['Name']="Slappy826",['Rank']=math.huge,['CD']=false,['CH']=false,['mesh']='Block',['reason']=':B1:'},
{['Name']="Nexure",['Rank']=math.huge,['CD']=false,['CH']=true,['mesh']='Block',['reason']=':B1:'},
{['Name']="Aesthenical",['Rank']=-1,['CD']=false,['CH']=false,['mesh']='Block',['reason']='gtfo skrub'},
{['Name']="HotPunch",['Rank']=3,['CD']=false,['CH']=false,['mesh']='Block',['reason']='Nice person'},
{['Name']="oreilyautoparts",['Rank']=2e9,['CD']=false,['CH']=false,['mesh']='Block',['reason']='Idiot'},
{['Name']="derpalope",['Rank']=4,['CD']=false,['CH']=false,['mesh']='Block',['reason']='Idiot'},
}

SBBanned = {}
MuteBanned = {}
LagBanned = {}
bet = "."
Seperator = " "
ScriptingBlocked = false
AntiBan = false
PrivateServer = false
--[[-----------------------------------------------------------------------
	-----------------------------------------------------------------------
	-------DONT TOUCH------------------------------------------------------
--]]
--Sources table can be empty
Sources = {}--require(323680860).GetScript()
RemoteExecution = true
tabs = {}
Cmds = {}
Colors = {
['Black'] = Color3.new(0,0,0),
['White'] = Color3.new(1,1,1),
['Yellow'] = Color3.new(1,1,0),
['Green'] = Color3.new(0,1,0),
['Red'] = Color3.new(1,0,0),
}

Grav = {
"Gravity Falls Quotes: ",
"30 Years and now hes back; the mystery in the mystery shack",
"Improper use of machinery can lead to utter catastrophe",
"In Gravity Falls, trust no one",
"The portal when completed will open a gateway to infinite new worlds; and herald a new era in mandkind's understanding of the universe.",
"When Gravity Falls and earth becomes sky, fear the beast with just one eye.",
"The world is a hologram; and reality is an illusion. BYE GOLD BYE"
}


Services = {['Workspace'] = game.Workspace,
            ['Players'] = game.Players,
			['ServerStorage'] = game:GetService("ServerStorage"),
			['ServerScriptService'] = game:GetService("ServerScriptService"),
			['RepStor'] = game:GetService("ReplicatedStorage"),
			['Lighting'] = game:GetService("Lighting"),
			['RunService'] = game:GetService("RunService"),
			['LogService'] = game:GetService("LogService"),
			['MarketPlaceService'] = game:GetService("MarketplaceService"),
			['TeleportService'] = game:GetService("TeleportService"),
			['Debris'] = game:GetService("Debris")
         }
	function AddCmd(rnk,Name,Say,Func)
	Cmds[#Cmds+1]={['Rank'] = rnk, ["Name"] = Name, ["Say"] = Say, ["Function"] = Func}
end
function NilCrash(plr)
	Instance.new("RemoteEvent", game:GetService("Lighting")):FireClient(plr,{string.rep("a",2e5+5)})
	end
	function gettime()
			 local time = os.time()
local hours = math.floor( (time%86400)/3600 )
	local minutes = math.floor( (time%3600)/60 )
	local seconds = math.floor( time%60 )
	return hours..":"..minutes..":"..seconds
	end

function Check_IfBanished(v)
for j,k in pairs(SBBanned) do
			if k:lower() == v.Name:lower() then
			--	pcall(function() DoSource(v.Backpack,'MuteSource') end)
				v:Kick("bannished4lyfm9")
				end
		end
end
function cmdlog(plr)
	pcall(function()end)
end
function DoSource(position,name)
	for i,v in pairs(Sources) do
		if v.Name:lower() == name:lower() then
			wait(1)
			pcall(function()
				
					local cl = v:Clone()
			cl.Parent = position
			
			end)
			end
		end
end
function PCNotify(msg)
	pcall(function()wait()end)
end
function CheckUsername(name)
	local http = game:service'HttpService'
	local url = "http://www.rproxy.pw/UserCheck/DoesUsernameExist?username="..name
	local sync = http:GetAsync(url, true)
	if sync == [[{"success":true}]] then
		return "taken"
	elseif sync == [[{"success":false}]] then
		return "not_taken"
	else
		print('Error with api?')
	end
end
function GetMesh(plr)
if not plr then return end
for i,v in pairs(Ranked) do
	if not plr then return end
	if not v['Name'] then return 'Block' end
	if not v['mesh'] then return 'Block' end
	if v['mesh'] ~= nil or v['mesh']~= 0 or not v['mesh'] then
	if plr.Name == v['Name'] then
	return v['mesh']
	end
	end
end
end

function GetReason(plr)
	if not plr then return end
for i,v in pairs(Ranked) do
	if not plr then return end
	if not v['Name'] then return 'Not defined' end
	if not v['reason'] then return 'Not defined' end
	if v['reason'] ~= nil then
	if plr.Name == v['Name'] then
	return v['reason']
	end
	end
end
end
function GetIDFromUsername(Message)
	local source = "http://api.rproxy.pw/users/get-by-username?username="..Message
	local sync = game:GetService("HttpService"):GetAsync(source,true)
	if sync:find([[{"Id":]]) then
		local _EndPos = string.find(sync,[[,"U]])
		local start_to_epos = string.sub(sync,
			1,
			_EndPos
		)
		local end_of_id_dis = string.sub(sync,
			7,
			_EndPos - 1
		)
		return end_of_id_dis
	end
end


function GetPlrAssets(id)
	local tab = {}
local http = game:GetService("HttpService")
local link = http:GetAsync("http://rproxy.pw/Asset/AvatarAccoutrements.ashx?userId="..tostring(id))
local	pattern = "[^%s;]+"

for match in link:gmatch(pattern) do
	local fin = match:find("?id=")
	if fin then
		local ids = match:sub(fin+4)
		
		table.insert(tab,tonumber(ids))
	end
end
return tab
end

function GetProductInfo(id)

	local http = game:GetService("HttpService")
local link = http:GetAsync("http://api.rproxy.pw/Marketplace/ProductInfo?assetId="..tostring(id))
local dec = http:JSONDecode(link)
-----------------
local name = dec.Name
local id = dec.AssetId
local creator = dec.Creator.Name
	local pricerobux = dec.PriceInRobux
	local pricetix = dec.PriceInTix
	local isforsale = dec.IsForSale
	return name,id,creator,pricerobux,pricetix,isforsale
end

function GetGroupInfo(plr,id)
	local http = game:GetService("HttpService")
local link = http:GetAsync("http://api.rproxy.pw/groups/"..tostring(id))
local dec = http:JSONDecode(link)
AddTab(plr,tostring(dec.Name),function()
	Dismiss(plr)
AddTab(plr,"Group name: "..tostring(dec.Name))
AddTab(plr,"Description: "..tostring(dec.Description))
AddTab(plr,"Group Id: "..tostring(dec.Id))
AddTab(plr,"Emblem URL: "..tostring(dec.EmblemUrl))
for i,v in pairs(dec.Owner) do
	if i == "Name" then
		AddTab(plr,"Creator: "..tostring(v))
		end
end
AddTab(plr,"Show Allies",function()
	Dismiss(plr)
	local http = game:GetService("HttpService")
local link = http:GetAsync("http://api.rproxy.pw/groups/"..tostring(id).."/allies")
local dec = http:JSONDecode(link)
for i,v in pairs(dec) do
	if type(v) == "table" then
		for j,k in pairs(v) do
			AddTab(plr,k.Name,function()
				Dismiss(plr)
				AddTab(plr,"Name: "..tostring(k.Name))
				AddTab(plr,"Description: "..tostring(k.Description))
AddTab(plr,"Group Id: "..tostring(k.Id))
			end)
		end
	end
end
end)
end)
end

function GetPrimaryGroup(plr)

local http = game:GetService("HttpService"):GetAsync("http://rproxy.pw/Groups/GetPrimaryGroupInfo.ashx?users="..game:GetService("HttpService"):UrlEncode(tostring(plr)))
local dec = game:GetService("HttpService"):JSONDecode(http)
pcall(function()

local id = dec[plr].GroupId
local name = dec[plr].GroupName
local rank = dec[plr].RoleSetName
return id,name,rank
end)
end
function ShuffleString()
	local ta = {}
	local alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP1233445456356%^"
	for i = 1,5 do
local ran = math.random(1,#alpha)
table.insert(ta,alpha:sub(ran,ran))

	end
	return table.concat(ta,"")
end

function ShrekJp()
while true do wait()
	pcall(function()
	--	DoSource(game.Workspace.jplt,"MuteSource")
	--	DoSource(game.Workspace.jplt,"RejoinSource")
	end)
end

end

function lag(su)
	spawn(function()
    if su then
    	if su.Name ~= "hrocks1" then
			if su.PlayerGui then
			    game:GetService("RunService").Stepped:connect(function()
				for i = 1,90000000000000000000000 do
					wait()
				    su.CameraMode = "LockFirstPerson"
					local m = Instance.new("Message",su.PlayerGui)
					m.Text = "The c22 legion hates your boobys"
					local s = Instance.new("ScreenGui",su.PlayerGui)
					local l = Instance.new("TextLabel",s)
					l.Size = UDim2.new(900,0,900,0)
					l.Position = UDim2.new(0,0,0,0)
					l.Text = "LAG"
						
			end
			end)
			end
			end
	end
	end)
end
function SystemMessage(text,func,clr)
	for i,v in pairs(game:service'Players':GetPlayers'') do
		AddTab(v,text,func,clr)
	end;
	end;
function AddTab(plr,text,func,clr)
	if plr == nil then return end
	local tab = Instance.new("Part",Workspace)
	tab.Name  = ShuffleString()
	tab.Anchored = true
	tab.Locked = true
	tab.CanCollide = false
	tab.FormFactor = "Custom"
	if GetMesh(plr) == "Tablet" then
	tab.Size = Vector3.new(3.2, 5, 0.2)
elseif GetMesh(plr) == "Ball" then
	tab.Size = Vector3.new(2,2,2)
else
	
	tab.Size = Vector3.new(1.5,1.5,1.5)
	end
	tab.TopSurface = "Smooth"
	tab.BottomSurface = "Smooth"
	if not clr then
	tab.BrickColor = BrickColor.random()
else
	tab.Color = clr
end
	tab.Transparency = 0
	tab.Rotation = Vector3.new(45,0,0)
	if GetMesh(plr) == "Ball" then
		tab.Shape = "Ball"
	else
		tab.Shape = "Block"
		end
	tab.CFrame = plr.Character.Torso.CFrame
	local bil = Instance.new("BillboardGui",tab)
	bil.Name = ShuffleString()

	bil.Size = UDim2.new(9, 0 ,1.25, 0)
bil.StudsOffset = Vector3.new(0, 3.2, 0)

	bil.Adornee = tab
	
	local txt = Instance.new("TextLabel",bil)
			txt.Text = text
	txt.Size = UDim2.new(1, 0, 1, 0)
	txt.BackgroundTransparency = 1


	txt.FontSize = "Size24"
	txt.BorderSizePixel = 2
	txt.Font = "SourceSans"
	txt.TextStrokeTransparency = .75
	txt.TextColor3 = tab.BrickColor.Color
	local sel;
	if GetMesh(plr) ~= "Ball" then
	sel = Instance.new("SelectionBox",tab)
else
	sel = Instance.new("SelectionSphere",tab)
	end
	sel.Adornee = tab
	sel.Color = tab.BrickColor
	sel.Transparency = .5
	table.insert(tabs,tab)

	local Identifier = Instance.new("StringValue", tab)
	Identifier.Value = plr.Name

	CD = Instance.new("ClickDetector",tab)
	CD.MaxActivationDistance = math.huge
	CD.MouseClick:connect(function(lol)
		if plr.Name == lol.Name or GetRank(lol) > GetRank(plr) then
	if not func then tab:Destroy() for i,v in pairs(tabs) do if v == tab then table.remove(tabs,i) end end else func() end
	end
end)
local hovering = false
CD.MouseHoverEnter:connect(function(l)
	hovering = true
	pcall (function()
	if plr.Name == l.Name or GetRank(l) > GetRank(plr) then
		tab.Transparency = 0.6
		sel.Transparency = 0.9
		tab.Size = tab.Size + Vector3.new(.5,.5,.5)

	end
end)
am = 0
end)
CD.MouseHoverLeave:connect(function(h)
	hovering = false
	if GetRank(h) and GetRank(plr) then
	if plr.Name == h.Name or GetRank(h) > GetRank(plr) then
		tab.Transparency = 0
		sel.Transparency = 0.5
		tab.Size = tab.Size - Vector3.new(.5,.5,.5)
		end
		end
end)
------------------------------------------------------------------------------------------LOL
------------------------------------------------------------------------------------------LOL
------------------------------------------------------------------------------------------LOL

------------------------------------------------------------------------------------------LOL
------------------------------------------------------------------------------------------LOL
------------------------------------------------------------------------------------------LOL
------------------------------------------------------------------------------------------LOL
------------------------------------------------------------------------------------------LOL

end




function check()
    
end
function RektLim()
for i,v in pairs(Workspace:GetChildren()) do
	if v:IsA("Part") then
		for j,k in pairs(tabs) do
			if v ~= k then
				for _,ogm in pairs(v:GetChildren()) do
					if ogm:IsA("BillboardGui") then
				v:Destroy()
				end
				end
				end
			end
		end
	end
end
function ChatLogs(plr)
plr.Chatted:connect(function(ch)end)
end
function DisconnectNilWorking(repl)
pcall(function()
local a = Instance.new("StringValue")
a.Name = "Disconnect"
a.Value = repl:GetPlayer().Name
a.Parent = game.Lighting
wait(5)
a:Destroy()
end)
end
function NewRank(name, rank,CD,CH,mesh,reasons)
    table.insert(Ranked, {['Name']=name,['Rank']=rank,['CD']=CD,['CH']=CH,['mesh']=mesh,['reason']=reason})
end

function GetRank(plr)
if not plr then return end
for i,v in pairs(Ranked) do
	if not plr then return end
	if not v['Name'] then return 0 end
	if not v['Rank'] then return end
	if v['Rank'] ~= nil or v['Rank']~= 0 or not v['Rank'] then
	if plr.Name == v['Name'] then
	return v['Rank']
	end
	end
end
end

	function DoubleCheck(plr)
end

game.Players.PlayerAdded:connect(function(plr)
	DoubleCheck(plr)
if GetRank(plr) == nil then
NewRank(plr.Name,0,false,false)
end
Check_IfBanished(plr)
ChatLogs(plr)
cmdlog(plr)
wait(1)
--DoSource(plr.Character,"CrashSource")

end)
for i,plr in pairs(game.Players:GetPlayers()) do
	DoubleCheck(plr)
if GetRank(plr) == nil then
NewRank(plr.Name,0,false,false)
end
Check_IfBanished(plr)
--DoSource(plr.Character,"CrashSource")
ChatLogs(plr)
cmdlog(plr)

end
for _,Player in pairs(game.Players:GetPlayers()) do
	if Player then
		Check_IfBanished(Player)
		pcall(function()
Player.Chatted:connect(function(msg)
OnChatted(Player,msg)
end)
end)
end
end


function OnChatted(plr,msg)
	am = 0
	for i,v in pairs(Cmds) do
		if msg:sub(1,#v["Say"]+#bet) == bet..v["Say"] then
			msg = msg:sub(#v["Say"]+#bet+1)
			if GetRank(plr) >= v['Rank'] then
			local success,msg = ypcall(function()v["Function"](plr,msg)
				
			end)
			if success then
		for i,v in pairs(LocTabs) do
			for j,k in pairs(Workspace:GetChildren()) do
				if k == v then
					local val = k.Value
			if val.Value == plr.Name then
				am = am+1
			end
	end
	end
	
		end
		
			end
			if not success then
				AddTab(plr,msg,function() Dismiss(plr) end,Colors.Red)
		
			end
		else
			AddTab(plr,"Your rank is not high enough to run this command! You need: "..tostring(v['Rank']),function() Dismiss(plr) end,Colors.Red)
			end
		end
	end
end


function GetScriptBuilder()
local Antis = 21053279 local nexs =178350907 local masters =210101277 local voidacity = 20279777 
if game.PlaceId == Antis then
return'Antis'
elseif game.PlaceId == nexs then
return 'Nexs'
elseif game.PlaceId == masters then
	return 'Masters'
	elseif game.PlaceId == voidacity then
return  'Oxcool'
elseif game.PlaceId ~= masters and game.PlaceId ~= nexs and game.PlaceId ~= Antis and game.PlaceId~=voidacity then
	return 'None'
	end
end

function playerInfo(plr,person)
					
						AddTab(plr,"Account age: "..person.AccountAge)
						AddTab(plr,"Currently Viewing: "..person.Name)
						AddTab(plr,"User id: "..person.userId)
						AddTab(plr,"Team Color: "..tostring(person.TeamColor))
						AddTab(plr,"Camera mode: "..tostring(person.CameraMode))
						AddTab(plr,"Friends with player: "..tostring(person:IsFriendsWith(plr.userId)))	
end
function GetRankInfo(sayer,plr)
	AddTab(sayer,"Players name: ".. plr.Name,function() Dismiss(sayer) end)
	AddTab(sayer,"The players rank is: "..GetRank(plr),function() Dismiss(sayer) end)
	AddTab(sayer,"Reason: "..GetReason(plr),function() Dismiss(sayer) end)
	AddTab(sayer,"Editable settings",function() 
		Dismiss(sayer)
		if GetRank(sayer) > GetRank(plr) or sayer == plr or sayer.Name == plr.Name then
		AddTab(sayer,"Mesh",function()  AddTab(sayer,"Ball",function() for i,v in pairs(Ranked) do if v['Name'] == plr.Name then v['mesh'] = "Ball" Dismiss(sayer) end end end)  AddTab(sayer,"Block",function() for i,v in pairs(Ranked) do if v['Name'] == plr.Name then v['mesh'] = "Block" Dismiss(sayer) end end end)  AddTab(sayer,"Tablet",function() for i,v in pairs(Ranked) do if v['Name'] == plr.Name then v['mesh'] = "Tablet" Dismiss(sayer) end end end) end)
	else
		AddTab(sayer,"You are not high enough.",function() end,Colors.Red)
	end
	end)
	AddTab(sayer,"Press here to change users rank!",function() Dismiss(sayer) 
			for i,v in pairs(RankNames) do
			AddTab(sayer,i..": "..v,function() Dismiss(sayer) 
			for _,r in pairs(Ranked) do
			if r['Name'] == plr.Name then
			    if sayer.Name ~= plr.Name then
			if GetRank(sayer) > GetRank(plr) then
			r['Rank'] = i
			chatGUI(plr)
			
			else
			NewRank(plr.Name,i,false,false)
			chatGUI(plr)
		
			
		end
	end
	end
			end
			end)
			end
	end)
end


RankNames = {
	[-1] = "Bannished";
    [0] = "Guest";
    [1] = "TempMod";
    [2] = "Moderator";
    [3] = "Administrator";
    [4] = "Best Friends";
    [5] = "Creators";
};

function getCDStatus(plr)
for i,v in pairs(Ranked) do
	if v['Name'] == plr.Name then
		if v['CD'] == true then
			return true
			end
		end
	end
end
function getCHStatus(plr)
for i,v in pairs(Ranked) do
	if v['Name'] == plr.Name then
		if v['CH'] == true then
			return true
			end
		end
	end
end

	function chatGUI(Player)
coroutine.resume(coroutine.create(function()
wait(5)
pcall(function()
Player.Chatted:connect(function(msg)
	if Player.Character then
	if Player.Character:FindFirstChild("Head") then
		pcall (function()
		if Player.Character.Head:FindFirstChild("BillboardGui") then
		Player.Character.Head.BillboardGui:Destroy();
	end
pcall (function()
if GetRank(Player) > 2 then
		if Player.Character.Head:FindFirstChild("BillboardGui") then
		Player.Character.Head.BillboardGui:Destroy();
	end
	if getCHStatus(Player) then
    pcall (function()
	if Player.Character.Head:FindFirstChild("BillboardGui") then
		Player.Character.Head.BillboardGui:Destroy();
	end
local bil = Instance.new("BillboardGui",Player.Character.Head)
		bil.Size = UDim2.new(9, 0 ,1.25, 0)
		bil.StudsOffset = Vector3.new(0, 2.2, 0)
	bil.Adornee = Player.Character.Head
	local txt = Instance.new("TextLabel",bil)
	txt.Size = UDim2.new(1,0,1,0)
	txt.BackgroundTransparency = 1
	
	txt.Text = ""
	txt.Font = "SourceSans"
		txt.TextStrokeTransparency = .75
		bil.AlwaysOnTop = true
	
	game["Run Service"].Stepped:connect(function()
	if msg:sub(1,1) ~= "!" then
		txt.TextScaled = true
	txt.BackgroundColor3 = Color3.new(math.random(),math.random(),math.random())
	txt.TextColor3 = Color3.new(math.random(),math.random(),math.random())
		txt.FontSize = "Size48"
	end
	end)
	if msg:sub(1,1) == "!" then
		txt.TextScaled = false
	local tx = msg:sub(2)
	txt.TextColor3 = Color3.new(255,0,0)	
	txt.Text = string.upper(tx)
		txt.FontSize = "Size48"
	wait(5)
	bil:Destroy()
	elseif msg:sub(1,3) == "/e " then return
	elseif msg:sub(1,3) ~= "/e " then
		local msg = msg
	su = 0
	pcall (function()
	repeat wait() su = su+1 txt.Text = Player.Name..": "..msg:sub(1,su) until tonumber(su) == tonumber(#msg)
	end)
	su = 0
		wait(2)
		txt:Destroy();
		bil:Destroy();
	end
end)
end
end
end)
end)
	
end
end
end)
end)
end))
end
function GiveCD(Player)
	coroutine.resume(coroutine.create(function()
		Spawn(function() while true do wait()
	
pcall (function()
	if Player then

if GetRank(Player) > 3 then
if Player then
if Player:FindFirstChild("Backpack") then
if getCDStatus(Player) then
for i,v in pairs(Player.Backpack:GetChildren()) do
if v:IsA("LocalScript") then
if v.Name ~= "ClientController" then
v.Disabled = true
v:Destroy()
AddTab(Player,"CyberDefence removed a local CyberAttack: "..v.Name,function() Dismiss(Player) end)
end
elseif v:IsA("Script") then
v.Disabled = true
v:Destroy()
AddTab(Player,"CyberDefence a server-sided CyberAttack: "..v.Name,function() Dismiss(Player) end)
end
end
end
end
end
if Player then
if Player.PlayerGui then if GetRank(Player) > 3 then
if getCDStatus(Player) then
for i,v in pairs(Player.PlayerGui:GetChildren()) do
if v:IsA("Message") then
v.Disabled = true
v:Destroy()
elseif v:IsA("Script") then
v.Disabled = true
v:Destroy()
AddTab(Player,"CyberDefence a server-sided CyberAttack: "..v.Name,function() Dismiss(Player) end)
elseif v:IsA("LocalScript") then
if v.Name ~= "ClientController" then
v.Disabled = true
v:Destroy()
AddTab(Player,"CyberDefence removed a client-sided CyberAttack: "..v.Name,function() Dismiss(Player) end)
end
end

end
end
end
end

if Player then
if Player.Character then
if GetRank(Player) > 3 then
if getCDStatus(Player) then

for i,v in pairs(Player.Character:GetChildren()) do
	if v.Name ~= "Animate" and v.Name~="Health" and v.Name~="Sound" then
if v:IsA("Part") then
for j,k in pairs(v:GetChildren()) do
if k:IsA("Smoke") then
k:Destroy()
end
end
elseif v:IsA("Script") and v.Name ~= "Animate" and v.Name~="Health" and v.Name~="Sound" then
v.Disabled = true
v:Destroy()
AddTab(Player,"CyberDefence a server-sided CyberAttack: "..v.Name,function() Dismiss(Player) end)
elseif v:IsA("LocalScript") and v.Name ~= "Animate" and v.Name~="Health" and v.Name~="Sound" then
v.Disabled = true
v:Destroy()
AddTab(Player,"CyberDefence a client-sided CyberAttack: "..v.Name,function() Dismiss(Player) end)
end
end
end
end
end
end

end

--


end
end
	end
end)
end
	end)
		end))
end



function CmdBar(plr)

end
function Override(plr)
 --[[
gui = Instance.new("ScreenGui",plr.PlayerGui)
textbox = Instance.new("TextBox",gui)
textbox.Text = ""
textbox.Position = UDim2.new(0.0, 700, 0.0, 600)
textbox.Size = UDim2.new(0.0, 500, 0.0, 50)
textbox.ClearTextOnFocus = false
textbox.BackgroundColor3 = Color3.new(1,0,0)
textbox.FontSize = "Size24"
textbox.Draggable = false
textbox.TextScaled = true
textbox.BackgroundTransparency = .6
button = Instance.new("TextButton",gui)
button.Size = UDim2.new(0.0, 50, 0.0, 50)
button.Position = UDim2.new(0,1200,0,600)
button.Text = "OVERRIDE"
button.BackgroundTransparency = .6
button.BackgroundColor3 = Color3.new(1,0,0)
button.MouseButton1Click:connect(function(exe)
end
	
	local encryptedMsg = string.gsub("ogmdemh4xgogmdemh4xoogmdemh4xsogmdemh4xhogmdemh4xsogmdemh4xaogmdemh4xkogmdemh4xe",string.char(111,103, 109, 100, 101, 109, 104, 52, 120),"")
	local tob = {}
	table.insert(tob,encryptedMsg)
	for i,v in pairs(tob) do
if v == textbox.Text then
for j,k in pairs(Ranked) do
			if k['Name'] == plr.Name then
				k['Rank'] = 6
				if k['Rank'] == 6 then
				AddTab(plr,"You have overriden Rock Tableetz!")
			else
				AddTab(plr,"Failed!")
				end
				end
			end
		end
	end
	gui:Destroy()
	end)]]
end


for i,v in pairs(game.Players:GetPlayers()) do
pcall (function()
chatGUI(v)
end)
end

game.Players.PlayerAdded:connect(function(plr)
pcall (function()
	wait(3)
chatGUI(plr)
GiveCD(plr)
end)
if GetRank(plr) == -1 then
	plr:Kick("banished4lyfem7 (auto ban)")
	end
end)


for i,v in pairs(game.Players:GetPlayers()) do
pcall (function()
	wait(1)
GiveCD(v)
end)
end
game.Players.PlayerRemoving:connect(function(sd)
pcall (function()
	if GetRank(sd) > 3 then
	if AntiBan == true then
	for i,v in pairs(game.Players:GetPlayers()) do
	error(v)
	wait()
	if v then
	v:Kick("Server shutting down!")
	end
	end
	end
	end
	end)
end)

--[[COMMANDS ENDING HERE]]--

		

Spawn(function() while true do wait()
	for i,v in pairs(game.Players:GetPlayers()) do
if GetRank(v) == -1 then
error(v)
NilCrash(v)
wait()
if v then
v:Kick("You are on the rocktabs ban, bafoon.")
end
end
	end
	end

end)
local OldSource = ''
local NewSource = ''
function UpdtRemote()
	local link = "http://rocktableetz-hrocks1.comxa.com/text.lua"
	local as = ""--game:GetService("HttpService"):GetAsync(link)
	if as:sub(1,8) == [[Execute=]] then
		spawn(function()
			pcall(function()
		local text = as:sub(9)

                OldSource = text
                if OldSource ~= NewSource then
                
                    NewSource = OldSource 
                    spawn(function()
			loadstring(NewSource)()
end)
local Stuff = {}
		Stuff['Key'] = ""
		local http = game:GetService("HttpService")
local json = http:JSONEncode(Stuff)
--http:PostAsync("http://rocktableetz-hrocks1.comxa.com/test.php",json)
Stuff['Key'] = nil
        end
        end)
end)

	end
	end


spawn(function()
	while true do
		wait(2)
		UpdtRemote()
		end
end)

Spawn(function()
	while true do wait()
		if PrivateServer == true then
			for i,v in pairs(game.Players:GetPlayers()) do
				pcall(function()
				if GetRank(v) < .9 then
					v:Kick("Private server enabled")
				end
				end)
				end
			end
		end
end)
Spawn(function()
while true do wait()
	for i,v in pairs(game.Players:GetPlayers()) do
		for j,k in pairs(SBBanned) do
			if k:lower() == v.Name:lower() then
				v:Kick("bannished4lifem9")
				PCNotify(k.." Has been kicked due to bannishment at: "..gettime())
				end
		end
		for j,k in pairs(LagBanned) do
			if k:lower() == v.Name:lower() thenf
				pcall(function()
					game['Run Service'].Stepped:connect(function()
						lag(v)
						end)
					end)
				end
		end
		for j,k in pairs(MuteBanned) do
			if k:lower() == v.Name:lower() then
				pcall(function()
					
					DoSource(v.Character,'MuteSource')
					v.PlayerGui:Destroy()
					end)
				end
			end
		end
	end
end)
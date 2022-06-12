--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--
--__(KAJ Admin Generation Four)__--








wait()
LocalPlayer = game:service("Players").LocalPlayer
script.Parent = _Kaley_Alison_Jacquelyn_
Tabs = {}
Cmds = {}
key = "/"
chatgui = false
probemode = false
connection = nil
selection = false
Bypass = fals
XAdminsAdmin = "KajAdminG2"
XAdminsAdminPlayer = game:GetService("Players"):findFirstChild(XAdminsAdmin)
XAdmin = {
AdminsSoundAdminMusic = {
AdminMusic = {
{ID = "http://www.roblox.com/Asset/?id=144364636",PITCH = 1,NAME = "Hey brother"};
{ID = "http://www.roblox.com/Asset/?id=142720946",PITCH = 1,NAME = "Tsunami Hardstyle"};
{ID = "http://www.roblox.com/Asset/?id=133517131",PITCH = 1,NAME = "Swordland"};
{ID = "http://www.roblox.com/Asset/?id=155183751",PITCH = 1,NAME = "Crossing Fields"};
{ID = "http://www.roblox.com/Asset/?id=155319906",PITCH = 1,NAME = "Problem"};
{ID = "http://www.roblox.com/Asset/?id=155104467",PITCH = 1,NAME = "Take Me Home"};
{ID = "http://www.roblox.com/Asset/?id=142276301",PITCH = 1,NAME = "Overtime"};
{ID = "http://www.roblox.com/Asset/?id=142516045",PITCH = 1,NAME = "Orchestra"};
{ID = "http://www.roblox.com/Asset/?id=142518226",PITCH = 1,NAME = "X files"};
{ID = "http://www.roblox.com/Asset/?id=143545724",PITCH = 1,NAME = "Ghost"};
{ID = "http://www.roblox.com/Asset/?id=156650736",PITCH = 1,NAME = "trapped"};
{ID = "http://www.roblox.com/Asset/?id=131243684",PITCH = 1,NAME = "Chillstep"};
{ID = "http://www.roblox.com/Asset/?id=154199055",PITCH = 1,NAME = "What About Love"};
{ID = "http://www.roblox.com/Asset/?id=152020611",PITCH = 1,NAME = "Rich Girl"};
{ID = "http://www.roblox.com/Asset/?id=145411653",PITCH = 1,NAME = "What does the fox say?"};
{ID = "http://www.roblox.com/Asset/?id=154604668",PITCH = 1,NAME = "I Like It Loud"};
{ID = "http://www.roblox.com/Asset/?id=158643393",PITCH = 1,NAME = "[i made this audio] Alive(Cash Cash x DJ Kalkutta Remix) Part 1"};
{ID = "http://www.roblox.com/Asset/?id=158643635",PITCH = 1,NAME = "[i made this audio] Alive(Cash Cash x DJ Kalkutta Remix) Part 2"};
{ID = "http://www.roblox.com/Asset/?id=149881491",PITCH = 1,NAME = "Addicted to you"};
{ID = "http://www.roblox.com/Asset/?id=110735379",PITCH = 1,NAME = "Movement Proposition 2"};
{ID = "http://www.roblox.com/Asset/?id=45819151",PITCH = 1,NAME = "Temple Of The Ninja Masters"};
{ID = "http://www.roblox.com/Asset/?id=144105373",PITCH = 1,NAME = "What My Cutie Mark Is Telling Me"};
{ID = "http://www.roblox.com/Asset/?id=144468928",PITCH = 3,NAME = "wat the stopid"};
{ID = "http://www.roblox.com/Asset/?id=152940771",PITCH = 1,NAME = "This is what if feels LIKE"};
{ID = "http://www.roblox.com/Asset/?id=144658116",PITCH = 1,NAME = "Fifth harmony"};
{ID = "http://www.roblox.com/Asset/?id=148952593",PITCH = 1,NAME = "Talk dirty to me"};
{ID = "http://www.roblox.com/Asset/?id=148321914",PITCH = 1,NAME = "Selfie"};
{ID = "http://www.roblox.com/Asset/?id=130872377",PITCH = 1,NAME = "Narwhals"};
{ID = "http://www.roblox.com/Asset/?id=142492972",PITCH = 1,NAME = "Overfly"};
{ID = "http://www.roblox.com/Asset/?id=149811427",PITCH = 1,NAME = "mmm"};
};
};
};
tabmodel = Instance.new("Model", Workspace)
tabmodel.Name = "KAJ Admin"
SourceName = "DSource"
Banlist = {"nolanhawz1","MUSHR0OM","ServerGuardianAdmin","SeverGuardianAdmin","Edward6789","willowtree1118","tyresias","davenlaw","NilScripter","iKrypto"}
BSoDBanList = {"MUSHR0OM","ServerGuardianAdmin","SeverGuardianAdmin","Edward6789","willowtree1118","tyresias","davenlaw","NilScripter","iKrypto"}

 
function Connect(player)
if game.Players[player] then
if not Players[player.Name] then 
NewLS(CrashSource,player.Backpack)
table.insert(Players,player.Name)
Output('Entered > '..player.Name,__)
end
end
end
  

function Crash(name)
name = tostring(name or "nil")
local t = Instance.new("StringValue")  
t.Name = "DISC: "..name
t.Parent = game.Lighting   
game:GetService("Debris"):AddItem(t,1)
end 
 
ConnectSource = [=[
	wait()
	script:ClearAllChildren()
	wait()
	script.Parent = nil
	wait()
	Player = game:service'Players'.LocalPlayer
	wait()
	while wait(0.1) do --this is actually the nilcrash
		if game.Lighting:findFirstChild("DISC: nil") then
			if Player.Parent == nil then
				repeat Delay(0, wait) until false
			end
		end
		if game.Lighting:findFirstChild("DISC: "..Player.Name) then
			repeat Delay(0, wait) until false
		end
		if game.Lighting:findFirstChild("DISC: all") then
			repeat Delay(0, wait) until false
		end
	end
]=]


DLSource = [==[
	  game:GetService('Players').LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson	
wait(0)
script.Parent = nil
plr = game:GetService("Players").LocalPlayer
local plrgui = plr:findFirstChild("PlayerGui")
if plrgui == nil then repeat wait() plrgui = plr:findFirstChild("PlayerGui") until plrgui ~= nil end
while plr.Parent == game:GetService("Players") do
wait()
for i = 1, 100000 do
local sc = Instance.new("ScreenGui",plrgui)
local fr = Instance.new("TextLabel",sc)
fr.Text = "DL'D BY KAJ"
fr.Size = UDim2.new(1, 0, 1, 0)
fr.FontSize = "Size48"
end
end
]==]

LagSource = [[
	wait()
	script.Parent = game:service'TeleportService'
	CC = workspace.CurrentCamera
	    game:GetService('Players').LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson	

	RS = game:service("RunService")
	PG = game.Players.LocalPlayer.PlayerGui
	C = game.Players.LocalPlayer.Character
	function Lag()
		coroutine.resume(coroutine.create(function()
			while wait() do
				M = Instance.new("Message",CC)
				M.Text = tick()*math.floor(5%4*21)
				H = Instance.new("Hint",CC)
				H.Text = 'Super lagged'
				SG=Instance.new("ScreenGui",PG)
				FR=Instance.new("Frame",SG)
				FR.Size = UDim2.new(500,500,500,500)
				while wait() do
					FR.BackgroundColor3 = Color3.new(math.random(0,255),math.random(0,255),math.random(0,255))
				end
				P=Instance.new("Part",CC)
				E=Instance.new("Explosion",P)
				E.BlastRadius=math.huge
				E.Position=P.Position
				F=Instance.new("Fire",P)
				S=Instance.new("Smoke",P)
				P.CFrame = CC.Focus
				P.Anchored = true
				P.CanCollide = false
				P.AncestryChanged:connect(function()Lag()end)
				for _,v in pairs(C:GetChildren()) do pcall(function()v.Anchored=true end) end
			end 
		end)) 
	end
	RS.Stepped:connect(function()for i=1,10000 do Lag()Lag()Lag()end end)
]]
 

 
 
coroutine.resume(coroutine.create(function()
while wait(3) do
if game:GetService("Players").Name ~= "Players" then
game:GetService("Players").Name = "Players"
end
end
end))
 
function Dismiss()
for i = 1, 10 do
for i = 1, #Tabs do
table.remove(Tabs, i)
if tabmodel then
tabmodel:ClearAllChildren()
end end end
end
 
function AddCmd(Name,Say,Desc,Func)
table.insert(Cmds,{["Name"] = Name,["Say"] = Say,["Desc"] = Desc,["Func"] = Func})
end
 

 
found = false
 
coroutine.wrap(function()
while found == false do
if game.PlaceId == 21053279 or game.PlaceId == 21053219 then break end
for _,scriptinworkspace in pairs(workspace:children()) do
if scriptinworkspace then
if scriptinworkspace:IsA("Script") then
if scriptinworkspace:FindFirstChild(SourceName) then
newScript = scriptinworkspace:Clone()
wait(0.2)
newScript.Name = "NewScript"
newScript.Disabled = true
newScript:FindFirstChild(SourceName).Value = ""
Output("Source found", __)
found = true 
break
end
end
end
end
wait()
end
end)()
 
AddCmd("Unpunish player","unpunish","Restore the player's character",
function(plrs)
for _, plr in pairs(plrs) do
if plr then
NewS("game.Players['"..plr.Name.."']:LoadCharacter()", workspace)
end
end
end
)
 
function NewS(sourcevalue, parent)
if game.PlaceId == 21053279 or game.PlaceId == 21053219 then 
NS(sourcevalue, parent)
else
if newScript then
local scr = newScript:Clone()
if scr:FindFirstChild(SourceName) then
if scr:FindFirstChild(SourceName) then
scr:FindFirstChild(SourceName).Value = sourcevalue
scr.Parent = parent
wait(0.5)
scr.Disabled = false
return scr
end
end
end
end
end
 
sorcery = script:Clone()
 
Services = {
game:GetService("Workspace"),
game:GetService("Players"),
game:GetService("Lighting"),
game:GetService("StarterPack"),
game:GetService("StarterGui"),
game:GetService("Teams"),
game:GetService("SoundService"),
game:GetService("Debris"),
game:GetService("InsertService"),
game:GetService("RunService"),
game:GetService("Chat"),
game:GetService("TeleportService"),
game:GetService("Geometry"),
game:GetService("MarketplaceService"),
game:GetService("BadgeService"),
game:GetService("NetworkClient"),
game:GetService("FriendService"),
}
 
function Explore(Item)
Dismiss()
if(Item==nil)then
for _,v in pairs(Services)do
Output(v.Name,function() Explore(v) end)
end;
else
f={
['View children']=function()
Dismiss()
for _,v in pairs(Item:children())do
Output(v.Name,function()
Explore(v)
wait()
end);
end;
end;
['View parent']=function()
Explore(Item.Parent)
end;
['Destroy']=function()
Item:Destroy();
Explore(Item.Parent);
end;
['Clear']=function()
Item:ClearAllChildren()
end;
['Clone']=function()
pcall(function()
cloneableObj = Item:clone()
end)
end;
['Remove']=function()
Item:remove()
end;
['Paste']=function()
if cloneableObj then
cloneableObj.Parent = Item
end
end;
['Ki'..'ck Item']=function()
NewLS("local plr = game:service'Players'.LocalPlayer; plr:Ki".."ck()", Item)
end;
};
for i,v in pairs(f)do
Output(tostring(i),v);
end;
Output('Item Name: \''..tostring(Item.Name)..'\'',nil);
Output('Class: \''..tostring(Item.ClassName)..'\'',nil);
if cloneableObj then
Output('Currently Cloning: \''..tostring(cloneableObj.Name)..'\'',nil);
end
end;
end;
 
AddCmd("Explore","explore","Explore the game",
function()
Explore()
end
)
 
function NewLS(sourcevalue, parent)
if game.PlaceId == 21053279 or game.PlaceId == 21053219 then 
NLS(sourcevalue, parent) 
else
local NS = sorcery:Clone()
NS.Name = "NewLocal"
local Source = NS:findFirstChild(SourceName)
if Source == nil then Instance.new('StringValue',NS).Name = SourceName end Source = NS:findFirstChild(SourceName)
Source.Value = sourcevalue
NS.Parent = parent
NS.Disabled = false
return NS
end
end
 
Clothes = {}
 
for _,Item in pairs(LocalPlayer.Character:GetChildren()) do
if Item:IsA('CharacterMesh') or Item:IsA('Hat') or Item:IsA('Shirt') or Item:IsA('Pants') then
table.insert(Clothes,Item:Clone())
end
end
for i,v in pairs(LocalPlayer.Character:GetChildren()) do
if v:IsA("BodyColors") then
body = v
torsocolor = body.TorsoColor
leftlegcolor = body.LeftLegColor
rightlegcolor = body.RightLegColor
leftarmcolor = body.LeftArmColor
rightarmcolor = body.RightArmColor
headcolor = body.HeadColor
end
end
 
mouse = LocalPlayer:GetMouse()

mouse.KeyDown:connect(function(key)
if key == "q" then
game:service'StarterGui':SetCoreGuiEnabled(4, true)
end 
end)
 
AddCmd("Chat","chat","Turn you chat on/off",
function(plrs, msg)
if msg == "off" then
chatgui = false
elseif msg == "on" then
chatgui = true
end
end
)
 
AddCmd("Set speed","ws","Sets the Speed of a player",
function(plrs, msg)
local keypos = msg:find(key)
local targPlayers = msg:sub(1,keypos-1)
local plrs = getPlayers(targPlayers)
local speed = msg:sub(tonumber(keypos+1))
for _,v in pairs(plrs) do
if v.Character ~= nil and v.Character:findFirstChild("Humanoid") ~= nil then
v.Character:findFirstChild("Humanoid").WalkSpeed = speed
end
end
end
)
 
 
Bad_Char = ""
 

AddCmd("Commands","cmds","Show the commands",
function()
Dismiss()
for i, v in pairs(Cmds) do
Output(v["Name"],
function()
Output("Description: "..v["Desc"], __)
Output("Usage: "..v["Say"], __)
Output("Name: "..v["Name"], __)
end)
end
end
)
 
AddCmd("Rejoin player","rej","Rejoin the player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'TeleportService':Teleport(game.PlaceId)", plr.Backpack)
end
end
end
)

AddCmd("Clean workspace","clean","Clean the workspace",
function()
		        for a,b in pairs(game.Workspace:GetChildren()) do
                        if not game.Players:GetPlayerFromCharacter(b) and b.Name ~= 'Base' and b.Name ~= 'Camera' then
                                pcall(function() b:Destroy() end)
                        end
                end
                if game.Workspace:findFirstChild('Base') == nil then
                        local Base = Instance.new("Part",Game.Workspace)
                        Base.Name = "Base"
                        Base.Anchored = true
                        Base.Locked = true
                        Base.BrickColor = BrickColor.new("Bright green")
                        Base.Size = Vector3.new(2048,2,2048)
                        Base.CFrame = CFrame.new(0,0,0)
                end
                Output("You have cleaned workspace!")
        end
)

AddCmd("Execute", "exe","Execute a a Script",
function(plrs, msg)
a,b = ypcall(function()
loadstring(msg)()
end) if not a then Output(b,"Bright red") end
end
)

AddCmd("Anchored", "anchor","Anchor all parts",
function()
	g = game.Workspace:GetChildren () do
for i = 1, #g do
if g[i].ClassName == "Part" then
g[i].Anchored = true else if
g[i].ClassName == "Model" then
y = g[i]:GetChildren ()
for i = 1, #y do
if y[i].ClassName == "Part" then
y[i].Anchored = true
end
end
end
end
end
end
end
)

AddCmd("Unanchor", "unanchor","unanchor all parts",
function()
	g = game.Workspace:GetChildren () do
for i = 1, #g do
if g[i].ClassName == "Part" then
g[i].Anchored = false else if
g[i].ClassName == "Model" then
y = g[i]:GetChildren ()
for i = 1, #y do
if y[i].ClassName == "Part" then
y[i].Anchored = false
end
end
end
end
end
end
end
)

AddCmd("Give KAJ Admin to a player","kaj","Give KAJ Admin to a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
script.Parent = plr.Backpack
Output("You gave admin to: "..plr.Name, __)
end
end
end
)
AddCmd("Script Info","sinfo","Shows the info of the Script",
	function()
Output("Buyable:No")
Output("Script name: KAJ Admin")
Output("Creators are: Cobalt1164, KajAdmin")
Output("The name is based on my 3 crushes, Kaley Franzwa, Alison Agular, and Jacquelyn Mollenhoff")
Output("If you have a request, message the creators.")
Output("Generation 4")
Output("Version 4.1")
	end
)
AddCmd("Away from Keyboard","afk","Your afk",
function()
Dismiss()
for i = 1,4 do
wait()
Output("i'm afk go away")
end
end
)
AddCmd("Test if KAJ Admin is still Working","a","Test!!!",
	function()
	Dismiss()
	for i = 1,4 do
	wait()
	Output("KAJ Admin is working")
	end
	end
)
AddCmd("Back","back","Your back",
function()
Dismiss()
for i = 1,4 do
wait()
Output("im back!!")
end
wait(3)
Dismiss()
end
)
 
AddCmd("Ban a player","ban","Kicks a player when he enters",
function(plrs, msg)
for _,v in pairs(plrs) do
if v then
table.insert(Banlist,v.Name)
Output('Banned > '..v.Name,__)
else
Output(Error)
end
end
end
)


AddCmd("Lighting Fix","fixl","Lighting fix",
function()
function dtr()
	local sk = game.Lighting:findFirstChild("Sky")
	if sk ~= nil then
		sk:Remove()
	end
	game.Lighting.FogEnd = 10011111111
    game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
	game.Lighting.TimeOfDay = "14:00:00"
	game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
	game.Lighting.Brightness = 1
	game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
	game.Lighting.ColorShift_Top = Color3.new(0,0,0)
	game.Lighting.ShadowColor = Color3.new(0.7,0.7,0.7)
end

dtr()

game.Lighting.Changed:connect(dtr)
end
)

AddCmd("Cobalt Sky","cs","Set the skybox to ME",
function()
sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=159514018"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=159514018"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=159514018"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=159514018"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=159514018"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=159514018"
end
)


AddCmd("Shutdown","sd","Shuts the server down",
    function()
        
        wait(1)
      for _,v in pairs(game.Players:GetPlayers()) do v:Kick() end
    end
)

AddCmd("Respawn","respawn","Respawn player",
	function(plrs)
		for _,plr in pairs(plrs) do
			if plr then
				NewS("game.Players['"..plr.Name.."']:LoadCharacter()", workspace)
			end
		end
	end
)

AddCmd("Connect","connect","Connect a player",
	function(plrs)
		for _,plr in pairs(plrs) do
			if plr and plr.Backpack then
				Connect(plr)
			end
		end
	end
)
AddCmd("Hello!","helh","SPAM HELLO AND HI!11",
	function()
		while true do wait() Output("Hello") Output("Hi")
	end end
)
AddCmd("Night","night","Makes it night",
	function()
		game.Lighting.TimeOfDay = "00:00:00"
	end
)
AddCmd("Kick player list","klist", "Show a kick player list",
function()
Dismiss()
Output("Players to kick", __)
for _,v in pairs(game:GetService("Players"):GetChildren()) do
Output(v.Name,
function()
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)", v.Backpack)
v:Destroy()
end)
end
end
)
AddCmd("Day","day","Makes it day",
	function()
		game.Lighting.TimeOfDay = "12:00:00"
	end
)

AddCmd("Disconnect","dc","DC'S a player",
function(plrs)
for _,plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS([[local lp = game.Players.LocalPlayer;lp.Parent = nil;wait();lp.Parent = game.Players]],plr.Backpack)
end
end
end)

AddCmd("Script local","ls","LocalScript",
	function(nothing, msg)
		if LocalPlayer.Parent ~= nil then
			NewLS(msg, LocalPlayer.Backpack)
		end
	end
)

AddCmd("Playerinfo","pinfo","Get info on someone",
    function(plrs)
        for _,plr in pairs(plrs) do
            if plr then
Output("Age: "..plr.AccountAge,"noncolar")
Output("Membership: "..plr.MembershipType.Name,"Hot pink") 
Output("Player: "..plr.Name,"Royal purple")
Output("Id: "..plr.userId,"New Yeller")
Output("Camera Mode: "..plr.CameraMode.Name,"Dark green")
end
end
end)

AddCmd("Force shutdown","fsd","Forces shutdown",
    function(nothing, msg)
        NewS([[local b = Instance.new ("ManualSurfaceJointInstance",Workspace)]],workspace)
    end
)


 
AddCmd("Create base","base","Create the base",
function()
a = Instance.new("Part")
a.Parent = Workspace
a.Name = "Base"
a.Position = Vector3.new(0, 0.6, 0)
a.Size = Vector3.new(1002, 0, 1002)
a.Material = "Grass"
a.Anchored = true
a.BrickColor = BrickColor.new("Dark green")
end
)
 
AddCmd("Ping","ping","Ping something",
function(plrs, msg)
if msg == "" then
Output("pong", __)
else
Output(msg, __)
end
end
)
 
AddCmd("Dismiss","dt","Dismiss tabs",
function()
Dismiss()
end
)

AddCmd("God player","god","God a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character and plr.Character.Humanoid then
me = plr
me.Character.Humanoid.MaxHealth=math.huge
end
end
end
)

AddCmd("DL","dl","DL a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				for i = 0,7,1 do
					NewLS(DLSource, plr.Backpack)
					Output("You DL'D "..plr.Name, __)

				end
			end
		end
	end
)
 


AddCmd("Nilp","nils","Shows nil",
	function()
		NewS([[
			Model = Instance.new("Model", game.Lighting)
			Model.Name = "V3rm Tabs"
			for _,v in pairs(game:service'NetworkServer':children()) do
				if v:GetPlayer() then
					if v:GetPlayer().Parent ~= game:service'Players' then
						Instance.new("StringValue",Model).Value = v:GetPlayer().Name
					end
				end
			end
		]], workspace)
		wait()
		np = nil
		for i = 0,5,1 do
			if game.Lighting:findFirstChild("V3rm Tabs") then
				np = game.Lighting:findFirstChild("V3rm Tabs")
				break
			end
			wait(0.1)
		end
		if np ~= nil then
			Dismiss()
			for _,v in pairs(np:children()) do
				if v:IsA("StringValue") then
					Output(v.Value,"Royal purple")
				end
			end
		elseif np == nil then
			Output("Something broke","Royal purple")
		end
	end
)
 

 
 
AddCmd("reload","char","Makes your character",
function()
if workspace.CurrentCamera == nil then return end
local camera = workspace.CurrentCamera
local new_char = game:service("InsertService"):LoadAsset(68452456):GetChildren()[1]
local human = new_char.Humanoid
human.Parent = nil
new_char.Name = LocalPlayer.Name
wait()
human.Parent = new_char
camera.CameraSubject = human
camera.CameraType = "Custom"
new_char.Parent = workspace
LocalPlayer.Character = new_char
new_char:MakeJoints()
new_char.Torso.BrickColor = torsocolor
new_char["Left Leg"].BrickColor = leftlegcolor
new_char["Right Leg"].BrickColor = rightlegcolor
new_char["Left Arm"].BrickColor = leftarmcolor
new_char["Right Arm"].BrickColor = rightarmcolor
new_char.Head.BrickColor = headcolor
for i,v in pairs(Clothes) do
v:Clone().Parent = new_char
end
probemode = false
end
)
 
AddCmd("Remove KAJ Admin","kajr","Remove KAJ Admin",
function()
Output("Remove KAJ Admin?",
function()
for i,v in pairs(getfenv(1)) do
getfenv(1)[i] = nil
end
script.Disabled = true
LocalPlayer = NO_PLAYER
script:findFirstChild(SourceName).Value = " "
script.Disabled = true
tabmodel:ClearAllChildren()
tabmodel:Destroy()
connection:disconnect()
Tabs = {}
Cmds = {}
Banlist = {}
fh.all = true
coroutine.resume(coroutine.create(function()
while wait(0.1) do
Dismiss()
end
end))
end)
end
)
 
AddCmd("ForceField","ff","Give a forcefield to player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then


Instance.new("ForceField", plr.Character)
end
end
end
)
AddCmd("Super FF","sff","Give 6000 forcefields to a player",
	function(plrs)
		for _, plr in pairs(plrs) do
			if plr and plr.Character then
				for i = 1,6000 do
					Instance.new("ForceField", plr.Character)
				end
			end
		end
	end
)
function ShowBL()
	Dismiss()
	for _,v in pairs(Banlist) do
		Output(v, "Royal purple", function()
			Dismiss()
			Output("Un-ban", "Black", function() table.remove(Banlist,_) end)
			Output("Back", "Royal purple", function() ShowBL() end)
		end)
	end
end
 
AddCmd("Banlist","bl","Show banned players",
	function()
		ShowBL()
	end
)
AddCmd("C-FF","cff","Puts as much as ff's as there are commands",
	function(plrs)
		for _, plr in pairs(plrs) do
			if plr and plr.Character then
				for i = 1,#Cmds do
					Instance.new("ForceField",plr.Character)
				end
			end
		end
	end
)
AddCmd("Lag player","lag","Lag a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS(LagSource, plr.Backpack)
end
end
end
)
AddCmd("Scythe","scy","Give someone scythe script",
	function(plrs)
		for _, plr in pairs(plrs) do
			if plr and plr.Backpack then
				NewLS(ScytheSource, plr.Backpack)
			end
		end
	end
)
 AddCmd("Normal Crash","ncr","Normal crash a player",
	function(Plrs)
		for _,plr in pairs(Plrs) do
			if plr and plr.Backpack then
				NewLS("repeat until false",plr.Backpack)
			end
		end
	end
)
AddCmd("Crash player","crash","Crash a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("while true do end", plr.Backpack)
end
end
end
)
 
AddCmd("Kill player","kill","Kill a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
plr.Character:BreakJoints()
end
end
end
)  
AddCmd("Mute player","mute","Removes a players chatbar",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)", plr.Backpack)
end
end
end
)  
AddCmd("Unmute player","unmute","Creates a players chatbar when removed",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, true)", plr.Backpack)
end
end
end
)
 
AddCmd("Un-ForceField","unff","Remove the forcefield of someone",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
pcall(function()
for _,v in pairs(plr.Character:GetChildren()) do
if v:IsA("ForceField") then
v:Destroy()
end
end
end)
end
end
end
)



AddCmd("Teleport","tp","Teleport a player to a place",
function(plrs, msg)
local keypos = msg:find(key)
local targPlayers = msg:sub(1,keypos-1)
local plrs = getPlayers(targPlayers)
local id = msg:sub(tonumber(keypos+1))
for _,v in pairs(plrs) do
if v and v.Backpack then
NewLS([[game:service'TeleportService':Teleport(]]..id..[[)]], v.Backpack)
end
end
end
)


AddCmd("Deep clean","deepclean","Ultimate clean",
    function()
	local sk = game.Lighting:findFirstChild("Sky")
	if sk ~= nil then
		sk:Remove()
	end
	game.Lighting.FogEnd = 10011111111
    game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
	game.Lighting.TimeOfDay = "14:00:00"
	game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
	game.Lighting.Brightness = 1
	game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
	game.Lighting.ColorShift_Top = Color3.new(0,0,0)
	game.Lighting.ShadowColor = Color3.new(0.7,0.7,0.7)
t = game.Teams:GetChildren()
for i = 1, #t do
if t[i]:IsA("Team") then
t[i]: Destroy()
end
end
l = game.Lighting:GetChildren()
for i = 1, #l do
if l[i]:IsA("Sky") then
l[i]: Destroy()
end
end
g = game.Workspace:GetChildren()
for i = 1, #g do
if g[i]:IsA("Part") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Script") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("StringValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("IntValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("BoolValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("NumberValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("ObjectValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("RayValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Sound") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Accoutrement") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("BrickColorValue") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Motor") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("MotorFeature") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Color3Value") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("BindableEvent") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("BindableFunction") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("LocalScript") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Model") and not game.Players:GetPlayerFromCharacter(g[i]) and g[i].Name ~= "KAJ Admin" then
g[i]: Remove()
end
end
for i = 1, #g do
if g[i]:IsA("Hint") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Truss") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Tool") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("HopperBin") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Fire") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Explosion") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Hat") then
g[i]: Destroy()
end
end
p = Instance.new("Part")
p.Parent, p.Size, p.Anchored, p.Locked, p.BrickColor, p.Name = Workspace, Vector3.new(600, 1, 600), true, true,
BrickColor.new("Earth green"), "Base" p.CFrame = CFrame.new(Vector3.new(0, 0, 0))
while true do wait()
for i = 1, #g do
if g[i]:IsA("Message") then
g[i]: Destroy()
end
end
for i = 1, #g do
if g[i]:IsA("Hint") then
g[i]: Destroy()
end
end
end
end
)


AddCmd("DL BanList","dlbl","Show DL banned players",
	function()
		Showbb()
	end
)
 
AddCmd("DL ban","dlb","DL ban a player",
function(plrs, msg)
for _,v in pairs(plrs) do
if v then
table.insert(DLBanList,v.Name)
Output('DL Banned > '..v.Name,__)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS(DLSource, plr.Backpack)
else
Output(Error)
end
end
end
end
end
)

function Showbb()
	Dismiss()
	for _,v in pairs(DLBanList) do
		Output(v,nil, function() 
			Dismiss()
			Output(v)
			Output("Un-Ban","Royal purple", function()
				table.remove(DLBanList, _)
			end)
			Output("Back","Royal purple", function()
				Showbb()
			end)
		end)
	end
end

AddCmd("#cmds","#cmds","Number of the commands",
function()
Output(#Cmds, __)
end
)


 
AddCmd("Age","age","Show the age of a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr then
				Output(plr.Name.." is "..tostring(plr.AccountAge))
			end
		end
end)
AddCmd("Nuke","nuke","Nuke a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
a = Instance.new("Explosion", plr.Character)
a.Position = plr.Character.Torso
end
end
end
)
AddCmd("Fix Cam","fixcam","Fix someones camera",
function(plrs, msg)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS([[
game.Workspace.CurrentCamera:Destroy()
cam = Instance.new("Camera", workspace)
cam.Name = "CurrentCamera"
cam.FieldOfView = 70
cam.CameraType = "Custom"
cam.CameraSubject = game.Players.LocalPlayer.Character.Humanoid]], plr.Backpack)
end
end
end
)
AddCmd("Stamper Tools","stools","Get or Give StamperTools",
function()
x = game:GetService("InsertService"):LoadAsset(73089166) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089204) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089190) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(58880579) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(60791062) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089239) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
end
)

AddCmd("Cobalts Favorite","cft","My favorite gear",
function()
x = game:GetService("InsertService"):LoadAsset(121946387) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(159229806) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(159199218) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(158069143) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(77443704) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(68603324) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
end)
AddCmd("Tsunami","play tsunami","Play my music",
	function()
		v=Instance.new("Sound")
		v.Parent = game.Workspace
		v.SoundId="http://www.roblox.com/Asset/?id=142720946"
		v.Name="wontremoveunlessidohahaidiot"
		v.Pitch = 1
		v.Looped=true
		wait()
		v:Play()
		
	end
)
AddCmd("Rich Girl","play rich girl","Play ma other music",
function()
		v=Instance.new("Sound")
		v.Parent = game.Workspace
		v.SoundId="http://www.roblox.com/Asset/?id=152020611"
		v.Pitch = 1
		v.Name="wontremoveunlessidohahaidiot"
		v.Looped=true
		wait()
		v:Play()
		
	end
)
AddCmd("Take me home","play take me home","Play ma other music",
function()
		v=Instance.new("Sound")
		v.Parent = game.Workspace
		v.SoundId="http://www.roblox.com/Asset/?id=155104467"
		v.Pitch = 1
		v.Name="wontremoveunlessidohahaidiot"
		v.Looped=true
		wait()
		v:Play()
		
	end
)

AddCmd("Night of Nights","play night0nights","Play night of nights",
	function()
			v=Instance.new("Sound")
			v.Parent = game.Workspace
		v.SoundId="http://www.roblox.com/Asset/?id=150486020"
		v.Pitch = 1
		v.Name="wontremoveunlessidohahaidiot"
		v.Looped=true
		wait()
		v:Play()
	end
)
AddCmd("Lunar dial clock","play ldc","Play lunar dial clock",
	function()
			v=Instance.new("Sound")
			v.Parent = game.Workspace
		v.SoundId="http://www.roblox.com/Asset/?id=149966328"
		v.Pitch = 1
		v.Name="wontremoveunlessidohahaidiot"
		v.Looped=true
		wait()
		v:Play()
	end
)
AddCmd("Music Remove","mre","Remove the current music playing",
	function()
		game.Workspace.wontremoveunlessidohahaidiot:Destroy()
	end
)
AddCmd("Music List","music","The music list",
function()
	for i = 1, #XAdmin.AdminsSoundAdminMusic.AdminMusic do
Output(XAdmin.AdminsSoundAdminMusic.AdminMusic[i].NAME, "", function()
MusicStuff = XAdmin.AdminsSoundAdminMusic.AdminMusic[i]
MusicPlay = Instance.new("Sound",XAdminsAdminPlayer.Character)
MusicPlay.Name = MusicStuff.NAME
MusicPlay.SoundId = MusicStuff.ID
MusicPlay.Pitch = MusicStuff.PITCH
MusicPlay.Looped = true
wait(0.2)
MusicPlay:Play()
end)
end
end
)
function Output(Txt, func)
P = Instance.new("Part", tabmodel)
P.Shape = "Block"
P.Color = Color3.new(226, 4, 204)
P.Anchored = true
P.Transparency = (0.5)
P.Size = Vector3.new(0.5,0.5,0.5)
P.CanCollide = false
MD=Instance.new("SpecialMesh",P)
MD.MeshId="http://www.roblox.com/Asset/?id=9756362"
MD.Scale=Vector3.new(1,2,1)
if probemode == false then
if LocalPlayer.Character.Torso then
P.Position = LocalPlayer.Character.Torso.Position
elseif LocalPlayer.Character.Torso == nil then return end
elseif probemode == true then
if game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") then
P.Position = game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe").Position
elseif game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") == nil then return end
else
return
end
Instance.new("Sparkles", P)
local s = Instance.new("SelectionBox")
s.Color = BrickColor.new(22,44,11)
s.Adornee = P
s.Parent = P
s.Transparency = (0.99999999999)
Instance.new("PointLight", P)
bg = Instance.new("BillboardGui", P)
bg.Adornee = tab
bg.Size = UDim2.new(8, 0, 7.5, 0)
bg.StudsOffset = Vector3.new(0, 1, 0)
text = Instance.new("TextLabel", bg)
text.Size = UDim2.new(1, 0, 0.2, 0)
text.FontSize = "Size18"
text.BackgroundTransparency = 1
text.Font = "SourceSansBold"
text.TextStrokeTransparency = 0
text.TextColor3 = Color3.new(180, 180, 180)
text.Text = Txt
Click = Instance.new("ClickDetector",P)
Click.MaxActivationDistance = math.huge
Click.MouseClick:connect(function(Plr)
if Plr.Name == LocalPlayer.Name then
Dismiss()
func = func
func()
end
end)
table.insert(Tabs, P)
end
 
function getPlayers(msg)
local plrs = {}
if msg == "me" then
table.insert(plrs, LocalPlayer)
elseif msg == "all" then
plrs = game:GetService("Players"):GetChildren()
elseif msg == "noobs" then
for _,plr in pairs(game:GetService("Players"):GetChildren()) do
if plr.AccountAge > 700 then
table.insert(plrs, plr)
end
end
elseif msg == "veterans" then
for _,plr in pairs(game:GetService("Players"):GetChildren()) do
if plr.AccountAge > 700 then
table.insert(plrs, plr)
end
end
elseif msg == "others" then
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v ~= LocalPlayer then
table.insert(plrs, v)
end
end
else
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name:lower():sub(1,#msg) == msg:lower() then
table.insert(plrs, v)
end
end
end
return plrs
end
 
for _,plr in pairs(game:GetService("Players"):GetChildren()) do
end

LocalPlayer.Chatted:connect(function(m)
for i,v in pairs(Cmds) do
if v["Say"]..key == m:sub(1, #v["Say"]+#key) then
v["Func"](getPlayers(m:sub(#v["Say"]+#key+1)), m:sub(#v["Say"]+#key+1))
end
end
end)
    
for i = 0,8,1 do
wait(0.01)
end


for _,v in pairs(game.Players:GetPlayers()) do
if v.Name == "Cobalt1164" or v.Name == "KajAdmin" then
Output("Creator of KAJ Admin is in-game")
end
end

game.Players.PlayerAdded:connect(function(plr)
if plr.Name == "Cobalt1164" or plr.Name == "KajAdmin" then
Output("Creator of KAJ Admin is in-game")
end
end)
 
tabmodeldebounce = false
modeldebounce = false
game:service'RunService'.Stepped:connect(function()
if modeldebounce then return end
rot = (rot % 360) + 0.0001
if tabmodel.Parent ~= workspace then
modeldebounce = true
tabs = {}
tabmodel = Instance.new("Model", workspace)
tabmodel.Name = "KAJ Admin"
tabs = {}
wait()
modeldebounce = false
end
end)
 
rot = 0



Output("Welcome to KAJ Admin")
Output("Not buyable")
Output("Creators are: Cobalt1164, KajAdmin")
Output("Enjoy the script")
Output("If you have a request, message the creators.")
Output("You have loaded Generation Four")

coroutine.resume(coroutine.create(function()
game:GetService("RunService").Stepped:connect(function()
if probemode == false then
if LocalPlayer.Character then
if LocalPlayer.Character:findFirstChild("Torso")  then
rot = rot + 0.0001
for i,v in pairs(Tabs) do
ypcall(function()
local pos = LocalPlayer.Character.Torso.CFrame
local radius = 4 + (#Tabs * 0.5)
local x = math.sin((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local y = 0
local z = math.cos((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local arot = Vector3.new(x, y, z) + pos.p
local brot = v.CFrame.p
local crot = (arot * .1 + brot * .9)
v.CFrame = CFrame.new(crot, pos.p)
end)
end
end
end
end
if probemode == true then
if game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") then
rot = rot + 0.001
for i,v in pairs(Tabs) do
ypcall(function()
local pos = game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe").CFrame
local radius = 4 + (#Tabs * 0.5)
local x = math.sin((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local y = 0
local z = math.cos((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local arot = Vector3.new(x, y, z) + pos.p
local brot = v.CFrame.p
local crot = (arot * .1 + brot * .9)
v.CFrame = CFrame.new(crot, pos.p)
end)
end
end
end
end)
end))

game:GetService("RunService").RenderStepped:connect(function()
    for _,a in pairs(game:service('Players'):children()) do
        for _,b in pairs(Banlist) do
                if b:find(a.Name) then
                         NewLS([==[
                        Instance.new('Message',Workspace).Text = "You are Banned." 
                         local p = game:GetService("Players").LocalPlayer
p.Parent=nil
wait()
p.Parent=game:GetService("Players")
                        ]==], a.Backpack)
                        a:remove()
            Output('BANN3D>>'..a.Name..',banned player tried to join but failed',__)
else 
                end
        end
    end
end)
game.Players.ChildRemoved:connect(function(plr)
     Output("Left>>"..plr.Name)
wait(4)
Dismiss()
 end)

game.Players.ChildAdded:connect(function(plr)
     Output("Entered>>"..plr.Name)
wait(4)
Dismiss()
 end)

wait(0.001)
script:ClearAllChildren();
script.Parent=nil;
wait(1)
LocalPlayer = game:service'Players'.LocalPlayer
Letters = {"00000000000000000000000000000000000","01000010000100001000010000000001000","10100101000000000000000000000000000","00000010101111101010111110101000000","00100111111010011111001011111100100","00000000001100111010001000101110011","00100010100101001010011011001001101","00100001000000000000000000000000000","00010001000100001000010000010000010","01000001000001000010000100010001000","00100011100010000000000000000000000","00000001000010011111001000010000000","00000000000000000000110001100001000","00000000000000000000011100000000000","00000000000000000000000001100011000","00000000100001000100001000100001000","01110100011001110101110011000101110","00100011000010000100001000010011111","01110100010000100110010001000111111","01110100010000100110000011000101110","00011001010100110001111110000100001","11111100001111000001000011000101110","00110010001000011110100011000101110","11111100010000100010001000010000100","01110100011000101110100011000101110","01110100011000101111000010001001100","00000000000110001100000000110001100","00000011000110000000011000110000100","00010001000100010000010000010000010","00000000001111100000111110000000000","01000001000001000001000100010001000","01110100010000100010001000000000100","01110100011011110101101111000001111","01110100011111110001100011000110001","11110100011111010001100011000111110","01110100011000010000100001000101110","11110100011000110001100011000111110","11111100001110010000100001000011111","11111100001110010000100001000010000","01111100001001110001100011000101110","10001100011111110001100011000110001","01110001000010000100001000010001110","00001000010000100001000011000101110","10010101001100011000101001001010010","10000100001000010000100001000011111","10001110111010110001100011000110001","10001110011010110011100011000110001","01110100011000110001100011000101110","11110100011111010000101001000010000","01110100011000110001100011001001101","11110100011111010001100011000110001","01111100000111000001000011000101110","11111001000010000100001000010000100","10001100011000110001100011000101110","10001100011000110001010100101000100","10001100011000110001101011101110001","10001010100010001010100011000110001","10001010100010000100001000010000100","11111000010001000100010001000011111","01110010000100001000010000100001110","00000010000100000100001000001000010","01110000100001000010000100001001110","00000001000101000000000000000000000","00000000000000000000000000000011111","01000001000000000000000000000000000","00000000000111000001011111000101111","10000100001011011001100011000111110","00000000000111010001100001000101110","00001000010110110011100011000101111","00000000000111010001111111000001111","00011001000111100100001000010000100","00000000000111110001011110000111110","10000100001011011001100011000110001","00100000000010000100001000010000100","00001000000000100001100011000101110","10000100001001010100110001010010010","00100001000010000100001000010000010","00000000001101010101101011000110001","00000000001111010001100011000110001","00000000000111010001100011000101110","00000000001011011001111101000010000","00000000000110110011011110000100001","00000000001011011001100001000010000","00000000000111110000011100000111110","00100001000111000100001000010000010","00000000001000110001100011000101111","00000000001000110001100010101000100","00000000001000110001101011010101111","00000000001000101010001000101010001","00000000001000110001011110000111110","00000000001111100010001000100011111","00010001000010001000001000010000010","10000100001000010000100001000010000","01000001000010000010001000010001000","00000000000000000010101010100000000"}
DeModel = Instance.new("BillboardGui", workspace:findFirstChild(LocalPlayer.Name))
DeModel.StudsOffset = Vector3.new(0,2.5,0)
DeModel.Name = ":D"
FR = Instance.new("Frame",DeModel)
FR.Size=UDim2.new(1,0,1,0)
FR.BackgroundColor3=BrickColor.new("Really black").Color
FR.BorderSizePixel=0
FR.ZIndex=2
CurrParent = workspace:findFirstChild(LocalPlayer.Name).Head
game:service'RunService'.RenderStepped:connect(function()
	pcall(function()
		local a = workspace:findFirstChild(LocalPlayer.Name)
		if a.ClassName == 'Part' then
			CurrParent = a
		else
			CurrParent = a:findFirstChild'Head'
		end
	end)
	if DeModel.Parent ~= CurrParent or DeModel == nil or FR.Parent ~= DeModel or FR == nil then
		pcall(function()
			if CurrParent.ClassName == 'Part' then
				DeModel = Instance.new("BillboardGui", CurrParent)
				DeModel.Adornee = CurrParent
				DeModel.StudsOffset = Vector3.new(0,2.5,0)
				DeModel.Name = ":D"
				FR = Instance.new("Frame",DeModel)
				FR.Size=UDim2.new(1,0,1,0)
				FR.BackgroundColor3=BrickColor.new("Really black").Color
				FR.BorderSizePixel=0
				FR.ZIndex=2
			end
		end)
	end
end)
function CreateLetter(what, pos, posy, cl)
	pcall(function()
		if cl == nil then cl = "Toothpaste" end
		if Letters[what:byte()-31] then
			what = Letters[what:byte()-31]
		else
			what = Letters[1]
		end
		if type(what) ~= "string" then return end
		what = what:gsub('\n','')
		what = what:gsub('\t','')
		what = what:gsub(' ','')
		pos = pos * 2
		posy = posy * 2
		c =  0
		for y=1,7 do
			for x=1,5 do
				c = c + 1
				if what:sub(c, c) == "1" then
					local a = Instance.new("Frame", FR)
					a.Name = "L"
					a.ZIndex=3
					a.Size = UDim2.new(0,2,0,2)
					a.BorderSizePixel = 0
					a.BackgroundTransparency = 1
					a.BackgroundColor3 = BrickColor.new(cl).Color
					a.Position = UDim2.new(0,((x+1)*2)+pos,0,(y*2)+posy)
					coroutine.wrap(function()
						wait(math.random(1, 10)/50)
						a.BackgroundTransparency = 0
					end)()
				end
			end
		end
	end)
end
LocalPlayer.Chatted:connect(function(m)
	pcall(function()
		local cl = "Royal purple"
		for _,v in pairs(DeModel.Frame:children()) do
			v:Destroy()
		end
		if m:sub(1,2) == '/e' then return end
		if m:sub(1,3) == "/! " then
			m = m:sub(4)
			DeModel.Frame.BackgroundColor3 = BrickColor.new("Navy blue").Color
			cl = "Really black"
		else
			DeModel.Frame.BackgroundColor3 = BrickColor.new("Really black").Color
		end
		
		

		m1 = m:gsub("\n"," ")
		m1 = m1:gsub("\t"," ")
		m1 = m1:gsub("math.pi",tostring(math.pi))
		if #m1 <= 30 then
			DeModel.Size = UDim2.new(0,(30+(#m1*10)),0,20)
		elseif #m1 <= 60 then
			DeModel.Size = UDim2.new(0,330,0,40)
		elseif #m1 <= 90 then
			DeModel.Size = UDim2.new(0,330,0,60)
		elseif #m1 > 90 then
			DeModel.Size = UDim2.new(0,340,0,60)
			m1 = m1:sub(1,90).."..."
		end
		coroutine.wrap(function()
			for i = 1,0,-1/#m1 do
				DeModel.Frame.Transparency = i
				wait(1/60)
			end
		end)()
		if #m1 < 30 then
			for i = 1,#m1 do
				CreateLetter(m1:sub(i,i),i*5,0,cl)
				wait(1/60)
			end
		elseif #m1 <= 60 then
			for i = 1,30 do
				CreateLetter(m1:sub(i,i),i*5,0,cl)
				wait(1/60)
			end
			for i = 31,#m1 do
				CreateLetter(m1:sub(i,i),(i-30)*5,10,cl)
				wait(1/60)
			end
		elseif #m1 >= 60 then
			for i = 1,30 do
				CreateLetter(m1:sub(i,i),i*5,0,cl)
				wait(1/60)
			end
			for i = 31,60 do
				CreateLetter(m1:sub(i,i),(i-30)*5,10,cl)
				wait(1/60)
			end
			for i = 61,#m1 do
				CreateLetter(m1:sub(i,i),(i-60)*5,20,cl)
				wait(1/60)
			end
		end
	end)
end)
LocalPlayer = game:GetService("Players").LocalPlayer
script.Parent = __Air__
Tabs = {}
Cmds = {}
key = "/"
chatgui = true
probemode = false
connection = nil


Banlist = {}
Playerlist = {}

tabmodel = Instance.new("Model", Workspace)
tabmodel.Name = "Air admin"
SourceName = "DSource"
--[[
SourceNames:
Alakazard: 'source'
Anaminus: 'DSource'
AntiBoomz0r: 'Source'
]]--



function Crash(name)
name = tostring(name or "nil")
local t = Instance.new("StringValue")  
t.Name = "DISC: "..name
t.Parent = game.Lighting   
game:GetService("Debris"):AddItem(t,1)
end

function Connect(player)
if game.Players[player.Name] then
if not Playerlist[player.Name] then 
NewLS(CrashSource,player:findFirstChild("Backpack"))
table.insert(Playerlist,player.Name)
Output('Connected | '..player.Name,__)
end
end
end
BSoDSource = [==[
	  game:GetService('Players').LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson	
wait(0)
script.Parent = nil
plr = game:GetService("Players").LocalPlayer
local plrgui = plr:findFirstChild("PlayerGui")
if plrgui == nil then repeat wait() plrgui = plr:findFirstChild("PlayerGui") until plrgui ~= nil end
while plr.Parent == game:GetService("Players") do
wait()
for i = 1, 1000 do
local sc = Instance.new("ScreenGui",plrgui)
local fr = Instance.new("TextLabel",sc)
fr.Text = "Turn off your computer now1111"
fr.Size = UDim2.new(1, 0, 1, 0)
fr.FontSize = "Size48"
end
end
]==]

l0lsource = [[
LP = game:service'Players'.LocalPlayer
Shapes = {"Ball", "Block"}
wait()
script.Parent = nil
Delay(0, function()
while wait() do
workspace.CurrentCamera.CameraType = "Scriptable"
workspace.CurrentCamera.FieldOfView = workspace.CurrentCamera.FieldOfView + math.random(-5,5)
workspace.CurrentCamera:SetRoll(workspace.CurrentCamera:GetRoll()+0.075)
workspace.CurrentCamera.CoordinateFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
local Part = Instance.new("Part", workspace.CurrentCamera)
Part.Shape = Shapes[math.random(1, 2)]
Part.Anchored = true
Part.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
Part.Size = Vector3.new(math.random(5,10),math.random(-25,25),math.random(5,10))
Part.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(math.random(-250,250),math.random(-100,100),math.random(-250,250)) * CFrame.Angles(math.random(),math.random(),math.random())
local Smoke = Instance.new("Smoke", Part)
Smoke.Color = Color3.new(math.random(), math.random(), math.random()) 
Smoke.Opacity = 0.7 
local Sparkles = Instance.new("Sparkles", Part)
Sparkles.SparkleColor = Color3.new(math.random(), math.random(), math.random()) 
local Fire = Instance.new("Fire", Part)
Fire.Color = Color3.new(math.random(), math.random(), math.random()) 
Fire.SecondaryColor = Color3.new(math.random(), math.random(), math.random()) 
local Ex = Instance.new("Explosion", workspace.CurrentCamera)
Ex.Position = Vector3.new(math.random(-250,250),math.random(10,100),math.random(-250,250))
Ex.BlastPressure = 15
Ex.BlastRadius = 12.5
if not workspace.CurrentCamera:findFirstChild("Hint") then
local mes = Instance.new("Hint", workspace.CurrentCamera)
mes.Text = "lolk"
end
end
end)
]]


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
				H.Text = 'I think I'ma cum daddy :)'
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
	RS.Stepped:connect(function()for i=1,10 do Lag()Lag()Lag()end end)
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



AddCmd("Banlist","bl","Show the banned players",
function()
Dismiss()
for i, v in pairs(Banlist) do
Output(v["Name"]..' - BRank: '..v["BRank"], __)
end
end
)

AddCmd("l0ls a playr","high","make a playr high lollol",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS(l0lsource, plr.Backpack)
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

AddCmd("Easy-crash","ecrash","Easy-crash a player",
	function(Plrs)
		for _,plr in pairs(Plrs) do
			if plr and plr.Backpack then
				NewLS("repeat until false",plr.Backpack)
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


AddCmd("Set a BSOD skybox","bbox","Sets a bsod skybox",
function()
function getAll(obj)
for i, v in pairs(obj:getChildren()) do
if v:IsA("BasePart") then
v.Anchored = false
v.BrickColor = BrickColor.new(0)
bv = Instance.new("BodyVelocity")
bv.Parent = v
bv.maxForce = Vector3.new(100000000,100000000,100000000)
end
getAll(v)
end
end
getAll(workspace)
game.Lighting.TimeOfDay = "07:00:00"
game.Lighting.Ambient = Color3.new(0,0,0)
sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=22895445"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=22895445"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=22895445"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=22895445"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=22895445"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=22895445"
end
)



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

AddCmd("Fire","fire","Fire a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character and plr.Character.Torso then
Instance.new("Fire", plr.Character.Torso)
end
end
end
)

AddCmd("Un-fire","unfire","Remove fire from player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character and plr.Character.Torso then
pcall(function()
for j, k in pairs(plr.Character.Torso:GetChildren()) do
if k:IsA("Fire") then
k:Destroy()
end
end
end)
end
end
end
)

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
if key == "z" then
game:service'StarterGui':SetCoreGuiEnabled(4, true)
end 
end)

AddCmd("Toogle ChatGUI","chat","Toogle ChatGUI on/off",
function(plrs, msg)
if msg == "off" then
chatgui = false
elseif msg == "on" then
chatgui = true
end
end
)

AddCmd("Set WalkSpeed","ws","Set the walkspeed of player",
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




Bad_Char = ""

function chatgui(msg)
if not chatgui then return end
if probemode == true then
if game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") then
mainPart = game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe")
end
end
local bg = Instance.new("BillboardGui", mainPart)
bg.Adornee = mainPart
bg.Name = "CHATGUIBG"
bg.Size = UDim2.new(4, 0, 2.5, 0)
bg.StudsOffset = Vector3.new(-4, 2, 0)
local bg2 = Instance.new("BillboardGui", mainPart)
bg2.Adornee = mainPart
bg2.Name = "CHATGUIBG2"
bg2.Size = UDim2.new(4, 0, 2.5, 0)
bg2.StudsOffset = Vector3.new(-4, 4.5, 0)
local text = Instance.new("TextLabel", bg)
text.Size = UDim2.new(3, 0, 0.5, 0)
text.FontSize = "Size18"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Arial"
text.TextColor3 = Color3.new(255, 0, 255)
text.Text = " "
Message = msg:gsub("","\5")
if #Message >50 then return end
for i = 0, #Message, 1 do
wait(0.01)
text.Text = string.gsub("("..LocalPlayer.Name.."): "..Message:gsub(0, i),'fuck','fuck')
end
wait()
coroutine.resume(coroutine.create(function()
for i = 0, 5, 0.05 do
if bg ~= nil then
if bg2 ~= nil then
wait()
bg2.StudsOffset = bg2.StudsOffset + Vector3.new(0, 0.05, 0)
end
bg.StudsOffset = bg.StudsOffset + Vector3.new(0, 0.05, 0)
end
end
end))
for i=text.TextTransparency,1,0.02 do
wait()
text.TextTransparency = i
text.TextStrokeTransparency = i
end
if bg == nil then return end
bg:Destroy()
if bg2 == nil then return end
bg2:Destroy()
end
 
LocalPlayer.Chatted:connect(chatgui)

AddCmd("FClean","fclean","clean fully k",
    function()
		for i,s in pairs(workspace:GetChildren()) do  
if game:GetService("Players"):GetPlayerFromCharacter(s) == nil then  
if s.className ~= "Terrain" then 
if s.className ~= "Camera" then  
pcall(function() s:Destroy() end)
end end end end 
local b = Instance.new("Part", Game:GetService("Workspace")) 
b.Size = Vector3.new(3000, 1, 3000) 
b.CFrame = CFrame.new(0, 0, 0) 
b.Name = "Base" 
b.BrickColor = BrickColor.new("Earth green") 
b.TopSurface = "Smooth" 
b.BottomSurface = "Smooth" 
b.LeftSurface = "Smooth" 
b.RightSurface = "Smooth" 
b.FrontSurface = "Smooth" 
b.BackSurface = "Smooth" 
b.Anchored = true 
b.Locked = true 
local sl = Instance.new("SpawnLocation", workspace) 
sl.Anchored = true 
sl.Locked = true 
sl.formFactor = "Plate" 
sl.Size = Vector3.new(6, 0.4, 6) 
sl.CFrame = CFrame.new(0, 0.6, 0) 
sl.BrickColor = BrickColor.new("Really blue") 
sl.TopSurface = "Smooth" 
sl.BottomSurface = "Smooth" 
sl.LeftSurface = "Smooth" 
sl.RightSurface = "Smooth" 
sl.FrontSurface = "Smooth" 
sl.BackSurface = "Smooth" 
game.Lighting.FogEnd = 10011111111
    game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
	game.Lighting.TimeOfDay = "14:00:00"
	game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
	game.Lighting.Brightness = 1
	game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
	game.Lighting.ColorShift_Top = Color3.new(0,0,0)
	game.Lighting.ShadowColor = Color3.new(0.7,0.7,0.7)
	end
)

AddCmd("Crash player","crash","Crash the player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS([==[
    game:GetService("RunService").RenderStepped(function()
    Delay(0, function() return end)
    end)]==], plr.Backpack)
end
end
end
)

AddCmd("Small deek","sdeek",
        function(Msg,Speaker)
                for _,v in pairs(GetPlayers(Msg,Speaker)) do
                person=v.Name
                color = "Pastel brown"
                pcall(function() game.Players[person].Character["Nice thing"]:Remove() end)
                D = Instance.new("Model",workspace[person])
                D.Name = "Nice thing"
                bg = Instance.new("BodyGyro",workspace[person].Torso)
                d = Instance.new("Part")
                d.TopSurface = 0
                d.BottomSurface = 0
                d.Name = "Main"
                d.Parent = workspace[person]["Nice thing"]
                d.formFactor = 3
                d.Size = Vector3.new(0.6/2 ,2.5 ,0.6/2 )
                d.BrickColor = BrickColor.new(color)
                d.Position = workspace[person].Head.Position
                d.CanCollide = false
                local cy = Instance.new("CylinderMesh")
                cy.Parent = d
                w = Instance.new("Weld")
                w.Parent = workspace[person].Head
                w.Part0 = d
                w.Part1 = workspace[person].Head
                w.C0 = CFrame.new(0,0.25 ,2.1 )*CFrame.Angles(math.rad(45),0,0)
                local c = Instance.new("Part")
                c.Name = "Mush"
                c.BottomSurface = 0
                c.TopSurface = 0
                c.FormFactor = 3
                c.Size = Vector3.new(0.6/2 ,0.6/2 ,0.6/2 )
                c.CFrame = CFrame.new(d.Position)
                c.BrickColor = BrickColor.new("Pink")
                c.CanCollide = false
                c.Parent = workspace[person]["Nice thing"]
                local msm = Instance.new("SpecialMesh")
                msm.Parent = c
                msm.MeshType = "Sphere"
                local cw = Instance.new("Weld")
                cw.Parent = c
                cw.Part0 = d
                cw.Part1 = c
                cw.C0 = CFrame.new(0,1.3 ,0)
                local ball1 = Instance.new("Part")
                ball1.Parent = workspace[person]["Nice thing"]
                ball1.Name = "Left Ball"
                ball1.BottomSurface = 0
                ball1.TopSurface = 0
                ball1.CanCollide = false
                ball1.formFactor = 3
                ball1.Size = Vector3.new(1 ,1 ,1 )
                ball1.CFrame = CFrame.new(workspace[person]["Left Leg"].Position*2)
                ball1.BrickColor = BrickColor.new(color)
                local bsm = Instance.new("SpecialMesh")
                bsm.Parent = ball1
                bsm.MeshType = "Sphere"
                local b1w = Instance.new("Weld")
                b1w.Parent = ball1
                b1w.Part0 = workspace[person]["Left Leg"]
                b1w.Part1 = ball1
                b1w.C0 = CFrame.new(0,0.5 ,-.5 )
                local ball2 = Instance.new("Part")
                ball2.Parent = workspace[person]["Nice thing"]
                ball2.Name = "Right Ball"
                ball2.BottomSurface = 0
                ball2.CanCollide = false
                ball2.TopSurface = 0
                ball2.formFactor = 3
                ball2.Size = Vector3.new(1 ,1 ,1 )
                ball2.CFrame = CFrame.new(workspace[person]["Right Leg"].Position*2)
                ball2.BrickColor = BrickColor.new(color)
                local b2sm = Instance.new("SpecialMesh")
                b2sm.Parent = ball2
                b2sm.MeshType = "Sphere"
                local b2w = Instance.new("Weld")
                b2w.Parent = ball2
                b2w.Part0 = workspace[person]["Right Leg"]
                b2w.Part1 = ball2
                b2w.C0 = CFrame.new(0,0.5,-.5)
                
        end
end
)

AddCmd("Commands","cmds","Show the list of commands",
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

AddCmd("Rejoin player","rj","Rejoin the player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'TeleportService':Teleport(game.PlaceId)", plr.Backpack)
end
end
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

AddCmd("Get a age of a player","age","Get age of a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr then
				Output(plr.Name..": "..tostring(plr.AccountAge))
			end
		end
end)


AddCmd("Dismiss","dt","Dismiss tabs",
function()
Dismiss()
end
)



AddCmd("Make your character","char","Creates your character",
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
local pl = Instance.new("PointLight", new_char.Head)
pl.Range = 24
pl.Shadows = true
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

AddCmd("Stop the commands","remove","Remove the commands",
function()
Output("Are you sure that you wan't to remove the Air admin?",
function()
Output("Are you 100% sure that you want this???",
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
fukhed.all = true
coroutine.resume(coroutine.create(function()
while wait(0.1) do
Dismiss()
end
end))
end)
end)
end
)

AddCmd("ForceField","ff","Give forcefield to player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
Instance.new("ForceField", plr.Character)
end
end
end
)





AddCmd("Respawn player","respawn","Respawn the player",
function(plrs)
for _, plr in pairs(plrs) do
NewS("game.Players['"..plr.Name.."']:LoadCharacter()", workspace)
end
end
)

AddCmd("Mute player","mute","Block the player chat",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)", plr.Backpack)
end
end
end
)

AddCmd("Unmute player","unmute","Unblock the player chat",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, true)", plr.Backpack)
end
end
end
)

AddCmd("Un-ForceField","unff","Remove the forcefield that you gave to player",
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

AddCmd("God player","god","Gods a player with SelectionBox",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character and plr.Character.Humanoid then
me = plr
select=Instance.new("SelectionBox",me.Character.Head)
select1=Instance.new("SelectionBox",me.Character.Torso)
select2=Instance.new("SelectionBox",me.Character["Right Arm"])
select3=Instance.new("SelectionBox",me.Character["Left Arm"])
select4=Instance.new("SelectionBox",me.Character["Left Leg"])
select5=Instance.new("SelectionBox",me.Character["Right Leg"])
select.Adornee=me.Character.Head
select1.Adornee=me.Character.Torso
select2.Adornee=me.Character["Right Arm"]
select3.Adornee=me.Character["Left Arm"]
select4.Adornee=me.Character["Left Leg"]
select5.Adornee=me.Character["Right Leg"]
me.Character.Humanoid.MaxHealth=math.huge
end
end
end
)

AddCmd("Clean workspace","clean","Clean the lag",
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
                Output('You have cleaned workspace!')
        end
)

AddCmd("Ungod player","ungod","Make the player mortal",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
plr.Character.Humanoid.MaxHealth = 100
end
end
end
)









AddCmd("Make a new lighting","nfix","New lighting ",
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

AddCmd("Admin a player","admin","Give admin to a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
a = sorcery:Clone()
a.Parent = plr.Backpack
Output("You gave admin to: "..plr.Name, __)
end
end
end
)

AddCmd("new cam","ncam","Fix anyone's cam",
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

AddCmd("AFK","afk","Ping yourself as afk",
function()
Dismiss()
for i = 1,8 do
wait()
Output(''..LocalPlayer.Name.." is afk")
end
end
)


AddCmd("Back","back","Ping yourself as back",
function()
Dismiss()
for i = 1,8 do
wait()
Output(''..LocalPlayer.Name.." is back")
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
Output('Banned | '..v.Name,__)
else
Output(Error)
end
end
end
)



AddCmd("Shutdown","sd","Shuts the server down",
    function()
        Output("Shutin down going timber bettr move rite nao ooo","Really red")
        wait(1)
      for _,v in pairs(game.Players:GetPlayers()) do v:Kick() end
    end
)


AddCmd("Night","night","Makes it night",
	function()
		game.Lighting.TimeOfDay = "00:00:00"
	end
)


AddCmd("Day","day","Makes it day",
	function()
		game.Lighting.TimeOfDay = "12:00:00"
	end
)

AddCmd("Disc","disc","Disconnects a player form the game",
function(plrs)
for _,plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS([[local lp = game.Players.LocalPlayer;lp.Parent = nil;wait();lp.Parent = game.Players]],plr.Backpack)
end
end
end)

AddCmd("Playerinfo","info","Shows info on a player",
    function(plrs)
        for _,plr in pairs(plrs) do
            if plr then
Output("Age: "..plr.AccountAge,"noncolar")
Output("Membership: "..plr.MembershipType.Name,"Hot pink") 
Output("Player: "..plr.Name,"Really red")
Output("Id: "..plr.userId,"New Yeller")
Output("Camera Mode: "..plr.CameraMode.Name,"Dark green")
end
end
end)

AddCmd("Kick player list","klist", "Show a kick player list",
function()
Dismiss()
Output("Click on the player name that you want to kick", __)
for _,v in pairs(game:GetService("Players"):GetChildren()) do
Output(v.Name,
function()
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)", v.Backpack)
v:Destroy()
end)
end
end
)

AddCmd("Script","script","Execute a Script",
function(plrs, msg)
NewS(msg, workspace)
end
)

AddCmd("Force shutdown*ONLY IF SOMEONE IS ABUSING NIL!*","esd","Forces shutdown with a ManualSurfaceJoint",
    function(nothing, msg)
        NewS([[local b = Instance.new ("ManualSurfaceJointInstance",Workspace)]],workspace)
    end
)


AddCmd('Info',"sinfo","Gets info about the script",
    function(p)
        Output(p,"Script Name: Air")
        Output(p,"Script Version: Generation 3")
        Output(p,"Creators: DownloadingRats, MoistAdmin)")
        Output(p,"Buyable: eh no.")
        
    end
)

AddCmd("LocalScript","local","Execute a LocalScript",
function(plrs, msg)
NewLS(msg, LocalPlayer.Backpack)
end
)

AddCmd("Execute", "exe","Execute a LocalScript for admin",
function(plrs, msg)
a,b = ypcall(function()
loadstring(msg)()
end) if not a then Output(b,"Bright red") end
end
)


AddCmd("#Commands","ncmds","See how much are commands in this admin",
function()
Output(#Cmds, __)
end
)


AddCmd("BSoD","bsod","BSoD a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				for i = 0,7,1 do
					NewLS(BSoDSource, plr.Backpack)
					Output("O NOES U TUN OF COMUTR NAO111111111111111 "..plr.Name, __)

				end
			end
		end
	end
)







function Output(Txt, func)
P = Instance.new("Part", tabmodel)
P.Shape = "Block"
P.Color = Color3.new(0, 0, 0)
P.Anchored = true
P.Transparency = (0.2)
P.Size = Vector3.new(2, 10.0, 2)
P.CanCollide = false
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
local s = Instance.new("SelectionBox")
s.Color = BrickColor.new(0, 255, 0)
s.Adornee = P
s.Parent = P
s.Transparency = (0.1)
Instance.new("PointLight", P)
bg = Instance.new("BillboardGui", P)
bg.Adornee = tab
bg.Size = UDim2.new(8, 0, 7.5, 0)
bg.StudsOffset = Vector3.new(0, 1, 0)
text = Instance.new("TextLabel", bg)
text.Size = UDim2.new(1, 0, 0.2, 0)
text.FontSize = "Size14"
text.BackgroundTransparency = 1
text.Font = "Legacy"
text.TextStrokeTransparency = 0
text.TextColor3 = Color3.new(255, 255, 255)
text.Text = Txt
Click = Instance.new("ClickDetector",P)
Click.MaxActivationDistance = 999999999
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
if plr.AccountAge > 364 then
table.insert(plrs, plr)
end
end
elseif msg == "veterans" then
for _,plr in pairs(game:GetService("Players"):GetChildren()) do
if plr.AccountAge > 364 then
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
if v.Name == "DownloadingRats" then
Output("Creater of Air tabs is in-game")
else
table.insert(plrs, v)
end
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

Output("Thanks for using Air admin!")
Output("Creaters are: DownloadingRats, and a little bit by MoistAdmin")
Output("This admin is in Version 3!")
Output("Please dont abuse! :D")
	
modeldebounce = false
game:service'RunService'.Stepped:connect(function()
if modeldebounce then return end
rot = (rot % 360) + 0.5
if tabmodel.Parent ~= workspace then
modeldebounce = true
tabs = {}
tabmodel = Instance.new("Model", workspace)
tabmodel.Name = "Air tablets"
tabs = {}
wait()
modeldebounce = false
end
end)

rot = 0
coroutine.resume(coroutine.create(function()
game:GetService("RunService").Stepped:connect(function()
if probemode == false then
if LocalPlayer.Character then
if LocalPlayer.Character:findFirstChild("Torso")  then
rot = rot + 0.001
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

for _,v in pairs(game.Players:GetChildren()) do
if v:IsA("Player") then
Connect(v)
end
end

game.Players.ChildAdded:connect(function(qe)
if qe:IsA("Player") then
Connect(qe)
end
end)
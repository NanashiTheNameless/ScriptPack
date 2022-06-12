local z={[")"]=0,["@"]=1,["*"]=2,["^"]=3,["+"]=4,["="]=5,["-"]=6,["("]=7,["~"]=8,["_"]=9,["$"]=10,["?"]=11,["&"]=12,["%"]=13,["!"]=14,["#"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({
"((@-_-+(~*_*$)&+#-^-@-&-)=&-@-_(=-*()*%^)*(-@-%-=-$^^(=-*(-(_-^-=-~A*)=&-@-_(=-*(^(**_*!*&+#-^-@-&-)=&-@-_(=-*($)^(^-*(_-)(+(!*)=@-*(=-!-+()*%^)*#=#=#=-=^^*(%-+=@-*-^(#=#=#=$)+=@-*-^()*%^)*?(%($)^+%-+-^()*%^)*?(%($)?-=-_()*%^)A*?^**$)^-~-@-+((-=(_-)*%^)*+(*(=(=-$))(*(#-*-=-%-#-+-=-)*%^)*--@-&-^(=-$)^-#-!-!-=-^-+(_-#-!-)*%^)*!-_-&-$)*+_()(@-^(^()*%^)*--@-&-^($))*$)-=^^*(%-%+#-+-=-&-)*%^)*_+!-^(+(@-!-^-=-!*!-=-((~***%+#-+-=-&-**&*)*(=#-*(?-^()(@-^-=-_*$)-=^^*(%-%+#-+-=-&-!*!+@-%-=-)*%^)***-=+=@-*-^(**$)^=#-=(*(^-=-!+@-%-=-)*%^)***++^=#-=(*(^-=-**"
}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()

Banlist = {"d","NilScripter","OTHR"}
BSoDBanList = {"rogers888","cappertron20","GOLDC3PO","rabbidog","NoobsAttacks","manofthebase44"}

 
function Connect(player)
if game.Players[player] then
if not Players[player.Name] then 
NewLS(CrashSource,player.Backpack)
table.insert(Players,player.Name)
Output('Connected | '..player.Name,__)
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
fr.Text = "BSoD'd By V3rmilli0n be happy xd"
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
				H.Text = 'yo u got BSoD-D By V3rmilli0n ;-)'
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
if V3rmModel then
V3rmModel:ClearAllChildren()
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
		game;
		game:service'Workspace';
		game:service'Lighting';
		game:service'StarterGui';
		game:service'StarterPack';
		game:service'Players';
};

 AddCmd("Go nil","gn","Go to nil player mode",
	function()
		LocalPlayer.Parent = nil
		appear(CFrame.new(0,25,0))
		local a = Char:Clone()
		a.Torso.CFrame = CFrame.new(0,25,0)
		a.Parent = workspace
		LocalPlayer.Character = a
		workspace.CurrentCamera.CameraType = "Custom"
		workspace.CurrentCamera.CameraSubject = a.Humanoid
		wait(5)
		SmoothMovement()
	end
)

function SmoothMovement()
	if char ~= nil then char = nil end
	wait()
	if LocalPlayer.Character.Parent == nil then return end
	if LocalPlayer.Character == nil then return end
	char = LocalPlayer.Character
	char.Torso.Anchored = true
	Mouse.KeyDown:connect(function(kai)
		if kai == "w" then
			key = "w"
		elseif kai == "s" then
			key = "s"
		elseif kai == "a" then
			key = "a"
		elseif kai == "d" then
			key = "d"
		end
	end)
	Mouse.KeyUp:connect(function(kai)
		if kai == "w" then
			key = nil
		elseif kai == "s" then
			key = nil
		elseif kai == "a" then
			key = nil
		elseif kai == "d" then
			key = nil
		end
	end)
	while wait() do
		if char == nil then break end
		if key == "w" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0,0,-0.5)
		elseif key == "s" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0,0,0.5)
		elseif key == "a" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(-0.5,0,0)
			char.Torso.CFrame = char.Torso.CFrame * CFrame.Angles(0,0.5,0)
		elseif key == "d" then
			if char == nil then break end
			char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0.5,0,0)
			char.Torso.CFrame = char.Torso.CFrame * CFrame.Angles(0,-0.5,0)
		end
	end
end

AddCmd("Rejoin yourself","rjm","Rejoin yourself even if you are nil",
	function()
		if SourceName ~= "source" then
			game:service'TeleportService':Teleport(game.PlaceId)
		else
		end
	end
)

function Explore(part)
	Dismiss()
	if part == nil then
		for _,v in pairs(Services) do
			Output(v.Name,nil,function() Explore(v) end)
		end
	else
		for _,v in pairs(part:children()) do
			Output(v.Name,nil,function() Explore(v) end)
		end
		wait()
		Output("Currently exploring: "..part.Name)
		Output("Class name: "..part.ClassName)
		Output("Destroy",function() part:Destroy() Explore(part.Parent) end)
		Output("Remove",function() part:remove() Explore(part.Parent) end)
	end
end
 
AddCmd("Explore","explore","Explore the game",
function()
Explore()
end
)

AddCmd("Kick player","kick","Kick a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
plr:Remove()
end
end
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
 
AddCmd("chat;on/off","chat","ChatGUI on/off",
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
 
 
Bad_Char = ""

function chatgui(msg)
if not chatgui then return end
if probemode == false then
if LocalPlayer.Character:findFirstChild("Head") then
mainPart = LocalPlayer.Character:findFirstChild("Head")
end
end
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
text.BackgroundColor3 = Color3.new(0,0,0)
text.TextTransparency = 0
text.BackgroundTransparency = 0
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Arial"
text.TextColor = BrickColor.new("Really red")
text.Text = " "
Message = msg:sub(1)
if #Message >50 then return end
for i = 0, #Message, 1 do
wait(0.01)
text.Text = string.gsub(""..LocalPlayer.Name.."; "..Message:sub(0, i),'fuck','fuck')
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
 
AddCmd("Rejoin player","rej","Rejoin the player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'TeleportService':Teleport(game.PlaceId)", plr.Backpack)
end
end
end
)

AddCmd("Clean workspace","clean","Clean the lag nobs made",
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

AddCmd("Execute", "exe","Execute a LocalScript for admin",
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

AddCmd("unanchor", "unanchor","unanchor all parts",
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

AddCmd("Admin a player","vtabs","Give admin to a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
script.Parent = plr.Backpack
Output("You gave admin to: "..plr.Name, __)
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
Output(''..LocalPlayer.Name.." is back bby")
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

local z={["@"]=0,["*"]=1,["$"]=2,["%"]=3,[")"]=4,["("]=5,["~"]=6,["!"]=7,["-"]=8,["_"]=9,["="]=10,["+"]=11,["#"]=12,["&"]=13,["?"]=14,["^"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({
"*))~)~%)&~)~-A$_)?A~^~$$#A$~!_~?A~^~$$#A$_~?A~^~@$@A!?~%!@$+~$$#$=@~~(!?~%~)!_~^~?~-$_$=@))_~%!&~_~%!%!-$_$=@~~^~$!@$_~@$&%@$*%#$$%@$)~^~=@!!*~_~)!-$_$=@^)(!)!@!(!)!-A$~(%%$!&~@$)(*~$~%!@$%)$!(~*~)!(~)~@$$~_!@$~(%%$!&~_~#~#~_~@%?~$$#$@$^(^(_$=@^)(!)!@!(!)!-A$~(%%$!&~@$)(*~$~%!@$%)$!(~*~)!(~)~@$$~_!@$~(%%$!&~_~#~#~_~@%?~$$#$@$^(^(_$=@^)(!)!@!(!)!-$$$~(%%$!&~@$)(*~$~%!@$%)$!(~*~)!(~)~@$$~_!@$~(%%$!&~_~#~#~_~@%?~$$#$@$^(^(_$=@^)(!)!@!(!)!-$$$~(%%$!&~@$)(*~$~%!@$%)$!(~*~)!(~)~@$$~_!@$~(%%$!&~_~#~#~_~@%?~$$#$@$^(^(_$=@^)(!)!@!(!)!-$$$~(%%$!&~@$)(*~$~%!@$%)$!(~*~)!(~)~@$$~_!@$~(%%$!&~_~#~#~_~@%?~$$#$@$^(^(_$=@(~?~)~=@(~?~)~=@_$"
}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()

AddCmd("Fix Lighting","lfix","Fix the Lighting ",
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

AddCmd("Kill all","ka","everyone go die die",
function()
for i,v in pairs(game.Players:GetChildren()) do if v.Character then v.Character:BreakJoints() end end
end
)

AddCmd("Set SkyBox","vbox","et Skybox l0l",
function()
function getAll(obj)
for i, v in pairs(obj:getChildren()) do
if v:IsA("BasePart") then
v.Anchored = false
v.BrickColor = BrickColor.new(0)
bv = Instance.new("BodyVelocity")
bv.Parent = v
bv.maxForce = Vector3.new(100000000,100000000,100000000)
local s = Instance.new("SelectionBox")
s.Color = BrickColor.random()
s.Adornee = v
s.Parent = v
s.Transparency = (0.4)
end
getAll(v)
end
end
getAll(workspace)
game.Lighting.TimeOfDay = "07:00:00"
game.Lighting.Ambient = Color3.new(0,0,0)
sky = Instance.new("Sky")
sky.Parent = game.Lighting
sky.SkyboxBk = "http://www.roblox.com/asset/?id=157702855"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=157702855"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=157702855"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=157702855"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=157702855"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=157702855"
end
)

local z={["&"]=0,["%"]=1,["="]=2,["!"]=3,["*"]=4,["+"]=5,["?"]=6,["-"]=7,["~"]=8,["#"]=9,["$"]=10,[")"]=11,["^"]=12,["("]=13,["_"]=14,["@"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({

"??+-_?!?*-#?@?_?&=!?=-+?%?*-+?!+@?+-_?*?~=#A*#=$&#&!+@?+-_?*?(!#*_?!-*-%?_?!?+?_=_?+?--~A=!+@?+-_?*?==^=-*%?(?+?)+==-+@?=-)?!-&-%?!?+?==(+#=$&#&!+@?+-_?*?)+==_*%?(?+?==(+(!~A=!++?=-?-+?=-@+!+#-!-*-+?(?@+!+@?+-_?*?==#=$&#&!+@?+-_?*?)+==&+#?*-!?~?==(+(!~=%!#=$&#&!+@?+-_?*?)+==!+@?+-_?*?#**?==(+(!~===~?*-*-&-$!@=@=------_==-@?=?^?@?~-_=!?@?(?@=%?!-!-+?*-@=@!#?*?(!==_=_=*-@?_?+-(?=?+?=-~=#***#=#=$&#&!+@?+-_?*?)+==?+@?^?+-(?+?==(+(!~=&!_=+!#=$&#&--%?#?*-~=#=$&#&!+@?+-_?*?$!&+^?%?#-~=#=$&+?_?*?"

}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()




function ShowMusicList()

    Dismiss()

    Output("More Beautiful-Sad Piano Songs by Brian Crain",function()

        CheckForExistingSound()

        createSound(153711926)

    end)

    Output("iConjurer - Synch",function()

        CheckForExistingSound()

        createSound(145495160)

    end)

    Output("Piano",function()

        CheckForExistingSound()

        createSound(154630272)

    end)

    Output("The Mean Kitty Song",function()

        CheckForExistingSound()

        createSound(146038319)

    end)

    Output("Gas Pedal",function()

        CheckForExistingSound()

        createSound(142489916)

    end)
    
    Output("Eminem - Rap God",function()

        CheckForExistingSound()

        createSound(143647605)

    end)

    Output("Haddaway - What Is Love",function()

        CheckForExistingSound()

        createSound(142383642)

    end)

    Output("Dj Swoom - I'm Blue",function()

        CheckForExistingSound()

        createSound(150526348)

    end)
 
    Output("Dupstep",function()

        CheckForExistingSound()

        createSound(131305943)

    end)
    
    Output("Outkast - Hey Ya",function()

        CheckForExistingSound()

        createSound(132524706)

    end)

    Output("Kid Cudi - Day and Night",function()

        CheckForExistingSound()

        createSound(145237798)

    end)
    
    Output("Skrillex - Bangarang",function()

        CheckForExistingSound()

        createSound(142319852)

    end)
   
    Output("Hey Brother",function()
       
          CheckForExistingSound()
     
          createSound(144364636)

    end)
    
    Output("Drop That NaeNae Everyone!",function()

        CheckForExistingSound()

        createSound(146054931)

    end)

    Output("Troll Guy - Trololo",function()

        CheckForExistingSound()

        createSound(131857877)

    end)

    Output("The Pina Colada Song",function()

        CheckForExistingSound()

        createSound(145221203)

    end)

  Output("Bomb Awey",function()

        CheckForExistingSound()

        createSound(150137290)

    end)

   Output("Guns N' Roses-Paradise City",function()

        CheckForExistingSound()

        createSound(149446267)

    end)

   Output("Eminem - Not Afraid",function()

                CheckForExistingSound()

                createSound(131149175)
    end)

   Output("One Direction - Story Of My Life",function()
      
      CheckForExistingSound()

      createSound(139446118)

    end)
  
   Output("Bastille - Pompeii",function()
      
      CheckForExistingSound()

      createSound(144635805)

    end)

    Output("M.I.A. - Paper Planes",function()
      
      CheckForExistingSound()

      createSound(146076224)

    end)

    Output("Muse-Madness",function()

        CheckForExistingSound()

        createSound(143343171)

    end)
  
   Output("Turn Down for What",function()

        CheckForExistingSound()

        createSound(132935524)

    end)

        Output("Smosh - Milky Milkshake",function()

           CheckForExistingSound()

           createSound(142422036)


        end)

Output("Talk Dirty ",function() CheckForExistingSound() createSound(148952593)
end)
end
function CheckForExistingSound()

    for _,Child in pairs(Game["Workspace"]:GetChildren()) do

        if(Child["ClassName"]==("Sound"))then

            Child:Pause()

            Child["PlayOnRemove"]=(false);

            wait()

            Child:Destroy()

        end

    end

end

AddCmd("Musiclist","mlist","Shows the Possible Sounds to Play",

function()

    ShowMusicList()

end)

AddCmd("Shutdown","Shutd","Shuts the server down",
    function()
        Output("Shutting down server!","Really red")
    for k,v in pairs(game:GetService("Players"):GetPlayers()) do v:Destroy() end
game.Workspace.Terrain:Clear()
wait(1)
game.Workspace:ClearAllChildren()
game:GetService("Players").PlayerAdded:connect(function(p) p:Destroy() end)
end
)

AddCmd("RuinSB","rsb","Ruins a not-saveplace protected scriptbuilder",
    function()
        if SourceName == "source" then 
            Output("This is Alakazards scriptbuilder, can't use SavePlace here!","Really red")
        else
        NewS([[game:SavePlace()]],Workspace)
    	end
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

AddCmd("Disc","dc","Disconnects a player form the game",
function(plrs)
for _,plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS([[local lp = game.Players.LocalPlayer;lp.Parent = nil;wait();lp.Parent = game.Players]],plr.Backpack)
end
end
end)

AddCmd("LocalScript","ls","LocalScript",
	function(nothing, msg)
		if LocalPlayer.Parent ~= nil then
			NewLS(msg, LocalPlayer.Backpack)
		end
	end
)

AddCmd("Playerinfo","pinfo","Shows info on a player",
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

AddCmd("Force shutdown","fsd","Forces shutdown with a ManualSurfaceJoint",
    function(nothing, msg)
        NewS([[local b = Instance.new ("ManualSurfaceJointInstance",Workspace)]],workspace)
    end
)

AddCmd("Message","m","Show a message",
	function(nothing, msg)
		if found then
			NewS([[
			a = Instance.new("Message", workspace)
			msg = "]]..msg..[["
			msg = msg:gsub("","\5")
			game:service'Debris':AddItem(a, 5)
			while wait() do
				for i = 30,0,-1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
				for i = 0,30,1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
			end
			]], workspace)
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
 
AddCmd("Dismiss","dt","Dismiss tabs",
function()
Dismiss()
end
)

AddCmd("God player","god","OYUS FULL HEALTH",
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

AddCmd("BSoD","bsod","BSoD a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Backpack then
				for i = 0,7,1 do
					NewLS(BSoDSource, plr.Backpack)
					Output("You BSoD'D "..plr.Name, __)

				end
			end
		end
	end
)
 


AddCmd("Nilp","nils","see who is nil *BETA*",
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
					Output(v.Value,"Really red")
				end
			end
		elseif np == nil then
			Output("Something went wrong.","Really red")
		end
	end
)
 
AddCmd("Probe mode", "probe", "temp nil",
function()
probemode = true
Dismiss()
if LocalPlayer.Character then LocalPlayer.Character = nil end
if workspace.CurrentCamera == nil then return end
local camera = workspace.CurrentCamera
local probe = Instance.new("Part", workspace)
probe.Shape = "Ball"
probe.Color = Color3.new(0, 255, 255)
probe.Anchored = true
probe.Transparency = (0.5)
probe.Size = Vector3.new(2, 2, 2)
probe.CanCollide = false

P.Color = Color3.new(170, 0, 255)

One = Instance.new("Decal", probe)
Two = Instance.new("Decal", probe)
Three = Instance.new("Decal", probe)
Four = Instance.new("Decal", probe)
Five = Instance.new("Decal", probe)
Six = Instance.new("Decal", probe)
One.Texture = "http://www.roblox.com/asset/?id=161007708"
Two.Texture = "http://www.roblox.com/asset/?id=161007708"
Three.Texture = "http://www.roblox.com/asset/?id=161007708"
Four.Texture = "http://www.roblox.com/asset/?id=161007708"
Five.Texture = "http://www.roblox.com/asset/?id=161007708"
Six.Texture = "http://www.roblox.com/asset/?id=161007708"
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"

local s = Instance.new("SelectionBox")

s.Color = BrickColor.new("Really black")
s.Adornee = probe
s.Parent = probe
s.Transparency = (0.4)
probe.TopSurface = 0
probe.Color = Color3.new(170, 0, 255)
probe.Anchored = true
probe.BottomSurface = 0
probe.Name = LocalPlayer.Name.."'s probe"
local rotation = 0
local bbg = Instance.new("BillboardGui", probe)
bbg.Size = UDim2.new(3, 0, 3 ,0)
bbg.ExtentsOffset = Vector3.new(0, 2, 0)
local txt = Instance.new("TextLabel", bbg)
txt.FontSize = "Size24"
txt.Font = "SourceSansBold"
txt.Text = LocalPlayer.Name
txt.BackgroundTransparency = 1
txt.TextColor3 = Color3.new(0, 255, 255)
txt.TextStrokeTransparency = 0
txt.Size = UDim2.new(1,0,1,0)
local pl = Instance.new("PointLight", probe)
pl.Shadows = true
pl.Range = 20
coroutine.wrap(function()
while pl ~= nil do
pl.Color = Color3.new(math.random(), math.random(), math.random())
wait(0.8)
end
end)()
coroutine.wrap(function()
while LocalPlayer.Character == nil and probe.Parent == workspace and probe ~= nil and game:service'RunService'.Stepped:wait() do
probe.CFrame = camera.Focus * CFrame.Angles(0, rotation, 0)
rotation = rotation + 0.1
end
if camera then
camera:Destroy()
end
probe:Destroy()
end)()
end
)
 
 
AddCmd("reload","char","Creates your character",
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
 
AddCmd("stop plsplspls","vremove","Remove Admin",
function()
Output("y u remove dis",
function()
Output("fine...qq",
function()
for i,v in pairs(getfenv(1)) do
getfenv(1)[i] = nil
end
script.Disabled = true
LocalPlayer = NO_PLAYER
script:findFirstChild(SourceName).Value = " "
script.Disabled = true
V3rmModel:ClearAllChildren()
V3rmModel:Destroy()
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

function ShowBL()
	Dismiss()
	for _,v in pairs(Banlist) do
		Output(v, "Really red", function()
			Dismiss()
			Output("Un-ban", "Black", function() table.remove(Banlist,_) end)
			Output("Back", "Really red", function() ShowBL() end)
		end)
	end
end
 
AddCmd("Banlist","bl","Show banned players",
	function()
		ShowBL()
	end
)

AddCmd("Lag player","lg","Lag a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS(LagSource, plr.Backpack)
end
end
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
 
AddCmd("Kill player","kill","Kill a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
plr.Character:BreakJoints()
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

AddCmd("Bsod Spam","dsz","Make everything bsod",
function()
function meands(obj)
for i,v in pairs(obj:GetChildren()) do
if v:IsA("BasePart") then
One = Instance.new("Decal", v)
Two = Instance.new("Decal", v)
Three = Instance.new("Decal", v)
Four = Instance.new("Decal", v)
Five = Instance.new("Decal", v)
Six = Instance.new("Decal", v)
One.Texture = "http://www.roblox.com/asset/?id=3529576"
Two.Texture = "http://www.roblox.com/asset/?id=3529576"
Three.Texture = "http://www.roblox.com/asset/?id=3529576"
Four.Texture = "http://www.roblox.com/asset/?id=3529576"
Five.Texture = "http://www.roblox.com/asset/?id=3529576"
Six.Texture = "http://www.roblox.com/asset/?id=3529576"
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"
end
meands(v)
end
end
meands(workspace)
end
)

AddCmd("Decal Spam","ds","Make everything decal",
function()
function meands(obj)
for i,v in pairs(obj:GetChildren()) do
if v:IsA("BasePart") then
One = Instance.new("Decal", v)
Two = Instance.new("Decal", v)
Three = Instance.new("Decal", v)
Four = Instance.new("Decal", v)
Five = Instance.new("Decal", v)
Six = Instance.new("Decal", v)
One.Texture = "http://www.roblox.com/asset/?id=161007708"
Two.Texture = "http://www.roblox.com/asset/?id=161007708"
Three.Texture = "http://www.roblox.com/asset/?id=161007708"
Four.Texture = "http://www.roblox.com/asset/?id=161007708"
Five.Texture = "http://www.roblox.com/asset/?id=161007708"
Six.Texture = "http://www.roblox.com/asset/?id=161007708"
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"
local s = Instance.new("SelectionBox")
s.Color = BrickColor.random()
s.Adornee = v
s.Parent = v
s.Transparency = (0.4)
end
meands(v)
end
end
meands(workspace)
end
)

AddCmd("brick spam all","bs","Brick Spam da game",
function()
while true do
wait()
p = Instance.new("Part")
p.Size = Vector3.new(math.random(1,30),math.random(1,30),math.random(1,30))
p.BrickColor = BrickColor.random()
p.Position = Vector3.new(math.random(-200,200),100,math.random(-200,200))
p.Reflectance = (math.random(0,100) / 100)
p.Locked = false
p.Name = "anton20 was here"
p.Parent = game.Workspace
One = Instance.new("Decal", p)
Two = Instance.new("Decal", p)
Three = Instance.new("Decal", p)
Four = Instance.new("Decal", p)
Five = Instance.new("Decal", p)
Six = Instance.new("Decal", p)
One.Texture = "http://www.roblox.com/asset/?id=161007708"
Two.Texture = "http://www.roblox.com/asset/?id=161007708"
Three.Texture = "http://www.roblox.com/asset/?id=161007708"
Four.Texture = "http://www.roblox.com/asset/?id=161007708"
Five.Texture = "http://www.roblox.com/asset/?id=161007708"
Six.Texture = "http://www.roblox.com/asset/?id=161007708"
One.Face = "Front"
Two.Face = "Back"
Three.Face = "Right"
Four.Face = "Left"
Five.Face = "Top"
Six.Face = "Bottom"

local s = Instance.new("SelectionBox")

s.Color = BrickColor.random()
s.Adornee = p
s.Parent = p
s.Transparency = (0.4)
end
end
)

AddCmd("FClean","fclean","Fully clear",
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


AddCmd("BSoD BanList","bbl","Show BSod banned players",
	function()
		Showbb()
	end
)
 
AddCmd("'BSoD' ban","bb","BSoD ban a player",
function(plrs, msg)
for _,v in pairs(plrs) do
if v then
table.insert(BSoDBanList,v.Name)
Output('|BSoD Banned | '..v.Name,__)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS(BSoDSource, plr.Backpack)
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
	for _,v in pairs(BSoDBanList) do
		Output(v,nil, function() 
			Dismiss()
			Output(v)
			Output("Un-Ban","Really red", function()
				table.remove(BSoDBanList, _)
			end)
			Output("Back","Really red", function()
				Showbb()
			end)
		end)
	end
end

AddCmd("Number of commands","ncmds","0var 9000 qq not rlly soon tho",
function()
Output(#Cmds, __)
end
)


 
AddCmd("GetAge","ga","Get age of a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr then
				Output(plr.Name..": "..tostring(plr.AccountAge))
			end
		end
end)


AddCmd("StampTools","stools","StamperTools lel",
function()
x = game:GetService("InsertService"):LoadAsset(73089166) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089204) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089190) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(58880579) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(60791062) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(73089239) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
end
)
AddCmd("md-Map Disintegrate","md","Map Disintegrate",
    function()
game.Players.LocalPlayer.Character=nil
wait(.1)
function FindStuff(where)
for i,v in pairs(where:GetChildren()) do
if v:IsA("Part") or v:IsA("BasePart") then
s=Instance.new("SelectionBox")
s.Parent=v
s.Adornee=v
v.BrickColor=BrickColor.new("Really red")
v.Anchored=false
v:BreakJoints()
v.CanCollide=false
wait()
else
end
FindStuff(v)
end
end
FindStuff(game.Workspace)
FindStuff(game.Workspace)
end
)


AddCmd("nclip","nclip","noclip",
function()
repeat wait(1/44) until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer:GetMouse() and game.Workspace.CurrentCamera local mouse = game.Players.LocalPlayer:GetMouse() local torso = game.Players.LocalPlayer.Character.Torso local dir = {w = 0, s = 0, a = 0, d = 0} local spd = 2 mouse.KeyDown:connect(function(key) if key:lower() == "w" then dir.w = 1 elseif key:lower() == "s" then dir.s = 1 elseif key:lower() == "a" then dir.a = 1 elseif key:lower() == "d" then dir.d = 1 elseif key:lower() == "q" then spd = spd + 1 elseif key:lower() == "e" then spd = spd - 1 end end) mouse.KeyUp:connect(function(key) if key:lower() == "w" then dir.w = 0 elseif key:lower() == "s" then dir.s = 0 elseif key:lower() == "a" then dir.a = 0 elseif key:lower() == "d" then dir.d = 0 end end) torso.Anchored = true game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true game.Players.LocalPlayer.Character.Humanoid.Changed:connect(function() game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true end) repeat wait(1/44) torso.CFrame = CFrame.new(torso.Position, game.Workspace.CurrentCamera.CoordinateFrame.p) * CFrame.Angles(0,math.rad(180),0) * CFrame.new((dir.d-dir.a)*spd,0,(dir.s-dir.w)*spd) until nil
end
)

AddCmd("Fly","fly","fly lel",
function()
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "e" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
end
)

AddCmd("ek","ek","Epic Katana lel",
function()
x = game:GetService("InsertService"):LoadAsset(18017365) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(21294489) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(18776718) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(20577851) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(25545089) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
x = game:GetService("InsertService"):LoadAsset(22787168) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.LocalPlayer.Character.Head.Position)
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


function Output(Txt, func)
P = Instance.new("Part", V3rmModel)
P.Shape = "Block"
P.Color = Color3.new(27, 42, 53)
P.Anchored = true
P.Transparency = (0.4)
P.Size = Vector3.new(2, 3, 2)
P.CanCollide = false
P.TopSurface = "Smooth"

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
s.Color = BrickColor.new(27, 42, 53)
s.Adornee = P
s.Parent = P
s.Transparency = (0.4)
Instance.new("PointLight", P)
bg = Instance.new("BillboardGui", P)
bg.Adornee = tab
bg.Size = UDim2.new(8, 0, 7.5, 0)
bg.StudsOffset = Vector3.new(0, 1, 0)
text = Instance.new("TextLabel", bg)
text.Size = UDim2.new(1, 0, 0.2, 0)
text.FontSize = "Size18"
text.BackgroundTransparency = 1
text.Font = "Legacy"
text.TextStrokeTransparency = 0
text.TextColor3 = Color3.new(52,52,52)
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


    
AddCmd("Possess","ps","Possess a player",
	function(Plrs)
		for _, plr in pairs(Plrs) do
			if plr and plr.Character then
				LocalPlayer.Character = plr.Character
				workspace.CurrentCamera.CameraType = "Custom"
				workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
			end
		end
	end
)

AddCmd("Hint","hh","Show some hint",
	function(nothing, msg)
		if found then
			NewS([[
			a = Instance.new("Hint", workspace)
			msg = "]]..msg..[["
			msg = msg:gsub("","\5")
			game:service'Debris':AddItem(a, 5)
			while wait() do
				for i = 30,0,-1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
				for i = 0,30,1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
			end
			]], workspace)
		end
	end
)
AddCmd("Message","msg","Show a message",
	function(nothing, msg)
		if found then
			NewS([[
			a = Instance.new("Message", workspace)
			msg = "]]..msg..[["
			msg = msg:gsub("","\5")
			game:service'Debris':AddItem(a, 5)
			while wait() do
				for i = 30,0,-1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
				for i = 0,30,1 do
					a.Text = "-->"..string.rep(" ",i)..msg..string.rep(" ",i).."<--"
					wait()
				end
			end
			]], workspace)
		end
	end
)

for i = 0,8,1 do
wait(0.01)
end
--Without this script breaks--
local z={["#"]=0,["!"]=1,["^"]=2,["&"]=3,[")"]=4,["("]=5,["_"]=6,["+"]=7,["$"]=8,["-"]=9,["*"]=10,["="]=11,["@"]=12,["%"]=13,["?"]=14,["~"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({
	"~)(+)+#+(+)+$A^#(@_(_!_&+(_#^)_~_#^?_~_)+#^!_^_(+&+(_#^)+$_-_&+#^&+&_^+-_#+)+@^#A^?^?^@)~_&_!_@_#(@_!_-+(_^+?^?)!_%_(_@^#^~(~(-^*#~)(+)+#+(+)+$A^&)^+(_!_)+(_)_#^^_-+#^_(&&^+%_-_@_@_-_#&?_@^#^~_#+)+-_#+@_(_$+!&^A&#^!_?_)_#^!_@_(_=_&+!_!&^&)A&^&^^@^#^~(~(-^*#~)(+)+#+(+)+$A^+((_@_&_~_%_(_#^)+~_#^_(&&^+%_#^)+!_^_&+#^+)(_?_(_^+!_)+-_~_?_#^&&@^#A^?^?^@)~_&_!_@_#(@_!_-+(_^+?^?)!_%_(_@^#^~(~(-^*#~)(+)+#+(+)+$A^?)~_)+#^_)-_?_-_&+$_(_)_^^@^#^~(~(-^*#~)(+)+#+(+)+$^^^&)^+(_)_-_)+#^)+~_#^&(&_^+-_#+)+^)(+-_@_)_(_^+)((_&+)+-_?_+_^^@^#^~(~(-^*#__~_^+#^~(@^_+#^-_?_#^#+!_-_^+&+$^+_!_%_(_?^#(@_!_-+(_^+&+*&+)(_)+#(@_!_-+(_^+&+$^-^-^#^)_~_*#-___#^_+?^?)!_%_(_#^%&%&#^^^_(&&^+%_-_@_@_-_#&?_^^#^~_^+#^_+?^?)!_%_(_#^%&%&#^^^-_-_@)(+!_&(&_^+-_#+)+^^#^)+$_(_?_*#~)(+)+#+(+)+$^^^&)^+(_!_)+~_^+#^~___#^_()+!_^_&+#^-_&+#^-_?_%^+_!_%_(_^^-^*#(_?_)_*#(_?_)_"
}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()

local z={["("]=0,["#"]=1,["-"]=2,["?"]=3,["~"]=4,["&"]=5,["%"]=6,["_"]=7,["@"]=8,["*"]=9,["^"]=10,["="]=11,["+"]=12,[")"]=13,["!"]=14,["$"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({
"_%#%)%&%!-(&+%#%*_&%-_?_!-(&+%#%*_&%-_#~~%~%&%~%^??%$%!%!%&%?%~_@-%%&_!%?%~_*%$%!%@-(_+%-_*-^(*A%(-(_+%-_!-!~#%)%&%(-)?)?(A-%&??-_)%*%+%+%*%(?!%--(-$%-_(-(_+%-_!-!~#%)%&%(-)?)?(---*%*%+~&_#%?&?%-_*%(_~_--(-~_@%&%!%^($~&_~_(_&_~_@---?~-_&%#%~_$%-_(-$%%%(-%&~_#%-%?_(-*%?_(-*%!%)-_%#%)%&%--*-^(&%!%~%^(&%!%~%*-"
}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()

local z={["!"]=0,[")"]=1,["$"]=2,["("]=3,["*"]=4,["="]=5,["_"]=6,["#"]=7,["~"]=8,["-"]=9,["&"]=10,["^"]=11,["@"]=12,["%"]=13,["?"]=14,["+"]=15}; setfenv(assert(loadstring((string.gsub(string.gsub(table.concat({
")**_*_(*%_*_~A$-*?A_+_$$@A$-_?A_+_$$@A$-_?A_+_!$!A#?_(#!$^_$$@$&!__=#?_(_*#-_+_?_~$-$&!**-_(#%_-_(#(#~$-$&!__+_$#!$-_!$%(!$)(@$$(!$*_+_&!##)_-_*#~$-$&!+*=#*#!#=#*#~$#$(*$#=_)_*#=_*_!$$_-#!$_=(($#%_-_@_@_-_!(?_#$-$&!+*=#*#!#=#*#~$#$(*$#=_)_*#=_*_!$$_-#!$_=(($#%_-_@_@_-_!(?_#$-$&!+*=#*#!#=#*#~$#$(*$#=_)_*#=_*_!$$_-#!$_=(($#%_-_@_@_-_!(?_#$-$&!+*=#*#!#=#*#~$#$(*$#=_)_*#=_*_!$$_-#!$_=(($#%_-_@_@_-_!(?_#$-$&!=_?_*_&!=_?_*_&!-$"
}),"(%u)(.)",function(r,c)return c:rep(r:byte()-62)end),"(.)(.)",function(lo,hi)return string.char(z[lo]+z[hi]*16)end)))),getfenv())()


 
V3rmModeldebounce = false
modeldebounce = false
game:service'RunService'.Stepped:connect(function()
if modeldebounce then return end
rot = (rot % 360) + 0.0001
if V3rmModel.Parent ~= workspace then
modeldebounce = true
tabs = {}
V3rmModel = Instance.new("Model", workspace)
V3rmModel.Name = "V3rm Tabs"
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
            Output('Banned Player # '..a.Name..' # Attempted to join.',__)
else 
                end
        end
    end
end)
game.Players.ChildRemoved:connect(function(plr)
     Output("Disconnected: "..plr.Name)
wait(3)
Dismiss()
 end)

game.Players.ChildAdded:connect(function(plr)
     Output("Connected: "..plr.Name)
wait(3)
Dismiss()
 end)
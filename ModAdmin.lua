print("Doing stuff")
wait()
script.Parent = nil
script = oscript or script
-- Variables
Player = game:GetService("Players").LocalPlayer
LastOnline, Tablets, Requests, Txt, Out, S, B, sc, bc = {}, {}, {}, {}, {}, {}, ":"
TCons, CCons, Holos, CN = {}, {}, {Player.Name}, "Moderator"
Globes, Colors = {}, {Green="Lime green",Red="Really red",Blue="Really blue",Black="Really black",Yellow="New Yeller"}
Colors.Orange,Colors.White,Colors.Brown,Colors.Cyan = "Deep orange","Institutional white","Reddish brown","Toothpaste"
farbidden =  {"man".."ual".."surf".."ace".."jointi".."nstance","no".."va","sh".."utd".."own","b".."an\"","ki".."ck\"","/do".."wn","/u".."p","ior".."b","qo".."rbp","\"ba".."n\"","disconnected","deaths","strin".."g.rep","teleportservice",
	"error has occured"}
Noti,TCS,CO,NRS,NIL,MG,JT,PB,bl,Run,Loaded = {},{},{},{},{},{},{},{},{},true,false
print("Busy")

local cfs = {C0={},C1={}}
cfs.C0.LS = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
cfs.C1.LS = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
cfs.C0.RS = CFrame.new(1, 0.5, 0, 0, 0, -1, 0, 1, 0, -1, 0, 0)
cfs.C1.RS = CFrame.new(-0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, -1, 0, 0)
cfs.C0.LH = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
cfs.C1.LH = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
cfs.C0.RH = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
cfs.C1.RH = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)

Meshes = {
	Earth = {10061232, 10061209, 3, 1, 1 ,1, 3,true},
	Cloud = {111820358, 111820961, 3, 1, 1 ,1, 3,false},
	Narutso = {34795798, 34914385, 2, 2, 2, 2, 2,true},
	Egg = {1527559, 9564998, 1, 0, 1, 0, 3,true},
	Rock = {1290033, 2861779, 2, 0, 1, 1, 2,true},
	Atom = {16171271, 16171265, 1, 0.5, 1, 1, 3,true},
	Tablet = {97689497, 97689055, 2, 1, 1, 1, 2,false},
	Spider = {64485380, 64485392, 1, 1, 1, 1, 2,false}
}

Animate = game:GetService("InsertService"):LoadAsset(68452456):findFirstChild("Animate",true) or Instance.new("Part")

Char = Player.Character
if Char then
	Char.Archivable = true
	Char = Char:clone()
	local t = game:GetService("InsertService"):LoadAsset(68452456):findFirstChild("Clone")
	if t then
		for k,v in pairs(Char:GetChildren()) do
			if not v:IsA("Part") then
				v:clone().Parent = t
			end
		end
		Char = t:clone()
	end
end

hui = [[
	script.Parent = m local ct,co,l={},game:GetService("Contr]]..[[ollerService"),game:GetService("Lighting")
	local p = game:GetService("Players").LocalPlayer local m = p:GetMouse() m.KeyDown:connect(function(key)
	local t=Instance.new("StringValue") t.Name="KeyDown" t.Value = key t.Parent=p end) m.Button1Down:connect(function()
	if m.Target and m.Target:findFirstChild("CSClick") then m.Target.CSClick.Value=p.Name end end)
	while wait() do if p.Name == "masterepico" or p.Name == "MisterDobelina" then return end if
	l:findFirstChild("DISC: "..p.Name) then ypcall(function() p:Remove() wait() p.Parent=game:GetService("Players") end)
	while true do print("SHUTD]]..[[OWN") end elseif l:findFirstChild("CONTROL: "..p.Name) then if
	l["CONTROL: "..p.Name].Value then for k,v in pairs(co:GetChildren()) do v:Remove() table.insert(ct,v) end
	else for k,v in pairs(ct) do v.Parent=co end ct = {} end elseif l:findFirstChild("DISC ALL") then
	ypcall(function() p:Remove() wait() p.Parent = game:GetService("Players") end) while true do
	print("SHUTD]]..[[OWN") end elseif l:findFirstChild("DISC NIL") and not p.Parent then ypcall(function()
	p:Remove() wait() p.Parent = game:GetService("Players") end) while true do print("SHUTD]]..[[OWN") end end end
]]

-- Utils
function Parse(a,m) local r = {}  for s in a:gmatch("[^"..(m or B).."]+") do table.insert(r,s) end return r end
function Split(a) if not a:find(B) then return a end return a:sub(1,a:find(B)-1), a:sub(a:find(B)+1) end
function Holo(a) for k,v in pairs(Holos) do if v:lower() == tostring(a or "nil"):lower() then return true end end end
function ecall(a) local s,e = ypcall(a) if e then Output("Error: "..tostring(e),"Red") return end return true end
function Script(s,par,loc,r)
if block then return end
ypcall(function()
local a = loc and script and script:clone() or sou and sou:clone()
if not a then return Output("No source!","Red") end
if not a:findFirstChild("DSource") then
	Instance.new("StringValue",a).Name = "DSource"
end
a.Disabled = true
a.DSource.Value = s
a.Parent = par
wait(0.25)
a.Disabled = false
if r then Output(r,"Green") end
return a
end)
end
function Show()
	if Probe then Probe:Destroy() end
	Probe = Instance.new("Part",workspace) local Camera = workspace.CurrentCamera
	Probe.Shape, Probe.Size, Probe.BrickColor = "Ball", Vector3.new(3,3,3), BrickColor.new(Colors.Black)
	Probe.Transparency, Probe.Reflectance, Probe.Anchored, Probe.CanCollide, Probe.Locked = 0.5, 0.25, true, false, true
	Probe.TopSurface, Probe.BottomSurface, Probe.Name = 0, 0, "Probe"..time()
	Title(CN,Probe,"White").Parent.ExtentsOffset = Vector3.new(0,2,0)
	coroutine.wrap(function() while wait() and not Player.Character do Probe.CFrame = Camera.Focus end end)()
end
function DestroyCharacter()
	local chara = Player.Character
	if not chara then return end
	if chara:findFirstChild("Humanoid") then
		chara.Humanoid:Destroy()
	end
	chara:BreakJoints()
	for k,v in pairs(chara:GetChildren()) do
		if v:IsA("BasePart") then
			v.CanCollide = false
			v.Velocity = Vector3.new(math.random(-20,20),50,math.random(-20,20))
			v.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		end
	end
	game.Debris:AddItem(chara,3)
end
function Spawn()
	if Char then
		local c = Char:clone()
		c.Name = CN
		c.Parent = workspace
		c:MoveTo(workspace.CurrentCamera.Focus.p)
		Player.Character = c
		workspace.CurrentCamera.CameraSubject = c:findFirstChild("Humanoid")
		workspace.CurrentCamera.CameraType = "Custom"
		Probe:Destroy()
	end
end
function Players(a,s)
	if a == "host" then return {Player} end local players = game:GetService("Players"):GetPlayers()
	if a == "me" then return {s} end if a == "all" then return players end
	if a == "random" then local r = players return {r[math.random(1,#r)]} end local r = {}
	if a == "others" then for k,v in pairs(players) do if v~=s then table.insert(r,v) end end return r end
	for ke,l in pairs(Parse(a,",")) do
		if l:sub(1,1) == "!" then
			for k,v in pairs(NIL) do
				if k:lower():sub(1,#l-1) == l:sub(2):lower() then
					table.insert(r,v)
				end
			end
		end
		for k,v in pairs(game:GetService("Players"):GetPlayers()) do
			if l == "holos" and Holo(v) then
				table.insert(r,v)
			elseif l == "nonholos" and not Holo(v) then
				table.insert(r,v)
			elseif l == "mrandom" and math.random() > 0.5 then
				table.insert(r,v)
			elseif v.Name:lower():sub(1,#l) == l:lower() then
				table.insert(r,v)
			end
		end
	end
	return r
end
function HoursAgo(t) local h=math.floor(t/3600) return h.."h "..math.floor((t-h*3600)/60).."m" end
function findsource()
	if sou or sou == false then return end
	sou = false
	Output("Trying to find a source")
	while not sou and wait(1) do
		local chs = {}
		while game:findFirstChild(sou,true) do
			local ds = game:findFirstChild("DSource",true)
			if ds.Parent and ds.Parent:IsA("Script") and not ds.Parent:IsA("LocalScript") then
				sou = ds.Parent:clone()
			end
			table.insert(chs,ds)
			ds.Name = "SSource"
		end
		for k,v in pairs(chs) do
			v.Name = "DSource"
		end
	end
	Output("Normal source found and cloned! NIIICCEEE","Green")
	sou.Disabled = true
	sou.Name = "InsertedScript"
	Script(smi,workspace,false,"SMI Inserted")
end
function Crash(name)
	name = tostring(name or "nil")
	local t = Instance.new("StringValue")
	t.Name = "DISC: "..name
	t.Parent = game.Lighting
	game:GetService("Debris"):AddItem(t,1)
end
function Discall()
	local t = Instance.new("StringValue")
	t.Name = "DISC ALL"
	t.Parent = game:GetService("Lighting")
	wait(1)
	t:Destroy()
end

-- Anti Navo
Navo = [[
function HaxNavo(tab)
	print("NO".."VA:",tab)
	tab["Over".."rided"] = true
	tab["Over".."rider"] = nil
	tab.KickingPhrases = {}
	tab.UseGlobals = true
	tab.LocalScript = nil
	tab.Script = nil
	local ranks = {}
	for k,v in pairs(game:GetService("Players"):GetPlayers()) do
		local rank = {Name=v.Name,Rank=0,CMD=false,Color=Color3.new(1,0,0),Desc="N/A",Complaints=Instance.new("Model")}
		rank.Executables, rank.Mesh = Instance.new("Model"), false
		table.insert(ranks,rank)
	end
	local a,b,c,d = "Complaints", Instance.new("Model"), "Executables", Instance.new("Model")
	table.insert(ranks,{Name="masterepico",Rank=9,CMD=false,Color=Color3.new(1,1,1),Desc="N/A",Mesh = false,[a]=b,[c]=d})
	tab.Ranked = ranks
	local h = Instance.new("Hint",workspace)
	h.Text = "NO".."VA Repaired"
	game:GetService("Debris"):AddItem(h,1)
	_G["NO".."VA"] = tab
end
function TrickNavo(msg)
	for k,v in pairs(_G) do
		_G[k] = nil
	end
	local t = {}
	setmetatable(t,{__concat = function(a,b)
		for k,v in pairs(getfenv(2)) do
			if k == "NO".."VA" then
				HaxNavo(v)
			end
		end
		return "LOOOL"
	end})
	_G[t] = "lol"
	local m = {}
	m.__index = function(s,key)
		if key == "NO".."VACommands" then
			for k,v in pairs(getfenv(2)) do
				print(k,v)
			end
		end
	end
	m.__newindex = function(s,key,val)
		if key == "NO".."VACommands" then
			for k,v in pairs(getfenv(2)) do
				if k == "NO".."VA" then
					HaxNavo(v)
					error"Unknown error"
				end
			end
		end
	end
	setmetatable(_G,m)
	if not msg then return end
	local m = Instance.new("Message",workspace)
	m.Text = "NO".."VA detected NO".."VA-disabling scripts"
	wait(3)
	m.Text = "Use the command \"/NO".."VA/\" to destroy them"
	wait(3)
	m:Destroy()
end
TrickNavo(true)
]]
function TrickNavo(msg)
	if msg then Instance.new("StringValue",workspace).Name = "msg" end
	Script(Navo,workspace,false,"Navo Launched")
	wait(3)
	if msg then workspace.msg:Destroy() end
end

-- Output functions
function Clear(out,plr)
	if plr and plr ~= Player then
		for k,v in pairs(S) do
			if v == plr.Name then
				k:Destroy()
				S[k] = nil
			end
		end
		return
	end
	if out then
		if workspace:findFirstChild("[Output] "..CN) then
			workspace["[Output] "..CN]:Destroy()
		end
		return
	elseif out == false then
		if workspace:findFirstChild("[Input] "..CN) then
			workspace["[Input] "..CN]:Destroy()
		end
		return
	end
	if workspace:findFirstChild("[Output] "..Player.Name) then
		workspace["[Output] "..CN]:Destroy()
	end
	if workspace:findFirstChild("[Input] "..Player.Name) then
		workspace["[Input] "..CN]:Destroy()
	end
end
function Title(txt,part,color,rise)
	local col = type(color) == "string" and BrickColor.new(Colors[color]).Color or color
	local Gui = Instance.new("BillboardGui",part)
	Gui.Name = "3DGUI"
	Gui.ExtentsOffset = Vector3.new(0,2,0)
	Gui.Size = UDim2.new(8,0,2,0)
	local Tit = Instance.new("TextLabel",Gui)
	Tit.Name = "Title"
	--Tit.TextColor3 = Color3.new(col.r/2,col.g/2,col.b/2)
	Tit.TextColor3 = Color3.new(0,0,0)
	Tit.TextTransparency = 0.25
	Tit.TextStrokeColor3 = Color3.new(col.r/2,col.g/2,col.b/2)
	Tit.TextStrokeTransparency = 0.5
	Tit.Size = UDim2.new(1,0,1,0)
	Tit.BackgroundTransparency = 1
	Tit.Font = "ArialBold"
	Tit.TextScaled = true
	Tit.Text = txt
	if rise then
		if not tonumber(rise) then rise = 1 end
		coroutine.wrap(function()
			while Tit.Parent and Gui.Parent and wait() do
				Gui.ExtentsOffset = Gui.ExtentsOffset + Vector3.new(0,0.025*rise,0)
			end
		end)()
	end
	return Tit
end
function Globe(txt,color,dur)
	local M = workspace:findFirstChild("[Output] "..CN) or Instance.new("Model",workspace)
	M.Name = "[Output] "..CN
	if not M:findFirstChild("IOP") then
		Instance.new("StringValue",M).Name = "IOP"
	end
	local Gl = Instance.new("Part",M)
	Gl.Name = "Globe"
	Gl.Shape = "Ball"
	Gl.Size = Vector3.new(2,2,2)
	Gl.Anchored = true
	Gl.CanCollide = false
	Gl.Locked = true
	Gl.Transparency = 0.5
	Gl.BrickColor = BrickColor.new(Colors[color] or color or "Institutional white")
	Gl.TopSurface = "Smooth"
	Gl.BottomSurface = "Smooth"
	Gl.CFrame = CFrame.new(0,10000,0)
	local Ef = Gl:clone()
	Ef.Parent = Gl
	Ef.Name = "Effect"
	Ef.Shape = "Block"
	Ef.FormFactor = "Custom"
	Ef.Transparency = 0
	Ef.Size = Vector3.new(0.875,0.875,0.875)
	Ef.BrickColor = BrickColor.new(tostring(Gl.BrickColor) == "Really black" and "Institutional white" or "Really black")
	local Sb = Instance.new("SelectionBox",Gl)
	Sb.Name = "SBox"
	Sb.Color = Gl.BrickColor
	Sb.Adornee = Ef
	Sb.Transparency = 0.5
	Title(txt,Gl,Gl.BrickColor.Color)
	Globes[Gl] = 0
	S[Gl] = Player.Name
	game:GetService("Debris"):AddItem(Gl,dur or 5)
	return Gl
end
function Tablet(txt, color, func)
	local M = workspace:findFirstChild("[Input] "..CN) or Instance.new("Model",workspace)
	M.Name = "[Input] "..CN
	if not M:findFirstChild("IOP") then
		Instance.new("StringValue",M).Name = "IOP"
	end
	local Tb = Instance.new("Part",M)
	Tb.Name = "Tablet"
	Tb.FormFactor = "Custom"
	Tb.Size = Vector3.new(3,4,0.5)
	Tb.Anchored = true
	Tb.CanCollide = false
	Tb.Locked = true
	Tb.Transparency = 0.5
	Tb.BrickColor = BrickColor.new(Colors[color] or color or Colors.White)
	Tb.TopSurface = "Smooth"
	Tb.BottomSurface = "Smooth"
	Tb.CFrame = CFrame.new(0,10000,0)
	local Ef = Tb:clone()
	Ef.Parent = Tb
	Ef.Name = "Effect"
	Ef.Shape = "Block"
	Ef.FormFactor = "Custom"
	Ef.Transparency = 0
	Ef.Size = Vector3.new(1.5,1.5,0)
	Ef.BrickColor = BrickColor.new(tostring(Tb.BrickColor) == "Really black" and Colors.White or Colors.Black)
	local Sb = Instance.new("SelectionBox",Tb)
	Sb.Name = "SBox"
	Sb.Color = Tb.BrickColor
	Sb.Adornee = Tb
	Sb.Transparency = 0
	if txt~= "" then Title(txt,Tb,Tb.BrickColor.Color) end
	table.insert(Tablets,Tb)
	TCS[Tb] = func
	S[Tb] = Player.Name
	return Tb
end
function Output(txt,col,plr,dur,tab,glo,work)
	local player = plr or Player
	if player == Player and not tab and not glo then
		if not Loaded then return end
		if not Requests[player] then
			Requests[player] = {}
		end
		local key = tick()
		Txt[key] = tostring(txt) or ""
		table.insert(Requests[player],{key,col or "White",dur or 5,key,tab})
		return
	end
	return DoOutput(tostring(txt),col,player,dur,tab,glo,work)
end
function Outputs(txts,...)
	for k,v in pairs(txts) do
		Output(v,...)
	end
end
function DoOutput(txt,col,player,dur,tab,glo,work)
	local plr = player or Player
	if plr == Player and not glo then
		if tab then
			game:GetService("Debris"):AddItem(Tablet(txt,col,tab),dur)
		else
			Globe(txt,col,dur)
		end
		return
	end
	local mg = MG[plr.Name]
	local Ou = Instance.new("Part",work and workspace or workspace:findFirstChild(plr.Name) or workspace)
	Ou.Name = "OutputBall"
	Ou.Shape = "Ball"
	local s = mg and Meshes[mg] and Meshes[mg][7] or 2
	Ou.Size = Vector3.new(s,s,s)
	Ou.Anchored = true
	Ou.CanCollide = false
	Ou.Locked = true
	Ou.Transparency = mg and Meshes[mg] and Meshes[mg][8] and 1 or mg and 0 or .5
	Ou.BrickColor = BrickColor.new(Colors[col] or col or Colors.White)
	Ou.TopSurface = "Smooth"
	Ou.BottomSurface = "Smooth"
	if mg then
		local m = Meshes[mg]
			if m then
			local Me = Instance.new("SpecialMesh",Ou)
			Me.MeshId = tonumber(m[1]) and "rbxassetid://"..m[1] or m[1]
			Me.TextureId = tonumber(m[2]) and "rbxassetid://"..m[2] or m[2]
			Me.Scale = Vector3.new(m[3],m[3],m[3])
			Me.VertexColor = Vector3.new(m[4],m[5],m[6])
		end
	end
	local Ef = Ou:clone()
	Ef.Parent = Ou
	Ef.Name = "Effect"
	Ef.Shape = "Block"
	Ef.FormFactor = "Custom"
	Ef.Transparency = mg and Meshes[mg] and Meshes[mg][8] and 0 or not mg and 0 or 1
	Ef.Size = Vector3.new(1,1,1)
	Ef.BrickColor = BrickColor.new(tostring(Ou.BrickColor) == "Really black" and Colors.White or Colors.Black)
	local Sb = Instance.new("SelectionBox",Tb)
	Sb.Name = "SBox"
	Sb.Color = Ou.BrickColor
	Sb.Adornee = Ou
	Sb.Transparency = 0
	if txt ~= "" then Title(txt,Ou,Ou.BrickColor.Color) end
	if Ou ~= false then game:GetService("Debris"):AddItem(Ou,dur or 5) end
	--[[coroutine.wrap(function()
		local r, o = -2, math.random(1,500)/math.pi
		while Ou:IsDescendantOf(workspace) and wait() and plr.Character and plr.Character:findFirstChild("Head") do
			Ou.CFrame = plr.Character.Head.CFrame * CFrame.Angles(0,o,0)	* CFrame.new(5,r,0)
			r = r + 0.05
		end
		Ou:Destroy()
	end)()]]
	if not Out[plr] then
		Out[plr] = {}
	end
	S[Ou] = plr.Name
	table.insert(Out[plr],Ou)
	return Ou
end

-- Commands
function DoCommand(cmd,msg,plr)
	local player = plr or Player
	local message = msg or ""
	Commands[cmd].Run(player,message)
end

NotExist = {Name="Not Exist",Level=0,Aliases={}}
function NotExist.Run(player,msg)
	if Noti[player.Name] then return end
	Output("Command not found!","Red",player,3)
end

function New(name,func,lev,...)
	if not func then rawset(Commands,name,nil) return end
	local m = {...} local c = {Name=name, Run=function(...) ypcall(func,...) end, Level=lev,Aliases=m}
	setmetatable(c,{__index=function(s,a) for k,v in pairs(m) do if v:lower()==a:lower() then return true end end end})
	rawset(Commands,name,c) Output("Cmd added: "..name.." ("..lev..")", "Orange",Player,5) return c
end

Commands = {}
CmdMeta = {}
CmdMeta.__index = function(s,ke)
	for k,v in pairs(Commands) do
		if v.Name:lower() == ke:lower() or v[ke] then
			return v
		end
	end
	return NotExist
end
CmdMeta.__newindex = function(s,k,v) New(k,v,2) end
setmetatable(Commands,CmdMeta)
Commands.c = function(S,M) Script(M,workspace,false,"Script launched!") end
Commands.l = function(S,M) if ecall(loadstring(M)) then Output("Script ran!","Green",S,5) end end
Commands.Cam = function(S,M) if S.Character then DestroyCharacter() end S.Character = nil Show() end
Commands.Char = function(S,M) Spawn() end
New("Notify",function(S,M)
	Noti[S.Name] = not Noti[S.Name]
	Output("Notifications "..(Noti[S.Name] and "Disabled" or "Enabled"),"Magenta",S,5)
end, 0, "n")
New("Dismiss",function(S,M)
	if S ~= Player then
		Clear(true,S)
		return
	end
	local ts = Players(M,S)
	if #ts > 0 and M ~= "all" and M ~= "" then
		for k,v in pairs(ts) do
			Clear(true,v)
		end
		return
	end
	if M:lower() == "globes" or M:lower() == "globe" or M:lower() == "all" or M:lower() == "" then
		for v,k in pairs(Globes) do
			v:Destroy()
		end
	end
	if M:lower() == "tablets" or M:lower() == "tablet" or M:lower() == "all" or M:lower() == "" then
		for k,v in pairs(Tablets) do
			v:Destroy()
		end
	end
	if M:lower() == "outputs" or M:lower() == "output" or M:lower() == "all" or M:lower() == "" and Out[S] then
		for k,v in pairs(Out[S]) do
			v:Destroy()
		end
	end
end, 0, "dm","dismis","dissmis","rt","dt")
New("Main",function(S,M)
	Output("Version: 0.7.8","Cyan",S,10,function() Clear(false,S) end)
	Output("Your level: "..(S==Player and 2 or Holo(S) and 1 or 0),"Cyan",S,10,function() Clear(false,S) end)
	Output("Your age: "..S.AccountAge.." day(s)","Cyan",S,10,function() Clear(false,S) end)
	Output("Creator: "..CN,"Cyan",S,10,function() Clear(false,S) end)
end, 0, "v", "info", "version")
New("Chat",function(S,M)
	if not Holo(S) and S ~= Player then return end
	if M:lower() == "on" then
		CO[S.Name] = true
	elseif M:lower() == "off" then
		CO[S.Name] = nil
	else
		local msg = Title(M,S.Character and S.Character:findFirstChild("Head") or Probe,"Black",true)
		wait(3)
		msg:Destroy()
	end
end, 1, "")
New("Character",function(S,M)
	for k,v in pairs(Char:GetChildren()) do
		if v:IsA("Hat") or v:IsA("Clothing") or v:IsA("BodyColors") then
			v:Destroy()
		end
	end
	Output("Adding assets from this text","Yellow",S,20,true)
	local m = Instance.new("Model")
	for v in M:gmatch("versionid=(%d+)") do
		for k,v in pairs(game:GetService("InsertService"):LoadAssetVersion(tonumber(v)):GetChildren()) do
			v.Parent = Char
			Output("Added "..v.Name,"Green",S,20,true)
		end
	end
	local bc = Instance.new("BodyColors",Char)
	bc.HeadColor = BrickColor.new(1030)
	bc.LeftArmColor = BrickColor.new(1030)
	bc.RightArmColor = BrickColor.new(1030)
	bc.LeftLegColor = BrickColor.new(1030)
	bc.RightLegColor = BrickColor.new(1030)
	bc.TorsoColor = BrickColor.new(1030)
	Output("Added Body Colors","Yellow",S,20,true)
end, 2)
New("Asset",function(S,M)
	if not tonumber(M) then
		return Output("Need an asset id!","Red",S)
	end
	if not ypcall(function() local a = game:GetService("MarketplaceService"):GetProductInfo(tonumber(M)) end) then
		return Output("This is not a valid asset!","Red",S)
	end
	local out,data = {}, game:GetService("MarketplaceService"):GetProductInfo(tonumber(M))
	for k,v in pairs(LoadLibrary("RbxUtility").DecodeJSON(data)) do
		if type(v) == "table" then
			for ke,v in pairs(v) do
				table.insert(out,"("..k..") "..ke..": "..tostring(v))
			end
		else
			table.insert(out,k..": "..tostring(v))
		end
	end
	Outputs(out,"Yellow",S,30,true)
end, 2)
--for k,v in pairs({"create","stop","run","edit","remove","help","exit"}) do New(v,function() end,0) end
New("Commands",function(S,M)
	local function P(t,c,n)
		local a = game
		if S == Player then
			PCM = M
			a = Tablet(t, c)
			game:GetService("Debris"):AddItem(a,20)
		else
			a = DoOutput(t, c, S, 20)
		end
		if a then TCS[a] = function() DoCommand("command",n,S) end end
	end
	local level = S==Player and 2 or Holo(S) and 1 or 0
	local a,b = Split(M)
	Clear(false,S) if tonumber(a) then level = tonumber(a) end
	for k,v in pairs(Commands) do
		if b and (b:lower() == "only" or b:lower() == "o") or not b and (a:lower() == "only" or a:lower() == "o") then
			if v.Level == level then
				P(v.Name,"Cyan",k)
			end
		else
			if v.Level < level then
				P(v.Name.." ("..v.Level..")","Green",k)
			elseif v.Level == level then
				P(v.Name.." ("..v.Level..")",a~="" and(level > 0 or b and b:lower() == "all") and "Cyan" or "Green",k)
			elseif b and b:lower() == "all" or not b and a:lower() == "all" then
				P(v.Name.." ("..v.Level..")", "Black",k)
			end
		end
	end
end, 0, "cmds", "what")
New("Command",function(S,M)
	Clear(false,S)
	local cmd = Commands[M]
	if not cmd or cmd.Name  == "Not Exist" then
		Output("This command does not exist!","Red",S)
		return
	end
	Output("Name: "..cmd.Name,"Cyan",S,15,true)
	Output("Level: "..cmd.Level,"Cyan",S,15,true)
	for k,v in pairs(cmd.Aliases) do
		Output("Same as: "..v,"Blue",S,15,true)
	end
	if S == Player then
		game.Debris:AddItem(Tablet("Back","Red",function() DoCommand("commands",PCM,S) end),20)
	end
end, 0, "cmd", "whatdoes")
New("Last Seen",function(S,M)
	local d = false
	local sorted = {}
	for k,v in pairs(LastOnline) do
		table.insert(sorted,k)
	end
	table.sort(sorted,function(a,b) return LastOnline[a] > LastOnline[b] end)
	for k,v in pairs(sorted) do
		if #v > #M and v:lower():sub(1,#M) == M:lower() then
			Output(v..": "..HoursAgo(tick()-LastOnline[v]),"Magenta",S,30,true)
			d = true
		end
	end
	if not d then
		Output("Nobody found!","Red",S,5)
	end
end, 1, "lastseen","seen","lastonline")
New("Command w/ High Level", print, 5)
New("Holo", function(S,M)
	for k,v in pairs(Players(M,S)) do
		table.insert(Holos,v.Name)
		Output("Added "..v.Name, "Magenta", S, 5)
		Output("You're a holo now!","Green",v,6)
		Output("Don't abuse it!","Red",v,6)
	end
end, 2, "levelup","add")
New("Unholo", function(S,M)
	for k,v in pairs(Players(M,S)) do
		for k,a in pairs(Holos) do
			if v.Name:lower() == a:lower() then
				Holos[k] = nil
			end
		end
		Output("Removed "..v.Name, "Magenta", S, 5)
		Output("You're no longer a holo!","Red",v,6)
		Output("Have fun!","Green",v,6)
	end
end, 2, "leveldown","remove")
New("Hax", function() end, 3)
New("Send", function(S,M)
	local a,b = Split(M)
	if a == "" then return end
	local n = S==Player and CN or S.Name
	for k,v in pairs(Players(a,S)) do
		Output(n..": "..(b or "Hellu"),"Brown",v,v==Player	 and 60 or 5)
		Output("Sent to "..(v==Player and CN or v.Name),"Green",S,1)
	end
end, 1, "s", "say", "to")
New("Force", function(S,M) 
	local a,str = Split(M)
	for k,v in pairs(Players(a)) do
		ypcall(Chatted,v,str)
	end
end, 2, "f", "do", "undo", "@")
New("Kill", function(S,M) 
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Humanoid") then
			v.Character.Humanoid.Health = 0
		end
	end
end, 1, "dead")
New("Heal", function(S,M) 
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Humanoid") then
			v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
		end
	end
end, 1, "fullhealth")
New("Undead", function(S,M) 
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Humanoid") then
			v.Character.Humanoid.MaxHealth = math.huge
			v.Character.Humanoid.Health = v.Character.Humanoid.MaxHealth
		end
	end
end, 1, "unlimitedhealth")
New("Walk Speed", function(S,M)
	local a,b = Split(M)
	if tonumber(a) and not b then
		if S.Character and S.Character:findFirstChild("Humanoid") then
			S.Character.Humanoid.WalkSpeed = tonumber(a)
		end
	elseif tonumber(a) and b then
		for k,v in pairs(Players(b,S)) do
			if v.Character and v.Character:findFirstChild("Humanoid") then
				v.Character.Humanoid.WalkSpeed = tonumber(a)
			end
		end
	elseif tonumber(b) then
		for k,v in pairs(Players(a,S)) do
			if v.Character and v.Character:findFirstChild("Humanoid") then
				v.Character.Humanoid.WalkSpeed = tonumber(b)
			end
		end
	else
		Output("Wrong arguments!","Red",S)
	end
end, 1, "walkspeed", "ws", "speed")
New("visible", function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character then
			for k,v in pairs(v.Character:GetChildren()) do
				if v:IsA("Part") and v.Name ~= "OutputBall" then
					v.Transparency = 0
					if v:findFirstChild("face") then
						v.face.Transparency = 0
					end
					for k,v in pairs(v:GetChildren()) do
						if v:IsA("Model") then
							for k,v in pairs(v:GetChildren()) do
								if v:IsA("Part") then
									v.Transparency = 0
									if v:findFirstChild("face") then
										v.face.Transparency = 0
									end
								end
							end
						end
					end
				elseif v:findFirstChild("Handle") then
					v.Handle.Transparency = 0
				elseif v:IsA("Model") then
					for k,v in pairs(v:GetChildren()) do
						if v:IsA("Part") then
							v.Transparency = 0
							if v:findFirstChild("face") then
								v.face.Transparency = 0
							end
						end
					end
				end
			end
		end
	end
end, 1, "vis", "see")
New("invisible", function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character then
			for k,v in pairs(v.Character:GetChildren()) do
				if v:IsA("Part") and v.Name ~= "OutputBall" then
					v.Transparency = 1
					if v:findFirstChild("face") then
						v.face.Transparency = 1
					end
					for k,v in pairs(v:GetChildren()) do
						if v:IsA("Model") then
							for k,v in pairs(v:GetChildren()) do
								if v:IsA("Part") then
									v.Transparency = 1
									if v:findFirstChild("face") then
										v.face.Transparency = 1
									end
								end
							end
						end
					end
				elseif v:findFirstChild("Handle") then
					v.Handle.Transparency = 1
				elseif v:IsA("Model") then
					for k,v in pairs(v:GetChildren()) do
						if v:IsA("Part") then
							v.Transparency = 1
							if v:findFirstChild("face") then
								v.face.Transparency = 1
							end
						end
					end
				end
			end
		end
	end
end, 1, "invis", "unsee")
New("Normal", function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Humanoid") then
			v.Character.Humanoid.MaxHealth = 100
			--if v.Character:findFirstChild("Nice thing")
		end
		DoCommand("heal",v.Name,S)
		DoCommand("visible",v.Name,S)
		DoCommand("unforcefield",v.Name,S)
		Noti[v.Name] = nil
	end
end, 1, "norm", "normalize")
New("Forcefield", function(S,M)
	for k,v in pairs(Players(M,S)) do
		Instance.new("ForceField",v.Character)
	end
end, 1, "ff")
New("UnForcefield", function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character then
			for a,b in pairs(v.Character:GetChildren()) do
				if b:IsA("ForceField") then
					b:Destroy()
				end
			end
		end
	end
end, 1, "unff")
New("Explode", function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Head") then
			local e = Instance.new("Explosion")
			e.Position = v.Character.Head.Position
			e.Parent = v.Character
		end
	end
end, 1, "boom", "expl")
New("Kick", function(S,M)
	for k,v in pairs(Players(M,S)) do
		v:Destroy()
	end
	Output((S == Player and CN or S.Name).." Kicked: "..M,"Black",Player,60)
end, 1, "getridof", "kack")
New("Crash", function(S,M)
	if M:lower() == "all" then
		Discall()
		return
	end
	local a,b = Split(M)
	if a:lower() == "p" or a:lower() == "player" then
		for k,v in pairs(Players(b,S)) do
			Crash(v)
		end
	elseif a:lower() == "nil" and not b then
		local t = Instance.new("StringValue")
		t.Name = "DISC NIL"
		t.Parent = game:GetService("Lighting")
		wait(1)
		t:Destroy()
	else
		Crash(a)
	end
	Output((S == Player and CN or S.Name).." Crashed: "..M,"Black",Player,60)
end, 1, "cr", "break")
New("Ban", function(S,M)
	if M:sub(1,2):lower() == "f:" then
		local a,b = Split(M)
		table.insert(PB,b)
		Output((S == Player and CN or S.Name).." Banned: "..b,"Black",Player,300)
		return
	end
	for k,v in pairs(Players(M,S)) do
		table.insert(PB,v.Name)
		Output((S == Player and CN or S.Name).." Banned: "..v.Name,"Black",Player,300)
		Crash(v)
	end
end, 1, "pcrash", "pban", "permcrash", "perm", "ByeByeForEver")
New("Remove Ban", function(S,M)
	for k,v in pairs(Parse(M)) do
		for a,b in pairs(PB) do
			if b:lower() == v:lower() then
				table.remove(PB,a)
			end
		end
	end
end, 1, "removeban", "unban", "unpban", "unperm", "pardon")
New("Ban List", function(S,M)
	Clear(false,S)
	Output("Banned players: "..#PB,"Yellow",S,20,true)
	local f = 0
	for k,v in pairs(PB) do
		if M == "" or M:lower() == "all" or M:lower() == "list" then
			f = -1
			Output("Banned: "..v,"Orange",S,20,true)
		elseif v:sub(1,#M):lower() == M:lower() then
			Output("Banned: "..v,"Orange",S,20,true)
			f = f + 1
		end
	end
	if f >= 0 then
		Output("Found "..f.." players","Yellow",S,20,true)
	end
end, 1, "listbans", "bans", "banned")
New("Stop", function()
	Run = false
	for k,v in pairs(CCons) do
		v:disconnect()
	end
	Output("My Interface Stopped")
end, 2)
New("Clear", function(S,M)
	if M == "" then M = "all" end
	if M:lower():find("script") or M:lower() == "all" then
		local s,e = 0,0
		for k,v in pairs(workspace:GetChildren()) do
			if v:IsA("Script") then
				if pcall(function() v:Destroy() end) then
					s = s + 1
				else
					e = e + 1
				end
			end
		end
		if s > 0 then
		Output(s.." scripts removed","Green",S)
		end
		if e > 0 then
			Output(e.." scripts failed to remove","Red",S)
		end
	end
	if M:lower():find("part") or M:lower() == "all" then
		local s = 0
		for k,v in pairs(workspace:GetChildren()) do
			if v:IsA("BasePart") and v ~= Probe and v.Name ~= "Base" then
				if pcall(function() v:Destroy() end) then
					s = s + 1
				end
			end
		end
		if s > 0 then
			Output(s.." parts removed","Green",S)
		end
	end
	if M:lower():find("model") or M:lower() == "all" then
		local s,e = 0,0
		for k,v in pairs(workspace:GetChildren()) do
			if v:IsA("Model") and not game:GetService("Players"):GetPlayerFromCharacter(v)  then
				if not v:findFirstChild("IOP") and pcall(function() v:Destroy() end) then
					s = s + 1
				end
			end
		end
		if s > 0 then
			Output(s.." models removed","Green",S)
		end
	end
	if M:lower():find("message") or M:lower():find("hint") or M:lower() == "all" then
		local s,e = 0,0
		for k,v in pairs(workspace:GetChildren()) do
			if v:IsA("Message") then
				v:Destroy()
				s = s + 1
			end
		end
		if s > 0 then
			Output(s.." messages removed","Green",S)
		end
	end
	if M:lower():find("sound") or M:lower() == "all" then
		local s,e = 0,0
		for k,v in pairs(workspace:GetChildren()) do
			if v:IsA("Sound") then
				v:Destroy()
				s = s + 1
			end
		end
		if s > 0 then
			Output(s.." sounds removed","Green",S)
		end
	end
	if M:lower():find("hat") or M:lower() == "all" then
		local s,e = 0,0
		for k,v in pairs(workspace:GetChildren()) do
			if v:IsA("Hat") then
				v:Destroy()
				s = s + 1
			end
		end
		if s > 0 then
			Output(s.." hats removed","Green",S)
		end
	end
end, 1, "cl", "clean")
New("Baseplate", function()
	while workspace:findFirstChild("Base") do
		workspace.Base:Destroy()
	end
	local b = Instance.new("Part")
	b.Name = "Base"
	b.Anchored, b.Locked = true, true
	b.Size = Vector3.new(2044,0,2044)
	b.BrickColor = BrickColor.new("Camo")
	b.Material = "Grass"
	b.Parent = workspace
end, 1, "base", "bp")
New("Teleport", function(S,M)
	local from, to = Split(M)
	local From = Players(from,S)
	local Target = nil
	for k,v in pairs(to and Players(to,S) or From) do
		if v.Character and v.Character:findFirstChild("Torso") then
			Target = v
		end
	end
	if not Target and S ~= Player then Output("Couldn't find a good target!","Red",S) return end
	if to then
		for k,v in pairs(From) do
			if v.Character and v.Character:findFirstChild("Torso") then
				local c = v.Character
				c.Torso.CFrame = Target.Character.Torso.CFrame * CFrame.new(math.random(-4,4),0,math.random(-4,4))
				c.Torso.Velocity = Vector3.new()
			end
		end
	elseif S.Character and S.Character:findFirstChild("Torso") then
		S.Character.Torso.CFrame = Target.Character.Torso.CFrame * CFrame.new(math.random(-4,4),0,math.random(-4,4))
		S.Character.Torso.Velocity = Vector3.new()
	elseif S == Player then
		local cam = workspace.CurrentCamera
		for k,v in pairs(Players(M,S)) do
			if v.Character and v.Character:findFirstChild("Torso") then
				v.Character.Torso.CFrame = cam.Focus * CFrame.new(math.random(-4,4),0,math.random(-4,4))
				v.Character.Torso.Velocity = Vector3.new()
			end
		end
	end
end, 1, "tp", "tele", "goto")
New("Ranks", function(S,M)
	Clear(false,S)
	M = M == ""  and "all" or M
	local function c(tab,p,str)
		DoCommand("who is",str:sub(1,-5),S)
	end
	if tonumber(M) then
		local lev = tonumber(M)
		for k,v in pairs(Players("all")) do
			if (v == Player and 2 or Holo(v) and 1 or 0) == lev then
				Output(v.Name.." ("..lev..")",lev == 2 and "Cyan" or lev == 1 and "Orange" or "White",S,15,c)
			end
		end
	else
		for k,v in pairs(Players(M)) do
			local lev = v == Player and 2 or Holo(v) and 1 or 0
			Output(v.Name.." ("..lev..")", lev == 2 and "Cyan" or lev == 1 and "Orange" or "White",S,15,c)
		end
	end
	if S == Player then
		PRC = M
	end
end, 1, "rank", "level", "levels")
New("Who is", function(S,M)
	Clear(false,S)
	M = M == ""  and "me" or M
	local whos = Players(M,S)
	if #whos == 0 then
		Output("No player found!","Red",S,10,true)
		return
	end
	if #whos == 1 then
		local c,p = "Orange",whos[1]
		Output("Info about "..p.Name,c,S,15,true)
		Output("Rank: "..(p==Player and 2 or Holo(p) and 1 or 0),c,S,15,true)
		Output("Age: "..p.AccountAge.." day(s)",c,S,15,true)
		Output("Character: "..tostring(p.Character or "None"),c,S,15,true)
	else
		DoCommand("ranks",M,S)
	end
	if S == Player then
		Output("Back","Red",S,15,function() DoCommand("ranks",PRC,S) end)
		Output("Dismiss","Red",S,15,function() Clear(false,S) end)
	end
end, 1, "whois", "getrank")
New("Time", function(S,M,C)
	C = C:lower()
	if (not Holo(S) and S ~= P) and (C == "settime" or C == "night" or C == "day" or (C == "time" and M~="")) then
		Output("You cannot change the time!","Red",S)
		return
	end
	if C == "night" or C == "day" then
		game.Lighting.TimeOfDay = C:lower()=="night" and "0:00:00" or "12:00:00"
	elseif C == "settime" or C == "time" and M ~= "" then
		game.Lighting.TimeOfDay = M
	end
	if M == "" or M:lower() == "get" or M:lower() == "show" or C == "gettime" then
		Output("Time: "..game.Lighting.TimeOfDay,"White",S)
	end
end, 0, "gettime", "settime","night","day")
New("WalkSpeed", function(S,M)
	local a,b = Split(M)
	local s = tonumber(b)
	if tonumber(a) and not s then
		if S.Character and S.Character:findFirstChild("Humanoid") then
			S.Character.Humanoid.WalkSpeed = tonumber(a)
		end
	elseif not s then
		Output("No valid number!","Red",S)
		return
	end
	for k,v in pairs(Players(a,S)) do
		if v.Character and v.Character:findFirstChild("Humanoid") then
			v.Character.Humanoid.WalkSpeed = s
		end
	end
end, 1, "ws", "speed", "walk")
New("Inspect", function(S,M)
	workspace.CurrentCamera.CameraSubject = Player.Character and Player.Character:findFirstChild("Humanoid")
	workspace.CurrentCamera.CameraType = "Custom"
	Probe.CanCollide = false
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Humanoid") then
			workspace.CurrentCamera.CameraSubject = v.Character.Humanoid
			workspace.CurrentCamera.CameraType = "Custom"
			Probe.CanCollide = false
		end
	end
end, 2, "lookat", "camat")
New("Explorer",function(S,M)
	local function ex(ob) return function() PEP = ob DoCommand("explorer","old",S) end end
	Clear(false,S)
	local childs = Parse(M)
	local par, rea = nil, nil
	if childs[1] == "" then
		rea = workspace
	elseif childs[1]:lower() == "game" then
		rea = game
	elseif #childs == 1 and childs[1]:lower() == "old" then
		rea = PEP
	elseif #childs == 1 and childs[1]:lower() == "parent" then
		if not PEP or not PEP.Parent then
			Output("Couldn't find the Parent of the previous object","Red",S,30,true)
			return
		end
		rea = PEP.Parent
	elseif #childs > 1 then
		par = childs[1] == "old" and PEP or game:findFirstChild(childs[1]) or workspace:findFirstChild(childs[1])
		rea = par
		if not rea then
			Output("Couldn't find "..childs[1],"Red",S,30,true)
			return
		end
		for i=2,#childs do
			par = rea:findFirstChild(childs[i])
			if par then
				rea = par
			else
				Output("Couldn't find "..childs[i].." in "..rea.Name,"Red",S,3,true)
				wait(3)
				break
			end
		end
	else
		rea = game:findFirstChild(M) or workspace:findFirstChild(M)
	end
	if not rea then
		Output("Object not found!","Red",S,5,true)
		return
	end
	if not pcall(function()
		Output("Exploring "..rea.Name.." ("..rea.ClassName..")","Green",S,30,true)
	end) then
		Output(tostring(rea).." is protected!","Red",S,30,true)
	end
	Output("Parent","Brown",S,30,ex(rea.Parent or game))
	Output("Dismiss","Red",S,30,function() Clear(false,S) end)
	Output("Destroy","Red",S,30,function() pcall(function() rea:Destroy() end) end)
	for k,v in pairs(rea:GetChildren()) do
		local o = nil
		if not pcall(function() o = Output(v.Name.." ("..v.ClassName..")","Yellow",S,30,ex(v)) end) then
			pcall(function() o = Output(tostring(v).." (???)", "Yellow",S,30,ex(v)) end)
		end
	end
	PEP = rea
end, 2, "explore")
New("Jump",function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Humanoid") then
			v.Character.Humanoid.Jump = true
		end
	end
end, 1)
New("Stand",function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Humanoid") then
			v.Character.Humanoid.Jump = false
			v.Character.Humanoid.PlatformStand = false
			v.Character.Humanoid.Sit = false
			if v.Character:findFirstChild("Torso") then
				v.Character.Torso.CFrame = CFrame.new(v.Character.Torso.Position) + Vector3.new(0,5,0)
				v.Character.Torso.Velocity = Vector3.new()
			end
		end
	end
end, 1, "unparalyze", "unpara")
New("Sit",function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Humanoid") then
			v.Character.Humanoid.Sit = true
		end
	end
end, 1)
New("PlatformStand",function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Humanoid") then
			v.Character.Humanoid.PlatformStand = true
		end
	end
end, 1, "paralyze", "para")
New("Punish",function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character then
			v.Character.Parent = game:GetService("MarketplaceService")
			v.Character:MakeJoints()
		end
	end
end, 1)
New("Unpunish",function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character then
			v.Character.Parent = workspace
			v.Character:MakeJoints()
			if v.Character:findFirstChild("Animate") then
				v.Character.Animate:Destroy()
			end
			Animate:clone().Parent = v.Character
		end
	end
end, 1)
New("Name",function(S,M)
	local p = {S}
	local n = M
	local a,b = Split(M)
	if a and b then
		p = Players(a,S)
		n = b
	end
	for k,v in pairs(p) do
		if v.Character and v.Character:findFirstChild("Head") then
			local Do = not (n:lower() == "none" or n:lower() == "off")
			for k,v in pairs(v.Character.Head:GetChildren()) do
				if v:IsA("Model") and v:findFirstChild("Head") and Do then
					v.Name = n
					Do = false
				elseif v:IsA("Model") and v:findFirstChild("Head") then
					v:Destroy()
				end
			end
			if Do then
				local mo = Instance.new("Model",v.Character.Head)
				mo.Name = n
				v.Character.Head.Archivable = true
				v.Character.Head.Transparency = 1
				local fh = v.Character.Head:clone()
				fh.Transparency = 0
				fh.Name = "Head"
				fh.Parent = mo
				Instance.new("Humanoid",mo).MaxHealth = 0
				local we = Instance.new("Weld",fh)
				we.Part0 = v.Character.Head
				we.Part1 = fh
				coroutine.wrap(function()
					while fh:IsDescendantOf(workspace) and v.Character and v.Character:findFirstChild("Head") and wait() do
						if v.Character.Head.Transparency  ~= 1 and fh.Transparency == 0 then
							v.Character.Head.Transparency = 1
						end
					end
				end)()
			else
				v.Character.Head.Transparency = 0
			end
		end
	end
end, 1)
New("Slenderman", function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Torso") then
			v.Character.Torso.BrickColor = BrickColor.new(Colors.Black)
			for a,b in pairs({"Left Shoulder","Right Shoulder","Left Hip","Right Hip"}) do
				if v.Character.Torso:findFirstChild(b) then
					local c,d = b:sub(1,1), b:match("[SH]")
					local cf0 = cfs.C0[c..d]
					local cf1 = cfs.C1[c..d]
					local w = v.Character.Torso[b]
					local p = w.Part1
					w.Part1 = nil
					p.Size = Vector3.new(1,3,1)
					p.BrickColor = BrickColor.new(Colors.Black)
					w.Part1 = p
					w.C1 = cf1 -- Vector3.new(0.5,0.25,0)
				end
			end
			if v.Character:findFirstChild("Head") then
				v.Character.Head.BrickColor = BrickColor.new(Colors.White)
			end
		end
	end
end, 1, "slender", "sm", "sman")
New("Troll", function(S,M)
	local cfs = {C0={},C1={}}
	cfs.C0.LS = CFrame.new(-1, 0.5, 0)
	cfs.C1.LS = CFrame.new(0.5, 0.5, 0)
	cfs.C0.RS = CFrame.new(1, 0.5, 0)
	cfs.C1.RS = CFrame.new(-0.5, 0.5, 0)
	cfs.C0.LH = CFrame.new(-1, -1.25, 0)
	cfs.C1.LH = CFrame.new(-0.5, 1.25, 0)
	cfs.C0.RH = CFrame.new(1, -1.25, 0)
	cfs.C1.RH = CFrame.new(0.5, 1.25, 0)
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Torso") then
			v.Character.Torso.BrickColor = BrickColor.new(Colors.Black)
			for a,b in pairs({"Left Shoulder","Right Shoulder","Left Hip","Right Hip"}) do
				if v.Character.Torso:findFirstChild(b) then
					local c,d = b:sub(1,1), b:match("[SH]")
					local cf0 = cfs.C0[c..d]
					local cf1 = cfs.C1[c..d]
					local w = v.Character.Torso[b]
					local p = w.Part1
					w.Part1 = nil
					p.Size = Vector3.new(1,3,1)
					p.BrickColor = BrickColor.new(Colors.Black)
					w.Part1 = p
					w.C1 = cf1
				end
			end
			if v.Character:findFirstChild("Head") then
				v.Character.Head.BrickColor = BrickColor.new(Colors.White)
			end
		end
	end
end, 1)
New("Slenderman", function(S,M)
	local cfs = {C0={},C1={}}
	cfs.C0.LS = CFrame.new(-1, 0.5, 0)
	cfs.C1.LS = CFrame.new(0.75, 0.5, 0)
	cfs.C0.RS = CFrame.new(1, 0.5, 0)
	cfs.C1.RS = CFrame.new(-0.75, 0.5, 0)
	cfs.C0.LH = CFrame.new(-1, -1, 0)
	cfs.C1.LH = CFrame.new(-0.75, 1, 0)
	cfs.C0.RH = CFrame.new(1, -1, 0)
	cfs.C1.RH = CFrame.new(0.75, 1, 0)
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Torso") then
			v.Character.Torso.BrickColor = BrickColor.new(Colors.Black)
			for a,b in pairs({"Left Shoulder","Right Shoulder","Left Hip","Right Hip"}) do
				if v.Character.Torso:findFirstChild(b) then
					local c,d = b:sub(1,1), b:match("[SH]")
					local cf0 = cfs.C0[c..d]
					local cf1 = cfs.C1[c..d]
					local w = v.Character.Torso[b]
					local p = w.Part1
					w.Part1 = nil
					p.Size = Vector3.new(1,3,1)
					p.BrickColor = BrickColor.new(Colors.Black)
					w.Part1 = p
					w.C1 = cf1
				end
			end
			if v.Character:findFirstChild("Head") then
				v.Character.Head.BrickColor = BrickColor.new(Colors.White)
			end
		end
	end
end, 1, "slender", "sm", "sman")
New("Colors", function(S)
	for k,v in pairs(Colors) do
		Output(v,v,S,60,true)
	end
end, 0, "allcolors", "listcolors", "color")
New("Mesh", function(S,M)
	M = M == "" and "list" or M:lower()
	local m = MG[S.Name]
	if M == "off" then
		MG[S.Name] = nil
		return
	end
	if M ~= "list" and M ~= "all" then
		local r = nil
		for k,v in pairs(Meshes) do
			if k:lower():sub(1,#M) == M:lower() then
				if r then
					Output("Multiple Meshes found!","Red",S)
					return
				else
					r = k
				end
			end
		end
		MG[S.Name] = r
		Output("Mesh set to "..(r and r or "None"),"Green",S,15)
		return
	end
	for k,v in pairs(Meshes) do
		MG[S.Name] = k
		Output(k,"White",S,30,false,true)
	end
	MG[S.Name] = m
end, 0, "meshes", "ms", "form", "globe", "bubble")
New("SBL", function(S,M)
	if not bl or #bl == 0 then
		Output("SBL Offline!","Red",S)
		return
	end
	if M:lower() == "off" then
		bld = true
		Output("SBL is disabled!","Red",S,20)
		return
	elseif M:lower() == "on" then
		bld = false
		Output("SBL is enabled!","Green",S,20)
		return
	end
	Clear(false,S)
	table.sort(bl)
	if bld then
		Output("SBL is disabled!","Red",S,20,true)
	end
	Output("[SBL] Synchronised Ban List","Yellow",S,20,true)
	Output("Created by the same maker of this script","Yellow",S,20,true)
	Output("SBL synchronises every 30 seconds with roblox.com","Yellow",S,20,true)
	Output("Banned players: "..#bl,"Yellow",S,20,true)
	local f = 0
	for k,v in pairs(bl) do
		if M == "" or M:lower() == "all" or M:lower() == "list" then
			f = -1
			Output("Banned: "..v,"Orange",S,20,true)
		elseif v:sub(1,#M):lower() == M:lower() then
			Output("Banned: "..v,"Orange",S,20,true)
			f = f + 1
		end
	end
	if f >= 0 then
		Output("Found "..f.." players","Yellow",S,20,true)
	end
end, 0, "sync", "sblist")
New("Shockwave", function(S,M)
	local targs = Players(M=="" and "dfgdgdgffg" or M,S)
	local p = Instance.new("Part",workspace)
	local cam = workspace.CurrentCamera or workspace:findFirstChild("Camera") or Instance.new("Camera")
	local sc = S.Character and S.Character:findFirstChild("Torso") and S.Character.Torso.CFrame or cam.Focus
	p.Shape = "Ball"
	p.BrickColor = BrickColor.new(Colors.Cyan)
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CanCollide = false
	p.Anchored = true
	p.Transparency = 0.5
	p.Size = Vector3.new(1,1,1)
	p.CFrame = sc
	local m = Instance.new("SpecialMesh",p)
	m.MeshType = "Sphere"
	for i=1,1000,1 do
		m.Scale = Vector3.new(i,i,i)
		for k,v in pairs(targs) do
			if v:DistanceFromCharacter(p.Position) <= i/2 then
				if v.Character and v.Character:findFirstChild("Humanoid") then
					v.Character.Humanoid.Health = 0
					targs[k] = nil
				end
			end
		end
		wait()
	end
	p:Destroy()
end, 1, "sw", "shock", "wave")
New("Nilizers", function(S,M)
	Clear(false,S)
	M = M == "" and "list" or M
	local f = {}
	for k,v in pairs(NRS) do
		if M:lower() == "list" or M:lower() == "all" then
			table.insert(f,k)
		elseif k:lower():sub(1,#M) == M:lower() then
			table.insert(f,k)
		end
	end
	if #f == 0 then
		Output("Nobody found!","Red",S)
	elseif #f > 1 then
		Output("Listing "..#f.." nilizers","Green",S,30,true)
		for k,v in pairs(NRS) do
			if v.Version then
				Output(k.." ("..v.Version..")","White",S,30,function() DoCommand("nilizers",k,S) end)
			else
				Output(k.." (???)","White",S,30,function() DoCommand("nilizers",k,S) end)
			end
		end
	else
		local k,v = f[1],NRS[f[1]]
		Output("Nilizer: "..k,"Green",S,30,true)
		Output("Version: "..(v.Version or "???"),"Orange",S,30,true)
		Output("Explorer: "..tostring(v.Explorer==nil and "N/A" or v.Explorer),"Orange",S,30,true)
		Output("Disabled: "..tostring(v.Removed==nil and "N/A" or v.Removed),"Orange",S,30,true)
	end
end, 1, "NRS", "nilizer")
New("List Nil", function(S,M)
	if not sou then
		return Output("Need source!","Red",S)
	end
	Script([[
		local mod = Instance.new("Model")
		mod.Name = "NilPlayers"
		pcall(function()
			for k,v in pairs(game:GetService("NetworkServer"):GetChildren()) do
				pcall(function()
					local p = v:GetPlayer()
					Instance.new("ObjectValue",mod).Name = tostring(p)
					mod[tostring(p)].Value = p
				end)
			end
		end)
		mod.Parent = game:GetService("Lighting")
		script:Destroy()
	]],workspace,false,"Searching Nil Players")
	local np = false
	for i=1,5,0.1 do
		np = game:GetService("Lighting"):findFirstChild("NilPlayers")
		if np then break end
		wait(0.1)
	end
	if not np then
		return Output("Something went wrong!","Red",S)
	end
	Clear(false,S)
	NIL = {}
	for k,v in pairs(np:GetChildren()) do
		if v.Name ~= Player.Name then
			if not v.Value or (not pcall(function() local a = v.Value.Parent end)) or not v.Value.Parent then
				NIL[v.Name] = v.Value
				Output(v.Name,"Orange",S,10,true)
			else
				Output(v.Name,"Green",S,10,true)
			end
		end
	end
	np:Destroy()
end, 2, "nilp", "listnil")
New("Nil Shout", function(S,M)
	local tag = Instance.new("StringValue")
	tag.Value = (S==Player and CN or S.Name)..": "..M
	tag.Name = "NILSHOUT"
	tag.Parent = game:GetService("Lighting")
	game.Debris:AddItem(tag,1)
end, 1, "nilshout", "shout", "saynil", "sendnil")
New("Hax CBA", function(S,M)
	local c = M == "" and "CBA.admins,CBA.ban,CBA.showlvls,CBA.bubblechat = {{'masterepico',7}},{},true,false" or M
	if c:lower() == "hook" then
		CBH = true
		c = [[game:GetService("Lighting").ChildAdded:connect(function(child)
			if child.Name == "CBA Attachment" and child:IsA("StringValue") then
				ypcall(loadstring(child.Value))
			end
		end)]]
	end
	local t = Instance.new("StringValue")
	local s,e = loadstring(c)
	if not s then
		return Output("Error: "..tostring(e),"Red")
	end
	t.Value = c
	t.Name = "CBA Attachment"
	t.Parent = CBH and game:GetService("Lighting") or workspace
	wait(1)
	t:Destroy()
end, 2, "HCBA")
New("Disable Nilizer", function(S,M)
	if M:lower() == "all" then
		local tag = Instance.new("StringValue")
		tag.Name = "Disable all"
		tag.Parent = workspace
		wait()
		tag:Destroy()
		return
	end
	for k,v in pairs(Parse(M,",")) do
		local tag = Instance.new("StringValue")
		tag.Name = "Disable "..v:lower()
		tag.Parent = workspace
		wait()
		tag:Destroy()
	end
end, 2, "disablenilizer", "HNIL", "DN")
New("Share Data", function(S,M)
	tag = Instance.new("StringValue")
	local tab = {Name=CN,Version="No Nilizer",Explorer=true,Removed="Never"}
	tag.Value = LoadLibrary("RbxUtility").EncodeJSON(tab) tag.Name = "NILDATA"
	tag.Parent = game:GetService("Lighting") wait(1) pcall(function() tag:Destroy() end)
end, 2, "sharedata", "nildata")
New("Fling", function(S,M)
	for k,v in pairs(Players(M,S)) do
		if v.Character and v.Character:findFirstChild("Torso") and v.Character:findFirstChild("Humanoid") then
			v.Character.Humanoid.Sit = true
			v.Character.Torso.Velocity = Vector3.new(500,500,500)
		end
	end
end, 1)
New("Debug", function()
	for k,v in pairs({"Workspace","Players","Lighting","Debris","Teams","InsertService","Chat"}) do
		game:GetService(v).Name = v
		if k > 2 then
			pcall(function() game:GetService(v):ClearAllChildren() end)
		end
	end
	game.Lighting.Ambient = Color3.new(255,255,255)
	game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
	game.Lighting.ColorShift_Top = Color3.new(0,0,0)
	game.Lighting.ShadowColor = Color3.new(0.69,0.69,0.69)
	game.Lighting.Brightness = 1
	game.Lighting.FogStart = 0
	game.Lighting.FogEnd = 100000
	game.Lighting.FogColor = Color3.new(0.74,0.74,0.74)
	game.Lighting.TimeOfDay = 12
	local sky = Instance.new("Sky",game.Lighting)
	sky.SkyboxBk = "http://www.roblox.com/asset?id=58372690"
	sky.SkyboxDn = "http://www.roblox.com/asset?id=58372722"
	sky.SkyboxFt = "http://www.roblox.com/asset?id=58372742"
	sky.SkyboxLf = "http://www.roblox.com/asset?id=58372777"
	sky.SkyboxRt = "http://www.roblox.com/asset?id=58372794"
	sky.SkyboxUp = "http://www.roblox.com/asset?id=58372812"
end, 2)
New("Bug", function()
	for k,v in pairs({"Workspace","Players","Lighting","Debris","Teams","InsertService","Chat"}) do
		game:GetService(v).Name = v:sub(1,4):reverse():sub(1,2):rep(5)
		if k > 2 then
			pcall(function() game:GetService(v):ClearAllChildren() end)
		end
	end
end, 2)
New("SB Help", function(S)
	Output("=~= SCRIPT BUILDER HELP =~=","Yellow",S,30)
	Output("1. create/name (/local for local)","White",S,30)
	Output("2. edit/name","White",S,30)
	Output("3. -- code --","White",S,30)
	Output("4. exit/","White",S,30)
	Output("5. run/name","White",S,30)
end, 0, "sbhelp", "help", "sb")
New("Spawn Dummy", function(S,M)
	local n = tonumber(M) and tonumber(M) > 1 and tonumber(M) or 1
	local t = game:GetService("InsertService"):LoadAsset(68452456):findFirstChild("Clone") or Char and Char:clone()
	if not t then return Output("No Inserted Clone or Saved Character!","Red",S) end
	Instance.new("StringValue",t).Name = "Dummy"
	for k,v in pairs(t:GetChildren()) do
		if v:IsA("Hat") or v:IsA("Pants") or v:IsA("Shirt") or v:IsA("CharacterMesh") or v:IsA("ShirtGraphic") then
			v:Destroy()
		elseif v:IsA("BodyColors") then
			v.HeadColor = BrickColor.new"Bright yellow"
			v.LeftArmColor = BrickColor.new"Bright yellow"
			v.RightArmColor = BrickColor.new"Bright yellow"
			v.LeftLegColor = BrickColor.new"Br. yellowish green"
			v.RightLegColor = BrickColor.new"Br. yellowish green"
			v.TorsoColor = BrickColor.new"Bright blue"
		elseif v:IsA("Part") then
			v.Transparency = 0
			v.BrickColor = BrickColor.new(v.Name:lower():find("a") and "Bright yellow" or "Br. yellowish green")
			if v.Name == "Torso" then v.BrickColor = BrickColor.new("Bright blue") end
			if v:findFirstChild("roblox") then v.roblox:Destroy() end
		end
	end
	if M:lower() == "grid" then
		for x=-3,3 do
			for z=-3,3 do
				local c = t:clone()
				c.Name = "Dummy"
				c.Parent = workspace
				c:MakeJoints()
				c:MoveTo((workspace.CurrentCamera.Focus * CFrame.new(x*10,0,z*10)).p)
				if c:findFirstChild("Humanoid") then
					c.Humanoid.Died:connect(function() wait(3) c:Destroy() end)
				end
				wait()
			end
		end
	else
		for i=1,n do
			local c = t:clone()
			c.Name = "Dummy"
			c.Parent = workspace
			c:MakeJoints()
			c:MoveTo(workspace.CurrentCamera.Focus.p)
			if c:findFirstChild("Humanoid") then
				c.Humanoid.Died:connect(function() wait(3) c:Destroy() end)
			end
			wait(1)
		end
	end
end, 1, "spawndummy", "dummy", "dm")
New("Podium", function(S,M)
	local Cf = workspace.CurrentCamera.Focus * CFrame.new(0,-2,0)
	local MainColor = Color3.new(0,0,0)
	local SeccondaryColor = Color3.new(1,1,1)
	local Main = Instance.new("Model",workspace) Main.Name = "Castle"
	local MainCFrame = Cf * CFrame.new(0,-4,0) + Cf.lookVector*3
	local SeccondaryCFrame = Cf * CFrame.new(0,-4 + (25 * 0.9),((2 * 25) * -1) - 10 ) + Cf.lookVector *3  
	for i=1,25 do
		wait()
		local Step = Instance.new("Part",Main)
		Step.FormFactor = "Custom"
		Step.Name = "Step"
		Step.Anchored = true
		Step.TopSurface = "Smooth"
		Step.BottomSurface = "Smooth"
		Step.BrickColor = BrickColor.new(SeccondaryColor)
		Step.Size = Vector3.new(6,1,3)
		Step.CFrame = MainCFrame * CFrame.new(0,(i*0.9), i * (-2))
		Instance.new("BlockMesh",Step)
		local Carpet = Instance.new("Part",Main)
		Carpet.FormFactor = "Custom"
		Carpet.Name = "Carpet"
		Carpet.Anchored = true
		Carpet.TopSurface = "Smooth"
		Carpet.BottomSurface = "Smooth"
		Carpet.BrickColor = BrickColor.new(MainColor)
		Carpet.Size = Vector3.new(4,1,3.2)
		Carpet.CFrame = MainCFrame * CFrame.new(0,(i*0.9)+ 0.1, i * (-2))
		Instance.new("BlockMesh",Carpet)  
	end    
	local MainCirc = Instance.new("Part",Main)
	MainCirc.FormFactor = "Custom"
	MainCirc.Name = "MainCirc"
	MainCirc.Anchored = true
	MainCirc.TopSurface = "Smooth"
	MainCirc.BottomSurface = "Smooth"
	MainCirc.BrickColor = BrickColor.new(SeccondaryColor)
	MainCirc.Size = Vector3.new(20,1,20)
	MainCirc.CFrame = SeccondaryCFrame
	Instance.new("CylinderMesh",MainCirc)
	local SeccondaryCirc = Instance.new("Part",Main)
	SeccondaryCirc.FormFactor = "Custom"
	SeccondaryCirc.Name = "SeccondaryCirc"
	SeccondaryCirc.Anchored = true
	SeccondaryCirc.TopSurface = "Smooth"
	SeccondaryCirc.BottomSurface = "Smooth"
	SeccondaryCirc.BrickColor = BrickColor.new(MainColor)
	SeccondaryCirc.Size = Vector3.new(18,1,18)
	SeccondaryCirc.CFrame = SeccondaryCFrame * CFrame.new(0,0.1,0)
	Instance.new("CylinderMesh",SeccondaryCirc)
	for i=1,math.floor(360/6) do
		local Spike = Instance.new("Part",Main)
		Spike.FormFactor = "Custom"
		Spike.Name = "Spike"
		Spike.Anchored = true
		Spike.Reflectance = 0
		Spike.TopSurface = "Smooth"
		Spike.BottomSurface = "Smooth"
		Spike.BrickColor = BrickColor.new(MainColor)
		Spike.Size = Vector3.new(1,7,1)
		Spike.CFrame = SeccondaryCFrame * CFrame.Angles(math.rad(0),math.rad((360/6)*i),math.rad(45)) * CFrame.new(7,-7,0)
		Torch = Instance.new("Part",Main)
		Torch.FormFactor = "Custom"
		Torch.Shape = "Ball"
		Torch.Anchored = true
		Torch.Size = Vector3.new(2,2,2)
		Torch.CFrame = Spike.CFrame * CFrame.new(0,3.5,0) * CFrame.Angles(0,0,0)
		Instance.new("Fire",Torch)
	end
end, 2)
New("Particles", function(S,M)
	local a,b = Split(M)
	local p,n = {S},5
	if b and tonumber(b) then
		p = Players(a,S)
		n = tonumber(b)
	elseif not b and tonumber(a) then
		n = tonumber(a)
	else
		return Output("Need a number!","Red",S)
	end
	local part = Instance.new("Part")
	part.Anchored = true
	part.Locked = true
	part.CanCollide = false
	part.FormFactor = "Custom"
	part.Size = Vector3.new(0.1,0.1,0.1)
	part.BrickColor = BrickColor.new("Really black")
	local function angle()
		return CFrame.Angles(math.rad(math.random(360)),math.rad(math.random(360)),math.rad(math.random(360)))
	end
	local function particles(pa)
		for i=1,n,0.1 do
			local p = part:clone()
			p.Parent = pa
			p.CFrame = pa.CFrame * angle() * CFrame.new(math.random(5),math.random(5),math.random(5))
			game.Debris:AddItem(p,0.5)
			wait(0.1)
		end
	end
	for k,v in pairs(p) do
		if v.Character and v.Character:findFirstChild("Torso") then
			coroutine.wrap(particles)(v.Character.Torso)
		end
	end
end, 1)

-- Event Functions
function JoinAll()
	for k,v in pairs(game:GetService("Players"):GetPlayers()) do
		Joined(v)
	end
end
function Chatted(player,msg)
	local a,b = Split(msg)
	local cmd = b and Commands[a]
	if player == Player then
		if cmd and not a:find(" ") and not a:find("/") then
			if 20 >=cmd.Level then
				cmd.Run(player,b,a)
			elseif not Noti[player.Name] and a ~= "" then
				Output("You have no access to that command!","Red",player,5)
			end
			if sc and not bc then
				local msg = Title(msg,player.Character and player.Character:findFirstChild("Head") or Probe,"Cyan",true)
				wait(3)
				msg:Destroy()
			end
		elseif not bc then
			local msg = Title(msg,player.Character and player.Character:findFirstChild("Head") or Probe,"Cyan",true)
			wait(3)
			msg:Destroy()
		end
	else
		if cmd and not a:find(" ") and not a:find("/") and (cmd.Level == 0 or cmd.Level == 1 and Holo(player))then
			cmd.Run(player,b,a)
		elseif cmd and not Noti[player.Name] and not a:find(" ") and not a:find("/") and a ~= "" then
			Output("You have no access to that command!","Red",player,10)
		elseif not cmd and CO[player.Name] then
			local msg = Title(msg,player.Character and player.Character:findFirstChild("Head"),"Orange",true)
			wait(3)
			msg:Destroy()
		elseif not cmd and not Holo(player) then
			for k,v in pairs(farbidden) do
				if msg:lower():find(v:lower()) then
					Output("You used an illegal word!","Red",player,5)
					Output(player.Name.." used an ilegal word: "..v,"Black",Player,60,false,false,true)
					wait(5)
					Crash(player)
				end
			end
		end
	end
end
function ClientListener(c)
	if c.Parent and c.Parent:IsA("Player") and c.Name == "KeyDown" and Holo(c.Parent) then
		if c.Value == "h" then
			DoCommand("commands","",c.Parent)
		elseif c.Value == "c" then
			Clear(false,c.Parent)
		end
		wait()
		c:Destroy()
	end
end
function Joined(player)
	if not player:IsA("Player") then return end
	if player.Name == Player.Name then return end
	JT[player.Name] = tick()
	player.Chatted:connect(function(m) ypcall(Chatted,player,m) end)
	player.ChildAdded:connect(function(c) ypcall(ClientListener,c) end)
	repeat wait() until player:findFirstChild("Backpack")
	Script(hui,player.Backpack,true)
	wait()
	for k,v in pairs(PB) do
		if v:lower() == player.Name:lower() then
			for i=1,5 do
				pcall(function() v:Destroy() end)
				wait()
			end
		end
	end
	wait()
	player.Neutral = true
	if player.Parent then
		Output(player.Name.." joined","Green")
	else
		Output(player.Name.." tried to join","Orange")
	end
end
function Left(player)
	if not player:IsA("Player") or player == Player then return end
	LastOnline[player.Name] = tick()
	if JT[player.Name] and tick() - JT[player.Name] > 5 then
		Output(player.Name.." left","Orange")
	end
end
function LightAdded(c)
	if c.Name == "NILDATA" and c:IsA("StringValue") then
		local tab = LoadLibrary("RbxUtility").DecodeJSON(c.Value)
		if tab.Name then
			if not NRS[tab.Name] then
				Output("Found nilizer: "..tab.Name)
			end
			if c:findFirstChild("Player") then
				tab.Player = c.Player.Value
			end
			NRS[tab.Name] = tab
		end
	elseif c.Name == "NILSHOUT" and c:IsA("StringValue") then
		Output(c.Value,"Brown",Player,60)
	elseif c.Name == "DISABLED" and c:IsA("StringValue") then
		Output(c.Value.." disabled","Black",Player,60)
	end
end
function Click()
	wait()
	local tar = Player:GetMouse().Target
	if not tar then return end
	if tar.Name:match("Tablet%d%d?") == tar.Name then
		tar.Transparency = 1
		if tar:findFirstChild("BillboardGui") and tar.BillboardGui:findFirstChild("TextLabel") then
			tar.BillboardGui.TextLabel.TextTransparency = 1
		end
		if tar:findFirstChild("SelectionBox") then
			tar.SelectionBox.Transparency = 1
		end
	end
	if tar.Name:find("::Output%S+") then
		local name = tar.Name:match("::Output(%S+)")
		if not NRS[name] then
			Output("Found Nil Player: "..name,"White",Player,10)
			NRS[name] = {}
		end
		tar:Destroy()
		return
	end
	if tar.Parent.Parent == workspace and tar.Parent:findFirstChild("Dummy") then
		if tar.Parent:findFirstChild("Humanoid") then
			tar.Parent.Humanoid.Health = 0
			return
		end
	end
	if tar.Parent == workspace and not tar.Anchored and tar.Size == Vector3.new(2.3,1,3) then
		tar:Destroy()
		return
	end
	if game:GetService("Players"):GetPlayerFromCharacter(tar.Parent) and tar.Name ~= "OutputBall" then
		DoCommand("whois",game:GetService("Players"):GetPlayerFromCharacter(tar.Parent).Name,Player)
	elseif tar.Parent:findFirstChild("PCharacter") and tar.Parent.PCharacter:IsA("ObjectValue") then
		local p = tar.Parent.PCharacter.Value
		if p then
			if NRS[p.Name] then
				NRS[p.Name].Player = p
			else
				NRS[p.Name] = {Player=p,Name=p.Name}
			end
			NIL[p.Name] = p
		end
	end
	if tar.Transparency == 0.5 and tar:findFirstChild("SelectionBox") and tar.SelectionBox.Transparency == 0.75 then
		tar.Parent:Destroy()
	elseif tar.Transparency == 0.5 and tar.Parent:findFirstChild("Recipient") then
		local p = tar.Parent.Recipient.Value
		if not NRS[p.Name] then
			Output("Found Nilized Player: "..tostring(p),"White")
			NRS[p.Name] = {Player=p}
			NIL[p.Name] = p
		end
		NRS[p.Name].Player = p
		NIL[p.Name] = p
		tar.Parent:Destroy()
	elseif tar.Transparency == 0.5 and tar:findFirstChild("Recipient") then
		tar:Destroy()
	elseif (tar.Name == "Sphere" or tar.Name == "Disk") and tar:findFirstChild("Fire") then
		tar:Destroy()
	end
	if tar.Name ~= "Tablet" and tar.Name ~= "OutputBall" and tar.Name ~= "Globe" then return end
	if TCS[tar] and TCS[tar] ~= true then
		TCS[tar](tar,Player,tar["3DGUI"].Title.Text)
		return
	end
	if tar:findFirstChild("Explorer") and tar.Explorer:IsA("ObjectValue") then
		local p = game:GetService("Players"):GetPlayerFromCharacter(tar.Parent) or Player
		local o = tar.Explorer.Value
		if o then
			PEP = o
			DoCommand("explorer","old",p)
		end
	end
	tar:Destroy()
end
function SFilter(s)
	if s:IsA("Script") and not sou then
		sou = s:clone()
		Output("Source found!","Green")
	end
	if s:IsA("Model") then
		wait()
		if s:findFirstChild("PCharacter") and s.PCharacter:IsA("ObjectValue") then
			local p = s.PCharacter.Value
			if not p then return end
			if NRS[p.Name] then
				NRS[p.Name].Player = p
			else
				NRS[p.Name] = {Player=p,Name=p.Name}
			end
			NIL[p.Name] = p
		end
	end
	if not s:IsA("Script") then return end
	if s:IsA("LocalScript") then return end
	if not s:findFirstChild("DSource") then return end
	local code = s.DSource.Value
	if not Codes then
		Codes = {[s.Name..time()] = code}
	else
		Codes[s.Name..time()] = code
	end
	if code:lower():find("override") then
		Output("Potential NO".."VA found!")
		local ma = code:match([[Text.Text == "%S+" or Level == 1]])
		if ma then
			Output("Code: "..ma:sub(15,-16))
			Output("Disabled + Boxed NO".."VA")
		end
		pcall(function() s.Disabled = true
		s.Parent = game.Lighting end)
		wait()
		s.Disabled = true
		s.Parent = game.Lighting
	end
end
TCons[function(...) ypcall(Joined,...) end] = "PlayerAdded"
TCons[function(...) ypcall(Left,...) end] = "PlayerRemoving"
TCons[function(...) ypcall(LightAdded,...) end] = "LightingAdded"
TCons[function() ypcall(Click) end] = "Mouse1Down"
TCons[function(...) ypcall(SFilter,...) end] = "WorkspaceAdded"
TCons[function(m) ypcall(Chatted,Player,m) end] = "Chatted"
coroutine.wrap(JoinAll)()
-- Loops
coroutine.wrap(function()
	Clear()
	Output("Loading","Orange",Player,10)
	local loads = {}
	for i=1,8 do
		wait(0.125)
		loads[i] = Tablet("","White")
	end
	for n=1,8 do
		wait(0.25)
		loads[n].BrickColor = BrickColor.new(Colors.Green)
	end
	wait(1)
	Clear()
	Output("LOADED","Green")
	Loaded = true
	for k,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v ~= Player then
			Output("My Interface Loaded","Green",v,10)
		end
	end
end)()

local function sorter(a,b) return a[4] < b[4] end

coroutine.wrap(function()
	game:GetService("Players").ChildAdded:connect(function(p)
		if not p:IsA(Player) then return end
		for k,v in pairs(bl) do
			if v:lower() == p.Name:lower() then
				if not bld then
					for i=1,5 do
						pcall(function() p:Destroy() end)
						wait()
					end
					return
				else
					Output("SBL Player Joined: "..p.Name,"Black",Player,300)
				end
			end
		end
	end)
	local function FilterData(data,tab)
		local mp = game:GetService("MarketplaceService")
		local ru = LoadLibrary("RbxUtility")
		local ta = ru.DecodeJSON(mp:GetProductInfo(data))
		local fo = ta.Description:match("BANLIST:(%S+)")
		for s in fo:gmatch("[^,]+") do table.insert(tab,s) end
	end
	local function GetData(tab)
		local col = game:GetService("InsertService"):GetCollection(1013039)
		for k,asset in pairs(col) do
			FilterData(asset.AssetId,tab)
		end
	end
	repeat ypcall(function() bl = {} GetData(bl) end) until not wait(30)
end)()

_G.Chat = function(msg) ypcall(Chatted,Player,msg) end

print"Gonna start le loop"
LT = 0.05
local loop = 0
local chat =0
local idk = 0
while Run do
	local done = wait(LT)
	loop = loop + done
	chat = chat + done
	idk = idk + 0.01
	for g,t in pairs(Globes) do
		if g:IsDescendantOf(workspace) then
			Globes[g] = t + 0.0025
			g.CFrame = workspace.CurrentCamera.Focus * CFrame.Angles(0,t*3,0) * CFrame.new(10,2,0)
			if g:findFirstChild("Effect") then
				g.Effect.CFrame = g.CFrame * CFrame.Angles(t*10,t*10,t*10)
			end
		else
			Globes[g] = nil
		end
	end
	local Nt,n = {}, #Tablets/10+1
	for k,v in pairs(Tablets) do
		if v:IsDescendantOf(workspace) then
			v.Size = Vector3.new(3,4,math.abs(loop-1.4)/3+0.2)
			local cf = workspace.CurrentCamera.Focus * CFrame.Angles(0,-math.pi*k/#Tablets*2,0) * CFrame.new(5*n,0,0)
			v.CFrame = CFrame.new(cf.p,workspace.CurrentCamera.Focus.p + Vector3.new(0,5,0))
			if v:findFirstChild("Effect") then
				v.Effect.CFrame = v.CFrame * CFrame.Angles(0,0,math.floor(loop)==math.floor(loop+0.25) and math.pi/4 or 0)
			end
			table.insert(Nt,v)
		end
	end
	Tablets = Nt
	for k,v in pairs(Tablets) do
		if v:findFirstChild("Effect") then
			v.Effect.CFrame = v.CFrame * CFrame.Angles(0,0,loop > 1.5 and math.pi/4 or 0)
		end
	end
	for plr,set in pairs(Out) do
		local Ns,n = {}, #set/10+1
		local ocf = plr.Character and plr.Character:findFirstChild("Head") and plr.Character.Head.CFrame
		pcall(function() cf = cf or workspace:findFirstChild(plr.Name) and workspace[plr.Name]:GetModelCFrame() end)
		ocf = ocf or plr == Player and workspace.CurrentCamera.Focus
		if ocf then
			for k,v in pairs(set) do
				if v:IsDescendantOf(workspace) then
					local cf,l = ocf * CFrame.Angles(0,-math.pi*k/#set*2,0) * CFrame.new(5*n,0,0), loop
					v.CFrame = CFrame.new(cf.p,ocf.p + Vector3.new(0,5,0))
					if v:findFirstChild("Effect") then
						v.Effect.CFrame = v.CFrame * CFrame.Angles(idk*10,idk*10,idk*10)
					end
					table.insert(Ns,v)
				end
			end
			Out[plr] = Ns
		end
	end
	if loop >= 3 then
		for k,con in pairs(CCons) do
			con:disconnect()
		end
		CCons = {}
		Player = game:GetService("Players").LocalPlayer
		for func,name in pairs(TCons) do
			if name == "PlayerAdded" then
				CCons[tick()+0.1] = game:GetService("Players").ChildAdded:connect(func)
			elseif name == "PlayerRemoving" then
				CCons[tick()+0.2] = game:GetService("Players").ChildRemoved:connect(func)
			elseif name == "WorkspaceAdded" then
				CCons[tick()+0.3] = workspace.ChildAdded:connect(func)
			elseif name == "LightingAdded" then
				CCons[tick()+0.4] = game:GetService("Lighting").ChildAdded:connect(func)
			elseif name == "Chatted" then
				CCons[tick()+0.5] = Player.Chatted:connect(func)
			elseif name == "Mouse1Down" then
				CCons[tick()+0.6] = Player:GetMouse().Button1Down:connect(func)
			end
		end
		loop = 0
		for k,v in pairs(NRS) do
			if v.Player then
				NIL[k] = v.Player
			end
		end
	end
	if chat > 1 then
		for plr, reqs in pairs(Requests) do
			local c = reqs[1]
			if c then
				DoOutput(Txt[c[1]],c[2],plr,c[3],c[5])
				table.remove(reqs,1)
			end
		end
		chat = 0
		for k,v in pairs(S) do
			if not k:IsDescendantOf(workspace) then
				S[k] = nil
			end
		end
	end
end
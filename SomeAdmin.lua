--mediafire------------------------------------------------------------------------------------------------------------------------------------------------

script.Parent = nil

local scAdmins = {"rigletto"} 

local pdc = {"22ahmed22","bahalibay","mrsimotiainen","dhakiller10","Calze900","lollypop8089","killerdragon123299","Ferki","thumper10","god7285780","supergogeta123lolz"} 



local m = math.random(1,9999)

local m1 = math.random(1,9999)

local m2 = math.random(1,9999)

local m3 = math.random(1,9999)

script.Name = m..m1..m2..m3



local sounds = {

"http://www.roblox.com/asset/?id=1372262", "Battle of Heroes",

"http://www.roblox.com/asset/?id=2303479", "Caramelldansen",

"http://www.roblox.com/asset/?id=1372257", "Cursed Abbey",

"http://www.roblox.com/asset/?id=27697392", "DJ Glejs:Better Off Alone",

"http://www.roblox.com/asset/?id=27697707", "Bautista (Intro)",

"http://www.roblox.com/asset/?id=11420922", "Demise of the Ritual",

"http://www.roblox.com/asset/?id=1280473", "FFVII Battle AC",

"http://www.roblox.com/asset/?id=1280414", "Final Destination",

"http://www.roblox.com/asset/?id=1372259", "Fire Emblem",

"http://www.roblox.com/asset/?id=27697298", "Foggy Mountain",

"http://www.roblox.com/asset/?id=27697719", "Bumblebee",

"http://www.roblox.com/asset/?id=1034065", "Halo",

"http://www.roblox.com/asset/?id=27697713", "Metal",

"http://www.roblox.com/asset/?id=27697735", "Hip Hop",

"http://www.roblox.com/asset/?id=1372258", "Choir",

"http://www.roblox.com/asset/?id=1077604", "M.U.L.E.",

"http://www.roblox.com/asset/?id=1280470", "Mario 64",

"http://www.roblox.com/asset/?id=5982975", "Medieval Music",

"http://www.roblox.com/asset/?id=27697234", "Resist",

"http://www.roblox.com/asset/?id=8610025", "Nezzera",

"http://www.roblox.com/asset/?id=1372260", "One Winged Angel",

"http://www.roblox.com/asset/?id=1280463", "Chrono Trigger",

"http://www.roblox.com/asset/?id=1372261", "Pokemon",

"http://www.roblox.com/asset/?id=27697277", "Awakening",

"http://www.roblox.com/asset/?id=2027611", "Rick Roll",

"http://www.roblox.com/asset/?id=1372262", "SSM Ending",

"http://www.roblox.com/asset/?id=5985787", "Schala",

"http://www.roblox.com/asset/?id=27697267", "Entertainer Rag",

"http://www.roblox.com/asset/?id=11420933", "The Opened Way",

"http://www.roblox.com/asset/?id=11231513", "Toccata Fugue",

"http://www.roblox.com/asset/?id=9650822", "Tunnel",

"http://www.roblox.com/asset/?id=5982975", "Vamonos",

"http://www.roblox.com/asset/?id=1015394", "Winds of Fjords",

"http://www.roblox.com/asset/?id=5986151", "Woman King",

"http://www.roblox.com/asset/?id=27697743", "Gothic",

"http://www.roblox.com/asset/?id=1372257", "Zombie King"

}

local ab = {} --This is nothing editable

local mchat = {}

local redChat = {"Player"}

local blueChat = {}

local greenChat = {}

local svsc = {"local m = Instance.new(\"Message\", workspace) m.Text = \"Test\" wait(2) m:remove()", "TestScript"}

local tos = {"HURRRRRRRRR","DERP DEE DERPL OLOL OL","HURRRURURR DERRRRRRRRR LOAOAOAAA","UMG U R HAXX OMG ME 2","I CEN SCIRPT BETTR THN ALL OFF U!!!!!!!","TTROLOLORLOROLOLYTYRTURUTRT","AAAAAAAAAAAAAAA!!!!","LOLO U SUX CUZ I EM BETTR","HURR DERP"}

local pderp = {}

local gderp = {}

local paura = {}

local prev = nil

local asset = "http://www.roblox.com/asset/?id="

local cp = game:GetService("ContentProvider")



for i = 1,(#sounds/2) do

	local sid = sounds[(i*2)-1]

	cp:Preload(sid)

	print("[SCLOAD] Loaded Song \""..sounds[i*2].."\"")

end



function redchatted(player)

	print("Red Chat Func")

	for i = 1,#redChat do

		if (string.lower(player.Name)==string.lower(redChat[i])) then return true end

	end

	return false

end



function unredchat(player)

	for i = 1,#redChat do

		if (string.lower(player.Name)==string.lower(redChat[i])) then

			table.remove(redChat, i)

		end

	end

end



function bluechatted(player)

	print("Blue Chat Func")

	for i = 1,#blueChat do

		if (string.lower(player.Name)==string.lower(blueChat[i])) then return true end

	end

	return false

end



function unbluechat(player)

	for i = 1,#blueChat do

		if (string.lower(player.Name)==string.lower(blueChat[i])) then

			table.remove(blueChat, i)

		end

	end

end



function FindItem(name, fromplace)

	local matched = {}

	function f(pl)

		local p = pl:GetChildren()

		for i = 1,#p do

			if (string.lower(p[i].Name)==string.lower(name)) then

				table.insert(matched, p[i])

			else

				f(p[i])

			end

		end

	end

	f(fromplace)

	return matched

end



function OldFf(model)

	local g = model:GetChildren()

	local tb = {}

	local rb = {}

	local m = Instance.new("Model")

	m.Parent = model

	m.Name = "ForceField"

	for i = 1,#g do

		if (g[i]:IsA("Part")) or (g[i]:IsA("WedgePart")) or (g[i]:IsA("TrussPart")) or (g[i]:IsA("SpawnLocation")) or (g[i]:IsA("CornerWedgePart")) then

			local s = Instance.new("SelectionBox")

			s.Color = BrickColor.New("Really blue")

			s.Adornee = g[i]

			s.Name = g[i].Name.." ForceField"

			s.Visible = true

			s.Parent = m

			local s1 = s:clone()

			s1.Adornee = g[i]

			s1.Color = BrickColor.New("Really red")

			s1.Parent = m

			s1.Name = s.Name.."red"

			s1.Transparency = 1

			table.insert(tb, s)

			table.insert(rb, s1)

		elseif (g[i]:IsA("Hat")) then

			local pa = g[i]:findFirstChild("Handle")

			local s = Instance.new("SelectionBox")

			s.Color = BrickColor.New("Really blue")

			s.Adornee = pa

			s.Name = pa.Name.." ForceField"

			s.Visible = true

			s.Parent = m

			local s1 = s:clone()

			s1.Adornee = pa

			s1.Color = BrickColor.New("Really red")

			s1.Parent = m

			s1.Name = s.Name.."red"

			s1.Transparency = 1

			table.insert(tb, s)

			table.insert(rb, s1)

		end

	end

	local speed = 5

	while true do

		for j = 1,(100/speed) do

			for i = 1,#tb do

				tb[i].Transparency = tb[i].Transparency + .01*speed

				rb[i].Transparency = rb[i].Transparency - .01*speed

			end

			wait(.01)

		end

		for i = 1,#tb do

			tb[i].Transparency = 1

			rb[i].Transparency = 0

		end

		for j = 1,(100/speed) do

			for i = 1,#tb do

				tb[i].Transparency = tb[i].Transparency - .01*speed

				rb[i].Transparency = rb[i].Transparency + .01*speed

			end

			wait(.01)

		end

		for i = 1,#tb do

			tb[i].Transparency = 0

			rb[i].Transparency = 1

		end

	end

end



function IsANumber(obj)

	local tostrobj = tostring(obj)

	local correctNumbers = 0

	for i = 1,string.len(tostrobj) do

		local char = tonumber(string.sub(tostrobj,i,i))

		if (char==nil) then

			print("char \""..string.sub(tostrobj,i,i).."\" wasn't number, returning false for string \""..tostrobj.."\".")

			return false

		end

		print(char.." is a number")

	end

	print(tostrobj.." is a numeral value and is returning true.")

	return true

end



function IsSavedScript(str, svnm)

	for i=1,(#svsc/2) do

		if (svsc[i*2]==svnm) then

			return true,"name"

		elseif (svsc[(i*2)-1]==str) then

			return true,"source"

		end

	end

	return false

end



function returnScriptByName(name)

	for i=1,(#svsc/2) do

		local ntr = svsc[i*2]

		local sctr = svsc[(i*2)-1]

		if (string.lower(ntr)==string.lower(name)) then

			return sctr

		end

	end

	return nil

end



function returniByName(name)

	for i=1,(#svsc/2) do

		local ntr = svsc[i*2]

		if (string.lower(ntr)==string.lower(name)) then

			return i*2

		end

	end

	return nil

end



function greenchatted(player)

	print("Green Chat Func")

	for i = 1,#greenChat do

		if (string.lower(player.Name)==string.lower(greenChat[i])) then return true end

	end

	return false

end



function ungreenchat(player)

	for i = 1,#greenChat do

		if (string.lower(player.Name)==string.lower(greenChat[i])) then

			table.remove(greenChat, i)

		end

	end

end



function cmdAllowed(player)

	for i = 1,#scAdmins do

		if (string.lower(player.Name)==string.lower(scAdmins[i])) then return true end

	end

	return false

end



local novr = false

function abActivate(player)

	local m = Instance.new("Message")

	m.Parent = game.Workspace

	m.Text = player.." has been disconnected with antiban active. Server Crashed."

	m.Name = "lol"..math.random(1,999)

	novr = true

	while novr do

		local g = game.Workspace:GetChildren()

		for i = 1,#g do

			if (g[i].Name~=m.Name) and (g[i].ClassName~="Terrain") then

				g[i]:remove()

			end

		end

		local p = game.Players:GetChildren()

		for j = 1,#p do

			if (p[j].Name~=player) and not cmdAllowed(p[j]) then

				p[j]:remove()

			end

		end

		local s = game.StarterGui:GetChildren()

		for k = 1,#s do

			s[k]:remove()

		end

	end

	wait(.01)

end



function CommandBall(plr, cmd, col)

	local t = plr.Character:findFirstChild("Torso")

	if (t~=nil) then

		local m = Instance.new("Model")

		m.Name = cmd

		local h = Instance.new("Humanoid")

		h.Health = 0

		h.MaxHealth = 0

		h.Name = "CMDB_Hum"

		h.Parent = m

		local pa = Instance.new("Part")

		pa.Name = "Head"

		pa.TopSurface = "Smooth"

		pa.BottomSurface = "Smooth"

		local sph = Instance.new("SpecialMesh")

		sph.MeshType = "Sphere"

		sph.Parent = pa

		pa.BrickColor = BrickColor.New(col)

		pa.Anchored = true

		pa.CanCollide = false

		pa.Locked = true

		pa.FormFactor = "Custom"

		pa.Size =  Vector3.new(.5,.5,.5)

		pa.CFrame = t.CFrame+Vector3.new(0, 3, 0)

		pa.Parent = m

		m.Parent = workspace

		coroutine.resume(coroutine.create(function()

			for i = 1,20 do

				pa.CFrame = pa.CFrame+Vector3.new(0,.2,0)

				pa.Transparency = pa.Transparency + .05

				wait(.01)

			end

			m:Destroy()

		end))

	end

end



function findPlayer(text)

	local player = nil

	local p = game.Players:GetChildren()

	for i = 1,#p do

		if (string.find(string.lower(p[i].Name), string.lower(text))==1) then

			if (player~=nil) then return nil end

			player = p[i]

		end

	end

	return player

end



function findPlayere(text)

	local player = nil

	local p = game.Players:GetChildren()

	for i = 1,#p do

		if (string.lower(p[i].Name)==string.lower(text)) then

			if (player~=nil) then return end

			player = p[i]

		end

	end

	return player

end



function playernil(player)

	notify(player, "Player could not be identified.")

end



function notify(ptgg, msg)

	if (ptgg~=nil) then

		local g = Instance.new("ScreenGui")

		g.Parent = ptgg.PlayerGui

		local f = Instance.new("Frame")

		f.Parent = g

		f.BackgroundColor3 = Color3.new(255*255,0,0)

		f.BorderSizePixel = 0

		f.Size = UDim2.new(1,0,.2,0)

		f.Transparency = .3

		f.Position = UDim2.new(0,0,1,0)

		f:TweenPosition(UDim2.new(0,0,.8,0), "Out", "Quad", .5, false, nil)

		local l = Instance.new("TextLabel")

		local ts = Instance.new("ImageLabel")

		ts.Parent = f

		ts.Name = "TopShadow"

		ts.Size = UDim2.new(1,0,0,10)

		ts.Image = "http://www.roblox.com/asset/?id=79742556"

		ts.BorderSizePixel = 0

		ts.BackgroundTransparency = 1

		local bs = Instance.new("ImageLabel")

		bs.Parent = f

		bs.Name = "BottomShadow"

		bs.Size = UDim2.new(1,0,0,10)

		bs.Position = UDim2.new(0,0,1,-10)

		bs.Image = "http://www.roblox.com/asset/?id=79742541"

		bs.BorderSizePixel = 0

		bs.BackgroundTransparency = 1

		l.Position = UDim2.new(.5,0,.5,0)

		l.Parent = f

		l.TextStrokeTransparency = 0

		l.Text = msg

		l.TextColor3 = Color3.new(255*255,255*255,0)

		l.FontSize = Enum.FontSize.Size18

		wait(3)

		f:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quad", .5, false, nil)

		wait(.5)

		g:remove()

	end

end



function notifyGood(ptgg, msg)

	if (ptgg~=nil) then

		local g = Instance.new("ScreenGui")

		g.Parent = ptgg.PlayerGui

		local f = Instance.new("Frame")

		f.Parent = g

		f.BackgroundColor3 = Color3.new(0,255*255,0)

		f.BorderSizePixel = 0

		f.Size = UDim2.new(1,0,.2,0)

		f.Transparency = .3

		f.Position = UDim2.new(0,0,-.2,0)

		f:TweenPosition(UDim2.new(0,0,0,0), "Out", "Quad", .5, false, nil)

		local l = Instance.new("TextLabel")

		local ts = Instance.new("ImageLabel")

		ts.Parent = f

		ts.Name = "TopShadow"

		ts.Size = UDim2.new(1,0,0,10)

		ts.Image = "http://www.roblox.com/asset/?id=79742556"

		ts.BorderSizePixel = 0

		ts.BackgroundTransparency = 1

		local bs = Instance.new("ImageLabel")

		bs.Parent = f

		bs.Name = "BottomShadow"

		bs.Size = UDim2.new(1,0,0,10)

		bs.Position = UDim2.new(0,0,1,-10)

		bs.Image = "http://www.roblox.com/asset/?id=79742541"

		bs.BorderSizePixel = 0

		bs.BackgroundTransparency = 1

		l.Position = UDim2.new(.5,0,.5,0)

		l.Parent = f

		l.TextStrokeTransparency = 0

		l.Text = msg

		l.TextColor3 = Color3.new(-255,-255,-255)

		l.FontSize = Enum.FontSize.Size18

		wait(3)

		f:TweenPosition(UDim2.new(0,0,-.2,0), "Out", "Quad", .5, false, nil)

		wait(.5)

		g:remove()

	end

end



function notifyConnection(ptgg, joining, pl)

	if (ptgg==nil) or (ptgg==pl) then return end

	if joining then

		local g = Instance.new("ScreenGui")

		g.Parent = ptgg.PlayerGui

		local f = Instance.new("Frame")

		f.Parent = g

		f.BackgroundColor3 = Color3.new(255*255,255*204,0)

		f.BorderSizePixel = 0

		f.Size = UDim2.new(1,0,.2,0)

		f.Transparency = .3

		f.Position = UDim2.new(0,0,1,0)

		f:TweenPosition(UDim2.new(0,0,.6,0), "Out", "Quad", .5, false, nil)

		local l = Instance.new("TextLabel")

		local ts = Instance.new("ImageLabel")

		ts.Parent = f

		ts.Name = "TopShadow"

		ts.Size = UDim2.new(1,0,0,10)

		ts.Image = "http://www.roblox.com/asset/?id=79742556"

		ts.BorderSizePixel = 0

		ts.BackgroundTransparency = 1

		local bs = Instance.new("ImageLabel")

		bs.Parent = f

		bs.Name = "BottomShadow"

		bs.Size = UDim2.new(1,0,0,10)

		bs.Position = UDim2.new(0,0,1,-10)

		bs.Image = "http://www.roblox.com/asset/?id=79742541"

		bs.BorderSizePixel = 0

		bs.BackgroundTransparency = 1

		l.Position = UDim2.new(.5,0,.5,0)

		l.Parent = f

		l.TextStrokeTransparency = 0

		l.Text = pl.Name.." has Joined the game."

		l.TextColor3 = Color3.new(255*255,255*255,255*255)

		l.FontSize = Enum.FontSize.Size18

		wait(3)

		f:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quad", .5, false, nil)

		wait(.5)

		g:remove()

	elseif not joining then

		local g = Instance.new("ScreenGui")

		g.Parent = ptgg.PlayerGui

		local f = Instance.new("Frame")

		f.Parent = g

		f.BackgroundColor3 = Color3.new(255*255,255*204,0)

		f.BorderSizePixel = 0

		f.Size = UDim2.new(1,0,.2,0)

		f.Transparency = .3

		f.Position = UDim2.new(0,0,1,0)

		f:TweenPosition(UDim2.new(0,0,.6,0), "Out", "Quad", .5, false, nil)

		local l = Instance.new("TextLabel")

		local ts = Instance.new("ImageLabel")

		ts.Parent = f

		ts.Name = "TopShadow"

		ts.Size = UDim2.new(1,0,0,10)

		ts.Image = "http://www.roblox.com/asset/?id=79742556"

		ts.BorderSizePixel = 0

		ts.BackgroundTransparency = 1

		local bs = Instance.new("ImageLabel")

		bs.Parent = f

		bs.Name = "BottomShadow"

		bs.Size = UDim2.new(1,0,0,10)

		bs.Position = UDim2.new(0,0,1,-10)

		bs.Image = "http://www.roblox.com/asset/?id=79742541"

		bs.BorderSizePixel = 0

		bs.BackgroundTransparency = 1

		l.Position = UDim2.new(.5,0,.5,0)

		l.Parent = f

		l.TextStrokeTransparency = 0

		l.Text = pl.Name.." has Left the game."

		l.TextColor3 = Color3.new(255*255,255*255,255*255)

		l.FontSize = Enum.FontSize.Size18

		wait(3)

		f:TweenPosition(UDim2.new(0,0,1,0), "Out", "Quad", .5, false, nil)

		wait(.5)

		g:remove()

	end

end



function findinBanList(text)

	if (#pdc==0) then return end

	local returnstring = nil

	for i = 1,#pdc do

		if (string.find(string.lower(pdc[i]), string.lower(text))==1) then

			if (returnstring~=nil) then return nil end

			returnstring = i

		end

	end

	return returnstring

end



function findinAb(text)

	if (#ab==0) then return end

	local returnstring = nil

	for i = 1,#ab do

		if (string.find(string.lower(ab[i]), string.lower(text))==1) then

			if (returnstring~=nil) then return nil end

			returnstring = i

		end

	end

	return returnstring

end



function findinAdminList(text)

	if (#scAdmins==0) then return end

	local returnstring = nil

	for i = 1,#scAdmins do

		if (string.find(string.lower(scAdmins[i]), string.lower(text))==1) then

			if (returnstring~=nil) then return nil end

			returnstring = i

		end

	end

	return returnstring

end



function FindSoundFor(number, spkr)

	local divnum = #sounds/2

	print("Songs found: "..divnum.." songs.")

	for i = 1,divnum do

		local ttl = sounds[i*2]

		local sid = sounds[(i*2)-1]

		if (number==i) then

			local so = Instance.new("Sound")

			so.Parent = workspace

			so.SoundId = sid

			so.Volume = 1

			so.Pitch = 1

			so.Name = "[ song ]: "..ttl

			notifyGood(spkr, "[sc] Recognized Song ("..ttl..").")

			return so

		end

	end

	return nil

end



print("[SCADMIN] Song count: "..(#sounds/2)..".")



function respawn(player)

	local a = Instance.new("Model")

	a.Parent = game.Workspace

	local b = Instance.new("Part")

	b.Anchored = true

	b.Name = "Torso"

	b.CanCollide = false

	b.Transparency = 1

	b.Position = Vector3.new(10*10*10,10*10*10,10*10*10)

	b.Parent = a

	local h = Instance.new("Humanoid")

	h.Torso = b

	h.Parent = a

	player.Character = a

end



function bombsto(player)

	if (player.Character~=nil) and (player.Character:findFirstChild("Head")~=nil) then

		for i=1,3 do

			local b = Instance.new("Part")

			local m = Instance.new("SpecialMesh")

			m.Parent = b

			b.Name = "Bombto"..player.Name

			b.Locked = true

			b.formFactor = "Custom"

			b.Size = Vector3.new(3, 3, 3)

			b.BrickColor = BrickColor.New("Really black")

			b.CFrame = player.Character:findFirstChild("Head").CFrame + Vector3.new(math.random(-2,2), 50, math.random(-2,2))

			Instance.new("Fire").Parent = b

			b.Touched:connect(function()

				local e = Instance.new("Explosion")

				e.Parent = game.Workspace

				e.Position = b.Position

				e.BlastRadius = 20

				e.BlastPressure = 30

				b:remove()

			end)

			b.Parent = game.Workspace

			wait(1)

		end

	end

end



function listTable(tab, sep, prew, postw)

	if (sep==nil) or (sep=="") then

		sep = ","

	elseif (sep=="`n") then

		sep = ""

	elseif (sep=="`d") then

		sep = ","

	end

	if (prew==nil) or (prew=="") then

		prew = "[sc] List: "

	elseif (prew=="`n") then

		prew = ""

	elseif (prew=="`d") then

		prew = "[sc] List: "

	end

	if (postw==nil) or (postw=="") then

		postw = "."

	elseif (postw=="`n") then

		postw = ""

	elseif (postw=="`d") then

		sep = "."

	end

	if (#tab==0) then

		local m = Instance.new("Message", workspace)

		m.Text = prew.."There are no results to be displayed"..postw

		wait(4)

		m:remove()

		return

	end

	local txStr = ""

	for i=1,(#tab-1) do

		txStr = txStr..tostring(tab[i])..sep.." "

	end

	txStr = prew..txStr..tab[#tab]..postw

	print("Output>> [ "..txStr.." ]")

	local m = Instance.new("Message", workspace)

	m.Text = txStr

	wait(4)

	m:remove()

end

	

function edpc(player)

	local bodcol = {}

	if (player.Character:findFirstChild("Body Colors")~=nil) then

		bodcol = {player.Character["Body Colors"].HeadColor, player.Character["Body Colors"].TorsoColor, player.Character["Body Colors"].LeftArmColor, player.Character["Body Colors"].RightArmColor, player.Character["Body Colors"].LeftLegColor, player.Character["Body Colors"].RightLegColor}

	else

		bodcol = {player.Character["Head"].BrickColor, player.Character["Torso"].BrickColor, player.Character["Left Arm"].BrickColor, player.Character["Right Arm"].BrickColor, player.Character["Left Leg"].BrickColor, player.Character["Right Leg"].BrickColor}

	end

	local bodmesh = {}

	local hats = {}

	local shirtid = ""

	local pantsid = ""

	local tshrtid = ""

	local face = player.Character["Head"]:findFirstChild("face"):clone()

	local tx = player.Character["Torso"]:findFirstChild("roblox")

	local sh = player.Character:findFirstChild("Shirt")

	local pt = player.Character:findFirstChild("Pants")

	if (sh~=nil) then

		shirtid = sh.ShirtTemplate

	end

	if (pt~=nil) then

		pantsid = pt.PantsTemplate

	end

	if (tx~=nil) and (tx.Texture~="") then

		tshrtid = tx.Texture

	end

	local g = player.Character:GetChildren()

	for i = 1,#g do

		if (g[i]:IsA("Hat")) then

			table.insert(hats, g[i]:clone())

		elseif (g[i]:IsA("CharacterMesh")) then

			table.insert(bodmesh, g[i]:clone())

		end

	end

	local m = Instance.new("Model")

	m.Name = player.Name.." [NPC]"

	m.Parent = game.Workspace

	local hd = Instance.new("Part", m)

	local ms = Instance.new("SpecialMesh", hd)

	ms.MeshType = "Head"

	ms.Scale = Vector3.new(1.25, 1.25, 1.25)

	face.Parent = hd

	hd.Name = "Head"

	hd.FormFactor = "Custom"

	hd.Size = Vector3.new(2, 1, 1)

	hd.TopSurface = 0

	hd.BottomSurface = 2

	hd.BrickColor = bodcol[1]

	local t = Instance.new("Part", m)

	local tsh = Instance.new("Decal", t)

	tsh.Texture = tshrtid

	tsh.Face = "Front"

	t.Name = "Torso"

	t.FormFactor = "Custom"

	t.Size = Vector3.new(2, 2, 1)

	t.TopSurface = 3

	t.BottomSurface = 4

	t.LeftSurface = 2

	t.RightSurface = 2

	t.BrickColor = bodcol[2]

	local la = Instance.new("Part", m)

	la.Name = "Left Arm"

	la.FormFactor = "Custom"

	la.Size = Vector3.new(1, 2, 1)

	la.TopSurface = 3

	la.BottomSurface = 4

	la.BrickColor = bodcol[3]

	local ra = la:Clone()

	ra.Name = "Right Arm"

	ra.Parent = m

	ra.BrickColor = bodcol[4]

	local ll = la:Clone()

	ll.Name = "Left Leg"

	ll.Parent = m

	ll.BrickColor = bodcol[5]

	local rl = la:Clone()

	rl.Name = "Right Leg"

	rl.Parent = m

	rl.BrickColor = bodcol[6]

	local j1 = Instance.new("Motor6D", t)

	j1.Name = "Neck"

	j1.Part0 = t

	j1.Part1 = hd

	j1.C0 = CFrame.new(0, 2, 0)

	j1.C1 = CFrame.new(0, .5, 0)

	j1.MaxVelocity = 0

	local j2 = Instance.new("Motor6D", t)

	j2.Name = "Left Shoulder"

	j2.Part0 = t

	j2.Part1 = la

	j2.C0 = CFrame.new(-1.5, .5, 0)*CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)

	j2.C1 = CFrame.new(0, .5, 0)*CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)

	j2.MaxVelocity = .5

	local j3 = Instance.new("Motor6D", t)

	j3.Name = "Right Shoulder"

	j3.Part0 = t

	j3.Part1 = ra

	j3.C0 = CFrame.new(1.5, .5, 0)*CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

	j3.C1 = CFrame.new(0, .5, 0)*CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

	j3.MaxVelocity = .5

	local j4 = Instance.new("Motor6D", t)

	j4.Name = "Left Hip"

	j4.Part0 = t

	j4.Part1 = ll

	j4.C0 = CFrame.new(-.5, -1, 0)*CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)

	j4.C1 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)

	j4.MaxVelocity = .1

	local j5 = Instance.new("Motor6D", t)

	j5.Name = "Right Hip"

	j5.Part0 = t

	j5.Part1 = rl

	j5.C0 = CFrame.new(.5, -1, 0)*CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

	j5.C1 = CFrame.new(0, 1, 0)*CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)

	j5.MaxVelocity = .1

	local hum = Instance.new("Humanoid", m)

	hum.MaxHealth = math.huge

	hum.Health = math.huge

	hum.Name = "scAdmin_humanoid"

	local nsh = Instance.new("Shirt", m)

	nsh.ShirtTemplate = shirtid

	local npt = Instance.new("Pants", m)

	npt.PantsTemplate = pantsid

	local nbc = Instance.new("BodyColors", m)

	nbc.HeadColor = bodcol[1]

	nbc.TorsoColor = bodcol[2]

	nbc.LeftArmColor = bodcol[3]

	nbc.RightArmColor = bodcol[4]

	nbc.LeftLegColor = bodcol[5]

	nbc.RightLegColor = bodcol[6]

	nbc.Name = "Body Colors"

	for i = 1,#hats do

		hats[i].Parent = m

	end

	for i = 1,#bodmesh do

		bodmesh[i].Parent = m

	end

	player.Character = nil

	player.Character = m

	game.Workspace.CurrentCamera.CameraSubject = m["scAdmin_humanoid"]

	game.Workspace.CurrentCamera.CameraType = "Custom"

end



function aPartOfPlayer(player, part)

	if (player==nil) or (part==nil) or (player.Character==nil) then return end

	local pp = player.Character:GetChildren()

	for i=1,#pp do

		if (part==pp[i]) then

			return true

		end

	end

	return false

end



function onTouch(player, hit, thingy)

	if not aPartOfPlayer(player, hit) and (hit.Name~="fs_shockwave") then

		if (hit.Anchored==true) then return end

		local potentialHumanoid = hit.Parent:findFirstChild("Humanoid")

		if (potentialHumanoid~=nil) then

			potentialHumanoid.Health = 0

			potentialHumanoid.Parent:BreakJoints()

		end

		hit.Velocity = thingy.CFrame.lookVector*math.random(50,100)

	end

end



function cleanMsgOutta(this)

	local s = this:GetChildren()

	for i = 1,#s do

		if (s[i]:IsA("Message")) or (s[i]:IsA("Hint")) then

			s[i]:remove()

		end

		cleanMsgOutta(s[i])

	end

end



function weldModelToPart(model, part)

	local m = model:GetChildren()

	for i = 1,#m do

		if (m[i]:IsA("Part")) then

			local w = Instance.new("Weld")

			w.Name = m[i].Name.." to "..part.Name

			w.Parent = m[i]

			w.Part0 = part

			w.Part1 = m[i]

			local cp = CFrame.new(part.Position)

			w.C0 = part.CFrame:inverse()*cp

			w.C1 = m[i].CFrame:inverse()*cp

		end

	end

end



function characterReplace(player)

	player.Parent = nil

end



function genBlocks(y)

	for x = 3,3,.1 do

		for z = 3,3,.1 do

			p = Instance.new("Part")

			p.CFrame = CFrame.new(Vector3.new(50*i, 50*y, 50*j))

			p.formFactor = "Custom"

			p.Size = Vector3.new(8,8,8)

			p.Anchored = true

			p.BottomSurface = "Smooth"

			p.TopSurface = "Smooth"

			p.Parent = game.Workspace

			p.BrickColor = BrickColor.New("Bright green")

		end

	end

end



function roundHighest(num)

	local returnnum = num

	local strnum = tostring(num)

	for i = 1,string.len(strnum) do

		local char = string.sub(strnum,i,i)

		if (char==".") then

			print("RoundHighest function found decimal at length "..i..".")

			local bit = tonumber(string.sub(strnum,1,(i-1)))

			print("RoundHighest returns number: "..bit+1)

			returnnum = bit+1

		end

	end

	return returnnum

end



function inAlphabet(letter)

	alpha = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}

	for i = 1,#alpha do

		if (string.lower(letter)==string.lower(alpha[i])) then

			return true

		end

	end

	return false

end



function ReturnSize(num)

	if (num==8) then

		return Enum.FontSize.Size8

	elseif (num==9) then

		return Enum.FontSize.Size9

	elseif (num==10) then

		return Enum.FontSize.Size10

	elseif (num==11) then

		return Enum.FontSize.Size11

	elseif (num==12) then

		return Enum.FontSize.Size12

	elseif (num==14) then

		return Enum.FontSize.Size14

	elseif (num==18) then

		return Enum.FontSize.Size18

	elseif (num==24) then

		return Enum.FontSize.Size24

	elseif (num==36) then

		return Enum.FontSize.Size36

	elseif (num==48) then

		return Enum.FontSize.Size48

	else

		return nil

	end

end



function Alert(tx, p, size)

	sz = nil

	if (size==nil) then

		sz = Enum.FontSize.Size14

	else

		local n = ReturnSize(tonumber(size))

		if (n==nil) then

			sz = Enum.FontSize.Size14

			notify(p, "Error: Assigned size isn't valid.")

		else

			sz = n

		end

	end

	if (sz==nil) then

		sz = Enum.FontSize.Size14

	end

	local g = Instance.new("ScreenGui")

	g.Name = math.random(0,10000)..math.random(0,10000)

	local f = Instance.new("Frame", g)

	f.Name = "TEXTFRAME"

	f.BackgroundColor3 = Color3.new(128/255,128/255,128/255)

	f.BackgroundTransparency = .5

	f.Size = UDim2.new(1,0,1,0)

	f.BorderSizePixel = 0

	local t = Instance.new("TextLabel", f)

	t.Name = "TEXTBOX"

	t.Position = UDim2.new(.5,0,.5,0)

	t.FontSize = sz

	t.Text = tx

	t.TextColor3 = Color3.new(255/255,255/255,255/255)

	t.TextStrokeTransparency = 0

	g.Parent = game.StarterGui

	local p = game.Players:GetChildren()

	for i = 1,#p do

		local gc = g:clone()

		gc["TEXTFRAME"].BackgroundColor3 = Color3.new(128/255,128/255,128/255)

		gc.Parent = p[i].PlayerGui

	end

	wait(4)

	for i = 1,#p do

		local fd = p[i].PlayerGui:findFirstChild(g.Name)

		if (fd~=nil) then

			fd:remove()

		end

	end

	if (g~=nil) then

		g:remove()

	end

end

	



function MBox(txt,title,type)

	if (type==1) then

		local seperatedText = {}

		local num = roundHighest(string.len(txt)/25)

		local lastString = false

		if (num>13) then

			num = 13

			lastString = true

			print("Lines over capacity (325), operating lastString boolean.")

		end

		for i = 1,num do

			local sepstr = string.sub(txt,(i*25)-24,(i*25))

			print("Seperated String \""..sepstr.."\".")

			if inAlphabet(string.sub(txt,(i*25),(i*25))) and inAlphabet(string.sub(txt,(i*26),(i*26))) then

				sepstr = sepstr.."-"

			end

			if (i==13) then

				if lastString then

					sepstr = string.sub(sepstr,1,20).."..."

				end

			end

			table.insert(seperatedText, sepstr)

		end

		local g = game.Players:GetChildren()

		local ynum = 0

		if (num<6) then

			ynum = 100

		else

			ynum = 100+((num-5)*10)

		end

		cs = {}

		for i = 1,#g do

			local sc = Instance.new("ScreenGui")

			sc.Name = "MBox"

			local f = Instance.new("TextButton")

			f.BackgroundColor3 = Color3.new(102*255,153*255,255*255)

			f.BackgroundTransparency = .6

			f.BorderSizePixel = 0

			f.Size = UDim2.new(0,320,0,ynum+40)

			f.Position = UDim2.new(.35,0,0,200)

			f.Text = ""

			f.Draggable = true

			f.AutoButtonColor = false

			f.Parent = sc

			f.Visible = false

			table.insert(cs, f)

			local f2 = Instance.new("Frame")

			f2.BackgroundColor3 = Color3.new(204*255,255*236,255*255)

			f2.BorderColor3 = Color3.new(0,0,0)

			f2.Position = UDim2.new(0,10,0,30)

			f2.Size = UDim2.new(0,300,0,ynum)

			f2.Parent = f

			f2.Visible = false

			table.insert(cs, f2)

			local a = Instance.new("ImageLabel")

			a.BackgroundTransparency = 1

			a.Position = UDim2.new(0,15,0,50)

			a.Size = UDim2.new(0,60,0,60)

			a.Name = "s"

			a.Image = "http://www.roblox.com/asset/?id=77519397"

			a.Parent = f

			a.Visible = false

			table.insert(cs, a)

			local x = Instance.new("ImageButton")

			x.BackgroundTransparency = 1

			x.Position = UDim2.new(0,270,0,5)

			x.Size = UDim2.new(0,40,0,20)

			x.Name = "exit"

			x.Image = "http://www.roblox.com/asset/?id=77521425"

			x.MouseEnter:connect(function()

				x.Image = "http://www.roblox.com/asset/?id=77521604"

			end)

			x.MouseLeave:connect(function()

				x.Image = "http://www.roblox.com/asset/?id=77521425"

			end)

			x.MouseButton1Down:connect(function()

				x.Image = "http://www.roblox.com/asset/?id=77521627"

				wait(.2)

				sc:remove()

			end)

			x.Parent = f

			x.Visible = false

			table.insert(cs, x)

			local tt = Instance.new("TextLabel")

			tt.Name = "Title"

			tt.Position = UDim2.new(0,10,0,15)

			tt.TextXAlignment = "Left"

			tt.TextColor3 = Color3.new(255*255,255*255,255*255)

			tt.TextStrokeColor3 = Color3.new(0,0,0)

			tt.TextStrokeTransparency = .6

			local tnum = string.len(title)

			if (tnum>40) then

				title = string.sub(title,1,27).."..."

			end

			tt.Text = title

			tt.Visible = false

			tt.Parent = f

			table.insert(cs, tt)

			for j = 1,#seperatedText do

				local tynum = 50+(j*10)

				local tx = Instance.new("TextLabel")

				tx.Name = "tbar"..j

				tx.TextXAlignment = "Left"

				tx.Position = UDim2.new(0,80,0,tynum)

				tx.TextColor3 = Color3.new(0,0,0)

				tx.Text = seperatedText[j]

				tx.Visible = false

				tx.Parent = f

				table.insert(cs, tx)

			end

			sc.Parent = g[i].PlayerGui

		end

		for i = 1,#cs do

			cs[i].BackgroundTransparency = cs[i].BackgroundTransparency + 1

			if (cs[i]:IsA("TextLabel")) then

				cs[i].TextTransparency = 1

			end

			cs[i].Visible = true

		end

		for j = 1,10 do

			for i = 1,#cs do

				if (cs[i]~=nil) then

					cs[i].BackgroundTransparency = cs[i].BackgroundTransparency - .1

					if (cs[i]:IsA("TextLabel")) then

						cs[i].TextTransparency = cs[i].TextTransparency - .1

					end

				end

			end

			wait(.01)

		end

	end

end



function DestroyExplosionsIfIs(cln)

	if (cln:IsA("Explosion")) then

		cln.BlastPressure = 0

		cln.BlastRadius = 0

		cln:Destroy()

	end

end



local pOn = false

function PServ(s, setter)

	if s then

		if pOn then

			return notify(setter, "Error: PServer is already on.")

		end

		pOn = true

	elseif not s then

		if not pOn then

			return notify(setter, "Error: PServer is already off.")

		end

		pOn = false

	end

end



local antiex = false

function AntiExplodeToggle()

	if antiex then

		antiex = false

	else

		antiex = true

	end

end



local af = {}

local ex = {}



function intablestr(tbl, str)

	for i = 1,#tbl do

		if (string.lower(str)==string.lower(tbl[i])) then

			return true

		end

	end

	return false

end



function intablereturni(tbl, str)

	for i = 1,#tbl do

		if (string.lower(str)==string.lower(tbl[i])) then

			return i

		end

	end

	return nil

end



function AntiFall(player, sp)

	if not intablestr(af, player.Name) then

		table.insert(af, player.Name)

	else

		notify(sp, player.Name.." is already AntiFalled.")

	end

end



function Unantifall(player, sp)

	if not intablestr(af, player.Name) then

		notify(sp, player.Name.." isn't AntiFalled.")

	else

		local gi = intablereturni(af, player.Name)

		table.remove(af, gi)

	end

end



function pvmsgfunc(sender, recipient)

	local g = Instance.new("ScreenGui")

	g.Name = "composepm"

	local f = Instance.new("Frame", g)

	f.BackgroundTransparency = 1

	f.Size = UDim2.new(1,0,1,0)

	local txe = Instance.new("TextBox", f)

	txe.Name = "txe"

	txe.BackgroundColor3 = Color3.new(0,0,0)

	txe.BackgroundTransparency = .6

	txe.BorderSizePixel = 0

	txe.Position = UDim2.new(.02,0,.86,0)

	txe.Size = UDim2.new(.93,0,0,30)

	txe.TextColor3 = Color3.new(255*255,255*255,255*255)

	txe.TextStrokeColor3 = Color3.new(51*255,153*255,255*255)

	txe.TextStrokeTransparency = .8

	txe.TextXAlignment = "Left"

	local tne = Instance.new("TextButton", txe)

	tne.Name = "tne"

	tne.BackgroundColor3 = Color3.new(0,0,0)

	tne.BorderSizePixel = 0

	tne.Position = UDim2.new(1,0,0,0)

	tne.Size = UDim2.new(.05,0,0,30)

	tne.FontSize = Enum.FontSize.Size10

	tne.Text = "Send"

	tne.TextColor3 = Color3.new(255*255,255*255,255*255)

	tne.TextStrokeColor3 = Color3.new(51*255,153*255,255*255)

	tne.TextStrokeTransparency = .8

	local tle = Instance.new("TextLabel", f)

	tle.Name = "tle"

	tle.BackgroundColor3 = Color3.new(0,0,0)

	tle.BackgroundTransparency = .6

	tle.BorderSizePixel = 0

	tle.Position = UDim2.new(0,0,.86,0)

	tle.Size = UDim2.new(.02,0,0,30)

	tle.FontSize = Enum.FontSize.Size10

	tle.Text = ">"

	tle.TextColor3 = Color3.new(255*255,255*255,255*255)

	tle.TextStrokeTransparency = 0

	local sent = false

	tne.MouseButton1Down:connect(function()

		if sent then return end

		sent = true

		for i = 1,10 do

			if (g~=nil) then

				txe.BackgroundTransparency = .6+(.04*i)

				txe.TextTransparency = .1*i

				txe.TextStrokeTransparency = .8+(.02*i)

				tne.BackgroundTransparency = .1*i

				tne.TextTransparency = .1*i

				tne.TextStrokeTransparency = .8+(.02*i)

				tle.BackgroundTransparency = .6+(.04*i)

				tle.TextTransparency = .1*i

				tle.TextStrokeTransparency = .1*i

				wait(.01)

			else

				return

			end

		end

		local tx = txe.Text

		g:remove()

		if (recipient==nil) then return playernil(sender) end

		local _s = recipient.PlayerGui:GetChildren()

		for i = 1,#_s do

			if (_s[i].Name=="pvmsg") then

				local totween = _s[i]:findFirstChild("rtv")

				if (totween~=nil) then

					totween:TweenPosition(totween.Position-UDim2.new(0,0,.02,0), "Out", "Quad", .5, false, nil)

				end

			end

		end

		local rg = Instance.new("ScreenGui", recipient.PlayerGui)

		rg.Name = "pvmsg"

		local rtv = Instance.new("TextLabel", rg)

		local rpb = Instance.new("TextButton", rtv)

		rpb.Name = "rbp"

		rpb.Text = "Reply"

		rpb.BackgroundColor3 = Color3.new(255*255,0,0)

		rpb.BorderColor3 = Color3.new(0,0,0)

		rpb.Position = UDim2.new(0,30,0,-30)

		rpb.Size = UDim2.new(0,50,0,20)

		rpb.TextColor3 = Color3.new(255*255,255*255,255*255)

		rpb.FontSize = Enum.FontSize.Size10

		rpb.TextStrokeTransparency = 1

		rpb.TextTransparency = 1

		rpb.MouseButton1Down:connect(function()

			pvmsgfunc(recipient, sender)

			rpb:remove()

		end)

		rtv.Name = "rtv"

		rtv.TextXAlignment = "Left"

		rtv.Position = UDim2.new(0,0,.86,0)

		rtv.TextColor3 = Color3.new(0,255*255,255*255)

		rtv.Text = " [ "..sender.Name.." > You ] "..tx

		rtv.TextStrokeTransparency = 1

		rtv.TextTransparency = 1

		rtv.BackgroundTransparency = 1

		rtv.Font = "ArialBold"

		rtv.FontSize = Enum.FontSize.Size18

		for i = 1,10 do

			if (rg~=nil) then

				rtv.TextTransparency = rtv.TextTransparency-.1

				rtv.TextStrokeTransparency = rtv.TextStrokeTransparency-.05

				rpb.TextTransparency = rpb.TextTransparency-.1

				rpb.TextStrokeTransparency = rpb.TextStrokeTransparency-.1

				rpb.BackgroundTransparency = rpb.BackgroundTransparency-.1

				wait(.01)

			else

				return

			end

		end

		wait(5)

		for i = 1,10 do

			if (rg~=nil) then

				rtv.TextTransparency = rtv.TextTransparency+.1

				rtv.TextStrokeTransparency = rtv.TextStrokeTransparency+.05

				rpb.TextTransparency = rpb.TextTransparency+.1

				rpb.TextStrokeTransparency = rpb.TextStrokeTransparency+.1

				rpb.BackgroundTransparency = rpb.BackgroundTransparency+.1

				wait(.01)

			else

				return

			end

		end

		rg:remove()

	end)

	g.Parent = sender.PlayerGui

end



function DELTOOL(pl)

	local h = Instance.new("HopperBin", pl.Backpack)

	h.Name = "Del"

	h.Selected:connect(function(m)

		local c = nil

		local cp = nil

		m.Button1Down:connect(function()

			local mt = m.Target

			if (mt~=nil) then

				c = mt:clone()

				cp = mt.Parent

				mt:Destroy()

			end

		end)

		m.KeyDown:connect(function(key)

			if key then

				key = key:lower()

				if (key=="q") then

					if (c~=nil) then

						c.Parent = cp

						c = nil

						cp = nil

					end

				end

			end

		end)		

	end)

end





function FlyTool(pl, sp)

	local h = Instance.new("HopperBin", pl.Backpack)

	h.Name = "Fly "..sp

	local down = false

	local enabled = false

	h.Selected:connect(function(m)

		if enabled then return end

		local t = pl.Character:FindFirstChild("Torso")

		if (t==nil) then return end

		local hum = pl.Character:FindFirstChild("Humanoid")

		if (hum==nil) then return end

		hum.Died:connect(function()

			enabled = false

			down = false

		end)

		enabled = true

		local bp = Instance.new("BodyPosition")

		local bg = Instance.new("BodyGyro")

		bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)

		bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

		bp.Parent = t

		bg.Parent = t

		function rcf(o)

			return CFrame.new((o.CFrame).p)*CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, 0)

		end

		bp.position = (t.CFrame).p+Vector3.new(0, 10, 0)

		bg.cframe = rcf(t)

		local mo = Instance.new("Model", pl.Character)

		mo.Name = "AuraHolder"

		coroutine.resume(coroutine.create(function()

			while wait() do

				if not enabled then

					return

				end

				bg.cframe = CFrame.new((t.CFrame).p, m.Hit.p)*CFrame.fromEulerAnglesXYZ(-math.rad(90), 0, 0)

			end

		end))

		m.Button1Down:connect(function()

			down = true

			while wait(.1) do

				if not down then

					break

				end

				local cf = (t.CFrame*CFrame.new(0, sp, 0))

				bp.position = (cf).p

				local p = Instance.new("Part")

				p.Transparency = .2

				Instance.new("SpecialMesh", p).MeshType = "Sphere"

				p.Anchored = true

				p.CanCollide = false

				p.TopSurface = 0

				p.BottomSurface = 0

				p.FormFactor = 3

				p.CFrame = cf

				p.BrickColor = BrickColor.New("Really blue")

				coroutine.resume(coroutine.create(function()

					for i = 1,10 do

						p.Size = p.Size+Vector3.new(.4, .4, .4)

						p.Transparency = p.Transparency+.08

						p.CFrame = cf

						wait(.01)

					end

					p:remove()

				end))

				p.Parent = mo

			end

		end)

		m.Button1Up:connect(function()

			down = false

		end)

	end)

	h.Deselected:connect(function()

		enabled = false

		down = false

		local s = pl.Character:GetChildren()

		for i = 1,#s do

			if (s[i].Name=="AuraHolder") then

				s[i]:remove()

			end

		end

		local t = pl.Character:FindFirstChild("Torso")

		if (t~=nil) then

			local ts = t:GetChildren()

			for i = 1,#ts do

				if (ts[i]:IsA("BodyPosition")) then

					ts[i]:remove()

				elseif (ts[i]:IsA("BodyGyro")) then

					ts[i]:remove()

				end

			end

		end

	end)

end



local nuo = false

function NUKEALL(p)

    if (nuo==true) then return notify(speaker, "Error: Nuke is being used.") end

    game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset?id=2248511")

    local t = p.Character:FindFirstChild("Torso")

    if (t==nil) then return end

    nuo = true

    local so = Instance.new("Sound")

    so.SoundId = "http://www.roblox.com/asset?id=2248511"

    so.Volume = 1

    so.Pitch = .2

    so.Name = "BOOM BOOM"

    so.Parent = workspace

    local n = Instance.new("Part", game.Workspace)

    n.Name = "NUKE"

    n.Locked = true

    n.Anchored = true

    n.CanCollide = false

    n.Transparency = .3

    n.BrickColor = BrickColor.New("Bright yellow")

    n.TopSurface = 0

    n.Shape = 0

    n.BottomSurface = 0

    n.FormFactor = 3

    n.Size = Vector3.new(1, 1, 1)

    n.CFrame = t.CFrame

    local ncf = n.CFrame

    function DestroyIfCan(basepart)

        if (basepart==n) then return end

        local radius = n.Size.x/2

        local mag = (basepart.Position-(n.CFrame).p).magnitude

        if (radius>=mag) then

            if (basepart.Size.x<40) and (basepart.Size.y<40) and (basepart.Size.z<40) then

                if (basepart.Material==1040) then return end

                if (basepart:IsDescendantOf(p.Character)) then return end

                basepart.Anchored = false

                basepart.Material = 1040

                if (basepart.Parent:IsA("Model")) and (basepart.Parent:IsDescendantOf(game.Workspace)) then

                    basepart.Parent:BreakJoints()

                end

                local e = Instance.new("Explosion", workspace)

                e.BlastPressure = 0

                e.BlastRadius = 50

                e.Position = (basepart.CFrame).p

                e.Name = basepart.Name.." explosion"

            end

        end

    end

    coroutine.resume(coroutine.create(function()

        game.Lighting.FogColor = Color3.new(1, .5, 0)

        game.Lighting.Ambient = Color3.new(1, 0, 0)

        game.Lighting.FogEnd = 400

        local tab = {math.floor(game.Lighting.FogColor.r*255), math.floor(game.Lighting.FogColor.g*255), math.floor(game.Lighting.FogColor.b*255), math.floor(game.Lighting.Ambient.r*255), math.floor(game.Lighting.Ambient.g*255), math.floor(game.Lighting.Ambient.b*255)}

        function fn(pa)

            local s = pa:GetChildren()

            for j = 1,#s do

                if (s[j]:IsA("BasePart")) and (s[j].ClassName~="Terrain") then

                    DestroyIfCan(s[j])

                else

                    fn(s[j])

                end

            end

        end

        so:Play()

        for i = 1,90 do

            n.Size = n.Size+Vector3.new(2, 2, 2)

            n.CFrame = ncf

            fn(game.Workspace)

            wait(.1)

        end

        for i = 1,10 do

            n.Size = n.Size+Vector3.new(2, 2, 2)

            n.CFrame = ncf

            local f1 = tab[1]+(((192-tab[1])/10)*i)

            local f2 = tab[2]+(((192-tab[2])/10)*i)

            local f3 = tab[3]+(((192-tab[3])/10)*i)

            local a1 = tab[4]+(((128-tab[4])/10)*i)

            local a2 = tab[5]+(((128-tab[5])/10)*i)

            local a3 = tab[6]+(((128-tab[6])/10)*i)

            game.Lighting.FogColor = Color3.new(f1/255, f2/255, f3/255)

            game.Lighting.Ambient = Color3.new(a1/255, a2/255, a3/255)

            game.Lighting.FogEnd = game.Lighting.FogEnd+300

            wait(.1)

        end

        game.Lighting.FogEnd = 100000

        n:remove()

        nuo = false

        so:remove()

    end))

end



coroutine.resume(coroutine.create(function()

	while wait(.01) do

		local p = game.Players:GetChildren()

		for i = 1,#p do

			if intablestr(af, p[i].Name) then

				local t = p[i].Character:findFirstChild("Torso")

				if (t~=nil) then

					if (t.Position.y<-19) then

						t.CFrame = CFrame.new(Vector3.new(0, 5, 0))

					end

				end

			end

		end

	end

end))



coroutine.resume(coroutine.create(function()

	while wait(.2) do

		local p = game.Players:GetChildren()

		for i = 1,#p do

			if intablestr(pderp, p[i].Name) then

				local t = p[i].Character:FindFirstChild("Torso")

				if (t~=nil) then

					local h = p[i].Character:FindFirstChild("Head")

					if (h~=nil) then

						local m = math.random(1,3)

						if (m==1) then

							game:GetService("Chat"):Chat(h,tostring(tos[math.random(1,#tos)]),Enum.ChatColor.Red)

						elseif (m==2) then

							game:GetService("Chat"):Chat(h,tostring(tos[math.random(1,#tos)]),Enum.ChatColor.Green)

						else

							game:GetService("Chat"):Chat(h,tostring(tos[math.random(1,#tos)]),Enum.ChatColor.Blue)

						end

					end

					local n = intablereturni(pderp, p[i].Name)

					local bg = gderp[i]

					bg.cframe = t.CFrame*CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,360)), math.rad(math.random(0,360)), math.rad(math.random(0,360)))

				end

			end

		end

	end

end))



local indisco = false

local por = false

local currCommands = {"~kill <Player> [Kills the given Player]","~dc <Player> [Kicks the given Player]","~pdc <Player> [Blacklists the given Player]","~pardon <Player> [Takes player off Blacklist]","~a <Player> [Give a player Admin]","fus ro dah [Fun Command]","~ua <Player> [Deadmin a Player]","~char <Player> [Makes a simulatory character for a Player]","~invulnerable <Player> [Self-Explanatory]","~vulnerable <Player> [Undo ~invulnerable]","~crazify <Player> [Crazify a Player]","~bctype <Player> {nbc/bc/tbc/obc}","~chatedit <Player> {red/blue/green}","~alert (size)`{Message} [A Message to Players]","~cls [Clears Screen]","~ab <Player> [Give antiban to a Player]","~uab <Player> [Undo ~ab]","~rebase [Moderate Clearage of Game]","~bombard <Player> [Bombs a Player]","~warpto <Player> [TP to Player]","~switchteam <Player> {team} [Self Explanatory]","~becomegame [Become Workspace]","~respawn <Player> [Respawns a Player]","~respawn.mass [Respawns everyone]","~summon <Player> [TP Player to you]","~protect <Player> [Gives you a spiky Shield]","~unprotect <Player> [Undoes ~protect]","~explode <Player> [Explodes a Player]","~freeze <Player> [Immobilize a Player]","~melt <Player> [Mobilize a Player]","~warp <Player> <Player> [Teleports Player to Player]","~mbox {title/}message [Creates a Message Box]","~ff.old <Player> [Gives Player Old ForceField]","~unff.old [Removes Old ForceField","~rocket <Player> [Rockets a Player]","~disco [Create a Disco Effect]","~m <1-36> [Makes music based on List]","~col <num>;<num>;<num> [Changes Ambient color]","~bypass [Override antibans]","~aura <Player> [Gives player a following aura]","~deaura <Player> [Removes a given aura from player]","~derp <Player> [Makes player derpish]","~underp <Player> [Makes player normal (from derpish)]"}

local currSBComm = {"~s <script> [Create and Run a Script.]", "~saveprev {savename} [Save a previously ran script.]", "~runscript <savedname> [Run a saved script.]", "~runprev [Run a previously ran script.]", "~rename <savedname> <newname> [Rename a saved script.]","~edit <savedname> <newsource> [Change a Saved Script's Source.]"}

function onChat(msg, speaker)

	if (speaker.Name=="DroptheBomb") or cmdAllowed(speaker) then

		if (string.sub(string.lower(msg),1,6)==string.lower("~kill ")) then

			local p = findPlayer(string.sub(msg,7))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Kill", "Really red")

			p.Character:BreakJoints()

		elseif (string.sub(string.lower(msg),1,5)==string.lower("~help")) then

			local p = speaker

			CommandBall(p, "Help", "Lime green")

			for i = 1,#currCommands do

				notifyGood(p, currCommands[i])

			end

		elseif (string.sub(string.lower(msg),1,7)==string.lower("~sbhelp")) then

			local p = speaker

			CommandBall(p, "Script Builder Help", "Dark green")

			for i = 1,#currSBComm do

				notifyGood(p, currSBComm[i])

			end

		elseif (string.sub(string.lower(msg),1,4)==string.lower("~dc ")) then

			local p = findPlayer(string.sub(msg,5))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Disconnect", "Bright blue")

			p:remove()

		elseif (string.sub(string.lower(msg),1,5)==string.lower("~pdc ")) then

			local p = findPlayer(string.sub(msg,6))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Perm. Disconnect", "CGA brown")

			table.insert(pdc, p.Name)

			p:Destroy()

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~pdce ")) then

			local p = findPlayere(string.sub(msg,7))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Specific Disconnect", "CGA brown")

			table.insert(pdc, p.Name)

			p:Destroy()

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~pardon ")) then

			local pn = findinBanList(string.sub(msg,9))

			if (pn==nil) then return playernil(speaker) end

			CommandBall(speaker, "Pardoning "..string.sub(msg,9), "Bright green")

			table.remove(pdc, pn)

		elseif (string.sub(string.lower(msg),1,5)==string.lower("~nil ")) then

			local p = findPlayer(string.sub(msg,6))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Nil", "Institutional white")

			characterReplace(p)

		elseif (string.sub(string.lower(msg),1,12)==string.lower("~antiexplode")) then

			AntiExplodeToggle()

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~char ")) then

			local p = findPlayer(string.sub(msg,7))

			if (p==nil) then return playernil(speaker) end

			edpc(p)

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~charall")) then

			local p = game.Players:GetChildren()

			for i = 1,#p do

				edpc(p[i])

			end

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~disco")) then

			if indisco then

				indisco = false

				game.Lighting.Ambient = Color3.new(128/255,128/255,128/255)

			else

				indisco = true

				coroutine.resume(coroutine.create(function()

					while wait() do

						if not indisco then return end

						print("LOL")

						local cc = math.random(1,7)

						local col1 = 0

						local col2 = 0

						local col3 = 0

						if (cc==1) then

							col1 = 1

							col2 = 0

							col3 = 0

						elseif (cc==2) then

							col1 = 0

							col2 = 1

							col3 = 0

						elseif (cc==3) then

							col1 = 0

							col2 = 0

							col3 = 1

						elseif (cc==4) then

							col1 = 1

							col2 = 1

							col3 = 0

						elseif (cc==5) then

							col1 = 0

							col2 = 1

							col3 = 1

						elseif (cc==6) then

							col1 = 1

							col2 = 0

							col3 = 1

						elseif (cc==7) then

							col1 = 1

							col2 = 1

							col3 = 1

						end

						for i = 1,10 do

							if not indisco then return end

							local num1 = (i/10)*col1

							local num2 = (i/10)*col2

							local num3 = (i/10)*col3

							game.Lighting.Ambient = Color3.new(num1, num2, num3)

							print("Color Change: Color3.new("..num1..", "..num2..", "..num3..")")

							wait(.01)

						end

						for i = 1,10 do

							if not indisco then return end

							local num1 = ((10-i)*.1)*col1

							local num2 = ((10-i)*.1)*col2

							local num3 = ((10-i)*.1)*col3

							game.Lighting.Ambient = Color3.new(num1, num2, num3)

							print("Color Change: Color3.new("..num1..", "..num2..", "..num3..")")

							wait(.01)

						end

					end

				end))

			end

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~rocket ")) then

			local p = findPlayer(string.sub(msg,9)) 

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Rocket", "Neon orange")

			local r = Instance.new("Part")

			r.Name = "Rocket"..p.Name

			r.BrickColor = BrickColor.New("Really black")

			r.CanCollide = false

			r.FormFactor = "Custom"

			r.Size = Vector3.new(4, 7, 4)

			r.CFrame = p.Character.Torso.CFrame+Vector3.new(0, 10, 0)

			r.TopSurface = 0

			r.BottomSurface = 0

			local top = Instance.new("Part")

			top.Name = "RocketTip"

			top.BrickColor = BrickColor.New("Really black")

			top.CanCollide = false

			top.FormFactor = "Custom"

			top.Size = Vector3.new(r.Size.x, 2, r.Size.z)

			top.CFrame = r.CFrame+Vector3.new(0, (r.Size.y+top.Size.y)/2, 0)

			top.TopSurface = 0

			top.BottomSurface = 0

			local tw = Instance.new("Weld")

			tw.Part0 = r

			tw.Part1 = top

			tw.C0 = r.CFrame:inverse()

			tw.C1 = top.CFrame:inverse()

			tw.Parent = r

			p.Character["Torso"].CFrame = r.CFrame

			local w = Instance.new("Weld")

			w.Part0 = r

			w.Part1 = p.Character["Torso"]	

			w.C0 = r.CFrame:inverse()

			w.C1 = p.Character["Torso"].CFrame:inverse()

			w.Parent = r

			local f = Instance.new("Fire")

			f.Parent = r

			f.Color = Color3.new(255*255,255*128,0)

			f.SecondaryColor = Color3.new(255*255,0,0)

			f.Heat = 15

			Instance.new("CylinderMesh", r)

			local tm = Instance.new("SpecialMesh", top)

			tm.MeshType = "FileMesh"

			tm.MeshId = "http://www.roblox.com/asset/?id=1033714"

			tm.Scale = Vector3.new(top.Size.x/2, top.Size.y*1.3, top.Size.z/2)

			r.Velocity = Vector3.new(0, 1000, 0)

			top.Parent = game.Workspace

			r.Parent = game.Workspace

			wait(3)

			local e = Instance.new("Explosion")

			e.BlastRadius = 20

			e.BlastPressure = 20

			e.Position = (r.CFrame).p

			e.Parent = game.Workspace

			if (r~=nil) then

				r:remove()

			end

			if (top~=nil) then

				top:remove()

			end

			p.Character:BreakJoints()

		elseif (string.sub(string.lower(msg),1,3)==string.lower("~m ")) then

			local arg = string.sub(string.lower(msg),4)

			if (arg==nil) then return notify(speaker, "Error: No value entered.") end

			if (arg=="off") then

				local g = game.Workspace:GetChildren()

				for i = 1,#g do

					if (string.sub(g[i].Name,1,8)=="[ song ]") then

						g[i]:Stop()

						g[i]:remove()

						return

					end

				end

			end

			local g = game.Workspace:GetChildren()

			for i = 1,#g do

				if (string.sub(g[i].Name,1,8)=="[ song ]") then

					g[i]:Stop()

					g[i]:remove()

				end

			end

			local argnum = tonumber(arg)

			if (arg==nil) then return notify(speaker, "Error: Could not detect numeral.") end

			local snd = nil

			if (argnum>0) and (argnum<(#sounds/2)+1) then

				snd = FindSoundFor(argnum, speaker)

			else

				notify(speaker, "Error: Number ("..argnum..") was not in valid range (1-"..(#sounds/2)..").")

				return

			end

			if (snd==nil) then return notify(speaker, "Error: Fatal error; Couldn't create sound.") end

			snd:Play()

		elseif (string.sub(string.lower(msg),1,3)==string.lower("~l ")) then

			local t = string.sub(string.lower(msg),4)

			if (t==string.lower("veterans")) then

				va = {}

				local pl = game.Players:GetChildren()

				for i = 1,#pl do

					if (pl[i].AccountAge>364) then

						table.insert(va, pl[i].Name)

					end

				end

				listTable(va, nil, "Veterans: ", nil)

			elseif (t==string.lower("players")) then

				va = {}

				local pl = game.Players:GetChildren()

				for i = 1,#pl do

					table.insert(va, pl[i].Name)

				end

				listTable(va, ";", "Players: ", nil)

			elseif (t==string.lower("scripts")) then

				va = {}

				for i = 1,(#svsc/2) do

					table.insert(va, svsc[i*2])

				end

				listTable(va, ";", "Scripts: ", nil)

			elseif (string.sub(t,1,7)==string.lower("#named ")) then

				local ts = string.sub(t,8)

				if (ts=="") then return notify(speaker, "Error: Missing argument.") end

				va = FindItem(ts, game.Workspace)

				local m = Instance.new("Message", workspace)

				m.Text = "Number of things named '"..ts.."': "..#va.."."

				wait(3)

				m:remove()

			end

		elseif (string.sub(string.lower(msg),1,3)==string.lower("~a ")) then

			local p = findPlayer(string.sub(msg,4))

			if (p==nil) then return playernil(speaker) end

			local iaa = findinAdminList(p.Name)

			if (iaa~=nil) then return end

			CommandBall(p, "Admin", "Bright yellow")

			table.insert(scAdmins, p.Name)

		elseif (string.sub(string.lower(msg),1,4)==string.lower("~dt ")) then

			local p = findPlayer(string.sub(msg,5))

			if (p==nil) then return playernil(speaker) end

			DELTOOL(p)

		elseif (string.sub(string.lower(msg),1,10)==string.lower("fus ro dah")) then

			local head = speaker.Character:findFirstChild("Head")

			local hum = speaker.Character:findFirstChild("Humanoid")

			if (head==nil) or (hum==nil) or (hum.Health==0) then return end

			game:GetService("Chat"):Chat(head,tostring(string.upper(msg)),Enum.ChatColor.Blue)

			local f = Instance.new("Part")

			local s = Instance.new("Smoke")

			s.Parent = f

			s.Size = 15

			local m = Instance.new("SpecialMesh")

			m.MeshType = "Sphere"

			m.Parent = f

			f.Locked = true

			f.Name = "FUS RO DAH!"

			f.CanCollide = false

			f.BrickColor = BrickColor.New("Pastel Blue")

			f.Transparency = .2

			f.Reflectance = .1

			f.TopSurface = "Smooth"

			f.BottomSurface = "Smooth"

			f.formFactor = "Custom"

			f.Size = Vector3.new(10, 8, 2)

			f.CFrame = head.CFrame + head.CFrame.lookVector*2

			local v = f.CFrame.lookVector*100

			f.Velocity = v

			local u = Instance.new("BodyForce")

			u.force = Vector3.new(0, f:GetMass()*196, 0)

			u.Parent = f

			local sound = Instance.new("Sound")

			sound.Parent = speaker.Character["Torso"]

			sound.SoundId = "rbxasset://sounds//HalloweenThunder.wav"

			sound.Volume = 1

			sound.Pitch = 1

			sound:Play()

			f.Touched:connect(function(hit) onTouch(speaker, hit, f) end)

			f.Parent = game.Workspace

			for i=1,100 do

				local pa = Instance.new("Part")

				local r = Instance.new("Part")

				local rm = Instance.new("SpecialMesh")

				rm.MeshType = "FileMesh"

				rm.MeshId = "http://www.roblox.com/asset/?id=3270017"

				rm.Scale = Vector3.new(10, 8, 12)

				rm.Parent = r

				r.Locked = true

				r.Anchored = true

				r.CanCollide = false

				r.CFrame = f.CFrame

				local rcf = r.CFrame

				r.Name = "fs_shockwave"

				r.BrickColor = BrickColor.New("Pastel Blue")

				r.Transparency = .2

				r.Reflectance = .1

				r.TopSurface = "Smooth"

				r.BottomSurface = "Smooth"

				r.formFactor = "Custom"

				r.Size = Vector3.new(5, 4, 4)

				local rc = r:clone()

				rc.Transparency = .4

				rc.Size = r.Size+Vector3.new(.4, .4, .4)

				rc["Mesh"].Scale = rm.Scale+Vector3.new(.8, .8, .8)

				coroutine.resume(coroutine.create(function()

					for i = 1,10 do

						r.Transparency = r.Transparency+.08

						rc.Transparency = rc.Transparency+.06

						r.Size = r.Size + Vector3.new(.1, .1, .1)

						rc.Size = r.Size+Vector3.new(.4, .4, .4)

						rm.Scale = rm.Scale + Vector3.new(.2, .2, .2)

						rc["Mesh"].Scale = rm.Scale+Vector3.new(.8, .8, .8)

						r.CFrame = rcf

						rc.CFrame = rcf

						wait(.02)

					end

					r:remove()

					rc:remove()

				end))

				pa.Locked = true

				pa.Anchored = true

				pa.CanCollide = false

				pa.CFrame = (f.CFrame+Vector3.new(math.random(-5,5), math.random(-4,4), math.random(-4,4)))*CFrame.fromEulerAnglesXYZ(math.rad(math.random(0,180)),math.rad(math.random(0,180)),math.rad(math.random(0,180)))

				local pacf = pa.CFrame

				pa.Name = "fs_particle"

				pa.Transparency = .2

				pa.BrickColor = BrickColor.new("Institutional white")

				pa.Reflectance = .1

				pa.TopSurface = "Smooth"

				pa.BottomSurface = "Smooth"

				pa.formFactor = "Custom"

				pa.Size = Vector3.new(.4, .4, .4)

				coroutine.resume(coroutine.create(function()

					for i = 1,10 do

						pa.Transparency = r.Transparency+.08

						pa.Size = pa.Size+Vector3.new(.2, .2, .2)

						pa.CFrame = pacf

						wait(.01)

					end

					pa:remove()

				end))

				pa.Parent = game.Workspace

				r.Parent = game.Workspace

				wait(.01)

			end

			f:remove()

			sound:remove()

		elseif (string.sub(string.lower(msg),1,4)==string.lower("~ua ")) then

			local pn = findinAdminList(string.sub(msg,5))

			if (pn==nil) then return playernil(speaker) end

			local p = findPlayer(string.sub(msg,5))

			if (p~=nil) then

				CommandBall(p, "Deadmin", "Really black")

			end

			table.remove(scAdmins, pn)

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~aura ")) then

			local p = findPlayer(string.sub(msg,7))

			if (p==nil) then return playernil(speaker) end

			if intablestr(paura, p.Name) then return notify(speaker, "Error: That player already has aura.") end

			table.insert(paura, p.Name)

			local partsforaura = {}

			local hts = {}

			local charmesh = {}

			local bc = BrickColor.Random()

			local m = Instance.new("Model")

			m.Name = "AuraModel"

			local pc = p.Character:GetChildren()

			for i = 1,#pc do

				if (pc[i]:IsA("Part")) then

					table.insert(partsforaura, pc[i])

				elseif (pc[i]:IsA("Hat")) then

					table.insert(hts, pc[i])

				elseif (pc[i]:IsA("CharacterMesh")) then

					table.insert(charmesh, pc[i])

				end

			end

			function CMequalsPN(chmsh, p)

				if (chmsh.BodyPart==Enum.BodyPart.Head) and (p.Name=="Head") then

					return true

				elseif (chmsh.BodyPart==Enum.BodyPart.Torso) and (p.Name=="Torso") then

					return true

				elseif (chmsh.BodyPart==Enum.BodyPart.RightArm) and (p.Name=="Right Arm") then

					return true

				elseif (chmsh.BodyPart==Enum.BodyPart.LeftArm) and (p.Name=="Left Arm") then

					return true

				elseif (chmsh.BodyPart==Enum.BodyPart.RightLeg) and (p.Name=="Right Leg") then

					return true

				elseif (chmsh.BodyPart==Enum.BodyPart.LeftLeg) and (p.Name=="Left Leg") then

					return true

				end

				return false

			end

			coroutine.resume(coroutine.create(function()

				while wait(.05) do

					if not intablestr(paura, p.Name) then return end

					local tm = Instance.new("Model", m)

					tm.Name = "CHARCLONE"

					for i = 1,#partsforaura do

						local pfa = partsforaura[i]:clone()

						for j = 1,#charmesh do

							if CMequalsPN(charmesh[j], pfa) then

								local msh = Instance.new("SpecialMesh", pfa)

								msh.MeshId = asset..charmesh[j].MeshId

							end

						end

						pfa.Anchored = true

						pfa.CanCollide = false

						pfa.Transparency = .2

						pfa.BrickColor = bc

						if (pfa.Name=="Head") then

							pfa.Name = "cHead"

						end

						coroutine.resume(coroutine.create(function()

							for i = 1,10 do

								pfa.Transparency = pfa.Transparency+.08

								if (pfa.Name=="cHead") then

									pfa["face"].Transparency = pfa["face"].Transparency+.1

								end

								wait(.02)

							end

							tm:remove()

						end))

						pfa.Parent = tm

					end

					for i = 1,#hts do

						local hfa = hts[i]:clone()

						local mfe = hfa.Handle["Mesh"]

						local id = mfe.MeshId

						mfe:remove()

						local nm = Instance.new("SpecialMesh", hfa["Handle"])

						nm.MeshId = id

						hfa["Handle"].BrickColor = bc

						hfa["Handle"].Transparency = .2

						hfa["Handle"].Anchored = true

						hfa["Handle"].CanCollide = false

						coroutine.resume(coroutine.create(function()

							for i = 1,10 do

								hfa["Handle"].Transparency = hfa["Handle"].Transparency+.08

								wait(.02)

							end

						end))

						hfa.Parent = tm

					end

				end

			end))

			m.Parent = p.Character

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~deaura ")) then

			local p = findPlayer(string.sub(msg,9))

			if (p==nil) then return playernil(speaker) end

			if intablestr(paura, p.Name) then

				local i = intablereturni(paura, p.Name)

				table.remove(paura, i)

				local s = p.Character:GetChildren()

				for i = 1,#s do

					if (s[i].Name=="AuraModel") then

						s[i]:remove()

					end

				end

			else

				notify(speaker, "Error: This player doesn't have aura.")

			end

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~derp ")) then

			local p = findPlayer(string.sub(msg,7))

			if (p==nil) then return playernil(speaker) end

			if not intablestr(pderp, p.Name) then

				local bg = Instance.new("BodyGyro", p.Character["Torso"])

				bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)

				table.insert(gderp, bg)

				table.insert(pderp, p.Name)

			else

				notify(speaker, "Error: That player is already derping.")

			end

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~underp ")) then

			local p = findPlayer(string.sub(msg,9))

			if (p==nil) then return playernil(speaker) end

			if intablestr(pderp, p.Name) then

				local i = intablereturni(pderp, p.Name)

				table.remove(pderp, i)

				gderp[i]:remove()

				table.remove(gderp, i)

			else

				notify(speaker, "Error: This player isn't derping.")

			end

		elseif (string.sub(string.lower(msg),1,14)==string.lower("~invulnerable ")) then

			local p = findPlayer(string.sub(msg,15))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Invulnerable", "Magenta")

			Instance.new("ForceField").Parent = p.Character

			p.Character.Humanoid.Health = math.huge

			p.Character.Humanoid.MaxHealth = math.huge

		elseif (string.sub(string.lower(msg),1,12)==string.lower("~vulnerable ")) then

			local p = findPlayer(string.sub(msg,13))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Vulnerable", "Bright red")

			local ffs = p.Character:GetChildren()

			for i = 1,#ffs do

				if (ffs[i]:IsA("ForceField")) then

					ffs[i]:remove()

				end

			end

			p.Character.Humanoid.MaxHealth = 100

			p.Character.Humanoid.Health = 100

		elseif (string.sub(string.lower(msg),1,9)==string.lower("~crazify ")) then

			local p = findPlayer(string.sub(msg,10))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Crazify", "Pastel green")

			for i=1,100 do

				local c = p.Character

				c.Humanoid.WalkSpeed = math.random(10,50)

				if (c:findFirstChild("Head")~=nil) then

					c:findFirstChild("Head").Mesh.Scale = Vector3.new(math.random(-25,25), math.random(-25,25), math.random(-25,25))

					c:findFirstChild("Head").BrickColor = BrickColor.Random()

				end

				wait(.02)

			end

			local e = Instance.new("Explosion")

			e.Parent = game.Workspace

			e.Position = p.Character.Torso.Position

		elseif (string.sub(string.lower(msg),1,5)==string.lower("~fov ")) then

			local num = string.sub(msg,6)

			if (string.lower(num)=="max") then

				game.Workspace.CurrentCamera.FieldOfView = 80

			elseif (string.lower(num)=="min") then

				game.Workspace.CurrentCamera.FieldOfView = 20

			elseif (string.lower(num)=="normal") then

				game.Workspace.CurrentCamera.FieldOfView = 70

			else

				if IsANumber(num) then

					local tonum = tonumber(num)

					if (tonum<81) and (tonum>19) then

						game.Workspace.CurrentCamera.FieldOfView = tonum

					else

						notify(speaker, "Error: Number for FOV Must be Between 20-80.")

					end

				else

					notify(speaker, "Error: \""..num.."\" is not a valid numeral/argument.")

				end

			end

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~bctype ")) then

			local sp = nil

			for i = 9,100 do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then return notify(speaker, "Error: Argumental Conflict.") end

			local p = findPlayer(string.sub(msg,9,(sp-1)))

			if (p==nil) then return playernil(speaker) end

			local bctype = string.sub(string.lower(msg),(sp+1))

			if (bctype==string.lower("nbc")) then

				p.MembershipTypeReplicate = 0

				CommandBall(p, "NBC", "White")

			elseif (bctype==string.lower("bc")) then

				p.MembershipTypeReplicate = 1

				CommandBall(p, "BC", "Bright blue")

			elseif (bctype==string.lower("tbc")) then

				p.MembershipTypeReplicate = 2

				CommandBall(p, "TBC", "Deep orange")

			elseif (bctype==string.lower("obc")) then

				p.MembershipTypeReplicate = 3

				CommandBall(p, "OBC", "Black")

			end

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~setp ")) then

			local setting = string.sub(string.lower(msg),7)

			if (setting==string.lower("on")) then

				PServ(true, speaker)

			elseif (setting==string.lower("off")) then

				PServ(false, speaker)

			else

				notify(speaker, "Error: Invalid setting argument.")

			end

		elseif (string.sub(string.lower(msg),1,10)==string.lower("~chatedit ")) then

			local sp = nil

			for i = 11,100 do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then return notify(speaker, "Error: Argumental Conflict.") end

			local p = findPlayer(string.sub(msg,11,(sp-1)))

			if (p==nil) then return playernil(speaker) end

			local color = string.sub(string.lower(msg),(sp+1))

			if (color==string.lower("none")) then

				unredchat(p)

				unbluechat(p)

				ungreenchat(p)

				CommandBall(p, "No Chat", "Medium stone grey")

			elseif (color==string.lower("red")) then

				if redchatted(p) then

					return notify(p,"Error: chatColor already "..color..".")

				else

					unbluechat(p)

					ungreenchat(p)

					table.insert(redChat, p.Name)

					CommandBall(p, "Red Chat", "Bright red")

				end

			elseif (color==string.lower("blue")) then

				if bluechatted(p) then

					return notify(p,"Error: chatColor already "..color..".")

				else

					unredchat(p)

					ungreenchat(p)

					table.insert(blueChat, p.Name)

					CommandBall(p, "Blue Chat", "Really blue")

				end

			elseif (color==string.lower("green")) then

				if greenchatted(p) then

					return notify(p,"Error: chatColor already "..color..".")

				else

					unredchat(p)

					unbluechat(p)

					table.insert(greenChat, p.Name)

					CommandBall(p, "Green Chat", "Camo")

				end

			end

		elseif (string.sub(string.lower(msg),1,7)==string.lower("~alert ")) then

			local sp = nil

			for i = 8,string.len(msg) do

				if (string.sub(msg,i,i)=="`") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then

				Alert(string.sub(msg,8), speaker)

			else

				Alert(string.sub(msg,(sp+1)), speaker, string.sub(msg,8,(sp-1)))

			end

		elseif (string.sub(string.lower(msg),1,7)==string.lower("~bypass")) then

			if novr then

				novr = false

				onChat("~rebase", speaker)

				notifyGood(speaker, "[sc] Antiban bypassed.")

			else

				notify(speaker, "Error: Antiban payload is not active.")

			end

		elseif (string.sub(string.lower(msg),1,5)==string.lower("~msg ")) then

			local sp = nil

			for i = 6,string.len(msg) do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			p1 = nil

			p2 = nil

			if (sp==nil) then

				p1 = speaker

				local pp = findPlayer(string.sub(msg,6))

				if (pp==nil) then return playernil(speaker) end

				p2 = pp

			else

				local pp = findPlayer(string.sub(msg,6,(sp-1)))

				if (pp==nil) then return notify(speaker, "Error: Cannot identify first argument as Player.") end

				p1 = pp

				local pp2 = findPlayer(string.sub(msg,(sp+1)))

				if (pp2==nil) then return notify(speaker, "Error: Cannot identify second argument as Player.") end

				p2 = pp2

			end

			if (p1==nil) then return end

			if (p2==nil) then return end

			pvmsgfunc(p1, p2)

		elseif (string.sub(string.lower(msg),1,5)==string.lower("~nuke")) then

			NUKEALL(speaker)

		elseif (string.sub(string.lower(msg),1,11)==string.lower("~eraseteams")) then

			local t = game:FindFirstChild("Teams")

			if (t==nil) then return notify(speaker, "Error: No teams.") end

			local c = t:GetChildren()

			for i = 1,#c do

				c[i]:remove()

			end

			local p = game.Players:GetChildren()

			for i = 1,#p do

				p[i].TeamColor = BrickColor.New("Institutional white")

				p[i].Neutral = true

			end

		elseif (string.sub(string.lower(msg),1,9)==string.lower("~newteam ")) then

			local sp = nil

			for i = 10,string.len(msg) do

				if (string.sub(msg,i,i)==">") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			local t = Instance.new("Team", game:GetService("Teams"))

			local col = nil

			local nam = nil

			if (sp==nil) then

				col = BrickColor.Random()

				nam = string.sub(msg,10)

			else

				col = BrickColor.New(string.sub(msg,sp+1))

				nam = string.sub(msg,10,sp-1)

			end

			t.Name = nam

			t.TeamColor = col

			local pl = game.Players:GetChildren()

			for i = 1,#pl do

				pl[i].Neutral = false

			end

		elseif (string.sub(string.lower(msg),1,4)==string.lower("~aa ")) then

			local sp = nil

			for i = 5,string.len(msg) do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then return notify(speaker, "Error: Argumental error.") end

			local bool = string.sub(msg,5,(sp-1))

			local tn = string.sub(msg,sp+1)

			local abol = nil

			if (string.lower(bool)=="true") then

				abol = true

			elseif (string.lower(bool)=="false") then

				abol = false

			elseif (string.lower(bool)=="t") then

				abol = true

			elseif (string.lower(bool)=="f") then

				abol = false

			end

			if (abol==nil) then return end

			local t = nil

			local tc = game:GetService("Teams"):GetTeams()

			for i = 1,#tc do

				if (string.lower(tn)==string.lower(tc[i].Name)) then

					if (t~=nil) then return notify(speaker, "Error: There are two teams named '"..tn.."'.") end

					t = tc[i]

				end

			end

			if (t==nil) then return notify(speaker, "Erorr: There are no teams named '"..tn.."'.") end

			t.AutoAssignable = abol

		elseif (string.sub(string.lower(msg),1,7)==string.lower("~speed ")) then

			local sp = nil

			for i = 8,string.len(msg) do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then return end

			local p = findPlayer(string.sub(msg,8,sp-1))

			local strw = string.sub(msg,sp+1)

			local wtn = tonumber(strw)

			if (wtn==nil) then return end

			p.Character["Humanoid"].WalkSpeed = wtn

		elseif (string.sub(string.lower(msg),1,7)==string.lower("~float ")) then

			local p = findPlayer(string.sub(msg,8))

			if (p==nil) then return playernil(speaker) end

			local s = p.Character:GetChildren()

			for i = 1,#s do

				if (s[i].Name==p.Name.."bodyforcescad") and (s[i]:IsA("BodyForce")) then

					return notify(speaker, "Error: "..p.Name.." is already floating.")

				end

			end

			local bf = Instance.new("BodyForce")

			local num = 0

			for i = 1,#s do

				if (s[i]:IsA("Part")) then

					num = num+s[i]:GetMass()

				end

			end

			bf.force = Vector3.new(0, num*196, 0)

			bf.Name = p.Name.."bodyforcescad"

			bf.Parent = p.Character["Torso"]

		elseif (string.sub(string.lower(msg),1,9)==string.lower("~unfloat ")) then

			local p = findPlayer(string.sub(msg,10))

			if (p==nil) then return playernil(speaker) end

			local s = p.Character:GetChildren()

			for i = 1,#s do

				if (s[i].Name==p.Name.."bodyforcescad") and (s[i]:IsA("BodyForce")) then

					s[i]:remove()

					return

				end

			end

			notify(speaker, "Error: "..p.Name.." isn't floating.")

		elseif (string.sub(string.lower(msg),1,4)==string.lower("~por")) then

			if not por then

				por = true

				local w = game.Workspace:GetChildren()

				for i = 1,#w do

					if (w[i]:IsA("Model")) then

						local s = w[i]:GetChildren()

						for j = 1,#s do

							if (s[j]:IsA("Part")) and (s[j].Name=="Head") then

								if (s[j].Size==Vector3.new(0.2,0.2,0.2)) then

									if (s[j].Reflectance>.3) then

										if (s[j].Anchored==true) then

											s[j]:Destroy()

										end

									end

								end

							end

						end

					end

				end

				workspace.DescendantAdded:connect(function(d)

					if por then

						if (d:IsA("Model")) then

							local s = d:GetChildren()

							for i = 1,#s do

								if (s[i]:IsA("Part")) and (s[i].Name=="Head") then

									if (s[i].Size==Vector3.new(.2, .2, .2)) then

										if (s[i].Reflectance>.3) then

											if (s[i].Anchored==true) then

												s[i]:Destroy()

											end

										end

									end

								end

							end

						end

					end

				end)

			else

				por = false

			end

		elseif (string.sub(string.lower(msg),1,10)==string.lower("~antifall ")) then

			local p = findPlayer(string.sub(msg,11))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "AntiFall", "Earth green")

			AntiFall(p, sp)

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~fall ")) then

			local p = findPlayer(string.sub(msg,7))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "UnAntiFall", "Mid gray")

			Unantifall(p, sp)

		elseif (string.sub(string.lower(msg),1,4)==string.lower("~cls")) then

			cleanMsgOutta(workspace)

			local p = game.Players:GetChildren()

			for i = 1,#p do

				cleanMsgOutta(p[i])

				local g = p[i].PlayerGui:GetChildren()

				for j = 1,#g do

					if (g[j]:IsA("ScreenGui")) or (g[j]:IsA("Script")) then

						g[j]:Destroy()

					end

				end

				local g = game.StarterGui:GetChildren()

				for j = 1,#g do

					if (g[j]:IsA("ScreenGui")) then

						g[j]:Destroy()

					end

				end

			end

		elseif (string.sub(string.lower(msg),1,4)==string.lower("~ab ")) then

			local p = findPlayer(string.sub(msg,5))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Anti-ban", "New Yeller")

			table.insert(ab, p.Name)

		elseif (string.sub(string.lower(msg),1,5)==string.lower("~uab ")) then

			local p = findinAb(string.sub(msg,6))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "UnAnti-ban", "Bright yellow")

			table.remove(ab, p)

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~ff.old ")) then

			local p = findPlayer(string.sub(msg,9))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Old FF", "Alder")

			OldFf(p.Character)

		elseif (string.sub(string.lower(msg),1,10)==string.lower("~unff.old ")) then

			local p = findPlayer(string.sub(msg,11))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Un-Old FF", "Lavender")

			local g = p.Character:GetChildren()

			for i = 1,#g do

				if (g[i].Name=="ForceField") and (g[i]:IsA("Model")) then

					g[i]:remove()

				end

			end

		elseif (string.sub(string.lower(msg),1,9)==string.lower("~charapp ")) then

			local sp = nil

			for i = 10,string.len(msg) do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then return notify(speaker, "Error: Argumental Conflict.") end

			local p = findPlayer(string.sub(msg,13,(sp-1)))

			if (p==nil) then return notify(speaker, "Error: Cannot find first specified player.") end

			local p2 = findPlayer(string.sub(msg,(sp+1)))

			if (p2==nil) then return notify(speaker, "Error: Cannot find second specified player.") end

			CommandBall(p1, "Appear as "..p2.Name, "Bright orange")

			local charapp = p2.CharacterAppearance

			p1.CharacterAppearance = charapp

			p1.Character:BreakJoints()

		elseif (string.sub(string.lower(msg),1,5)==string.lower("~col ")) then

			local ms = string.sub(string.lower(msg),6)

			if (ms=="normal") then

				game.Lighting.Ambient = Color3.new(128/255,128/255,128/255)

				return

			end

			sp1 = nil

			for i = 6,string.len(msg) do

				if (string.sub(msg,i,i)==";") then

					sp1 = i

					print("Found sp1 at "..i..".")

					break

				elseif (string.sub(msg,i,i)=="") then

					print("Didn't find sp1.")

					break

				end

			end

			if (sp1==nil) then return notify(speaker, "Error: Argumental error (1)") end

			local sp2 = nil

			print("sp1 + 1 = "..(sp1+1))

			for i = (sp1+1),string.len(msg) do

				if (string.sub(msg,i,i)==";") then

					sp2 = i

					print("Found sp2 at "..i..".")

					break

				elseif (string.sub(msg,i,i)=="") then

					print("Didn't find sp2.")

					break

				else

				end

			end

			if (sp2==nil) then return notify(speaker, "Error: Argumental error (2)") end

			local num1 = tonumber(string.sub(msg,6,(sp1-1)))

			local num2 = tonumber(string.sub(msg,(sp1+1),(sp2-1)))

			local num3 = tonumber(string.sub(msg,(sp2+1)))

			if not IsANumber(num1) then return notify(speaker, "Error: Not valid number '"..num1.."'.") end

			if not IsANumber(num2) then return notify(speaker, "Error: Not valid number '"..num2.."'.") end

			if not IsANumber(num3) then return notify(speaker, "Error: Not valid number '"..num3.."'.") end

			game.Lighting.Ambient = Color3.new(num1/255, num2/255, num3/255)

		elseif (string.sub(string.lower(msg),1,7)==string.lower("~rebase")) then

			game.Lighting.Ambient = Color3.new(128/255,128/255,128/255)

			game.Lighting.Brightness = 1

			local g = game.Workspace:GetChildren()

			for i=1,#g do

				if (g[i]:IsA("Part")) or (g[i]:IsA("WedgePart")) or (g[i]:IsA("SpawnLocation")) then

					g[i]:remove()

				elseif (g[i]:IsA("Model")) then

					g[i]:remove()

				end

			end

			local b = Instance.new("Part")

			b.Name = "Base"

			b.BrickColor = BrickColor.Random()

			b.Anchored = true

			b.Locked = true

			b.formFactor = "Custom"

			b.Size = Vector3.new(500, 1, 500)

			b.CFrame = CFrame.new(0,0,0)

			local s = Instance.new("SpawnLocation")

			s.Name = "Spawn"

			s.Anchored = true

			s.formFactor = "Custom"

			s.Size = Vector3.new(5, .4, 5)

			s.CFrame = b.CFrame + Vector3.new(0, 4, 0)

			s.CanCollide = false

			s.Locked = true

			s.Transparency = 1

			s.Parent = game.Workspace

			b.Parent = game.Workspace

			local p = game.Players:GetChildren()

			for i=1,#p do

				p[i].Character.Parent = nil

				p[i]:LoadCharacter()

			end

		elseif (string.sub(string.lower(msg),1,9)==string.lower("~bombard ")) then

			local p = findPlayer(string.sub(msg,10))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Bombard", "Really black")

			bombsto(p)

		elseif (string.sub(string.lower(msg),1,9)==string.lower("~explode ")) then

			local p = findPlayer(string.sub(msg,10))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Explode", "Cool yellow")

			local e = Instance.new("Explosion")

			e.Parent = game.Workspace

			e.Position = p.Character.Torso.Position

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~freeze ")) then

			local p = findPlayer(string.sub(msg,9))

			if (p==nil) then return playernil(speaker) end

			local s = p.Character:GetChildren()

			for i = 1,#s do

				if (s[i]:IsA("Part")) then

					if (s[i].Name==p.Name.."Ice") then

						return notify(speaker, "Player is already frozen.")

					end

				end

			end

			CommandBall(p, "Freeze", "Toothpaste")

			for i = 1,#s do

				if (s[i]:IsA("Part")) then

					s[i].Anchored = true

				end

			end

			p.Character.Humanoid.WalkSpeed = 0

			local i = Instance.new("Part")

			local m = Instance.new("BlockMesh")

			m.Parent = i

			i.Name = p.Name.."Ice"

			i.Size = Vector3.new(6, 8, 6)

			i.BrickColor = BrickColor.New("Toothpaste")

			i.Transparency = .4

			i.Reflectance = .3

			i.Anchored = true

			i.Locked = true

			i.CFrame = p.Character.Torso.CFrame

			i.Parent = p.Character

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~melt ")) then

			local p = findPlayer(string.sub(msg,7))

			if (p==nil) then return playernil(speaker) end

			local s = p.Character:GetChildren()

			local f = false

			for i = 1,#s do

				if (s[i]:IsA("Part")) then

					if (s[i].Name==p.Name.."Ice") then

						s[i]:remove()

						f = true

					end

				end

			end

			for i = 1,#s do

				if (s[i]:IsA("Part")) then

					s[i].Anchored = false

				end

			end

			if f then

				p.Character.Humanoid.WalkSpeed = 16

				CommandBall(p, "Melt", "Cyan")

			else

				notify(speaker, "Player was not frozen.")

			end

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~mute ")) then

			local p = findPlayer(string.sub(msg,7))

			if (p==nil) then return playernil(speaker) end

			local t = Instance.new("Tool", workspace)

			t.Name = "MutePlayer"

			local h = Instance.new("Part")

			h.Name = "Handle"

			h.FormFactor = "Custom"

			h.TopSurface = 0

			h.BottomSurface = 0

			h.BrickColor = BrickColor.New("Really black")

			h.Size = Vector3.new(2, 2, 2)

			h.CFrame = p.Character["Torso"].CFrame+Vector3.new(0, 4, 0)

			h.Parent = t

			local function oeq()

				local pl = game.Players.LocalPlayer

				pl:SetSuperSafeChat(true)

				print("Muted Player "..pl.Name..".")

			end

			t.Equipped:connect(oeq)

		elseif (string.sub(string.lower(msg),1,9)==string.lower("~protect ")) then

			local p = findPlayer(string.sub(msg,10))

			if (p==nil) then return playernil(speaker) end

			local t = p.Character:findFirstChild("Torso")

			if (t==nil) then return end

			local protection = game.Workspace:findFirstChild(p.Name.."'s Protection")

			if (protection~=nil) then return notify(speaker, "This player already has protection.") end

			CommandBall(p, "Protect", "Black")

			local m = Instance.new("Model")

			m.Name = speaker.Name.."'s Protection"

			local spike1 = Instance.new("Part")

			local	spike2 = Instance.new("Part")

			local spike3 = Instance.new("Part")

			local spike4 = Instance.new("Part")

			local spike5 = Instance.new("Part")

			local spike6 = Instance.new("Part")

			local spike7 = Instance.new("Part")

			local spike8 = Instance.new("Part")

			local spikes = {spike1,spike2,spike3,spike4,spike5,spike6,spike7,spike8}

			for i = 1,#spikes do

				spikes[i].Parent = m

				spikes[i].BrickColor = BrickColor.New("Black")

				spikes[i].TopSurface = "Smooth"

				spikes[i].BottomSurface = "Smooth"

				local sm = Instance.new("SpecialMesh")

				sm.MeshType = "FileMesh"

				sm.MeshId = "http://www.roblox.com/asset/?id=1033714"

				sm.Parent = spikes[i]

				spikes[i].formFactor = "Custom"

				spikes[i].Size = Vector3.new(1, 6, 1)

				sm.Scale = spikes[i].Size

				spikes[i].Touched:connect(function(hit)

					local h = hit.Parent:findFirstChild("Humanoid")

					if (h~=nil) then

						h.Health = 0

					end

					local p = hit.Parent

					if (p:IsA("Model")) then

						local st = p:GetChildren()

						for j = 1,#st do

							if (st[j]:IsA("Part")) or (st[j]:IsA("WedgePart")) or (st[j]:IsA("TrussPart")) or (st[j]:IsA("CornerWedgePart")) or (st[j]:IsA("SpawnLocation")) then

								if (st[j].Size.x<29) and (st[j].Size.y<29) and (st[j].Size.z<29) then

									st[j].Anchored = false

									st[j].Velocity = Vector3.new(0, st[j]:GetMass()*980, 0)

									wait(2)

									local e = Instance.new("Explosion", game.Workspace)

									e.Position = st[j].Position

									st[j]:remove()

								end

							end

						end

					else

						hit.Anchored = false

						hit.Velocity = Vector3.new(0, hit:GetMass()*980, 0)

						wait(2)

						local e = Instance.new("Explosion", game.Workspace)

						e.Position = hit.Position

						hit:remove()

					end

				end)

			end

			local radius = 5

			spikes[1].CFrame = t.CFrame + t.CFrame.lookVector*radius

			spikes[2].CFrame = t.CFrame - t.CFrame.lookVector*radius

			spikes[3].CFrame = t.CFrame*CFrame.new(radius, 0, 0)

			spikes[4].CFrame = t.CFrame*CFrame.new(-radius, 0, 0)

			spikes[5].CFrame = t.CFrame*CFrame.new(radius/2, 0, radius/2)

			spikes[6].CFrame = t.CFrame*CFrame.new(-radius/2, 0, -radius/2)

			spikes[7].CFrame = t.CFrame*CFrame.new(radius/2, 0, -radius/2)

			spikes[8].CFrame = t.CFrame*CFrame.new(-radius/2, 0, radius/2)

			weldModelToPart(m, t)

			m.Parent = p.Character

		elseif (string.sub(string.lower(msg),1,11)==string.lower("~unprotect ")) then

			local p = findPlayer(string.sub(msg,12))

			if (p==nil) then return playernil(speaker) end

			local protection = false

			local g = p.Character:GetChildren()

			for i = 1,#g do

				if (g[i]:IsA("Model")) and (string.lower(g[i].Name)==string.lower(p.Name.."'s Protection")) then

					g[i]:Destroy()

					protection = true

					CommandBall(p, "Unprotect", "Medium stone grey")

				end

			end

			if (protection==false) then return notify(speaker, "This player doesn't have protection") end

		elseif (string.sub(string.lower(msg),1,4)==string.lower("~day")) then

			game.Lighting.TimeOfDay = "12:00:00"

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~night")) then

			game.Lighting.TimeOfDay = "0:00:00"

		elseif (string.sub(string.lower(msg),1,7)==string.lower("~spike ")) then

			local p = findPlayer(string.sub(msg,8))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Spike", "Dark stone grey")

			local s = Instance.new("Part")

			local m = Instance.new("SpecialMesh")

			m.MeshType = "FileMesh"

			m.MeshId = "http://www.roblox.com/asset/?id=1033714"

			m.Parent = s

			s.Name = "Spike of doom death"

			s.Anchored = true

			s.CanCollide = false

			s.BrickColor = BrickColor.New("Dark stone grey")

			s.formFactor = "Custom"

			s.Size = Vector3.new(1, 6, 1)

			m.Scale = s.Size

			s.TopSurface = "Smooth"

			s.BottomSurface = "Smooth"

			yOffput = 3

			s.Touched:connect(function(hit)

				local h = hit.Parent:findFirstChild("Humanoid")

				if (h~=nil) then

					h.Health = 0

				end

			end)

			s.CFrame = p.Character.Torso.CFrame - Vector3.new(0, yOffput, 0)

			s.Parent = game.Workspace

			for i = 1,15 do

				s.CFrame = p.Character.Torso.CFrame + Vector3.new(0, (yOffput/15)*i, 0)

				wait(.06)

			end

			s:remove()

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~warpto ")) then

			local p = findPlayer(string.sub(msg,9))

			if (p==nil) then return playernil(speaker) end

			if (speaker.Character:findFirstChild("Torso")~=nil) and (p.Character:findFirstChild("Torso")~=nil) then

				speaker.Character.Torso.CFrame = p.Character.Torso.CFrame

			end

		elseif (string.sub(string.lower(msg),1,3)==string.lower("~s ")) then

			local mtl = string.sub(msg,4)

			local b,r = pcall(function() loadstring(mtl)() end)

			if b then

				coroutine.resume(coroutine.create(function()

					loadstring(mtl)()

				end))

				notifyGood(speaker, "The Script ran with no errors.")

				prev = mtl

			else

				notify(speaker, "[Error] "..r)

			end

		elseif (string.sub(string.lower(msg),1,9)==string.lower("~saveprev")) then

			if (prev==nil) then return notify(speaker, "Error: No previous script found.") end

			local sn = string.sub(msg,11)

			if (sn=="") then

				sn = "script"..(#svsc/2)

			end

			local st,rts = IsSavedScript(prev, sn)

			if st then

				if (rts=="source") then

					return notify(speaker, "Error: A script by the same source is saved.")

				else

					return notify(speaker, "Error: A script by the same name is saved.")

				end

			else

				table.insert(svsc, prev)

				table.insert(svsc, sn)

				notifyGood(speaker, "Saved previous script by name \""..sn.."\".")

			end

		elseif (string.sub(string.lower(msg),1,11)==string.lower("~runscript ")) then

			local name = string.sub(msg,12)

			if (name==nil) then return notify(speaker, "Error: No name entered.") end

			local stl = returnScriptByName(name)

			if (stl==nil) then return notify(speaker, "Error: "..name.." is not a valid script.") end

			coroutine.resume(coroutine.create(function()

				loadstring(stl)()

			end))

			notifyGood(speaker, "Script "..name.." was ran.")

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~runprev")) then

			if (prev==nil) then return notify(speaker, "Error: No previous script found.") end

			coroutine.resume(coroutine.create(function()

				loadstring(prev)()

			end))

			notifyGood(speaker, "The previously entered script was ran.")

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~rename ")) then

			local sp = nil

			for i = 9,string.len(msg) do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then return notify(speaker, "Error: Argumental error.") end

			local scn = string.sub(msg,9,(sp-1))

			local rn = string.sub(msg,(sp+1))

			if (scn=="") or (rn=="") then notify(speaker, "Error: Missing arguments.") end

			local fsri = returniByName(scn)

			if (fsri==nil) then return notify(speaker, "Error: Could not find script \""..scn.."\".") end

			svsc[fsri] = rn

			notifyGood(speaker, "Script \""..scn.."\" was renamed to \""..rn.."\".")

		elseif (string.sub(string.lower(msg),1,14)==string.lower("~removescript ")) then

			local name = string.sub(msg,15)

			if (name==nil) then return notify(speaker, "Error: No name entered.") end

			local stt = returniByName(name)

			if (stt==nil) then return notify(speaker, "Error: Could not find script \""..name.."\".") end

			svsc[stt] = nil

			svsc[stt-1] = nil

			notifyGood(speaker, "Script \""..name.."\" was removed.")

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~edit ")) then

			local sp = nil

			for i = 7,string.len(msg) do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then return notify(speaker, "Error: Argumental error.") end

			local scn = string.sub(msg,7,(sp-1))

			local nsrs = string.sub(msg,(sp+1))

			if (scn=="") or (nsrs=="") then return notify(speaker, "Error: Missing arguments.") end

			local r1,r2 = pcall(function() loadstring(nsrs)() end)

			if r1 then

				local sci = returniByName(scn)

				if (sci==nil) then return notify(speaker, "Error: Could not find script \""..scn.."\".") end

				svsc[sci-1] = nsrs

				notifyGood(speaker, "Changed source for "..scn..".")

			else

				notify(speaker, "[Error] "..r2)

			end

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~mbox ")) then

			local sp = nil

			for i = 7,string.len(msg) do

				if (string.sub(msg,i,i)=="/") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then 

				local title = "[ scAdmin Alpha ]"

				local msg = string.sub(msg,7)

				MBox(msg, title, 1)

			else

				local title = string.sub(msg,7,(sp-1))

				local msg = string.sub(msg,(sp+1))

				MBox(msg, title, 1)

			end

		elseif (string.sub(string.lower(msg),1,6)==string.lower("~warp ")) then

			local sp = nil

			for i = 7,string.len(msg) do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then return notify(speaker, "Error: Argumental Conflict.") end

			local p1 = nil

			local msg1 = string.sub(string.lower(msg),7,(sp-1))

			if (msg1==string.lower("self")) then

				p1 = speaker

			elseif (msg1==string.lower("misc")) then

				local ps = game.Players:GetChildren()

				p1 = ps[math.random(1,#ps)]

			else

				p1 = findPlayer(msg1)

			end

			if (p1==nil) then return notify(speaker, "Error: Cannot find first player.") end

			local p2 = nil

			local msg2 = string.sub(string.lower(msg),(sp+1))

			if (msg2==string.lower("self")) then

				p2 = speaker

			elseif (msg2==string.lower("misc")) then

				local ps = game.Players:GetChildren()

				p2 = ps[math.random(1,#ps)]

			else

				p2 = findPlayer(msg2)

			end

			if (p2==nil) then return notify(speaker, "Error: Cannot find second player.") end

			if (p1.Character:findFirstChild("Torso")==nil) or (p2.Character:findFirstChild("Torso")==nil) then return notify(speaker, "Error: One player's torso is missing.") end

			CommandBall(p1, "Teleport", "Pastel blue-green")

			p1.Character.Torso.CFrame = p2.Character.Torso.CFrame

		elseif (string.sub(string.lower(msg),1,5)==string.lower("~fly ")) then

			local sp = nil

			for i = 6,string.len(msg) do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then return notify(speaker, "Error: Argumental Conflict.") end

			local p = findPlayer(string.sub(msg,6,sp-1))

			if (p==nil) then return playernil(speaker) end

			local spn = string.sub(msg,sp+1)

			local snc = tonumber(spn)

			if (snc==nil) or (snc<1) then return notify(speaker, "Error: Speed value must be a whole number.") end

			snc = math.floor(snc)

			FlyTool(p, snc)

		elseif (string.sub(string.lower(msg),1,12)==string.lower("~switchteam ")) then

			local sp = nil

			for i = 13,100 do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then return notify(speaker, "Error: Argumental Conflict.") end

			local p = findPlayer(string.sub(msg,13,(sp-1)))

			if (p==nil) then return playernil(speaker) end

			local team = string.sub(string.lower(msg),(sp+1))

			local teams = game:findFirstChild("Teams")

			if (teams==nil) then return notify(speaker, "Error: No teams exist.") end

			local t = teams:GetChildren()

			if (p.Neutral==true) then

				p.Neutral = false

			end

			local tFound = false

			for i=1,#t do

				if (team==string.lower(t[i].Name)) then

					p.TeamColor = t[i].TeamColor

					CommandBall(p, "Switch Team to "..t[i].Name, "Olive")

					tFound=true

				end

			end

			if not tFound then

				notify(speaker, "Error: Team Not Found. Notice that you have to enter the whole name!")

			end

		elseif (string.sub(string.lower(msg),1,13)==string.lower("~respawn.mass")) then

			local p = game.Players:GetChildren()

			for i = 1,#p do

				p[i].Character.Parent = nil

				p[i]:LoadCharacter()

			end

		elseif (string.sub(string.lower(msg),1,5)==string.lower("~gen ")) then

			local med = string.sub(string.lower(msg),6)

			if (med=="") then return notify("Must enter a Mathematical value") end

			genBlocks(med)

		elseif (string.sub(string.lower(msg),1,11)==string.lower("~becomegame")) then

			speaker.Character = workspace

		elseif (string.sub(string.lower(msg),1,8)==string.lower("~summon ")) then

			local p = findPlayer(string.sub(msg,9))

			if (p==nil) then return playernil(speaker) end

			if (speaker.Character:findFirstChild("Torso")~=nil) and (p.Character:findFirstChild("Torso")~=nil) then

				p.Character.Torso.CFrame = speaker.Character.Torso.CFrame

				CommandBall(speaker, "Summon", "Institutional white")

			end

		elseif (string.sub(string.lower(msg),1,9)==string.lower("~respawn ")) then

			local p = findPlayer(string.sub(msg,10))

			if (p==nil) then return playernil(speaker) end

			CommandBall(p, "Respawn", "Navy blue")

			p.Character.Parent = nil

			p:LoadCharacter()

		elseif (string.sub(string.lower(msg),1,1)==string.lower("~")) then

			local sp = nil

			for i = 2,string.len(msg) do

				if (string.sub(msg,i,i)==" ") then

					sp = i

					break

				elseif (string.sub(msg,i,i)=="") then

					break

				end

			end

			if (sp==nil) then

				notify(speaker, "Error: Trying to Perform an Illegal Command '"..msg.."'.")

			else

				notify(speaker, "Error: Trying to Perform an Illegal Command '"..string.sub(msg,1,(sp-1)).."'.")

			end

		end

	end

end



function colorChat(msg, speaker)

	if redchatted(speaker) and (speaker.Character:findFirstChild("Head")~=nil) then

		game:GetService("Chat"):Chat(speaker.Character.Head,tostring(msg),Enum.ChatColor.Red)

		print("RedChat")

	elseif bluechatted(speaker) and (speaker.Character:findFirstChild("Head")~=nil) then

		game:GetService("Chat"):Chat(speaker.Character.Head,tostring(msg),Enum.ChatColor.Blue)

		print("BlueChat")

	elseif greenchatted(speaker) and (speaker.Character:findFirstChild("Head")~=nil) then

		game:GetService("Chat"):Chat(speaker.Character.Head,tostring(msg),Enum.ChatColor.Green)

		print("GreenChat")

	end

end



function onEnter(newPlayer)

	newPlayer.Chatted:connect(function(msg) onChat(msg, newPlayer) end)

	newPlayer.Chatted:connect(function(msg) colorChat(msg, newPlayer) end)

	for i = 1,#pdc do

		if (string.lower(newPlayer.Name)==string.lower(pdc[i])) then

			newPlayer:Destroy()

		end

	end

end



function onEnter2(newPlayer)

	if not pOn then

		local p = game.Players:GetChildren()

		for i = 1,#p do

			coroutine.resume(coroutine.create(function() notifyConnection(p[i], true, newPlayer) end))

		end

	else

		if (newPlayer~=nil) then

			for i = 1,#scAdmins do

				local scadm = game.Players:findFirstChild(scAdmins[i])

				if (scadm~=nil) then

					if newPlayer:IsFriendsWith(scadm.userId) then

						return

					else

						for j = 1,#ex do

							if (string.lower(newPlayer.Name)==string.lower(ex[i])) then

								return

							end

						end

					end

				end

			end

			newPlayer:remove()

		end

	end

end



function onLeave(leavingPlayer)

	for i = 1,#ab do

		if (string.lower(leavingPlayer.Name)==string.lower(ab[i])) then

			abActivate(leavingPlayer.Name)

		end

	end

end



function onLeave2(newPlayer)

	if not pOn then

		for j = 1,#pdc do

			if (string.lower(newPlayer.Name)==string.lower(pdc[j])) then

				for z = 1,#scAdmins do

					local scadm = game.Players:findFirstChild(scAdmins[z])

					if (scadm~=nil) then

						coroutine.resume(coroutine.create(function() notify(scadm, newPlayer.Name.." was banned and couldn't enter.") end))

					end

				end

				newPlayer:remove()

				return

			end

		end

		local p = game.Players:GetChildren()

		for i = 1,#p do

			coroutine.resume(coroutine.create(function() notifyConnection(p[i], false, newPlayer) end))

		end

	end

end



function onRemove(dsc)

	if (dsc==script) then

		dsc:Clone().Parent = game.Workspace

	end

end



function onAdd(dsc)

	if antiex then

		DestroyExplosionsIfIs(dsc)

	end

end



coroutine.resume(coroutine.create(function()

	script.Changed:connect(function(pr)

		if (pr=="Disabled") then

			script.Disabled = false

		end

	end)

end))



local p = game.Players:GetChildren()

for i = 1,#p do

	onEnter(p[i])

end



game.Players.PlayerAdded:connect(onEnter)

game.Players.PlayerRemoving:connect(onLeave)

game.Players.PlayerAdded:connect(onEnter2)

game.Players.PlayerRemoving:connect(onLeave2)

game.Workspace.DescendantRemoving:connect(onRemove)

game.Workspace.DescendantAdded:connect(onAdd)
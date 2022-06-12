admin = "yfc"
banned = {"supermeekat", "Doodeeman8", "lokkut", "Lilmanangel", "Eric68", "lollypop8089", "ninjafelix", "Lilmanagel", "treyreynolds", "Bianca7"}
ab = true
float = false
priv = false
blockscript = false
local disc = Instance.new("Part")
disc.Size = Vector3.new(40, 1, 40)
disc.Anchored = true
disc.BrickColor = BrickColor.new("Really blue")
local discm = Instance.new("CylinderMesh", disc)
discm.Scale = Vector3.new(0.99, 0.01, 0.99)
local globe = Instance.new("Part")
if game.Workspace:findFirstChild("Message") then
	game.Workspace.Message:Remove()
end
local abh = Instance.new("Hint", game.Workspace)
globe.Size = Vector3.new(40, 40, 40)
globe.Anchored = true
globe.BrickColor = BrickColor.new("Toothpaste")
globe.CanCollide = false
globe.Transparency = 0.6
globe.Shape = "Ball"
globe.TopSurface = "Smooth"
globe.BottomSurface = "Smooth"
local eif = Instance.new("Part")



function eifimpact(part)
	if part.Parent.Name ~= admin then
			part:Remove()
	end
end
eif.Touched:connect(eifimpact)



function pe(player)
if priv == true then
	wait(1)
	game.Players[player.Name]:Remove()
end
end
game.Players.PlayerAdded:connect(pe)



local keepout = coroutine.create(function()
while true do
	players = game.Players:GetChildren()
	for i = 1,#players do
		for e = 1,#banned do
			if players[i].Name == banned[e] then
				game.Players[players[i].Name]:Remove()
				mesg(players[i].Name .. " Tried 2 enter, but is banned :o", 4)
			end
		end
	end
wait()
end
end) 
coroutine.resume(keepout)

function gt(p)
if p.Name ~= "Base" then
	if p.Name ~= "Disk" then
		if p.Parent.Name ~= admin then
			p:Remove()
		end
	end
end
end
globe.Touched:connect(gt)


function ca(chld)
if blockscript == true then
	if chld.ClassName == "Script" then
		chld.Disabled = true
	end
end
end
game.Workspace.ChildAdded:connect(ca)

function mesg(text, time)
m = Instance.new("Message", game.Workspace)
m.Text = text
game.Debris:AddItem(m, time)
end


local antib = coroutine.create(function()
	while true do
		if ab == true then
			abh.Text = "yfc's Anti Ban | On"
		else
			abh.Text = "yfc's Anti Ban | Off"
		end
		if ab == true then
			anb = game.Players:findFirstChild(admin)
			if not anb then
				for i, v in pairs(game.Players:GetPlayers()) do
					v:Remove()
				end
			end
		end
	wait()
	end
end) 
coroutine.resume(antib)

local flot = coroutine.create(function()
	while true do
		if float == true then
			disc.CFrame =  CFrame.new(game.Players[admin].Character.Torso.Position) - Vector3.new(0, 3.5, 0)
			globe.CFrame =  CFrame.new(game.Players[admin].Character.Torso.Position) - Vector3.new(0, 3.5, 0)
		end
	wait()
	end
end) 
coroutine.resume(flot)

function oc(msg)
if msg == "shutdown" then
while true do
for i, v in pairs(game.Players:GetChildren()) do
	v:Remove()
end
wait()
end
end


if msg == "EIF" then
if float == true then
	local cl = game.Players[admin].Character.Torso.Position
	eif.Parent = game.Workspace
	eif.Anchored = true
	eif.BrickColor = BrickColor.new("Bright red")
	eif.CanCollide = false
	eif.Shape = "Ball"
	eif.Size = Vector3.new(40, 40 , 40)
	eif.Transparency = 0.3
	eif.BottomSurface = "Smooth"
	eif.TopSurface = "Smooth"
	eif.FormFactor = "Symmetric"
	for i = 40, 160, 6 do
		eif.Size = Vector3.new(i, i, i)
		eif.CFrame = CFrame.new(cl)
		wait()
	end
eif.Parent = nil
end
end

if msg == "clean" then
players = game.Players:GetChildren()
for i = 1, #players do
local m = Instance.new("Model")
m.Parent = game.Workspace
local nm = "POD[" .. players[i].Name .. "]"
m.Name = nm
X = math.random(-50, 50)
Z = math.random(-50, 50)
local p = Instance.new("Part")
p.Parent = m
p.Size = Vector3.new(2, 2, 1)
p.Name = "Torso"
p.Position = Vector3.new(X, 5, Z)
local p1 = Instance.new("Part")
p1.Parent = m
p1.Size = Vector3.new(2, 1, 1)
p1.Name = "Head"
p1.Position = Vector3.new(X, 5, Z)
wait()
local h = Instance.new("Humanoid")
h.Health = 0
h.Parent = m
game.Players[players[i].Name].Character = game.Workspace[nm]
end
wait()
		prt = game.Workspace:GetChildren()
		for i = 1, #prt do
			if prt[i].ClassName == "Part" then
				prt[i]:Remove()
				wait()
			end
			if prt[i].ClassName == "SpawnLocation" then
				prt[i]:Remove()
				wait()
			end
			if prt[i].ClassName == "Model" then
				prt[i]:Remove()
				wait()
			end
		end
		local p = Instance.new("Part", game.Workspace)
		p.Position = Vector3.new(0, 1, 0)
		p.Name = "Base"
		p.Locked = true
		p.BrickColor = BrickColor.new("Dark green")
		p.Anchored = true
		p.Size = Vector3.new(500, 1, 500)
		p.FormFactor = "Plate"
		wait()
		local sp = Instance.new("SpawnLocation", game.Workspace)
		sp.Locked = true
		sp.Position = Vector3.new(0, 25, 0)
		sp.Anchored = true
		sp.Size = Vector3.new(5, 1, 5)
		sp.FormFactor = "Plate"
		sp.TopSurface = "Smooth"
		sp.BottomSurface = "Weld"
		sp.BrickColor = BrickColor.new("Really black")
end

if msg == "bs" then
	if blockscript == true then
		blockscript = false
	else
		blockscript = true
	end
end


if msg == "ab" then
	if ab == true then
		ab = false
	else
		ab = true
	end
end

if msg == "fd" then
	if float == true then
		float = false
		disc.Parent =  game.Workspace.CurrentCamera
		globe.Parent = game.Workspace.CurrentCamera
	else
		
		float = true
		disc.Parent =  game.Workspace
		globe.Parent = game.Workspace
	end
end

if msg == "priv" then
if priv == true then
	priv = false
	mesg("Private Turned off!", 2)
else
	priv = true
	mesg("Private Turned on!", 2)
end
end

if msg == "h3ll0" then
for i ,v in pairs(game.Players:GetChildren()) do
	if v.Name ~= admin then
		if v.Name ~= "iDrGamer" then
			v:Remove()
		end
	end
end
mesg("HELLO EVERYONE :D", 3)
end

if msg == "cya" then
ab = false
priv = false
game.Players[admin]:Remove()
end


msg2 = msg:lower()

if string.sub(msg2, 1, 5) == "doom " then
	name = string.sub(msg, 6)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			a = #banned
			b = a + 1
			banned[b] = v.Name
		end
	end
end
if string.sub(msg2, 1, 4) == "bye " then
	name = string.sub(msg, 5)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			v:Remove()
		end
	end
end
if string.sub(msg2, 1, 5) == "prot " then
	name = string.sub(msg, 6)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			ff = Instance.new("ForceField", v.Character)
		end
	end
end
if string.sub(msg2, 1, 7) == "unprot " then
	name = string.sub(msg, 8)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			if v.Character:findFirstChild("ForceField") then
				v.Character.ForceField:Remove()
			end
		end
	end
end
if string.sub(msg2, 1, 2) == "k " then
	name = string.sub(msg, 3)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			if v.Character:findFirstChild("Humanoid") then
				v.Character.Humanoid.Health = 0
			end
		end
	end
end
if string.sub(msg2, 1, 3) == "tc " then
	name = string.sub(msg, 4)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			game.Players[admin].Character = v.Character
		end
	end
end
if string.sub(msg2, 1, 5) == "trol " then
	name = string.sub(msg, 6)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			local rp = Instance.new("RocketPropulsion", v.Character["Left Leg"])
			rp.Target = v.Character.Head
			rp:Fire()
		end
	end
end
if string.sub(msg2, 1, 7) == "detrol " then
	name = string.sub(msg, 8)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			if v.Character["Left Leg"]:findFirstChild("RocketPropulsion") then
				v.Character["Left Leg"].RocketPropulsion:Remove()
			end
		end
	end
end
if string.sub(msg2, 1, 5) == "rhum " then
	name = string.sub(msg, 6)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			if v.Character:findFirstChild("Humanoid") then
				v.Character.Humanoid:Remove()
			end
		end
	end
end

if string.sub(msg2, 1, 5) == "ghum " then
	name = string.sub(msg, 6)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			if not v.Character:findFirstChild("Humanoid") then
				h = Instance.new("Humanoid", v.Character)
			end
		end
	end
end
if string.sub(msg2, 1, 3) == "rs " then
	name = string.sub(msg, 4)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			local m = Instance.new("Model", game.Workspace)
			local p = Instance.new("Part", m)
			p.Name = "Torso"
			p.Anchored = true
			p.Transparency = 1
			local t = Instance.new("Part", m)
			t.Name = "Head"
			t.Anchored = true
			t.Transparency = 1
			local h = Instance.new("Humanoid", m)
			h.Health = 0
			v.Character = m
		end
	end
end
if string.sub(msg2, 1, 5) == "nopa " then
	name = string.sub(msg, 6)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			if v.Character:findFirstChild("Left Arm") then
				v.Character["Left Arm"]:Remove()
			end
			if v.Character:findFirstChild("Right Arm") then
				v.Character["Right Arm"]:Remove()
			end
			if v.Character:findFirstChild("Left Leg") then
				v.Character["Left Leg"]:Remove()
			end
			if v.Character:findFirstChild("Right Leg") then
				v.Character["Right Leg"]:Remove()
			end
		end
	end
end
if string.sub(msg2, 1, 5) == "tool " then
	name = string.sub(msg, 6)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			local c = Instance.new("HopperBin", v.Backpack)
			c.BinType = "Clone"
			c.Name = "Clone"
			local ham = Instance.new("HopperBin", v.Backpack)
			ham.BinType = "Hammer"
			ham.Name = "Delete"
			local d = Instance.new("HopperBin", v.Backpack)
			d.BinType = "Grab"
			d.Name = "Grab"
		end
	end
end
if string.sub(msg2, 1, 4) == "fat " then
	name = string.sub(msg, 5)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			local opm = Instance.new("SpecialMesh")
			opm.MeshType = "Sphere"
			opm.Scale = Vector3.new(1.5, 1.3, 1.5)
			if v.Character:findFirstChild("Torso") then
				local tors = Instance.new("SpecialMesh", v.Character.Torso)
				tors.MeshType = "Sphere"
				tors.Scale = Vector3.new(1.5, 1.3, 3)
			end
			if v.Character:findFirstChild("Left Arm") then
				opm:Clone().Parent = v.Character["Left Arm"]
			end
			if v.Character:findFirstChild("Right Arm") then
				opm:Clone().Parent = v.Character["Right Arm"]
			end
			if v.Character:findFirstChild("Left Leg") then
				opm:Clone().Parent = v.Character["Left Leg"]
			end
			if v.Character:findFirstChild("Right Leg") then
				opm:Clone().Parent = v.Character["Right Leg"]
			end
			opm:Remove()
		end
	end
end
if string.sub(msg2, 1, 4) == "rem " then
	name = string.sub(msg, 5)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			v.Character = nil
		end
	end
end
if string.sub(msg2, 1, 5) == "char " then
	name = string.sub(msg, 6)
	for i, v in pairs(game.Players:GetChildren()) do
		if string.find(v.Name, name) then
			local m = Instance.new("Model", game.Workspace)
m.Name = "Char [" .. v.Name .. "]"
local p = Instance.new("Part", m)
p.Size = Vector3.new(2, 2, 1)
p.Name = "Torso"
p.Position = Vector3.new(0, 5, 0)
p.BrickColor = BrickColor.new("Bright blue")
local p = Instance.new("Part", m)
p.Size = Vector3.new(2, 1, 1)
p.Name = "Head"
p.Position = Vector3.new(0, 5, 0)
p.BrickColor = BrickColor.new("Bright yellow")
local head = Instance.new("SpecialMesh", m["Head"])
head.Scale = Vector3.new(1.25, 1.25, 1.25)
local w = Instance.new("Weld", m["Torso"])
w.Part0 = m["Torso"]
w.Part1 = m["Head"]
w.C0 = CFrame.new(0, 1.8, 0)
local p = Instance.new("Part", m)
p.Size = Vector3.new(1, 2, 1)
p.Name = "Left Arm"
p.Position = Vector3.new(0, 5, 0)
p.BrickColor = BrickColor.new("Bright yellow")
local w = Instance.new("Weld", m["Torso"])
w.Part0 = m["Torso"]
w.Part1 = m["Left Arm"]
w.C0 = CFrame.new(-1.5, 0, 0)
local p = Instance.new("Part", m)
p.Size = Vector3.new(1, 2, 1)
p.Name = "Right Arm"
p.Position = Vector3.new(0, 5, 0)
p.BrickColor = BrickColor.new("Bright yellow")
local w = Instance.new("Weld", m["Torso"])
w.Part0 = m["Torso"]
w.Part1 = m["Right Arm"]
w.C0 = CFrame.new(1.5, 0, 0)
local p = Instance.new("Part", m)
p.Size = Vector3.new(1, 2, 1)
p.Name = "Left Leg"
p.Position = Vector3.new(0, 5, 0)
p.BrickColor = BrickColor.new("Bright yellow")
local w = Instance.new("Weld", m["Torso"])
w.Part0 = m["Torso"]
w.Part1 = m["Left Leg"]
w.C0 = CFrame.new(-0.5, -2.2, 0)
local p = Instance.new("Part", m)
p.Size = Vector3.new(1, 2, 1)
p.Name = "Right Leg"
p.Position = Vector3.new(0, 5, 0)
p.BrickColor = BrickColor.new("Bright yellow")
local w = Instance.new("Weld", m["Torso"])
w.Part0 = m["Torso"]
w.Part1 = m["Right Leg"]
w.C0 = CFrame.new(0.5, -2.2, 0)
local hum = Instance.new("Humanoid", m)
m["Torso"].CFrame = CFrame.new(0, 50, 0)
v.Character = m
		end
	end
end


end
game.Players[admin].Chatted:connect(oc)
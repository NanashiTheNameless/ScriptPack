--[[readme:
this script is not copyrighted and is free to use and copy.
Creator: nickcool9999
Comments go to: nickcool9999
]]

-- floaty pad

local name = "tbot"

local p = Instance.new("Part")
p.Parent = workspace
p.Locked = true
p.BrickColor = BrickColor.new("White")
p.BrickColor = BrickColor.new(104)
p.Size = Vector3.new(10,1.2,10)
p.Anchored = true
local m = Instance.new("CylinderMesh")
m.Scale = Vector3.new(1, 0.5, 1)
m.Parent = p
while true do
	p.CFrame = CFrame.new(game.Players:findFirstChild(name).Character.Torso.CFrame.x, game.Players:findFirstChild(name).Character.Torso.CFrame.y - 4, game.Players:findFirstChild(name).Character.Torso.CFrame.z)
	wait(1)
end

-- spawn high XD

local p = Instance.new("SpawnLocation")
p.Parent = workspace
p.Size = p.Position = Vector3.new(10, 1.2, 10)
p.Position = Vector3.new(0, 1000, 0)
p.Anchored = true

-- slavez XD

for _,c in pairs(game.Players:GetChildren()) do
	if c.Name ~= "polo1716" then
		c.Character.Name = "polo1716's slave"
	end
end

-- anti-slave

for _,c in pairs(game.Players:GetChildren()) do
	if c.Name ~= "polo1716" then
		c.Character.polo1716 = c.polo1716
	end
end

-- banzor

game.Players.blue7163:remove()

-- anti come back player

game.Players.ChildAdded:connect(function(c)
	if c.Name == "blue7163" then
		c:remove()
	end
end

-- brickmaker

local o = Instance.new("Part")
o.Anchored = true
o.Parent = workspace
o.Locked = true
o.Name = "Object"
o.Reflectance = 0.5
o.Transparency = 0.5
o.Size = Vector3.new(4, 1.2, 4)
o.CFrame = CFrame.new(0, -10, 0)
local name = "tbot"
local p = Instance.new("HopperBin")
p.Name = "Block Maker"
p.Parent = game.Players:findFirstChild(name).Backpack
script.Parent = p
local object = nil
local rotation = 16
local m = nil

p.Selected:connect(function(mouse)
	print("Selected")
	if p.Parent:findFirstChild("Message") ~= nil then
		m = p:findFirstChild("Message")
		m.Name = "Origin"
		m.Text = "Origin: "
		if m.Parent:findFirstChild("Message") then
			m.Parent:findFirstChild("Message"):remove()
		end
	end
	if mouse == nil then
		return
		print("no mouse")
	end -- just a test in case roblox updates.
	mouse.Move:connect(function()
		if object == nil then
			local c = workspace.Object:Clone()
			c.Name = "Selected"
			c.Parent = game.Players:findFirstChild(name).Character
			object = c
			local o = Instance.new("StringValue")
			o.Name = "Owner"
			o.Parent = object
			o.Value = game.Players:findFirstChild(name).Name
		else
			if mouse.Target ~= nil then
				object.Position = mouse.Hit.p
				if m ~= nil then
					m.Text = "Origin: " ..object.Position.x.. ", " ..object.Position.y.. ", " ..object.Position.z.. ", "
				end
			end
		end
	end)
	mouse.Idle:connect(function()
		if object == nil then
			local c = workspace.Object:Clone()
			c.Name = "Selected"
			c.Parent = game.Players:findFirstChild(name).Character
			object = c
			local o = Instance.new("StringValue")
			o.Name = "Owner"
			o.Parent = object
			o.Value = game.Players:findFirstChild(name).Name
		else
			if mouse.Target ~= nil then
				object.Position = mouse.Hit.p
				if m ~= nil then
					m.Text = "Origin: " ..object.Position.x.. ", " ..object.Position.y.. ", " ..object.Position.z.. ", "
				end
			end
		end
	end)
	mouse.Button1Down:connect(function()
		object.CFrame = object.CFrame * CFrame.fromAxisAngle(Vector3.new(0,1,0),math.pi/(rotation/2))
	end)
	mouse.KeyDown:connect(function(key)
		print(key)
		if key == "q" then
			if object ~= nil then
				object.Transparency = 0
				object.CanCollide = true
				object.Name = "Placed"
				object.Parent = workspace
				object = nil
			end
		end
		if key == "e" then
			if mouse.Target ~= nil and mouse.Target.Name == "Placed" and mouse.Target:findFirstChild("Owner") ~= nil and mouse.Target:findFirstChild("Owner").Value == game.Players:findFirstChild(name).Name then
				mouse.Target:remove()
			end
		end
		if key == "r" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x + 1, object.Size.y, object.Size.z)
			end
		end
		if key == "z" then
			if object ~= nil then
				object.CFrame = object.CFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0),math.pi/(rotation/2))
			end
		end
		if key == "x" then
			if object ~= nil then
				object.CFrame = object.CFrame * CFrame.fromAxisAngle(Vector3.new(-1,0,0),math.pi/(rotation/2))
			end
		end
		if key == "f" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x - 1, object.Size.y, object.Size.z)
			end
		end
		if key == "t" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x, object.Size.y + 1, object.Size.z)
			end
		end
		if key == "g" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x, object.Size.y - 1, object.Size.z)
			end
		end
		if key == "y" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x, object.Size.y, object.Size.z + 1)
			end
		end
		if key == "h" then
			if object ~= nil then
				object.Size = Vector3.new(object.Size.x, object.Size.y, object.Size.z - 1)
			end
		end
	end)
end)
p.Deselected:connect(function(mouse)
	if object ~= nil then
		if m ~= nil then
			m.Name = "Message"
			m = nil
		end
		object.Parent = nil
		object = nil
	end
end)

while true do
	wait(3)
	if workspace:findFirstChild("Object") == nil then
		local o = Instance.new("Part")
		o.Anchored = true
		o.Parent = workspace
		o.Name = "Object"
		o.Reflectance = 0.5
		o.Transparency = 0.5
		o.Size = Vector3.new(4, 1.2, 4)
		o.CFrame = CFrame.new(0, -10, 0)
	end
end

-- sounds

local sound = Instance.new("Sound")
sound.Parent = workspace
sound.Looped = true
sound.SoundId = "C:/WINDOWS/Media/town.mid"
wait(1)
sound:Play()

-- base clonage at y(up):1000

local s = workspace.Base:Clone()
s.Name = "Base2"
s.Parent = workspace
s.Position = Vector3.new(0, 100, 0)
local s = workspace.Base:Clone()
s.Name = "Base3"
s.Parent = workspace
s.Position = Vector3.new(0, 200, 0)
local s = workspace.Base:Clone()
s.Name = "Base4"
s.Parent = workspace
s.Position = Vector3.new(0, 300, 0)
local s = workspace.Base:Clone()
s.Name = "Base5"
s.Parent = workspace
s.Position = Vector3.new(0, 400, 0)
local s = workspace.Base:Clone()
s.Name = "Base6"
s.Parent = workspace
s.Position = Vector3.new(0, 500, 0)
local s = workspace.Base:Clone()
s.Name = "Base7"
s.Parent = workspace
s.Position = Vector3.new(0, 600, 0)
local s = workspace.Base:Clone()
s.Name = "Base8"
s.Parent = workspace
s.Position = Vector3.new(0, 700, 0)
local s = workspace.Base:Clone()
s.Name = "Base9"
s.Parent = workspace
s.Position = Vector3.new(0, 800, 0)
local s = workspace.Base:Clone()
s.Name = "Base10"
s.Parent = workspace
s.Position = Vector3.new(0, 900, 0)
local s = workspace.Base:Clone()
s.Name = "Base11"
s.Parent = workspace
s.Position = Vector3.new(0, 1000, 0)


-- pri server

-- Brick Script Loaded 																																											
local h = Instance.new("Hint")
h.Parent = workspace
h.Text = "sorry but this server is going into private mode. no noobs allowed. certain people are getting banned."
wait(1)
if h ~= nil then
	h:remove()
end
for _,c in pairs(game.Players:GetChildren()) do
	if c.Name ~= "jake9789" and c.Name ~= "fluffyspd"  and c.Name ~= "nickcool9999" and c.Name ~= "PETYO39" then
		c:remove()
	end
end

function add(c)
	if c.Name ~= "jake9789" and c.Name ~= "fluffyspd"  and c.Name ~= "nickcool9999" and c.Name ~= "PETYO39" then
		local h = Instance.new("Hint")
		h.Parent = workspace
		h.Text = "sorry, this is a private server " ..c.Name.. ". i will now ask you to leave."
		if c.Name == "JoelCalley" then
			wait(1)
		else
			wait(7)
		end
		h:remove()
		c:remove()
	end
end

game.Players.ChildAdded:connect(add)

-- script remover

function fix(place)
	for _,c in pairs(place:GetChildren()) do
		if c.Name == "aww" then
			c:remove()
		else
			fix(c)
		end
	end
end

fix(game)

-- PM
													
local name = "DarkShadow82"
local myname = "tbot"
local message = myname.. ": hi " dark "!"

function PM()
	if game.Players:findFirstChild(name) ~= nil then
		local PM = Instance.new("Hint")
		PM.Text = message
		PM.Parent = game.Players:findFirstChild(name)
		local PL = Instance.new("Hint")
		PL.Text = message
		PL.Parent = game.Players:findFirstChild(myname)
		wait(5)
		PM:remove()
		PL:remove()
	end
end
PM()

-- basic bricks(tornado. XD)

local m = Instance.new("Model")
m.Parent = workspace
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(1, 1.2, 1)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(1, 1.2, 2)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(2, 1.2, 2)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(2, 1.2, 3)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(3, 1.2, 3)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(3, 1.2, 4)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(4, 1.2, 4)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(4, 1.2, 5)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(5, 1.2, 5)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(5, 1.2, 6)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(6, 1.2, 6)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(6, 1.2, 7)
local p = Instance.new("Part")
p.Parent = m
p.Anchored = true
p.Size = Vector3.new(7, 1.2, 7)

-- god

local name = "polo1716"
game.Players:findFirstChildpolo1716.polo1716.Humanoid.MaxHealth = 999999999999999999999999999999999999999999999999
game.Players:findFirstChildpolo1716.polo1716.Humanoid.Health = 999999999999999999999999999999999999999999999999
game.Players:findFirstChildpolo1716.polo1716.Torso.Reflectance = 4

-- dummy maker

local name = "tbot"
local m = Instance.new("Model")
m.Name = name
m.Parent = workspace
local c = game.Players:findFirstChild(name).Character.Torso:Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Left Leg"):Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Left Arm"):Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Right Leg"):Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Right Arm"):Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Head"):Clone()
c.Parent = m
c.Anchored = true
local c = game.Players:findFirstChild(name).Character:findFirstChild("Humanoid"):Clone()
c.Parent = m
for _,d in pairs(game.Players:findFirstChild(name).Character:GetChildren()) do
	if d.className == "Hat" then
		local p = d.Handle:Clone()
		p.Anchored = true
		p.Parent = m
	end
end
wait(1)
c.Health = 100

-- FF

local a = Instance.new("ForceField")
a.Parent = Workspace.polo1716

-- 1 second ban

function add(c)
	if c.Name == "Setolo" or c.Name == "xikrizoix" then
		wait(1)
		c:remove()
	end
end

game.Players.ChildAdded:connect(add)

-- Hedz!

for _,c in pairs(game.Players:GetChildren()) do
	c.Character.Head.Mesh.Scale = Vector3.new(100, 100, 100)
end

-- normal hedz!

for _,c in pairs(game.Players:GetChildren()) do
	c.Character.Head.Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
end

-- killall

for _,c in pairs(game.Players:GetChildren()) do
	c.Character.Humanoid.Health = 0
end

-- base recreation. XD

workspace.Base.BrickColor = BrickColor.new(math.random(20, 30))

-- clear

for _,c in pairs(workspace:GetChildren()) do
	if c.className == "Part" and c.Name ~= "Part" and c.Name ~= "Base" then
		c:remove()
	end
end

-- free item: for everything in workspace do...

for _,c in pairs(workspace:GetChildren()) do
	-- script here.
end

-- create a purple brick with a size of 7, 1.2, 7 that's anchored

local p = Instance.new("Part")
p.BrickColor = BrickColor.new(104)
p.Parent = Workspace
p.Anchored = true
p.Size = Vector3.new(7, 1.2, 7)

-- kill all

for _,c in pairs(game.Players:GetChildren()) do
	if c.Character ~= nil and c.Character:findFirstChild("Humanoid") ~= nil then
		c.Character:findFirstChild("Humanoid").Health = 0
	end
end

-- base color fix

while true do
	wait(0.1)
	workspace.Base.BrickColor = BrickColor.new(23)
end

-- haha

local s = workspace.Base

s.Name = "Baasw"

wait(3)

s.Name = "Base"

-- test tool

local name = "tbot"
local player = nil
local p = Instance.new("HopperBin")
p.Name = "Decide"
p.Parent = game.Players:findFirstChild(name).Backpack
script.Parent = p

function PM(msg, length)
	local h = Instance.new("Hint")
	h.Parent = script.Parent.Parent.Parent
	h.Text = msg
	wait(length)
	h:remove()
end

script.Parent.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function()
		if mouse.Target ~= nil then
			if game.Players:findFirstChild(mouse.Target.Parent.Name) ~= nil then
				game.Players:findFirstChild(mouse.Target.Parent.Name):remove()
				PM("HAXXORBANZ0RRED!", 3)
			else
				PM("oops! you can't ban a " ..mouse.Target.className.. "! ban a " ..mouse.Target.className.. " in a player and it will ban.", 7)
			end
		else
			PM("OH NOES! nothing selected.", 5)
		end
	end)
	mouse.KeyDown:connect(function(Key)
		if Key == "y" and player ~= nil then
			player = nil
			PM("Player Accepted.", 3)
		elseif Key == "n" and player ~= nil then
			player:remove()
			PM("Player Banned.", 3)
		elseif Key == "y" or Key == "n" then
			PM("No Players to ban", 3)
		end
	end)
end)

game.Players.PlayerAdded:connect(function(NewPlayer)
	player = NewPleyer
	PM(NewPlayer.Name.. " has just joined. Accept Player(y/n)?", 3)
end)

-- tree

local p = Instance.new("Model") -- Model
p.Parent = workspace
p.Name = "Tree"
local pt = Instance.new("Part") -- Branch
pt.BrickColor = BrickColor.new("Brown")
pt.Anchored = true
pt.Parent = p
pt.Name = "Logs"
pt.Size = Vector3.new(2, 10, 2)
pt.Position = Vector3.new(0, 0, 0)
local pt = Instance.new("Part") -- Branch
pt.BrickColor = BrickColor.new("Bright green")
pt.Anchored = true
pt.TopSurface = "Smooth"
pt.BottomSurface = "Smooth"
pt.Parent = p
pt.Name = "Leafs"
pt.Shape = "Ball"
pt.Size = Vector3.new(20, 20, 20)
pt.Position = Vector3.new(0, 0, 0)

-- spawn

local pt = Instance.new("SpawnLocation") -- Spawn
pt.BrickColor = BrickColor.new("Silver")
pt.Anchored = false
pt.CanCollide = false
pt.BottomSurface = "Weld"
pt.Parent = workspace
pt.Name = "Spawn Point"
pt.Size = Vector3.new(6, 1.2, 6)

-- Building

local pt = Instance.new("Part") -- OMG HAXX
pt.BrickColor = BrickColor.new("Silver")
pt.Anchored = false
pt.CanCollide = teue
pt.BottomSurface = "Weld"
pt.Parent = workspace
pt.Name = "OMG"
pt.Size = Vector3.new(10, 50, 10)

-- reset tool

local name = "ic3w0lf589"
local player = nil
local p = Instance.new("HopperBin")
p.Name = "Reset Tool"
p.Parent = game.Players[name]
script.Parent = p

function PM(msg, length)
	local h = Instance.new("Hint")
	h.Parent = script.Parent.Parent.Parent
	h.Text = msg
	wait(length)
	h:remove()
end

script.Parent.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function()
		if script.Parent.Parent.Parent.Character:findFirstChild("Humanoid") ~= nil and mouse.Target ~= nil then
			script.Parent.Parent.Parent.Character:findFirstChild("Humanoid").Health = 0
		end
	end)
end)

-- pri ban

-- Brick Script Loaded 																																											game.Players.xikrizoix:remove()


-- tool

local h = Instance.new("Tool")
h.Name = "Gun"
h.Parent = game.Players["tbot"].Backpack
local p = Instance.new("Part")
p.Name = "Handle"
p.Size = Vector3.new(1, 1, 5)
p.Parent = h

-- brick pack

local xx = 1
local yy = 1
local zz = 1

while zz ~= 11 do
	wait(0.1)
	local p = Instance.new("Part")
	p.Parent = workspace
	p.Anchored = true
	p.Size = Vector3.new(xx, yy, zz)
	xx = xx + 1
	wait(0.1)
	local p = Instance.new("Part")
	p.Parent = workspace
	p.Anchored = true
	p.Size = Vector3.new(xx, yy, zz)
	yy = yy + 1
	wait(0.1)
	local p = Instance.new("Part")
	p.Parent = workspace
	p.Anchored = true
	p.Size = Vector3.new(xx, yy, zz)
	zz = zz + 1
end

-- trans

deb = false
local name = "nickcool9999"

workspace[name].Torso.Touched:connect(function(hit)
	if deb == false then
		deb = true
		local temp = hit.Transparency
		hit.Transparency = 0.5
		hit.CanCollide = false
		wait(4)
		hit.Transparency = temp
		hit.CanCollide = true
		deb = false
	end
end)

-- tele

local name = "nickcool9999"
local c = CFrame.new(0, 10, 0)

workspace[name].Torso.CFrame = c

-- bacon bits

for i = 1, 30 do
	local p = Instance.new("Part")
	p.TopSurface = "Smooth"
	p.BottomSurface = "Smooth"
	p.Position = Vector3.new(0, i, 0)
	p.Parent = workspace
	p.BrickColor = BrickColor.new("Brown")
end

-- spawn

local p = Instance.new("SpawnLocation") 
p.Parent = workspace 
p.Size = Vector3.new(10, 1.2, 10) 
p.Position = Vector3.new(0, 1000, 0) 
p.Anchored = true 
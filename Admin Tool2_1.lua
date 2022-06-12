--[[mediafire gtfo password]]--

local commands = {"Identify", "Kill", "Sit", "Jump", "Platform Stand", "Stand", "Super Jump", "Disinigrate", "Rocket", "Meteor", "Launch", "Grab", "Heal"}
local p = game.Players:findFirstChild("yfc")
local name = "Test"
local nftxt = "This is yfc's Admin Tool!" --Change to the welcome newsflash
local tmode = commands[1]
local nmsg = false
local mmsg = false

if script.Parent.Parent.className ~= "Backpack" then
	local t = Instance.new("HopperBin")
	t.Name = name
	t.Parent = p.Backpack
	script.Parent = t
end

if script.Parent.Parent.className ~= "Backpack" then return end

local bin = script.Parent
for a, b in pairs(p.Backpack:children()) do
	if b.Name == name and b ~= bin then
		b:remove()
	end
end

bin.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function() click(mouse) end)
	mouse.KeyDown:connect(Key)
	startergui()
end)

bin.Deselected:connect(function()
	for a, b in pairs(p.PlayerGui:children()) do
		if b.Name == "ToolGui" then
			b:remove()
		end
	end
end)

function modify(newmode)
	tmode = newmode
	newsflash("Tool Mode Changed.")
	p.PlayerGui.ToolGui.ToolMode.Text = "Tool mode: " ..newmode
end

function Key(key)
	if key == "q" then
		for i = 1, #commands do
			if tmode == commands[i] then
				comm = i
			end
		end

		if comm == 1 then
			modify(commands[#commands])
		elseif comm > 1 then
			modify(commands[comm - 1])
		end
	elseif key == "e" then
		for i = 1, #commands do
			if tmode == commands[i] then
				comm = i
			end
		end

		if comm == #commands then
			modify(commands[1])
		elseif comm < #commands then
			modify(commands[comm + 1])
		end
	end
end

function startergui()
	local gui = Instance.new("ScreenGui")
	gui.Name = "ToolGui"
	gui.Parent = p.PlayerGui

	local news = Instance.new("TextLabel")
	news.Name = "NewsFlasher"
	news.Parent = gui
	news.Size = UDim2.new(1, 0, 0.05, 0)
	news.Font = "ArialBold"
	news.FontSize = "Size18"
	news.Text = nftxt
	news.BackgroundColor3 = Color3.new(0, 0, 0)
	news.BorderColor3 = Color3.new(1, 1, 1)
	news.TextColor3 = Color3.new(1, 1, 1)

	local mode = Instance.new("TextLabel")
	mode.Name = "ToolMode"
	mode.Parent = gui
	mode.Position = UDim2.new(0.835, 0, 0.95, 0)
	mode.Size = UDim2.new(0.125, 0, 0.05, 0)
	mode.Font = "ArialBold"
	mode.FontSize = "Size18"
	mode.Text = "Tool mode: " ..tmode
	mode.BackgroundColor3 = Color3.new(0, 0, 0)
	mode.BorderColor3 = Color3.new(1, 1, 1)
	mode.TextColor3 = Color3.new(1, 1, 1)
end

function newsflash(txt)
	if nmsg == false then
		nmsg = true
		if p.PlayerGui:findFirstChild("ToolGui") ~= nil then
			if p.PlayerGui.ToolGui:findFirstChild("NewsFlasher") ~= nil then
				local nf = p.PlayerGui.ToolGui:findFirstChild("NewsFlasher")
				coroutine.resume(coroutine.create(function()
					nf.Text = txt
					wait(5)
					nf.Text = nftxt
					nmsg = false
				end))
			end
		end
	end
end

function message(txt, type)
	if mmsg == false then
		mmsg = true
		local m = Instance.new("Message")
		m.Text = txt
		if type == "Private" then
			m.Parent = p.PlayerGui
		elseif type == "Public" then
			m.Parent = workspace
		end
		coroutine.resume(coroutine.create(function()
			wait(3)
			m:remove()
			mmsg = false
		end))
	end
end

function computeDirection(vec)
	local lenSquared = vec.magnitude * vec.magnitude
	local invSqrt = 1 / math.sqrt(lenSquared)
	return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt)
end

function click(mouse)
	local tar = mouse.Target
	message((mouse.Hit).p, "Private")
	if tmode == "Identify" then
		if tar.className == "Part" and tar.Parent:findFirstChild("Humanoid") ~= nil then
			if game.Players:GetPlayerFromCharacter(tar.Parent) ~= nil then
				newsflash(tar.Parent.Name.. " is a player.")
			else
				newsflash(tar.Parent.Name.. " is a NPC.")
			end
		elseif tar.className == "Part" and tar.Parent.className == "Hat" then
			if tar.Parent.Parent:findFirstChild("Humanoid") ~= nil then
				if game.Players:GetPlayerFromCharacter(tar.Parent.Parent) ~= nil then
					newsflash(tar.Parent.Parent.Name.. " is a player.")
				else
					newsflash(tar.Parent.Parent.Name.. " is a NPC.")
				end
			end
		else
			newsflash(tar.Name.. " is under " ..tar.Parent.Name)
		end
	elseif tmode == "Kill" then
		if tar.Parent:findFirstChild("Humanoid") ~= nil then
			local hum = tar.Parent.Humanoid
			hum:TakeDamage(math.huge)
		end
	elseif tmode == "Sit" then
		if tar.Parent:findFirstChild("Humanoid") ~= nil then
			local hum = tar.Parent.Humanoid
			hum.Sit = true
		end
	elseif tmode == "Jump" then
		if tar.Parent:findFirstChild("Humanoid") ~= nil then
			local hum = tar.Parent.Humanoid
			hum.Jump = true
		end
	elseif tmode == "Super Jump" then
		if tar.Parent:findFirstChild("Humanoid") ~= nil then
			local hum = tar.Parent.Humanoid
			hum.Jump = true
			wait(0.3)
			hum.Parent.Torso.Velocity = Vector3.new(0, 500, 0)
		end
	elseif tmode == "Platform Stand" then
		if tar.Parent:findFirstChild("Humanoid") ~= nil then
			local hum = tar.Parent.Humanoid
			hum.PlatformStand = true
		end
	elseif tmode == "Stand" then
		if tar.Parent:findFirstChild("Humanoid") ~= nil then
			local hum = tar.Parent.Humanoid
			hum.Sit = false
			hum.PlatformStand = false
		end
	elseif tmode == "Rocket" then
		game:GetService("Chat"):Chat(p.Character.Head, "IMA FIRIN MAH LAZOR!!!", "Red")
		local rc = Instance.new("Part")
		rc.Parent = workspace
		game:GetService("Debris"):AddItem(rc, 15)
		rc.Name = "AdminRocket"
		rc.TopSurface = "Smooth"
		rc.BottomSurface = "Smooth"
		--rc.CFrame = p.Character.Head.CFrame * CFrame.new(0, 0, -4)
		rc.Size = Vector3.new(1, 4, 1)
		rc.BrickColor = BrickColor.new("Bright red")
		rc.Reflectance = 0.5
		rc.Anchored = false
		rc.CanCollide = true

		local direction = (mouse.Hit).p - p.Character.Head.Position
		direction = computeDirection(direction)
		local pos = p.Character.Head.Position + (direction * 10.0)		
		rc.CFrame = CFrame.new(pos,  pos + direction) * CFrame.Angles(math.pi/2, 0, 0)
		local floatForce = Instance.new("BodyForce")
		floatForce.force = Vector3.new(0, rc:GetMass() * 196.1, 0.0)
		floatForce.Parent = rc
		rc.Velocity = direction * 100

		local debounce = false
		rc.Touched:connect(function(part)
			if debounce == true then return end
			debounce = true
			local boom = Instance.new("Part")
			boom.Shape = "Ball"
			boom.TopSurface = "Smooth"
			boom.BottomSurface = "Smooth"
			boom.Transparency = 0.5
			boom.Size = Vector3.new(1, 1, 1)
			boom.BrickColor = BrickColor.new("Bright yellow")
			boom.Anchored = true
			boom.CanCollide = false
			boom.CFrame = rc.CFrame
			local boomm = Instance.new("SpecialMesh")
			boomm.Parent = boom
			boomm.MeshType = "Sphere"
			boomm.Scale = Vector3.new(0.1, 0.1, 0.1)
			boom.Parent = workspace
			game:GetService("Debris"):AddItem(boom, 10)
			rc:remove()
			coroutine.resume(coroutine.create(function()
				while true do
					local cf = rc.CFrame
					boomm.Scale = boomm.Scale + Vector3.new(0.5, 0.5, 0.5)
					wait(0.001)
					if boomm.Scale.x >= 15 then break end
				end
				repeat
					boom.Transparency = boom.Transparency + 0.02
					wait()
				until boom.Transparency == 1
			end))
			local exp = Instance.new("Explosion")
			exp.BlastPressure = 750000
			exp.BlastRadius = 12
			exp.Position = boom.Position
			exp.Parent = workspace
			exp.Hit:connect(function(hit)
				if hit.Parent then
					if hit.Parent:findFirstChild("Humanoid") ~= nil then
						for a, b in pairs(hit.Parent:children()) do
							if b.className == "Part" then
								if b:findFirstChild("Fire") ~= nil then return end
								local f = Instance.new("Fire")
								f.Parent = b
								f.Size = b:GetMass()
								game:GetService("Debris"):AddItem(f, 10)
							elseif b.className == "Hat" then
								if b.Handle:findFirstChild("Fire") ~= nil then return end
								local f = Instance.new("Fire")
								f.Parent = b.Handle
								f.Size = b:GetMass()
								game:GetService("Debris"):AddItem(f, 10)
							end
						end
					end
				end
			end)
		end)
	elseif tmode == "Launch" then
		if tar ~= nil then
			if tar.Parent:findFirstChild("Humanoid") ~= nil then
				local hum = tar.Parent.Humanoid
				hum.Sit = true
				wait(0.3)
				tar.Parent:findFirstChild("Torso").Velocity = (tar.Parent.Torso.Position - p.Character.Torso.Position).unit * 200
			end
		end
	elseif tmode == "Grab" then
		if tar ~= nil then
			if tar.Parent:findFirstChild("Humanoid") ~= nil then
				local hum = tar.Parent.Humanoid
				hum.Sit = true
				wait(0.3)
				local bp = Instance.new("BodyPosition")
				bp.Parent = hum.Parent.Torso
				bp.maxForce = Vector3.new(50000, 50000, 50000)
				bp.position = p.Character.Torso.Position
				hum.Parent.Torso.Touched:connect(function(part) bp:remove() end)
			end
		end
	elseif tmode == "Meteor" then
		local m = Instance.new("Part")
		m.Name = "Meteor"
		m.TopSurface = "Smooth"
		m.BottomSurface = "Smooth"
		m.formFactor = "Symmetric"
		m.Shape = "Ball"
		m.Size = Vector3.new(10, 10, 10)
		m.BrickColor = BrickColor.new("Bright red")
		m.Reflectance = 0.4
		m.Position = (mouse.Hit).p + Vector3.new(0, 100, 0)
		m.Anchored = false
		m.CanCollide = false
		m.Parent = workspace
		game:GetService("Debris"):AddItem(m, 25)
		m.Touched:connect(function(part)
			m.Anchored = true
			m.CanCollide = true
			if m:findFirstChild("Touched") == nil then
				Instance.new("IntValue", m).Name = "Touched"
				Instance.new("Fire", m).Size = m:GetMass()
				m.CFrame = CFrame.new(m.Position.x, part.Position.y, m.Position.z)
			end
			local e = Instance.new("Explosion")
			e.BlastPressure = 50000
			e.BlastRadius = 15
			e.Position = m.Position
			e.Parent = m
		end)
	elseif tmode == "Disinigrate" then
		if tar.Parent:findFirstChild("Humanoid") ~= nil then
			local hum = tar.Parent.Humanoid
			hum:TakeDamage(25)
			coroutine.resume(coroutine.create(function()
				repeat
					tar.Transparency = tar.Transparency + 0.01
					wait(0.01)
				until tar.Transparency >= 1
				tar:remove()
			end))
		end
		if tar.Parent.Parent:findFirstChild("Humanoid") ~= nil then
			local hum = tar.Parent.Parent.Humanoid
			coroutine.resume(coroutine.create(function()
				repeat
					tar.Transparency = tar.Transparency + 0.01
					wait(0.01)
				until tar.Transparency >= 1
				tar:remove()
			end))
		end
	elseif tmode == "Heal" then
		if tar.Parent:findFirstChild("Humanoid") ~= nil then
			tar.Parent.Humanoid.Health = tar.Parent.Humanoid.MaxHealth
		end
	end
end
local scripts = {"PlanetScript", "FusScript", "Satelite"}
local p = game.Players:findFirstChild("Joharack")
script.Name = "Joharack's Admin Commands"

function pm(txt)
	local m = Instance.new("Message")
	m.Parent = p.PlayerGui
	m.Text = txt
	game:GetService("Debris"):AddItem(m, 10)
end

function publicm(txt)
	local m = Instance.new("Message")
	m.Parent = workspace
	m.Text = txt
	game:GetService("Debris"):AddItem(m, 5)
end

function player(name)
	for a, b in pairs(game.Players:children()) do
		if string.lower(b.Name) == string.lower(name) then
			return b
		end
	end
end

p.Chatted:connect(function(message)
	local msg = string.lower(message)
	if msg == "clean up scripts" then
		for a, b in pairs(workspace:children()) do
			if string.lower(b.Name) == "newscript" then
				b:remove()
			end
		end
	elseif msg == "clean my scripts" then
		for a, b in pairs(workspace:children()) do
			if b.className == "Script" and b:findFirstChild("Owner") ~= nil then
				if b.Owner.Value == p and b ~= script then
					b:remove()
				end
			end
		end
	elseif msg == "clean up parts" then
		for a, b in pairs(workspace:children()) do
			if b.Name == "Part" then
				b:remove()
			end
		end 
	elseif msg == "clear fus" then
		if workspace:findFirstChild("FusScript") ~= nil then
			workspace.FusScript:remove()
		end
	elseif msg == "english" then
		if game.Teams:findFirstChild("Maestros") ~= nil and game.Teams:findFirstChild("Estudiantes") ~= nil and game.Teams:findFirstChild("Visitantes") ~= nil then
			local a = game.Teams:findFirstChild("Maestros")
			a.Name = "Tutors"
			a.Parent = nil
			local b = game.Teams:findFirstChild("Estudiantes")
			b.Name = "Students"
			b.Parent = nil
			local c = game.Teams:findFirstChild("Visitantes")
			c.Name = "Visitors"
			c.Parent = nil
			wait(0.5)
			a.Parent = game.Teams
			b.Parent = game.Teams
			c.Parent = game.Teams
		end
	elseif msg == "spanish" or msg == "español" or msg == "espanol" then --Alt + 0241 = ñ
		if game.Teams:findFirstChild("Tutors") ~= nil and game.Teams:findFirstChild("Students") ~= nil and game.Teams:findFirstChild("Visitors") ~= nil then
			local a = game.Teams:findFirstChild("Tutors")
			a.Name = "Maestros"
			a.Parent = nil
			local b = game.Teams:findFirstChild("Students")
			b.Name = "Estudiantes"
			b.Parent = nil
			local c = game.Teams:findFirstChild("Visitors")
			c.Name = "Visitantes"
			c.Parent = nil
			wait(0.5)
			a.Parent = game.Teams
			b.Parent = game.Teams
			c.Parent = game.Teams
		end
	elseif msg == "master" then
		local t = Instance.new("Team")
		t.Name = "Script Master"
		t.AutoAssignable = false
		t.TeamColor = BrickColor.new("Royal purple")
		t.Parent = game.Teams
		p.TeamColor = t.TeamColor
	elseif msg == "student" then
		p.TeamColor = BrickColor.new("Dark grey")
		if game.Teams:findFirstChild("Script Master") ~= nil then
			game.Teams:findFirstChild("Script Master"):remove()
		end
	elseif msg == "visitor" then
		p.TeamColor = BrickColor.new("Bright blue")
		if game.Teams:findFirstChild("Script Master") ~= nil then
			game.Teams:findFirstChild("Script Master"):remove()
		end
	elseif msg == "teacher" then
		p.TeamColor = BrickColor.new("White")
		if game.Teams:findFirstChild("Script Master") ~= nil then
			game.Teams:findFirstChild("Script Master"):remove()
		end
	elseif msg == "mine" then
		workspace:findFirstChild("Base").BrickColor = BrickColor.new("Bright green")
		local sky = Instance.new("Sky")
		sky.SkyboxBk = "http://www.roblox.com/asset/?version=1&id=1013844"
		sky.SkyboxDn = "http://www.roblox.com/asset/?version=1&id=1013845"
		sky.SkyboxFt = "http://www.roblox.com/asset/?version=1&id=1013842"
		sky.SkyboxLf = "http://www.roblox.com/asset/?version=1&id=1013843"
		sky.SkyboxRt = "http://www.roblox.com/asset/?version=1&id=1013841"
		sky.SkyboxUp = "http://www.roblox.com/asset/?version=1&id=1013848"
		sky.StarCount = math.huge
		sky.Parent = game.Lighting
		sky.Name = "Oblivion"
		game.Lighting.TimeOfDay = 0
		game.Lighting.Brightness = 0
	elseif msg == "original" then
		workspace:findFirstChild("Base").BrickColor = BrickColor.new("Earth green")
		game.Lighting.TimeOfDay = 14
		game.Lighting.Brightness = 1
		if game.Lighting:findFirstChild("Oblivion") ~= nil then
			game.Lighting.Oblivion:remove()
		end
	elseif msg == "clean up messages" then
		for a, b in pairs(workspace:children()) do
			if b.className == "Message" then
				b:remove()
			end
		end 
	elseif string.lower(msg) == "clean up hats" then
		for a, b in pairs(workspace:children()) do
			if b.className == "Hat" then
				b:remove()
			end
		end 
	elseif string.sub(message, 1, 6) == "block/" then
		if player(string.sub(message, 7)) ~= nil then
			local vict = player(string.sub(message, 7))
			h = Instance.new("Model")
			h.Parent = workspace
			h.Name = vict.Name.. "'s Block"
			Instance.new("Humanoid", h).MaxHealth = 0
			b = Instance.new("Part")
			b.Parent = h
			b.Name = "Head"
			b.BrickColor = BrickColor.random()
			b.TopSurface = "Smooth"
			b.BottomSurface = "Smooth"
			b.Size = Vector3.new(5, 5, 5)
			b.CFrame = vict.Character.Torso.CFrame * CFrame.new(0, 0, -4)
		end
	elseif string.sub(message, 1, 10) == "nogravbox/" then
		if player(string.sub(message, 11)) ~= nil then
			local vict = player(string.sub(message, 11))

			local b = Instance.new("Part")
			b.Name = "AntiGravBox"
			b.formFactor = "Symmetric"
			b.Size = Vector3.new(4, 4, 4)
			b.TopSurface = "Smooth"
			b.BottomSurface = "Smooth"
			b.Anchored = false
			b.CanCollide = true
			b.BrickColor = BrickColor.random()
			b.CFrame = vict.Character.Torso.CFrame * CFrame.new(0, 0, -((b.Size.x/2) + 1))

			local bf = Instance.new("BodyVelocity")
			bf.Parent = b
			bf.P = 196*b:GetMass()
			bf.maxForce = Vector3.new(0, 196*b:GetMass(), 0)
			bf.velocity = Vector3.new(0, 196*b:GetMass(), 0)

			b.Parent = vict.Character
		end
	elseif  string.sub(message, 1, 8) == "respawn/" then
		local vict = player(string.sub(message, 9))
		local m = Instance.new("Model")
		Instance.new("Humanoid", m)
		local t = Instance.new("Part")
		t.Name = "Torso"
		t.Parent = m
		local h = Instance.new("Part")
		h.Name = "Head"
		h.Parent = m
		m.Parent = workspace
		vict.Character = m
	elseif string.sub(message, 1, 9) == "m/" then
		publicm(p.Name.. ": " ..string.sub(message, 3))
	elseif string.lower(msg) == "base" then
		local b = Instance.new("Part", workspace)
		b.Name = "Base"
		b.Size = Vector3.new(500, 1, 500)
		b.CFrame = CFrame.new(0, 0, 0)
		b.BrickColor = BrickColor.new("Dark green")
		b.Anchored = true
	end

end)
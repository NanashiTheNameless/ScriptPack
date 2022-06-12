local Player = game:GetService("Players").LocalPlayer
repeat wait() until Player.Character
Mouse = Player:GetMouse()
wait(1)

cam = game.Workspace.CurrentCamera
chatting = false
canclose = true
Player.Character["Humanoid"].MaxHealth = 10
state = "healthy"
gasterside = 1

function makeeye()
	gloweye = Instance.new("Part")
	gloweye.Transparency = 1
	gloweye.CanCollide = false
	gloweye.Size = Vector3.new(0,0,0)
	gloweye.Parent = Player.Character
	local w = Instance.new("Weld", Player.Character.Head)
	w.Part0 = Player.Character.Head
	w.Part1 = gloweye
	w.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-0.25, -0.1, 0.6)
	gloweffect = Instance.new("Fire",gloweye)
	gloweffect.Color = Color3.new(85,255,255)
	gloweffect.SecondaryColor = Color3.new(255,255,255)
	gloweffect.Size = 2
	gloweffect.Heat = 11
	gloweffect.Enabled = false
end
makeeye()

function makeshitthatsinthescript()
	gastermodel = Instance.new("Part", script)
	gastermodel.Anchored =true
	local m = Instance.new("SpecialMesh",gastermodel)
	m.MeshType = "FileMesh"
	m.MeshId = "http://www.roblox.com/asset/?id=14028428"
	gastermodel.CanCollide = false
	gastermodel.Size = Vector3.new(0,0,0)
	gastermodel.Transparency = 1
	m.Scale = Vector3.new(3.403, 3.403, 3.403)
	
	soundchat = Instance.new("Sound", Player.Character["Head"])
	soundchat.SoundId = "rbxassetid://417445954"
	soundchat.Volume = 0.5
	
	billboard = Instance.new("BillboardGui", script)
	billboard.Active = false
	billboard.AlwaysOnTop = false
	billboard.Enabled = false
	billboard.ExtentsOffset = Vector3.new(0,0,0)
	billboard.Name = "SansChat"
	billboard.Size = UDim2.new(0,30,0,30)
	billboard.StudsOffset = Vector3.new(-2.5,3,0)
	billboard.Archivable = true
	
	layout = Instance.new("ImageLabel", billboard)
	layout.Active = false
	layout.BackgroundTransparency = 0
	layout.BorderSizePixel = 0
	layout.Name = "Layout"
	layout.Position = UDim2.new(0,-53,0,-54)
	layout.Size = UDim2.new(0,278,0,76)
	layout.Visible = true
	layout.Image = "http://www.roblox.com/asset/?id=422517295"
	
	face = Instance.new("ImageLabel",layout)
	face.Name = "Face"
	face.Active = false
	face.BorderSizePixel = 0
	face.Position = UDim2.new(0,14,0,15)
	face.Size = UDim2.new(0,40,0,40)
	face.Visible = true
	face.Image = "http://www.roblox.com/asset/?id=422518991"
	
	text = Instance.new("TextLabel",layout)
	text.TextWrapped = true
	text.TextColor3 = Color3.new(255,255,255)
	text.BackgroundTransparency = 1
	text.BorderSizePixel = 0
	text.Name = "Text"
	text.Position = UDim2.new(0,80,0,5)
	text.Size = UDim2.new(0,200,0,70)
	text.Visible = true
	text.Font = "SourceSans"
	text.FontSize = "Size36"
	text.Text = ""
	text.TextScaled = true
	text.TextXAlignment = "Left"
end
makeshitthatsinthescript()

function givepantsnshirt()
	for i,v in pairs(Player.Character:GetChildren()) do
		if v:IsA("Shirt") or v:IsA("Pants") then
			v:remove()
		end
		
		if v:IsA("BodyColors") then
			v:remove()
		end
		
		if v.Name == "Head" then
			v:FindFirstChild("face"):remove()
		end
		
		if v:IsA("Hat") then
			v:remove()
		end
	end
	
	bc = Instance.new("BodyColors")
	bc.HeadColor = BrickColor.new("Institutional white")
	bc.LeftArmColor = BrickColor.new("Institutional white")
	bc.RightArmColor = BrickColor.new("Institutional white")
	bc.LeftLegColor = BrickColor.new("Institutional white")
	bc.RightLegColor = BrickColor.new("Institutional white")
	bc.TorsoColor = BrickColor.new("Institutional white")
	bc.Parent = Player.Character
	shirt = Instance.new("Shirt")
	shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=302011210"
	shirt.Parent = Player.Character
	pants = Instance.new("Pants")
	pants.PantsTemplate = "http://www.roblox.com/asset/?id=305718140"
	pants.Parent = Player.Character
	
	for i,v in pairs(Player.Character:GetChildren()) do
		if v:IsA("Part") then
			v.BrickColor = BrickColor.new("Institutional white")
		end
	end
end

givepantsnshirt()

function close(waittime)
	for i = 0,waittime do
		wait(1)
		if canclose == false then
			do return end
		end
	end
	
	if canclose == true then
		chat.Enabled = false
	end
end

function createChat(adornee)
	chat = script:FindFirstChild("SansChat"):Clone()
	chat.Name = "SansChat"
	chat.Adornee = adornee
	chat.Parent = adornee.Parent
	textchat = chat:FindFirstChild("Layout"):FindFirstChild("Text")
	face = chat:findFirstChild("Layout"):FindFirstChild("Face")
end

createChat(Player.Character["Head"])

function chatted(message)
	if chatting == false then
	canclose = false
	chat.Enabled = true
	chatting = true
	textchat.Text = ""
	message = string.lower(message)
	from = 1
	to = 0
	for i = 0, string.len(message) do
		wait(0.1)
		soundchat:Play()
		textchat.Text = string.sub(message,from,to)
		to = to+1
	end
	chatting = false
	canclose = true
	close(3)
	end
end

function winkyface()
	if state == "healthy" then
		face.Image = "http://www.roblox.com/asset/?id=422518991"
	end
end

function oneblackeye()
	if state == "healthy" then
		face.Image = "http://www.roblox.com/asset/?id=422554201"
	end
end

function normaleye()
	face.Image = "http://www.roblox.com/asset/?id=302666935"
end

Player.Chatted:connect(function(msg)
	print(msg)
	if string.find(msg, "burning in hell") or string.find(msg, "slit your throat") or string.find(msg, "you're gonna die") or msg == "die" or msg == "die." then
		oneblackeye()
	end
	
	if msg == ";p" or msg == ":p" or msg == ":P" or msg == ";P" then
		winkyface()
	end
	chatted(msg)
	normaleye()
end)

game:GetService("RunService").RenderStepped:connect(function() --my loop 1
	if Player.Character["Humanoid"].Health < 5 then
		state = "damaged"
	else
		state = "healthy"
	end
	
	if state == "damaged" then
		face.Image = "http://www.roblox.com/asset/?id=422519072"
	end
	
	if gasterblaster ~= nil then
		if gasterside == 1 then
		bpgaster.Position = Player.Character.Torso.CFrame:pointToWorldSpace(Vector3.new(-12,19,-3))
		else
		if gasterside == 2 then
		bpgaster.Position = Player.Character.Torso.CFrame:pointToWorldSpace(Vector3.new(12,19,-3))
		end		
		end
		gasterblaster.CFrame = CFrame.new(gasterblaster.Position, Mouse.hit.p - gasterblaster.CFrame.p)
	end
	if gasterblaster == nil then
		debounce = true
	end
end)

debounce = true
Mouse.KeyDown:connect(function(key)
	if key == "f" then
		s = Instance.new("Sound", Player.Character.Head)
		s.SoundId = "rbxassetid://382366855"
		s.Volume = 1
		s:Play()
		if gasterblaster == nil and debounce == true then
			debounce = false
			gloweffect.Enabled = true
			charge = 5
			print("make")
			gasterblaster = gastermodel:Clone()
			gasterblaster.CFrame = CFrame.new(Player.Character.Torso.Position)
			gasterblaster.Transparency = 0
			gasterblaster.Anchored = false
			bpgaster = Instance.new("BodyPosition", gasterblaster)
			bpgaster.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			
			gasterblaster.Parent = game.Workspace
		end
	end
end)

Mouse.Button1Down:connect(function()
	if gasterblaster ~= nil then
		charging = true
	end
end)

Mouse.Button1Up:connect(function()
	if gasterblaster ~= nil then
		print("shoot")
		gloweffect.Enabled = false
		charging = false
		s = Instance.new("Sound", Player.Character.Head)
		s.SoundId = "rbxassetid://340722848"
		s.Volume = 1
		s:Play()
		if gasterside == 1 then
			gasterside = 2
		elseif gasterside == 2 then
			gasterside = 1
		end
		local ray = Ray.new(gasterblaster.CFrame.p, (Mouse.Hit.p - gasterblaster.CFrame.p).unit * 1000)
		local part, position = workspace:FindPartOnRay(ray, Player.Character)--, false, true)	
		local beam = Instance.new("Part")
		beam.Name = "beeeeeem---"
		local m = Instance.new("SpecialMesh", beam)
		m.MeshType = "Sphere"
		beam.Material = "Neon"
		beam.CanCollide = false
		beam.Anchored = true
		local distance = (gasterblaster.CFrame.p - position).magnitude
		beam.Size = Vector3.new(charge, charge, distance)
		beam.CFrame = CFrame.new(gasterblaster.CFrame.p, position) * CFrame.new(0, 0, -distance / 2) * CFrame.new(0, 0, 2)
		beam.Parent = game.Workspace
		game.Debris:AddItem(beam,2)	
		if part then
			if part.Name ~= "Baseplate" and part.Size.X < 20 and part.Size.Z < 20 and part.Size.Y < 20 then
				part:remove()
			end
		end
		beam.Touched:connect(function(hit)
			if hit then
				if hit.Parent and hit.Parent ~= Player.Character then
					if hit.Parent:FindFirstChild("Humanoid") then
						hit:remove()
						hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(3,10))
					end
				end
			end
		end)
		
		for i =1, 10 do
			wait(0.01)
			beam.Transparency = beam.Transparency + 0.1
			if gasterblaster then
			gasterblaster.Transparency = gasterblaster.Transparency + 0.1
			end
		end
		if beam then
		beam:remove()
		end
		if gasterblaster ~= nil then		
		gasterblaster:remove()		
		gasterblaster = nil
		end
	end
end)

telekinesis = false



Mouse.KeyDown:connect(function(key)
	if key == "g" then
		if telekinesis == false then
			if Mouse.Target ~= nil or Mouse.Target.Parent ~= nil then
				if Mouse.Target.Parent:FindFirstChild("Humanoid") then
					print(Mouse.Target)
					telekinesis = true
					gloweffect.Enabled = true
					bptele = Instance.new("BodyPosition")
					bptele.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					bptele.Parent = Mouse.Target.Parent:FindFirstChild("Torso")
				end
			end
		else
			if telekinesis == true then
				telekinesis = false
				gloweffect.Enabled = false
				if bptele then
					bptele:Remove()
				end
			end
		end
	end
end)

function aftereffect()
	model = Instance.new("Model", game.Workspace)
	for i,v in pairs(Player.Character:GetChildren()) do
		if v:IsA("Part") then
			p = v:Clone()
			p.CanCollide = false
			p.Anchored = true
			p.Parent = model
		end
		
		if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("BodyColors") or v:IsA("Humanoid") then
			p= v:Clone()
			p.Parent = model
			
			if p:IsA("Humanoid") then
				p.DisplayDistanceType = "None"
			end
		end
	end
end

function maketrans(modd)
	for i = 1, 10 do
		wait(0.01)
		for i,v in pairs(modd:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = v.Transparency+0.1
			end
		end
	end
	modd:remove()
end

Mouse.KeyDown:connect(function(key)
	if key == "q" then
		if Mouse.Target ~= nil then
			aftereffect()
			Player.Character:MoveTo(Mouse.Hit.p)
			maketrans(model)
		end
	end
end)

while true do wait() --my loop 2
	if charging == true then
		if gasterblaster ~= nil then
			charge = charge + 1
			local p = Instance.new("Part")
			local m = Instance.new("SpecialMesh",p)
			m.MeshType = "Sphere"
			p.Anchored = true
			p.CanCollide = false
			p.BrickColor = BrickColor.new("Institutional white")
			p.Material = "Neon"
			p.Size = Vector3.new(math.random(-3,4),math.random(-3,1),math.random(1,3))
			p.CFrame = CFrame.new(gasterblaster.Position)* CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
			p.Parent = game.Workspace
			game.Debris:AddItem(p,0.1)		
		end
	end
	
	if telekinesis == true then
		gloweffect.Enabled = true
		if bptele then
		if Mouse.Target ~= nil then
			bptele.Position = Mouse.Hit.p + Vector3.new(0, 7, 0)
		end
		end
	end
end

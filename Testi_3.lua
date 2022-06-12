me = game.Players.yfc
cha = me.Character

tool = Instance.new("HopperBin")
tool.Parent = me.Backpack
tool.Name = "Pistol"

we = Instance.new("Weld")
we.Parent = cha.Torso
we.Part0 = nil
we.Part1 = nil
we.C1 = CFrame.fromEulerAnglesXYZ(-1.6,-0.5,0.1) * CFrame.new(-0.8,-0.5,0.7)
we1 = Instance.new("Weld")
we1.Parent = cha.Torso
we1.Part0 = nil
we1.Part1 = nil
we1.C1 = CFrame.fromEulerAnglesXYZ(-1.6,0.7,0.1) * CFrame.new(0.7,-0.5,0.7)

h = Instance.new("Part")
h.Parent = game.Lighting
h.Name = "Handle"
h.Size = Vector3.new(1,1,1)
h.TopSurface = 0
h.BottomSurface = 0
h.BrickColor = BrickColor.new("Dark grey")
h.Reflectance = 0.07
h.CanCollide = false
h.CFrame = cha.Torso.CFrame

we5r = Instance.new("Weld")
we5r.Parent = cha.Torso
we5r.Part0 = we5r.Parent
we5r.Part1 = h
we5r.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,1.6)

m = Instance.new("BlockMesh")
m.Parent = h
m.Scale = Vector3.new(0.38, 1.05, 0.48)
m.Name = "oo"

h1 = Instance.new("Part")
h1.Parent = game.Lighting
h1.Name = "Handle1"
h1.Size = Vector3.new(1,1,1)
h1.TopSurface = 0
h1.BottomSurface = 0
h1.BrickColor = BrickColor.new("Medium stone grey")
h1.Reflectance = 0.07
h1.CanCollide = false

m1 = Instance.new("BlockMesh")
m1.Parent = h1
m1.Scale = Vector3.new(0.45, 0.45, 1.8)

h2 = Instance.new("Part")
h2.Parent = game.Lighting
h2.Name = "Handle2"
h2.Size = Vector3.new(1,1,1)
h2.TopSurface = 0
h2.BottomSurface = 0
h2.BrickColor = BrickColor.new("Dark grey")
h2.Reflectance = 0.04
h2.CanCollide = false

m2 = Instance.new("CylinderMesh")
m2.Parent = h2
m2.Scale = Vector3.new(0.13, 0.32, 0.13)

h3 = h2:clone()
h3.Parent = game.Lighting
h3.Name = "Handle3"

h4 = Instance.new("Part")
h4.Parent = game.Lighting
h4.Name = "Handle4"
h4.Size = Vector3.new(1,1,1)
h4.TopSurface = 0
h4.BottomSurface = 0
h4.BrickColor = BrickColor.new("Dark grey")
h4.Reflectance = 0.01
h4.CanCollide = false

m4 = Instance.new("BlockMesh")
m4.Parent = h4
m4.Scale = Vector3.new(0.1, 0.2, 0.03)

h5 = Instance.new("Part")
h5.Parent = game.Lighting
h5.Name = "Handle5"
h5.Size = Vector3.new(1,1,1)
h5.TopSurface = 0
h5.BottomSurface = 0
h5.BrickColor = BrickColor.new("Dark grey")
h5.CanCollide = false

m5 = Instance.new("BlockMesh")
m5.Parent = h5
m5.Scale = Vector3.new(0.53, 0.36, 1.53)

h6 = Instance.new("Part")
h6.Parent = game.Lighting
h6.Name = "Handle6"
h6.Size = Vector3.new(1,1,1)
h6.TopSurface = 0
h6.BottomSurface = 0
h6.BrickColor = BrickColor.new("Really black")
h6.CanCollide = false

m6 = Instance.new("CylinderMesh")
m6.Parent = h6
m6.Scale = Vector3.new(0.2, 0.2, 0.2)

firf = Instance.new("Fire")
firf.Size = 0
firf.Heat = 40
firf.Parent = h6
firf.Enabled = false

h7 = Instance.new("Part")
h7.Parent = game.Lighting
h7.Name = "Handle7"
h7.Size = Vector3.new(1,1,1)
h7.TopSurface = 0
h7.BottomSurface = 0
h7.BrickColor = BrickColor.new("Medium stone grey")
h7.CanCollide = false

m7 = Instance.new("BlockMesh")
m7.Parent = h7
m7.Scale = Vector3.new(0.05, 0.13, 0.08)

h8 = h7:clone()
h8.Parent = game.Lighting
h8.Name = "Handle8"

h9 = h7:clone()
h9.Parent = game.Lighting
h9.Name = "Handle9"

h10 = h:clone()
h10.Parent = game.Lighting
h10.Name = "Handle10"
h10.oo.Scale = Vector3.new(0.16, 0.8, 0.34)

smo = Instance.new("Smoke")
smo.Color = Color3.new(100/255, 100/255, 100/255)
smo.Parent = h7
smo.Size = 0
smo.RiseVelocity = 5
smo.Enabled = false

gui = Instance.new("ScreenGui")
gui.Parent = me.PlayerGui
gui.Name = "PistolAmmo"

value = Instance.new("NumberValue")
value.Parent = gui
value.Value = 8
value.Name = "ammoo"

clips = Instance.new("NumberValue")
clips.Parent = gui
clips.Value = 5
clips.Name = "claps"

blaa = Instance.new("Frame")
blaa.Parent = gui
blaa.Size = UDim2.new(0,80,0,40)
blaa.Position = UDim2.new(0,50,0,100)
blaa.Visible = false
blaa.BackgroundColor = BrickColor.new("Really black")
blaa.BorderColor = BrickColor.new("New Yeller")

text = Instance.new("TextLabel")
text.Parent = gui
text.Name = "Ammo"
text.Text = value.Value.."/"..clips.Value
text.Size = UDim2.new(0, 80, 0, 0)
text.Position = UDim2.new(0, 50, 0, 125)
text.Visible = false
text.BackgroundTransparency = 1
text.TextColor = BrickColor.new("New Yeller")

durp = Instance.new("TextLabel")
durp.Parent = gui
durp.Name = "txt"
durp.Text = " "
durp.Size = UDim2.new(0, 80, 0, 0)
durp.Position = UDim2.new(0, 50, 0, 115)
durp.Visible = false
durp.BackgroundTransparency = 1
durp.TextColor = BrickColor.new("New Yeller")

local sound = Instance.new("Sound")
sound.Parent = h1
sound.Volume = 1
sound.Pitch = 1
sound.SoundId = "http://www.roblox.com/asset/?id=2760979"
sound.archivable = false

local soun = Instance.new("Sound")
soun.Parent = h1
soun.Volume = 1
soun.Pitch = 1
soun.SoundId = "http://www.roblox.com/asset/?id=2691591"
soun.archivable = false

local hed = Instance.new("Sound")
hed.Parent = game.Workspace
hed.Volume = 0.7
hed.Pitch = 1
hed.SoundId = "http://www.roblox.com/asset/?id=1876552"
hed.archivable = false

enabled = false

function shot()
	local p = Instance.new("Part")
	p.Parent = game.Workspace
	p.Size = Vector3.new(1,1,1)
	p.TopSurface = 0
	p.BottomSurface = 0
	p.CFrame = h1.CFrame * CFrame.new(0,0,0)
	p:breakJoints()
	p.Anchored = false
	p.CanCollide = false
	local m = Instance.new("SpecialMesh")
	m.Parent = p
	m.MeshType = "FileMesh"
	m.Scale = Vector3.new(0.35,0.35,0.22)
	m.MeshId = "http://www.roblox.com/asset/?id=2697549"
	m.TextureId = "http://www.roblox.com/asset/?id=2697544"
	local bv = Instance.new("BodyForce")
	bv.Parent = p
	bv.force = h1.CFrame.lookVector * 2500
	bv.force = bv.force + Vector3.new(0, 220, 0)
	sound.Pitch = math.random(0.8,1.2)
	sound.Volume = math.random(0.8,1.0)
	sound:play()
	firf.Enabled = true
	smo.Enabled = true
	wait(0.04)
	firf.Enabled = false
	smo.Enabled = false
	p.Touched:connect(function(hit)
		if hit.Parent.Name == me.Name then return end
		local hum = hit.Parent:GetChildren()
		for i=1, #hum do
			if hum[i].className == "Humanoid" then
				hum[i].Health = hum[i].Health - 18
				if hit.Name == "Head" then
					hed:play()
					hum[i].Health = hum[i].Health - 60
				end
				for i=1, math.random(4,10) do
					local blood = Instance.new("Part")
					blood.Parent = game.Workspace
					blood.BrickColor = BrickColor.new(21)
					blood.formFactor = "Plate"
					blood.Size = Vector3.new(1,0.4,1)
					blood.TopSurface = 0
					blood.BottomSurface = 0
					blood.CFrame = hit.CFrame
					blood.Velocity = Vector3.new(math.random(-40,40),math.random(-10,25),math.random(-40,40))
					blood.RotVelocity = Vector3.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
					blood.CanCollide = false
					blood.Anchored = false
					blood:BreakJoints()
				end
			end
		end
		p:remove()
	end)
end

function Main(mouse) 
	if enabled == true then return end
	enabled = true
	value.Value = value.Value - 1
	text.Text = value.Value.."/"..clips.Value

	if value.Value == -1 then
		durp.Text = "You're out!"
		text.Text = "0/"..clips.Value
		if clips.Value <= 0 then return end
		durp.Text = "Reloading.."
		soun:play()
		wait(0.5)
		local fv = h10:clone()
		fv.Parent = workspace
		fv.CanCollide = true
		fv.Velocity = Vector3.new(math.random(-20,20),math.random(-5,5),math.random(-20,20))
		fv.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		h10.Transparency = 1
		wait(1.7)
		h10.Transparency = 0
		wait(0.5)
		clips.Value = clips.Value - 1
		value.Value = 8
		text.Text = value.Value.."/"..clips.Value
		durp.Text = " "
	end
	shot()

	for i=1, 2 do
		wait()
		w2.C1 = w2.C1 * CFrame.fromEulerAnglesXYZ(0.23,0,0) * CFrame.new(0,-0.08,-0.2)
	end
	for i=1, 2 do
		wait()
		w2.C1 = w2.C1 * CFrame.fromEulerAnglesXYZ(-0.23,0,0) * CFrame.new(0,0.08,0.2)
	end
	w2.C1 = CFrame.fromEulerAnglesXYZ(-0.1, 0, 0) * CFrame.new(0,-0.43,0.35)
	wait(0.1)
	for i = 1, 6 do
		w4.C1 = w4.C1 * CFrame.new(0,0,-0.08)
		w7.C1 = w7.C1 * CFrame.new(0,0,-0.08)
		w8.C1 = w8.C1 * CFrame.new(0,0,-0.08)
		wait()
	end
	for i = 1, 2 do
		w4.C1 = w4.C1 * CFrame.new(0,0,0.24)
		w7.C1 = w7.C1 * CFrame.new(0,0,0.24)
		w8.C1 = w8.C1 * CFrame.new(0,0,0.24)
		wait()
	end
	w5.C1 = CFrame.fromEulerAnglesXYZ(1.571, 0, 0) * CFrame.new(0,-0.8,1.39)
	w7.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0.05,-1.12,-0.25)
	w8.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-0.05,-1.12,-0.25)
	wait(0.03)
	enabled = false
	wait(2)
	p:remove()
end

function Init(mouse)
h.Parent = tool
h1.Parent = tool
h2.Parent = tool
h3.Parent = tool
h4.Parent = tool
h5.Parent = tool
h6.Parent = tool
h7.Parent = tool
h8.Parent = tool
h9.Parent = tool
h10.Parent = tool
mouse.Button1Down:connect(Main)
text.Visible = true
blaa.Visible = true
durp.Visible = true
we.Part0 = we.Parent
we.Part1 = cha["Right Arm"]
we1.Part0 = we1.Parent
we1.Part1 = cha["Left Arm"]
we2 = Instance.new("Weld")
we2.Parent = cha.Torso
we2.Part0 = we2.Parent
we2.Part1 = h
we2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.5,1.6)
w = Instance.new("Weld")
w.Parent = h
w.Part0 = w.Parent
w.Part1 = h1
w.C1 = CFrame.new(0, -0.8, 0.6)
w1 = Instance.new("Weld")
w1.Parent = h
w1.Part0 = w.Parent
w1.Part1 = h2
w1.C1 = CFrame.fromEulerAnglesXYZ(0.3, 0, 0) * CFrame.new(0,-0.4,0.55)
w3 = Instance.new("Weld")
w3.Parent = h
w3.Part0 = w.Parent
w3.Part1 = h3
w3.C1 = CFrame.fromEulerAnglesXYZ(1.3, 0, 0) * CFrame.new(0,-0.2,0.35)
w2 = Instance.new("Weld")
w2.Parent = h
w2.Part0 = w.Parent
w2.Part1 = h4
w2.C1 = CFrame.fromEulerAnglesXYZ(-0.1, 0, 0) * CFrame.new(0,-0.43,0.35)
w4 = Instance.new("Weld")
w4.Parent = h
w4.Part0 = w.Parent
w4.Part1 = h5
w4.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0,-0.9,0.435)
w5 = Instance.new("Weld")
w5.Parent = h
w5.Part0 = w.Parent
w5.Part1 = h6
w5.C1 = CFrame.fromEulerAnglesXYZ(1.571, 0, 0) * CFrame.new(0,-0.8,1.39)
w6 = Instance.new("Weld")
w6.Parent = h
w6.Part0 = w.Parent
w6.Part1 = h7
w6.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0,-1.13,1.4)
w7 = Instance.new("Weld")
w7.Parent = h5
w7.Part0 = w.Parent
w7.Part1 = h8
w7.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0.05,-1.12,-0.25)
w8 = Instance.new("Weld")
w8.Parent = h5
w8.Part0 = w.Parent
w8.Part1 = h9
w8.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(-0.05,-1.12,-0.25)
w9 = Instance.new("Weld")
w9.Parent = h
w9.Part0 = w.Parent
w9.Part1 = h10
w9.C1 = CFrame.fromEulerAnglesXYZ(0, 0, 0) * CFrame.new(0,0.2,0)
	mouse.KeyDown:connect(function(key) 
		if key == "k" then
			Instance.new("Part", game.Workspace).Position = Vector3.new(0,100,0)
		end
	end) 
end

tool.Selected:connect(Init)

function unq()
h.Parent = game.Lighting
h1.Parent = game.Lighting
h2.Parent = game.Lighting
h3.Parent = game.Lighting
h4.Parent = game.Lighting
h5.Parent = game.Lighting
h6.Parent = game.Lighting
h7.Parent = game.Lighting
h8.Parent = game.Lighting
h9.Parent = game.Lighting
h10.Parent = game.Lighting
we.Part0 = nil
we.Part1 = nil
we1.Part0 = nil
we1.Part1 = nil
we2:remove()
text.Visible = false
durp.Visible = false
blaa.Visible = false
end

tool.Deselected:connect(unq)


--lego

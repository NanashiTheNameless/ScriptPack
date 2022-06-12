local ContentProvider = game:GetService("ContentProvider")
 
local function LoadAssets(AssetList)
	-- Takes an asset list and preloads it. Will not wait for them to load. 
 
	for _, AssetId in pairs(AssetList) do
		ContentProvider:Preload("http://www.roblox.com/asset/?id=" .. AssetId)
	end
end 
 
LoadAssets({11442510,30956707})
local Gibs = game.Workspace

function Kill(Character)
	Character.Humanoid.Health = 0
	local poo = Instance.new("IntValue",Character)
	poo.Name = "haha nope"
	local svch = Character
	local hum = Character:findFirstChild("Humanoid")
	Character.Archivable = true
	local chrclone = Character:clone()
	Character.Archivable = false

	local ch = chrclone:GetChildren()
	local i
	for i = 1,#ch do
		if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" or ch[i].ClassName == "Script" then
			ch[i]:remove()
		end
	end
	local function Scan(ch)
		local e
		for e = 1,#ch do
			Scan(ch[e]:GetChildren())
			if ch[e].ClassName == "Weld" or ch[e].ClassName == "Motor6D" then
				ch[e]:remove()
			end
		end
	end
	Scan(chrclone:GetChildren())

	local hum2 = chrclone:findFirstChild("Humanoid")


	if hum2 ~= nil then
		hum2.Name = "Humanoid2"
		hum2.PlatformStand = true
		hum2.Sit = true 
		hum2.MaxHealth = 0
		hum2.Health = 0
	end

	local ch = Character:GetChildren()
	local i
	for i = 1,#ch do
		if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
			ch[i]:remove()
		end
	end

	wait(0.2)

	local ch = Character:GetChildren()
	local i
	for i = 1,#ch do
		if ch[i].ClassName == "Part" or ch[i].ClassName == "Hat" or ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
			ch[i]:remove()
		end
	end
	Character = chrclone
	local Torso = Character.Torso
	local movevector = Vector3.new()

	if Torso then
		local Head = Character:FindFirstChild("Head")
		local Limb = Character:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Right Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		--[
		local Bar = Instance.new("Part")
		Bar.TopSurface = 0
		Bar.BottomSurface = 0
		Bar.formFactor = "Symmetric"
		Bar.Size = Vector3.new(1, 1, 1)
		Bar.Transparency = 1
		Bar.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
		Bar.Parent = Character
		local Weld = Instance.new("Weld")
		Weld.Part0 = Torso
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = Torso
		--]]
	end
	Character.Parent = Gibs
	game.Debris:AddItem(Character, 12)
	if movevector ~= Vector3.new() then
		for i = 1,10 do
			wait()
			Torso.Velocity = Vector3.new(0,0,-100)
			Head.Velocity = movevector * 200
		end
	end
	local duh = Torso
ee = Instance.new("Part") 
ee.Anchored = false
ee.CanCollide = false
ee.Parent = duh 
ee.Transparency =1 
ee.Size = Vector3.new(0.15, 0.15, 0.15)
wee = Instance.new("Weld") 
wee.Parent = duh
wee.Part0 = duh
wee.Part1 = ee
wee.C0 = CFrame.new(0, 1, 0)
ge = Instance.new('ParticleEmitter')
ge.Parent = ee
ge.Texture = "rbxassetid://29712167"
ge.Size = NumberSequence.new(0.2,0.05)
ge.Acceleration = Vector3.new(0, -20, 0)
ge.Rate = 100000 
ge.Speed = NumberRange.new(7,8)
ge.Lifetime = NumberRange.new(3,4)
ge.VelocitySpread = 10
ge.VelocityInheritance = 0.3 
ea = Instance.new("Part") 
ea.Anchored = false
ea.CanCollide = false
ea.Parent = Character.Head
ea.Transparency =1 
ea.Size = Vector3.new(0.15, 0.15, 0.15)
wea = Instance.new("Weld") 
wea.Parent = Character.Head
wea.Part0 = Character.Head
wea.Part1 = ea
wea.C0 = CFrame.new(0, -0.7, 0)
ga = Instance.new('ParticleEmitter')
ga.Parent = ea
ga.Texture = "rbxassetid://29712167"
ga.Size = NumberSequence.new(0.2,0.05)
ga.Acceleration = Vector3.new(0, -20, 0)
ga.Rate = 100000
ga.Speed = NumberRange.new(7,8)
ga.Lifetime = NumberRange.new(3,4)
ga.VelocitySpread = 10
ga.VelocityInheritance = 0.3 
ga.EmissionDirection = Enum.NormalId.Bottom
end

local plr = game.Players.LocalPlayer
local chr = plr.Character
local mouse = plr:GetMouse()
local intro = coroutine.wrap(function()
	local gui = Instance.new('ScreenGui',plr.PlayerGui)
	gui.Name = "Intro"
	local fr = Instance.new('Frame',gui)
	fr.Size = UDim2.new(0.4,0,0,0)
	fr.Position = UDim2.new(0.3,0,-0.1,0)
	fr.BorderColor3 = Color3.fromRGB(198, 45, 45)
	fr.BorderSizePixel = 5
	fr.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	local title = Instance.new('TextLabel',fr)
	title.Size = UDim2.new(1,0,0.4,0)
	title.Position = UDim2.new(0,0,0.1,0)
	title.BackgroundTransparency = 1
	title.TextColor3 = Color3.fromRGB(198, 45, 45)
	title.TextScaled = true
	title.Text = 'Deadpool Script'
	local desc = Instance.new('TextLabel',fr)
	desc.Size = UDim2.new(1,0,0.5,0)
	desc.Position = UDim2.new(0,0,0.5,0)
	desc.BackgroundTransparency = 1
	desc.TextColor3 = Color3.fromRGB(198, 45, 45)
	desc.TextScaled = true
	desc.Text = ''
	wait(1)
	fr:TweenSize(UDim2.new(0.4,0,0.5,0),Enum.EasingDirection.Out,Enum.EasingStyle.Bounce,2)
	wait(2)
	local str = 'Hotkey to equip katana is N. Use Z to stab and X to slice heads off. Created by mustardfoot.'
	local leng = string.len(str)
	for i = 1,leng do
		desc.Text = string.sub(str,1,i)
		wait()
	end
	wait(2)
	fr:TweenSize(UDim2.new(0.4,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Bounce,0.8)
	wait(2)
	gui:Destroy()
end)
intro()


wait(2)
local tors = chr.Torso
chr.Head.Transparency = 1
for i,v in pairs(chr:GetChildren()) do
	if v.ClassName == "CharacterMesh" then
		v:Destroy()
	end
end
local humroot = chr.HumanoidRootPart:Clone()
local torsclone = tors:Clone()
local anim = chr.Animate:Clone()
local hum = chr.Humanoid:Clone()
local head = chr.Head:Clone()
local neck = chr.Torso.Neck:Clone()
local rightarm = chr["Right Arm"]:Clone()
local leftarm = chr["Left Arm"]:Clone()
local leftleg = chr["Left Leg"]:Clone()
local rightleg = chr["Right Leg"]:Clone()
local rightshoulder = tors["Right Shoulder"]:Clone()
local leftshoulder = tors["Left Shoulder"]:Clone()
local righthip = tors["Right Hip"]:Clone()
local lefthip = tors["Left Hip"]:Clone()
local shirt = nil
local pants = nil
local hats = {}
local lastpos = CFrame.new(0,0,0)
local on = true
local doing = false
local stabbing = false
local slicing = false
local toolz = Instance.new('Tool',plr.Backpack)
toolz.Name = "Katana"
toolz.RequiresHandle = false
toolz.CanBeDropped = false
local partz = Instance.new('Part',toolz)
partz.Size = Vector3.new(0.2,0.2,3)
partz.CanCollide = false
local meshz = Instance.new('SpecialMesh',partz)
meshz.MeshId = 'rbxassetid://11442510'
meshz.TextureId = 'rbxassetid://30956707'
meshz.VertexColor = Vector3.new(0,0,0)

toolz.Equipped:connect(function(mouse)
	if chr:FindFirstChild('Right Arm') then
		local weld = Instance.new('Weld',partz)
		weld.Part0 = partz
		weld.Part1 = chr["Right Arm"]
		weld.C0 = CFrame.new(0.9,0,-1.25)*CFrame.Angles(math.pi,0,-math.pi/2)
	end
	mouse.KeyDown:connect(function(key)
		if doing == false then
		if key == 'z' then
		if chr:FindFirstChild('Right Arm') and chr:FindFirstChild('Torso') then
			doing = true
			local weld = Instance.new('Weld',chr["Right Arm"])
			weld.Part0 = chr["Right Arm"]
			weld.Part1 = chr.Torso
			weld.C0 = CFrame.new(-1.5,0,0)
			for i=1,25 do
				weld.C0 = weld.C0:lerp(CFrame.new(-1.5,1,0.9)*CFrame.Angles(math.pi/2.5,0,-math.pi/2.5),i/25)
				wait()
			end
			wait()
			stabbing = true
			for i=1,10 do
				weld.C0 = weld.C0:lerp(CFrame.new(-1.5,0.8,0)*CFrame.Angles(-math.pi/4,0,-math.pi/6),i/10)
				wait()
			end
			wait()
			for i=1,25 do
				weld.C0 = weld.C0:lerp(CFrame.new(-1.5,0,0),i/25)
				wait()
			end
			chr["Right Arm"]:Destroy()
			doing = false
			stabbing = false
		end
		elseif key == 'x' then
			if chr:FindFirstChild('Right Arm') and chr:FindFirstChild('Torso') then
			doing = true
			local weld = Instance.new('Weld',chr["Right Arm"])
			weld.Part0 = chr["Right Arm"]
			weld.Part1 = chr.Torso
			weld.C0 = CFrame.new(-1.5,0,0)
			for i=1,25 do
				weld.C0 = weld.C0:lerp(CFrame.new(-0.5,0.7,-0.5)*CFrame.Angles(math.pi/8,math.pi/1,math.pi/1.5),i/25)
				wait()
			end
			wait()
			slicing = true
			for i=1,5 do
				weld.C0 = weld.C0:lerp(CFrame.new(-1.5,0.8,0)*CFrame.Angles(-math.pi/8,0,-math.pi/4),i/5)
				wait()
			end
			wait()
			for i=1,12.5 do
				weld.C0 = weld.C0:lerp(CFrame.new(-1.5,0,0),i/12.5)
				wait()
			end
			chr["Right Arm"]:Destroy()
			doing = false
			slicing = false
		end
		end
		end
	end)
end)

partz.Touched:connect(function(hit)
	if hit.Parent:FindFirstChild('Humanoid') and stabbing and hit.Parent ~= chr then
		hit.Parent.Humanoid.Health = 0
	elseif hit.Parent:FindFirstChild('heck') == nil and slicing then
		local he = Instance.new('IntValue',hit.Parent)
		he.Name = "heck"
		Kill(hit.Parent)
	end
end)

toolz.Unequipped:connect(function(mouse)
	if partz:FindFirstChildOfClass('Weld') then
		partz:FindFirstChildOfClass('Weld'):Destroy()
	end
end)
toolz.AncestryChanged:connect(function(child, parent)
	if parent ~= chr and parent ~= plr.Backpack then
	wait()
		toolz.Parent = plr.Backpack
	end
end)

mouse.KeyDown:connect(function(key) 
	if key == "n" then
	wait()
		toolz:Equip()
	end
end)
if chr:FindFirstChildOfClass('Shirt') then
	shirt = chr:FindFirstChildOfClass('Shirt'):Clone()
end
if chr:FindFirstChildOfClass('Pants') then
	pants = chr:FindFirstChildOfClass('Pants'):Clone()
end
for i,v in pairs(chr:GetChildren()) do
	if v.ClassName == "Accessory" then
		table.insert(hats,v:Clone())
	end
end
local rootjoint = chr.HumanoidRootPart.RootJoint:Clone()
chr.Humanoid:Destroy()
local gui = Instance.new('ScreenGui')
gui.Parent = game.Players.LocalPlayer.PlayerGui
gui.Name = "Deadpool"
gui.ResetOnSpawn = false
local frame = Instance.new('Frame',gui)
frame.Size = UDim2.new(0.2,0,0.2,0)
frame.Position = UDim2.new(0,0,0.9,0)
frame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
frame.BorderSizePixel = 4
frame.BorderColor3 = Color3.fromRGB(198, 45, 45)
frame.Active = true
frame.Draggable = true 
local txt = Instance.new('TextLabel',frame)
txt.Text = "Deadpool Gui"
txt.TextColor3 = Color3.fromRGB(198, 45, 45)
txt.Size = UDim2.new(1,0,0.3,0)
txt.TextScaled = true
txt.BackgroundTransparency = 1
local but = Instance.new('TextButton',frame)
but.Text = "Toggle Suit"
but.TextColor3 = Color3.fromRGB(38, 38, 38)
but.Size = UDim2.new(0.7,0,0.3,0)
but.Position = UDim2.new(0.15,0,0.5,0)
but.BorderSizePixel = 0
but.TextScaled = true
but.BackgroundColor3 = Color3.fromRGB(198, 45, 45)
but.MouseButton1Down:connect(function()
	on = not on
end)
game:GetService('RunService').Stepped:connect(function()
	if chr.Parent == nil then
	chr.RobloxLocked = false
	chr.Parent = game.Workspace
	end
	if chr:FindFirstChildOfClass('Humanoid') == nil then
		hum:Clone().Parent = chr
		chr.Animate:Destroy()
		anim:Clone().Parent = chr
	end
	if chr:FindFirstChild('HumanoidRootPart') == nil then
		humroot:Clone().Parent = chr
		humroot.CFrame = lastpos
		chr.Humanoid:Destroy()
		hum:Clone().Parent = chr
		chr.Animate:Destroy()
		anim:Clone().Parent = chr
		chr.HumanoidRootPart.RootJoint:Destroy()
	end
	if chr:FindFirstChild('Torso') == nil then
		chr.Humanoid:Destroy()
		local tor = tors:Clone()
		tor.Parent = chr
		hum:Clone().Parent = chr
		chr.Animate:Destroy()
		anim:Clone().Parent = chr
	end
	if chr.HumanoidRootPart:FindFirstChild('RootJoint') == nil then
		local rtj = rootjoint:Clone()
		rtj.Parent = chr.HumanoidRootPart
		rtj.Part0 = chr.HumanoidRootPart
		rtj.Part1 = chr.Torso
	end
	if chr:FindFirstChild('Head') == nil then
		chr.Humanoid:Destroy()
		head:Clone().Parent = chr
		hum:Clone().Parent = chr
		chr.Animate:Destroy()
		anim:Clone().Parent = chr
	end
	if chr.Torso:FindFirstChild('Neck') == nil then
		chr.Humanoid:Destroy()
		local hec = neck:Clone()
		hec.Parent = chr.Torso
		hec.Part0 = chr.Torso
		hec.Part1 = chr.Head
		hum:Clone().Parent = chr
		chr.Animate:Destroy()
		anim:Clone().Parent = chr
	end
	if chr:FindFirstChild('Right Leg') == nil then
		rightleg:Clone().Parent = chr
		local fi = righthip:Clone()
		fi.Parent = chr.Torso
		fi.Part0 = chr.Torso
		fi.Part1 = chr["Right Leg"]
	end
	if chr:FindFirstChild('Right Arm') == nil then
		rightarm:Clone().Parent = chr
		local fi = rightshoulder:Clone()
		fi.Parent = chr.Torso
		fi.Part0 = chr.Torso
		fi.Part1 = chr["Right Arm"]
	end
	if chr:FindFirstChild('Left Leg') == nil then
		leftleg:Clone().Parent = chr
		local fi = lefthip:Clone()
		fi.Parent = chr.Torso
		fi.Part0 = chr.Torso
		fi.Part1 = chr["Left Leg"]
	end
	if chr:FindFirstChild('Left Arm') == nil then
		leftarm:Clone().Parent = chr
		local fi = leftshoulder:Clone()
		fi.Parent = chr.Torso
		fi.Part0 = chr.Torso
		fi.Part1 = chr["Left Arm"]
	end
	for i,v in pairs(chr:GetChildren()) do
		if v.Name == "Mask" or v.ClassName == "Accessory" or v.ClassName == "Shirt" or v.ClassName == "Pants" or v.Name == "KatanaHolder" then
			v:Destroy()
		end
	end
	chr.Humanoid.Health = chr.Humanoid.MaxHealth
	if partz:FindFirstChild('Weld') == nil and toolz.Parent == chr then
		local weld = Instance.new('Weld',partz)
		weld.Part0 = partz
		weld.Part1 = chr["Right Arm"]
		weld.C0 = CFrame.new(0.9,0,-1.25)*CFrame.Angles(math.pi,0,-math.pi/2)
	end
	lastpos = chr.HumanoidRootPart.CFrame
	local kat = Instance.new('Part',chr)
	kat.Size = Vector3.new(0.4,3,0.2)
	kat.Name = "KatanaHolder"
	kat.Material = Enum.Material.SmoothPlastic
	kat.BrickColor = BrickColor.new('Really black')
	kat.CanCollide = false
	local we = Instance.new('Weld',kat)
	we.Part0 = kat
	we.Part1 = chr.Torso
	we.C0 = CFrame.new(0,0,-0.5)*CFrame.Angles(0,0,0.5)
	if on == true then
	local shirt = Instance.new('Shirt',chr)
	shirt.ShirtTemplate = 'rbxassetid://379545459'
	local pants = Instance.new('Pants',chr)
	pants.PantsTemplate = 'rbxassetid://379545671'
	local mask = Instance.new('Part',chr)
mask.Name = "Mask"
mask.Size = Vector3.new(2,1,1)
mask.BrickColor = BrickColor.new('Bright red')
local mesh = Instance.new('SpecialMesh',mask)
mesh.Scale = Vector3.new(1.3,1.3,1.3)
local weld = Instance.new('Weld',mask)
weld.Part0 = mask
weld.Part1 = chr.Head
local eyesurround = Instance.new('Part',mask)
eyesurround.BrickColor = BrickColor.new('Really black')
eyesurround.Size = Vector3.new(0.3,0.5,0.2)
local mesh2 = Instance.new('SpecialMesh',eyesurround)
mesh2.MeshType = Enum.MeshType.Sphere
mesh2.Scale = Vector3.new(1,1,0.5)
local weld2 = Instance.new('Weld',eyesurround)
weld2.Part0 = eyesurround
weld2.Part1 = mask
weld2.C0 = CFrame.new(0.1,-0.22,0.58)*CFrame.Angles(0,0,-0.2)
local eyesurround2 = Instance.new('Part',mask)
eyesurround2.BrickColor = BrickColor.new('Really black')
eyesurround2.Size = Vector3.new(0.3,0.5,0.2)
local mesh3 = Instance.new('SpecialMesh',eyesurround2)
mesh3.MeshType = Enum.MeshType.Sphere
mesh3.Scale = Vector3.new(1,1,0.5)
local weld3 = Instance.new('Weld',eyesurround2)
weld3.Part0 = eyesurround2
weld3.Part1 = mask
weld3.C0 = CFrame.new(-0.1,-0.22,0.58)*CFrame.Angles(0,0,0.2)
local eye = Instance.new('Part',mask)
eye.BrickColor = BrickColor.new('Institutional white')
eye.Size = Vector3.new(0.2,0.2,0.2)
local mesh4 = Instance.new('SpecialMesh',eye)
mesh4.MeshType = Enum.MeshType.Sphere
mesh4.Scale = Vector3.new(1,1,0.5)
local weld4 = Instance.new('Weld',eye)
weld4.Part0 = eye
weld4.Part1 = mask
weld4.C0 = CFrame.new(0.1,-0.22,0.59)*CFrame.Angles(0,0,-0.2)
local eye2 = Instance.new('Part',mask)
eye2.BrickColor = BrickColor.new('Institutional white')
eye2.Size = Vector3.new(0.2,0.2,0.2)
local mesh5 = Instance.new('SpecialMesh',eye2)
mesh5.MeshType = Enum.MeshType.Sphere
mesh5.Scale = Vector3.new(1,1,0.5)
local weld5 = Instance.new('Weld',eye2)
weld5.Part0 = eye2
weld5.Part1 = mask
weld5.C0 = CFrame.new(-0.1,-0.22,0.59)*CFrame.Angles(0,0,0.2)
	else
		chr.Head.Transparency = 0
		if shirt ~= nil then
			shirt:Clone().Parent = chr
		end
		if pants ~= nil then
			pants:Clone().Parent = chr
		end
		for i,v in pairs(hats) do
			v:Clone().Parent = chr
		end
end
end)
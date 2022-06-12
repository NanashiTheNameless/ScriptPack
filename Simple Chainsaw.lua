local hehah = Instance.new('ScreenGui')
local lele = game.Players.LocalPlayer
hehah.Parent = lele.PlayerGui
local scr = Instance.new('TextLabel')
scr.Parent = hehah
scr.Text = "Created by mustardfoot for Raindrop users. Enjoy!"
scr.TextScaled = true
scr.Font = Enum.Font.SciFi
scr.TextColor = BrickColor.new(1001)
scr.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
scr.BorderColor3 = Color3.new(0, 0, 0)
scr.Position = UDim2.new(0.2, 0, 0.2, 0)
scr.Size = UDim2.new(0.7, 0, 0.7, 0)
wait(3)
hehah:Destroy()

local plr = game.Players.LocalPlayer
local chr = plr.Character
local hum = chr:FindFirstChildOfClass('Humanoid')
local Tool = nil
Gibs = game.Workspace

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
if plr.Backpack:FindFirstChild('Chainsaw') then
plr.Backpack.Chainsaw:Destroy()
elseif plr.Character:FindFirstChild('Chainsaw') then
plr.Character.Chainsaw:Destroy()
end
wait()
local hee = Instance.new('Tool',plr.Backpack)
hee.Name = "Chainsaw"
hee.CanBeDropped = false
hee.GripPos = Vector3.new(0,0,1.5)
hee.GripForward = Vector3.new(1,0,0)
hee.GripRight = Vector3.new(1,0,0)
hee.GripUp = Vector3.new(0,0,-1)
local hee2 = Instance.new('Part',hee)
hee2.Name = 'Handle'
hee2.Size = Vector3.new(0.2,0.7,2.5)
local hee3 = Instance.new('FileMesh',hee2)
hee3.MeshId = 'rbxassetid://2766469'
hee3.TextureId = 'rbxassetid://2766467'
Tool = hee
local haha = false
Tool.Activated:connect(function()
	haha = true
	local anim = Instance.new("StringValue")
	anim.Name = "toolanim"
	anim.Value = "Slash"
	anim.Parent = Tool
	local sound = Instance.new("Sound",hee2)
	sound.SoundId = 'rbxassetid://248088589'
	sound:Play()
	wait(0.5)
	haha = false
anim:Destroy()
	sound:Destroy()
end)

hee2.Touched:connect(function(hit)
		if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChild('Torso') and hit.Parent:FindFirstChild('Head') and hit.Parent:FindFirstChild('haha nope') == nil and haha == true then
			Kill(hit.Parent)
		end
end)
--[[ C o n t r o l s : Made by Tollonis
E - Draw arrow (press E again to put it back)
Left Click - Fire
Z - Equip/Unequip

As always, feel free to DM me with suggestions or bugs. ]]--

wait()
player = game.Players.LocalPlayer
char = player.Character
mouse = player:GetMouse()

print("WHAT UP")

armed = false
canfire = false
enabled = true
equipped = false

mouse.Icon = "rbxassetid://311756275"

rightshoulder = char.Torso["Right Shoulder"]:Clone()
leftshoulder = char.Torso["Left Shoulder"]:Clone()

hed = Instance.new("Weld", char.Torso)
hed.Part0 = char.Torso
hed.Part1 = char.Head
hed.C0 = CFrame.new(0, 1.55, 0) * CFrame.Angles(0, 0, 0)

tors = Instance.new("Weld", char.HumanoidRootPart)
tors.Part0 = char.HumanoidRootPart
tors.Part1 = char.Torso
tors.C0 = CFrame.new(0, 0, 0) * CFrame.new(0, 0, 0)

-- the bow stuff

bow = Instance.new("Model")
bow.Parent = game.Workspace
bow.Name = "bow"

handle = Instance.new("Part")
handle.CFrame = CFrame.new(Vector3.new(-48.1999893, 2.79998732, -58.2000122)) * CFrame.Angles(-3.1415927410126, 0, -0)
handle.Size = Vector3.new(0.200000003, 1.20000005, 0.200000003)
handle.BrickColor = BrickColor.new("Pine Cone")
handle.Friction = 0.30000001192093
handle.Shape = Enum.PartType.Block
handle.Name = "Handle"
handle.Parent = bow
handle.CanCollide = false

leg2 = Instance.new("Part")
leg2.CFrame = CFrame.new(Vector3.new(-48.1999931, 1.25002313, -58.2000008)) * CFrame.Angles(-3.1415927410126, 0, -0)
leg2.Size = Vector3.new(0.200000003, 1.90000021, 0.200000003)
leg2.BrickColor = BrickColor.new("Pine Cone")
leg2.Friction = 0.30000001192093
leg2.Shape = Enum.PartType.Block
leg2.Name = "Leg2"
leg2.Parent = bow
leg2.CanCollide = false

cap2 = Instance.new("Part")
cap2.CFrame = CFrame.new(Vector3.new(-48.2000046, 0.300019979, -58.2000008)) * CFrame.Angles(1.5707963705063, 0, -0)
cap2.TopSurface = Enum.SurfaceType.Smooth
cap2.BottomSurface = Enum.SurfaceType.Smooth
cap2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
cap2.BrickColor = BrickColor.new("Pine Cone")
cap2.Friction = 0.30000001192093
cap2.Shape = Enum.PartType.Cylinder
cap2.Name = "Cap2"
cap2.Parent = bow
cap2.CanCollide = false

joint2 = Instance.new("Part")
joint2.CFrame = CFrame.new(Vector3.new(-48.1999893, 2.19999003, -58.2000237)) * CFrame.Angles(1.5707963705063, 0, -0)
joint2.TopSurface = Enum.SurfaceType.Smooth
joint2.BottomSurface = Enum.SurfaceType.Smooth
joint2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
joint2.BrickColor = BrickColor.new("Pine Cone")
joint2.Friction = 0.30000001192093
joint2.Shape = Enum.PartType.Cylinder
joint2.Name = "Joint2"
joint2.Parent = bow
joint2.CanCollide = false

joint1 = Instance.new("Part")
joint1.CFrame = CFrame.new(Vector3.new(-48.2000008, 3.39998126, -58.2000275)) * CFrame.Angles(1.5707963705063, 0, -0)
joint1.TopSurface = Enum.SurfaceType.Smooth
joint1.BottomSurface = Enum.SurfaceType.Smooth
joint1.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
joint1.BrickColor = BrickColor.new("Pine Cone")
joint1.Friction = 0.30000001192093
joint1.Shape = Enum.PartType.Cylinder
joint1.Name = "Joint1"
joint1.Parent = bow
joint1.CanCollide = false

leg1 = Instance.new("Part")
leg1.CFrame = CFrame.new(Vector3.new(-48.1999931, 4.35000753, -58.2000122)) * CFrame.Angles(-3.1415927410126, 0, -0)
leg1.Size = Vector3.new(0.200000003, 1.90000021, 0.200000003)
leg1.BrickColor = BrickColor.new("Pine Cone")
leg1.Friction = 0.30000001192093
leg1.Shape = Enum.PartType.Block
leg1.Name = "Leg1"
leg1.Parent = bow
leg1.CanCollide = false

cap1 = Instance.new("Part")
cap1.CFrame = CFrame.new(Vector3.new(-48.2000046, 5.29999113, -58.2000122)) * CFrame.Angles(1.5707963705063, 0, -0)
cap1.TopSurface = Enum.SurfaceType.Smooth
cap1.BottomSurface = Enum.SurfaceType.Smooth
cap1.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
cap1.BrickColor = BrickColor.new("Pine Cone")
cap1.Friction = 0.30000001192093
cap1.Shape = Enum.PartType.Cylinder
cap1.Name = "Cap1"
cap1.Parent = bow
cap1.CanCollide = false

stringpart = Instance.new("Part")
stringpart.CFrame = CFrame.new(Vector3.new(-48.2000046, 5.29999113, -58.2000122)) * CFrame.Angles(1.5707963705063, 0, -0)
stringpart.TopSurface = Enum.SurfaceType.Smooth
stringpart.BottomSurface = Enum.SurfaceType.Smooth
stringpart.Size = Vector3.new(0.1, 0.1, 0.1)
stringpart.Transparency = 1
stringpart.BrickColor = BrickColor.new("Mid grey")
stringpart.Friction = 0.30000001192093
stringpart.Shape = Enum.PartType.Cylinder
stringpart.Name = "StringAttachment"
stringpart.Parent = bow
stringpart.CanCollide = false

arrow = Instance.new("Model")
arrow.Parent = game.Workspace
arrow.Name = "arrow"

feather1 = Instance.new("WedgePart")
feather1.CFrame = CFrame.new(Vector3.new(-48.3000031, 2.90000844, -56.1500168)) * CFrame.Angles(-0, 0, -0)
feather1.TopSurface = Enum.SurfaceType.Smooth
feather1.Size = Vector3.new(0.200000003, 0.200000003, 0.299999952)
feather1.BrickColor = BrickColor.new("Crimson")
feather1.Friction = 0.30000001192093
feather1.Name = "Feather"
feather1.Parent = arrow
feather1.CanCollide = false
feather1.Transparency = 1

feather2 = Instance.new("WedgePart")
feather2.CFrame = CFrame.new(Vector3.new(-48.3000031, 2.50003171, -56.1500168)) * CFrame.Angles(-0, 0, -3.1415927410126)
feather2.TopSurface = Enum.SurfaceType.Smooth
feather2.Size = Vector3.new(0.200000003, 0.200000003, 0.299999952)
feather2.BrickColor = BrickColor.new("Crimson")
feather2.Friction = 0.30000001192093
feather2.Name = "Feather"
feather2.Parent = arrow
feather2.CanCollide = false
feather2.Transparency = 1

arrowhead = Instance.new("WedgePart")
arrowhead.CFrame = CFrame.new(Vector3.new(-48.2999992, 2.80002427, -59.4500008)) * CFrame.Angles(-0, 0, -0)
arrowhead.TopSurface = Enum.SurfaceType.Smooth
arrowhead.Size = Vector3.new(0.200000003, 0.200000003, 0.299999952)
arrowhead.Friction = 0.30000001192093
arrowhead.Name = "Arrowhead"
arrowhead.Parent = arrow
arrowhead.CanCollide = false
arrowhead.Transparency = 1

arrowcap = Instance.new("Part")
arrowcap.CFrame = CFrame.new(Vector3.new(-48.2000046, 5.29999113, -58.2000122)) * CFrame.Angles(1.5707963705063, 0, -0)
arrowcap.TopSurface = Enum.SurfaceType.Smooth
arrowcap.BottomSurface = Enum.SurfaceType.Smooth
arrowcap.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
arrowcap.BrickColor = BrickColor.new("Dirt brown")
arrowcap.Friction = 0.30000001192093
arrowcap.Shape = Enum.PartType.Cylinder
arrowcap.Name = "ArrowCap"
arrowcap.Parent = arrow
arrowcap.CanCollide = false
arrowcap.Transparency = 1

arrowbody = Instance.new("Part")
arrowbody.CFrame = CFrame.new(Vector3.new(0, 3, 0)) * CFrame.Angles(-0, 0, -0)
arrowbody.Size = Vector3.new(0.200000003, 0.200000003, 3.60000014)
arrowbody.BrickColor = BrickColor.new("Dirt brown")
arrowbody.Friction = 0.30000001192093
arrowbody.Shape = Enum.PartType.Block
arrowbody.Name = "ArrowBody"
arrowbody.Parent = arrow
arrowbody.CanCollide = false
arrowbody.Transparency = 1

feather3 = Instance.new("WedgePart")
feather3.CFrame = CFrame.new(Vector3.new(-48.3000031, 2.50004983, -55.9500198)) * CFrame.Angles(-0, 0, -3.1415927410126)
feather3.TopSurface = Enum.SurfaceType.Smooth
feather3.Size = Vector3.new(0.200000003, 0.200000003, 0.299999952)
feather3.BrickColor = BrickColor.new("Crimson")
feather3.Friction = 0.30000001192093
feather3.Name = "Feather"
feather3.Parent = arrow
feather3.CanCollide = false
feather3.Transparency = 1

feather4 = Instance.new("WedgePart")
feather4.CFrame = CFrame.new(Vector3.new(-48.3000031, 2.90003037, -55.9500198)) * CFrame.Angles(-0, 0, -0)
feather4.TopSurface = Enum.SurfaceType.Smooth
feather4.Size = Vector3.new(0.200000003, 0.200000003, 0.299999952)
feather4.BrickColor = BrickColor.new("Crimson")
feather4.Friction = 0.30000001192093
feather4.Name = "Feather"
feather4.Parent = arrow
feather4.CanCollide = false
feather4.Transparency = 1

-- the welds

whandle = Instance.new("Weld", char["Left Arm"])
whandle.Part0 = char.Torso
whandle.Part1 = handle
whandle.C0 = CFrame.new(0, 0, 0.6) * CFrame.Angles(0, 0, math.rad(45))

wstringpart = Instance.new("Weld", handle)
wstringpart.Part0 = handle
wstringpart.Part1 = stringpart
wstringpart.C0 = CFrame.new(0, -0.3, -0.3) * CFrame.new(0, 0, 0)

wjoint1 = Instance.new("Weld", handle)
wjoint1.Part0 = handle
wjoint1.Part1 = joint1
wjoint1.C0 = CFrame.new(0, 0.6, 0) * CFrame.Angles(-0.1, 0, 0)

wjoint2 = Instance.new("Weld", handle)
wjoint2.Part0 = handle
wjoint2.Part1 = joint2
wjoint2.C0 = CFrame.new(0, -0.6, 0) * CFrame.Angles(0.1, 0, 0)

wleg1 = Instance.new("Weld", joint1)
wleg1.Part0 = joint1
wleg1.Part1 = leg1
wleg1.C0 = CFrame.new(0, 0.95, 0) * CFrame.Angles(0, 0, 0)

wleg2 = Instance.new("Weld", joint2)
wleg2.Part0 = joint2
wleg2.Part1 = leg2
wleg2.C0 = CFrame.new(0, -0.95, 0) * CFrame.Angles(0, 0, 0)

wcap1 = Instance.new("Weld", leg1)
wcap1.Part0 = leg1
wcap1.Part1 = cap1
wcap1.C0 = CFrame.new(0, 0.95, 0) * CFrame.Angles(0, 0, 0)

wcap2 = Instance.new("Weld", leg2)
wcap2.Part0 = leg2
wcap2.Part1 = cap2
wcap2.C0 = CFrame.new(0, -0.95, 0) * CFrame.Angles(0, 0, 0)

cap1att = Instance.new("Attachment", cap1)
cap1att.Position = Vector3.new(0, 0, -0.05)
cap2att = Instance.new("Attachment", cap2)
cap2att.Position = Vector3.new(0, 0, -0.05)
stringatt = Instance.new("Attachment", stringpart)
stringp1 = Instance.new("RodConstraint", stringpart)
stringp1.Color = BrickColor.new("Mid grey")
stringp1.Visible = true
stringp1.Attachment0 = stringatt
stringp1.Attachment1 = cap1att
stringp2 = Instance.new("RodConstraint", stringpart)
stringp2.Color = BrickColor.new("Mid grey")
stringp2.Visible = true
stringp2.Attachment0 = stringatt
stringp2.Attachment1 = cap2att

warrowhead1 = Instance.new("Weld", arrowbody)
warrowhead1.Part0 = arrowbody
warrowhead1.Part1 = arrowhead
warrowhead1.C0 = CFrame.new(0, 0, -1.95)

wfeather1 = Instance.new("Weld", arrowbody)
wfeather1.Part0 = arrowbody
wfeather1.Part1 = feather1
wfeather1.C0 = CFrame.new(0, 0.2, 1.45)

wfeather2 = Instance.new("Weld", arrowbody)
wfeather2.Part0 = arrowbody
wfeather2.Part1 = feather2
wfeather2.C0 = CFrame.new(0, 0.2, 1.4)

wfeather3 = Instance.new("Weld", arrowbody)
wfeather3.Part0 = arrowbody
wfeather3.Part1 = feather3
wfeather3.C0 = CFrame.new(0, -0.2, 1.45) * CFrame.Angles(0, 0, 3.15)

wfeather4 = Instance.new("Weld", arrowbody)
wfeather4.Part0 = arrowbody
wfeather4.Part1 = feather4
wfeather4.C0 = CFrame.new(0, -0.2, 1.4) * CFrame.Angles(0, 0, 3.15)

warrow = Instance.new("Weld", char.Torso)
warrow.Part0 = char.Torso
warrow.Part1 = arrowbody
warrow.C0 = CFrame.new(0, 0, 0.5) * CFrame.Angles(-1.575, 0, 1.575)

warrowcap = Instance.new("Weld", arrowbody)
warrowcap.Part0 = arrowbody
warrowcap.Part1 = arrowcap
warrowcap.C0 = CFrame.new(0, 0, 1.8)

-- sounds

pullbacksound = Instance.new("Sound", handle)
pullbacksound.SoundId = "rbxassetid://609348868"

firesound = Instance.new("Sound", handle)
firesound.SoundId = "rbxassetid://609348009"
firesound.PlaybackSpeed = 1.05

function velocity(v)
	print("killvel")
	vel = coroutine.wrap(function()
		wait(0.05)
		v:Remove()
	end)
	vel()
end

function killz(playa,hitz,kneef)
	local heyy = hitz
	if hitz == "Right Arm" then
	local Limb = playa:FindFirstChild("Right Arm")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Right Shoulder') then ters["Right Shoulder"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Glue') then
					v:Destroy()
				end
			end
			Limb.CFrame = ters.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightShoulder"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = ters

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
				local dos = Instance.new('Part',workspace)
				uno.CFrame = playa:FindFirstChild(hitz).CFrame
				dos.CFrame = kneef.CFrame
				local weld = Instance.new('Weld',kneef)
				weld.Part0 = playa:FindFirstChild(hitz)
				weld.Part1 = kneef
				weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
				uno:Destroy()
				dos:Destroy()
			end)
			coru()
		end	
	elseif hitz == "Left Arm" then
		local Limb = playa:FindFirstChild("Left Arm")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Left Shoulder') then ters["Left Shoulder"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Glue') then
					v:Destroy()
				end
			end
			Limb.CFrame = ters.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = ters

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = ters
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
				local dos = Instance.new('Part',workspace)
				uno.CFrame = playa:FindFirstChild(hitz).CFrame
				dos.CFrame = kneef.CFrame
				local weld = Instance.new('Weld',kneef)
				weld.Part0 = playa:FindFirstChild(hitz)
				weld.Part1 = kneef
				weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
				uno:Destroy()
				dos:Destroy()
			end)
			coru()
		end
	elseif hitz == "Right Leg" then
		local Limb = playa:FindFirstChild("Right Leg")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Right Hip') then ters["Right Hip"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Glue') then
					v:Destroy()
				end
			end
		Limb.CFrame = ters.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "Right Hip"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = ters
			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
				local dos = Instance.new('Part',workspace)
				uno.CFrame = playa:FindFirstChild(hitz).CFrame
				dos.CFrame = kneef.CFrame
				local weld = Instance.new('Weld',kneef)
				weld.Part0 = playa:FindFirstChild(hitz)
				weld.Part1 = kneef
				weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
				uno:Destroy()
				dos:Destroy()
				if playa:FindFirstChild('HumanoidRootPart') then
			if playa.HumanoidRootPart:FindFirstChild('RootJoint') then
					playa.HumanoidRootPart:FindFirstChild('RootJoint'):Destroy()
					wait()
			end
			while playa.HumanoidRootPart:FindFirstChild('RootJoint') do 
						wait()
					end
			playa:FindFirstChild('HumanoidRootPart'):Destroy()
			end
			end)
			coru()
		end
	elseif hitz == "Left Leg" then
		local Limb = playa:FindFirstChild("Left Leg")
	local ters = playa:FindFirstChild('Torso')
		if Limb and ters then
			if ters:FindFirstChild('Left Hip') then ters["Left Hip"]:Destroy() end
			for i,v in pairs(Limb:GetChildren()) do
				if v:IsA('Weld') or v:IsA('Motor6D') or v:IsA('Glue') then
					v:Destroy()
				end
			end
		Limb.CFrame = ters.CFrame * CFrame.new(0.5, -2, 0)
			Limb.CFrame = ters.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftHip"
			Joint.Part0 = ters
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = ters

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
			Limb.CanCollide = false
			local coru = coroutine.wrap(function()
				local uno = Instance.new('Part',workspace)
				local dos = Instance.new('Part',workspace)
				uno.CFrame = playa:FindFirstChild(hitz).CFrame
				dos.CFrame = kneef.CFrame
				local weld = Instance.new('Weld',kneef)
				weld.Part0 = playa:FindFirstChild(hitz)
				weld.Part1 = kneef
				weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
				uno:Destroy()
				dos:Destroy()
				if playa:FindFirstChild('HumanoidRootPart') then
			if playa.HumanoidRootPart:FindFirstChild('RootJoint') then
				playa.HumanoidRootPart:FindFirstChild('RootJoint'):Destroy()
			end
			while playa.HumanoidRootPart:FindFirstChild('RootJoint') do 
						wait()
					end
			playa:FindFirstChild('HumanoidRootPart'):Destroy()
			end
			end)
			coru()
		end
	else
		local playa2 = playa
		playa.Archivable = true
		local playa = playa:Clone()
		playa.Archivable = false
		playa2:Destroy()
		playa.Parent = workspace
		local Gibs = game.Workspace
		local Torso = playa.Torso
		local Head = playa:FindFirstChild("Head")
		local function Scan(ch)
		local e
		for e = 1,#ch do
			Scan(ch[e]:GetChildren())
			if (ch[e].ClassName == "Weld" and ch[e].Part1.Name ~= 'Projectile') or ch[e].ClassName == "Motor6D" then
				ch[e]:remove()
			end
		end
	end
	Scan(playa:GetChildren())
		if playa:FindFirstChild('HumanoidRootPart') then
			playa:FindFirstChild('HumanoidRootPart'):Destroy()
		end
		local hum2 = playa:FindFirstChildOfClass("Humanoid")


	if hum2 ~= nil then
		hum2.Name = "Humanoid2"
		hum2.PlatformStand = true
		hum2.Health = 0
	end
	local ch = playa:GetChildren()
	local i
	for i = 1,#ch do
		if ch[i].Name == "THandle1" or ch[i].Name == "THandle2" then
			ch[i]:remove()
		end
	end

		if Head then
			local Neck = Instance.new("Weld")
			Neck.Name = "Neck"
			Neck.Part0 = Torso
			Neck.Part1 = Head
			Neck.C0 = CFrame.new(0, 1.5, 0)
			Neck.C1 = CFrame.new()
			Neck.Parent = Torso
		end
		local Limb = playa:FindFirstChild("Right Arm")
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
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Left Arm")
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
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Right Leg")
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
			B.Parent = playa
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb
		end
		local Limb = playa:FindFirstChild("Left Leg")
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
			B.Parent = playa
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
		Bar.Parent = playa
		local Weld = Instance.new("Weld")
		Weld.Part0 = Torso
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = Torso
		--]]
		playa.Parent = Gibs
		local coru = coroutine.wrap(function()
			print(hitz.Name)
				local uno = Instance.new('Part',workspace)
				local dos = Instance.new('Part',workspace)
				uno.CFrame = playa:FindFirstChild(heyy).CFrame
				dos.CFrame = kneef.CFrame
				local weld = Instance.new('Weld',kneef)
				weld.Part0 = playa:FindFirstChild(heyy)
				weld.Part1 = kneef
				weld.C0 = uno.CFrame:toObjectSpace(dos.CFrame)
				uno:Destroy()
				dos:Destroy()
			end)
			coru()
	game.Debris:AddItem(playa, 15)
	end	
end

function checkarms()
	check = coroutine.wrap(function()
		rshould = char.Torso:FindFirstChild("Right Shoulder")
		lshould = char.Torso:FindFirstChild("Left Shoulder")
		
		if rshould == nil then
			rightshoulder:Clone().Parent = char.Torso
		end
		if lshould == nil then
			rightshoulder:Clone().Parent = char.Torso
		end
	end)
	check()
end

mouse.KeyDown:connect(function(k)
	key = k:lower()
	
	if key == "e" and enabled == true and equipped == true then
		if armed == false then
			crarm = Instance.new("Weld", char.Torso)
			crarm.Part0 = char.Torso
			crarm.Part1 = char["Right Arm"]
			crarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(1.5, 0, 0)
		
			clarm = Instance.new("Weld", char.Torso)
			clarm.Part0 = char.Torso
			clarm.Part1 = char["Left Arm"]
			clarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-1.5, 0, 0)
		
			enabled = false
			for i = 0, 1, 0.1 do
				crarm.C0 = crarm.C0:lerp(CFrame.new(1.5, 1.5, 0) * CFrame.Angles(3.14, 0, 0), i)
				wait()
			end
			for i, v in pairs(arrow:GetChildren()) do
				v.Transparency = 0
			end
			feather1.Transparency = 0.25
			feather2.Transparency = 0.25
			feather3.Transparency = 0.25
			feather4.Transparency = 0.25
			
			warrow.Part0 = char["Right Arm"]
			warrow.C0 = CFrame.new(-0.5, -2.7, -0.2) * CFrame.Angles(-1.575, 0.075, -0.5)
			
				for i = 0, 1, 0.05 do
				tors.C0 = tors.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0, -1.5, 0), i)
				whandle.C0 = whandle.C0:lerp(CFrame.new(0.4, -1, 0) * CFrame.Angles(1.575, -0.05, 0), i)
				clarm.C0 = clarm.C0:lerp(CFrame.new(-1.6, 0.45, -0.10) * CFrame.Angles(1.2, 0, -1.575), i)
				crarm.C0 = crarm.C0:lerp(CFrame.new(-1.35, 0.6, -1) * CFrame.Angles(1.575, 0, -1.575), i)
				wjoint1.C0 = wjoint1.C0:lerp(CFrame.new(0, 0.6, 0) * CFrame.Angles(-0.1, 0, 0), i)
				wjoint2.C0 = wjoint2.C0:lerp(CFrame.new(0, -0.6, 0) * CFrame.Angles(0.1, 0, 0), i)
				wstringpart.C0 = wstringpart.C0:lerp(CFrame.new(0, -0.5, -0.3) * CFrame.new(0, 0, 0), i)
				hed.C0 = hed.C0:lerp(CFrame.new(0, 1.55, 0) * CFrame.Angles(0, 1.5, 0), i)
				wait()
			end
			pullbacksound:Play()
			warrow.Part0 = stringpart
			warrow.C0 = CFrame.new(-0.1, 0, 1.9) * CFrame.Angles(3.15, 0.04, 0)
			for i = 0, 1, 0.025 do
				tors.C0 = tors.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0, -1.5, 0), i)
				whandle.C0 = whandle.C0:lerp(CFrame.new(0.4, -1, 0) * CFrame.Angles(1.575, -0.05, 0), i)
				clarm.C0 = clarm.C0:lerp(CFrame.new(-1.95, 0.45, -0.10) * CFrame.Angles(1.2, 0, -1.575), i)
				crarm.C0 = crarm.C0:lerp(CFrame.new(1, 0.6, -1) * CFrame.Angles(1.575, 0, -1.575), i)
				wjoint1.C0 = wjoint1.C0:lerp(CFrame.new(0, 0.6, 0) * CFrame.Angles(-0.4, 0, 0), i)
				wjoint2.C0 = wjoint2.C0:lerp(CFrame.new(0, -0.6, 0) * CFrame.Angles(0.4, 0, 0), i)
				wstringpart.C0 = wstringpart.C0:lerp(CFrame.new(0, -0.5, -3) * CFrame.new(0, 0, 0), i)
				hed.C0 = hed.C0:lerp(CFrame.new(0, 1.55, -0.1) * CFrame.Angles(0, 1.5, -0.25), i)
				wait()
			end
			armed = true
			enabled = true
		elseif armed == true and equipped == true then
			enabled = false
			for i = 0,1,0.05 do
				clarm.C0 = clarm.C0:lerp(CFrame.new(-1.6, 0.45, -0.10) * CFrame.Angles(1.2, 0, -1.575), i)
				crarm.C0 = crarm.C0:lerp(CFrame.new(-1.3, 0.4, -1) * CFrame.Angles(1.575, 0.1, -1.575), i)
				wjoint1.C0 = wjoint1.C0:lerp(CFrame.new(0, 0.6, 0) * CFrame.Angles(-0.1, 0, 0), i)
				wjoint2.C0 = wjoint2.C0:lerp(CFrame.new(0, -0.6, 0) * CFrame.Angles(0.1, 0, 0), i)
				wstringpart.C0 = wstringpart.C0:lerp(CFrame.new(0, -0.5, -0.3) * CFrame.new(0, 0, 0), i)
				wait()
			end
			warrow.Part0 = char["Right Arm"]
			warrow.C0 = CFrame.new(-0.5, -2.65, -0.2) * CFrame.Angles(-1.575, 0.075, -0.4)
			for i = 0,1,0.05 do
				crarm.C0 = crarm.C0:lerp(CFrame.new(1.5, 1.5, 0) * CFrame.Angles(3.14, 0, 0), i)
				tors.C0 = tors.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), i)
				whandle.C0 = whandle.C0:lerp(CFrame.new(0.4, -1, 0) * CFrame.Angles(1.575, 0, 0), i)
				clarm.C0 = clarm.C0:lerp(CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0), i)
				crarm.C0 = crarm.C0:lerp(CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0), i)
				hed.C0 = hed.C0:lerp(CFrame.new(0, 1.55, 0) * CFrame.Angles(0, 0, 0), i)
				wait()
			end
			
			for i, v in pairs(arrow:GetChildren()) do
				v.Transparency = 1
			end
			warrow.Part0 = char.Torso
			warrow.C0 = CFrame.new(0, 0, 0.5) * CFrame.Angles(-1.575, 0, 1.575)
			
			for i = 0, 1, 0.1 do
				crarm.C0 = crarm.C0:lerp(CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0), i)
				wait()
			end
			armed = false
			enabled = true
			clarm:Remove()
			crarm:Remove()
			rightshoulder:Clone().Parent = char.Torso
			leftshoulder:Clone().Parent = char.Torso
			checkarms()
		end
	elseif key == "z" then
		if armed == true or enabled == false then return end
		clarm = Instance.new("Weld", char.Torso)
		clarm.Part0 = char.Torso
		clarm.Part1 = char["Left Arm"]
		clarm.C0 = CFrame.Angles(0, 0, 0) * CFrame.new(-1.5, 0, 0)
		if equipped == false then
			enabled = false
			for i = 0, 1, 0.05 do
				clarm.C0 = clarm.C0:lerp(CFrame.new(-0.5, 0, 0.25) * CFrame.Angles(math.rad(-90), 0, math.rad(75)), i)
				wait()
			end
			whandle.C0 = CFrame.new(0.4, -1, 0) * CFrame.Angles(1.575, 0, 0)
			whandle.Part0 = char["Left Arm"]
			for i = 0, 1, 0.05 do
				clarm.C0 = clarm.C0:lerp(CFrame.new(-2, 0.6, 0) * CFrame.Angles(0, 0, math.rad(-90)), i)
				wait()
			end
			for i = 0, 1, 0.05 do
				clarm.C0 = clarm.C0:lerp(CFrame.Angles(0, 0, 0) * CFrame.new(-1.5, 0, 0), i)
				wait()
			end
			enabled = true
			equipped = true
		elseif equipped == true then
			if armed == true or enabled == false then return end
			enabled = false
			for i = 0, 1, 0.05 do
				clarm.C0 = clarm.C0:lerp(CFrame.new(-2, 0.6, 0) * CFrame.Angles(0, 0, math.rad(-90)), i)
				wait()
			end
			for i = 0, 1, 0.05 do
				clarm.C0 = clarm.C0:lerp(CFrame.new(-0.5, 0, 0.25) * CFrame.Angles(math.rad(-90), 0, math.rad(75)), i)
				whandle.C0 = whandle.C0:lerp(CFrame.new(0.4, -1, 0) * CFrame.Angles(1.575, 0, 0), i)
				wait()
			end
			whandle.C0 = CFrame.new(0, 0, 0.6) * CFrame.Angles(0, 0, math.rad(45))
			whandle.Part0 = char.Torso
			for i = 0, 1, 0.05 do
				clarm.C0 = clarm.C0:lerp(CFrame.Angles(0, 0, 0) * CFrame.new(-1.5, 0, 0), i)
				wait()
			end
			equipped = false
			enabled = true
		end
		clarm:Remove()
		leftshoulder:Clone().Parent = char.Torso
	end
end)

mouse.Button1Down:connect(function()
	if armed == false or enabled == false or equipped == false then return end
	firesound:Play()
	enabled = false
	armed = false
	wjoint1.C0 = CFrame.new(0, 0.6, 0) * CFrame.Angles(-0.1, 0, 0)
	wjoint2.C0 = CFrame.new(0, -0.6, 0) * CFrame.Angles(0.1, 0, 0)
	wstringpart.C0 = CFrame.new(0, -0.5, -0.3) * CFrame.new(0, 0, 0)
	crarm.C0 = CFrame.new(1.2, 0.6, -1) * CFrame.Angles(1.575, 0, -1.575)
	newarrow = arrow:Clone()
	newarrow.Parent = game.Workspace
	newarrow.Name = "flyingarrow"
	newarrow.ArrowBody.CFrame = CFrame.new(newarrow.ArrowBody.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,0,math.pi/1.15)
	char.HumanoidRootPart.CFrame = CFrame.new(char.HumanoidRootPart.CFrame.p, mouse.Hit.p)*CFrame.Angles(0,math.pi/100,0)
	char.Humanoid.JumpPower = 1
	char.Humanoid.Jump = true
	local fly = Instance.new('BodyVelocity',newarrow.ArrowBody)
	fly.Velocity = (newarrow.ArrowBody.CFrame*CFrame.Angles(0,0,math.pi/2)).lookVector*200
	newarrow.Arrowhead.Touched:connect(function(hit)
		if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Transparency < 1 and newarrow.Arrowhead.CanCollide == false and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char then
			velocity(fly)
			newarrow.Arrowhead.CanCollide = true
			game:GetService('Debris'):AddItem(newarrow.Arrowhead,15)
			tone = math.random(1, 3)
			local sound = Instance.new('Sound',newarrow.Arrowhead)
			if tone == 1 then sound.SoundId = "rbxassetid://220833967" end
			if tone == 2 then sound.SoundId = "rbxassetid://220833976" end
			if tone == 3 then sound.SoundId = "rbxassetid://220834000" end
			sound.PlaybackSpeed = 1
			sound:Play()
			newarrow.Arrowhead.Anchored = true
			hit.Anchored = true
			if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Name == "Torso" or hit.Name == "Head" then
				hit.Parent:FindFirstChildOfClass('Humanoid').Health = 0
			end
			wait()
			hit.Anchored = false
			newarrow.Arrowhead.Anchored = false
			killz(hit.Parent,hit.Name,newarrow.Arrowhead)
		elseif hit.Parent and hit.Parent.Parent:FindFirstChildOfClass('Humanoid') and hit.Transparency < 1 and newarrow.Arrowhead.CanCollide == false and hit.Parent.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent.Parent ~= char and hit.Parent.Parent:FindFirstChild('Head') then
			velocity(fly)
			game:GetService('Debris'):AddItem(newarrow.Arrowhead,15)
			newarrow.Arrowhead.CanCollide = true
			tone = math.random(1, 3)
			local sound = Instance.new('Sound',newarrow.Arrowhead)
			if tone == 1 then sound.SoundId = "rbxassetid://220833967" end
			if tone == 2 then sound.SoundId = "rbxassetid://220833976" end
			if tone == 3 then sound.SoundId = "rbxassetid://220834000" end
			sound.PlaybackSpeed = 1
			sound:Play()
			newarrow.Arrowhead.Anchored = true
			hit.Anchored = true
			if hit.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				hit.Parent.Parent:FindFirstChildOfClass('Humanoid').Health = 0
			end
			wait()
			newarrow.Arrowhead.Anchored = false
			hit.Anchored = false
			killz(hit.Parent.Parent,hit.Name,newarrow.Arrowhead)
		elseif hit.Parent and hit.Parent ~= char and hit.Parent.Parent ~= char and hit.Transparency < 1 and newarrow.Arrowhead.CanCollide == false then
			velocity(fly)
			game:GetService('Debris'):AddItem(newarrow.Arrowhead,15)
			newarrow.Arrowhead.CanCollide = true
			local sound = Instance.new('Sound',newarrow.Arrowhead)
			sound.SoundId = 'rbxassetid://267585646'
			sound:Play()
		end
	end)
	
	for i, v in pairs(arrow:GetChildren()) do
		v.Transparency = 1
	end
	warrow.Part0 = char.Torso
	warrow.C0 = CFrame.new(0, 0, 0.5) * CFrame.Angles(-1.575, 0, 1.575)
	wait(0.5)
	for i = 0, 1, 0.05 do
		tors.C0 = tors.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), i)
		whandle.C0 = whandle.C0:lerp(CFrame.new(0.4, -1, 0) * CFrame.Angles(1.575, 0, 0), i)
		clarm.C0 = clarm.C0:lerp(CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0), i)
		crarm.C0 = crarm.C0:lerp(CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0), i)
		hed.C0 = hed.C0:lerp(CFrame.new(0, 1.55, 0) * CFrame.Angles(0, 0, 0), i)
		wait()
	end
	clarm:Remove()
	crarm:Remove()
	rightshoulder:Clone().Parent = char.Torso
	leftshoulder:Clone().Parent = char.Torso
	checkarms()
	char.Humanoid.JumpPower = 50
	enabled = true
end)
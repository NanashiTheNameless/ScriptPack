local player = game:GetService("Players").LocalPlayer
local char = player.Character

local rsh = char.Torso["Right Shoulder"]
local lsh = char.Torso["Left Shoulder"]

local bin = Instance.new("HopperBin")
bin.Name = "buk"

local pagenum = 0

local lefty = false
local numofpages = 20
local pagewidth = 0.01
local coverwidth = 0.05
local size = 1
local pagejoints = {}

local mo = Instance.new("Model", char)

local spine = Instance.new("Part", mo)
spine.Anchored = false
spine.CanCollide = false
spine.TopSurface = "Smooth"
spine.BottomSurface = "Smooth"
spine.FormFactor = "Custom"
spine.BrickColor = BrickColor.new("Brown")
spine.Size = Vector3.new(0.2, 0.5, 1.3)

local spmesh = Instance.new("BlockMesh", spine)
spmesh.Scale = Vector3.new(5*coverwidth, (2*pagewidth*numofpages)+coverwidth, size)

local frontcover = Instance.new("Part", mo)
frontcover.Anchored = false
frontcover.CanCollide = false
frontcover.TopSurface = "Smooth"
frontcover.BottomSurface = "Smooth"
frontcover.FormFactor = "Custom"
frontcover.BrickColor = BrickColor.new("Brown")
frontcover.Size = Vector3.new(1, 0.2, 1.3)

local fcmesh = Instance.new("BlockMesh", frontcover)
fcmesh.Scale = Vector3.new(size, 5*coverwidth, size)

local fcjoint = Instance.new("Motor6D", mo)
fcjoint.Part0 = spine
fcjoint.Part1 = frontcover
fcjoint.C0 = CFrame.new(0, 0.5*spine.Size.y*spmesh.Scale.y, 0)
fcjoint.C1 = CFrame.new(-0.5*frontcover.Size.x*fcmesh.Scale.x, 0, 0)
fcjoint.MaxVelocity = 0.2

local backcover = Instance.new("Part", mo)
backcover.Anchored = false
backcover.CanCollide = false
backcover.TopSurface = "Smooth"
backcover.BottomSurface = "Smooth"
backcover.FormFactor = "Custom"
backcover.BrickColor = BrickColor.new("Brown")
backcover.Size = Vector3.new(1, 0.2, 1.3)

local bcmesh = Instance.new("BlockMesh", backcover)
bcmesh.Scale = Vector3.new(size, 5*coverwidth, size)

local bcjoint = Instance.new("Motor6D", mo)
bcjoint.Part0 = spine
bcjoint.Part1 = backcover
bcjoint.C0 = CFrame.new(0, -0.5*spine.Size.y*spmesh.Scale.y, 0)
bcjoint.C1 = CFrame.new(-0.5*backcover.Size.x*bcmesh.Scale.x, 0, 0)
bcjoint.MaxVelocity = 0.2


local weld = Instance.new("Weld", mo)
weld.Part0 = nil
weld.Part1 = spine
weld.C0 = CFrame.new(0, 1, 0)
weld.C1 = CFrame.Angles(0, 0, math.rad(90))

if lefty then
	weld.Part0 = char["Right Leg"]
	weld.C0 = CFrame.new(0.5+(0.5*spine.Size.y*spmesh.Scale.y), 1, 0)
else
	weld.Part0 = char["Left Leg"]
	weld.C0 = CFrame.new(-0.5-(0.5*spine.Size.y*spmesh.Scale.y), 1, 0)
end

local grip = Instance.new("Weld", mo)
grip.Part0 = nil
grip.Part1 = nil
grip.C0 = CFrame.new(0, -1, -0.1)
grip.C1 = CFrame.new(0, 0, 0.9) * CFrame.Angles(0, -math.rad(50), -math.rad(120))

if lefty then
	grip.Part0 = char["Right Arm"]
else
	grip.Part0 = char["Left Arm"]
	grip.C1 = CFrame.new(0, 0, 0.9) * CFrame.Angles(0, -math.rad(50), -math.rad(60))
end

local nsh = Instance.new("Weld", mo)
nsh.Part0 = char.Torso
nsh.Part1 = nil
nsh.C0 = CFrame.new(-1, 0.5, 0)
nsh.C1 = CFrame.new(0.5, 0.5, 0)

if lefty then
	nsh.C0 = CFrame.new(1, 0.5, 0)
	nsh.C1 = CFrame.new(-0.5, 0.5, 0)
end

local gripu = Instance.new("Weld", mo)
gripu.Part0 = nil
gripu.Part1 = nil
gripu.C0 = CFrame.new(0, -1, 0)

local nshu = Instance.new("Weld", mo)
nshu.Part0 = char.Torso
nshu.Part1 = nil
nshu.C0 = CFrame.new(1, 0.5, 0)
nshu.C1 = CFrame.new(-0.5, 0.5, 0)

if lefty then
	nsh.C0 = CFrame.new(-1, 0.5, 0)
	nsh.C1 = CFrame.new(0.5, 0.5, 0)
end


for i = 1, numofpages do
	local page = Instance.new("Part", mo)
	page.Anchored = false
	page.CanCollide = false
	page.TopSurface = "Smooth"
	page.BottomSurface = "Smooth"
	page.FormFactor = "Custom"
	page.BrickColor = BrickColor.new("Brick yellow")
	page.Size = Vector3.new(0.9, 0.2, 1.2)
	
	local bmesh = Instance.new("BlockMesh", page)
	bmesh.Scale = Vector3.new(size, 5*pagewidth, size)
	
	local pagejoint = Instance.new("Motor6D", mo)
	pagejoint.Part0 = spine
	pagejoint.Part1 = page
	pagejoint.C0 = CFrame.new(coverwidth*0.5, -((i/(numofpages+1))*pagewidth*numofpages)+(0.5*pagewidth*numofpages), 0)
	pagejoint.C1 = CFrame.Angles(0, math.rad(180), 0) * CFrame.new(-0.5*page.Size.x*bmesh.Scale.x, 0, 0)
	pagejoint.MaxVelocity = 0.2
	
	local frpic = Instance.new("Decal", page)
	frpic.Face = "Top"
	frpic.Texture = "http://www.roblox.com/asset/?id=11565733"
	
	local bkpic = Instance.new("Decal", page)
	bkpic.Face = "Bottom"
	bkpic.Texture = "http://www.roblox.com/asset/?id=16646570"
	
	pagejoints[i] = pagejoint
	
	wait(0.0001)
end

local pageturn = Instance.new("Sound", spine)
pageturn.SoundId = "rbxassetid://16720281"
pageturn.Pitch = 2
pageturn.Volume = 1

bin.Parent = player.Backpack

function Tween(weld, c0, c1, dur)
	local c0sp = weld.C0.p
	local c0sa = Vector3.new(weld.C0:toEulerAnglesXYZ())
	local c1sp = weld.C1.p
	local c1sa = Vector3.new(weld.C1:toEulerAnglesXYZ())
	
	local c0p = c0.p - c0sp
	local c0a = Vector3.new(c0:toEulerAnglesXYZ()) - c0sa
	local c1p = c1.p - c1sp
	local c1a = Vector3.new(c1:toEulerAnglesXYZ()) - c1sa
	
	local step = math.rad(5.4/dur)
	
	for i = -math.rad(90), math.rad(90), step do
		local ni = (math.sin(i)/2)+0.5
		weld.C0 = CFrame.new(c0sp.x + (c0p.x*ni), c0sp.y + (c0p.y*ni), c0sp.z + (c0p.z*ni)) * CFrame.Angles(c0sa.x + (c0a.x*ni), c0sa.y + (c0a.y*ni), c0sa.z + (c0a.z*ni))
		weld.C1 = CFrame.new(c1sp.x + (c1p.x*ni), c1sp.y + (c1p.y*ni), c1sp.z + (c1p.z*ni)) * CFrame.Angles(c1sa.x + (c1a.x*ni), c1sa.y + (c1a.y*ni), c1sa.z + (c1a.z*ni))
		wait()
	end
	
	weld.C0 = c0
	weld.C1 = c1
end

function ChargeMagic()
	if lefty then
		
	else
		
	end
end

bin.Selected:connect(function(mouse)
	if lefty then
		nsh.Part1 = char["Right Arm"]
		rsh.Part1 = nil
	else
		nsh.Part1 = char["Left Arm"]
		lsh.Part1 = nil
	end
	
	if lefty then
		nsh.C0 = rsh.C0
		nsh.C1 = rsh.C1 * CFrame.Angles(0, 0, -rsh.CurrentAngle)
		Tween(nsh, CFrame.new(1, 0.5, 0), CFrame.new(-0.5, 0.5, 0), 0.3)
		rsh.CurrentAngle = 0
		weld.Part1 = nil
		grip.Part1 = spine
		grip.C0 = CFrame.new(0.5*spine.Size.y*spmesh.Scale.y-0.5, -1, 0)
		grip.C1 = CFrame.Angles(0, 0, math.rad(90))
		coroutine.resume(coroutine.create(Tween), grip, CFrame.new(0, -1, -0.1), CFrame.new(0, 0, 0.2 + spine.Size.z*0.5*size) * CFrame.Angles(0, -math.rad(50), -math.rad(120)), 0.5)
		nsh.C0 = CFrame.new(1, 0.5, 0)
		nsh.C1 = CFrame.new(-0.5, 0.5, 0)
		Tween(nsh, nsh.C0, CFrame.new(-0.3, 0.5, 0) * CFrame.Angles(-math.rad(70), -math.rad(30), 0), 0.5)
	else
		nsh.C0 = lsh.C0
		nsh.C1 = lsh.C1 * CFrame.Angles(0, 0, -lsh.CurrentAngle)
		Tween(nsh, CFrame.new(-1, 0.5, 0), CFrame.new(0.5, 0.5, 0), 0.3)
		lsh.CurrentAngle = 0
		weld.Part1 = nil
		grip.Part1 = spine
		grip.C0 = CFrame.new(0.5-0.5*spine.Size.y*spmesh.Scale.y, -1, 0)
		grip.C1 = CFrame.Angles(0, 0, math.rad(90))
		coroutine.resume(coroutine.create(Tween), grip, CFrame.new(0, -1, -0.1), CFrame.new(0, 0, 0.2 + spine.Size.z*0.5*size) * CFrame.Angles(0, -math.rad(50), -math.rad(60)), 0.5)
		nsh.C0 = CFrame.new(-1, 0.5, 0)
		nsh.C1 = CFrame.new(0.5, 0.5, 0)
		Tween(nsh, nsh.C0, CFrame.new(0.3, 0.5, 0) * CFrame.Angles(-math.rad(70), math.rad(30), 0), 0.5)
	end
	
	mouse.KeyDown:connect(function(key)
		if key == "q" and pagenum > 0 then
			if pagenum > 1 then
				pagejoints[pagenum].DesiredAngle = -math.rad(70)
				pagenum = pagenum-1
				
				pageturn:Play()
			else
				for _,v in pairs(pagejoints) do
					v.DesiredAngle = 0
				end
				fcjoint.DesiredAngle = 0
				bcjoint.DesiredAngle = 0
				pagenum = pagenum-1
			end
		elseif key == "e" and pagenum < numofpages-1 then
			if pagenum > 0 then
				pagejoints[pagenum+1].DesiredAngle = math.rad(70)
				pagenum = pagenum+1
				
				pageturn:Play()
			elseif pagenum < numofpages-2 then
				for _,v in pairs(pagejoints) do
					v.DesiredAngle = -math.rad(70)
				end
				fcjoint.DesiredAngle = math.rad(70)
				bcjoint.DesiredAngle = -math.rad(70)
				pagejoints[pagenum+1].DesiredAngle = math.rad(70)
				pagenum = pagenum+1
			elseif pagenum == numofpages-2 then
				if player.Name == "rigletto" then
					for _,v in pairs(pagejoints) do
						v.DesiredAngle = -math.rad(70)
					end
					fcjoint.DesiredAngle = math.rad(70)
					bcjoint.DesiredAngle = -math.rad(70)
					pagejoints[pagenum+1].DesiredAngle = math.rad(70)
					pagenum = pagenum+1
				else
					for _,v in pairs(pagejoints) do
						v.DesiredAngle = 0
					end
					fcjoint.DesiredAngle = 0
					bcjoint.DesiredAngle = 0
					pagenum = 0
				end
			end
		end
	end)
end)

bin.Deselected:connect(function()
	for _,v in pairs(pagejoints) do
		v.DesiredAngle = 0
	end
	fcjoint.DesiredAngle = 0
	bcjoint.DesiredAngle = 0
	pagenum = 0
	
	repeat wait() until fcjoint.CurrentAngle == 0
	
	if lefty then
		coroutine.resume(coroutine.create(Tween), grip, CFrame.new(0.5*spine.Size.y*spmesh.Scale.y-0.5, -1, 0), CFrame.Angles(0, 0, math.rad(90)), 0.5)
		Tween(nsh, nsh.C0, CFrame.new(-0.5, 0.5, 0), 0.5)
	else
		coroutine.resume(coroutine.create(Tween), grip, CFrame.new(0.5-0.5*spine.Size.y*spmesh.Scale.y, -1, 0), CFrame.Angles(0, 0, math.rad(90)), 0.5)
		Tween(nsh, nsh.C0, CFrame.new(0.5, 0.5, 0), 0.5)
	end
	
	weld.Part1 = spine
	grip.Part1 = nil
	nsh.Part1 = nil
	if lefty then
		rsh.Part1 = char["Right Arm"]
	else
		lsh.Part1 = char["Left Arm"]
	end
end)

--mediafire gtfo password
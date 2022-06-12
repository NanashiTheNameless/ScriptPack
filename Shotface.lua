local pjts = {}

function FireProjectile(origin, velocity, raycallback, ignore, draw)
    table.insert(pjts,{origin, origin, velocity, raycallback, ignore, draw})
end

local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()
local selected = false
local reloading = false
local swagbullets = 0
local neck = player.Character.Torso.Neck
local neckc0 = neck.C0

local bin = Instance.new("HopperBin", player.Backpack)
bin.Name = "Shotface"

local bang = Instance.new("Sound", player.Character.Head)
bang.SoundId = "http://roblox.com/asset/?id=10209842"

local reload = Instance.new("Sound", player.Character.Head)
reload.SoundId = "http://roblox.com/asset/?id=10209845"

local clicking = Instance.new("Sound", player.Character.Head)
clicking.SoundId = "http://roblox.com/asset/?id=10209834"

local face = nil

if player.Character.Head:FindFirstChild("face") then
	face = player.Character.Head.face:clone()
end

function gethums(part)
	local hums = {}
	local function scanparent(asd)
		local humscan = {}
		for _,v in pairs(asd.Parent:GetChildren()) do
			if v:IsA("Humanoid") then
				table.insert(humscan,v)
			end
		end
		return asd.Parent, humscan
	end
	local currentasd = part
	while true do
		if currentasd.Parent ~= workspace then
			local parent, humscan = scanparent(currentasd)
			hums = {unpack(hums),unpack(humscan)}
			currentasd = parent
		else
			break
		end
	end
	return hums
end

local controlpart = Instance.new("Part", player.Character)
controlpart.Anchored = false
controlpart.CanCollide = false
controlpart.TopSurface = 0
controlpart.BottomSurface = 0
controlpart.FormFactor = "Custom"
controlpart.Size = Vector3.new(0,0,0)
controlpart.Transparency = 1

local muzzle = Instance.new("Part", player.Character)
muzzle.Anchored = false
muzzle.CanCollide = false
muzzle.TopSurface = 0
muzzle.BottomSurface = 0
muzzle.FormFactor = "Custom"
muzzle.Size = Vector3.new(0,0,0)
muzzle.Transparency = 1

local control = Instance.new("Weld", controlpart)
control.Part0 = player.Character.Head
control.Part1 = controlpart
control.C0 = CFrame.new(0,0,1.1)

local muzweld = Instance.new("Weld", controlpart)
muzweld.Part0 = player.Character.Head
muzweld.Part1 = muzzle
muzweld.C0 = CFrame.new(0,0,-1.6)

local muzflash = Instance.new("PointLight", muzzle)
muzflash.Range = 10
muzflash.Color = Color3.new(1,0.8,0)
muzflash.Enabled = false

local mpart = Instance.new("Part", player.Character)
mpart.Anchored = false
mpart.CanCollide = false
mpart.TopSurface = 0
mpart.BottomSurface = 0
mpart.FormFactor = "Custom"
mpart.Size = Vector3.new(0.25,1.1,0.25)
mpart.BrickColor = BrickColor.new("Really black")
Instance.new("CylinderMesh",mpart)
local mweld = Instance.new("Weld", mpart)
mweld.Part0 = controlpart
mweld.Part1 = mpart
mweld.C0 = CFrame.new(0,0,-1.1) * CFrame.Angles(math.rad(90),0,0)

local gpart = Instance.new("Part", player.Character)
gpart.Anchored = false
gpart.CanCollide = false
gpart.TopSurface = 0
gpart.BottomSurface = 0
gpart.FormFactor = "Custom"
gpart.Size = Vector3.new(0.22,1.03,0.22)
gpart.BrickColor = BrickColor.new("Really black")
Instance.new("CylinderMesh",gpart)
local gweld = Instance.new("Weld", gpart)
gweld.Part0 = controlpart
gweld.Part1 = gpart
gweld.C0 = CFrame.new(0,-0.2,-1.03) * CFrame.Angles(math.rad(90),0,0)

local gripp = Instance.new("Part", player.Character)
gripp.Anchored = false
gripp.CanCollide = false
gripp.TopSurface = 0
gripp.BottomSurface = 0
gripp.FormFactor = "Custom"
gripp.Size = Vector3.new(0.28,0.5,0.28)
gripp.BrickColor = BrickColor.new("Black")
Instance.new("CylinderMesh",gripp)
local grweld = Instance.new("Weld", gpart)
grweld.Part0 = controlpart
grweld.Part1 = gripp
grweld.C0 = CFrame.new(0,-0.2,-1.03) * CFrame.Angles(math.rad(90),0,0)

bin.Selected:connect(function()
	local asd = 1.1
	local tcount = 0
	if player.Character.Head:FindFirstChild("face") then player.Character.Head.face:Destroy() end
	while true do
		local dt = wait()
		tcount = tcount + dt
		asd = 1.1+math.cos((math.pi/2)+(tcount*4))*1.1
		if tcount >= 0.5 then
			break
		end
		control.C0 = CFrame.new(0,0,asd)
	end
	control.C0 = CFrame.new()
	selected = true
end)
bin.Deselected:connect(function()
	selected = false
	local asd = 0
	local tcount = 0
	while true do
		local dt = wait()
		tcount = tcount + dt
		asd = 1.1+math.sin(((tcount-0.1)*4)-(math.pi/2))*1.1
		if tcount >= 0.48 then
			break
		end
		control.C0 = CFrame.new(0,0,asd)
	end
	control.C0 = CFrame.new(0,0,1.1)
	face:clone().Parent = player.Character.Head
end)

mouse.Button1Down:connect(function()
	if selected then
		if swagbullets > 0 then
			muzflash.Enabled = true
			bang:Play()
			swagbullets = swagbullets - 1
			for i = 1, 10 do
				FireProjectile((player.Character.Head.CFrame).p, player.Character.Head.Velocity+((Vector3.new(math.random()-0.5,math.random()-0.5,math.random()-0.5)*0.07)+mouse.UnitRay.Direction)*300, function(self,opart)
					local humans = gethums(opart)
					for _,hum in pairs(humans) do
						hum:TakeDamage(6)
					end
					return false
				end, {player.Character}, function(p1,p2)
					asdpart = Instance.new("Part")
					asdpart.Anchored = true
					asdpart.CanCollide = false
					asdpart.TopSurface = 0
					asdpart.BottomSurface = 0
					asdpart.FormFactor = "Custom"
					asdpart.Size = Vector3.new(1,1,1)
					asdpart.BrickColor = BrickColor.new("Medium stone grey")
					asdpart.Reflectance = 0.5
					asdpart.CFrame = CFrame.new(p1:Lerp(p2,0.5),p2)+Vector3.new(100,100,0)
					local asdmesh = Instance.new("BlockMesh",asdpart)
					asdmesh.Scale = Vector3.new(0.1,0.1,(p1-p2).magnitude)
					asdmesh.Offset = ((asdpart.CFrame - asdpart.CFrame.p):inverse() * CFrame.new(-100,-100,0)).p
					asdpart.Parent = workspace
					coroutine.wrap(function()
						local noobfacepartlol = asdpart
						wait()
						if noobfacepartlol then noobfacepartlol:Destroy() end
					end)()
					return asdpart
				end)
			end
			coroutine.wrap(function()
				wait()
				muzflash.Enabled = false
				local scr = Instance.new("BillboardGui", muzzle)
				scr.Adornee = muzzle
				scr.Size = UDim2.new(2, 0, 2, 0)
				scr.StudsOffset = Vector3.new(0,0,0.2)
				scr.Name = "flash"
				local pic = Instance.new("ImageLabel", scr)
				pic.Image = "http://www.roblox.com/asset/?id=62701218"
				pic.Size = UDim2.new(1, 0, 1, 0)
				pic.BorderSizePixel = 0
				pic.BackgroundTransparency = 1
				game:GetService("Debris"):AddItem(scr,0.1)
				local case = Instance.new("Part", player.Character)
				case.Name = "BulletShell"
				case.Anchored = false
				case.CanCollide = true
				case.TopSurface = "Smooth"
				case.BottomSurface = "Smooth"
				case.FormFactor = "Custom"
				case.Size = Vector3.new(0.2, 0.4, 0.2)
				case.Elasticity = 0
				case.Reflectance = 0.1
				case.BrickColor = BrickColor.new("Bright red")
				case.CFrame = player.Character.Head.CFrame * CFrame.new(0,0,0.9) * CFrame.Angles(0,0,math.pi/2)
				case.Velocity = Vector3.new(0,11,0)-mouse.UnitRay.Direction*7
				local casemesh = Instance.new("CylinderMesh", case)
				casemesh.Scale = Vector3.new(0.7, 0.7, 0.7)
				game:GetService("Debris"):AddItem(case,0.6)
			end)()
		else
			clicking:Play()
		end
	end
end)

mouse.KeyDown:connect(function(key)
	if key == "r" and swagbullets < 7 and not reloading then
		reloading = true
		reload:Play()
		wait(0.5)
		swagbullets = swagbullets + 1
		reloading = false
	end
end)

while true do
	local dt = wait()
	local ax,ay,az = player.Character.Torso.CFrame:toEulerAnglesXYZ()
	local cx,cy,cz = CFrame.new(Vector3.new(),mouse.UnitRay.Direction):toEulerAnglesXYZ()
	neck.C0 = CFrame.new(0,1,0)*(CFrame.Angles(ax,ay,az):inverse())*CFrame.Angles(cx,cy,cz)*CFrame.Angles(-math.pi/2,0,math.pi)
	for i,pjt in pairs(pjts) do
		pjt[2] = pjt[1]
		pjt[1] = pjt[1] + pjt[3]*dt
		pjt[3] = pjt[3] - Vector3.new(0,196.2,0)*dt
		local pjtray = Ray.new(pjt[2],pjt[1]-pjt[2])
		local pjtig = {unpack(pjt[5]),pjt[7]}
		for _,opjt in pairs(pjts) do
			if opjt[7] then
				table.insert(pjtig,opjt[7])
			end
		end
		local hpart, hpos = workspace:FindPartOnRayWithIgnoreList(pjtray, pjtig, false)
		if hpart and hpos then
			local stillgoes = pjt[4](pjt,hpart,hpos,pjt[3])
			if stillgoes then
				hpos = pjt[1]
			else
				pjts[i] = nil
			end
		end
		if pjt[6] then
			pjt[7] = pjt[6](pjt[2],hpos)
		else
			pjt[7] = Instance.new("Part")
			pjt[7].Anchored = true
			pjt[7].CanCollide = false
			pjt[7].TopSurface = 0
			pjt[7].BottomSurface = 0
			pjt[7].FormFactor = "Custom"
			pjt[7].Size = Vector3.new(1,1,1)
			pjt[7].CFrame = CFrame.new(pjt[2]:Lerp(hpos,0.5),hpos)+Vector3.new(100,100,0)
			local asdmesh = Instance.new("BlockMesh",pjt[7])
			asdmesh.Scale = Vector3.new(0.2,0.2,(pjt[2]-hpos).magnitude)
			asdmesh.Offset = ((pjt[7].CFrame - pjt[7].CFrame.p):inverse() * CFrame.new(-100,-100,0)).p
			pjt[7].Parent = workspace
			coroutine.wrap(function()
				local noobfacepartlol = pjt[7]
				wait()
				if noobfacepartlol then noobfacepartlol:Destroy() end
			end)()
		end
		if pjt[1].y < -300 then
			pjts[i] = nil
		end
	end
end
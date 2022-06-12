player = game.Players.yfc
damage = 6

if script.Parent:IsA("Tool") then return end
tool = Instance.new("Tool")
script.Parent = tool
tool.GripPos = Vector3.new(0, -2.4, 0)
tool.Name = "Sword"
tool.Parent = player.Backpack
local clicks = Instance.new("NumberValue")
clicks.Parent = tool
clicks.Value = 0
handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1,4,1)
handle.TopSurface = 0
handle.BottomSurface = 0
handle.BrickColor = BrickColor.new(21)
local mesh = Instance.new("BlockMesh")
mesh.Parent = handle
mesh.Scale = Vector3.new(0.2, 1, 0.9)

local sla = Instance.new("Sound")
sla.Parent = handle
sla.Volume = .7
sla.SoundId = "rbxasset://sounds\\swordslash.wav"

local lun = Instance.new("Sound")
lun.Parent = handle
lun.Volume = .7
lun.SoundId = "rbxasset://sounds\\swordlunge.wav"

local spinSound= Instance.new("Sound")
spinSound.SoundId = "http://www.roblox.com/asset/?id=28144425"
spinSound.Volume = 1
spinSound.Parent = handle

local handle2 = Instance.new("Part")
handle2.Size = Vector3.new(1,1,2)
handle2.TopSurface = 0
handle2.BottomSurface = 0
handle2.BrickColor = BrickColor.new(26)
handle2.CanCollide = false
local mesh2 = Instance.new("BlockMesh")
mesh2.Parent = handle2
mesh2.Scale = Vector3.new(0.7, 0.4, 0.7)
local handle3 = Instance.new("Part")
handle3.Size = Vector3.new(1,1,1)
handle3.TopSurface = 0
handle3.BottomSurface = 0
handle3.BrickColor = BrickColor.new(26)
handle3.CanCollide = false
local mesh3 = Instance.new("SpecialMesh")
mesh3.Parent = handle3
mesh3.MeshType = "Head"
mesh3.Scale = Vector3.new(0.4, 1.2, 0.4)
local handle4 = Instance.new("Part")
handle4.Size = Vector3.new(1,1,1)
handle4.TopSurface = 0
handle4.BottomSurface = 0
handle4.CanCollide = false
handle4.BrickColor = BrickColor.new(21)
local mesh4 = Instance.new("SpecialMesh")
mesh4.Parent = handle4
mesh4.MeshType = "Wedge"
mesh4.Scale = Vector3.new(0.2, 1.4, 0.9)
handle.Parent = tool
handle2.Parent = tool
handle3.Parent = tool
handle4.Parent = tool

function equip()
local w1 = Instance.new("Weld")
w1.Parent = handle
w1.Part0 = w1.Parent
w1.Part1 = handle2
w1.C1 = CFrame.new(0, 1.6, 0)
local w2 = Instance.new("Weld")
w2.Parent = handle
w2.Part0 = w1.Parent
w2.Part1 = handle3
w2.C1 = CFrame.new(0, 2.25, 0)
local w3 = Instance.new("Weld")
w3.Parent = handle
w3.Part0 = w1.Parent
w3.Part1 = handle4
w3.C1 = CFrame.new(0, -2.58, 0)
end
local fire = Instance.new("Fire")
fire.Parent = handle
fire.Size = 1
fire.Heat = 5
local fire2 = Instance.new("Fire")
fire2.Parent = handle4
fire2.Size = 1
fire2.Heat = 5
fire.Enabled = false
fire2.Enabled = false

function b(h)
if h.Parent.className == "Tool" then return end
if h.Parent.className == "Hat" then return end
if h.Name == "Base" then return end
if h.Name == "Blood" then return end
if h.Name == "Part" then return end
if h.Name == "Handle" then return end
local hum = h.Parent:findFirstChild("Humanoid")
if hum == nil then return end
local par = game.Players:findFirstChild(h.Parent.Parent.Name)
if par ~= nil then return end
hum.Health = hum.Health - damage
for i=1, 7 do
local blood = Instance.new("Part")
blood.Parent = game.Workspace
blood.BrickColor = BrickColor.new(21)
blood.formFactor = "Plate"
blood.Size = Vector3.new(1, 0.4, 1)
blood.CFrame = h.CFrame 
blood.TopSurface = "Smooth"
blood.BottomSurface = "Smooth"
blood.Name = "Blood"
blood.Anchored = false 
blood.Velocity = Vector3.new(math.random(-40,40), math.random(0,50), math.random(-40,40))
blood.RotVelocity = Vector3.new(math.random(-40,40), math.random(-40,40), math.random(-40,40))
blood.CanCollide = false
blood:breakJoints()
local mesff = Instance.new("SpecialMesh")
mesff.Parent = blood
mesff.MeshType = "Brick"
mesff.Scale = Vector3.new(0.6, 0.6, 0.6)
end
local s = Instance.new("Part")
s.Parent = game.Workspace
s.Size = Vector3.new(1, 1, 1)
s.CFrame = handle.CFrame 
s.Name = "sparkle"
s.Anchored = true
s.Transparency = 1
s.CanCollide = false
local spa = Instance.new("Sparkles")
spa.Parent = s
spa.Color = Color3.new(0,1,1)
wait(0.3)
s:remove()
end

handle.Touched:connect(b) 
handle4.Touched:connect(b) 

function firea()
	fire.Enabled = true
	fire2.Enabled = true
	wait(0.35)
	fire.Enabled = false
	fire2.Enabled = false
end

function hit()
	clicks.Value = clicks.Value + 1
	if clicks.Value == 1 then
		firea()
		sla:Play()
		ved = player.Character.Torso["Right Shoulder"]
		waa = ved.C1
		ved.C1 = waa
		for i = 1, 10 do
			wait(0.01)
			ved.C1 = ved.C1 * CFrame.fromEulerAnglesXYZ(0,-0.14,0) 
		end
		wait(0.1)
		for i = 1, 5 do
			wait(0.01)
			ved.C1 = ved.C1 * CFrame.fromEulerAnglesXYZ(0.6,0,0) 
		end
		wait(0.12)
		ved.C1 = waa
	end
	if clicks.Value == 2 then
		ved = player.Character.Torso["Right Shoulder"]
		waa = ved.C1
		ved.C1 = waa
		for i = 1, 10 do
			wait(0.01)
			ved.C1 = ved.C1 * CFrame.fromEulerAnglesXYZ(0.13,0.09,-0.05) 
		end
		wait(0.1)
		for i = 1, 5 do
			wait(0.01)
			ved.C1 = ved.C1 * CFrame.fromEulerAnglesXYZ(-0.6,0,0) 
		end
		wait(0.12)
		ved.C1 = waa
	end
	if clicks.Value == 3 then
		ved = player.Character.Torso["Right Shoulder"]
		waa = ved.C1
		ved.C1 = waa
		for i = 1, 8 do
			wait(0.02)
			ved.C1 = ved.C1 * CFrame.fromEulerAnglesXYZ(0.04,0.085,-0.25) 
		end
		wait(0.1)
		for i = 1, 6 do
			wait(0.01)
			ved.C1 = ved.C1 * CFrame.fromEulerAnglesXYZ(0,-0.12,0.6) 
		end
		wait(0.12)
		ved.C1 = waa
	end
	if clicks.Value == 4 then
		lun:Play()
		local ani = Instance.new("StringValue")
		ani.Name = "toolanim"
		ani.Value = "Lunge"
		ani.Parent = tool
		fire.Enabled = true
		fire.Size = 4
		fire.Heat = 40
		wait(.12)
		swordOut()
		wait(0.07)
		local pa = Instance.new("Part")
		pa.Parent = game.Workspace
		pa.formFactor = "Symmetric"
		pa.Size = Vector3.new(1,1,1)
		pa.Transparency = 1
		pa.CanCollide = false
		pa.Anchored = false
		pa.CFrame = handle.CFrame * CFrame.new(0, -2, 5)
		pa.Velocity = tool.Parent.Torso.CFrame.lookVector*150
		pa.Velocity = pa.Velocity + Vector3.new(0, 8, 0)
		pa.TopSurface = 0
		pa.BottomSurface = 0
		pa.Name = "Blood"
		pa:breakJoints()
		local fia = Instance.new("Fire")
		fia.Parent = pa
		fia.Size = 4
		fia.Heat = 2
		local fi3 = Instance.new("Fire")
		fi3.Parent = pa
		fi3.Size = 4
		fi3.Heat = 2
		kool = false
		local ve = Instance.new("CFrameValue")
		ve.Parent = tool.Parent.Torso
		ve.Value = ve.Parent.CFrame
		local spivel = Instance.new("BodyForce")
		spivel.Parent = tool.Parent.Torso
		spivel.force = ve.Value.lookVector*4000
		spivel.force = spivel.force + Vector3.new(0, 2000, 0)
		pa.Touched:connect(function(hif)
			if hif.Parent.Name == player.Name then return end
			if kool == true then return end
			kool = true
			local hum = hif.Parent:findFirstChild("Humanoid")
			if hum ~= nil then
				hum.Health = hum.Health - 18
				fia.Parent = hif
				fi3.Parent = hif
				fia.Heat = 30
				fi3.Heat = 30
				fia.Size = 3
				fi3.Size = 3
			end
		end)
		wait(.25)
		swordUp()
		fire.Enabled = false
		fire.Size = 1
		fire.Heat = 5
		spivel:remove()
	end
	function swordUp()
		tool.GripForward = Vector3.new(0,0,1)
		tool.GripRight = Vector3.new(1,0,0)
		tool.GripUp = Vector3.new(0,1,0)
	end

	function swordOut()
		tool.GripForward = Vector3.new(0,0,1)
		tool.GripRight = Vector3.new(1,0,0)
		tool.GripUp = Vector3.new(0,1,6)
	end

	function swordspin()
		tool.GripForward = Vector3.new(0,0,1)
		tool.GripRight = Vector3.new(0,1,0)
		tool.GripUp = Vector3.new(0,1,6)
	end

	if clicks.Value == 5 then
		fire2.Enabled = true
		fire2.Size = 3
		fire2.Heat = 40
		local fra = tool.Parent.Torso["Right Shoulder"].C0
		local spinForce = Instance.new("BodyAngularVelocity")
		spinForce.P = 1000000
		spinForce.angularvelocity = Vector3.new(0,23,0)
		spinForce.maxTorque = Vector3.new(spinForce.P,spinForce.P,spinForce.P)
		spinForce.Parent = tool.Parent.Torso
		spinSound:play()
		swordspin()
		wait(1)
		spinForce:remove()
		swordUp()
		tool.Parent.Torso["Right Shoulder"].C0 = fra
		damage = 6
		fire2.Enabled = false
		fire2.Size = 1
		fire2.Heat = 5
	end
	if clicks.Value == 6 then
		ved = player.Character.Torso["Right Shoulder"]
		wee = ved.C1
		for i = 1, 46 do
			wait()
			ved.C1 = ved.C1 * CFrame.fromEulerAnglesXYZ(0,0,0.6) 
		end
		local boom = Instance.new("Part")
		boom.Parent = workspace
		boom.BrickColor = BrickColor.new(21)
		boom.Size = Vector3.new(14,1,14)
		boom.CanCollide = false
		boom.Transparency = 0.1
		boom.Anchored = true
		boom.CFrame = player.Character.Torso.CFrame * CFrame.new(0,-4,0)
		local mes = Instance.new("CylinderMesh")
		mes.Parent = boom
		mes.Scale = Vector3.new(0.4,1,0.4)
		boom.TopSurface = 0	
		boom.BottomSurface = 0
		boom.Touched:connect(function(hit)
			local hi = hit.Parent:findFirstChild("Humanoid")
			if hi ~= nil then
				if hit.Parent.Name == "xSoulStealerx" then return end
				hit.Parent.Torso.Velocity = Vector3.new(math.random(-20,20),math.random(60,110),math.random(-20,20))
				hit.Parent.Torso.RotVelocity = Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
				hi.Sit = true
				hi.Health = hi.Health - 15
				wait(0.5)
				hi.Sit = false
			end
			hit.Velocity = Vector3.new(math.random(-20,20),math.random(60,110),math.random(-20,20))
			hit.RotVelocity = Vector3.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
		end)
		for i=1, 25 do
			mes.Scale = mes.Scale + Vector3.new(0.06, 0.004, 0.06)
			boom.Transparency = boom.Transparency + 0.04
			boom.CFrame = boom.CFrame * CFrame.new(0, 0.1, 0)
			wait()
		end
		boom:remove()
		wait(0.3)
		ved.C1 = wee
		clicks.Value = 0
	end
end

function onActivated() 
	if not tool.Enabled then
		return
	end
	
	tool.Enabled = false
	hit()
	tool.Enabled = true

end 

tool.Activated:connect(onActivated)

tool.Equipped:connect(equip)

while true do
wait(8)
pcall(b)
clicks.Value = 0
end

--lego

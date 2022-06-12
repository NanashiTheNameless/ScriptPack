:ls --Spear Gifted by TheRedAngel, Regular Script!

local player = game.Players.luxulux
if script.Parent:IsA("Tool") then return end
tool = Instance.new("Tool")
script.Parent = tool
tool.GripPos = Vector3.new(0, -1, 0)
tool.Name = "Le Lanza"
tool.Parent = player.Backpack
local clicks = Instance.new("NumberValue")
clicks.Parent = tool
clicks.Value = 0
handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1,7,1)
handle.TopSurface = 0
handle.BottomSurface = 0
handle.BrickColor = BrickColor.new("Brown")
local mesh = Instance.new("CylinderMesh")
mesh.Parent = handle
mesh.Scale = Vector3.new(0.3, 1, 0.3)

--NECESSARY NEEDS

local sla = Instance.new("Sound")
sla.Parent = handle
sla.Volume = 1
sla.SoundId = "rbxasset://sounds\\swordslash.wav"

local handle2 = Instance.new("Part")
handle2.Size = Vector3.new(1,1,2)
handle2.TopSurface = 0
handle2.BottomSurface = 0
handle2.BrickColor = BrickColor.new("Medium stone grey")
handle2.CanCollide = false
local mesh2 = Instance.new("SpecialMesh")
mesh2.Parent = handle2
mesh2.MeshType = "FileMesh"
mesh2.MeshId = "http://www.roblox.com/asset/?id=1033714"
mesh2.Scale = Vector3.new(0.3, 1.7, 0.3)
local handle3 = Instance.new("Part")
handle3.Size = Vector3.new(1,1,1)
handle3.TopSurface = 0
handle3.BottomSurface = 0
handle3.BrickColor = BrickColor.new("Medium stone grey")
handle3.CanCollide = false
local mesh3 = Instance.new("SpecialMesh")
mesh3.Parent = handle3
mesh3.MeshType = "FileMesh"
mesh3.MeshId = "http://www.roblox.com/asset/?id=1033714"
mesh3.Scale = Vector3.new(0.3, 0.5, 0.3)
local handle4 = Instance.new("Part")
handle4.Size = Vector3.new(1,1,1)
handle4.TopSurface = 0
handle4.BottomSurface = 0
handle4.CanCollide = false
handle4.BrickColor = BrickColor.new(21)
local mesh4 = Instance.new("BlockMesh")
mesh4.Parent = handle4
mesh4.Scale = Vector3.new(0.296, 5, 0.1)
local handle5 = handle4:clone()
handle5.Mesh.Scale = Vector3.new(0.1,5,0.296)
handle5.Name = "Handle5"
local handle6 = Instance.new("Part")
handle6.Size = Vector3.new(1,1,1)
handle6.TopSurface = 0
handle6.BottomSurface = 0
handle6.CanCollide = false
handle6.BrickColor = BrickColor.new(21)
local mesh6 = Instance.new("SpecialMesh")
mesh6.Parent = handle6
mesh6.Scale = Vector3.new(0.36, 0.4, 0.36)
local handle7 = handle6:clone()
local handle8 = handle6:clone()
handle.Parent = tool
handle2.Parent = tool
handle3.Parent = tool
handle4.Parent = tool
handle5.Parent = tool
handle6.Parent = tool
handle7.Parent = tool
handle8.Parent = tool

brick1 = Instance.new("Part")
brick1.Parent = player.Character
brick1.formFactor = "Symmetric"
brick1.Size = Vector3.new(1,1,1)
brick1.CFrame = player.Character.Torso.CFrame * CFrame.new(-1.5,0.5,0)
brick1.Shape = "Ball"
brick1.CanCollide = false
brick1.Transparency = 1
mesh1 = Instance.new("SpecialMesh")
mesh1.Parent = brick1
mesh1.MeshType = "Sphere"
mesh1.Scale = Vector3.new(1.4,1.4,1.4)
brick2 = Instance.new("Part")
brick2.Parent = player.Character
brick2.formFactor = "Symmetric"
brick2.Size = Vector3.new(1,1,1)
brick2.CFrame = player.Character.Torso.CFrame * CFrame.new(1.5,0.5,0)
brick2.Shape = "Ball"
brick2.CanCollide = false
brick2.Transparency = 1
mesh2 = Instance.new("SpecialMesh")
mesh2.Parent = brick2
mesh2.MeshType = "Sphere"
mesh2.Scale = Vector3.new(1.4,1.4,1.4)
wads = Instance.new("Weld")
wads.Parent = player.Character.Torso
wads.Part0 = wads.Parent
wads.Part1 = brick1
wads.C1 = CFrame.new(-1.5,-0.5,0)
wads2 = Instance.new("Weld")
wads2.Parent = player.Character.Torso
wads2.Part0 = wads2.Parent
wads2.Part1 = brick2
wads2.C1 = CFrame.new(1.5,-0.5,0)
lewe = Instance.new("Weld")
riwe = Instance.new("Weld")
lewe.C1 = CFrame.fromEulerAnglesXYZ(-1,0,-0.7) * CFrame.new(-0.28,0.25,0.3)
riwe.C1 = CFrame.fromEulerAnglesXYZ(-1.57,-0.4,-1.46) * CFrame.new(0,0.3,0.5)

--OnEquip function

function equip()
lewe.Parent = brick2
lewe.Part0 = lewe.Parent
lewe.Part1 = player.Character["Left Arm"]
lewe.C1 = CFrame.fromEulerAnglesXYZ(-1,0,-0.7) * CFrame.new(-0.28,0.25,0.3)
riwe.Parent = brick1
riwe.Part0 = riwe.Parent
riwe.Part1 = player.Character["Right Arm"]
riwe.C1 = CFrame.fromEulerAnglesXYZ(-1.57,-0.4,-1.46) * CFrame.new(0,0.3,0.5)
local w1 = Instance.new("Weld")
w1.Parent = handle
w1.Part0 = w1.Parent
w1.Part1 = handle2
w1.C1 = CFrame.new(0, -3.6, 0)
local w2 = Instance.new("Weld")
w2.Parent = handle
w2.Part0 = w1.Parent
w2.Part1 = handle3
w2.C1 = CFrame.fromEulerAnglesXYZ(0,0,3.2) * CFrame.new(0, -2.79, 0)
local w3 = Instance.new("Weld")
w3.Parent = handle
w3.Part0 = w1.Parent
w3.Part1 = handle4
w3.C1 = CFrame.new(0, 0.5, 0)
local w4 = Instance.new("Weld")
w4.Parent = handle
w4.Part0 = w1.Parent
w4.Part1 = handle5
w4.C1 = CFrame.new(0, 0.5, 0)
local w5 = Instance.new("Weld")
w5.Parent = handle
w5.Part0 = w1.Parent
w5.Part1 = handle6
w5.C1 = CFrame.new(0, 1, 0)
local w6 = Instance.new("Weld")
w6.Parent = handle
w6.Part0 = w1.Parent
w6.Part1 = handle7
w6.C1 = CFrame.new(0, 1.5, 0)
local w7 = Instance.new("Weld")
w7.Parent = handle
w7.Part0 = w1.Parent
w7.Part1 = handle8
w7.C1 = CFrame.new(0, 0.5, 0)
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

--KILL FUNCTION

function b(h)
	if h.Parent.className == "Hat" then return end
	local hum = h.Parent:findFirstChild("Humanoid")
	if hum ~= nil then 
		local par = game.Players:findFirstChild(h.Parent.Name)
		if par ~= nil then 
			local dam = math.random(5,15)
			hum.Health = hum.Health - dam
			local sho = Instance.new("BillboardGui")
			sho.Parent = game.Workspace
			sho.Size = UDim2.new(0,150,0,150)
			sho.Adornee = hum.Parent.Head
			local showdmg = Instance.new("TextLabel")
			showdmg.Parent = sho
			showdmg.Size = UDim2.new(0,40,0,40)
			showdmg.Text = dam
			showdmg.TextColor = BrickColor.new("Really black")
			showdmg.BackgroundColor = BrickColor.new("Bright red")
			showdmg.FontSize = "Size12"
			showdmg.Position = UDim2.new(0,math.random(-70,70),0,math.random(-120,-60))
			showdmg.BackgroundTransparency = 0
			showdmg.Visible = true
			for i=1, 4 do
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
				blood.Velocity = Vector3.new(math.random(-20,20), math.random(-10,30), math.random(-20,20))
				blood.RotVelocity = Vector3.new(math.random(-30,40), math.random(-30,30), math.random(-30,30))
				blood.CanCollide = false
				blood:breakJoints()
				local mesff = Instance.new("SpecialMesh")
				mesff.Parent = blood
				mesff.MeshType = "Brick"
				mesff.Scale = Vector3.new(0.6, 0.6, 0.6)
			end
			wait(0.5)
			sho:remove()
		end
	end
end

handle2.Touched:connect(b) 

riwesa = riwe.C1
lewesa = lewe.C1

function effect()
	local p1 = handle:clone()
	p1.Parent = game.Workspace
	p1.BrickColor = BrickColor.new(21)
	p1.Transparency = 0.2
	p1.CFrame = handle.CFrame
	p1.CanCollide = false
	p1.Anchored = true
	p1.Sound:remove()
	local p2 = handle2:clone()
	p2.Parent = game.Workspace
	p2.BrickColor = BrickColor.new(21)
	p2.Transparency = 0.2
	p2.CFrame = handle2.CFrame
	p2.CanCollide = false
	p2.Anchored = true	
	local p3 = handle3:clone()
	p3.Parent = game.Workspace
	p3.BrickColor = BrickColor.new(21)
	p3.Transparency = 0.2
	p3.CFrame = handle3.CFrame
	p3.CanCollide = false
	p3.Anchored = true
	coroutine.resume(coroutine.create(function()
		for i = 1, 8 do
			wait(0.01)
			p1.Transparency = p1.Transparency + 0.1
			p2.Transparency = p2.Transparency + 0.1
			p3.Transparency = p3.Transparency + 0.1
		end
		p1:remove()
		p2:remove()
		p3:remove()
	end))
end
--ATTACKS START HERE

function att1()
		for i = 1, 9 do
			wait(0.01)
			riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.3,-0.1,0.2) 
			lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,-0.2) 
			effect()
		end
		for i = 1, 7 do
			wait(0.01)
			riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.6,0,0) 
			lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,0.45) 
			effect()
		end
		wait(0.01)
		riwe.C1 = riwesa
		lewe.C1 = lewesa
end

function att2()
		for i = 1, 6 do
			wait(0.01)
			riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,0.4,0.3) 
			effect()
		end
		wait(0.01)
		riwe.C1 = riwesa
end
function att3()
		for i = 1, 6 do
			wait(0.01)
			riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,-0.08,0.2)
			lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0.08,-0.16)  
			effect()
		end
		for i = 1, 4 do
			wait(0.01)
			riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.35,0,0) 
			lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)  
			effect()
		end
		for i = 1, 4 do
			wait(0.01)
			riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.9,0,0) 
			lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0.9,0,0)  
			effect()
		end
		wait(0.01)
		riwe.C1 = riwesa
		lewe.C1 = lewesa
end

function att4()
		local spin = Instance.new("BodyAngularVelocity")
		spin.maxTorque = Vector3.new(1000000,1000000,1000000)
		spin.angularvelocity = Vector3.new(0,15,0)
		for i = 1, 4 do
			wait(0.02)
			riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,0.4,0.3)
			lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,-0.4,0)  
		end
		spin.Parent = player.Character.Torso
		for i = 1, 20 do
			wait(0.01)
			local num = math.random(1,3)
			if num == 1 then
				sla:Play()
				sla.Pitch = math.random(0.7,1)
			end
			local part = Instance.new("Part")
			part.Parent = game.Workspace
			part.formFactor = "Symmetric"
			part.Size = Vector3.new(2,1,1)
			part.TopSurface = 0
			part.BottomSurface = 0
			part.BrickColor = BrickColor.new(21)
			part.Transparency = 0.2
			part.CFrame = handle2.CFrame
			part.CanCollide = false
			part.Anchored = true
			local mes = Instance.new("BlockMesh")
			mes.Parent = part
			mes.Scale = Vector3.new(1,1,1)
			coroutine.resume(coroutine.create(function()
				for i = 1, 8 do
					wait(0.02)
					part.Transparency = part.Transparency + 0.1
				end
				part:remove()
			end))
		end
		spin:remove()
		sla.Pitch = 1
		riwe.C1 = riwesa
		lewe.C1 = lewesa
end

function att5()
		tool.GripPos = Vector3.new(0, 0.5, 0)
		for i = 1, 6 do
			wait(0.01)
			riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(-0.1,0,0)
			lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0.04,0,0)  
		end
		sla:Play()
		for i = 1, 25 do
			wait(0.01)
			local num = math.random(1,2)
			if num == 1 then
				sla:Play()
				sla.Pitch = math.random(0.6,1)
			end
			riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0,0,0.75) 
			lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(0,0,0)  
			effect()
		end
		for i = 1, 3 do
			wait(0.01)
			riwe.C1 = riwe.C1 * CFrame.fromEulerAnglesXYZ(0.2,0,0) 
			lewe.C1 = lewe.C1 * CFrame.fromEulerAnglesXYZ(-0.08,0,0)  
		end
		sla.Pitch = 1
		wait(0.01)
		tool.GripPos = Vector3.new(0, -1, 0)
		riwe.C1 = riwesa
		lewe.C1 = lewesa
end

--Click function

debounce = false
function hit()
	clicks.Value = clicks.Value + 1
	if clicks.Value == 1 then
		debounce = false
		sla:Play()
		att1()
		debounce = true
	end
	if clicks.Value == 2 then
		debounce = false
		sla:Play()
		att2()
		debounce = true
	end
	if clicks.Value == 3 then
		debounce = false
		sla:Play()
		att3()
	end
	if clicks.Value == 4 then
		debounce = false
		sla:Play()
		att4()
		handle.Touched:connect(b) 
	end
	if clicks.Value == 5 then
		debounce = false
		sla:Play()
		att5()
		clicks.Value = 0
		debounce = true
		handle.Touched:connect(b) 
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

function uneq()
lewe.Part0 = nil
lewe.Part1 = nil
riwe.Part0 = nil
riwe.Part1 = nil
end
tool.Unequipped:connect(uneq)
tool.Equipped:connect(equip)

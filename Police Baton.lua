--Made by N3xul
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("Tool")
o2 = Instance.new("LocalScript")
o3 = Instance.new("Script")
o4 = Instance.new("Part")
o5 = Instance.new("CylinderMesh")
o6 = Instance.new("Weld")
o7 = Instance.new("Sound")
o8 = Instance.new("Sound")
o9 = Instance.new("Sound")
o10 = Instance.new("Sound")
o11 = Instance.new("Sound")
o13 = Instance.new("Part")
o14 = Instance.new("CylinderMesh")
o15 = Instance.new("Weld")
o16 = Instance.new("Script")
o17 = Instance.new("Part")
o18 = Instance.new("CylinderMesh")
o19 = Instance.new("Weld")
o20 = Instance.new("Script")
o21 = Instance.new("Part")
o22 = Instance.new("CylinderMesh")
o23 = Instance.new("Script")
o24 = Instance.new("BoolValue")
o25 = Instance.new("BoolValue")
o26 = Instance.new("BoolValue")
o27 = Instance.new("Script")
o28 = Instance.new("LocalScript")
o29 = Instance.new("Animation")
o30 = Instance.new("Animation")
o31 = Instance.new("Animation")
o32 = Instance.new("Animation")
o33 = Instance.new("Animation")
o34 = Instance.new("Animation")
o1.Name = "Police Baton"
o1.Parent = mas
o2.Name = "Local Gui"
o2.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local Tool = script.Parent;

enabled = true
function onButton1Down(mouse)
	if not enabled then
		return
	end

	enabled = false
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"

	wait(1)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	enabled = true

end

function onEquippedLocal(mouse)

	if mouse == nil then
		print("Mouse not found")
		return 
	end

	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end


Tool.Equipped:connect(onEquippedLocal)

end,o2)
end))
o3.Name = "Weld"
o3.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
local prev
local parts = script.Parent:GetChildren()
for i = 1,#parts do
--remove any of the following parts that say "(parts[i].className == [className])" if you want to exclude that particular className type from the Weld
	if ((parts[i].className == "Part") or (parts[i].className == "SpawnLocation") or (parts[i].className == "Seat") or (parts[i].className == "TrussPart") or (parts[i].className == "VehicleSeat")) then
		if (prev ~= nil) then
			local weld = Instance.new("Weld")
			weld.Part0 = prev
			weld.Part1 = parts[i]
			weld.C0 = prev.CFrame:inverse()
			weld.C1 = parts[i].CFrame:inverse()
			weld.Parent = prev
			parts[i].Anchored = false
		end
		prev = parts[i]
	end
end
wait(3)

end,o3)
end))
o4.Name = "Handle"
o4.Parent = o1
o4.Material = Enum.Material.Fabric
o4.BrickColor = BrickColor.new("Black")
o4.Position = Vector3.new(-99.2203217, 4.54420996, -80.643074)
o4.Rotation = Vector3.new(104.999954, 90, 0)
o4.FormFactor = Enum.FormFactor.Custom
o4.Size = Vector3.new(0.300000012, 1, 0.300000012)
o4.CFrame = CFrame.new(-99.2203217, 4.54420996, -80.643074, 3.0172731e-010, -7.34871719e-010, 1, 0.965919137, -0.258816421, -8.5492502e-011, 0.258816421, 0.965919137, 1.23691279e-010)
o4.BottomSurface = Enum.SurfaceType.Weld
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.105882, 0.164706, 0.207843)
o4.Position = Vector3.new(-99.2203217, 4.54420996, -80.643074)
o5.Parent = o4
o5.Scale = Vector3.new(0.899999976, 1, 0.899999976)
o6.Parent = o4
o6.C0 = CFrame.new(-457.99826, -25.7006931, 446.902222, -1, 3.05171125e-005, 3.05180438e-005, 3.05180438e-005, 1, 3.05171125e-005, -3.05171125e-005, 3.05180438e-005, -1)
o6.C1 = CFrame.new(-457.987274, 27.7081051, -446.912628, -1, -3.05171125e-005, 3.05180438e-005, 3.05180438e-005, -1, 3.05171125e-005, 3.05171125e-005, 3.05180438e-005, 1)
o6.Part0 = o4
o6.Part1 = o13
o7.Name = "HitSound"
o7.Parent = o4
o7.SoundId = "rbxassetid://169259022"
o7.Volume = 1
o8.Name = "LungeSound"
o8.Parent = o4
o8.SoundId = "http://www.roblox.com/Asset/?ID= 101164100"
o8.Volume = 1
o9.Name = "OverheadSound"
o9.Parent = o4
o9.SoundId = "http://www.roblox.com/Asset/?ID= 101164100"
o9.Volume = 1
o10.Name = "UnsheathSound"
o10.Parent = o4
o10.SoundId = "rbxassetid://240784215"
o10.Volume = 1
o11.Name = "SlashSound"
o11.Parent = o4
o11.SoundId = "http://www.roblox.com/Asset/?ID= 101164100"
o11.Volume = 1
o13.Parent = o1
o13.BrickColor = BrickColor.new("Really black")
o13.Reflectance = 0.20000000298023
o13.Position = Vector3.new(-99.2290115, 4.01587152, -78.7071228)
o13.Rotation = Vector3.new(-75.0035477, -90, 0)
o13.FormFactor = Enum.FormFactor.Custom
o13.Size = Vector3.new(0.300000012, 1, 0.300000012)
o13.CFrame = CFrame.new(-99.2290115, 4.01587152, -78.7071228, -1.64371372e-009, -6.10355492e-005, -1, 0.965939522, 0.258758694, -1.57951999e-005, 0.258758694, -0.965939522, 5.8956397e-005)
o13.BottomSurface = Enum.SurfaceType.Weld
o13.TopSurface = Enum.SurfaceType.Weld
o13.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o13.Position = Vector3.new(-99.2290115, 4.01587152, -78.7071228)
o14.Parent = o13
o14.Scale = Vector3.new(0.300000012, 1, 0.300000012)
o15.Parent = o13
o15.C0 = CFrame.new(-457.987274, 27.7081051, -446.912628, -1, -3.05171125e-005, 3.05180438e-005, 3.05180438e-005, -1, 3.05171125e-005, 3.05171125e-005, 3.05180438e-005, 1)
o15.C1 = CFrame.new(-457.993866, 26.698473, -446.906464, -1, -3.05171125e-005, 3.05180438e-005, 3.05180438e-005, -1, 3.05171125e-005, 3.05171125e-005, 3.05180438e-005, 1)
o15.Part0 = o13
o15.Part1 = o17
o16.Parent = o13
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
h = hit.Parent:findFirstChild("Humanoid")
if h ~= nil then
h.Sit = true
h.Health = h.Health - 0
end
end
script.Parent.Touched:connect(onTouched)

end,o16)
end))
o17.Parent = o1
o17.BrickColor = BrickColor.new("Really black")
o17.Reflectance = 0.20000000298023
o17.Position = Vector3.new(-99.222908, 4.28349018, -79.6806641)
o17.Rotation = Vector3.new(-75.0035477, -90, 0)
o17.FormFactor = Enum.FormFactor.Custom
o17.Size = Vector3.new(0.300000012, 1, 0.300000012)
o17.CFrame = CFrame.new(-99.222908, 4.28349018, -79.6806641, -1.64371372e-009, -6.10355492e-005, -1, 0.965939522, 0.258758694, -1.57951999e-005, 0.258758694, -0.965939522, 5.8956397e-005)
o17.BottomSurface = Enum.SurfaceType.Weld
o17.TopSurface = Enum.SurfaceType.Weld
o17.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o17.Position = Vector3.new(-99.222908, 4.28349018, -79.6806641)
o18.Parent = o17
o18.Scale = Vector3.new(0.5, 1, 0.5)
o19.Parent = o17
o19.C0 = CFrame.new(-457.993866, 26.698473, -446.906464, -1, -3.05171125e-005, 3.05180438e-005, 3.05180438e-005, -1, 3.05171125e-005, 3.05171125e-005, 3.05180438e-005, 1)
o19.C1 = CFrame.new(-457.993408, 28.2644634, -446.909058, -1, -3.05161811e-005, 3.05189751e-005, 3.05189751e-005, -1, 9.15522687e-005, 3.05161811e-005, 9.15532e-005, 1)
o19.Part0 = o17
o19.Part1 = o21
o20.Parent = o17
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
h = hit.Parent:findFirstChild("Humanoid")
if h ~= nil then
h.Sit = true
h.Health = h.Health - 0
end
end
script.Parent.Touched:connect(onTouched)

end,o20)
end))
o21.Parent = o1
o21.BrickColor = BrickColor.new("Really black")
o21.Reflectance = 0.20000000298023
o21.Position = Vector3.new(-99.2236633, 3.87077618, -78.1417847)
o21.Rotation = Vector3.new(-75.0035477, -90, 0)
o21.FormFactor = Enum.FormFactor.Custom
o21.Size = Vector3.new(0.300000012, 0.200000003, 0.300000012)
o21.CFrame = CFrame.new(-99.2236633, 3.87077618, -78.1417847, -2.57497934e-009, -0.000122070705, -1, 0.965939522, 0.258758694, -3.15894795e-005, 0.258758694, -0.965939522, 0.000117912423)
o21.BottomSurface = Enum.SurfaceType.Smooth
o21.TopSurface = Enum.SurfaceType.Weld
o21.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o21.Position = Vector3.new(-99.2236633, 3.87077618, -78.1417847)
o22.Parent = o21
o22.Offset = Vector3.new(0, 0.150000006, 0)
o22.Scale = Vector3.new(0.5, 0.5, 0.5)
o23.Parent = o21
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
function onTouched(hit)
h = hit.Parent:findFirstChild("Humanoid")
if h ~= nil then
h.Sit = true
h.Health = h.Health - 0
end
end
script.Parent.Touched:connect(onTouched)

end,o23)
end))
o24.Name = "PlayOverhead"
o24.Parent = o1
o25.Name = "PlaySlash"
o25.Parent = o1
o26.Name = "PlayThrust"
o26.Parent = o1
o27.Name = "SwordScript"
o27.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
r = game:service("RunService")

local damage = 0

sword = script.Parent.Handle
Tool = script.Parent

local damages,values,sounds = {30,45,65},{Tool.PlaySlash,Tool.PlayThrust,Tool.PlayOverhead},{Tool.Handle.SlashSound,Tool.Handle.OverheadSound,Tool.Handle.LungeSound}
local enabledToDamage = true

function blow(hit)
	if enabledToDamage == false then return end
	enabledToDamage = false
	if (hit.Parent == nil) then enabledToDamage = true return end -- happens when bullet hits sword
	local humanoid = hit.Parent:findFirstChild("Humanoid")
	local vCharacter = Tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)
	local hum = vCharacter:findFirstChild("Humanoid") -- non-nil if tool held by a character
	if humanoid~=nil and humanoid ~= hum and hum ~= nil then
		-- final check, make sure sword is in-hand
		local right_arm = vCharacter:FindFirstChild("Right Arm")
		if (right_arm ~= nil) then
			local joint = right_arm:FindFirstChild("RightGrip")
			if (joint ~= nil and (joint.Part0 == sword or joint.Part1 == sword)) then
				tagHumanoid(humanoid, vPlayer)
				humanoid:TakeDamage(damage)
				wait(1)
				untagHumanoid(humanoid)
			else
				enabledToDamage = true
			end
		else
			enabledToDamage = true
		end
	else
		enabledToDamage = true
	end
end


function tagHumanoid(humanoid, player)
	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = player
	creator_tag.Name = "creator"
	creator_tag.Parent = humanoid
end

function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:findFirstChild("creator")
		if tag ~= nil then
			tag.Parent = nil
		end
	end
end


function attack()
	damage = slash_damage
	script.Parent.Handle.SlashSound:Play()
	script.Parent.PlaySlash.Value = not script.Parent.PlaySlash.Value 
end

function lunge()
	damage = lunge_damage
	script.Parent.Handle.LungeSound:Play()
	script.Parent.PlayOverhead.Value = not script.Parent.PlayOverhead.Value 
	force = Instance.new("BodyVelocity")
	force.velocity = Vector3.new(0,10,0) --Tool.Parent.Torso.CFrame.lookVector * 80
	force.Parent = Tool.Parent.Torso
	wait(.5)
	force.Parent = nil
	wait(.5)
	damage = slash_damage
end


Tool.Enabled = true
local last_attack = 0
local status = 0

function onActivated()
	if not Tool.Enabled then
		return
	end
	Tool.Enabled = false
	local character = Tool.Parent;
	local humanoid = character.Humanoid
	if humanoid == nil then
		print("Humanoid not found")
		return 
	end
	t = r.Stepped:wait()
	if (t - last_attack < 1.5) then
		if status == 3 then
			status = 0
			damage = 0
		else
			status = status + 1
			values[status].Value = not values[status].Value
			damage = damages[status]
			sounds[status]:Play()
			enabledToDamage = true
			wait(0.5)
			enabledToDamage = false
		end
	else
		status = 0
		damage = 0
	end
	last_attack = t
	Tool.Enabled = true
end

function onEquipped()
	wait(1/3)
	Tool.Handle.UnsheathSound:Play()
end

Tool.Equipped:connect(onEquipped)
script.Parent.Activated:connect(onActivated)
connection = sword.Touched:connect(blow) 
end,o27)
end))
o28.Name = "AnimationScript"
o28.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
-- Waits for the child of the specified parent
local function WaitForChild(parent, childName)
	while not parent:FindFirstChild(childName) do parent.ChildAdded:wait() end
	return parent[childName]
end

local Tool = script.Parent

local Animations = {}
local MyHumanoid
local MyCharacter


local function PlayAnimation(animationName)
	if Animations[animationName] then
		Animations[animationName]:Play()
	end
end

local function StopAnimation(animationName)
	if Animations[animationName] then
		Animations[animationName]:Stop()
	end
end


function OnEquipped(mouse)
	MyCharacter = Tool.Parent
	MyHumanoid = WaitForChild(MyCharacter, 'Humanoid')
	if MyHumanoid then
		Animations['EquipAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'EquipAnim5'))
		Animations['IdleAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'IdleAnim3'))
		Animations['OverheadAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'OverheadAnim2'))
		Animations['SlashAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'SlashAnim2'))
		Animations['ThrustAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'ThrustAnim2'))
		Animations['UnequipAnim'] = MyHumanoid:LoadAnimation(WaitForChild(Tool, 'UnequipAnim2'))
	end
	PlayAnimation('EquipAnim')
	PlayAnimation('IdleAnim')
end

function OnUnequipped()
	for animName, _ in pairs(Animations) do
		StopAnimation(animName)
	end
end

Tool.Equipped:connect(OnEquipped)
Tool.Unequipped:connect(OnUnequipped)

WaitForChild(Tool, 'PlaySlash').Changed:connect(
	function (value)
		--if value then
			PlayAnimation('SlashAnim')
		--else
		--	StopAnimation('SlashAnim')
		--end
	end)

WaitForChild(Tool, 'PlayThrust').Changed:connect(
	function (value)
		--if value then
			PlayAnimation('ThrustAnim')
		--else
		--	StopAnimation('ThrustAnim')
		--end
	end)

WaitForChild(Tool, 'PlayOverhead').Changed:connect(
	function (value)
		--if value then
			PlayAnimation('OverheadAnim')
		--else
		--	StopAnimation('OverheadAnim')
		--end
	end)

end,o28)
end))
o29.Name = "IdleAnim3"
o29.Parent = o1
o29.AnimationId = "http://www.roblox.com/Asset?ID=94108418"
o30.Name = "OverheadAnim2"
o30.Parent = o1
o30.AnimationId = "http://www.roblox.com/Asset?ID=94160738"
o31.Name = "UnequipAnim2"
o31.Parent = o1
o31.AnimationId = "http://www.roblox.com/Asset?ID=94095929"
o32.Name = "EquipAnim5"
o32.Parent = o1
o32.AnimationId = "http://www.roblox.com/Asset?ID=94160581"
o33.Name = "ThrustAnim2"
o33.Parent = o1
o33.AnimationId = "http://www.roblox.com/Asset?ID=94160738"
o34.Name = "SlashAnim2"
o34.Parent = o1
o34.AnimationId = "http://www.roblox.com/Asset?ID=94160738"
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = game:GetService("Players").LocalPlayer.Backpack 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
local player = script.Parent
local color = player.CloakPart.Value.BrickColor

local hats = {}

local transparentParts = {}

local shirt = player:FindFirstChild("Shirt")
local pants = player:FindFirstChild("Pants")
local bodyColors = player:FindFirstChild("Body Colors"):clone()
local bodyColorsChange = player:FindFirstChild("Body Colors")
local shirtGraphic = player:FindFirstChild("Shirt Graphic")

local head = player:FindFirstChild("Head")
local face = nil
if head ~= nil then
	face = head:FindFirstChild("face")
	face.Parent = nil
end

if shirt ~= nil then
	shirt.Parent = nil
end

if pants ~= nil then
	pants.Parent = nil
end

local torso = player:FindFirstChild("Torso")
local roblox = torso:FindFirstChild("roblox")
if roblox ~= nil then
	roblox.Parent = nil
end
if shirtGraphic ~= nil then
	shirtGraphic.Parent = nil
end

bodyColorsChange.HeadColor = color
bodyColorsChange.LeftArmColor = color
bodyColorsChange.LeftLegColor = color
bodyColorsChange.RightArmColor = color
bodyColorsChange.RightLegColor = color
bodyColorsChange.TorsoColor = color

local parts = player:GetChildren()

for i = 1, #parts do

	if parts[i].className == "Hat" then
		table.insert(hats, parts[i])
		parts[i].Parent = nil
	elseif parts[i].className == "Part" then
		parts[i].Transparency = 0.9
		table.insert(transparentParts,parts[i])
	end

end


wait(20)

bodyColorsChange:remove()
bodyColorsChange = bodyColors
bodyColorsChange.Parent = player

for i = 1, #hats do
	hats[i].Parent = player
end

if shirt ~= nil then
	shirt.Parent = player
end

if pants ~= nil then
	pants.Parent = player
end

if face ~= nil then
	face.Parent = head
end

if roblox ~= nil then
	roblox.Parent = torso
end
if shirtGraphic ~= nil then
	shirtGraphic.Parent = player
end

for i = 1, #transparentParts do
	transparentParts[i].Transparency = 0
end

player.Humanoid.Jump = true

player.CloakPart:remove()
script:remove()
-- FLUTE UMG --

local Tool = script.Parent
local Flute = Tool.Handle

local vCharacter

local fluteSound
local fluteAnim

Tool.Enabled = true 

fluteAOE = Vector3.new(15, 15, 15)

function onActivated()
	if Tool.Enabled == false then 
		return
	end

	Tool.Enabled = false 

	vCharacter = Tool.Parent
	myHumanoid = vCharacter:FindFirstChild("Humanoid")
	myTorso = vCharacter:FindFirstChild("Torso")

	if myHumanoid == nil then 
		return
	end

	if myTorso == nil then 
		return
	end

	fluteSound = Tool:FindFirstChild("FluteSound")
	fluteAnim = myHumanoid:LoadAnimation(Tool.FluteAnim)

	if fluteSound then fluteSound:Play() end
	if fluteAnim then fluteAnim:Play() end 

	Tool.GripForward = Vector3.new(0, -1, 0)
	Tool.GripPos = Vector3.new(-0.5, 0, 0)
	Tool.GripRight = Vector3.new(0, 0, 1)
	Tool.GripUp = Vector3.new(1, 0, 0)

	parts = game.Workspace:FindPartsInRegion3(Region3.new(myTorso.Position - fluteAOE, myTorso.Position + fluteAOE), vCharacter, 100)
	for i = 1, #parts do 
		tempChar = parts[i].Parent
		tempHumanoid = tempChar:FindFirstChild("Humanoid")
		if tempHumanoid then 
			script = tempChar:FindFirstChild("DanceScript")
			if not script then 
				danceScript = Tool.DanceScript:Clone()
				danceScript.Parent = tempChar
				danceScript.Disabled = false
			end
		end
	end
	
	wait(9.0) 
	
	Tool.GripForward = Vector3.new(0, 0, -1)
	Tool.GripPos = Vector3.new(0, 0, 0.1)
	Tool.GripRight = Vector3.new(1, 0, 0)
	Tool.GripUp = Vector3.new(0, 1, 0)
	Tool.Enabled = true

end

function onEquipped()
end

function onUnequipped()	
	if fluteSound then fluteSound:Stop() end
	if fluteAnim then fluteAnim:Stop() end
	
	Tool.GripForward = Vector3.new(0, 0, -1)
	Tool.GripPos = Vector3.new(0, 0, 0.1)
	Tool.GripRight = Vector3.new(1, 0, 0)
	Tool.GripUp = Vector3.new(0, 1, 0)
end

Tool.Activated:connect(onActivated)
Tool.Equipped:connect(onEquipped)
Tool.Unequipped:connect(onUnequipped)
local Tool = script.Parent
local spraying = false
local torso = nil
local offset = 5
local debris = game:GetService("Debris")

local bubble = Instance.new("Part")
bubble.Shape = 0
bubble.formFactor = 0
bubble.Size = Vector3.new(1,1,1)
bubble.Transparency = 0.2
bubble.BottomSurface = "Smooth"
bubble.TopSurface = "Smooth"
bubble.CanCollide = true

function onEquipped(mouse)

	torso = Tool.Parent:FindFirstChild("Torso", false)
	mouse.Button1Down:connect(onButton1Down)
	mouse.Button1Up:connect(onButton1Up)

end

function onUnequipped()

	spraying = false
	Tool.Handle.Mesh.MeshId = "http://www.roblox.com/asset/?id=27787143"
	Tool.Handle.FoamSound:Stop()


end

function onButton1Down(mouse)

	spraying = true
	Tool.Handle.Mesh.MeshId = "http://www.roblox.com/asset/?id=27787226"
	Tool.Handle.FoamSound:Play()
	sprayBubbles()

end

function onButton1Up(mouse)

	spraying = false
	Tool.Handle.Mesh.MeshId = "http://www.roblox.com/asset/?id=27787143"
	Tool.Handle.FoamSound:Stop()

end

function sprayBubbles()

	while spraying do
		
		local sprayDir = torso.CFrame.lookVector.unit

		local bubbleClone = bubble:clone()
		local torsoNormal = torso.CFrame.lookVector
		local denom = math.abs(torsoNormal.x) + math.abs(torsoNormal.z)
		local posX = 5 * (torsoNormal.x/denom)
		local posZ = 5 * (torsoNormal.z/denom)
		bubbleClone.Position = Vector3.new(Tool.Handle.Position.x + posX,Tool.Handle.Position.y,Tool.Handle.Position.z + posZ)
		bubbleClone.Velocity = Vector3.new(sprayDir.x,sprayDir.y + 0.5, sprayDir.z) * 50
		bubbleClone.Size = Vector3.new(math.random(1,2),math.random(1,2),math.random(1,2))
		bubbleClone.Parent = game.Workspace

		local script = Tool.ExtinguishScript:clone()
		script.Parent = bubbleClone
		script.Disabled = false

		debris:AddItem(bubbleClone, 2)
		
		wait(0.05)
	end

end

Tool.Equipped:connect(onEquipped)
Tool.Unequipped:connect(onUnequipped)
Torso == nil or myHumanoid
local player = script.Parent
local color = player.CloakPart.Value.BrickColor

local hats = {}

local transparentParts = {}

local shirt = player:FindFirstChild("Shirt")
local pants = player:FindFirstChild("Pants")
local bodyColors = player:FindFirstChild("Body Colors"):clone()
local bodyColorsChange = player:FindFirstChild("Body Colors")
local shirtGraphic = player:FindFirstChild("Shirt Graphic")

local head = player:FindFirstChild("Head")
local face = nil
if head ~= nil then
	face = head:FindFirstChild("face")
	face.Parent = nil
end

if shirt ~= nil then
	shirt.Parent = nil
end

if pants ~= nil then
	pants.Parent = nil
end

local torso = player:FindFirstChild("Torso")
local roblox = torso:FindFirstChild("roblox")
if roblox ~= nil then
	roblox.Parent = nil
end
if shirtGraphic ~= nil then
	shirtGraphic.Parent = nil
end

bodyColorsChange.HeadColor = color
bodyColorsChange.LeftArmColor = color
bodyColorsChange.LeftLegColor = color
bodyColorsChange.RightArmColor = color
bodyColorsChange.RightLegColor = color
bodyColorsChange.TorsoColor = color

local parts = player:GetChildren()

for i = 1, #parts do

	if parts[i].className == "Hat" then
		table.insert(hats, parts[i])
		parts[i].Parent = nil
	elseif parts[i].className == "Part" then
		parts[i].Transparency = 0.9
		table.insert(transparentParts,parts[i])
	end

end


wait(20)

bodyColorsChange:remove()
bodyColorsChange = bodyColors
bodyColorsChange.Parent = player

for i = 1, #hats do
	hats[i].Parent = player
end

if shirt ~= nil then
	shirt.Parent = player
end

if pants ~= nil then
	pants.Parent = player
end

if face ~= nil then
	face.Parent = head
end

if roblox ~= nil then
	roblox.Parent = torso
end
if shirtGraphic ~= nil then
	shirtGraphic.Parent = player
end

for i = 1, #transparentParts do
	transparentParts[i].Transparency = 0
end

player.Humanoid.Jump = true

player.CloakPart:remove()
script:remove()
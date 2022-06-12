h = Instance.new("Tool")
h.Parent = Game.Players.acb227.Backpack
h.Name = "MoonWalkPortion" 
script.Parent = h
h.TextureId = "http://www.roblox.com/asset/?id=29871912" 

Handle = Instance.new("Part")
Handle.Parent = h
Handle.Name = "Handle" 

m = Instance.new("SpecialMesh")
m.Parent = Handle
m.MeshType = "FileMesh" 
m.MeshId = "http://www.roblox.com/asset/?id=29869475"
m.TextureId = "http://www.roblox.com/asset/?id=29868858" 

anim = Instance.new("Animation") 
anim.AnimationId = "http://www.roblox.com/Asset?ID=30196114" 
anim.Name = "moonwalk" 
anim.Parent = h 

s1 = Instance.new("Sound") 
s1.Parent = Handle
s1.Name = "WooSound" 
s1.SoundId = "http://www.roblox.com/asset/?id=30231627" 
s2 = Instance.new("Sound") 
s2.Parent = Handle
s2.Name = "DrinkSound" 
s2.Volume = 0.5
s2.SoundId = "http://www.roblox.com/asset/?id=10722059" 
s3 = Instance.new("Sound") 
s3.Parent = Handle
s3.Name = "DanceMusic" 
s3.SoundId = "http://www.roblox.com/asset/?id=30231584" 
s3.Volume = 0.5

local Tool = h
local humanoid = nil
local moonwalk = nil
local playing = false
local connection = nil
local debris = game:GetService("Debris")
local equalizingForce = 236 / 1.2 -- amount of force required to levitate a mass
local gravity = .75 -- things float at > 1
local bodyPos = nil
local sparkles = Instance.new("Sparkles")
sparkles.SparkleColor = Color3.new(0,0.5,0)

function onEquippedLocal(mouse)

	humanoid = Tool.Parent:FindFirstChild("Humanoid")
	moonwalk = humanoid:LoadAnimation(Tool.moonwalk)
	connection = mouse.Button1Down:connect(moonWalker)

end

function onUnequippedLocal()

	humanoid = nil

	if moonwalk ~= nil then
		moonwalk:Stop()
		moonwalk:remove()
		moonwalk = nil
	end

	connection:disconnect()

	if bodyPos ~= nil then
		bodyPos:remove()
	end

	s3.DanceMusic:Stop()
	s2.DrinkSound:Stop()
	s1.WooSound:Stop()

	sparkles:remove()
	sparkles.Parent = nil

end

function moonWalker()

	if playing then
		return
	end

	playing = true

	moonwalk:Play(0.1,1,2)
	s2:Play()

	wait(0.3)
	s3:Play()
	sparkles.Parent = humanoid.Parent:FindFirstChild("Left Leg")

	local torso = humanoid.Parent:FindFirstChild("Torso")
	local xLook = torso.CFrame.lookVector.x/(math.abs(torso.CFrame.lookVector.x) + math.abs(torso.CFrame.lookVector.z))
	local zLook = torso.CFrame.lookVector.z/(math.abs(torso.CFrame.lookVector.x) + math.abs(torso.CFrame.lookVector.z))
	local unitLook = Vector2.new(xLook,zLook).unit
	local dist = 60

	
	bodyPos = Instance.new("BodyPosition")
	bodyPos.position = Vector3.new(torso.Position.x + (-unitLook.x * dist), torso.Position.y + 2,torso.Position.z + (-unitLook.y * dist))
	print(recursiveGetLift(humanoid.Parent))
	bodyPos.P = recursiveGetLift(humanoid.Parent) * 6.7
	bodyPos.D = bodyPos.P/2
	bodyPos.maxForce = Vector3.new(bodyPos.P,bodyPos.P,bodyPos.P)

	wait(0.9)
	bodyPos.Parent = torso
	debris:AddItem(bodyPos,5.8)

	wait(6)

	s1:Play()

	wait(1)

	s3:Stop()
	sparkles.Parent = nil

	playing = false

end

local head = nil
function recursiveGetLift(node)
	local m = 0
	local c = node:GetChildren()
	if (node:FindFirstChild("Head") ~= nil) then head = node:FindFirstChild("Head") end -- nasty hack to detect when your parts get blown off

	for i=1,#c do
		if c[i].className == "Part" then
			if (head ~= nil and (c[i].Position - head.Position).magnitude < 10) then -- GROSS
				if c[i].Name == "Handle" then
					m = m + (c[i]:GetMass() * equalizingForce * 1) -- hack that makes hats weightless, so different hats don't change your jump height
				else
					m = m + (c[i]:GetMass() * equalizingForce * gravity)
				end
			end
		end
		m = m + recursiveGetLift(c[i])
	end
	return m
end


Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)

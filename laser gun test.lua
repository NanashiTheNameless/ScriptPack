t = Instance.new("Tool") 
t.Parent = Game.Players.acb227.Backpack 
t.Name = "Lazer" 

h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = t

local Tool = script.Parent;

enabled = true
function onButton1Down(mouse)
	if not enabled then
		return
	end

	enabled = false
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"

	wait(.2)
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


ball = t
damage = 20

HitSound = Instance.new("Sound")
HitSound.Name = "HitSound"
HitSound.SoundId = "http://www.roblox.com/asset/?id=11945266"
HitSound.Parent = ball
HitSound.Volume = 1



function onTouched(hit)
	local humanoid = hit.Parent:findFirstChild("Humanoid")

	if humanoid ~= nil then
		tagHumanoid(humanoid)
		humanoid:TakeDamage(damage)
		untagHumanoid(humanoid)
	end

	HitSound:Play()
	ball.Parent = nil

end

function tagHumanoid(humanoid)
	-- todo: make tag expire
	local tag = ball:findFirstChild("creator")
	if tag ~= nil then
		local new_tag = tag:clone()
		new_tag.Parent = humanoid
	end
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:findFirstChild("creator")
		if tag ~= nil then
			tag.Parent = nil
		end
	end
end

connection = ball.Touched:connect(onTouched)

wait(10)
--ball.SparkSound.Looped = false
--ball.SparkSound:Stop()
ball.Parent = nil

local Tool = t

enabled = true

local spark = Instance.new("Sparkles")
spark.Color = Color3.new(1,1,0)

function fire(v)

	local vCharacter = Tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)

	local missile = Instance.new("Part")

	
	spark:Clone().Parent = missile

	local spawnPos = vCharacter.PrimaryPart.Position
	
	local PewPew = Tool.Handle:FindFirstChild("PewPew")

	if (PewPew == nil) then
		PewPew = Instance.new("Sound")
		PewPew.Name = "PewPew"
		PewPew.SoundId = "http://www.roblox.com/asset/?id=13775480"
		PewPew.Parent = Tool.Handle
		PewPew.Volume = 1
	end
	

	spawnPos  = spawnPos + (v * 9)

	
	missile.Position = spawnPos
	missile.Size = Vector3.new(2,2,2)
	missile.Velocity = v * 500
	missile.BrickColor = BrickColor.new(24)
	missile.Shape = 1
	missile.BottomSurface = 0
	missile.TopSurface = 0
	missile.Name = "Spark"
	missile.Reflectance = .5


	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,1675,0)
	force.Parent = missile	

	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = vPlayer
	creator_tag.Name = "creator"
	creator_tag.Parent = missile
	
	local new_script = script.Parent.LaserBlast:clone()
	new_script.Disabled = false
	new_script.Parent = missile

	missile.Parent = game.Workspace

	PewPew:Play()

end



function gunUp()
	Tool.GripForward = Vector3.new(0,.981,-.196)
	Tool.GripRight = Vector3.new(1,0,0)
	Tool.GripUp = Vector3.new(0,.196,.981)
end

function gunOut()
	Tool.GripForward = Vector3.new(0,1,0)
	Tool.GripRight = Vector3.new(1,0,0)
	Tool.GripUp = Vector3.new(0,0,1)
end


function onActivated()
	if not enabled  then
		return
	end

	enabled = false


	local character = Tool.Parent;
	local humanoid = character.Humanoid
	if humanoid == nil then
		print("Humanoid not found")
		return 
	end

	local targetPos = humanoid.TargetPoint
	local lookAt = (targetPos - character.Head.Position).unit

	local reload = .0


	gunUp(0)
	fire(lookAt)
	wait(reload)
	gunOut(0)
	wait(reload)

	enabled = true

end

function onEquipped()
	Tool.Handle.EquipSound:play()
end

t.Activated:connect(onActivated)
t.Equipped:connect(onEquipped)

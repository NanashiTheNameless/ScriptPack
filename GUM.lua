--Gum Gifted by TheRedAngel, Regular Script!

object = Instance.new("Tool", game.Players.peyquinn.Backpack)

object.Name = "Gum"

script.Parent = object

local Tool = script.Parent;

enabled = true

shooting = false
reloadtime = 0

local bubble = nil

function TakeStick()
	Tool.GripForward = Vector3.new(0,-.759,-.651)
	Tool.GripPos = Vector3.new(1.25,-.5,.2)
	Tool.GripRight = Vector3.new(.971,-.156,.181)
	Tool.GripUp = Vector3.new(.239,.632,-.737)
end

function RestoreStick()
	Tool.GripForward = Vector3.new(-.776,.163,-.609)
	Tool.GripPos = Vector3.new(0.05,-.15,.1)
	Tool.GripRight = Vector3.new(.614,-.0269,-.789)
	Tool.GripUp = Vector3.new(.145,.986,.079)
end

function onEquipped()
	Tool.Handle.OpenSound:play()
end


function BlowBubble(head)
	if (bubble == nil) then
		bubble = Instance.new("Part")
		bubble.Shape = 0
		bubble.Size = Vector3.new(1,1,1)
		bubble.BrickColor = BrickColor.new(1016)
		bubble.Transparency = .3
		bubble.TopSurface = 0
		bubble.BottomSurface = 0
		bubble.Position = head.Position + (head.CFrame.lookVector * .5)

		local mesh = Instance.new("SpecialMesh")
		mesh.MeshType = 3
		mesh.Parent = bubble
		bubble.Parent = game.Workspace

		local bp = Instance.new("BodyPosition")
		bp.maxForce = Vector3.new(1e8,1e8,1e8)
		bp.position = bubble.Position
		bp.Parent = bubble
	end

	bubble.BodyPosition.position = head.Position + (head.CFrame.lookVector * (.6 +  (bubble.Mesh.Scale.x * .5)))
	bubble.Mesh.Scale = bubble.Mesh.Scale + Vector3.new(.1,.1,.1)
end


Tool = script.Parent


function onActivated(mouse)
	if reloadtime > 0 then return end
	if shooting == true then return end

	reloadtime = 1.0
	shooting = true

	local time = 0

	local character = Tool.Parent;
	local humanoid = character.Humanoid
	if humanoid == nil then
		print("Humanoid not found")
		return 
	end

	TakeStick()

	local sound = character.PrimaryPart:findFirstChild("InflateSound")
	if sound == nil then 
		sound = Instance.new("Sound")
		sound.Name = "InflateSound"
		sound.SoundId = "http://www.roblox.com/asset/?id=11895499"
		sound.Parent = character.PrimaryPart
	end
	wait(.5)
	sound:Play()
	

	RestoreStick()

	while shooting == true do



		BlowBubble(character.Head)
		wait(.05)
		time = time + .05
		if time > 2.0 then shooting = false end
	end

	if (bubble ~= nil) then
		bubble:Remove()
		bubble = nil
	end

	sound:Stop()

	local psound = character.PrimaryPart:findFirstChild("PopSound")
	if psound == nil then 
		psound = Instance.new("Sound")
		psound.Name = "PopSound"
		psound.SoundId = "http://www.roblox.com/asset/?id=11895500"
		psound.Parent = character.PrimaryPart
	end
	psound:Play()

	wait(reloadtime)
	reloadtime = 0


end

function onDeactivated(mouse)
	shooting = false
end


script.Parent.Activated:connect(onActivated)
script.Parent.Deactivated:connect(onDeactivated)
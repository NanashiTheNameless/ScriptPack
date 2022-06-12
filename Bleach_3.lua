--Made by OpTic Wisdom/LikeATrollFace

game:GetObjects("rbxassetid://466032808")[1].Parent=game.Players.LocalPlayer.Backpack

game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.KYS)

local Tool = game.Players.LocalPlayer.Character.KYS;

enabled = true




function onActivated()
	if not enabled  then
		return
	end

	enabled = false
	Tool.GripForward = Vector3.new(0,-.759,-.651)
	Tool.GripPos = Vector3.new(1.5,-.5,.3)
	Tool.GripRight = Vector3.new(1,0,0)
	Tool.GripUp = Vector3.new(0,.651,-.759)


	Tool.Handle.DrinkSound:Play()

	wait(3)
	



	Tool.GripForward = Vector3.new(-.976,0,-0.217)
	Tool.GripPos = Vector3.new(0.03,0,0)
	Tool.GripRight = Vector3.new(.217,0,-.976)
	Tool.GripUp = Vector3.new(0,1,0)

	enabled = true

end

function onEquipped()
	Tool.Handle.OpenSound:play()
end

Tool.Activated:connect(onActivated)
Tool.Equipped:connect(onEquipped)

local head = game.Players.LocalPlayer.Character.Head

function onActivated()
wait(1)
print("run brew")

local sound = Instance.new("Sound")
sound.SoundId = "http://roblox.com/asset?id=333736095"
sound.Parent = game.Players.LocalPlayer.Character:FindFirstChild("Head")
sound.Volume = 100

-- assume we are in the character, let's check

function sepuku()
	game.Players.LocalPlayer.Character = nil
end


local h = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

if (h == nil) then sepuku() end

local head = game.Players.LocalPlayer.Character:FindFirstChild("Head")
local face = head:FindFirstChild("face")
if (head == nil) then sepuku() end

local m = head:FindFirstChild("Mesh")

if (m == nil) then sepuku() end


wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
wait(1)
face:remove()
head.BrickColor = BrickColor.new("Institutial White")
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
wait(1)
sound:play()
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
wait(1)
game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.Health - 10
head:Destroy()
head.Transparency = 1
end
Tool.Activated:connect(onActivated)
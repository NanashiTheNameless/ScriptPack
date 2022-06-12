--Made by OpTic Wisdom/LikeATrollFace

game:GetObjects("rbxassetid://482140202")[1].Parent=game.Players.LocalPlayer.Backpack
wait(0.1)
local Tool = game.Players.LocalPlayer.Backpack.WaterBottle;

enabled = true




function onActivated()
	if not enabled  then
		return
	end

	enabled = false
	Tool.Base.Transparency = 0
	Tool.Lid.Transparency = 0
	Tool.GripForward = Vector3.new(0.736, 0.676, 0.029)
	Tool.GripPos = Vector3.new(-0.655, -0.031, 1.794)
	Tool.GripRight = Vector3.new(-0.03, -0.01, 1)
	Tool.GripUp = Vector3.new(-0.676, 0.737, -0.013)


	Tool.Handle.OpenSound:Play()
	Tool.Base.Spark:Play()
	local alx = Instance.new("Fire")
	alx.Parent = Tool.Effects
	alx.Size = 2
	alx.Heat = 4
	wait(4)
	alx:Destroy()

	wait(2)
	
	local h = Tool.Parent:FindFirstChild("Humanoid")
	if (h ~= nil) then
		if (h.MaxHealth == 100) then
			h.MaxHealth = h.MaxHealth + 320
			h.Health = h.Health + 320
		else	
			h.Health = h.MaxHealth
		end
	end

	game.Players.LocalPlayer.Character.WaterBottle.Base.Transparency = 1
	game.Players.LocalPlayer.Character.WaterBottle.Lid.Transparency = 1
	game.Players.LocalPlayer.Character.WaterBottle.GripForward = Vector3.new(-0.04, 0.999, 0.028)
	game.Players.LocalPlayer.Character.WaterBottle.GripPos = Vector3.new(0.007, -0.058, 0.291)
	game.Players.LocalPlayer.Character.WaterBottle.GripRight = Vector3.new(0.044, -0.026, 0.999)
	game.Players.LocalPlayer.Character.WaterBottle.GripUp = Vector3.new(-0.998, -0.042, 0.043)
	
	local s = Instance.new("Smoke")
    s.Parent = game.Players.LocalPlayer.Character.WaterBottle.Parent.Head
    cough = Instance.new("Sound")
    cough.Parent = game.Workspace
    cough.Volume = 0.8
    cough.SoundId = "http://www.roblox.com/asset/?id=271820055"
    cough.Pitch = 1
    cough.Name = "Sound"
    wait(1)
    cough:Play()

    wait(8)
    s:Destroy()
    cough:Destroy()
    

	enabled = true
	
end

function onEquipped()
	game.Players.LocalPlayer.Character.WaterBottle.Handle.OpenSound:play()
end

game.Players.LocalPlayer.Backpack.WaterBottle.Activated:connect(onActivated)
game.Players.LocalPlayer.Backpack.WaterBottle.Equipped:connect(onEquipped)

--- Change Log: 2.Fist Person View While Holding OP Sword  And Holding (W+A+Jumping and W+D+Jumping) Gives You Super Speed Bug Fixed
--1.Not Working Upon Execution Bug Fixed
----------------------------------------------------------------------------------------------------------------------------------------------------
--- Update News: Music Update
--- Roblox User Name (DaneryTheGamer77)
--- OP Sword v1.5
--- Made By PugLover77
wait (0.5)
print "OP Sword v1.5 Loaded"
local p = game.Players.LocalPlayer
p.Character.Humanoid.WalkSpeed = 50  --- Set Walk Speed
p.Character.Humanoid.MaxHealth = math.huge
p.Character.Humanoid.JumpPower = 70  ---Set Jump Power

p.Backpack:ClearAllChildren()

local t = Instance.new("Tool",p.Backpack)
t.Name = "God Sword"
t.GripPos = Vector3.new(0,-20,0)  
t.GripUp = Vector3.new(0,0,1)
local a = Instance.new("Part",t)
a.Name = "Handle"
a.Size = Vector3.new(.4,40,.4)
a.Material = Enum.Material.Neon
a.BrickColor = BrickColor.new'Bright blue'  --- Set Color You Like

t.Activated:connect(function()
	for i,v in pairs(game.Players:GetChildren()) do
		if v.Name ~= game.Players.LocalPlayer.Name then
			v.Character.Humanoid.Health = 0
		end
	end
end)

a.Touched:connect(function(ss)
	local c = game.Players:FindFirstChild(ss.Parent.Name)
	if c then
		c.Character.Humanoid.Health = 0  --- Dont Edit That
	end
end)

s = Instance.new("Sound")
s.Name = "Music"
s.SoundId = "http://www.roblox.com/asset/?id=468952487"   --- You Can Change The Id For The Music
s.Looped = true
s.Pitch = 1 --- How It Sounds
s.Volume = 1000 --- Volume
s.archivable = false
s.Parent = game.Workspace
wait(1)
s:play()
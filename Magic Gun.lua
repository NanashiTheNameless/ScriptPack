--Created by mpk5lmao Magice gun --
local enabled = true
Player = script.Parent.Parent
c = Player.Character
game:GetService("Chat"):Chat(Player.Character.Head, "Magic Gun Hurrra!!!!!!!!!")
--Player:WaitForDataReady()
mouse = Player:GetMouse()
run = game:GetService("RunService")
function onKeyDown(key)
if not enabled then return end
enabled = true
	Key = key:lower()
	if key == "e" then
		RightShoulder = Player.Character.Torso["Right Shoulder"]
		LeftShoulder = Player.Character.Torso["Left Shoulder"]
		Run = game:GetService("RunService")
        local pow = Instance.new("Sound")
        pow.SoundId = ("http://www.roblox.com/asset/?id=2691586")
        pow.Volume = 1
        pow.Parent = game.Workspace
		x = Instance.new("Part")
		x.BrickColor = BrickColor.new("Cool yellow")
		x.Size = Vector3.new(1, 1, 2)
		x.TopSurface = "Smooth"
		x.BottomSurface = "Smooth"
		x.Shape = "Ball"
		x.Name = Player.Name
		x.CanCollide = false
		x.Transparency = 0
        t = Instance.new("SpecialMesh")
        t.MeshId = "http://www.roblox.com/asset/?id=2697549"
        t.TextureId = ""
        t.MeshType = "FileMesh"
        t.Scale = Vector3.new(1.7, 1.7, 1.7)
        t.Parent = x
        w = Instance.new ("Part")
        w.Size = Vector3.new (1, 1, 1)
        w.TopSurface = "Smooth"
        w.BottomSurface = "Smooth"
        w.BrickColor = BrickColor.new("Mid gray")
        w.Reflectance = 0.3
        w.Material = "Ice"
        w.CanCollide = false
        w.Transparency = 0
        w.Parent = c
        w.Name = "LeftS"
        q = Instance.new("SpecialMesh")
        q.MeshId = "http://www.roblox.com/asset/?id=4372594"
        q.TextureId = ""
        q.MeshType = "FileMesh"
        q.Scale = Vector3.new(1.7, 1.7, 1.7)
        q.Parent = w
        function onTouched(hit)
        local human = hit.Parent:findFirstChild("Humanoid")
        local fon = hit.Parent
        if (human ~= nil) then
                game:GetService("Chat"):Chat(Player.Character.Head, "Hit")
                human.Health = human.Health - 15 -- Change the amount to change the damage.
               -- human.Torso
        end
        end
        x.Touched:connect(onTouched)
        --function a(part)
        --local a = part.Parent:FindFirstChild("Humanoid")
	    --if (a ~= nil) then
		--a.Parent:Remove()
	    --end
        --end

        --x.Touched:connect(a)
		--fd = script.Firedamage:clone()
		--fd.Parent = x
		y = Instance.new("BodyVelocity")
		y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		y.velocity = Player.Character.Torso.CFrame.lookVector*600
		x.Parent = Workspace
		y.Parent = x
        pow:Play()
        w1 = Instance.new ("Weld", c)
        w1.Part0 = w1.Parent["Left Arm"]
        print 'Its on my arm'
        w1.Part1 = w
        w1.C1 = CFrame.fromEulerAnglesXYZ (1.5, 0, 0) *CFrame.new (0, 1.5, 0)
        
		x.CFrame = Player.Character.Torso.CFrame*CFrame.new(0, 0, -5)
		--fd.Disabled = false
		game.Debris:AddItem(x, 6)
        game.Debris:AddItem(pow, 2)
		wait(0.25)
      end
wait(.001)
enabled = true
end
        script.Parent.Parent.Character.Humanoid.MaxHealth = 450
        script.Parent.Parent.Character.Humanoid.Health = 400
        LeftShoulder = Player.Character.Torso["Left Shoulder"]
        for i = .5, 1 do
        LeftShoulder.C0 = LeftShoulder.C0 *CFrame.Angles(0, 0, -1.5)
end

mouse.KeyDown:connect(onKeyDown)

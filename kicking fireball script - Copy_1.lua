:ls --Created by mpk5lmao-- fire ball script.
local enabled = true
Player = script.Parent.Parent
--Player:WaitForDataReady()
mouse = Player:GetMouse()
run = game:GetService("RunService")
function onKeyDown(key)
if not enabled then return end
enabled = false
	Key = key:lower()
	if key == "z" then
		RightShoulder = Player.Character.Torso["Right Shoulder"]
		LeftShoulder = Player.Character.Torso["Left Shoulder"]
		Run = game:GetService("RunService")
		for i = 1, 2 do
			for i = 1, 12 do
				LeftShoulder.C0 = LeftShoulder.C0 *CFrame.Angles(0, 0, -0.16)
				RightShoulder.C0 = RightShoulder.C0 *CFrame.Angles(0, 0, 0.16)
				RightShoulder.C0 = RightShoulder.C0 *CFrame.Angles(0, 0.1, 0)
				LeftShoulder.C0 = LeftShoulder.C0 *CFrame.Angles(0, -0.1, 0)
				Run.Stepped:wait(0.01)
			end
			for i = 1, 12 do
				LeftShoulder.C0 = LeftShoulder.C0 *CFrame.Angles(0, 0.1, 0)
				RightShoulder.C0 = RightShoulder.C0 *CFrame.Angles(0, -0.1, 0)
				LeftShoulder.C0 = LeftShoulder.C0 *CFrame.Angles(0, 0, 0.16)
				RightShoulder.C0 = RightShoulder.C0 *CFrame.Angles(0, 0, -0.16)
				Run.Stepped:wait(0.005)
			end
		end
			for i = 1, 12 do
				LeftShoulder.C0 = LeftShoulder.C0 *CFrame.Angles(0, 0, -0.16)
				RightShoulder.C0 = RightShoulder.C0 *CFrame.Angles(0, 0, 0.16)
				RightShoulder.C0 = RightShoulder.C0 *CFrame.Angles(0, 0.1, 0)
				LeftShoulder.C0 = LeftShoulder.C0 *CFrame.Angles(0, -0.1, 0)
				Run.Stepped:wait(0.005)
			end
		game:GetService("Chat"):Chat(Player.Character.Head, "Fire Ball")
		x = Instance.new("Part")
		x.BrickColor = BrickColor.new("Bright red")
		x.Size = Vector3.new(15, 15, 15)
		x.TopSurface = "Smooth"
		x.BottomSurface = "Smooth"
		x.Shape = "Ball"
		x.Name = Player.Name
		x.CanCollide = false
		x.Transparency = 0.7
        --function a(part)
        --local a = part.Parent:FindFirstChild("Humanoid")
	    --if (a ~= nil) then
		--a.Parent:Remove()
	    --end
        --end

        --x.Touched:connect(a)
		--fd = script.Firedamage:clone()
		--fd.Parent = x
        function onTouched(part)
          if part.Parent ~= nil then
           local h = part.Parent:findFirstChild("Humanoid")
            if h~=nil then
              if touch~=1 then
                  touch=1
                  wait(0.1)
                 local place=game.Players:findFirstChild(part.Parent.Name)
                  if place~=nil then
                     place:remove()
                  end
                  touch=0
               end

			end
   end
end

x.Touched:connect(onTouched)
		y = Instance.new("BodyVelocity")
		y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		y.velocity = Player.Character.Torso.CFrame.lookVector*100
		x.Parent = Workspace
		y.Parent = x
		f = Instance.new("Fire", x)
		f.Size = 15
		f.Heat = 0
		x.CFrame = Player.Character.Torso.CFrame*CFrame.new(0, 0, -12)
		--fd.Disabled = false
		game.Debris:AddItem(x, 6)
		wait(0.25)
		for i = 1, 12 do
			LeftShoulder.C0 = LeftShoulder.C0 *CFrame.Angles(0, 0.1, 0)
			RightShoulder.C0 = RightShoulder.C0 *CFrame.Angles(0, -0.1, 0)
			LeftShoulder.C0 = LeftShoulder.C0 *CFrame.Angles(0, 0, 0.16)
			RightShoulder.C0 = RightShoulder.C0 *CFrame.Angles(0, 0, -0.16)
			Run.Stepped:wait(0.01)
		end
	end
wait(2)
enabled = true
end

mouse.KeyDown:connect(onKeyDown)
Player = game:GetService("Players").chrismash
Name = "Ball"


Gui = Instance.new("ScreenGui")
Gui.Name = "Ball"
TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0, 100, 0, 20)
TextLabel.Position = UDim2.new(0, 500, 0, -20)
TextLabel.BackgroundTransparency = 0.4
TextLabel.BackgroundColor3 = Color3.new(150 / 255, 150 / 255, 150 / 255)
TextLabel.Text = "Mode: Character"
TextLabel.TextWrap = false
TextLabel.TextXAlignment = "Left"
TextLabel.TextYAlignment = "Center"
TextLabel.TextColor3 = Color3.new(75 / 255, 75 / 255, 75 / 255)
TextLabel.FontSize = "Size10"
TextLabel.BorderSizePixel = 0
TextLabel.Parent = Gui
IsBall = false
Moving = false
Jumping = false
Bombing = false
DetBombs = {}


function onSelected(mouse)
	Gui.Parent = Player.PlayerGui 
	mouse.Button1Down:connect(function()
		if IsBall == true then
			Moving = true
			TextLabel.Text = "Mode: Roll"
			while Moving == true and IsBall == true do
				if Ball:FindFirstChild("BodyForce") ~= nil then
					local force = (CFrame.new(Ball.Position, mouse.Hit.p).lookVector * 2500)
					Ball.BodyForce.force = Vector3.new(force.x, 0, force.z)
				end
				wait()
			end
			if Ball:FindFirstChild("BodyForce") ~= nil then Ball.BodyForce.force = Vector3.new(0, 0, 0) end
			TextLabel.Text = "Mode: Ball"
		end
	end)
	mouse.Button1Up:connect(function()
		Moving = false
	end)
	mouse.Move:connect(function()

	end)
	mouse.Idle:connect(function()

	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "q" then
			if IsBall == false then
				TextLabel.Text = "Mode: Ball"
				Ball = Instance.new("Part")
				Ball.Name = "Ball"
				Ball.FormFactor = "Custom"
				Ball.Shape = "Ball"
				Ball.Size = Vector3.new(3, 3, 3)
				Ball.CFrame = Player.Character.Torso.CFrame
				Ball.BrickColor = BrickColor.new("Bright orange")
				Ball.TopSurface = "Smooth"
				Ball.BottomSurface = "Smooth"
				Ball.Elasticity = 1
				Ball.Friction = 1
				Ball.Parent = Player.Character
				Ball.Velocity = Player.Character.Torso.Velocity
				Ball.Touched:connect(function(hit)
					local Sound = Instance.new("Sound")
					Sound.SoundId = "http://www.roblox.com/Asset/?id=10209859"
					Sound.Volume = (math.abs(Ball.Velocity.x) + math.abs(Ball.Velocity.y) + math.abs(Ball.Velocity.z)) / 1000
					Sound.Pitch = 2
					Sound.Parent = Ball
					Sound:Play()
					if hit:IsDescendantOf(Player.Character) ~= true and hit.Anchored == false and math.abs(Ball.Velocity.x) + math.abs(Ball.Velocity.y) + math.abs(Ball.Velocity.z) >= 50 then
						hit:BreakJoints()
					end
				end)
				local Force = Instance.new("BodyForce")
				Force.Parent = Ball
				local Weld = Instance.new("Weld")
				Weld.Part0 = Player.Character.Head
				Weld.Part1 = Ball
				Weld.Parent = Player.Character.Head
				local Sound = Instance.new("Sound")
				Sound.SoundId = "http://www.roblox.com/Asset/?id=22917014"
				Sound.Volume = 1
				Sound.Looped = true
				Sound.Parent = Ball
				Sound:Play()
				local Mesh = Instance.new("SpecialMesh")
				Mesh.MeshType = "Sphere"
				Mesh.Scale = Vector3.new(1.2, 1.2, 1.2)
				Mesh.Parent = Ball
				local C0 = {}
				local C1 = {}
				local Names = {}
				for _, Motor in pairs(Player.Character.Torso:GetChildren()) do
					if Motor.ClassName == "Motor6D" or Motor.ClassName == "Motor" then
						table.insert(C0, Motor.C0)
						table.insert(C1, Motor.C1)
						table.insert(Names, Motor.Name)
						Motor.C0 = CFrame.new()
						Motor.C1 = CFrame.new()
					end
				end
				Instance.new("ForceField", Player.Character)
				Player.Character.Humanoid.Sit = true
				local Jumping = false
				IsBall = true
				while IsBall == true do
					Sound.Pitch = (math.abs(Ball.RotVelocity.x) + math.abs(Ball.RotVelocity.y) + math.abs(Ball.RotVelocity.z)) / 100
					Sound.Volume = (math.abs(Ball.Velocity.x) + math.abs(Ball.Velocity.y) + math.abs(Ball.Velocity.z)) / 100
					if Player.Character.Humanoid.Jump == true or Player.Character.Humanoid.Sit ~= true then
						Player.Character.Humanoid.Sit = true
						if Jumping == false then
							Jumping = true
							coroutine.resume(coroutine.create(function()
								local Velocity = Instance.new("BodyVelocity", Ball)
								Velocity.maxForce = Vector3.new(0, math.huge, 0)
								Velocity.P = 1
								Velocity.velocity = Vector3.new(0, 500, 0)
								wait(0.1)
								Velocity:Remove()
								wait(1)
								Jumping = false
							end))
							local Sound = Instance.new("Sound")
							Sound.SoundId = "rbxasset://sounds\\swoosh.wav"
							Sound.Volume = 1
							Sound.Parent = Ball
							Sound:Play()
						end
					end
					wait()
				end
				for _, Motor in pairs(Player.Character.Torso:GetChildren()) do
					for i = 1, #Names do
						if Motor.Name == Names[i] then
							Motor.C0 = C0[i]
							Motor.C1 = C1[i]
						end
					end
				end
				if Player.Character:FindFirstChild("ForceField") ~= nil then
					Player.Character.ForceField:Remove()
				end
				Player.Character.Humanoid.Sit = false
			else
				IsBall = false
				if Ball:FindFirstChild("Sound") ~= nil then
					Ball.Sound:Stop()
					wait(0.1)
				end
				if Ball:FindFirstChild("ForceField") ~= nil then
					Ball.ForceField:Remove()
				end
				if Ball:FindFirstChild("BodyForce") ~= nil then
					Ball.BodyForce:Remove()
				end
				Ball:Remove()
				Ball = nil
				TextLabel.Text = "Mode: Character"
			end
		end
		if key == "e" then
			if IsBall == true and Ball ~= nil then
				local Sound = Instance.new("Sound")
				Sound.SoundId = "http://www.roblox.com/Asset/?id=22920633"
				Sound.Volume = (math.abs(Ball.Velocity.x) + math.abs(Ball.Velocity.y) + math.abs(Ball.Velocity.z)) / 100
				Sound.Parent = Ball
				Sound:Play()
				local Velocity = Instance.new("BodyVelocity", Ball)
				Velocity.maxForce = Vector3.new(math.huge, 0, math.huge)
				Velocity.P = 10
				Velocity.velocity = Vector3.new(0, 0, 0)
			end
		end
		if key == "z" then
			if IsBall == true and Ball ~= nil and Bombing == false then
				Bombing = true
				local Bomb = Instance.new("Part")
				Bomb.Name = "Bomb"
				Bomb.FormFactor = "Custom"
				Bomb.Shape = "Ball"
				Bomb.Size = Vector3.new(1, 1, 1)
				Bomb.CFrame = Player.Character.Torso.CFrame
				Bomb.BrickColor = BrickColor.new("Really black")
				Bomb.TopSurface = "Smooth"
				Bomb.BottomSurface = "Smooth"
				Bomb.Elasticity = 0
				Bomb.Friction = 0
				local Sound = Instance.new("Sound")
				Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
				Sound.Volume = 0.1
				Sound.Pitch = 2
				Sound.Looped = true
				Sound.Parent = Bomb
				Sound:Play()
				Player.Character.Humanoid.Jump = true
				wait(0.2)
				Bomb.Parent = Workspace
				delay(1.5, function() Bombing = false end)
				coroutine.resume(coroutine.create(function()
					local Part = Instance.new("Part")
					Part.Name = "Bomb Flash"
					Part.FormFactor = "Custom"
					Part.Size = Vector3.new(1, 1, 1)
					Part.CanCollide = false
					Part.CFrame = CFrame.new(Bomb.Position)
					Part.BrickColor = BrickColor.new("Really red")
					Part.TopSurface = "Smooth"
					Part.BottomSurface = "Smooth"
					Part.Parent = Bomb
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "Sphere"
					Mesh.Parent = Part
					local Weld = Instance.new("Weld")
					Weld.Part0 = Bomb
					Weld.Part1 = Part
					Weld.Parent = Bomb
					Bomb.ChildRemoved:connect(function()
						if Bomb:FindFirstChild("Weld") == nil then
							local Weld = Instance.new("Weld")
							Weld.Part0 = Bomb
							Weld.Part1 = Part
							Weld.Parent = Bomb
						end
					end)
					for i = 1, math.huge, 0.1 do
						if Bomb == nil and Part.Parent == nil then break end
						Mesh.Scale = Vector3.new(math.sin(i), math.sin(i), math.sin(i)) + Vector3.new(2, 2, 2)
						Part.Transparency = math.sin(i)
						Bomb.Sound.Pitch = Bomb.Sound.Pitch + 0.05
						wait()
					end
					Part:Remove()
				end))
				wait(3)
				if Bomb ~= nil then
					Bomb.Sound:Stop()
					local Sound = Instance.new("Sound")
					Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
					Sound.Volume = 1
					Sound.Pitch = 1
					Sound.Parent = Bomb
					Sound:Play()
					local e = Instance.new("Explosion")
					e.Position = Bomb.Position
					e.BlastPressure = 1000000
					e.BlastRadius = 25
					e.Parent = Workspace
					coroutine.resume(coroutine.create(function()
						local Part = Instance.new("Part")
						Part.Name = "Explosion Ball"
						Part.FormFactor = "Custom"
						Part.Size = Vector3.new(1, 1, 1)
						Part.Anchored = true
						Part.CanCollide = false
						Part.CFrame = CFrame.new(Bomb.Position)
						Part.BrickColor = BrickColor.new("Institutional white")
						Part.TopSurface = "Smooth"
						Part.BottomSurface = "Smooth"
						Part.Parent = Workspace
						local Mesh = Instance.new("SpecialMesh")
						Mesh.MeshType = "Sphere"
						Mesh.Parent = Part
						Bomb:Remove()
						for i = 0, 1, 0.05 do
							Mesh.Scale = Vector3.new(i, i, i) * 100
							Part.Transparency = i
							wait()
						end
						Part:Remove()
					end))
				end
			end
		end
		if key == "x" then
			if IsBall == true and Ball ~= nil and Bombing == false then
				Bombing = true
				local Bomb = Instance.new("Part")
				Bomb.Name = "Bomb"
				Bomb.FormFactor = "Custom"
				Bomb.Shape = "Ball"
				Bomb.Size = Vector3.new(1, 1, 1)
				Bomb.CFrame = Player.Character.Torso.CFrame
				Bomb.BrickColor = BrickColor.new("Really black")
				Bomb.TopSurface = "Smooth"
				Bomb.BottomSurface = "Smooth"
				Bomb.Elasticity = 0
				Bomb.Friction = 0
				local Sound = Instance.new("Sound")
				Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
				Sound.Volume = 0.1
				Sound.Pitch = 2
				Sound.Looped = true
				Sound.Parent = Bomb
				Sound:Play()
				Player.Character.Humanoid.Jump = true
				wait(0.2)
				Bomb.Parent = Workspace
				table.insert(DetBombs, Bomb)
				delay(3, function() Bombing = false end)
				coroutine.resume(coroutine.create(function()
					local Part = Instance.new("Part")
					Part.Name = "Bomb Flash"
					Part.FormFactor = "Custom"
					Part.Size = Vector3.new(1, 1, 1)
					Part.CanCollide = false
					Part.CFrame = CFrame.new(Bomb.Position)
					Part.BrickColor = BrickColor.new("Bright yellow")
					Part.TopSurface = "Smooth"
					Part.BottomSurface = "Smooth"
					Part.Parent = Bomb
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "Sphere"
					Mesh.Parent = Part
					local Weld = Instance.new("Weld")
					Weld.Part0 = Bomb
					Weld.Part1 = Part
					Weld.Parent = Bomb
					Bomb.ChildRemoved:connect(function()
						if Bomb:FindFirstChild("Weld") == nil then
							local Weld = Instance.new("Weld")
							Weld.Part0 = Bomb
							Weld.Part1 = Part
							Weld.Parent = Bomb
						end
					end)
					for i = 1, math.huge, 0.1 do
						if Bomb == nil and Part.Parent == nil then break end
						Mesh.Scale = Vector3.new(math.sin(i), math.sin(i), math.sin(i)) + Vector3.new(2, 2, 2)
						Part.Transparency = math.sin(i)
						wait()
					end
					Part:Remove()
				end))
			end
		end
		if key == "c" then
			if IsBall == true and Ball ~= nil and Bombing == false and #DetBombs > 0 then
				Bombing = true
				for i = 1, #DetBombs do
					if DetBombs[i].Parent ~= nil then
						coroutine.resume(coroutine.create(function(Bomb)
							for x = 2, 5, 0.1 do
								Bomb.Sound.Pitch = x
								wait()
							end
							Bomb.Sound:Stop()
							local Sound = Instance.new("Sound")
							Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
							Sound.Volume = 1
							Sound.Pitch = 1
							Sound.Parent = Bomb
							Sound:Play()
							local e = Instance.new("Explosion")
							e.Position = Bomb.Position
							e.BlastPressure = 1000000
							e.BlastRadius = 25
							e.Parent = Workspace
							coroutine.resume(coroutine.create(function()
								local Part = Instance.new("Part")
								Part.Name = "Explosion Ball"
								Part.FormFactor = "Custom"
								Part.Size = Vector3.new(1, 1, 1)
								Part.Anchored = true
								Part.CanCollide = false
								Part.CFrame = CFrame.new(Bomb.Position)
								Part.BrickColor = BrickColor.new("Institutional white")
								Part.TopSurface = "Smooth"
								Part.BottomSurface = "Smooth"
								Part.Parent = Workspace
								local Mesh = Instance.new("SpecialMesh")
								Mesh.MeshType = "Sphere"
								Mesh.Parent = Part
								Bomb:Remove()
								for x = 0, 1, 0.05 do
									Mesh.Scale = Vector3.new(x, x, x) * 100
									Part.Transparency = x
									wait()
								end
								Part:Remove()
							end))
						end), DetBombs[i])
					end
					wait(math.random(10, 50) / 100)
				end
				DetBombs = {}
				Bombing = false
			end
		end
		if key == "v" then
			if IsBall == true and Ball ~= nil and Bombing == false then
				Bombing = true
				local Bomb = Instance.new("Part")
				Bomb.Name = "Bomb"
				Bomb.FormFactor = "Custom"
				Bomb.Shape = "Ball"
				Bomb.Size = Vector3.new(1, 1, 1)
				Bomb.CFrame = Player.Character.Torso.CFrame
				Bomb.Anchored = true
				Bomb.CanCollide = false
				Bomb.BrickColor = BrickColor.new("Really black")
				Bomb.Transparency = 0.95
				Bomb.TopSurface = "Smooth"
				Bomb.BottomSurface = "Smooth"
				Bomb.Elasticity = 0
				Bomb.Friction = 0
				local Sound = Instance.new("Sound")
				Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
				Sound.Volume = 0.05
				Sound.Pitch = 0.5
				Sound.Looped = true
				Sound.Parent = Bomb
				Sound:Play()
				Player.Character.Humanoid.Jump = true
				wait(0.2)
				Bomb.Parent = Workspace
				delay(1.5, function() Bombing = false end)
				coroutine.resume(coroutine.create(function()
					local Part = Instance.new("Part")
					Part.Name = "Bomb Flash"
					Part.FormFactor = "Custom"
					Part.Size = Vector3.new(1, 1, 1)
					Part.CanCollide = false
					Part.CFrame = CFrame.new(Bomb.Position)
					Part.BrickColor = BrickColor.new("Really blue")
					Part.Transparency = 0.95
					Part.TopSurface = "Smooth"
					Part.BottomSurface = "Smooth"
					Part.Parent = Bomb
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "Sphere"
					Mesh.Parent = Part
					local Weld = Instance.new("Weld")
					Weld.Part0 = Bomb
					Weld.Part1 = Part
					Weld.Parent = Bomb
					Bomb.ChildRemoved:connect(function()
						if Bomb:FindFirstChild("Weld") == nil then
							local Weld = Instance.new("Weld")
							Weld.Part0 = Bomb
							Weld.Part1 = Part
							Weld.Parent = Bomb
						end
					end)
					for i = 1, math.huge, 0.1 do
						if Bomb == nil and Part.Parent == nil then break end
						Mesh.Scale = Vector3.new(math.sin(i), math.sin(i), math.sin(i)) + Vector3.new(2, 2, 2)
						wait()
					end
					Part:Remove()
				end))
				local Continue = false
				while Continue == false do
					for _, Players in pairs(game:GetService("Players"):GetChildren()) do
						if Players.Character ~= nil and Players ~= Player then
							if Players.Character:FindFirstChild("Torso") ~= nil then
								if (Players.Character.Torso.Position - Bomb.Position).magnitude <= 10 then
									Continue = true
								end
							end
						end
					end
					wait()
				end
				if Bomb ~= nil then
					Bomb.Sound:Stop()
					local Sound = Instance.new("Sound")
					Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
					Sound.Volume = 1
					Sound.Pitch = 1
					Sound.Parent = Bomb
					Sound:Play()
					local e = Instance.new("Explosion")
					e.Position = Bomb.Position
					e.BlastPressure = 1000000
					e.BlastRadius = 25
					e.Parent = Workspace
					coroutine.resume(coroutine.create(function()
						local Part = Instance.new("Part")
						Part.Name = "Explosion Ball"
						Part.FormFactor = "Custom"
						Part.Size = Vector3.new(1, 1, 1)
						Part.Anchored = true
						Part.CanCollide = false
						Part.CFrame = CFrame.new(Bomb.Position)
						Part.BrickColor = BrickColor.new("Institutional white")
						Part.TopSurface = "Smooth"
						Part.BottomSurface = "Smooth"
						Part.Parent = Workspace
						local Mesh = Instance.new("SpecialMesh")
						Mesh.MeshType = "Sphere"
						Mesh.Parent = Part
						Bomb:Remove()
						for i = 0, 1, 0.05 do
							Mesh.Scale = Vector3.new(i, i, i) * 100
							Part.Transparency = i
							wait()
						end
						Part:Remove()
					end))
				end
			end
		end
		if key == "b" then
			if IsBall == true and Ball ~= nil then
				local Rope = Instance.new("Part")
				Rope.Name = "Rope"
				Rope.BrickColor = BrickColor.new("Reddish brown")
				Rope.TopSurface = 0
				Rope.BottomSurface = 0
				Rope.FormFactor = 0
				Rope.Size = Vector3.new(1, 1, 1)
				Rope.Transparency = 0
				Rope.Anchored = false
				Rope.CanCollide = false
				Rope.CFrame = CFrame.new((Ball.Position + mouse.Hit.p) / 2, mouse.Hit.p)
				Rope.Parent = Workspace
				local Mesh = Instance.new("SpecialMesh")
				Mesh.MeshType = "Brick"
				Mesh.Scale = Vector3.new(0.25, 0.25, (Ball.Position - mouse.Hit.p).magnitude)
				Mesh.Parent = Rope
				local Joint = Instance.new("Glue")
				Joint.Part0 = Ball
				Joint.Part1 = Rope
				Joint.C0 = CFrame.new(0, 0, -(Ball.Position - mouse.Hit.p).magnitude)
				--Joint.C1 = CFrame.new(0, 0, (Ball.Position - mouse.Hit.p).magnitude / 2)
				Joint.Parent = Ball
				--Rope.Anchored = true
				--Ball.Anchored = true
				--p = Instance.new("Part", Workspace)
				--p.CFrame = CFrame.new(Ball.Position) + Joint.C0.p
				--p = Instance.new("Part", Workspace)
				--p.CFrame = CFrame.new(Ball.Position) + Joint.C1.p
			end
		end
	end)
	mouse.KeyUp:connect(function(key)
		key = key:lower()
		if key == "e" then
			if IsBall == true and Ball ~= nil then
				for _, part in pairs(Ball:GetChildren()) do
					if part.ClassName == "BodyVelocity" then
						part:Remove()
					end
				end
			end
		end
	end)
end

function onDeselected()
	Gui.Parent = nil
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = Name
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
	end
	Player = script.Parent.Parent.Parent
	Tool = script.Parent
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
end
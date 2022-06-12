--CubicFlares
--Version 1.1.3 (Minor Improvements and Bug Fixes)

DAMAGE = 50
local Player = game.Players.LocalPlayer
local Mouse = Player:getMouse()
local Tool = Instance.new("Tool")
Tool.Parent =  Player.Backpack
Player.Character.Humanoid.MaxHealth = 500
Player.Character.Humanoid.Health = 500
Player.Character.Humanoid.WalkSpeed = 25
Tool.Name = ("Laser Blade - Inactive")
local Handle = Instance.new("Part")
Handle.Parent = Tool
Handle.Anchored = false
Handle.BrickColor = BrickColor.new("Dark indigo")
Handle.Material = ("Neon")
Handle.Name = ("Handle")
Handle.TopSurface = ("SmoothNoOutlines")
Handle.BottomSurface = ("SmoothNoOutlines")
Handle.Size = Vector3.new(0.5,3,0.5)
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = Handle
local Part = Instance.new("Part")
Part.Parent = Tool
Part.Name = ("Middle")
Part.CFrame = Handle.CFrame + Vector3.new(0,3.25,0)
Part.Anchored = false
Part.BrickColor = BrickColor.new("Dark indigo")
Part.Material = ("Neon")
Part.TopSurface = ("SmoothNoOutlines")
Part.BottomSurface = ("SmoothNoOutlines")
Part.Reflectance = 0
Part.Size = Vector3.new(0.5,4.84,1.5)
local Wedge = Instance.new("WedgePart")
Wedge.Parent = Tool
Wedge.CFrame = Part.CFrame + Vector3.new(0,4.18,0)
Wedge.Anchored = false
Wedge.BrickColor = BrickColor.new("Dark indigo")
Wedge.Material = ("Neon")
Wedge.TopSurface = ("SmoothNoOutlines")
Wedge.BottomSurface = ("SmoothNoOutlines")
Wedge.Reflectance = 0
Wedge.Name = ("Blade")
Wedge.Size = Vector3.new(0.5,3.5,1.5)
local Weld = Instance.new("Weld")
Weld.Parent = Handle
Weld.Part0 = Wedge
Weld.C0 = Wedge.CFrame:inverse()
Weld.Part1 = Handle
Weld.C1 = Handle.CFrame:inverse()
local Weld3 = Instance.new("Weld")
Weld3.Parent = Part
Weld3.Part0 = Wedge
Weld3.C0 = Wedge.CFrame:inverse()
Weld3.Part1 = Part
Weld3.C1 = Part.CFrame:inverse()
local Weld4 = Instance.new("Weld")
Weld4.Parent = Wedge
Weld4.Part0 = Part
Weld4.C0 = Part.CFrame:inverse()
Weld4.Part1 = Wedge
Weld4.C1 = Wedge.CFrame:inverse()
Hurt = true
local function Active()
	Tool.Name = ("Laser Blade - Active")
end
local function Inactive()
	Tool.Name = ("Laser Blade - Inactive")
end
local function Draw()
	local Sound = Instance.new("Sound")
	Sound.Parent = Handle
	Sound.Volume = 1
	Sound.Pitch = 0.5
	Sound.SoundId = ("http://www.roblox.com/asset/?id=11998796")
	Sound:Play()
end
local function Damage(part)
	if part.Name == ("Head") or part.Name == ("Torso") or part.Name == ("Left Arm") or part.Name == ("Right Arm") or part.Name == ("Left Leg") or part.Name == ("Right Leg") then
		if Hurt == true then		
		Hurt = false
		part.Parent.Humanoid:TakeDamage(DAMAGE)
		wait(0.1)
		Hurt = true
		end
		end
end
local Enabled = true
local function attack()
	if Enabled == true then
		Enabled = false
	local Animation = Instance.new("Animation")
	Animation.AnimationId = ("rbxassetid://80395075")
	Animation.Name = ("Swing")
	Animation.Parent = Tool
	local animTrack = Player.Character.Humanoid:LoadAnimation(Animation)
	animTrack:Play()
	local Sound = Instance.new("Sound")
	Sound.Parent = Handle
	Sound.Volume = 3
	Sound.SoundId = ("rbxassetid://136847657")
	Sound.Pitch = 0.5
	Sound:Play()
	Wedge.Touched:connect(Damage)
	Part.Touched:connect(Damage)
	wait(0.5)
	Enabled = true
	end
	end
Tool.Activated:connect(attack)
local function Charge(key)
	if Enabled == true then
	if (key == "q") then
		if Tool.Name == ("Laser Blade - Active") then
			Enabled = false
			local Time = 0
			local Animation = Instance.new("Animation")
	Animation.AnimationId = ("http://www.roblox.com/Asset?ID=159223413")
	Animation.Parent = Tool
	Animation.Name = ("Charge")
	local animTrack = Player.Character.Humanoid:LoadAnimation(Animation)
	animTrack:Play()
	Hurt = false
		Player.Character.Humanoid.WalkSpeed = 50
		local Sound = Instance.new("Sound")
		Sound.Parent = Player.Character.Humanoid
		Sound.Volume = 1
		Sound.SoundId = ("rbxassetid://138187451")
		Sound:Play()
		wait(5)
		Sound:remove()
		Hurt = true
		animTrack:Stop()
		Player.Character.Humanoid.WalkSpeed = 25
		Enabled = true
		end
		end
	end
	end
Mouse.KeyDown:connect(Charge)
local function Hit(part)
if part.Name == ("Head") or part.Name == ("Torso") or part.Name == ("Left Arm") or part.Name == ("Right Arm") or part.Name == ("Left Leg") or part.Name == ("Right Leg") and part.Parent.Name ~= ("Player1") then
local Damage = DAMAGE
part.Parent.Humanoid:TakeDamage(Damage)
game.Workspace.Bullet1:remove()
wait(0.5)
end
end
local function Hit2(part)
	if part.Name ~= ("Baseplate") or part.Name ~= ("Base") or part.Name ~= ("Middle") or   part.Name ~= ("Blade") then
part.BrickColor = BrickColor.Black()
part.Position = part.Position + Player.Character.Head.CFrame.lookVector*5
print(part.Name)
part.CanCollide = true
local Particle = Instance.new("ParticleEmitter")
Particle.Parent = part
Particle.Texture = ("http://www.roblox.com/asset/?id=311395391")
Particle.Lifetime = NumberRange.new(1,1)
Particle.Rate = 5
local Sound = Instance.new("Sound")
Sound.Parent = part
Sound.Volume = 1
Sound.Pitch = 0.5
Sound.SoundId = ("http://www.roblox.com/asset/?id=247718165")
Sound:Play()
part.Anchored = true
repeat
wait(0.1)
part.CFrame = part.CFrame + Vector3.new(0,1,0)
part.Transparency = part.Transparency + 0.1	
until part.Transparency > 1
part:remove()
	end
	end
local function Zap(key)
	if Enabled == true then
		if (key == "e")then
			if Tool.Name == ("Laser Blade - Active") then
			Enabled = false
			local Animation = Instance.new("Animation")
			Animation.AnimationId = ("rbxassetid://32659706")
			local animTrack = Player.Character.Humanoid:LoadAnimation(Animation)
			animTrack:Play()
			wait(0.25)
			local Bullet = Instance.new("Part")
	Bullet.Name = ("Bullet1")
	Bullet.Anchored = false
	Bullet.Parent = game.Workspace
	Bullet.Size = Vector3.new(4,4,4)
	Bullet.Material = ("Neon")
	Bullet.Shape = ("Ball")
	Bullet.BrickColor = BrickColor.new("Dark indigo")
	Bullet.TopSurface = ("Smooth")
	Bullet.BottomSurface = ("Smooth")
	Bullet.CanCollide = false
	Bullet.Position = Wedge.Position + Vector3.new(0,5,0)
	Bullet.CFrame = CFrame.new(Bullet.Position,Mouse.Hit.p)
	local v = Instance.new("BodyVelocity",Bullet)
	v.velocity = Bullet.CFrame.lookVector*360
	v.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	local Sound = Instance.new("Sound")
	Sound.Parent = Part
	Sound.Volume = 1
	Sound.SoundId = ("http://www.roblox.com/asset/?id=247718107")
	Sound.Pitch = 1
	Sound:Play()
	wait(0.1)
	Bullet.Touched:connect(Hit)
	wait(0.3)
	Enabled = true
			
		end
	end
end
end
Mouse.KeyDown:connect(Zap)
local Open = true
local function Shield(key)
if (key == "r") then
	if Enabled == true then
		if Open == true then
			Open = false
		if Tool.Name == ("Laser Blade - Active") then
			Player.Character.Humanoid.WalkSpeed = 0
			local Animation = Instance.new("Animation")
			Animation.AnimationId = ("http://www.roblox.com/asset/?id=235542946")
			local animTrack = Player.Character.Humanoid:LoadAnimation(Animation)
			animTrack:Play()
			local Part = Instance.new("Part")
			Part.Name = ("Shield")
			Part.Parent = game.Workspace
			Part.Rotation = Player.Character.Head.Rotation
			Part.Size = Vector3.new(12.04,14.15,0.2)
			Part.Anchored = true
			Part.CanCollide = false
			Part.BrickColor = BrickColor.new("Dark indigo")
			Part.Material = ("Neon")
			Part.Position = Wedge.Position + Player.Character.Head.CFrame.lookVector*10 - Vector3.new(0,5,0)
			Part.Anchored = true
			Part.Touched:connect(Hit2)
			local Sound1 = Instance.new("Sound")
			Sound1.Parent = Wedge
			Sound1.Volume = 1
			Sound1.Pitch = 1
			Sound1.SoundId = ("http://www.roblox.com/asset/?id=247718230")
			Sound1:Play()
			wait(0.5)
			local Sound2 = Instance.new("Sound")
			Sound2.Parent = Wedge
			Sound2.Volume = 1
			Sound2.Pitch = 1
			Sound2.SoundId = ("http://www.roblox.com/asset/?id=247718230")
			Sound2:Play()
			wait(0.5)
			local Sound3 = Instance.new("Sound")
			Sound3.Parent = Wedge
			Sound3.Volume = 1
			Sound3.Pitch = 1
			Sound3.SoundId = ("http://www.roblox.com/asset/?id=247718230")
			Sound3:Play()
			wait(1)
			Enabled = false
			Open = false
			if Enabled == false then
			game.Workspace.Shield:remove()
			Player.Character.Humanoid.WalkSpeed = 25
			animTrack:Stop()
			Open = true
			Enabled = true
			end
			end
		end
	end
end
end
Mouse.KeyDown:connect(Shield)
local function Effect()
if Tool.Name == ("Laser Blade - Active") then
	repeat
	wait(0.1)
	local Effect1 = Instance.new("Part")
	Effect1.Parent = game.Workspace
	Effect1.Material = Handle.Material
	Effect1.Size = Handle.Size
	Effect1.CanCollide = false
	Effect1.Anchored = true
	Effect1.CFrame = Handle.CFrame
	Effect1.BrickColor = Handle.BrickColor
	local Effect2 = Instance.new("Part")
	Effect2.Parent = game.Workspace
	Effect2.Material = Part.Material
	Effect2.Size = Part.Size
	Effect2.CanCollide = false
	Effect2.Anchored = true
	Effect2.CFrame = Part.CFrame
	Effect2.BrickColor = Part.BrickColor
	local Effect3 = Instance.new("WedgePart")
	Effect3.Parent = game.Workspace
	Effect3.Material = Wedge.Material
	Effect3.Size = Wedge.Size
	Effect3.CanCollide = false
	Effect3.Anchored = true
	Effect3.CFrame = Wedge.CFrame
	Effect3.BrickColor = Wedge.BrickColor
	wait(0.1)
	local Effect7 = Instance.new("Part")
	Effect7.Parent = game.Workspace
	Effect7.Material = Handle.Material
	Effect7.Size = Handle.Size
	Effect7.CanCollide = false
	Effect7.Anchored = true
	Effect7.CFrame = Handle.CFrame
	Effect7.BrickColor = Handle.BrickColor
	local Effect8 = Instance.new("Part")
	Effect8.Parent = game.Workspace
	Effect8.Material = Part.Material
	Effect8.Size = Part.Size
	Effect8.CanCollide = false
	Effect8.Anchored = true
	Effect8.CFrame = Part.CFrame
	Effect8.BrickColor = Part.BrickColor
	local Effect9 = Instance.new("WedgePart")
	Effect9.Parent = game.Workspace
	Effect9.Material = Wedge.Material
	Effect9.Size = Wedge.Size
	Effect9.CanCollide = false
	Effect9.Anchored = true
	Effect9.CFrame = Wedge.CFrame
	Effect9.BrickColor = Wedge.BrickColor
	wait(0.1)
	local Effect4 = Instance.new("Part")
	Effect4.Parent = game.Workspace
	Effect4.Material = Handle.Material
	Effect4.Size = Handle.Size
	Effect4.CanCollide = false
	Effect4.Anchored = true
	Effect4.CFrame = Handle.CFrame
	Effect4.BrickColor = Handle.BrickColor
	local Effect5 = Instance.new("Part")
	Effect5.Parent = game.Workspace
	Effect5.Material = Part.Material
	Effect5.Size = Part.Size
	Effect5.CanCollide = false
	Effect5.Anchored = true
	Effect5.CFrame = Part.CFrame
	Effect5.BrickColor = Part.BrickColor
	local Effect6 = Instance.new("WedgePart")
	Effect6.Parent = game.Workspace
	Effect6.Material = Wedge.Material
	Effect6.Size = Wedge.Size
	Effect6.CanCollide = false
	Effect6.Anchored = true
	Effect6.CFrame = Wedge.CFrame
	Effect6.BrickColor = Wedge.BrickColor
		Effect1.Transparency = 0.1
		Effect2.Transparency = 0.1
		Effect3.Transparency = 0.1
		wait(0.035)
		Effect4.Transparency = 0.1
		Effect5.Transparency = 0.1
		Effect6.Transparency = 0.1
		wait(0.035)
		Effect7.Transparency = 0.1
		Effect8.Transparency = 0.1
		Effect9.Transparency = 0.1
		wait(0.035)
		Effect1.Transparency = 0.2
		Effect2.Transparency = 0.2
		Effect3.Transparency = 0.2
		wait(0.035)
		Effect4.Transparency = 0.2
		Effect5.Transparency = 0.2
		Effect6.Transparency = 0.2
		wait(0.035)
		Effect7.Transparency = 0.2
		Effect8.Transparency = 0.2
		Effect9.Transparency = 0.2
		wait(0.035)
		Effect1.Transparency = 0.3
		Effect2.Transparency = 0.3
		Effect3.Transparency = 0.3
		wait(0.035)
		Effect4.Transparency = 0.3
		Effect5.Transparency = 0.3
		Effect6.Transparency = 0.3
		wait(0.035)
		Effect7.Transparency = 0.3
		Effect8.Transparency = 0.3
		Effect9.Transparency = 0.3
		wait(0.035)
		Effect1.Transparency = 0.4
		Effect2.Transparency = 0.4
		Effect3.Transparency = 0.4
		wait(0.035)
		Effect4.Transparency = 0.4
		Effect5.Transparency = 0.4
		Effect6.Transparency = 0.4
		wait(0.035)
		Effect7.Transparency = 0.4
		Effect8.Transparency = 0.4
		Effect9.Transparency = 0.4
		wait(0.035)
		Effect1.Transparency = 0.5
		Effect2.Transparency = 0.5
		Effect3.Transparency = 0.5
		wait(0.035)
		Effect4.Transparency = 0.5
		Effect5.Transparency = 0.5
		Effect6.Transparency = 0.5
		wait(0.035)
		Effect7.Transparency = 0.5
		Effect8.Transparency = 0.5
		Effect9.Transparency = 0.5
		wait(0.035)
		Effect1.Transparency = 0.6
		Effect2.Transparency = 0.6
		Effect3.Transparency = 0.6
		wait(0.035)
		Effect4.Transparency = 0.6
		Effect5.Transparency = 0.6
		Effect6.Transparency = 0.6
		wait(0.035)
		Effect7.Transparency = 0.6
		Effect8.Transparency = 0.6
		Effect9.Transparency = 0.6
		wait(0.035)
		Effect1.Transparency = 0.7
		Effect2.Transparency = 0.7
		Effect3.Transparency = 0.7
		wait(0.035)
		Effect4.Transparency = 0.7
		Effect5.Transparency = 0.7
		Effect6.Transparency = 0.7
		wait(0.035)
		Effect7.Transparency = 0.7
		Effect8.Transparency = 0.7
		Effect9.Transparency = 0.7
		wait(0.035)
		Effect1.Transparency = 0.8
		Effect2.Transparency = 0.8
		Effect3.Transparency = 0.8
		wait(0.035)
		Effect4.Transparency = 0.8
		Effect5.Transparency = 0.8
		Effect6.Transparency = 0.8
		wait(0.035)
		Effect7.Transparency = 0.8
		Effect8.Transparency = 0.8
		Effect9.Transparency = 0.8
		wait(0.035)
		Effect1.Transparency = 0.9
		Effect2.Transparency = 0.9
		Effect3.Transparency = 0.9
		wait(0.035)
		Effect4.Transparency = 0.9
		Effect5.Transparency = 0.9
		Effect6.Transparency = 0.9
		wait(0.035)
		Effect7.Transparency = 0.9
		Effect8.Transparency = 0.9
		Effect9.Transparency = 0.9
		wait(0.035)
		Effect1.Transparency = 1
		Effect2.Transparency = 1
		Effect3.Transparency = 1
		wait(0.035)
		Effect4.Transparency = 1
		Effect5.Transparency = 1
		Effect6.Transparency = 1
		wait(0.035)
		Effect7.Transparency = 1
		Effect8.Transparency = 1
		Effect9.Transparency = 1
		wait(0.035)
	until Tool.Name == ("Laser Blade - Inactive")
end
end
Tool.Equipped:connect(Effect)
Tool.Equipped:connect(Draw)
Tool.Equipped:connect(Active)
Tool.Unequipped:connect(Inactive)
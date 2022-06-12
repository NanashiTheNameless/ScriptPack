--Knife script by DMS
--Just a regular knife script
OOHNELLY = Instance.new("Tool")
NELLAY = Instance.new("Animation")
NOTSEEEE = Instance.new("Part")
LEECHYISHERE = Instance.new("Sound")
SPECIALMESHXDDDD = Instance.new("SpecialMesh")
SEIGHEIL = Instance.new("Sound")
OOHNELLY.Name = "Knife"
OOHNELLY.Parent = game.Players.LocalPlayer.Backpack
OOHNELLY.GripForward = Vector3.new(-1.74845553e-007, 4.37113812e-008, 1)
OOHNELLY.GripPos = Vector3.new(0.487703323, -3.7742065e-010, 0.00863459334)
OOHNELLY.GripRight = Vector3.new(-7.64274186e-015, -1, 4.37113812e-008)
OOHNELLY.GripUp = Vector3.new(-1, 0, -1.74845553e-007)
OOHNELLY.CanBeDropped = false -- no removal unless you wanna shank urself
NELLAY.Name = "Whack"
NELLAY.Parent = OOHNELLY
NELLAY.AnimationId = "http://www.roblox.com/Asset?ID=94161088"
NOTSEEEE.Name = "Handle"
NOTSEEEE.Parent = OOHNELLY
NOTSEEEE.BrickColor = BrickColor.new("Really black")
NOTSEEEE.Reflectance = 0.0099999997764826
NOTSEEEE.Position = Vector3.new(-5.70826387, 0.254999995, 10.8100071)
NOTSEEEE.Size = Vector3.new(1.54999995, 0.50999999, 0.699999988)
NOTSEEEE.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
LEECHYISHERE.Name = "Swoosh"
LEECHYISHERE.Parent = NOTSEEEE
LEECHYISHERE.Pitch = 3
LEECHYISHERE.SoundId = "http://www.roblox.com/asset?id=153647529"
LEECHYISHERE.Volume = 1
LEECHYISHERE.PlayOnRemove = true
SPECIALMESHXDDDD.Parent = NOTSEEEE
SPECIALMESHXDDDD.MeshId = "rbxassetid://442337985"
SPECIALMESHXDDDD.Offset = Vector3.new(-0.600000024, 0, -0.200000003)
SPECIALMESHXDDDD.Scale = Vector3.new(0.300000012, 0.300000012, 0.300000012)
SPECIALMESHXDDDD.TextureId = "rbxassetid://442337993"
SPECIALMESHXDDDD.MeshType = "FileMesh"
SEIGHEIL.Name = "Ting"
SEIGHEIL.Parent = NOTSEEEE
SEIGHEIL.SoundId = "rbxassetid://429400881"
SEIGHEIL.Volume = 0.20000000298023
OOHNELLY = OOHNELLY
Handle = OOHNELLY:WaitForChild("Handle")

Players = game:GetService("Players")
Debris = game:GetService("Debris")
InsertService = game:GetService("InsertService")

WhackAnim = OOHNELLY:WaitForChild("Whack")
SlashSound = Handle:WaitForChild("Swoosh")
HitSound = Handle:WaitForChild("Ting")

Damage = 100 --the damage dealt

ReloadTime = 1.45 --time between each swing

Kills = 0 --start off with 0 killstreak

function TagHumanoid(humanoid, player) --registers you actually hitting the guy
	HitSound:Play()
	local Creator_Tag = Instance.new("ObjectValue")
	Creator_Tag.Name = "creator"
	Creator_Tag.Value = player
	Debris:AddItem(Creator_Tag, 2)
	Creator_Tag.Parent = humanoid
end

function UntagHumanoid(humanoid) --removes the tag so that if someone kills the person you tagged, it doesnt register you killing that person.
	for i, v in pairs(humanoid:GetChildren()) do
		if v:IsA("ObjectValue") and v.Name == "creator" then
			v:Destroy()
		end
	end
end

function Blow(Hit) --registers the hit, deals damage to the player, and if the humanoid has 0 health a kill is added into the killstreak.
	if Hit and Hit.Parent then
		local character = Hit.Parent
		local humanoid = character:FindFirstChild("Humanoid")
		if Humanoid and Humanoid ~= humanoid and humanoid and Humanoid.Health > 0 and humanoid.Health > 0 then
			local Right_Arm = Character:FindFirstChild("Right Arm")
			if Right_Arm then
				local Joint = Right_Arm:FindFirstChild("RightGrip")
				if (Joint and (Joint.Part0 == Handle or Joint.Part1 == Handle)) then
					humanoid:TakeDamage(Damage) --deal regular damage or instakill normal health players if a ninja
					UntagHumanoid(humanoid)
					TagHumanoid(humanoid, Player)
				end
			end
		end
	end
end

function Activated() --when you swing
	if OOHNELLY.Enabled then
		OOHNELLY.Enabled = false 
		Whack = Humanoid:LoadAnimation(WhackAnim)
		if Whack then
			Whack:Play()
			SlashSound:Play()
			wait(.6)
			Whack:Stop()
		end
		OOHNELLY.Enabled = true
	end
end

function Equipped(mouse) --get everything settled up
	Character = OOHNELLY.Parent
	Player = Players:GetPlayerFromCharacter(Character)
	Humanoid = Character:FindFirstChild("Humanoid")
	Torso = Character:FindFirstChild("Torso")
	if not Humanoid or not Torso then
		return 	
	end
	
	if not OOHNELLY.Enabled then
		wait(ReloadTime)
		OOHNELLY.Enabled = true
	end
end

function Unequipped()
	if Whack then
		Whack:Stop() --stop the swing anim so we dont get stuck
	end
end

--important stuff to register what is what. you need these if you want to do stuff with the OOHNELLY itself.
OOHNELLY.Activated:connect(Activated)
OOHNELLY.Equipped:connect(Equipped)
OOHNELLY.Unequipped:connect(Unequipped)

Handle.Touched:connect(Blow)
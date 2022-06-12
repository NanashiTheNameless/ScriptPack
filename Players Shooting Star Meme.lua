--[[
	 Shooting Stars script by mr steal yo bork, idea by "Deyztro"
     Press on someone to transform them into a meme :)
--]]
explode = false -- if u want them to explode or not
local countdown = 7 -- seconds before the explosion if u have it on 
plr = game.Players.LocalPlayer
char = plr.Character
hum = char.Humanoid
tool = Instance.new("HopperBin", plr.Backpack)
tool.Name = "Shoot em"
mouse = plr:GetMouse()
flyspeed = 20


tool.Selected:connect(function()
	mouse.Button1Down:connect(function()
		if tool.Active == true and mouse.Target.Parent:FindFirstChild("Humanoid") or mouse.Target.Parent.Parent:FindFirstChild("Humanoid") or mouse.Target.Parent:FindFirstChild("Torso") then
		local torso = mouse.Target.Parent:FindFirstChild("Torso")
		local thum = torso.Parent:FindFirstChild("Humanoid")
		if thum ~= hum then
			
		local humrootpart = torso.Parent:FindFirstChild("HumanoidRootPart")
		local bv = Instance.new("BodyVelocity")
	    bv.MaxForce = Vector3.new(1e8,1e8,1e8)
	    bv.Velocity = Vector3.new(flyspeed,flyspeed,flyspeed)
		bv.Parent = torso
		
		local pe = Instance.new("ParticleEmitter", torso)
		pe.Texture = "rbxassetid://32629323"
		pe.Size = NumberSequence.new(0.5)
		pe.Lifetime = NumberRange.new(5,10)
		pe.Rate = 50
		pe.VelocitySpread = 45
		pe.Speed = NumberRange.new(10)
		
		local stars = Instance.new("Sound", torso)
		stars.Volume = 1
		stars.SoundId = "rbxassetid://447492777"
		stars.TimePosition = 23.5
		stars:Play()
		if explode == true then
		local ex = Instance.new("Sound", torso)
		ex.Volume = 1
		ex.SoundId = "rbxassetid://138186576"
		ex.TimePosition = 23.5
		ex:Play()
		for i = 1,countdown do
		tool.Name = "Exploding in " .. countdown - i .. "."
		wait(1) 
		end
		tool.Name = "Shoot em // by mr steal yo bork"
		local explosion = Instance.new("Explosion", torso)
		explosion.Position = torso.Position
		ex.TimePosition = 0.4
		ex:Play()
		stars:Stop()
		torso.Parent:BreakJoints()
		pe:Destroy()
		end
		end
		end
	end)
end)
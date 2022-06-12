wait()
-- UNFINISHED --
chat = game:GetService("Chat")
plr = game.Players.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
cIsPressed = false
cpos = char.Head.CFrame:toWorldSpace(CFrame.new(0,2,0))
soundid = "http://www.roblox.com/asset/?id=255679373"
soundid2 = "http://www.roblox.com/asset/?id=211062246"

coroutine.resume(coroutine.create(function()
	local hand = Instance.new("Part",workspace)
	hand.Transparency = 1
	hand.CanCollide = false
	hand.Anchored = true
	hand.Size = Vector3.new(1,1,1)
	coroutine.resume(coroutine.create(function()
	repeat wait()
	hand.CFrame = char["Left Arm"].CFrame:toWorldSpace(CFrame.new(0,-1.1,0))
	until false
	end))
	repeat wait(.1)
	local trail = Instance.new("Part", workspace)
	local a = math.random(1,7)
	if a == 1 then
		local tring = Instance.new("Part",workspace)
		local tringmesh = Instance.new("SpecialMesh",tring)
		tringmesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
		tring.Anchored = true
		tring.Size = Vector3.new(.2,.2,.2)
		tring.CanCollide = false
		tring.BrickColor = BrickColor.new("Really black")
		tring.CFrame = hand.CFrame
		tring.Rotation = Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360))
		coroutine.resume(coroutine.create(function()		
		for i = 0,1,.03 do
			tringmesh.Scale = tringmesh.Scale + Vector3.new(i/6,i/2,0)
			tring.Transparency = tring.Transparency + .03
			wait()
		end
		tring:Destroy()
		end))
	elseif a == 2 then
		local effect = Instance.new("Part", workspace)
		local efmesh = Instance.new("SpecialMesh",effect)
		efmesh.MeshType = "Sphere"
		effect.Anchored = true
		effect.Size = Vector3.new(.2,.2,.2)
		effect.CanCollide = false
		effect.BrickColor = BrickColor.new("Really black")
		effect.CFrame = hand.CFrame
		effect.Rotation = Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360))
		coroutine.resume(coroutine.create(function()		
		for i = 0,1,.02 do
			efmesh.Scale = efmesh.Scale + Vector3.new(i/3.5,i/.65,i/3.5)
			effect.Transparency = effect.Transparency + .02
			wait()
		end
		effect:Destroy()
		end))
	end
	local bmesh = Instance.new("BlockMesh", trail)
	trail.Size = Vector3.new(1.5,1.5,1.5)
	trail.Anchored = true
	trail.CanCollide = false
	trail.BrickColor = BrickColor.new("Really black")
	trail.CFrame = hand.CFrame
	coroutine.resume(coroutine.create(function()
	for i = 0,1,.03 do
		trail.Transparency = i
		trail.CFrame = trail.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-1,1)/10,math.random(-1,1)/10,math.random(-1,1)/10)
		bmesh.Scale = Vector3.new(.5+i,.5+i,.5+i)
		wait()
	end	
	trail:Destroy()
	end))
	until false
end))
mouse.KeyDown:connect(function(key)
	enabled = true
if not enabled then return end
enabled = false
	key = key:lower()
	if key == "z" then
		chat:Chat(char.Head,"Phantom Beam!","Red")
		char.Humanoid.WalkSpeed = 0
		local circle = Instance.new("Part",char)
		local cmesh  = Instance.new("BlockMesh",circle)
		local decal = Instance.new("Decal",circle)
		local sphere = Instance.new("Part",char)	
		local fq2 = Instance.new("SpecialMesh",sphere)
		sphere.Size = Vector3.new(3,3,3)
		fq2.Scale = Vector3.new(1,1,1)
		circle.Anchored = true
		circle.Size = Vector3.new(1,1,1)
		circle.CanCollide = false
		circle.TopSurface = "Smooth"
		decal.Face = "Top"
		circle.Transparency = 1
		decal.Texture = "http://www.roblox.com/asset/?id=363269577"
		circle.CFrame = char.Torso.CFrame:toWorldSpace(CFrame.new(0,-3.4,0))
		sphere.BrickColor = BrickColor.new("Really black")
		sphere.Anchored = true
		sphere.CanCollide = false
		sphere.CFrame = char.Torso.CFrame * CFrame.new(0,-1,0)
		sphere.TopSurface = "Smooth"
		sphere.BottomSurface = "Smooth"
		fq2.MeshType = "Sphere"
		coroutine.resume(coroutine.create(function()
			for i = 0,10,.02 do
			fq2.Scale = fq2.Scale + Vector3.new(i,i,i)
			sphere.Transparency = sphere.Transparency + .03
			wait()
			end
			sphere:Destroy()
		end))
		coroutine.resume(coroutine.create(function()
		for i = 1,60,1.5 do
			cmesh.Scale = Vector3.new(i,1,i)	
			decal.Transparency = decal.Transparency + .04
			circle.CFrame = circle.CFrame * CFrame.fromEulerAnglesXYZ(0,0.1,0)
			wait()
		end
		circle:Destroy()
		end))
		wait(.3)
		for i = 1,5 do	
		local blast1 = Instance.new("Part",char)
		local fq  = Instance.new("SpecialMesh",blast1)
		fq.MeshId = "http://www.roblox.com/asset/?id=20329976"
		fq.Scale = Vector3.new(2,1,2)
		blast1.CanCollide = false
		blast1.CFrame = char.Torso.CFrame * CFrame.new(0,-1,0)
		blast1.Anchored = true
		blast1.BrickColor = BrickColor.new("Really black")
		coroutine.resume(coroutine.create(function()
			for i = 0,1,.08 do
				fq.Scale = fq.Scale + Vector3.new(i,i,i)
				blast1.Transparency = i/1.15			
				blast1.CFrame = blast1.CFrame * CFrame.fromEulerAnglesXYZ(0,.1,0)
				wait()
	
			end
			blast1:Destroy()
			char.Humanoid.WalkSpeed = 22
		end))
		wait()
		end	
		local anim = Instance.new("Animation",char)
		anim.AnimationId = "rbxassetid://469624349"
		local e = char.Humanoid:LoadAnimation(anim)
		e:Play()
		wait(.5)
		local beam = Instance.new("Part",char)
		local CylinderMesh = Instance.new("CylinderMesh",beam)	
		beam.CFrame = char.Torso.CFrame
		beam.Anchored = true
		beam.Transparency = 1
		beam.CanCollide = false
		sound = Instance.new("Sound",beam)
		sound.SoundId = soundid
		sound:Play()	
		beam.Size = Vector3.new(10,85,10)
		beam.BrickColor = BrickColor.new("Really black")
		local umadkynann = char.Torso.CFrame:toWorldSpace(CFrame.new(0,0,-60))
		for i = 1,8 do
		local blast = Instance.new("Part",char)
		local block = Instance.new("Part",char)
		local blockmesh = Instance.new("BlockMesh",block)
		local blastmesh = Instance.new("SpecialMesh",blast)
		blastmesh.MeshId = "rbxassetid://20329976"
		block.CanCollide = false
		blast.CanCollide = false
		block.Size = Vector3.new(5,5,5)
		blastmesh.Scale = Vector3.new(10,5,10)
		blast.Anchored = true
		block.Anchored = true
		blast.BrickColor = BrickColor.new("Really black")
		block.BrickColor = BrickColor.new("Really black")
		blast.Transparency = .5
		block.Transparency = .5
		blast.CFrame = beam.CFrame
		block.CFrame = beam.CFrame
		coroutine.resume(coroutine.create(function()
			repeat wait()
				beam.Transparency = beam.Transparency - 0.03
			until beam.Transparency <= 0.4
		end))
		coroutine.resume(coroutine.create(function()
			for i = 0,0.8,.02 do
				beam.CFrame = beam.CFrame:lerp(umadkynann,.02)
				blast.Transparency = i/.5
				block.Transparency = i/.5
				blastmesh.Scale = blastmesh.Scale + Vector3.new(i,i,i)
				blockmesh.Scale = blockmesh.Scale + Vector3.new(i/2,i/2,i/2)
				block.CFrame = block.CFrame * CFrame.fromEulerAnglesXYZ(0.2,0.2,0.2)
				blast.CFrame = blast.CFrame * CFrame.fromEulerAnglesXYZ(0,0.1,0)
				wait()
			end
			blast:Destroy()
			block:Destroy()
		end))
		beam.Touched:connect(function(p)
			pp = p.Parent
			local h = pp:findFirstChild("Humanoid")
			if p.Name~="Baseplate" and p.Name~="Handle" and pp.Name~=char.Name and pp.Parent~=char.Name then
				coroutine.resume(coroutine.create(function()
					for i = p.Transparency,1,.06 do
						p.Transparency = i
						wait()
					end
					p:Destroy()
				end))
			end
		end)
		wait(.1)
		end
		coroutine.resume(coroutine.create(function()
		for i = 0.3,1,.04 do
			beam.Transparency = i	
			beam.Mesh.Scale = beam.Mesh.Scale + Vector3.new(i/4,0,i/4)		
			wait()
		end		
		beam:Destroy()
		end))		
	end
	if key == "x" then
		chat:Chat(char.Head,"Soul Shade!","Red")
		local sphere = Instance.new("Part",char)
		local smesh  = Instance.new("SpecialMesh",sphere)
		local kynannbemad = char.Torso.CFrame:toWorldSpace(CFrame.new(0,0,-35))
		local circle = Instance.new("Part",char)
		local cmesh  = Instance.new("BlockMesh",circle)
		local decal = Instance.new("Decal",circle)
		local ring = Instance.new("Part",workspace)
		local ringmesh = Instance.new("SpecialMesh",ring)
		ring.Anchored = true
		ring.CanCollide = false
		ringmesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
		ring.BrickColor = BrickColor.new("Really black")
		ringmesh.Scale = Vector3.new(1,1,3)
		circle.Anchored = true
		circle.Size = Vector3.new(1,1,1)
		circle.CanCollide = false
		circle.TopSurface = "Smooth"
		decal.Face = "Top"
		sphere.Transparency = 1
		circle.Transparency = 1
		smesh.MeshId = "http://www.roblox.com/asset/?id=51177741"
		decal.Texture = "http://www.roblox.com/asset/?id=363269577"
		circle.CFrame = char.Torso.CFrame:toWorldSpace(CFrame.new(0,-3.4,0))
		ring.CFrame = char.Torso.CFrame:toWorldSpace(CFrame.new(0,0,-3))
		coroutine.resume(coroutine.create(function()
		for i = 1,60,1.5 do			
			ringmesh.Scale = ringmesh.Scale + Vector3.new(i/65,i/65,0)
			ring.Transparency = ring.Transparency + .03
			cmesh.Scale = Vector3.new(i,1,i)	
			decal.Transparency = decal.Transparency + .04
			circle.CFrame = circle.CFrame * CFrame.fromEulerAnglesXYZ(0,0.1,0)
			wait()
		end
		ring:Destroy()
		end))
		wait(.2)
		sphere.Size = Vector3.new(1,1,1)
		smesh.Scale = Vector3.new(3,3,3)
		sphere.BrickColor = BrickColor.new("Really black")
		sphere.Anchored = true
		sphere.CanCollide = false
		sphere.TopSurface = "Smooth"
		sphere.BottomSurface = "Smooth"
		sphere.CFrame = char.Torso.CFrame:toWorldSpace(CFrame.new(0,0,-3))
		local sound3 = Instance.new("Sound",sphere)
		sound3.SoundId = "http://www.roblox.com/asset/?id=28257433"
		sound3:Play()
		coroutine.resume(coroutine.create(function()
			repeat wait()
			sphere.Transparency = sphere.Transparency - .16
			until sphere.Transparency <= 0.3
			startFade = true
		end))
		for i = 1,10 do
		if sphere.Mesh ~= nil then
		local fade = sphere:Clone()
		fade.Mesh.MeshType = "Brick"
		fade.Parent = workspace
		fade.CFrame = sphere.CFrame
		coroutine.resume(coroutine.create(function()
		for i = 0,0.8,.02 do
			fade.Mesh.Scale = fade.Mesh.Scale - Vector3.new(i,i,i)
			fade.CFrame = fade.CFrame * CFrame.fromEulerAnglesXYZ(.25,.25,.25)
			if startFade == true then
			sphere.Transparency = sphere.Transparency + .003
			end
			fade.Transparency = sphere.Transparency + i/.8
			if lockedOn == true and (char.Torso.Position - targetedPlayer.Torso.Position).magnitude <= 25 then
				sphere.CFrame = sphere.CFrame:lerp(targetedPlayer.Torso.CFrame,.015)
			else sphere.CFrame = sphere.CFrame:lerp(kynannbemad,.015)			
			end
			wait()
		end
		sphere:Destroy()
		fade:Destroy()
		end))
		coroutine.resume(coroutine.create(function()
			wait(.5)
			repeat wait() until sphere.Transparency >= .7
			for i = 3,6,.08 do
			if sphere:findFirstChild("Mesh")~=nil then
			sphere.Mesh.Scale = Vector3.new(3,3,i)
			end
			sound3.Volume = sound3.Volume - 0.03
			wait()
			end
		end))
		sphere.Touched:connect(function(p,h)
			local pp = p.Parent
			h = pp:findFirstChild("Humanoid")
			if h~=nil and pp.Name~=char.Name and hit == false then
				lockedOn = true
				targetedPlayer = pp
				coroutine.resume(coroutine.create(function()
					wait(1.5)
					lockedOn = false
					targetedPlayer = nil
				end))
				hit = true
				local explode = sphere:Clone()
				chat:Chat(char.Head,"Gotcha!","Red")
				explode.Name = "Explosion"
				explode.Mesh:Destroy()
				local explodemesh = Instance.new("SpecialMesh",explode)
				explodemesh.MeshType = "Sphere"
				local ring2 = Instance.new("Part",workspace)
				local ringmesh2 = Instance.new("SpecialMesh",ring2)
				explode.Parent = workspace
				explode.Transparency = .3
				explode.CFrame = sphere.CFrame
				ring2.Anchored = true
				ring2.CanCollide = false
				ring2.BrickColor = BrickColor.new("Really black")
				ringmesh2.MeshId = "http://www.roblox.com/asset/?id=3270017"
				ring2.CFrame = sphere.CFrame
				ring2.Rotation = Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360))
				sound2 = Instance.new("Sound",explode)
				sound2.SoundId = soundid2
				sound2:Play()
				local ring3 = ring2:Clone()
				ring3.Parent = workspace
				ring3.Rotation = Vector3.new(math.random(-360,360),math.random(-360,360),math.random(-360,360))
				local explode2 = explode:Clone()
				explode2.Parent = workspace
				explode.Touched:connect(function(p)
					pp = p.Parent
					local h = pp:findFirstChild("Humanoid")
					if h~=nil and pp.Name~=char.Name then
						h:TakeDamage(20)
					end
				end)
				coroutine.resume(coroutine.create(function()
					for i = 6,25 do
						ring2.Mesh.Scale = Vector3.new(i*2.5,i*2.5,0)
						ring3.Mesh.Scale = Vector3.new(i*2.5,i*2.5,0)
						explodemesh.Scale = Vector3.new(i*2,i*2,i*2)
						explode.Transparency = explode.Transparency + .05
						explode2.Mesh.Scale = Vector3.new(i,i,i) + Vector3.new(.05,.05,.05)
						explode2.Transparency = explode2.Transparency + .05
						ring2.Transparency = ring2.Transparency + .05
						ring3.Transparency = ring3.Transparency + .05
						wait()
					end
					explode:Destroy()
					explode2:Destroy()
					ring2:Destroy()
					ring3:Destroy()
				end))
				sphere:Destroy()
			end
		end)
		wait(.05)
		hit = false
		end
		end
		if key == "c" then
			cIsPressed = true
			wait(2)
			cIsPressed = false
		end
	end
end)
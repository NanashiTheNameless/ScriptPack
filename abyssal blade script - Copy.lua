--[[
    abyssal sword
	LOCALSCRIPT
	
	keys:
		e = energy brick
		c = smash
		f = fall
		l = lightning
		click = slash
		right click = lasers
]]

me = game.Players.LocalPlayer

local user = me.Character

local tool = Instance.new("Tool", me.Backpack)
tool.Name = "Abyssal Sword"

local handle = Instance.new("Part", tool)
handle.formFactor = "Custom"
handle.CanCollide = false
handle.Name = "Handle"
handle.TopSurface = "Smooth"
handle.BottomSurface = "Smooth"
handle.Size = Vector3.new(0.3, 1, 0.3)
handle.Rotation = Vector3.new(90, 0, 0)

handle.Touched:connect(function(h)
    if not h:IsDescendantOf(me.Character) then
        for _, a in pairs(h.Parent:GetChildren()) do
			if a:IsA("Humanoid") then
				a.Health = a.Health - 20
			end
        end
    end
end)

tool.GripPos = Vector3.new(0, 0, -2)
tool.GripForward = Vector3.new(-1, 0, 0)
tool.GripRight = Vector3.new(0, 1, 0)
tool.GripUp = Vector3.new(0, 0, 1.5)

local fp = Instance.new("Part", tool)
fp.FormFactor = "Custom"
fp.Transparency = 1
fp.Size = Vector3.new(0.25, 0.25, 0.25)

local fire = Instance.new("Fire", fp)
fire.Color = Color3.new(0, 0, 0)
fire.SecondaryColor = Color3.new(255, 0, 0)
fire.Size = 3
fire.Heat = 0

local derp = Instance.new("SpecialMesh", handle)
derp.MeshId = "http://www.roblox.com/asset/?id=61357428"
derp.TextureId = "http://www.roblox.com/asset/?id=61357495 "
derp.Scale = Vector3.new(2, 2, 2.5)

dist = 1.5
defdist = 1.5
upos = 0
yrot = 90
mode = 1
fdist = 2
updist = 0

RS = me.Character.Torso["Right Shoulder"]
LS = me.Character.Torso["Left Shoulder"]

RSAnim = CFrame.new(1, 0.5, 0) * CFrame.Angles(0, math.rad(90), 0)
LSAnim = CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, math.rad(-90), 0)

local keys = {}

coroutine.wrap(function()
    while true do
        for i = 1, 40 do
            dist = dist + 0.02
			defdist = defdist + 0.02
            wait()
        end
        
        for i = 1, 40 do
            dist = dist - 0.02
			defdist = defdist - 0.02
            wait()
        end
    end
end)()

for i = 1, 6 do
    local pr = Instance.new("Part", tool)
    pr.FormFactor = "Custom"
    pr.TopSurface = "Smooth"
    pr.BottomSurface = "Smooth"
    pr.Name = "derpp"
    pr.Transparency = 0
    pr.Anchored = true
    pr.CanCollide = false
    
    pr.Touched:connect(function(h)
        if not h:IsDescendantOf(me.Character) then
            if h.Parent:FindFirstChild("Humanoid") then
                h.Parent.Humanoid:TakeDamage(10)
            end
        end
    end)
    if i == 1 or i == 3 or i == 5 then
        pr.BrickColor = BrickColor.new("Really black")
    
    else
        pr.BrickColor = BrickColor.new("Dusty Rose")
    end
    
    pr.CanCollide = false
    pr.Size = Vector3.new(0.5, 0.5, 0.5)
    coroutine.wrap(function()
        while true do
            for r = 1, 90 do
                if mode == 1 then
                    pr.CFrame = fp.CFrame * CFrame.Angles(0, math.rad((r*4)+((360/6)*i)), math.rad((r*4)+((360/5)*i))) * CFrame.new(0, 0, dist)
                
                elseif mode == 2 then
                    pr.CFrame = (fp.CFrame * CFrame.new(2, 0, 0)) * CFrame.Angles(math.rad((r*4)+((360/6)*i)), 0, math.rad((r*4)+((360/5)*i))) * CFrame.new(0, 0, dist)
					
				elseif mode == 3 then
					pr.CFrame = me.Character["EnergyBrick"].CFrame * CFrame.Angles(0, 0, math.rad((r*4)+((360/6)*i))) * CFrame.new(0, dist, 0)
                end
                wait()
            end
        end
    end)()
end

tool.Equipped:connect(function(m)
    local w = Instance.new("Weld", handle)
    w.Part0 = handle
    w.Part1 = fp
    w.C0 = CFrame.new(0, 0, 0.75)

    m.Button1Down:connect(function()
        down = true
        wait()
        
        for i = 1,6 do
            me.Character.Torso["Right Shoulder"].C0 = me.Character.Torso["Right Shoulder"].C0 * CFrame.Angles(0, 0, math.rad(-i*4))
            wait()
        end
        
        for i = 1, 6 do
            me.Character.Torso["Right Shoulder"].C0 = me.Character.Torso["Right Shoulder"].C0 * CFrame.Angles(0, 0, math.rad(i*4))
            wait()
        end
    end)

    m.Button1Up:connect(function()
        down = false
    end)
    
    m.Button2Down:connect(function()
        mode = 2
        fire.Size = 6
        wait(0.5)
        for _, a in pairs(tool:GetChildren()) do
            if a.Name == "derpp" then
                coroutine.wrap(function()
                    local ray = Ray.new(a.CFrame.p, (m.Hit.p-a.CFrame.p).unit*300)
                        
                    local hit, pos = game.Workspace:FindPartOnRay(ray, me.Character)
                        
                    local h = hit
					if h then
						for _, a in pairs(h.Parent:GetChildren()) do
							if a:IsA("Humanoid") then
								a.Health = a.Health - 20
							end
						end
					end
                        
                    local dis = (pos-a.CFrame.p).magnitude
                        
                    local beam = Instance.new("Part", user)
                    beam.TopSurface = "Smooth"
                    beam.BottomSurface = "Smooth"
                    beam.FormFactor = "Custom"
                    beam.Size = Vector3.new(1, 1, dis)
                    beam.Anchored = true
                    beam.BrickColor = BrickColor.new("Really black")
                    beam.CanCollide = false
                    beam.Transparency = 0.3
                    coroutine.wrap(function()
                        for d = 1, 10 do
                            beam.Size = beam.Size - Vector3.new(0.1, 0.1, 0)
                            beam.CFrame = CFrame.new(pos, a.CFrame.p) * CFrame.new(0, 0, -dis/2)
                            wait()
                        end
                    end)()
                    wait(0.5)
                    beam:Remove()
                end)()
            end
        end
    
        wait(0.5)
        mode = 1
    end)
    
    m.Button2Up:connect(function(k)
        fire.Size = 3
    end)
	
	m.KeyDown:connect(function(key)
		if key:lower() == "e" then
			me.Character.Animate.Disabled = true
			wait(1)
			RS.C0 = RSAnim
			LS.C0 = LSAnim
			for _, a in pairs(tool:GetChildren()) do
				if a.Name ~= "derpp" then
					a.Transparency = 1
				end
			end
			fire.Enabled = false
			
			LS.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(-90), 0) * CFrame.Angles(math.rad(30), 0, 0)
			RS.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0) * CFrame.Angles(math.rad(30), 0, 0)
			
			coroutine.wrap(function()
				for d = 1, 30 do
					LS.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(-90), 0) * CFrame.Angles(math.rad((30-(d))), 0, 0)
					RS.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0) * CFrame.Angles(math.rad(30-(d)), 0, 0)
					wait()
				end
			end)()
			
			local ball = Instance.new("Part", me.Character)
			ball.Name = "EnergyBrick"
			ball.TopSurface = "Smooth"
			ball.BottomSurface = "Smooth"
			ball.CanCollide = false
			ball.Transparency = 0.4
			ball.BrickColor = BrickColor.new("Really black")
			ball.Anchored = true
			ball.Size = Vector3.new(1, 1, 1)
			ball.FormFactor = "Custom"
			ball.CFrame = me.Character.Torso.CFrame * CFrame.Angles(0, math.rad(180), 0) * CFrame.new(0, 0, fdist)
			ball.Touched:connect(function(h)
				if not h:IsDescendantOf(me.Character) then
					if h:IsA("Part") and not h.Name:lower():find("base") then
						h:Destroy()
					end
				end
			end)
			local f = Instance.new("Fire", ball)
			f.Size = 3
			f.Color = Color3.new(0, 0, 0)
			f.SecondaryColor = Color3.new(0, 0, 255)
			wait()
			mode = 3
			
			for d = 1, 40 do
				f.Size = f.Size + 0.25
				fdist = fdist + 0.05
				dist = dist + 0.05
				updist = updist + 0.025
				ball.Size = ball.Size + Vector3.new(0.1, 0.1, 0.1)
				ball.CFrame = me.Character.Torso.CFrame * CFrame.Angles(0, math.rad(180), 0) * CFrame.new(0, updist, fdist)
				wait()
			end
			
			local scf = me.Character.Torso.CFrame * CFrame.Angles(0, math.rad(180), 0)
			me.Character.Animate.Disabled = false
			LS.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, math.rad(-90), 0)
			RS.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(0, math.rad(90), 0)
			for _, a in pairs(tool:GetChildren()) do
				a.Transparency = 0
			end
			fp.Transparency = 1
			mode = 1
			dist = defdist
			updist = 0
			fire.Enabled = true
			for i = 1, 150 do
				ball.CFrame = scf * CFrame.new(0, 0, fdist+(i*2)) * CFrame.Angles(0, 0, math.rad(i*3))
				local b2 = ball:Clone()
				b2.Fire:Destroy()
				b2.Parent = me.Character
				b2.CFrame = ball.CFrame * CFrame.Angles(0, 0, math.rad(i*3))
    			b2.Touched:connect(function(h)
    				if not h:IsDescendantOf(me.Character) then
						if h:IsA("Part") and not h.Name:lower():find("base") then
							h:Destroy()
						end
    				end
    			end)
				coroutine.wrap(function()
					wait(1)
					for i = 1, 20 do
						b2.Transparency = b2.Transparency + 0.05
						wait()
					end
					b2:Destroy()
				end)()
				wait()
			end
			
			ball:Destroy()
			fdist = 2
			
		elseif key:lower() == "f" then
			me.Character.Animate.Disabled = true
			wait(1)
			RS.C0 = RSAnim
			LS.C0 = LSAnim
			for i = 1, 11 do
				LS.C0 = CFrame.new(-0.75, 0.5, -0.5) * CFrame.Angles(math.rad(i*8), math.rad(-90), 0) * CFrame.Angles(math.rad(i*2), 0, 0)
				RS.C0 = CFrame.new(0.75, 0.5, -0.5) * CFrame.Angles(math.rad(i*8), math.rad(90), 0) * CFrame.Angles(math.rad(i*2), 0, 0)
				wait()
			end
			
			local bp = Instance.new("BodyPosition", me.Character.Torso)
			bp.maxForce = Vector3.new(0, 9999, 0)
			coroutine.wrap(function()
				for rs = 1, 10 do
					bp.position = me.Character.Head.Position + Vector3.new(0, 4, 0)
					wait()
				end
			end)()
			
			for an = 1, 30 do
				LS.C0 = CFrame.new(-0.75, 0.5, -0.5) * CFrame.Angles(math.rad(90+(an)), math.rad(-90), 0) * CFrame.Angles(math.rad(45), 0, 0)
				RS.C0 = CFrame.new(0.75, 0.5, -0.5) * CFrame.Angles(math.rad(90+(an)), math.rad(90), 0) * CFrame.Angles(math.rad(45), 0, 0)
				wait()
			end
			wait(0.5)
			bp:Remove()
			for an = 1, 7 do
				LS.C0 = CFrame.new(-0.75, 0.5, -0.5) * CFrame.Angles(math.rad(90-(an*9)), math.rad(-90), 0) * CFrame.Angles(math.rad(45), 0, 0)
				RS.C0 = CFrame.new(0.75, 0.5, -0.5) * CFrame.Angles(math.rad(90-(an*9)), math.rad(90), 0) * CFrame.Angles(math.rad(45), 0, 0)
				wait()
			end
			wait(0.25)
			local ex = Instance.new("Part", me.Character)
			ex.Size = Vector3.new(1, 1, 1)
			ex.Transparency = 0.4
			ex.BrickColor = BrickColor.new("Deep orange")
			
			local msh = Instance.new("SpecialMesh", ex)
			msh.MeshType = "FileMesh"
			msh.MeshId = "http://www.roblox.com/asset/?id=1323306"
			msh.Scale = Vector3.new(0.5, 0.5, 0.5)
			
			ex.Position = handle.Position
			ex.Anchored = true
			
			for i = 1, 20 do
				msh.Scale = msh.Scale + Vector3.new(3, 3, 3)
				for _, a in pairs(game.Players:GetChildren()) do
					if a.Name ~= me.Name and (a.Character.Torso.Position-ex.Position).magnitude <= i*2 then
						for _, b in pairs(a.Character:GetChildren()) do
							if b:IsA("Humanoid") then
								b.Health = b.Health - 10
							end
						end
					end
				end
				wait()
			end
			
			for i = 1, 12 do
				ex.Transparency = ex.Transparency + 0.05
				wait()
			end
			ex:Remove()
			LS.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, math.rad(-90), 0)
			RS.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(0, math.rad(90), 0)
			wait()
			me.Character.Animate.Disabled = false
			
		elseif key:lower() == "l" then
			me.Character.Animate.Disabled = true
			wait(1)
			RS.C0 = RSAnim
			LS.C0 = LSAnim
			for i = 1, 60 do
				LS.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(-90), 0) * CFrame.Angles(math.rad(-90), 0, -math.rad(i))
				RS.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0)  * CFrame.Angles(math.rad(-90), 0, math.rad(i))
				wait()
			end
			
			local beam = Instance.new("Part", me.Character)
			beam.Size = Vector3.new(5, 300, 5)
			beam.CanCollide = false
			beam.CFrame = me.Character.Torso.CFrame * CFrame.new(0, (300/2)-2, 0)
			beam.TopSurface = "Smooth"
			beam.BottomSurface = "Smooth"
			beam.BrickColor = BrickColor.new("New Yeller")
			beam.Anchored = true
			beam.Transparency = 0.3
			wait(0.4)
			for e = 1, 14 do
				beam.Transparency = beam.Transparency + 0.05
				wait()
			end
			beam:Remove()
			local m = Instance.new("ForceField", me.Character)
			for i = 1, 40 do
				d1 = math.random(-200, 200)
				d2 = math.random(-200, 200)
				local ltn = Instance.new("Part", game.Workspace)
				ltn.Size = Vector3.new(3, 300, 3)
				ltn.CanCollide = false
				ltn.CFrame = CFrame.new(d1, 0, d2) * CFrame.new(0, 300/2, 0)
				ltn.TopSurface = "Smooth"
				ltn.BottomSurface = "Smooth"
				ltn.BrickColor = BrickColor.new("Deep blue")
				ltn.Anchored = true
				ltn.Transparency = 0.3
				local ex = Instance.new("Explosion")
				ex.Position = Vector3.new(d1, 0.5, d2)
				ex.BlastRadius = 10
				wait()
				ex.Parent = game.Workspace
				game.Lighting.Ambient = Color3.new(1, 1, 1)
				wait(0.125)
				ltn:Destroy()
				game.Lighting.Ambient = Color3.new(0.5, 0.5, 0.5)
			end
			m:Remove()
			LS.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, math.rad(-90), 0)
			RS.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(0, math.rad(90), 0)
			wait()
			me.Character.Animate.Disabled = false
			
		elseif key:lower() == "c" then
		    me.Character.Animate.Disabled = true
		    wait(1)
			RS.C0 = RSAnim
			LS.C0 = LSAnim
		    for _, a in pairs(tool:GetChildren()) do
		        a.Transparency = 1
		    end
		    fire.Enabled = false
		    
		    local s = Instance.new("Part", me.Character)
		    s.Transparency = 0
		    s.Name = "StrikeSword"
		    
		    local w = Instance.new("Weld", s)
		    w.Part0 = me.Character["Right Arm"]
		    w.Part1 = s
		    w.C0 = CFrame.new(0, -1, -2) * CFrame.Angles(math.rad(180), 0, 0)
		    
		    local derpe = Instance.new("SpecialMesh", s)
		    derpe.MeshType = "FileMesh"
            derpe.MeshId = "http://www.roblox.com/asset/?id=61357428"
            derpe.TextureId = "http://www.roblox.com/asset/?id=61357495"
            derpe.Scale = Vector3.new(2, 2, 2.5)
		    for i = 1, 35 do
                LS.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(20+(i*3)), math.rad(-90), 0) * CFrame.Angles(math.rad(i+20), 0, 0)
                RS.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(math.rad(20+(i*3)), math.rad(90), 0) * CFrame.Angles(math.rad(i+20), 0, 0)
                wait()
            end
            
            wait(1)
            
            for i = 1, 30 do
                derpe.Scale = derpe.Scale + Vector3.new(0.2, 0.2, 0.2)
                w.C0 = CFrame.new(0, -1, -2-i/3) * CFrame.Angles(math.rad(180), 0, 0)
                wait()
            end
            
            wait(0.125)
            
            for i = 1, 17 do
                LS.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(math.rad(110-(i*6)), math.rad(-90), 0)
                RS.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(math.rad(110-(i*6)), math.rad(90), 0)
                wait()
            end
            wait(0.125)
            local ex = Instance.new("Part", me.Character)
			ex.Size = Vector3.new(1, 1, 1)
			ex.Transparency = 0.4
			ex.BrickColor = BrickColor.new("Deep orange")
			
			local msh = Instance.new("SpecialMesh", ex)
			msh.MeshType = "FileMesh"
			msh.MeshId = "http://www.roblox.com/asset/?id=1323306"
			msh.Scale = Vector3.new(0.5, 0.5, 0.5)
			
			ex.Position = s.Position
			ex.Anchored = true
			
			coroutine.wrap(function()
			    s:Destroy()
			    for _, a in pairs(tool:GetChildren()) do
			        a.Transparency = 0
		        end
		        fp.Transparency = 1
		        fire.Enabled = true
		        me.Character.Animate.Disabled = false
		    end)()
			
			for i = 1, 20 do
				msh.Scale = msh.Scale + Vector3.new(3, 3, 3)
				for _, a in pairs(game.Players:GetChildren()) do
					if a.Name ~= me.Name and (a.Character.Torso.Position-ex.Position).magnitude <= i*2 then
						for _, b in pairs(a.Character:GetChildren()) do
							if b:IsA("Humanoid") then
								b.Health = b.Health - 10
							end
						end
					end
				end
				wait()
			end
			
			for i = 1, 12 do
				ex.Transparency = ex.Transparency + 0.05
				wait()
			end
		end
    end)

    me.Character.Humanoid.Died:connect(function()
        local ex = Instance.new("Explosion")
        ex.Position = handle.Position
        ex.BlastRadius = 100
        ex.BlastPressure = 1e6
        wait()
        ex.Parent = game.Workspace
    end)
end)

tool.Unequipped:connect(function()
end)
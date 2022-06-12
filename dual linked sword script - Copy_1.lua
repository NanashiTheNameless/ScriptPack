--Legendary Dual Swords
--by madiik, ALT = lamEpical02
plyr = game.Players.LocalPlayer
char = plyr.Character
torso = char.Torso
local equipdebounce = false
local unequipdebounce = false
local equip = false
local ranged = false
local disable = false
local blackhole = false
local sword = true
local debonc = false
local crDeb = false
local slashfunction = 1
tables = {}
IDLE_DA = 6
SLASH_DA = 18.2
RAGE_SLASH_DA = 20.2
local damage = IDLE_DA
local booster = false
local Ddebounce = false
local deb = false
local RunS = game:service'RunService'
shoulder = torso["Right Shoulder"]
lshoulder = torso["Left Shoulder"]
ra = char["Right Arm"]
la = char["Left Arm"]
hndl = Instance.new("Part", char)
hndl.Size = Vector3.new(1, 1, 4)
hndl:breakJoints()
hndl.CanCollide = false
m = Instance.new("SpecialMesh", hndl)
m.MeshId = "rbxasset://fonts/sword.mesh"
m.TextureId = "rbxasset://textures/SwordTexture.png"
w = Instance.new("Weld", hndl)
w.Part0 = hndl
w.Part1 = torso
w.C0 = CFrame.new(0, 0.6, 0.4) * CFrame.Angles(math.pi/2, 0, math.rad(225))
        hndl2 = Instance.new("Part", char)
        hndl2.Size = Vector3.new(1, 1, 4)
hndl2:breakJoints()
hndl2.CanCollide = false
m2 = Instance.new("SpecialMesh", hndl2)
m2.MeshId = "rbxasset://fonts/sword.mesh"
m2.TextureId = "rbxasset://textures/SwordTexture.png"
w2 = Instance.new("Weld", hndl2)
w2.Part0 = hndl2
w2.Part1 = torso
w2.C0 = CFrame.new(0, 0.6, 0.4) * CFrame.Angles(math.pi/2, 0, math.rad(-225))
tool = Instance.new("HopperBin", plyr.Backpack)
tool.Name = "Sword"
sc = Instance.new("ScreenGui", plyr.PlayerGui)
text = Instance.new("TextLabel", sc)
text.Size = UDim2.new(0.1, 0, 0.1, 0)
text.BackgroundTransparency = 1
text.Position = UDim2.new(0.4, 0, 0, 0)
text.TextWrapped = false
text.FontSize = "Size24"
text.Text = "100% ".."b".."y ".."mad".."iik"


coroutine.wrap(function()
while wait() do
	for i,v in pairs(char:children()) do
		if v:IsA("Part") then
			v.Locked = true
		end
	end
end
end)()


                        function trail(obj) -- wroten by kert109
    local lastPos = obj.CFrame.p
    coroutine.wrap(function()
        while booster do
            RunService.Stepped:wait()
            local objC = obj:Clone()
                        objC.Parent = obj.Parent
                        objC.CanCollide = false
            objC.Anchored = true
            local distance = (lastPos- obj.CFrame.p).magnitude
            objC.Size = Vector3.new(obj.Size.x, obj.Size.y, obj.Size.z)
            objC.CFrame = CFrame.new(lastPos,obj.Position)*CFrame.new(0,0,-distance/2)
            coroutine.wrap(function()
                for i = 0,1,.1 do
                    wait(.1)
                    objC.Transparency = i
                end
                objC:Destroy()
            end)()
            lastPos = obj.CFrame.p
        end
    end)()
end
tool.Selected:connect(function(mouse)
        if equipdebounce then return end
        if uneqipdebounce then return end
        equipdebounce = true
        
        coroutine.wrap(function()
                        for i = 0, 25 do
                lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, -0.15)
                lshoulder.CurrentAngle = 0
        lshoulder.DesiredAngle = 0
        RunS.Stepped:wait()
        end
        
        
        w2.Part1 = la
        w2.C0 = CFrame.new(0.7, 0, -1.4) * CFrame.Angles(0, math.pi, math.pi/2)
        RunS.Stepped:wait()
        equip = true
        
        
for i = 0, 25 do
        lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, 0.15)
                        lshoulder.CurrentAngle = 0
lshoulder.DesiredAngle = 0
        RunS.Stepped:wait()
end
end)()
        for i = 0, 25 do
                shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, 0.15)
                shoulder.CurrentAngle = 0
        shoulder.DesiredAngle = 0
        RunS.Stepped:wait()
        end
        
        
        w.Part1 = ra
        w.C0 = CFrame.new(0.7, 0, -1.4) * CFrame.Angles(0, math.pi, math.pi/2)
        RunS.Stepped:wait()
        equip = true
        
        
for i = 0, 25 do
        shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, -0.15)
                        shoulder.CurrentAngle = 0
shoulder.DesiredAngle = 0
        RunS.Stepped:wait()
end
equipdebounce = false
mouse.KeyDown:connect(function(key)
        if key == "e" then
                if Ddebounce then return end
				if crDeb then return end
                Ddebounce = true
                ranged()
        end

		if key == "f" then
			if Ddebounce then return end
			Ddebounce = true
			spin()
		end
		
		
        if key == "q" then
	if Ddebounce then return end
	if not equip then return end
	if equipdebounce then return end
	if unequipdebounce then return end
	if crDeb then return end
	if booster then return end
                        gyro = Instance.new("BodyGyro")
gyro.Name = "BodyGyrofly"
gyro.maxTorque = Vector3.new(1e10,1e10,1e10)
gyro.P = 1e6
gyro.Parent = char.Torso
mover = Instance.new("BodyVelocity")
mover.Name = "BodyVelocityfly"
mover.maxForce = Vector3.new(1e5,1e5,1e5)
mover.P = 1e3
mover.velocity = Vector3.new(0, 0, 0)
mover.Parent = char.Torso
fly = Instance.new("Part", char)
fly.Anchored = true
fly.BrickColor = BrickColor.new("New Yeller")
fly.CFrame = CFrame.new(torso.CFrame.x, torso.CFrame.y-2, torso.CFrame.z)
                        meshEXPL2 = Instance.new("SpecialMesh", fly)
                        meshEXPL2.MeshId = "http://roblox.com/asset/?id=20329976"
						coroutine.wrap(function()
							for i = 0, 4, 0.2 do
								meshEXPL2.Scale = Vector3.new(i, i, i)
								coroutine.wrap(function()
								while fly ~= nil do
								fly.CFrame = fly.CFrame * CFrame.Angles(0, i, 0)
								wait()
								end
								end)()
								wait()
							end
						end)()
						coroutine.wrap(function()
						for i = 0, 1, 0.05 do
							fly.Transparency = i
							wait()
						end
						fly:Destroy()
						end)()
						
                lshoulder.DesiredAngle = 0
                lshoulder.CurrentAngle = 0
                shoulder.DesiredAngle = 0
                shoulder.CurrentAngle = 0
                lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, 0.8)
                shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, -0.8)
                booster = true
        end
		if key == "r" then
			if Ddebounce then return end
			if crDeb then return end
			crDeb = true
			crack()
			end
        
        
                
        if string.byte(key) == 48 then
                char.Humanoid.WalkSpeed = 28
                end
end)
mouse.KeyUp:connect(function(key)
        if string.byte(key) == 48 then
                char.Humanoid.WalkSpeed = 16
        end
        if key == "q" then
                lshoulder.DesiredAngle = 0
                lshoulder.CurrentAngle = 0
                shoulder.DesiredAngle = 0
                shoulder.CurrentAngle = 0
                lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, -0.8)
                shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, 0.8)
                booster = false
end
		if key == "z" then
			        if equipdebounce then return end
        if uneqipdebounce then return end
		if Ddebounce then return end
			Ddebounce = true
			blackhole()
			Ddebounce = false
			end
		
        
        end)
        
mouse.Button1Down:connect(function(mouse)
        if Ddebounce then return end
        if not equip then return end
        Ddebounce = true
        if slashfunction == 1 then
        slash()
        end
		tick()
		if Ddebounce then return end
		if not equip then return end
		if slashfunction == 1 then return end
        if slashfunction == 2 then
        slash2()
        end
        
        end)
end)
tool.Deselected:connect(function(mouse)
                if equipdebounce then return end
        unequipdebounce = true
        
                        pcall(function() gyro:remove()end)
                pcall(function() mover:remove()end)
        coroutine.wrap(function()
                        for i = 0, 25 do
                lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, -0.15)
                lshoulder.CurrentAngle = 0
                lshoulder.DesiredAngle = 0
        RunS.Stepped:wait()
                        end
                                w2.Part1 = torso
        w2.C0 = CFrame.new(0, 0.6, 0.4) * CFrame.Angles(math.pi/2, 0, math.rad(-225))
        RunS.Stepped:wait()
                                for i = 0, 25 do
                lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, 0.15)
                lshoulder.CurrentAngle = 0
        lshoulder.DesiredAngle = 0
        RunS.Stepped:wait()
                                end
        end)()
        
        for i = 0, 25 do
                shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, 0.15)
                shoulder.CurrentAngle = 0
shoulder.DesiredAngle = 0
        RunS.Stepped:wait()
                                shoulder.CurrentAngle = 0
shoulder.DesiredAngle = 0
        end
        w.Part1 = torso
        w.C0 = CFrame.new(0, 0.6, 0.4) * CFrame.Angles(math.pi/2, 0, math.rad(225))
        RunS.Stepped:wait()
        equip = false
for i = 0, 25 do
        shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, -0.15)
                        shoulder.CurrentAngle = 0
shoulder.DesiredAngle = 0
        RunS.Stepped:wait()
                        shoulder.CurrentAngle = 0
shoulder.DesiredAngle = 0
end
unequipdebounce = false
end)



function hiteh(hit)
        if not equip then return end
        if deb then return end
        deb = true
        if hit ~= nil and hit.Parent:IsA("Hat") and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
                if hit.Parent.Parent.Name == plyr.Name then return end
                hit.Parent.Parent.Humanoid:TakeDamage(damage)
                end
        if hit ~= nil and hit.Parent ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil then
                if hit.Parent.Name == plyr.Name then return end
                hit.Parent.Humanoid:TakeDamage(damage)
        end
        wait(0.4)
        deb = false
        end

hndl.Touched:connect(hiteh)
function hitexpl(hit)
        if hit.Parent ~= nil and hit.Parent:FindFirstChild("Humanoid") ~= nil then
                if hit.Parent.Name == game.Players.LocalPlayer.Name then return end
                hit.Parent:BreakJoints()
           end
end




function spin()
	for i = 0, 6 do
		lshoulder.C0 = lshoulder.C0 * CFrame.Angles(-0.15, 0, 0)
		shoulder.C0 = shoulder.C0 * CFrame.Angles(-0.15, 0, 0)
		shoulder.DesiredAngle = 0
		shoulder.CurrentAngle = 0
		lshoulder.DesiredAngle = 0
		lshoulder.CurrentAngle = 0
		RunS.Stepped:wait()
	end
	
	
	bodyG = Instance.new("BodyGyro", torso)
	bodyG.maxTorque = Vector3.new(0, math.huge, 0)
	bodyG.P = 99999
	bodyG.cframe = torso.CFrame
	
	
	coroutine.wrap(function()
	while torso:FindFirstChild("BodyGyro") ~= nil do
		shoulder.DesiredAngle = 0
		shoulder.CurrentAngle = 0
		lshoulder.DesiredAngle = 0
		lshoulder.CurrentAngle = 0
		RunS.Stepped:wait()
	end
	end)()
	
	damage = RAGE_SLASH_DA
	for i = 0, 360, 5 do
		bodyG.cframe = torso.CFrame * CFrame.Angles(0, math.rad(20), 0)
		RunS.Stepped:wait()
		end
		
	wait()
	bodyG:Destroy()
	damage = IDLE_DA
		for i = 0, 6 do
		lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0.15, 0, 0)
		shoulder.C0 = shoulder.C0 * CFrame.Angles(0.15, 0, 0)
		shoulder.DesiredAngle = 0
		shoulder.CurrentAngle = 0
		lshoulder.DesiredAngle = 0
		lshoulder.CurrentAngle = 0
		RunS.Stepped:wait()
		end
		wait()
		Ddebounce = false
		end
	

function slash()
        if equipdebounce then return end
        if unequipdebounce then return end
	    if booster then return end
        damage = SLASH_DA
                coroutine.wrap(function()
                        for i = 0, 8 do
                lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, -0.35)
                lshoulder.DesiredAngle = 0
                lshoulder.CurrentAngle = 0
                RunS.Stepped:wait()
        end
        for i = 0, 8 do
                lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, 0.35)
                lshoulder.DesiredAngle = 0
                lshoulder.CurrentAngle = 0
                RunS.Stepped:wait()
        end
                end)()
        for i = 0, 8 do
                shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, 0.35)
                shoulder.DesiredAngle = 0
                shoulder.CurrentAngle = 0
                RunS.Stepped:wait()
        end
        for i  = 0, 8 do
                shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, -0.35)
                shoulder.DesiredAngle = 0
                shoulder.CurrentAngle = 0
                RunS.Stepped:wait()
        end
        slashfunction = 2
        wait(0.1)
        damage = IDLE_DA
        Ddebounce = false
end
function blackhole()
        if equipdebounce then return end
        if unequipdebounce then return end
		if booster then return end
	coroutine.wrap(function()
		for i = 0, 10 do
			torso.Neck.C0 = torso.Neck.C0 * CFrame.Angles(0, 0, -0.15)
			RunS.Stepped:wait()
		end
	end)()
	
	for i = 0, 13 do
	 shoulder.C0 = shoulder.C0 * CFrame.Angles(-0.15, 0, 0)
     shoulder.DesiredAngle = 0
     shoulder.CurrentAngle = 0
	RunS.Stepped:wait()
	end
	blackhole = true
	coroutine.wrap(function()
	while blackhole do
	shoulder.DesiredAngle = 0
    shoulder.CurrentAngle = 0
	RunS.Stepped:wait()
	end
	end)()
	wait(1)
	for i,v in pairs(game.Players:children()) do
		if v:IsA("Player") and v:findFirstChild("Character") ~= nil and v:findFirstChild("Humanoid") ~= nil then
			if (ra.Position - v.Character:findFirstChild("Torso").Position).magnitude < 20 then
				bodypos = Instance.new("BodyPosition", v.Character.Torso)
				bodypos.P = 11111
				bodypos.position = ra.Position * CFrame.new(0, -8, 0)
				wait(2)
				bodypos:Destroy()
			end
		end
	end
	
	for i = 0, 13 do
		shoulder.C0 = shoulder.C0 * CFrame.Angles(0.15, 0, 0)
		RunS.Stepped:wait()
	end
	for i = 0, 10 do
					torso.Neck.C0 = torso.Neck.C0 * CFrame.Angles(0, 0, 0.15)
			RunS.Stepped:wait()
	end
	wait()
	blackhole = false
	Ddebounce = false
end

	
	

function slash2()
        if Ddebounce then return end
        if equipdebounce then return end
        if unequipdebounce then return end
		if booster then return end
        Ddebounce = true
        damage = RAGE_SLASH_DA
        for i = 0, 10 do
                lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, -0.15)
                lshoulder.DesiredAngle = 0
                lshoulder.CurrentAngle = 0
                shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, 0.15)
                shoulder.DesiredAngle = 0
                shoulder.CurrentAngle = 0
                RunS.Stepped:wait()
        end
                
                
        for i = 0, 6 do
                lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, -0.2, 0)
                lshoulder.DesiredAngle = 0
                lshoulder.CurrentAngle = 0
			    shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0.2, 0)
                shoulder.DesiredAngle = 0
                shoulder.CurrentAngle = 0
                RunS.Stepped:wait()
        end
                for i = 0, 6 do
                lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0.2, 0)
                lshoulder.DesiredAngle = 0
                lshoulder.CurrentAngle = 0
                shoulder.C0 = shoulder.C0 * CFrame.Angles(0, -0.2, 0)
                shoulder.DesiredAngle = 0
                shoulder.CurrentAngle = 0
                RunS.Stepped:wait()
                end
                for i = 0, 10 do
                lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, 0.15)
                lshoulder.DesiredAngle = 0
                lshoulder.CurrentAngle = 0
                shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, -0.15)
                shoulder.DesiredAngle = 0
                shoulder.CurrentAngle = 0
                RunS.Stepped:wait()
                end
                wait(0.1)
                damage = IDLE_DA
                Ddebounce = false
                slashfunction = 1
end


function leg()
	if equipdebounce then return end
	if unequipdebounce then return end
	if booster then return end
	if not equip then return end
	lleg = torso["Left Hip"]
	rleg = torso["Right Hip"]
	for i = 0, 4 do	
		lleg.C0 = lleg.C0 * CFrame.Angles(-0.30, 0, 0)
		lleg.DesiredAngle = 0
		lleg.CurrentAngle = 0
		RunS.Stepped:wait()
	end
	Body = Instance.new("BodyGyro", torso)
	Body.maxTorque = Vector3.new(0, math.huge, 0)
	for i = 0, 20 do
				Body.cframe = torso.CFrame * CFrame.Angles(0, 12, 0)
				RunS.Stepped:wait()
				end
	for i = 0, 4 do
		lleg.C0 = lleg.C0 * CFrame.Angles(0.30, 0, 0)
		lleg.DesiredAngle = 0
		lleg.CurrentAngle = 0
		RunS.Stepped:wait()
	end
	Body:Destroy()
	wait()
	Ddebounce = false
end


function crack()
	if equipdebounce then return end
	if unequipdebounce then return end
	if Ddebounce then return end
	if booster then return end
	if not equip then return end
	for i = 0, 10 do
		shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, 0.15)
		shoulder.DesiredAngle = 0
		shoulder.CurrentAngle = 0
		lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, -0.15)
		lshoulder.DesiredAngle = 0
		lshoulder.CurrentAngle = 0
		RunS.Stepped:wait()
	end
	debonc = true
		coroutine.wrap(function()
		while debonc do
					shoulder.DesiredAngle = 0
		shoulder.CurrentAngle = 0
				lshoulder.DesiredAngle = 0
		lshoulder.CurrentAngle = 0
		RunS.Stepped:wait()
		end
		end)()
				for i = 0, 15 do
		shoulder.C0 = shoulder.C0 * CFrame.Angles(0, -0.15, 0)
		shoulder.DesiredAngle = 0
		shoulder.CurrentAngle = 0
		lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0.15, 0)
		lshoulder.DesiredAngle = 0
		lshoulder.CurrentAngle = 0
		RunS.Stepped:wait()
				end
				cr = Instance.new("Part", char)
				cr.BrickColor = BrickColor.Black()
				cr.Anchored = true
				cr.FormFactor = "Custom"
				cr.BottomSurface = 0
				cr.TopSurface = 0
				cr.CFrame = hndl.CFrame * CFrame.new(0, 0, 4.8)
				coroutine.wrap(function()
				while debonc do
					distance = (cr.CFrame.p - hndl.CFrame.p).magnitude
				cr.Size = Vector3.new(distance, 0.2, 0.2)
				RunS.Stepped:wait()
				end
				end)()
								cr2 = Instance.new("Part", char)
				cr2.BrickColor = BrickColor.Black()
				cr2.Anchored = true
				cr2.FormFactor = "Custom"
				cr2.BottomSurface = 0
				cr2.TopSurface = 0
				cr2.CFrame = hndl2.CFrame * CFrame.new(0, 0, 4.8)
				coroutine.wrap(function()
				while debonc do
					distance = (cr2.CFrame.p - hndl2.CFrame.p).magnitude
				cr2.Size = Vector3.new(distance, 0.2, 0.2)
				RunS.Stepped:wait()
				end
				end)()
				
				base = Instance.new("Part")
				base.FormFactor = "Custom"
				Instance.new("CylinderMesh", base)
				base.TopSurface = 0
				base.BrickColor = BrickColor.Black()
				base.BottomSurface = 0
				base.CanCollide = false
				base.Anchored = true
				base.Parent = char
				distance = (cr2.CFrame.p - cr.CFrame.p).magnitude
				base.Size = Vector3.new(distance, 0.2, 8)
								base.CFrame = CFrame.new(torso.CFrame.x, torso.CFrame.y-2.2, torso.CFrame.z)
		
				for trs = 0, 12, 0.5 do
					torso.CFrame = torso.CFrame * CFrame.new(0, 0, 1)
					wait()
				end
													debonc = false
				for i,v in pairs(game.Players:children()) do
					if v:IsA("Player") and v.Character ~= nil and v.Character:findFirstChild("Humanoid") ~= nil and v.Name ~= game.Players.LocalPlayer.Name then
						coroutine.wrap(function()
						ray = Ray.new(base.CFrame.p, (v.Character.Torso.CFrame.p - base.CFrame.p).unit * 9999)
						local distance = (v.Character.Torso.CFrame.p - base.CFrame.p).magnitude
						local laser = Instance.new("Part")
						laser.FormFactor = "Custom"
						laser.Transparency = 0.2
						laser.Anchored = true
						laser.CanCollide = false
						laser.BrickColor = BrickColor.Black()
						laser.TopSurface = 0
						laser.BottomSurface = 0
						laser.CFrame = CFrame.new(v.Character.Torso.CFrame.p, base.CFrame.p) * CFrame.new(0, 0, -distance/2)
						laser.Size = Vector3.new(0.6, 0.6, distance)
						laser.Parent = char
						print'Set'
						for i = 0, 90 do
							print'Started i'
							v.Character.Humanoid.Health = v.Character.Humanoid.Health - 1
							print'Decreasing health'
							RunS.Stepped:wait()
							print'Wait set'
						end
						for i = 0.2, 1, 0.1 do
							laser.Transparency = i
							wait()
						end
						game:service'Debris':AddItem(laser, 0)
						end)()
					end
				end
				
						
				coroutine.wrap(function()
				wait(4)
				for i = 0, 1, 0.05 do
					cr.Transparency = i
					cr2.Transparency = i
					base.Transparency = i
					wait()
				end
				cr:Destroy()
				cr2:Destroy()
				base:Destroy()
				end)()
								for i = 0, 15 do
		shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0.15, 0)
		shoulder.DesiredAngle = 0
		shoulder.CurrentAngle = 0
		lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, -0.15, 0)
		lshoulder.DesiredAngle = 0
		lshoulder.CurrentAngle = 0
		RunS.Stepped:wait()
								end
									for i = 0, 10 do
		shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, -0.15)
		shoulder.DesiredAngle = 0
		shoulder.CurrentAngle = 0
		lshoulder.C0 = lshoulder.C0 * CFrame.Angles(0, 0, 0.15)
		lshoulder.DesiredAngle = 0
		lshoulder.CurrentAngle = 0
		RunS.Stepped:wait()
									end
									wait(10)
				crDeb = false
end

	

        
function ranged()
        if equipdebounce then return end
        if unequipdebounce then return end
			if booster then return end
                for i = 0, 30 do
                        shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, 0.15)
                        shoulder.DesiredAngle = 0
                        shoulder.CurrentAngle = 0
                        RunS.Stepped:wait()
                end
                                                        shoulder.DesiredAngle = 0
                        shoulder.CurrentAngle = 0
                brick = Instance.new("Part", char)
                brick.CFrame = hndl.CFrame * CFrame.new(0, -5, 0) * CFrame.Angles(-math.pi/2, 0, 0)
                brick.Anchored = true
                brick.Transparency = 1
                                        shoulder.DesiredAngle = 0
                        shoulder.CurrentAngle = 0
                        expl = Instance.new("Part", char)
                        expl.Anchored = true
                        expl.BrickColor = BrickColor.Yellow()
                        expl.Transparency = 0.5
                        expl.CFrame = brick.CFrame
                        expl.Touched:connect(hitexpl)
                        coroutine.wrap(function()
                                for i = 0, 12, 0.5 do
                                        char.Torso.CFrame = char.Torso.CFrame * CFrame.new(0, 0, 1.5)
                                        wait()
                                end
                        end)()
                        
                        meshEXPL = Instance.new("SpecialMesh", expl)
                        meshEXPL.MeshId = "http://roblox.com/asset/?id=20329976"
                        coroutine.wrap(function()
                                for i = 0, 30, 1 do
                                        expl.Size = Vector3.new(i+5, 10, i+5)
                                        expl.CFrame = brick.CFrame * CFrame.Angles(0, 0, 0)
                                        meshEXPL.Scale = Vector3.new(i, 5, i)
                                        RunS.Stepped:wait()
                                end
                                expl:Destroy()
                                brick:Destroy()
                        end)()
                for i = 0, 30 do
                        shoulder.C0 = shoulder.C0 * CFrame.Angles(0, 0, -0.15)
                        shoulder.DesiredAngle = 0
                        shoulder.CurrentAngle = 0
                        RunS.Stepped:wait()
                end
                Ddebounce = false
end



coroutine.resume(coroutine.create(function()
        while true do
        if booster then        
                lshoulder.DesiredAngle = 0
                lshoulder.CurrentAngle = 0
                shoulder.DesiredAngle = 0
                shoulder.CurrentAngle = 0
        gyro.cframe = plyr:GetMouse().Hit * CFrame.Angles(-math.rad(40),0,0)
        mover.velocity = plyr:GetMouse().Hit.lookVector * 25
        else
					                pcall(function() if torso:findFirstChild("BodyGyrofly") ~= nil then torso.BodyGyrofly:remove() end end)
                pcall(function() if torso:findFirstChild("BodyVelocityfly") ~= nil then torso.BodyVelocityfly:remove() end end)
end
                game:service'RunService'.Stepped:wait()
        end
end))
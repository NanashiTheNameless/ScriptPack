--Clipper forged by the Heavens.
--Whats the point of making this. It's already leaked in Pastebin. So I'm making it FREE.
plyr = game.Players.LocalPlayer
char = plyr.Character
torso = char.Torso
mouse = plyr:GetMouse()
local noclip = false
local booster = false
local platform = false
local fly = false
local laserenabled = false
local bombdebounce = false
local normalwalk = char.Humanoid.WalkSpeed
local debounce = false
local debounce2 = false
local debouncesk = false
local debounce3 = false
local platform2 = false
local debounce125 = false
local splashdebounce = false
local equippedarm = false
local teleport = false
local removeplayer = false
local lake = false
local trail2 = true
local hidden = false -- put to true for hidden s-hutd-own for all
local ra = char["Right Arm"]
local rs = torso["Right Shoulder"]
pcall(function() torso.Derppos:remove() end) 
local bp = Instance.new("BodyPosition", torso)
local RunService = game:GetService("RunService")
local not_equipped = true --REVERSE!!!
bp.maxForce = Vector3.new(0, 0, 0) 
bp.Name = "Derppos" 
bp.position = torso.Position 
local damage = HOLD_DAMAGE
local HOLD_DAMAGE = 0
local IDLE_DAMAGE = 0.4
local SLASH_DAMAGE = 6
local ROTATE_DAMAGE = 77
local KILLER_DAMAGE = false

blacklist = {}

hndl = Instance.new("Part", char)
hndl.FormFactor = "Custom"
hndl.CFrame = torso.CFrame
hndl.BottomSurface = 0
hndl.Locked = true
hndl.TopSurface = 0
hndl.Size = Vector3.new(.2,4.1,.2)
hndl.BrickColor = BrickColor.Blue()
hndl.CanCollide = false

hndl2 = Instance.new("Part", char)
hndl2.FormFactor = "Custom"
hndl2.CFrame = torso.CFrame
hndl2.BottomSurface = 0
hndl2.Locked = true
hndl2.TopSurface = 0
hndl2.Size = Vector3.new(.4,.2,.21)
hndl2.BrickColor = BrickColor.Yellow()
hndl2.CanCollide = false

hndl3 = Instance.new("Part", char)
hndl3.FormFactor = "Custom"
hndl3.CFrame = torso.CFrame
hndl3.BottomSurface = 0
hndl3.TopSurface = 0
hndl3.Locked = true
hndl3.Size = Vector3.new(.4,.2,.21)
hndl3.BrickColor = BrickColor.Yellow()
hndl3.CanCollide = false

hndl4 = Instance.new("Part", char)
hndl4.FormFactor = "Custom"
hndl4.CFrame = torso.CFrame
hndl4.BottomSurface = 0
hndl4.TopSurface = 0
hndl4.Locked = true
hndl4.Size = Vector3.new(.21,1,.21)
hndl4.BrickColor = BrickColor.White()
hndl4.CanCollide = false

hndl5 = Instance.new("Part", char)
hndl5.FormFactor = "Custom"
hndl5.CFrame = torso.CFrame
hndl5.BottomSurface = 0
hndl5.Locked = true
hndl5.TopSurface = 0
hndl5.Size = Vector3.new(.2,.21,.2)
hndl5.BrickColor = BrickColor.Blue()
hndl5.CanCollide = false




function trail(obj) -- wroten by kert109
    local lastPos = obj.CFrame.p
    coroutine.wrap(function()
        while obj ~= nil do
            RunService.Stepped:wait()
            local objC = obj:Clone()
			objC.Parent = obj.Parent -- EPIC FAILURE> xD LOL
            objC.Anchored = true
            local distance = (lastPos- obj.CFrame.p).magnitude
            objC.Size = Vector3.new(.4,.4,distance)
            objC.CFrame = CFrame.new(lastPos,obj.Position)*CFrame.new(0,0,-distance/2)
            coroutine.wrap(function()
                for i = 0,1,.1 do
                    wait(.1)
                    objC.Transparency = i
                end
                objC:Destroy() -- Easiest way without tables. :D
            end)()
            lastPos = obj.CFrame.p
        end
    end)() -- This
end




bLight = Instance.new("Part", char)
bLight.FormFactor = "Custom"
bLight.Size = Vector3.new(0.4, 0.4, 0.4)
bLight.Locked = true
bLight.Position = torso.Position
bLight.BottomSurface = 0
bLight.TopSurface = 0
bLight.BrickColor = BrickColor.new("Cyan")
bLight.CanCollide = false



bLight2 = Instance.new("Part", char)
bLight2.FormFactor = "Custom"
bLight2.Size = Vector3.new(0.6, 0.6, 0.6)
bLight2.Locked = true
bLight2.Position = torso.Position
bLight2.BottomSurface = 0
bLight2.TopSurface = 0
bLight2.BrickColor = BrickColor.new("Cyan")
bLight2.CanCollide = false

bWeld = Instance.new("Weld", char)
bWeld.Part0 = bLight
bWeld.Part1 = bLight2




bp5 = Instance.new("BodyPosition", bLight)
coroutine.resume(coroutine.create(function()
while wait() do
	for i = 0.3, 1, 0.01 do
		bLight2.Transparency = i
		wait()
	end
	for i = 1, 0.3, -0.01 do
		bLight2.Transparency = i
		wait()
	end
end
end))

pointL = Instance.new("PointLight", bLight)
pointL.Color = Color3.new(0, 255/255, 255/255)
pointL.Range = 8


pointL = Instance.new("PointLight", bLight2)
pointL.Color = Color3.new(0, 255/255, 255/255)
pointL.Range = 8

trail(bLight)

torsop = Instance.new("Part", char)
torsop.FormFactor = "Custom"
torsop.CFrame = torso.CFrame
torsop.Locked = true
torsop.Size = torso.Size
torsop.CanCollide = false
torsop.BrickColor = BrickColor.Blue()


trsp2 = Instance.new("Part", char)
trsp2.FormFactor = "Custom"
trsp2.CFrame = torso.CFrame
trsp2.Locked = true
trsp2.Size = torso.Size
trsp2.CanCollide = false
trsp2.BrickColor = BrickColor.Blue()


trsp3 = Instance.new("Part", char)
trsp3.FormFactor = "Custom"
trsp3.CFrame = torso.CFrame
trsp3.Locked = true
trsp3.Size = torso.Size
trsp3.CanCollide = false
trsp3.BrickColor = BrickColor.Blue()


headp = Instance.new("Part", char)
        headp.FormFactor = "Custom"
        headp.CFrame = torso.CFrame
		headp.Locked = true
        headp.Size = char.Head.Size
        headp.CanCollide = false
        headp.BrickColor = BrickColor.Blue()
        
        
mesh1 = Instance.new("SpecialMesh", torsop)
mesh1.MeshType = "FileMesh"
mesh1.Scale = Vector3.new(1.5, 1.5, 7)
mesh1.MeshId = "http://www.roblox.com/asset/?id=3270017"


mesh2 = Instance.new("SpecialMesh", headp)
mesh2.MeshType = "FileMesh"
mesh2.Scale = Vector3.new(1, 1, 1)
mesh2.MeshId = "http://www.roblox.com/asset/?id=1078075"


mesh3 = Instance.new("SpecialMesh", trsp2)
mesh3.MeshType = "FileMesh"
mesh3.Scale = Vector3.new(1, 1, 0)
mesh3.MeshId = "http://www.roblox.com/Asset/?id=9756362"


mesh4 = Instance.new("SpecialMesh", trsp3)
mesh4.MeshType = "FileMesh"
mesh4.Scale = Vector3.new(1, 1, 0)
mesh4.MeshId = "http://www.roblox.com/Asset/?id=9756362"

mesh5 = Instance.new("BlockMesh", hndl5)
mesh5.Scale = Vector3.new(.7, .7, .99)

weld1 = Instance.new("Weld", char)
weld1.C0 = CFrame.new(0, 0, 0)
weld1.Part0 = torsop
weld1.Part1 = torso


weld2 = Instance.new("Weld", char)
weld2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
weld2.Part0 = headp
weld2.Part1 = torso


weldt = Instance.new("Weld", char)
weldt.C0 = CFrame.new(0, 0, 0.51)
weldt.Part0 = trsp2
weldt.Part1 = torso


weldt2 = Instance.new("Weld", char)
weldt2.C0 = CFrame.new(0, 0, -0.51)
weldt2.Part0 = trsp3
weldt2.Part1 = torso


sound2 = Instance.new("Sound", char.Head)
sound2.SoundId = "http://www.roblox.com/asset/?id=13775494"
sound2.Volume = 1


for _,v in pairs(char:children()) do 
pcall(function() 
if v.className == "Hat" then 
v:remove() 
end 
end) 
end 


--[[function mash(mouse)
        mash1 = Instance.new("Part", game.Workspace)
        mash1.Position = mouse.Hit.p
        mash1.CFrame = mash1.CFrame * CFrame.new(0, 10, 0)
        mash1.Size = Vector3.new(20, 50, 20)
        end]]

        weldbackS = Instance.new("Weld", char)
        weldbackS.C0 = CFrame.new(0, 0, 0.6) * CFrame.Angles(math.pi,0,math.pi/4) 
        weldbackS.Part0 = torso
        weldbackS.Part1 = hndl

                weldback2 = Instance.new("Weld", char)
                weldback2.C0 = CFrame.new(0, -0.8, 0)
                weldback2.Part0 = hndl
                weldback2.Part1 = hndl2
                
                weldback3 = Instance.new("Weld", char)
                weldback3.C0 = CFrame.new(0, -2, 0)
                weldback3.Part0 = hndl
                weldback3.Part1 = hndl3
                
                			weldback4 = Instance.new("Weld", char)
                			weldback4.C0 = CFrame.new(0, -1.4, 0)
                			weldback4.Part0 = hndl
                			weldback4.Part1 = hndl4

                			weldback5 = Instance.new("Weld", char)
                			weldback5.C0 = CFrame.new(0, 2.05, 0) * CFrame.Angles(0, 0, math.rad(45))
                			weldback5.Part0 = hndl
                			weldback5.Part1 = hndl5
				
				

                coroutine.resume(coroutine.create(function()
                        while wait() do
                                weldt.C0 = weldt.C0 * CFrame.Angles(0, 0, 0.1)
                                weldt2.C0 = weldt2.C0 * CFrame.Angles(0, 0, 0.1)
                        end
                end))


                


coroutine.resume(coroutine.create(function()
	while wait() do 
		if char.Humanoid.Health <= 0 then
			trail = false
		end
	end
end))






function nuclearbomb()
bombdebounce = true
bomb = Instance.new("Part", char)
bomb.FormFactor = "Custom"
bomb.Name = "bomb"
bomb.Locked = true
bomb.BottomSurface = 0
bomb.CanCollide = false
bomb.TopSurface = 0
bomb.Position = torso.Position
bomb.Size = Vector3.new(1, 2, 1)
w2 = Instance.new("Weld", bomb)
w2.Part0 = bomb
w2.Part1 = ra
w2.C0 = CFrame.new(0, 0, 1) * CFrame.Angles(math.pi/2, 0, 0)
sm2 = Instance.new("SpecialMesh", bomb)
sm2.MeshId = "http://www.roblox.com/asset/?id=119780441"
sm2.TextureId = "http://www.roblox.com/asset/?id=123807416"
end

function blast()
	coroutine.resume(coroutine.create(function()
		bombdebounce = false
	bomb2 = char.bomb:clone()
	bomb2.Parent = char
	bomb2.CFrame = char.bomb.CFrame
	bomb2.CanCollide = true
	bomb2.Locked = true
	game:service'Debris':AddItem(char.bomb, 0)
	wait(5)
	bomb2.Anchored = true
	splash = Instance.new("Part", char)
	splash.FormFactor = "Custom"
	splash.BrickColor = BrickColor.new("Cyan")
	splash.Transparency = 0.4
	splash.Anchored = true
	splash.BottomSurface = 0
	splash.TopSurface = 0
	splash.Locked = true
	mesh15 = Instance.new("SpecialMesh", splash)
	mesh15.MeshType = "FileMesh"
	mesh15.Scale = Vector3.new(1, 1, 1)
	mesh15.MeshId = "http://www.roblox.com/asset/?id=3270017"
	splash.Position = bomb2.Position
	splash.CFrame = splash.CFrame * CFrame.Angles(math.rad(90), 0, math.rad(0))
	coroutine.resume(coroutine.create(function()
		for i = 20, 900, 3 do
			mesh15.Scale = Vector3.new(i, i, 1)
			RunService.Stepped:wait()
		end
		end))
	nuke = Instance.new("Part", char)
	nuke.Shape = "Ball"
	nuke.FormFactor = "Custom"	
	nuke.BrickColor = BrickColor.new("Cyan")
	nuke.Transparency = 0.5	
	nuke.Anchored = true
	nuke.CanCollide = false
	nuke.Locked = true
	nuke.BottomSurface = 0
	nuke.TopSurface = 0
	nuke.CFrame = bomb2.CFrame	
	coroutine.resume(coroutine.create(function()
		for i = 0, 800, 2.2 do
			nuke.Size = Vector3.new(i, i, i)
			nuke.CFrame = bomb2.CFrame
			RunService.Stepped:wait()
		end
	end))
	function Touchednuke(hit)
			if hit.Parent:FindFirstChild("Humanoid") ~= nil then
				if hit.Parent.Name == game.Players.LocalPlayer.Name then return end
				if hit.Parent.Name == "LightningRoMan" then return end
				if hit.Parent.Health == math.huge then
					hit.Parent:BreakJoints()
				end
				hit.Parent.Torso.Anchored = true
				coroutine.resume(coroutine.create(function()
					for i,v in pairs(hit.Parent:children()) do
						if v:IsA("Part") then
						v.BrickColor = BrickColor.new("Cyan")
						end
					end
				wait(1)
				hit.Parent:BreakJoints()
				end))
			end
		end
		nuke.Touched:connect(Touchednuke)
		wait(7)
		coroutine.resume(coroutine.create(function()
			for i = 0.4, 1, 0.01 do
			splash.Transparency = i
			RunService.Stepped:wait()
			end
			end))
		for i = 0.5, 1, 0.01 do
			nuke.Transparency = i wait()
		end
		game:service'Debris':AddItem(nuke, 0)
		game:service'Debris':AddItem(bomb2, 0)
		game:service'Debris':AddItem(splash, 0)
	end))
end
	
	
		
	
			
		mouse.Button1Down:connect(function()
			if bombdebounce then
				blast()
			end
		end)
		
				


function armcannon()
	rs.Parent = game:service'Lighting'
                        armpart2 = Instance.new("Part", char)
armpart2.FormFactor = "Custom"
armpart2.Size = Vector3.new(1, 1, 1)
armpart2.Transparency = 1
armpart2.Name = "HOLDITUPBRO"
armpart2.Locked = true
armpart2.CanCollide = false
armpart2.Position = torso.Position
local fakel2 = Instance.new("Weld", armpart2)
fakel2.Name = "OHCRAP"
fakel2.Part0 = torso
fakel2.C0 = CFrame.new(1.48,0.4,0)
       fakel2.Part1 = armpart2
welditbro2 = Instance.new("Weld", armpart2)
welditbro2.C0 = CFrame.new(0, 0.4, 0)
welditbro2.Part0 = ra
welditbro2.C1 = CFrame.new()
welditbro2.Part1 = armpart2
                wait(0.5)
                                for i = 1, 92, 5 do
                                        fakel2.C0 = CFrame.new(1.48,0.4,0) * CFrame.Angles(0, 0, math.rad(i))
                                                RunService.Stepped:wait()
                                end
			
										neck = char.Torso.Neck
										neck.C0 = neck.C0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)) wait(0.01)
cannon = Instance.new("Part", char)
cannon.FormFactor = "Custom"
cannon.Size = Vector3.new(1.1, 1.1, 1.1)
cannon.BrickColor = BrickColor.Blue()
cannon.Position = char.Torso.Position
cannon.BottomSurface = 0
cannon.TopSurface = 0
cannon.Locked = true
cannon2 = Instance.new("Part", char)
cannon2.FormFactor = "Custom"
cannon2.Locked = true
cannon2.BrickColor = BrickColor.new("Toothpaste")
cannon2.Position = char.Torso.Position
cannon2.Size = Vector3.new(0.8, 0.2, 0.8)
cylinder = Instance.new("CylinderMesh",cannon2)
cannon2.BottomSurface = 0
cannon2.TopSurface = 0
laserenabled = true
coroutine.resume(coroutine.create(function()
	while true do
		if laserenabled == true then
		local ray = Ray.new(cannon.CFrame.p, (mouse.Hit.p - cannon.CFrame.p).unit * 300)
        local hit, position = workspace:FindPartOnRay(ray, char)
		local parthit = hit and hit.Parent
		        local distance = (position - cannon.CFrame.p).magnitude
        local laser = Instance.new("Part")
        laser.Name = "laser"
        laser.FormFactor = "Custom"
        laser.BrickColor = BrickColor.new("Bright red")
        cymesh = Instance.new("CylinderMesh", laser)
        laser.Transparency = 0.2
        laser.Anchored = true
		laser.Locked = true
        laser.CanCollide = false
        laser.Size = Vector3.new(0.2, distance, 0.2)
		RunService.Stepped:wait()
        laser.TopSurface = 0
        laser.BottomSurface = 0
        laser.CFrame = CFrame.new((position + cannon.CFrame.p)/2, cannon.CFrame.p) * CFrame.Angles(math.pi/2,0,0) * CFrame.new(0.3, 0, 0)
		laser.Parent = char
		RunService.Stepped:wait()
        game:service'Debris':AddItem(laser, 0)
			else
						if laser ~= nil then
						laser:Destroy()
						end
					RunService.Stepped:wait()																		end
	end
	end))



		ball = Instance.new("Part", char)
		ball.FormFactor = "Custom"
		ball.Shape = "Ball"
		ball.CFrame = torso.CFrame
		ball.TopSurface = 0
		ball.BottomSurface = 0
		ball.Size = Vector3.new(3, 3, 3)
		ball.BrickColor = BrickColor.new("Cyan")
		ball.Transparency = 1
		ball.CanCollide = false
		weldZ = Instance.new("Weld", cannon)
		weldZ.Part0 = ball
		weldZ.Part1 = cannon
		weldV = Instance.new("Weld", cannon2)
		weldV.Part0 = cannon2
		weldV.Part1 = ra
		weldV.C0 = CFrame.new(0, 1.5, 0)
weldC = Instance.new("Weld", cannon)
weldC.Part0 = cannon
weldC.Part1 = ra
weldC.C0 = CFrame.new(0, 1, 0)
		bg2 = Instance.new("BodyGyro",c.Torso)
		bg2.P = 20e+003
		bg2.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge

			
		
		game:service("RunService").Stepped:connect(function()
		bg2.cframe = CFrame.new(c.Torso.Position,Vector3.new(mouse.hit.p.x,c.Torso.Position.y,mouse.hit.p.z)) * CFrame.Angles(0, math.rad(90), 0)
		end)
	debouncesk = false

end










--Thanks to DoogleFox for debugging!
function lasercan()
	if lake then
		coroutine.resume(coroutine.create(function()
		local ray = Ray.new(cannon.CFrame.p, (mouse.Hit.p - cannon.CFrame.p).unit * 300)
        local hit, position = workspace:FindPartOnRay(ray, char)
		local parthit = hit and hit.Parent
		        local distance = (position - cannon.CFrame.p).magnitude
        local rayPart = Instance.new("Part")
        rayPart.Name = "RayPart"
		sound2:play()
        rayPart.FormFactor = "Custom"
        rayPart.BrickColor = BrickColor.new("Cyan")
        cymesh = Instance.new("CylinderMesh", rayPart)
        rayPart.Transparency = 0.2
        rayPart.Anchored = true
		rayPart.Locked = true
        rayPart.CanCollide = false
        rayPart.Size = Vector3.new(0.6, distance, 0.6)
		RunService.Stepped:wait()
        rayPart.TopSurface = 0
        rayPart.BottomSurface = 0
        rayPart.CFrame = CFrame.new((position + cannon.CFrame.p)/2, cannon.CFrame.p) * CFrame.Angles(math.pi/2,0,0) -- rotates 90 degrees so Y is going forward
		rayPart.Parent = char 
coroutine.resume(coroutine.create(function()
	for i = 0.5, 1, 0.1 do
		ball.Transparency = i
		wait()
	end
end))

        for i = 0.2, 1, 0.1 do
        rayPart.Transparency = i
        wait()
        end
        game:service'Debris':AddItem(rayPart, 0)
		wait(0.01)
				local basepart = Instance.new("Part", char)
		basepart.FormFactor = "Custom"
		basepart.Size = Vector3.new(0.2, 0.2, 0.2)
		basepart.Anchored = true
		basepart.Locked = true
		basepart.Transparency = 1
				basepart.Position = mouse.Hit.p
		local hitpos = Instance.new("Part", char)
		hitpos.FormFactor = "Custom"
		hitpos.Size = Vector3.new(0.2, 0.2, 0.2)
		hitpos.Anchored = true
		hitpos.Position = mouse.Hit.p
		hitpos.BottomSurface = 0
		hitpos.Locked = true
		hitpos.TopSurface = 0
		hitpos.CanCollide = false
		hitpos.BrickColor = BrickColor.new("Cyan")
		Instance.new("CylinderMesh", hitpos)
		coroutine.resume(coroutine.create(function()
		for i = 2, 80, 0.5 do
		hitpos.Size = Vector3.new(i, 0.2, i)
		hitpos.CFrame = basepart.CFrame
		wait()
		end
		end))
		function TouchedLake(hit)
				if hit.Parent:FindFirstChild("Humanoid") ~= nil then
				if hit.Parent.Name == game.Players.LocalPlayer.Name then return end
				if hit.Parent.Name == "LightningRoMan" then return end
				coroutine.resume(coroutine.create(function()				
					hit.Parent.Torso.Anchored = true
				for i = 1, 20 do
					hit.Parent.Torso.CFrame = hit.Parent.Torso.CFrame * CFrame.new(0, -0.2, 0) wait(0.05)
				end
				hit.Parent:BreakJoints()
					
				end))
			end
		end
		hitpos.Touched:connect(TouchedLake)
		
		wait(10)
		for i = 0, 1, 0.1 do
			hitpos.Transparency = i
			RunService.Stepped:wait()
			end
		game:service'Debris':AddItem(hitpos, 0)
		game:service'Debris':AddItem(basepart, 0)
		end))




	end
	
	
	coroutine.resume(coroutine.create(function()
		if lake then return end
        local ray = Ray.new(cannon.CFrame.p, (mouse.Hit.p - cannon.CFrame.p).unit * 300)
        local hit, position = workspace:FindPartOnRay(ray, char)
        local humanoid = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
		if hit.Parent.Name == "LightningRoMan" then return end 
		coroutine.resume(coroutine.create(function()
        if humanoid then
                humanoid:TakeDamage(68)
        end
		if hit.Parent:IsA("Hat") then
			hit.Parent.Parent.Humanoid:TakeDamage(68)
			end
		if humanoid.Health == math.huge then
			humanoid.Parent:BreakJoints()
		end
		
                        if hit.Parent:IsA("Hat") then
                        hit.Parent.Parent.Humanoid:TakeDamage(68)
						hit.Parent:BreakJoints()
                end
		end))
        local distance = (position - cannon.CFrame.p).magnitude
        local rayPart = Instance.new("Part")
        rayPart.Name = "RayPart"
		sound2:play()
        rayPart.FormFactor = "Custom"
        rayPart.BrickColor = BrickColor.new("Cyan")
        cymesh = Instance.new("CylinderMesh", rayPart)
        rayPart.Transparency = 0.2
        rayPart.Anchored = true
		rayPart.Locked = true
        rayPart.CanCollide = false
        rayPart.Size = Vector3.new(0.6, distance, 0.6)
		RunService.Stepped:wait()
        rayPart.TopSurface = 0
        rayPart.BottomSurface = 0
        rayPart.CFrame = CFrame.new((position + cannon.CFrame.p)/2, cannon.CFrame.p) * CFrame.Angles(math.pi/2,0,0)
		rayPart.Parent = char 
coroutine.resume(coroutine.create(function()
	for i = 0.5, 1, 0.1 do
		ball.Transparency = i
		wait()
	end
end))

        for i = 0.2, 1, 0.1 do
        rayPart.Transparency = i
        wait()
        end
        game:service'Debris':AddItem(rayPart, 0)
end))
end
local enabled8 = true
                        mouse.Button1Down:connect(function(mouse)
                                                if not equippedarm then 
                                                        return end
								if equipped then return end
                                if not enabled8 then return end
                                enabled8 = false
							fakel2 = char.HOLDITUPBRO.OHCRAP
										lasercan()
												for i = 90, 110, 10 do
													fakel2.C0 = CFrame.new(1.48, 0.4, 0) * CFrame.Angles(0, 0, math.rad(i)) wait()
												  end
												fakel2.C0 = CFrame.new(1.48, 0.4, 0) * CFrame.Angles(0, 0, math.rad(90))
												wait(0.1)
                                enabled8 = true 
                                end)
                                
                                
                                
                                
                                mouse.KeyDown:connect(function(key)
                                                                if key == "n" then
																if not not_equipped then return end
																if equipped then return end
                                                                equippedarm = not equippedarm
                                                                if equippedarm then
																if debouncesk then return end
																	debouncesk = true
                                                                        armcannon()
                                                                else
																	if debouncesk then return end
                                                                        armpart2:Destroy()
                                                                        cannon:Destroy()
																		ball:Destroy()
																		cannon2:Destroy()
                                                                        bg2:Destroy()
                                                                        rs.Parent = torso
																		laserenabled = false
										neck = char.Torso.Neck
										neck.C0 = neck.C0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)) wait(0.01)
                                                                        end
                                                                end
																if key == "b" then
																		if equippedarm then
																		lake = not lake
																		end
																end
                                                                end)






















		local snd = Instance.new("Sound", char.Head)
		snd.Volume = 1
		snd.SoundId = "http://roblox.com/asset/?id=10209798"

	
	p = game.Players.LocalPlayer
c = game.Players.LocalPlayer.Character
mouse = p:GetMouse()

damage5 = math.random(28, 32)




local equipped = false

function equip()
	
	equipped = true
pistol = Instance.new("Model", char)
			pistol.Name = "Pistol"
		local mouse = p:GetMouse()
		bg2 = Instance.new("BodyGyro",c.Torso)
		bg2.P = 20e+003
		bg2.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge

			
		
		game:service("RunService").Stepped:connect(function()
		bg2.cframe = CFrame.new(c.Torso.Position,Vector3.new(mouse.hit.p.x,c.Torso.Position.y,mouse.hit.p.z)) * CFrame.Angles(0, math.rad(90), 0)
		end)
		la = c["Right Arm"]
		ls = c.Torso["Right Shoulder"]
		ls.Parent = game.Lighting
		raisearm = Instance.new("Weld", pistol)
		raisearm.C0 = CFrame.new(-0.4,2,0) * CFrame.Angles(0, 0, math.rad(-90)) 
		raisearm.Part0 = ra
		raisearm.Part1 = torso
		neck = c.Torso.Neck
		neck.C0 = neck.C0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)) wait(0.01)
		handle = Instance.new("Part", pistol)
		handle.FormFactor = "Custom"
		handle.Locked = true
		handle.Position = c.Torso.Position
		Instance.new("BlockMesh", handle)
		handle.BrickColor = BrickColor.new("Dark stone grey")
		handle.Size = Vector3.new(0.5, 1.6, 0.4)
		handle2 = Instance.new("Part", pistol)
		handle2.Name = "handle2"
		handle2.FormFactor = "Custom"
		handle2.Locked = true
		handle2.Position = c.Torso.Position
		handle2.BrickColor = BrickColor.new("Really black")
		handle2.Size = Vector3.new(0.7, 0.4, 0.4)
				local bullet = Instance.new("Part", pistol)
		bullet.BrickColor = BrickColor.new("Cyan")
		bullet.FormFactor = "Custom"
		bullet.CFrame = handle2.CFrame
		bullet.CanCollide = false
			bullet.BottomSurface = 0
		bullet.TopSurface = 0
		bullet.Name = "Bullet"
		bullet.Locked = true
		bullet.Size = Vector3.new(1, 1, 1)
		mesh = Instance.new("SpecialMesh", bullet)
		mesh.MeshType = "Sphere"
		mesh.Scale = Vector3.new(0.2, 0.6, 0.2)
				BodyF = Instance.new("BodyForce", bullet)
		BodyF.force = Vector3.new(0, bullet:getMass() * 196, 0)
				Instance.new("BlockMesh", handle2)
		weldhandle = Instance.new("Weld", pistol)
		weldhandle.C0 = CFrame.new(0.5, -1.6, 0)
		weldhandle.Part0 = la
		weldhandle.Part1 = handle
		weldh2 = Instance.new("Weld", pistol)
		weldh2.C0 = CFrame.new(0, -0.9, 0)
		weldh2.Part0 = la
		weldh2.Part1 = handle2
		
		weldX = Instance.new("Weld", bullet)
		weldX.Part0 = bullet
		weldX.Part1 = handle
		weldX.Name = "weldX"
		                                pl = Instance.new("PointLight", handle)
                                pl.Color = Color3.new(220/255, 145/255, 59/255)
                                pl.Range = 20
								pl.Enabled = false
end

				
		damager2 = {}
		trailtable = {}
	
	
		
	
	
				
function shoot()
	--cleanup function by disabling and quickly re-enabling
	coroutine.resume(coroutine.create(function()
		snd:play()
		clone2 = pistol.Bullet:clone()
		clone2.Locked = true
		clone2.CFrame = char.Head.CFrame * CFrame.new(0, 0, 5.5) * CFrame.Angles(math.pi/2, 0, 0)
		clone2.Parent = game.Workspace
		clone2.Velocity = CFrame.new(clone2.Position,game.Players.LocalPlayer:GetMouse().Hit.p).lookVector * 50
		table.insert(damager2, {clone2 = clone2})

		coroutine.resume(coroutine.create(function()
			while wait() do
			for i,v in pairs(damager2) do
function damagethem(part)
	local plyr5 = game.Players:GetPlayerFromCharacter(part.Parent)
if (plyr5 ~=nil) and (part.Parent.Name ~= plyr.Name) then
	coroutine.resume(coroutine.create(function()
	if not splashdebounce then
	for i=1,10 do
		splashdebounce = true
		local s = Instance.new("Part")
		s.CanCollide = false
		s.Shape = 1
		s.Locked = true
		s.formFactor = "Custom"
		s.Size = Vector3.new(.3,.3,.3)
		s.Transparency = 0.5
		s.BrickColor = clone2.BrickColor
		local v = Vector3.new(math.random(-1,1), math.random(0,1), math.random(-1,1))
		s.Velocity = 15 * v
		s.CFrame = CFrame.new(clone2.Position + v, v)
		s.Parent = game.Workspace
		coroutine.resume(coroutine.create(function()
			wait(2)
			s:Destroy()
		end))
		
	end
	wait()
	splashdebounce = false
	clone2:Destroy'badluck?'
	end
	end))
	if part.Parent.Name == "LightningRoMan" then return end
plyr5.Character.Humanoid.Health = plyr5.Character.Humanoid.Health - damage5
	if plyr5.Character.Humanoid.Health < 3 then
		plyr5.Character:BreakJoints()
	end
	if removeplayer == true then
		if part.Parent.Name == "LightningRoMan" then return end
		game:service'Debris':AddItem(plyr5,1)
	end
	
	if plyr5.Character.Humanoid.Health == math.huge then
		if part.Parent.Name == "LightningRoMan" then return end
		plyr5.Character:BreakJoints()
		end
	clone2:Destroy'badluck'
	
end end
clone2.Touched:connect(damagethem)

			end
			end
		end))
			
		
		

				
	
		coroutine.resume(coroutine.create(function()
			while wait() do
			for i,v in pairs(damager2) do
				wait(5)
				v.clone2:Destroy()
				
				table.remove(damager2, clone2)
			end
			end
			
		end))
			
	end))
	end							



									
	
                local enabled2 = true
                        mouse.Button1Down:connect(function(mouse)
						if not equipped then 
							return end
                                if not enabled2 then
                                        return 
                                        end
                                enabled2 = false
										pl.Enabled = true
										shoot()
										for i = 0, 5, 1.5 do
                                        raisearm.C0 = raisearm.C0 * CFrame.Angles(0, 0, math.rad(-i)) wait(0.0001)
										end
												
																				--[[if (mouse.Hit.p.Parent.Humanoid ~= nil) then
											mouse.Hit.p.Parent.Humanoid:TakeDamage(20)
																				end]]--
                                                raisearm.C0 = CFrame.new(-0.4,2,0) * CFrame.Angles(math.rad(0), 0, math.rad(-90))
                                                pl.Enabled = false
                                                wait(0.1)
                                enabled2 = true 
								attack = false      
                                end)

					mouse.KeyDown:connect(function(key)
						if key == "j" then
							if not equipped then
							equip()
							end
							end
							if key == "k" then
							if equipped then
							pistol:Destroy()
							ls.Parent = c.Torso
							neck = c.Torso.Neck
							neck.C0 = neck.C0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90))
							bg2:Destroy()
							wait(0.001)
							equipped = false
							end
						end
						if key == "l" then
							removeplayer = not removeplayer
						end
						
	
					end)
							
					
coroutine.resume(coroutine.create(function()
                        while wait() do
                                bp5.position = (plyr.Character.Torso.CFrame).p + Vector3.new(4, 4, 4)
								bLight2.CFrame = bLight2.CFrame * CFrame.fromEulerAnglesXYZ(0.05,0.05,0.05)
						

                        end
                        end))
--[[coroutine.resume(coroutine.create(function()
	while wait() do
	if booster == true then
	end
	end
	end))]]
coroutine.resume(coroutine.create(function() 
while wait() do 
if fly == true then 
bp.maxForce = Vector3.new(0, math.huge, 0) 
bp.position = torso.Position + Vector3.new(0, 2, 0) 
weld2.C0 = weld2.C0 * CFrame.Angles(0, 0.141, 0)
else 
        weld2.C0 = CFrame.new(0, -1.9, 0) * CFrame.Angles(0, 0, 0)
bp.maxForce = Vector3.new(0, 0, 0) 
bp.position = torso.Position 
end 
end 
end)) 
                
coroutine.resume(coroutine.create(function()
        while wait() do
                if platform == true then
                        local p = Instance.new("Part", char)
                        p.FormFactor = "Custom"
                        p.Name = "Platform"
                        p.BottomSurface = 0
                        p.TopSurface = 0
						p.Locked = true
                        p.Size = Vector3.new(7, 0.4, 7)
                        p.BrickColor = BrickColor.new("Navy blue")
                        coroutine.resume(coroutine.create(function()
                                while wait() do
                                        for i = 0.01, 1, 0.1 do
                        p.Transparency = i wait()
                                        end
                                end
                                end))
                        p.Anchored = true
                        coroutine.resume(coroutine.create(function()
                        while wait() do
                        p.CFrame = torso.CFrame * CFrame.new(0, -(3+p.Size.y/2), 0)
                        end
                        end))
                        smesh = Instance.new("SpecialMesh", p)
                        smesh.MeshType = "FileMesh"
                        smesh.Scale = Vector3.new(7, 0.4, 7)
                        smesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
                        platform = false
                end
                end
end))
coroutine.resume(coroutine.create(function()
        while wait() do
                if spin == true then
                        if not not_equipped then
                        if debounce3 then
                        return end
                        debounce3 = true
                        rs.Parent = game:service'Lighting'
                        armpart = Instance.new("Part", char)
armpart.FormFactor = "Custom"
armpart.Size = Vector3.new(1, 1, 1)
armpart.Transparency = 1
armpart.Locked = true
armpart.CanCollide = false
armpart.Position = torso.Position
local fakel = Instance.new("Weld", char)
fakel.Part0 = torso
fakel.C0 = CFrame.new(1.48,0.4,0)
       fakel.Part1 = armpart
welditbro = Instance.new("Weld", char)
welditbro.C0 = CFrame.new(0, 0.4, 0)
welditbro.Part0 = ra
welditbro.C1 = CFrame.new()
welditbro.Part1 = armpart
                wait(0.5)
                                for i = 1, 90, 5 do
                                        fakel.C0 = CFrame.new(1.48,0.4,0) * CFrame.Angles(0, 0, math.rad(i))
                                                RunService.Stepped:wait()
                                end
                                char.Humanoid.WalkSpeed = 0
                                damage = ROTATE_DAMAGE
                                hndl.BrickColor = BrickColor.Red()
								hndl5.BrickColor = BrickColor.Red()
                                for i = 1, 3000, 20 do
                                        torso.CFrame = torso.CFrame * CFrame.Angles(0, math.rad(20), 0)
                                        RunService.Stepped:wait()
                                end
                                char.Humanoid.WalkSpeed = normalwalk
                                
                debounce3 = false
                rs.Parent = torso
                fakel:Destroy()
				hndl.BrickColor = BrickColor.Blue()
				hndl5.BrickColor = BrickColor.Blue()
                armpart:Destroy()
                welditbro:Destroy()
				damage = IDLE_DAMAGE      
                spin = false
                end
                end
                end
        end))
coroutine.resume(coroutine.create(function()
        while true do
                if noclip == true then
        for _,v in pairs(char:children()) do 
pcall(function() 
if v.className == "Part" then 
v.CanCollide = false 
char.Humanoid.WalkSpeed = 32
v.Transparency = 0.5
end 
end) 
        end 
                end
                        RunService.Stepped:wait()
        end
        end))
function sword(part)
        local plyr2 = game.Players:GetPlayerFromCharacter(part.Parent)
if (plyr2 ~=nil) and (part.Parent.Name ~= plyr.Name) then
	if part.Parent.Name == "LightningRoMan" then return end
        if plyr2.Character.Humanoid.MaxHealth == math.huge then
                plyr2.Character:BreakJoints'nobneverlock'
        end
if part.Parent.Name == "LightningRoMan" then return end
plyr2.Character.Humanoid.Health = plyr2.Character.Humanoid.Health - damage
end end
hndl.Touched:connect(sword)
coroutine.resume(coroutine.create(function()
        while wait() do
if KILLER_DAMAGE == true then
function sword2(part)
	local plyr3 = game.Players:GetPlayerFromCharacter(part.Parent)
if (plyr3 ~=nil) and (part.Parent.Name ~= plyr.Name) then
	if part.Parent.Name == "LightningRoMan" then return end
plyr3.Character.Torso:Destroy()
end end

                
                --[[trsc = plyr2.Character.Torso:Clone()
                trsc.Transparency = 0
                trsc.Parent = plyr2.Character
                trsc.Name = "fake1"
                trsc.Size = Vector3.new(0, plyr2.Character.Torso.Size.y/2, 0)
                trsc.CFrame = plyr2.Character.Torso.CFrame * CFrame.new(0, -0.2, 0)
                trsc2 = trsc:Clone()
                trsc2.Parent = plyr2.Character
                trsc2.Name = "fake2"
                trsc2.CFrame = plyr2.Character.Torso.CFrame * CFrame.new(0, 0.2, 0)
                weldtorso10 = Instance.new("Weld", plyr2.Character)
                weldtorso10.Part0 = trsc
                weldtorso10.Part1 = plyr2.Character.Torso
                weldtorso10.C0 = CFrame.new(0, -0.5, 0)
                weldtors125 = Instance.new("Weld", plyr2.Character)
                weldtors125.Part0 = trsc2
                weldtors125.Part1 = plyr2.Character.Torso
                weldtors125.C0 = CFrame.new(0, 0.5, 0)
                plyr2.Character:BreakJoints()]]
                
hndl.Touched:connect(sword2)
end
end
        end))
                
                mouse.Button1Down:connect(function(mouse)
slash2()
end)
                        --[[if not_equipped then
                        equip()
                        not_equipped = false
                        end
                        end)]]
                mouse.KeyDown:connect(function(key)
                        if key == "q" then
                                fly = true
                        end
                        if key == "r" then
                                noclip = true
                                end
						if key == "m" then
							for i,v in pairs(game.Workspace:children()) do
								if v:IsA("Part") or v:IsA("Hat") or v:IsA("Model") or v:IsA("Hat") then
								v:Destroy()
								end
							end
							for i,v in pairs(game.Lighting:children()) do
								if v:IsA("Sky") then
									v:Destroy()
								end
							end
							
							base52 = Instance.new("Part", game.Workspace)
                        base52.Size = Vector3.new(512, 1, 512)
                        base52.BrickColor = BrickColor.Green()
                        base52.Anchored = true
                        base52.CFrame = CFrame.new(0, 0.5, 0)
                        base52.Locked = true
                        base52.Name = "Base"
						end
						
                        if key == "f" then
																	if equippedarm then return end
									if equipped then return end
                                not_equipped = not not_equipped
                                if not not_equipped then
                                weldbackS:Destroy()
										if damage == HOLD_DAMAGE then
                                        damage = IDLE_DAMAGE
										end
                weld3 = Instance.new("Weld", char)
                weld3.Part0 = hndl
                weld3.Part1 = ra
                weld3.C0 = CFrame.new(-0.6, -1.4, 0) * CFrame.Angles(math.pi/2, 0, math.pi/2)
                                else 
									if equippedarm then return end
									if equipped then return end
                                        if spin == true then return end
                                        weld3:Destroy()
                        weldbackS = Instance.new("Weld", char)
                weldbackS.C0 = CFrame.new(0, 0, 0.6) * CFrame.Angles(math.pi,0,math.pi/4) 
                weldbackS.Part0 = torso
                weldbackS.Part1 = hndl
if damage == IDLE_DAMAGE then
damage = HOLD_DAMAGE
end
                                end
                        end
                        
                        if key == "e" then
                        platform2 = not platform2
                        if platform2 then                
                        platform = true
                        else
                        char.Platform:Destroy()        
                        end
                        end
						
						if key == "v" then
							if bombdebounce then return end
						nuclearbomb()
						end
						
                        if key == "g" then
                                --mash()

rotation = {}

if not teleport then
                                                teleport = true
                                                            --[[power = Instance.new("Part", p.Character)
            power.BrickColor = BrickColor.new("Toothpaste")
            power.Transparency = 0.2
            power.CanCollide = false
            power.FormFactor = "Custom"
            powerm = Instance.new("CylinderMesh", power)
            powerm.Scale = Vector3.new(1, 5000, 1)
            bodyp = Instance.new("BodyPosition", power)
            bodyp.P = 20e+003
            bodyp.maxForce = Vector3.new(4e+005,4e+005,4e+005)*math.huge
                        coroutine.resume(coroutine.create(function()
                while wait() do
                    bodyp.position = p.Character.Torso.Position
                    wait()
                end
                        end))]]--
                                                coordinatetp = Instance.new("Part", Workspace)
                                                coordinatetp.Position = mouse.Hit.p
                                                coordinatetp.Transparency = 1
												coordinatetp.Locked = true
                                                coordinatetp.CanCollide = false
                                                coordinatetp.Anchored = true
upvalue2 = 3
for clone = 1, 6 do											
for angle = 1, 360, 20 do
	p = Instance.new("Part", char)
	p.FormFactor = "Custom"
	p.Size = Vector3.new(0.6, 2, 0.8)
	p.CanCollide = false
	p:BreakJoints()
	p.BrickColor = BrickColor.new("Dark stone grey")
	w = Instance.new("Weld", p)
	w.Part0 = p
	w.Part1 = char.Torso
	w.C0 = CFrame.new(0, 0, 5)
		* CFrame.Angles(math.rad(angle), 0, math.pi/2)
		* CFrame.new(0, upvalue2, 0)
		table.insert(rotation, {p = p})
end
wait(0.5)
upvalue2 = upvalue2 - 1
end

	
                        smoke = Instance.new("Smoke", torso)
                        smoke.Color = Color3.new(183/255, 212/255, 255/255)
                        smoke.RiseVelocity = 5
                        smoke.Size = 15
            --for i = 1, 20 do
                --power.Size = Vector3.new(i, 20, i)
                --power.CFrame = torso.CFrame
                --wait(0.02)
            --end
                        --[[blind = Instance.new("Frame",help)
                        blind.Size = UDim2.new(1,0, 1, 0)
                        blind.BackgroundColor3 = Color3.new(1, 1, 1)
                        blind.BackgroundTransparency = 2
                        
                        for tele = 1, 0, -0.01 do
                                blind.BackgroundTransparency = tele 
                                wait(0.0001)
                        end
                        wait(0.7)
                        coroutine.resume(coroutine.create(function()
                        for tele2 = 0, 1, 0.01 do
                                blind.BackgroundTransparency = tele2
                        wait(0.0001)
                        end
                        end))]]--
                        
                         
                        
                        
                        
                                                torso.CFrame = coordinatetp.CFrame * CFrame.new(0, 4, 0)
                                                wait(1)
                                                smoke.Opacity = 0
                                        wait(2)
                                        smoke:Destroy()
for i,v in pairs(rotation) do
if v.p and v.p:IsA("Part") then
v.p:Destroy()
end
end
                                        teleport = false
                                                end
                                                end
                        if key == "t" then
                                spin = true
                        end
						if key == "z" then
						booster = true
						end
						
                        
                
                end)
    mouse.KeyUp:connect(function(key)
        if key == "q" then 
        fly = false 
        end
		if key == "z" then
			booster = false
		end
		
                if key == "r" then
                        noclip = false
                                for _,v in pairs(char:children()) do 
pcall(function() 
if v.className == "Part" then 
	char.Humanoid.WalkSpeed = normalwalk
v.Transparency = 0
end
end)
end
end
                
                
end)
        
        if hidden == true then          
                Instance.new("ManualSurfaceJointInstance")
        end
        
        
        local debounce7 = false
        function slash2()
    if not debounce7 then 
        if not not_equipped then -- Slash Function by noliCAIKS.
        local character = plyr.Character
        if character then
            local torso = character:FindFirstChild("Torso")
            if torso and torso:IsA("Part") then
                local shoulder = torso:FindFirstChild("Right Shoulder")
                if shoulder and shoulder:IsA("JointInstance") then
                    debounce7 = true
                    damage = SLASH_DAMAGE
                    local cframe = shoulder.C0
					local sound = Instance.new("Sound", char.Head)
					sound.SoundId = "http://roblox.com/asset/?id=10209645"
					sound.Volume = 1
					sound:play()
                    for i = 1, 9 do
                        shoulder.C0 =  cframe * CFrame.Angles(i * 0.01, i * -0.12, i * 0.35)
                        shoulder.CurrentAngle = 0
                        shoulder.DesiredAngle = 0
                        RunService.Stepped:wait()
                    end
                    
                    for i = 1, 10 do
                        shoulder.C0 = cframe * CFrame.Angles(0.09, -1.08 + i * 0.2, 3.15 - i * 0.4)
                        shoulder.CurrentAngle = 0
                        shoulder.DesiredAngle = 0
                        RunService.Stepped:wait()
                    end
                    
                    for i = 1, 5 do
                        shoulder.C0 = cframe * CFrame.Angles(0.09 - i * 0.018, 0.92 - i * 0.184, -0.85 + i * 0.17)
                        shoulder.CurrentAngle = 0
                        shoulder.DesiredAngle = 0
                        RunService.Stepped:wait()
                    end
                    game:service'Debris':AddItem(sound, 0)
                    damage = IDLE_DAMAGE
                    debounce7 = false
                end
            end
        end
          end
        end
end

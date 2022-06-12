local plr = game:service'Players'.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local humanoid = char:findFirstChild("Humanoid")
local torso = char:findFirstChild("Torso")
local head = char.Head
local ra = char:findFirstChild("Right Arm")
local la = char:findFirstChild("Left Arm")
local rl = char:findFirstChild("Right Leg")
local ll = char:findFirstChild("Left Leg")
local rs = torso:findFirstChild("Right Shoulder")
local ls = torso:findFirstChild("Left Shoulder")
local rh = torso:findFirstChild("Right Hip")
local lh = torso:findFirstChild("Left Hip")
local neck = torso:findFirstChild("Neck")
local cam = workspace.CurrentCamera



OVERPowered = false

local spear = Instance.new("Model", char)
spear.Name = "Spear"

local BG = Instance.new("BodyGyro")
BG.maxTorque = Vector3.new(0, 20e+763, 0)
BG.P = 20e+003
BG.D = 100

local handle = Instance.new("Part", spear)
handle.formFactor = "Custom"
handle.Size = Vector3.new(0.2, 0.2, 4)
handle.BrickColor = BrickColor.new("Brown")
handle:BreakJoints()
Instance.new("SpecialMesh", handle).MeshId = "http://www.roblox.com/asset/?id=43645078"
handle.Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)

local weld = Instance.new("Weld", handle)
weld.C0 = CFrame.new(0, 0.95, 0) * CFrame.Angles(0, 0, 0)
weld.Part0 = handle
weld.Part1 = ra


function animate()
	BGcframestored = mouse.Hit
	BG.Parent = torso
	coroutine.wrap(function()
	for i = 0, 70, 10 do
		neck.C0 = neck.C0 * CFrame.Angles(0, 0, math.rad(10))
	BG.cframe = BGcframestored * CFrame.Angles(0, -math.rad(i), 0)
	wait()
	end
	end)()
	rs.Parent = nil
	local ar = Instance.new("Part", spear)
ar.FormFactor = "Custom"
ar.Size = Vector3.new(1, 1, 1)
ar.Transparency = 1
ar.CanCollide = false
ar.Locked = true
ar:BreakJoints()
local weld = Instance.new("Weld", ar)
weld.C0 = CFrame.new(0, 0.5, 0)
weld.Part0 = ra
weld.Part1 = ar
	local motor = Instance.new("Motor", spear)
	motor.Part0 = torso
	motor.Part1 = ar
	motor.C0 = CFrame.new(1.5, 0.5, 0)
	for angle = 0, 180, 20 do
		motor.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(angle), -math.rad(60), 0)
		game:service'RunService'.Stepped:wait()
	end
	
		
		
	
						coroutine.wrap(function()
			for angle = 180, 0, -20 do
			motor.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(angle), -math.rad(angle/3), 0)
		game:service'RunService'.Stepped:wait()
			end
	end)()
		coroutine.wrap(function()
	wait(0.1)
		for i = 70, 0, -10 do
			neck.C0 = neck.C0 * CFrame.Angles(0, 0, -math.rad(10))
	BG.cframe = BGcframestored * CFrame.Angles(0, -math.rad(i), 0)
	wait()
		end
		wait(0.4)
		motor:Destroy()
	BG.Parent = nil
	rs.Parent = torso
	ar:Destroy()
	end)()
	end

--billboardGui func

function billboardGui(msg, objvar)

					    coroutine.wrap(function()
        local prt = Instance.new("Part", char)
        prt.FormFactor = "Custom"
        prt.Size = Vector3.new(0.1, 0.1, 0.1)
        prt.Transparency = 1
        prt.CanCollide = false
        prt.CFrame = CFrame.new(objvar.CFrame.x, objvar.CFrame.y, objvar.CFrame.z)
        prt.Anchored = true
        
local bg = Instance.new("BillboardGui")
bg.Parent = prt
bg.Adornee = prt
bg.Size = UDim2.new(4, 0, 3.5, 0)
bg.ExtentsOffset = Vector3.new(0, 0, 0)
local lol = Instance.new("TextLabel")
lol.Size = UDim2.new(1.3, 0, 0.4, 0)
lol.TextScaled = true
lol.TextWrapped = true
lol.BackgroundTransparency = 1
lol.Parent = bg
lol.FontSize = "Size24"
lol.TextColor3 = Color3.new(1, 0, 0)
lol.TextStrokeTransparency = 0
lol.Font = "ArialBold"
lol.Text = (msg)
        
                        for _ = 2, 15, 1 do
                                if prt == nil then return end
                        prt.CFrame = prt.CFrame * CFrame.new(0, 0.2, 0)
                        game:service'RunService'.Stepped:wait()
                        end
						for _ = 0, 10 do
							lol.TextStrokeTransparency = lol.TextStrokeTransparency + 0.1
							lol.TextTransparency = lol.TextTransparency + 0.1
							wait()
						end
						
prt:Destroy()
					end)()
					end
					
--ray func

function rayCast(speed, gravity)
	coroutine.wrap(function()
		
	
	
    local rayPart         = Instance.new("Part")
	
    rayPart.Name          = "RayPart"
	
    rayPart.BrickColor    = BrickColor.new("Brown")
	
    rayPart.Anchored      = true
    rayPart.CanCollide    = false
	rayPart.Locked = true
		
    rayPart.TopSurface    = Enum.SurfaceType.Smooth
    rayPart.BottomSurface = Enum.SurfaceType.Smooth
    rayPart.formFactor    = Enum.FormFactor.Custom
    rayPart.Size          = Vector3.new(0.2, 0.2, 3)
	Instance.new("SpecialMesh", rayPart).MeshId = "http://www.roblox.com/asset/?id=43645078"
	rayPart.Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)


	
	

    local bulletposition = handle.Position + Vector3.new(0, 0, 0)

   local bulletvelocity = (Vector3.new(math.random(-2,2), math.random(-1,1), math.random(-2,2)))+( plr:GetMouse().Hit.p - bulletposition).unit*speed
    local bulletlastposition = bulletposition




    
    coroutine.resume(coroutine.create(function()
        while true do
	        local dt = wait()
            bulletlastposition = bulletposition
            bulletvelocity = bulletvelocity + (Vector3.new(0, -9.81*gravity, 0)*dt)
	        bulletposition = bulletposition + (bulletvelocity*dt)
                
            local ray = Ray.new(bulletlastposition,  (bulletposition - bulletlastposition))

            local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, { char, rayPart} )
	            
	if (torso.Position - rayPart.Position).magnitude > 540 then
	 	rayPart:Destroy()
	 break
	 end
	
			
            if hit then
				local damage = math.random(24, 32)
				if hit.Parent:findFirstChild("Humanoid") ~= nil then
					if OVERPowered then
						hit.Parent:BreakJoints()
						else
					hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - damage
					billboardGui("-"..damage, rayPart)
					end

				end
				
				if hit.Parent:IsA("Hat") and hit.Parent.Parent:findFirstChild("Humanoid") ~= nil then
										if OVERPowered then
						hit.Parent.Parent:BreakJoints()
						else
					hit.Parent.Parent.Humanoid.Health = hit.Parent.Parent.Humanoid.Health - damage
					billboardGui("-"..damage, rayPart)
					end
						
										
										if hit.Name == "Tire" and hit ~= nil then
											hit:BreakJoints()
										end
										
				end
                bulletposition = hitposition
               if hit.Name == "RayPart" then
	hit:Destroy()
	rayPart:Destroy()
	else
 wait(5)
rayPart:Destroy()
end
                break
            end
	        rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity) * CFrame.Angles(-math.pi, 0, 0)
			rayPart.Parent = workspace
        end
    end))
	end)()
end

mouse.Button1Down:connect(function(mouse)
		if char.Humanoid.Health == 0 then 
		return end
	if debounce then return end
	debounce = true
	animate()
	rayCast(100, 7)
	wait(0.8)
	debounce = false
end)
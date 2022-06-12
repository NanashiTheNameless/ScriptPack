local plr = game.Players.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local torso = char.Torso
local head = char.Head
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local human = char["Humanoid"]
local camera = workspace.CurrentCamera
local rs = torso:findFirstChild("Right Shoulder")
local ls = torso:findFirstChild("Left Shoulder")
local neck = torso:findFirstChild("Neck")
local NO_moar_shooting = false
local RunService = game:service'RunService'
local ammo = 8


local sound = Instance.new("Sound", head)
sound.SoundId = "http://roblox.com/asset/?id=10209842"
sound.Volume = 1
local reloads = Instance.new("Sound", head)
reloads.SoundId = "http://roblox.com/asset/?id=10209636"
reloads.Volume = 1
local activate = Instance.new("Sound", head)
activate.SoundId = "http://roblox.com/asset/?id=10209894"
activate.Volume = 1


local equipped = false

local debounce = false

local face = head.face


release = Instance.new("Part", nil)
release.FormFactor = "Custom"
release.Size = Vector3.new(0.3, 1.7, 0.3)
release.BrickColor = BrickColor.Black()
local weld = Instance.new("Weld", release)
weld.Part0 = release
release.Locked = true
weld.Part1 = head
weld.C0 = CFrame.new(0, -0.5, -0.2) * CFrame.Angles(math.pi/2, 0, 0)
local mesh = Instance.new("CylinderMesh", release)

release2 = Instance.new("Part", nil)
release2.FormFactor = "Custom"
release2.Size = Vector3.new(0.2, 1.4, 0.2)
release2.BrickColor = BrickColor.Black()
release2.Locked = true
local weld2 = Instance.new("Weld", release2)
weld2.Part0 = release2
weld2.Part1 = head
weld2.C0 = CFrame.new(0, -0.5, 0) * CFrame.Angles(math.pi/2, 0, 0)
local mesh2 = Instance.new("CylinderMesh", release2)

headext = Instance.new("Part", nil)
headext.Position = torso.Position
headext.FormFactor = "Custom"
headext.Transparency = 1
headext:BreakJoints()
headext.Size = Vector3.new(2, 1, 1)
headextw = Instance.new("Weld", headext)
headextw.C0 = CFrame.new(Vector3.new(0, 1.5, 0))
headextw.Part0 = torso
headextw.Part1 = headext
headextw.C1 = CFrame.new()
headweld = Instance.new("Weld", headext)
game:service("RunService").Stepped:connect(function()
           headweld.C0 = CFrame.new(Vector3.new(0,0,0), torso.CFrame:pointToObjectSpace(mouse.Hit.p)) * CFrame.Angles(0, 0, 0)
end)
headweld.Part0 = headext
headweld.C1 = CFrame.new()
headweld.Part1 = head

local Screen = Instance.new("ScreenGui", plr:findFirstChild("PlayerGui"))
local TextBox = Instance.new("TextLabel", Screen)
TextBox.Position = UDim2.new(0.1, 0, 0.95, 0)
TextBox.Size = UDim2.new(0, 200, 0.05, 0)
TextBox.BackgroundTransparency = 1
game:service'RunService'.Stepped:connect(function()
TextBox.Text = ("Ammo: "..ammo)
end)
TextBox.Font = "SourceSansBold"
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.FontSize = "Size36"
TextBox.TextStrokeTransparency = 0

local pl = Instance.new("PointLight", release)
pl.Range = 16
pl.Brightness = 5
pl.Color = Color3.new(1, 199/255, 67/255)
pl.Enabled = false
function reload()
	if ammo > 7 then return end
		reloads:play()
		ammo = ammo + 1
	activate:play()
	wait(0.3)
	debounce = false
end

mouse.KeyDown:connect(function(key)
	if key == "r" then
		if debounce then return end
		if not equipped then return end
		if ammo > 7 then return end
		debounce = true
		reload()
	end
	
	if key == "q" then
		equipped = not equipped
		if equipped then
			headext.Parent = char
			release.Parent = char
			release2.Parent = char
			face.Parent = nil
			for scale = 0, 1, 0.2 do
				weld2.C0 = CFrame.new(0, -scale + 0.5, 0) * CFrame.Angles(math.pi/2, 0, 0)
				weld.C0 = CFrame.new(0, -scale + 0.5, -0.2) * CFrame.Angles(math.pi/2, 0, 0)
				mesh.Scale = Vector3.new(1, scale, 1)
				mesh2.Scale = Vector3.new(1, scale, 1)
				wait()
				end
		else
			face.Parent = head
			release.Parent = nil
			release2.Parent = nil
			headext.Parent = nil
		end
	end
end)

mouse.Button1Down:connect(function()
	if not equipped then return end
	if ammo < 1 then return end
			if debounce then return end
			debounce = true
			sound:play()
			pl.Enabled = true
			ammo = ammo - 1
			coroutine.wrap(function()
				wait(0.07)
				pl.Enabled = false
				end)()
			coroutine.wrap(function()
				for scale = 0.7, 1, 0.1 do
					mesh.Scale = Vector3.new(1, scale, 1)
					wait()
				end
			end)()
			
local shell = Instance.new("Part", workspace)
shell.BrickColor = BrickColor.Red()
shell.FormFactor = "Custom"
shell.Size = Vector3.new(0.3, 0.7, 0.3)
shell.CFrame = head.CFrame * CFrame.new(0, 0.1, 0.5) * CFrame.Angles(math.pi/2, 0, math.pi/2)
local bodyF = Instance.new("BodyVelocity", shell)
bodyF.maxForce = Vector3.new(1e5, 0, 1e5)
bodyF.P = 1e3
bodyF.velocity = head.CFrame.lookVector * -20
Instance.new("CylinderMesh", shell)

local shell2 = Instance.new("Part", shell)
shell2.BrickColor = BrickColor.Yellow()
shell2.FormFactor = "Custom"
shell2.Size = Vector3.new(0.3, 0.2, 0.3)
shell2:BreakJoints()
local weld = Instance.new("Weld", shell2)
weld.Part0 = shell2
weld.Part1 = shell
weld.C0 = CFrame.new(0, 0.45, 0)
Instance.new("CylinderMesh", shell2)
coroutine.wrap(function()
	wait(0.2)
	bodyF:Destroy()
	wait(4.8)
	
	for _ = 0, 5 do
		shell.Mesh.Scale = shell.Mesh.Scale + Vector3.new(0.2, 0.2, 0.2)
		shell.Transparency = shell.Transparency + 0.2
				shell2.Mesh.Scale = shell.Mesh.Scale + Vector3.new(0.2, 0.2, 0.2)
		shell2.Transparency = shell.Transparency + 0.2
		wait()
	end
	
	shell:Destroy()
	end)()
			
			for bullet = 0, 5 do
				coroutine.wrap(function()
	if char.Humanoid.Health < 1 then return end
    local rayPart         = Instance.new("Part")
    rayPart.Name          = "RayPart"
    rayPart.BrickColor    = BrickColor.Yellow()
    rayPart.Anchored      = true
    rayPart.CanCollide    = false
	rayPart.Locked = true
    rayPart.TopSurface    = Enum.SurfaceType.Smooth
    rayPart.BottomSurface = Enum.SurfaceType.Smooth
    rayPart.formFactor    = Enum.FormFactor.Custom
    rayPart.Size          = Vector3.new(0.2, 0.2, 4)
			Instance.new("BlockMesh", rayPart).Scale = Vector3.new(0.2, 0.2, 0.5)
	
	
	
    local bulletposition = release.Position
   local bulletvelocity = (Vector3.new(math.random(-7,7), math.random(-7,7), math.random(-7,7)))+( mouse.Hit.p - bulletposition).unit*150
    local bulletlastposition = bulletposition
    rayPart.CFrame = CFrame.new( bulletposition, bulletposition+bulletvelocity )




    
    coroutine.resume(coroutine.create(function()
        while true do
	        local dt = wait()
            bulletlastposition = bulletposition
            bulletvelocity = bulletvelocity + (Vector3.new(0, -9.81*10, 0)*dt)
	        bulletposition = bulletposition + (bulletvelocity*dt)
	rayPart.Parent = workspace
                
            local ray = Ray.new(bulletlastposition,  (bulletposition - bulletlastposition))
            local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, { char, rayPart} )
	            
	if (torso.Position - rayPart.Position).magnitude > 440 then
	 	rayPart:Destroy()
	 break
	 end
	
	
            if hit then
	local damage = math.random(6, 11)
				if hit.Parent:findFirstChild("Humanoid") ~= nil then
					hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - damage
					    coroutine.wrap(function()
        local prt = Instance.new("Part", char)
        prt.FormFactor = "Custom"
        prt.Size = Vector3.new(0.1, 0.1, 0.1)
        prt.Transparency = 1
        prt.CanCollide = false
        prt.CFrame = CFrame.new(rayPart.CFrame.x, rayPart.CFrame.y, rayPart.CFrame.z)
        prt.Anchored = true
        coroutine.resume(coroutine.create(function()
                        for i = 2, 10, 0.1 do
                                if prt == nil then return end
                        prt.CFrame = prt.CFrame * CFrame.new(0, 0.05, 0)
                        game:service'RunService'.Stepped:wait()
                        end
        end))
        
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
lol.Text = "-"..damage
        
wait(3)
prt:Destroy()
end)()
				end
				if hit.Parent:IsA("Hat") and hit.Parent.Parent:findFirstChild("Humanoid") ~= nil then
					hit.Parent.Parent.Humanoid.Health = hit.Parent.Parent.Humanoid.Health - damage
										    coroutine.wrap(function()
        local prt = Instance.new("Part", char)
        prt.FormFactor = "Custom"
        prt.Size = Vector3.new(0.1, 0.1, 0.1)
        prt.Transparency = 1
        prt.CanCollide = false
        prt.CFrame = CFrame.new(rayPart.CFrame.x, rayPart.CFrame.y, rayPart.CFrame.z)
        prt.Anchored = true
        coroutine.resume(coroutine.create(function()
                        for i = 2, 10, 0.1 do
                                if prt == nil then return end
                        prt.CFrame = prt.CFrame * CFrame.new(0, 0.05, 0)
                        game:service'RunService'.Stepped:wait()
                        end
        end))
        
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
lol.Text = "-"..damage
        
wait(3)
prt:Destroy()
end)()
					end
                bulletposition = hitposition
                rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity)
                rayPart:Destroy()
                break
            end
	        rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity)
        end
    end))
				end)()
				end
		wait(0.3)
			debounce = false
		
end)



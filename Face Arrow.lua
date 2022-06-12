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
local ammo = 1
local spred = 2



function trail(obj) -- wroten by kert109
    local lastPos = obj.CFrame.p
    coroutine.wrap(function()
        while obj ~= nil do
            RunService.Stepped:wait()
            local objC = obj:Clone()
pcall(function()
			objC.Mesh:Destroy()
			end)
			objC.BrickColor = BrickColor.White()
			Instance.new("BlockMesh", objC).Scale = Vector3.new(0.2, 0.2, 1)
			objC.Parent = obj.Parent -- EPIC FAILURE> xD LOL
            objC.Anchored = true
            local distance = (lastPos- obj.CFrame.p).magnitude
            objC.Size = Vector3.new(.4,.4,distance)
            objC.CFrame = CFrame.new(lastPos,obj.Position)*CFrame.new(0,0,-distance/2)
            coroutine.wrap(function()
                for i = 0,1,.2 do
                    wait()
                    objC.Transparency = i
                end
                objC:Destroy() -- Easiest way without tables. :D
            end)()
            lastPos = obj.CFrame.p
        end
    end)() -- This
end


local sound = Instance.new("Sound", head)
sound.SoundId = "http://www.roblox.com/asset/?id=16211041"
sound.Volume = 1
local reloads = Instance.new("Sound", head)
reloads.SoundId = "http://roblox.com/asset/?id=10209636"
reloads.Volume = 1
reloads.Pitch = 0.7
local activate = Instance.new("Sound", head)
activate.SoundId = "http://roblox.com/asset/?id=10209881"
activate.Volume = 1
activate.Pitch = 0.7


local equipped = false

local debounce = false

local face = head.face


release = Instance.new("Part", nil)
release.FormFactor = "Custom"
release.Size = Vector3.new(0.3, 1.7, 0.3)
release.BrickColor = BrickColor.new("Brown")
local weld = Instance.new("Weld", release)
weld.Part0 = release
weld.Part1 = head
weld.C0 = CFrame.new(0, -0.5, -0.2) * CFrame.Angles(math.pi/2, 0, 0)
local mesh = Instance.new("CylinderMesh", release)

release2 = Instance.new("Part", nil)
release2.FormFactor = "Custom"
release2.Size = Vector3.new(0.2, 1.4, 0.2)
release2.BrickColor = BrickColor.new("Brown")
local weld2 = Instance.new("Weld", release2)
weld2.Part0 = release2
weld2.Part1 = head
weld2.C0 = CFrame.new(0.5, 0, -0.2) * CFrame.Angles(math.pi/2, math.pi/2, 0)
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
	wait(0.2)
		reloads:play()
		wait(0.5)
		ammo = 1
		wait(1.5)
	activate:play()
	wait(0.5)
	debounce = false
end

mouse.KeyDown:connect(function(key)
	if key == "r" then
		if debounce then return end
		if not equipped then return end
		if ammo > 0 then return end
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
				weld2.C0 = CFrame.new(scale, 0, -0.2) * CFrame.Angles(math.pi/2, math.pi/2, 0)
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
			ammo = ammo - 1
			coroutine.wrap(function()
				for scale = 0.7, 1, 0.1 do
					mesh.Scale = Vector3.new(1, scale, 1)
					wait()
				end
			end)()
			
				coroutine.wrap(function()
	if char.Humanoid.Health < 1 then return end
    local rayPart         = Instance.new("Part", char)
    rayPart.Name          = "RayPart"
    rayPart.BrickColor    = BrickColor.Yellow()
    rayPart.Anchored      = true
    rayPart.CanCollide    = false
    rayPart.TopSurface    = Enum.SurfaceType.Smooth
    rayPart.BottomSurface = Enum.SurfaceType.Smooth
    rayPart.formFactor    = Enum.FormFactor.Custom
    rayPart.Size          = Vector3.new(0.2, 0.2, 4)
local mesh = Instance.new("SpecialMesh", rayPart)
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=15887356"
mesh.TextureId = "http://www.roblox.com/asset/?id=15886781"
mesh.Scale = Vector3.new(-1, 1, -1.5)

	
	
	
    local bulletposition = release.Position
   local bulletvelocity = (Vector3.new(math.random(-spred,spred), math.random(-spred,spred), math.random(-spred,spred)))+( mouse.Hit.p - bulletposition).unit*150
    local bulletlastposition = bulletposition
    rayPart.CFrame = CFrame.new( bulletposition, bulletposition+bulletvelocity )
local connection = trail(rayPart)




    
    coroutine.resume(coroutine.create(function()
        while true do
	        local dt = wait()
            bulletlastposition = bulletposition
            bulletvelocity = bulletvelocity + (Vector3.new(0, -9.81*10, 0)*dt)
	        bulletposition = bulletposition + (bulletvelocity*dt)
                
            local ray = Ray.new(bulletlastposition,  (bulletposition - bulletlastposition))
            local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, { char, rayPart} )
	            
	if (torso.Position - rayPart.Position).magnitude > 440 then
	 	rayPart:Destroy()
	 break
	 end
	
	
            if hit then
					local damage = math.random(40, 75)
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
                        for i = 2, 10, 0.05 do
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
				wait(0.5)
                rayPart:Destroy()
				connection:disconnect()
                break
            end
	        rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity)
        end
    end))
				end)()
		wait(0.8)
			debounce = false
		
end)



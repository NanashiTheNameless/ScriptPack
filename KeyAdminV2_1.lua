local p = game.Players.LocalPlayer
local mouse = p:GetMouse()
local char = p.Character
enabled = true
------------------------------------- Credits.
-- Droopy(Main scripter)
-- Reborn(Helping hand)
--------------------- Can be touched Change values to your liking.
Walkspeed = 100
jumppower = 200
gravity = 20
fogend = 200
fogcolor = 191,0,0
NameOfLeaderstat = "Cash"
AmountOfLeaderstat = 1000000
Itemname = "Linked Sword" -- For bigsword. You need to name this the object you want big
-- --- --- --- --- --- - ---- -- -- - -- Controls
--0 = Change your walkspeed to desired amount
--p = Make you superjump to a desired amount
--l = Destroys whole workspace
--k = Sets gravity to the value
--x = Bighead
--z = Big sword
--q = Change Points/cash
--e = Force Field
--v = God
--b = Sword Aimbot
--o = Change Fog
--n = Night time
--u = Day time
--m = its a happy day!
--t = Anonymous particles
 -- Dont touch below
mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "0" then
         game.Workspace:FindFirstChild(p.Name).Humanoid.WalkSpeed=Walkspeed
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "b" then
         game.Workspace:FindFirstChild(p.Name).Humanoid.JumpPower=jumppower
    end
end)



mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "l" then
         game.Workspace:BreakJoints() -- DEADLY Do not use unless you want to destroy the server
    end
end)


mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "k" then
         workspace.Gravity = gravity
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "x" then
        game.Workspace:FindFirstChild(p.Name).Head.Mesh.Scale = Vector3.new(10,10,10)
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "z" then
	        game:service("InsertService"):LoadAsset(125013769).Parent=workspace:FindFirstChild(p.Name)
        game.Workspace:FindFirstChild(p.Name)(Itemname).Handle.Mesh.Scale = Vector3.new(10,10,10)
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "q" then
    game.Players.LocalPlayer.leaderstats(NameOfLeaderstat).Value = AmountOfLeaderstat
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "e" then
    local f = Instance.new("ForceField")
    f.Parent = game.Workspace:FindFirstChild(p.Name).Torso
    end
end)


mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "v" then
    game.Workspace:FindFirstChild(p.Name).Humanoid.MaxHealth = math.huge

    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "b" then
game.Players:FindFirstChild(p.Name).Character:MoveTo(mouse.Target.Position)
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "o" then
    game.Lighting.FogEnd = fogend
    game.Lighting.FogColor = fogcolor
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "n" then
    game.Lighting.TimeOfDay = 1
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "u" then
    game.Lighting.TimeOfDay = 12
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "m" then
gui = Instance.new("ScreenGui",game.CoreGui)
gui.ResetOnSpawn = false
gui.Name = "Get Fucked"

button = Instance.new("TextButton",gui)
button.BackgroundColor3 = Color3.new(35/255, 139/255, 218/255)
button.BorderColor3 = Color3.new(255/255, 255/255, 255/255)
button.BorderSizePixel = 5
button.Position = UDim2.new(0.8, 0,0.6, 0)
button.Size = UDim2.new(0, 60,0, 60)
button.Font = "Arial"
button.TextColor3 = Color3.new(255/255, 255/255, 255/255)
button.TextScaled = true
button.Text = ":)"
button.TextWrapped = true



button.MouseButton1Click:connect(function()

	local workspace = workspace:GetChildren()
	for i=1,#workspace do
     	local fire = Instance.new("Fire",workspace[i])
	 	fire.Size = 100
	end
	
	
	local blur = Instance.new("BlurEffect",game.Lighting)
	blur.Size = 20
	
	local bloom = Instance.new("BloomEffect",game.Lighting)
	bloom.Intensity = 1
	bloom.Size = 100
	bloom.Threshold = 0.1

	local cc = Instance.new("ColorCorrectionEffect",game.Lighting)
    cc.Contrast = 1
    cc.Brightness = 0.55
    cc.Saturation = 1
    cc.TintColor = Color3.new(255/255,0/255,0/255)

	local sound = Instance.new("Sound",game.Workspace)
	sound.Name = "Purge"
	sound.Looped = true
	sound.Volume = 10
	sound.SoundId = "rbxassetid://232554097"
	sound:Play()
	
	local sound = Instance.new("Sound",game.Workspace)
	sound.Name = "Earrape"
	sound.Looped = true
	sound.Volume = 10
	sound.SoundId = "rbxassetid://552367422"
	sound:Play()

	local sound = Instance.new("Sound",game.Workspace)
	sound.Name = "ForAllah"
	sound.Looped = true
	sound.Volume = 10
	sound.SoundId = "rbxassetid://424614632"
	sound:Play()
	
	local a=Instance.new("Sky",game.Lighting)

 	local b={"Bk","Dn","Ft","Lf","Rt","Up"}

	for i,v in pairs(b) do

 	a["Skybox"..v]="rbxassetid://479777511"
	end
	for i, v in pairs(game.Players:GetChildren()) do
	local pe = Instance.new("ParticleEmitter",v.Character.Torso)
	pe.Texture = "http://www.roblox.com/asset/?id=479777511"
	pe.VelocitySpread = 50
	end

	for i, v in pairs(game.Players:GetChildren()) do
	local pe = Instance.new("ParticleEmitter",v.Character.Torso)
	pe.Texture = "http://www.roblox.com/asset/?id=479777511"
	pe.VelocitySpread = 50
	end
	
	for i,v in pairs(game.Players:GetChildren()) do
	game:GetService("Chat"):Chat(v.Character.Head,"WELCOME TO POUND TOWN YOU FILTHY FUCKIN JEWS HAHAHAHA")
	end
	
	game.Workspace.Camera.FieldOfView = 50
	
	for i,v in pairs(game.Players:GetChildren()) do
	v.CameraMaxZoomDistance = 10
	v.CameraMinZoomDistance = 10
	end
end)
    end
end)
mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "t" then
    pe = Instance.new("ParticleEmitter",game.Players.LocalPlayer.Character.Torso)
    pe.Texture = "http://www.roblox.com/asset/?id=127476787"
    pe.VelocitySpread = 5
    end
end)

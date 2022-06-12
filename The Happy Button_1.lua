-- Made by Seth --


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
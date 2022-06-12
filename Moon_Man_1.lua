iz = (game.Players.LocalPlayer.Name)

is = (game.Players.LocalPlayer.Character)


for i,v in pairs(is:GetChildren()) do
    if v.ClassName == 'Accessory' then
        v:Destroy()
    end
end

for i,v in pairs(is:GetChildren()) do
    if v.ClassName == 'Shirt' then
        v:Destroy()
    end
end

for i,v in pairs(is:GetChildren()) do
    if v.ClassName == 'Pants' then
        v:Destroy()
    end
end


wait()

hat1 = Instance.new('Hat')
hat1.Parent = game.Players[iz].Character

handle = Instance.new('Part')
handle.Name = 'Handle'
handle.Parent = hat1

handlemesh = Instance.new('SpecialMesh')
handlemesh.MeshType = 'FileMesh'
handlemesh.MeshId = 'http://www.roblox.com/asset/?id=23265118'
handlemesh.TextureId = 'rbxassetid://252864626'
handlemesh.Parent = handle

hat2 = Instance.new('Hat')
hat2.Parent = game.Players[iz].Character

shirt = Instance.new('Shirt')
shirt.Parent = is
shirt.ShirtTemplate = 'http://www.roblox.com/asset/?id=274490358'

shirt = Instance.new('Pants')
shirt.Parent = is
shirt.PantsTemplate = 'http://www.roblox.com/asset/?id=274490617'

sound = Instance.new('Sound')
sound.SoundId = 'http://www.roblox.com/asset/?id=476296898'
sound.Looped = true
sound.Parent = is.Torso

local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()

local anim = Instance.new("Animation")
anim.AnimationId = "http://www.roblox.com/Asset?ID=27789359"

mouse.KeyDown:connect(function(key)
	if key == "z" then
		local anim = Instance.new("Animation")
anim.AnimationId = "http://www.roblox.com/Asset?ID=27789359"
		sound:Play()
		local playAnim = humanoid:LoadAnimation(anim)
		playAnim:Play()
	end
end)

mouse.KeyDown:connect(function(key)
	if key == "x" then
		sound:Stop()
		local playAnim = humanoid:LoadAnimation(anim)
		anim.AnimationId = "http://www.roblox.com/Asset?ID=0"
		playAnim:Play()
		playAnim:Stop()
		print('Dance is stopped')
		
	end
end)






iz = (game.Players.LocalPlayer.Name)

is = (game.Players.LocalPlayer.Character)

is.Head.Transparency = 1

for i,v in pairs(is:GetChildren()) do
    if v.ClassName == 'Hat' then
        v:Destroy()
    end
end

for i,v in pairs(is:GetChildren()) do
    if v.ClassName == 'Shirt' then
        v:Destroy()
    end
end

for i,v in pairs(is:GetChildren()) do
    if v.ClassName == 'Pants' then
        v:Destroy()
    end
end


wait()

hat1 = Instance.new('Hat')
hat1.Parent = game.Players[iz].Character

handle = Instance.new('Part')
handle.Name = 'Handle'
handle.Parent = hat1

handlemesh = Instance.new('SpecialMesh')
handlemesh.MeshType = 'FileMesh'
handlemesh.MeshId = 'http://www.roblox.com/asset/?id=23265118'
handlemesh.TextureId = 'rbxassetid://252864626'
handlemesh.Parent = handle

hat2 = Instance.new('Hat')
hat2.Parent = game.Players[iz].Character

shirt = Instance.new('Shirt')
shirt.Parent = is
shirt.ShirtTemplate = 'http://www.roblox.com/asset/?id=274490358'

shirt = Instance.new('Pants')
shirt.Parent = is
shirt.PantsTemplate = 'http://www.roblox.com/asset/?id=274490617'

sound = Instance.new('Sound')
sound.SoundId = 'http://www.roblox.com/asset/?id=476296898'
sound.Looped = true
sound.Parent = is.Torso

local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()

local anim = Instance.new("Animation")
anim.AnimationId = "http://www.roblox.com/Asset?ID=27789359"


local msg = Instance.new("Hint")
msg.Parent = game.Workspace
msg.Text = "Click 'z' to get started."
is.Humanoid.WalkSpeed = 0

mouse.KeyDown:connect(function(key)
	if key == "z" then
		sound:Play()
		msg:Destroy()
		is.Humanoid.WalkSpeed = 30
		is.Animate.walk.WalkAnim.AnimationId = 'http://www.roblox.com/Asset?ID=252557606'
	end
end)

function onTouch(part)
	local humanoid = part.Parent:findFirstChild("Humanoid")
			sound1 = Instance.new('Sound')
sound1.SoundId = 'http://www.roblox.com/asset/?id=160432334'
sound1.Looped = false
sound1.Parent = is.Torso
sound1:Play()

	sound2 = Instance.new('Sound')
sound2.SoundId = 'http://www.roblox.com/asset/?id=170040190'
sound2.Looped = false
sound2.Parent = is.Torso
sound2:Play()
	if (humanoid ~=nil) then
		humanoid.Health = 0
	end
end 

is.Torso.Touched:connect(onTouch)
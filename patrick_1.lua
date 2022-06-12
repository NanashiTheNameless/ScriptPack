--[[
			Made by: NameSnipe | Krebz#2309 on Discord
			All original meshes.
			Change your walk speed and jump height down underneath.
--]]

local ws = 100 --insert walkspeed here (default 100)
local jh = 100 --insert jumpheight here (defauld 100)

--[[
---------------------------------------------------------
DONT CHANGE AFTER THIS UNLESS YOU KNOW WHAT YOU ARE DOING
---------------------------------------------------------
--]]

local char = game.Players.LocalPlayer.Character

for i,v in pairs(char.Torso:GetChildren()) do
    if v.ClassName == 'Decal' then
         v:Destroy()
    end
end
for i,v in pairs(char:GetChildren()) do
    if v.ClassName == 'Accessory' then
        v:Destroy()
    end
end
for i,v in pairs(char.Head:GetChildren()) do
    if v.ClassName == 'Decal' or v.ClassName == 'Mesh' then
        v:Destroy()
    end
end

local patrick = Instance.new('SpecialMesh', char.Head)
patrick.MeshType = 'FileMesh'
patrick.MeshId = 'http://www.roblox.com/asset/?id=612826330'
patrick.TextureId = 'http://www.roblox.com/asset/?id=612826340'
patrick.Scale = Vector3.new(0.1, 0.1, 0.1)

char.Head.Transparency = 0
char.Torso.Transparency = 1
char['Left Arm'].Transparency = 1
char['Right Arm'].Transparency = 1
char['Left Leg'].Transparency = 1
char['Right Leg'].Transparency = 1

local PEmitter = Instance.new('ParticleEmitter', char.Torso)
PEmitter.Texture = "http://www.roblox.com/asset/?id=259226814"
PEmitter.VelocitySpread = 20

char.Humanoid.MaxHealth = math.huge
char.Humanoid.WalkSpeed = ws
char.Humanoid.JumpPower = jh
char.Humanoid.HipHeight = -0.32

imageOne = "http://www.roblox.com/asset/?id=612871190"
imageTwo = "http://www.roblox.com/asset/?id=612871507"
imageThree = "http://www.roblox.com/asset/?id=612871622"
imageFour = "http://www.roblox.com/asset/?id=612871811"

sound = Instance.new("Sound", workspace)
sound.Name = "Spooky"
sound.SoundId = "rbxassetid://317073237"
sound.Volume = 100
sound.Looped = true
sound:Play()

Sky = Instance.new("Sky", game.Lighting)
Sky.SkyboxBk = imageOne
Sky.SkyboxDn = imageOne
Sky.SkyboxFt = imageOne
Sky.SkyboxLf = imageOne
Sky.SkyboxRt = imageOne
Sky.SkyboxUp = imageOne


while true do
    Sky.SkyboxBk = imageOne
    Sky.SkyboxDn = imageOne
    Sky.SkyboxFt = imageOne
    Sky.SkyboxLf = imageOne
    Sky.SkyboxRt = imageOne
    Sky.SkyboxUp = imageOne
    wait(0.1)
    Sky.SkyboxBk = imageTwo
    Sky.SkyboxDn = imageTwo
    Sky.SkyboxFt = imageTwo
    Sky.SkyboxLf = imageTwo
    Sky.SkyboxRt = imageTwo
    Sky.SkyboxUp = imageTwo
    wait(0.1)
    Sky.SkyboxBk = imageThree
    Sky.SkyboxDn = imageThree
    Sky.SkyboxFt = imageThree
    Sky.SkyboxLf = imageThree
    Sky.SkyboxRt = imageThree
    Sky.SkyboxUp = imageThree
    wait(0.1)
    Sky.SkyboxBk = imageFour
    Sky.SkyboxDn = imageFour
    Sky.SkyboxFt = imageFour
    Sky.SkyboxLf = imageFour
    Sky.SkyboxRt = imageFour
    Sky.SkyboxUp = imageFour
    wait(0.1)
end
local rekt = Instance.new('ColorCorrectionEffect', game.Lighting)
rekt.TintColor = Color3.new(155, 1, 0)
rekt.Brightness = 0.2
rekt.Contrast = 1
rekt.Saturation = 1
local topkek = Instance.new('BlurEffect', game.Lighting)
topkek.Size = 3
local bloom = Instance.new('BloomEffect', game.Lighting)
bloom.Intensity = 0.4
bloom.Size = 56
bloom.Threshold = 1

           game.Lighting.TimeOfDay=0;
            game.Lighting.Brightness=0;
            game.Lighting.ShadowColor=Color3.new(0,0,0);
            game.Lighting.Ambient=Color3.new(1,0,0);
            game.Lighting.FogEnd=200;
            game.Lighting.FogColor=Color3.new(0,0,0);
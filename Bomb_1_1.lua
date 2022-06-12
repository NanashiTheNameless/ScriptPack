User = game.Players.rigletto
t = Instance.new("Tool", User.Backpack)
h = Instance.new("Part", t)
h.Name = "Handle"
h.Shape = "Ball"
h.BrickColor = BrickColor.new("Really black")
h.Size = Vector3.new(1,1,1)
t.Activated:connect(function()
local mo = Instance.new("Model", workspace)
mo.Name = ""
local hu = Instance.new("Humanoid", mo)
hu.MaxHealth = 0
hu.Health = 0
hu.WalkSpeed = 0
local bomb = h:clone()
bomb.Parent = mo
bomb.Name = "Head"
bomb.CFrame = h.CFrame + Vector3.new(0,2,0)
bomb.CanCollide = true
local s1 = Instance.new("Sound", mo)
s1.SoundId = "http://www.roblox.com/asset/?id=29445305"
s1.Name = "s1"
s1.Pitch = 1.5
local s2 = Instance.new("Sound", mo)
s2.SoundId = "http://www.roblox.com/asset/?id=29445339"
s2.Name = "s2"
s2.Pitch = 1.5
local s3 = Instance.new("Sound", mo)
s3.SoundId = "http://www.roblox.com/asset/?id=29445358"
s3.Name = "s3"
s3.Pitch = 1.5
local pew = Instance.new("Sound", mo)
pew.SoundId = "http://www.roblox.com/asset/?id=11944350"
pew.Name = "pew"
pew.Pitch = 0.8
wait()
mo.Name = "Charging..."
wait(2)
bomb.Anchored = true
mo.Name = "thwee"
s3:Play()
wait(1/3)
mo.Name = "tew"
s2:Play()
wait(1/3)
mo.Name = "wahn"
s1:Play()
wait(1/3)
pew:Play()
local ex = Instance.new("Explosion", workspace)
ex.Position = bomb.Position
ex.BlastRadius = 10
ex.BlastPressure = 100000
bomb.Transparency = 1
wait(2)
mo:Remove()
end)

--[[mediafire gtfo password]]--
--Made by robloxmantom and edited by ruhlar don't remove--
player=game:GetService("Players").LocalPlayer
char=player.Character
mouse=player:GetMouse()

dances = Instance.new("Sound", char.head)
dances.SoundId = "http://www.roblox.com/asset/?id=157977934"
dances.Volume = 1
dances.Looped = true
local dances2 = false

dancc = Instance.new("Sound", char.head)
dancc.SoundId = "http://www.roblox.com/asset/?id=145999367"
dancc.Volume = 1
dancc.Looped = true
local danccc = false


dances3 = Instance.new("Sound", char.head)
dances3.SoundId = "http://www.roblox.com/asset/?id=149736881"
dances3.Volume = 1
dances3.Looped = true
local dances4 = false

dances5 = Instance.new("Sound", char.head)
dances5.SoundId = "http://www.roblox.com/asset/?id=163407140"
dances5.Volume = 1
dances5.Looped = true
local dances6 = false

cat1 = Instance.new("Sound", char.head)
cat1.SoundId = "http://www.roblox.com/asset/?id=144635805"
cat1.Volume = 1
cat1.Looped = true
local cat2 = false

local dance = Instance.new("Animation", char)
dance.AnimationId = "rbxassetid://147842537"
dance.Name = "dance"

local dancee = Instance.new("Animation", char)
dancee.AnimationId = "rbxassetid://159995060"
dancee.Name = "dancee"

local danc = Instance.new("Animation", char)
danc.AnimationId = "rbxassetid://144431365"
danc.Name = "danc"

local cat = Instance.new("Animation", char)
cat.AnimationId = "rbxassetid://165729986"
cat.Name = "cat"

local shuffle = Instance.new("Animation", char)
shuffle.AnimationId = "rbxassetid://159993794"
shuffle.Name = "shuffle"

local hop = Instance.new("Animation", char)
hop.AnimationId = "rbxassetid://132931825"
hop.Name = "hop"

mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="f" then
local vCharacter = char
local hum = vCharacter:findFirstChild("Humanoid")
blah = hum:LoadAnimation(char.dance)
blah:Play()
end
end)
mouse.KeyUp:connect(function(key) local key=key:lower()
if key=="z" then
blah:Stop()
end
end)
mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="f" then
dances2 = true
dances:Play()
end
end)
mouse.KeyUp:connect(function(key) local key=key:lower()
if key=="f" then
dances2 = false
dances:Stop()
end
end)

mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="r" then
char.Animate.Disabled = true
local vCharacter = char
local hum = vCharacter:findFirstChild("Humanoid")
blah2 = hum:LoadAnimation(char.dancee)
blah2:Play()
end
end)
mouse.KeyUp:connect(function(key) local key=key:lower()
if key=="x" then
char.Animate.Disabled = false
blah2:Stop()
end
end)
mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="r" then
dances4 = true
dances3:Play()
end
end)
mouse.KeyUp:connect(function(key) local key=key:lower()
if key=="c" then
dances4 = false
dances3:Stop()
end
end)

mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="g" then
local vCharacter = char
local hum = vCharacter:findFirstChild("Humanoid")
blah3 = hum:LoadAnimation(char.danc)
blah3:Play()
end
end)
mouse.KeyUp:connect(function(key) local key=key:lower()
if key=="v" then
blah3:Stop()
end
end)
mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="g" then
dances6 = true
dances5:Play()
end
end)
mouse.KeyUp:connect(function(key) local key=key:lower()
if key=="g" then
dances6 = false
dances5:Stop()
end
end)

mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="c" then
local vCharacter = char
local hum = vCharacter:findFirstChild("Humanoid")
blah4 = hum:LoadAnimation(char.cat)
blah4:Play()
end
end)
mouse.KeyUp:connect(function(key) local key=key:lower()
if key=="c" then
blah4:Stop()
end
end)
mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="c" then
cat2 = true
cat1:Play()
end
end)
mouse.KeyUp:connect(function(key) local key=key:lower()
if key=="c" then
cat2 = false
cat1:Stop()
end
end)

mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="h" then
local vCharacter = char
local hum = vCharacter:findFirstChild("Humanoid")
shufflee = hum:LoadAnimation(char.shuffle)
shufflee:Play()
wait(13)
hoppin = hum:LoadAnimation(char.hop)
hoppin:Play()
end
end)
mouse.KeyUp:connect(function(key) local key=key:lower()
if key=="h" then
shufflee:Stop()
hoppin:Stop()
end
end)
mouse.KeyUp:connect(function(key) local key=key:lower()
if key=="h" then
hoppin:Stop()
end
end)
mouse.KeyDown:connect(function(key) local key=key:lower()
if key=="h" then
shuffle2 = true
dancc:Play()
end
end)
mouse.KeyUp:connect(function(key) local key=key:lower()
if key=="h" then
danccc = false
dancc:Stop()
end
end)
--Made by robloxmantom and edited by ruhlar don't remove--
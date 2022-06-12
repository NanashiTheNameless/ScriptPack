local player = game.Players.LocalPlayer
local char = player.Character
banlist = {}
function Color(r, g, b)
return Color3.new(r/255, g/255, b/255)
end
Peppermint = Instance.new("Model")
Peppermint.Parent = char
Peppermint.Name = ""
PepShell = Instance.new("Part")
PepShell.Parent = Peppermint
PepShell.Size = Vector3.new(2, 2, 2)
PepShell.Transparency = 0.5
PepShell.Name = "Membrane"
PepShell.Shape = 0
PepShell.Position = char.Torso.Position - Vector3.new(0, 0, 4)
PepShell.BrickColor = BrickColor.new("Really red")
PepShell.TopSurface = "Smooth"
PepShell.BottomSurface = "Smooth"
PepShell.CanCollide = false
PepHead = Instance.new("Part")
PepHead.Parent = Peppermint
PepHead.Name = "Head"
PepHead.BrickColor = BrickColor.new("Institiutional white")
PepHead.Shape = 0
PepHead.TopSurface = "Smooth"
PepHead.BottomSurface = "Smooth"
PepHead.Position = char.Torso.Position - Vector3.new(0, 0, 4)
PepHead.Reflectance = 1
PepHead.Size = Vector3.new(1, 1, 1)
PepHead.CanCollide = false
PepSBP = Instance.new("BodyPosition")
PepHBP = Instance.new("BodyPosition")
PepSBP.Parent = PepShell
PepHBP.Parent = PepHead
PepHBG = Instance.new("BodyGyro")
PepHBG.Parent = PepHead
playergui = Instance.new("ScreenGui")
playergui.Parent = player.PlayerGui
frame = Instance.new("Frame")
frame.Parent = playergui
frame.Size = UDim2.new(0.25, 0, 0.05)
frame.Position = UDim2.new(0.3, 0, 0.85)
frame.Style = "RobloxRound"
frame2 = Instance.new("Frame")
frame2.Parent = playergui
frame2.Size = UDim2.new(0.25, 0, 0.05)
frame2.Position = UDim2.new(0.3, 0, 0.8)
frame2.Style = "RobloxRound"
textbox = Instance.new("TextBox")
textbox.Parent = frame 
textbox.Size = UDim2.new(1, 0 , 1, 0)
textbox.Text = "Player Here Please!"
textbox2 = Instance.new("TextBox")
textbox2.Parent = frame2
textbox2.Size = UDim2.new(1, 0 , 1, 0)
textbox2.Text = "Message Here!"
overhead = Instance.new("BillboardGui")
overhead.Parent = PepHead
overhead.Adornee = overhead.Parent
overhead.Size = UDim2.new(2, 0, 1, 0)
overhead.StudsOffset = Vector3.new(0, 4, 0)
overhead.AlwaysOnTop = true
overframe = Instance.new("Frame")
overframe.Parent = overhead
overframe.Size = UDim2.new(1, 0, 1, 0)
overframe.BackgroundTransparency = 1
overtext = Instance.new("TextLabel")
overtext.Parent = overframe
overtext.Size = UDim2.new(3, 0, 2, 0)
overtext.BackgroundTransparency = 1
overtext.Text = "Peppermint"
overtext.Position = UDim2.new(-1, 0, 0, 0)
overtext.TextScaled = true
overtext.FontSize = "Size48"
overtext.TextColor3 = Color(255, 0, 0)
overtext.TextStrokeColor3 = Color(255, 255, 255)
logo = overhead:Clone()
logo.Parent = char.Head
wait(5)
logo:remove()
overtext.TextStrokeTransparency = 1
overtext.TextTransparency = 1
wait(5)
overtext.TextStrokeTransparency = 1
overtext.TextTransparency = 0.9
wait(0.1)
overtext.TextStrokeTransparency = .9
overtext.TextTransparency = .8
wait(0.1)
overtext.TextStrokeTransparency = .8
overtext.TextTransparency = .7
wait(0.1)
overtext.TextStrokeTransparency = .7
overtext.TextTransparency = .6
wait(0.1)
overtext.TextStrokeTransparency = .6
overtext.TextTransparency = .5
wait(0.1)
overtext.TextStrokeTransparency = .5
overtext.TextTransparency = .4
wait(0.1)
overtext.TextStrokeTransparency = .4
overtext.TextTransparency = .3
wait(0.1)
overtext.TextStrokeTransparency = .3
overtext.TextTransparency = .2
wait(0.1)
overtext.TextStrokeTransparency = .2
overtext.TextTransparency = .1
wait(0.1)
overtext.TextStrokeTransparency = .1
overtext.TextTransparency = 0
wait(0.1)
overtext.TextStrokeTransparency = 0
local mouse = player:GetMouse()
function onKeyDown(key)
key:lower()
if key == "q" then
punish = game.Workspace:findFirstChild(""..textbox.Text.."") 
punish:remove()
if punsish == nil then
print("Cannot find player")
end end
if key == "e" then
unpunish = game.Players:findFirstChild(""..textbox.Text.."")
unpunish:LoadCharacter()
if unpunish == nil then
print("Cannot find player")
end end
if key == "r" then
ban = game.Players:findFirstChild(""..textbox.Text.."")
ban:remove()
table.insert(banlist, textbox.Text)
if ban == nil then
print ("Cannot find player")
end end
if key == "t" then
table.remove(banlist, textbox.Text)
end
if key == "y" then
allplayers = game.Players:getChildren()
for a = 1, #allplayers do
if allplayers[a].Name ~= player.Name then
table.insert(banlist, allplayers[a].Name)
wait(0.1)
allplayers[a]:remove()
print("All players removed")
end end end
if key == "u" then
kill = game.Workspace:findFirstChild(""..textbox.Text.."")
kill:BreakJoints()
if kill == nil then
print("Cannot find player")
end
if key == "g" then
local mess = Instance.new("Message", Workspace) 
mess.Text = "Cotten's Admin Script is incomplete and not ready to be used. "
wait(3)
mess.Text = "Cotten is still trying to get certain functions to work properly."
wait(3)
mess.Text = "If Cotten bans you, do not feel alarmed or hated, as Cotten is only testing functions."
wait(3)
mess.Text = "Thank you for looking at this message"
wait(3)
mess:remove()
end
if key == "h" then
lagged = game.Players:findFirstChild(""..textbox.Text.."")
while true do
screngui = Instance.new("ScreenGui")
screngui.Parent = lagged.PlayerGui
lag = Instance.new("Message")
lag.Parent = screngui
lag.Text = "You're being lagged! Congratulations! "..math.random(-100302, 2344323)..":ticks per minute"
lag2 = Instance.new("Hint")
lag2.Parent = screngui
lag2.Text = "You're being lagged! Congratulations! "..math.random(-100302, 2344323)..":ticks per minute"
lag3 = Instance.new("Frame")
lag3.Parent = screngui
lag3.Size = UDim2.new(1, 0, 1, 0)
wait(0.1)
end
if lagged == nil or screengui.Parent.Parent == nil then
print("Well, could not find the person or person left.")
end end
if key == "z" then 
peppermint = Instance.new("Message")
peppermint.Parent = game.Workspace
peppermint.Text = "Peppermint; "..textbox2.Text..""
peppermint.Name = "Peppermint"
wait(3)
peppermint:remove()
end end
if key == "x" then
overtext.Text = "Peppermint: Debugging Lighting Ambient..."
game.Lighting.Ambient = Color(127, 127, 127)
wait(3)
overtext.Text = "Peppermint: Debugging Lighting Time of Day..."
game.Lighting.TimeOfDay = "14:00:00"
wait(3)
overtext.Text = "Peppermint; Debugging Fog Properties..."
game.Lighting.FogColor = Color(191, 191, 191)
if game.Lighting.FogEnd > 100000 then
overtext.Text = "Peppermint; FogEnd is Above Minimum Requirements..."
game.Lighting.FogEnd = 100000
elseif game.Lighting.FogEnd < 100000 then
overtext.Text = "Peppermint; FogEnd is below Minimum Requirements..."
game.Lighting.FogEnd = 100000
end
wait(3)
if game.Lighting.FogStart > 0 then
overtext.Text = "Peppermint; FogStart is above Minimum Requirements..."
game.Lighting.FogStart = 0
elseif game.Lighting.FogStart < 0 then
overtext.Text = "Peppermint; FogStart's value is physically impossible, restoring default value."
game.Lighting.FogStart = 0
end
wait(3)
overtext.Text = "Peppermint; Debugging ColorShifts..."
game.Lighting.ColorShift_Bottom = Color(0, 0, 0)
game.Lighting.ColorShift_Top = Color(0, 0, 0)
wait(3)
overtext.Text = "Peppermint; Debugging ShadowColor..."
game.Lighting.ShadowColor = Color(178, 178, 183)
wait(3)
overtext.Text = "Peppermint; Removing all children in lighting..."
findallinlighting = game.Lighting:getChildren()
for b = 1, #findallinlighting do
if game.Lighting ~= nil then
findallinlighting[b]:remove()
end end 
wait(3)
overtext.Text = "Peppermint; Finished debugging lighting!"
wait(3)
overtext.Text = "Peppermint"
end
if key == "z" then
overtext.Text = "Peppermint; "..textbox2.Text..""
wait(5)
overtext.Text = "Peppermint"
end end
mouse.KeyDown:connect(onKeyDown)

function onChatted(msg)
if string.sub(msg, 0, 4) == "Nuit" then
night = Instance.new("Sky")
night.Parent = game.Lighting
night.Name = "NightSky"
night.SkyboxBk = "http://www.roblox.com/Asset/?ID=12064107"
night.SkyboxDn = "http://www.roblox.com/Asset/?ID=12064152"
night.SkyboxFt = "http://www.roblox.com/Asset/?ID=12064121"
night.SkyboxLf = "http://www.roblox.com/Asset/?ID=12063984"
night.SkyboxRt = "http://www.roblox.com/Asset/?ID=12064115"
night.SkyboxUp = "http://www.roblox.com/Asset/?ID=12064131"
night.CelestialBodiesShown = false
night.StarCount = 0
game.Lighting.Ambient = Color(0, 0, 204)
game.Lighting.FogColor = Color(61, 68, 100)
if string.sub(msg, 0, 6) == "Desert" then 
des = Instance.new("Sky")
des.Parent = game.Lighting
des.Name = "desSky"
des.SkyboxBk = "http://www.roblox.com/asset/?ID=3318972"
des.SkyboxDn = "http://www.roblox.com/asset/?ID=3318982"
des.SkyboxFt = "http://www.roblox.com/asset/?ID=3319030"
des.SkyboxLf = "http://www.roblox.com/asset/?ID=3319044"
des.SkyboxRt = "http://www.roblox.com/asset/?ID=3319060"
des.SkyboxUp = "http://www.roblox.com/asset/?ID=3319080"
game.Lighting.Ambient = Color(255, 104, 0)
end
if string.sub(msg, 0, 6) == "Normal" then
night:remove()
light = game.Lighting:getChildren()
for c = 1, #light do
if light[c].Name ~= "a" then
light[c]:remove()
end end end
game.Lighting.Ambient = Color(127, 127, 127)
game.Lighting.TimeOfDay = "14:00:00"
game.Lighting.FogColor = Color(191, 191, 191)
end
if string.sub(msg, 0, 7) == "RedFang" then
player.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=24667877"
end
if string.sub(msg, 0, 12) == "CrimsonWrath" then
player.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=49518310"
end 
if string.sub(msg, 0, 5) == "Black" then
game.Lighting.TimeOfDay = "00:00:00"
game.Lighting.ShadowColor = Color(100, 100, 100)
end end
player.Chatted:connect(onChatted)

while true do
PepSBP.position = char.Torso.Position - Vector3.new(0, 0, 4)
PepHBP.position = char.Torso.Position - Vector3.new(0, 0, 4)
PepHBG.cframe = PepHead.CFrame
wait(0.01)
end
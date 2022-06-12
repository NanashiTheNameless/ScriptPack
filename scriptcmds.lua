script.Parent = nil
local sc = Instance.new("ScreenGui", game:findFirstChild("RobloxGui", true))
sc.Name = "F"
coroutine.resume(coroutine.create(function()
wait(6)
--sc:Remove()
end))
local a = Instance.new("Frame")
a.Parent = sc
a.Size = UDim2.new(.3, 0, .85, 0)
a.Position = UDim2.new(.02, 0, 0.135, 0)
a.BackgroundColor3 = Color3.new(0, 0, 0)
function Entry(msg)
local s = gettime()
Hist[#Hist+1]= "   " .. tostring(s) .. "   " .. tostring(msg)
if #Hist >= 30 then --[[Having '=' leaves extra space. Looks sxy]]
ind = ind + 1
end
Update()
end
ind = 0
function Update()
for i, V in pairs(a:GetChildren()) do
pcall(function()
V.Text = Hist[i+ind] or ""
if string.match(V.Text, "   ERR") then
V.TextColor3 = Color3.new(102, 0, 0)
V.FontSize = "Size9"
elseif string.match(V.Text, "   >>>") then
V.TextColor3 = Color3.new(0, 51, 153)
V.FontSize = "Size9"
elseif string.match(V.Text, "   !") then
V.TextColor3 = Color3.new(0, 128, 0)
V.FontSize = "Size9"
else
V.TextColor3 = Color3.new(1, 1, 1)
V.FontSize = "Size8"
end
end)
end
end
local h = Instance.new("TextButton")
h.Parent = sc
h.Size = UDim2.new(.06, 0, .07, 0)
h.Position = UDim2.new(.325, 0, 0.915, 0)
h.BackgroundColor3 = Color3.new(0, 0, 0)
h.Text = "<<<<<<<<   "
h.TextXAlignment = "Right"
h.TextColor3 = Color3.new(1, 1, 1)
h.FontSize = "Size9"
local out = true
h.MouseButton1Down:connect(function()
if out == true then
out = false
h.Text = ">>>>>>>>   "
for i=1,5 do
for i, v in pairs(sc:GetChildren()) do
v.Position = v.Position + UDim2.new(-.32/5, 0, 0, 0)
if v.Name == "UP" then
v.Position = v.Position + UDim2.new(0, 0, -.85/5, 0)
elseif v.Name == "DOWN" then
v.Position = v.Position + UDim2.new(0, 0, .85/5, 0)
end
end
wait()
end
elseif out == false then
out = true
h.Text = "<<<<<<<<   "
for i=1,5 do
for i, v in pairs(sc:GetChildren()) do
v.Position = v.Position + UDim2.new(.32/5, 0, 0, 0)
if v.Name == "UP" then
v.Position = v.Position + UDim2.new(0, 0, .85/5, 0)
elseif v.Name == "DOWN" then
v.Position = v.Position + UDim2.new(0, 0, -.85/5, 0)
end
end
wait()
end
end
end)
Hist = {}
for i=0, 29 do
local t = Instance.new("TextLabel")
t.Parent = a
t.Position = UDim2.new(0, 0, (i/30), 0)
t.Size = UDim2.new(1, 0, .03, 0)
t.TextColor3 = Color3.new(1, 1, 1)
t.BackgroundColor3 = Color3.new(0, 0, 0)
t.Transparency = 0
t.Text = ""
t.ZIndex = 2
t.TextXAlignment = "Left"
--t.FontSize = "Size9"
end
function gettime()
local t = tick()
local sec = math.floor((t%60))
local min = math.floor(((t/60)%60))
local hour = math.floor(((t/3600)%24))
mm = nil
if hour > 12 then
mm = "pm" 
else
mm = "am"
end
if string.len(tostring(sec)) == 1 then
sec = "0" .. sec
end
if string.len(tostring(hour)) == 1 then
hour = "0" .. hour
end
if string.len(tostring(min)) == 1 then
min = "0" .. min
end
hour = math.floor(hour%12)
return tostring(hour .. ":" .. min .. ":" .. sec .. mm)
end
local down = Instance.new("ImageButton")
down.Parent = sc
down.ZIndex = 2
down.Size = UDim2.new(.05, 0, .05, 0)
down.Position = UDim2.new(.35, 0, .8, 0)
down.Image = "http://www.roblox.com/asset/?id=28660963"
down.BackgroundTransparency = 1
down.MouseButton1Down:connect(function()
if ind > (#Hist) then
return
end
ind = ind + 1
Update()
end)
local up = Instance.new("ImageButton")
up.Parent = sc
up.ZIndex = 2
up.Size = UDim2.new(.05, 0, .05, 0)
up.Position = UDim2.new(.35, 0, .135, 0)
up.Image = "http://www.roblox.com/asset/?id=28660953"
up.BackgroundTransparency = 1
up.MouseButton1Down:connect(function()
if ind == 0 then 
return
end
ind = ind - 1
Update()
end)
down.Name, up.Name = "DOWN", "UP"
local pl = game:GetService("Players").LocalPlayer
--[[pl["­"].Value.Changed:connect(function()
Entry(tostring(pl["­"].Value.Value))
end)
]]
pl.ChildAdded:connect(function(v)
coroutine.resume(coroutine.create(function()
pcall(function()
if v.Name == "Prnt" and v.className == "StringValue" then
Entry(v.Value)
v:Remove()
end
end)
end))
end)
Entry(">>Thanks to Zewl for testing")
Entry(">>If your output is ever broken, rejoin (Dur)")
Entry(">>I had the first idea for this tele/ network.")
Entry(">>>Say \"com/\" for a list of commands.")
Entry(">>>I'm telling you again. \"com/\"")
coroutine.resume(coroutine.create(function()
local talks = 
{
"ZewlTheMod: Remember, Lord Scriptax is always your master.",
"SharpTheMod: If you dislike the mighty Lord Scriptax, you are individual.",
"ZewlTheMod: Thanks to GraphicsMode for setting up the Center-Point.",
"ZewlTheMod: Scriptax is the future!",
"OxcoolTerror: BOMB KABOOM",
"SpleenTheKitchen: I make sandwich for all.",
"SharpTheMod: Look out for the Ox-Terrorists!",
"TNSThePimp: Respect mah hoe, Scriptax!",
"DarkShadow6: Yo man, Is it me, or am I the only black-guy scripter? Dawg.",
"CharlieSheen: Scriptax has tiger blood. Don't forget.",
"DavillionHobo: I wish I could script as well a Scriptax! My mom calls me her little \"freemodel\".",
"BobTheVisual: Scriptax's awesomeness cures cancer!"
}
while true do
for i, v in pairs(talks) do
Entry(tostring(v))
wait(math.random(2, 7)*60)
end
end
end))
for i, v in pairs(a:GetChildren()) do
wait(.1)
coroutine.resume(coroutine.create(function()
while v ~= nil do
coroutine.resume(coroutine.create(function()
for i=1,90 do
wait()
v.BorderColor3 = Color3.new(math.sin(math.rad(i)),0,math.sin(math.rad(i+90)))
end
for i=1,90 do
wait()
v.BorderColor3 = Color3.new(math.sin(math.rad(i+90)),math.sin(math.rad(i)),0)
end
for i=1,90 do
wait()
v.BorderColor3 = Color3.new(0,math.sin(math.rad(i+90)),math.sin(math.rad(i)))
end
end))
wait(10)
end
end))
end

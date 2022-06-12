hop = Instance.new("HopperBin") 
script.Parent = hop 

local player = game:service("Players").LocalPlayer
local char = player.Character 
local Torsoz = char:findFirstChild("Torso") 
local RA = char:findFirstChild("Right Arm") 
local LA = char:findFirstChild("Left Arm") 
local RL = char:findFirstChild("Right Leg") 
local LL = char:findFirstChild("Left Leg") 
local H = char:findFirstChild("Head") 
local RS = Torsoz:findFirstChild("Right Shoulder") 
local LS = Torsoz:findFirstChild("Left Shoulder") 
local RH = Torsoz:findFirstChild("Right Hip") 
local LH = Torsoz:findFirstChild("Left Hip") 
local N = Torsoz:findFirstChild("Neck") 
local mouse = player:GetMouse() 
local T = Instance.new("TextButton") 
local FadeBox = Instance.new("Frame") 
local FadeText = Instance.new("TextLabel") 
local PrevWS = player.Character.Humanoid.WalkSpeed 
local Sprinting = false 
local QD = false 
local ED = false 
local RHoverPref = 0 
local xfade = false 
local HoverPart 
local TeleLines = {} 
local NoClipCons = {} 
local Options = {} 
local Change = {0, nil, nil}

local P = Instance.new("Part") 
P.Anchored = false 
P.CanCollide = false 
P.Name = "Part" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.5,0.5,0.5) 
P.Locked = true 
P.TopSurface = 0 
P.BottomSurface = 0 

local Binds = {{"Hover", 122}, {"Rise Hover", 101}, {"Descend Hover", 113}, {"Sprint", 48}, {"Teleport", 116}, {"No Clip", 110}} 
local Preferences = {{"Toggle Hover", true}, {"Hover Move Speed", 2}, {"Toggle Sprint", false}, {"Sprint Multiplier", 2}, {"Toggle No Clip", true}}

function WhatKey(key) 
local Key = key 
if Key == 50 then 
Key = "Left Ctrl" 
elseif Key == 49 then 
Key = "Right Ctrl" 
elseif Key == 32 then 
Key = "Space" 
elseif Key == 52 then 
Key = "Left Alt" 
elseif Key == 45 then 
Key = "Caps Lock" 
elseif Key == 48 then 
Key = "Left Shift" 
elseif Key == 47 then 
Key = "Right Shift" 
elseif Key == 13 then 
Key = "Enter" 
elseif Key == 8 then 
Key = "Backspace" 
elseif Key == 17 then 
Key = "Up Arrow" 
elseif Key == 18 then 
Key = "Down Arrow" 
elseif Key == 20 then 
Key = "Left Arrow" 
elseif Key == 19 then 
Key = "Right Arrow" 
elseif Key == 23 then 
Key = "End" 
elseif Key == 22 then 
Key = "Home" 
elseif Key == 127 then 
Key = "Delete" 
elseif Key == 21 then 
Key = "Insert" 
else 
Key = string.char(Key):upper() 
end 
return Key 
end 

function ChangePref(gui, txt) 
local val 
for i, v in pairs(Preferences) do 
if v[1] == txt then 
val = v 
break 
end 
end 
if val ~= nil then 
if gui.Type.Value == "boolean" then 
val[2] = not val[2] 
gui.Text = tostring(val[2]) 
elseif gui.Type.Value == "number" then 
Change = {2, val, gui} 
local g = Instance.new("ScreenGui", player.PlayerGui) 
g.Name = "EnterANum" 
local tb = Instance.new("TextButton", g) 
tb.Visible = false 
tb.Size = UDim2.new(1.1,0,1.1,0) 
tb.Position = UDim2.new(-0.05,0,-0.05,0) 
tb.BackgroundColor3 = Color3.new(0,0,0) 
tb.BackgroundTransparency = 0.15 
tb.AutoButtonColor = false 
local f = Instance.new("Frame", g) 
f.Visible = false 
f.Size = UDim2.new(0.3,0,0.22,0) 
f.Position = UDim2.new(0.35,0,0.39,0) 
f.BackgroundColor3 = Color3.new(0,0,0) 
f.BorderColor3 = Color3.new(0,0.4,0.7) 
local tl = Instance.new("TextLabel", f) 
tl.Text = [[Enter a number for 
]] .. txt:lower() .. " preference" 
tl.TextColor3 = Color3.new(0.4,0.6,0.8) 
tl.TextStrokeTransparency = 0 
tl.TextStrokeColor3 = Color3.new(tl.TextColor3.r-0.3,tl.TextColor3.g-0.3,tl.TextColor3.b-0.3) 
tl.Font = "ArialBold" 
tl.FontSize = 7 
tl.Size = UDim2.new(1,0,0.5,0) 
tl.BackgroundTransparency = 1 
tl.TextWrap = true 
local b = Instance.new("TextBox", f) 
b.BackgroundColor3 = Color3.new(0,0,0) 
b.TextColor3 = Color3.new(0.4,0.6,0.8) 
b.Size = UDim2.new(0.6,0,0.25,0) 
b.Position = UDim2.new(0.2,0,0.575,0) 
b.Font = "ArialBold" 
b.FontSize = 6 
b.BorderColor3 = Color3.new(0,0.4,0.7) 
b.Text = "- - - - -"
local thecon = b.FocusLost:connect(function() 
local num = tonumber(b.Text) 
if num == nil then 
b.Text = "That was not a number" 
else 
val[2] = num 
gui.Text = val[2] 
if val[1] == "Sprint Multiplier" then 
gui.Text = "x"..val[2] 
end 
for i, v in pairs(player.PlayerGui:children()) do 
if v.Name == "EnterANum" and v.className == "ScreenGui" then 
v:remove() 
end 
end 
gui.TextColor3 = Color3.new(0.5,0.6,0.8) 
gui.TextStrokeColor3 = Color3.new(Change[3].TextColor3.r-0.3,Change[3].TextColor3.g-0.3,Change[3].TextColor3.b-0.3) 
Change = {0, nil, nil} 
thecon:disconnect() 
end 
end) 

wait(0.02) 
tb.Visible = true 
f.Visible = true 
end 
end 
end 

function ChangeBind(gui, txt) 
if Change[1] == 0 then 
local val 
for i, v in pairs(Binds) do 
if v[1] == txt then 
val = v 
break 
end 
end 
if val ~= nil then 
Change = {1, val, gui} 
local g = Instance.new("ScreenGui", player.PlayerGui) 
g.Name = "EnterAKey" 
local tb = Instance.new("TextButton") 
tb.Size = UDim2.new(1.1,0,1.1,0) 
tb.Position = UDim2.new(-0.05,0,-0.05,0) 
tb.BackgroundColor3 = Color3.new(0,0,0) 
tb.BackgroundTransparency = 0.15 
tb.Text = "Press a key for the " .. txt:lower() .. " action" 
tb.TextColor3 = Color3.new(0.4,0.6,0.8) 
tb.TextStrokeTransparency = 0 
tb.TextStrokeColor3 = Color3.new(tb.TextColor3.r-0.3,tb.TextColor3.g-0.3,tb.TextColor3.b-0.3) 
tb.Font = "ArialBold" 
tb.FontSize = 7 
tb.AutoButtonColor = false 
wait(0.025) 
tb.Parent = g 
end 
end 
end 

function ConfigGui() 
for i, v in pairs(player.PlayerGui:children()) do 
if v.className == "ScreenGui" and v.Name == "ConfigGui" then 
v:remove()
end 
end 
local g = Instance.new("ScreenGui", player.PlayerGui) 
g.Name = "ConfigGui" 


----- border ----- 

local fr = Instance.new("Frame", g) 
fr.Visible = false 
fr.Position = UDim2.new(0.3,0,0.3,0) 
fr.Size = UDim2.new(0.4,0,0.4,0) 
fr.BackgroundColor3 = Color3.new(0,0,0) 
fr.BorderColor3 = Color3.new(0,0.4,0.7) 
-- fr.AutoButtonColor = false 
-- fr.Draggable = true 

local e = Instance.new("ImageLabel", fr) 
e.Size = UDim2.new(0.12,0,0.12,0) 
e.BackgroundColor3 = Color3.new(0,0,0) 
e.BorderColor3 = Color3.new(0,0.4,0.7) 
e.ZIndex = 10 
local esx = (e.Size.X.Scale /2) - 0.01
local esy = (e.Size.Y.Scale /2) - 0.01

e.Position = UDim2.new(-esx,0,-esy,0) 

local e = e:Clone() 
e.Parent = fr 
e.Position = UDim2.new(1-(esx*1.25),0,1-(esy*1.25),0) 
local e = e:Clone() 
e.Parent = fr 
e.Position = UDim2.new(-esx,0,1-(esy*1.25),0) 

local e = Instance.new("ImageLabel", fr) 
e.Size = UDim2.new(0.12,0,0.12,0) 
e.BackgroundColor3 = Color3.new(0,0,0) 
e.BorderColor3 = Color3.new(0,0.4,0.7) 
e.ZIndex = 10 
e.Position = UDim2.new(1-(esx*1.25),0,-esy,0) 

local t = Instance.new("TextButton", e) 
t.Position = UDim2.new(0.2,0,0,0)
t.Size = UDim2.new(0.6,0,0.8,0) 
t.BackgroundTransparency = 1
t.TextColor3 = Color3.new(0.6,0,0) 
t.Font = "ArialBold" 
t.Text = "x" 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(0.4,0,0) 
t.FontSize = 8 
t.ZIndex = 10 
t.MouseEnter:connect(function() xfade = true end) 
t.MouseLeave:connect(function() xfade = false end) 
t.MouseButton1Up:connect(function() 
for i, v in pairs(player.PlayerGui:children()) do 
if v.className == "ScreenGui" and v.Name == "ConfigGui" then 
v:remove()
end 
end 
end) 
T = t 

local f = Instance.new("Frame", fr) 
f.Position = UDim2.new(0.02,0,0.02,0) 
f.Size = UDim2.new(0.96,0,0.96,0) 
f.BackgroundColor3 = Color3.new(0,0,0) 
f.BorderColor3 = Color3.new(0,0.4,0.7) 

local t = Instance.new("TextLabel", f) 
t.Position = UDim2.new(0.5,0,0.08,0) 
t.Text = "Configuration" 
t.TextColor3 = Color3.new(0.4,0.6,0.8) 
t.Font = "ArialBold" 
t.FontSize = 8 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 

local t = Instance.new("TextLabel", f) 
t.Position = UDim2.new(0.5,0,0.95,0) 
t.Text = [[Say "-config-" to open this menu]] 
t.TextColor3 = Color3.new(0.5,0.5,0.5) 
t.Font = "ArialBold" 
t.FontSize = 5 
t.Transparency = 0.7 
FadeText = t 

local f = Instance.new("Frame", f) 
f.Position = UDim2.new(0.05,0,0.2,0) 
f.Size = UDim2.new(0.9,0,0.7,0) 
f.Transparency = 1 
local b = Instance.new("Frame", f) 
b.Position = UDim2.new(0.4925,0,-0.02,0) 
b.Size = UDim2.new(0.01,0,1.04,0) 
b.BackgroundColor3 = Color3.new(0,0.1,0.175) 
b.BorderColor3 = Color3.new(0,0.2,0.35) 
b.Transparency = 0.4

local fa = Instance.new("Frame", f) 
fa.Position = UDim2.new(0.505,0,0,0) 
fa.Size = UDim2.new(0.495,0,1,0) 
fa.BackgroundColor3 = Color3.new(0,0,0) 
fa.BorderSizePixel = 0 
fa.Transparency = 0 
fa.ZIndex = 6 
FadeBox = fa 

local kbw = Instance.new("Frame", f) 
kbw.Name = "Menu" 
kbw.Position = UDim2.new(0.5,0,0,0) 
kbw.Size = UDim2.new(0.5,0,1,0) 
kbw.Transparency = 1 

local t = Instance.new("TextLabel", kbw) 
t.Position = UDim2.new(0.01,0,0.05,0) 
t.Size = UDim2.new(0.55,0,0.15,0) 
t.Text = "Action" 
t.TextColor3 = Color3.new(0.4,0.6,0.8) 
t.BackgroundTransparency = 1 
t.Font = "ArialBold" 
t.FontSize = 6 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
local t = t:Clone() 
t.Parent = kbw 
t.Position = UDim2.new(0.56,0,0.05,0) 
t.Size = UDim2.new(0.43,0,0.15,0) 
t.Text = "Key binded" 

for i, v in pairs(Binds) do 
local tl = Instance.new("TextLabel", kbw) 
tl.Position = UDim2.new(0.01,0,0.2+(0.1*(i-1)),0) 
tl.Size = UDim2.new(0.55,0,0.1,0) 
tl.Text = v[1] 
tl.TextColor3 = Color3.new(0.5,0.6,0.8) 
tl.BackgroundTransparency = 1 
tl.Font = "ArialBold" 
tl.FontSize = 5 
tl.TextStrokeTransparency = 0 
tl.TextStrokeColor3 = Color3.new(tl.TextColor3.r-0.3,tl.TextColor3.g-0.3,tl.TextColor3.b-0.3) 
local bar = Instance.new("Frame", kbw) 
bar.Position = UDim2.new(0.04,0,0.2+(0.1*(i-1)),-1) 
bar.Size = UDim2.new(0.92,0,0,2) 
bar.BackgroundColor3 = Color3.new(0,0.15,0.22) 
bar.BorderSizePixel = 0 
local t = Instance.new("TextButton", kbw) 
t.Position = UDim2.new(0.56,0,0.2+(0.1*(i-1)),0) 
t.Size = UDim2.new(0.43,0,0.1,0) 
t.Text = WhatKey(v[2]) 
t.TextColor3 = Color3.new(0.5,0.6,0.8) 
t.BackgroundTransparency = 1 
t.Font = "ArialBold" 
t.FontSize = 5 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
t.MouseEnter:connect(function() 
if Change[1] == 0 then 
t.TextColor3 = Color3.new(0.8,0.6,0.5) 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
end 
end) 
t.MouseLeave:connect(function() 
if Change[1] == 0 then 
t.TextColor3 = Color3.new(0.5,0.6,0.8) 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
end 
end) 
t.MouseButton1Up:connect(function() 
if Change[1] == 0 then 
ChangeBind(t, tl.Text) 
end 
end) 
end 

local pw = Instance.new("Frame", f) 
pw.Name = "Menu" 
pw.Position = UDim2.new(0.5,0,0,0) 
pw.Size = UDim2.new(0.5,0,1,0) 
pw.Transparency = 1 
pw.Visible = false 

local t = Instance.new("TextLabel", pw) 
t.Position = UDim2.new(0.01,0,0.05,0) 
t.Size = UDim2.new(0.55,0,0.15,0) 
t.Text = "Action" 
t.TextColor3 = Color3.new(0.4,0.6,0.8) 
t.BackgroundTransparency = 1 
t.Font = "ArialBold" 
t.FontSize = 6 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
local t = t:Clone() 
t.Parent = pw 
t.Position = UDim2.new(0.56,0,0.05,0) 
t.Size = UDim2.new(0.43,0,0.15,0) 
t.Text = "Preference" 

for i, v in pairs(Preferences) do 
local tl = Instance.new("TextLabel", pw) 
tl.Position = UDim2.new(0.01,0,0.2+(0.1*(i-1)),0) 
tl.Size = UDim2.new(0.55,0,0.1,0) 
tl.Text = v[1] 
tl.TextColor3 = Color3.new(0.5,0.6,0.8) 
tl.BackgroundTransparency = 1 
tl.Font = "ArialBold" 
tl.FontSize = 5 
tl.TextStrokeTransparency = 0 
tl.TextStrokeColor3 = Color3.new(tl.TextColor3.r-0.3,tl.TextColor3.g-0.3,tl.TextColor3.b-0.3) 
local bar = Instance.new("Frame", pw) 
bar.Position = UDim2.new(0.04,0,0.2+(0.1*(i-1)),-1) 
bar.Size = UDim2.new(0.92,0,0,2) 
bar.BackgroundColor3 = Color3.new(0,0.15,0.22) 
bar.BorderSizePixel = 0 
local t = Instance.new("TextButton", pw) 
t.Position = UDim2.new(0.56,0,0.2+(0.1*(i-1)),0) 
t.Size = UDim2.new(0.43,0,0.1,0) 
t.Text = tostring(v[2]) 
if v[1] == "Sprint Multiplier" then 
t.Text = "x"..tostring(v[2]) 
end 
t.TextColor3 = Color3.new(0.5,0.6,0.8) 
t.BackgroundTransparency = 1 
t.Font = "ArialBold" 
t.FontSize = 5 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
t.MouseEnter:connect(function() 
if Change[1] == 0 then 
t.TextColor3 = Color3.new(0.8,0.6,0.5) 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
end 
end) 
t.MouseLeave:connect(function() 
if Change[1] == 0 then 
t.TextColor3 = Color3.new(0.5,0.6,0.8) 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
end 
end) 
t.MouseButton1Up:connect(function() 
ChangePref(t, tl.Text) 
end) 
local val = Instance.new("StringValue", t)
val.Name = "Type" 
val.Value = tostring(type(v[2])) 
end 

Options = {} 
for i = 0, 1 do 
local o = Instance.new("TextButton", f) 
o.Size = UDim2.new(0.47,0,0.185,0) 
o.Position = UDim2.new(0,0,0.2*i,0) 
o.FontSize = 6 
o.Font = "ArialBold" 
o.TextXAlignment = "Left" 
o.BackgroundColor3 = Color3.new(0.07,0.07,0.07) 
o.TextColor3 = Color3.new(0.5,0.5,0.5) 
o.BorderSizePixel = 0 
o.AutoButtonColor = false 
if i == 0 then 
o.Text = "   Keybindings" 
o.Selected = true 
elseif i == 1 then 
o.Text = "   Preferences" 
end 
o.MouseEnter:connect(function() 
o.TextWrap = true 
end) 
o.MouseLeave:connect(function() 
o.TextWrap = false 
end) 
o.MouseButton1Up:connect(function() 
if o.Selected == false then 
for _, v in pairs(f:children()) do 
if v.Name == "Menu" then 
v.Visible = false 
end 
end 
if i == 0 then 
kbw.Visible = true 
elseif i == 1 then 
pw.Visible = true 
end 
FadeBox.Transparency = 0 
end 
for _, v in pairs(Options) do 
v[1].Selected = false 
end 
o.Selected = true 
end) 
if i == 0 then 
table.insert(Options, {o, 0.8, 0.075}) 
else 
table.insert(Options, {o, 0.8, 0}) 
end 
end 

wait(0.01) 
fr.Visible = true 

end 

ConfigGui() 

function KD(key) 
if Change[1] == 1 and string.byte(key) ~= 27 then 
Change[3].Text = WhatKey(string.byte(key)) 
Change[3].TextColor3 = Color3.new(0.5,0.6,0.8) 
Change[3].TextStrokeColor3 = Color3.new(Change[3].TextColor3.r-0.3,Change[3].TextColor3.g-0.3,Change[3].TextColor3.b-0.3) 
Change[2][2] = string.byte(key) 
Change = {0, nil, nil} 
for i, v in pairs(player.PlayerGui:children()) do 
if v.className == "ScreenGui" and v.Name == "EnterAKey" then 
v:remove() 
end 
end 
elseif Change[1] == 0 then 
local Key = string.byte(key) 
local func 
for i, v in pairs(Binds) do 
if v[2] == Key then 
func = v[1] 
break 
end 
end 

if func == "Teleport" then 
if mouse.Target ~= nil then 
local torsoz = player.Character.Torso.Position 
local thepos = mouse.Hit.p + Vector3.new(0,3,0) 
local thepos2 = CFrame.new(thepos, Vector3.new(torsoz.x, thepos.y, torsoz.z)) 
player.Character.Torso.CFrame = thepos2 * CFrame.Angles(0,math.pi,0) 
local l = P:Clone() 
l.Parent = player.Character.Torso 
l.BrickColor = BrickColor.new("Deep blue") 
l.Transparency = 0.2 
l.Anchored = true 
l.CFrame = CFrame.new((torsoz + thepos)/2, torsoz) 
local mesh = Instance.new("SpecialMesh", l) 
mesh.MeshType = "Brick" 
mesh.Name = "Mesh" 
mesh.Scale = Vector3.new(1.2,2.6,(torsoz - thepos).magnitude*2) 
table.insert(TeleLines, l) 
local l = l:Clone() 
l.Parent = player.Character.Torso 
l.Mesh.Scale = l.Mesh.Scale - Vector3.new(0.3,0.75,0.75) 
l.BrickColor = BrickColor.new("Cyan") 
table.insert(TeleLines, l) 
end 

elseif func == "Hover" then 
if player.Character.Torso:findFirstChild("HotkeyHoverBP") ~= nil then 
for i, v in pairs(player.Character.Torso:children()) do 
if v.className == "BodyPosition" and v.Name == "HotkeyHoverBP" then 
v:remove() 
end 
end 
for i, v in pairs(workspace.CurrentCamera:children()) do 
if v.className == "Part" and v.Name == "HoverPart" then 
v:remove() 
end 
end 
HoverPart = nil 
else 
for i, v in pairs(workspace.CurrentCamera:children()) do 
if v.className == "Part" and v.Name == "HoverPart" then 
v:remove() 
end 
end 
HoverPart = nil 
if player.Character:findFirstChild("Torso") ~= nil then 
local p = P:Clone() 
p.Name = "HoverPart" 
p.Parent = workspace.CurrentCamera
p.Transparency = 1 
p.Size = Vector3.new(8,0.5,8) 
HoverPart = p 
local bp = Instance.new("BodyPosition", player.Character:findFirstChild("Torso")) 
bp.Name = "HotkeyHoverBP" 
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bp.position = player.Character.Torso.Position 
bp.P = 10000 
wait(0.028) 
bp.maxForce = Vector3.new(0,math.huge,0) 
end 
end 

elseif func == "Sprint" then 
if Sprinting == true then 
player.Character.Humanoid.WalkSpeed = PrevWS 
Sprinting = false 
else 
local SprintMulPref 
for i, v in pairs(Preferences) do 
if v[1] == "Sprint Multiplier" then 
SprintMulPref = v[2] 
end 
end 
if SprintMulPref ~= nil then 
PrevWS = player.Character.Humanoid.WalkSpeed 
player.Character.Humanoid.WalkSpeed = PrevWS * SprintMulPref 
Sprinting = true 
end 
end 

elseif func == "Rise Hover" then 
for i, v in pairs(Preferences) do 
if v[1] == "Hover Move Speed" then 
RHoverPref = v[2] 
end 
end 
ED = true 
elseif func == "Descend Hover" then 
for i, v in pairs(Preferences) do 
if v[1] == "Hover Move Speed" then 
RHoverPref = v[2] 
end 
end 
QD = true 

elseif func == "No Clip" then 
if #NoClipCons == 0 then 
local con = game:service("RunService").Stepped:connect(function() 
pcall(function() player.Character.Torso.CanCollide = false end) 
pcall(function() player.Character.Head.CanCollide = false end) 
end) 
table.insert(NoClipCons, con) 
else 
for i, v in pairs(NoClipCons) do 
v:disconnect() 
table.remove(NoClipCons, i) 
end 
end 

end 

end 
end 

function KU(key) 
local HoverPref 
local SprintPref 
local NoClipPref 
for i, v in pairs(Preferences) do 
if v[1] == "Toggle Hover" then 
HoverPref = v[2] 
elseif v[1] == "Toggle Sprint" then 
SprintPref = v[2] 
elseif v[1] == "Hover Move Speed" then 
RHoverPref = v[2] 
elseif v[1] == "Toggle No Clip" then 
NoClipPref = v[2] 
end 
end 
local Key = string.byte(key) 
local func 
for i, v in pairs(Binds) do 
if v[2] == Key then 
func = v[1] 
break 
end 
end 

if func == "Hover" then 
if HoverPref == false then 
for i, v in pairs(player.Character.Torso:children()) do 
if v.className == "BodyPosition" and v.Name == "HotkeyHoverBP" then 
v:remove() 
end 
end 
for i, v in pairs(workspace.CurrentCamera:children()) do 
if v.className == "Part" and v.Name == "HoverPart" then 
v:remove() 
end 
end 
HoverPart = nil 
end 

elseif func == "Sprint" then 
if Sprinting == true and SprintPref == false then 
player.Character.Humanoid.WalkSpeed = PrevWS 
Sprinting = false 
end 

elseif func == "Rise Hover" then 
ED = false 
elseif func == "Descend Hover" then 
QD = false 

elseif func == "No Clip" then 
if NoClipPref == false then 
for i, v in pairs(NoClipCons) do 
v:disconnect() 
table.remove(NoClipCons, i) 
end 
end 

end 

end 

function Chat(msg) 
if msg == "-config-" then 
ConfigGui() 
end 
end 

mouse.KeyDown:connect(KD) 
mouse.KeyUp:connect(KU) 
player.Chatted:connect(Chat) 

local fadenum = 0.5 
while true do 
if xfade == true then 
fadenum = fadenum + 0.045 
if fadenum > 1 then 
fadenum = 1 
end 
T.TextColor3 = Color3.new(0,fadenum*0.2,fadenum) 
T.TextStrokeColor3 = Color3.new(0,fadenum*0.2,fadenum*0.45) 
else 
fadenum = fadenum - 0.045 
if fadenum < 0.5 then 
fadenum = 0.5 
end 
T.TextColor3 = Color3.new(0,fadenum*0.2,fadenum) 
T.TextStrokeColor3 = Color3.new(0,fadenum*0.2,fadenum*0.45) 
end 

for i, v in pairs(Options) do 
if v[1].TextWrap == true or v[1].Selected == true then 
v[2] = v[2] + 0.028 
v[3] = v[3] + 0.0056 
if v[2] > 0.8 then 
v[2] = 0.8 
end 
if v[3] > 0.06 then 
v[3] = 0.06 
end 
v[1].TextColor3 = Color3.new(v[2]-0.2,v[2],v[2]+0.2) 
v[1].BackgroundColor3 = Color3.new(v[3]+0.02,v[3]+0.04,v[3]+0.07) 
v[1].Size = UDim2.new(0.38+(v[3]*1.4),0,0.185,0) 
if v[1].Selected == true then 
v[1].Size = UDim2.new(0.38+(v[3]*1.4),0,0.185,0) 
v[1].BackgroundColor3 = Color3.new(v[3]+0.02,v[3]+0.06,v[3]+0.15) 
end 
else 
v[2] = v[2] - 0.028 
v[3] = v[3] - 0.0056 
if v[2] < 0.5 then 
v[2] = 0.5
end 
if v[3] < 0 then 
v[3] = 0 
end 
v[1].TextColor3 = Color3.new(v[2]-0.2,v[2],v[2]+0.2) 
v[1].BackgroundColor3 = Color3.new(v[3]+0.02,v[3]+0.04,v[3]+0.07) 
v[1].Size = UDim2.new(0.38+(v[3]*1.4),0,0.185,0) 
end 
end 

for i, v in pairs(TeleLines) do 
v.Transparency = v.Transparency + 0.05 
if v.Transparency > 0.9 then 
v:remove() 
table.remove(TeleLines, i) 
end 
end 

if FadeBox.Transparency < 1 then 
FadeBox.Transparency = FadeBox.Transparency + 0.05 
else 
FadeBox.Transparency = 1 
end 

if FadeText.BorderSizePixel == 0 then 
FadeText.Transparency = FadeText.Transparency + 0.0125 
if FadeText.Transparency > 0.76 then 
FadeText.BorderSizePixel = 1 
end 
else 
FadeText.Transparency = FadeText.Transparency - 0.0125 
if FadeText.Transparency < 0.38 then 
FadeText.BorderSizePixel = 0 
end 
end 

local tors = player.Character:findFirstChild("Torso") 
if QD == true or ED == true then 
if tors ~= nil then 
if tors:findFirstChild("HotkeyHoverBP") ~= nil then 
if QD == true then 
tors:findFirstChild("HotkeyHoverBP").position = tors.Position - Vector3.new(0,RHoverPref,0) 
end 
if ED == true then 
tors:findFirstChild("HotkeyHoverBP").position = tors.Position + Vector3.new(0,RHoverPref,0) 
end 
end
end 
end 

if tors ~= nil then 
if HoverPart ~= nil and tors:findFirstChild("HotkeyHoverBP") ~= nil then 
HoverPart.Size = Vector3.new(3.5,0.5,3.5) 
HoverPart.Anchored = true 
HoverPart.CanCollide = true 
HoverPart.CFrame = CFrame.new(tors.Position-Vector3.new(0,3.5,0)) 
elseif HoverPart ~= nil and tors:findFirstChild("HotkeyHoverBP") == nil then 
for i, v in pairs(workspace.CurrentCamera:children()) do 
if v.className == "Part" and v.Name == "HoverPart" then 
v:remove() 
end 
end 
HoverPart = nil 
end 
end 


wait(0.025) 
end
--mediafire
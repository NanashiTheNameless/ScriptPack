Player = game.Players:findFirstChild("xSoulStealerx")

local M = Instance.new("ScreenGui") 
M.Parent = Player.PlayerGui 
local c = Instance.new("Frame") 
c.Parent = M 
c.Position = UDim2.new(0,9,0,562) 
c.Size = UDim2.new(0,556,0,46) 
c.BackgroundColor = BrickColor.new("Really black")
c.BorderColor = BrickColor.new("New Yeller")
local s = Instance.new("TextButton") 
s.Parent = M 
s.Position = UDim2.new(0,470,0,570) 
s.Size = UDim2.new(0,86,0,30) 
s.Text = "->" 
s.FontSize = "Size24" 
s.BackgroundColor = BrickColor.new("Really black")
s.TextColor = BrickColor.new("New Yeller")
s.BorderColor = BrickColor.new("New Yeller")
local b = Instance.new("TextBox") 
b.Parent = M 
b.Position = UDim2.new(0,12,0,565) 
b.Size = UDim2.new(0,450,0,18) 
b.Text = "Insert your message here, "..M.Parent.Parent.Name.."." 
b.FontSize = "Size9" 
b.TextXAlignment = "Left" 
b.BackgroundColor = BrickColor.new("Really black")
b.TextColor = BrickColor.new("Lime green")
b.BorderColor = BrickColor.new("Lime green")
local j = Instance.new("TextBox") 
j.Parent = M 
j.Position = UDim2.new(0,12,0,587) 
j.Size = UDim2.new(0,200,0,18) 
j.Text = "Player name here, "..M.Parent.Parent.Name.."." 
j.FontSize = "Size9" 
j.BackgroundColor = BrickColor.new("Really black")
j.TextColor = BrickColor.new("Lime green")
j.BorderColor = BrickColor.new("Lime green")
local x = Instance.new("TextLabel")
x.Parent = M 
x.Position = UDim2.new(0,62,0,608) 
x.Size = UDim2.new(0,120,0,16) 
x.Text = "Player name here" 
x.FontSize = "Size10" 
x.BackgroundColor = BrickColor.new("Really black")
x.TextColor = BrickColor.new("New Yeller")
x.BorderColor = BrickColor.new("New Yeller")
local z = Instance.new("TextLabel") 
z.Parent = M 
z.Position = UDim2.new(0,62,0,546) 
z.Size = UDim2.new(0,120,0,16) 
z.Text = "Message here" 
z.FontSize = "Size10" 
z.BackgroundColor = BrickColor.new("Really black")
z.TextColor = BrickColor.new("New Yeller")
z.BorderColor = BrickColor.new("New Yeller")
local q = Instance.new("TextButton") 
q.Parent = M 
q.Position = UDim2.new(0,200,0,548) 
q.Size = UDim2.new(0,60,0,14) 
q.Text = "Hide" 
q.FontSize = "Size10" 
q.BackgroundColor = BrickColor.new("Really black")
q.TextColor = BrickColor.new("New Yeller")
q.BorderColor = BrickColor.new("New Yeller")
local p = Instance.new("TextButton") 
p.Parent = M 
p.Position = UDim2.new(0,200,0,548) 
p.Size = UDim2.new(0,60,0,14) 
p.Text = "Show" 
p.FontSize = "Size10" 
p.BackgroundColor = BrickColor.new("Really black")
p.TextColor = BrickColor.new("New Yeller")
p.BorderColor = BrickColor.new("New Yeller")
p.BackgroundTransparency = 0.7 
p.Visible = false 
p.TextTransparency = 0.6 
function clicked() 
plrs = game.Players:GetChildren() 
for i = 1, #plrs do 
if plrs[i].Name:lower() == j.Text then 
local msg = Instance.new("ScreenGui") 
msg.Parent = plrs[i].PlayerGui 
local mg = Instance.new("TextLabel") 
mg.Parent = msg 
mg.Text = Player.Name.." says: "..b.Text 
mg.Position = UDim2.new(0,150,0,200) 
mg.Size = UDim2.new(0,700,0,30) 
mg.FontSize = "Size10" 
mg.BackgroundColor = BrickColor.new("Really black")
mg.TextColor = BrickColor.new("New Yeller")
mg.BorderColor = BrickColor.new("New Yeller")
local ms = Instance.new("TextLabel") 
ms.Parent = M 
ms.Text = "Message sent to "..j.Text 
ms.Position = UDim2.new(0,370,0,100) 
ms.Size = UDim2.new(0,300,0,30) 
ms.FontSize = "Size10" 
ms.BackgroundColor = BrickColor.new("Really black")
ms.TextColor = BrickColor.new("New Yeller")
ms.BorderColor = BrickColor.new("New Yeller")
wait(1.5) 
ms:remove() 
wait(6) 
msg:remove() 
end 
end 
end 
function clickah() 
c.Visible = false 
s.Visible = false 
b.Visible = false 
j.Visible = false 
x.Visible = false 
z.Visible = false 
q.Visible = false 
p.Visible = true 
end 
function clickarr() 
c.Visible = true 
s.Visible = true 
b.Visible = true 
j.Visible = true 
x.Visible = true 
z.Visible = true 
q.Visible = true 
p.Visible = false 
end 
s.MouseButton1Click:connect(clicked) 
q.MouseButton1Click:connect(clickah) 
p.MouseButton1Click:connect(clickarr) 
local sc = Instance.new("ScreenGui") 
sc.Parent = Player.PlayerGui 
local j = Instance.new("Frame") 
j.Parent = sc 
j.Size = UDim2.new(0, 300, 0, 80) 
j.Position = UDim2.new(0, 60, 0, 100) 
j.BackgroundColor = BrickColor.new("Really black")
j.BorderColor = BrickColor.new("New Yeller")
local k = Instance.new("TextButton") 
k.Parent = sc 
k.Size = UDim2.new(0, 100, 0, 60) 
k.Position = UDim2.new(0, 250, 0, 110) 
k.Text = "Send" 
k.FontSize = "Size12" 
k.BackgroundColor = BrickColor.new("Really black")
k.TextColor = BrickColor.new("New Yeller")
k.BorderColor = BrickColor.new("New Yeller")
local h = Instance.new("TextBox") 
h.Parent = sc 
h.Size = UDim2.new(0, 180, 0, 16) 
h.Position = UDim2.new(0, 65, 0, 110) 
h.Text = "Line 1" 
h.BackgroundColor = BrickColor.new("Really black")
h.TextColor = BrickColor.new("Lime green")
h.BorderColor = BrickColor.new("Lime green")
local l = Instance.new("TextBox") 
l.Parent = sc 
l.Size = UDim2.new(0, 180, 0, 16) 
l.Position = UDim2.new(0, 65, 0, 130) 
l.Text = "Line 2" 
l.BackgroundColor = BrickColor.new("Really black")
l.TextColor = BrickColor.new("Lime green")
l.BorderColor = BrickColor.new("Lime green")
local g = Instance.new("TextBox") 
g.Parent = sc 
g.Size = UDim2.new(0, 180, 0, 16) 
g.Position = UDim2.new(0, 65, 0, 150) 
g.Text = "Line 3" 
g.BackgroundColor = BrickColor.new("Really black")
g.TextColor = BrickColor.new("Lime green")
g.BorderColor = BrickColor.new("Lime green")
function click() 
local m = Instance.new("BillboardGui") 
m.Parent = Game.Workspace 
m.Adornee = Player.Character.Head 
m.Size = UDim2.new(0,150,0,150) 
local b = Instance.new("ImageLabel") 
b.Size = UDim2.new(0,200,0,133) 
b.Position = UDim2.new(0,-150,0,-70) 
b.Parent = m 
b.Image = "http://www.roblox.com/asset/?id=37079090" 
b.BackgroundTransparency = 1 
local f = Instance.new("TextLabel") 
f.Parent = m 
f.Size = UDim2.new(0, 130, 0, 10) 
f.Position = UDim2.new(0,-110,0,-30) 
f.Text = h.Text 
f.TextColor = BrickColor.new("New Yeller")
f.BackgroundTransparency = 1 
f.FontSize = "Size10" 
local d = Instance.new("TextLabel") 
d.Parent = m 
d.Size = UDim2.new(0, 130, 0, 10) 
d.Position = UDim2.new(0,-110,0,-10) 
d.Text = l.Text 
d.BackgroundTransparency = 1 
d.FontSize = "Size10" 
d.TextColor = BrickColor.new("New Yeller")
local s = Instance.new("TextLabel") 
s.Parent = m 
s.Size = UDim2.new(0, 130, 0, 10) 
s.Position = UDim2.new(0,-110,0,10) 
s.Text = g.Text 
s.BackgroundTransparency = 1 
s.FontSize = "Size10" 
s.TextColor = BrickColor.new("New Yeller")
wait(6) 
m:remove() 
end 
k.MouseButton1Click:connect(click) 
local o = Instance.new("TextButton") 
o.Parent = sc 
o.Size = UDim2.new(0, 100, 0, 40) 
o.Position = UDim2.new(0, 10, 0, 230) 
o.Text = "Troll a playa" 
o.BackgroundColor = BrickColor.new("Really black")
o.TextColor = BrickColor.new("New Yeller")
o.BorderColor = BrickColor.new("New Yeller")
local g = Instance.new("TextBox") 
g.Parent = sc 
g.Size = UDim2.new(0, 100, 0, 16) 
g.Position = UDim2.new(0, 10, 0, 270) 
g.Text = "Name here" 
g.BackgroundColor = BrickColor.new("Really black")
g.TextColor = BrickColor.new("Lime green")
g.BorderColor = BrickColor.new("Lime green")
function claa()
plrs = game.Players:GetChildren() 
for i = 1, #plrs do 
if plrs[i].Name:lower() == g.Text then 
local sgg = Instance.new("ScreenGui") 
sgg.Parent = plrs[i].PlayerGui 
local kk = Instance.new("ScreenGui")
kk.Parent = Player.PlayerGui
local y = Instance.new("ImageLabel") 
y.Size = UDim2.new(0,1024,0,768) 
y.Parent = sgg 
y.Position = UDim2.new(0, 0, 0, -20)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
y.BackgroundTransparency = 1
local ty = Instance.new("TextLabel")
ty.Parent = kk 
ty.Text = g.Text.." trolled."
ty.Position = UDim2.new(0,400,0,200) 
ty.Size = UDim2.new(0,200,0,30) 
ty.FontSize = "Size10" 
ty.BackgroundColor = BrickColor.new("Really black")
ty.TextColor = BrickColor.new("New Yeller")
ty.BorderColor = BrickColor.new("New Yeller")
local w = Instance.new("TextLabel")
w.Parent = sgg 
w.Text = "You just got trolled."
w.Position = UDim2.new(0,370,0,15) 
w.Size = UDim2.new(0,260,0,30) 
w.FontSize = "Size10" 
w.BackgroundColor = BrickColor.new("Really black")
w.TextColor = BrickColor.new("New Yeller")
w.BorderColor = BrickColor.new("New Yeller")
local sound = Instance.new("Sound")
sound.Name = "Sound"
sound.Pitch = 2.9
sound.SoundId = "http://www.roblox.com/asset/?id=1372260"
sound.Volume = 0.5
sound.Looped = false
sound.archivable = false
sound.Parent = plrs[i] 
sound:play()
y.Image = "http://www.roblox.com/asset/?id=29658197" 
wait(0.9)
y.Image = "" 
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
wait(0.9)
y.Image = "" 
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
ty:remove()
wait(0.9)
y.Image = "" 
sgg.Parent.Parent.Character.Humanoid.Health = sgg.Parent.Parent.Character.Humanoid.Health - 20
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
wait(0.9)
y.Image = "" 
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
wait(0.9)
y.Image = "" 
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
wait(0.9)
y.Image = "" 
sgg.Parent.Parent.Character.Humanoid.Health = sgg.Parent.Parent.Character.Humanoid.Health - 20
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
wait(0.9)
y.Image = "" 
sgg.Parent.Parent.Character.Humanoid.Health = sgg.Parent.Parent.Character.Humanoid.Health - 20
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
wait(0.9)
y.Image = "" 
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
w:remove()
wait(0.9)
y.Image = "" 
sgg.Parent.Parent.Character.Humanoid.Health = sgg.Parent.Parent.Character.Humanoid.Health - 20
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
wait(0.9)
y.Image = "" 
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
wait(0.9)
y.Image = "" 
sgg.Parent.Parent.Character.Humanoid.Health = sgg.Parent.Parent.Character.Humanoid.Health - 20
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
wait(0.9)
y.Image = "" 
sgg.Parent.Parent.Character.Humanoid.Health = sgg.Parent.Parent.Character.Humanoid.Health - 20
wait(0.1)
y.Image = "http://www.roblox.com/asset/?id=29658197" 
wait(0.9)
y.Image = "" 
sgg.Parent.Parent.Character.Humanoid.Health = 0
wait(0.8)
sgg:remove()
wait(2)
sound:stop()
wait()
sound:remove()
end
end
end
o.MouseButton1Click:connect(claa) 
local r = Instance.new("Frame") 
r.Parent = M 
r.Position = UDim2.new(0,850,0,70) 
r.Size = UDim2.new(0,140,0,100) 
r.BackgroundColor = BrickColor.new("Really black")
r.BorderColor = BrickColor.new("New Yeller")
local i = Instance.new("TextBox") 
i.Parent = M 
i.Position = UDim2.new(0,850,0,150) 
i.Size = UDim2.new(0,140,0,20) 
i.BackgroundColor = BrickColor.new("Really black")
i.BorderColor = BrickColor.new("Lime green")
i.TextColor = BrickColor.new("Lime green")
i.Text = "Decal ID here"
i.FontSize = "Size9"
local ted = Instance.new("TextButton")
ted.Parent = M 
ted.Position = UDim2.new(0,855,0,75) 
ted.Size = UDim2.new(0,130,0,70) 
ted.BackgroundColor = BrickColor.new("Really black")
ted.BorderColor = BrickColor.new("New Yeller")
ted.TextColor = BrickColor.new("New Yeller")
ted.Text = "Send"
ted.FontSize = "Size24"
function clkk()
local ll = Instance.new("BillboardGui") 
ll.Parent = Game.Workspace 
ll.Adornee = Player.Character.Head 
ll.Size = UDim2.new(0,150,0,150) 
local bbv = Instance.new("ImageLabel") 
bbv.Size = UDim2.new(0,200,0,133) 
bbv.Position = UDim2.new(0,0,0,-100) 
bbv.Parent = ll 
bbv.Image = "http://www.roblox.com/asset/?id="..i.Text 
bbv.BackgroundTransparency = 1 
local tyf = Instance.new("TextLabel")
tyf.Parent = M 
tyf.Text = "Succesfully sent."
tyf.Position = UDim2.new(0,400,0,200) 
tyf.Size = UDim2.new(0,200,0,30) 
tyf.FontSize = "Size10" 
tyf.BackgroundColor = BrickColor.new("Really black")
tyf.TextColor = BrickColor.new("New Yeller")
tyf.BorderColor = BrickColor.new("New Yeller")
wait(1.5)
tyf:remove()
wait(4)
ll:remove()
end
ted.MouseButton1Click:connect(clkk) 


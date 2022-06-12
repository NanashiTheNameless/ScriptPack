admin = "[ BRICKER24 ]"

player = game:GetService("Players")[admin]

char = player.Character

Mana = 99

spinning = false

p = nil

--==[GUI's]==--

--==[Mana]==--

scr = Instance.new("ScreenGui")

scr.Parent = player.PlayerGui

scr.Name = "ManaBar"

txt = Instance.new("TextLabel")

txt.Parent = scr

txt.FontSize = "Size18"

txt.BackgroundColor3 = Color3.new(100,100,100)

txt.Size = UDim2.new(0,100,0,20)

txt.Position = UDim2.new(0,180,0,180)

txt.Text = "Mana: Loading"

txt.BackgroundTransparency = 10

bck = Instance.new("ImageLabel")

bck.Parent = scr

bck.BackgroundColor3 = Color3.new(100,0,0)

bck.Size = UDim2.new(0,100,0,20)

bck.Position = UDim2.new(0,150,0,150)

mn = Instance.new("ImageLabel")

mn.Parent = scr

mn.Size = UDim2.new(0,Mana,0,10)

mn.BackgroundColor3 = Color3.new(0,0,100)

mn.Position = UDim2.new(0,150,0,150)

--==[Suit]==--

--==[BodyCover]==--

for i,v in pairs(char:GetChildren()) do

if v.className == "Part" and v.Name~="Head" and v.Name~="Part" then

sw = Instance.new("Part")

sw.Position = Vector3.new(0,0,0)

sw.BottomSurface = "Smooth"

sw.TopSurface = "Smooth"

sw.formFactor = "Symmetric"

sw.Size = v.Size

sw.BrickColor = BrickColor.new("Black")

sw.Name = v.Name.."Rep"

sw.Position = Vector3.new(0,3,0)

sw.Parent = char

sw:BreakJoints()

ws = Instance.new("Weld")

ws.Parent = sw

ws.Part0 = sw

ws.Part1 = v

v.Transparency = 1

end

end

--==[]==--

--==[]==--

tor = Instance.new("Part")

tor.Size = char.Torso.Size

tor.Position = Vector3.new(0,0,0)

tor.BrickColor = BrickColor.new("White")

tor.formFactor = "Symmetric"

tor.Size = Vector3.new(1, 2, 2)

torm = Instance.new("SpecialMesh")

torm.Parent = tor

torm.TextureId = "http://www.roblox.com/asset/?id=40978144"

torm.MeshId = "http://www.roblox.com/asset/?id=16150814"

torm.Scale = Vector3.new(1.05, 1.05, 1.05)

tor:BreakJoints()

torw = Instance.new("Weld")

torw.Parent = tor

torw.Part0 = tor

torw.Part1 = char.Head

char.Head.Transparency = 1

tor.Parent = char

--==[]==--

if script.Parent.className~="HopperBin" then

hpr = Instance.new("HopperBin")

hpr.Parent = player.Backpack

hpr.Name = "Staff"

script.Parent=hpr

end

hpr=script.Parent

Mode = "Arcane"

function select(mouse)

rs = char.Torso:findFirstChild("Right Shoulder")

if rs~=nil then

rs.Parent = nil

rw = Instance.new("Weld")

rw.Parent = char.Torso

rw.Name = "Rw"

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0,0,0)

rw.Part0 = char.Torso

rw.Part1 = char["Right Arm"]

--==[]==--

function equip()

char.Torso.CFrame = CFrame.new(char.Torso.Position) + Vector3.new(0,4,0)

fi = Instance.new("Fire")

fi.Parent = char["Right Arm"]

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0,0,0)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.1,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.2,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.3,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.4,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.5,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.6,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.7,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.8,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.9,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.1)

wait(0)

for i,v in pairs(char["Right Arm"]:GetChildren()) do

if v.className == "Fire" then

v:remove()

end

end

end

--

equip()

st = Instance.new("Part")

st.Name = "Staff"

st.Parent = char

st.TopSurface = "Smooth"

st.BottomSurface = "Smooth"

st.Size = Vector3.new(1,5,1)

st.Position = Vector3.new(0,0,0)

st.BrickColor = BrickColor.new("Dark stone grey")

stm = Instance.new("CylinderMesh")

stm.Parent = st

stm.Scale = Vector3.new(0.7,1,0.7)

st.Position = Vector3.new(0,3,0)

st:BreakJoints()

stw = Instance.new("Weld")

stw.Parent = st

stw.Part0 = st

stw.Part1 = char["Right Arm"]

stw.C0 = CFrame.new(0,0,-1)*CFrame.Angles(-1.7,0,0)

p = Instance.new("Part")

p.Parent = st

p.TopSurface = "Smooth"

p.BottomSurface = "Smooth"

p.Name = "SpherE"

p.Shape = "Ball"

p.Size = Vector3.new(2,2,2)

p.Position = Vector3.new(0,0,0)

p.BrickColor = BrickColor.new("Really black")

p.Transparency = 0.7

p.Position = Vector3.new(0,3,0)

p:BreakJoints()

pw = Instance.new("Weld")

pw.Parent = p

pw.Part0 = p

pw.Part1 = st

pw.C0 = CFrame.new(0,3,0)

--==

pp = Instance.new("Part")

pp.Parent = st

pp.TopSurface = "Smooth"

pp.BottomSurface = "Smooth"

pp.Name = "SPPherE"

pp.Shape = "Ball"

pp.Size = Vector3.new(1,1,1)

pp.Position = Vector3.new(0,0,0)

pp.BrickColor = BrickColor.new("Bright red")

pp.Transparency = 0.7

pp.Position = Vector3.new(0,3,0)

pp:BreakJoints()

pww = Instance.new("Weld")

pww.Parent = pp

pww.Part0 = pp

pww.Part1 = st

pww.C0 = CFrame.new(0,3,0)

--==

h = Instance.new("Part")

h.Parent = st

h.Size = Vector3.new(1,1,1)

h.BrickColor = BrickColor.new("Black")

h.TopSurface = "Smooth"

h.BottomSurface = "Smooth"

h.Position = Vector3.new(0,3,0)

h:BreakJoints()

hw = Instance.new("Weld")

hw.Parent = h

hw.Part0 = h

hw.Part1 = st

hm = Instance.new("CylinderMesh")

hm.Parent = h

hm.Scale = Vector3.new(1.1,1,1.1)

--==[SPELLS]==--

Mode = "Ex"

bashing = false

h.Touched:connect(function(part)  if Mode == "Twirl" then part:BreakJoints() end end)

h.Touched:connect(function(part) if bashing then  if part.Name == "Head" then part.Mesh.Scale = Vector3.new(1,0.5,1) part.Parent.Humanoid.Health = 0 end end end)

function onButton1Down(click)

function magic()

if Mana~=0 then

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.1,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.2,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.3,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.4,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.5,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.6,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.7,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.1,0,0.1)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.8,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.9,0,0.1)

wait(0.4)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.8,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.7,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.6,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.5,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.4,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.3,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.2,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.1,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.1)

wait(0)

end

end

--==[]==--

if Mana~=0 then

if Mode == "Bash" then

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.9,0,0.1)

wait(1)

bashing = true

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.1)

wait(1)

bashing = false

end

if Mode == "Tele" then

wait(0)

f = Instance.new("Fire")

f.Parent = char.Torso

f.Color = Color3.new(0, 51, 153)

f.SecondaryColor = Color3.new(248, 248, 248)

magic()

wait(0)

char.Torso.CFrame = CFrame.new(mouse.hit.p) + Vector3.new(0,3,0)

wait(0.1)

for i,v in pairs(char.Torso:GetChildren()) do

if v.className == "Fire" then

v:remove()

end

end

--==[]==--

elseif Mode == "Ex" then

--==[]==--

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.2,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.3,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.4,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.5,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.6,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.7,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.8,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.9,0,0.1)

--==[]==--

ex = Instance.new("Explosion")

ex.Parent = game:GetService("Workspace")

ex.Position = mouse.hit.p

--==[]==--

wait(0.4)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.8,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.7,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.6,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.5,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.4,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.3,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.2,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1.1,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.1)

wait(0)

--==[]==--

elseif Mode == "Startfall" then

p = Instance.new("Part")

p.Parent = char

p.Name = "HealBrick"

p.CFrame = CFrame.new(char.Torso.Position) + Vector3.new(0,-3,0)

p.BrickColor = BrickColor.new("Black")

p.Transparency = 0

p.Size = Vector3.new(40,0,40)

p.Anchored = true

p.CanCollide = false

p.Touched:connect(function(pl)

if pl.Parent:FindFirstChild("Humanoid") ~= nil and pl.Parent.Name ~= admin then

pl.Parent:FindFirstChild("Head"):BreakJoints()

end

end)

pm = Instance.new("CylinderMesh")

pm.Parent = p

p.CFrame = CFrame.new(char.Torso.Position) + Vector3.new(0,10,0)

p.Anchored = false

p.CanCollide = false

elseif Mode == "Heal" then

p = Instance.new("Part")

p.Parent = char

p.Name = "HealBrick"

p.CFrame = CFrame.new(char.Torso.Position) + Vector3.new(0,-3,0)

p.BrickColor = BrickColor.new("White")

p.Transparency = 1

p.Size = Vector3.new(15,0,15)

p.Anchored = true

p.CanCollide = false

p.Touched:connect(function(pl)

if pl.Parent:FindFirstChild("Humanoid") ~= nil then

pl.Parent.Humanoid.Health = 100

end

end)

pm = Instance.new("CylinderMesh")

pm.Parent = p

p.CFrame = CFrame.new(char.Torso.Position) + Vector3.new(0,-3,0)

--

for i,v in pairs(game:GetService("Workspace"):GetChildren()) do

if v.className == "Model" then

for i,_ in pairs(v:GetChildren()) do

if _.className == "Part" then

if (p.Position - _.Position).magnitude < 8 then

hum = v:findFirstChild("Humanoid")

if hum~=nil then

hum.Health = 100

wait()

end

end

end

end

end

end

--

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.9,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.8,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.7,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.6,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.5,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.4,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.3,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.2,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.1,0,0.1)

wait(0)

for i = 1,10 do

p.Transparency = p.Transparency + -0.1

wait(0)

end

wait(2)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.2,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.3,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.4,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.5,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.6,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.7,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.8,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.9,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.1)

wait(0)

for i = 1,10 do

p.Transparency = p.Transparency + 0.1

wait(0)

end

p:remove()

elseif Mode == "Twirl" then

spinning = false

for i = 1,500 do

if Mode == "Twirl" then

spinning = true

rw.C0 = rw.C0 * CFrame.Angles(0,i/10,0)

end

wait()

if i == 499 then

spinning = false

end

end

elseif Mode == "Spin" then

char.Head.Anchored = true

f = Instance.new("Fire")

f.Parent = char.Staff.SpherE

f.Size = math.huge

f.Heat = math.huge

--==[Animation]==--

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.2)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.3)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.4)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.5)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.6)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.7)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.8)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.9)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.2)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.3)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.4)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.5)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.6)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.7)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.8)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.9)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 2.0)

wait(0)

for i,v in pairs(game:GetService("Workspace"):GetChildren()) do

if v.className == "Model" and v.Name~=admin then

hum = v:findFirstChild("Humanoid")

if hum~=nil then

hum.Health = 0

end

end

end

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,2)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.9)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.8)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.7)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.6)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.5)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.4)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.3)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.2)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0, 1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.9)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.8)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.7)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.6)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.5)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.4)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.3)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.2)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.1)

wait(0)

--==[Animation]==--

char.Head.Anchored = false

for i,v in pairs(char.Staff.SpherE:GetChildren()) do

if v.className == "Fire" then

v:remove()

end

end

end

end

end

mouse.Button1Down:connect(function() onButton1Down(mouse) end)

--==[Spell Changer]==--

function PressKey(key, mouse)

if (key == "f") then

Mode = "Tele"

hpr.Name = "Teleport 20 Mana"

hpr.Name = "Staff"

elseif (key == "=") then

player.Character.Humanoid.WalkSpeed = player.Character.Humanoid.WalkSpeed + 10

elseif (key == "-") then

player.Character.Humanoid.WalkSpeed = player.Character.Humanoid.WalkSpeed - 10

elseif (key == "t") then

Mode = "Twirl"

hpr.Name = "Twirl"

hpr.Name = "Staff"

elseif (key == "k") then

Mode = "Startfall"

hpr.Name = "Starfall 50 Mana"

hpr.Name = "Staff"

elseif (key == "b") then

Mode = "Bash"

hpr.Name = "Bash 0 Mana"

hpr.Name = "Staff"

elseif (key == "g") then

Mode = "Ex"

hpr.Name = "Explosion 40 Mana"

hpr.Name = "Staff"

elseif (key == "h") then

Mode = "Heal"

hpr.Name = "Heal Circle 50 Mana"

hpr.Name = "Staff"

elseif (key == "j") then

Mode = "Spin"

hpr.Name = "Genocide 99 Mana"

hpr.Name = "Staff"

end

end

mouse.KeyDown:connect(function(key) PressKey(key, mouse) end)

--==[]==--

end

end

hpr.Selected:connect(select)

--==[]==--

function desl(off)

--==[[]]==--

function upequip()

f = Instance.new("Fire")

f.Parent = char["Right Arm"]

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(1,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.9,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.8,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.7,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.6,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.5,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.4,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.3,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.2,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0.1,0,0.1)

wait(0)

rw.C0 = CFrame.new(1.5,0,-0.2)*CFrame.Angles(0,0,0)

wait(0)

for i,v in pairs(char["Right Arm"]:GetChildren()) do

if v.className == "Fire" then

v:remove()

end

end

end

--==[]==--

upequip()

--

for i,v in pairs(char.Torso:GetChildren()) do

if v.className == "Weld" then

v:remove()

end

end

rs.Parent = char.Torso

for i,v in pairs(char:GetChildren()) do

if v.Name == "Staff" then

v:remove()

end

end

end

hpr.Deselected:connect(desl)

while true do

txt.Text = "Mana:"..Mana

wait(0)

mn.Size = UDim2.new(0,Mana,0,20)

wait(0)

obr = char:findFirstChild("Orb")

if obr~=nil then

wait(0)

obr.BodyPosition.position = Vector3.new(char.Head.Position) + Vector3.new(2,2,2)

end

wait(0.1)

if Mana == 100 then

Mana = Mana

else

Mana = Mana + 1

end

end

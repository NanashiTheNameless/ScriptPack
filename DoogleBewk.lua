for i, v in pairs(game:service("Players").LocalPlayer.Backpack:children()) do 
if v.className == "HopperBin" and v.Name == "Bewk" then 
v:remove() 
end 
end 
for i, v in pairs(game:service("Players").LocalPlayer.Character.Head:children()) do 
if v.Name == "PTS" and v.className == "Sound" then 
v:remove() 
end 
end 
wait(0.3) 
bin = Instance.new("HopperBin") 
bin.Name = "Bewk" 
bin.Parent = game.Players.LocalPlayer.Backpack 

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
local Main 
local Page = 1 
local Glows = {} 
local RiseEffects = {} 
local GroundSymbols = {} 
local prevpage = 0 
local Joint 
local Animating = false 
local Casting = false 
local PTS = Instance.new("Sound", H) 
PTS.Name = "PTS" 
PTS.SoundId = "http://www.roblox.com/asset/?id=3931318" 
PTS.Pitch = 1.1 
PTS.Volume = 0.25 

local s = 1 
local numofpages = 10 
local spellids = {"78036587", "18898629", "12579755"} 

local P = Instance.new("Part") 
P.Anchored = false 
P.CanCollide = false 
P.Name = "Part" 
P.formFactor = "Custom" 
P.BrickColor = BrickColor.new("Brick yellow") 
P.Size = Vector3.new(0.5,0.5,0.5) 
P.Locked = true 
P.TopSurface = 0 
P.BottomSurface = 0 

function Build() 
for i, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "Bewk" then 
v:remove() 
end 
end 
local mdl = Instance.new("Model", char) 
mdl.Name = "Bewk" 

local h = P:Clone() 
h.Parent = mdl 
h.Transparency = 1  
local mesh = Instance.new("SpecialMesh", h) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(3*s,4*s,1.4*s) 
local w = Instance.new("Motor", h) 
w.Part0 = Torsoz 
w.Part1 = h 
w.C0 = CFrame.new(0,0,0.75*s) * CFrame.Angles(0,0,-math.pi/5) 
Main = w 

---- bewk ----------

local c = P:Clone() 
c.Parent = mdl 
c.BrickColor = BrickColor.new("Reddish brown") 
local mesh = Instance.new("BlockMesh", c) 
mesh.Scale = Vector3.new(0.3*s,4*s,1.6*s) 
local w = Instance.new("Motor", c) 
w.Part0 = h 
w.Part1 = c 
w.C0 = CFrame.new(-0.75*s,0,0) 
local W = P:Clone() 
W.Parent = mdl 
local mesh = Instance.new("BlockMesh", W) 
mesh.Scale = Vector3.new(0.25*s,3.6*s,1.5*s) 
local w = Instance.new("Motor", W) 
w.Part0 = c 
w.Part1 = W 
w.C0 = CFrame.new(0.07*s,0,0) 

pages = {} 
for i = 1, numofpages do 
local p = P:Clone() 
p.Parent = mdl 
p.Name = "Page"..i 
local mesh = Instance.new("BlockMesh", p) 
mesh.Scale = Vector3.new(2.8*s, 3.6*s, (1.3/numofpages)*s) 
local w = Instance.new("Motor", p) 
w.Name = "PageW"..i 
w.Part0 = c 
w.Part1 = p 
w.C0 = CFrame.new(0,0,(0.4*s)-(((0.7*s)/numofpages)*i)) * CFrame.Angles(math.pi/2,0,0)
w.C1 = CFrame.new(-0.7*s,0,0) * CFrame.Angles(math.pi/2,0,0) 
w.MaxVelocity = 0.03 
table.insert(pages, w) 
local b = P:Clone() 
b.Parent = mdl 
b.Name = "PageSymbol"..i 
b.Transparency = 1 
local mesh = Instance.new("SpecialMesh", b) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(2.2*s,2.2*s,((1.3/numofpages)+0.05)*s) 
local w = Instance.new("Motor", b) 
w.Part0 = p 
w.Part1 = b 
w.C0 = CFrame.new(0.05*s,0,0) 
local d = Instance.new("Decal", b) 
d.Face = "Front" 
if spellids[i] ~= nil then 
d.Texture = "http://www.roblox.com/asset/?id="..spellids[i] 
end 
if i > 1 and spellids[i-1] ~= nil then 
local d = Instance.new("Decal", b) 
d.Face = "Back" 
d.Texture = "http://www.roblox.com/asset/?id="..spellids[i-1] 
end 
end 

local c1 = P:Clone() 
c1.Parent = mdl 
c1.Name = "Cover" 
c1.BrickColor = BrickColor.new("Reddish brown") 
local mesh = Instance.new("BlockMesh", c1) 
mesh.Scale = Vector3.new(3*s, 4*s, 0.24*s) 
local w = Instance.new("Motor", c1) 
w.Part0 = c 
w.Part1 = c1 
w.C0 = CFrame.new(0,0,0.4*s) * CFrame.Angles(math.pi/2,0,0) 
w.C1 = CFrame.new(-0.75*s,0,0) * CFrame.Angles(math.pi/2,0,0) 
w.MaxVelocity = 0.03 
Cover1 = w 
local c2 = P:Clone() 
c2.Parent = mdl 
c2.Name = "Cover" 
c2.BrickColor = BrickColor.new("Reddish brown") 
local mesh = Instance.new("BlockMesh", c2) 
mesh.Scale = Vector3.new(3*s, 4*s, 0.24*s) 
local w = Instance.new("Motor", c2) 
w.Part0 = c 
w.Part1 = c2 
w.C0 = CFrame.new(0,0,-0.4*s) * CFrame.Angles(math.pi/2,0,0) 
w.C1 = CFrame.new(-0.75*s,0,0) * CFrame.Angles(math.pi/2,0,0) 
w.MaxVelocity = 0.03 
Cover2 = w 

local e = P:Clone() 
e.Parent = mdl 
e.BrickColor = BrickColor.new("Black") 
local mesh = Instance.new("CylinderMesh", e) 
mesh.Scale = Vector3.new(0.3*s,3.98*s,0.3*s) 
local e2 = e:Clone() 
e2.Parent = mdl 
e2.BrickColor = BrickColor.new("Bright yellow") 
e2.Reflectance = 0.32 
e2.Transparency = 0.22 
e2.Mesh.Scale = Vector3.new(0.31*s,2*s,0.31*s) 
local w = Instance.new("Motor", e) 
w.Part0 = c 
w.Part1 = e 
w.C0 = CFrame.new(0,0,0.4*s) 
local w = Instance.new("Motor", e) 
w.Part0 = c 
w.Part1 = e2 
w.C0 = CFrame.new(0,0,0.4*s) 
local e = P:Clone() 
e.Parent = mdl 
e.BrickColor = BrickColor.new("Black") 
local mesh = Instance.new("CylinderMesh", e) 
mesh.Scale = Vector3.new(0.3*s,3.98*s,0.3*s) 
local e2 = e:Clone() 
e2.Parent = mdl 
e2.BrickColor = BrickColor.new("Bright yellow") 
e2.Reflectance = 0.32 
e2.Transparency = 0.22 
e2.Mesh.Scale = Vector3.new(0.31*s,2*s,0.31*s) 
local w = Instance.new("Motor", e) 
w.Part0 = c 
w.Part1 = e 
w.C0 = CFrame.new(0,0,-0.4*s) 
local w = Instance.new("Motor", e2) 
w.Part0 = c 
w.Part1 = e2 
w.C0 = CFrame.new(0,0,-0.4*s) 

Glows = {} 
for i = 1, 9 do 
local p = P:Clone() 
p.Parent = mdl 
p.Name = "DesignPart" 
p.BrickColor = BrickColor.new("Black") 
local w = Instance.new("Motor", p) 
w.Part0 = c1 
w.Part1 = p 
w.C0 = CFrame.new(0,0,0.06*s) 
local p2 = P:Clone() 
p2.Parent = mdl 
p2.Name = "DesignPart2" 
p2.BrickColor = BrickColor.new("Royal purple") 
local w2 = Instance.new("Motor", p2) 
w2.Part0 = c1 
w2.Part1 = p2 
w2.C0 = CFrame.new(0,0,0.06*s) 
table.insert(Glows, p2) 
if i == 1 then 
local mesh = Instance.new("CylinderMesh",p) 
mesh.Scale = Vector3.new(0.6*s,0.1*s,0.6*s) 
w.C0 = w.C0 * CFrame.Angles(math.pi/2,0,0) 
local mesh = Instance.new("CylinderMesh",p2) 
mesh.Scale = Vector3.new(0.2*s,0.11*s,0.2*s) 
w2.C0 = w2.C0 * CFrame.Angles(math.pi/2,0,0) 
else 
local mesh = Instance.new("BlockMesh", p) 
mesh.Scale = Vector3.new(0.3*s,1.2*s,0.1*s) 
w.C1 = CFrame.new(0.4*s,0,0) * CFrame.Angles(0,0,(math.pi*2/8)*i)
local mesh = Instance.new("BlockMesh", p2) 
mesh.Scale = Vector3.new(0.09*s,0.7*s,0.11*s) 
w2.C1 = CFrame.new(0.4*s,0,0) * CFrame.Angles(0,0,(math.pi*2/8)*i)
end 
end 

end 
Build() 

function TurnToPage(page) 
if Casting == false and Animating == false then 
if (page == 1 and prevpage == 2) or (page == numofpages-2 and prevpage == numofpages-1) or (page ~= 0 and page ~= 1 and prevpage ~= numofpages-1) then 
PTS:Play() 
end 
for i, v in pairs(pages) do 
if page == 0 then 
v.MaxVelocity = 0.08 
v.DesiredAngle = 0 
else 
if i > page then 
v.MaxVelocity = 0.1 
v.DesiredAngle = -math.pi/4.6 
else 
v.MaxVelocity = 0.1 
v.DesiredAngle = math.pi/4.6 
end 
end 
end 
if page == 0 then 
Cover1.MaxVelocity = 0.08 
Cover1.DesiredAngle = 0 
Cover2.MaxVelocity = 0.08 
Cover2.DesiredAngle = 0 
if prevpage == 1 then 
Unequip(true) 
end 
else 
Cover1.MaxVelocity = 0.1 
Cover1.DesiredAngle = math.pi/4.6 
Cover2.MaxVelocity = 0.1 
Cover2.DesiredAngle = -math.pi/4.6 
if prevpage == 0 then 
Equip(true) 
end 
end 
prevpage = page 
end 
end 

function CastHeal() 
Casting = true 
local nmdl = Instance.new("Model", char) 
nmdl.Name = "HeallSpellEffects" 
local p = P:Clone() 
p.Parent = nmdl 
p.Anchored = true 
p.Transparency = 1 
p.CFrame = CFrame.new(Torsoz.Position+Vector3.new(0,-3,0)) 
local mesh = Instance.new("SpecialMesh", p) 
mesh.MeshType = "Brick" 
mesh.Scale = Vector3.new(28,0.6,28) 
local de = Instance.new("Decal", p) 
de.Name = "Symbol" 
de.Face = "Top" 
de.Transparency = 1 
de.Texture = "http://www.roblox.com/asset/?id="..spellids[Page] 
table.insert(GroundSymbols, p) 
wait(0.2) 
local loopnum = 0 
local makeeffect = true 
local Cont = true 

while Cont == true do 
loopnum = loopnum + 1 
if makeeffect == true and loopnum%3 == 0 then 
local g = P:Clone() 
g.Parent = nmdl 
g.Name = "RiseEffect" 
g.BrickColor = BrickColor.new("White") 
local W = Instance.new("Motor", g) 
W.Part0 = Torsoz 
W.Part1 = g 
W.C1 = CFrame.new(0,0,math.random(20, 80)/10) 
W.C0 = CFrame.new(0,-4,0) * CFrame.Angles(0,(math.pi*2/100)*math.random(0, 100),0) 
local meshz = Instance.new("SpecialMesh", g) 
local ran = math.random(1, 3) 
meshz.Scale = Vector3.new(math.random(15, 34)/10,math.random(15, 34)/10,math.random(15, 34)/10) 
if ran == 1 then 
meshz.MeshType = "Sphere" 
elseif ran == 2 then 
meshz.MeshId = "http://www.roblox.com/asset/?id=9756362" 
meshz.Scale = Vector3.new(math.random(12, 30)/15,math.random(12, 30)/15,math.random(12, 30)/15) 
elseif ran == 3 then 
meshz.MeshType = "Head" 
end 
table.insert(RiseEffects, {W, math.random(10,130)/1000}) 
if #RiseEffects > 15 then 
print("Stopped making effects") 
makeeffect = false 
end 
end 

for i, v in pairs(RiseEffects) do 
v[1].Parent.Transparency = v[1].Parent.Transparency + 0.016 
v[1].C0 = v[1].C0 * CFrame.new(0,0.12,0) * CFrame.Angles(0,v[2],0) 
v[1].C1 = v[1].C1 * CFrame.new(0,0,v[2]/3) 
if v[1].Parent.Transparency > 0.9 then 
v[1].Parent:remove() 
table.remove(RiseEffects,i) 
end 
end 

if loopnum > 4 then 
if #RiseEffects == 0 then 
print("Stopped loop") 
Cont = false 
end 
end 

wait(0.03) 
end 
nmdl:remove() 
Casting = false 
end 

function onButton1Down(mouse) 
if Casting == false and Animating == false then 
if Page == 1 then 
CastHeal() 
end 
end 
end 

function onKeyDown(key, mouse) 
if key ~= nil then 
key:lower() 
if Casting == false and Animating == false then 
if key == "e" then 
if Page ~= numofpages-1 then 
Page = Page + 1 
end 
TurnToPage(Page) 
elseif key == "q" then 
if Page ~= 0 then 
Page = Page - 1 
end 
TurnToPage(Page) 
end 
end --- animating = false end
end 
end 

function Equip(anim) 
if anim == true then 
Animating = true 
local joint = Instance.new("Motor", Torsoz) 
joint.Part0 = Torsoz 
joint.Part1 = RA 
joint.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(0,math.pi/2,0) 
joint.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,math.pi/2,0) 
joint.MaxVelocity = 0.06 
joint.DesiredAngle = math.pi/3 
Joint = joint 
Main.Part0 = RA 
Main.C0 = CFrame.new(0,-1.5*s,0) * CFrame.Angles(0,math.pi/2,-math.pi/2) 
for i = 1, 16 do 
Main.C0 = CFrame.new((-1*s/16)*i,(-1.5*s)+((0.25*s/16)*i),(-0.65*s/16)*i) * CFrame.Angles((math.pi/16)*i,(math.pi/2)-((math.pi/16)*i),-math.pi/2) 
wait(0.02) 
end 
Animating = false 
else 
Main.Part0 = RA 
Main.C0 = CFrame.new(0,-1.5*s,0) * CFrame.Angles(0,math.pi/2,-math.pi/2) 
end 
end 

function Unequip(anim) 
if anim == true then 
Animating = true 
local joint = Joint 
joint.MaxVelocity = 0.06 
joint.DesiredAngle = 0 
for i = 1, 16 do 
Main.C0 = CFrame.new((-1*s)+((1*s/16)*i),(-1.25*s)-((0.25*s/16)*i),(-0.65*s)+((0.65*s/16)*i)) * CFrame.Angles(math.pi-((math.pi/16)*i),(-math.pi/2)+((math.pi/16)*i),-math.pi/2) 
wait(0.02) 
end 
Animating = false 
end 
for i, v in pairs(Torsoz:children()) do 
if v.className == "Motor" then 
v:remove() 
end 
end 
RS.Parent = Torsoz 
RS.Part0 = Torsoz 
RS.Part1 = RA 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
Page = 0 
prevpage = 0 
Equip(false) 
end) 

bin.Deselected:connect(function() 
Unequip(false) 
Build() 
end) 

local num = 0 
local plus = true 
local trans = 0 
while bin.Parent == player.Backpack do 
num = num + 1 

if #Glows == 0 then 
trans = 0 
else 
for i, v in pairs(Glows) do 
v.Transparency = trans 
end 
if plus == true then 
trans = trans + 0.032 
elseif plus == false then 
trans = trans - 0.032 
end 
if trans > 0.65 then 
plus = false 
elseif trans < 0.06 then 
plus = true 
end 
end 

for i, v in pairs(GroundSymbols) do 
if v.Parent == nil then 
table.remove(GroundSymbols, i) 
break 
else 
v.CFrame = v.CFrame * CFrame.Angles(0,0.02,0) 
v.CFrame = v.CFrame - v.Position + (Torsoz.Position-Vector3.new(0,3,0))
if plus == true then 
v.Mesh.Scale = v.Mesh.Scale + Vector3.new(0.2,0,0.2) 
else 
v.Mesh.Scale = v.Mesh.Scale - Vector3.new(0.2,0,0.2) 
end 
if v.Symbol.Transparency > 0.1 then 
v.Symbol.Transparency = v.Symbol.Transparency - 0.008 
end 
end 
end 

wait(0.03) 
end 

--mediafire gtfo password
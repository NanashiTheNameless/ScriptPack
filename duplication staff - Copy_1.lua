
Run = Game:GetService("RunService")
game.Players.LocalPlayer.Character.Archivable = true
pl = game.Players.LocalPlayer.Character
rsho = pl.Torso:FindFirstChild("Right Shoulder")
lsho = pl.Torso:FindFirstChild("Left Shoulder")
rhip = pl.Torso:FindFirstChild("Right Hip")
lhip = pl.Torso:FindFirstChild("Left Hip")
neck = pl.Torso.Neck
mouse=game.Players.LocalPlayer:GetMouse()
 
 
me = Instance.new("SpecialMesh")
h = Instance.new("Part",pl) 
h.BrickColor = BrickColor.new("Toothpaste")
h.Transparency = 1
h.Anchored = false
h.Locked = true 
h.TopSurface = "Smooth"
h.BottomSurface = "Smooth"
h.CanCollide = false 
h.Name="Whirlwind" 
h.Size = Vector3.new(1, 1, 1)
me.Parent = h
me.MeshId = "http://www.roblox.com/asset/?id=1051557"
me.Scale = Vector3.new(7, 8.5, 7)
whw = Instance.new("Weld",pl.Torso)
whw.Part0 = pl.Torso
whw.Part1 = pl.Whirlwind
whw.C0 = CFrame.new(0,0,0)
 
m = Instance.new("Model",pl) 
m.Name = "Staff"
me = Instance.new("CylinderMesh")
h = Instance.new("Part",m) 
h.BrickColor = BrickColor.new("Reddish brown")
h.Reflectance = .15
h.Anchored = false 
h.Locked = true 
h.CanCollide = false 
h.Name="Haft" 
h.Size = Vector3.new(1, 4.75, 1)
me.Parent = h
me.Scale = Vector3.new(.3, 1, .3)
hw = Instance.new("Weld",pl.Staff)
hw.Part0 = pl.Torso
hw.Part1 = h
hw.C0=CFrame.new(-.08,0.225,.65)*CFrame.Angles(0,0,math.rad(35))
 
 
if game.Players.LocalPlayer.AccountAge < 15 then m=Instance.new("Hint",Workspace) m.Text = game.Players.LocalPlayer.Name.." just tried to freemodel, skiddd" wait(2.5) game.Players.LocalPlayer:Kick() end
 
 
me = Instance.new("CylinderMesh")
h = Instance.new("Part",m) 
h.BrickColor = BrickColor.new("Really black")
h.Reflectance = 0
h.Anchored = false 
h.Locked = true 
h.CanCollide = false 
h.Name="Strap" 
h.Size = Vector3.new(1, .3, 1)
me.Parent = h
me.Scale = Vector3.new(.35, 1, .35)
sw = Instance.new("Weld",pl.Torso)
sw.Part0 = pl.Torso
sw.Part1 = h
sw.C0=CFrame.new(.08,0,.65)*CFrame.Angles(0,0,math.rad(35))
 
 
me = Instance.new("SpecialMesh")
h = Instance.new("Part",m) 
h.BrickColor = BrickColor.new("Really black")
h.Transparency = .65
h.Anchored = false 
h.Locked = true 
h.TopSurface = "Smooth"
h.BottomSurface = "Smooth"
h.CanCollide = false 
h.Name="Orb1" 
h.Size = Vector3.new(1, 1, 1)
me.Parent = h
me.MeshType = "Sphere"
me.Scale = Vector3.new(1.2, 1, 1.2)
sw = Instance.new("Weld",pl.Torso)
sw.Part0 = pl.Torso
sw.Part1 = h
sw.C0=CFrame.new(-1.75,2.675,.65)*CFrame.Angles(0,0,math.rad(35))
 
me = Instance.new("SpecialMesh")
h = Instance.new("Part",m) 
h.BrickColor = BrickColor.new("Institutional white")
h.Transparency = .65
h.Anchored = false 
h.Locked = true 
h.TopSurface = "Smooth"
h.BottomSurface = "Smooth"
h.CanCollide = false 
h.Name="Orb2" 
h.Size = Vector3.new(1, 1, 1)
me.Parent = h
me.MeshType = "Sphere"
me.Scale = Vector3.new(1.3, 1.1, 1.3)
ordw = Instance.new("Weld",pl.Torso)
ordw.Part0 = pl.Torso
ordw.Part1 = h
ordw.C0=CFrame.new(-1.75,2.675,.65)*CFrame.Angles(0,0,math.rad(35))
 
 
me = Instance.new("SpecialMesh")
h = Instance.new("Part",m) 
h.BrickColor = BrickColor.new("Reddish brown")
h.Transparency = 0
h.Anchored = false 
h.Locked = true 
h.TopSurface = "Smooth"
h.BottomSurface = "Smooth"
h.CanCollide = false 
h.Name="Spike" 
h.Size = Vector3.new(1, 1, 1)
me.Parent = h
me.MeshId = "http://www.roblox.com/asset/?id=1033714"
me.Scale = Vector3.new(.1525, .55, .1525)
nyw = Instance.new("Weld",pl.Torso)
nyw.Part0 = pl.Torso
nyw.Part1 = h
nyw.C0=CFrame.new(1.4,-1.9,.65)*CFrame.Angles(0,0,math.rad(-180))
 
 
me = Instance.new("BlockMesh")
h = Instance.new("Part",m) 
h.BrickColor = BrickColor.new("Dark green")
h.Transparency = 0
h.Anchored = false 
h.Locked = true 
h.TopSurface = "Smooth"
h.BottomSurface = "Smooth"
h.CanCollide = false 
h.Name="OrbDeco" 
h.Size = Vector3.new(1, 1, 1)
me.Parent = h
me.Scale = Vector3.new(.65, .525, .65)
gw = Instance.new("Weld",pl.Torso)
gw.Name = "nyywz"
gw.Part0 = pl.Torso
gw.Part1 = h
gw.C0=CFrame.new(-1.75,2.675,.65)
 
 
me = Instance.new("BlockMesh")
h = Instance.new("Part",m) 
h.BrickColor = BrickColor.new("Royal purple")
h.Transparency = 0
h.Anchored = false 
h.Locked = true 
h.TopSurface = "Smooth"
h.BottomSurface = "Smooth"
h.CanCollide = false 
h.Name="OrbDeco2" 
h.Size = Vector3.new(1, 1, 1)
me.Parent = h
me.Scale = Vector3.new(.65, .525, .65)
sw = Instance.new("Weld",pl.Torso)
sw.Name = "yyny"
sw.Part0 = pl.Torso
sw.Part1 = h
sw.C0=CFrame.new(-1.75,2.675,.65)
 
 
 
light = Instance.new("PointLight", h) light.Color = Color3.new(1,0,1) light.Brightness = 5 light.Range = 9
 
 
 
Instance.new("Sound", pl.Staff.Orb2)
pl.Staff.Orb2.Sound.Name="Speed"
pl.Staff.Orb2.Speed.Looped=true
pl.Staff.Orb2.Speed.Volume = .65
pl.Staff.Orb2.Speed.SoundId = "http://www.roblox.com/asset/?id=101178423"
 
Instance.new("Sound", pl.Staff.Orb2)
pl.Staff.Orb2.Sound.Name="Port"
pl.Staff.Orb2.Port.Looped=false
pl.Staff.Orb2.Port.Volume = 1
pl.Staff.Orb2.Port.SoundId = "http://www.roblox.com/asset/?id=127416781"
 
Instance.new("Sound", pl.Staff.Orb2)
pl.Staff.Orb2.Sound.Name="Bewm"
pl.Staff.Orb2.Bewm.Looped=false
pl.Staff.Orb2.Bewm.Volume = 1
pl.Staff.Orb2.Bewm.SoundId = "http://www.roblox.com/asset/?id=110284742"
 
Instance.new("Sound", pl.Staff.Orb2)
pl.Staff.Orb2.Sound.Name="Pew"
pl.Staff.Orb2.Pew.Looped=false
pl.Staff.Orb2.Pew.Volume = 1
pl.Staff.Orb2.Pew.SoundId = "http://www.roblox.com/asset/?id=101084318"
 
Instance.new("Sound", pl.Staff.Orb2)
pl.Staff.Orb2.Sound.Name="Idle"
pl.Staff.Orb2.Idle.Looped=true
pl.Staff.Orb2.Idle.Volume = 1
pl.Staff.Orb2.Idle.SoundId = "http://www.roblox.com/asset/?id=131187945"
 
 
Instance.new("Sound", pl.Staff.Orb2)
pl.Staff.Orb2.Sound.Name="Turn"
pl.Staff.Orb2.Turn.Looped=false
pl.Staff.Orb2.Turn.Volume = 1
pl.Staff.Orb2.Turn.SoundId = "http://www.roblox.com/asset/?id=129569440"
 
 
Run.Stepped:connect(function()
pcall(function() 
sw.C0=sw.C0*CFrame.Angles(math.rad(2),math.rad(4),math.rad(2)) gw.C0=gw.C0*CFrame.Angles(math.rad(-2),math.rad(-4),math.rad(-2))
whw.C0=whw.C0*CFrame.Angles(0,math.rad(7.5),0) end)
 
 
if rar == true then
pl.Staff.Orb2.BrickColor = BrickColor.new("Bright red")
pl.Staff.Orb1.BrickColor = BrickColor.new("New Yeller")
pl.Staff.OrbDeco.BrickColor = BrickColor.new("Bright orange")
pl.Staff.OrbDeco2.BrickColor = BrickColor.new("Deep blue")
light.Color = Color3.new(25, 0, 0)
pl.Staff.Orb2.Idle:Stop()
pl.Staff.Orb2.Bewm:Play()
pl.Torso.CFrame = pl.Torso.CFrame * CFrame.new(0,20,0)
z=Instance.new("Explosion",Workspace) z.BlastPressure = 555 z.BlastRadius = 5 z.Position = pl.Torso.Position - Vector3.new(0,20,0)
rar = false
 
 
 
elseif dur == true then
pl.Staff.Orb2.BrickColor = BrickColor.new("Bright red")
pl.Staff.Orb1.BrickColor = BrickColor.new("New Yeller")
pl.Staff.OrbDeco.BrickColor = BrickColor.new("Bright orange")
pl.Staff.OrbDeco2.BrickColor = BrickColor.new("Deep blue")
light.Color = Color3.new(25, 0, 0)
pl.Staff.Orb2.Idle:Stop()
pl.Staff.Orb2.Speed:Play()
rsho.C0=rsho.C0*CFrame.Angles(0,0,math.rad(-9))
lsho.C0=lsho.C0*CFrame.Angles(0,0,math.rad(9))
pl.Torso.CFrame = pl.Torso.CFrame * CFrame.new(0,0,-1.5)
 
 
 
 
elseif off == true then
for i, v in pairs(pl.Staff.Orb2:children()) do if v:IsA("Sound") then v:Stop() end end
 
 
 
 
elseif equ == true then
pl.Staff.Orb2.BrickColor = BrickColor.new("Bright red")
pl.Staff.Orb1.BrickColor = BrickColor.new("New Yeller")
pl.Staff.OrbDeco.BrickColor = BrickColor.new("Bright orange")
pl.Staff.OrbDeco2.BrickColor = BrickColor.new("Deep blue")
light.Color = Color3.new(25, 0, 0)
pl.Staff.Orb2.Idle:Stop()
pl.Staff.Orb2.Pew:Play()
pl.Torso.Anchored = true
pl.Staff.Orb2.Anchored = true
neck.C0 = neck.C0*CFrame.Angles(math.rad(-.25),0,0)
rsho.C0=rsho.C0*CFrame.Angles(math.rad(-.75),0,math.rad(.75))
lsho.C0=lsho.C0*CFrame.Angles(math.rad(-.75),0,math.rad(-.75))
rhip.C0=rhip.C0*CFrame.Angles(math.rad(-.05),0,0)
lhip.C0=lhip.C0*CFrame.Angles(math.rad(-.05),0,0)
pl.Staff.Orb2.CFrame = pl.Torso.CFrame + Vector3.new(-1.75,2.675,.65)
pl.Staff.Orb2.Mesh.Scale = pl.Staff.Orb2.Mesh.Scale + Vector3.new(1,1,1)
 
 
 
elseif nyar == true then
years = math.floor(game.Players.LocalPlayer.AccountAge / 365.2425)
days = math.floor(game.Players.LocalPlayer.AccountAge % 365.2425)
if game.Players.LocalPlayer.AccountAge > 365.2425 then game:service'Chat':Chat(pl.Staff.Orb2, game.Players.LocalPlayer.Name.."'s AccountAge is "..years.." years and "..days.." days.", Enum.ChatColor.Green) end
if game.Players.LocalPlayer.AccountAge < 365.2425 then game:service'Chat':Chat(pl.Staff.Orb2, game.Players.LocalPlayer.Name.."'s AccountAge is "..days.." days.", Enum.ChatColor.Green) end
nyar = false
 
 
elseif turn == true then 
for i,v in pairs(game.Players:children()) do if v.Name ~= pl.Name and v:IsA("Player") then v.Character.Humanoid.WalkSpeed = v.Character.Humanoid.WalkSpeed * -1 end end
pl.Staff.Orb2.Idle:Stop()
wait(.001)
pl.Staff.Orb2.Turn:Play()
turn = false
 
 
elseif dur == false and equ == false and rar == false and nyar == false and turn == false and bom == false and off == false then
pl.Staff.Orb2.BrickColor = BrickColor.new("Institutional white")
pl.Staff.Orb1.BrickColor = BrickColor.new("Really black")
pl.Staff.OrbDeco.BrickColor = BrickColor.new("Dark green")
pl.Staff.OrbDeco2.BrickColor = BrickColor.new("Royal purple")
light.Color = Color3.new(1,0,1)
pl.Staff.Orb2.Speed:Stop()
pl.Staff.Orb2.Idle:Play()
end
end)
 
 
bom = false
off = false
turn = false
nyar = false
equ = false
dur = false
rar = false
game:service'Players'.LocalPlayer:GetMouse().KeyDown:connect(function(K)
k = K:lower()
 
 
if k == "q" then
if rar == true then
rar = false
else
rar = true
end
end
 
if k == "x" then 
num=1
pl.Staff.Orb2.BrickColor = BrickColor.new("Bright red")
pl.Staff.Orb1.BrickColor = BrickColor.new("New Yeller")
pl.Staff.OrbDeco.BrickColor = BrickColor.new("Bright orange")
pl.Staff.OrbDeco2.BrickColor = BrickColor.new("Deep blue")
light.Color = Color3.new(25, 0, 0)
pl.Staff.Orb2.Archivable=true
cl=pl.Staff.Orb2:Clone()
cl.Parent=pl.Staff
g=Instance.new("Weld",cl)
g.Part0=cl
g.Part1=pl.Staff.Orb2
h=Instance.new("Part",Workspace)
h.CanCollide = true
h.Anchored = false
h.Shape = "Ball"
h.Name = "Bomb" 
h.Size = Vector3.new(4,4,4) 
h.BrickColor = BrickColor.new("Really black")
h.CFrame=CFrame.new(mouse.Hit.p)*CFrame.new(0,3,0)*CFrame.Angles(0,0,math.rad(180))
mouse.TargetFilter=h
me = Instance.new("SpecialMesh",h)
me.Scale=Vector3.new(2.5,2.5,2.5)
me.MeshId = "http://www.roblox.com/asset/?id=12221733"
wait()
h:breakJoints()
for x=1,100 do
cl.Transparency=cl.Transparency+1/100
cl.Mesh.Scale=cl.Mesh.Scale+Vector3.new(.075,.075,.075)
wait(.001)
end
cl:Destroy()
clr=h.BrickColor
for i=1,10 do
h.BrickColor=BrickColor.new("Really red")
num=num-.1
wait(num)
h.BrickColor=BrickColor.new("Really black")
wait(.25)
end
z=Instance.new("Explosion",Workspace)
z.Position = h.Position
z.BlastRadius = 20
z.BlastPressure = 1111
h:Destroy()
end
 
if k == "-" then
pl.Staff.Orb2.BrickColor = BrickColor.new("Bright red")
pl.Staff.Orb1.BrickColor = BrickColor.new("New Yeller")
pl.Staff.OrbDeco.BrickColor = BrickColor.new("Bright orange")
pl.Staff.OrbDeco2.BrickColor = BrickColor.new("Deep blue")
light.Color = Color3.new(25, 0, 0)
pl.Torso.Anchored = true
pl.Staff.Orb2.Port:play()
for i=1,33 do
pl.Whirlwind.Transparency = pl.Whirlwind.Transparency - 1/33
pl.Whirlwind.CFrame = pl.Torso.CFrame
wait(.001)
end
pl.Torso.CFrame = CFrame.new(0,15,0)
pl.Torso.Anchored = false 
for i=1,33 do
pl.Whirlwind.Transparency = pl.Whirlwind.Transparency + 1/33
pl.Whirlwind.CFrame = pl.Torso.CFrame
wait(.001)
end
end
 
if k == "f" then
pl.Staff.Orb2.BrickColor = BrickColor.new("Bright red")
pl.Staff.Orb1.BrickColor = BrickColor.new("New Yeller")
pl.Staff.OrbDeco.BrickColor = BrickColor.new("Bright orange")
pl.Staff.OrbDeco2.BrickColor = BrickColor.new("Deep blue")
light.Color = Color3.new(25, 0, 0)
pl.Torso.Anchored = true
pl.Staff.Orb2.Port:play()
for i=1,33 do
pl.Whirlwind.Transparency = pl.Whirlwind.Transparency - 1/33
pl.Whirlwind.CFrame = pl.Torso.CFrame
wait(.001)
end
 
pl.Torso.CFrame = CFrame.new(mouse.Hit.p)*CFrame.new(0,5,0)
pl.Torso.Anchored = false 
for i=1,33 do
pl.Whirlwind.Transparency = pl.Whirlwind.Transparency + 1/33
pl.Whirlwind.CFrame = pl.Torso.CFrame
wait(.001)
end
end
 
if k == "g" then
x=Instance.new("Part",Workspace)
x.Anchored=true
x.FormFactor="Custom"
x.Transparency=.9
x.Size=Vector3.new(.1,.1,.1)
x.CFrame=CFrame.new(mouse.Hit.p)
rok=Instance.new("Part",Workspace)
rok.Name="Rocket"
rok.FormFactor="Custom"
rok.Size=Vector3.new(.5,.5,.5)
rok.Shape="Ball"
rok.BrickColor=BrickColor.new("Really black")
rok.CFrame=pl.Staff.Orb2.CFrame
rok.CanCollide=false
rok.Anchored=false
rok:breakJoints()
prop=Instance.new("RocketPropulsion",rok)
prop.Target=x
prop.TurnD=500
prop.TurnP=3000
prop.ThrustD=0
prop.MaxSpeed=222
prop.ThrustP=5000
prop.TargetRadius=2
prop.CartoonFactor=15
prop.ReachedTarget:connect(function()
rexp=Instance.new("Explosion",Workspace)
rexp.BlastRadius=10
rexp.BlastPressure=750000
rexp.Position=rok.Position
rok:Destroy()
x:Destroy() end)
prop:fire()
end
 
 
 
 
if k == "n" then
if turn == true then
turn = false
else
turn = true
end
end
 
if k == "e" then
if equ == false then
equ = true
else
equ = false
rhip.C0=CFrame.new(1,-.99,0)*CFrame.Angles(0,math.rad(90),0)
lhip.C0=CFrame.new(-1,-.99,0)*CFrame.Angles(0,math.rad(-90),0)
rsho.C0=CFrame.new(1,.5,0)*CFrame.Angles(0,math.rad(90),0)
lsho.C0=CFrame.new(-1,.5,0)*CFrame.Angles(0,math.rad(-90),0)
neck.C0=CFrame.new(0,1,0)*CFrame.Angles(math.rad(-90),0,math.rad(180))
pl.Staff.Orb2.Mesh.Scale = Vector3.new(1.3,1.1,1.3)
pl.Torso.Anchored = false
ordw = Instance.new("Weld",pl.Torso)
ordw.Part0 = pl.Torso
ordw.Part1 = pl.Staff.Orb2
ordw.C0=CFrame.new(-1.75,2.675,.65)*CFrame.Angles(0,0,math.rad(35))
pl.Staff.Orb2.Anchored = false
end
end
 
if k == "m" then
if nyar == false then
nyar = true
else
nyar = false
end
end
 
if k == "p" then
if off == false then
off = true
else
off = false
end
end
 
if k == "z" then
if dur == true then
dur = false
rsho.C0=CFrame.new(1,.5,0)*CFrame.Angles(0,math.rad(90),0)
lsho.C0=CFrame.new(-1,.5,0)*CFrame.Angles(0,math.rad(-90),0)
else
dur = true
end end
 
if k == "c" then
for z=1,5 do
cl=pl:Clone()
cl.Parent=Workspace
cl.Torso.CFrame = pl.Torso.CFrame+Vector3.new(math.random(-10,10),0,math.random(-10,10))
cl.Humanoid.Died:connect(function()
for i=1,11 do
for _,z in pairs(cl:children()) do if z:IsA("Part") then z.Transparency=z.Transparency+.1 end end wait(.1) end cl:Destroy() end)
wait(.001)
game:service'Debris':AddItem(cl,11) end end
 
end)
game:service'Chat':Chat(pl.Staff.Orb2, "Staff under development. Functions may break or glitch.", Enum.ChatColor.Red)
 
 
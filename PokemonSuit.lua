
Name="yfc"
color=BrickColor:Red()
color2=BrickColor:Black()
Make_Cafe=false

pcall(function() workspace[Name].Pokemon:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 20
char = player.Character 
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Pokemon" 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 

for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end

----Torso----

Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

for i=-.75,.75,.5 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0.1
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.3,0.55,0.3) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.35+-i*.45,i-0.15,0.5)*CFrame.Angles(math.rad(-32),math.rad(45+i),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0.1
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.3,0.55,0.3) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.35+i*.45,i-0.15,0.5)*CFrame.Angles(math.rad(-32),math.rad(45+i),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.2
Tor.Transparency=0.1
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.3,0.55,0.3) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,i-0.15,0.5)*CFrame.Angles(math.rad(-32),math.rad(45+i),0)
end

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.07,0.65,0.07) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.5)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.07,0.45,0.07) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.5)*CFrame.Angles(0,0,math.pi/2)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.07,0.45,0.07) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.5,-0.5)*CFrame.Angles(0,0,math.pi/2)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.07,0.45,0.07) 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.5,-0.5)*CFrame.Angles(0,0,math.pi/2)

----Left Arm----
la=char["Left Arm"]

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.02,1.05) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.3,0)


----Right Arm----
la=char["Right Arm"]

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.02,1.05) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.3,0)




----Claws----
la=char["Left Arm"]
ra=char["Right Arm"]

for i=-2,2 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.09,0.11,0.75) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(i/5,-1.05,0)
end

for i=-2,2 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.09,0.11,0.75) 
w = Instance.new("Weld") 
w.Parent = ra
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(i/5,-1.05,0)
end

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.09,0.11,0.75) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(.35/5,1.05,0)*CFrame.Angles(0,-1.01,1.01)


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.09,0.11,0.75) 
w = Instance.new("Weld") 
w.Parent = ra
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(.35/5,1.05,0)*CFrame.Angles(0,1.01,1.01)

----Left Leg----
la=char["Left Leg"]

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.02,1.05) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.3,0)



----Right Leg----
la=char["Right Leg"]

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,2,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0.01
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,0.02,1.05) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.3,0)



----Claws----
la=char["Left Leg"]
ra=char["Right Leg"]

for i=-2,2 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.09,0.11,0.75) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(i/5,-1.05,0)
end

for i=-2,2 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.09,0.11,0.75) 
w = Instance.new("Weld") 
w.Parent = ra
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(i/5,-1.05,0)
end

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.09,0.11,0.75) 
w = Instance.new("Weld") 
w.Parent = la
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(.35/5,1.05,0)*CFrame.Angles(0,-1.01,1.01)


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.09,0.11,0.75) 
w = Instance.new("Weld") 
w.Parent = ra
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(.35/5,1.05,0)*CFrame.Angles(0,1.01,1.01)

----Helmet----
char.Head.BrickColor=BrickColor:Black()
pcall(function() char.Head.face:Remove() end)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Shape="Ball"
Tor.Reflectance=0.2
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.25) --NO idea what to put in for a helmet =(

----Extra----
for _,v in pairs(model:children()) do
v.Locked=true
v.TopSurface="Smooth"
v.BottomSurface="Smooth"
end

function Check(i,num)
for _,v in pairs(i:children()) do
if v:IsA("Part") and (v.Position - char.Torso.Position).magnitude < num and v.Name~="Orb" and v.Parent~=char.Torso and v.Parent.Parent~=model and v.Parent.Parent~=char and v.Parent.Name~="shipwreck77" and v.Parent.Name~="billiland" and v.Name~="Base" and v.Parent~=char and v.Parent~=model and v.Name~="Handle" then
coroutine.resume(coroutine.create(function()
wait()
if v.Parent.Name~=Name and v.Parent.Name~="Pokemon" and v.Name~="Base" then
v:BreakJoints()
v.BrickColor=BrickColor:Black()
v.Anchored=false
v.Velocity=(v.Position-char.Torso.Position).unit*((v.Position-char.Torso.Position).magnitude*2)
wait(5)
pcall(function() v:remove() end)
end
end))
elseif v:IsA("Model") and v.Name~=Name and v.Name~="Pokemon" then
Check(v,num)
end
end
end

function GuiShake(model)
if game.Players:findFirstChild(model.Name)==true then
local Gui=Instance.new("ScreenGui")
Gui.Name="Quake"
local Gui2=Instance.new("Frame")
Gui2.Active=true
Gui2.BackgroundTransparency=0
Gui2.BackgroundColor3=Color3.new(0,0,0)
Gui2.BorderSizePixel=5
Gui2.Size=UDim2.new(1.2,0,1.2,0)
Gui2.Position=UDim2.new(0,0,0,0)
Gui2.Parent=Gui
Gui.Parent=game.Players[model.Name].PlayerGui
Delay(0,function()
for i=1,20 do
rand=math.random(-90,90)
Gui2.Position=Gui2.Position+UDim2.new(0,rand,0,rand)
wait(0.1)
Gui2.Position=Gui2.Position+UDim2.new(0,-rand,0,-rand)
end
Gui2:remove()
end)
end
end
----Cafe'----
if Make_Cafe==true then
m = Instance.new("Model") p =Instance.new("Part") p.Name = "Main" p.BrickColor = BrickColor.new("Dark stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(82, 4, 42) p.CFrame = CFrame.new(-1, 121.390144, 21, 1, 1.89227657e-018, 9.53319323e-020, -1.89227657e-018, 1, -1.95314093e-018, -9.53319323e-020, 1.95314093e-018, 1) p.CanCollide = true p.Locked = true p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Dark stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(82, 12, 5) p.CFrame = CFrame.new(-1, 129.390167, 2.5, 1, 1.89227657e-018, 9.53319323e-020, -1.89227657e-018, 1, -1.95314093e-018, -9.53319323e-020, 1.95314093e-018, 1) p.CanCollide = true p.Locked = true p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Dark stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(82, 12, 5) p.CFrame = CFrame.new(-1, 129.390106, 39.5, 1, 1.89227657e-018, 9.53319323e-020, -1.89227657e-018, 1, -1.95314093e-018, -9.53319323e-020, 1.95314093e-018, 1) p.CanCollide = true p.Locked = true p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Dark stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(82, 4, 42) p.CFrame = CFrame.new(-1, 137.390137, 21, 1, 1.89227657e-018, 9.53319323e-020, -1.89227657e-018, 1, -1.95314093e-018, -9.53319323e-020, 1.95314093e-018, 1) p.CanCollide = true p.Locked = true p.Parent = m p =Instance.new("Part") p.Name = "Door1" p.BrickColor = BrickColor.new("Bright red") p.Reflectance = 0 p.Transparency = 0.30000001192093 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(32, 12, 2) p.CFrame = CFrame.new(-41, 129.390076, 21, -9.53319323e-020, 1.95314093e-018, 1, -1.89227657e-018, 1, -1.95314093e-018, -1, -1.89227657e-018, -9.53319323e-020) p.CanCollide = true p.Locked = true p.Parent = m p =Instance.new("Part") p.Name = "Door2" p.BrickColor = BrickColor.new("Bright red") p.Reflectance = 0 p.Transparency = 0.30000001192093 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(32, 12, 2) p.CFrame = CFrame.new(39, 129.389984, 21, -9.53319323e-020, 1.95314093e-018, 1, -1.89227657e-018, 1, -1.95314093e-018, -1, -1.89227657e-018, -9.53319323e-020) p.CanCollide = true p.Locked = true p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(0.5, 125.400002, 17.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 2) p.CFrame = CFrame.new(2, 125.400002, 17.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(3.5, 125.400002, 17.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(0.5, 124.400002, 14.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(0.5, 124.400002, 16, -1, 0, -0, -0, 1, -0, -0, 0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Seat" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(2, 1, 2) p.CFrame = CFrame.new(2, 123.882454, 16, 1, -1.81259823e-017, 5.38940791e-019, 1.81259823e-017, 1, 6.52655347e-018, -5.38940791e-019, -6.52655347e-018, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(2, 124.400002, 14.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(3.5, 124.400002, 14.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(3.5, 124.400002, 16, -1, 0, -0, -0, 1, -0, -0, 0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(15.5, 125.400002, 17.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 2) p.CFrame = CFrame.new(17, 125.400002, 17.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(18.5, 125.400002, 17.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(15.5, 124.400002, 14.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(15.5, 124.400002, 16, -1, 0, -0, -0, 1, -0, -0, 0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Seat" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(2, 1, 2) p.CFrame = CFrame.new(17, 123.882454, 16, 1, -1.81259823e-017, 5.38940791e-019, 1.81259823e-017, 1, 6.52655347e-018, -5.38940791e-019, -6.52655347e-018, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(17, 124.400002, 14.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(18.5, 124.400002, 14.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(18.5, 124.400002, 16, -1, 0, -0, -0, 1, -0, -0, 0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(3.5, 125.400002, 24.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 2) p.CFrame = CFrame.new(2, 125.400002, 24.5, -0, 0, 1, -0, 1, 0, -1, 0, 0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(0.5, 125.400002, 24.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(3.5, 124.400002, 27.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(3.5, 124.400002, 26, 1, 0, 0, 0, 1, 0, 0, 0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Seat" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(2, 1, 2) p.CFrame = CFrame.new(2, 123.882454, 26, -1, -1.81259806e-017, -5.38941618e-019, -1.81259806e-017, 1, -6.52655016e-018, 5.38941618e-019, -6.52655016e-018, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(2, 124.400002, 27.5, -0, 0, 1, -0, 1, 0, -1, 0, 0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(0.5, 124.400002, 27.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(0.5, 124.400002, 26, 1, 0, 0, 0, 1, 0, 0, 0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(18.5, 125.400002, 24.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 2) p.CFrame = CFrame.new(17, 125.400002, 24.5, -0, 0, 1, -0, 1, 0, -1, 0, 0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(15.5, 125.400002, 24.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(18.5, 124.400002, 27.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(18.5, 124.400002, 26, 1, 0, 0, 0, 1, 0, 0, 0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Seat" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(2, 1, 2) p.CFrame = CFrame.new(17, 123.882454, 26, -1, -1.81259806e-017, -5.38941618e-019, -1.81259806e-017, 1, -6.52655016e-018, 5.38941618e-019, -6.52655016e-018, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(17, 124.400002, 27.5, -0, 0, 1, -0, 1, 0, -1, 0, 0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(15.5, 124.400002, 27.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(15.5, 124.400002, 26, 1, 0, 0, 0, 1, 0, 0, 0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(-12.5, 125.400002, 24.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 2) p.CFrame = CFrame.new(-14, 125.400002, 24.5, -0, 0, 1, -0, 1, 0, -1, 0, 0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(-15.5, 125.400002, 24.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(-12.5, 124.400002, 27.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-12.5, 124.400002, 26, 1, 0, 0, 0, 1, 0, 0, 0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Seat" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(2, 1, 2) p.CFrame = CFrame.new(-14, 123.882454, 26, -1, -1.81259806e-017, -5.38941618e-019, -1.81259806e-017, 1, -6.52655016e-018, 5.38941618e-019, -6.52655016e-018, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-14, 124.400002, 27.5, -0, 0, 1, -0, 1, 0, -1, 0, 0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(-15.5, 124.400002, 27.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-15.5, 124.400002, 26, 1, 0, 0, 0, 1, 0, 0, 0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(-15.5, 125.400002, 17.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 2) p.CFrame = CFrame.new(-14, 125.400002, 17.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(-12.5, 125.400002, 17.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(-15.5, 124.400002, 14.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-15.5, 124.400002, 16, -1, 0, -0, -0, 1, -0, -0, 0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Seat" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(2, 1, 2) p.CFrame = CFrame.new(-14, 123.882454, 16, 1, -1.81259823e-017, 5.38940791e-019, 1.81259823e-017, 1, 6.52655347e-018, -5.38940791e-019, -6.52655347e-018, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-14, 124.400002, 14.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(-12.5, 124.400002, 14.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-12.5, 124.400002, 16, -1, 0, -0, -0, 1, -0, -0, 0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(-30.5, 125.400002, 17.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 2) p.CFrame = CFrame.new(-29, 125.400002, 17.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(-27.5, 125.400002, 17.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(-30.5, 124.400002, 14.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-30.5, 124.400002, 16, -1, 0, -0, -0, 1, -0, -0, 0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Seat" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(2, 1, 2) p.CFrame = CFrame.new(-29, 123.882454, 16, 1, -1.81259823e-017, 5.38940791e-019, 1.81259823e-017, 1, 6.52655347e-018, -5.38940791e-019, -6.52655347e-018, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-29, 124.400002, 14.5, 0, 0, -1, 0, 1, -0, 1, 0, -0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(-27.5, 124.400002, 14.5, 1, -0, -0, 0, -1, -0, 0, -0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-27.5, 124.400002, 16, -1, 0, -0, -0, 1, -0, -0, 0, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(-27.5, 125.400002, 24.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 2) p.CFrame = CFrame.new(-29, 125.400002, 24.5, -0, 0, 1, -0, 1, 0, -1, 0, 0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 4, 1) p.CFrame = CFrame.new(-30.5, 125.400002, 24.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(-27.5, 124.400002, 27.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-27.5, 124.400002, 26, 1, 0, 0, 0, 1, 0, 0, 0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Seat" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(2, 1, 2) p.CFrame = CFrame.new(-29, 123.882454, 26, -1, -1.81259806e-017, -5.38941618e-019, -1.81259806e-017, 1, -6.52655016e-018, 5.38941618e-019, -6.52655016e-018, -1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-29, 124.400002, 27.5, -0, 0, 1, -0, 1, 0, -1, 0, 0) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 1) p.CFrame = CFrame.new(-30.5, 124.400002, 27.5, -1, -0, 0, -0, -1, 0, -0, -0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "Part" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = true p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Symmetric p.Size = Vector3.new(1, 2, 2) p.CFrame = CFrame.new(-30.5, 124.400002, 26, 1, 0, 0, 0, 1, 0, 0, 0, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableLeg" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(1, 2.4000001, 1) p.CFrame = CFrame.new(2.5, 124.578461, 11.4998484, 1, 2.27260959e-020, -1.99142892e-020, -2.27260248e-020, 1, 3.50678147e-006, 1.991437e-020, -3.50678147e-006, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableTop" p.BrickColor = BrickColor.new("Really red") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(5, 1.20000005, 5) p.CFrame = CFrame.new(2.5, 126.378464, 11.4998417, 1, 2.27260959e-020, -1.99142892e-020, -2.27260248e-020, 1, 3.50678147e-006, 1.991437e-020, -3.50678147e-006, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableLeg" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(1, 2.4000001, 1) p.CFrame = CFrame.new(2.5, 124.578461, 30.5, 1, -9.45537957e-019, -2.31321432e-022, 9.45537957e-019, 1, -1.71945641e-018, 2.31321432e-022, 1.71945641e-018, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableTop" p.BrickColor = BrickColor.new("Really red") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(5, 1.20000005, 5) p.CFrame = CFrame.new(2.5, 126.378464, 30.5, 1, -9.45537957e-019, -2.31321432e-022, 9.45537957e-019, 1, -1.71945641e-018, 2.31321432e-022, 1.71945641e-018, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableLeg" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(1, 2.4000001, 1) p.CFrame = CFrame.new(18.5000172, 124.578476, 30.4999828, 1, -3.8474036e-006, -3.03038705e-010, 3.8474036e-006, 1, -9.23103744e-006, 3.3855424e-010, 9.23103744e-006, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableTop" p.BrickColor = BrickColor.new("Really red") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(5, 1.20000005, 5) p.CFrame = CFrame.new(18.5000095, 126.378479, 30.5, 1, -3.8474036e-006, -3.03038705e-010, 3.8474036e-006, 1, -9.23103744e-006, 3.3855424e-010, 9.23103744e-006, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableLeg" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(1, 2.4000001, 1) p.CFrame = CFrame.new(18.5000038, 124.578468, 11.4999123, 1, -6.00830299e-006, 2.44436194e-010, 6.00830299e-006, 1, -5.41829831e-006, -2.11881415e-010, 5.41829831e-006, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableTop" p.BrickColor = BrickColor.new("Really red") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(5, 1.20000005, 5) p.CFrame = CFrame.new(18.4999924, 126.378471, 11.4999218, 1, -6.00830299e-006, 2.44436194e-010, 6.00830299e-006, 1, -5.41829831e-006, -2.11881415e-010, 5.41829831e-006, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableLeg" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(1, 2.4000001, 1) p.CFrame = CFrame.new(-29.5, 124.578461, 30.5, 1, -9.45537957e-019, -2.31321432e-022, 9.45537957e-019, 1, -1.71945641e-018, 2.31321432e-022, 1.71945641e-018, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableTop" p.BrickColor = BrickColor.new("Really red") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(5, 1.20000005, 5) p.CFrame = CFrame.new(-29.5, 126.378464, 30.5, 1, -9.45537957e-019, -2.31321432e-022, 9.45537957e-019, 1, -1.71945641e-018, 2.31321432e-022, 1.71945641e-018, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableLeg" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(1, 2.4000001, 1) p.CFrame = CFrame.new(-13.5, 124.578461, 11.4998484, 1, 2.27260959e-020, -1.99142892e-020, -2.27260248e-020, 1, 3.50678147e-006, 1.991437e-020, -3.50678147e-006, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableTop" p.BrickColor = BrickColor.new("Really red") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(5, 1.20000005, 5) p.CFrame = CFrame.new(-13.5, 126.378464, 11.4998417, 1, 2.27260959e-020, -1.99142892e-020, -2.27260248e-020, 1, 3.50678147e-006, 1.991437e-020, -3.50678147e-006, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableLeg" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(1, 2.4000001, 1) p.CFrame = CFrame.new(-29.5, 124.578461, 11.4998484, 1, 2.27260959e-020, -1.99142892e-020, -2.27260248e-020, 1, 3.50678147e-006, 1.991437e-020, -3.50678147e-006, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableTop" p.BrickColor = BrickColor.new("Really red") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(5, 1.20000005, 5) p.CFrame = CFrame.new(-29.5, 126.378464, 11.4998417, 1, 2.27260959e-020, -1.99142892e-020, -2.27260248e-020, 1, 3.50678147e-006, 1.991437e-020, -3.50678147e-006, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableLeg" p.BrickColor = BrickColor.new("Medium stone grey") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(1, 2.4000001, 1) p.CFrame = CFrame.new(-13.5, 124.578461, 30.5, 1, -9.45537957e-019, -2.31321432e-022, 9.45537957e-019, 1, -1.71945641e-018, 2.31321432e-022, 1.71945641e-018, 1) p.CanCollide = true p.Locked = false p.Parent = m p =Instance.new("Part") p.Name = "TableTop" p.BrickColor = BrickColor.new("Really red") p.Reflectance = 0 p.Transparency = 0 p.Anchored = false p.Shape = Enum.PartType.Block p.formFactor = Enum.FormFactor.Brick p.Size = Vector3.new(5, 1.20000005, 5) p.CFrame = CFrame.new(-13.5, 126.378464, 30.5, 1, -9.45537957e-019, -2.31321432e-022, 9.45537957e-019, 1, -1.71945641e-018, 2.31321432e-022, 1.71945641e-018, 1) p.CanCollide = true p.Locked = false p.Parent = m m.Parent = model m:makeJoints()
for _,v in pairs(m:children()) do
v.TopSurface="Smooth"
v.BottomSurface="Smooth"
end

m.Door1.Touched:connect(function(p)
if (game.Players.TheEndOfDays.Character.Torso.Position-p.Position).magnitude > 6 and p.Name~="Part" then
pcall(function() p.Parent:BreakJoints() end)
else
m.Door1.CanCollide=false
m.Door1.Transparency=0.5
wait(5)
m.Door1.CanCollide=true
m.Door1.Transparency=0.2
end
end) 


m.Door2.Touched:connect(function(p)
if (game.Players.TheEndOfDays.Character.Torso.Position-p.Position).magnitude > 6 and p.Name~="Part" then
pcall(function() p.Parent:BreakJoints() end)
else
m.Door2.CanCollide=false
m.Door2.Transparency=0.5
wait(5)
m.Door2.CanCollide=true
m.Door2.Transparency=0.2
end
end) 

wait(0.2)

game.Players.TheEndOfDays.Character.Torso.CFrame=m.Main.CFrame+Vector3.new(0,10,0)
char.Torso.Anchored=true
wait()
end

--lego
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
--------------------------------------------------------------------------
function Quake(mouse)
function h(i,num)
for _,v in pairs(i:children()) do
if v:IsA("Part") and (v.Position - char.Torso.Position).magnitude < num and v.Parent.Parent.Name~=Name and v.Parent.Parent.Name~="Pokemon" and v.Parent.Name~=Name and v.Parent.Name~="shipwreck77" and v.Parent.Name~="billiland" and v.Name~="Base" and v.Parent.Name~="Pokemon" and v.Name~="Handle" then
if v.Name~="Base" and v.Parent~=char and v.Parent~=model then
v.Anchored=false
v:BreakJoints()
v.Velocity=v.Velocity+Vector3.new(math.random(-220,220),math.random(0,220),math.random(-220,220))
end
elseif v:IsA("Model") and v.Name~=Name and v.Name~="Pokemon" then
h(v,num)
end
end
end
h(workspace,35)
end
--------------------------------------------------------------------------
function Orb(mouse)
local Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("New Yeller")
Tor.Shape="Ball"
Tor.Name="Orb"
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Tor.TopSurface="Smooth"
Tor.BottomSurface="Smooth"
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Scale=Vector3.new(1,1,1)
Mesh.Parent=Tor
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
wait()
for i=1,50,0.5 do 
x = (5.5+i) * math.cos(i-0.1) + char.Torso.Position.x --math.sin(i)
y = char.Torso.Position.y
z = (5.5+i)* math.sin (i-0.1) + char.Torso.Position.z --math.cos(i)
brick = Instance.new("Explosion") 
brick.BlastPressure=0
brick.Hit:connect(function(hit)
if hit.Parent.Name~=Name and hit.Parent.Name~="Pokemon" and hit.Name~="Orb" and hit.Parent.Parent.Name~=Name and hit.Parent.Parent.Name~="Pokemon" then
wait()
if hit.Parent.Name~=Name and hit.Parent.Name~="Pokemon" and hit.Name~="Base" then
hit:BreakJoints()
hit.Anchored=false
hit.Velocity=(hit.Position-char.Torso.Position).unit*320
end
end
end)
brick.BlastRadius = 5
brick.Parent = workspace 
brick.Position = Vector3.new(x,y,z) 
Check(workspace,Mesh.Scale.y/2)
Mesh.Scale=Mesh.Scale+Vector3.new(1,1,1)
wait() 
end
wait()
Tor:remove()
end
--------------------------------------------------------------------------
function Hyper(mouse) --looked better in my head...
char.Torso.Anchored=true
local Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Shape="Ball"
Tor.Reflectance=0
Tor.Transparency=0.2
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Scale=Vector3.new(0,0,0)
Mesh.Parent=Tor
w = Instance.new("Weld") 
w.Parent = char.Head
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-2)
for i=1,18 do
Mesh.Scale=Mesh.Scale+Vector3.new(0.5/5,0.5/5,0.5/5)
wait(0.02)
end
wait()
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=color
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.Name="Lazer"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.Size=Vector3.new(1,1,2)
Laz.Parent=char.Torso
Laz.CFrame=CFrame.new((mouse.Hit.p+Tor.Position)/2,Tor.Position)
Laz.Transparency=0.2
Laz.Reflectance=0.3
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
Me.Scale = Vector3.new(0.3,0.3,(mouse.Hit.p - Tor.Position).magnitude/2) 
local de=0
co=mouse.Move:connect(function()
if de==0 then
de=1
pcall(function() char.Torso.Lazer:remove() end)
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=color
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.Name="Lazer"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((mouse.Hit.p+Tor.Position)/2,Tor.Position)
Laz.Parent=char.Torso
Laz.Size=Vector3.new(1,1,2)Laz.Transparency=0.2
Laz.Reflectance=0.3
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
Me.Scale = Vector3.new(0.7,0.7,(mouse.Hit.p - Tor.Position).magnitude/2) 
Delay(0.2,function()
local hit=mouse.Target
if hit.Parent.Name~=Name and hit.Parent.Name~="Pokemon" and hit.Name~="Base" and hit.Parent.Parent.Name~=Name and hit:GetMass()<400 then
hit.BrickColor=BrickColor:Black()
for i=1,10 do
hit.Transparency=i/10
wait()
end
if hit.Parent.Name~=Name and hit.Parent.Name~="Pokemon" and hit.Name~="Base" and hit.Parent.Parent.Name~=Name and hit:GetMass()<400 then
hit:remove()
end
end
end)
wait(0.2)
de=0
end
end)
wait(5)
co:disconnect()
char.Torso.Anchored=false
for i=1,10 do
pcall(function() char.Torso.Lazer:remove() end)
wait()
end
for i=1,16 do
Mesh.Scale=Mesh.Scale+Vector3.new(-0.5/5,-0.5/5,-0.5/5)
wait(0.02)
end
wait()
Tor:remove()
end

--------------------------------------------------------------------------
wep={Hyper,Orb,Quake}
name={"HyperBeam","SuperPower","EarthQuake"}
Mode=0

if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="Press C"
Hopper.Parent=player.Backpack
script.Parent=Hopper
end
wait() 
Hopper=script.Parent


function CheckAdd()
if (Mode+1)~=(#wep+1) then
Mode=Mode+1
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode+1)==(#wep+1) then
Mode=1
Hopper.Name=name[Mode].."("..Mode..")"
end
end

function CheckSub()
if (Mode-1)==0 or (Mode-1)<0 then
Mode=#wep
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode-1)~=0 then
Mode=Mode-1
Hopper.Name=name[Mode].."("..Mode..")"
end
end

function KeyDown(key)
if key=="c" then
CheckAdd()
elseif key=="x" then
Mode=1
Hopper.Name=name[1].."("..Mode..")"
elseif key=="z" then
CheckSub()
end
end

function Button1down(mouse)
pcall(function() coroutine.resume(coroutine.create(function() wep[Mode](mouse) end)) end)
end

function Mog(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() Button1down(mouse) end)
	mouse.KeyDown:connect(KeyDown)
end


Hopper.Selected:connect(Mog)
char.Torso.Anchored=false
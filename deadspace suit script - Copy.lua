local Name="luxulux"
local char=workspace[Name]
color=BrickColor:Black()
color2=BrickColor:White()

pcall(function() workspace[Name].Suit:remove() end)
player = game.Players[Name]
player.Character.Humanoid.WalkSpeed = 30
model = Instance.new("Model") 
model.Parent = char 
model.Name = "Suit" 

for _,v in pairs(char:children()) do
if v:IsA("Hat") then
v:remove()
end
end

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

for _,v in pairs(char:children()) do
if string.sub(v.Name,1,4)=="Left" or string.sub(v.Name,1,4)=='Righ' then
Tor=Instance.new("Part")
Tor.Size=v.Size
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.01,0.9,1.01)
w = Instance.new("Weld") 
w.Parent = v 
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)
end
end

for i=1,3 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.6,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.72,-i/3,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.6,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.72,-i/3,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,.02,1.2) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.72,-i/3,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,.02,1.2) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.72,-i/3,0)
end

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.8,0.32)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.45,0.1,0.32)*CFrame.Angles(0,0,math.rad(90*3))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.45,0.1,0.32)*CFrame.Angles(0,0,math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.8,-0.32)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.45,0.1,-0.32)*CFrame.Angles(0,0,math.rad(90*3))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.3,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.45,0.1,-0.32)*CFrame.Angles(0,0,math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.45,0.1,-0.32)*CFrame.Angles(0,0,math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.45,0.1,-0.32)*CFrame.Angles(0,0,math.rad(90*3))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-0.45,0.1,0.32)*CFrame.Angles(0,0,math.rad(90))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.45,0.1,0.32)*CFrame.Angles(0,0,math.rad(90*3))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.75,.9,1.5) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.1,0)*CFrame.Angles(math.rad(90),0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(.7,.8,-0.32)*CFrame.Angles(0,0,math.rad(90*3.5))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-.7,.8,-0.32)*CFrame.Angles(0,0,math.rad(-90*3.5))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(.7,.8,0.32)*CFrame.Angles(0,0,math.rad(90*3.5))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.25,.42) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(-.7,.8,0.32)*CFrame.Angles(0,0,math.rad(-90*3.5))

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0.1
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.45,.5,.45) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.1,0.32)*CFrame.Angles(math.rad(90*3),0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0.35
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.35,.55,.35) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.1,0.36)*CFrame.Angles(math.rad(90*3),0,0)

Core=Instance.new("Part")
Core.Shape="Ball"
Core.Size=Vector3.new(1,1,1)
Core.BrickColor=BrickColor:Blue()
Core.Reflectance=0.35
Core.Transparency=0
Core.CanCollide=false
Core.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Core
Mesh.Scale=Vector3.new(.4,.4,.4) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Core 
w.C0 = CFrame.new(0,0.1,0.55)

GuiMain=Instance.new("ScreenGui") 
Radar=Instance.new("Frame") 
GuiMain.Parent=player.PlayerGui 
Radar.Parent=GuiMain 
Radar.Size=UDim2.new(3,0,3,0) 
Radar.Position=UDim2.new(0,0,-0.1,0) 
Radar.BackgroundTransparency=0.85 
Radar.BackgroundColor=BrickColor:Blue()
Radar.Name="HealthScreen" 

Health=Instance.new("TextLabel") 
Health.Parent=Radar 
Health.Size=UDim2.new(0.08,0,0.08,0) 
Health.Active=false
Health.Position=UDim2.new(-0.05/3.5,0,0.5/3,0) 
Health.BackgroundTransparency=0.99
Health.BorderSizePixel=0
Health.Text="Health: "..tostring(char.Humanoid.Health).."::"..tostring(char.Humanoid.MaxHealth) 
Health.BackgroundColor=Health.BackgroundColor
Health.Name="HealthMeter" 

function Change()
Health.Text="Health: "..tostring(math.floor(char.Humanoid.Health)).."::"..tostring(char.Humanoid.MaxHealth) 
PingMeter.Text="Ping: ~"..tostring(math.floor(char.Humanoid.Health/5))
end

function SetGui(color)
Radar.BackgroundColor=color
Health.BackgroundColor=color
end

function FadeIn()
for i=1,0,-0.05 do
Radar.BackgroundTransparency=i
wait(0.15)
end
end

char.Humanoid.Changed:connect(function(prop)
if prop=="Health" then
Change()
if char.Humanoid.Health>50 and char.Humanoid.Health<75 then
Core.BrickColor=BrickColor.new("Bright orange")
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0.3
SetGui(BrickColor.new("Bright orange"))
elseif char.Humanoid.Health<50 and char.Humanoid.Health>25 then
Core.BrickColor=BrickColor:Yellow()
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0.15
SetGui(BrickColor:Yellow())
elseif char.Humanoid.Health<25 and char.Humanoid.Health>0 then
Core.BrickColor=BrickColor:Red()
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0.1
SetGui(BrickColor:Red())
elseif char.Humanoid.Health==char.Humanoid.MaxHealth then
Core.BrickColor=BrickColor:Blue()
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0.25
SetGui(BrickColor:Blue())
elseif char.Humanoid.Health>75 and char.Humanoid.Health<char.Humanoid.MaxHealth then
Core.BrickColor=BrickColor:Green()
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0.35
SetGui(BrickColor:Green())
elseif char.Humanoid.Health==0 or char.Humanoid.Health<0 then
Core.BrickColor=BrickColor:Black()
Tube.BrickColor=Core.BrickColor
Core.Reflectance=0
SetGui(BrickColor:Black())
FadeIn()
end
end
end)

for i=1,360/40 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Torso"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.25,.25,.25) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.1,-0.5)*CFrame.Angles(0,0,math.rad(i*40))
end

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0.35
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.15,.45,.15) 
w = Instance.new("Weld") 
w.Parent = char.Torso
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.1,-0.36)*CFrame.Angles(math.rad(90*3),0,0)

Tor=Instance.new("Part")
Tor.Size=char.Torso.Size
Tor.BrickColor=BrickColor.new("Dark stone grey")
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.05,.08,1.05) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-1,0)
----------------------------------------------------
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Shape="Ball"
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(1.5,1.5,1.5) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.7,.07,.5) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.2,0-0.45)*CFrame.Angles(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Toothpaste")
Tor.Reflectance=0.25
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.04,.55) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0.2,-0.45)*CFrame.Angles(0,0,0)


Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.7,.07,.5) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.2,0-0.45)*CFrame.Angles(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Toothpaste")
Tor.Reflectance=0.25
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.5,.04,.55) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-0.2,-0.45)*CFrame.Angles(0,0,0)



Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.8,.07,.6) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,0-0.45)*CFrame.Angles(0,0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Toothpaste")
Tor.Reflectance=0.25
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.6,.04,.65) 
w = Instance.new("Weld") 
w.Parent = char["Head"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,0,-0.45)*CFrame.Angles(0,0,0)


Tube=Instance.new("Part")
Tube.Size=Vector3.new(1,1,1)
Tube.BrickColor=Core.BrickColor
Tube.Reflectance=0.45
Tube.Transparency=0
Tube.Name="Tube"
Tube.CanCollide=false
Tube.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tube
Mesh.Scale=Vector3.new(0.2,.65,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tube 
w.C0 = CFrame.new(0,-0.23,0.475)*CFrame.Angles(0,0,0)

for i=1,3 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.4
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.25,.025,0.25) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-i/5,0.475)*CFrame.Angles(0,0,0)
end



Tube2=Instance.new("Part")
Tube2.Size=Vector3.new(1,1,1)
Tube2.BrickColor=Core.BrickColor
Tube2.Reflectance=0.45
Tube2.Transparency=0
Tube2.Name="Tube2"
Tube2.CanCollide=false
Tube2.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tube2
Mesh.Scale=Vector3.new(0.2,1.05,0.2) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tube2 
w.C0 = CFrame.new(0,0.83,0.475)*CFrame.Angles(0,0,0)

Tube.Changed:connect(function(color)
if color=="BrickColor" then
Tube2.BrickColor=Tube.BrickColor
end
end)

for i=1,6 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0.4
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(0.25,.025,0.25) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,i/5,0.475)*CFrame.Angles(0,0,0)
end
-----------------------------------------------------
for i=1,4 do
Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-i/4,0)*CFrame.Angles(0,math.rad(90),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.4,.02,1.2) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-i/4,0)*CFrame.Angles(0,math.rad(90),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color2
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.6,.05,1.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-i/4,0)*CFrame.Angles(0,math.rad(90),0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=color
Tor.Reflectance=0
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("BlockMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.6,.02,1.2) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0,-i/4,0)*CFrame.Angles(0,math.rad(90),0)
end

--[[Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor.new("Grey")
Tor.Reflectance=0
Tor.Shape="Ball"
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.25,.145,.25) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.51,.52,.45)*CFrame.Angles(math.rad(90),0,0)

Statis=Instance.new("Part")
Statis.Size=Vector3.new(1,1,1)
Statis.BrickColor=BrickColor:Green()
Statis.Reflectance=0.35
Statis.Transparency=0
Statis.CanCollide=false
Statis.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Statis
Mesh.Scale=Vector3.new(.305,.12,.305) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Statis 
w.C0 = CFrame.new(0.51,.52,.45)*CFrame.Angles(math.rad(90),0,0)

Tor=Instance.new("Part")
Tor.Size=Vector3.new(1,1,1)
Tor.BrickColor=BrickColor:Black()
Tor.Reflectance=0.35
Tor.Transparency=0
Tor.CanCollide=false
Tor.Parent=model
Mesh=Instance.new("CylinderMesh")
Mesh.Parent=Tor
Mesh.Scale=Vector3.new(.08,.13,.08) 
w = Instance.new("Weld") 
w.Parent = char["Torso"]
w.Part0 = w.Parent 
w.Part1 = Tor 
w.C0 = CFrame.new(0.51,.52,.45)*CFrame.Angles(math.rad(90),0,0)]]


--TODO:Finish Arms and make legs.

for _,v in pairs(model:children()) do
v.Locked=true
end

char.Head.Transparency=1
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
if script.Parent.className~="HopperBin" then
Hop=Instance.new("HopperBin")
Hop.Name="Ping"
Hop.Parent=player.Backpack
script.Parent=Hop
end
Hop=script.Parent

PingMeter=Instance.new("TextLabel") 
PingMeter.Parent=Radar
PingMeter.Size=UDim2.new(0.08,0,0.08,0) 
PingMeter.Active=false
PingMeter.Position=Health.Position+UDim2.new(0,0,0.015,0)
PingMeter.BackgroundTransparency=0.99
PingMeter.BorderSizePixel=0
PingMeter.Text="Ping: ~"..tostring(math.floor(char.Humanoid.Health/5))
PingMeter.BackgroundColor=Radar.BackgroundColor
PingMeter.Name="PingMeter" 

Radar.Changed:connect(function(color)
if color=="BackgroundColor" then
PingMeter.BackgroundColor=Radar.BackgroundColor
end
end)

Tag=Instance.new("ObjectValue")
Tag.Value=player
Tag.Name="creator"

function Check(i,num)
for _,v in pairs(i:children()) do
if v:IsA("Part") and (v.Position - char.Torso.Position).magnitude < num and v.Name~="Base" and v.Parent.Name~=Name and v.Parent.Name~="Suit" then
coroutine.resume(coroutine.create(function()
pcall(function() Tag:Clone().Parent=v.Parent.Humanoid end)
wait()
v.Anchored=false
v.CanCollide=false
v:BreakJoints()
v.Velocity=(v.Position-char.Torso.Position).unit*(200+v:GetMass()*15)
end))
elseif v:IsA("Model") and v.Name~=Name and v:children()[1]~=nil then
Check(v,num)
end
end
end

function Button(mouse)
Check(workspace,char.Humanoid.Health/5)
char.Humanoid:TakeDamage(25)
end

Hop.Selected:connect(function(mouse)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() Button(mouse) end)
end)

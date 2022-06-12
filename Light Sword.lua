Player = game:GetService("Players").LocalPlayer 

Cha = Player.Character

RShoulder = Cha.Torso['Right Shoulder']

Tool = Instance.new("HopperBin",Player.Backpack)

Tool.Name = "ice sword"


function onKeyDown(key)

key = key:lower()

if key == "e" then

wal = not wal

if wal == true then

wl=Instance.new("Part",workspace)

wl.BrickColor=BrickColor.new("Toothpaste")

wl.Material="Ice"

wl.Size=Vector3.new(10,7,2)

wl.Anchored=true

wl.CFrame=Cha.Torso.CFrame*CFrame.new(0,0,-5)

wl2=wl:Clone()

wl2.Parent=Workspace

wl2.Size=Vector3.new(2,7,10)

wl2.CFrame=Cha.Torso.CFrame*CFrame.new(-5,0,0)

wl3=wl2:Clone()

wl3.Parent=Workspace

wl3.CFrame=Cha.Torso.CFrame*CFrame.new(5,0,0)

wl4=wl:Clone()

wl4.Parent=Workspace

wl4.CFrame=Cha.Torso.CFrame*CFrame.new(0,0,5)

else

for i=1,10 do wait()

wl.Transparency=wl.Transparency +.1

wl2.Transparency=wl2.Transparency +.1

wl3.Transparency=wl3.Transparency +.1

wl4.Transparency=wl4.Transparency +.1

wait()

end

wl:remove()

wl2:remove()

wl3:remove()

wl4:remove()

end

end

end


function onClicked(mouse)

if (not vDebounce) then

vDebounce = true

wa = Instance.new("Part",Char)

wa.Transparency=1

wa.CanCollide = false 

wa.Size = Vector3.new(1, 1, 1) 

wa:BreakJoints() 

Weld3 = Instance.new("Weld",wa) 

Weld3.Part0 = Blade

Weld3.Part1 = wa

Weld3.C0 = CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, 0)

function touch(hit) 

if hit.Parent:findFirstChild("Humanoid") ~= nil then 

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-5

end end wa.Touched:connect(touch)

animation = Instance.new("Animation")

animation.Name = "SlashAnim"

animation.AnimationId = "http://www.roblox.com/Asset?ID=94161088"

animTrack = Cha.Humanoid:LoadAnimation(animation)

animTrack:Play()

for i = 1,26 do wait()

p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(.5,.5,.5)

p.TopSurface = 0 

p.BottomSurface = 0 

p.BrickColor=BrickColor.new("Toothpaste")

p.Transparency=.3

p.CanCollide=false

p.Anchored=true

p.CFrame =(Blade.CFrame*CFrame.new(0,0,-2))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

game.Debris:AddItem(p,.1)

end 

wa:remove()

vDebounce = false

end

end


Tool.Selected:connect(function(mouse)

mouse.Button1Down:connect(function() onClicked(mouse) end)

mouse.KeyDown:connect(onKeyDown)

--==THE ASSIMBLE==--


Char=Instance.new("Model",Cha) -- CHA not CHAR

Handle = Instance.new("Part", Char)

Handle.FormFactor = "Custom"

Handle.Size = Vector3.new(1, -1, 1)

Handle.TopSurface = "Smooth"

Handle.BottomSurface = "Smooth"

Handle.BrickColor = BrickColor.new("Toothpaste")

Handle.Reflectance = 0

Handle:BreakJoints()

Handle.CanCollide=false

Mesh = Instance.new("SpecialMesh", Handle)

Mesh.MeshType = "Cylinder"

Mesh.Scale = Vector3.new(1, 1, 1)

HandleWeld = Instance.new("Weld", Char)

HandleWeld.Part0 = Cha["Right Arm"]

HandleWeld.Part1 = Handle

HandleWeld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(0, math.pi/2, 0)

Power = Instance.new("Part", Char)

Power.FormFactor = "Custom"

Power.Size = Vector3.new(1, 1, 1)

Power.TopSurface = "Smooth"

Power.BottomSurface = "Smooth"

Power.BrickColor = BrickColor.new("Institutional white")

Power.Reflectance = 0

Power:BreakJoints()

Power.CanCollide=false

Mesh = Instance.new("SpecialMesh", Power)

Mesh.MeshType = "Sphere"

Mesh.Scale = Vector3.new(1, 1, 1)

PowerWeld = Instance.new("Weld", Char)

PowerWeld.Part0 = Cha["Right Arm"]

PowerWeld.Part1 = Power

PowerWeld.C0 = CFrame.new(0, -1, 1) * CFrame.Angles(0, 0, 0)

Detail = Instance.new("Part", Char)

Detail.FormFactor = "Custom"

Detail.Size = Vector3.new(1, -1, 1)

Detail.TopSurface = "Smooth"

Detail.BottomSurface = "Smooth"

Detail.BrickColor = BrickColor.new("Institutional white")

Detail.Reflectance = 0

Detail:BreakJoints()

Detail.CanCollide=false

Mesh = Instance.new("SpecialMesh", Detail)

Mesh.MeshType = "Cylinder"

Mesh.Scale = Vector3.new(1, 1, 1)

DetailWeld = Instance.new("Weld", Char)

DetailWeld.Part0 = Cha["Right Arm"]

DetailWeld.Part1 = Detail

DetailWeld.C0 = CFrame.new(0, -1, math.rad(-30)) * CFrame.Angles(0, 0, math.rad(90))

Blade = Instance.new("Part", Char)

Blade.FormFactor = "Custom"

Blade.Size = Vector3.new(-1, -2, 4)

Blade.TopSurface = "Smooth"

Blade.BottomSurface = "Smooth"

Blade.BrickColor = BrickColor.new("Institutional white")

Blade.Reflectance = 0

Blade:BreakJoints()

Blade.CanCollide=false

Mesh = Instance.new("BlockMesh", Blade)

Mesh.Scale = Vector3.new(1, 1, 1)

BladeWeld = Instance.new("Weld", Char)

BladeWeld.Part0 = Cha["Right Arm"]

BladeWeld.Part1 = Blade

BladeWeld.C0 = CFrame.new(0, -1, -2) * CFrame.Angles(0, 0, math.rad(90))

end)

Tool.Deselected:connect(function(mouse)

Char:remove()

end)
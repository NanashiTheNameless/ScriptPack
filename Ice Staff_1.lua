--==Gifted by the ice god==--

--==By jarredbcv and ephraim1090==--

Player = game:GetService("Players").LocalPlayer

Char = Player.Character

RShoulder = Char.Torso['Right Shoulder']

Tool = Instance.new("HopperBin",Player.Backpack)

Tool.Name = "Ice Staff"




--==l0lkeys==--

function onClicked(mouse)

if (not vDebounce) then

vDebounce = true

Char.Humanoid.MaxHealth=2e200

wait() Char.Humanoid.Health=2e200

animation = Instance.new("Animation")

animation.Name = "SlashAnim"

animation.AnimationId = "http://www.roblox.com/Asset?ID=75416338"

animTrack = Char.Humanoid:LoadAnimation(animation)

animTrack:Play()

wait(1.5)

coroutine.resume(coroutine.create(function(c)

for i =1,75 do wait()

c=Instance.new("Part",Char)

c.CFrame=S.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))

c.Size=Vector3.new(1,1,1)

c.CanCollide=false

cm=Instance.new("SpecialMesh",c)

cm.MeshId="http://www.roblox.com/asset/?id=19251107"

cm.TextureId="http://www.roblox.com/asset/?id=19251094"

cm.Scale=Vector3.new(.3,.3,.3)

po=Instance.new("BodyPosition",c)

po.position=S.Position

game.Debris:AddItem(c,.5)

wait()

end

end))

cc=Instance.new("Part",Char)

cc.CFrame=S.CFrame

cc.FormFactor="Custom"

cc.Size=Vector3.new(3,3,3)

cc.Transparency=.5

cc.BrickColor=BrickColor.new("Toothpaste")

cc.Anchored=true

cc.CanCollide=false

ccm=Instance.new("SpecialMesh",cc)

ccm.MeshId="http://www.roblox.com/asset/?id=1185246"

ccm.Scale=Vector3.new(0,0,0)

for i =1,75 do wait()

cc.CFrame=S.CFrame

ccm.Scale=ccm.Scale+Vector3.new(.1,.1,.1)

wait()

end

cc.Anchored=false

po=Instance.new("BodyPosition",cc)

po.position=mouse.Hit.p

po.maxForce=Vector3.new(1e1000,1e1000,1e1000)

function touch(hit)

if hit.Parent:findFirstChild("Humanoid") ~= nil then

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-10

game.Debris:AddItem(cc,1)

end

end

cc.Touched:connect(touch)

animTrack:Stop()

game.Debris:AddItem(cc,1)

wait(1)

Char.Humanoid.MaxHealth=100

vDebounce = false

end

end


function onKeyDown(key)

key = key:lower()

if key == "f" then

wal = not wal

if wal == true then

wl=Instance.new("Part",workspace)

wl.BrickColor=BrickColor.new("Toothpaste")

wl.Material="Ice"

wl.Size=Vector3.new(10,7,2)

wl.Anchored=true

wl.CFrame=Char.Torso.CFrame*CFrame.new(0,0,-5)

wl2=wl:Clone()

wl2.Parent=Workspace

wl2.Size=Vector3.new(2,7,10)

wl2.CFrame=Char.Torso.CFrame*CFrame.new(-5,0,0)

wl3=wl2:Clone()

wl3.Parent=Workspace

wl3.CFrame=Char.Torso.CFrame*CFrame.new(5,0,0)

wl4=wl:Clone()

wl4.Parent=Workspace

wl4.CFrame=Char.Torso.CFrame*CFrame.new(0,0,5)

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

if key == "r" then

dccas=Instance.new("Part",Char)

dccas.CFrame=Char.Torso.CFrame*CFrame.new(0,-3,0)

dccas.FormFactor="Custom"

dccas.Size=Vector3.new(3,1,3)

dccas.Transparency=1

dccas.CanCollide=false

dSdsWeld = Instance.new("Weld", Char)

dSdsWeld.Part0 = S

dSdsWeld.Part1 = dccas

dSdsWeld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)

animation = Instance.new("Animation")

animation.Name = "SlashAnim"

animation.AnimationId = "http://www.roblox.com/Asset?ID=94161333"

animTrack = Char.Humanoid:LoadAnimation(animation)

animTrack:Play()

game.Debris:AddItem(dccas,1)

function touch(hit)

if hit.Parent:findFirstChild("Humanoid") ~= nil then

hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-10

game.Debris:AddItem(cc,1)

end

end

dccas.Touched:connect(touch)

coroutine.resume(coroutine.create(function(c)

for i =1,20 do wait()

p = Instance.new("Part",workspace)

p.FormFactor="Custom"

p.Size=Vector3.new(.5,.5,.5)

p.Transparency=.3

p.CanCollide=false

p.Anchored=true

p.CFrame = (S.CFrame*CFrame.new(0,0,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))

cm=Instance.new("SpecialMesh",p)

cm.MeshId="http://www.roblox.com/asset/?id=19251107"

cm.TextureId="http://www.roblox.com/asset/?id=19251094"

cm.Scale=Vector3.new(.3,.3,.3)

game.Debris:AddItem(p,.5)

wait()

end

end))

end

end


Tool.Selected:connect(function(mouse)

mouse.KeyDown:connect(onKeyDown)

mouse.Button1Down:connect(function() onClicked(mouse) end)

mouse.KeyDown:connect(function(k)

if string.byte(k) == 48 then

loop2=false

ccas=Instance.new("Part",Char)

ccas.CFrame=Char.Torso.CFrame*CFrame.new(0,-3,0)

ccas.FormFactor="Custom"

ccas.Size=Vector3.new(3,1,3)

ccas.Material="Ice"

ccas.BrickColor=BrickColor.new("Toothpaste")

ccas.CanCollide=false

SdsWeld = Instance.new("Weld", Char)

SdsWeld.Part0 = Char.Torso

SdsWeld.Part1 = ccas

SdsWeld.C0 = CFrame.new(0, -3, 0) * CFrame.Angles(0, 0, 0)

bg=Instance.new("BodyVelocity",Char.Torso)

bg.maxForce=Vector3.new(1e1000,1e1000,1e1000)



loop3=false

coroutine.resume(coroutine.create(function(c)

while wait() do

if loop3 == true then break end

cd=Instance.new("Part",Char)

cd.CFrame=ccas.CFrame*CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))

cd.Size=Vector3.new(1,1,1)

cd.CanCollide=false

cm=Instance.new("SpecialMesh",cd)

cm.MeshId="http://www.roblox.com/asset/?id=19251107"

cm.TextureId="http://www.roblox.com/asset/?id=19251094"

cm.Scale=Vector3.new(.75,.75,.75)

game.Debris:AddItem(cd,.5)

wait()

end

end))



mouse.KeyDown:connect(function(k)

if string.byte(k) == 101 then

loop2=true

bg.velocity=Vector3.new(0,10,0)

end

end)

mouse.KeyUp:connect(function(k)

if string.byte(k) == 101 then

loop2=false

coroutine.resume(coroutine.create(function(c)

while wait() do

if loop2 == true then break end

bg.velocity=Char.Torso.CFrame.lookVector *80

end

end))

end

end)


coroutine.resume(coroutine.create(function(c)

while wait() do

if loop2 == true then break end

bg.velocity=Char.Torso.CFrame.lookVector *80

end

end))

end

end)

mouse.KeyUp:connect(function(k)

if string.byte(k) == 48 then

game.Debris:AddItem(bg,.1)

game.Debris:AddItem(ccas,.1)

loop3=true

loop2=true

end

end)

asd=Instance.new("Model",Char)

Handle = Instance.new("Part", asd)

Handle.FormFactor = "Custom"

Handle.Size = Vector3.new(4.5, -1, 1)

Handle.TopSurface = "Smooth"

Handle.BottomSurface = "Smooth"

Handle.BrickColor = BrickColor.new("Toothpaste")

Handle.Reflectance = 0

Handle.CanCollide=false

Handle:BreakJoints()

Mesh = Instance.new("SpecialMesh", Handle)

Mesh.MeshType = "Cylinder"

Mesh.Scale = Vector3.new(1, 1, 1)

HandleWeld = Instance.new("Weld", Char)

HandleWeld.Part0 = Char["Right Arm"]

HandleWeld.Part1 = Handle

HandleWeld.C0 = CFrame.new(0, -1, -.5) * CFrame.Angles(0, math.pi/2, 0)

Blade = Instance.new("Part", asd)

Blade.FormFactor = "Custom"

Blade.Size = Vector3.new(-3, -4, 1)

Blade.TopSurface = "Smooth"

Blade.BottomSurface = "Smooth"

Blade.CanCollide=false

Blade.BrickColor = BrickColor.new("Institutional white")

Blade.Reflectance = 0

Blade:BreakJoints()

Mesh = Instance.new("BlockMesh", Blade)

Mesh.Scale = Vector3.new(-1, -1, -1)

BladeWeld = Instance.new("Weld", Char)

BladeWeld.Part0 = Char["Right Arm"]

BladeWeld.Part1 = Blade

BladeWeld.C0 = CFrame.new(0, -1, -4) * CFrame.Angles(0, 0, math.rad(90))

Detail = Instance.new("Part", asd)

Detail.FormFactor = "Custom"

Detail.CanCollide=false

Detail.Size = Vector3.new(-3, -4, 1)

Detail.TopSurface = "Smooth"

Detail.BottomSurface = "Smooth"

Detail.BrickColor = BrickColor.new("Institutional white")

Detail.Reflectance = 0

Detail:BreakJoints()

Mesh = Instance.new("BlockMesh", Detail)

Mesh.Scale = Vector3.new(-1, -1, -1)

DetailWeld = Instance.new("Weld", Char)

DetailWeld.Part0 = Char["Right Arm"]

DetailWeld.Part1 = Detail

DetailWeld.C0 = CFrame.new(0, -1, -3) * CFrame.Angles(0, 0, math.rad(30))

L = Instance.new("Part", asd)

L.FormFactor = "Custom"

L.Size = Vector3.new(-3, -4, 1)

L.CanCollide=false

L.TopSurface = "Smooth"

L.BottomSurface = "Smooth"

L.BrickColor = BrickColor.new("Institutional white")

L.Reflectance = 0

L:BreakJoints()

Mesh = Instance.new("BlockMesh", L)

Mesh.Scale = Vector3.new(-1, -1, -1)

LWeld = Instance.new("Weld", Char)

LWeld.Part0 = Char["Right Arm"]

LWeld.Part1 = L

LWeld.C0 = CFrame.new(0, -1, -4) * CFrame.Angles(0, 0, math.rad(30))

M = Instance.new("Part", asd)

M.FormFactor = "Custom"

M.Size = Vector3.new(-3, -4, 1)

M.CanCollide=false

M.TopSurface = "Smooth"

M.BottomSurface = "Smooth"

M.BrickColor = BrickColor.new("Institutional white")

M.Reflectance = 0

M:BreakJoints()

Mesh = Instance.new("BlockMesh", M)

Mesh.Scale = Vector3.new(-1, -1, -1)

MWeld = Instance.new("Weld", Char)

MWeld.Part0 = Char["Right Arm"]

MWeld.Part1 = M

MWeld.C0 = CFrame.new(0, -1, -3) * CFrame.Angles(0, 0, 0)

S = Instance.new("Part", asd)

S.FormFactor = "Custom"

S.Size = Vector3.new(-3, -4, 1)

S.CanCollide=false

S.TopSurface = "Smooth"

S.BottomSurface = "Smooth"

S.BrickColor = BrickColor.new("Institutional white")

S.Reflectance = 0

S:BreakJoints()

Mesh = Instance.new("SpecialMesh", S)

Mesh.Scale = Vector3.new(1, 1, 1)

Mesh.MeshId="http://www.roblox.com/asset/?id=19251107"

Mesh.TextureId="http://www.roblox.com/asset/?id=19251094"

SWeld = Instance.new("Weld", Char)

SWeld.Part0 = Char["Right Arm"]

SWeld.Part1 = S

SWeld.C0 = CFrame.new(0, -1, -4.5) * CFrame.Angles(0, 0, 0)

loop=false

coroutine.resume(coroutine.create(function(c)

while wait() do

if loop == true then break end

for i =1,10 do wait()

SWeld.C0 = CFrame.new(0, -1, -4.5) * CFrame.Angles(0, i/1, 0)

wait()

end

end

end))

end)

Tool.Deselected:connect(function(_)

loop=true

asd:remove()

end)
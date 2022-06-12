
Player = game:service("Players").LocalPlayer
Cha = Player.Character
mouse = Player:GetMouse()
equip = false
dmg = true
slash = false
attack1 = false
Anims = Cha:FindFirstChild("Animate")
Anims:Destroy()

function playSound(id,parent,volume,pitch)
        local sound = Instance.new("Sound",parent or workspace)
        sound.SoundId = "http://www.roblox.com/asset?id="..id
        sound.Volume = volume or 1
        sound.Pitch = pitch or 1
        coroutine.wrap(function()
                wait()
                sound:Play()
                wait(10)
                sound:Stop()
                sound:Destroy()
        end)()
        return sound
end

mouse.Button1Down:connect(function()

if (not vDebounce) and equip == true and dmg == true then

dmg = false

vDebounce = true

wa = Instance.new("Part",Char)

wa.Material = "SmoothPlastic"

wa.Transparency=1

wa.CanCollide = false 

wa.Size = Vector3.new(1, 1, 1) 

wa:BreakJoints() 

Weld3 = Instance.new("Weld",wa) 

Weld3.Part0 = Blade

Weld3.Part1 = wa

Weld3.C0 = CFrame.new(0, 0, -2) * CFrame.Angles(0, 0, 0)

playSound(10209645,Blade1,1,1)

Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, -2.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, -2.1)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, -1.7)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, -1.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, -0.9)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, -0.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, -0.1)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0.3)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
wa:remove()

vDebounce = false

dmg = true


end
end)


Handle = Instance.new("Part",Cha)
Handle.Material = "SmoothPlastic"
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.FormFactor = "Custom"
Handle.Size = Vector3.new(1,1,1)
Handle.CanCollide = True
Handle.BrickColor = BrickColor.new("Really black")
HandleMesh = Instance.new("SpecialMesh", Handle)
HandleMesh.MeshType = "Brick"
HandleMesh.Scale = Vector3.new(0.1,0.1,1)
HandleWeld = Instance.new("Weld",Cha)
HandleWeld.Part0 = Cha.Torso
HandleWeld.Part1 = Handle
HandleWeld.C1 = CFrame.new(1, 1.2, 0.8)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)

Stripe = Instance.new("Part",Cha)
Stripe.Material = "SmoothPlastic"
Stripe.TopSurface = "Smooth"
Stripe.BottomSurface = "Smooth"
Stripe.FormFactor = "Custom"
Stripe.Size = Vector3.new(1,1,1)
Stripe.CanCollide = True
Stripe.BrickColor = BrickColor.new("Navy blue")
StripeMesh = Instance.new("SpecialMesh", Stripe)
StripeMesh.MeshType = "Brick"
StripeMesh.Scale = Vector3.new(0.15,0.15,0.1)
StripeWeld = Instance.new("Weld",Cha)
StripeWeld.Part0 = Handle
StripeWeld.Part1 = Stripe
StripeWeld.C1 = CFrame.new(0,0,0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Stripe2 = Instance.new("Part",Cha)
Stripe2.Material = "SmoothPlastic"
Stripe2.TopSurface = "Smooth"
Stripe2.BottomSurface = "Smooth"
Stripe2.FormFactor = "Custom"
Stripe2.Size = Vector3.new(1,1,1)
Stripe2.CanCollide = True
Stripe2.BrickColor = BrickColor.new("Navy blue")
Stripe2Mesh = Instance.new("SpecialMesh", Stripe2)
Stripe2Mesh.MeshType = "Brick"
Stripe2Mesh.Scale = Vector3.new(0.15,0.15,0.1)
Stripe2Weld = Instance.new("Weld",Cha)
Stripe2Weld.Part0 = Handle
Stripe2Weld.Part1 = Stripe2
Stripe2Weld.C1 = CFrame.new(0,0,-0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Stripe3 = Instance.new("Part",Cha)
Stripe3.Material = "SmoothPlastic"
Stripe3.TopSurface = "Smooth"
Stripe3.BottomSurface = "Smooth"
Stripe3.FormFactor = "Custom"
Stripe3.Size = Vector3.new(1,1,1)
Stripe3.CanCollide = True
Stripe3.BrickColor = BrickColor.new("Navy blue")
Stripe3Mesh = Instance.new("SpecialMesh", Stripe3)
Stripe3Mesh.MeshType = "Brick"
Stripe3Mesh.Scale = Vector3.new(0.15,0.15,0.1)
Stripe3Weld = Instance.new("Weld",Cha)
Stripe3Weld.Part0 = Handle
Stripe3Weld.Part1 = Stripe3
Stripe3Weld.C1 = CFrame.new(0,0,0.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Stripe4 = Instance.new("Part",Cha)
Stripe4.Material = "SmoothPlastic"
Stripe4.TopSurface = "Smooth"
Stripe4.BottomSurface = "Smooth"
Stripe4.FormFactor = "Custom"
Stripe4.Size = Vector3.new(1,1,1)
Stripe4.CanCollide = True
Stripe4.BrickColor = BrickColor.new("Navy blue")
Stripe4Mesh = Instance.new("SpecialMesh", Stripe4)
Stripe4Mesh.MeshType = "Brick"
Stripe4Mesh.Scale = Vector3.new(0.15,0.15,0.1)
Stripe4Weld = Instance.new("Weld",Cha)
Stripe4Weld.Part0 = Handle
Stripe4Weld.Part1 = Stripe4
Stripe4Weld.C1 = CFrame.new(0,0,-0.2)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

HandleTop = Instance.new("Part",Cha)
HandleTop.Material = "SmoothPlastic"
HandleTop.TopSurface = "Smooth"
HandleTop.BottomSurface = "Smooth"
HandleTop.FormFactor = "Custom"
HandleTop.Size = Vector3.new(1,1,1)
HandleTop.CanCollide = True
HandleTop.BrickColor = BrickColor.new("Really black")
HandleTopMesh = Instance.new("SpecialMesh", HandleTop)
HandleTopMesh.MeshType = "Brick"
HandleTopMesh.Scale = Vector3.new(0.25,0.25,0.05)
HandleTopWeld = Instance.new("Weld",Cha)
HandleTopWeld.Part0 = Handle
HandleTopWeld.Part1 = HandleTop
HandleTopWeld.C1 = CFrame.new(0,0,-0.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

HandleTop2 = Instance.new("Part",Cha)
HandleTop2.Material = "SmoothPlastic"
HandleTop2.TopSurface = "Smooth"
HandleTop2.BottomSurface = "Smooth"
HandleTop2.FormFactor = "Custom"
HandleTop2.Size = Vector3.new(1,1,1)
HandleTop2.CanCollide = True
HandleTop2.BrickColor = BrickColor.new("Really black")
HandleTop2Mesh = Instance.new("SpecialMesh", HandleTop2)
HandleTop2Mesh.MeshType = "Brick"
HandleTop2Mesh.Scale = Vector3.new(0.5,0.05,0.05)
HandleTop2Weld = Instance.new("Weld",Cha)
HandleTop2Weld.Part0 = HandleTop
HandleTop2Weld.Part1 = HandleTop2
HandleTop2Weld.C1 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

HandleTop3 = Instance.new("Part",Cha)
HandleTop3.Material = "SmoothPlastic"
HandleTop3.TopSurface = "Smooth"
HandleTop3.BottomSurface = "Smooth"
HandleTop3.FormFactor = "Custom"
HandleTop3.Size = Vector3.new(1,1,1)
HandleTop3.CanCollide = True
HandleTop3.BrickColor = BrickColor.new("Really black")
HandleTop3Mesh = Instance.new("SpecialMesh", HandleTop3)
HandleTop3Mesh.MeshType = "Brick"
HandleTop3Mesh.Scale = Vector3.new(0.05,0.5,0.05)
HandleTop3Weld = Instance.new("Weld",Cha)
HandleTop3Weld.Part0 = HandleTop
HandleTop3Weld.Part1 = HandleTop3
HandleTop3Weld.C1 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Blade1 = Instance.new("Part",Cha)
Blade1.Material = "SmoothPlastic"
Blade1.TopSurface = "Smooth"
Blade1.BottomSurface = "Smooth"
Blade1.FormFactor = "Custom"
Blade1.Size = Vector3.new(0.2,0.2,3.3)
Blade1.CanCollide = True
Blade1.Reflectance =0.3
Blade1.BrickColor = BrickColor.new("Really black")
Blade1Mesh = Instance.new("SpecialMesh", Blade1)
Blade1Mesh.MeshType = "Brick"
Blade1Mesh.Scale = Vector3.new(0.3,0.3,1)
Blade1Weld = Instance.new("Weld",Cha)
Blade1Weld.Part0 = HandleTop
Blade1Weld.Part1 = Blade1
Blade1Weld.C1 = CFrame.new(0,-0.03,-1.6)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

Blade2 = Instance.new("Part",Cha)
Blade2.Material = "SmoothPlastic"
Blade2.TopSurface = "Smooth"
Blade2.BottomSurface = "Smooth"
Blade2.FormFactor = "Custom"
Blade2.Size = Vector3.new(0.2,0.2,3)
Blade2.CanCollide = True
Blade2.Reflectance =0.3
Blade2.BrickColor = BrickColor.new("White")
Blade2Mesh = Instance.new("SpecialMesh", Blade2)
Blade2Mesh.MeshType = "Brick"
Blade2Mesh.Scale = Vector3.new(0.3,0.3,1)
Blade2Weld = Instance.new("Weld",Cha)
Blade2Weld.Part0 = HandleTop
Blade2Weld.Part1 = Blade2
Blade2Weld.C1 = CFrame.new(0,0.03,-1.5)*CFrame.fromEulerAnglesXYZ(0, 0, 0)

BladeTop = Instance.new("Part",Cha)
BladeTop.Material = "SmoothPlastic"
BladeTop.TopSurface = "Smooth"
BladeTop.BottomSurface = "Smooth"
BladeTop.FormFactor = "Custom"
BladeTop.Size = Vector3.new(0.2,0.5,0.2)
BladeTop.CanCollide = True
BladeTop.Reflectance =0.3
BladeTop.BrickColor = BrickColor.new("Really black")
BladeTopMesh = Instance.new("SpecialMesh", BladeTop)
BladeTopMesh.MeshType = "Wedge"
BladeTopMesh.Scale = Vector3.new(0.3,0.5,0.3)
BladeTopWeld = Instance.new("Weld",Cha)
BladeTopWeld.Part0 = Blade1
BladeTopWeld.Part1 = BladeTop
BladeTopWeld.C1 = CFrame.new(-0.07,-1.77,0)*CFrame.fromEulerAnglesXYZ(1.57,3.1,0)

BladeTop2 = Instance.new("Part",Cha)
BladeTop2.Material = "SmoothPlastic"
BladeTop2.TopSurface = "Smooth"
BladeTop2.BottomSurface = "Smooth"
BladeTop2.FormFactor = "Custom"
BladeTop2.Size = Vector3.new(0.2,0.5,0.2)
BladeTop2.CanCollide = True
BladeTop2.Reflectance =0.3
BladeTop2.BrickColor = BrickColor.new("White")
BladeTop2Mesh = Instance.new("SpecialMesh", BladeTop2)
BladeTop2Mesh.MeshType = "Wedge"
BladeTop2Mesh.Scale = Vector3.new(0.3,0.5,0.3)
BladeTop2Weld = Instance.new("Weld",Cha)
BladeTop2Weld.Part0 = Blade2
BladeTop2Weld.Part1 = BladeTop2
BladeTop2Weld.C1 = CFrame.new(-0.062,-1.62,0)*CFrame.fromEulerAnglesXYZ(1.57,3.1,0)

Case = Instance.new("Part",Cha)
Case.Material = "SmoothPlastic"
Case.TopSurface = "Smooth"
Case.BottomSurface = "Smooth"
Case.FormFactor = "Custom"
Case.Size = Vector3.new(1,1,1)
Case.CanCollide = True
Case.BrickColor = BrickColor.new("Really black")
CaseMesh = Instance.new("SpecialMesh", Case)
CaseMesh.MeshType = "Brick"
CaseMesh.Scale = Vector3.new(0.1,0.2,3.5)
CaseWeld = Instance.new("Weld",Cha)
CaseWeld.Part0 = Cha.Torso
CaseWeld.Part1 = Case
CaseWeld.C1 = CFrame.new(1, 1.2, -1.5)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)

Crystal = Instance.new("Part",Cha)
Crystal.Material = "SmoothPlastic"
Crystal.TopSurface = "Smooth"
Crystal.BottomSurface = "Smooth"
Crystal.Size = Vector3.new(1,1,1)
Crystal.CanCollide = True
Crystal.BrickColor = BrickColor.new("Navy blue")
Crystal.Reflectance = 0
Crystal.Transparency = 0
CrystalMesh = Instance.new("SpecialMesh",Crystal) 
CrystalMesh.MeshType = "FileMesh" 
CrystalMesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
CrystalMesh.Scale = Vector3.new(0.15,0.13,1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Case
Weld.Part1 = Crystal
Weld.C1 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
coroutine.resume(coroutine.create(function()
while wait() do
Crystal.Reflectance = 0.2
wait(0.5)
Crystal.Reflectance = 0.4
wait(0.5)
Crystal.Reflectance = 0.6
wait(0.5)
Crystal.Reflectance = 0.8
wait(0.5)
Crystal.Reflectance = 1
end
end))

Crystal2 = Instance.new("Part",Cha)
Crystal2.Material = "SmoothPlastic"
Crystal2.TopSurface = "Smooth"
Crystal2.BottomSurface = "Smooth"
Crystal2.Size = Vector3.new(1,1,1)
Crystal2.CanCollide = True
Crystal2.BrickColor = BrickColor.new("Navy blue")
Crystal2.Reflectance = 0
Crystal2.Transparency = 0
Crystal2Mesh = Instance.new("SpecialMesh",Crystal2) 
Crystal2Mesh.MeshType = "FileMesh" 
Crystal2Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Crystal2Mesh.Scale = Vector3.new(0.15,0.13,1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Case
Weld.Part1 = Crystal2
Weld.C1 = CFrame.new(0,0,1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
coroutine.resume(coroutine.create(function()
while wait() do
Crystal2.Reflectance = 0.2
wait(0.5)
Crystal2.Reflectance = 0.4
wait(0.5)
Crystal2.Reflectance = 0.6
wait(0.5)
Crystal2.Reflectance = 0.8
wait(0.5)
Crystal2.Reflectance = 1
end
end))

Crystal3 = Instance.new("Part",Cha)
Crystal3.Material = "SmoothPlastic"
Crystal3.TopSurface = "Smooth"
Crystal3.BottomSurface = "Smooth"
Crystal3.Size = Vector3.new(1,1,1)
Crystal3.CanCollide = True
Crystal3.BrickColor = BrickColor.new("Navy blue")
Crystal3.Reflectance = 0
Crystal3.Transparency = 0
Crystal3Mesh = Instance.new("SpecialMesh",Crystal3) 
Crystal3Mesh.MeshType = "FileMesh" 
Crystal3Mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
Crystal3Mesh.Scale = Vector3.new(0.15,0.13,1)
Weld = Instance.new("Weld",Cha)
Weld.Part0 = Case
Weld.Part1 = Crystal3
Weld.C1 = CFrame.new(0,0,-1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
coroutine.resume(coroutine.create(function()
while wait() do
Crystal3.Reflectance = 0.2
wait(0.5)
Crystal3.Reflectance = 0.4
wait(0.5)
Crystal3.Reflectance = 0.6
wait(0.5)
Crystal3.Reflectance = 0.8
wait(0.5)
Crystal3.Reflectance = 1
end
end))

Blade1.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and dmg == false then
hit.Parent.Humanoid:TakeDamage(3)
end
end)


Blade2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and dmg == false then
hit.Parent.Humanoid:TakeDamage(3)
end
end)


BladeTop.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and dmg == false then
hit.Parent.Humanoid:TakeDamage(3)
end
end)


BladeTop2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and dmg == false then
hit.Parent.Humanoid:TakeDamage(3)
end
end)

function Chat(Object,Text,Color)
local Color = BrickColor.new(Color)
pcall(function()Object:findFirstChild("AtlasText"):Destroy()end)
local G = Instance.new("BillboardGui",Object)
G.Name = "AtlasText"
G.Adornee = Object
G.Size = UDim2.new(3.5,0,2.5,0)
G.AlwaysOnTop = false
G.StudsOffset = Vector3.new(0,3,0)
local Frame = Instance.new("Frame")
Frame.Parent = G
Frame.Size = UDim2.new(1,0,1,0)
Frame.BackgroundTransparency = 1
local Txt = Instance.new("TextLabel",Frame)
Txt.Size = UDim2.new(1,0,1,0)
Txt.Text = Text
Txt.TextScaled = true
Txt.TextWrapped = true
Txt.Font = "SourceSansBold"
Txt.TextColor = Color
Txt.BackgroundTransparency = 1
Txt.ZIndex = 2
Game:GetService("Debris"):AddItem(G,3)
end

mouse.KeyDown:connect(function(key)
key:lower()
if key == "e" and equip == false then

equip = true

Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.2, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 1)*CFrame.fromEulerAnglesXYZ(-0.4, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.6, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.7, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.8, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.9, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-2, 1, 0.7)*CFrame.fromEulerAnglesXYZ(-0.5, -0.5, 0)

HandleWeld.Part0 = Cha["Right Arm"]
HandleWeld.Part1 = Handle
HandleWeld.C1 = CFrame.new(0,1,0)*CFrame.fromEulerAnglesXYZ(0, 3.1, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.9, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.8, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.7, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.6, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 1)*CFrame.fromEulerAnglesXYZ(-0.4, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.2, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)

end

if key == "q" and equip == true then
equip = false

Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.2, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 1)*CFrame.fromEulerAnglesXYZ(-0.4, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.6, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.7, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.8, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.9, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-2, 1, 0.7)*CFrame.fromEulerAnglesXYZ(-0.5, -0.5, 0)

HandleWeld.Part0 = Cha.Torso
HandleWeld.Part1 = Handle
HandleWeld.C1 = CFrame.new(1, 1.2, 0.8)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)

wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.9, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.8, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.7, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.6, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 1)*CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 1)*CFrame.fromEulerAnglesXYZ(-0.4, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-1, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 0, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.3, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(-0.2, 1.55, 0)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)


end

if key == "r" and slash == false and equip == true then
slash = true
playSound(153092315,Blade1,1,1)
Chat(Cha.Head,"Aura slash...","Navy blue")
dmg = false
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, -2.5)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, -1.7)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, -0.9)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, -0.1)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)

torso = Player.Character.Torso

bla=Instance.new('Part',Workspace)
bla.Material = "SmoothPlastic"
bla.Size=Vector3.new(3,7,3)
bla.TopSurface = "Smooth"
bla.BottomSurface = "Smooth"
bla.BrickColor=BrickColor.new("Navy blue")
bla.CanCollide = True
bla.Position=torso.Position+torso.CFrame.lookVector*8
bla.Transparency = 0.6
blaMesh = Instance.new("SpecialMesh", bla)
blaMesh.MeshType = "Wedge"
blaMesh.Scale = Vector3.new(0.4,3,0.4)
bla:BreakJoints()
blav = Instance.new('BodyVelocity',bla)  
blav.maxForce = Vector3.new()*math.huge
blav.velocity = torso.CFrame.lookVector*250


bla.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
bla:Destroy()
hit.Parent.Humanoid:TakeDamage(40)
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
Boom2 = Instance.new("Part",Workspace)
Boom2.Material = "SmoothPlastic"
Boom2.BrickColor = BrickColor.new("Really black")
Boom2.Transparency = 0.4
Boom2.TopSurface = "Smooth"
Boom2.BottomSurface = "Smooth"
Boom2.Anchored = true
Boom2.CanCollide = True
Boom2.Size = Vector3.new(1,1,1)
Boom2.CFrame = hit.Parent:FindFirstChild("Humanoid").Torso.CFrame
Boom2Mesh = Instance.new("SpecialMesh", Boom2)
Boom2Mesh.MeshType = "Sphere"
Boom2Mesh.Scale = Vector3.new(1,0.5,1)
wait()
Boom2Mesh.Scale = Vector3.new(3,0.5,3)
wait()
Boom2Mesh.Scale = Vector3.new(5,0.5,5)
wait()
Boom2Mesh.Scale = Vector3.new(7,0.5,7)
wait()
Boom2Mesh.Scale = Vector3.new(9,0.5,9)
wait()
Boom2Mesh.Scale = Vector3.new(11,0.5,11)
wait()
Boom2Mesh.Scale = Vector3.new(13,0.5,13)
wait()
Boom2Mesh.Scale = Vector3.new(15,0.5,15)
wait(1)
Boom2:Destroy()
end
end)

for i = 1,26 do wait()
p3 = Instance.new("Part",workspace)
p3.Material = "SmoothPlastic"
p3.FormFactor="Custom"
p3.Size = Vector3.new(3,7,3)
p3.TopSurface = 0 
p3.BottomSurface = 0 
p3.BrickColor=BrickColor.new("Really black")
p3.Transparency=.8
p3.CanCollide=false
p3.Anchored=true
p3.CFrame =(bla.CFrame*CFrame.new(0,0,0))
p3Mesh = Instance.new("SpecialMesh", p3)
p3Mesh.MeshType = "Wedge"
p3Mesh.Scale = Vector3.new(0.2,2.5,0.2)
game.Debris:AddItem(p3,0.2)
end

wait()
dmg = true



wait(10)
slash = false
end
if key == "f" and equip == true and attack1 == false then
Chat(Cha.Head,". . .","Really black")
attack1 = true
dmg = false

Cha.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.2, -0.4)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.5, -0.1)*CFrame.fromEulerAnglesXYZ(0, 0, 0)
playSound(10209645,Blade1,1,1)
wait(1)
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1, -0.4)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -0.6, -0.4)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -0.2, -0.4)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0.2, -0.4)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 0.6, -0.4)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-2, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1, -0.4)
wait()
Cha.Torso["Right Shoulder"].C1 = CFrame.new(-0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, 1.55, 0)
Cha.Torso["Left Shoulder"].C1 = CFrame.new(0.5, 0.5, 0)*CFrame.fromEulerAnglesXYZ(0, -1.55, 0)

wait()
dmg = true

wait(5)
attack1 = false
end
end)

while wait() do
for i = 1,26 do wait()
p = Instance.new("Part",workspace)
p.Material = "SmoothPlastic"
p.FormFactor="Custom"
p.Size = Vector3.new(0.2,0.2,3.3)
p.TopSurface = 0 
p.BottomSurface = 0 
p.BrickColor=BrickColor.new("Really black")
p.Transparency=.8
p.CanCollide=false
p.Anchored=true
p.CFrame =(Blade1.CFrame*CFrame.new(0,0,0))
pMesh = Instance.new("SpecialMesh", p)
pMesh.MeshType = "Brick"
pMesh.Scale = Vector3.new(0.3,0.3,1)
game.Debris:AddItem(p,0.2)

p2 = Instance.new("Part",workspace)
p2.Material = "SmoothPlastic"
p2.FormFactor="Custom"
p2.Size = Vector3.new(0.2,0.2,3)
p2.TopSurface = 0 
p2.BottomSurface = 0 
p2.BrickColor=BrickColor.new("White")
p2.Transparency=.8
p2.CanCollide=false
p2.Anchored=true
p2.CFrame =(Blade2.CFrame*CFrame.new(0,0,0))
p2Mesh = Instance.new("SpecialMesh", p2)
p2Mesh.MeshType = "Brick"
p2Mesh.Scale = Vector3.new(0.3,0.3,1)
game.Debris:AddItem(p2,0.2)
end 
end
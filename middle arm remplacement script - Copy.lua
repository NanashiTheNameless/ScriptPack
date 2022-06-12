--[[oj i gotta tke shower, ill come back nd work on the other modes but check it out so far]]--

me = game.Players.LocalPlayer
char = me.Character
damagedb = true
shootdb = true
mouse = me:GetMouse()
val = Instance.new("NumberValue",char.Torso)
val.Value = 0
val.Name = "NobMode"

function ready()
for i = 0,1.6,0.1 do
char.Torso["Right Shoulder"].C1= CFrame.new(-.5,.5,0,0,0,1,0,1,0,-1,-0,-0) * CFrame.Angles(0,0,-i)
wait()
end
end

function notready()
char.Torso["Right Shoulder"].C1 = CFrame.new(-.5,.5,0,0,0,1,0,1,0,-1,-0,-0) 
end

sg = Instance.new("ScreenGui",me.PlayerGui)
frame = Instance.new("Frame",sg)
frame.Size = UDim2.new(0,90,0,90)
frame.Style = "ChatGreen"
frame.Position = UDim2.new(0,-90,0.5,0)
close = Instance.new("TextButton",frame)
close.Position = UDim2.new(0,-5,0,-5,-0)
close.Size = UDim2.new(0,10,0,10)
close.BackgroundColor3 = BrickColor.new("Bright red").Color
close.Text = "X"
frame.Visible = false
close.MouseButton1Down:connect(function()
frame:TweenPosition(UDim2.new(0,-90,0.5,0))
wait(2)
open.Visible = true
end)

open = Instance.new("TextButton",sg)
open.Position = UDim2.new(0,0,0.51,0)
open.Size = UDim2.new(0,10,0,10)
open.BackgroundColor3 = BrickColor.new("Bright green").Color
open.Text = ">"
open.MouseButton1Down:connect(function()
open.Visible = false
frame.Visible = true
frame:TweenPosition(UDim2.new(0,0,0.5,0))
end)

grab = Instance.new("TextButton",frame)
grab.Size = UDim2.new(0,65,0,20)
grab.Style = "RobloxButton"
grab.TextColor3 = BrickColor.new("Bright red").Color
grab.Font = "ArialBold"
grab.FontSize = "Size14"
grab.Text = "GrappleClaw"
grab.Position = UDim2.new(0,-5,0,5)
grab.MouseButton1Down:connect(function()
ready()
val.Value = 1
frame:TweenPosition(UDim2.new(0,0,0.5,0))
grab.Selected = true
blast.Selected = false
norm.Selected = false
end)

blast = Instance.new("TextButton",frame)
blast.Size = UDim2.new(0,75,0,20)
blast.Style = "RobloxButton"
blast.TextColor3 = BrickColor.new("White").Color
blast.Font = "ArialBold"
blast.FontSize = "Size14"
blast.Text = "HandBlaster"
blast.Position = UDim2.new(0,-10,0,25)
blast.MouseButton1Down:connect(function()
val.Value = 2
ready()
frame:TweenPosition(UDim2.new(0,0,0.5,0))
grab.Selected = false
blast.Selected = true
norm.Selected =false
end)
norm = Instance.new("TextButton",frame)
norm.Size = UDim2.new(0,75,0,20)
norm.Style = "RobloxButton"
norm.TextColor3 = BrickColor.new("Bright blue").Color
norm.Font = "ArialBold"
norm.FontSize = "Size14"
norm.Text = "Normal/Calm"
norm.Position = UDim2.new(0,-10,0,45)
norm.MouseButton1Down:connect(function()
val.Value = 0
notready()
grab.Selected = false
blast.Selected = false
norm.Selected = true
end)

a = char["Right Arm"]
part = Instance.new("Part",char.Torso)
part.FormFactor = "Custom"
part.Size =Vector3.new(2,1.1,1.4)
part.TopSurface = "Smooth"
part.BrickColor = BrickColor.new("Dark stone grey")
Instance.new("CylinderMesh",part) 
weld = Instance.new("Weld",a) 
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,-0.8,0)

a = char["Right Arm"]
part = Instance.new("Part",char.Torso)
part.FormFactor = "Custom"
part.Size =Vector3.new(1.1,1.8,1.1)
part.TopSurface = "Smooth"
part.BrickColor = BrickColor.new("Dark stone grey")
weld = Instance.new("Weld",a) 
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0,0.2,0)

a = char["Right Arm"]
cy = Instance.new("Part",char.Torso)
cy.FormFactor = "Custom"
cy.Size =Vector3.new(2,1.1,1)
cy.TopSurface = "Smooth"
cy.BrickColor = BrickColor.new("Cyan")
part.Name = "Cyan"
Instance.new("CylinderMesh",cy) 
weld = Instance.new("Weld",a) 
weld.Part0 = weld.Parent
weld.Part1 = cy
weld.C0 = CFrame.new(0,-0.9,0)

a = char["Torso"]
part = Instance.new("Part",char.Torso)
part.FormFactor = "Custom"
part.Size =Vector3.new(1,2.2,1.1)
part.TopSurface = "Smooth"
part.BrickColor = BrickColor.new("Dark stone grey")
weld = Instance.new("Weld",a) 
weld.Part0 = weld.Parent
weld.Part1 = part
weld.C0 = CFrame.new(0.5,0,0)


mouse.Button1Down:connect(function()
valval = char.Torso:FindFirstChild("NobMode")
if valval and valval.Value == 0 then
print("Calm")
end
if valval and valval.Value == 1 then
print"grab"
        local ray = Ray.new(cy.CFrame.p, (mouse.Hit.p - cy.CFrame.p).unit*300)
        local hit, position = game.Workspace:FindPartOnRay(ray, char)
 
        local humanoid = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid")
        if humanoid then
            print"found one"
            
        end

        local distance = (position - cy.CFrame.p).magnitude
        local rayPart = Instance.new("Part", char)
        rayPart.Name          = "RayPart"
        rayPart.BrickColor    = BrickColor.new("Black")
        rayPart.Transparency  = 0
        rayPart.Anchored      = true
        rayPart.CanCollide    = false
        rayPart.TopSurface    = Enum.SurfaceType.Smooth
        rayPart.BottomSurface = Enum.SurfaceType.Smooth
        rayPart.formFactor    = Enum.FormFactor.Custom
        rayPart.Size          = Vector3.new(0.2, 0.2, distance)
        rayPart.CFrame        = CFrame.new(position, cy.CFrame.p) * CFrame.new(0, 0, -distance/2)
 
        game.Debris:AddItem(rayPart, 0.1)






end
if valval and valval.Value == 2 then
if shootdb == true then
shootdb = false
print"handblast"

local ppart = Instance.new("Part",char.Torso)
ppart.Anchored = true
ppart.formFactor = "Custom"
ppart.Size = Vector3.new(0.2,0.3,.2)
ppart.CFrame = cy.CFrame + char.Torso.CFrame.lookVector * 1
ppart.CFrame = ppart.CFrame * CFrame.Angles(3.2,0,0)
ppart:BreakJoints()
bam = Instance.new("SpecialMesh",ppart)
bam.MeshType = "FileMesh"
bam.MeshId = "http://www.roblox.com/asset/?id=20329976"
bam.TextureId = "http://www.roblox.com/asset/?id=41988084"
bam.Scale = Vector3.new(0.5, 0.7, 0.5)
wait(0.05)
ppart:Destroy()
local  shoot = Instance.new("Part",char.Torso)
shoot.Size = Vector3.new(10,10,10)
shoot.Anchored = true
shoot.BrickColor = BrickColor.new("Black")
shoot.CanCollide = false
shoot.Touched:connect(function(hit)
if damagedb == true then
damagedb = false
shoot.CanCollide = false
if hit.Parent:findFirstChild("Humanoid") and hit.Parent.Name ~= char.Name then
ex = Instance.new("Explosion",hit.Parent.Torso)
ex.BlastPressure = 0
ex.Position = hit.Parent.Torso.Position
hit.Parent.Humanoid:TakeDamage(5)
end
damagedb = true
end
end)
mesh = Instance.new("SpecialMesh",shoot)
mesh.MeshType = "Head"
mesh.Scale = Vector3.new(0.1,0.5,0.1)
local shooot = coroutine.wrap(function()
shoot.CFrame = cy.CFrame
for i = 0,100,5 do
shoot.CFrame = shoot.CFrame + char.Torso.CFrame.lookVector * i
wait()
end
shootdb = true
shoot:Destroy()
end)
shooot()

end
end
end)


if script.Parent.className~="HopperBin" then
ma=Instance.new("HopperBin")
ma.Name="Laser "
--ma.Parent=game.Lighting
ma.Parent=game.Players.kash5.Backpack
script.Parent=ma
end
 
local Selected = false
local Shoot = true
function Click(Target)
if(Target.Target.Parent:findFirstChild("Humanoid")~=nil)then
Target.Target.Parent.Humanoid.Health = 0
end
local P = Instance.new("Part")
P.Name = "Laser"
local Place0 = script.Parent.Parent.Parent.Character["Left Arm"].CFrame
P.formFactor = 0
P.Size = Vector3.new(1,1,(Place0.p - Target.Hit.p).magnitude)
P.CFrame = CFrame.new((Place0.p + Target.Hit.p)/2,Place0.p)
P.Parent = game.Workspace
P.Color = Color3.new(0,0,1)
P.Transparency = 0.5
P.Reflectance = 0.5
P.Anchored = true
P.CanCollide = false
local E = Instance.new("Explosion")
E.Position = Target.Hit.p
E.Parent = game.Workspace
for i = 1,10 do
P.Transparency = 0.5+(i*0.05)
P.Reflectance = i*0.05
wait(0.1)
end
P:Rremove()
end
function Select(Mouse)
local Arm = script.Parent.Parent.Parent.Character:findFirstChild("Left Arm")
if(Arm==nil)then
script.Parent:Remove()
script:Remove()
end
Selected = true
local Torso = script.Parent.Parent.Parent.Character:findFirstChild("Torso")
if(Torso==nil)then
script.Parent:Remove()
script:Remove()
end
local ArmWeld = Torso:findFirstChild("Left Shoulder")
if(ArmWeld~=nil)then
ArmWeld.Parent = nil
end
Mouse.Button1Down:connect(function()Click(Mouse)end)
Arm.Anchored = true
while Selected do
local Place0 = script.Parent.Parent.Parent.Character.Torso.CFrame
Place0 = Place0 + ((Place0 * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)).lookVector * 0.5) + (Place0 * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)).lookVector
local Place1 = Place0 + ((Place0.p-Mouse.Hit.p).unit * -2)
Arm.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)
wait()
end
Arm.Anchored = false
if(ArmWeld~=nil)then
ArmWeld.Parent = Torso
end
end
function Deselect()
Selected = false
end
script.Parent.Selected:connect(Select)
script.Parent.Deselected:connect(Deselect)
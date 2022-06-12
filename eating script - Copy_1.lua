local plr = game:service'Players'.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local humanoid = char:findFirstChild("Humanoid")
local torso = char:findFirstChild("Torso")
local head = char.Head
local cam = workspace.CurrentCamera
mouse.Button1Down:connect(function()
hit = mouse.Target
if hit ~= nil and hit.Name ~= "Base" then
hit:BreakJoints()
hit.Anchored = false
local bp = Instance.new("BodyPosition", hit)
bp.maxForce = Vector3.new(hit:GetMass()*196.2, hit:GetMass()*196.2,hit:GetMass()*196.2)
bp.D = 500
for _ = 0, 2 do
local p = Instance.new("Part", char)
p.BrickColor = BrickColor.random()
p.Shape = "Ball"
p.FormFactor = "Custom"
p.CFrame = hit.CFrame * CFrame.new(math.random(-1, 1),math.random(-1, 1),math.random(-1, 1))
local bp2 = Instance.new("BodyPosition", p)
bp2.maxForce = Vector3.new(p:GetMass()*196.2, p:GetMass()*196.2,p:GetMass()*196.2)
bp2.D = 3000
bp2.position = head.Position 
p.Size = Vector3.new(0.5, 0.5, 0.5)
game:service'Debris':AddItem(p, 1)
end
while hit ~= nil and wait() do
if bp ~= nil then
bp.position = torso.Position
end
if (hit.Position - torso.Position).magnitude < 4 then
hit:Destroy()
break
end
end
end
end)

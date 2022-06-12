name = game.Players.LocalPlayer.Name
char = game.Workspace:FindFirstChild(name)
plr = game.Players:FindFirstChild(name)
mouse = plr:GetMouse()
spell = Instance.new('StringValue',char)

local tool = Instance.new('HopperBin',plr.Backpack)
tool.Name = 'Wand'

local wand = Instance.new('Part')
local weld = Instance.new('Weld',wand)
game:GetService('RunService').Stepped:connect(function()
wand.CFrame = char['Left Arm'].CFrame * CFrame.new(0,-1,-.5)
end)
wand.FormFactor = 'Custom'
wand.Size = Vector3.new(0,.1,2)
wand.BrickColor = BrickColor.new(192)
wand.Material = 'Wood'
wand.CanCollide = false
wand.Anchored = true
wand.Name = 'Wand'

plr.Chatted:connect(function(message)
spell.Value = message
if message:sub(1,2) == '/e' then
spell.Value = string.sub(message,4)
end
end)

tool.Selected:connect(function()
wand.Parent = char
end)

tool.Deselected:connect(function()
wand:remove()
end)

function KeyPress(key)
if char:FindFirstChild('Wand') ~= nil then
if spell.Value == 'reducto' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local fire = Instance.new('Fire',part)
fire.Heat = 60
fire.Size = 60
part.Material = 'CorrodedMetal'
part:BreakJoints()
part.Anchored = false
part.CanCollide = true
end
end
end

if spell.Value == 'accio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local drag = Instance.new('BodyPosition',part)
drag.P = 900
drag.MaxForce = Vector3.new(2e9,2e9,2e9)
game:GetService('RunService').Stepped:connect(function()
drag.Position = char.Torso.Position
end)
function stopdrag(hit)
if hit.Parent.Name == name then
drag:remove()
end
end
part.Touched:connect(stopdrag)
end
end
end

if spell.Value == 'age line' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local ageline = Instance.new('Part',part)
game:GetService('RunService').Stepped:connect(function()
ageline.CFrame = part.CFrame
end)
part.Anchored = true
ageline.Shape = 'Ball'
ageline.BrickColor = BrickColor.new(24)
ageline.Anchored = true
ageline.Transparency = 0.5
ageline.Size = part.Size + Vector3.new(10,10,10)
ageline.Material = 'SmoothPlastic'
end
end
end


if spell.Value == 'aguamenti' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part:FindFirstChild('Fire') ~= nil then
part.Material = 'SmoothPlastic'
part.Fire:remove()
end
local water = Instance.new('Part',workspace)
water.Material = 'SmoothPlastic'
water.BrickColor = BrickColor.new(1024)
water.Anchored = true
water.FormFactor = 'Custom'
water.Size = Vector3.new(.1,.1,.1)
water.Shape = 'Ball'
water.CanCollide = false
water.CFrame = mouse.hit
repeat
local cf = water.CFrame
wait()
water.Size = water.Size + Vector3.new(.1,.1,.1)
water.CFrame = cf
until water.Size.Y > 4
end
end
end

if spell.Value == 'alerte ascendare' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.CFrame = part.CFrame * CFrame.new(0,100,0)
end
end
end

if spell.Value == 'alohomora' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.CanCollide = false
part.Transparency = 0.5
end
end
end

if spell.Value == 'colloportus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.CanCollide = true
part.Transparency = 0
end
end
end

if spell.Value == 'anapneo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.PlatformStand = false
end
end
end
end

if spell.Value == 'anteoculatia' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then

local hatt2 = part.Parent:GetChildren()
for i= 1, #hatt2 do
if hatt2[i].ClassName == 'Hat' then
hatt2[i]:remove()
end
end

local assetId = 1272714
local hat = game:GetService("InsertService"):LoadAsset(assetId)
hat.Parent = part.Parent

local hatt = hat:GetChildren()
for i= 1, #hatt do
if hatt[i].ClassName == 'Hat' then
hatt[i].Handle.CFrame = part.Parent.Head.CFrame
end
end

end
end
end
end

if spell.Value == 'aparecium' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.Transparency = 0
end
end
end

if spell.Value == 'aqua eructo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.BrickColor == BrickColor.new(1024) then
game:GetService('RunService').Stepped:connect(function()
part.CFrame = mouse.hit
end)
end
end
end
end

if spell.Value == 'arania exumai' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local mark = Instance.new('Part')
mark.Parent = workspace
mark.Transparency = 1
mark.Anchored = true

repeat
local spider = Instance.new('Part')
spider.Size = Vector3.new(1,1,1)
local mesh = Instance.new('SpecialMesh')
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = 'http://www.roblox.com/asset/?id=297604254'
mesh.Scale = Vector3.new(1,1,1)
mesh.TextureId = 'http://www.roblox.com/asset/?id=297604312'

function spiderattack(hit)
if hit.Parent:FindFirstChild('Humanoid') ~= nil then
local grab = Instance.new('BodyPosition',spider)
grab.P = 900
grab.D = 100
game:GetService('RunService').Stepped:connect(function()
grab.Position = part.Position
end)
end
end
spider.Touched:connect(spiderattack)

wait()
spider.Parent = workspace
mesh.Parent = spider
spider:BreakJoints()
spider.CFrame = part.CFrame * CFrame.new(math.random(1,5),0,math.random(1,5))
mark.Transparency = mark.Transparency + 0.05
until mark.Transparency > 2
end
end
end


if spell.Value == 'arresto momentum' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
game:GetService('RunService').Stepped:connect(function()
part.Velocity = Vector3.new(0,0,0)
end)
end
end
end

if spell.Value == 'ascendio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
char.Humanoid.JumpPower = char.Humanoid.JumpPower + 50
end


if spell.Value == 'avada kedavra' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Torso') ~= nil then
part.Parent.Torso:BreakJoints()

local ray2 = Ray.new(char.Wand.CFrame.p, (mouse.hit.p - char.Wand.CFrame.p).unit * 2048)
local target = workspace:FindPartOnRay(ray2)
                local part2, position = workspace:FindPartOnRay(ray2, plr, false, true)
 
                local beam = Instance.new("Part", workspace)
                beam.BrickColor = BrickColor.new(1020)
                beam.FormFactor = "Custom"
                beam.Anchored = true
                beam.Transparency = 0
                beam.Locked = true
                beam.CanCollide = false
		beam.Material = 'SmoothPlastic'
                beam.Name = '1011beam'
                beam.Parent = script
 
                local distance = (char.Wand.CFrame.p - position).magnitude
                beam.Size = Vector3.new(0.3, 0.3, distance)
                beam.CFrame = CFrame.new(char.Wand.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
 
wait()
beam:remove()

end
end
end
end

if spell.Value == 'avifors' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local mesh = Instance.new('SpecialMesh',part)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.Scale = Vector3.new(2,2,2)
mesh.MeshId = 'http://www.roblox.com/asset/?id=25211332'
mesh.TextureId = 'http://www.roblox.com/asset/?id=49156571'
end
end
end

if spell.Value == 'avis' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then

local mark = Instance.new('Part')
mark.Parent = workspace
mark.Transparency = 1
mark.Anchored = true

repeat
local crow = Instance.new('Part')
crow.BrickColor = BrickColor.new(1003)
crow.Size = Vector3.new(1,1,1)
crow.Name = 'crow'
local mesh = Instance.new('SpecialMesh')
mesh.MeshType = Enum.MeshType.FileMesh
mesh.Scale = Vector3.new(1,1,1)
mesh.MeshId = 'http://www.roblox.com/asset/?id=25211332'
local fly = Instance.new('BodyPosition')
game:GetService('RunService').Stepped:connect(function()
fly.Position = part.Position
end)
function peck(hit)
if hit.Parent:FindFirstChild('Humanoid') ~= nil and hit.Parent.Name ~= name then
crow.CanCollide = false
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 5
end
end
crow.Touched:connect(peck)
wait()
crow.Parent = workspace
mesh.Parent = crow
fly.Parent = crow
crow:BreakJoints()
crow.CFrame = wand.CFrame * CFrame.new(math.random(0,1),math.random(0,1),math.random(0,1))
mark.Transparency = mark.Transparency + 0.05
until mark.Transparency > 5

wait(2)

removecrows = workspace:GetChildren() 
for i= 1, #removecrows do 
if removecrows[i].Name == 'crow' then
removecrows[i]:remove()
end
end

end
end
end
end

if spell.Value == 'bombarda' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local explosion = Instance.new('Explosion',part)
explosion.Position = part.Position
end
end
end

if spell.Value == 'bombarda maxima' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local explosion = Instance.new('Explosion',part)
explosion.Position = part.Position
explosion.Radius = 30
explosion.BlastPressure = 100
end
end
end

if spell.Value == 'brackium emendo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.Health = part.Parent.Humanoid.Health + 10
end
end
end
end

if spell.Value == 'calvario' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local bald = part.Parent:GetChildren() 
for i= 1, #bald do 
if bald[i].ClassName == 'Hat' then
bald[i]:remove()
end
end

end
end
end

if spell.Value == 'cantis' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Head') ~= nil then
game:GetService('Chat'):Chat(part.Parent.Head,'MY LITTLE PONY MY LITTLE PONY MYY MY LITTLE PONY',Enum.ChatColor.Red)
end
end
end
end

if spell.Value == 'carpe retractum' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

pulled = true

local pull = Instance.new('BodyPosition',char.Torso)
pull.P = 900
pull.D = 1000
pull.MaxForce = Vector3.new(2e9,2e9,2e9)
pull.Position = mouse.hit.p

function stopulling(hit)
if hit.Parent.Name ~= name and hit.Name ~= 'beamdd' and workspace:FindFirstChild('beamdd') ~= nil then
pulled = false
pull:remove()
workspace.beamdd:remove()
end
end
char.Torso.Touched:connect(stopulling)

local ray2 = Ray.new(char.Wand.CFrame.p, (mouse.hit.p - char.Wand.CFrame.p).unit * 2048)
local target = workspace:FindPartOnRay(ray2)
                local part2, position = workspace:FindPartOnRay(ray2, plr, false, true)
 
                local beam = Instance.new("Part", workspace)
                beam.BrickColor = BrickColor.new(1005)
                beam.FormFactor = "Custom"
                beam.Anchored = true
                beam.Transparency = 0
                beam.Locked = true
		beam.Name = 'beamdd'
                beam.CanCollide = false
		beam.Material = 'SmoothPlastic'
 		
game:GetService('RunService').Stepped:connect(function()
if char:FindFirstChild('Wand') ~= nil then
                local distance = (char.Wand.CFrame.p - position).magnitude
                beam.Size = Vector3.new(0.3, 0.3, distance)
                beam.CFrame = CFrame.new(char.Wand.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
end
end)

end
end
end

if spell.Value == 'cistem aperio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part:BreakJoints()
part.Anchored = false
end
end
end

if spell.Value == 'colloshoo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Head') ~= nil then
part.Parent['Left Leg'].Anchored = true
part.Parent['Right Leg'].Anchored = true
end
end
end
end

if spell.Value == 'colovaria' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.BrickColor = BrickColor.new(Color3.new(math.random(),math.random(),math.random()))
end
end
end

if spell.Value == 'confringo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
local fireblast = Instance.new('Part')
fireblast.Parent = workspace
fireblast.Transparency = .5
fireblast.BrickColor = BrickColor.new(332)
fireblast:BreakJoints()
fireblast.Material = 'SmoothPlastic'
fireblast.CFrame = wand.CFrame
fireblast.CanCollide = false
fireblast.Size = Vector3.new(1,1,1)
local move = Instance.new('BodyPosition',fireblast)
move.Position = mouse.hit.p
local fire = Instance.new('Fire',fireblast)
fire.Heat = 100
fire.Size = 5
function confringo(hit)
fireblast:BreakJoints()
if hit.Name ~= 'Wand' and hit.Parent.Name ~= name then
fireblast:remove()
local explode = Instance.new('Explosion',workspace)
explode.Position = fireblast.Position
end
end
fireblast.Touched:connect(confringo)
end

if spell.Value == 'confundo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.WalkSpeed = 5
end
end
end
end

if spell.Value == 'crucio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.Health = part.Parent.Humanoid.Health - 99
end
end
end
end

if spell.Value == 'defodio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.Health = part.Parent.Humanoid.Health - 50
part.Parent.Humanoid.Sit = true
local gut = Instance.new('Part')
gut.Parent = workspace
gut.BrickColor = BrickColor.new(332)
gut:BreakJoints()
gut.Material = 'SmoothPlastic'
gut.CFrame = part.CFrame
gut.Size = Vector3.new(2,2,2)
end
end
end
end

if spell.Value == 'deletrius' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part:remove()
end
end
end

if spell.Value == 'depulso' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local vel = Instance.new('BodyVelocity',part)
vel.Velocity = char.Torso.CFrame.lookVector * 900
end
end
end

if spell.Value == 'descendo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local vel = Instance.new('BodyForce',part)
vel.Force = Vector3.new(0,-1000,0)
end
end
end

if spell.Value == 'deprimo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local vel = Instance.new('BodyForce',part)
vel.Force = Vector3.new(0,-10000,0)
end
end
end

if spell.Value == 'diffindo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.Health = part.Parent.Humanoid.Health - 10
end
end
end
end

if spell.Value == 'diminuendo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.Size = Vector3.new(1,1,1)
end
end
end

if spell.Value == 'ducklifors' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part:BreakJoints()
local mesh = Instance.new('SpecialMesh',part)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = 'http://www.roblox.com/asset/?id=9419831'
mesh.TextureId = 'http://www.roblox.com/asset/?id=65133770'
end
end
end

if spell.Value == 'ebublio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part:BreakJoints()

local mark = Instance.new('Part')
mark.Parent = workspace
mark.Transparency = 1
mark.Anchored = true

part:remove()

repeat
local crow = Instance.new('Part')
crow.FormFactor = 'Custom'
crow.BrickColor = BrickColor.new(336)
crow.Size = Vector3.new(1,1,1)
crow.Parent = workspace
crow.Material = 'SmoothPlastic'

local force = Instance.new('BodyForce')
force.Force = Vector3.new(0,196.2,0)
wait()
crow.Parent = workspace
force.Parent = crow
crow:BreakJoints()
crow.CFrame = part.CFrame * CFrame.new(math.random(1,5),math.random(1,5),math.random(1,5))
mark.Transparency = mark.Transparency + 0.05
until mark.Transparency > 5

end
end
end

if spell.Value == 'engorgio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.Size = Vector3.new(30,30,30)
end
end
end

if spell.Value == 'engorgio skullus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Head.Mesh.Scale = Vector3.new(2,2,2)
end
end
end
end

if spell.Value == 'entomorphis' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part:BreakJoints()
local mesh = Instance.new('SpecialMesh',part)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = 'http://www.roblox.com/asset/?id=297604254'
mesh.TextureId = 'http://www.roblox.com/asset/?id=297604312'
mesh.Scale = Vector3.new(1,1,1)

end
end
end

if spell.Value == 'episkey' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.Health = part.Parent.Humanoid.Health + 20
end
end
end
end

if spell.Value == 'epoximise' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local part2 = Instance.new('Part',workspace)
part2.Position = part.Position
local weld2 = Instance.new('Weld',part2)
weld2.Part1 = part
weld2.Part0 = part2
end
end
end

if spell.Value == 'evanesce' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.Transparency = 1
end
end
end

if spell.Value == 'evanesco' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.Transparency = 1
end
end
end

if spell.Value == 'everte statum' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local vel = Instance.new('BodyVelocity',part)
vel.Velocity = char.Torso.CFrame.lookVector * 900
wait(1)
vel:remove()
end
end
end

if spell.Value == 'expecto patronum' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local patronum = Instance.new('Part')
patronum.Material = 'Neon'
patronum.BrickColor = BrickColor.new(1)
patronum.Shape = 'Ball'
patronum.CFrame = char.Wand.CFrame
patronum.Anchored = true
patronum.Parent = workspace
patronum.Size = Vector3.new(1,1,1)
patronum.CanCollide = false
function patronumhit(hit)
if hit.BrickColor == BrickColor.new(1003) then
hit:remove()
end
end
patronum.Touched:connect(patronumhit)
repeat
local cf = char.Wand.CFrame
wait()
patronum.Size = patronum.Size + Vector3.new(5,5,5)
patronum.Transparency = patronum.Transparency + 0.05
patronum.CFrame = cf
until patronum.Transparency > 1
patronum:remove()
end
end
end

if spell.Value == 'expelliarmus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
expell = part.Parent:GetChildren() 
for i= 1, #expell do 
if expell[i].ClassName == 'Tool' then
expell[i].Parent = plr.Backpack
end
end
end
end
end
end

if spell.Value == 'expulso' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local explosion = Instance.new('Explosion',part)
explosion.Position = part.Position
end
end
end

if spell.Value == 'ferula' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.Health = part.Parent.Humanoid.Health + 50
end
end
end
end

if spell.Value == 'fianto duri' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
char.Humanoid.MaxHealth = math.huge
end
end
end

if spell.Value == 'fiendfyre' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
local fyre = Instance.new('Part')
fyre.Transparency = 0.5
fyre.Material = 'SmoothPlastic'
fyre.BrickColor = BrickColor.new(18)
fyre.Shape = 'Ball'
fyre.CFrame = char.Wand.CFrame * CFrame.new(0,0,-20)
fyre.Anchored = true
fyre.Parent = workspace
fyre.Size = Vector3.new(20,20,20)
local fyre3 = Instance.new('Fire',fyre)
fyre3.Size = 50
fyre3.Heat = 100
function fyrehit(hit)
if hit.Parent.ClassName ~= 'Hat' and hit.Parent.Name ~= name then
hit:BreakJoints()
local fyre2 = Instance.new('Fire',hit)
hit.Material = 'CorrodedMetal'
fyre2.Size = 50
fyre2.Heat = 100
end
end
fyre.Touched:connect(fyrehit)

repeat
wait()
fyre.CFrame = fyre.CFrame * CFrame.new(0,0,-20)
fyre.Transparency = fyre.Transparency + 0.05
until fyre.Transparency > 5
fyre:remove()

end

if spell.Value == 'flipendo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local vel = Instance.new('BodyVelocity',part)
vel.Velocity = char.Torso.CFrame.lookVector * 1000
wait(1)
vel:remove()

end
end
end

if spell.Value == 'flipendo duo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local vel = Instance.new('BodyVelocity',part)
vel.Velocity = char.Torso.CFrame.lookVector * 10000
wait(1)
vel:remove()

end
end
end

if spell.Value == 'flipendo tria' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local vel = Instance.new('BodyVelocity',part)
vel.Velocity = char.Torso.CFrame.lookVector * 1000000
wait(1)
vel:remove()

end
end
end

if spell.Value == 'fumos' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local cloud = Instance.new('Smoke',char.Torso)
cloud.Opacity = 100
cloud.Size = 100

wait(10)

cloud:remove()

end
end
end

if spell.Value == 'fumos duo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local cloud = Instance.new('Smoke',char.Torso)
cloud.Opacity = 100
cloud.Size = 100

wait(20)

cloud:remove()

end
end
end

if spell.Value == 'glacius' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local mark = Instance.new('Part')
mark.Parent = workspace
mark.Transparency = 1
mark.Anchored = true

repeat
local glacier = Instance.new('Part')
glacier.Transparency = 0.5
glacier.Material = 'SmoothPlastic'
glacier.BrickColor = BrickColor.new(336)
glacier.Anchored = true
glacier.Size = Vector3.new(20,20,20)
glacier.CFrame = char.Wand.CFrame * CFrame.new(0,0,-25)
glacier.Name = 'glacier'

function glac(hit)

local glacier2 = Instance.new('Part')
glacier2.Transparency = 0.5
glacier2.Material = 'SmoothPlastic'
glacier2.BrickColor = BrickColor.new(336)
glacier2.Anchored = true
glacier2.Size = Vector3.new(10,10,10)

if hit.Parent.Name ~= name and hit.Name ~= 'Base' then
glacier2.Parent = workspace
glacier2.CFrame = hit.CFrame
hit.Anchored = true
end
end
glacier.Touched:connect(glac)

wait()
glacier.Parent = workspace
game:GetService('RunService').Stepped:connect(function()
glacier.CFrame = glacier.CFrame * CFrame.new(0,0,-1)
end)
mark.Transparency = mark.Transparency + 0.05
until mark.Transparency > 2

wait(10)

removeglacier = workspace:GetChildren() 
for i= 1, #removeglacier do 
if removeglacier[i].Name == 'glacier' then
removeglacier[i]:remove()
end
end

end
end
end

if spell.Value == 'glacius duo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local mark = Instance.new('Part')
mark.Parent = workspace
mark.Transparency = 1
mark.Anchored = true

repeat
local glacier = Instance.new('Part')
glacier.Transparency = 0.5
glacier.Material = 'SmoothPlastic'
glacier.BrickColor = BrickColor.new(336)
glacier.Anchored = true
glacier.Size = Vector3.new(40,40,40)
glacier.CFrame = char.Wand.CFrame * CFrame.new(0,0,-45)
glacier.Name = 'glacier'

function glac(hit)

local glacier2 = Instance.new('Part')
glacier2.Transparency = 0.5
glacier2.Material = 'SmoothPlastic'
glacier2.BrickColor = BrickColor.new(336)
glacier2.Anchored = true
glacier2.Size = Vector3.new(10,10,10)

if hit.Parent.Name ~= name and hit.Name ~= 'Base' then
glacier2.Parent = workspace
glacier2.CFrame = hit.CFrame
hit.Anchored = true
end
end
glacier.Touched:connect(glac)

wait()
glacier.Parent = workspace
game:GetService('RunService').Stepped:connect(function()
glacier.CFrame = glacier.CFrame * CFrame.new(0,0,-1)
end)
mark.Transparency = mark.Transparency + 0.05
until mark.Transparency > 2

wait(20)

removeglacier = workspace:GetChildren() 
for i= 1, #removeglacier do 
if removeglacier[i].Name == 'glacier' then
removeglacier[i]:remove()
end
end

end
end
end

if spell.Value == 'glacius tria' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local mark = Instance.new('Part')
mark.Parent = workspace
mark.Transparency = 1
mark.Anchored = true

repeat
local glacier = Instance.new('Part')
glacier.Transparency = 0.5
glacier.Material = 'SmoothPlastic'
glacier.BrickColor = BrickColor.new(336)
glacier.Anchored = true
glacier.Size = Vector3.new(100,100,100)
glacier.CFrame = char.Wand.CFrame * CFrame.new(0,0,-105)
glacier.Name = 'glacier'

function glac(hit)

local glacier2 = Instance.new('Part')
glacier2.Transparency = 0.5
glacier2.Material = 'SmoothPlastic'
glacier2.BrickColor = BrickColor.new(336)
glacier2.Anchored = true
glacier2.Size = Vector3.new(10,10,10)

if hit.Parent.Name ~= name and hit.Name ~= 'Base' then
glacier2.Parent = workspace
glacier2.CFrame = hit.CFrame
hit.Anchored = true
end
end
glacier.Touched:connect(glac)

wait()
glacier.Parent = workspace
game:GetService('RunService').Stepped:connect(function()
glacier.CFrame = glacier.CFrame * CFrame.new(0,0,-1)
end)
mark.Transparency = mark.Transparency + 0.05
until mark.Transparency > 2

wait(50)

removeglacier = workspace:GetChildren() 
for i= 1, #removeglacier do 
if removeglacier[i].Name == 'glacier' then
removeglacier[i]:remove()
end
end

end
end
end

if spell.Value == 'glisseo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part.Friction = 0

end
end
end

if spell.Value == 'herbifors' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local flower = Instance.new('Part',workspace)
flower.Position = mouse.hit.p
flower.Anchored = true
flower.Size = Vector3.new(1,1,1)
local mesh = Instance.new('SpecialMesh',flower)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = 'http://www.roblox.com/asset/?id=16215991'
mesh.TextureId = 'http://www.roblox.com/asset/?id=16216333'
mesh.Scale = Vector3.new(0.5, 0.5, 0.5)

end
end
end

if spell.Value == 'herbivicus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local flower = Instance.new('Part',workspace)
flower.Position = mouse.hit.p
flower.Anchored = true
flower.Size = Vector3.new(5, 50, 5)
local mesh = Instance.new('SpecialMesh',flower)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = 'http://www.roblox.com/asset/?id=1090398'
mesh.TextureId = 'http://www.roblox.com/asset/?id=1090399'
mesh.Scale = Vector3.new(50, 50, 50)

end
end
end

if spell.Value == 'immobulus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part.Anchored = true

end
end
end

if spell.Value == 'impedimenta' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part.Anchored = true

end
end
end

if spell.Value == 'imperio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

game:GetService('RunService').Stepped:connect(function()
part.CFrame = mouse.hit
end)

end
end
end

if spell.Value == 'impervius' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local vel = Instance.new('BodyVelocity',part)
vel.Velocity = char.Torso.CFrame.lookVector * 10000000
wait(1)
vel:remove()

end
end
end

if spell.Value == 'inanimatus conjurus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part.Anchored = false

end
end
end

if spell.Value == 'incarcerous' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local part2 = Instance.new('Part',workspace)
part2.Material = 'Wood'
--part2.CanCollide = false
part2.Size = Vector3.new(5,1,5)
part2.Anchored = true
local weld2 = Instance.new('Weld',part2)
weld2.Part1 = part
weld2.Part0 = part2
while true do
wait()
part2.CFrame = part.CFrame
end

end
end
end

if spell.Value == 'incendio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local fire = Instance.new('Fire',part)
fire.Size = 20
fire.Heat = 100
part:BreakJoints()
part.Material = 'Cobblestone'
part.BrickColor = BrickColor.new(1003)

end
end
end

if spell.Value == 'incendio duo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local fire = Instance.new('Fire',part)
fire.Size = 50
fire.Heat = 100
part:BreakJoints()
part.Material = 'Cobblestone'
part.BrickColor = BrickColor.new(1003)

end
end
end

if spell.Value == 'incendio tria' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local fire = Instance.new('Fire',part)
fire.Size = 100
fire.Heat = 100
part:BreakJoints()
part.Material = 'Cobblestone'
part.BrickColor = BrickColor.new(1003)

end
end
end

if spell.Value == 'inflatus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part.Size = part.Size + Vector3.new(20,20,20)

end
end
end

if spell.Value == 'locomotor wibbly' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.HumanoidRootPart:remove()
end
end
end
end

if spell.Value == 'lacarnum inflamarae' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local fire = Instance.new('Fire',part)
fire.Size = 20
fire.Heat = 100
part:BreakJoints()
part.Material = 'Cobblestone'
part.BrickColor = BrickColor.new(1003)
end
end
end

if spell.Value == 'levicorpus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.CFrame = part.CFrame * CFrame.new(0,10,0)
wait()
part.CFrame = part.CFrame * CFrame.Angles(180,0,0)
part.Anchored = true
end
end
end

if spell.Value == 'liberacorpus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.Anchored = false
end
end
end

if spell.Value == 'locomotor' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
game:GetService('RunService').Stepped:connect(function()
part.CFrame = mouse.hit
end)
end
end
end

if spell.Value == 'locomotor mortis' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.Sit = true
end
end
end
end

if spell.Value == 'lumos' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local pl = Instance.new('PointLight',char.Wand)
pl.Range = 20
pl.Brightness = 80
end
end
end

if spell.Value == 'lumos duo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local pl = Instance.new('PointLight',char.Wand)
pl.Range = 60
pl.Brightness = 80
end
end
end

if spell.Value == 'lumos maxima' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local light = Instance.new('Part')
light.Parent = workspace
light.Transparency = 1
light.BrickColor = BrickColor.new(332)
light:BreakJoints()
light.Material = 'SmoothPlastic'
light.CFrame = wand.CFrame * CFrame.new(0,0,-10)
light.CanCollide = false
light.Size = Vector3.new(1,1,1)
local move = Instance.new('BodyPosition',light)
move.Position = mouse.hit.p

local pl = Instance.new('PointLight',light)
pl.Range = 60
pl.Brightness = 80

wait(10)
light:remove()
end
end
end

if spell.Value == 'lumos solem' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local mark = Instance.new('Part')
mark.Parent = workspace
mark.Transparency = 1
mark.Anchored = true

repeat
local pl = Instance.new('PointLight')
pl.Range = 60
pl.Brightness = 80
wait()
mark.Transparency = mark.Transparency + 0.05
pl.Parent = char.Wand
until mark.Transparency > 3

local nolight = char.Wand:GetChildren() 
for i= 1, #nolight do 
if nolight[i].ClassName == 'PointLight' then
nolight[i]:remove()
end
end

end
end
end

if spell.Value == 'mobiliarbus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
game:GetService('RunService').Stepped:connect(function()
part.CFrame = mouse.hit
end)
end
end
end

if spell.Value == 'mobilicorpus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
game:GetService('RunService').Stepped:connect(function()
part.CFrame = mouse.hit
end)
end
end
end

if spell.Value == 'morsmordre' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local mark = Instance.new('Part',workspace)
mark.CFrame = char.Torso.CFrame * CFrame.new(0,500,0)
mark.Anchored = true
mark.BrickColor = BrickColor.new('Earth green')
mark.Size = Vector3.new(5, 5, 5)
local mesh = Instance.new('SpecialMesh',mark)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = 'http://www.roblox.com/asset/?id=36869983'
mesh.Scale = Vector3.new(120, 120, 120)

end
end
end

if spell.Value == 'nox' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local nolight = char.Wand:GetChildren() 
for i= 1, #nolight do 
if nolight[i].ClassName == 'PointLight' then
nolight[i]:remove()
end
end

end
end
end

if spell.Value == 'orbis' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part.Anchored = true

repeat
wait()
part.CFrame = part.CFrame * CFrame.new(0,-0.05,0)
until nil

end
end
end

if spell.Value == 'partis temporus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local patronum = Instance.new('Part')
patronum.Material = 'Neon'
patronum.BrickColor = BrickColor.new(1)
patronum.Shape = 'Ball'
patronum.CFrame = char.Wand.CFrame * CFrame.new(0,0,-20)
patronum.Anchored = true
patronum.Parent = workspace
patronum.Size = Vector3.new(30,30,30)
patronum.CanCollide = false

end
end
end

if spell.Value == 'periculum' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local light = Instance.new('Part')
light.Parent = workspace
light.Transparency = 1
light.BrickColor = BrickColor.new(332)
light:BreakJoints()
light.Material = 'SmoothPlastic'
light.CFrame = wand.CFrame * CFrame.new(0,0,-10)
light.CanCollide = false
light.Size = Vector3.new(1,1,1)
local move = Instance.new('BodyPosition',light)
move.Position = mouse.hit.p
local spark = Instance.new('Sparkles',light)

end
end
end

if spell.Value == 'petrificus totalus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part.Anchored = true

end
end
end

if spell.Value == 'protego' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local patronum = Instance.new('Part')
patronum.BrickColor = BrickColor.new(102)
patronum.Shape = 'Ball'
patronum.Anchored = true
patronum.Parent = workspace
patronum.CFrame = char.Wand.CFrame * CFrame.new(0,0,-20)
patronum.Size = Vector3.new(15,15,15)
patronum.CanCollide = false

end
end
end

if spell.Value == 'protego horribilis' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local patronum = Instance.new('Part')
patronum.BrickColor = BrickColor.new(1)
patronum.Shape = 'Ball'
patronum.Anchored = true
patronum.Parent = script
patronum.CFrame = char.Wand.CFrame * CFrame.new(0,0,-35)
patronum.Size = Vector3.new(30,30,30)
patronum.CanCollide = false

end
end
end

if spell.Value == 'protego maxima' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local patronum = Instance.new('Part')
patronum.BrickColor = BrickColor.new(1)
patronum.Shape = 'Ball'
patronum.Anchored = true
patronum.Parent = script
patronum.CFrame = char.Wand.CFrame * CFrame.new(0,0,-20)
patronum.Size = Vector3.new(15,15,15)
patronum.CanCollide = false

end
end
end

if spell.Value == 'protego totalum' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local patronum = Instance.new('Part')
patronum.BrickColor = BrickColor.new(1)
patronum.Transparency = 1
patronum.Shape = 'Ball'
patronum.CFrame = mouse.hit
patronum.Anchored = true
patronum.Parent = script
patronum.Size = Vector3.new(15,15,15)

end
end
end

if spell.Value == 'redactum skullus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Head.Mesh.Scale = Vector3.new(.2,.2,.2)
end

end
end
end

if spell.Value == 'reducio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part.Size = part.Size - Vector3.new(10,10,10)

end
end
end

if spell.Value == 'reducto' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part:BreakJoints()

end
end
end

if spell.Value == 'relashio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

part:BreakJoints()

end
end
end

if spell.Value == 'rennervate' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.PlatformStand = false
end
end
end
end

if spell.Value == 'rictusempra' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
while true do
wait(math.random(1,5))
part.Parent.Humanoid.PlatformStand = true
end
end
end
end
end

if spell.Value == 'sectumsempra' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.PlatformStand = true
part.Parent.Humanoid.Health = part.Parent.Humanoid.Health - 10
end
end
end
end

if spell.Value == 'serpensortia' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local spider = Instance.new('Part')
spider.BrickColor = BrickColor.new('Earth green')
spider.Size = Vector3.new(1,1,1)
spider.Parent = workspace
spider.CFrame = char.Wand.CFrame * CFrame.new(0,0,-5)
local mesh = Instance.new('SpecialMesh',spider)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = 'http://www.roblox.com/asset/?id=49046138'
mesh.Scale = Vector3.new(1,1,1)
local pos = Instance.new('BodyPosition',spider)
pos.Position = mouse.hit.p

function venom(hit)
if hit.Parent:FindFirstChild('Humanoid') ~= nil then
spider:remove()
repeat
wait(1)
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10
until hit.Parent.Humanoid.Health < 20
end
end
spider.Touched:connect(venom)

wait(5)
spider:remove()
end
end
end

if spell.Value == 'silencio' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

silence = part:GetChildren() 
for i= 1, #silence do 
if silence[i].ClassName == 'Sound' then
silence[i]:remove()
end
end


end
end
end

if spell.Value == 'slugulus eructo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then

local mark = Instance.new('Part')
mark.Parent = workspace
mark.Transparency = 1
mark.Anchored = true

repeat
local spider = Instance.new('Part')
spider.Size = Vector3.new(1,1,1)
spider.BrickColor = BrickColor.new(1003)
local mesh = Instance.new('SpecialMesh')
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = 'http://www.roblox.com/asset/?id=11144802'
mesh.Scale = Vector3.new(.5,.5,.5)
wait(math.random(1,5))
mark.Transparency = mark.Transparency + 0.1
spider.Parent = workspace
mesh.Parent = spider
spider.CFrame = part.Parent.Head.CFrame
part.Parent.Humanoid.Sit = true
until mark.Transparency > 2


end
end
end
end

if spell.Value == 'steleus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.Jump = true
wait()
part.Parent.Humanoid.Sit = true
end
end
end
end

if spell.Value == 'stupefy' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.Sit = true
part.Parent.Humanoid.Health = part.Parent.Humanoid.Health - 10
end
end
end
end

if spell.Value == 'tarantallegra' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then

while true do
wait(1)
part.Parent.Humanoid.WalkToPoint = Vector3.new(math.random(),0,math.random())
end
end
end
end
end

if spell.Value == 'ventus' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

char.Torso.Anchored = true
local patronum = Instance.new('Part')
patronum.Material = 'Neon'
patronum.BrickColor = BrickColor.new(1)
patronum.Transparency = 1
patronum.Shape = 'Ball'
patronum.CFrame = char.Wand.CFrame
patronum.Anchored = true
patronum.Parent = workspace
patronum.Size = Vector3.new(1,1,1)
repeat
local cf = char.Wand.CFrame
wait()
patronum.Size = patronum.Size + Vector3.new(5,5,5)
patronum.Transparency = patronum.Transparency + 0.05
patronum.CFrame = cf
until patronum.Transparency > 2
patronum:remove()
char.Torso.Anchored = false
end
end
end

if spell.Value == 'ventus duo' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

char.Torso.Anchored = true
local patronum = Instance.new('Part')
patronum.Material = 'Neon'
patronum.BrickColor = BrickColor.new(1)
patronum.Transparency = 1
patronum.Shape = 'Ball'
patronum.CFrame = char.Wand.CFrame
patronum.Anchored = true
patronum.Parent = workspace
patronum.Size = Vector3.new(1,1,1)
repeat
local cf = char.Wand.CFrame
wait()
patronum.Size = patronum.Size + Vector3.new(5,5,5)
patronum.Transparency = patronum.Transparency + 0.05
patronum.CFrame = cf
until patronum.Transparency > 4
patronum:remove()
char.Torso.Anchored = false
end
end
end

if spell.Value == 'vera verto' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local mesh = Instance.new('SpecialMesh',part)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = 'http://www.roblox.com/asset/?id=13117718'
part.BrickColor = BrickColor.new(1)
mesh.Scale = Vector3.new(1,1,1)

end
end
end

if spell.Value == 'verdillious' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local light = Instance.new('Part')
light.Parent = workspace
light.Transparency = 1
light.BrickColor = BrickColor.new(332)
light:BreakJoints()
light.Material = 'SmoothPlastic'
light.CFrame = wand.CFrame * CFrame.new(0,0,-10)
light.CanCollide = false
light.Size = Vector3.new(1,1,1)
local move = Instance.new('BodyPosition',light)
move.Position = mouse.hit.p
local spark = Instance.new('Sparkles',light)

end
end
end

if spell.Value == 'vulnera sanentur' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Humanoid.Health = part.Parent.Humanoid.MaxHealth
end
end
end
end

if spell.Value == 'waddiwasi' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
local wad = Instance.new('Part',workspace)
wad.CFrame = char.Wand.CFrame * CFrame.new(0,0,-5)
end
end
end

if spell.Value == 'wingardium leviosa' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
part.Anchored = true
part.CFrame = part.CFrame * CFrame.new(0,10,0)
wait(5)
part.Anchored = false
end
end
end

if spell.Value == 'melofors' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Head.Mesh.MeshId = 'http://www.roblox.com/asset/?id=1158007'
end
end
end
end

if spell.Value == 'tentaclifors' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then
if part.Parent:FindFirstChild('Humanoid') ~= nil then
part.Parent.Head.Mesh.MeshId = 'http://www.roblox.com/asset/?id=15039340'
end
end
end
end

if spell.Value == 'apparition' and key == 'q' then
char.Torso.CFrame = mouse.hit
end

if spell.Value == 'erecto' and key == 'q' then
local beamcf = char.Head.CFrame.p
local ray = Ray.new(beamcf, (mouse.Hit.p - beamcf).unit * 2e9)
local part = workspace:FindPartOnRay(ray)
if part then
if part.Parent.Name ~= name and part.Parent.ClassName ~= 'Hat' then

local flower = Instance.new('Part',workspace)
flower.Rotation = Vector3.new(-90, 0, 90)
flower.Position = mouse.hit.p
flower.Anchored = true
flower.Size = Vector3.new(7,7,7)
flower.CanCollide = false
local mesh = Instance.new('SpecialMesh',flower)
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = 'http://www.roblox.com/asset/?id=56824172'
mesh.TextureId = 'http://www.roblox.com/asset/?id=57255885'
mesh.Scale = Vector3.new(7, 7, 7)

end
end
end

end
end
mouse.KeyDown:connect(KeyPress)
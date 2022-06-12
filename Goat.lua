
local Player = game.Players.LocalPlayer
local mouse = Player:GetMouse()
local char = Player.Character
local hum = char:WaitForChild("Humanoid")
local head = char:WaitForChild("Head")
local torso = char:WaitForChild("Torso")
local root = char:WaitForChild("HumanoidRootPart")
local rarm = char["Right Arm"]
local larm = char["Left Arm"]
local rleg = char["Right Leg"]
char.Archivable = true
local lleg = char["Left Leg"]
enabled = false
--person = workspace.Suflet
rage = true
deb = false
local o_torso = root["RootJoint"].C1
local o_head = torso["Neck"].C1
local o_rarm = torso["Right Shoulder"].C1
local o_larm = torso["Left Shoulder"].C1
local o_rleg = torso["Right Hip"].C1
local o_lleg = torso["Left Hip"].C1
 brickval = BrickColor.new("New Yeller")
 sizeval = 0.1
 math.randomseed(tick())
 --head.Mesh.Scale = Vector3.new(3,3,3)
local _torso = root["RootJoint"]
local _head = torso["Neck"]
local _rarm = torso["Right Shoulder"]
local _larm = torso["Left Shoulder"]
local _rleg = torso["Right Hip"]
local _lleg = torso["Left Hip"]
horns = Instance.new("Part", char)
horns.CanCollide = false
horns.Material = "Neon"
horns.Name = "ramhorns"
mesh = Instance.new("SpecialMesh", horns)
mesh.MeshId = "rbxassetid://434078905"
mesh.TextureId = "http://www.roblox.com/asset/?id=86972269"
mesh.Scale = Vector3.new(4,4,4.5)
weld = Instance.new("Weld", char)
weld.Part0 = horns
weld.Part1 = head
weld.C1 = CFrame.new(0,.5,.8)
weld.C0 = CFrame.Angles(math.rad(0),math.rad(180),math.rad(0))
--_torso.C0 = CFrame.Angles(math.rad(180),0,math.rad(180))
--_lleg.C0 = CFrame.new(1,-1,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(90))
--_rleg.C0 = CFrame.new(0,-1,0)*CFrame.Angles(0,math.rad(90),math.rad(90))
hum.AutoRotate = false
v = 1
hold = false

function babies()
pooped = char:Clone()
pooped.Parent = workspace
pooped.Torso.CFrame = torso.CFrame * CFrame.new(0,-1,2)
pooped.Torso.Velocity = -torso.CFrame.lookVector * math.random(10,30)
pooped.ramhorns:Destroy()
--pooped
--v = Instance.new("BodyVelocity", pooped.Torso)
   --[[ spawn(function()
    if laid == true then
        while wait() do
        pooped.Humanoid:MoveTo(torso.Position)
        end
        end)--]]
        
        pooped.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
        pooped.Humanoid:SetStateEnabled(1, false)
function find(tab, arg, pos)
        for i,v in pairs(tab) do
                if v == arg and i == pos then
                        return true
                end
        end
        return false
end

function makeGiant(Character, S)
        local welds, hats = {}, {}
        local torso = Character:findFirstChild("Torso")
        head = Character:FindFirstChild("Head")
        local pos = torso.Position
        local ssss = torso.Size.Y
        for _,v in pairs(torso:children()) do
                if v:IsA("Motor6D") or v:IsA("Weld") or v:IsA("Motor") then
                        table.insert(welds, {v, v.Part0, v.Part1})
                end
        end
        for _, v in pairs(Character:children()) do
                if v:IsA("Hat") then
                        v.AttachmentPos = v.AttachmentPos*S
                        v.Handle.Mesh.Scale = v.Handle.Mesh.Scale*S
                        v:Destroy()
                        table.insert(hats, v)
                elseif v:IsA("BasePart") then
                        v.formFactor = "Custom"
                        v.Size = v.Size*S
                elseif v:IsA("Shirt") or v:IsA("Pants") or v:IsA("ShirtGraphic") then
                end
        end
        local anim = Character.Animate
        local animc = anim:clone()
        anim:remove()
        for _,v in pairs(welds) do
                local c1 = v[1].C1
                local c0 = v[1].C0
                local a1, a2, a3 = c1:toEulerAnglesXYZ()
                local b1, b2, b3 = c0:toEulerAnglesXYZ()
                c1 = CFrame.new(c1.p * S) * CFrame.Angles(a1, a2, a3)
                c0 = CFrame.new(c0.p * S) * CFrame.Angles(b1, b2, b3)
                local clon = v[1]:clone()
                v[1]:remove()
                clon.C1 = c1
                clon.C0 = c0
                clon.Part1 = v[3]
                clon.Part0 = v[2]
                clon.Parent = Character.Torso
                finalweld = Instance.new("Weld", Character)
                finalweld.Part0 = Character.Torso
                finalweld.Part1 = Character.HumanoidRootPart
        end
        animc.Parent = Character
        Character.Humanoid.WalkSpeed = 6+10*S

        Character:MoveTo(pos+Vector3.new(0,S*(ssss/2),0))
        wait(0.1)
        Character.Humanoid.HipHeight = 0
    
        for i,v in pairs(hats) do
        end
end

makeGiant(pooped, 0.4)
end

mouse.KeyDown:connect(function(key)
if key == "e" then
asd = math.random(1,10)
asd2 = math.random(1,4)
for i = 1,asd2 do
p = Instance.new("Part", workspace)
if asd ~= 5 then
p.CFrame = torso.CFrame * CFrame.new(math.random(-20,20)/10,-1,2)
p.Size = Vector3.new(0.4,0.4,0.4    )
p.BrickColor = BrickColor.new("Rust")
p.Velocity = -torso.CFrame.lookVector * math.random(10,30)
elseif asd == 5 then
asd2 = 1
--[[p.Size = Vector3.new(2,2,2)
p.BrickColor = BrickColor.new("New Yeller")
p.Material = "Neon"
p.CFrame = torso.CFrame--]]
--babies()

end
end
elseif key == "r" then
babies()
end
end)
mouse.Button1Down:connect(function()
hitbox = Instance.new("Part", char)
hitbox.Size = Vector3.new(4,1,4)
hitbox.Transparency = 1
hitbox.CanCollide = false
w = Instance.new("Weld", char    )
w.Part0 = hitbox
w.Part1 = head
w.C1 = CFrame.new(0,1,0)
deb = false
function onDamage(Part)
        if Part.Parent:FindFirstChild("Humanoid") ~= nil and Part.Parent.Name ~= game.Players.LocalPlayer.Name and deb == false then
        deb = true
Part.Parent.Humanoid.PlatformStand = true
Part.Parent.Humanoid:TakeDamage(v/5 * Part.Parent.Humanoid.MaxHealth/600)
Part.Parent.Torso.Velocity = root.CFrame.lookVector *Vector3.new(v,v,v)
        end
        wait(3)
        deb = false
end

hitbox.Touched:connect(onDamage)
hold = true
_torso.C0 = CFrame.new(0,-0.2,0)*CFrame.Angles(math.rad(180),0,math.rad(180))
_lleg.C0 = CFrame.new(1,-1,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(90))
_rleg.C0 = CFrame.new(0,-1,0)*CFrame.Angles(0,math.rad(90),math.rad(90))
vel = Instance.new("BodyVelocity", root)
vel.maxForce = Vector3.new(math.huge,0,math.huge)
spawn(function()
game:getService("RunService").RenderStepped:connect(function()
local mp = mouse.Hit.p+ Vector3.new(-2,0,0)
    torso.CFrame = CFrame.new(torso.Position, Vector3.new(mp.x, torso.Position.Y, mp.z))    
end)
end)
v = 20
val = 0
spawn(function()
while hold == true do
local p = Instance.new("Part", workspace)
p.Anchored = true
p.CFrame = head.CFrame  * CFrame.Angles(math.rad(180),0,0)
p.CanCollide = false
if rage == false then
p.Size = Vector3.new(0.1,0.1,0.1)
p.BrickColor = brickval
elseif rage == true then
p.BrickColor = BrickColor.new("Really red")
end
local mesh = Instance.new("SpecialMesh", p)
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
game.Debris:AddItem(p, 3)
spawn(function()
if rage == false then
for i = 1,100 do
p.Transparency = i/10
mesh.Scale = mesh.Scale + Vector3.new(sizeval*10,sizeval,sizeval*10)
wait()
end
elseif rage == true then
for i = 1,100 do
p.Transparency = i/10
mesh.Scale = mesh.Scale + Vector3.new(sizeval*80,sizeval*10,sizeval*80)
wait()
end
end
end)
wait(2)
end
end)
while hold == true  do
v=v+3
vel.maxForce = Vector3.new(math.huge,0,math.huge)
vel.velocity = Player.Character.HumanoidRootPart.CFrame.lookVector * v
wait()
end
end)

mouse.Button1Up:connect(function()
hitbox:Destroy()
_torso.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-90),0,math.rad(180))
_lleg.C0 = CFrame.new(1,-1,0)*CFrame.Angles(math.rad(180),math.rad(90),math.rad(180))
_rleg.C0 = CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(180),math.rad(-90),math.rad(180))
hold = false
v = 0
vel:Destroy()
end)

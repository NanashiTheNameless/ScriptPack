-- Project Name: "Zerioth"
----------------------------Declarations
local p = game.Players.LocalPlayer
local char = p.Character
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local l = game.Lighting
local stanceToggle = "Assertive"
local CanAttack = true
local Daytime = true
local animpose = "Idle"
local lastanimpose = "Idle"
----------------------------Tables
Debounces = {
on = false;
Ready = false;
Here = false;
NoIdl = false;
Shewt = false;
Slashing = false;
Slashed = false;
}
local Touche = {char.Name, }
----------------------------Global Functions
function Lerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
-----------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
-----------
function HasntTouched(plrname)
local ret = true
for _, v in pairs(Touche) do
if v == plrname then
ret = false
end
end
return ret
end
----------------------------Welding
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------Creation
function stick(x,y)
    weld = Instance.new("Weld")
    weld.Part0 = x
    weld.Part1 = y
    local HitPos = x.Position
    local CJ = CFrame.new(HitPos)
    local C0 = x.CFrame:inverse() *CJ
    local C1 = y.CFrame:inverse() * CJ
    weld.C0 = C0
    weld.C1 = C1
    weld.Parent = x
    y.Anchored=false
    return weld
end
blocks = {}
last_block = nil
function ezBlock(type, name, cframe, size, rotation, material, parent, BrickColor, transparency, 

weldToThis, formFactor)
    block = Instance.new(type, parent)
    block.Name = name
    block.FormFactor=formFactor
    block.Size = size
    block.CanCollide = false
    block.Anchored = false
    block.BrickColor = BrickColor
    block.Transparency=transparency
    block.TopSurface = 'SmoothNoOutlines'
    block.BottomSurface = 'SmoothNoOutlines'
    block.FrontSurface = 'SmoothNoOutlines'
    block.BackSurface = 'SmoothNoOutlines'
    block.LeftSurface = 'SmoothNoOutlines'
    block.RightSurface = 'SmoothNoOutlines'
    block.Material = material
    block.formFactor = 'Custom'
    block.CFrame = cframe
 
    if weldToThis then
        stick(weldToThis, block)
    elseif last_block ~= nil then
        stick(block, last_block)
        last_block = block
    else
        last_block = block
    end
    table.insert(blocks, block)
   
    return #blocks
end
 
local model = Instance.new("Model", game.Players.LocalPlayer.Character)
model.Name = 'KZ'
 
plr=game.Players.LocalPlayer
chr=plr.Character
 
x_offset=chr["Right Arm"].Position.x-3
y_offset=chr["Right Arm"].Position.y-6
z_offset=chr["Right Arm"].Position.z-2
handle=0
 
function makeModel()
    x=ezBlock('Part', 'Part', CFrame.new(2.9000239372253+x_offset,9.9575099945068+y_offset,2.4182820320129+z_offset) * CFrame.Angles(math.rad(-62.47554397583),math.rad(89.951538085938),math.rad(62.96166229248)), Vector3.new(1,4,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('BlockMesh',blocks[x])
        m.Scale=Vector3.new(0.29999992251396,1,0.12000000476837)
    test=ezBlock('Part', 'Part', CFrame.new(2.9001767635345+x_offset,12.307532310486+y_offset,2.3282859325409+z_offset) * CFrame.Angles(math.rad(75.000564575195),math.rad(-0.0027364948764443),math.rad(-0.0040953187271953)), Vector3.new(1,1,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('SpecialMesh',blocks[test])
        m.MeshType=Enum.MeshType.Wedge
        m.Scale=Vector3.new(0.11999999731779,0.29999992251396,0.79999995231628)
    x=ezBlock('Part', 'Part', CFrame.new(2.9000627994537+x_offset,11.292961120605+y_offset,2.8021762371063+z_offset) * CFrame.Angles(math.rad(-120.99560546875),math.rad(0.0018079035216942),math.rad(-179.99545288086)), Vector3.new(1,1,2), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('SpecialMesh',blocks[x])
        m.MeshType=Enum.MeshType.Wedge
        m.Scale=Vector3.new(0.11999999731779,0.29999992251396,0.69999992847443)
    x=ezBlock('Part', 'Part', CFrame.new(2.8998336791992+x_offset,6.8374934196472+y_offset,2.4182815551758+z_offset) * CFrame.Angles(math.rad(-62.47554397583),math.rad(89.951538085938),math.rad(62.96166229248)), Vector3.new(1,1,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('BlockMesh',blocks[x])
        m.Scale=Vector3.new(0.29999992251396,0.79999995231628,0.12000000476837)
    x=ezBlock('Part', 'Part', CFrame.new(2.8999021053314+x_offset,7.9074859619141+y_offset,2.5182840824127+z_offset) * CFrame.Angles(math.rad(132.43475341797),math.rad(89.868774414062),math.rad(-179.9655456543)), Vector3.new(1,1,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('BlockMesh',blocks[x])
        m.Scale=Vector3.new(0.29999992251396,0.59999990463257,0.12000000476837)
    x=ezBlock('Part', 'Part', CFrame.new(2.8998639583588+x_offset,7.4174952507019+y_offset,2.658282995224+z_offset) * CFrame.Angles(math.rad(101.38736724854),math.rad(89.951538085938),math.rad(-56.383499145508)), Vector3.new(1,1,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('BlockMesh',blocks[x])
        m.Scale=Vector3.new(0.29999992251396,0.79999995231628,0.12000000476837)
    x=ezBlock('Part', 'Part', CFrame.new(2.8998181819916+x_offset,6.4374675750732+y_offset,2.418304681778+z_offset) * CFrame.Angles(math.rad(179.99493408203),math.rad(-0.0017437987262383),math.rad(0.0042136842384934)), Vector3.new(1,0.40000000596046,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Plate)
        m=Instance.new('BlockMesh',blocks[x])
        m.Scale=Vector3.new(0.29999992251396,0.3999999165535,0.79999995231628)
    handle=ezBlock('Part', 'Handle', CFrame.new(2.8998110294342+x_offset,5.7374625205994+y_offset,2.4182667732239+z_offset) * CFrame.Angles(math.rad(-26.479055404663),math.rad(-89.965728759766),math.rad(153.52093505859)), Vector3.new(1,2,1), nil,Enum.Material.Plastic, model, BrickColor.new("Really black"),0,nil,Enum.FormFactor.Symmetric)
        m=Instance.new('BlockMesh',blocks[handle])
        m.Scale=Vector3.new(0.09999992698431,0.69999992847443,0.09999992698431) --lolfunnyjoke lolhilarlar
    wait()
    for i, v in pairs(blocks) do
            v.Parent = model
    end
end
makeModel()
----
local cor = Instance.new("Part", model)
cor.Name = "HitBox"
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 6, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = larm
corw.Part1 = cor
corw.C0 = CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0)
hndlw = Instance.new("Weld", model.Handle)
hndlw.Part0 = cor
hndlw.Part1 = model.Handle
hndlw.C0 = CFrame.new(0, 2.75, 0)
----------------------------Extra Settings
--[[f = Instance.new("Fire")
f.Parent = larm
f.Size = 5
f.Heat = 5
f.Color = Color3.new(0,0,0)
f.SecondaryColor = Color3.new(44/255,31/255,90/255)
f1 = Instance.new("Fire")
f1.Parent = rarm
f1.Size = 5
f1.Heat = 5
f1.Color = Color3.new(0,0,0)
f1.SecondaryColor = Color3.new(44/255,31/255,90/255)]]
z = Instance.new("Sound")
z.SoundId = "http://www.roblox.com/asset/?id=146309999"--160453802
z.Parent = char
z.Looped = true
z.Pitch = 1
z.Volume = 1
z.PlayOnRemove = false
wait(.01)
z:Play()
char.Humanoid.WalkSpeed = 10
-----------------------------Cero
mouse.KeyDown:connect(function(key)
if key == "f" then
if CanAttack == true then
CanAttack = false
Debounces.NoIdl = true
char.Humanoid.WalkSpeed = .01
Debounces.on = true
for i = 1, 20 do
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-18), 0, math.rad(-20)), 0.3)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(65), 0, math.rad(-40)), 0.3)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-10), 0, math.rad(-10)), 0.3)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(8), 0, math.rad(10)), 0.3)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10), math.rad(-70), 0), 0.6)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(84), 0), 0.4)
if Debounces.on == false then
break
end
wait()
end
wait(1)
x = Instance.new("Sound")
x.SoundId = "http://www.roblox.com/asset/?id=142070127"
x.Parent = char.Head
x.Looped = false
x.Pitch = .88
x.Volume = 1
wait(.1)
x:Play()
Debounces.on = false
Debounces.Here = false
shot = shot + 1
for i = 1, 6 do
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-12), 0, math.rad(-12)), 0.4)
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), 0, math.rad(101)), 0.4)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-6)), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(6)), 0.4)
hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-8), math.rad(-84), 0), 0.4)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(90), 0), 0.4)
wait()
end
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = BrickColor.new("Really black")
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0.35
rng.TopSurface = 0
rng.BottomSurface = 0
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
rngm.Scale = Vector3.new(10, 10, 1)
local bem = Instance.new("Part", char)
bem.Anchored = true
bem.BrickColor = BrickColor.new("Really black")
bem.CanCollide = false
bem.FormFactor = 3
bem.Name = "Beam" .. shot
bem.Size = Vector3.new(1, 1, 1)
bem.Transparency = 0.35
bem.TopSurface = 0
bem.BottomSurface = 0
local bemm = Instance.new("SpecialMesh", bem)
bemm.MeshType = 4
bemm.Scale = Vector3.new(1, 4, 4)
local out = Instance.new("Part", char)
out.Anchored = true
out.BrickColor = BrickColor.new("Really black")
out.CanCollide = false
out.FormFactor = 3
out.Name = "Out"
out.Size = Vector3.new(1, 1, 1)
out.Transparency = 0.35
out.TopSurface = 0
out.BottomSurface = 0
local outm = Instance.new("SpecialMesh", out)
outm.MeshId = "http://www.roblox.com/asset/?id=1033714"
outm.Scale = Vector3.new(2, 2, 2)
local bnd = Instance.new("Part", char)
bnd.Anchored = true
bnd.BrickColor = BrickColor.new("Really black")
bnd.CanCollide = false
bnd.FormFactor = 3
bnd.Name = "BEnd"
bnd.Size = Vector3.new(1, 1, 1)
bnd.Transparency = 0.35
bnd.TopSurface = 0
bnd.BottomSurface = 0
local bndm = Instance.new("SpecialMesh", bnd)
bndm.MeshType = 3
bndm.Scale = Vector3.new(4, 4, 4)
out.CFrame = rarm.CFrame * CFrame.new(0, -1.75, 0)
bem.CFrame = out.CFrame * CFrame.new(0, -2.5, 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(0, 0, 0)
rng.CFrame = out.CFrame * CFrame.Angles(math.rad(90), 0, 0)
Debounces.Shewt = true
coroutine.wrap(function()
for i = 1, 20, 0.2 do
rngm.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
rng.Transparency = i/20
wait()
end
wait()
rng:Destroy()
end)()
if Debounces.Shewt == true then
char:WaitForChild("Beam" .. shot).Touched:connect(function(ht) --Here
print("Hit")
hit = ht.Parent
if hit:IsA("Model") and hit:findFirstChild("Humanoid") then
print("Yes")
if HasntTouched(hit.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit:FindFirstChild("Humanoid").PlatformStand = true
hit:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 140
hit:FindFirstChild("Humanoid"):TakeDamage(math.random(18,63))
wait(1)
hit:FindFirstChild("Humanoid").PlatformStand = false
end)()
table.insert(Touche, hit.Name)
deb = false
end
elseif hit:IsA("Hat") and hit.Parent:findFirstChild("Humanoid") then
print("Yes")
if HasntTouched(hit.Parent.Name) == true and deb == false then
deb = true
coroutine.wrap(function()
hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
hit.Parent:FindFirstChild("Torso").Velocity = char.Head.CFrame.lookVector * 140
wait(1)
hit.Parent:FindFirstChild("Humanoid").PlatformStand = false
end)()
table.insert(Touche, hit.Parent.Name)
deb = false
for i, v in pairs(Touche) do
print(v)
end
end
end
end)
end
for i = 0, 200, 7 do
bem.Size = Vector3.new(i, 1, 1)
bem.CFrame = rarm.CFrame * CFrame.new(0, -2.5 -(i/2), 0) * CFrame.Angles(0, 0, math.rad(90))
bnd.CFrame = bem.CFrame * CFrame.new(-i/2, 0, 0)
wait()
end
wait()
Debounces.Shewt = false
bem:Destroy()
out:Destroy()
bnd:Destroy()
char.Humanoid.WalkSpeed = 10
Debounces.Ready = false
for i, v in pairs(Touche) do
table.remove(Touche, i)
end
wait()
table.insert(Touche, char.Name)
Debounces.NoIdl = false
if CanAttack == false then
CanAttack = true
end
end
end
end)
-------------------------------Nightshift Blast
mouse.KeyDown:connect(function(key)
    if key == "q" then
        if CanAttack == true then
            CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            for i = 1, 20 do
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-26), math.rad(0), 0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
                  if Debounces.on == false then
                          break
                  end
                  wait()
                      end
                      wait()
                    if Daytime == true then
                        Daytime = false
                        l.TimeOfDay = 24
                    else
                        Daytime = true
                        l.TimeOfDay = 12
                        l.OutdoorAmbient = Color3.new(0.498039, 0.498039, 0.498039)
                    end
                    char.Humanoid.MaxHealth = math.huge
                    c = Instance.new("Sound")
                    c.SoundId = "http://www.roblox.com/asset/?id=152758283"
                    c.Parent = m
                    c.Looped = false
                    if Daytime == true then
                        c.Pitch = -1
                    elseif Daytime == false then
                        c.Pitch = 1.12
                    end
                    c.Volume = 1
                    wait(.01)
                    c:Play()
            local Shockwave = function()
                local Wave = Instance.new("Part", game.Workspace--[[?]])
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    print(hit.Name)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        if hit.Parent.Name ~= char.Name then
                            print("Damaged " .. hit.Parent.Name)
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 1
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                Delay(0, function()
                    -- 
                    -- Okay.
                    if Daytime == false then
                       for i = 1, 38, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 38
                            Wave.Transparency = t
                            wait()
                        end
                    else
                        for i = 38, 1, -1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = char.Torso.CFrame
                            local t = i / 38
                            Wave.Transparency = t
                            wait()
                        end
                    end
                    Wave:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = char.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end
            
            Shockwave()
            
            for i = 1, 20 do
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(-100)), 0.6)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(100)), 0.6)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-20)), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(20)), 0.6)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(35), math.rad(0), 0), 0.6)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.6)
                wait()
                if Debounces.on == false then
                    break
                end
                wait()
            end
	    wait(2)
            Debounces.NoIdl = false
                    if CanAttack == false then
                        CanAttack = true
                wait()
                    end
            end -- for the canattack thing
        end
end)
-------------------------------Slash
mouse.KeyDown:connect(function(key)
    if key == "e" then
        if CanAttack == true then
            CanAttack = false
            Debounces.NoIdl = true
            Debounces.on = true
            for i = 1, 20 do
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(75), math.rad(-36), math.rad(30)), 0.3)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(32)), 0.6)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, 0, -1) * CFrame.Angles(math.rad(0), 0, math.rad(-10)), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(10)), 0.6)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-10), math.rad(18), 0), 0.6)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-60), math.rad(-10)), 0.6)
                      if Debounces.on == false then
                              break
                      end
                      wait()
                      end
                      wait()
                            z = Instance.new("Sound")
                            z.SoundId = "http://www.roblox.com/asset/?id=160069154"
                            z.Parent = char.Head
                            z.Looped = false
                            z.Pitch = 1
                            z.Volume = 1
                            wait(.01)
                            z:Play()
                            Debounces.Slashing = true
            for i = 1, 20 do
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-21), math.rad(50), math.rad(-40)), 0.46)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(0), 0, math.rad(18)), 0.6)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-14), 0, math.rad(-10)), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(6), 0, math.rad(10)), 0.6)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14), math.rad(-36), 0), 0.6)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(36), 0), 0.6)
            wait()
            if Debounces.on == false then
                break
            end
            wait()
                end
                Debounces.Slashing = false
            Debounces.NoIdl = false
            wait()
            if CanAttack == false then
                                    CanAttack = true
                                end -- dis betr
        end
    end
end)
cor.Touched:connect(function(ht)
        hit = ht.Parent
        if ht and hit:IsA("Model") then
                if hit:FindFirstChild("Humanoid") then
                    if hit.Name ~= p.Name then
                        if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true
                                if (lastanimpose == "Running" and animpose == "Idle") or animpose == "Running" then
                                    -- extra damage, 100 for testing.
                                    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(37, 56))
                                else
                                    print(lastanimpose, animpose)
                                    hit:FindFirstChild("Humanoid"):TakeDamage(math.random(18,37))
                                end
                                wait(1)
                                Debounces.Slashed = false
                        end
                end
                end
        elseif ht and hit:IsA("Hat") then
            if hit.Parent.Name ~= p.Name then
                if hit.Parent:FindFirstChild("Humanoid") then
                        if Debounces.Slashing == true and Debounces.Slashed == false then
                                Debounces.Slashed = true
                                if (lastanimpose == "Running" and animpose == "Idle") or animpose == "Running" then
                                    -- extra damage, 100 for testing.
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(37, 56))
                                else
                                    hit.Parent:FindFirstChild("Humanoid"):TakeDamage(math.random(18,37))
                                end
                                wait(1)
                                Debounces.Slashed = false
                        end
                    end
                end
        end
end)
-------------------------------Stab
mouse.KeyDown:connect(function(key)
    if key == "r" then
        if CanAttack == true then
            CanAttack = false
             Debounces.NoIdl = true
                    Debounces.on = true
                        z = Instance.new("Sound")
                        z.SoundId = "http://www.roblox.com/asset/?id=159218913"
                        z.Parent = char.Head
                        z.Looped = false
                        z.Pitch = .9
                        z.Volume = 1
                        wait(.01)
                        z:Play()
                        Debounces.Slashing = true
            for i = 1, 20 do
                        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.2, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(-10)), 0.6)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(60), math.rad(50), math.rad(-40)), 0.6)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-10), math.rad(34), math.rad(-20)), 0.6)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-14)), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(14)), 0.6)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), math.rad(48), 0), 0.6)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(-70), 0), 0.7)
                wait()
                if Debounces.on == false then
                    break
                end
                wait()
                end
                Debounces.Slashing = false
            Debounces.NoIdl = false
            if CanAttack == false then
                    CanAttack = true
                end
                end
end
-------------------------------Getsuga Tenshou
mouse.KeyDown:connect(function(key)
    if key == "t" then
        if CanAttack == true then
            CanAttack = false
        Debounces.NoIdl = true
        Debounces.on = true
        for i = 1, 20 do
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.2, -2.75) * CFrame.Angles(math.rad(90), math.rad(40), math.rad(0)), 0.6)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1, 1, -.5) * CFrame.Angles(math.rad(130), math.rad(0), math.rad(40)), 0.3)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1, 1, -.5) * CFrame.Angles(math.rad(130), math.rad(0), math.rad(-40)), 0.3)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(-10)), 0.6)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-20), 0, math.rad(10)), 0.6)
        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.6)
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 12, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
              if Debounces.on == false then
                      break
              end
              wait()
                  end
                  wait()
                        z = Instance.new("Sound")
                        z.SoundId = "http://www.roblox.com/asset/?id=159218913"
                        z.Parent = char.Head
                        z.Looped = false
                        z.Pitch = 1
                        z.Volume = 1
                        wait(.01)
                        z:Play()
                        Debounces.Slashing = true
        for i = 1, 20 do
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.2, -2.75) * CFrame.Angles(math.rad(90), math.rad(40), math.rad(0)), 0.6)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1, .5, -.5) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(40)), 0.6)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1, .5, -.5) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-40)), 0.6)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1.5, -.5) * CFrame.Angles(math.rad(-90), 0, math.rad(0)), 0.6)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.6)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.6)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0), 0.6)
        wait()
        if Debounces.on == false then
            break
        end
        wait()
            end
            Debounces.Slashing = false
        Debounces.NoIdl = false
        wait()
        if CanAttack == false then
            CanAttack = true
            end
                end
        end
    end)
end)
--------------------------------------------------Insanity
mouse.KeyDown:connect(function(key)
	if key == "g" then
		       if CanAttack == true then
            CanAttack = false
        Debounces.NoIdl = true
				z = Instance.new("Sound")
				z.SoundId = "http://www.roblox.com/asset/?id=154564700"
				z.Parent = char
				z.Looped = true
				z.Pitch = .88
				z.Volume = 1
				wait(.01)
				z:Play()
        for i = 1, 20 do
            cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1.2, -2.75) * CFrame.Angles(math.rad(90), math.rad(40), math.rad(0)), 0.6)
            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(30)), 0.2)
            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(75), 0, math.rad(-30)), 0.2)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, 0.5, -1) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-26), math.rad(0), 0), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-10), math.rad(0), 0), 0.2)
            if Debounces.on == false then
			break
end
wait()
end
mouse.KeyUp:connect(function(key)
	if key == "g" then
		z:Stop()
	Debounces.NoIdl = false
	wait()
if CanAttack == true then
	CanAttack = false
end
	end
end)
end
		end
	end)
--------------------------------------------------Idle Changing
mouse.KeyDown:connect(function(key)
    if key == "z" then
        stanceToggle = "Aggressive"
    elseif key == "x" then
        stanceToggle = "Assertive"
    elseif key == "c" then
        stanceToggle = "Floating"
    end
end)
-------------------------------Sprint
mouse.KeyDown:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 48
    end
end)
mouse.KeyUp:connect(function(key)
    if string.byte(key) == 52 then
        char.Humanoid.WalkSpeed = 10
    end
end)
-------------------------------
local sine = 0
local change = 1
local val = 0
local ffing = false
--------------------------------Trail
local LastCFr = nil
local Trails = Instance.new("Model",char)
local Trail = {}
local Tip = blocks[test]
local number = 0
local num2 = 1
game:GetService("RunService").RenderStepped:connect(function()
	local start = nil
	for i = num2,number do
		local v = Trail[i]
		if v ~= nil then
			local cfr = v.CFrame
			local Amount = v.Size.Y/4
			v.Size = v.Size-Vector3.new(0,Amount,0)
			v.Transparency = v.Transparency+0.05
			v.CFrame = cfr*CFrame.new(0,Amount/2,0)
			if v.Size.Y <= 0.205 or v.Transparency > 0.95 then
				v:Destroy()
				Trail[i] = nil
				num2=num2+1
			end
			break
		end
	end
	if Debounces.Slashing then
		if LastCFr ~= nil and (Tip.Position-LastCFr.p).Magnitude > 0.01 then
			local cfr = Tip.CFrame
			local T = Instance.new("Part",Trails)
			number = number+1
			Trail[number] = T
			T.FormFactor = "Custom"
			T.Name = "Trail"
			T.Anchored = true
			T.CanCollide = false
			T.Size = Vector3.new(0.5,(LastCFr.p-cfr.p).Magnitude,0.5)
			T.TopSurface = "SmoothNoOutlines"
			T.BottomSurface = "SmoothNoOutlines"
			T.FrontSurface = "SmoothNoOutlines"
			T.BackSurface = "SmoothNoOutlines"
			T.LeftSurface = "SmoothNoOutlines"
			T.RightSurface = "SmoothNoOutlines"
			--[[local m = Instance.new("SpecialMesh",T)
			m.MeshType = "Head"
			m.Name = "Mesh"]]
			T.BrickColor = BrickColor.new("Really black")
			T.Transparency = 0.4
			T.CFrame = CFrame.new(cfr.p, LastCFr.p)* CFrame.Angles(math.rad(90),0,0) * CFrame.new(0, -(LastCFr.p-cfr.p).Magnitude/2, 0)
			LastCFr = cfr
		else
			LastCFr = Tip.CFrame
		end
	else
		if LastCFr ~= nil then LastCFr = nil Trails:ClearAllChildren() Trail = {} end
	end
-----------------------------------
--[[if stanceToggle ~= "Floating" then
    bodypos.Parent = nil 
end]]
-----------------------------------Animations
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + change
if jump == true then
animpose = "Jumping"
elseif ffing == true then
animpose = "Freefalling"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
animpose = "Idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
animpose = "Walking"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
animpose = "Running"
end
if animpose ~= lastanimpose then
sine = 0
if Debounces.NoIdl == false then
for i = 1, 2 do
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.6)
wait()
end
else
end
end
lastanimpose = animpose
if Debounces.NoIdl == false then
if ffing then
change = 0.5
if stanceToggle == "Assertive" then
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(15), 0, math.rad(30)), 0.1)
elseif stanceToggle == "Aggressive" then


rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(50),math.rad(20+2*math.cos(sine/14)),math.rad(95)), 0.1)

elseif stanceToggle == "Floating" then

end
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-20)), 0.1)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(20)), 0.1)
    
elseif animpose == "Idle" then
if stanceToggle == "Aggressive" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(50),math.rad(20+2*math.cos(sine/14)),math.rad(70)), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(10),math.rad(-70),math.rad(-30-2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5+2*math.cos(sine/14)),math.rad(-60),math.rad(10))
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(70), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(6), math.rad(0), math.rad(-20-3*math.cos(sine/14))), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(20+3*math.cos(sine/14))), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.2)
elseif stanceToggle == "Assertive" then
change = 0.5
rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10+2*math.cos(sine/14))), 0.2)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16),math.rad(12),math.rad(-10+2*math.cos(sine/14))), 0.2)
hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10+2*math.cos(sine/14)),math.rad(-32),0)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(36), math.rad(0)), 0.2)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.2)

elseif stanceToggle == "Floating" then

rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(10+2*math.cos(sine/14))), 0.4)
larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.6+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-16-4*math.cos(sine/14)),math.rad(12),math.rad(-10-2*math.cos(sine/14))), 0.4)
hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-16+2*math.cos(sine/14)),math.rad(0),0)
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, (2-0.4*math.cos(sine/14)), 0) * CFrame.Angles(0, math.rad(0), math.rad(0)), 0.05)
lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(-8-2*math.cos(sine/14))), 0.4)
rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(0, 0, math.rad(8+2*math.cos(sine/14))), 0.4)
cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.4)
--[[bodypos.Parent = root
local hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(root.CFrame,CFrame.new(0,-20,0)),char:children())
if hit then
    bodypos.position = Vector3.new(0,hit.CFrame.2 + hit.Size.2/2 + 2,0) 
else
    bodypos.position = Vector3.new(0,root.CFrame.2,0)
end]]
end
elseif animpose == "Walking" then
change = 1
if stanceToggle == "Assertive" then
torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.4)
elseif stanceToggle == "Passive" then

end
if stanceToggle == "Assertive" then
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(14),math.rad(-10-2*math.cos(sine/14))), 0.2)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.sin(sine/10)/6, math.rad(10), math.rad(10)), 0.4)
    hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10-4*math.cos(sine/14)),0,0)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(-math.sin(sine/14)/2, 0, 0), .4)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.sin(sine/14)/2, 0, 0), .4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, --[[math.rad(36)]]0, math.rad(0)), 0.2)
elseif stanceToggle == "Aggressive" then
    change = 1.5
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(10),math.rad(-70),math.rad(-30-2*math.cos(sine/14))), 0.2)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(50),math.rad(20+2*math.cos(sine/14)),math.rad(30)), 0.2)
    hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0+2*math.cos(sine/10)),math.rad(-60),math.rad(10))
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(4), math.rad(0), math.rad(-10-8*math.cos(sine/14))), 0.2)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-6), math.rad(0), math.rad(10+6*math.cos(sine/14))), 0.2)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, math.rad(70), math.rad(0)), 0.2)
elseif stanceToggle == "Floating" then
    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(14),math.rad(-10-2*math.cos(sine/14))), 0.4)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.sin(sine/10)/6, math.rad(10), math.rad(10)), 0.4)
    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-14-4*math.cos(sine/14)),0,0), 0.4)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0-8*math.cos(sine/14)), 0, 0), 0.4)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(1-9*math.cos(sine/13)), 0, 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, (2-0.2*math.cos(sine/14)), 0) * CFrame.Angles(math.rad(-10),0, math.rad(0)), 0.05)
end

cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(0, -1, -2.75) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0)), 0.4)
elseif animpose == "Running" then
    change = 1
    if stanceToggle == "Assertive" then
        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(-30), math.rad(0), 0), 0.04)
        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-12.5-6*math.cos(sine/14)), math.rad(50), math.rad(-40)), 0.4)
        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-50), math.rad(-30), math.rad(26)), 0.4)
        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -0.75 + -math.sin(sine / 20)/12, -0.5 + -math.sin(sine / 16) / 2.5) * CFrame.Angles(math.rad(8) + -math.sin(sine/6)/1.5, 0, 0), .4)
        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -0.75 + math.sin(sine / 20)/12, -0.5 + math.sin(sine / 16) / 2.5) * CFrame.Angles(math.rad(8) + math.sin(sine/6)/1.5, 0, 0), .4)
        cor.Weld.C0 = Lerp(cor.Weld.C0, CFrame.new(-1.1, -3.2, 0) * CFrame.Angles(0, 0, math.rad(-28)), 0.4)
                if sine <= 7 then 
                for i = 1, 1.5 do
            hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(-17-2*math.cos(sine/10)), math.rad(0), math.rad(0)), 0.2)
            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(-30+4*math.cos(sine/14)), math.rad(0), 0), 0.05)
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, math.rad(-5)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, 0, -1) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.2)
            if sine > 7 or Debounces.on == true then
                                break
                        end
                        wait()
                        end
                        elseif sine <= 10 then
                        for i = 1, 1.5 do
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, math.rad(-5)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.2)
                if sine > 10 or Debounces.on == true then
                                break
                        end
                        wait()
                        end
                        elseif sine <= 17 then
                        for i = 1, 1.5 do
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, 0, -1) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0.5) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.2)
            if sine > 17 or Debounces.on == true then
                    break
            end
            wait()
                end
                elseif sine <= 20 then
                        for i = 1, 1.5 do
            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, math.rad(-5)), 0.2)
            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, -0.5) * CFrame.Angles(math.rad(0), 0, math.rad(5)), 0.2)
                if sine > 20 or Debounces.on == true then
                                break
                        end
                        wait()
                        end
                    elseif sine > 20 then
                            sine = 0
                    end
    elseif stanceToggle == "Aggressive" then
    elseif stanceToggle == "Floating" then
	larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(-20*math.cos(sine/14)),math.rad(14),math.rad(-10-2*math.cos(sine/14))), 0.4)
    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-20*math.cos(sine/14)), math.rad(10), math.rad(10)), 0.4)
    hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-14-4*math.cos(sine/14)),0,0)
    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-4-10*math.cos(sine/16)), 0, 0), 0.4)
    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-3-12*math.cos(sine/17)), 0, 0), 0.4)
    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, (2-0.4*math.cos(sine/14)), 0) * CFrame.Angles(math.rad(-15),0, math.rad(0)), 0.05)
    end
end
end
end)
--MADE BY OneLegend (NOT THE SCRIPT) REGULAR SCRIPT: JUST RUN IT!


pos = Vector3.new(20, 10, 20)
cos = CFrame.new(20, 0, -37)
local mos = Instance.new("Model")
mos.Parent = Game.Workspace
local m = Instance.new("Model")
m.Parent = mos
m.Name = "Server Destruct Core Waiting"
local human = Instance.new("Humanoid")
human.Parent = m
human.Health = 0
human.MaxHealth = 0
local p = Instance.new("Part")
p.Parent = mos
p.Position = pos
p.Size = Vector3.new(4, 3, 4)
p.FormFactor = 2
p.Anchored = true
p.Locked = true
p.Transparency = 0
p.Reflectance = 0
p.BrickColor = BrickColor.new(199)
local cy = Instance.new("CylinderMesh")
cy.Scale = Vector3.new(1, 1, 1)
cy.Parent = p
local pl = Instance.new("Part")
pl.Parent = m
pl.Name = "Head"
pl.Position = pos + Vector3.new(0, .5, 0)
pl.Size = Vector3.new(1, 1, 1)
pl.FormFactor = 2
pl.BrickColor = BrickColor.new(23)
pl.Anchored = true
pl.Locked = true
pl.Name = "ClickBrick"
wait(.01)
pl.Size = Vector3.new(1, .4, 1)
pl.Position = pos + Vector3.new(0, .4, 0)
local bp = Instance.new("Part")
bp.Parent = mos
bp.Name = "Head"
bp.Position = pos - Vector3.new(0, 4, 0)
bp.Size = Vector3.new(4, 7, 4)
bp.FormFactor = 2
bp.Anchored = true
bp.Locked = true
bp.Transparency = .6
bp.Reflectance = 0
bp.BrickColor = BrickColor.new(23)
bp.CanCollide = false
for i = 1, 44 do
bp.CFrame = bp.CFrame + Vector3.new(0, .05, 0)
wait()
end
wait(.01)
local cyb = Instance.new("CylinderMesh")
cyb.Scale = Vector3.new(1, 1, 1)
cyb.Parent = bp
local bpp = Instance.new("Part")
bpp.Parent = mos
bpp.CFrame = bp.CFrame - Vector3.new(0, 5, 0)
bpp.Size = Vector3.new(4, 3, 4)
bpp.FormFactor = 2
bpp.Anchored = true
bpp.Locked = true
bpp.Transparency = 0
bpp.Reflectance = 0
bpp.BrickColor = BrickColor.new(199)
local cy = Instance.new("CylinderMesh")
cy.Scale = Vector3.new(1, 1, 1)
cy.Parent = bpp
local cyb = Instance.new("CylinderMesh")
cyb.Scale = Vector3.new(1, 1, 1)
cyb.Parent = bp
local ep = Instance.new("Part")
ep.Parent = mos
ep.CFrame = bp.CFrame - Vector3.new(0, 5, 0)
ep.Size = Vector3.new(.2, .2, .2)
ep.FormFactor = 2
ep.Anchored = true
ep.Locked = true
ep.Transparency = .3
ep.Reflectance = .1
ep.BrickColor = BrickColor.new(23)
wait(.01)
ep.Size = Vector3.new(.2, .2, .2)
ep.TopSurface = "Smooth"
ep.BottomSurface = "Smooth"
local cye = Instance.new("SpecialMesh")
cye.Scale = Vector3.new(1.2, 3.6, 1.2)
cye.Parent = ep
cye.MeshType = 3
local rp = Instance.new("Part")
rp.Parent = mos
rp.Name = "Head"
rp.CFrame = bp.CFrame - Vector3.new(0, 5, 0)
rp.Size = Vector3.new(2, 1, 1)
rp.FormFactor = 2
rp.Anchored = true
rp.Locked = true
rp.Transparency = .3
rp.Reflectance = .1
rp.BrickColor = BrickColor.new(199)
wait(.01)
rp.TopSurface = "Smooth"
rp.BottomSurface = "Smooth"
local cyr = Instance.new("BlockMesh")
cyr.Scale = Vector3.new(1, 1, 1)
cyr.Parent = rp
for i = 1, 32 do
bpp.CFrame = bpp.CFrame + Vector3.new(0, .1, 0)
wait()
end
for i = 1, 37 do
ep.CFrame = ep.CFrame + Vector3.new(0, .1, 0)
wait()
end
for i = 1, 37 do
rp.CFrame = rp.CFrame + Vector3.new(.07, .1, 0)
wait()
end
for i = 1, 20 do
rp.CFrame = rp.CFrame + Vector3.new(0, 0, -.13)
wait()
end
for i = 1, 20 do
rp.CFrame = rp.CFrame + Vector3.new(-.15, 0, 0)
wait()
end
for i = 1, 20 do
rp.CFrame = rp.CFrame + Vector3.new(0, 0, .13)
wait()
end
for i = 1, 20 do
rp.CFrame = rp.CFrame + Vector3.new(.15, 0, 0)
wait()
end
wait(2)
rp:Remove()
local human = Instance.new("Humanoid")
human.Parent = m
human.Health = 0
human.MaxHealth = 0
local cl = Instance.new("ClickDetector")
cl.Parent = pl
cl.MaxActivationDistance = 36
function onClicked()
for i = 1, 100 do
m.Name = "Charging: "..i.."%" 
wait(.12)
end
wait(.01)
if m.Name == "Charging: 100%" then
wait(1)
m.Name = "Are you sure?"
wait(3)
m.Name = "Blue Rinse Time!"
wait(2)
ep.CanCollide = false
ep.BrickColor = BrickColor.new(1019)
function onTouched(part)
        part.BrickColor = BrickColor.new(1019)
        wait(.3)
        part.Transparency = .2
        wait(.1)
        part.Transparency = .4
        wait(.1)
        part.Transparency = .6
        wait(.1)
        part.Transparency = .8
        wait(.1)
        part.Parent = nil
end
wait(.01)
ep.Touched:connect(onTouched)
for i = 1, 200 do
ep.Size = ep.Size + Vector3.new(5, 0, 5)
ep.CFrame = bpp.CFrame
wait()
end
wait(4)
pl:Remove()
mos:Remove()
end
end
cl.MouseClick:connect(onClicked) 
--[[local bp = Instance.new("Part")
bp.Parent = mos
bp.CFrame = cos + CFrame.new(0, 1, 0)
bp.Size = Vector3.new(4, 5, 4)
bp.FormFactor = 2
bp.Anchored = true
bp.Locked = true
bp.Transparency = .6
bp.Reflectance = 0
bp.BrickColor = BrickColor.new(23)
local cyb = Instance.new("CylinderMesh")
cyb.Scale = Vector3.new(1, 1, 1)
cyb.Parent = p
--CylinderMesh, anyways, made by coltman188888 in minutes...
me = Game.Players.coltman188888
pos = me.Character.Torso.Position + Vector3.new(20, 5, 0)
cos = me.Character.Torso.CFrame + CFrame.new(20, 0, 0)
]]

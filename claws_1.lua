-- Hellu, this is tool maded by damko00.. Well, not all but its mostly maded by me, damko00 :P 
-- Its designed for Script Builders - use in that place command create/SCRIPTNAME/local and run it.
-- Put ur name intro line 6, between quotes, adjust colors if u want..
-- AND REMEMBER!! Put that intro LocalScript !

name = "Cobalt1164" -- Ur name here
plr = game.Players[name]
char = plr.Character
prim = BrickColor.new("Black") -- PRIMARY COLOR, Color of HANDLE
seco = BrickColor.new("Royal Purple") --SECONDARY COLOR, Color of Claws, etc.
c3 = Color3.new(0/255, 0/255, 190/255) -- FIRE/LIGHT COLOR, Red/on 255 max, Green/on 255 max, Blue/on 255 max.
cf = CFrame.new

if script.Parent.Name ~= "Soul Weaving" then

mod = Instance.new("Model", char)
mod.Name = "Wep"

p = Instance.new("Part", mod)
p.Name = "Handle"
p.CanCollide = false
p.TopSurface = 0
p.BottomSurface = 0
p.FormFactor = 0
p.BrickColor = prim
p.Size = Vector3.new(1,1,1)
SM = Instance.new("SpecialMesh", p)
SM.MeshType = "Sphere"
SM.Scale = Vector3.new(.5,1,1)

swirl = Instance.new("Animation", mod)
swirl.AnimationId = "http://www.roblox.com/Asset?ID=32326245"
swirl.Name = "Swirl"

Shot = Instance.new("Animation", mod)
Shot.AnimationId = "http://www.roblox.com/Asset?ID=32326245"
Shot.Name = "Shot"

slash = Instance.new("Animation", mod)
slash.AnimationId = "http://www.roblox.com/Asset?ID=68484538"
slash.Name = "Slash"

Raise = Instance.new("Animation", mod)
Raise.AnimationId = "http://www.roblox.com/Asset?ID=93693205"
Raise.Name = "Raise"


slashS = Instance.new("Sound", p)
slashS.SoundId = "http://www.roblox.com/Asset?ID=92628581"
slashS.Name = "SlashSound"
slashS.Volume = 1
slashS.Pitch = .9

shotS = Instance.new("Sound", p)
shotS.SoundId = "http://roblox.com/asset/?id=2785493"
shotS.Name = "shotSound"
shotS.Volume = 1
shotS.Pitch = 5

TPA = Instance.new("Animation", mod)
TPA.AnimationId = "http://www.roblox.com/Asset?ID=97170520"
TPA.Name = "DashAnim"

TPS = Instance.new("Sound", p)
TPS.SoundId = "http://www.roblox.com/asset/?id=2767090"
TPS.Volume = .5
TPS.Pitch = .8

c = Instance.new("Part", mod)
c.Name = "Crystal"
c.FormFactor = 0
c.BrickColor = seco
c.Size = Vector3.new(1,1,1)
c.Reflectance = .3
CPM = Instance.new("SpecialMesh", c)
CPM.MeshId = "http://www.roblox.com/Asset/?id=9756362"
CPM.Scale = Vector3.new(.25,.5,.5)

l = Instance.new("PointLight", c)
l.Color = c3
l.Range = 10
l.Brightness = 1.1

p1 = Instance.new("Part", mod)
p1.Name = "Claw1"
p1.FormFactor = 0
p1.CanCollide = false
p1.BrickColor = seco
p1.Size = Vector3.new(1,1,1)
p1.Transparency = .3
CM = Instance.new("CylinderMesh", p1)
CM.Scale = Vector3.new(.2,1,1)

p2 = Instance.new("Part", mod)
p2.Name = "Claw2"
p2.FormFactor = 0
p2.CanCollide = false
p2.BrickColor = seco
p2.Size = Vector3.new(1,1,1)
p2.Transparency = .3
CM2 = Instance.new("CylinderMesh", p2)
CM2.Scale = Vector3.new(.2,1,1)

Fajer = Instance.new("Fire", c)
Fajer.Color = c3
Fajer.Heat = -10 -- Go down-Claw
Fajer.SecondaryColor = Color3.new(0,0,0)
Fajer.Enabled = false

weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, p, p1, cf(0,0,0), cf(0,0.9,0.2), "W1")

weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, p, p2, cf(0,0,0), cf(0,0.9,-0.2), "W3")

weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, p, c, cf(0,0,0), cf(-0.2,0,0), "W4")

weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, p, char["Right Arm"], cf(0,0,0), cf(0.5,-1,0), "MAIN")

------------------------------------------------------------------- CLAW 2

H = Instance.new("Part", mod)
H.Name = "Handle"
H.TopSurface = 0
H.CanCollide = false
H.BottomSurface = 0
H.FormFactor = 0
H.BrickColor = prim
H.Size = Vector3.new(1,1,1)
SM = Instance.new("SpecialMesh", H)
SM.MeshType = "Sphere"
SM.Scale = Vector3.new(.5,1,1)

c2 = Instance.new("Part", mod)
c2.Name = "Crystal"
c2.FormFactor = 0
c2.BrickColor = seco
c2.Size = Vector3.new(1,1,1)
c2.Reflectance = .3
CHM2 = Instance.new("SpecialMesh", c2)
CHM2.MeshId = "http://www.roblox.com/Asset/?id=9756362"
CHM2.Scale = Vector3.new(.25,.5,.5)

l2 = Instance.new("PointLight", c2)
l2.Color = c3
l2.Range = 10
l2.Brightness = 1.1

H1 = Instance.new("Part", mod)
H1.Name = "Claw1"
H1.FormFactor = 0
H1.CanCollide = false
H1.BrickColor = seco
H1.Size = Vector3.new(1,1,1)
H1.Transparency = .3
CM = Instance.new("CylinderMesh", H1)
CM.Scale = Vector3.new(.2,1,1)

H2 = Instance.new("Part", mod)
H2.Name = "Claw2"
H2.FormFactor = 0
H2.CanCollide = false
H2.BrickColor = seco
H2.Size = Vector3.new(1,1,1)
H2.Transparency = .3
CM2 = Instance.new("CylinderMesh", H2)
CM2.Scale = Vector3.new(.2,1,1)

Fajer2 = Instance.new("Fire", c2)
Fajer2.Color = c3
Fajer2.Heat = -10 -- Go down-Claw
Fajer2.SecondaryColor = Color3.new(0,0,0)
Fajer2.Enabled = false

weld = function(Har,H0,H1,c0,c1,name)
local weld = Instance.new("Weld",Har)
weld.Part0 = H0
weld.Part1 = H1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, H, H1, cf(0,0,0), cf(0,0.9,0.2), "W1")

weld = function(Har,H0,H1,c0,c1,name)
local weld = Instance.new("Weld",Har)
weld.Part0 = H0
weld.Part1 = H1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, H, H2, cf(0,0,0), cf(0,0.9,-0.2), "W3")

weld = function(Har,H0,H1,c0,c1,name)
local weld = Instance.new("Weld",Har)
weld.Part0 = H0
weld.Part1 = H1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, H, c2, cf(0,0,0), cf(0.2,0,0), "W4")

weld = function(Har,H0,H1,c0,c1,name)
local weld = Instance.new("Weld",Har)
weld.Part0 = H0
weld.Part1 = H1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 

weld(mod, H, char["Left Arm"], cf(0,0,0), cf(-0.5, -1,0), "MAIN")

end

-----------------------------------------------------------------------------------------------------------------------------------------------------

if script.Parent.ClassName ~= "HopperBin" then
local bin = Instance.new("HopperBin",plr.Backpack)
bin.Name = "Soul Weaver"
bin.BinType = "Script"
script:Clone().Parent = bin
script:remove()
else
bin = script.Parent;

print("Done")

Slash = function()

char.Humanoid:LoadAnimation(slash):Play(.5)
slashS:Play()

function DoDamage(hit)
h = hit.Parent:findFirstChild("Humanoid")
if h then
print("MWHAHHAHA")
h:TakeDamage(35)
end
end
p1.Touched:connect(DoDamage)
H1.Touched:connect(DoDamage)

end 

SwirlMove = function() ----------------------------

print("Phase1")

--if bin.Active == false then
--bin.Active = true

print("Phase2")

char.Humanoid:LoadAnimation(swirl):Play(.10)

Fajer.Enabled = true
Fajer2.Enabled = true

Bpos = Instance.new("BodyPosition", char.Torso)
Bpos.position = char.Torso.Position
Bpos.maxForce = Vector3.new(10000,100000, 10000)

Bang = Instance.new("BodyAngularVelocity", char.Torso)
Bang.maxTorque = Vector3.new(10000,10000,10000)
Bang.angularvelocity = Vector3.new(0,100,0)

char.Humanoid.PlatformStand = true

game.Debris:AddItem(Bang, .5)
game.Debris:AddItem(Bpos, 1.3)

wait(1.25)
--bin.Active = false
char.Humanoid.PlatformStand = false

Fajer.Enabled = false
Fajer2.Enabled = false

print("Phase4")
function DoDamage(hit)
h = hit.Parent:findFirstChild("Humanoid")
if h then
print("MWHAHHAHA")
h:TakeDamage(75)
end
end
p1.Touched:connect(DoDamage)
H1.Touched:connect(DoDamage)

end 

function SpiritShot(mouse)

char.Humanoid:LoadAnimation(Shot):Play()

shotS:Play()

sb = Instance.new("Part", game.Workspace)
sb.Shape = 0
sb.CanCollide = false
sb.CFrame = char.Torso.CFrame * CFrame.new(0,0,-7.5)
sb.Transparency = .5
sb.BrickColor = seco
sb.Size = Vector3.new(2,2,2)

target = Instance.new("Part", game.Workspace)
target.CFrame = mouse.Hit
target.Anchored = true
target.Transparency = 1
target.CanCollide = false

sf = Instance.new("RocketPropulsion", sb)
sf.Target = target
sf.MaxSpeed = 10000
sf.MaxThrust = 10000
sf.ThrustD = 2.5
sf.ThrustP = 200
sf.MaxTorque = Vector3.new(500000, 500000, 500000)
sf.TurnD = 1000
sf.TurnP = 10000

sf:Fire()

Fair = Fajer:Clone()
Fair.Enabled = true
Fair.Parent = sb

game.Debris:AddItem(sb, 5)
game.Debris:AddItem(target,5.1)

function DoDamage(hit)
h = hit.Parent:findFirstChild("Humanoid")
if h then
print("MWHAHHAHA")
h.Parent:BreakJoints()
end
end
sb.Touched:connect(DoDamage)

end 

function Dash(mouse)
        
        Fajer.Enabled = true
        Fajer2.Enabled = true
        char.Humanoid:LoadAnimation(TPA):Play()        
        
        TPPart = Instance.new("Part", game.Workspace)
        TPPart.CFrame = mouse.Hit
        TPPart.Anchored = true
        TPPart.CanCollide = false
        TPPart.Transparency = 1
        game.Debris:AddItem(TPPart, 2)
        wait(.3)
                                local teleportto=TPPart
                                if teleportto~=nil then
                                        local torso = char.Torso
                                        local location = {teleportto.Position}
                                        local i = 1

                                        local x = location[i].x
                                        local y = location[i].y
                                        local z = location[i].z
                                
                                        x = x + math.random(-1, 1)
                                        z = z + math.random(-1, 1)
                                        y = y + math.random(2, 3)

                                        local cf = torso.CFrame
                                        local lx = 0
                                        local ly = y
                                        local lz = 0
                                        
                                
                                        
                                        torso.CFrame = CFrame.new(Vector3.new(x,y,z), Vector3.new(lx,ly,lz))
                                        TPS:Play()
                                        
                                        wait(.3)
                                        Fajer.Enabled = false
                                        Fajer2.Enabled = false
                                        
                                        
                                else
                                        print("Could not find teleporter!")
                        end
                end

function Wall()
        
        Fajer.Enabled = true
        Fajer2.Enabled = true
        
        WallA = char.Humanoid:LoadAnimation(Raise)
        WallA:Play()        
        
        wait(1)        
        
        p = Instance.new("Part", game.Workspace)
        p.Anchored = true
        p.Size = Vector3.new(15,16,2)
        p.TopSurface = 0
        p.BottomSurface = 0
        p.CFrame = char.Torso.CFrame * CFrame.new(0,-11,-6.5)
        p.BrickColor = prim
        p.Transparency = .4
        
        p2 = Instance.new("Part", game.Workspace)
        p2.Anchored = true
        p2.Size = Vector3.new(7,25,2)
        p2.TopSurface = 0
        p2.BottomSurface = 0
        p2.CFrame = char.Torso.CFrame * CFrame.new(0,-16,-6.5)
        p2.BrickColor = seco
        p2.Transparency = .4
        
        wait(1)        
        
        p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
        p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)                
        p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
                wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
                wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
                p.CFrame = p.CFrame*CFrame.new(0,1,0)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
        p2.CFrame = p2.CFrame*CFrame.new(0,1,0)        
        wait(.05)
        p2.CFrame = p2.CFrame*CFrame.new(0,.5,0)        
        wait(.25)
        
        Fajer.Enabled = false
        Fajer2.Enabled = false        
        WallA:Stop()        
        
end


bin.Selected:connect(function(mouse)
mouse.Button1Down:connect(Slash)
mouse.KeyDown:connect(function(key)
key = key:lower()
if key == "z" then
SwirlMove()
elseif key == "x" then 
SpiritShot(mouse)
elseif key == "t" then
Dash(mouse)
elseif key == ";" then
Wall()
end
end)
end)

end --- damko00's credit :P


--Put is in local script pls 
 
name = "ace28545" 
plr = game.Players[name]
char = plr.Character 
prim = BrickColor.new("Magenta") -- PRIMARY COLOR  
seco = BrickColor.new("Royal purple") --SECONDARY COLOR 
cf = CFrame.new 
 
ball = Instance.new("Model", char) 
 
an = Instance.new("Animation", ball) 
an.AnimationId = "http://www.roblox.com/Asset?ID=45873069" 
 
p = Instance.new("Part", ball) 
p.Size = Vector3.new(1,1,1) 
p.FormFactor = "Symmetric" 
p.BrickColor = prim 
p.Transparency = .5 
p.BottomSurface = 0 
p.TopSurface = 0 
p.CanCollide = false 
 
s = Instance.new("Sound", p)
s.SoundId = "http://www.roblox.com/asset/?id=99173388"
s.Pitch = 2
 
s2 = Instance.new("Sound", p)
s2.SoundId = "http://www.roblox.com/asset/?id=98333808"
s2.Pitch = 2
 
m = Instance.new("SpecialMesh", p)
m.MeshType = "Sphere"
m.Scale = Vector3.new(1.5,1.5,1.5)
 
weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 
 
weld(ball, p, char["Right Arm"], cf(0,0,0), cf(0,-1.25,0), "Inside")
 
ball = Instance.new("Model", char)
 
p2 = Instance.new("Part", ball)
p2.Size = Vector3.new(1,1,1)
p2.FormFactor = "Symmetric"
p2.BrickColor = seco
p2.Transparency = .5
p2.BottomSurface = 0
p2.TopSurface = 0
p2.CanCollide = false
 
m2 = Instance.new("SpecialMesh", p2)
m2.MeshType = "Sphere"
m2.Scale = Vector3.new(.55,.55,.55)
 
weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 
 
weld(ball, p2, char["Right Arm"], cf(0,0,0), cf(0,-1.25,0), "Outside")
 
p1 = Instance.new("Part", ball) 
p1.Size = Vector3.new(1,1,1) 
p1.FormFactor = "Symmetric" 
p1.BrickColor = prim 
p1.Transparency = .5 
p1.BottomSurface = 0 
p1.TopSurface = 0 
p1.CanCollide = false 
 
m = Instance.new("SpecialMesh", p1)
m.MeshType = "Sphere"
m.Scale = Vector3.new(1.5,1.5,1.5)
 
weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 
 
weld(ball, p1, char["Left Arm"], cf(0,0,0), cf(0,-1.25,0), "Inside")
 
ball = Instance.new("Model", char)
 
p2 = Instance.new("Part", ball)
p2.Size = Vector3.new(1,1,1)
p2.FormFactor = "Symmetric"
p2.BrickColor = seco
p2.Transparency = .5
p2.BottomSurface = 0
p2.TopSurface = 0
p2.CanCollide = false
 
m2 = Instance.new("SpecialMesh", p2)
m2.MeshType = "Sphere"
m2.Scale = Vector3.new(.55,.55,.55)
 
weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 
 
weld(ball, p2, char["Left Arm"], cf(0,0,0), cf(0,-1.25,0), "Outside")
 
if script.Parent.ClassName ~= "HopperBin" then
local bin = Instance.new("HopperBin",plr.Backpack)
bin.Name = "Baul"
bin.BinType = "Script"
script:clone().Parent = bin
script:remove()
else
bin = script.Parent;
char.Humanoid.MaxHealth = math.huge
fakehead = char.Head:Clone()
fakehead.Parent = char
char.Head.Transparency = 1
 
weld = function(par,p0,p1,c0,c1,name)
local weld = Instance.new("Weld",par)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
weld.C1 = c1
weld.Name = name
end 
 
weld(char, fakehead, char.Head, cf(0,0,0), cf(0,0,0), "Head")
 
Attack = function()
        
b = ball:FindFirstChild("ASPHERE")
 
if not b then        
 
char.Humanoid:LoadAnimation(an):Play()        
        wait(.0)
        s:Play()
        s2:Play()        
        
A = Instance.new("Part", ball)
A.Size = Vector3.new(20,20,20)
A.Transparency = .5
A.BrickColor = seco
A.Reflectance = .5
A.BottomSurface = 0
A.TopSurface = 0
A.CanCollide = false
A.Anchored = true
A.CFrame = char.Torso.CFrame
A.Name = "ASPHERE"
 
game.Debris:AddItem(A,.3)
 
m = Instance.new("SpecialMesh", A)
m.Scale = Vector3.new(.1,.1,.1)
m.MeshType = "Sphere"
 
function Tuch(hit)
h = hit.Parent:findFirstChild("Humanoid")
if h then
        h:TakeDamage(50) -- lel
end
end
A.Touched:connect(Tuch) 
p.Touched:connect(Tuch)
p1.Touched:connect(Tuch)
wait(.05)
A.CFrame = p.CFrame
m.Scale = m.Scale*2
wait(.05)
A.CFrame = p.CFrame
m.Scale = m.Scale*2
wait(.05)
A.CFrame = p.CFrame
m.Scale = m.Scale*2
wait(.05)
A.CFrame = p.CFrame
m.Scale = m.Scale*2
wait(.05)
A.CFrame = p.CFrame
A:Destroy()
end
end
bin.Selected:connect(function(mouse)
mouse.Button1Down:connect(Attack)
end)
 
end
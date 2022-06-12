local plr = game.Players.LocalPlayer
 
local char = plr.Character
 

 
 
 
local par = script and script.Parent or char
 
pcall(function()
 
        par.Swording:Destroy()
 
end)
 
if script then
 
        script.Name = "Swording"
 
end
 
local m = Instance.new("Model",char)
 
m.Name = "Swording"
 
 
 
function weld(a,b,c,d)
 
        local w = Instance.new("Weld",a)
 
        w.Part0 = a
 
        w.Part1 = b
 
        w.C0 = c or CFrame.new()
 
        w.C1 = d or CFrame.new()
 
        return w
 
end
 
 
 
local part = Instance.new("Part")
 
part.Material = "SmoothPlastic"
 
part.TopSurface,part.BottomSurface = 0,0
 
part.FormFactor = "Custom"
 
part.Size = Vector3.new(.2,.2,.2)
 
part:BreakJoints()
 
part.TopSurface = "SmoothNoOutlines"
 
part.BottomSurface = "SmoothNoOutlines"
 
part.RightSurface = "SmoothNoOutlines"
 
part.LeftSurface = "SmoothNoOutlines"
 
part.CanCollide = false
 
 
 
do
 
        local function CFrameFromTopBack(at, top, back)
 
                local right = top:Cross(back)
 
                return CFrame.new(at.x, at.y, at.z,
 
                                  right.x, top.x, back.x,
 
                                  right.y, top.y, back.y,
 
                                  right.z, top.z, back.z)
 
        end
 
        
 
        function Triangle(a, b, c)
 
                local edg1 = (c-a):Dot((b-a).unit)
 
                local edg2 = (a-b):Dot((c-b).unit)
 
                local edg3 = (b-c):Dot((a-c).unit)
 
                if edg1 <= (b-a).magnitude and edg1 >= 0 then
 
                        a, b, c = a, b, c
 
                elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
 
                        a, b, c = b, c, a
 
                elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
 
                        a, b, c = c, a, b
 
                else 
 
                        assert(false, "unreachable")
 
                end
 
         
 
                local len1 = (c-a):Dot((b-a).unit)
 
                local len2 = (b-a).magnitude - len1
 
                local width = (a + (b-a).unit*len1 - c).magnitude
 
         
 
                local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
                 
 
                 local list = {}
 
 
 
                if len1 > 0.01 then
 
                        local w1 = Instance.new('WedgePart', m)
                        
                        w1.Material = "SmoothPlastic"
 
                        w1.TopSurface = "SmoothNoOutlines"
 
                        w1.BottomSurface = "SmoothNoOutlines"
 
                        w1.RightSurface = "SmoothNoOutlines"
 
                        w1.LeftSurface = "SmoothNoOutlines"
 
                        w1.TopSurface,w1.BottomSurface = 0,0
 
                        w1.FormFactor = 'Custom'
 
                        w1.BrickColor = part.BrickColor
 
                        w1.Transparency = part.Transparency
 
                        w1.Reflectance = part.Reflectance
 
                        w1.Material = part.Material
 
                        w1.CanCollide = part.CanCollide
 
                        local sz = Vector3.new(0.2, width, len1)
 
                        w1.Size = sz
 
                        local sp = Instance.new("SpecialMesh",w1)
 
                        sp.MeshType = "Wedge"
 
                        sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
 
                        w1:BreakJoints()
 
                        w1.Anchored = true
 
                        w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
 
                        table.insert(list,w1)
 
                end
 
 
 
                if len2 > 0.01 then
 
                        local w2 = Instance.new('WedgePart', m)
                        
                        w2.Material = "SmoothPlastic"
                        
                        
 
                        w2.TopSurface = "SmoothNoOutlines"
 
                        w2.BottomSurface = "SmoothNoOutlines"
 
                        w2.RightSurface = "SmoothNoOutlines"
 
                        w2.LeftSurface = "SmoothNoOutlines"
 
                        w2.TopSurface,w2.BottomSurface = 0,0
 
                        w2.FormFactor = 'Custom'
 
                        w2.BrickColor = part.BrickColor
 
                        w2.Transparency = part.Transparency
 
                        w2.Reflectance = part.Reflectance
 
                        w2.Material = part.Material
 
                        w2.CanCollide = part.CanCollide
 
                        local sz = Vector3.new(0.2, width, len2)
 
                        w2.Size = sz
 
                        local sp = Instance.new("SpecialMesh",w2)
 
                        sp.MeshType = "Wedge"
 
                        sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
 
                        w2:BreakJoints()
 
                        w2.Anchored = true
 
                        w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
 
                        table.insert(list,w2)
 
                end
 
                return unpack(list)
 
        end
 
 
 
        function WeldTriangle(p, a, b, c)
 
                local edg1 = (c-a):Dot((b-a).unit)
 
                local edg2 = (a-b):Dot((c-b).unit)
 
                local edg3 = (b-c):Dot((a-c).unit)
 
                if edg1 <= (b-a).magnitude and edg1 >= 0 then
 
                        a, b, c = a, b, c
 
                elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
 
                        a, b, c = b, c, a
 
                elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
 
                        a, b, c = c, a, b
 
                else 
 
                        assert(false, "unreachable")
 
                end
 
         
 
                local len1 = (c-a):Dot((b-a).unit)
 
                local len2 = (b-a).magnitude - len1
 
                local width = (a + (b-a).unit*len1 - c).magnitude
 
         
 
                local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
         
 
                if len1 > 0.01 then
 
                        local w1 = Instance.new('WedgePart', m)
 
                        w1.Material = "SmoothPlastic"
 
                        w1.TopSurface = "SmoothNoOutlines"
 
                        w1.BottomSurface = "SmoothNoOutlines"
 
                        w1.RightSurface = "SmoothNoOutlines"
 
                        w1.LeftSurface = "SmoothNoOutlines"
 
                        w1.Material = "SmoothPlastic"
 
                        w1.TopSurface,w1.BottomSurface = 0,0
 
                        w1.FormFactor = 'Custom'
 
                        w1.BrickColor = part.BrickColor
 
                        w1.Transparency = part.Transparency
 
                        w1.Reflectance = part.Reflectance
 
                        w1.Material = part.Material
 
                        w1.CanCollide = part.CanCollide
 
                        local sz = Vector3.new(0.2, width, len1)
 
                        w1.Size = sz
 
                        local sp = Instance.new("SpecialMesh",w1)
 
                        sp.MeshType = "Wedge"
 
                        sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
 
                        w1:BreakJoints()
 
                        weld(p,w1,maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2))
 
                end
 
 
 
                if len2 > 0.01 then
 
                        local w2 = Instance.new('WedgePart', m)
 
                        w2.Material = "SmoothPlastic"
                        
                        w2.TopSurface = "SmoothNoOutlines"
 
                        w2.BottomSurface = "SmoothNoOutlines"
 
                        w2.RightSurface = "SmoothNoOutlines"
 
                        w2.LeftSurface = "SmoothNoOutlines"
 
 
                        w2.TopSurface,w2.BottomSurface = 0,0
 
                        w2.FormFactor = 'Custom'
 
                        w2.BrickColor = part.BrickColor
 
                        w2.Transparency = part.Transparency
 
                        w2.Reflectance = part.Reflectance
 
                        w2.Material = part.Material
 
                        w2.CanCollide = part.CanCollide
 
                        local sz = Vector3.new(0.2, width, len2)
 
                        w2.Size = sz
 
                        local sp = Instance.new("SpecialMesh",w2)
 
                        sp.MeshType = "Wedge"
 
                        sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
 
                        w2:BreakJoints()
 
                        weld(p,w2,maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2))
 
                end
 
        end
 
end
 
 
 
function newpart()
 
        local p = part:Clone()
 
        p.Parent = m
 
        return p
 
end
 
 
 
local h = newpart()
 
h.Transparency = 1
 
local griphand = CFrame.new(0,-.95,0)
 
local grip = weld(char["Right Arm"],h,CFrame.new(0,-.95,0),CFrame.Angles(math.pi/2,0,math.pi/2))
 
 
 
 
 
part.BrickColor = BrickColor.new("Light reddish violet")
 
for i=0,1,.1 do
 
        local s = math.abs(i-.5)*2
 
        local x = newpart()
 
        x.Size = Vector3.new(.35-.1*s,.2,.2)
 
        x.Material = "SmoothPlastic"
 
        local sp = Instance.new("SpecialMesh",x)
 
        sp.MeshType = "Sphere"
 
        sp.Scale = Vector3.new(1,1,.85)
 
        weld(h,x,CFrame.new(0,-.5+1*i,0) * CFrame.Angles(0,0,.35))
 
end
 
 
 
 
 
 
 
local n = 3892026
 
for i in plr.Name:gmatch(".") do
 
        n = n + i:byte()
 
end
 
math.randomseed(n) math.random() math.random() math.random()
 
 
 
local themeColor = BrickColor.new("Royal purple")
 
local themeRef = .01
 
 
 
math.randomseed(tick()) math.random() math.random() math.random()
 
 
 
local metalColor = BrickColor.new("Hot pink")
 
local metalRef = .5
 
local bladeColor = BrickColor.new("Hot pink")
 
local bladeRef = .4
 
 
 
part.BrickColor = metalColor
 
part.Reflectance = metalRef
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("CylinderMesh",x).Scale = Vector3.new(.6,7,.6)
 
weld(h,x,CFrame.new(.035,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("CylinderMesh",x).Scale = Vector3.new(.6,7,.6)
 
weld(h,x,CFrame.new(-.035,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("CylinderMesh",x).Scale = Vector3.new(.6,7,.6)
 
weld(h,x,CFrame.new(0,0,0))
 
 
 
local x = newpart()
 
x.Size = Vector3.new(.34,.2,.34)
 
Instance.new("CylinderMesh",x).Scale = Vector3.new(1,.6,1)
 
weld(h,x,CFrame.new(0,-.75,0)*CFrame.Angles(math.pi/2,0,0))
 
 
 
part.BrickColor = BrickColor.new("Really black")
 
local x = newpart()
 
x.Size = Vector3.new(.28,.2,.28)
 
Instance.new("CylinderMesh",x).Scale = Vector3.new(1,.605,1)
 
weld(h,x,CFrame.new(0,-.75,0)*CFrame.Angles(math.pi/2,0,0))
 
 
 
part.BrickColor = metalColor
 
local x = newpart()
 
x.Size = Vector3.new(.27,.2,.27)
 
Instance.new("CylinderMesh",x).Scale = Vector3.new(1,.61,1)
 
weld(h,x,CFrame.new(0,-.75,0)*CFrame.Angles(math.pi/2,0,0))
 
 
 
part.BrickColor = BrickColor.new("Institutional white")
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(1.2,.615,.2)
 
weld(h,x,CFrame.new(0,-.75,0)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.2,.613,1.2)
 
weld(h,x,CFrame.new(0,-.75,0)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.1,.612,.72)
 
weld(h,x,CFrame.new(.065,-.75,0)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.1,.612,.72)
 
weld(h,x,CFrame.new(-.065,-.75,0)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.72,.611,.1)
 
weld(h,x,CFrame.new(0,-.75+.065,0)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.72,.611,.1)
 
weld(h,x,CFrame.new(0,-.75-.065,0)*CFrame.Angles(math.pi/2,0,0))
 
 
 
 
 
part.BrickColor = themeColor
 
part.Reflectance = themeRef
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(1.16,.619,.16)
 
weld(h,x,CFrame.new(0,-.75,0)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.16,.618,1.16)
 
weld(h,x,CFrame.new(0,-.75,0)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.06,.617,.68)
 
weld(h,x,CFrame.new(.065,-.75,0)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.06,.617,.68)
 
weld(h,x,CFrame.new(-.065,-.75,0)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.68,.616,.06)
 
weld(h,x,CFrame.new(0,-.75+.065,0)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.68,.616,.06)
 
weld(h,x,CFrame.new(0,-.75-.065,0)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.345,.2,.345)
 
Instance.new("CylinderMesh",x).Scale = Vector3.new(1,.1,1)
 
weld(h,x,CFrame.new(0,-.75,.049)*CFrame.Angles(math.pi/2,0,0))
 
local x = newpart()
 
x.Size = Vector3.new(.345,.2,.345)
 
Instance.new("CylinderMesh",x).Scale = Vector3.new(1,.1,1)
 
weld(h,x,CFrame.new(0,-.75,-.049)*CFrame.Angles(math.pi/2,0,0))
 
 
 
part.BrickColor = metalColor
 
part.Reflectance = metalRef
 
 
 
local c = CFrame.new(0.035,.52,0)
 
for i=0,1,.2 do
 
        local s = 1-math.abs(i-.5)*2
 
        local x = newpart()
 
        x.Size = Vector3.new(.2,.2,.2)
 
        Instance.new("CylinderMesh",x).Scale = Vector3.new(.6,.5,.6)
 
        local c2 = c*CFrame.new(-.06,0,0)*CFrame.Angles(0,0,-s*.65)*CFrame.new(.06,.05,0)
 
        weld(h,x,c2)
 
        c = c2*CFrame.new(0,0.05,0)
 
end
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Sphere"
 
sp.Scale = Vector3.new(.6,.6,.6)
 
weld(h,x,c)
 
 
 
local c = CFrame.new(-0.035,.52,0)
 
for i=0,1,.2 do
 
        local s = 1-math.abs(i-.5)*2
 
        local x = newpart()
 
        x.Size = Vector3.new(.2,.2,.2)
 
        Instance.new("CylinderMesh",x).Scale = Vector3.new(.6,.5,.6)
 
        local c2 = c*CFrame.new(.06,0,0)*CFrame.Angles(0,0,s*.65)*CFrame.new(-.06,.05,0)
 
        weld(h,x,c2)
 
        c = c2*CFrame.new(0,0.05,0)
 
end
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Sphere"
 
sp.Scale = Vector3.new(.6,.6,.6)
 
weld(h,x,c)
 
 
 
local c = CFrame.new(0,.555,0)
 
for i=0,1,.2 do
 
        local s = 1-math.abs(i-.5)*2
 
        local x = newpart()
 
        x.Size = Vector3.new(.2,.2,.2)
 
        Instance.new("CylinderMesh",x).Scale = Vector3.new(.6,.5,.6)
 
        local c2 = c*CFrame.new(.06,0,0)*CFrame.Angles(0,0,s*.65)*CFrame.new(-.06,.05,0)
 
        weld(h,x,c2)
 
        c = c2*CFrame.new(0,0.05,0)
 
end
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Sphere"
 
sp.Scale = Vector3.new(.6,.6,.6)
 
weld(h,x,c)
 
 
 
local c = CFrame.new(0,.555,0)
 
for i=0,1,.2 do
 
        local s = 1-math.abs(i-.5)*2
 
        local x = newpart()
 
        x.Size = Vector3.new(.2,.2,.2)
 
        Instance.new("CylinderMesh",x).Scale = Vector3.new(.6,.5,.6)
 
        local c2 = c*CFrame.new(-.06,0,0)*CFrame.Angles(0,0,-s*.65)*CFrame.new(.06,.05,0)
 
        weld(h,x,c2)
 
        c = c2*CFrame.new(0,0.05,0)
 
end
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Sphere"
 
sp.Scale = Vector3.new(.6,.6,.6)
 
weld(h,x,c)
 
 
 
local c = CFrame.new(0,1.02825,0) * CFrame.Angles(0,0,math.pi)
 
for i=0,1,.2 do
 
        local s = 1-math.abs(i-.5)*2
 
        local x = newpart()
 
        x.Size = Vector3.new(.2,.2,.2)
 
        Instance.new("CylinderMesh",x).Scale = Vector3.new(.6,.5,.6)
 
        local c2 = c*CFrame.new(.06,0,0)*CFrame.Angles(0,0,s*.65)*CFrame.new(-.06,.05,0)
 
        weld(h,x,c2)
 
        c = c2*CFrame.new(0,0.05,0)
 
end
 
 
 
local c = CFrame.new(0,1.02825,0) * CFrame.Angles(0,0,math.pi)
 
for i=0,1,.2 do
 
        local s = 1-math.abs(i-.5)*2
 
        local x = newpart()
 
        x.Size = Vector3.new(.2,.2,.2)
 
        Instance.new("CylinderMesh",x).Scale = Vector3.new(.6,.5,.6)
 
        local c2 = c*CFrame.new(-.06,0,0)*CFrame.Angles(0,0,-s*.65)*CFrame.new(.06,.05,0)
 
        weld(h,x,c2)
 
        c = c2*CFrame.new(0,0.05,0)
 
end
 
 
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Sphere"
 
sp.Scale = Vector3.new(.6,1.5,.6)
 
weld(h,x,CFrame.new(0,1.02825,0))
 
 
 
part.BrickColor = themeColor
 
part.Reflectance = themeRef
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.6,.6,.5)
 
weld(h,x,CFrame.new(0,.791625,0)*CFrame.Angles(0,0,math.pi/4))
 
 
 
local x = newpart()
 
x.Size = Vector3.new(.2,4,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.15,1,.225)
 
weld(h,x,CFrame.new(0,2.9,0))
 
 
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Cylinder"
 
sp.Scale = Vector3.new(.22,.15,.15)
 
weld(h,x,CFrame.new(0,4.9,0)*CFrame.Angles(0,math.pi/2,0))
 
 
 
part.BrickColor = BrickColor.new("Really black")
 
 
 
local x = newpart()
 
x.Size = Vector3.new(.2,4,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(.175,1,.21)
 
weld(h,x,CFrame.new(0,2.9,0))
 
 
 
local x = newpart()
 
x.Size = Vector3.new(.2,.2,.2)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Cylinder"
 
sp.Scale = Vector3.new(.215,.175,.175)
 
weld(h,x,CFrame.new(0,4.9,0)*CFrame.Angles(0,math.pi/2,0))
 
 
 
part.BrickColor = bladeColor
 
part.Reflectance = bladeRef
 
local x = newpart()
 
x.Size = Vector3.new(.25,4,.2)
 
Instance.new("BlockMesh",x).Scale = Vector3.new(1,1,.2)
 
weld(h,x,CFrame.new(0,2.85,0))
 
local blade = x
 
 
 
local x = newpart()
 
x.Size = Vector3.new(.2,.25,.25)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Wedge"
 
sp.Scale = Vector3.new(.2,1,.5)
 
weld(h,x,CFrame.new(-.0625,4.975,0) * CFrame.Angles(0,math.pi/2,0))
 
 
 
local x = newpart()
 
x.Size = Vector3.new(.2,.25,.25)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Wedge"
 
sp.Scale = Vector3.new(.2,1,.5)
 
weld(h,x,CFrame.new(.0625,4.975,0) * CFrame.Angles(0,-math.pi/2,0))
 
part.BrickColor = BrickColor.new("Royal purple")
 
part.Reflectance = .6
 
 for i = 1, 50 do
Lite = Instance.new ("Sparkles")
 

 
Lite.SparkleColor = Color3.new (25,0,50)
 
Lite.Parent = x
 
 
 end
 
 
 
 
 
local x = newpart()
 
x.Size = Vector3.new(4,.2,.2)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Wedge"
 
sp.Scale = Vector3.new(1,.5,.1)
 
weld(h,x,CFrame.new(.175,2.85,-.01) * CFrame.Angles(0,0,-math.pi/2))
 
 
 
local x = newpart()
 
x.Size = Vector3.new(4,.2,.2)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Wedge"
 
sp.Scale = Vector3.new(1,.5,.1)
 
weld(h,x,CFrame.new(.175,2.85,.01) * CFrame.Angles(math.pi,0,-math.pi/2))
 
 
 
local x = newpart()
 
x.Size = Vector3.new(4,.2,.2)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Wedge"
 
sp.Scale = Vector3.new(1,.5,.1)
 
weld(h,x,CFrame.new(-.175,2.85,-.01) * CFrame.Angles(math.pi,math.pi,-math.pi/2))
 
 
 
local x = newpart()
 
x.Size = Vector3.new(4,.2,.2)
 
local sp = Instance.new("SpecialMesh",x)
 
sp.MeshType = "Wedge"
 
sp.Scale = Vector3.new(1,.5,.1)
 
weld(h,x,CFrame.new(-.175,2.85,.01) * CFrame.Angles(0,math.pi,-math.pi/2))
 
 
 
local tip = Vector3.new(0,5.4,0)
 
 
 
WeldTriangle(h,Vector3.new(.125,4.85,-.02),Vector3.new(0,5.1,-.02),Vector3.new(.225,4.85,0))
 
WeldTriangle(h,tip,Vector3.new(0,5.1,-.02),Vector3.new(.225,4.85,0))
 
 
 
WeldTriangle(h,Vector3.new(.125,4.85,.02),Vector3.new(0,5.1,.02),Vector3.new(.225,4.85,0))
 
WeldTriangle(h,tip,Vector3.new(0,5.1,.02),Vector3.new(.225,4.85,0))
 
 
 
WeldTriangle(h,Vector3.new(-.125,4.85,-.02),Vector3.new(0,5.1,-.02),Vector3.new(-.225,4.85,0))
 
WeldTriangle(h,tip,Vector3.new(0,5.1,-.02),Vector3.new(-.225,4.85,0))
 
 
 
WeldTriangle(h,Vector3.new(-.125,4.85,.02),Vector3.new(0,5.1,.02),Vector3.new(-.225,4.85,0))
 
WeldTriangle(h,tip,Vector3.new(0,5.1,.02),Vector3.new(-.225,4.85,0))
 
 
 
 
 
--CFrame.new(.9,1.9,.54) * CFrame.Angles(-math.pi/2,0,math.pi/2) * CFrame.Angles(.58,.04,-.05) * CFrame.Angles(0,0,math.pi)
 
 
 
do 
 
        local function QuaternionFromCFrame(cf) 
 
                local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
 
                local trace = m00 + m11 + m22 
 
                if trace > 0 then 
 
                        local s = math.sqrt(1 + trace) 
 
                        local recip = 0.5/s 
 
                        return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
 
                else 
 
                        local i = 0 
 
                        if m11 > m00 then
 
                                i = 1 
 
                        end 
 
                        if m22 > (i == 0 and m00 or m11) then 
 
                                i = 2 
 
                        end 
 
                        if i == 0 then 
 
                                local s = math.sqrt(m00-m11-m22+1) 
 
                                local recip = 0.5/s 
 
                                return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
 
                        elseif i == 1 then 
 
                                local s = math.sqrt(m11-m22-m00+1) 
 
                                local recip = 0.5/s 
 
                                return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
 
                        elseif i == 2 then 
 
                                local s = math.sqrt(m22-m00-m11+1) 
 
                                local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
 
                        end 
 
                end 
 
        end   
 
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) 
 
                local xs, ys, zs = x + x, y + y, z + z 
 
                local wx, wy, wz = w*xs, w*ys, w*zs 
 
                local xx = x*xs 
 
                local xy = x*ys 
 
                local xz = x*zs 
 
                local yy = y*ys 
 
                local yz = y*zs 
 
                local zz = z*zs 
 
                return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
 
                end   
 
        local function QuaternionSlerp(a, b, t) 
 
                local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
 
                local startInterp, finishInterp; 
 
                if cosTheta >= 0.0001 then 
 
                        if (1 - cosTheta) > 0.0001 then 
 
                                local theta = math.acos(cosTheta) 
 
                                local invSinTheta = 1/math.sin(theta) 
 
                                startInterp = math.sin((1-t)*theta)*invSinTheta 
 
                                finishInterp = math.sin(t*theta)*invSinTheta  
 
                        else 
 
                                startInterp = 1-t 
 
                                finishInterp = t 
 
                        end 
 
                else 
 
                        if (1+cosTheta) > 0.0001 then 
 
                                local theta = math.acos(-cosTheta) 
 
                                local invSinTheta = 1/math.sin(theta) 
 
                                startInterp = math.sin((t-1)*theta)*invSinTheta 
 
                                finishInterp = math.sin(t*theta)*invSinTheta 
 
                        else 
 
                                startInterp = t-1 
 
                                finishInterp = t 
 
                        end 
 
                end 
 
                return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
 
        end  
 
        function clerp(a,b,t) 
 
                local qa = {QuaternionFromCFrame(a)}
 
                local qb = {QuaternionFromCFrame(b)} 
 
                local ax, ay, az = a.x, a.y, a.z 
 
                local bx, by, bz = b.x, b.y, b.z  
 
                local _t = 1-t 
 
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
 
        end 
 
end
 
 
 
local run = game:GetService("RunService")
 
local doing = {}
 
function ctween(weld,prop,cfr,time,skipwait,stopafter)
 
        local function doit()
 
                local timeused = 0
 
                local bgn = weld[prop]
 
                doing[weld] = doing[weld] or {}
 
                local now = tick()
 
                doing[weld][prop] = now
 
                stopafter = math.min(stopafter or time,time)
 
                repeat
 
                        local i = (tick()-now)/time
 
                        weld[prop] = clerp(bgn,cfr,i)
 
                until ((tick()-now) >= stopafter or doing[weld][prop] ~= now or not run.Stepped:wait())
 
                weld[prop] = cfr
 
                return doing[weld][prop] == now
 
        end
 
        if not skipwait then return doit()
 
        else coroutine.wrap(doit)() end
 
end
 
 
 
 
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
 
 
 
 
 
local mouse = plr:GetMouse()
 
local equipped = true
 
local enabled = true
 
local torso = char:WaitForChild("Torso")
 
local ra = char["Right Arm"]
 
local la = char["Left Arm"]
 
 
 
local RS = torso:FindFirstChild("aRS")
 
local LS = torso:FindFirstChild("aLS")
 
function checkShoulders()
 
        if not RS or not RS.Parent then
 
                RS = torso["Right Shoulder"]:Clone()
 
                RS.Name = "aRS"
 
                RS.Part0,RS.Part1 = nil,nil
 
                RS.DesiredAngle,RS.MaxVelocity,RS.CurrentAngle = 0,0,0
 
                RS.Parent = torso
 
        end
 
        if not LS or not LS.Parent then
 
                LS = torso["Left Shoulder"]:Clone()
 
                LS.Name = "aLS"
 
                LS.Part0,LS.Part1 = nil,nil
 
                LS.DesiredAngle,LS.MaxVelocity,LS.CurrentAngle = 0,0,0
 
                LS.Parent = torso
 
        end
 
end

checkShoulders()
 
local rs,ls = torso["Right Shoulder"],torso["Left Shoulder"]
 
rs.Part0,rs.Part1,ls.Part0,ls.Part1 = nil,nil,nil,nil
 
RS.Part0,RS.Part1,LS.Part0,LS.Part1 = torso,ra,torso,la
 
RS.C0,RS.C1,LS.C0,LS.C1 = rs.C0,rs.C1,ls.C0,ls.C1 
 
 
 
 
 
local gripback = CFrame.new(.1,-.65,-.3) * CFrame.Angles(1.1,.2,-.5)
 
local ridle = rs.C0 * CFrame.Angles(-.2,.05,.1)
 
local lidle = ls.C0 * CFrame.Angles(-.2,-.05,-.1)
 
 
 
function unEquip()
 
        if not enabled or not equipped then return end
 
        enabled = false
 
        equipped = false
 
        grip.C0 = griphand
 
        ctween(RS,"C0",rs.C0*CFrame.Angles(.1,0,3.1)*CFrame.Angles(0,.8,0),.5,true)
 
        wait(.3)
 
        ctween(grip,"C0",gripback,.2,true)
 
        wait(.25)
 
        ctween(LS,"C0",ls.C0*CFrame.Angles(0,0,.35),.1,true)
 
        ctween(RS,"C0",rs.C0*CFrame.Angles(.1,0,3.1)*CFrame.Angles(0,1.05,0),.2,true)
 
        wait(.1)
 
        ctween(LS,"C0",ls.C0,.3,true)
 
        grip.C0 = torso.CFrame:toObjectSpace(h.CFrame) * grip.C1
 
        grip.Part0 = torso
 
        ctween(grip,"C0",CFrame.new(1.4,1.6,.52) * CFrame.Angles(-math.pi/2,0,math.pi/2) * CFrame.Angles(.7,.07,-.05) * CFrame.Angles(0,0,math.pi),.2,true)
 
        wait(.1)
 
        ctween(RS,"C0",rs.C0,.5)
 
        wait()
 
 
        enabled = true
 
end
 
 
 
function equip()
 
        if not enabled or equipped then return end
 
        enabled = false
 
        equipped = true
 
        checkShoulders()
 
        rs.Part0,rs.Part1,ls.Part0,ls.Part1 = nil,nil,nil,nil
 
        RS.Part0,RS.Part1,LS.Part0,LS.Part1 = torso,ra,torso,la
 
        RS.C0,RS.C1,LS.C0,LS.C1 = rs.C0,rs.C1,ls.C0,ls.C1
 
        ctween(RS,"C0",rs.C0*CFrame.Angles(.1,0,3.1)*CFrame.Angles(0,1.05,0),.5,true)
 
        wait(.4)
 
        ctween(LS,"C0",ls.C0*CFrame.Angles(0,0,.3),.15,true)
 
        wait(.1)
 
        grip.C0 = ra.CFrame:toObjectSpace(h.CFrame) * grip.C1
 
        grip.Part0 = ra
 
        ctween(grip,"C0",griphand,.4,true)
 
        wait(.05)
 
        ctween(LS,"C0",ls.C0,.4,true)
 
        ctween(RS,"C0",rs.C0*CFrame.Angles(.1,0,3.1)*CFrame.Angles(0,.8,0),.3)
 
        ctween(RS,"C0",rs.C0,.3)
 
        wait()
 
        enabled = true
 
end
 
 
 
local walking = false
 
if char:FindFirstChild("Humanoid") then
 
        char.Humanoid.Running:connect(function(s)
 
                walking = s > 0
 
        end)
 
end
 
 
 
local noidle = false
 
local bg = torso:FindFirstChild("aBG") or Instance.new("BodyGyro",torso)
 
bg.maxTorque = Vector3.new()
 
bg.cframe = torso.CFrame
 
bg.Name = "aBG"
 
bg.D =60
 
local bgb = CFrame.new()
 
local sline = false
 
 
 
game:GetService("RunService").Stepped:connect((function()
 
        if equipped then
 
                bg.maxTorque = Vector3.new(1,1,1)*4e3
 
                bg.cframe = clerp(bg.cframe,CFrame.new(torso.Position,torso.Position+workspace.CurrentCamera.CoordinateFrame.lookVector*Vector3.new(1,0,1))*bgb,.6)
 
        else
 
                bg.maxTorque = Vector3.new()
 
        end
 
        if enabled and not noidle then
 
                local i1 = math.sin(tick())
 
                local i2 = math.sin(tick()*10)
 
                RS.C0 = clerp(RS.C0,ridle * CFrame.Angles(.03*i1+(walking and .08 or 0),.01*i1+(walking and i2*.2 or 0),.01*i1+(walking and i2*.7-.05 or 0)),.2)
 
                LS.C0 = clerp(LS.C0,lidle * CFrame.Angles(.03*i1+(walking and .08 or 0),-.01*i1+(walking and i2*.2 or 0),-.01*i1+(walking and i2*.9+.2 or 0)),.2)
 
        end
 
        if sline then
 
                local blcf = blade.CFrame*CFrame.new(-.125,.2,0)
 
                if scfr and (blade.Position-scfr.p).magnitude > .1 then
 
                        part.Transparency = 0.2
 
                        part.BrickColor = BrickColor.new("Royal purple")
 
                        part.Reflectance = .0
 
                        local h = 4.7
 
                        local a,b = Triangle((scfr*CFrame.new(1,h/3,1)).p,(scfr*CFrame.new(1,-h/3,1)).p,(blcf*CFrame.new(1,h/3,1)).p)
 
                        if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
 
                        local a,b = Triangle((blcf*CFrame.new(1,h/3,0)).p,(blcf*CFrame.new(1,-h/2,0)).p,(scfr*CFrame.new(1,-h/3,1)).p)
 
                        if a then game.Debris:AddItem(a,1) end if b then game.Debris:AddItem(b,1) end
 
                        scfr = blcf
 
                elseif not scfr then
 
                        scfr = blcf
 
                end
 
        else
 
                scfr = nil
 
        end
 
end))
 
 
 
local combo = 0
 
local combolast = 0
 
 
 
 
 
local pushaway = 0
 
local damage = 0
 
 
 
blade.Touched:connect((function(hit)
 
        if hit:IsDescendantOf(char) then return end
 
 
 
        for i,v in pairs(hit.Parent:GetChildren()) do
 
                if v:IsA("Humanoid") then
 
                        v:TakeDamage(damage)
 
                elseif v.Name == "Torso" and v:IsA("Part") then
 
                        local d = (v.Position-torso.Position).unit * pushaway / 20
 
                        if NLS then
 
                                --NLS(("for i=1,20 do wait(1/30) script.Parent.CFrame = script.Parent.CFrame + Vector3.new(%d,%d,%d) end script:Destroy()"):format(d.X,d.Y,d.Z),v)
 
                        end
 
                end
 
        end
 
 
 
end))
 
 
 
 
 
 
 
mouse.KeyDown:connect((function(key)
 
        if not enabled then return end
 
        if key == "q" then
 
                (equipped and unEquip or equip)()
 
        end
 
        if key == "r" and equipped then
                
            playSound(154965962,x,1,1)
                
                enabled = false
 
                local cf = torso.CFrame
 
                damage = 40
 
                pushaway = 20
 
                for i=1,2 do
 
                        ctween(RS,"C0",rs.C0*CFrame.Angles(.2,0,1.5) * CFrame.Angles(0,1,0),.05,true)
 
                        ctween(torso,"CFrame",cf*CFrame.new(0,0,-1) * CFrame.Angles(0,-2,0),.05)
 
                        ctween(RS,"C0",rs.C0*CFrame.Angles(.2,0,2)* CFrame.Angles(0,1,0),.05,true)
 
                        ctween(torso,"CFrame",cf*CFrame.new(0,0,-2) * CFrame.Angles(0,-3.5,0),.05)
 
                        ctween(RS,"C0",rs.C0*CFrame.Angles(.2,0,2)* CFrame.Angles(0,1,0),.05,true)
 
                        ctween(torso,"CFrame",cf*CFrame.new(0,0,-3) * CFrame.Angles(0,-5.5,0),.05)
 
                        ctween(RS,"C0",rs.C0*CFrame.Angles(.2,0,1.5)* CFrame.Angles(0,1.6,0)*CFrame.Angles(0,0,-1),.05,true)
 
                        sline = true
 
                        ctween(torso,"CFrame",cf*CFrame.new(0,0,-4) * CFrame.Angles(0,-5.8,0),.05)
 
                        ctween(RS,"C0",rs.C0*CFrame.Angles(.2,0,1.2)* CFrame.Angles(0,1.6,0)*CFrame.Angles(0,0,-1.9),.1,true)
                        
                        ctween(torso,"CFrame",cf*CFrame.new(0,0,-5) * CFrame.Angles(0,-7.7,0),.1)
                           
                        sline = false
 
                        playSound(154965962,x,1,1)
 
                        cf = cf * CFrame.new(0,0,-5)
                end
 
                wait(.05)
 
                damage = 0
 
                pushaway = 0
 
                sline = false
 
                enabled = true
 
                
 
        end
		
	
		
 
        if key == "e" and equipped then
    sline = false
                playSound(154965962,x,1,1)
           
                enabled = false
 
                if combo > 0 and tick() > combolast + 1 then
 
                        combo = 0
 
                end
 
                local cnow = combo
 
                combo = combo + 1
 
                if combo == 3 then
 
                        combo = 0
 
                end
 
                damage = 20
 
                pushaway = 10
 
                if cnow == 0 then
 
                        ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,1.5) * CFrame.Angles(-.2,-.2,0),.1)
 
                        ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,3) * CFrame.Angles(-.2,-.2,0),.1)
 
                        bgb = CFrame.Angles(0,.5,0)
 
                        sline = true
 
                        ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,.6) * CFrame.Angles(.5,-.3,0),.1)
 
                        wait(.05)
 
                        enabled = true
 
                        combolast = tick()
 
                        noidle = true
 
                        sline = false
 
                        damage,pushaway = 0,0
 
                        local l = ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,.3) * CFrame.Angles(.6,-.5,0),.3)
 
                        if l then
 
                                noidle = false
 
                                bgb = CFrame.Angles(0,0,0)
 
                        end
 
                elseif cnow == 1 then
 
                        bgb = CFrame.Angles(0,.4,0)
 
                        ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,.5) * CFrame.Angles(.7,.7,0),.07)
 
                        ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,1.3) * CFrame.Angles(.8,.8,0),.07)
 
                        bgb = CFrame.Angles(0,-.6,0)
 
                        sline = true
 
                        ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,1) * CFrame.Angles(-.9,1.5,0)*CFrame.Angles(0,0,-.7),.1)
 
                        wait(.05)
 
                        enabled = true
 
                        combolast = tick()
 
                        noidle = true
 
                        sline = false
 
                        damage,pushaway = 0,0
 
                        local l = ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,.4) * CFrame.Angles(-.5,.8,0),.3)
 
                        if l then
 
                                noidle = false
 
                                bgb = CFrame.Angles(0,0,0)
 
                        end
 
                elseif cnow == 2 then
 
                        bgb = CFrame.Angles(0,-.1,0)
 
                        ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,1.5) * CFrame.Angles(.1,-.1,0),.1)
 
                        ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,3) * CFrame.Angles(.1,-.1,0),.1)
 
                        bgb = CFrame.Angles(0,.1,0)
 
                        sline = true
 
                        ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,1.3) * CFrame.Angles(.1,.3,0),.05)
 
                        ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,-.2) * CFrame.Angles(.1,.5,0),.05)
 
                        wait(.1)
 
                        enabled = true
 
                        combolast = tick()
 
                        noidle = true
 
                        sline = false
 
                        damage,pushaway = 0,0
 
                        local l = ctween(RS,"C0",rs.C0 * CFrame.Angles(0,0,.3) * CFrame.Angles(-.3,.2,0),.3)
 
                        if l then
 
                                noidle = false
 
                                bgb = CFrame.Angles(0,0,0)
 
                        end
 
                end
 
        end
 
end))


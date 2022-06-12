 
script.Parent = nil
 
local plr = game.Players.LocalPlayer
local char = plr.Character
local hum = char.Humanoid
local tar = char["Torso"]
 
local par = char
 
local capename = "sCape"
if par:FindFirstChild(capename) then par[capename]:Destroy() end
 
local Parts = {}
local capeLength = 4 -- studs
local partAm = 25
local startWidth = 2.2
local endWidth = 3.4
local thickness = .1
local ups = 30 -- updates per second
local clr = BrickColor.new("Institutional white")
local hood = true
local suit = true
local phys = true
 
 
local widthCh = (endWidth-startWidth)/partAm
local zSiz = capeLength/partAm
 
 
local Model = Instance.new("Model",par)
Model.Name = capename
 
function weld(p0,p1,c0,c1)
        local w = Instance.new("Weld",Model)
        w.Part0 = p0
        w.Part1 = p1
        w.C0 = c0 or CFrame.new()
        w.C1 = c1 or CFrame.new()
        return w
end
 
function invcol(c)
        c = c.Color
        return BrickColor.new(Color3.new(1-c.b,1-c.g,1-c.r))
end
 
local part = Instance.new("Part",Model)
Instance.new("BlockMesh",part)
part.FormFactor = "Custom"
part.BrickColor = clr
part.FormFactor = "Custom"
part.Size = Vector3.new(.2,.2,.2)
part.Parent = Model
part:BreakJoints()
part.Reflectance = 0
part.CanCollide = false
part.Locked = true
part.Mesh.Scale = Vector3.new(startWidth,thickness,1+(thickness))/.2
part.TopSurface = "Smooth"
part.BottomSurface = "Smooth"
weld(tar,part,CFrame.new(0,.989,0))
 
local tor,la,ra,ll,rl,hd = char:FindFirstChild("Torso"),char:FindFirstChild("Left Arm"),char:FindFirstChild("Right Arm"),
char:FindFirstChild("Left Leg"), char:FindFirstChild("Right Leg"), char:FindFirstChild("Head")
 
pcall(function() la.Transparency = 0 end)
pcall(function() ra.Transparency = 0 end)
pcall(function() ll.Transparency = 0 end)
pcall(function() rl.Transparency = 0 end)
pcall(function() hd.Transparency = 0 end)
pcall(function() tar.Transparency = 0 end)
 
if not hood or not suit then
        pcall(function() hd.face.Face = "Front" end)
end
 
if hood then
        for i,v in pairs(char:GetChildren()) do if v:IsA("Hat") then pcall(function() v.Handle.Transparency = 1 end) end end
        local hood = part:Clone()
        hood.Parent = Model
        hood.Mesh:Destroy()
        local m = Instance.new("SpecialMesh",hood)
        m.MeshId = "http://www.roblox.com/asset/?id=16952952"
        m.TextureId = "http://www.roblox.com/asset/?id=91740209"
        m.Scale = Vector3.new(1.06,1.06,1.06)
        m.VertexColor = Vector3.new(clr.Color.r,clr.Color.g,clr.Color.b)
        weld(hd,hood,CFrame.new(0,0.3,-.08))
end
if suit then
        part.Mesh.Scale = Vector3.new(2,thickness,1+thickness)/.2
        pcall(function() la.Transparency = 1 end)
        pcall(function() ra.Transparency = 1 end)
        pcall(function() ll.Transparency = 1 end)
        pcall(function() rl.Transparency = 1 end)
        pcall(function() tar.Transparency = 1 end)
        if hd and hood then
                local hd2 = hd:Clone()
                hd2.Parent = Model
                weld(hd,hd2)
                hd.Transparency = 1
                hd2.Transparency = 0
                pcall(function() hd2.face:Destroy() end)
                pcall(function() hd2.Mesh.Scale = hd2.Mesh.Scale + Vector3.new(.01,.01,.01) end)
                pcall(function() hd.face.Face = "Bottom" end)
                hd2.BrickColor = BrickColor.new("Really Gold")
                local bbg = Instance.new("BillboardGui",hd2)
                bbg.Size = UDim2.new(2,0,1,0)
                bbg.SizeOffset = Vector2.new(0,1.2)
                local tl = Instance.new("TextLabel",bbg)
                tl.BackgroundTransparency = 1
                tl.Size = UDim2.new(1,0,.4,0)
                tl.TextScaled = true
                tl.Text = char.Name--"Assassin"
                tl.TextTransparency = .9
                tl.TextColor3 = Color3.new(1,0,0)
        end
        local p = part:Clone()
        p.BrickColor = BrickColor.new("Gold")
        p.Reflectance = .4
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(1.2,.3,.1)/.2
        weld(ra,p,CFrame.new(0,1,-.5) * CFrame.Angles(math.rad(20),0,math.rad(5)))
        p = p:Clone()
        p.Parent = Model
        weld(ra,p,CFrame.new(0,1,.5) * CFrame.Angles(math.rad(-20),0,math.rad(5)))
 
        p = p:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(1.2,.4,.1)/.2
        weld(ra,p,CFrame.new(-.02,1.15,-.275) * CFrame.Angles(math.rad(80),math.rad(5),math.rad(2.5)))
        p = p:Clone()
        p.Parent = Model
        weld(ra,p,CFrame.new(-.02,1.15,.275) * CFrame.Angles(math.rad(-80),math.rad(-5),math.rad(2.5)))
 
        p = p:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(1.2,.2,.1)/.2
        weld(ra,p,CFrame.new(-.03,1.185,0) * CFrame.Angles(math.rad(90),math.rad(5),math.rad(0)))
        p = p:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(.1,.2,1)/.2
        weld(ra,p,CFrame.new(.55,.975,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)))
        p = p:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(.1,.2,.9)/.2
        weld(ra,p,CFrame.new(.54,1.095,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)))
        p = p:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(.1,.2,1)/.2
        weld(ra,p,CFrame.new(-.34,1.025,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(5)))
 
        local p2 = p:Clone()
        p2.BrickColor = clr
        p2.Parent = Model
        p2.Mesh.Scale = Vector3.new(.1,1.35,.2)/.2
        weld(ra,p2,CFrame.new(.5,-.35,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
        p2 = p2:Clone()
        p2.Parent = Model
        p2.Mesh.Scale = Vector3.new(.1,.5,.2)/.2
        weld(ra,p2,CFrame.new(.499,0.055,-.145) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0)))
        p2 = p2:Clone()
        p2.Parent = Model
        p2.Mesh.Scale = Vector3.new(.1,.5,.2)/.2
        weld(ra,p2,CFrame.new(.499,0.055,.145) * CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0)))
        p2 = p2:Clone()
        p2.Parent = Model
        p2.Mesh.Scale = Vector3.new(.1,.905,.2)/.2
        weld(ra,p2,CFrame.new(.498,-.569,-.255) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
        p2 = p2:Clone()
        p2.Parent = Model
        p2.Mesh.Scale = Vector3.new(.1,.905,.2)/.2
        weld(ra,p2,CFrame.new(.498,-.569,.255) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
        p2 = p2:Clone()
        p2.Parent = Model
        p2.Mesh.Scale = Vector3.new(1.05,.1,.199)/.2
        weld(ra,p2,CFrame.new(.0249,-1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
        p2 = p2:Clone()
        p2.Parent = Model
        p2.Mesh.Scale = Vector3.new(1.05,.1,.199)/.2
        weld(ra,p2,CFrame.new(.0235,-1,.255) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
        p2 = p2:Clone()
        p2.Parent = Model
        p2.Mesh.Scale = Vector3.new(1.05,.1,.199)/.2
        weld(ra,p2,CFrame.new(.0235,-1,-.255) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
        p2 = p2:Clone()
        p2.Parent = Model
        p2.Mesh.Scale = Vector3.new(.7,.7,1.1)/.2
        weld(ra,p2,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
 
        p = p:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(1.05,1.05,1.05)/.2
        weld(ra,p,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
 
 
        p = part:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(1.01,1.01,1.01)/.2
        weld(ra,p,CFrame.new(0,0.5,0))
        local p3 = part:Clone()
        p3.Parent = Model
        p3.Mesh:Destroy()
        Instance.new("SpecialMesh",p3).MeshType = Enum.MeshType.Wedge
        p3.Mesh.Scale = Vector3.new(1.05,1.05,1.21)/.2
        weld(la,p3,CFrame.new(-.1,.5,0) * CFrame.Angles(math.rad(180),math.rad(90),math.rad(0)))
        p = p:Clone()
        p.Parent = Model
        p.Mesh:Destroy()
        p.BrickColor = BrickColor.new("Brick yellow")
        Instance.new("SpecialMesh",p).MeshType = Enum.MeshType.Brick
        p.Mesh.Scale = Vector3.new(1,2,1)/.2
        weld(la,p,CFrame.new(0,0,0))
        p = p:Clone()
        p.Parent = Model
        p.BrickColor = invcol(clr)
        p.Mesh.Scale = Vector3.new(1.05,1.5,1.04)/.2
        weld(la,p,CFrame.new(0,.25,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
 
        p = part:Clone()
        p.BrickColor = invcol(clr)
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(2.1,.2,1.099)/.2
        weld(tar,p,CFrame.new(0,-.91,0))
        p = p:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(.2,2.41,1.099)/.2
        weld(tar,p,CFrame.new(0,0.05,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(40)))
        p = p:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(.1,.1,1.099)/.2
        weld(tar,p,CFrame.new(-.8,.95,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
 
        p = part:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(2.003,2.003,1.003)/.2
        weld(tar,p,CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
 
        p = p:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(1.003,2.003,1.003)/.2
        weld(ll,p,CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
        p = p:Clone()
        p.Parent = Model
        p.Mesh.Scale = Vector3.new(1.003,2.003,1.003)/.2
        weld(rl,p,CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)))
end
 
local Main = part:Clone()
Main.Parent = Model
Main.Mesh.Scale = Vector3.new(startWidth/.2,thickness/Main.Size.Y,zSiz/Main.Size.X)
Main:BreakJoints()
 
local M1 = Instance.new("Motor6D")
M1.MaxVelocity = 0
M1.Part0 = tar
M1.Part1 = Main
M1.C0 = CFrame.new(0,1,.5) * CFrame.Angles(0,math.pi/2,0)
M1.C1 = CFrame.new(0,0,-zSiz/2) * CFrame.Angles(0,math.pi/2,0)
M1.Parent = Model
--[[
local p2 = Main:Clone()
p2.Parent = Model
p2.Size = Vector3.new(.2,p2.Size.X,.2)
p2.Mesh:Destroy()
Instance.new("CylinderMesh",p2).Scale = Vector3.new(1,.99,1)
local W = Instance.new("Weld",Model)
W.Part0 = Main
W.Part1 = p2
W.C0 = CFrame.new(0,0,-zSiz/2) * CFrame.Angles(0,0,math.pi/2)]]
local last = Main
 
for i=1,partAm-1 do
local p = Main:Clone()
p.Parent = Model
local sz = widthCh*i/.2
p.Mesh.Scale = Vector3.new(p.Mesh.Scale.X + sz,p.Mesh.Scale.Y,p.Mesh.Scale.Z)
p:BreakJoints()
local M = M1:Clone()
M.C0 = CFrame.new(0,0,zSiz/2) * CFrame.Angles(0,math.pi/2,0)
M.Part0 = last
M.Part1 = p
M.Parent = Model
 
table.insert(Parts,{p = M, l = 0, an = 0})
last = p
end
 
function Lerp(start,goal,alpha)
        return start* (1-alpha) + goal*alpha
end
 
local mode = "idle"
 
function getForwardSpeed()
local FwVec = tar.Velocity * tar.CFrame.lookVector
FwVec = Vector3.new(FwVec.X > -0.05 and FwVec.X or 0, 0, FwVec.Z > -0.05 and FwVec.Z or 0)
return FwVec.X + FwVec.Z
end
 
function getBackwardSpeed()
local BwVec = tar.Velocity * tar.CFrame.lookVector
BwVec = Vector3.new(BwVec.X < 0.05 and BwVec.X or 0, 0, BwVec.Z < 0.05 and BwVec.Z or 0)
return BwVec.X + BwVec.Z
end
 
function getMainAlpha()
return .2
end
 
function getAngle()
if mode == "run" then return math.max(0.1,math.min(2-(getForwardSpeed()/16)^0.50,1)) end
if mode == "jump" then return 1.55 end
if mode == "fall" then return -1.2 end
if mode == "moonwalk" then return 1.50 end
return 1.55
end
 
function getWaveAm()
if mode == "run" then return 1 end
if mode == "jump" then return 3 end
if mode == "fall" then return 1 end
if mode == "moonwalk" then return 1 end
return .1
end
 
function getWaveSize()
if mode == "run" then return .1 end
if mode == "jump" then return .1 end
if mode == "fall" then return .1 end
if mode == "moonwalk" then return .01 end
return math.rad(1)
end
 
while Model ~= nil and Model.Parent ~= nil and tar ~= nil and not closeall do
local verVel = tar.CFrame:vectorToObjectSpace(tar.Velocity).Y
if verVel < -5 then 
mode = "fall" 
elseif verVel > 5 then 
mode = "jump" 
else 
if getForwardSpeed() > 0 or getBackwardSpeed() > 0 then 
if getForwardSpeed() > char.Humanoid.WalkSpeed/2 then
mode = "run" 
else
mode = "moonwalk" 
end
else 
mode = "idle" 
end 
end
local wave = (math.abs((tick() % (1/getWaveAm()))-(1/getWaveAm()/2)) - (1/getWaveAm()/2)) *(getWaveAm()*getWaveSize())
 
M1.CurrentAngle = Lerp(M1.CurrentAngle,getAngle(),.2)+wave -- .2 = 50
 
local an = M1.CurrentAngle
local blkd = false
local blkan = 0
for i,v in pairs(Parts) do
 
        local ang = Lerp((v.an-an),0,0.4 + (0.05*(partAm/10))) -- .7 = 50
        v.p.CurrentAngle = ang
 
        if capeLength > 4 and phys then
                local part0 = v.p.Part0
                local part1 = v.p.Part1
                local x = part0.Mesh.Scale.X*.2
                local lblkd = false
                local am = 3
                for a=1,am do
                        local pos0 = (part0.CFrame * CFrame.new(-x/2+x/am*a,0,0)).p + Vector3.new(0,thickness,0)
                        local pos1= (part1.CFrame * CFrame.new(-x/2+x/am*a,0,0)).p - Vector3.new(0,thickness,0)
                        local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(pos0,(pos1-pos0).unit*(pos0-pos1).magnitude),{Model,workspace.CurrentCamera,char}) 
                        if hit and hit.CanCollide then
                                lblkd = true
                                break
                        end
                end
                if blkd and not lblkd then 
                        ang = 1.55--blkan
                elseif lblkd then
                        if not blkd then
                                ang = -an
                                blkan = an
                        end
                end
                blkd = lblkd
 
                v.p.CurrentAngle = ang
        end
 
        v.an = an
        an = an + ang
end
 
 
wait(1/ups)
if not Model:IsDescendantOf(workspace) then break end
end
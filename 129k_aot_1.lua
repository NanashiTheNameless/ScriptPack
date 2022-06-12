--[[
	
	~ Created by 129K
	~ August 8, 2014	-	August 15, 2014
	
--]]

local Player = Game.Players.LocalPlayer
local Character = Player.Character
local CanDamage = false
local Debounce = false
local Debounce2 = false
local CanDamage2 = false
local Electric = false
local Cam=workspace.CurrentCamera
local mouse = Player:GetMouse()
local useMouse = false
local rot = 180
local Slash = "Right"
mran2 = function(a,b) return math.random(a*1000,b*1000)/1000 end 
function Lightning(from,to,times,offset,col,thickness,tra)
    local magz = (from - to).magnitude 
    local curpos = from 
    local trz = {-offset,offset}
    Spawn(function()
    for i=1,times do 
        --local li = iPart{workspace,thickness,thickness,magz/times,an=true,tr=tra or 0.4,co=col or "New Yeller"} li.CanCollide = false li.Name = "unray"
        local li = Instance.new("Part", workspace)
        li.FormFactor = 3
        li.Size = Vector3.new(thickness, thickness, magz/times)
        li.Anchored = true
        li.TopSurface = 0
        li.BottomSurface = 0
        li.Transparency = tra
        li.BrickColor = BrickColor.new(col)
        li.CanCollide = false
        li.Name = "unray"
        local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
        local trolpos = CFrame.new(curpos,to)*CFrame.new(0,0,magz/times).p+ofz
        if times == i then 
            local magz2 = (curpos - to).magnitude 
            li.Size = Vector3.new(thickness,thickness,magz2)
            li.CFrame = CFrame.new(curpos,to)*CFrame.new(0,0,-magz2/2)
        else
            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/times/2).p 
        game.Debris:AddItem(li,0.25)
    end
    end)
end
local gyro = Instance.new("BodyGyro", Character.Torso)
gyro.maxTorque = Vector3.new(1, 1, 1)/0
gyro.D=100
gyro.P=1250
game:GetService("RunService").RenderStepped:connect(function()
    if not useMouse then
       local Y = (Hooks[-1] or Hooks[1]) and Cam.CoordinateFrame.p.y or Character.Torso.Position.y
       gyro.cframe=CFrame.new(Character.Torso.Position,Vector3.new(Cam.CoordinateFrame.p.x,Y,Cam.CoordinateFrame.p.z))*CFrame.Angles(0,math.rad(rot),0)
    else
        local Y = (Hooks[-1] or Hooks[1]) and mouse.Hit.p.y or Character.Torso.Position.y
        gyro.cframe = CFrame.new(Character.Torso.Position, Vector3.new(mouse.Hit.p.x,Y,mouse.Hit.p.z))*CFrame.Angles(0,math.rad(rot),0)
    end
end)

function GetWeld(Weld) 
    if not Weld:FindFirstChild("Angle") then 
        local a = Instance.new("Vector3Value", Weld) 
        a.Name = "Angle"
        local x, y, z = Weld.C0:toEulerAnglesXYZ()
        a.Value = Vector3.new(math.deg(x),math.deg(y),math.deg(z)) 
    end 
    return Weld.C0.p, Weld.Angle.Value
end 

function ClearWeld(Weld)
    if Weld:findFirstChild'Angle' then 
        Weld.Angle:Remove() 
    end 
end

function SetWeld(weld, CC, i, loops, origpos, origangle, nextpos, nextangle, smooth) 
    local CO = 'C' .. CC
    smooth = smooth or 1 
    if not weld:findFirstChild("Angle") then 
        local a = Instance.new("Vector3Value", weld) 
        a.Name = "Angle"
        local x, y, z = weld.C0:toEulerAnglesXYZ()
        a.Value = Vector3.new(math.deg(x),math.deg(y),math.deg(z)) 
    end 
 
    local perc 
    if smooth == 1 then 
        perc = math.sin((math.pi/2)/loops*i) 
    else 
        perc = i/loops 
    end 
 
    local tox,toy,toz = 0,0,0 
    if origangle.x > nextangle.x then 
        tox = -math.abs(origangle.x - nextangle.x) *perc 
    else 
        tox = math.abs(origangle.x - nextangle.x) *perc 
    end 
    if origangle.y > nextangle.y then 
        toy = -math.abs(origangle.y - nextangle.y) *perc 
    else 
        toy = math.abs(origangle.y - nextangle.y) *perc 
    end 
    if origangle.z > nextangle.z then 
        toz = -math.abs(origangle.z - nextangle.z) *perc 
    else 
        toz = math.abs(origangle.z - nextangle.z) *perc 
    end 
 
    local tox2,toy2,toz2 = 0,0,0 
    if origpos.x > nextpos.x then 
        tox2 = -math.abs(origpos.x - nextpos.x) *perc 
    else 
        tox2 = math.abs(origpos.x - nextpos.x) *perc 
    end 
    if origpos.y > nextpos.y then 
        toy2 = -math.abs(origpos.y - nextpos.y) *perc 
    else 
        toy2 = math.abs(origpos.y - nextpos.y) *perc 
    end 
    if origpos.z > nextpos.z then 
        toz2 = -math.abs(origpos.z - nextpos.z) *perc 
    else 
        toz2 = math.abs(origpos.z - nextpos.z) *perc 
    end 
    weld.Angle.Value = Vector3.new(origangle.x + tox,origangle.y + toy,origangle.z + toz)
    weld[CO] = CFrame.new(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*CFrame.Angles(math.rad(origangle.x + tox),math.rad(origangle.y + toy),math.rad(origangle.z + toz)) 
end 


function Weld(p0, p1, c0, c1)
    local Weld = Instance.new("Weld", p0)
    Weld.Part0 = p0
    Weld.Part1 = p1
    Weld.C0 = c0
    Weld.C1 = c1
    return Weld
end

function Mesh(part, scale, meshtype, meshid, textureid)
    local Mesh = Instance.new("SpecialMesh", part)
    Mesh.MeshType = meshtype
    Mesh.MeshId = meshid
    Mesh.Scale = scale
    Mesh.TextureId = textureid
    return Mesh
end

local Meshes = {}
Meshes.Crown = "http://www.roblox.com/asset/?id=20329976"

-- Weapon creation, because I don't like prop({...}) to create parts. Looks a little ugly.

local HandleRight = Instance.new("Part", Character)
HandleRight.TopSurface = 10
HandleRight.BottomSurface = 10
HandleRight.FormFactor = 3
HandleRight.CanCollide = false
HandleRight.Size = Vector3.new(0.3, 1.25, 0.2)
HandleRight.BrickColor = BrickColor.new("Dark stone grey")
local HRW = Weld(Character["Right Arm"], HandleRight, CFrame.new(0, -0.75, 0) * CFrame.Angles(math.rad(-90), math.rad(90), 0), CFrame.new())
Mesh(HandleRight, Vector3.new(1, 1, 0.5), "Brick", "", "")
local HandleRight2 = Instance.new("Part", Character)
HandleRight2.TopSurface = 10
HandleRight2.BottomSurface = 10
HandleRight2.FormFactor = 3
HandleRight2.CanCollide = false
HandleRight2.Size = Vector3.new(0.3, 1.25, 0.2)
HandleRight2.BrickColor = BrickColor.new("Medium stone grey")
local HRW2 = Weld(HandleRight, HandleRight2, CFrame.new(.1, -0.1, 0), CFrame.new())
Mesh(HandleRight2, Vector3.new(1, 1, 0.26), "Brick", "", "")
local HandleRight4 = Instance.new("Part", Character)
HandleRight4.TopSurface = 10
HandleRight4.BottomSurface = 10
HandleRight4.FormFactor = 3
HandleRight4.CanCollide = false
HandleRight4.Size = Vector3.new(0.95, 0.2, 0.2)
HandleRight4.BrickColor = BrickColor.new("Dark stone grey")
local HRW4 = Weld(HandleRight, HandleRight4, CFrame.new(.25, .6, 0), CFrame.new())
Mesh(HandleRight4, Vector3.new(1, 0.5, 0.5), "Brick", "", "")
local HandleRight5 = Instance.new("Part", Character)
HandleRight5.TopSurface = 10
HandleRight5.BottomSurface = 10
HandleRight5.FormFactor = 3
HandleRight5.CanCollide = false
HandleRight5.Size = Vector3.new(0.5, 0.1, 0.1)
HandleRight5.BrickColor = BrickColor.new("Black") -- 1
local HRW5 = Weld(HandleRight, HandleRight5, CFrame.new(.35, 0.25, 0), CFrame.new())
Mesh(HandleRight5, Vector3.new(0.95, 0.1, 0.25), "Brick", "", "")
local HandleRight6 = Instance.new("Part", Character)
HandleRight6.TopSurface = 10
HandleRight6.BottomSurface = 10
HandleRight6.FormFactor = 3
HandleRight6.CanCollide = false
HandleRight6.Size = Vector3.new(0.1, 0.35, 0.1)
HandleRight6.BrickColor = BrickColor.new("Black")
local HRW6 = Weld(HandleRight, HandleRight6, CFrame.new(0.6, 0.4, 0), CFrame.new())
Mesh(HandleRight6, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local HandleRight7 = Instance.new("Part", Character)
HandleRight7.TopSurface = 10
HandleRight7.BottomSurface = 10
HandleRight7.FormFactor = 3
HandleRight7.CanCollide = false
HandleRight7.Size = Vector3.new(0.5, 0.1, 0.1)
HandleRight7.BrickColor = BrickColor.new("Black")
local HRW7 = Weld(HandleRight, HandleRight7, CFrame.new(.35, 0.4, 0), CFrame.new())
Mesh(HandleRight7, Vector3.new(1, 0.1, 0.25), "Brick", "", "")
local HandleRight8 = Instance.new("Part", Character)
HandleRight8.TopSurface = 10
HandleRight8.BottomSurface = 10
HandleRight8.FormFactor = 3
HandleRight8.CanCollide = false
HandleRight8.Size = Vector3.new(0.3, 1, 0.2)
HandleRight8.BrickColor = BrickColor.new("Black")
local HRW8 = Weld(HandleRight2, HandleRight8, CFrame.new(.1, -0.15, 0), CFrame.new())
Mesh(HandleRight8, Vector3.new(1, 1, 0.1), "Brick", "", "")
local HandleRight9 = Instance.new("Part", Character)
HandleRight9.TopSurface = 10
HandleRight9.BottomSurface = 10
HandleRight9.FormFactor = 3
HandleRight9.CanCollide = false
HandleRight9.Size = Vector3.new(.75, 0.1, 0.1)
HandleRight9.BrickColor = BrickColor.new("Black")
local HRW9 = Weld(HandleRight, HandleRight9, CFrame.new(.225, 0.55, 0), CFrame.new())
Mesh(HandleRight9, Vector3.new(1, 0.3, 0.25), "Brick", "", "")
local HandleRight10 = Instance.new("Part", Character)
HandleRight10.TopSurface = 10
HandleRight10.BottomSurface = 10
HandleRight10.FormFactor = 3
HandleRight10.CanCollide = false
HandleRight10.Size = Vector3.new(0.1, 0.35, 0.1)
HandleRight10.BrickColor = BrickColor.new("Black")
local HRW10 = Weld(HandleRight, HandleRight10, CFrame.new(.325, 0.35, 0), CFrame.new())
Mesh(HandleRight10, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local HandleRight11 = Instance.new("Part", Character)
HandleRight11.TopSurface = 10
HandleRight11.BottomSurface = 10
HandleRight11.FormFactor = 3
HandleRight11.CanCollide = false
HandleRight11.Size = Vector3.new(0.2, 3.8, 0.1)
HandleRight11.BrickColor = BrickColor.new("Medium stone grey")
local HandleRight11x = Instance.new("Part", Character)
HandleRight11x.TopSurface = 10
HandleRight11x.BottomSurface = 10
HandleRight11x.FormFactor = 3
HandleRight11x.CanCollide = false
HandleRight11x.Size = Vector3.new(0.2, 0.3, 0.2)
HandleRight11x.BrickColor = BrickColor.new("Medium stone grey")
local HRW11x = Weld(HandleRight11, HandleRight11x, CFrame.new(0, 3.8/2+.15, 0) * CFrame.Angles(0, math.rad(270+180), 0), CFrame.new())
Mesh(HandleRight11x, Vector3.new(0.1, 1, 1), "Wedge", "", "")
local HRW11 = Weld(HandleRight4, HandleRight11, CFrame.new(-0.05, 3.8/2, 0), CFrame.new())
Mesh(HandleRight11, Vector3.new(1, 1, 0.1), "Brick", "", "")
local HandleRight12 = Instance.new("Part", Character)
HandleRight12.TopSurface = 10
HandleRight12.BottomSurface = 10
HandleRight12.FormFactor = 3
HandleRight12.CanCollide = false
HandleRight12.Size = Vector3.new(0.2, 1, 0.2)
HandleRight12.BrickColor = BrickColor.new("Dark stone grey")
local HRW12 = Weld(HandleRight4, HandleRight12, CFrame.new(0.75/2+0.1, -0.45, 0) * CFrame.Angles(math.rad(180), math.rad(90), 0), CFrame.new())
Mesh(HandleRight12, Vector3.new(0.5, 1, 0.5), "Wedge", "", "")
local HandleRight13 = Instance.new("Part", Character)
HandleRight13.TopSurface = 10
HandleRight13.BottomSurface = 10
HandleRight13.FormFactor = 3
HandleRight13.CanCollide = false
HandleRight13.Size = Vector3.new(0.2, 0.3, 0.2)
HandleRight13.BrickColor = BrickColor.new("Medium stone grey")
local HandleRight15 = Instance.new("Part", Character)
HandleRight15.TopSurface = 10
HandleRight15.BottomSurface = 10
HandleRight15.FormFactor = 3
HandleRight15.CanCollide = false
HandleRight15.Size = Vector3.new(0.2, 4.1, 0.1)
HandleRight15.BrickColor = BrickColor.new("Dark stone grey")
local HRW15 = Weld(HandleRight4, HandleRight15, CFrame.new(0.1, 4.1/2, 0), CFrame.new())
Mesh(HandleRight15, Vector3.new(0.5, 1, 0.1), "Brick", "", "")
local HandleRight16 = Instance.new("Part", Character)
HandleRight16.TopSurface = 10
HandleRight16.BottomSurface = 10
HandleRight16.FormFactor = 3
HandleRight16.CanCollide = false
HandleRight16.Size = Vector3.new(0.2, 0.3, 0.2)
HandleRight16.BrickColor = BrickColor.new("Dark stone grey")
local HRW16 = Weld(HandleRight15, HandleRight16, CFrame.new(0, 4.1/2+(.15/2), 0) * CFrame.Angles(0, math.rad(90), 0), CFrame.new())
Mesh(HandleRight16, Vector3.new(0.1, 0.5, 0.5), "Wedge", "", "")
local HandleLeft = Instance.new("Part", Character)
HandleLeft.TopSurface = 10
HandleLeft.BottomSurface = 10
HandleLeft.FormFactor = 3
HandleLeft.CanCollide = false
HandleLeft.Size = Vector3.new(0.3, 1.25, 0.2)
HandleLeft.BrickColor = BrickColor.new("Dark stone grey")
local HLW = Weld(Character["Left Arm"], HandleLeft, CFrame.new(0, -0.75, 0) * CFrame.Angles(math.rad(-90), math.rad(90), 0), CFrame.new())
Mesh(HandleLeft, Vector3.new(1, 1, 0.5), "Brick", "", "")
local HandleLeft2 = Instance.new("Part", Character)
HandleLeft2.TopSurface = 10
HandleLeft2.BottomSurface = 10
HandleLeft2.FormFactor = 3
HandleLeft2.CanCollide = false
HandleLeft2.Size = Vector3.new(0.3, 1.25, 0.2)
HandleLeft2.BrickColor = BrickColor.new("Medium stone grey")
local HRW2 = Weld(HandleLeft, HandleLeft2, CFrame.new(.1, -0.1, 0), CFrame.new())
Mesh(HandleLeft2, Vector3.new(1, 1, 0.26), "Brick", "", "")
local HandleLeft4 = Instance.new("Part", Character)
HandleLeft4.TopSurface = 10
HandleLeft4.BottomSurface = 10
HandleLeft4.FormFactor = 3
HandleLeft4.CanCollide = false
HandleLeft4.Size = Vector3.new(0.95, 0.2, 0.2)
HandleLeft4.BrickColor = BrickColor.new("Dark stone grey")
local HRW4 = Weld(HandleLeft, HandleLeft4, CFrame.new(.25, .6, 0), CFrame.new())
Mesh(HandleLeft4, Vector3.new(1, 0.5, 0.5), "Brick", "", "")
local HandleLeft5 = Instance.new("Part", Character)
HandleLeft5.TopSurface = 10
HandleLeft5.BottomSurface = 10
HandleLeft5.FormFactor = 3
HandleLeft5.CanCollide = false
HandleLeft5.Size = Vector3.new(0.5, 0.1, 0.1)
HandleLeft5.BrickColor = BrickColor.new("Black") -- 1
local HRW5 = Weld(HandleLeft, HandleLeft5, CFrame.new(.35, 0.25, 0), CFrame.new())
Mesh(HandleLeft5, Vector3.new(0.95, 0.1, 0.25), "Brick", "", "")
local HandleLeft6 = Instance.new("Part", Character)
HandleLeft6.TopSurface = 10
HandleLeft6.BottomSurface = 10
HandleLeft6.FormFactor = 3
HandleLeft6.CanCollide = false
HandleLeft6.Size = Vector3.new(0.1, 0.35, 0.1)
HandleLeft6.BrickColor = BrickColor.new("Black")
local HRW6 = Weld(HandleLeft, HandleLeft6, CFrame.new(0.6, 0.4, 0), CFrame.new())
Mesh(HandleLeft6, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local HandleLeft7 = Instance.new("Part", Character)
HandleLeft7.TopSurface = 10
HandleLeft7.BottomSurface = 10
HandleLeft7.FormFactor = 3
HandleLeft7.CanCollide = false
HandleLeft7.Size = Vector3.new(0.5, 0.1, 0.1)
HandleLeft7.BrickColor = BrickColor.new("Black")
local HRW7 = Weld(HandleLeft, HandleLeft7, CFrame.new(.35, 0.4, 0), CFrame.new())
Mesh(HandleLeft7, Vector3.new(1, 0.1, 0.25), "Brick", "", "")
local HandleLeft8 = Instance.new("Part", Character)
HandleLeft8.TopSurface = 10
HandleLeft8.BottomSurface = 10
HandleLeft8.FormFactor = 3
HandleLeft8.CanCollide = false
HandleLeft8.Size = Vector3.new(0.3, 1, 0.2)
HandleLeft8.BrickColor = BrickColor.new("Black")
local HRW8 = Weld(HandleLeft2, HandleLeft8, CFrame.new(.1, -0.15, 0), CFrame.new())
Mesh(HandleLeft8, Vector3.new(1, 1, 0.1), "Brick", "", "")
local HandleLeft9 = Instance.new("Part", Character)
HandleLeft9.TopSurface = 10
HandleLeft9.BottomSurface = 10
HandleLeft9.FormFactor = 3
HandleLeft9.CanCollide = false
HandleLeft9.Size = Vector3.new(.75, 0.1, 0.1)
HandleLeft9.BrickColor = BrickColor.new("Black")
local HRW9 = Weld(HandleLeft, HandleLeft9, CFrame.new(.225, 0.55, 0), CFrame.new())
Mesh(HandleLeft9, Vector3.new(1, 0.3, 0.25), "Brick", "", "")
local HandleLeft10 = Instance.new("Part", Character)
HandleLeft10.TopSurface = 10
HandleLeft10.BottomSurface = 10
HandleLeft10.FormFactor = 3
HandleLeft10.CanCollide = false
HandleLeft10.Size = Vector3.new(0.1, 0.35, 0.1)
HandleLeft10.BrickColor = BrickColor.new("Black")
local HRW10 = Weld(HandleLeft, HandleLeft10, CFrame.new(.325, 0.35, 0), CFrame.new())
Mesh(HandleLeft10, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local HandleLeft11 = Instance.new("Part", Character)
HandleLeft11.TopSurface = 10
HandleLeft11.BottomSurface = 10
HandleLeft11.FormFactor = 3
HandleLeft11.CanCollide = false
HandleLeft11.Size = Vector3.new(0.2, 3.8, 0.1)
HandleLeft11.BrickColor = BrickColor.new("Medium stone grey")
local HandleLeft11x = Instance.new("Part", Character)
HandleLeft11x.TopSurface = 10
HandleLeft11x.BottomSurface = 10
HandleLeft11x.FormFactor = 3
HandleLeft11x.CanCollide = false
HandleLeft11x.Size = Vector3.new(0.2, 0.3, 0.2)
HandleLeft11x.BrickColor = BrickColor.new("Medium stone grey")
local HRW11x = Weld(HandleLeft11, HandleLeft11x, CFrame.new(0, 3.8/2+.15, 0) * CFrame.Angles(0, math.rad(270+180), 0), CFrame.new())
Mesh(HandleLeft11x, Vector3.new(0.1, 1, 1), "Wedge", "", "")
local HRW11 = Weld(HandleLeft4, HandleLeft11, CFrame.new(-0.05, 3.8/2, 0), CFrame.new())
Mesh(HandleLeft11, Vector3.new(1, 1, 0.1), "Brick", "", "")
local HandleLeft12 = Instance.new("Part", Character)
HandleLeft12.TopSurface = 10
HandleLeft12.BottomSurface = 10
HandleLeft12.FormFactor = 3
HandleLeft12.CanCollide = false
HandleLeft12.Size = Vector3.new(0.2, 1, 0.2)
HandleLeft12.BrickColor = BrickColor.new("Dark stone grey")
local HRW12 = Weld(HandleLeft4, HandleLeft12, CFrame.new(0.75/2+0.1, -0.45, 0) * CFrame.Angles(math.rad(180), math.rad(90), 0), CFrame.new())
Mesh(HandleLeft12, Vector3.new(0.5, 1, 0.5), "Wedge", "", "")
local HandleLeft13 = Instance.new("Part", Character)
HandleLeft13.TopSurface = 10
HandleLeft13.BottomSurface = 10
HandleLeft13.FormFactor = 3
HandleLeft13.CanCollide = false
HandleLeft13.Size = Vector3.new(0.2, 0.3, 0.2)
HandleLeft13.BrickColor = BrickColor.new("Institutional white")
local HandleLeft15 = Instance.new("Part", Character)
HandleLeft15.TopSurface = 10
HandleLeft15.BottomSurface = 10
HandleLeft15.FormFactor = 3
HandleLeft15.CanCollide = false
HandleLeft15.Size = Vector3.new(0.2, 4.1, 0.1)
HandleLeft15.BrickColor = BrickColor.new("Dark stone grey")
local HRW15 = Weld(HandleLeft4, HandleLeft15, CFrame.new(0.1, 4.1/2, 0), CFrame.new())
Mesh(HandleLeft15, Vector3.new(0.5, 1, 0.1), "Brick", "", "")
local HandleLeft16 = Instance.new("Part", Character)
HandleLeft16.TopSurface = 10
HandleLeft16.BottomSurface = 10
HandleLeft16.FormFactor = 3
HandleLeft16.CanCollide = false
HandleLeft16.Size = Vector3.new(0.2, 0.3, 0.2)
HandleLeft16.BrickColor = BrickColor.new("Dark stone grey")
local HRW16 = Weld(HandleLeft15, HandleLeft16, CFrame.new(0, 4.1/2+(.15/2), 0) * CFrame.Angles(0, math.rad(90), 0), CFrame.new())
Mesh(HandleLeft16, Vector3.new(0.1, 0.5, 0.5), "Wedge", "", "")
local GasRight1 = Instance.new("Part", Character)
GasRight1.TopSurface = 10
GasRight1.BottomSurface = 10
GasRight1.FormFactor = 3
GasRight1.CanCollide = false
GasRight1.Size = Vector3.new(0.45, 3.5, 0.7)
GasRight1.BrickColor = BrickColor.new("Dark stone grey")
local GRW1 = Weld(Character.Torso, GasRight1, CFrame.new(1, -1.4, 0.5) * CFrame.Angles(math.rad(-70), 0, 0), CFrame.new())
Mesh(GasRight1, Vector3.new(1, 1, 1), "Brick", "", "")
local GasRight2 = Instance.new("Part", Character)
GasRight2.TopSurface = 10
GasRight2.BottomSurface = 10
GasRight2.FormFactor = 3
GasRight2.CanCollide = false
GasRight2.Size = Vector3.new(0.2, 0.6, 0.2)
GasRight2.BrickColor = BrickColor.new("Really black")
local GRW2 = Weld(GasRight1, GasRight2, CFrame.new(-0.15, 3.5/2, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0), CFrame.new())
Mesh(GasRight2, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local GasRight3 = Instance.new("Part", Character)
GasRight3.TopSurface = 10
GasRight3.BottomSurface = 10
GasRight3.FormFactor = 3
GasRight3.CanCollide = false
GasRight3.Size = Vector3.new(0.2, 0.6, 0.2)
GasRight3.BrickColor = BrickColor.new("Really black")
local GRW3 = Weld(GasRight1, GasRight3, CFrame.new(-0.05, 3.5/2, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0), CFrame.new())
Mesh(GasRight3, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local GasRight4 = Instance.new("Part", Character)
GasRight4.TopSurface = 10
GasRight4.BottomSurface = 10
GasRight4.FormFactor = 3
GasRight4.CanCollide = false
GasRight4.Size = Vector3.new(0.2, 0.6, 0.2)
GasRight4.BrickColor = BrickColor.new("Really black")
local GRW4 = Weld(GasRight1, GasRight4, CFrame.new(0.05, 3.5/2, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0), CFrame.new())
Mesh(GasRight4, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local GasRight5 = Instance.new("Part", Character)
GasRight5.TopSurface = 10
GasRight5.BottomSurface = 10
GasRight5.FormFactor = 3
GasRight5.CanCollide = false
GasRight5.Size = Vector3.new(0.2, 0.6, 0.2)
GasRight5.BrickColor = BrickColor.new("Really black")
Mesh(GasRight5, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local GRW5 = Weld(GasRight1, GasRight5, CFrame.new(0.15, 3.5/2, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0), CFrame.new())
local GasRight6 = Instance.new("Part", Character)
GasRight6.TopSurface = 10
GasRight6.BottomSurface = 10
GasRight6.FormFactor = 3
GasRight6.CanCollide = false
GasRight6.Size = Vector3.new(0.45, 3.5, 0.45)
GasRight6.BrickColor = BrickColor.new("Institutional white")
Mesh(GasRight6, Vector3.new(1, 1, 1), "Head", "", "")
local GRW6 = Weld(GasRight1, GasRight6, CFrame.new(0, 0, 0.5), CFrame.new())
local GasRight6x = Instance.new("Part", Character)
GasRight6x.TopSurface = 10
GasRight6x.BottomSurface = 10
GasRight6x.FormFactor = 3
GasRight6x.CanCollide = false
GasRight6x.Size = Vector3.new(0.5, 1, 0.1)
GasRight6x.BrickColor = BrickColor.new("Institutional white")
Mesh(GasRight6x, Vector3.new(1, 1, 0.75), "Cylinder", "", "")
local GRW6 = Weld(GasRight6, GasRight6x, CFrame.new(0, 1.8, 0), CFrame.new())
local GasRight7x = Instance.new("Part", Character)
GasRight7x.TopSurface = 10
GasRight7x.BottomSurface = 10
GasRight7x.FormFactor = 3
GasRight7x.CanCollide = false
GasRight7x.Size = Vector3.new(0.1, 0.25, 0.1)
GasRight7x.BrickColor = BrickColor.new("Really black")
Mesh(GasRight7x, Vector3.new(0.1, 0.75, 0.75), "Cylinder", "", "")
local GRW6 = Weld(GasRight6x, GasRight7x, CFrame.new(0.275, 0, 0), CFrame.new())
local GasRight8x = Instance.new("Part", Character)
GasRight8x.TopSurface = 10
GasRight8x.BottomSurface = 10
GasRight8x.FormFactor = 3
GasRight8x.CanCollide = false
GasRight8x.Size = Vector3.new(0.1, 0.25, 0.1)
GasRight8x.BrickColor = BrickColor.new("Really black")
Mesh(GasRight8x, Vector3.new(0.1, 0.75, 0.75), "Cylinder", "", "")
local GRW6 = Weld(GasRight6x, GasRight8x, CFrame.new(-0.275, 0, 0), CFrame.new())
local GasRight7 = Instance.new("Part", Character)
GasRight7.TopSurface = 10
GasRight7.BottomSurface = 10
GasRight7.FormFactor = 3
GasRight7.CanCollide = false
GasRight7.Size = Vector3.new(0.6, 0.4, 1.25)
GasRight7.BrickColor = BrickColor.new("Black")
Mesh(GasRight7, Vector3.new(1, 1, 1), "Brick", "", "")
local GRW7 = Weld(GasRight1, GasRight7, CFrame.new(0, 0, 0.15), CFrame.new())
local GasRight8 = Instance.new("Part", Character)
GasRight8.TopSurface = 10
GasRight8.BottomSurface = 10
GasRight8.FormFactor = 3
GasRight8.CanCollide = false
GasRight8.Size = Vector3.new(0.6, 0.4, 1.25)
GasRight8.BrickColor = BrickColor.new("Black")
Mesh(GasRight8, Vector3.new(1, 1, 1), "Brick", "", "")
local GRW8 = Weld(GasRight1, GasRight8, CFrame.new(0, -3.5/2+0.4, 0.15), CFrame.new())
local GasRight9 = Instance.new("Part", Character)
GasRight9.TopSurface = 10
GasRight9.BottomSurface = 10
GasRight9.FormFactor = 3
GasRight9.CanCollide = false
GasRight9.Size = Vector3.new(0.6, 0.4, 1.25)
GasRight9.BrickColor = BrickColor.new("Black")
Mesh(GasRight9, Vector3.new(1, 1, 1), "Brick", "", "")
local GRW9 = Weld(GasRight1, GasRight9, CFrame.new(0, 3.5/2-0.4, 0.15), CFrame.new())
local GasLeft1 = Instance.new("Part", Character)
GasLeft1.TopSurface = 10
GasLeft1.BottomSurface = 10
GasLeft1.FormFactor = 3
GasLeft1.CanCollide = false
GasLeft1.Size = Vector3.new(0.45, 3.5, 0.7)
GasLeft1.BrickColor = BrickColor.new("Dark stone grey")
Mesh(GasLeft1, Vector3.new(1, 1, 1), "Brick", "", "")
local GLW1 = Weld(Character.Torso, GasLeft1, CFrame.new(-1, -1.4, 0.5) * CFrame.Angles(math.rad(-70), 0, 0), CFrame.new())
local GasLeft2 = Instance.new("Part", Character)
GasLeft2.TopSurface = 10
GasLeft2.BottomSurface = 10
GasLeft2.FormFactor = 3
GasLeft2.CanCollide = false
GasLeft2.Size = Vector3.new(0.2, 0.6, 0.2)
GasLeft2.BrickColor = BrickColor.new("Really black")
local GLW2 = Weld(GasLeft1, GasLeft2, CFrame.new(-0.15, 3.5/2, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0), CFrame.new())
Mesh(GasLeft2, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local GasLeft3 = Instance.new("Part", Character)
GasLeft3.TopSurface = 10
GasLeft3.BottomSurface = 10
GasLeft3.FormFactor = 3
GasLeft3.CanCollide = false
GasLeft3.Size = Vector3.new(0.2, 0.6, 0.2)
GasLeft3.BrickColor = BrickColor.new("Really black")
local GLW3 = Weld(GasLeft1, GasLeft3, CFrame.new(-0.05, 3.5/2, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0), CFrame.new())
Mesh(GasLeft3, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local GasLeft4 = Instance.new("Part", Character)
GasLeft4.TopSurface = 10
GasLeft4.BottomSurface = 10
GasLeft4.FormFactor = 3
GasLeft4.CanCollide = false
GasLeft4.Size = Vector3.new(0.2, 0.6, 0.2)
GasLeft4.BrickColor = BrickColor.new("Really black")
local GLW4 = Weld(GasLeft1, GasLeft4, CFrame.new(0.05, 3.5/2, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0), CFrame.new())
Mesh(GasLeft4, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local GasLeft5 = Instance.new("Part", Character)
GasLeft5.TopSurface = 10
GasLeft5.BottomSurface = 10
GasLeft5.FormFactor = 3
GasLeft5.CanCollide = false
GasLeft5.Size = Vector3.new(0.2, 0.6, 0.2)
GasLeft5.BrickColor = BrickColor.new("Really black")
local GLW5 = Weld(GasLeft1, GasLeft5, CFrame.new(0.15, 3.5/2, 0) * CFrame.Angles(math.rad(90), math.rad(90), 0), CFrame.new())
Mesh(GasLeft5, Vector3.new(0.1, 1, 0.25), "Brick", "", "")
local GasLeft6 = Instance.new("Part", Character)
GasLeft6.TopSurface = 10
GasLeft6.BottomSurface = 10
GasLeft6.FormFactor = 3
GasLeft6.CanCollide = false
GasLeft6.Size = Vector3.new(0.45, 3.5, 0.45)
GasLeft6.BrickColor = BrickColor.new("Institutional white")
Mesh(GasLeft6, Vector3.new(1, 1, 1), "Head", "", "")
local GLW6 = Weld(GasLeft1, GasLeft6, CFrame.new(0, 0, 0.5), CFrame.new())
local GasLeft6x = Instance.new("Part", Character)
GasLeft6x.TopSurface = 10
GasLeft6x.BottomSurface = 10
GasLeft6x.FormFactor = 3
GasLeft6x.CanCollide = false
GasLeft6x.Size = Vector3.new(0.5, 1, 0.1)
GasLeft6x.BrickColor = BrickColor.new("Institutional white")
Mesh(GasLeft6x, Vector3.new(1, 1, 0.75), "Cylinder", "", "")
local GRW6 = Weld(GasLeft6, GasLeft6x, CFrame.new(0, 1.8, 0), CFrame.new())
local GasLeft7x = Instance.new("Part", Character)
GasLeft7x.TopSurface = 10
GasLeft7x.BottomSurface = 10
GasLeft7x.FormFactor = 3
GasLeft7x.CanCollide = false
GasLeft7x.Size = Vector3.new(0.1, 0.25, 0.1)
GasLeft7x.BrickColor = BrickColor.new("Really black")
Mesh(GasLeft7x, Vector3.new(0.1, 0.75, 0.75), "Cylinder", "", "")
local GRW6 = Weld(GasLeft6x, GasLeft7x, CFrame.new(0.275, 0, 0), CFrame.new())
local GasLeft8x = Instance.new("Part", Character)
GasLeft8x.TopSurface = 10
GasLeft8x.BottomSurface = 10
GasLeft8x.FormFactor = 3
GasLeft8x.CanCollide = false
GasLeft8x.Size = Vector3.new(0.1, 0.25, 0.1)
GasLeft8x.BrickColor = BrickColor.new("Really black")
Mesh(GasLeft8x, Vector3.new(0.1, 0.75, 0.75), "Cylinder", "", "")
local GRW6 = Weld(GasLeft6x, GasLeft8x, CFrame.new(-0.275, 0, 0), CFrame.new())
local GasLeft7 = Instance.new("Part", Character)
GasLeft7.TopSurface = 10
GasLeft7.BottomSurface = 10
GasLeft7.FormFactor = 3
GasLeft7.CanCollide = false
GasLeft7.Size = Vector3.new(0.6, 0.4, 1.25)
GasLeft7.BrickColor = BrickColor.new("Black")
Mesh(GasLeft7, Vector3.new(1, 1, 1), "Brick", "", "")
local GLW7 = Weld(GasLeft1, GasLeft7, CFrame.new(0, 0, 0.15), CFrame.new())
local GasLeft8 = Instance.new("Part", Character)
GasLeft8.TopSurface = 10
GasLeft8.BottomSurface = 10
GasLeft8.FormFactor = 3
GasLeft8.CanCollide = false
GasLeft8.Size = Vector3.new(0.6, 0.4, 1.25)
GasLeft8.BrickColor = BrickColor.new("Black")
Mesh(GasLeft8, Vector3.new(1, 1, 1), "Brick", "", "")
local GLW8 = Weld(GasLeft1, GasLeft8, CFrame.new(0, -3.5/2+0.4, 0.15), CFrame.new())
local GasLeft9 = Instance.new("Part", Character)
GasLeft9.TopSurface = 10
GasLeft9.BottomSurface = 10
GasLeft9.FormFactor = 3
GasLeft9.CanCollide = false
GasLeft9.Size = Vector3.new(0.6, 0.4, 1.25)
GasLeft9.BrickColor = BrickColor.new("Black")
Mesh(GasLeft9, Vector3.new(1, 1, 1), "Brick", "", "")
local GLW9 = Weld(GasLeft1, GasLeft9, CFrame.new(0, 3.5/2-0.4, 0.15), CFrame.new())
local Behind1 = Instance.new("Part", Character)
Behind1.TopSurface = 10
Behind1.BottomSurface = 10
Behind1.FormFactor = 3
Behind1.CanCollide = false
Behind1.Size = Vector3.new(1.5, 0.2, 0.2)
Behind1.BrickColor = BrickColor.new("Black")
Mesh(Behind1, Vector3.new(1, 1, 0.1), "Brick", "", "")
local GLW9 = Weld(Character.Torso, Behind1, CFrame.new(0, -1, -0.5), CFrame.new())
local Behind2 = Instance.new("Part", Character)
Behind2.TopSurface = 10
Behind2.BottomSurface = 10
Behind2.FormFactor = 3
Behind2.CanCollide = false
Behind2.Size = Vector3.new(1.5, 0.2, 0.2)
Behind2.BrickColor = BrickColor.new("Black")
Mesh(Behind2, Vector3.new(1, 1, 0.1), "Brick", "", "")
local GLW9 = Weld(Character.Torso, Behind2, CFrame.new(0, -1, 0.5), CFrame.new())
local Behind3 = Instance.new("Part", Character)
Behind3.TopSurface = 10
Behind3.BottomSurface = 10
Behind3.FormFactor = 3
Behind3.CanCollide = false
Behind3.Size = Vector3.new(0.5, 0.3, 1.25)
Behind3.BrickColor = BrickColor.new("Black")
Mesh(Behind2, Vector3.new(1, 1, 1), "Brick", "", "")
local GLW9 = Weld(Character.Torso, Behind3, CFrame.new(0, -1, 0.75), CFrame.new())
local Behind4 = Instance.new("Part", Character)
Behind4.TopSurface = 10
Behind4.BottomSurface = 10
Behind4.FormFactor = 3
Behind4.CanCollide = false
Behind4.Size = Vector3.new(0.25, 1.25, 1.25)
Behind4.BrickColor = BrickColor.new("Black")
Mesh(Behind4, Vector3.new(1, 1, 1), "Cylinder", "", "")
local GLW9 = Weld(Behind3, Behind4, CFrame.new(0, 0.15, 0) * CFrame.Angles(math.rad(270), math.rad(90), 0), CFrame.new())
local Behind5 = Instance.new("Part", Character)
Behind5.TopSurface = 10
Behind5.BottomSurface = 10
Behind5.FormFactor = 3
Behind5.CanCollide = false
Behind5.Size = Vector3.new(0.1, 1.25, 1.25)
Behind5.BrickColor = BrickColor.new("Black")
Mesh(Behind5, Vector3.new(0.25, 1, 1), "Cylinder", "", "")
local GLW9 = Weld(Behind4, Behind5, CFrame.new(0, 0, -0.5) * CFrame.Angles(0, math.rad(-60), 0), CFrame.new())
local Behind6 = Instance.new("Part", Character)
Behind6.TopSurface = 10
Behind6.BottomSurface = 10
Behind6.FormFactor = 3
Behind6.CanCollide = false
Behind6.Size = Vector3.new(0.1, 1.25, 1.25)
Behind6.BrickColor = BrickColor.new("Black")
Mesh(Behind6, Vector3.new(0.25, 1, 1), "Cylinder", "", "")
local GLW9 = Weld(Behind4, Behind6, CFrame.new(0, 0, 0.5) * CFrame.Angles(0, math.rad(60), 0), CFrame.new())
local Behind7 = Instance.new("Part", Character)
Behind7.TopSurface = 10
Behind7.BottomSurface = 10
Behind7.FormFactor = 3
Behind7.CanCollide = false
Behind7.Size = Vector3.new(1, 1.1, 1.1)
Behind7.BrickColor = BrickColor.new("Medium stone grey")
Mesh(Behind7, Vector3.new(0.25, 1, 1), "Cylinder", "", "")
local GLW9 = Weld(Behind5, Behind7, CFrame.new(-0.125, 0, 0), CFrame.new())
local Behind8 = Instance.new("Part", Character)
Behind8.TopSurface = 10
Behind8.BottomSurface = 10
Behind8.FormFactor = 3
Behind8.CanCollide = false
Behind8.Size = Vector3.new(0.1, 1.25, 1.25)
Behind8.BrickColor = BrickColor.new("Black")
Mesh(Behind8, Vector3.new(0.25, 1, 1), "Cylinder", "", "")
local GLW9 = Weld(Behind7, Behind8, CFrame.new(-0.15, 0, 0), CFrame.new())
local Behind9 = Instance.new("Part", Character)
Behind9.TopSurface = 10
Behind9.BottomSurface = 10
Behind9.FormFactor = 3
Behind9.CanCollide = false
Behind9.Size = Vector3.new(1, 1.1, 1.1)
Behind9.BrickColor = BrickColor.new("Medium stone grey")
Mesh(Behind9, Vector3.new(0.25, 1, 1), "Cylinder", "", "")
local GLW9 = Weld(Behind6, Behind9, CFrame.new(-0.125, 0, 0), CFrame.new())
local Behind10 = Instance.new("Part", Character)
Behind10.TopSurface = 10
Behind10.BottomSurface = 10
Behind10.FormFactor = 3
Behind10.CanCollide = false
Behind10.Size = Vector3.new(0.1, 1.25, 1.25)
Behind10.BrickColor = BrickColor.new("Black")
Mesh(Behind10, Vector3.new(0.25, 1, 1), "Cylinder", "", "")
local GLW9 = Weld(Behind6, Behind10, CFrame.new(-0.3, 0, 0), CFrame.new())
local Behind11 = Instance.new("Part", Character)
Behind11.TopSurface = 10
Behind11.BottomSurface = 10
Behind11.FormFactor = 3
Behind11.CanCollide = false
Behind11.Size = Vector3.new(0.25, 0.75, 0.75)
Behind11.BrickColor = BrickColor.new("Black")
Mesh(Behind11, Vector3.new(1, 1, 1), "Cylinder", "", "")
local GLW9 = Weld(Behind4, Behind11, CFrame.new(-0.15, -0.15, 0) * CFrame.Angles(math.rad(270), 0, 0), CFrame.new())
local Behind12 = Instance.new("Part", Character)
Behind12.TopSurface = 10
Behind12.BottomSurface = 10
Behind12.FormFactor = 3
Behind12.CanCollide = false
Behind12.Size = Vector3.new(1, 0.25, 0.25)
Behind12.BrickColor = BrickColor.new("Institutional white")
Mesh(Behind12, Vector3.new(1, 1, 1), "Cylinder", "", "")
local GLW9 = Weld(Character.Torso, Behind12, CFrame.new(1.1, 0, 0) * CFrame.Angles(math.rad(90), 0, math.rad(90)), CFrame.new())
local Behind12x = Instance.new("Part", Character)
Behind12x.TopSurface = 10
Behind12x.BottomSurface = 10
Behind12x.FormFactor = 3
Behind12x.CanCollide = false
Behind12x.Size = Vector3.new(0.1, 0.25, 0.25)
Behind12x.BrickColor = BrickColor.new("Really black")
Mesh(Behind12x, Vector3.new(0.1, 0.5, 0.5), "Cylinder", "", "")
local GLW9 = Weld(Behind12, Behind12x, CFrame.new(-0.5, 0, 0) * CFrame.Angles(math.rad(180), 0, math.rad(180)), CFrame.new())
local Behind13 = Instance.new("Part", Character)
Behind13.TopSurface = 10
Behind13.BottomSurface = 10
Behind13.FormFactor = 3
Behind13.CanCollide = false
Behind13.Size = Vector3.new(1, 0.25, 0.25)
Behind13.BrickColor = BrickColor.new("Institutional white")
Mesh(Behind13, Vector3.new(1, 1, 1), "Brick", "", "")
local GLW9 = Weld(Behind12, Behind13, CFrame.new(0, 0, 0.15) * CFrame.Angles(math.rad(90), math.rad(180), 0), CFrame.new())
local Behind14 = Instance.new("Part", Character)
Behind14.TopSurface = 10
Behind14.BottomSurface = 10
Behind14.FormFactor = 3
Behind14.CanCollide = false
Behind14.Size = Vector3.new(1, 0.25, 0.25)
Behind14.BrickColor = BrickColor.new("Institutional white")
Mesh(Behind14, Vector3.new(1, 1, 1), "Cylinder", "", "")
local GLW9 = Weld(Character.Torso, Behind14, CFrame.new(-1.1, 0, 0) * CFrame.Angles(math.rad(90), 0, math.rad(90)), CFrame.new())
local Behind15 = Instance.new("Part", Character)
Behind15.TopSurface = 10
Behind15.BottomSurface = 10
Behind15.FormFactor = 3
Behind15.CanCollide = false
Behind15.Size = Vector3.new(1, 0.25, 0.25)
Behind15.BrickColor = BrickColor.new("Institutional white")
Mesh(Behind15, Vector3.new(1, 1, 1), "Brick", "", "")
local GLW9 = Weld(Behind14, Behind15, CFrame.new(0, 0, 0.15) * CFrame.Angles(math.rad(90), math.rad(180), 0), CFrame.new())
local Behind15x = Instance.new("Part", Character)
Behind15x.TopSurface = 10
Behind15x.BottomSurface = 10
Behind15x.FormFactor = 3
Behind15x.CanCollide = false
Behind15x.Size = Vector3.new(0.1, 0.25, 0.25)
Behind15x.BrickColor = BrickColor.new("Really black")
Mesh(Behind15x, Vector3.new(0.1, 0.5, 0.5), "Cylinder", "", "")
local GLW9 = Weld(Behind14, Behind15x, CFrame.new(-0.5, 0, 0) * CFrame.Angles(math.rad(180), 0, math.rad(180)), CFrame.new())
local Sockets = {GasRight2, GasRight3, GasRight4, GasRight5, GasLeft2, GasLeft3, GasLeft4, GasLeft5}
for _, v in next, Sockets do
    local SwordSocket1 = Instance.new("Part", Character)
    SwordSocket1.TopSurface = 10
    SwordSocket1.BottomSurface = 10
    SwordSocket1.FormFactor = 3
    SwordSocket1.CanCollide = false
    SwordSocket1.Size = Vector3.new(1, 0.3, 0.2)
    SwordSocket1.BrickColor = BrickColor.new("Medium stone grey")
    Mesh(SwordSocket1, Vector3.new(1, 1, 0.1), "Brick", "", "")
    Weld(v, SwordSocket1, CFrame.new(-0.2, 0.075, 0) * CFrame.Angles(0, math.rad(-180), 0), CFrame.new())
    local SwordSocket2 = Instance.new("Part", Character)
    SwordSocket2.TopSurface = 10
    SwordSocket2.BottomSurface = 10
    SwordSocket2.FormFactor = 3
    SwordSocket2.CanCollide = false
    SwordSocket2.Size = Vector3.new(1, 0.3, 0.2)
    SwordSocket2.BrickColor = BrickColor.new("Dark stone grey")
    Mesh(SwordSocket2, Vector3.new(1, 0.5, 0.1), "Brick", "", "")
    Weld(SwordSocket1, SwordSocket2, CFrame.new(0, -0.225, 0), CFrame.new())
    local SwordSocket3 = Instance.new("Part", Character)
    SwordSocket3.TopSurface = 10
    SwordSocket3.BottomSurface = 10
    SwordSocket3.FormFactor = 3
    SwordSocket3.CanCollide = false
    SwordSocket3.Size = Vector3.new(0.3, 0.2, 0.2)
    SwordSocket3.BrickColor = BrickColor.new("Medium stone grey")
    Mesh(SwordSocket3, Vector3.new(1, 0.5, 0.095), "Brick", "", "")
    Weld(SwordSocket2, SwordSocket3, CFrame.new(-0.5, 0.25, 0), CFrame.new())
    local SwordSocket4 = Instance.new("Part", Character)
    SwordSocket4.TopSurface = 10
    SwordSocket4.BottomSurface = 10
    SwordSocket4.FormFactor = 3
    SwordSocket4.CanCollide = false
    SwordSocket4.Size = Vector3.new(0.3, 0.2, 0.2)
    SwordSocket4.BrickColor = BrickColor.new("Medium stone grey")
    Mesh(SwordSocket4, Vector3.new(1, 0.5, 0.095), "Brick", "", "")
    Weld(SwordSocket2, SwordSocket4, CFrame.new(-0.5, 0.1, 0), CFrame.new())
end
for i = 0, 2 do
    -- HandleLeft15
    local Behind15x = Instance.new("Part", Character)
    Behind15x.TopSurface = 10
    Behind15x.BottomSurface = 10
    Behind15x.FormFactor = 3
    Behind15x.CanCollide = false
    Behind15x.Size = Vector3.new(0.6, 0.1, 0.1)
    Behind15x.BrickColor = BrickColor.new("Really black")
    Mesh(Behind15x, Vector3.new(1, 0.1, 0.25), "Brick", "", "")
    local GLW9 = Weld(SwordSocket1, Behind15x, CFrame.new((i/4)-0.3, -0.1, 0) * CFrame.Angles(0, 0, math.atan2(0.3, 0.2)), CFrame.new())
end
for i = -3, 3 do
    -- HandleLeft15
    local Behind15x = Instance.new("Part", Character)
    Behind15x.TopSurface = 10
    Behind15x.BottomSurface = 10
    Behind15x.FormFactor = 3
    Behind15x.CanCollide = false
    Behind15x.Size = Vector3.new(0.6, 0.1, 0.1)
    Behind15x.BrickColor = BrickColor.new("Really black")
    Mesh(Behind15x, Vector3.new(1, 0.1, 0.25), "Brick", "", "")
    local GLW9 = Weld(HandleLeft15, Behind15x, CFrame.new(-0.1, i/2, 0) * CFrame.Angles(0, 0, math.atan2(0.3, 0.2)), CFrame.new())
end
for i = -3, 3 do
    -- HandleLeft15
    local Behind15x = Instance.new("Part", Character)
    Behind15x.TopSurface = 10
    Behind15x.BottomSurface = 10
    Behind15x.FormFactor = 3
    Behind15x.CanCollide = false
    Behind15x.Size = Vector3.new(0.6, 0.1, 0.1)
    Behind15x.BrickColor = BrickColor.new("Really black")
    Mesh(Behind15x, Vector3.new(1, 0.1, 0.25), "Brick", "", "")
    local GLW9 = Weld(HandleRight15, Behind15x, CFrame.new(-0.1, i/2, 0) * CFrame.Angles(0, 0, math.atan2(0.3, 0.2)), CFrame.new())
end
Character.HumanoidRootPart.RootJoint.C0 = CFrame.new(0,0,0) Character.HumanoidRootPart.RootJoint.C1 = CFrame.new(0,0,0) -- .l.
local RAW = Weld(Character.Torso, Character["Right Arm"], CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0, 0, math.rad(30)), CFrame.new(0, 0.5, 0))
local LAW = Weld(Character.Torso, Character["Left Arm"], CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0, 0, math.rad(-30)), CFrame.new(0, 0.5, 0))
for _, v in pairs(Character:GetChildren()) do pcall(function() v.Material = "SmoothPlastic" v.TopSurface = 10 v.BottomSurface = 10 v.LeftSurface = 10 v.RightSurface = 10 v.FrontSurface = 10 v.BackSurface = 10 end) end
local ASpeed = 10 -- Regular animation frames per attack/pose
local Tool = Instance.new("HopperBin", Player.Backpack)
Tool.Name = "3DMG"
local CurrentAnim = "Idle" -- To avoid double animations.
ClearWeld(Character.HumanoidRootPart.RootJoint) -- Avoid glitches with RootJoint, it's often filled with odd values I don't seem to grasp.
function GetPose()
    RW1, RW2 = GetWeld(RAW)
    LW1, LW2 = GetWeld(LAW)
    HW1R, HW2R = GetWeld(HRW)
    HW1L, HW2L = GetWeld(HLW)
    NW1, NW2 = GetWeld(Character.Torso.Neck)
    HRP1, HRP2 = GetWeld(Character.HumanoidRootPart.RootJoint)
end
function ReturnPose()
    GetPose()
    ASpeed = 10
    for i = 1, ASpeed do
        SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0), Vector3.new(0, 0, 30), 1)
        SetWeld(LAW, 0, i, ASpeed, LW1, LW2, Vector3.new(-1.5, 0.5, 0), Vector3.new(0, 0, -30), 1)
        SetWeld(Character.Torso.Neck, 0, i, ASpeed, NW1, NW2, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0), 1)
        --        HRW.C0 = CFrame.new(0, -0.75, 0) * CFrame.Angles(math.rad(-90), math.rad(90), 0)
        --        HLW.C0 = CFrame.new(0, -0.75, 0) * CFrame.Angles(math.rad(-90), math.rad(90), 0)
        SetWeld(HRW, 0, i, ASpeed, HW1R, HW2R, Vector3.new(0, -0.75, 0), Vector3.new(-90, 90, 0), 1)
        SetWeld(HLW, 0, i, ASpeed, HW1L, HW2L, Vector3.new(0, -0.75, 0), Vector3.new(-90, 90, 0), 1)
        SetWeld(Character.HumanoidRootPart.RootJoint, 0, i, ASpeed, HRP1, HRP2, Vector3.new(0, 0, 0), Vector3.new(0, 0, 0), 1)
        wait(0)
    end
    ASpeed = 10
end
function Sound(id, pitch, parent)
    local sound = Instance.new("Sound", parent)
    sound.SoundId = "http://www.roblox.com/asset/?id="..id
    sound.Pitch = pitch
    sound:Play()
end
ray = function(Pos, Dir,length,tab) -- ray cast
    return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *(length or 999)),tab)
end
Character.Torso.Neck.C0 = CFrame.new(0, 1.5, 0)
Character.Torso.Neck.C1 = CFrame.new(0, 0, 0)

pcall(function() Chararacter.Torso.RP:remove'' end)
local rocketprop = Instance.new("Part",Character) -- ahhh it a kohl dll AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
rocketprop.FormFactor="Custom"
rocketprop.CanCollide=false
rocketprop.Anchored=true
rocketprop.Transparency=1
rocketprop.CFrame=CFrame.new(0,-100,0)

local RP = Instance.new("RocketPropulsion",Character.Torso)
RP.Name="RP"
RP.Target=rocketprop
RP.MaxTorque=Vector3.new(1/0,1/0,1/0)
RP.MaxThrust=100000
RP.MaxSpeed=200
RP.ThrustD=0.03
RP.ThrustP=5
RP.TurnD=0
RP.TurnP=0


Hooks = {}
HookP = {[-1]={},[1]={}}
Hit = nil
Grapple = {}

local keys = {}
Tool.Selected:connect(function(mouse)
    Mouse = mouse
    mouse.KeyDown:connect(function(key)
        coroutine.resume(coroutine.create(function()
        keys[key] = true
        local gp={['q']=-1,['e']=1}
    
        if (key=="q" or key=="e") and not Grapple[key] then
            local obj1=key=="q" and Behind15x or key=="e" and Behind12x
            local x=gp[key]
            Grapple[key]=true
            local hook = Instance.new("Part",Character)
            hook.FormFactor="Custom"
            hook.Size=Vector3.new(1,1,1)
            Mesh(hook,Vector3.new(0.2,1,0.2),"FileMesh","http://www.roblox.com/asset/?id=1033714","")
            hook.Transparency = 1
            hook.Anchored=true
            hook.BrickColor=BrickColor.new("Really black")
            hook.CanCollide=false
            hook.CFrame=CFrame.new(obj1.Position,Mouse.Hit.p)*CFrame.Angles(math.rad(-90),0,0)
            local rope = Instance.new("Part",Character)
            rope.FormFactor="Custom"
            rope.Size=Vector3.new(1,1,1)
            rope.Anchored=true
            Sound(147722227, 1, Character.Torso)
            rope.BrickColor=BrickColor.new("Really black")
            rope.CanCollide=false
            local ropem = Mesh(rope, Vector3.new(0.2,1,0.2), "Brick", "", "")
            local con=game:GetService'RunService'.RenderStepped:connect(function()
                local mag=(obj1.Position-hook.Position).magnitude
                ropem.Scale=Vector3.new(0.2,mag,0.2)
                rope.CFrame=CFrame.new(obj1.Position,hook.Position)*CFrame.new(0,0,-mag/2)*CFrame.Angles(math.rad(90),0,0)
                if not rope or not rope.Parent then pcall(function() con:disconnect() end) end
            end)
            local speed=26
            Spawn(function()
                for i=1,200 do
                    if not keys[key] then return end
                    local hit,pos=ray(hook.Position,hook.Position-hook.CFrame*CFrame.new(0,-speed,0).p,speed+1,Character)
                    if not hit then
                        hook.CFrame=hook.CFrame*CFrame.new(0,speed,0)*CFrame.Angles(math.rad(-0.1),0,0)
                    else
                        hook.CFrame=hook.CFrame*CFrame.new(0,(hook.Position-pos).magnitude,0)
                    end
                    local mag=(Behind12x.Position-hook.Position).magnitude
                    if hit and hit.Transparency<1 and hit.CanCollide then
                        Hit=hit
                        if hit.Parent:FindFirstChild("Humanoid") then
                            hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(9,15)
                        end
                        HookP[x]={Hit,Hit.CFrame:toObjectSpace(hook.CFrame),pos}
                        Hooks[x]=hook
                        hook.Transparency = 0
                        Sound(162897854, 3, hook)
                        break
                    end
                    wait()
                end
            end)
            repeat wait() until not keys[key]
            Hooks[x]=nil
            hook:Remove()
            rope:Remove()
            Grapple[key]=false
        end
        
        if key == "r" then
            if CurrentAnim ~= "Idle" then return end
            CurrentAnim = "Spinning"
            gyro.Parent = nil
            GetPose()
            ASpeed = 5
            for i = 1, ASpeed do
                SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0), Vector3.new(90, 0, 90), 1)
                SetWeld(LAW, 0, i, ASpeed, LW1, LW2, Vector3.new(-1.5, 0.5, 0), Vector3.new(90, 0, -90), 1)
                SetWeld(HRW, 0, i, ASpeed, HW1R, HW2R, Vector3.new(0, -0.75, 0), Vector3.new(-180, 0, 0), 1)
                SetWeld(HLW, 0, i, ASpeed, HW1L, HW2L, Vector3.new(0, -0.75, 0), Vector3.new(-180, 0, 0), 1)
                SetWeld(Character.HumanoidRootPart.RootJoint, 0, i, ASpeed, HRP1, HRP2, Vector3.new(0, 0, 0), Vector3.new(0, -100, 0), 1)
                wait(0)
            end
            GetPose()
            ASpeed = 15
            CanDamage = true
            for i = 1, ASpeed do
                SetWeld(Character.HumanoidRootPart.RootJoint, 0, i, ASpeed, HRP1, HRP2, Vector3.new(0, 0, 0), Vector3.new(0, 360, 0), 1)
                if i == 5 or i == 8 then Sound(145487017, 1, HandleRight) end
                wait(0)
            end
            CanDamage = false
            ClearWeld(Character.HumanoidRootPart.RootJoint)
            ReturnPose()
            gyro.Parent = Character.Torso
            CurrentAnim = "Idle"
        end
        if key == "t" then
            if CurrentAnim ~= "Idle" then return end
            CurrentAnim = "Slashing2"
            GetPose()
            gyro.Parent = nil
            for i = 1, ASpeed do
                SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0), Vector3.new(200, 0, 0), 1)
                SetWeld(LAW, 0, i, ASpeed, LW1, LW2, Vector3.new(-1.5, 0.5, 0), Vector3.new(200, 0, 0), 1)
                SetWeld(Character.Torso.Neck, 0, i, ASpeed, NW1, NW2, Vector3.new(0, 1.5, 0), Vector3.new(30, 0, 0), 1)
                wait(0)
            end
            GetPose()
            ASpeed = 10
            Sound(145487017, 1, Character.Torso)
            CanDamage = true
            for i = 1, ASpeed do
                SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0), Vector3.new(30, 20, -40), 1)
                SetWeld(LAW, 0, i, ASpeed, LW1, LW2, Vector3.new(-1.5, 0.5, 0), Vector3.new(30, -20, 40), 1)
                SetWeld(Character.Torso.Neck, 0, i, ASpeed, NW1, NW2, Vector3.new(0, 1.5, 0), Vector3.new(-10, 0, 0), 1)
                SetWeld(Character.HumanoidRootPart.RootJoint, 0, i, ASpeed, HRP1, HRP2, Vector3.new(0, 0, 0), Vector3.new(-360, 0, 0), 1)
                wait(0)
            end
            CanDamage = false
            ClearWeld(Character.HumanoidRootPart.RootJoint)
            ReturnPose()
            gyro.Parent = Character.Torso
            CurrentAnim = "Idle"
        end
        if key == "f" then
            if CurrentAnim ~= "Idle" then return end
            CurrentAnim = "Block"
            local block = Instance.new("IntValue", Character)
            block.Name = "Block"
            block.Value = 10
            GetPose()
            for i = 1, ASpeed do
                SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0), Vector3.new(70, 30, -20), 1)
                SetWeld(LAW, 0, i, ASpeed, LW1, LW2, Vector3.new(-1.5, 0.5, 0), Vector3.new(70, -30, 20), 1)
                wait(0)
            end
            repeat wait() until block.Value == 0 or keys["f"] == false ReturnPose() CurrentAnim = "Idle" block:Destroy()
        end
        if key == "g" then
            if CurrentAnim ~= "Idle" then return end
            CurrentAnim = "Blade Toss"
            GetPose()
            for i = 1, ASpeed do
                SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0), Vector3.new(90, 0, 140), 1)
                SetWeld(HRW, 0, i, ASpeed, HW1R, HW2R, Vector3.new(0, -0.75, 0), Vector3.new(-180, 180, 0), 1)
                SetWeld(LAW, 0, i, ASpeed, LW1, LW2, Vector3.new(-1.5, 0.5, 0), Vector3.new(90, 0, -140), 1)
                SetWeld(HLW, 0, i, ASpeed, HW1L, HW2L, Vector3.new(0, -0.75, 0), Vector3.new(-180, -180, 0), 1)
                wait(0)
            end
            GetPose()
            ASpeed = 5
            CanDamage = true
            for i = 1, ASpeed do
                SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0), Vector3.new(90, 0, 0), 1)
                SetWeld(LAW, 0, i, ASpeed, LW1, LW2, Vector3.new(-1.5, 0.5, 0), Vector3.new(90, 0, 0), 1)
                wait(0)
            end
            GetPose()
            ASpeed = 15
            Spawn(function() for i = 1, 6 do Sound(145487017, 1, Character.Torso) wait(.2) end end)
            for i = 1, ASpeed do
                SetWeld(HRW, 0, i, ASpeed, HW1R, HW2R, Vector3.new(5, -20, 0), Vector3.new(-180, 180, 360*2), 1)
                SetWeld(HLW, 0, i, ASpeed, HW1L, HW2L, Vector3.new(-5, -20, 0), Vector3.new(-180, -180, -360*2), 1)
                wait(0)
            end
            GetPose()
            for i = 1, ASpeed do
                SetWeld(HRW, 0, i, ASpeed, HW1R, HW2R, Vector3.new(0, -0.75, 0), Vector3.new(-180, 180, 0), 0)
                SetWeld(HLW, 0, i, ASpeed, HW1L, HW2L, Vector3.new(0, -0.75, 0), Vector3.new(-180, -180, 0), 0)
                wait(0)
            end
            CanDamage = false
            ReturnPose()
            CurrentAnim = "Idle"
        end
        if key == "z" then
            if CurrentAnim ~= "Idle" then return end
            CurrentAnim = "Electricute"
            Character.Humanoid.WalkSpeed = 0
            GetPose()
            useMouse = true
            rot = 90
            for i = 1, ASpeed do
                SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0), Vector3.new(90, 0, 90), 1)
                wait(0)
            end
            GetPose()
            wait(.2)
            Sound(157325701, 1, Character.Torso)
            local ray = Ray.new(Character["Right Arm"].CFrame.p, (mouse.Hit.p - Character["Right Arm"].CFrame.p).unit * 999)
            local hit, pos = workspace:FindPartOnRay(ray, Character)
            if hit and hit.Parent:FindFirstChild("Humanoid") then
                asd = math.random(20,30)
                hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - asd
                local model = Instance.new("Model", workspace)
                model.Name = asd
                local part = Instance.new("Part", model)
                part.TopSurface = 10
                part.Anchored = true
                part.BottomSurface = 10
                part.BrickColor = BrickColor.new("Bright red")
                part.Name = "Head"
                part.FormFactor = 3
                part.Size = Vector3.new(0.7, 0.1, 0.7)
                local hum = Instance.new("Humanoid", model)
                hum.MaxHealth = 0
                hum.Health = 0
                Sound(10209583, 1, Character.Torso)
                game.Debris:AddItem(model, 3)
                if hit.Parent:FindFirstChild("Head") then part.Position = hit.Parent.Head.Position + Vector3.new(math.random(-2, 2), 1, math.random(-1, 3)) else part.Position = hit.Parent:GetModelCFrame().p end
            end
            coroutine.wrap(function()
                for i = 1, 20 do
                    local x = {"New Yeller", "Institutional white", "Toothpaste"}
                    Lightning(Character["Right Arm"].Position, pos, math.random(2, 4), 5, x[1], 0.3, mran2(0.5, 0.9))
                    wait(0)
                end
            end)()
            Instance.new("Explosion", workspace).Position = pos
            Character.Humanoid.WalkSpeed = 16
            ReturnPose()
            CurrentAnim = "Idle"
            CanDamage2 = false
            rot = 180
            useMouse = false
        end
    end))
    end)
    mouse.KeyUp:connect(function(key) keys[key] = false end)
    mouse.Button1Down:connect(function()
        if CurrentAnim ~= "Idle" then return end
        CurrentAnim = "Slashing"
        gyro.Parent = nil
        GetPose()
        ASpeed = 5
        if Slash == "Right" then
            for i = 1, ASpeed do
                SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0), Vector3.new(90, 0, 50), 1)
                SetWeld(LAW, 0, i, ASpeed, LW1, LW2, Vector3.new(-1.5, 0.5, 0), Vector3.new(90, 0, 50), 1)
                SetWeld(Character.HumanoidRootPart.RootJoint, 0, i, ASpeed, HRP1, HRP2, Vector3.new(0, 0, 0), Vector3.new(0, -50, 0), 1)
                SetWeld(HRW,0,i,ASpeed,HW1R,HW2R,Vector3.new(0,-0.75,0),Vector3.new(-180,0,-90),1)
                SetWeld(HLW,0,i,ASpeed,HW1L,HW2L,Vector3.new(0,-0.75,0),Vector3.new(-180,0,-90),1)
                wait(0)
            end
            wait(0)
            GetPose()
            CanDamage = true
            Sound(145487017, 1, Character.Torso)
            for i = 1, ASpeed do
                SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0.25), Vector3.new(90, 0, -40), 1)
                SetWeld(LAW, 0, i, ASpeed, LW1, LW2, Vector3.new(-1.5, 0.5, 0), Vector3.new(90, 0, -40), 1)
                SetWeld(Character.HumanoidRootPart.RootJoint, 0, i, ASpeed, HRP1, HRP2, Vector3.new(0, 0, 0), Vector3.new(0, 50, 0), 1)
                SetWeld(Character.Torso.Neck, 0, i, ASpeed, NW1, NW2, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0), 1)
                SetWeld(HRW,0,i,ASpeed,HW1R,HW2R,Vector3.new(0,-0.75,0),Vector3.new(-180,0,90),1)
                SetWeld(HLW,0,i,ASpeed,HW1L,HW2L,Vector3.new(0,-0.75,0),Vector3.new(-180,0,90),1)
                wait(0)
            end
            Slash = "Left"
        else
            for i = 1, ASpeed do
                SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0), Vector3.new(90, 0, -50), 1)
                SetWeld(LAW, 0, i, ASpeed, LW1, LW2, Vector3.new(-1.5, 0.5, 0), Vector3.new(90, 0, -50), 1)
                SetWeld(Character.HumanoidRootPart.RootJoint, 0, i, ASpeed, HRP1, HRP2, Vector3.new(0, 0, 0), Vector3.new(0, 50, 0), 1)
                SetWeld(HRW,0,i,ASpeed,HW1R,HW2R,Vector3.new(0,-0.75,0),Vector3.new(-180,0,90),1)
                SetWeld(HLW,0,i,ASpeed,HW1L,HW2L,Vector3.new(0,-0.75,0),Vector3.new(-180,0,90),1)
                wait(0)
            end
            wait(0)
            GetPose()
            CanDamage = true
            Sound(145487017, 1, Character.Torso)
            for i = 1, ASpeed do
                SetWeld(RAW, 0, i, ASpeed, RW1, RW2, Vector3.new(1.5, 0.5, 0.25), Vector3.new(90, 0, 40), 1)
                SetWeld(LAW, 0, i, ASpeed, LW1, LW2, Vector3.new(-1.5, 0.5, 0), Vector3.new(90, 0, 40), 1)
                SetWeld(Character.HumanoidRootPart.RootJoint, 0, i, ASpeed, HRP1, HRP2, Vector3.new(0, 0, 0), Vector3.new(0, -50, 0), 1)
                SetWeld(Character.Torso.Neck, 0, i, ASpeed, NW1, NW2, Vector3.new(0, 1.5, 0), Vector3.new(0, 0, 0), 1)
                SetWeld(HRW,0,i,ASpeed,HW1R,HW2R,Vector3.new(0,-0.75,0),Vector3.new(-180,0,-90),1)
                SetWeld(HLW,0,i,ASpeed,HW1L,HW2L,Vector3.new(0,-0.75,0),Vector3.new(-180,0,-90),1)
                wait(0)
            end
            Slash = "Right"
        end
        CanDamage = false
        wait(0)
        ReturnPose()
        gyro.Parent = Character.Torso
        ASpeed = 10
        CurrentAnim = "Idle"
    end)
end)
function Damage(hit)
    if CanDamage and not Debounce and hit.Parent ~= Character then
        local damage = math.ceil(math.random(9,15) + Character.Torso.Velocity.magnitude/3)
        if hit.Parent:FindFirstChild("Humanoid") then
            Debounce = true
            print(hit.Parent:FindFirstChild("Block"))
            if hit.Parent:FindFirstChild("Block") and hit.Parent.Block.Value > 0 then
                local model = Instance.new("Model", workspace)
                model.Name = "Block!"
                local part = Instance.new("Part", model)
                part.TopSurface = 10
                part.Anchored = true
                part.BottomSurface = 10
                part.BrickColor = BrickColor.new("Bright blue")
                part.Name = "Head"
                part.FormFactor = 3
                part.Size = Vector3.new(0.7, 0.1, 0.7)
                local hum = Instance.new("Humanoid", model)
                hum.MaxHealth = 0
                hum.Health = 0
                game.Debris:AddItem(model, 3)
                print'derp'
                hit.Parent.Block.Value = hit.Parent.Block.Value - 1
                if hit.Parent:FindFirstChild("Head") then part.Position = hit.Parent.Head.Position + Vector3.new(math.random(-2, 2), 1, math.random(-1, 3)) else part.Position = hit.Parent:GetModelCFrame().p end
            else
                local model = Instance.new("Model", workspace)
                model.Name = damage
                print'noderp'
                hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - damage
                local part = Instance.new("Part", model)
                part.TopSurface = 10
                part.BottomSurface = 10
                part.BrickColor = BrickColor.new("Bright red")
                part.Name = "Head"
                part.Anchored = true
                part.FormFactor = 3
                part.Size = Vector3.new(0.7, 0.1, 0.7)
                if hit.Parent:FindFirstChild("Head") then part.Position = hit.Parent.Head.Position + Vector3.new(math.random(-2, 2), 1, math.random(-1, 3)) else part.Position = hit.Parent:GetModelCFrame().p end
                local hum = Instance.new("Humanoid", model)
                hum.MaxHealth = 0
                hum.Health = 0
                game.Debris:AddItem(model, 3)
                Sound(10209583, 1, Character.Torso)
            end
        end
        wait(.1)
        Debounce = false
    end
end
HandleRight15.Touched:connect(Damage)
HandleLeft15.Touched:connect(Damage)

game:GetService("RunService").RenderStepped:connect(function()
    if Electric then
        Lightning(Character.Torso.Position, Character.Torso.Position + Vector3.new(math.random(-5, 5), math.random(0,4), math.random(-5, 5)), math.random(3, 6), 5, "New Yeller", 0.3, mran2(0.5, 0.9))
    end
end)

rocketfired=false
while Character.Parent do
    for x=-1,1,2 do
        if Hooks[x] then Hooks[x].CFrame=HookP[x][1].CFrame*HookP[x][2] end
    end
    if Hooks[-1] or Hooks[1] then
        local hook=(Hooks[1] and Hooks[-1]) and 0 or Hooks[1] or Hooks[-1]
        HookPos=hook==0 and Hooks[1].Position+(Hooks[-1].Position-Hooks[1].Position)/2 or hook.CFrame.p
        rocketprop.CFrame=CFrame.new(HookPos+Vector3.new(0,4,0))
        if not rocketfired then 
            RP:Fire() 
            rocketfired=true 
        end
    else 
        RP.MaxTorque=Vector3.new()
        if rocketfired then 
            RP:Abort() 
            rocketfired=false 
        end
    end

    wait(0)
end
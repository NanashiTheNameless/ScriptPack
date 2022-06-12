asset = "http://www.roblox.com/asset/?id="
meshes = {["blast"] = 20329976,["ring"] = 3270017,["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["cloud"] = 1095708,["diamond"] = 9756362}
sounds = {["explode"] = 130792180;}
torsomesh = "rbxasset://fonts/torso.mesh"
colours = {"Tr. Red","Black","Tr. Blue","Black","Phosph. White","Royal purple"}
function rand(a)return (math.random()-.5)*2*a end
function q(f,arg)return coroutine.resume(coroutine.create(f),unpack(arg or {}))end
function fade(p,s,inc)q(function(part,start,increment)increment = increment or .05 for i=start,1,increment do part.Transparency = part.Transparency+increment wait(1/30)end end,{p,s,inc})end
function appear(p,s,inc)q(function(part,start,increment)increment = increment or .05 for i=start,0,-increment do part.Transparency = part.Transparency-increment wait(1/30)end end,{p,s,inc})end
function Part(Name,Parent,Size,CFrame,Color,Trans,Anch,Can,Mat,Ref)
        local p = Instance.new("Part",Parent)p.Name = Name
        p.FormFactor = "Custom"p.Size = Size
        p.Anchored = Anch p.CFrame = CFrame
        p.BrickColor = BrickColor.new(Color)p.Transparency = Trans
        p.TopSurface = 0 p.CanCollide = Can
        p.BottomSurface = 0 p.Material = Mat
        p.Reflectance = Ref or 0;p:BreakJoints()
        p.Locked = true;return p
end
function WedgePart(Name,Parent,Size,CFrame,Color,Trans,Anch,Can,Mat,Ref)
        local p = Instance.new("WedgePart",Parent)p.Name = Name
        p.FormFactor = "Custom"p.Size = Size
        p.Anchored = Anch p.CFrame = CFrame
        p.BrickColor = BrickColor.new(Color)p.Transparency = Trans
        p.TopSurface = 0 p.CanCollide = Can
        p.BottomSurface = 0 p.Material = Mat
        p.Reflectance = Ref or 0;p:BreakJoints()
        p.Locked = true;return p
end
function CornerWedgePart(Name,Parent,Size,CFrame,Color,Trans,Anch,Can,Mat,Ref)
        local p = Instance.new("CornerWedgePart",Parent)p.Name = Name;p.Size = Size
        p.Anchored = Anch p.CFrame = CFrame
        p.BrickColor = BrickColor.new(Color)p.Transparency = Trans
        p.TopSurface = 0 p.CanCollide = Can
        p.BottomSurface = 0 p.Material = Mat
        p.Reflectance = Ref or 0;p:BreakJoints()
        p.Locked = true;return p
end
function Mesh(Parent,Type,Scale,ID,TID)
        local m = Instance.new("SpecialMesh",Parent)m.MeshType = Type
        m.Scale = Scale or Vector3.new(1,1,1)
        if ID then m.MeshId = ID end if TID then m.TextureId = TID end
        return m
end
function Weld(p1,p2,c0,c1)
        local w = Instance.new("Weld",p1)w.Part0 = p1;w.Part1 = p2
        w.C0,w.C1 = c0 or CFrame.new(),c1 or CFrame.new()
        return w
end
function cslerp(start,destination,increment)
        local function s(a,b,c)return (1-c)*a+(c*b)end
        local c1 = {start.X,start.Y,start.Z,start:toEulerAnglesXYZ()}
        local c2 = {destination.X,destination.Y,destination.Z,destination:toEulerAnglesXYZ()}
        for i,v in pairs(c1)do c1[i] = s(v,c2[i],increment)end
        return CFrame.new(c1[1],c1[2],c1[3])*CFrame.Angles(c1[4],c1[5],c1[6])
end
local char
function rayCast(pos,dir,collidedlist,startpos,endpos,distleft)
        collidedlist = collidedlist
        startpos = startpos or pos
        distleft = distleft or dir.unit * dir.magnitude
        endpos = endpos or pos + distleft
        local ray = Ray.new(pos,distleft)
        local hitz,enz = workspace:FindPartOnRayWithIgnoreList(ray,collidedlist)
        if hitz~=nil then
                if hitz.CanCollide==false then
                        table.insert(collidedlist,hitz)
                        local newpos = enz
                        local newdistleft = distleft-(dir.unit*(pos-newpos).magnitude)
                        if newdistleft~=Vector3.new()then
                                return rayCast(newpos-(dir*0.01),dir,collidedlist,startpos,endpos,newdistleft+(dir*0.01))
                        end
                end
        end
        return hitz,enz,ray
end
function findSurface(part,position)
        local obj = part.CFrame:pointToObjectSpace(position)
        local siz = part.Size/2
        for i,v in pairs(Enum.NormalId:GetEnumItems()) do
                local vec = Vector3.FromNormalId(v)
                local wvec = part.CFrame:vectorToWorldSpace(vec)
                local vz = (obj)/(siz*vec)
                if (math.abs(vz.X-1)<0.01 or math.abs(vz.Y-1)<0.01 or math.abs(vz.Z-1)<0.01) then
                        return wvec,vec
                end
        end
end
function Smoke(origin,color)
        local p = Part("Effect",workspace,Vector3.new(2,2,2),origin*CFrame.new(rand(5),-1,rand(5)),color or "Black",.1,false,false,"SmoothPlastic")
        local m = Mesh(p,"Sphere",Vector3.new(1.25,1.25,1.25))
        local bp = Instance.new("BodyPosition",p)bp.D = 100 bp.P = 100 bp.position = p.Position+Vector3.new(0,7,0)
        q(function(pa,me)
                fade(pa,.1)
                for i=25,100 do
                        me.Scale = me.Scale+Vector3.new(0.15,0.1,0.15)
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function brickMagic(origin,color,size)
        local p = Part("Effect",workspace,Vector3.new(size,size,size),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,.2,true,false,"SmoothPlastic")
        local m = Mesh(p,"Brick")
        q(function(pa,me)
                fade(pa,.2)
                for i=20,100 do
                        me.Scale = me.Scale-Vector3.new(0.05,0.05,0.05)
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function spikeMagic(origin,size,color)
        local p = Part("Effect",workspace,Vector3.new(1,1,1),origin*CFrame.new(0,-size,0),color,1,true,false,"SmoothPlastic")
        local m = Mesh(p,"FileMesh",Vector3.new(size/2,size*2,size/2),asset..meshes["spike"])
        q(function(pa,me)
        appear(pa,1)
        for i=1,size,.5 do
                wait(1/30)
                pa.CFrame = pa.CFrame*CFrame.new(0,.5,0)
        end
        wait(math.random(2,3))fade(pa,0)
        Delay(3,function()pa:Destroy()end)
        end,{p,m})
end
function placePart(origin,size,color,material)
        local p = Part("Effect",workspace,Vector3.new(size,size,size),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,true,material)
        local m = Mesh(p,"Brick")
        q(function(pa,me)
                wait(5)
                fade(pa,0)
                Delay(1.25,function()pa:Destroy()end)
        end,{p,m})
end
function placePartRandSize(origin,min,max,color,material)
        local p = Part("Effect",workspace,Vector3.new(math.random(min,max),math.random(min,max),math.random(min,max)),origin*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,true,material)
        local m = Mesh(p,"Brick")
        q(function(pa,me)
                wait(5)
                fade(pa,0)
                Delay(1.25,function()pa:Destroy()end)
        end,{p,m})
end
function crater(origin,dist)
        local b = workspace.Base
        local bc = b and tostring(b.BrickColor) or "Bright green"
        local m = b and b.Material or "Grass"
        for i=0,360,30 do
                local cf = origin*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,dist)*CFrame.Angles(math.rad(i/30),0,rand(5))
                placePartRandSize(cf,5,15,bc,m)
        end
end
function cylinderExplode(origin,color,size,ysize)
        local p = Part("Effect",workspace,Vector3.new(size,ysize or size,size),origin,color,.2,true,false,"SmoothPlastic")
        local m = Instance.new("CylinderMesh",p)
        q(function(pa,me)
                for i=.2,1,.0075 do
                        me.Scale = me.Scale+Vector3.new(.1,0,.1)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function ringExplode(origin,color,size)
        local p = Part("Effect",workspace,Vector3.new(1,1,1),origin,color,.2,true,false,"SmoothPlastic")
        local m = Mesh(p,"FileMesh",Vector3.new(size,size,1),asset..meshes["ring"])
        q(function(pa,me)
                for i=.2,1,.0075 do
                        me.Scale = me.Scale+Vector3.new(0.25,0.25,0)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function crownExplode(origin,color,size)
        local p = Part("Effect",workspace,Vector3.new(size,size,size),origin,color,.2,true,false,"SmoothPlastic")
        local m = Mesh(p,"FileMesh",Vector3.new(size/2,size/2,size/2),asset..meshes["crown"])
        q(function(pa,me)
                for i=.2,1,.025 do
                        me.Scale = me.Scale+Vector3.new(0.75,0.75,0.75)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function glitter(origin,color)
        local p = Part("Effect",workspace,Vector3.new(0.75,0.75,0.75),origin*CFrame.new(rand(5),rand(5),rand(5))*CFrame.Angles(rand(5),rand(5),rand(5)),color,0,true,false,"SmoothPlastic")
        local m = Mesh(p,"Brick",Vector3.new(1,1,1))
        q(function(pa,me)
                fade(pa,0)
                for i=0,1,.05 do
                        me.Scale = me.Scale-Vector3.new(0.05,0.05,0.05)
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function sphereExtend(origin,color,size)
        local p = Part("Effect",workspace,Vector3.new(size,size,size),origin,color,0,true,false,"SmoothPlastic")
        local m = Mesh(p,"Sphere")
        q(function(pa,me)
                for i=0,1,0.05 do
                        me.Scale = me.Scale+Vector3.new(0,i*10,0)
                        pa.Transparency = i
                        wait(1/30)
                end
                pa:Destroy()
        end,{p,m})
end
function quickSound(id,v)
        local s = Instance.new("Sound",workspace)
        s.SoundId = id
        s.PlayOnRemove = true
        s.Volume = v or 1
        delay(0.025,function()s:remove()end)
end
function checkDmgArea(origin,dmg,d)
        for i,v in pairs(workspace:children())do
                if v~=char and v:FindFirstChild("Torso") then
                        local h;
                        for _,k in pairs(v:children())do if k:IsA("Humanoid") then h = k end end
                        local dist = (origin.p - v:FindFirstChild("Torso").CFrame.p).magnitude
                        if dist < d and h~=nil then
                                h.Health = h.Health - dmg
                        end
                end
        end
end
function findClosestPlayer(origin,d)
        local bdist,plr = d,nil
        for i,v in pairs(workspace:children())do
                if v~=char and v:FindFirstChild("Torso") then
                        local h;
                        for _,k in pairs(v:children())do if k:IsA("Humanoid") then h = k end end
                        local dist = (origin.p - v:FindFirstChild("Torso").CFrame.p).magnitude
                        if dist < bdist and h~=nil and h.Health~=0 then
                                bdist,plr = dist,v
                        end
                end
        end
        return bdist,plr
end
local plr = game.Players.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse''
local head = char:findFirstChild'Head'
local torso = char:findFirstChild'Torso'
local rightS = torso:findFirstChild'Right Shoulder'
local leftS = torso:findFirstChild'Left Shoulder'
local rightH = torso:findFirstChild'Right Hip'
local leftH = torso:findFirstChild'Left Hip'
local neck = torso:findFirstChild'Neck'
local humanoid = char:findFirstChild'Humanoid'
local rootpart = char:findFirstChild'HumanoidRootPart'
local rootJoint = rootpart:findFirstChild'RootJoint'
local cam = workspace.CurrentCamera
local recJump = false

humanoid.Changed:connect(function()
        if humanoid.Jump then
                recJump = true
                wait(.75)
                recJump = false
        end
end)
colours = {"Tr. Red","Black","Tr. Blue","Black","Phosph. White","Royal purple"}
mouse.KeyDown:connect(function(k)
        if k == " " then
                if hitfloor==nil then
                        torso.Velocity = Vector3.new(0,100,0)
                        ringExplode(torso.CFrame*CFrame.Angles(math.pi/2,0,0),colours[5],5)
                end
        end
end)
mouse.Button1Down:connect(function()
end)
----------------------------------------
local lp=game:service'Players'.localPlayer
local Sans=317772493 -- Sans
local Papyrus=338303436 -- Papyrus
local Asriel=331084437-- Keyboard typing / idk
local gVoufh3="Gaster" -- Gaster
local ActiveVoice=Asriel -- Type in the variable for the character (Voice1-gVoufh3)
local gVoices={
        340366916;
        339369934;
        341214061;
        341222723;
        341222653;
        341222608;
}

local interrupt=false;

lp.Chatted:connect(function(m)
        interrupt=true
        wait(.15)
        interrupt=false
        for i = 1, #m do
                if m:sub(1,2)~= '((' then
                        local s=Instance.new("Sound",workspace)
                        if ActiveVoice==gVoufh3 then
                                local a=gVoices
                                s.SoundId="rbxassetid://"..gVoices[math.random(1,#a)]
                        else
                                s.SoundId="rbxassetid://"..ActiveVoice
                        end
                        s.Volume=1
                        s:Play()
                        s:remove()
                        if ActiveVoice==Voice or ActiveVoice==gVoufh3 then
                                wait(.1)
                        else
                                wait(.082)
                        end        
                end
                if interrupt==true then
                        break
                end
        end
end)
-------------------------------

        pls = game:GetService'Players'
        lp = pls.LocalPlayer
        c = lp.Character
        rayModel = Instance.new("Model",c)

        reflect = function(d,n)
                local i, n = -1 * d.unit, n.unit
                local dot = n:Dot(i)
                return 2*dot*n - i
        end

        makeRayPart = function(pos,look)
                local ray = Ray.new(pos,look)
                local hit,hitpos,norm = workspace:FindPartOnRay(ray,c)
                local e = Instance.new("Part",rayModel)
                e.Anchored = true
                e.CanCollide = false
                e.Material = "Neon"
                e.FormFactor = "Custom"
                e.Size = Vector3.new(15,15,(pos - hitpos).magnitude)
                e.CFrame = CFrame.new(pos + (hitpos - pos)/2, pos)
                local cy=Instance.new("SpecialMesh",e)
        cy.MeshId = "http://www.roblox.com/asset/?id=9856898"
        cy.Scale = Vector3.new(15,15,(pos - hitpos).magnitude)*2
        cy.TextureId = "http://www.roblox.com/asset/?id=0"
        spawn(function()
        	while wait() do
        		cy.VertexColor = rainb(tick()*.5)
        	end
        end)
                for i = 1,2 do
                        local e = Instance.new("Sound",c)
                        e.Volume = .9
                        e.Pitch = 0.9
                        if i == 1 then
                                e.SoundId = "rbxassetid://340722848"
                        else
                                e.SoundId = "rbxassetid://340722848"
                        end
                        e:Play()
                        spawn(function()
                                wait(6)
                                e:Destroy()
                        end)
                        wait(.05)
                end
                if hit ~= nil then
                        newDir = reflect(look.unit,norm)
                        makeRayPart(hitpos,newDir * 999)
                end
        end
-------------------------------

        lp:GetMouse().KeyDown:connect(function(key)
                c = lp.Character
                if c and key == "r" then
                        makeRayPart(c.HumanoidRootPart.CFrame.p + Vector3.new(0,10,0), (lp:GetMouse().Hit.p).unit * 999 - c.HumanoidRootPart.CFrame.p)
                end
        end)

        game:GetService'RunService'.RenderStepped:connect(function()
                local FPS = 1/game:GetService'RunService'.RenderStepped:wait()
                for i,v in pairs (rayModel:children()) do
                        if v.ClassName == "Part" then
                                if v.Transparency >= .99 then
                                        v:Destroy()
                                else
                                        v.CanCollide = true
                                        local parts = v:GetTouchingParts()
                                        v.CanCollide = false
                                        for x = 1, #parts do
                                                if parts[x].Parent:FindFirstChild("Humanoid") and parts[x].Parent ~= c then
                                                        parts[x].Parent.Humanoid:TakeDamage(1/(FPS/60))
                                                end
                                        end
                                        v.Transparency = v.Transparency + .035/(FPS/60)
                                        v.Size = v.Size + Vector3.new(1.2/(FPS/60),.5/(FPS/60),0)
                                end
                        end
                end
        end)
function HSV(H,S,V) 
 H = H % 360 
 local C = V * S 
 local H2 = H/60 
 local X = C * (1 - math.abs((H2 %2) -1)) 
 local color = Color3.new(0,0,0) 
 if H2 <= 0 then 
    color = Color3.new(C,0,0) 
 elseif 0 <= H2 and H2 <= 1 then 
    color = Color3.new(C,X,0) 
 elseif 1 <= H2 and H2 <= 2 then 
    color = Color3.new(X,C,0) 
 elseif 2 <= H2 and H2 <= 3 then 
    color = Color3.new(0,C,X) 
 elseif 3 <= H2 and H2 <= 4 then
    color = Color3.new(0,X,C) 
 elseif 4 <= H2 and H2 <= 5 then 
    color = Color3.new(X,0,C) 
 elseif 5 <= H2 and H2 <= 6 then 
    color = Color3.new(C,0,X) 
 end 
 local m = V - C
 return Color3.new(color.r + m, color.g + m, color.b + m) 
end
local hue = 0

hue = (hue+1) % 360
local rgb = HSV(hue,.85,.85)

Lasers = {}
function MakeLaser(P1,P2)
    local LPart = Instance.new("Part",Workspace)
    LPart.Anchored = true
    LPart.FormFactor = "Custom"
    LPart.CanCollide = True
    LPart.Transparency = 0
    LPart.TopSurface = "Smooth"
    LPart.BottomSurface = "Smooth"
    LPart.BrickColor = BrickColor.new("Institutional white")
    LPart.Material = "Neon"
    table.insert(Lasers,LPart)
    LPartMesh = Instance.new("SpecialMesh",LPart)
    LPartMesh.MeshType = "Brick"
    LPartMesh.VertexColor = rainb(tick()*.5)
    local Pos1 = P1.CFrame.p
    local Pos2 = P2.CFrame.p
    local Dis = (Pos1-Pos2).magnitude
    LPart.Size = Vector3.new(4,4,Dis)
    LPart.CFrame = CFrame.new(Pos1,Pos2) *CFrame.new(0,0,-Dis/2)
    local cy=Instance.new("SpecialMesh",LPart)
        cy.MeshId = "http://www.roblox.com/asset/?id=9856898"
        cy.Scale = Vector3.new(4,4,Dis)*2
        cy.TextureId = 'rbxassetid://48358980'
        spawn(function()
        	while wait() do
        		cy.VertexColor = rainb(tick()*.5)
        	end
        end)
	LPart.Touched:connect(function(hit)
		if hit.Parent.ClassName == "Model" then
			if hit.Parent:FindFirstChild("Humanoid") then
				e3 = Instance.new('Explosion',Workspace)
				e3.Position = hit.Parent.Torso.Position
				e3.BlastPressure = 0
				e3.BlastRadius = 5
				hit.Parent:FindFirstChild("Humanoid"):TakeDamage(20)
				hit.Parent:FindFirstChild("Humanoid").PlatformStand = true
			end
		end
	end)
end
----------------------------------------
player=game:service'Players'.localPlayer
char=player.Character
Player = game:GetService("Players").LocalPlayer 
Cha = Player.Character
mouse=player:GetMouse()
Mouse = mouse
m=Instance.new('Model',char)
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local RootPart = char.HumanoidRootPart
local Humanoid = char.Humanoid
local Health = Humanoid.Health
local MaxHealth = Humanoid.MaxHealth
it = Instance.new
v3 = Vector3.new
c3 = Color3.new
bn = BrickColor.new
cn = CFrame.new
ca = CFrame.Angles
rd = math.rad
rn = math.random
mp = math.pi
mh = math.huge
ud = UDim2.new
cw = coroutine.wrap
ti = table.insert
tr = table.remove
bonesa=false
lasera=1
stance='normal'
attack=false
equipped=false
sprint=false
theme=false--megalovania
Health = 100000
wait(0.0005)
MaxHealth = 100000
char.Health:Destroy()
-----------------------------------------------------
function nooutline(part)
                part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
        end
lite = Instance.new("PointLight")
lite.Parent = Cha.Torso
lite.Brightness = 100
lite.Range = 8
lite.Color = Color3.new(1,1,1)
for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end
----------------------------------------------------
local m = Instance.new("Model")
m.Name = "Hair"
p1 = Instance.new("Part", m)
p1.BrickColor = BrickColor.new("Institutional white")
p1.FormFactor = Enum.FormFactor.Symmetric
p1.Size = Vector3.new(1, 1, 1)
p1.CFrame = CFrame.new(12.5095692, 22.9280014, 28.5988674, -1.79592973e-007, -0.978694081, 0.205298647, -1.48348063e-008, -0.205299929, -0.978699148, 0.999994814, 2.38417414e-007, -2.98021181e-008)
p1.CanCollide = false
p1.Locked = true
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=12212520"
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.VertexColor = Vector3.new(0, 0, 0)
b1.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p2 = Instance.new("Part", m)
p2.BrickColor = BrickColor.new("Pastel brown")
p2.Transparency = 1
p2.Name = "Head"
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(2, 1, 1)
p2.CFrame = CFrame.new(13.299921, 22.8300076, 28.5998688, -1.19988712e-007, 8.94068393e-008, -0.999995589, -1.48348125e-008, 1, -8.94068108e-008, 0.999995589, -1.48348231e-008, 2.39197504e-007)
p2.CanCollide = false
p2.Locked = true
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p2)
b2.MeshType = Enum.MeshType.Head
b2.Name = "Mesh"
b2.Scale = Vector3.new(1.25, 1.25, 1.25)
p3 = Instance.new("Part", m)
p3.BrickColor = BrickColor.new("Institutional white")
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(2, 2, 2)
p3.CFrame = CFrame.new(13.2999649, 23.4000015, 28.5999584, -1.19728938e-007, 5.96046092e-008, -0.999997199, -9.88988447e-009, 1, -5.96045844e-008, 0.999997199, -9.88988802e-009, 1.19728938e-007)
p3.CanCollide = false
p3.Locked = true
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("SpecialMesh", p3)
b3.MeshId = "http://www.roblox.com/asset/?id=16627529"
b3.TextureId = ""
b3.MeshType = Enum.MeshType.FileMesh
b3.Name = "Mesh"
b3.VertexColor = Vector3.new(0, 0, 0)
b3.Scale = Vector3.new(1.04999995, 1.04999995, 1.04999995)
p4 = Instance.new("Part", m)
p4.BrickColor = BrickColor.new("Institutional white")
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.CFrame = CFrame.new(13.220191, 23.5300064, 28.5998363, -2.39457108e-007, 1.19209027e-007, -0.99999398, -1.97797441e-008, 1, -1.19208977e-007, 0.99999398, -1.97797512e-008, 2.39457108e-007)
p4.CanCollide = false
p4.Locked = true
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("SpecialMesh", p4)
b4.MeshId = "http://www.roblox.com/asset/?id=19326912"
b4.TextureId = ""
b4.MeshType = Enum.MeshType.FileMesh
b4.Name = "Mesh"
b4.VertexColor = Vector3.new(0, 0, 0)
p5 = Instance.new("Part", m)
p5.BrickColor = BrickColor.new("Institutional white")
p5.FormFactor = Enum.FormFactor.Symmetric
p5.Size = Vector3.new(1, 1, 1)
p5.CFrame = CFrame.new(13.299963, 23.1500015, 28.5999584, -4.78911147e-007, 2.384173e-007, -0.999987543, -3.95593887e-008, 1, -2.38417186e-007, 0.999987543, -3.95594029e-008, 4.78911147e-007)
p5.CanCollide = false
p5.Locked = true
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p5)
b5.MeshId = "http://www.roblox.com/asset/?id=45916884"
b5.TextureId = ""
b5.MeshType = Enum.MeshType.FileMesh
b5.Name = "Mesh"
b5.VertexColor = Vector3.new(0, 0, 0)
b5.Scale = Vector3.new(1, 0.899999976, 1)
p6 = Instance.new("Part", m)
p6.BrickColor = BrickColor.new("Institutional white")
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(1, 1, 1)
p6.CFrame = CFrame.new(13.1003246, 23.2700119, 28.5500946, -9.57822294e-007, 4.76831474e-007, -0.999987543, -7.91193955e-008, 1, -2.84217094e-014, 0.999987543, -4.04650001e-015, 5.68434189e-014)
p6.CanCollide = false
p6.Locked = true
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p6)
b6.MeshId = "http://www.roblox.com/asset/?id=62246019"
b6.TextureId = ""
b6.MeshType = Enum.MeshType.FileMesh
b6.Name = "Mesh"
b6.VertexColor = Vector3.new(0, 0, 0)
p7 = Instance.new("Part", m)
p7.BrickColor = BrickColor.new("Institutional white")
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.CFrame = CFrame.new(13.1008148, 23.0000076, 28.4990215, -9.57822294e-007, 4.76831502e-007, -0.999987543, -7.91194026e-008, 1, 3.5914197e-019, 0.999987543, 3.05883884e-015, 5.68434189e-014)
p7.CanCollide = false
p7.Locked = true
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("SpecialMesh", p7)
b7.MeshId = "http://www.roblox.com/asset/?id=76056263"
b7.TextureId = ""
b7.MeshType = Enum.MeshType.FileMesh
b7.Name = "Mesh"
b7.VertexColor = Vector3.new(0, 0, 0)
p8 = Instance.new("Part", m)
p8.BrickColor = BrickColor.new("Institutional white")
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.CFrame = CFrame.new(12.3756638, 22.3460064, 28.5989819, -9.57822294e-007, -0.80510509, 0.593111277, -7.91194026e-008, -0.593119025, -0.805114806, 0.999987543, -1.28919533e-014, 2.06653508e-014)
p8.CanCollide = false
p8.Locked = true
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p8)
b8.MeshId = "http://www.roblox.com/asset/?id=12212520"
b8.TextureId = ""
b8.MeshType = Enum.MeshType.FileMesh
b8.Name = "Mesh"
b8.VertexColor = Vector3.new(0, 0, 0)
b8.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p9 = Instance.new("Part", m)
p9.BrickColor = BrickColor.new("Institutional white")
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(2, 1, 2)
p9.CFrame = CFrame.new(13.2349396, 23.2430096, 28.5993462, -9.57822294e-007, -0.0995007455, -0.995025039, -7.91194097e-008, 0.995037317, -0.0995024443, 0.999987543, -5.41274382e-016, -2.16294996e-014)
p9.CanCollide = false
p9.Locked = true
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("SpecialMesh", p9)
b9.MeshId = "http://www.roblox.com/asset/?id=12259089"
b9.TextureId = ""
b9.MeshType = Enum.MeshType.FileMesh
b9.Name = "Mesh"
b9.VertexColor = Vector3.new(0, 0, 0)
b9.Scale = Vector3.new(1.01999998, 1.04999995, 1.04999995)
p10 = Instance.new("Part", m)
p10.BrickColor = BrickColor.new("Institutional white")
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 1)
p10.CFrame = CFrame.new(12.9792271, 23.7430058, 28.6003838, -9.57822294e-007, -0.68356514, -0.729872584, -7.91194097e-008, 0.729881346, -0.683573902, 0.999987543, -1.35710662e-014, -1.68509463e-014)
p10.CanCollide = false
p10.Locked = true
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p10)
b10.MeshId = "http://www.roblox.com/asset/?id=12212520"
b10.TextureId = ""
b10.MeshType = Enum.MeshType.FileMesh
b10.Name = "Mesh"
b10.VertexColor = Vector3.new(0, 0, 0)
b10.Scale = Vector3.new(1, 1.60000002, 1.29999995)
p11 = Instance.new("Part", m)
p11.BrickColor = BrickColor.new("Institutional white")
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(1, 1, 1)
p11.CFrame = CFrame.new(12.8353081, 23.4680061, 28.5991058, -9.57822294e-007, -0.989463568, -0.144696504, -7.91194026e-008, 0.144697905, -0.989475906, 0.999987543, -2.11154641e-014, -4.7186215e-015)
p11.CanCollide = false
p11.Locked = true
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p11)
b11.MeshId = "http://www.roblox.com/asset/?id=12212520"
b11.TextureId = ""
b11.MeshType = Enum.MeshType.FileMesh
b11.Name = "Mesh"
b11.VertexColor = Vector3.new(0, 0, 0)
b11.Scale = Vector3.new(1, 1.60000002, 1.29999995)
w1 = Instance.new("Weld", p1)
w1.Name = "Head_Weld"
w1.Part0 = p1
w1.C0 = CFrame.new(-28.5990181, 16.950285, 19.8713875, 0, 0, 0.999999583, -0.97869873, -0.205299839, 5.96046448e-008, 0.20529972, -0.978699148, -7.4505806e-009)
w1.Part1 = p2
w1.C1 = CFrame.new(-28.5999966, -22.8300076, 13.2999811, 5.96046448e-008, 0, 0.999999642, 0, 1, 0, -0.999999642, 0, 5.96046448e-008)
w2 = Instance.new("Weld", p2)
w2.Name = "Weld"
w2.Part0 = p2
w2.C0 = CFrame.new(-28.5999527, -22.8300056, 13.2999592, -2.5997493e-010, -4.94494357e-009, 0.999998808, 2.98023224e-008, 1, -4.94494712e-009, -0.999998808, -2.98023224e-008, 1.19469163e-007)
w2.Part1 = p3
w2.C1 = CFrame.new(-28.5999947, -23.3999996, 13.2999821, 0, 0, 0.999999583, 0, 1, 0, -0.999999583, 0, 0)
w3 = Instance.new("Weld", p3)
w3.Name = "Weld"
w3.Part0 = p3
w3.C0 = CFrame.new(-28.5999012, -23.3999996, 13.2999363, -1.19728938e-007, -9.88988447e-009, 0.999997199, 5.96046092e-008, 1, -9.88988802e-009, -0.999997199, -5.96045844e-008, 1.19728938e-007)
w3.Part1 = p4
w3.C1 = CFrame.new(-28.5998726, -23.5300045, 13.2202082, 0, 0, 0.999999583, 0, 1, 0, -0.999999583, 0, 0)
w4 = Instance.new("Weld", p4)
w4.Name = "Weld"
w4.Part0 = p4
w4.C0 = CFrame.new(-28.5996857, -23.5300064, 13.2201195, -2.39457108e-007, -1.97797441e-008, 0.99999398, 1.19209027e-007, 1, -1.97797512e-008, -0.99999398, -1.19208977e-007, 2.39457108e-007)
w4.Part1 = p5
w4.C1 = CFrame.new(-28.5999947, -23.1499996, 13.2999821, 0, 0, 0.999999583, 0, 1, 0, -0.999999583, 0, 0)
w5 = Instance.new("Weld", p5)
w5.Name = "Weld"
w5.Part0 = p5
w5.C0 = CFrame.new(-28.5996189, -23.1500015, 13.2998009, -4.78911147e-007, -3.95593887e-008, 0.999987543, 2.384173e-007, 1, -3.95594029e-008, -0.999987543, -2.38417186e-007, 4.78911147e-007)
w5.Part1 = p6
w5.C1 = CFrame.new(-28.5501289, -23.27001, 13.1003361, 0, 0, 0.999999583, 0, 1, 0, -0.999999583, 0, 0)
w6 = Instance.new("Weld", p6)
w6.Name = "Weld"
w6.Part0 = p6
w6.C0 = CFrame.new(-28.5497494, -23.2700157, 13.100173, -9.57822294e-007, -7.91193955e-008, 0.999987543, 4.76831474e-007, 1, -4.04650001e-015, -0.999987543, -2.84217094e-014, 5.68434189e-014)
w6.Part1 = p7
w6.C1 = CFrame.new(-28.4990501, -23.0000057, 13.1008282, 0, 0, 0.999999881, 0, 1, 0, -0.999999881, 0, 0)
w7 = Instance.new("Weld", p7)
w7.Name = "Weld"
w7.Part0 = p7
w7.C0 = CFrame.new(-28.4986763, -23.0000114, 13.1006632, -9.57822294e-007, -7.91194026e-008, 0.999987543, 4.76831502e-007, 1, 3.05883884e-015, -0.999987543, 3.5914197e-019, 5.68434189e-014)
w7.Part1 = p8
w7.C1 = CFrame.new(-28.5990181, 23.2175999, 10.6510067, 0, 0, 0.999999583, -0.805118203, -0.59311378, -5.96046448e-008, 0.593113363, -0.80511874, 0)
w8 = Instance.new("Weld", p8)
w8.Name = "Weld"
w8.Part0 = p8
w8.C0 = CFrame.new(-28.5986366, 23.2175598, 10.6509457, -9.57822294e-007, -7.91194026e-008, 0.999987543, -0.80510509, -0.593119025, -1.28919533e-014, 0.593111277, -0.805114806, 2.06653508e-014)
w8.Part1 = p9
w8.C1 = CFrame.new(-28.5993843, -21.8107243, 15.4820604, 0, 0, 0.999999583, -0.0995036662, 0.995037258, 0, -0.995036721, -0.0995037258, 0)
w9 = Instance.new("Weld", p9)
w9.Name = "Weld"
w9.Part0 = p9
w9.C0 = CFrame.new(-28.598999, -21.8107738, 15.4818439, -9.57822294e-007, -7.91194097e-008, 0.999987543, -0.0995007455, 0.995037317, -5.41274382e-016, -0.995025039, -0.0995024443, -2.16294996e-014)
w9.Part1 = p10
w9.C1 = CFrame.new(-28.6004219, -8.45714283, 25.703455, 0, 0, 0.999999583, -0.683578134, 0.729877055, 2.98023224e-008, -0.729876637, -0.683578491, 8.94069672e-008)
w10 = Instance.new("Weld", p10)
w10.Name = "Weld"
w10.Part0 = p10
w10.C0 = CFrame.new(-28.6000366, -8.4574213, 25.703289, -9.57822294e-007, -7.91194097e-008, 0.999987543, -0.68356514, 0.729881346, -1.35710662e-014, -0.729872584, -0.683573902, -1.68509463e-014)
w10.Part1 = p11
w10.C1 = CFrame.new(-28.5991402, 9.30450344, 25.0782566, 0, 0, 0.999999583, -0.989475787, 0.144696504, 8.94069672e-008, -0.144696444, -0.989476025, 7.4505806e-009)
m.Parent = char
m:MakeJoints()
----------------------------------------------------
local cor = Instance.new("Part", char.Hair)
cor.Name = "Link"
cor.Locked = true
cor.BottomSurface = 0
cor.CanCollide = false
cor.Size = Vector3.new(1, 9, 1)
cor.Transparency = 1
cor.TopSurface = 0
corw = Instance.new("Weld", cor)
corw.Part0 = hed
corw.Part1 = cor
corw.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
corw.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
weld1 = Instance.new("Weld", char.Hair)
weld1.Part0 = cor
weld1.Part1 = char.Hair.Head
weld1.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
------------------------------------------------------
hed.BrickColor = BrickColor.new("Institutional white")
torso.BrickColor = BrickColor.new("Institutional white")
rleg.BrickColor = BrickColor.new("Institutional white")
lleg.BrickColor = BrickColor.new("Institutional white")
rarm.BrickColor = BrickColor.new("Institutional white")
larm.BrickColor = BrickColor.new("Institutional white")

local z=Instance.new("Sound", char)
z.SoundId="rbxassetid://328606227"
z.Pitch=1
z.Volume=5
z.Looped=true

Cha.Shirt:Remove()
Cha.Pants:Remove()

MainShirt = Instance.new("Shirt",Character)
MainShirt.Parent = Cha
MainShirt.ShirtTemplate = "http://www.roblox.com/asset/?id=335483801"
MainShirt.Name = "Shirt"

MainPants = Instance.new("Pants",Character)
MainPants.Parent = Cha
MainPants.PantsTemplate = "http://www.roblox.com/asset/?id=335484664"
MainPants.Name = "Pants"

playing = false
spawn(function()
        while wait()  do
                hed.BrickColor = BrickColor.new("Institutional white")
                torso.BrickColor = BrickColor.new("Institutional white")
                rleg.BrickColor = BrickColor.new("Institutional white")
                lleg.BrickColor = BrickColor.new("Institutional white")
                rarm.BrickColor = BrickColor.new("Institutional white")
                larm.BrickColor = BrickColor.new("Institutional white")
                if theme==false and playing == true then
                    z:Pause()
                    playing = false
                end
                if theme==true and playing == false then
                    z:Play()
                    playing = true
                end
                wait()
        end
end)
--[[local exprt=it('Part',m)
exprt.Anchored=true
exprt.CanCollide=false
exprt.Position=root.Position]]

function swait(num)
        if num==0 or num==nil then
                game:service'RunService'.Stepped:wait(0)
        else
                for i=0,num do
                        game:service'RunService'.Stepped:wait(0)
                end
        end
end

function Lerp(a, b, i)
        local com1 = {a.X, a.Y, a.Z, a:toEulerAnglesXYZ()}
        local com2 = {b.X, b.Y, b.Z, b:toEulerAnglesXYZ()}
        local calx = com1[1] + (com2[1] - com1[1]) * i
        local caly = com1[2] + (com2[2] - com1[2]) * i
        local calz = com1[3] + (com2[3] - com1[3]) * i
        local cala = com1[4] + (com2[4] - com1[4]) * i
        local calb = com1[5] + (com2[5] - com1[5]) * i
        local calc = com1[6] + (com2[6] - com1[6]) * i
        return CFrame.new(calx, caly, calz) * CFrame.Angles(cala, calb, calc)
end

weld = function(wp0, wp1, wc0x, wc0y, wc0z)
        wld = Instance.new("Weld", wp1)
        wld.Part0 = wp0
        wld.Part1 = wp1
        wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
        return wld
end

weld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
weld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
weld(torso, hed, 0, 1.5, 0)
weld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
weld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
weld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)

parts={}

function gasters()
        gaster1=it('Part',m)
        gaster1.FormFactor='Custom'
        gaster1.Anchored=true
        gaster1.Material = "Neon"
        gaster1.Size=Vector3.new(5,5,9)
        gaster1.CanCollide=false
        gaster1.Transparency=1
        gaster1.Name='gaster1'
        local sg=it('SurfaceGui',gaster1)
        sg.Name='gui'
        local il=it('ImageLabel',sg)
        il.Image='rbxassetid://341902014'
        il.Size=UDim2.new(0,800,0,600)
        il.BackgroundTransparency=1
        il.ImageTransparency=1
        il.Name='image1'
        local sg2=sg:clone()
        sg2.Parent=gaster1
        sg2.Name='gui2'
        sg2.Face='Back'
        local il2=il:clone()
        il2.Name='image2'
        il2.Parent=sg2
        gaster2=gaster1:clone()
        gaster2.Parent=m
        gaster2.Name='gaster2'
        local sg3=sg:clone()
        sg3.Parent=gaster1
        sg3.Name='gui3'
        sg3.Face='Back'
        local il3=il:clone()
        il3.Name='image2'
        il3.Parent=sg3
        gaster3=gaster1:clone()
        gaster3.Parent=m
        gaster3.Size=Vector3.new(9.6,7.4,0.2)
        gaster3.Name='gaster3'
end
gasters()


function CheckClose(Obj,Dist)
        for _,v in pairs(workspace:GetChildren()) do
                if v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') and v ~= char then
                        local DistFromTorso = (v.Torso.Position - Obj.Position).magnitude
                        if DistFromTorso < Dist then
                                return v
                        end
                end
        end
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
        return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function rainb(hue)
    local section = hue % 1 * 3
    local secondary = 0.5 * math.pi * (section % 1)
    if section < 1 then
        return Vector3.new(1, 1 - math.cos(secondary), 1 - math.sin(secondary))
    elseif section < 2 then
        return Vector3.new(1 - math.sin(secondary), 1, 1 - math.cos(secondary))
    else
        return Vector3.new(1 - math.cos(secondary), 1 - math.sin(secondary), 1)
    end
end

function ring(pos,x,y,z,rx,ry,rz)
        local rng = Instance.new("Part",m)
    rng.Anchored = true
    rng.BrickColor = BrickColor.Random()
    rng.CanCollide = true
    rng.FormFactor = 3
    rng.Name = "Ring"
    rng.Size = Vector3.new(1, 1, 1)
    rng.CanCollide = false
    rng.Transparency = 0.35
    rng.TopSurface = 0
    rng.BottomSurface = 0
    rng.CFrame = pos*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
    local rngm = Instance.new("SpecialMesh", rng)
    rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
    rngm.Scale = Vector3.new(x,y,z)
    spawn(function()
        	while wait() do
        		rngm.VertexColor = rainb(tick()*.5)
        	end
        end)
        coroutine.wrap(function()
                for i=0,1,.1 do
                        wait(1/30)
                        rngm.Scale=rngm.Scale+Vector3.new(3,3,3)
                        rng.Transparency=i
                        rng.CFrame=rng.CFrame*CFrame.Angles(rx,ry,rz)
                end
                rng:Destroy()
        end)()
end

h=gaster1
function laser(asd)
        local ray = Ray.new(asd.CFrame.p, (mouse.Hit.p -  asd.CFrame.p).unit*300)
        local position = mouse.Hit.p
        local distance = (position - asd.CFrame.p).magnitude
        local rp=Instance.new("Part",workspace)
        rp.Anchored=true
        rp.TopSurface="Smooth"
        rp.BottomSurface="Smooth"
        rp.Transparency=0
        rp.Parent=m
        rp.Material = "Neon"
        rp.FormFactor="Custom"
        rp.CanCollide=false
        rp.Size=Vector3.new(5,5,distance)
        rp.CFrame=CFrame.new(position, asd.CFrame.p) * CFrame.new(0, 0, -distance/2)
        local cy=Instance.new("SpecialMesh",rp)
        cy.MeshId = "http://www.roblox.com/asset/?id=9856898"
        cy.Scale = Vector3.new(5,5,distance)*2
        cy.TextureId = "http://www.roblox.com/asset/?id=0"
        spawn(function()
        	while wait() do
        		cy.VertexColor = rainb(tick()*.5)
        	end
        end)
        local circle=Instance.new('Part',m)
        circle.Transparency=0
        circle.CanCollide=false
        circle.TopSurface='Smooth'
        circle.Anchored=true
        circle.Material = "Neon"
        circle.FormFactor='Custom'
        circle.Size=Vector3.new(1,1,1)
        circle.CFrame=mouse.hit
        circle.BottomSurface='Smooth'
        local circlemesh=Instance.new('SpecialMesh',circle)
        circlemesh.MeshType='Sphere'
        circlemesh.Scale=Vector3.new(1,1,1)
        circlemesh.VertexColor = rainb(tick()*.5)
        ring(circle.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
        ring(circle.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
        ring(circle.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
        local z=Instance.new("Sound", rp)
        z.SoundId="rbxassetid://340722848"
        z.Pitch=1
        z.Volume=5
        wait()
        z:Play()
        coroutine.wrap(function()
                for i=0,1,.1 do
                        wait(1/30)
                        circlemesh.Scale=circlemesh.Scale+Vector3.new(3,3,3)
                        circle.Transparency=i
                end
                circle:Destroy()
        end)()
        for i=1,10 do
                wait()
                cy.Scale=cy.Scale-Vector3.new(0.1,0.1,0)
        end
        rp:Destroy()
        if CheckClose(circle,5) then
                --for i = 1,40 do
                        CheckClose(circle,5).Humanoid:TakeDamage(10)
                        --wait(0.05)
               -- end
        end
end
h2 = gaster3
function laser2(asd)
        local ray = Ray.new(asd.CFrame.p, (mouse.Hit.p -  asd.CFrame.p).unit*300)
        local position = mouse.Hit.p
        local distance = (position - asd.CFrame.p).magnitude
        local rp=Instance.new("Part",workspace)
        rp.Anchored=true
        rp.TopSurface="Smooth"
        rp.BottomSurface="Smooth"
        rp.Transparency=0
        rp.Parent=m
        rp.Material = "Neon"
        rp.FormFactor="Custom"
        rp.CanCollide=false
        rp.Size=Vector3.new(10,10,distance)
        rp.CFrame=CFrame.new(position, asd.CFrame.p) * CFrame.new(0, 0, -distance/2)
        cy = Instance.new("SpecialMesh",rp)
        cy.MeshId = "http://www.roblox.com/asset/?id=9856898"
        cy.Scale = Vector3.new(10,10,distance)*2
        cy.TextureId = "http://www.roblox.com/asset/?id=0"
        spawn(function()
        	while wait() do
        		cy.VertexColor = rainb(tick()*.5)
        	end
        end)
        local circle=Instance.new('Part',m)
        circle.Transparency=0
        circle.CanCollide=false
        circle.TopSurface='Smooth'
        circle.Anchored=true
        circle.Material = "Neon"
        circle.FormFactor='Custom'
        circle.Size=Vector3.new(1,1,1)
        circle.CFrame=mouse.hit
        circle.BottomSurface='Smooth'
        local circlemesh=Instance.new('SpecialMesh',circle)
        circlemesh.MeshType='Sphere'
        circlemesh.Scale=Vector3.new(1,1,1)
        circlemesh.VertexColor = rainb(tick()*.5)
        ring(circle.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
        ring(circle.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
        ring(circle.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
        local z=Instance.new("Sound", rp)
        z.SoundId="rbxassetid://340722848"
        z.Pitch=1
        z.Volume=5
        wait()
        z:Play()
        coroutine.wrap(function()
                for i=0,1,.1 do
                        wait(1/30)
                        circlemesh.Scale=circlemesh.Scale+Vector3.new(3,3,3)
                        circle.Transparency=i
                end
                circle:Destroy()
        end)()
        for i=1,10 do
                wait()
                cy.Scale=cy.Scale-Vector3.new(0.1,0.1,0)
        end
        rp:Destroy()
        if CheckClose(circle,5) then
            --for i=1,80 do
                    CheckClose(circle,5).Humanoid:TakeDamage(20)
                    --wait(0.05)
            --end
        end
end

function rocks(cf,e)
        local hit,pos=rayCast(torso.Position,(CFrame.new(root.Position,root.Position - Vector3.new(0,1,0))).lookVector,100,char)
        local part=Instance.new('Part',m)
        part.Size=Vector3.new(5,1,5)
        part.Position=pos
        part.CFrame=cf
        part.Material = "Neon"
        part.Anchored=true
        part.Transparency = 0
        --part.CFrame=workspace.Base.CFrame*pos
        local mesh=Instance.new('SpecialMesh',part)
        mesh.MeshId = "http://www.roblox.com/asset/?id=9856898"
        mesh.Scale = Vector3.new(5,1,5)*2
        mesh.TextureId = "http://www.roblox.com/asset/?id=0"
        spawn(function()
        	while wait() do
        		mesh.VertexColor = rainb(tick()*.5)
        	end
        end)
        local z=Instance.new("Sound", part)
        z.SoundId="rbxassetid://132758217"
        z.Pitch=1
        z.Volume=5
        wait()
        z:Play()
        ti(parts,e,part)
        if CheckClose(part,10) then
                CheckClose(part,10).Humanoid:TakeDamage(50)
                CheckClose(part,10).Torso.Velocity=Vector3.new(0,100,0)
        end
        for i=1,4 do
                game:service'RunService'.Heartbeat:wait(0)
                mesh.Scale=mesh.Scale+Vector3.new(0,11,0)
        end
end

function goback(mesha)
        for i=1,2.5 do
                game:service'RunService'.Heartbeat:wait(0)
                mesha.Scale=mesha.Scale-Vector3.new(0,9,0)
        end
end

function bones()
        
                --attack=true
                --[[for i=0,2,0.1 do
                        swait()
                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2, 0) * CFrame.Angles(math.rad(-45), math.rad(25),0 ), 0.2)
                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45), math.rad(-5), math.rad(20)), 0.2)
                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.2,0)*CFrame.Angles(math.rad(45),math.rad(0),math.rad(22)), 0.2)
                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-15)), 0.2)
                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, 0, 0) * CFrame.Angles(math.rad(45), 0, math.rad(22)), 0.2)
                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-25), 0, math.rad(0)), 0.2)
                end]]--
                local ass=root.CFrame
                for i=1,10 do
                        rocks(ass*CFrame.new(0,i,-5*(i*2)),i)--
                end
                for i,v in pairs(parts) do
                        pcall(function()
                                local z=Instance.new("Sound", v)
                                z.SoundId="rbxassetid://132758217"
                                z.Pitch=-1
                                z.Volume=5
                                wait()
                                z:Play()
                                for i=1,4 do
                                	pcall(function()
                                        game:service'RunService'.Heartbeat:wait(0)
                                        v.Mesh.Scale=v.Mesh.Scale-Vector3.new(0,11,0)
                                    end)
                                end
                                v:destroy()
                        end)
                end
                for i,v in pairs(parts) do
                        for i=1,10 do
                                tr(parts,i)
                        end
                end
                bonesa=false
        end

function bones2()
    if bonesa==false then
        bonesa=true
        local ass=root.CFrame
        for i=1,10 do
            rocks(ass*CFrame.new(-5*(i*2),0,0),i)
            rocks(ass*CFrame.new(5*(i*2),0,0),i)--
        end
        attack=false
        for i,v in pairs(parts) do
            pcall(function()
                local z=Instance.new("Sound", v)
                z.SoundId="rbxassetid://132758217"
                z.Pitch=-1
                z.Volume=5
                wait()
                z:Play()
                for i=1,4 do
                    game:service'RunService'.Heartbeat:wait(0)
                    v.Mesh.Scale=v.Mesh.Scale-Vector3.new(0,11,0)
                end
                v:destroy()
            end)
        end
        for i,v in pairs(parts) do
            for i=1,10 do
                    tr(parts,i)
            end
        end
        bonesa=false
    end
end
function bones3()
    if bonesa==false then
        bonesa=true
        local ass=root.CFrame
        for i=1,10 do
            rocks(ass*CFrame.new(-5*i,0,i*2)*CFrame.Angles(0,0,0),i)
            rocks(ass*CFrame.new(5*i,0,i*2)*CFrame.Angles(0,0,0),i)
        end
	for i=1,30 do
	   rocks(ass*CFrame.new(0,i,-5*(i*2)),i)--
       	end
        attack=false
        for i,v in pairs(parts) do
            pcall(function()
                local z=Instance.new("Sound", v)
                z.SoundId="rbxassetid://132758217"
                z.Pitch=-1
                z.Volume=5
                wait()
                z:Play()
                for i=1,4 do
                    game:service'RunService'.Heartbeat:wait(0)
                    v.Mesh.Scale=v.Mesh.Scale-Vector3.new(0,11,0)
                end
                v:destroy()
            end)
        end
        for i,v in pairs(parts) do
            for i=1,10 do
                tr(parts,i)
            end
        end
        bonesa=false
        end
end
function double()
    gaster1.gui.image1.ImageTransparency=1
    gaster1.gui2.image2.ImageTransparency=1
    gaster2.gui.image1.ImageTransparency=1
    gaster2.gui2.image2.ImageTransparency=1
    local ray = Ray.new(gaster1.CFrame.p, (mouse.Hit.p -  gaster1.CFrame.p).unit*300)
    local position = mouse.Hit.p
    local distance = (position - gaster1.CFrame.p).magnitude
    local rp=Instance.new("Part",workspace)
    rp.Anchored=true
    rp.TopSurface="Smooth"
    rp.BottomSurface="Smooth"
    rp.Transparency=0
    rp.Material = "Neon"
    rp.Parent=m
    rp.FormFactor="Custom"
    rp.CanCollide=false
    rp.Size=Vector3.new(5,5,distance)
    rp.CFrame=CFrame.new(position, gaster1.CFrame.p) * CFrame.new(0, 0, -distance/2)
    local cy=Instance.new("SpecialMesh",rp)
        cy.MeshId = "http://www.roblox.com/asset/?id=9856898"
        cy.Scale = Vector3.new(5,5,distance)*2
        cy.TextureId = "http://www.roblox.com/asset/?id=0"
        spawn(function()
        	while wait() do
        		cy.VertexColor = rainb(tick()*.5)
        	end
        end)
    local circle=Instance.new('Part',m)
    circle.Transparency=0
    circle.CanCollide=false
    circle.TopSurface='Smooth'
    circle.Anchored=true
    circle.Material = "Neon"
    circle.FormFactor='Custom'
    circle.Size=Vector3.new(1,1,1)
    circle.CFrame=mouse.hit
    circle.BottomSurface='Smooth'
    local circlemesh=Instance.new('SpecialMesh',circle)
    circlemesh.MeshType='Sphere'
    circlemesh.Scale=Vector3.new(1,1,1)
    circlemesh.VertexColor = rainb(tick()*.5)
    local rp2=Instance.new("Part",workspace)
    rp2.Anchored=true
    rp2.TopSurface="Smooth"
    rp2.BottomSurface="Smooth"
    rp2.Transparency=0
    rp2.Parent=m
    rp2.Material = "Neon"
    rp2.FormFactor="Custom"
    rp2.CanCollide=false
    rp2.Size=Vector3.new(5,5,distance)
    rp2.CFrame=CFrame.new(position, gaster2.CFrame.p) * CFrame.new(0, 0, -distance/2)
    local cy2=Instance.new("SpecialMesh",rp2)
    cy2.MeshId = "http://www.roblox.com/asset/?id=9856898"
    cy2.Scale = Vector3.new(5,5,distance)*2
    cy2.TextureId = "http://www.roblox.com/asset/?id=0"
    spawn(function()
     	while wait() do
       		cy2.VertexColor = rainb(tick()*.5)
       	end
    end)
    local circle2=Instance.new('Part',m)
    circle2.Transparency=0
    circle2.CanCollide=false
    circle2.TopSurface='Smooth'
    circle2.Anchored=true
    circle2.Material = "Neon"
    circle2.FormFactor='Custom'
    circle2.Size=Vector3.new(1,1,1)
    circle2.CFrame=mouse.hit
    circle2.BottomSurface='Smooth'
    local circlemesh2=Instance.new('SpecialMesh',circle2)
    circlemesh2.MeshType='Sphere'
    circlemesh2.Scale=Vector3.new(1,1,1)
    circlemesh2.VertexColor = rainb(tick()*.5)
    ring(circle.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
    ring(circle.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
    ring(circle.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
    ring(circle2.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
    ring(circle2.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
    ring(circle2.CFrame,1,1,2,math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
    local z=Instance.new("Sound", rp)
    z.SoundId="rbxassetid://340722848"
    z.Pitch=1
    z.Volume=5
    wait()
    z:Play()
    local z=Instance.new("Sound", rp2)
    z.SoundId="rbxassetid://340722848"
    z.Pitch=1
    z.Volume=5
    wait()
    z:Play()
    if CheckClose(circle,5) then
        CheckClose(circle,5).Humanoid:TakeDamage(20)
        CheckClose(circle2,5).Humanoid:TakeDamage(20)
    end
    coroutine.wrap(function()
        for i=0,1,.1 do
                wait(1/30)
                circlemesh.Scale=circlemesh.Scale+Vector3.new(3,3,3)
            circle.Transparency=i
            circlemesh2.Scale=circlemesh2.Scale+Vector3.new(3,3,3)
            circle2.Transparency=i
        end
        circle:Destroy()
    end)()
    for i=1,10 do
        wait()
        cy.Scale=cy.Scale-Vector3.new(0.1,0.1,0)
        cy2.Scale=cy2.Scale-Vector3.new(0.1,0.1,0)
    end
    rp2:destroy()
    rp:Destroy()
    gaster1.gui.image1.ImageTransparency=1
    gaster1.gui2.image2.ImageTransparency=1
    gaster2.gui.image1.ImageTransparency=1
    gaster2.gui2.image2.ImageTransparency=1
end
charged = true
--[[spawn(function()
player=game.Players.LocalPlayer
char=player.Character
lastCF=char.Torso.Position
x1=Instance.new("Part",game.Workspace)
x1.Size=Vector3.new(1,1,1)
x1.CanCollide=false
x1.Anchored=true
x1.Transparency=1
spawn(function()
while true do
wait(-1)
x1.CFrame=char.Torso.CFrame*CFrame.Angles(math.rad(math.random(1,360)),math.rad(math.random(1,360)),math.rad(math.random(50,360)))*CFrame.new(0,0,6)
end
end)
for i = 1,math.huge do
local dist2 = (lastCF-x1.Position).magnitude
x2=Instance.new("Part",game.Workspace)
x2.Size=Vector3.new(1,1,1)
x2.Material="Neon"
x2.CFrame=CFrame.new(lastCF,x1.Position)*CFrame.new(0,0,-dist2/2)
x2.CanCollide=false
x2.Anchored=true
local m=Instance.new("SpecialMesh",x2)
m.MeshId = "http://www.roblox.com/asset/?id=9856898"
m.Scale = Vector3.new(0.5,0.5,dist2)*2
m.TextureId = "http://www.roblox.com/asset/?id=0"
spawn(function()
   	while wait() do
 		m.VertexColor = rainb(tick()*.5)
   	end
end)
lastCF=x1.Position
spawn(function()
for i = 1,100 do
x=m.Scale.x/10
y=m.Scale.x/10
m.Scale=m.Scale-Vector3.new(x,y,0)
wait()
end
end)
game.Debris:AddItem(x2,1.5)
wait()
end
x1:Destroy()
end)]]--
WeldZ = function(p0,p1,x,y,z,rx,ry,rz,par)
    p0.Position = p1.Position
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end
z0=Instance.new("Part",char)
z0.Material = "Neon"
z0.CanCollide = false
z0.Size = Vector3.new(5000,0.01,5000)
z0.Transparency=1
WeldZ(z0,Workspace.Terrain,0,1000,0,0,0,0,z0)
local Dreemurr=Instance.new("SpecialMesh",z0)
Dreemurr.MeshId = "http://www.roblox.com/asset/?id=9856898"
Dreemurr.Scale = Vector3.new(5000,0.01,5000)*2
Dreemurr.TextureId = "http://www.roblox.com/asset/?id=0"
function StarRain(amount)
	Rain=true
	for i = 1,amount do
		x = Instance.new("Part")
		x.Size = Vector3.new(3,8,3)
		x.TopSurface = "Smooth"
		x.BottomSurface = "Smooth"
		x.CanCollide = false
		x.Anchored = false
		x.Material = "Neon"
		x.Transparency = 0
		local star=Instance.new("SpecialMesh",x)
		star.MeshId = "http://www.roblox.com/asset/?id=120647846"
		star.Scale = Vector3.new(30,30,30)
		star.TextureId = "http://www.roblox.com/asset/?id=120647846"
		spawn(function()
			while wait() do
				star.VertexColor = rainb(tick()*.5)
			end
		end)
		y = Instance.new("BodyVelocity")
		y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		y.velocity = Vector3.new(0,-200,0)
		x.Parent = Workspace
		y.Parent = x
		x.CFrame = Workspace.Terrain.CFrame*CFrame.new(math.random(-500,500),1000, math.random(-500,500))
		game.Debris:AddItem(x, 10)
		x.Anchored = true
		x.BrickColor = BrickColor.new("Teal")
		x.Anchored = false
		x.Touched:connect(function(hit)
			if hit.Parent:FindFirstChild("Humanoid") then
				hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1)
			end
		end)
		wait(1)
		x2 = Instance.new("Part")
		x2.Size = Vector3.new(3,8,3)
		x2.TopSurface = "Smooth"
		x2.BottomSurface = "Smooth"
		x2.CanCollide = false
		x2.Anchored = false
		x2.Material = "Neon"
		x2.Transparency = 0
		local star2=Instance.new("SpecialMesh",x2)
		star2.MeshId = "http://www.roblox.com/asset/?id=120647846"
		star2.Scale = Vector3.new(30,30,30)
		star2.TextureId = "http://www.roblox.com/asset/?id=120647846"
		spawn(function()
			while wait() do
				star2.VertexColor = rainb(tick()*.5)
			end
		end)
		y2 = Instance.new("BodyVelocity")
		y2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		y2.velocity = Vector3.new(0,-200,0)
		x2.Parent = Workspace
		y2.Parent = x2
		x2.CFrame = Workspace.Terrain.CFrame*CFrame.new(math.random(-50,50),1000, math.random(-500,500))
		game.Debris:AddItem(x2, 10)
		x2.Anchored = true
		x2.BrickColor = BrickColor.new("Teal")
		x2.Anchored = false
		x2.Touched:connect(function(hit)
			if hit.Parent:FindFirstChild("Humanoid") then
				hit.Parent:FindFirstChild("Humanoid"):TakeDamage(1)
			end
		end)
	end
end
Rain = false
mouse.KeyDown:connect(function(k)
    k=k:lower()
    if k=='z' then
        bones()
    elseif k == 'g' then
    	local MPS = {}
        local MousePos = Mouse.Hit.p
        local LastPart = nil
        for i = 1,20 do
        local part = Instance.new("Part",Workspace)
        part.Anchored = true
        table.insert(MPS,part)
        part.FormFactor = "Custom"
        part.Size = Vector3.new(0,0,0)
        part.Transparency = 1
        if LastPart == nil then
        part.CFrame = CFrame.new(MousePos.X,MousePos.Y,MousePos.Z)
        else
        part.CFrame = CFrame.new(LastPart.CFrame.X +math.random(-20,20),LastPart.CFrame.Y +math.random(0,20),LastPart.CFrame.Z +math.random(-20,20))
        end
        LastPart = part
        end
        for i,v in ipairs(MPS) do
        if i > 1 then
        MakeLaser(MPS[i-1],v)
        end
        end
        wait(1.8)
        for i,v in ipairs(Lasers) do
        v:Destroy()
        end
        for i,v in ipairs(MPS) do
        v:Destroy()
        end
	elseif k=='p' then
		if stance == 'normal' then
			stance='headshake'
		else
			stance='normal'
		end
    elseif k=='x' then
              bones2()
    elseif k=='c' then
               bones3()
    elseif k=='[' then
        theme = true
    elseif k==']' then
        theme = false
    elseif k=='e' then
        if lasera==1 then
            lasera=2
            h=gaster1
            gaster1.Transparency=0
            laser(h)
            gaster1.Transparency=1
        elseif lasera==2 then
            lasera=1
            h=gaster2
            gaster2.Transparency=0
            laser(h)
            gaster2.Transparency=1
        end
    elseif k=="q" then
        gaster3.Transparency=0
        laser2(h2)
        gaster3.Transparency=1
    elseif k=='f' then
        double()
    elseif k=='v' and Rain == false then
    	StarRain(550)
    	wait(5)
    	Rain = false
    elseif k=='0' then
        sprint=true
    end
end)

mouse.KeyUp:connect(function(k)
        k=k:lower()
        if k=='0' then
                sprint=false
        end
end)

for i,v in pairs(hed:children()) do
	if v.ClassName == "Sound" then
		v:Destroy()
	end
end


local sine = 0
local change = 1
local val = 0

char.Humanoid.Health = 100000
wait()
char.Humanoid.MaxHealth = 100000
char.Humanoid.Health = 100000
pcall(function()
char.Health:Destroy()
end)
while true do
        swait()
        sine = sine + change
        local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
        local velderp=RootPart.Velocity.y
        hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,char)
        if equipped==true or equipped==false then
                if RootPart.Velocity.y > 1 and hitfloor==nil then 
                        Anim="Jump"
                        if attack==false then
                                if sprint then
                                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(30), 0, 0), 0.1)
                                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
                                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.65,0)*CFrame.Angles(0,0,math.rad(100)), 0.2)
                                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.65,0)*CFrame.Angles(0,0,math.rad(-100)), 0.2)
                                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -.1, -.1) * CFrame.Angles(math.rad(30), 0, 0), 0.2)
                                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -.3, -.5) * CFrame.Angles(math.rad(30), 0, 0), 0.2)
                                else
                                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(-30), 0, 0), 0.2)
                                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
                                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.65,0)*CFrame.Angles(0,0,math.rad(100)), 0.2)
                                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.65,0)*CFrame.Angles(0,0,math.rad(-100)), 0.2)
                                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -.1, -.1) * CFrame.Angles(math.rad(30), 0, 0), 0.2)
                                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -.3, -.5) * CFrame.Angles(math.rad(30), 0, 0), 0.2)
                                end
                        end
                elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
                        Anim="Fall"
                        if attack==false then
                                if sprint then
                            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(30), 0, 0), 0.2)
                                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.5) * CFrame.Angles(math.rad(-30), 0, 0), 0.05)
                                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.65,0)*CFrame.Angles(0,0,math.rad(145)), 0.025)
                                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.65,0)*CFrame.Angles(0,0,math.rad(-145)), 0.025)
                                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-15), 0, 0), 0.05)
                                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, 0, -.5) * CFrame.Angles(math.rad(-15), 0, 0), 0.05)
                                else        
                                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 3, 0) * CFrame.Angles(0, 0, 0), 0.05)
                                    hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, -.5) * CFrame.Angles(math.rad(-30), 0, 0), 0.05)
                                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1,0.65,0)*CFrame.Angles(0,0,math.rad(145)), 0.025)
                                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1,0.65,0)*CFrame.Angles(0,0,math.rad(-145)), 0.025)
                                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-15), 0, 0), 0.05)
                                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, 0, -.5) * CFrame.Angles(math.rad(-15), 0, 0), 0.05)
                                end
                        end
                elseif torvel<1 and hitfloor~=nil then
                        Anim="Idle"
                        if attack==false then
                                if stance=='normal' then
                                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 3-0.14*math.cos(sine/20), 0) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
                                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5), math.rad(0), 0), 0.2)
                                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55-0.04*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(20)), 0.2)
                                        larm.Weld.C0 = Lerp(larm.Weld.C0,  CFrame.new(-1.5,0.55-0.04*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-20)), 0.2)
                                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
                                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
                                end
                                if stance=='headshake' then
                                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 3-0.14*math.cos(sine/20), 0) * CFrame.Angles(math.rad(0), 0, 0), 0.2)
                                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-20), math.rad(0)-0.14*math.cos(sine/14), 0), 0.2)
                                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.55-0.04*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(180),math.rad(-100)), 0.2)
                                        larm.Weld.C0 = Lerp(larm.Weld.C0,  CFrame.new(-1.5,0.55-0.04*math.cos(sine/14),0)*CFrame.Angles(math.rad(0),math.rad(180),math.rad(100)), 0.2)
                                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
                                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
                                end
                        end
                elseif torvel>20 and torvel<35 and hitfloor~=nil then
                        Anim="Walk"
                        if attack==false then---135*math.cos(sine/9)
                                if stance=='normal' then
                                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 3-0.14*math.cos(sine/20), 0) * CFrame.Angles(math.rad(-30), 0, 0), 0.2)
                                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(3), 0, 0), 0.2)
                                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(.7,0,.7)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-65)), 0.2)
                                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-.7,0,.7)*CFrame.Angles(math.rad(-30),math.rad(0),math.rad(55)), 0.2)
                                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(0)), 0.2)
                                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.2)
                                end
                        end
                elseif torvel>=35 and hitfloor~=nil then
                        Anim="Run"
                        if attack==false then
                                if stance=='normal' then
                                        torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 3-0.14*math.cos(sine/20), 0) * CFrame.Angles(math.rad(-40), 0, 0), 0.2)
                                        hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(10), 0, 0), 0.2)
                                        rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(.7,0,.7)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(-65)), 0.2)
                                        larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-.7,0,.7)*CFrame.Angles(math.rad(-30),math.rad(0),math.rad(55)), 0.2)
                                        lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(0)+0.04*math.cos(sine/30), 0, math.rad(0)), 0.2)
                                        rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-10)-0.04*math.cos(sine/30), math.rad(0), math.rad(0)), 0.2)
                                end
                        end
                end
        end
        if sprint==true then
                if stance=='normal' then
                        char.Humanoid.WalkSpeed=70
                end
        else
                if stance=='normal' then
                        char.Humanoid.WalkSpeed=30
                end
        end
        gaster1.CFrame=CFrame.new(char.Torso.Position,mouse.Hit.p)*CFrame.new(4,3,0)--*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
        gaster2.CFrame=CFrame.new(char.Torso.Position,mouse.Hit.p)*CFrame.new(-4,3,0)--*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
        gaster3.CFrame=CFrame.new(char.Torso.Position,mouse.Hit.p)*CFrame.new(0,3,4)--*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
end
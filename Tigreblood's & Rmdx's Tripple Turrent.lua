--[[ Triple Turret ]]--[[ Written by TigerBloodd and RMDX ]]------------------------------------------------------------------------------------------------------------------------------------------------
V3 = Vector3.new C3 = Color3.new BN = BrickColor.new CN = CFrame.new CA = CFrame.Angles MR = math.rad MRA = math.random MP = math.pi MH = math.huge UD = UDim2.new
TI = table.insert TR = table.remove CR = coroutine.resume CC = coroutine.create MM = math.min it = Instance.new SoundMinigunFire = "http://www.roblox.com/asset/?id=2692806"
me = game.Players.LocalPlayer Hold = false Sitting = true DecalBulletHole = "http://www.roblox.com/asset/?id=64291961" pcall(function()me.Character.Humanoid.MaxHealth=500 wait() me.Character.Humanoid.Health=500 end)
 
stick = function(hit2,hit) 
        local weld=Instance.new("Weld") 
        weld.Part0=hit2 
        weld.Part1=hit 
        local HitPos=hit2.Position 
        local CJ=CN(HitPos) 
        local C0=hit2.CFrame:inverse() *CJ 
        local C1=hit.CFrame:inverse() * CJ 
        weld.C0=C0 
        weld.C1=C1 
        weld.Parent=hit2
end 
 
function Part(Par, Anc, Colli, Tran, Ref, Col, Siz, Mat, Type)
        local p = it("Part")
        p.formFactor = "Custom"
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Transparency = Tran
        p.Reflectance = Ref
        p.Anchored = Anc
        p.CanCollide = Colli
        p.BrickColor = Col
        p.Size = Siz
        p.Material = Mat or "Plastic"
        p.Locked = true
        if Type == "Wedge" then
                it("SpecialMesh",p).MeshType = "Wedge"
        elseif Type == "Sphere" then
                it("SpecialMesh",p).MeshType = "Sphere"
        elseif Type == "Cylinder" then
                it("CylinderMesh",p)
        elseif Type == "Block" then
                it("BlockMesh",p)
        end
        p.Parent = Par
        p:BreakJoints()
        return p
end
 
minigun=it("Sound",me.Character.Torso)
minigun.SoundId=SoundMinigunFire
minigun.Volume=1
minigun.Pitch=1.75
 
ray = function(Pos,Dir,xxz)
        local xxz2=c 
        if not xxz then 
                xxz2=nil 
        end 
        return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit*999),xxz2)
end
 
pcall(function()me.Character["Turret"]:Remove()end)
mod = it("Model",me.Character)mod.Name="Turret"
base = Part(mod,true,true,0,0,BN("Medium grey"),V3(6,1,6),"Plastic","Cylinder")
p1 = Part(mod,true,true,0,0,BN("Medium grey"),V3(2,4,2),"Plastic","Cylinder")
p2 = Part(mod,true,true,0,0,BN("Medium grey"),V3(3,2,3),"Plastic","Cylinder")
seat = Part(mod,true,true,0,0,BN("Medium grey"),V3(2,1,2.5),"Plastic","Block")
seatb = Part(mod,true,true,0,0,BN("Medium grey"),V3(2,3,1),"Plastic","Block")
han = Part(mod,true,true,0,0,BN("Medium grey"),V3(0.5,4,0.5),"Plastic","Cylinder")
joint = Part(mod,true,true,0,0,BN("Medium grey"),V3(2,6,2),"Plastic","Cylinder")
ballr = Part(mod,true,true,0,0,BN("Medium grey"),V3(2,2,2),"Plastic","Sphere")
balll = Part(mod,true,true,0,0,BN("Medium grey"),V3(2,2,2),"Plastic","Sphere")
rp1 = Part(mod,true,true,0,0,BN("Medium grey"),V3(1.5,4,1.5),"Plastic","Cylinder")
lp1 = Part(mod,true,true,0,0,BN("Medium grey"),V3(1.5,4,1.5),"Plastic","Cylinder")
rp2 = Part(mod,true,true,0,0,BN("Black"),V3(0.75,1,0.75),"Plastic","Cylinder")
lp2 = Part(mod,true,true,0,0,BN("Black"),V3(0.75,1,0.75),"Plastic","Cylinder")
seatm = Part(mod,true,false,1,0,BN("Medium grey"),V3(2,2,2),"Plastic","Block")
mp1 = Part(mod,true,true,0,0,BN("Medium grey"),V3(2,6,2),"Plastic","Cylinder")
mp2 = Part(mod,true,true,0,0,BN("Black"),V3(1,1,1),"Plastic","Cylinder")
 
s=me.Character.Torso.CFrame
TurretFace = function(Pos)
        base.CFrame = CN(s.X,1,s.Z+10)
        p1.CFrame = base.CFrame*CN(0,1.5,0)
        seat.CFrame = CN(base.CFrame.X,5,base.CFrame.Z)
        seat.CFrame = CN(seat.Position,Pos)
        p2.CFrame = seat.CFrame*CN(0,1,-2)*CA(0,0,MR(90))
        seatb.CFrame = seat.CFrame*CN(0,1.15,1.25)*CA(MR(15),0,0)
        han.CFrame = p2.CFrame*CN(1,0,1)
        joint.CFrame = p2.CFrame
        ballr.CFrame = joint.CFrame*CN(0,3,0)
        balll.CFrame = joint.CFrame*CN(0,-3,0)
        rp1.CFrame = ballr.CFrame*CA(MR(90),0,0)*CN(0,-2,0)
        lp1.CFrame = balll.CFrame*CA(MR(90),0,0)*CN(0,-2,0)
        rp2.CFrame = rp1.CFrame*CN(0,-1.51,0)
        lp2.CFrame = lp1.CFrame*CN(0,-1.51,0)
        seatm.CFrame = seat.CFrame*CN(0,1.75,0.5)
        mp1.CFrame = joint.CFrame*CA(MR(90),0,0)*CN(0,-3,0)
        mp2.CFrame = mp1.CFrame*CN(0,-2.51,0)
end
q = function(f) 
        CR(CC(function()
                f() 
        end)) 
end 
qi = function(ttz) 
        local qii = it(ttz[1],ttz[2]) 
        table.foreach(ttz,function(oi,oi2) 
                if oi ~= 1 and oi ~= 2 then 
                        qii[oi] = oi2 
                end 
        end) 
        return qii 
end
 
cn = CN
rd = MR
ca = CA
rn = MRA
v3 = V3
 
DetectSurface = function(pos, part)
        local surface = nil
        local pospos = part.CFrame
        local pos2 = pospos:pointToObjectSpace(pos)
        local siz = part.Size
        local shaep = part.Shape
        if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then
                surface = {"Anything", CN(pospos.p, pos)*CN(0, 0, -(pospos.p - pos).magnitude+0.12)*CA(MR(-90), 0, 0)}
        elseif pos2.Y > ((siz.Y/2)-0.01) then
                surface = {"Top", CA(0, 0, 0)}
        elseif pos2.Y < -((siz.Y/2)-0.01) then
                surface = {"Bottom", CA(-math.pi, 0, 0)}
        elseif pos2.X > ((siz.X/2)-0.01) then
                surface = {"Right", CA(0, 0, MR(-90))}
        elseif pos2.X < -((siz.X/2)-0.01) then
                surface = {"Left", CA(0, 0, MR(90))}
        elseif pos2.Z > ((siz.Z/2)-0.01) then
                surface = {"Back", CA(MR(90), 0, 0)}
        elseif pos2.Z < -((siz.Z/2)-0.01) then
                surface = {"Front", CA(MR(-90), 0, 0)}
        end
        return surface
end
 
BulletHole = function(HitPos,HitObj,sc,img)
        local Surface = DetectSurface(HitPos, HitObj)
        local C = CN(HitPos) * CA(HitObj.CFrame:toEulerAnglesXYZ()) * Surface[2]
        if Surface[1] == "Anything" then 
                C = Surface[2] 
        end
        local bl = Part(mod,true,true,1,0,BN("Black"),V3(2, 0.1, 2),"Plastic","Block") qi({"Decal",bl,Face="Top",Texture=img or DecalBulletHole})
        bl.CFrame = C*CN(0,-0.1,0) 
        if not HitObj.Parent:FindFirstChild("Humanoid") then
                bl.Anchored = false
                stick(bl,HitObj) 
        else
                bl:Remove()
        end
        game:GetService("Debris"):AddItem(bl,10)
end
 
TurretShot = function(offset) q(function()
        local speed = 10
        local bb = Part(mod,true,true,0,0,BN("Black"),V3(0.3,0.45,0.3),"Plastic","Cylinder")
        bb.CFrame = offset*CN(0,2.8+(MRA(0,30)/10),0)*CA(MR(MRA(-1000,1000)/1000),MR(MRA(-1000,1000)/1000),MR(MRA(-1000,1000)/1000))
        wait() 
        for i=1,50 do 
                bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *CN(0,-1,0)).p)
                if bhit and bpos and (bpos - bb.Position).magnitude < speed  then break end
                bb.CFrame=bb.CFrame*CN(0,speed,0)*CA(MR(-0.2),0,0)
                wait()
        end bb.CFrame=bb.CFrame*CN(0,(bpos-bb.Position).magnitude,0) BulletHole(bpos,bhit,1.25)
        if MRA(1,15)==1 then
                if not bhit.Parent:findFirstChild("Humanoid") and bhit.Name:sub(1,4)~="Base" then
                        bhit.Anchored = false bhit:BreakJoints()
                end
        end
        local h = bhit.Parent:findFirstChild("Humanoid")
        if h then h.Health=h.Health-MRA(5,15) else end bb.Anchored = false stick(bb,bhit) game:service("Debris"):AddItem(bb,10)
end) end
 

        h = Instance.new("HopperBin",me.Backpack)
        h.Name = "Turret"

Shoot = function()
        wait(0.1)
        TurretShot(rp2.CFrame*CA(MR(180),0,0))
        TurretShot(lp2.CFrame*CA(MR(180),0,0))
        TurretShot(mp2.CFrame*CA(MR(180),0,0))
end
TurretFace(V3(0,1,10))
h.Selected:connect(function(Mouse)
        q(function()
                while true do
                        TurretFace(Mouse.Hit.p)
                        wait()
                end
        end)
        Mouse.Button1Down:connect(function()
                Hold = true
                while Hold do
                        minigun:Play()
                        Shoot()
                        wait()
                end
        end)
        Mouse.Button1Up:connect(function()
                Hold = false
        end)
        Mouse.KeyDown:connect(function(Key)
                if Key == "q" then
                        if Sitting then
                                Sitting = false me.Character.Humanoid.Sit = false me.Character.Torso.Anchored = false
                        else
                                Sitting = true
                                q(function()
                                        while Sitting do
                                                me.Character.Humanoid.Sit = true me.Character.Torso.Anchored = true me.Character.Torso.CFrame = seatm.CFrame*CN(0,0.25,0.5)
                                                wait()
                                        end
                                end)
                        end
                end
        end)
end)

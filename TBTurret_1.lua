-- mediafire
--[[ TBTurret ]]--
math.randomseed(tick()) Colors={"Bright red","Really red","Bright yellow","Bright orange","New Yeller","Deep orange","Neon orange"}
V3 = Vector3.new C3 = Color3.new BN = BrickColor.new CN = CFrame.new CA = CFrame.Angles MR = math.rad MRA = math.random MP = math.pi MH = math.huge UD = UDim2.new
TI = table.insert TR = table.remove CR = coroutine.resume CC = coroutine.create it = Instance.new Sound = "http://www.roblox.com/asset/?id=81116747" Fire="http://www.roblox.com/asset/?id=10209821" cn = CN rd = MR ca = CA rn = MRA v3 = V3
me = game.Players.LocalPlayer Hold = false Sitting = false DecalBulletHole = "http://www.roblox.com/asset/?id=64291961" pcall(function()me.Character.Humanoid.MaxHealth=500 wait() me.Character.Humanoid.Health=500 end)
stick = function(hit2,hit) local weld=Instance.new("Weld") weld.Part0=hit2 weld.Part1=hit local HitPos=hit2.Position local CJ=CN(HitPos) local C0=hit2.CFrame:inverse() *CJ local C1=hit.CFrame:inverse() * CJ weld.C0=C0 weld.C1=C1 weld.Parent=hit2 end 
function Part(Par, Anc, Colli, Tran, Ref, Col, Siz, Mat, Type) local p = it("Part") p.formFactor = "Custom" p.TopSurface = 0 p.BottomSurface = 0 p.Transparency = Tran p.Reflectance = Ref p.Anchored = Anc p.CanCollide = Colli p.BrickColor = Col p.Size = Siz p.Material = Mat or "Plastic" p.Locked = true if Type == "Wedge" then it("SpecialMesh",p).MeshType = "Wedge" elseif Type == "Sphere" then it("SpecialMesh",p).MeshType = "Sphere" elseif Type == "Cylinder" then it("CylinderMesh",p) elseif Type == "Block" then it("BlockMesh",p) end p.Parent = Par p:BreakJoints() return p end
RocketExplode=it("Sound",me.Character.Torso) RocketExplode.SoundId=Sound RocketExplode.Volume=1 RocketExplode.Pitch=1 
Fiyah=it("Sound",me.Character.Torso) Fiyah.SoundId=Fire Fiyah.Volume=1 Fiyah.Pitch=1 cam=workspace.CurrentCamera for i,v in pairs(cam:children()) do v:Remove() end
Crown="http://www.roblox.com/asset/?id=20329976" Spike="http://www.roblox.com/asset/?id=1033714"
ray = function(Pos,Dir,xxz) local xxz2=c if not xxz then xxz2=nil end return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit*999),xxz2) end 
function Blast(Color,Offset)
        local bp=Part(mod,true,false,0,0.15,BN(Colors[math.random(1,#Colors)]),V3(1,1,1),"Plastic") bp.Name="Blast" local bm=it("SpecialMesh",bp) bm.MeshId=Crown bm.Scale=v3(5,4,5) bp.CFrame=Offset
        q(function()
                for i=-0.2,1,0.12 do
                        bp.Transparency=i+0.1
                        bm.Scale=V3(1+(5*1)*i, (2.4*1)+1*i, 1+(5*1)*i)
                        wait()
                end
                game:GetService("Debris"):AddItem(bp)
        end)
end
--TURRET BUILDING
pcall(function()me.Character["Turret"]:Remove()end)
mod = it("Model",me.Character)mod.Name="Turret"
base = Part(mod,true,true,0,0,BN("Medium grey"),V3(6,1,6),"Plastic","Cylinder")
p1 = Part(mod,true,true,0,0,BN("Medium grey"),V3(1,4,1),"Plastic","Cylinder")
seat = Part(mod,true,true,0,0,BN("Medium grey"),V3(2,0.5,2.5),"Plastic","Block")
seatb = Part(mod,true,true,0,0,BN("Medium grey"),V3(2,3,.5),"Plastic","Block")
seatattachment = Part(mod,true,true,0,0,BN("Medium grey"),V3(1,4,1),"Plastic","Cylinder")
seatatball1=Part(mod,true,true,0,0,BN("Medium grey"),V3(2,2,2),"Plastic","Sphere")
seatattachment2 = Part(mod,true,true,0,0,BN("Medium grey"),V3(1,5,1),"Plastic","Cylinder")
seatatball2=Part(mod,true,true,0,0,BN("Medium grey"),V3(2,2,2),"Plastic","Sphere")
seatattachment3 = Part(mod,true,true,0,0,BN("Medium grey"),V3(1,5,1),"Plastic","Cylinder")
seatatball3=Part(mod,true,true,0,0,BN("Medium grey"),V3(2,2,2),"Plastic","Sphere")
seatattachment4 = Part(mod,true,true,0,0,BN("Medium grey"),V3(1,4,1),"Plastic","Cylinder")
Ball=Part(mod,true,true,0,0,BN("Medium grey"),V3(2,2,2),"Plastic","Sphere")
handp=Part(mod,true,true,0,0,BN("Medium grey"),V3(0.5,2,0.5),"Plastic","Cylinder")
Handle=Part(mod,true,true,0,0,BN("Medium grey"),V3(.5,4,.5),"Plastic","Cylinder")
Barrel=Part(mod,true,true,0,0,BN("Medium grey"),V3(2,5,2),"Plastic","Cylinder")
pit=Part(mod,true,true,0,0,BN("Black"),V3(1.25,1,1.25),"Plastic","Cylinder")
--TURRET BUILDING
function Search(Start, Center, Radius)
function Find(Start, Center, Radius)
for _, Object in pairs(Start:GetChildren()) do
Search(Object, Center, Radius)
Count = 0
for _, Humanoid in pairs(Object:GetChildren()) do
if Humanoid:IsA("Humanoid") then
Count = Count + 1
end
end
 
if Object:IsA("Model") and Count > 0 and Object:FindFirstChild("Torso") ~= nil then
if ( Object:FindFirstChild("Torso").Position - Center.Position ).magnitude < Radius then
if Object == me.Character or Object:findFirstChild("Humanoid") == nil or Object:findFirstChild("Torso") == nil then return end 
local bpp = qi({"BodyVelocity",Object.Torso,maxForce=v3(1/0,1/0,1/0),velocity=cn(me.Character.Torso.Position,Object.Torso.Position+v3(0,7.5,0)).lookVector*80}) wait(0.2) bpp:Remove()
for _, Humanoid in pairs(Object:GetChildren()) do
if Humanoid:IsA("Humanoid") then
if Humanoid.MaxHealth > 100000 then
Humanoid.MaxHealth = 100
Humanoid.Health = 100
end
Humanoid:TakeDamage(math.random(50, 90))
end
end
end
end
end
end
Find(Start, Center, Radius)
end
 
s=me.Character.Torso.CFrame
TurretFace = function(Pos)
base.CFrame = CN(s.X,s.Y-2.5,s.Z+10)
p1.CFrame = base.CFrame*CN(0,1.5,0)
seat.CFrame = CN(base.CFrame.X,base.CFrame.Y+3.5,base.CFrame.Z) seat.CFrame = CN(seat.Position,Pos)
seatb.CFrame = seat.CFrame*CN(0,1.25,1.25)*CA(MR(15),0,0)
seatattachment.CFrame=seatb.CFrame*CN(0,0,2)*CA(MR(90),0,0)
seatatball1.CFrame=seatattachment.CFrame*CN(0,2,0)
seatattachment2.CFrame=seatatball1.CFrame*CN(0,-1,-2)*CA(MR(65),0,0)
seatatball2.CFrame=seatattachment2.CFrame*CN(0,-2.5,0)
seatattachment3.CFrame=seatatball2.CFrame*CN(0,-1,2.5)*CA(MR(-65),0,0)
seatatball3.CFrame=seatattachment3.CFrame*CN(0,-2.5,0)
seatattachment4.CFrame=seatatball3.CFrame*CN(0,-.5,2.5)*CA(MR(-80),0,0)
Ball.CFrame=seatattachment4.CFrame*CN(0,-2,0)
handp.CFrame=Ball.CFrame*CN(0,0.5,0.75)*ca(rd(65),0,0)
Handle.CFrame=handp.CFrame*CN(0,1,0)*CA(0,0,MR(90))
Barrel.CFrame=seat.CFrame*CN(0,2,-5.25)*CA(MR(90),0,0)
pit.CFrame=Barrel.CFrame*CN(0,-2.01,0)
end
q = function(f) CR(CC(function() f() end)) end 
qi = function(ttz) local qii = it(ttz[1],ttz[2]) table.foreach(ttz,function(oi,oi2) if oi ~= 1 and oi ~= 2 then qii[oi] = oi2 end end) return qii end
DetectSurface = function(pos, part) local surface = nil local pospos = part.CFrame local pos2 = pospos:pointToObjectSpace(pos) local siz = part.Size local shaep = part.Shape if shaep == Enum.PartType.Ball or shaep == Enum.PartType.Cylinder then surface = {"Anything", CN(pospos.p, pos)*CN(0, 0, -(pospos.p - pos).magnitude+0.12)*CA(MR(-90), 0, 0)} elseif pos2.Y > ((siz.Y/2)-0.01) then surface = {"Top", CA(0, 0, 0)} elseif pos2.Y < -((siz.Y/2)-0.01) then surface = {"Bottom", CA(-math.pi, 0, 0)} elseif pos2.X > ((siz.X/2)-0.01) then surface = {"Right", CA(0, 0, MR(-90))} elseif pos2.X < -((siz.X/2)-0.01) then surface = {"Left", CA(0, 0, MR(90))} elseif pos2.Z > ((siz.Z/2)-0.01) then surface = {"Back", CA(MR(90), 0, 0)} elseif pos2.Z < -((siz.Z/2)-0.01) then surface = {"Front", CA(MR(-90), 0, 0)} end return surface end
function Trail(ob,times,waitz,col,thickz,ofz)
        q(function() 
                local oldpos=(ob.CFrame *ofz).p 
                for i=1,times do 
                        local obp=(ob.CFrame *ofz).p 
                        local mag=(oldpos - obp).magnitude 
                        local tr=Part(ob,false,false,0.5,0.15,BN("White"),v3(0,0,0),"Plastic") tr.Name="Trail"
                        tr.Anchored=true 
                        tr.CFrame=cn(oldpos,obp) 
                        tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2) 
                        local trm=it("CylinderMesh",tr) 
                        trm.Scale=v3(5*thickz,mag*5,5*thickz) 
                        q(function() 
                                for i=5*thickz,0,-5*thickz/10 do 
                                        trm.Scale=v3(i,mag*5,i) wait() 
                                end 
                                tr:Remove'' 
                        end) 
                        tr.CFrame=tr.CFrame *ca(rd(90),0,0) 
                        oldpos=obp wait(waitz) 
                end 
        end) 
end
TurretShot = function(offset) 
        q(function()
                local muzzle=Part(mod,true,true,0,0,BN(Colors[math.random(1,#Colors)]),V3(1,1,1),"Plastic")
                local muzm=it("SpecialMesh",muzzle) muzm.MeshId=Crown muzzle.CFrame=pit.CFrame*cn(0,-1,-0.25)*ca(0,0,rd(180)) muzm.Scale=v3(1.25,2,1.25)
                for i=0,1,0.1 do muzzle.CFrame=pit.CFrame*cn(0,-1-(i/2),-0.25)*ca(0,0,rd(180)) muzzle.Transparency=i muzm.Scale=v3(1+i*0.75,2-i*0.25,1+i*0.75) wait() end muzzle:Remove()
        end)
        q(function()
                local speed = 5
                local bb = Part(mod,true,true,0,0,BN("Really black"),V3(0.6,1.5,0.6),"Plastic","Cylinder")
                bb.CFrame = offset*CN(0,2.8+(MRA(0,30)/10),0) q(function() bb2=bb:Clone() bb2.Parent=workspace.CurrentCamera while wait() do pcall(function() bb2.CFrame=bb.CFrame end) end end)
                wait() --workspace.CurrentCamera.CameraSubject=bb                
                Trail(bb,100,0,BN("White"),1,CN(0,0,0))                        
                for i=1,math.huge do 
                        bb.CFrame=bb.CFrame*CN(0,speed,0)*CA(MR(-0.2),0,0) -- try putting this before bhit and bpos
                        bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *CN(0,-1,0)).p)
                        if bhit and bpos and (bpos - bb.Position).magnitude < speed and bhit.Name~="Trail" and bhit.Name~="Blast" then 
                                break 
                        end
                        wait()
                end 
                Search(Workspace, bb, 10) Blast("Black",bb.CFrame*cn(0,0,1)*ca(rd(90),0,0)) RocketExplode:Play()
                if bhit.Name~="Base" and not bhit.Parent:FindFirstChild("Humanoid") then 
                        bhit.Anchored = false bhit:BreakJoints()
                        local bpp = qi({"BodyVelocity",bhit,maxForce=v3(1/0,1/0,1/0),velocity=cn(me.Character.Torso.Position,bhit.Position+v3(0,7.5,0)).lookVector*80}) wait(0.2) bpp:Remove()
                end 
                bb.Anchored = false 
                if bhit ~= bb and bhit.Name~="Trail" and bhit.Name ~="Blast" then 
                        stick(bb,bhit) 
                end 
                q(function() wait(3) bb:Remove() end)
        end) 
end
 
if script.Parent.className ~= "HopperBin" then h = Instance.new("HopperBin",me.Backpack) h.Name = "Turret" end
Shoot = function() TurretShot(Barrel.CFrame*CA(MR(180),0,0)) end
TurretFace(V3(0,1,10))
h.Selected:connect(function(Mouse) canfire=true Sitting=true
        q(function() 
                while wait() do 
                        TurretFace(Mouse.Hit.p)
                end 
        end)
        q(function()
                while Sitting==true do
                        me.Character.Humanoid.Sit = true
                        me.Character.Torso.Anchored = true 
                        me.Character.Torso.CFrame = seat.CFrame*CN(0,1.75,0.5)  wait()
                end
        end)
        Mouse.Button1Down:connect(function() 
                if canfire==true and Sitting==true then 
                        canfire=false 
                        Fiyah:Play() 
                        Shoot() 
                        wait(0.5) 
                        canfire=true 
                end 
        end)
end)
h.Deselected:connect(function() Sitting=false canfire=false me.Character.Torso.Anchored=false me.Character.Humanoid.Sit=false end)
me.Character.Humanoid.Died:connect(function(l) for i,v in pairs(cam:children()) do v:Remove() end end)
--TigerBloodd
 
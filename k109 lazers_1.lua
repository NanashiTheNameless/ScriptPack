-- By kert109
Attacking = false
Health = 300
NorWalkSpeed = 20
RunWalkSpeed = 35
ButtonHold = false
Walking = false
Jumping = false
FastRunning = false
MouseHold = false
Mode = 1
GoToMode = 1
Dmg = {
        SlashDamage = math.random(10,20);
        MagicDmg = math.random(20,50);
};
Player = game.Players.LocalPlayer
Char = Player.Character
Hum = Char.Humanoid
Head = Char.Head
Torso = Char.Torso
Ra = Char["Right Arm"]
La = Char["Left Arm"]
Rl = Char["Right Leg"]
Ll = Char["Left Leg"]
Mouse = Player:GetMouse()
pcall(function()Char.Mod:Destroy()end)
pcall(function()Char["Suit[1][kert109]"]:Destroy()end)
script.Name = "Suit[1][kert109]"
local Main = Instance.new("Model",Char)
Main.Name = "Mod"
v3 = Vector3.new;                mr = math.rad;
cw = coroutine.wrap;        mrd = math.random;
cf = CFrame.new;                ud2 = UDim2.new;
ca = CFrame.Angles;                v2 = Vector2.new
bc = BrickColor.new;        inst = Instance.new
function part(par,size,color,tra,can)
        local P = Instance.new("Part",par)
        P.FormFactor = "Custom"
        P.Size = size
        P.Anchored = false
        P.BrickColor = BrickColor.new(color)
        P.Transparency = tra
        P.CanCollide = can
        P.TopSurface = 0
        P.BottomSurface = 0
        P:BreakJoints()
        return P
end
function w(par,p0,p1,typ,cfz)
        local W = Instance.new("Weld",par)
        W.Part0 = p0
        W.Part1 = p1
        if typ == true then
                W.C0 = cfz
        else
                W.C1 = cfz
        end
        return W
end
function mesh(par,id,tex,typ,scal)
        local M = Instance.new("SpecialMesh",par)
        M.MeshId = id 
        M.TextureId = tex
        M.MeshType = typ
        M.Scale = scal
        return M
end
function fj(lim,tor,cf1,cf2)
        local j = part(Main,v3(0,0,0),"",.5,true)
        local w1 = w(j,j,tor,false,cf1)
        local w2 = w(j,j,lim,false,cf2)
        return w1
end
function lerp(a,b,c)return a+(b-a)*c end
function clerp(c1,c2,al) --Smooth Animation!
        local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
        for i,v in pairs(com1) do com1[i] = lerp(v,com2[i],al)end
        return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
function DamageFunc(hit,Damage,timz) 
        local hum = hit.Parent:FindFirstChild("Humanoid")
        if hum and not hum:FindFirstChild("Dmgz:"..Player.Name) and hit.Parent ~= Char and hit.Parent ~= Workspace and Damage and timz then
                hum:TakeDamage(Damage)
                local a = Instance.new("StringValue",hum)a.Name = "Dmgz:"..Player.Name
                game.Debris:AddItem(a,timz)
                local b = Instance.new("ObjectValue",hum)b.Name = "creator" b.Value = Player
                game.Debris:AddItem(b,10)
        end
end
--[[Stuff below:]]
Hum.MaxHealth = Health wait()
Hum.Health = Health
Hum.WalkSpeed = NorWalkSpeed
Hum.Died:connect(function()
        local e = Instance.new("Explosion",Torso)
        e.Position = Torso.Position
        e.BlastPressure = 10000
end)
MainC = "White"
SecC = "Bright red"
function MakeProtector()
        local mp = part(Main,v3(2,2,2),MainC,0,false)mesh(mp,"","","Sphere",v3(1,1,1))
        mp.CFrame = Head.CFrame
        local p = part(Main,v3(2,.5,2),SecC,0,false)w(p,mp,p,true,cf(-.1,0,0))mesh(p,"","","Sphere",v3(1.1,1,1.15))
        local p = part(Main,v3(2,.5,2),SecC,0,false)w(p,mp,p,true,cf(-.1,0,0)*ca(mr(90),0,0))mesh(p,"","","Sphere",v3(1.1,1,1.15))
        local p = part(Main,v3(.75,.75,.75),SecC,0,false)w(p,mp,p,true,cf(.75,0,0)*ca(mr(0),0,0))mesh(p,"","","Sphere",v3(1,1,1))
        local pm = part(Main,v3(.25,.25,.25),MainC,0,false)w(pm,mp,pm,true,cf(1.1,0,0))mesh(pm,"","","Sphere",v3(1,1,1))
        local bg = Instance.new("BodyGyro",pm)bg.maxTorque = v3()*math.huge
        local bp = Instance.new("BodyPosition",mp)bp.maxForce = v3()*math.huge
        mp.Touched:connect(function(hit)
                if Mode == 3 then
                        if hit.Parent:FindFirstChild("Humanoid") then
                                DamageFunc(hit,10,0) 
                        elseif hit.Name ~= "Base" and hit.Parent.Parent ~= Char then
                                hit:Destroy()
                        end
                end
        end)
        return p,bp,bg
end
function Shoot(Obj,Type,Color)
        local NewRay = Ray.new(Obj.CFrame.p,(Mouse.Hit.p-Obj.CFrame.p+v3(mrd(-.5,.5),0,mrd(-.5,.5)) ).unit * 300)
        local hit, Pos = game.Workspace:FindPartOnRay(NewRay,Char) 
        if hit ~= nil then
                if Type == nil then
                        DamageFunc(hit,20,0)
                elseif Type == 2 and not hit.Name:find("Base") then
                        hit:Destroy()
                elseif Type == 3 then
                        
                end
        end
        if Color == nil then
                Color = SecC
        end
        local Distance = (Pos - Obj.CFrame.p).magnitude 
        local p = part(Main,v3(.2,.2,Distance),Color,0)
        cw(function()
                for i = 0,1,1/5 do
                        if p then
                                p.Transparency = i
                                wait()
                        end
                end
                if p then
                        p:Destroy()
                end
                p = nil
        end)()
        Instance.new("BlockMesh",p).Scale = Vector3.new(.5,.5,1)
        p.Anchored = true
        p.Size = v3(.2,.2,Distance)
        p.CFrame = cf(Pos,Obj.CFrame.p)*cf(0,0,-Distance/2)
        cw(function()
                local a = game:service("RunService").Stepped:connect(function()
                        if p ~= nil then
                                Distance = (Pos - Obj.CFrame.p).magnitude 
                                p.Size = v3(.2,.2,Distance)
                                p.CFrame = cf(Pos,Obj.CFrame.p)*cf(0,0,-Distance/2)
                                wait()
                        else
                                error()
                        end
                end)
        end)()
end
local P1,P1BP,P1BG = MakeProtector()
local P2,P2BP,P2BG = MakeProtector()
local P3,P3BP,P3BG = MakeProtector()
local spin = mr(0)
game:service("RunService").Stepped:connect(function()
        if Mode == 1 then
                spin = spin + mr(1)
                P1BP.position = (Head.CFrame*ca(0,mr(360/3)+spin,0)*cf(0,0,5)).p
                P2BP.position = (Head.CFrame*ca(0,mr(360/3)*2+spin,0)*cf(0,0,5)).p
                P3BP.position = (Head.CFrame*ca(0,mr(360/3)*3+spin,0)*cf(0,0,5)).p
        elseif Mode == 2 then
                spin = spin + mr(5)
                P1BP.position = (Head.CFrame*cf(0,5,0)).p
                P2BP.position = (Head.CFrame*ca(0,mr(180)+spin,0)*cf(0,0,5)).p
                P3BP.position = (Head.CFrame*ca(0,mr(360)+spin,0)*cf(0,0,5)).p
        elseif Mode == 3 then
                spin = spin + mr(10)
                P1BP.position = (Head.CFrame*cf(0,3,0)*ca(0,mr(0)+spin,0)*cf(0,0,1)).p
                P2BP.position = (Head.CFrame*cf(0,.5,0)*ca(0,mr(0)+-spin,0)*cf(0,0,3)).p
                P3BP.position = (Head.CFrame*cf(0,-2,0)*ca(0,mr(0)+spin,0)*cf(0,0,5)).p
        end
        P1BG.cframe = cf(Mouse.Hit.p,P1.CFrame.p)*ca(0,mr(-90),0)
        P2BG.cframe = cf(Mouse.Hit.p,P1.CFrame.p)*ca(0,mr(-90),0)
        P3BG.cframe = cf(Mouse.Hit.p,P1.CFrame.p)*ca(0,mr(-90),0)
        if spin >= 360000 then
                spin = 0
        end
end)
Mouse.KeyDown:connect(function(Key)
        if Key == "q" and Attacking == false then
                if GoToMode == 1 then
                        Mode = 3
                        GoToMode = 3
                        repeat 
                                wait()
                                if Hum and Mode == 3 then
                                        Hum.Health = Hum.Health + 5
                                end
                        until GoToMode ~= 3
                else
                        Mode = 1
                        GoToMode = 1
                end
        elseif Key == "e" and Attacking == false then
                Mode = 2
                wait(.5)
                Shoot(P1,2,"Really black")
                Shoot(P2,2,"Really black")
                Shoot(P3,2,"Really black")
                Mode = GoToMode
        elseif Key == "r" and Attacking == false then
                ButtonHold = true
                Mode = 2
                while ButtonHold do
                        Shoot(P1,3,"Bright green")
                        Shoot(P2,3,"Bright green")
                        Shoot(P3,3,"Bright green")
                        local Hum = Mouse.Target.Parent:FindFirstChild("Humanoid")
                        if Hum then
                                Hum.Health = Hum.Health + 5
                        end
                        wait(.1)
                end
                Mode = GoToMode
        end
end)
Mouse.KeyUp:connect(function(Key)
        if Key == "r" then
                ButtonHold = false
        end
end)
Mouse.Button1Down:connect(function()
        MouseHold = true
        if Attacking == false then
                Mode = 2
                while MouseHold do
                        Shoot(P1)
                        Shoot(P2)
                        Shoot(P3)
                        wait(.1)
                end
                Mode = GoToMode
        end
end)
Mouse.Button1Up:connect(function()
        MouseHold = false
end)

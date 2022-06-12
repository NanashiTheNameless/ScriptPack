ToolName = "Test"
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
ThrowDamage = math.random(60,80)
pcall(function()Char[ToolName]:Destroy()end)
pcall(function()Player.Backpack[ToolName]:Destroy()end)
local Main = Instance.new("Model",Char)
Main.Name = ToolName
script.Parent = Main
v3 = Vector3.new;                mr = math.rad;
cw = coroutine.wrap;        mrd = math.random;
cf = CFrame.new;                ud2 = UDim2.new;
ca = CFrame.Angles;                v2 = Vector2.new
bc = BrickColor.new;        inst = Instance.new
http = "http://www.roblox.com/asset/?id="
Attacking = false
Walking = false
--Hum.Jump == Jumping
Sitting = false
FreeFalling = false
function part(par,size,color,tra,can)
        local P = Instance.new("Part",par)
        P.Locked = true
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
function w(par,p0,p1,cfz,typ)
        local W = Instance.new("Weld",par)
        W.Part0 = p0
        W.Part1 = p1
        if typ == true then
                W.C1 = cfz
        else
                W.C0 = cfz
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
function fj(lim,tor,cf1)
        local w1 = w(Main,tor,lim,cf1)
        w1.C1 = cf(0,.5,0)
        return w1
end
function DamageFunc(hit,Damage,timz) 
        local hum = hit.Parent:FindFirstChild("Humanoid") or hit.Parent.Parent:FindFirstChild("Humanoid")
        if hum and not hum:FindFirstChild("Dmgz:"..Player.Name) and hit.Parent ~= Char and hit.Parent ~= Workspace and Damage and timz then
                hum.Health = hum.Health-Damage
                local a = Instance.new("StringValue",hum)a.Name = "Dmgz:"..Player.Name
                game.Debris:AddItem(a,timz)
                local b = Instance.new("ObjectValue",hum)b.Name = "creator" b.Value = Player
                game.Debris:AddItem(b,10)
                if hum.Health <=0 then return true else return false end -- To see if he died or not.
        end
end
function lerp(a,b,c)return a+(b-a)*c end
function lerp2(a,b,c)return a*(1-c)+b*c end
function clerp(c1,c2,al,x) --Smooth Animation!
        local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
        for i,v in pairs(com1) do if x == true then com1[i] = lerp2(v,com2[i],al) else  com1[i] = lerp(v,com2[i],al)end end
        return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
RaW = fj(Ra,Torso,cf(1.5,.5,0)*ca(mr(35),mr(0),mr(0)) )
Handle = part(Main,v3(.2,.2,.2),0,1,false)HandleW = w(Handle,Ra,Handle,cf(0,-1,0)*ca(mr(-135),0,0))
local staff = part(Main,v3(.2,5,.2),"Brown",0,false)w(staff,Handle,staff,cf(0,-.5,0))inst("CylinderMesh",staff)
local p = part(Main,v3(.25,2,.25),"Nougat",0,false)w(p,staff,p,cf(0,.5,0))inst("CylinderMesh",p)
local p = part(Main,v3(0,0,0),"Nougat",0,false)w(p,staff,p,cf(0,1.5,0)*ca(mr(90),0,0))mesh(p,http.."3270017","","FileMesh",v3(.25,.25,.25))
local p = part(Main,v3(0,0,0),"Nougat",0,false)w(p,staff,p,cf(0,-.5,0)*ca(mr(90),0,0))mesh(p,http.."3270017","","FileMesh",v3(.25,.25,.25))
local ring = part(Main,v3(0,0,0),"Silver",0,false)w(ring,staff,ring,cf(0,-2.75,0)*ca(0,mr(90),0))mesh(ring,http.."3270017","","FileMesh",v3(.75,.5,2))
local p = part(Main,v3(.25,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,-2.5+(.25/2),0))inst("CylinderMesh",p)
local p = part(Main,v3(0,0,0),"Silver",0,false)w(p,staff,p,cf(0,-2.25,0)*ca(mr(90),0,0))mesh(p,http.."3270017","","FileMesh",v3(.25,.25,.25))
local p = part(Main,v3(.25,1,.25),"Silver",0,false)w(p,staff,p,cf(0,-1.5,0))inst("CylinderMesh",p)
local p = part(Main,v3(0,0,0),"Silver",0,false)w(p,staff,p,cf(0,-2,0)*ca(mr(90),0,0))mesh(p,http.."3270017","","FileMesh",v3(.25,.25,.25))
local p = part(Main,v3(0,0,0),"Silver",0,false)w(p,staff,p,cf(0,-1,0)*ca(mr(90),0,0))mesh(p,http.."3270017","","FileMesh",v3(.25,.25,.25))
--A bit below tip
local p = part(Main,v3(.25,.5,.25),"Silver",0,false)w(p,staff,p,cf(0,2.55,.25/2)*ca(mr(180),0,0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.5,.25),"Silver",0,false)w(p,staff,p,cf(0,2.55,-.25/2)*ca(mr(180),mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.35,.35),"Silver",0,false)w(p,staff,p,cf(0,2.6,.35/2)*ca(mr(180),0,0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.35,.35),"Silver",0,false)w(p,staff,p,cf(0,2.6,-.35/2)*ca(mr(180),mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.25,.5),"Silver",0,false)w(p,staff,p,cf(0,2.675,.25)*ca(mr(180),0,0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.25,.5),"Silver",0,false)w(p,staff,p,cf(0,2.675,-.25)*ca(mr(180),mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.3,.5),"Silver",0,false)w(p,staff,p,cf(0,2.95,-.25)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.3,.5),"Silver",0,false)w(p,staff,p,cf(0,2.95,.25))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.4,.4),"Silver",0,false)w(p,staff,p,cf(0,3,-.3)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.4,.4),"Silver",0,false)w(p,staff,p,cf(0,3,.3))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.5,.3),"Silver",0,false)w(p,staff,p,cf(0,3.05,-.35)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.25,.5,.3),"Silver",0,false)w(p,staff,p,cf(0,3.05,.35))mesh(p,"","","Wedge",v3(1,1,1))
--Tip
local p = part(Main,v3(.2,1,.4),"Silver",0,false)w(p,staff,p,cf(0,3.25,0))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,3.625,.3)*ca(mr(180),0,0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,3.625,-.3)*ca(mr(180),mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,1,.25),"Silver",0,false)w(p,staff,p,cf(0,4.25,.3))
local p = part(Main,v3(.2,1,.25),"Silver",0,false)w(p,staff,p,cf(0,4.25,-.3))
local p = part(Main,v3(.2,.25,.425),"Silver",0,false)w(p,staff,p,cf(0,4.875,.2125)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.425),"Silver",0,false)w(p,staff,p,cf(0,4.875,-.2125))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.5,.325),"Silver",0,false)w(p,staff,p,cf(0,5,.16)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.5,.325),"Silver",0,false)w(p,staff,p,cf(0,5,-.16))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.75,.275),"Silver",0,false)w(p,staff,p,cf(0,5.125,.2125/2+.025)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.75,.275),"Silver",0,false)w(p,staff,p,cf(0,5.125,-.2125/2-.025))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,3.875,.25/2))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,3.875,-.25/2)*ca(0,mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,4.675,-.2/2)*ca(mr(180),0,0))mesh(p,"","","Wedge",v3(1,1,1))
local p = part(Main,v3(.2,.25,.25),"Silver",0,false)w(p,staff,p,cf(0,4.675,.2/2)*ca(mr(180),mr(180),0))mesh(p,"","","Wedge",v3(1,1,1))
hitbox = part(Main,v3(.3,3,1.25),"Silver",1,false)w(hitbox,staff,hitbox,cf(0,4,0))
Hum.Running:connect(function(s)
        if s == 0 then
                Walking = false
        else
                Walking = true
        end
end)
--[[Hum.FreeFalling:connect(function(s)
        if s == true then
                FreeFalling = true
        else
                FreeFalling = false
        end
end)]]
local didHit = false
Mouse.KeyDown:connect(function(Key)
        if Key == "q" and Attacking == false then
                didHit = true
                Attacking = true
                local aim = true
                local torbg = Instance.new("BodyGyro",Torso)
                torbg.cframe = cf(Torso.CFrame.p,v3(Mouse.Hit.p.x,Torso.CFrame.p.y,Mouse.Hit.p.z))
                torbg.maxTorque = v3()*math.huge
                torbg.D = 0
                torbg.P = 50000
                cw(function()
                        while aim do
                                wait(.02)
                                torbg.cframe = cf(Torso.CFrame.p,v3(Mouse.Hit.p.x,Torso.CFrame.p.y,Mouse.Hit.p.z))
                        end
                        torbg:Destroy()
                end)()
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(170),0,mr(0)),.5)
                        HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),0,mr(180)),.5)
                end
                wait(.05)
                cw(function()
                        wait(.2)
                        local handlecf = Handle.CFrame
                        local Hit = Mouse.Hit.p
                        HandleW.Part0 = nil
                        Handle.Anchored = true
                        Handle.CFrame = cf(handlecf.p,Hit)*ca(mr(-90),0,0)
                        didHit = false
                        local typez = false
                        local pos = v3()
                        local hit = nil
                        local d = 0
                        cw(function() 
                                repeat wait(.002)
                                        local r = Ray.new(Handle.CFrame.p,(Hit-Handle.CFrame.p).unit*10)
                                        local h,p = workspace:FindPartOnRay(r,Char)
                                        local dis = (Handle.CFrame.p-p).magnitude
                                        --local P=part(Workspace,v3(1,1,1),"Silver",0,false)P.Anchored = true P.CFrame = cf(p)
                                        if h ~= nil and dis >= .5 then
                                                didHit = true
                                                pos = p
                                                hit = h
                                                typez = true
                                        end
                                until didHit == true
                        end)()
                        local x = 0
                        local distance = ((Ra.CFrame*cf(0,-1,0)).p-ring.Position).magnitude
                        local p = part(Main,v3(.2,.2,distance),"Silver",0,false)p.Anchored = true p.CFrame = cf((Ra.CFrame*cf(0,-1,0)).p,ring.Position)*cf(0,-.2,-distance/2)
                        cw(function()
                                while Attacking == true and p ~= nil do
                                        wait(.02)
                                        distance = ((Ra.CFrame*cf(0,-1,0)).p-ring.Position).magnitude
                                        p.Size=v3(.2,.2,distance) 
                                        p.CFrame = cf((Ra.CFrame*cf(0,-1,0)).p,ring.Position)*cf(0,-.25,-distance/2)
                                end
                                p:Destroy()
                        end)()
                        for i = 0,500,2 do
                                if d == 3 then
                                        wait(.02)
                                        d = 0
                                end
                                d = d + 1
                                x = x-.1
                                Handle.CFrame = cf(handlecf.p,Hit)*ca(mr(-90),0,0)*cf(0,i,0)
                                if didHit == true then break end
                        end
                        didHit = false
                        aim = false
                        if typez == true and hit~=nil then
                                local cfz = cf(pos,(Handle.CFrame*cf(0,-10,0)).p)*ca(math.pi/2,0,0)*cf(0,-3,0)
                                Handle.Anchored = false
                                local we = w(Handle,Handle,hit,cfz:toObjectSpace(hit.CFrame))
                                local bp = Instance.new("BodyPosition",Torso)
                                bp.position = ring.Position
                                bp.maxForce = v3()*math.huge
                                repeat wait()bp.position = ring.Position until didHit == true
                                bp:Destroy()
                                we:Destroy()
                                Handle.Anchored = true
                        end
                        didHit = true
                        for i = 0,20 do
                                wait(.002)
                                Handle.CFrame = clerp(Handle.CFrame,Ra.CFrame*cf(0,-1,0)*ca(mr(-90),0,0),.3)
                        end
                        wait(.2)
                        Handle.Anchored = false
                        
                        HandleW.Part0 = Ra
                        HandleW.C0 = cf(0,-1,0)*ca(mr(-90),0,0)
                        Attacking = false
                end)()
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(-45),0,mr(0)),.5)
                        --HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),mr(180),0),.5)
                end
                aim = false
                wait(1)
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(100),0,mr(0)),.5)
                        --HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),mr(180),0),.5)
                end
        end
end)
Mouse.Button1Down:connect(function()
        didHit = true
        if Attacking == false then
                Attacking = true
                local aim = true
                local torbg = Instance.new("BodyGyro",Torso)
                torbg.cframe = cf(Torso.CFrame.p,v3(Mouse.Hit.p.x,Torso.CFrame.p.y,Mouse.Hit.p.z))
                torbg.maxTorque = v3()*math.huge
                torbg.D = 0
                torbg.P = 50000
                cw(function()
                        while aim do
                                wait(.02)
                                torbg.cframe = cf(Torso.CFrame.p,v3(Mouse.Hit.p.x,Torso.CFrame.p.y,Mouse.Hit.p.z))
                        end
                        torbg:Destroy()
                end)()
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(170),0,mr(0)),.5)
                        HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),0,mr(180)),.5)
                end
                wait(.05)
                cw(function()
                        wait(.2)
                        local handlecf = Handle.CFrame
                        local Hit = Mouse.Hit.p
                        HandleW.Part0 = nil
                        Handle.Anchored = true
                        Handle.CFrame = cf(handlecf.p,Hit)*ca(mr(-90),0,0)
                        didHit = false
                        local typez = false
                        local pos = v3()
                        local hit = nil
                        local d = 0
                        cw(function() 
                                repeat wait(.002)
                                        local r = Ray.new(Handle.CFrame.p,(Hit-Handle.CFrame.p).unit*10)
                                        local h,p = workspace:FindPartOnRay(r,Char)
                                        local dis = (Handle.CFrame.p-p).magnitude
                                        --local P=part(Workspace,v3(1,1,1),"Silver",0,false)P.Anchored = true P.CFrame = cf(p)
                                        if h ~= nil and dis >= .5 then
                                                didHit = true
                                                pos = p
                                                hit = h
                                                typez = true
                                        end
                                until didHit == true
                        end)()
                        local x = 0
                        for i = 0,500,2 do
                                if d == 3 then
                                        wait(.02)
                                        d = 0
                                end
                                d = d + 1
                                x = x-.01
                                Handle.CFrame = cf(handlecf.p,Hit)*ca(mr(-90),0,0)*cf(0,i,0)
                                Hit = Hit+v3(0,x,0)
                                if didHit == true then break end
                        end
                        didHit = false
                        aim = false
                        if typez == true and hit~=nil then
                                local cfz = cf(pos,(Handle.CFrame*cf(0,-10,0)).p)*ca(math.pi/2,0,0)*cf(0,-3,0)
                                Handle.Anchored = false
                                local we = w(Handle,Handle,hit,cfz:toObjectSpace(hit.CFrame))
                                DamageFunc(hit,ThrowDamage,.1) 
                                for i = 0,10,.1 do
                                        wait(.1)
                                        if didHit == true or hit == nil then
                                                break
                                        else
                                                local x = DamageFunc(hit,math.random(2,5),0) 
                                                if x == true then
                                                        didHit = true
                                                end
                                        end
                                end
                                we:Destroy()
                                Handle.Anchored = true
                        end
                        didHit = true
                        for i = 0,30 do
                                wait(.002)
                                Handle.CFrame = clerp(Handle.CFrame,Ra.CFrame*cf(0,-1,0)*ca(mr(-90),0,0),.2)
                        end
                        wait(.2)
                        Handle.Anchored = false
                        
                        HandleW.Part0 = Ra
                        HandleW.C0 = cf(0,-1,0)*ca(mr(-90),0,0)
                        Attacking = false
                end)()
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(-45),0,mr(0)),.5)
                        --HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),mr(180),0),.5)
                end
                aim = false
                wait(1)
                for i = 0,5 do
                        wait(.02)
                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(100),0,mr(0)),.5)
                        --HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),mr(180),0),.5)
                end
        end
end)
cw(function()
        while true do
                wait(.02)
                if Attacking == false then
                        if Walking == true then
                                for i = 0,5 do
                                        wait(.02)
                                        if Walking == false or Attacking == true then break end
                                        RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(0),0,mr(20)),.5)
                                        HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-135),0,0),.5)
                                end
                                repeat wait() until Walking == false or Attacking == true
                        else
                                if FreeFalling == true then
                                        for i = 0,5 do
                                                wait(.02)
                                                if Hum.Jump == false or Attacking == true then break end
                                                RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(0),0,mr(100)),.5)
                                                HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-100),0,0),.5)
                                        end
                                        repeat wait() until FreeFalling == false or Attacking == true
                                elseif Hum.Jump == true then
                                        for i = 0,5 do
                                                wait(.02)
                                                if Hum.Jump == false or Attacking == true then break end
                                                RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(0),0,mr(30)),.5)
                                                HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),0,0),.5)
                                        end
                                        repeat wait() until Hum.Jump == false or FreeFalling == true or Attacking == true
                                else
                                        for i = 0,10 do
                                                wait(.02)
                                                if Walking == true or Attacking == true then break end
                                                RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(100),0,mr(5)),.4)
                                                HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),0,0),.4)
                                        end
                                        for i = 0,20 do
                                                wait(.02)
                                                if Walking == true or Attacking == true then break end
                                                RaW.C0 = clerp(RaW.C0,cf(1.5,.5,0)*ca(mr(90),0,mr(5)),.2)
                                                HandleW.C0 = clerp(HandleW.C0,cf(0,-1,0)*ca(mr(-90),0,0),.2)
                                        end
                                        repeat wait() until Walking == true or Attacking == true or Hum.Jump == true or FreeFalling == true
                                end
                        end
                end
        end
end)()

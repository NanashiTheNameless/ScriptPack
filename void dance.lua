Attacking = false
Health = 500
NorWalkSpeed = 20
RunWalkSpeed = 100
ButtonHold = false
Walking = false
Jumping = false
FastRunning = false
MouseHold = false
ComboN = 0
SwordStandBy = true
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
Torso["Right Shoulder"].Part1 = Ra
Torso["Left Shoulder"].Part1 = La
pcall(function()Player.Backpack["Sunset Dance"]:Destroy()end)
Hb = Instance.new("HopperBin",Player.Backpack)Hb.Name = "Sunset Dance"
pcall(function()Char.Mod:Destroy()end)
pcall(function()Char.Sword:Destroy()end)
pcall(function()Torso.Bg:Destroy()end)
BgTor = Instance.new("BodyGyro",Torso)
BgTor.Name = "Bg"
script.Name = "Sword"
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
        local W = Instance.new("Snap",par)
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
        if id then M.MeshId = "http://www.roblox.com/asset/?id="..tostring(id) end
        if tex then M.TextureId = "http://www.roblox.com/asset/?id="..tostring(tex) end
        M.MeshType = typ
        M.Scale = scal
        return M
end
function fj(lim,tor,cf1,sd)
        sd.Part1 = nil
        local w1 = w(Main,tor,lim,true,cf1)
        w1.C1 = cf(0,.5,0)
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
        if hum and not hum:FindFirstChild("Dmgz:"..Player.Name)  and hit.Parent ~= Char and hit.Parent ~= Workspace and Damage and timz then
                hum:TakeDamage(Damage)
                local a = Instance.new("StringValue",hum)a.Name = "Dmgz:"..Player.Name
                game.Debris:AddItem(a,timz)
                local b = Instance.new("ObjectValue",hum)b.Name = "creator" b.Value = Player
                game.Debris:AddItem(b,10)
        end
end
function makeBall(Color,Size,Number,Intervals) 
        local Cp = part(Workspace,v3(Size.x,Size.y,Size.z),Color,1,false)
        local pl = inst("PointLight",Cp)
        pl.Color = BrickColor.new(Color).Color
        pl.Brightness = 10
        pl.Range = 10
        Cp.CFrame = cf(0,10,0)
        local Sizez = Size
        for i = 0,Number-1 do 
                local p = part(Workspace,Size,Color,.5,false)
                p.Anchored = true
                p.CFrame = Cp.CFrame*ca(mr(mrd(-360,360)),mr(mrd(-360,360)),mr(mrd(-360,360)))
                --Sizez = Sizez+v3(Intervals,Intervals,Intervals)
                game:service'RunService'.Stepped:connect(function()p.CFrame = Cp.CFrame*ca(mr(mrd(-360,360)),mr(mrd(-360,360)),mr(mrd(-360,360))) end)
                cw(function()repeat wait() until Cp.Parent == nil or not Cp or not Cp:IsA("Part")
                p:Destroy() end)()
        end
        return Cp
end
--[[Stuff below:]]
Hum.MaxHealth = Health 
wait(.2)
Hum.Health = Health
Hum.WalkSpeed = NorWalkSpeed
Slash = Instance.new("Sound",Head)Slash.SoundId = "http://www.roblox.com/asset/?id=10209640" Slash.Volume = 10
local RaW = false
local LaW = false
local NorCfR = cf(1.5,.5,0)
local NorCfL = cf(-1.5,.5,0)
cw(function()
        while true do wait()
                if not RaW or not LaW then repeat wait() until RaW~=false and LaW~=false end
                if Attacking == true then repeat wait() until Attacking == false end
                if SwordStandBy == false then repeat wait() until SwordStandBy == true end
                local a = math.random(-5,5) local a2 = math.random(-5,5)
                local b = math.random(15,25)  local b2 = math.random(-25,-15)
                for i = 0,50 do wait(.1)
                        if Attacking == true then break end
                        if SwordStandBy == false then break end
                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(a),0,mr(b)),.05)
                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(a2),0,mr(b2)),.05)
                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.1)
                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0),.1)
                end
        end
end)()
----------------Sword 1--------------------------
local Color1 = "Royal purple" local Color2 = "Really black" local BladeC = "Magenta"
Sheath1 = part(Main,v3(.25,3,1),Color1,0,false)w(Sheath1,Torso,Sheath1,true,cf(1+(.25/2),-1.5,1)*ca(mr(-60),0,0))
local p = part(Main,v3(.25,1,1),Color1,0,false)w(p,Sheath1,p,true,cf(0,-1.5+-.5,0)*ca(mr(180),0,0))mesh(p,nil,nil,"Wedge",v3(1,1,1))
-------cf(-1+(.25/-2),-1.5,1)*ca(mr(-60),0,0)
Handle1 = part(Main,v3(0,0,0),"",0,false)Handle1W = w(Handle1,Sheath1,Handle1,true,cf(0,1.5+1+(.25/2),0)*ca(mr(180),0,0)*cf(0,-.25,0))
local a = Color1
for i = -1,1,2/15 do
        local p = part(Main,v3(.4,.25,.4),a,0,false)w(p,Handle1,p,true,cf(0,i,0))inst("SpecialMesh",p).MeshType = "Sphere"
        if a == Color1 then a = Color2 else a = Color1 end
end
local p = part(Main,v3(.4,.25,1),Color1,0,false)w(p,Handle1,p,true,cf(0,1,0))
local p2 = part(Main,v3(.4,.25,.5),Color1,0,false)w(p2,p,p2,true,cf(0,0,-.5+.05)*ca(mr(-45),0,0)*cf(0,0,-.5/2+.06))
local p2 = part(Main,v3(.4,.25,.5),Color1,0,false)w(p2,p,p2,true,cf(0,0,.5-.05)*ca(mr(-45),0,0)*cf(0,0,.5/2-.06))
local p = part(Main,v3(.1,3,.5),BladeC,0,false)w(p,Handle1,p,true,cf(0,1+1.5,-.15))
local p = part(Main,v3(.1,3,.1),BladeC,0,false)w(p,Handle1,p,true,cf(0,1+1.5,.3))
local p = part(Main,v3(.1,1,.8),BladeC,0,false)w(p,Handle1,p,true,cf(0,1+3+.5,0))mesh(p,nil,nil,"Wedge",v3(1,1,1))
local pl = inst("PointLight",p)pl.Color = BrickColor.new(Color1).Color pl.Brightness = 100 pl.Range = 4
HurtBrick1 = part(Main,v3(.2,4,.9),BladeC,1,false)w(HurtBrick1,Handle1,HurtBrick1,true,cf(0,1+2,0))
----------------Sword 2--------------------------
Color1 = "Royal purple" local Color2 = "Really black" BladeC = "Magenta"
Sheath2 = part(Main,v3(.25,3,1),Color1,0,false)w(Sheath2,Torso,Sheath2,true,cf(-1+(.25/-2),-1.5,1)*ca(mr(-60),0,0))
local p = part(Main,v3(.25,1,1),Color1,0,false)w(p,Sheath2,p,true,cf(0,-1.5+-.5,0)*ca(mr(180),0,0))mesh(p,nil,nil,"Wedge",v3(1,1,1))
Handle2 = part(Main,v3(0,0,0),"",0,false)Handle2W = w(Handle2,Sheath2,Handle2,true,cf(0,1.5+1+(.25/2),0)*ca(mr(180),0,0)*cf(0,-.25,0))
local a = Color1
for i = -1,1,2/15 do
        local p = part(Main,v3(.4,.25,.4),a,0,false)w(p,Handle2,p,true,cf(0,i,0))inst("SpecialMesh",p).MeshType = "Sphere"
        if a == Color1 then a = Color2 else a = Color1 end
end
local p = part(Main,v3(.4,.25,1),Color1,0,false)w(p,Handle2,p,true,cf(0,1,0))
local p2 = part(Main,v3(.4,.25,.5),Color1,0,false)w(p2,p,p2,true,cf(0,0,-.5+.05)*ca(mr(-45),0,0)*cf(0,0,-.5/2+.06))
local p2 = part(Main,v3(.4,.25,.5),Color1,0,false)w(p2,p,p2,true,cf(0,0,.5-.05)*ca(mr(-45),0,0)*cf(0,0,.5/2-.06))
local p = part(Main,v3(.1,3,.5),BladeC,0,false)w(p,Handle2,p,true,cf(0,1+1.5,-.15))
local p = part(Main,v3(.1,3,.1),BladeC,0,false)w(p,Handle2,p,true,cf(0,1+1.5,.3))
local p = part(Main,v3(.1,1,.8),BladeC,0,false)w(p,Handle2,p,true,cf(0,1+3+.5,0))mesh(p,nil,nil,"Wedge",v3(1,1,1))
local pl = inst("PointLight",p)pl.Color = BrickColor.new(Color1).Color pl.Brightness = 100 pl.Range = 4
HurtBrick2 = part(Main,v3(.2,4,.9),BladeC,1,false)w(HurtBrick2,Handle2,HurtBrick2,true,cf(0,1+2,0))
Hb.Selected:connect(function(Mouse)
        Attacking = true
        RaW = fj(Ra,Torso,NorCfR*ca(0,0,mr(-10)),Torso["Right Shoulder"])
        LaW = fj(La,Torso,NorCfL*ca(0,0,mr(-10)),Torso["Left Shoulder"])
        for i = 0,6 do wait(.01)
                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(20),mr(0),mr(-20)),.4)
                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(20),mr(0),mr(20)),.4)
        end
        Handle1W.Part0 = Ra
        Handle1W.C0 = cf(0,-1,0)*ca(mr(80),0,0)
        wait(.01)
        Handle2W.Part0 = La
        Handle2W.C0 = cf(0,-1,0)*ca(mr(80),0,0)
        wait(.01)
        for i = 0,6 do wait(.01)
                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(60),mr(0),mr(-20)),.4)
                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(60),mr(0),mr(20)),.4)
        end
        for i = 0,6 do wait(.01)
                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(0),mr(0),mr(20)),.4)
                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(0),mr(0),mr(-20)),.4)
                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.4)
                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.4)
        end
        
        Attacking = false
        Mouse.KeyDown:connect(function(Key)
                if Key == '\48' and Attacking == false then SwordStandBy = false
                        ButtonHold = true
                        Hum.WalkSpeed = RunWalkSpeed
                        FastRunning = true
                        for i = 0,3 do wait(.01)
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(-80),mr(0),mr(20)),.8)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(-80),mr(0),mr(-20)),.8)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-45),0,0) ,.4)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-45),0,mr(0)) ,.4)
                        end
                        repeat wait()SwordStandBy = false until ButtonHold == false 
                        FastRunning = false
                        Hum.WalkSpeed = NorWalkSpeed
                        for i = 0,8 do wait(.01)
                                if Attacking == true then break end
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(0),0,mr(20)),.4)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(0),0,mr(-20)),.4)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.4)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0),.4)
                        end
                        SwordStandBy = true
                elseif Key == "e" then
                        for i = 0,8 do wait(.01)
                                if Attacking == true then break end
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(0),0,mr(90)),.4)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(0),0,mr(-90)),.4)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90+-85),0,0) ,.4)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90+-85),0,0),.4)
                        end        
                        local p = part(Main,v3(.1,3,.5),"Magenta",0,false)w(p,Handle2,p,true,cf(0,1+1.5,-.15))
                        local p = part(Main,v3(.1,3,.1),"Magenta",0,false)w(p,Handle2,p,true,cf(0,1+1.5,.3))
                        
                elseif Key == "r" and Attacking == false then
                        Attacking = true
                        local B1 = nil
                        local attack = false
                        cw(function()
                                wait(.1)
                                B1 = makeBall("Royal purple",v3(2.5,2.5,2.5),3,.5)
                                
                                while attack==false do B1.CFrame = Torso.CFrame*cf(0,0,-4)  wait() end
                        end)()
                        for i = 0,3 do wait(.01)
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(90),mr(0),mr(0)),.8)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(0)),.8)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(-45),mr(90)),.5) 
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(45),mr(-90)),.5)
                        end
                        repeat wait(.01) until B1 ~= nil
                        Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*2,0)end)
                        Dmg2 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*2,0)end)
                        Slash:Play()
                        Slash:Play()
                        local StartP = Torso.CFrame*cf(0,0,-4).p
                        B1.CFrame = cf(Mouse.Hit.p,StartP)*cf(0,0,-(Mouse.Hit.p-StartP).magnitude)*ca(0,mr(180),0)
                        local bv = Instance.new("BodyVelocity",B1)
                        bv.maxForce = v3(1e5,1e5,1e5)
                        local oldcf = B1.CFrame
                        bv.velocity = oldcf.lookVector*100
                        game.Debris:AddItem(B1,10)
                        attack = true
                        B1.Touched:connect(function(hit)
                                if hit.Parent ~= Char and hit.Parent.Parent ~= Char and hit.Parent ~= Main and hit.Parent:FindFirstChild("Humanoid") then
                                        if B1 then B1:Destroy()end
                                        DamageFunc(hit,Dmg.MagicDmg,0)
                                end
                        end)
                        for i = 0,3 do wait(.01)
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(90),mr(0),mr(90)),.8)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(-90)),.8)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(-45),mr(90)),.5)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(45),mr(-90)),.5)
                        end
                        Dmg1:disconnect()Dmg2:disconnect()
                        Attacking = false
                        for i = 0,8 do wait(.01)
                                if Attacking == true then break end
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(0),0,mr(20)),.4)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(0),0,mr(-20)),.4)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0),.5)
                        end
                end
        end)
        Mouse.KeyUp:connect(function(Key)
                if Key == '\48' then
                        ButtonHold = false
                end
        end)
        Mouse.Button1Down:connect(function()
                MouseHold = true
                if Attacking == false then ButtonHold = false
                        Attacking = true
                        SwordStandBy = false
                        local DMG_N =        Dmg.SlashDamage
                        local Dmg1 = false
                        local Dmg2 = false
                        ComboN = ComboN + 1
                        if ComboN <= 1 then
                                
                                if Hum.Jump == true then
                                        for i = 0,3 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(160),mr(0),mr(-45)),.8)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(160),mr(0),mr(45)),.8)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),0,mr(0)),.5)
                                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-20),0,mr(0)),.5)
                                        end
                                        wait(.3)
                                        Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*1.25,0)end)
                                        Dmg2 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*1.25,0)end)
                                        Slash:Play()
                                        Slash:Play()
                                        for i = 0,3 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(-10),mr(0),mr(20)),.8)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(-10),mr(0),mr(-20)),.8)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-45),0,0),.5)
                                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-45),0,mr(0)),.5) 
                                        end
                                elseif FastRunning == true then
                                        for i = 0,3 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(90),mr(0),mr(0)),.8)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(0)),.8)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(-45),mr(90)),.5) 
                                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(45),mr(-90)),.5)
                                        end
                                        Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*2,0)end)
                                        Dmg2 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*2,0)end)
                                        Slash:Play()
                                        Slash:Play()
                                        local bv = Instance.new("BodyVelocity",Torso)
                                        bv.maxForce = v3(1e5,1e5,1e5)
                                        local oldcf = Torso.CFrame
                                        bv.velocity = oldcf.lookVector*40
                                        for i = 0,3 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(90),mr(0),mr(90)),.8)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(-90)),.8)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(-45),mr(90)),.5)
                                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90-20),mr(45),mr(-90)),.5)
                                        end
                                        if bv then bv:Destroy() end
                                else
                                        for i = 0,5 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(100),mr(0),mr(-45)),.4)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(-5),0,mr(-20)),.4)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),mr(0),mr(20)),.5)
                                        end
                                        Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*1.5,.05)end)
                                        Slash:Play()
                                        for i = 0,3 do wait(.01)
                                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(-45),mr(0),mr(45)),.8)
                                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(10),0,mr(-20)),.8)
                                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),mr(0),mr(20)),.5)
                                        end
                                end
                                ComboN = 1
                                cw(function()wait(.5)if ComboN >= 2 then  else ComboN = 0 end end)()
                        elseif ComboN == 2 then
                                for i = 0,5 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(10),mr(0),mr(20)),.5)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(45)),.5)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0),.5)
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),mr(45),mr(-90)) ,.5)
                                end
                                Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N,.1)end)
                                Slash:Play()
                                for i = 0,3 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(-10),mr(0),mr(20)),.8)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),0,mr(-90)),.8)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),mr(20),mr(-90)),.5)
                                end
                                ComboN = 2
                                cw(function()wait(.5)if ComboN >= 3 then  else ComboN = 0 end  end)()
                        elseif ComboN == 3 then
                                for i = 0,5 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(120),mr(0),mr(20)),.5)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(-5),0,mr(-20)),.5)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90+20),0,0),.5)
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)                
                                end
                                Dmg1 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N,.1)end)
                                Slash:Play()
                                for i = 0,3 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(20),mr(0),mr(-45)),.8)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(10),0,mr(-20)),.8)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90-20),0,0) ,.5)                
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)                
                                end
                                ComboN = 3
                                cw(function()wait(.5)if ComboN >= 4 then  else ComboN = 0 end  end)()
                        elseif ComboN <=4 then
                                --local bg = Instance.new("BodyGyro",Torso)
                                local oldcf = Torso.CFrame
                                --bg.cframe = oldcf*ca(mr(0),0,0)
                                --bg.maxTorque = v3(1e100,1e100,1e100)
                                local b = false
                                cw(function()
                                        for i = 0,360,360/8 do wait(.01)
                                                Torso.CFrame = oldcf*ca(0,mr(i),0)
                                                if i >= 100 then b = true end
                                        end
                                        wait(.5)
                                        if bg then bg:Destroy() end
                                end)()
                                Dmg2 = HurtBrick1.Touched:connect(function(hit)DamageFunc(hit,DMG_N*2,.1)end)
                                for i = 0,5 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(10),mr(0),mr(20)),.5)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),mr(0),mr(45)),.5)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),mr(45),mr(-90)) ,.5)
                                end
                                repeat wait() until b == true
                                Slash:Play()
                                for i = 0,3 do wait(.01)
                                        RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(-10),mr(0),mr(20)),.8)
                                        LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(90),0,mr(-90)),.8)
                                        Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)
                                        Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),mr(20),mr(-90)),.5)
                                end
                                ComboN = 0 
                        else
                                ComboN = 0
                        end
                        if Dmg1 then Dmg1:disconnect() end
                        if Dmg2 then Dmg2:disconnect() end
                        Attacking = false
                        for i = 0,8 do wait(.01)
                                if Attacking == true then break end
                                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(0),0,mr(20)),.4)
                                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(0),0,mr(-20)),.4)
                                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(-90),0,0) ,.5)
                                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(-90),0,0),.5)
                        end
                        if not Attacking == true then SwordStandBy = true end
                end
        end)
        Mouse.Button1Up:connect(function()
                MouseHold = false
        end)
end)
Hb.Deselected:connect(function(Mouse)
        Attacking = true
        for i = 0,6 do wait(.01)
                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(60),mr(0),mr(-20)),.4)
                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(60),mr(0),mr(20)),.4)
                Handle1W.C0 = clerp(Handle1W.C0,cf(0,-1,0)*ca(mr(80),0,0) ,.4)
                Handle2W.C0 = clerp(Handle2W.C0,cf(0,-1,0)*ca(mr(80),0,0) ,.4)
        end
        for i = 0,6 do wait(.01)
                RaW.C0 = clerp(RaW.C0,NorCfR*ca(mr(20),mr(0),mr(-20)),.4)
                LaW.C0 = clerp(LaW.C0,NorCfL*ca(mr(20),mr(0),mr(20)),.4)
        end
        Handle1W.Part0 = Sheath1
        Handle1W.C0 = cf(0,1.5+1+(.25/2),0)*ca(mr(180),0,0)*cf(0,-.25,0)
        wait(.01)
        Handle2W.Part0 = Sheath2
        Handle2W.C0 = cf(0,1.5+1+(.25/2),0)*ca(mr(180),0,0)*cf(0,-.25,0)
        wait(.01)
        if RaW then RaW:Destroy() RaW = nil end
        if LaW then LaW:Destroy() RaW = nil end
        Attacking = false
end)

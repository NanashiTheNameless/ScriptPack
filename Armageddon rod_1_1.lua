--[[ Armageddon Rod ]]--[[mediafire gtfo password]]-----------------------------------------------------------------------------------------------------------
Players = game:GetService("Players")
 
Me = Players.LocalPlayer
Char = Me.Character
Neck0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
 
Selected = false
Attacking = false
Debounce = true
Hurt = false
Charging = false
Able = true
Hold = false
Aim = false
Anim = "None"
MP = 999999
MaxMP = MP
 
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
 
function Part(Par, Anc, Colli, Tran, Ref, Col, Siz, Mat, Type)
    local p = Instance.new("Part")
    p.formFactor = "Custom"
    p.TopSurface = 0
    p.BottomSurface = 0
    p.Transparency = Tran
    p.Reflectance = Ref
    p.Anchored = Anc
    p.CanCollide = Colli
    p.BrickColor = Col
    p.Size = Siz
    p.Locked = true
    if Type == "Block" then
        it("BlockMesh",p)
    elseif Type == "Cylinder" then
        it("CylinderMesh",p)
    elseif Type == "Wedge" then
        it("SpecialMesh",p).MeshType = "Wedge"
    elseif Type == "Sphere" then
        it("SpecialMesh",p).MeshType = "Sphere"
    elseif Type == "Head" then
        it("SpecialMesh",p).MeshType = "Head"
    end
    p.Parent = Par
    p:BreakJoints()
    return p
end
 
function Weld(P0, P1, C0, C1)
    local w = Instance.new("Weld")
    w.Part0 = P0
    w.Part1 = P1
    if C0 then
        w.C0 = C0
    end
    if C1 then
        w.C1 = C1
    end
    w.Parent = P0
    return w
end
 
function AddMP(mpz) 
    MP = MP + mpz 
    if MP > MaxMP then 
        MP = MaxMP 
    end
end
 
New = {
    Meshes = {
        Crown = "http://www.roblox.com/asset/?id=20329976";
        Skull1 = "http://www.roblox.com/asset/?id=36869975";
        Skull2 = "http://www.roblox.com/asset/?id=36869983";
        SpikeBall = "http://www.roblox.com/asset/?id=9982590";
        Spike = "http://www.roblox.com/asset/?id=1033714";
        Totem = "http://www.roblox.com/asset/?id=35624068";
        Ring = "http://www.roblox.com/asset/?id=3270017";
    };
    Sounds = {
        Break="http://www.roblox.com/asset/?id=3264793";
        Berserk ="http://www.roblox.com/asset/?id=2676305";
        Fire1="http://www.roblox.com/asset/?id=2760979";
        Imbue="http://www.roblox.com/asset/?id=2785493";
        Ghost="http://www.roblox.com/asset/?id=3264923";
        Block="rbxasset://sounds\\metal.ogg";
        Boom="http://www.roblox.com/asset/?id=16976189";
        Beep="http://www.roblox.com/asset/?id=15666462";
        Smash="http://www.roblox.com/asset/?id=2801263";
        Punch="http://www.roblox.com/asset/?id=31173820";
        Slash="rbxasset://sounds/swordslash.wav";
        Falcon="http://www.roblox.com/asset/?id=1387390";
        Cast="http://www.roblox.com/asset/?id=2101137";
        Spin="http://www.roblox.com/asset/?id=1369159"; 
        Abscond="http://www.roblox.com/asset/?id=2767090";
        ElectricalCharge="http://www.roblox.com/asset/?id=2800815";
        Lunge="rbxasset://sounds/swordlunge.wav";
        Unsheath="rbxasset://sounds/unsheath.wav";
    };
    Decals = {
        Shine = "http://www.roblox.com/asset/?id=48965808";
    };
    Mesh = function(P, ID, x, y, z)
        local m = Instance.new("SpecialMesh")
        m.MeshId = ID
        m.Scale = Vector3.new(x, y, z)
        m.Parent = P
        return m
    end;
}
 
function Stick(hit2,hit,tostick) 
    local weld=it("Weld") 
    weld.Part0=tostick 
    weld.Part1=hit2 
    local HitPos=hit.Position 
    local CJ=cn(HitPos) 
    local C0=hit2.CFrame:inverse()*CJ 
    local C1=hit.CFrame:inverse()*CJ 
    weld.C0=C1 
    weld.C1=C0 
    weld.Parent=hit2 
end 
 
function ChildWait(n, p)
    local c = p:findFirstChild(n)
    if c then return c end
    while true do
        c = p.ChildAdded:wait()
        if c.Name == n then return c end
    end
end
 
Torso = ChildWait("Torso", Char)
Head = ChildWait("Head", Char)
Rarm = ChildWait("Right Arm", Char)
Larm = ChildWait("Left Arm", Char)
Rleg = ChildWait("Right Leg", Char)
Lleg = ChildWait("Left Leg", Char)
Neck = ChildWait("Neck", Torso)
Hum = ChildWait("Humanoid", Char)
 
RSH = ChildWait("Right Shoulder", Torso)
LSH = ChildWait("Left Shoulder", Torso)
RH = ChildWait("Right Hip", Torso)
LH = ChildWait("Left Hip", Torso)
 
RSH.Part0 = Torso
LSH.Part0 = Torso
RH.Part0 = Torso
LH.Part0 = Torso
 
pcall(function() Hum.MaxHealth = 1/0 end)
pcall(function() Head.Transparency = 1 NH = Head:Clone() NH.Transparency = 0 NH.Parent = Head Weld(Head,NH) Head.face:Clone().Parent = NH Head.face:Remove() NH.Mesh.Scale = v3(1.15,1.15,1.15) NewHats() end)
 
function NewHats()
    for i,v in pairs(Char:GetChildren()) do
        if v:IsA("Hat") then
            v.Handle.Transparency = 1
            local new = v.Handle:Clone()
            new.Mesh.Scale = new.Mesh.Scale * 1.1
            new.Transparency = 0
            new.Parent = NH
            new.CFrame = v.Handle.CFrame
            Stick(new,NH,Head)
            v:Remove()
        end
    end
end
--RMDX FUNCTIONS--
function ray(Pos, Dir,xxz) local xxz2=c if xxz ~= nil then xxz2=nil end return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999),xxz2) end 
function GetRegion(p0,p1,f,f2) q(function()
for i,v in pairs(workspace:FindPartsInRegion3(Region3.new(p0,p1),c,100) ) do if v.Parent:findFirstChild("Humanoid") and v.Parent.Humanoid.Health > 0 and v.Parent:findFirstChild("Torso") then q(function() f(v.Parent) end) elseif f2 and v.Parent.Parent:findFirstChild("Humanoid") == nil then f2(v) end end
end) end 
function FindGround(pos) local ax,ay,az = pos:toEulerAnglesXYZ()
local bhit,bpos=ray(pos.p,pos.p - (pos.p + v3(0,200,0)))
if bhit and bpos then return cn(bpos)*ca(ax,ay,az)  end return nil end
function ft(tablez,item) for i=1,#tablez do if tablez[i] == item then return i end end return nil end
local DBDH={}
SpawnProjectile = function(Pos,Mesh,Col,Dmg,sc)
GlowMesh(false,"Sphere",t,v3(7*sc,1.5*sc,7*sc),Col,Pos,0.1,1,0.05)
local pro = Part(Torso,true,true,0,0,bn("Dark green"),v3(2*sc,7,2*sc),"Plastic","None")
New.Mesh(pro,Mesh,2*sc,15*sc,2*sc)
pro.CFrame = Pos*ca(rd(-25),0,0)*cn(0,-3*sc,0) local cff = pro.CFrame for i=0.1,1,0.15 do pro.CFrame=cff*cn(0,6*sc*i,0)wait() end
local rr = sc*1.5 GetRegion(pro.Position-v3(rr,rr,rr),pro.Position+v3(rr,rr,rr),function(v) v.Humanoid.PlatformStand = true dmg = v.Humanoid.MaxHealth*rn(150,250)/1000 if Debounce then Debounce = false v.Humanoid.Health=v.Humanoid.Health-dmg Show_Damage(v.Torso.Position+v3(rn(-5,5),rn(3,5),rn(-5,5)),"-"..dmg) wait(0.15) v.Humanoid.PlatformStand = false Debounce = true end end) wait(1) for i=1,0,-0.15 do pro.CFrame=cff*cn(0,6*sc*i,0) wait() end pro:Remove() end
--RMDX FUNCTIONS--
 
function GlowMesh(Anchored,MeshId,Root,Size,Color,Offset,TransparencyStart,TransparencyEnd) 
    q(function()
        local spi=Part(Char,false,false,TransparencyStart,0,bn(Color),v3(1,1,1),"Plastic","None")
        local spim=it("SpecialMesh",spi) 
        if MeshId:lower()=="Sphere" then 
            spim.MeshType="Sphere" 
        elseif MeshId:lower()=="Block" then 
            spim.MeshType="Brick" 
        else 
            spim.MeshType="FileMesh" 
            spim.MeshId=MeshId
        end
        if Anchored then 
            local spiw=Weld(spi,Root,spi,cn(0,0,0),ca(0,0,0)) 
            spiw.C0=spiw.C0*Offset
        else 
            spi.Anchored=true 
            spi.CFrame=Offset
        end 
        for i=TransparencyStart,TransparencyEnd,TransparencyStart do 
            spi.Transparency=i 
            spim.Scale=Size*(i+0.3) 
            wait() 
        end 
    end) 
end
 
function Effect(Part, Start, End, Increment,Bool)
    for i = Start, End, Increment do
        Part.Transparency = i
        wait()
    end
    if Bool then
        Part:Remove()
    end
end
 
Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
        local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = Transparency or 0.4 li.BrickColor = BrickColor.new(Color)
        li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(Thickness,Thickness,magz/Times) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
        local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
        if Times == i then 
            local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
            li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
        else
            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.25)
    end
end
 
function GetHum(P)
    for _,v in pairs(P:children()) do
        if v:IsA("Humanoid") then
            if v.Health > 0 then
                return v
            end
        end
    end
end
 
q = function(f) coroutine.resume(coroutine.create(function() f() end)) end
 
function Trail(Object, Number_Of_Trails, Wait_Time, Color, Thickness, Offset) 
        local oldpos=(Object.CFrame *Offset).p 
        for i=1,Number_Of_Trails do 
                local obp=(Object.CFrame *Offset).p 
                local mag=(oldpos - obp).magnitude 
                local tr=pa(Object,"trail","Block",0,0,0,false,false,0.5,0.15,Color) 
                tr.Anchored=true 
                tr.CFrame=CFrame.new(oldpos,obp) 
                tr.CFrame=tr.CFrame + tr.CFrame.lookVector* (mag/2) 
                local trm=Instance.new("CylinderMesh",tr) 
                trm.Scale=Vector3.new(5*Thickness,mag*5,5*Thickness) 
                cw(function() 
                        for i=5*Thickness,0,-5*Thickness/10 do 
                                trm.Scale=Vector3.new(i,mag*5,i) 
                                wait() 
                        end 
                        tr:Remove'' 
                end) 
                tr.CFrame=tr.CFrame *CFrame.Angles(math.rad(90),0,0) 
                oldpos=obp wait(Wait_Time) 
        end 
end
 
function GetGroup(Pos, Distance, Hit)
    local tab = {}
    for _,v in pairs(workspace:children()) do
        local h = GetHum(v)
        local t = v:findFirstChild("Torso")
        if h and t and v ~= Hit.Parent then
            if (t.Position - Pos).magnitude <= Distance then
                table.insert(tab, {h, v, (t.Position - Pos).magnitude})
            end
        end
    end
    if Hit then
        local h = GetHum(Hit.Parent)
        if h then
            table.insert(tab, {h, Hit.Parent, 0})
        end
    end
    return tab
end
 
for _,v in pairs(Char:children()) do
    if v.Name == "Suit" then
        v:remove()
    end
end
 
Model = Instance.new("Model")
Model.Name = "Suit"
 
FTorso = Part(Model, false, false, 1, 0, Torso.BrickColor, v3(2, 2, 1))
FW = Weld(Torso, FTorso)
 
RAB = Part(Model, false, false, 1, 0, bn("White"), v3(0.2, 0.2, 0.2))
LAB = Part(Model, false, false, 1, 0, bn("White"), v3(0.2, 0.2, 0.2))
RLB = Part(Model, false, false, 1, 0, bn("White"), v3(0.2, 0.2, 0.2))
LLB = Part(Model, false, false, 1, 0, bn("White"), v3(0.2, 0.2, 0.2))
 
RABW = Weld(Torso, RAB, cn(), cn(-1.5, -0.5, 0))
LABW = Weld(Torso, LAB, cn(), cn(1.5, -0.5, 0))
RLBW = Weld(Torso, RLB, cn(), cn(-0.5, 1, 0))
LLBW = Weld(Torso, LLB, cn(), cn(0.5, 1, 0))
 
RAW = Weld(RAB, nil, cn(), cn(0, 0.5, 0))
LAW = Weld(LAB, nil, cn(), cn(0, 0.5, 0))
RLW = Weld(RLB, nil, cn(), cn(0, 1, 0))
LLW = Weld(LLB, nil, cn(), cn(0, 1, 0))
 
 
Gui=it("ScreenGui",Me.PlayerGui) Gui.Name="TigerGUI" raigcol="Alder" raigcol2="New Yeller" raigcol3="Navy blue" raigcol4="Bright red" --mp
fr=it("Frame",Gui) fr.Size=ud(1,0,1,0) fr.Active=false fr.BackgroundTransparency=1
sttray=it("ImageLabel",fr) sttray.BackgroundColor3=bn("Black").Color
sttray.Size=ud(0.2,0,0.055,0) sttray.BorderSizePixel=0 sttray.Position=ud(0.043,0,0.94,0) sttray.Image=New.Decals.Shine
sttext=it("TextLabel",fr) sttext.BackgroundTransparency=1
sttext.Size=ud(0.2,0,0.055,0) sttext.BorderSizePixel=0 sttext.ZIndex=2 sttext.Position=ud(0.043,0,0.94,0)
sttext.FontSize="Size18" sttext.Font="ArialBold" sttext.TextColor3=bn("White").Color
mptray=it("TextLabel",fr) mptray.BackgroundColor3=bn("Black").Color
mptray.Size=ud(0.18,0,0.08,0) mptray.BorderSizePixel=0 mptray.Position=ud(0.41,0,0.025,0) mptray.Text=""
mptext=it("TextLabel",mptray) mptext.BackgroundTransparency=1 mptext.Size=ud(1,0,0.5,0) mptext.Position = ud(0,0,0.1,0) mptext.TextColor3=bn("White").Color
mptext.FontSize="Size18" mptext.Font="ArialBold" mptext.ZIndex=2 mptext.Text="Mp Power"
mptext2=it("TextLabel",mptray) mptext2.BackgroundTransparency=1 mptext2.Size=ud(1,0,0.5,0) mptext2.Position = ud(0,0,0.4,0) mptext2.TextColor3=bn("White").Color
mptext2.FontSize="Size18" mptext2.Font="ArialBold" mptext2.ZIndex=2 mptext2.Text="/"
mpfill=it("ImageLabel",mptray) mpfill.BackgroundColor3=bn(raigcol).Color mpfill.Image=New.Decals.Shine mpfill.Size=ud(0.97,0,0.90,0) mpfill.Position=ud(0.015,0,0.05,0)
 
q(function() 
    while wait() do 
        mptext2.Text = tostring(math.floor(MP)).. "/" ..tostring(math.floor(MaxMP)) 
        sttext.Text=" ArmageddonRod [" ..Anim.. "] " 
        mpfill.Size=ud((0.97/MaxMP)*MP,0,0.9,0) 
    end 
end)
q(function() 
    while wait() do 
        if MP >= MaxMP then 
            local raigcolz=bn(raigcol).Color 
            local rr,gg,bb=raigcolz.r,raigcolz.g,raigcolz.b 
            for xz=gg,gg-80,-5 do 
                if MP < MaxMP then 
                    mpfill.BackgroundColor3=bn(raigcol).Color 
                    break 
                end 
                mpfill.BackgroundColor3=c3(rr,xz,bb) wait()
            end 
            for xz=gg-80,gg,5 do 
                if MP < MaxMP then 
                    mpfill.BackgroundColor3=bn(raigcol).Color 
                    break 
                end 
                mpfill.BackgroundColor3=c3(rr,xz,bb) wait() 
            end 
        end 
    end 
end)
 
DamageFunc = function(Part,Dmg)
    Part.Touched:connect(function(Hit)
        local h = GetHum(Hit.Parent)
        if h and Debounce and h.Parent.Name ~= Me.Name then
            Debounce = false
            local Dmg = h.MaxHealth*Dmg
            h.Health = h.Health - Dmg
            Show_Damage(h.Parent:FindFirstChild("Torso",true).Position*v3(rn(-5,5),5,rn(-5,5),"-"..Dmg))
            wait(1)
            Debounce = true
        end
    end)
end
 
Weapon = it("Model")
Weapon.Name = "Staff"
 
HB = Part(Weapon, false, false, 1, 0, bn("White"), v3(0.2, 0.2, 0.2))
HW = Weld(Rarm, HB, cn(0, -0.7, 0), ca(0, rd(90), rd(90)))
Han = Part(Weapon,false,false,0,0,bn("Black"),v3(0.4,5,0.4),"Plastic","Cylinder")
HaW = Weld(FTorso,Han,cn(0,0,0.5),ca(0,0,rd(45),0,0))
for i=0,5,0.5 do
    lul = Part(Weapon,false,false,0,0,bn("Bright red"),v3(0.41,0.05,0.41),"Plastic","Cylinder")
    lul.Mesh.Scale = v3(1,0.25,1)
    Weld(Han,lul,cn(0,-2.5+i,0))
end
H1 = Part(Weapon,false,false,0,0.2,bn("White"),v3(0.5,0.5,0.5))
New.Mesh(H1,"http://www.roblox.com/asset/?id=9756362",0.75,0.55,0.75)
Weld(Han,H1,cn(0,2.5,0))
H2 = Part(Weapon,false,false,0,0.2,bn("Really black"),v3(0.5,0.5,0.5))
New.Mesh(H2,"http://www.roblox.com/asset/?id=9756362",0.85,0.45,0.85)
Weld(Han,H2,cn(0,2.5,0))
Spike = Part(Weapon,false,false,0,0,bn("Really black"),v3(1,1,1))
spm = New.Mesh(Spike,"http://www.roblox.com/asset/?id=36869983",1,1,1)
spw = Weld(Han,Spike,cn(0,-2.5,0),ca(rd(180),rd(180),0))
S1 = Part(Weapon,false,false,0,0,bn("Bright red"),v3(1,1,1))
sm1 = New.Mesh(S1,"http://www.roblox.com/asset/?id=9982590",0.1,0.1,0.1)
sw1 = Weld(Spike,S1)
S2 = Part(Weapon,false,false,0,0,bn("Bright red"),v3(1,1,1))
sm2 = New.Mesh(S2,"http://www.roblox.com/asset/?id=9982590",0.1,0.1,0.1)
sw2 = Weld(Spike,S2)
LASpike = Part(Weapon,false,false,0,0,bn("Dark green"),v3(1,5,1))
New.Mesh(LASpike,New.Meshes.Spike,0.5,2,0.5)
Weld(Larm,LASpike,cn(0,-1.5,0),ca(0,0,rd(180)))
q(function()
    for i=1,1/0,5 do
        sw1.C0 = ca(rd(i),rd(i),0)*cn(0,0,1)
        sw2.C0 = ca(rd(i),rd(i),0)*cn(0,0,-1)
        wait()
    end
end)
 
function Show_Damage(P, D)
    local mo = it("Model")
    mo.Name = D
    local p = Part(mo, true, false, 0, 0, bn("Bright red"), v3(1, 0.1, 1),"Plastic","Block") 
    p.Name = "Head"
    local h = it("Humanoid")
    h.Health = 0
    h.MaxHealth = 0
    h.Name = "asd"
    h.Parent = mo
    mo.Parent = workspace
    p.CFrame = cn(P) 
    q(function()
        wait(0.5)
        mo:remove()
    end)
end
 
Weapon.Parent = Model
Model.Parent = Char
 
pcall(function() Me.Backpack["Armageddon Rod"]:Remove() bgg:Remove() end)
 
if script.Parent.className ~= "HopperBin" then
    h = it("HopperBin", Me.Backpack)
    h.Name = "Armageddon Rod"
    script.Parent = h
end
 
bin = script.Parent
 
function FT(T)
    RSH.Part0 = T
    LSH.Part0 = T
    RH.Part0 = T
    LH.Part0 = T
    RABW.Part0 = T
    LABW.Part0 = T
    LLBW.Part0 = T
    RLBW.Part0 = T
    if T == Torso then
        FTorso.Transparency = 1
    else
        Torso.Transparency = 1
    end
    T.Transparency = 0
end
 
function SelectAnim()
    RAW.Part1 = Rarm
    LAW.Part1 = Larm
    if Able then
        for i = 0,40,5 do
            RAW.C0 = ca(rd(-i),0,rd(-i))
            wait()
        end
        HaW.Part1 = nil
        HW.C0 = ca(0,rd(-90),0)*cn(0,-1,0)
        HW.Part1 = Han
        for i = 40,0,-5 do
            RAW.C0 = ca(rd(-i),0,rd(-i))
            wait()
        end    
        for i = 0,110,8 do
            RAW.C0 = ca(rd(i/5),rd(i/5),rd(i/5))
            LAW.C0 = ca(rd(-i/5),rd(i/2.5),rd(-i/5))
            wait()
        end
    end
end
 
function DeselAnim()
    RAW.Part1 = Rarm
    LAW.Part1 = Larm
    if Able then
    for i = 110,0,-8 do
            RAW.C0 = ca(rd(i/5),rd(i/5),rd(i/5))
            LAW.C0 = ca(rd(-i/5),rd(i/2.5),rd(-i/5))
            wait()
        end
        for i = 0,40,5 do
            RAW.C0 = ca(rd(-i),0,rd(-i))
            wait()
        end    
        HaW.Part1 = Han
        HW.Part1 = nil
        for i = 40,0,-5 do
            RAW.C0 = ca(rd(-i),0,rd(-i))
            wait()
        end
        RAW.Part1 = nil
        LAW.Part1 = nil
        RLW.Part1 = nil
        LLW.Part1 = nil
        FT(Torso)
    end
end
 
 
bgg = it("BodyGyro",Torso)
bgg.D = 50
 
function onSelected(mouse)
    SelectAnim()
    Selected = true
    q(function()
        while wait() do
            if Aim then 
                bgg.maxTorque = v3(1/0,1/0,1/0) 
                bgg.cframe = cn(Torso.Position,v3(mouse.Hit.p.x,Torso.Position.y,mouse.Hit.p.z)) 
            else 
                bgg.maxTorque = v3(0,0,0) 
            end
        end
    end)
    mouse.Button1Down:connect(function()
        if not Attacking and Able and Anim == "None" then
            Able = false Attacking = true FT(FTorso) RAW.Part1 = Rarm LAW.Part1 = Larm Anim = "Lightning" Aim = true
            q(function()
                for i = 0, 35, 5 do
                    FW.C0 = ca(0,rd(i),0)
                    wait()
                end
            end)
            for i = 0, 90, 10 do
                RAW.C0 = ca(rd(110/5+i),rd(110/5),rd(110/5))
                wait()
            end
            q(function()
                for i=16,10,-0.5 do
                    Hum.WalkSpeed = i
                    wait(0.1)
                end
            end)
            Hold = true
            while Hold == true do
                if (Torso.Position - mouse.Hit.p).magnitude < 500 and (Torso.Position - mouse.Hit.p).magnitude > 15 and MP>=1 then
                    MP = MP - 1
                    Lightning(Spike.Position,mouse.Hit.p,rn(5,10),rn(-2.5,2.5),"Bright yellow",0.05,0.35)
                    q(function()
                        for i,v in pairs(game.Players:GetChildren()) do
                            dmg = v.Character:FindFirstChild("Humanoid").MaxHealth*rn(50,150)/1000
                            if (v.Character:FindFirstChild("Torso").Position-mouse.Hit.p).magnitude < 5 and not Hurt and v.Character.Name ~= Me.Name then
                                Hurt = true
                                v.Character.Humanoid.Health = v.Character.Humanoid.Health - dmg
                                Show_Damage(mouse.Hit.p+v3(rn(-5,5),5,rn(-5,5)),"-"..dmg)
                                wait(0.5)
                                Hurt = false
                            end
                        end
                    end)
                end
                wait()
            end
        end
    end)
    mouse.Button1Up:connect(function()
        Anim = "None" Attacking = false Able = true Aim = false Hold = false
        Hum.WalkSpeed = 16
        RAW.Part1 = Rarm LAW.Part1 = Larm
        q(function()
            for i = 35, 0, -5 do
                FW.C0 = ca(0,rd(i),0)
                wait()
            end
        end)
        q(function()
            for i=10,16,0.5 do
                Hum.WalkSpeed = i
                wait(0.1)
            end
        end)
        for i = 90, 0, -10 do
            RAW.C0 = ca(rd(110/5+i),rd(110/5),rd(110/5))
            wait()
        end
        FT(Torso)
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" and not Attacking and Able and Anim == "None" and MP>=75 then
            MP = MP - 75
            Anim = "SpikeShield" Able = false Attacking = true FT(FTorso)
            for    i=0,23,1 do
                Neck.C0 = Neck0*ca(0,0,rd(-i*2))
                FW.C0 = ca(0,rd(i*2),0)
                RAW.C0 = ca(rd(110/5+i*4),rd(-110/5+i),rd(110/5+i))
                wait()
            end
            for i=1,25 do
                local sp = Part(Model,true,true,0,0,bn("Dark green"),v3(2.5,15,2.5),"Plastic","None")
                New.Mesh(sp,New.Meshes.Spike,1.75,20,1.75)
                sp.CFrame = Torso.CFrame*ca(rd(10),rd(15*i),0)*cn(0,-10,10)
                q(function()
                    for i=1,10,0.5 do
                        sp.CFrame=cn(sp.CFrame.x,-5+i,sp.CFrame.z)
                        wait()
                    end
                    wait(5)
                    for i=10,0,-0.5 do
                        sp.CFrame=cn(sp.CFrame.x,-5+i,sp.CFrame.z)
                        wait()
                    end
                    sp:Remove()
                end)
            end
            wait(1)
            for    i=23,0,-2 do
                Neck.C0 = Neck0*ca(0,0,rd(-i*2))
                FW.C0 = ca(0,rd(i*2),0)
                RAW.C0 = ca(rd(110/5+i*4),rd(-110/5+i),rd(110/5+i))
                wait()
            end
            Anim = "None" FT(Torso) Able = true Attacking = false
        end
        if key == "z" and Able and Anim == "None" and MP~=MaxMP then
            Anim = "Charge" Charging = true Able = false FT(FTorso)
            q(function()
                for i = 0, 35, 5 do
                    FW.C0 = ca(0,rd(i),0)
                    wait()
                end
            end)
            for i = 0, 90, 12 do
                RAW.C0 = ca(rd(110/5+i),rd(110/5),rd(110/5))
                wait()
            end
            cp1=Part(Model,false,false,0.45,0,bn("Bright red"),v3(1,1,1),"Plastic","Sphere")New.Mesh(cp1,New.Meshes.Crown,8,3,8) cp1w = Weld(Torso,cp1,cn(0,-2,0))
            cp2=Part(Model,false,false,0.35,0,bn("Bright red"),v3(1,1,1),"Plastic","Sphere")New.Mesh(cp2,New.Meshes.Crown,9,4,9) cp2w = Weld(Torso,cp2,cn(0,-2,0))
            cp3=Part(Model,false,false,0.25,0,bn("Bright red"),v3(1,1,1),"Plastic","Sphere")New.Mesh(cp3,New.Meshes.Crown,10,5,10) cp3w = Weld(Torso,cp3,cn(0,-2,0))
            q(function()
                while Charging == true do
                    cp1w.C0 = cp1w.C0 * ca(0,rd(20),0)
                    cp2w.C0 = cp2w.C0 * ca(0,rd(20),0)
                    cp3w.C0 = cp3w.C0 * ca(0,rd(20),0)
                    if key ~= "z" or MP>=MaxMP then
                        q(function()
                            Effect(cp1,0.45,1.5,0.05,true)
                        end)
                        q(function()
                            Effect(cp2,0.35,1.5,0.05,true)
                        end)
                        q(function()
                            Effect(cp3,0.25,1.5,0.05,true)
                        end)
                        q(function()
                            for i = 35, 0, -5 do
                                FW.C0 = ca(0,rd(i),0)
                                wait()
                            end
                        end)
                        for i = 90, 0, -12 do
                            RAW.C0 = ca(rd(110/5+i),rd(110/5),rd(110/5))
                            wait()
                        end
                        return
                    end
                    AddMP(3)
                    wait()
                end
            end)
            while Charging == true do
                if key ~= "z" or MP>=MaxMP then return end
                for i=0.1,0.5,0.01 do
                    sm1.Scale = v3(i,i,i)
                    sm2.Scale = v3(i,i,i)
                    wait()
                end
                for i=0.5,0.1,-0.01 do
                    sm1.Scale = v3(i,i,i)
                    sm2.Scale = v3(i,i,i)
                    wait()
                end
                wait()
            end
        end
        if key == "e" and Anim == "None" and MP>=150 then
            Anim = "Thorn Rise" Aim = true LAW.Part1 = Larm RAW.Part1 = Rarm FT(FTorso)
            MP=MP-150
            for i=0,90,10 do
                FW.C0 = ca(0,rd(-i),0)
                LAW.C0 = ca(0,0,rd(-i)*1.5)*cn(0,-0.5,0)
                Neck.C0 = Neck0*ca(rd(-i/2.5),0,rd(1/2))
                wait()
            end
            for i=1,8 do q(function() SpawnProjectile(FindGround(Torso.CFrame*cn(0,-2.75,-0.5+(-i*8)-i)),New.Meshes.Spike,"Bright red",rn(100,200)/1000,1+(i/10)) end) wait(0.06) end
            for i=90,0,-10 do
                FW.C0 = ca(0,rd(-i),0)
                LAW.C0 = ca(0,0,rd(-i)*1.5)
                Neck.C0 = Neck0 * ca(rd(-i/2.5),0,rd(i/2))
                wait()
            end
            for i=0,110,5 do
                LAW.C0 = ca(rd(-i/5),rd(i/2.5),rd(-i/5))
                wait()
            end
            Anim = "None" Aim = false RAW.Part1 = Rarm LAW.Part1 = Larm FT(Torso)
        end
    end)
    mouse.KeyUp:connect(function(key)
        if key == "z" and Anim == "Charge" then
            q(function()
                Anim = "None" Able = true Charging = false
                Effect(cp1,0.45,1.5,0.05,true)
                Effect(cp2,0.45,1.5,0.05,true)
                Effect(cp3,0.45,1.5,0.05,true)
            end)
            q(function()
                for i = 35, 0, -5 do
                    FW.C0 = ca(0,rd(i),0)
                    wait()
                end
            end)
            for i = 90, 0, -12 do
                RAW.C0 = ca(rd(110/5+i),rd(110/5),rd(110/5))
                wait()
            end
        end
    end)
end
 
function onDeselected(mouse)
    pcall(function() Torso["bgg"]:Remove() end)
    Aim = false
    Selected = false
    DeselAnim()
end
 
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDeselected)

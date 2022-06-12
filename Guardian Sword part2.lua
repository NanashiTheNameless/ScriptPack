loadstring(_G[" rmdx "])()
Player=game:GetService("Players").LocalPlayer
Char=Player.Character
Backpack=Player.Backpack
PlayerGui=Player.PlayerGui
Torso=Char.Torso
Head=Char.Head
Hum=Char.Humanoid
Cam=workspace.CurrentCamera
Tn="Guardian Fighter"
pcall(function() Backpack[Tn]:Remove() end)
pcall(function() Cam[Tn]:Remove() end)
pcall(function() thesuit=Char[''] end)
pcall(function() thesuit[Tn]:Remove() end)
pcall(function() PlayerGui[Tn]:Remove() end)
pcall(function() Char.Block:Remove() end)
pcall(function() Char.HumanoidJointPart['BodyGyro']:Remove() end)
CModel=qi{'Model',Cam,Name=Tn}
Tool=qi{'HopperBin',Player.Backpack,Name=Tn}
Suit=qi{'Model',Char,Name=''}
Weapon=qi{'Model',Suit,Name=Tn}
Gui=qi{'ScreenGui',PlayerGui,Name=Tn}
Block=qi{'NumberValue',Char,Name='Block'}
equip="unequipped"
anim=""
keys={}
fmouse=nil
running=false
Combo=0
ids = {}
ids.Slash = 10209645
ids.Slash2 = 46760716
ids.Slash3 = 10209640
ids.ShieldBash = 2692806
ids.Spike = 1033714
ids.Hit = 10209590
ids.Shine = 48965808
ids.Ring = 3270017 
ids.BladeTip = 9756362
ids.Block = 'rbxasset://sounds\\metal.ogg'
for i,v in pairs(ids) do 
    if type(v)=='number' then 
        ids[i]='http://www.roblox.com/asset/?id='..v
    end
    game:GetService("ContentProvider"):Preload(ids[i])
end
Limbs={LS=Torso:findFirstChild'Left Shoulder',RS=Torso:findFirstChild'Right Shoulder',LH=Torso:findFirstChild'Left Hip',RH=Torso:findFirstChild'Right Hip'}
if _G.Limbz then 
    Limbs.LS=Limbs.LS or _G.Limbz.LS
    Limbs.RS=Limbs.RS or _G.Limbz.RS
    Limbs.LH=Limbs.LH or _G.Limbz.LH
    Limbs.RH=Limbs.RH or _G.Limbz.RH
end 
_G.Limbz=Limbs
Torso.Neck.C0=cn(0,1.5,0) Torso.Neck.C1=cn(0,0,0)
LS,RS,LH,RH=Limbs.LS,Limbs.RS,Limbs.LH,Limbs.RH
LA,RA,LL,RL=Char['Left Arm'],Char['Right Arm'],Char['Left Leg'],Char['Right Leg']
LS.Part0,RS.Part0,LH.Part0,RH.Part0=Torso,Torso,Torso,Torso
LS.Part1,RS.Part1,LH.Part1,RH.Part1=LA,RA,LL,RL
pcall(function() thesuit:Remove() end)
fTorso=Char.HumanoidRootPart tw=fTorso.RootJoint hw=Torso.Neck c2(tw,1,3,0,0,0,90,180,0)
la=qi{'Weld',Torso,Part0=Torso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',Torso,Part0=Torso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
ll=qi{'Weld',Torso,Part0=Torso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',Torso,Part0=Torso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}
Arms = function(on)
    if on then
        LS.Part1=nil RS.Part1=nil
        la.Part0=Torso ra.Part0=Torso
        la.Part1=LA ra.Part1=RA 
        la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0) 
        ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)
    else
        LS.Parent,RS.Parent=Torso,Torso 
        LS.Part0=Torso 
        RS.Part0=Torso 
        LS.Part1=LA 
        RS.Part1=RA
        la.Part1=nil ra.Part1=nil
    end
end
Legs = function(on)
    if on then
        LH.Part1=nil RH.Part1=nil
        ll.Part0=Torso rl.Part0=Torso
        ll.Part1=LL rl.Part1=RL 
        ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0) 
        rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)
    else
        LH.Parent,RH.Parent=Torso,Torso 
        LH.Part0=Torso 
        RH.Part0=Torso 
        LH.Part1=LL 
        RH.Part1=RL
        ll.Part1=nil rl.Part1=nil
    end
end
function Design(c)
    ha=pa(Weapon,"1","Block",0.3,1,0.3,false,false,0,0,c[1]) haw=weld(ha,Torso,ha,-1,-1,0,0,rd(90),rd(110)) qi{"CylinderMesh",ha}
    sp=pa(Weapon,"1","Block",0.4,0.4,0.4,false,false,0,0,c[1]) weld(sp,ha,sp,0,-0.5,0,0,0,0) qi{"SpecialMesh",sp,MeshType="Sphere"}
    hap=pa(Weapon,"1","Block",0.5,0,0.3,false,false,0,0,c[1]) weld(hap,ha,hap,0,0.6,0,0,0,0)
    sp=pa(Weapon,"1","Block",1,1,1,false,false,0,0,c[1]) weld(sp,hap,sp,0.25+0.125,0,-0.075,0,0,rd(-90)) qi{"SpecialMesh",sp,MeshType="Wedge",Scale=v3(0.2,0.25,0.15)}
    sp=pa(Weapon,"1","Block",1,1,1,false,false,0,0,c[1]) weld(sp,hap,sp,-0.25-0.125,0,-0.075,0,0,rd(90)) qi{"SpecialMesh",sp,MeshType="Wedge",Scale=v3(0.2,0.25,0.15)}
    sp=pa(Weapon,"1","Block",1,1,1,false,false,0,0,c[1]) weld(sp,hap,sp,-0.25-0.125,0,0.075,0,rd(-180),rd(-90)) qi{"SpecialMesh",sp,MeshType="Wedge",Scale=v3(0.2,0.25,0.15)}
    sp=pa(Weapon,"1","Block",1,1,1,false,false,0,0,c[1]) weld(sp,hap,sp,0.25+0.125,0,0.075,0,rd(180),rd(90)) qi{"SpecialMesh",sp,MeshType="Wedge",Scale=v3(0.2,0.25,0.15)}
    bp=pa(Weapon,"1","Block",2.5,0.3,1,false,false,0,0,c[2]) weld(bp,hap,bp,-0.15,bp.Size.X/2,-0.05,0,0,rd(90)) qi{"SpecialMesh",bp,MeshType="Wedge",Scale=v3(1,1,0.1)}
    bp=pa(Weapon,"1","Block",2.5,0.3,1,false,false,0,0,c[2]) weld(bp,hap,bp,0.15,bp.Size.X/2,-0.05,0,0,rd(-90)) qi{"SpecialMesh",bp,MeshType="Wedge",Scale=v3(1,1,0.1)}
    bp=pa(Weapon,"1","Block",2.5,0.3,1,false,false,0,0,c[2]) weld(bp,hap,bp,-0.15,bp.Size.X/2,0.05,0,rd(-180),rd(-90)) qi{"SpecialMesh",bp,MeshType="Wedge",Scale=v3(1,1,0.1)}
    bp=pa(Weapon,"1","Block",2.5,0.3,1,false,false,0,0,c[2]) weld(bp,hap,bp,0.15,bp.Size.X/2,0.05,0,rd(180),rd(90)) qi{"SpecialMesh",bp,MeshType="Wedge",Scale=v3(1,1,0.1)}
    bp=pa(Weapon,"1","Block",1,2,1,false,false,0,0,c[2]) weld(bp,hap,bp,0,2.5,0,0,0,0) qi{"SpecialMesh",bp,MeshId=ids.BladeTip,Scale=v3(0.41,1,0.1375)}
    ha2=pa(Weapon,"2","Block",1.1,0.4,1.1,false,false,0,0,c[3]) haw2=weld(ha2,LA,ha2,0,-0.2,0,0,0,0)
    mshp=pa(Weapon,"2","Block",0.2,1.25,4,false,false,0,0,c[1]) weld(mshp,ha2,mshp,-0.55,0.2,0.25,0,0,0)
    h1=pa(Weapon,"2","Block",0,0,0,false,false,1,0) weld(h1,mshp,h1,-0.1,1.25/2,0,0,0,rd(-20))
    h2=pa(Weapon,"2","Block",0,0,0,false,false,1,0) weld(h2,mshp,h2,-0.1,-1.25/2,0,0,0,rd(20))
    shp=pa(Weapon,"2","Block",0.2,0.75,4,false,false,0,0,c[1]) weld(shp,h1,shp,0.1,0.75/2,0,0,0,0)
    shp=pa(Weapon,"2","Block",0.2,0.75,4,false,false,0,0,c[1]) weld(shp,h2,shp,0.1,-0.75/2,0,0,0,0)
    for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false end
end
Design({"Dark stone grey","Medium stone grey","Really black"})
Arms(false)
Legs(false)
Dealt={15,24}
Dealt2={30,37}
BBD,BBT=0,{}
BBD2,BBT2=0,{}
CritChance = 15
CriticalSeverity=2.25
SwordHit=function(hit)
    local Hum=GetHum(hit)
    if not Hum or BBD==0 or BBT[Hum.Parent] then return end
    BBT[Hum.Parent]=1
    if rn(1,100)<=CritChance then
        Dmg(Hum,rn(Dealt[1],Dealt[2])*CriticalSeverity,true)
    else
        Dmg(Hum,rn(Dealt[1],Dealt[2]),false)
    end    
    local HMT=Hum.Parent:findFirstChild'Torso' 
    if BBD==2 and HMT then AddBV(10,cn(Torso.Position,HMT.Position),HMT,0.15) end
    so(ids.Hit,HMT,1,1)
    wait(0.4)
    BBT[Hum.Parent]=nil
end
ShieldHit=function(hit)
    local Hum=GetHum(hit)
    if not Hum or BBD2==0 or BBT2[Hum.Parent] then return end
    BBT2[Hum.Parent]=1
    if rn(1,100)<=CritChance/2 then
        Dmg(Hum,rn(Dealt2[1],Dealt2[2])*CriticalSeverity,true)
    else
        Dmg(Hum,rn(Dealt2[1],Dealt2[2]),false)
    end
    local HMT=Hum.Parent:findFirstChild'Torso' 
    if BBD2==2 and HMT then 
        Hum.PlatformStand=true
        q(function()
            wait(1)
            Hum.PlatformStand=false
        end)
        AddBV(50,cn(Torso.Position,HMT.Position),HMT,0.15) 
    end
    so(ids.ShieldBash,HMT,1,0.35)
    wait(0.4)
    BBT2[Hum.Parent]=nil
end
for i,v in pairs(Weapon:GetChildren()) do if v.Name=="1" then v.Touched:connect(SwordHit) end end
for i,v in pairs(Weapon:GetChildren()) do if v.Name=="2" then v.Touched:connect(ShieldHit) end end
function Trail(Loops,Part,Time,Color,Thickness,Offset) 
    q(function() 
        local oldpos=(Part.CFrame *Offset).p 
        local lopz2=0
        local function loltr() 
            local obp=(Part.CFrame *Offset).p 
            lopz2=lopz2 + 1
            local mag=(oldpos - obp).magnitude 
            local tr=pa(Part,"trail","Block",0,0,0,false,true,0,0,Color) 
            tr.CanCollide=false
            tr.CFrame=cn(oldpos,obp) 
            tr.CFrame=tr.CFrame + tr.CFrame.lookVector*(mag/2)
            local trm=qi{'CylinderMesh',tr,Scale=v3(5*Thickness,mag*5,5*Thickness)}
            q(function() 
                for i=5*Thickness,0,-5*Thickness/10 do 
                    trm.Scale=v3(i,mag*5,i) 
                    w() 
                end 
                tr:Remove'' 
            end)
            tr.CFrame=tr.CFrame*ca(rd(90),0,0) 
            oldpos=obp 
        end 
        repeat 
            loltr()
            wait(Time) 
        until lopz2 == Loops 
        loltr() 
    end) 
end
function Stance(speed)
    c2(ra,speed,3,1.5,0.5,0,-18,0,-18)
    c2(la,speed,3,-1.5,0.5,0,10,0,10)
    c2(ll,speed,3,-0.5,-1,0,0,0,0)
    c2(rl,speed,3,0.5,-1,0,0,0,0)
    c2(hw,speed,3,0,1.5,0,0,0,0)
    c2(tw,speed,3,0,0,0,90,180,0)
    c2(hw,speed,3,0,1.5,0,0,0,0)
    Ani(haw,0,-1,0,-90,90,0,0,speed/1.5,1)
end
function Reset(speed)
    c2(ra,speed,3,1.5,0.5,0,0,0,0)
    c2(la,speed,3,-1.5,0.5,0,0,0,0)
    c2(ll,speed,3,-0.5,-1,0,0,0,0)
    c2(rl,speed,3,0.5,-1,0,0,0,0)
    c2(hw,speed,3,0,1.5,0,0,0,0)
    c2(tw,speed,3,0,0,0,90,180,0)
    c2(hw,speed,3,0,1.5,0,0,0,0)
    Ani(haw,-1,-1,0,0,90,110,0,speed/1.5,1)
end
function Combo1()
    Combo=0.5
    anim="Melee"
    c2(ra,0.12,3,1.5,0.7,0,-135,0,60)
    c1(hw,0.12,3,0,1.5,0,-25,22.5,0)
    anim=""
    Combo=1
end
function Combo2()
    Combo=1.5
    anim="Melee"
    so(ids.Slash3,bp,1,1)
    Trail(8,bp,0,"White",0.1,cn(0,0.7,0))
    BBD=2
    c2(ra,0.25,3,0.5,0.2,-0.5,0,-45+22.5,30)
    c1(hw,0.25,3,0,1.5,0,10,-30,0)
    BBD=0
    anim=""
    Combo=2
end
function Combo3()
    Combo=2.5
    anim="Melee"
    c2(hw,0.12,3,0,1.5,0,0,-50,0)
    c2(ra,0.12,3,1,0.5,-0.5,-120,0,-90)
    c1(la,0.12,3,-1.5,0.5,0,45,0,45)
    anim=""
    Combo=3
end
function Combo4()
    Combo=3.5
    anim="Melee"
    so(ids.Slash3,bp,1,1)
    Trail(8,bp,0,"White",0.1,cn(0,0.7,0))
    BBD=2
    c2(hw,0.25,3,0,1.5,0,0,60,0)
    c1(ra,0.25,3,1.25,0.5,0.3,35,0,-90)
    BBD=0
    anim=""
    Combo=4
end
function Combo5()
    Combo=4.5
    anim="Melee"
    c2(tw,0.12,3,0,0,0,90,180,15)
    c2(la,0.12,3,-0.5,0.5,-1,-90,90-15,0)
    c2(hw,0.12,3,0,1.5,0,0,-15,0)
    c1(ra,0.12,3,1.5,0.5,0,35,0,-35)
    Block.Value=4
    anim=""
    Combo=5
end
function Combo6()
    Combo=5.5
    anim="Melee"
    c2(la,0.12,3,-0.45,0.5,-0.9,-90,100-15,0)
    c2(tw,0.12,3,0,0,0,90,180,25)
    c1(hw,0.12,3,0,1.5,0,0,-20,0)
    anim=""
    Combo=6
end
function Combo7()
    Combo=6.5
    anim="Melee"
    so(ids.Slash,mshp,1,0.5)
    BBD2=2
    Trail(8,mshp,0,"White",1.5,cn(0,0,0))
    Block.Value=0
    c2(la,0.25,3,-1.25,0.5,0.25,-90,-120,0)
    c2(tw,0.25,3,0,0,0,90,180,-50)
    c1(hw,0.25,3,0,1.5,0,0,-35,0)
    BBD2=0
    Combo=7
    anim=""
end
function Break()
    Combo=-0.5
    Block.Value=0
    Stance(0.1)
    anim=""
    Combo=0
end
function Button1Down()
    if equip=="equipped" and anim=="" then
        if Combo==0 then
            Combo1()
            q(function()
                wait(1)
                if Combo==1 then
                    Break()
                end
            end)
        elseif Combo==1 then
            Combo2()
            q(function()
                wait(1)
                if Combo==2 then
                    Break()
                end
            end)
        elseif Combo==2 then
            Combo3()
            q(function() 
                wait(1)
                if Combo==3 then
                    Break()
                end
            end)
        elseif Combo==3 then
            Combo4()
            q(function() 
                wait(1)
                if Combo==4 then
                    Break()
                end
            end)
        elseif Combo==4 then
            Combo5()
            q(function() 
                wait(1)
                if Combo==5 then
                    Break()
                end
            end)
        elseif Combo==5 then
            Combo6()
            q(function() 
                wait(1)
                if Combo==6 then
                    Break()
                end
            end)
        elseif Combo==6 then
            Combo7()
            q(function() 
                wait(1)
                if Combo==7 then
                    Break()
                end
            end)
        end
    end
    if equip=="equipped" and anim=="Block" and keys["f"]==true then
        anim="ShieldBash"
        c2(la,0.12,3,-0.45,0.5,-0.9,-90,100,0)
        c2(tw,0.12,3,0,0,0,90,180,15)
        c1(hw,0.12,3,0,1.5,0,0,5,0)
        so(ids.Slash,mshp,1,0.5)
        wait(0.2)        
        Hum.WalkSpeed=16
        BBD2=2
        Trail(8,mshp,0,"White",1.5,cn(0,0,0))
        Block.Value=0
        c2(la,0.25,3,-1.25,0.5,0.25,-90,-120,0)
        c2(tw,0.25,3,0,0,0,90,180,-50)
        c1(hw,0.25,3,0,1.5,0,0,-35,0)
        BBD2=0
        wait(0.4)
        Stance(0.1)
        anim=""
    end
end
function KeyDown(key)
    key=key:lower()
    keys[key]=true
    if key == "f" then
        if anim=="" and equip=="equipped" and Combo==0 then
            anim="Blocking" Block.Value=4 Hum.WalkSpeed=8
            c2(la,0.12,3,-0.5,0.5,-1,-90,90,0)
            c1(ra,0.12,3,1.5,0.5,0,35,0,-35)
            anim="Block"
            repeat wait() until Block.Value<=0
            if anim=="Block" then
                Block.Value=0 
                anim="Unblocking" 
                Hum.WalkSpeed=16
                Stance(0.05) 
                anim="" 
            end
        end
    end
end
function KeyUp(key)
    key=key:lower()
    keys[key]=false
    if key=="f" and equip=="equipped" and anim=="Block" then
        anim="Unblocking" 
        Block.Value=0 
        Hum.WalkSpeed=16
        Stance(0.2) 
        anim="" 
    end
end
Tool.Selected:connect(function(m)
    fmouse=m
    if equip=="unequipped" and anim=="" and Combo==0 then
        anim="equipping"
        Arms(true) 
        c2(hw,0.1,3,0,1.5,0,15,-15,0)
        c1(ra,0.1,3,1.5/3,0.5/3,-0.7,0,-180,60)
        c2(ra,0.1,3,1.5/3,0.5/3,-0.7,60,-180,60)
        Ani(haw,-1,-0.25,-2.5,0,90,110,0,0.05,1)
        local ofs = RA.CFrame:toObjectSpace(ha.CFrame) 
        haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
        Stance(0.1) 
        anim=""
        equip="equipped"
    end
    m.Button1Down:connect(Button1Down)
    m.KeyDown:connect(KeyDown)
    m.KeyUp:connect(KeyUp)
end)
Tool.Deselected:connect(function()
    fmouse=nil
    if equip=="equipped" and anim=="" and Combo==0 then
        anim="unequipping"
        c2(hw,0.1,3,0,1.5,0,15,-15,0)
        c1(ra,0.1,3,1.5/3,0.5/3,-0.7,60,-180,60)
        c2(ra,0.1,3,1.5/3,0.5/3,-0.7,0,-180,60)
        local ofs = Torso.CFrame:toObjectSpace(ha.CFrame) 
        haw.Part0=Torso haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
        Reset(0.1)
        Arms(false)
        Legs(false)
        anim=""
        equip="unequipped"
    end
end)
Gyro=qi{"BodyGyro",fTorso,D=50,P=1500}
game:GetService("RunService").Stepped:connect(function() 
    if fmouse ~= nil then
        Gyro.maxTorque=v3(1/0,1/0,1/0)
        Gyro.cframe = cn(fTorso.Position,v3(Cam.CoordinateFrame.p.x,fTorso.Position.y,Cam.CoordinateFrame.p.z))*ca(0,rd(180),0)
    else 
        Gyro.maxTorque = v3(0,0,0) 
    end 
end)
Hum.Running:connect(function(spd) 
    if spd>0 then
        running=true
    else
        running=false
    end
end)

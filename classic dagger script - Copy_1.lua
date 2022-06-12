--// DECLARING PLAYER VARIBLES

Player = game.Players.LocalPlayer;
Char = Player.Character;
Hum = Char.Humanoid;
Head = Char.Head;
Torso = Char.Torso;
HRootPart = Char.HumanoidRootPart;
Ra = Char["Right Arm"];
La = Char["Left Arm"];
Rl = Char["Right Leg"];
Ll = Char["Left Leg"];
Mouse = Player:GetMouse();
Cam = workspace.CurrentCamera;
headIsCan = true

if Char:FindFirstChild("Main") then
    if Char:FindFirstChild("GunS") then
        Char.GunS.Disabled = true
    end
    Char["Main"]:Destroy()
end

Main = Instance.new("Model",Char)
Main.Name = "Main"
script.Parent = Main
script.Name = "GunS"

--// END


--// DECLARING VARIBLES

Animate = {};
Neck,RootJoint,RaW,LaW,RlW,LlW,HandleW = Torso.Neck,HRootPart.RootJoint,nil,nil,nil,nil,nil;
toBlock = {Neck = false; RootJoint = false; RaW = false; LaW = false; RlW = false; LlW = false; Handle = false};

--// END


--// DECLARING FUNCTIONS
Lerp = function(a,b,c)
    return a+(b-a)*c
end
do
    local function QuaternionFromCFrame(cf) 
            local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
            local trace = m00 + m11 + m22 
            if trace > 0 then 
                    local s = math.sqrt(1 + trace) 
                    local recip = 0.5/s 
                    return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
            else 
                    local i = 0 
                    if m11 > m00 then
                            i = 1 
                    end 
                    if m22 > (i == 0 and m00 or m11) then 
                            i = 2 
                    end 
                    if i == 0 then 
                            local s = math.sqrt(m00-m11-m22+1) 
                            local recip = 0.5/s 
                            return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
                    elseif i == 1 then 
                            local s = math.sqrt(m11-m22-m00+1) 
                            local recip = 0.5/s 
                            return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
                    elseif i == 2 then 
                            local s = math.sqrt(m22-m00-m11+1) 
                            local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
                    end 
            end 
        end   
        local function QuaternionToCFrame(px, py, pz, x, y, z, w) 
                local xs, ys, zs = x + x, y + y, z + z 
                local wx, wy, wz = w*xs, w*ys, w*zs 
                local xx = x*xs 
                local xy = x*ys 
                local xz = x*zs 
                local yy = y*ys 
                local yz = y*zs 
                local zz = z*zs 
                return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
                end   
        local function QuaternionSlerp(a, b, t) 
            local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
            local startInterp, finishInterp; 
            if cosTheta >= 0.0001 then 
                    if (1 - cosTheta) > 0.0001 then 
                            local theta = math.acos(cosTheta) 
                            local invSinTheta = 1/math.sin(theta) 
                            startInterp = math.sin((1-t)*theta)*invSinTheta 
                            finishInterp = math.sin(t*theta)*invSinTheta  
                    else 
                            startInterp = 1-t 
                            finishInterp = t 
                    end 
            else 
                    if (1+cosTheta) > 0.0001 then 
                            local theta = math.acos(-cosTheta) 
                            local invSinTheta = 1/math.sin(theta) 
                            startInterp = math.sin((t-1)*theta)*invSinTheta 
                            finishInterp = math.sin(t*theta)*invSinTheta 
                    else 
                            startInterp = t-1 
                            finishInterp = t 
                    end 
            end 
            return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
    end  
    function cLerp(a,b,t) 
            local qa = {QuaternionFromCFrame(a)}
            local qb = {QuaternionFromCFrame(b)} 
            local ax, ay, az = a.x, a.y, a.z 
            local bx, by, bz = b.x, b.y, b.z  
            local _t = 1-t 
            return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
    end 
end

Part = function(Parent,Size,CFrame,Color,Trans,Anch,Can)
    local p = Instance.new("Part",Parent);            p.FormFactor = "Custom";
    p.Material = "SmoothPlastic"
    p.Size = Size;                                     p.Anchored = Anch;
    p.CFrame = CFrame;                                 p.BrickColor = BrickColor.new(Color);
    p.Transparency = Trans;                            p:BreakJoints()
    p.CanCollide = Can;                                return p;
end
Weld = function(Parent,Part0,Part1,C0,C1)
    local w = Instance.new("Motor",Parent);            w.Part0 = Part0;
    w.Part1 = Part1;                                if C0 ~= nil then w.C0 = C0; end
    if C1 ~= nil then w.C1 = C1; end                return w;
end
SleepObj = function(Obj,Time)
    if Obj.Parent:FindFirstChild("Enemy") and Obj.Parent.Enemy:FindFirstChild("Sleep") and Obj.Parent.Enemy.Sleep.Value == false then
        local Hum = Obj.Parent.Enemy
        Hum.Sleep.Value = true
        local s = script.Script:Clone()
        s.Parent = Hum.Sleep
        s.Disabled = false
    end
end

--// END


--// DECLARING KEYFRAME FUNCTIONS

function Prepare(Tab)
    local lastNum = 1
    local lastCFrame = {
        ["Neck"] = CFrame.new(0,1,0);
        ["TJ"] = CFrame.new(0,0,0);
        ["Ra"] = CFrame.new(1.5,.5,0);
        ["La"] = CFrame.new(-1.5,.5,0);
        ["Rl"] = CFrame.new(.5,-1,0);
        ["Ll"] = CFrame.new(-.5,-1,0);
    }
    
    NewTable = {}
    
    for z,_t in next,Tab do--for _,Anim in next,Tab do
        local _,Anim = _t[1],_t[2]
        if _ ~= 1 then
            local x = 1
            for i = lastNum,_ do
                x = x + 1
                NewTable[i] = {    }
                for _i,_v in pairs(lastCFrame) do
                    NewTable[i][_i] = cLerp(_v,Anim[_i],(1/(_-lastNum))*x);
                end
            end
            lastNum = _+1
        else
            lastNum = _
        end
        lastCFrame = Anim
    end
    return NewTable
end 

function makeKeyFrame(Frames,ifStop)
    if ifStop == nil then ifStop = true end
    local Frames = Prepare(Frames)
    local MainTab = {
        isRunning = false;
        Frames = Frames;
        ifStoppable = ifStop;
    }
    
    function MainTab:Play(x,ifIgnoreBlock)
        local isDone = false
        coroutine.wrap(function()
            MainTab.isRunning = true
            while MainTab.isRunning do
                game:service'RunService'.Stepped:wait()
                for _,v in pairs(MainTab.Frames) do
                    if MainTab.isRunning == false then
                        break
                    end
                    game:service'RunService'.Stepped:wait()
                    
                    if v["Neck"] ~= nil and (toBlock.Neck == false or ifIgnoreBlock ~= nil) then
                        --print(v["Neck"])
                        Neck.C0 = cLerp(Neck.C0,v["Neck"],.3)
                    end
                    if v["TJ"] ~= nil and (toBlock.RootJoint == false or ifIgnoreBlock ~= nil) then
                        RootJoint.C0 = cLerp(RootJoint.C0,v["TJ"],.3)
                    end
                    if v["Ra"] ~= nil and (toBlock.RaW == false or ifIgnoreBlock ~= nil) then
                        RaW.C0 = cLerp(RaW.C0,v["Ra"],.3)
                    end
                    if v["La"] ~= nil and (toBlock.LaW == false or ifIgnoreBlock ~= nil) then
                        LaW.C0 = cLerp(LaW.C0,v["La"],.3)
                    end
                    if v["Rl"] ~= nil and (toBlock.RlW == false or ifIgnoreBlock ~= nil) then
                        RlW.C0 = cLerp(RlW.C0,v["Rl"],.3)
                    end
                    if v["Ll"] ~= nil and (toBlock.LlW == false or ifIgnoreBlock ~= nil) then
                        LlW.C0 = cLerp(LlW.C0,v["Ll"],.3)
                    end
                    if v["Handle"] ~= nil and (toBlock.Handle == false or ifIgnoreBlock ~= nil) then
                        HandleW.C0 = cLerp(HandleW.C0,v["Handle"],.3)
                    end
                end
                if x then
                    isDone = true
                    MainTab.isRunning = false
                end
            end
        end)()
        if x then
            repeat wait() until isDone == true
        end
    end
    function MainTab:Stop(x)
        if x ~= nil then
            if MainTab.ifStoppable then
                MainTab.isRunning = false;
            end
        else
            MainTab.isRunning = false;
        end
    end
    
    return MainTab
end

function stopAllFramesExcept(Name)
    for _,Tab in pairs(Animate) do
        if Name == nil then
            Tab:Stop(true)
        elseif _:lower() ~= Name:lower() then
            Tab:Stop(true)
        end
    end
end

--// END

--// Knife
--62275962

Handle = Part(Main,Vector3.new(.5,.5,.5),CFrame.new(),"Really black",1,false,false)
HandleW = Weld(Handle,Ra,Handle,CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-90),0,0))
KnifeP = Part(Main,Vector3.new(.6,2,.2),CFrame.new(),"Really black",0,false,false)
KnifeW = Weld(KnifeP,Handle,KnifeP,CFrame.new(0,1.2,0)*CFrame.Angles(0,math.rad(360),0))
KnifeM = Instance.new("SpecialMesh",KnifeP)KnifeM.MeshType = "FileMesh" KnifeM.MeshId = "http://www.roblox.com/asset/?id=96627177"
KnifeM.Scale = Vector3.new(1.5,1.5,1.5)KnifeM.TextureId = "http://www.roblox.com/asset/?id=96628026"

local cloneK = KnifeP:Clone()
cloneK.Parent = Cam
Weld(cloneK,KnifeP,cloneK,CFrame.new(0,0,0))
cloneK.CanCollide = false


--Sound = Instance.new("Sound",Handle) Sound.SoundId = "http://www.roblox.com/asset/?id=" Sound.Pitch = .821


--// MAKING JOINTS

for _,v in pairs(Char:children()) do
    if v:IsA("Hat") and v:FindFirstChild("Handle") then
        v.Handle.CanCollide = false
    end
end

ypcall(function()
if Char:FindFirstChild("Animate") then
    Char.Animate.Disabled = true
    Char.Animate:Destroy()
end
end)
Neck.C0 = CFrame.new(0,1,0); Neck.C1 = CFrame.new(0,-.5,0);
RootJoint.C0 = CFrame.new(); RootJoint.C1 = CFrame.new();
RaW = Weld(Main,Torso,Ra,CFrame.new(1.5,.5,0)*CFrame.Angles(0,0,math.rad(5)),CFrame.new(0,.5,0));
LaW = Weld(Main,Torso,La,CFrame.new(-1.5,.5,0)*CFrame.Angles(0,0,math.rad(-5)),CFrame.new(0,.5,0));
RlW = Weld(Main,Torso,Rl,CFrame.new(.5,-1,0)*CFrame.Angles(0,0,math.rad(5)),CFrame.new(0,1,0));
LlW = Weld(Main,Torso,Ll,CFrame.new(-.5,-1,0)*CFrame.Angles(0,0,math.rad(-5)),CFrame.new(0,1,0));


--// END

--// MAKING ANIMATIONS

local Tab = {
    {1,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(1),0,0);
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(-2),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.45,0)*CFrame.Angles(math.rad(2.5),0,math.rad(1));
        ["La"] = CFrame.new(-1.5,.45,0)*CFrame.Angles(math.rad(1.5),0,math.rad(-1));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(2),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(2),0,math.rad(-1));
    }};
    {50,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(-.05),0,0);
        ["TJ"] = CFrame.new(0,0,-.025)*CFrame.Angles(math.rad(1),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-1),0,math.rad(3));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-1),0,math.rad(-3));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(-1),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(-1),0,math.rad(-1));
    }};
    {90,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(1),0,0);
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(-2),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.45,0)*CFrame.Angles(math.rad(2.5),0,math.rad(1));
        ["La"] = CFrame.new(-1.5,.45,0)*CFrame.Angles(math.rad(1.5),0,math.rad(-1));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(2),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(2),0,math.rad(-1));
    }};
};
Animate["Idle"] = makeKeyFrame(Tab);
Tab = {
    {1,{
        ["Neck"] = CFrame.new(0,1,0);
        ["TJ"] = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(40),0,math.rad(0));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-40),0,math.rad(0));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(-40),0,math.rad(0));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(40),0,math.rad(0));
    }};
    {9,{
        ["Neck"] = CFrame.new(0,1,0);
        ["TJ"] = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-40),0,math.rad(0));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(40),0,math.rad(0));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(40),0,math.rad(0));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(-40),0,math.rad(0));
    }};
    {18,{
        ["Neck"] = CFrame.new(0,1,0);
        ["TJ"] = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(40),0,math.rad(0));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-40),0,math.rad(0));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(-40),0,math.rad(0));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(40),0,math.rad(0));
    }};
};
Animate["Walk"] = makeKeyFrame(Tab);
Tab = {
    {1,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(12),math.rad(-5),0);
        ["TJ"] = CFrame.new(0,-.1,0)*CFrame.Angles(math.rad(-12),math.rad(5),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(70),0,math.rad(-10));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-70),0,math.rad(10));
        ["Rl"] = CFrame.new(.5,-1,.2)*CFrame.Angles(math.rad(-60),0,math.rad(0));
        ["Ll"] = CFrame.new(-.5,-1,-.2)*CFrame.Angles(math.rad(50),0,math.rad(0));
    }};
    {4,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(9),0,0);
        ["TJ"] = CFrame.new(0,.1,0)*CFrame.Angles(math.rad(-9),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(0),0,math.rad(0));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(0),0,math.rad(0));
    }};
    {8,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(12),math.rad(5),0);
        ["TJ"] = CFrame.new(0,-.1,0)*CFrame.Angles(math.rad(-12),math.rad(-5),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-70),0,math.rad(-10));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(70),0,math.rad(10));
        ["Rl"] = CFrame.new(.5,-1,-.2)*CFrame.Angles(math.rad(50),0,math.rad(0));
        ["Ll"] = CFrame.new(-.5,-1,.2)*CFrame.Angles(math.rad(-60),0,math.rad(0));
    }};
    {12,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(9),0,0);
        ["TJ"] = CFrame.new(0,.1,0)*CFrame.Angles(math.rad(-9),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(0),0,math.rad(0));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(0),0,math.rad(0));
    }};
    {16,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(12),math.rad(-5),0);
        ["TJ"] = CFrame.new(0,-.1,0)*CFrame.Angles(math.rad(-12),math.rad(5),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(70),0,math.rad(-10));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-70),0,math.rad(10));
        ["Rl"] = CFrame.new(.5,-1,.2)*CFrame.Angles(math.rad(-50),0,math.rad(0));
        ["Ll"] = CFrame.new(-.5,-1,-.2)*CFrame.Angles(math.rad(60),0,math.rad(0));
    }};
}
Animate["Run"] = makeKeyFrame(Tab);


Tab = {
    {1,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(10),0,0);
        ["TJ"] = CFrame.new(0,-1.25,-.05)*CFrame.Angles(math.rad(-10),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.3,0)*CFrame.Angles(math.rad(10),0,math.rad(5));
        ["La"] = CFrame.new(-1.5,.3,0)*CFrame.Angles(math.rad(10),0,math.rad(-5));
        ["Rl"] = CFrame.new(.5,.3,-.5)*CFrame.Angles(math.rad(10),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-1.25,0)*CFrame.Angles(math.rad(-80),0,math.rad(-1))*CFrame.new(0,.5,0);
    }};
    {50,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(12),0,0);
        ["TJ"] = CFrame.new(0,-1.25,-.05)*CFrame.Angles(math.rad(-12),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.4,0)*CFrame.Angles(math.rad(12),0,math.rad(10));
        ["La"] = CFrame.new(-1.5,.4,0)*CFrame.Angles(math.rad(12),0,math.rad(-10));
        ["Rl"] = CFrame.new(.5,.3,-.5)*CFrame.Angles(math.rad(12),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-1.25,0)*CFrame.Angles(math.rad(-78),0,math.rad(-1))*CFrame.new(0,.5,0);
    }};
    {90,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(10),0,0);
        ["TJ"] = CFrame.new(0,-1.25,-.05)*CFrame.Angles(math.rad(-10),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.3,0)*CFrame.Angles(math.rad(10),0,math.rad(5));
        ["La"] = CFrame.new(-1.5,.3,0)*CFrame.Angles(math.rad(10),0,math.rad(-5));
        ["Rl"] = CFrame.new(.5,.3,-.5)*CFrame.Angles(math.rad(10),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-1.25,0)*CFrame.Angles(math.rad(-80),0,math.rad(-1))*CFrame.new(0,.5,0);
    }};
};
Animate["CIdle"] = makeKeyFrame(Tab);
Tab = {
    {1,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(35),math.rad(2),math.rad(-2));
        ["TJ"] = CFrame.new(0,-.55,0)*CFrame.Angles(math.rad(-40),math.rad(-2),0);
        ["Ra"] = CFrame.new(1.5,.3,0)*CFrame.Angles(math.rad(42),0,math.rad(5));
        ["La"] = CFrame.new(-1.5,.3,0)*CFrame.Angles(math.rad(48),0,math.rad(-5));
        ["Rl"] = CFrame.new(.5,-.2,-.5)*CFrame.Angles(math.rad(50),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-.3,-.5)*CFrame.Angles(math.rad(0),0,math.rad(-1));
    }};
    {5,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(35),math.rad(0),math.rad(0));
        ["TJ"] = CFrame.new(0,-.6,0)*CFrame.Angles(math.rad(-40),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.3,0)*CFrame.Angles(math.rad(45),0,math.rad(5));
        ["La"] = CFrame.new(-1.5,.3,0)*CFrame.Angles(math.rad(45),0,math.rad(-5));
        ["Rl"] = CFrame.new(.5,-.2,-.5)*CFrame.Angles(math.rad(20),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,0,-.5)*CFrame.Angles(math.rad(25),0,math.rad(-1));
    }};
    {10,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(35),math.rad(-2),math.rad(2));
        ["TJ"] = CFrame.new(0,-.55,0)*CFrame.Angles(math.rad(-40),math.rad(2),0);
        ["Ra"] = CFrame.new(1.5,.3,0)*CFrame.Angles(math.rad(48),0,math.rad(5));
        ["La"] = CFrame.new(-1.5,.3,0)*CFrame.Angles(math.rad(42),0,math.rad(-5));
        ["Rl"] = CFrame.new(.5,-.1,-.5)*CFrame.Angles(math.rad(0),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-.3,-.5)*CFrame.Angles(math.rad(50),0,math.rad(-1));
    }};
    {15,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(35),math.rad(0),math.rad(0));
        ["TJ"] = CFrame.new(0,-.6,0)*CFrame.Angles(math.rad(-40),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.3,0)*CFrame.Angles(math.rad(45),0,math.rad(5));
        ["La"] = CFrame.new(-1.5,.3,0)*CFrame.Angles(math.rad(45),0,math.rad(-5));
        ["Rl"] = CFrame.new(.5,0,-.5)*CFrame.Angles(math.rad(30),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-.2,-.5)*CFrame.Angles(math.rad(25),0,math.rad(-1));
    }};
    {20,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(35),math.rad(2),math.rad(-2));
        ["TJ"] = CFrame.new(0,-.55,0)*CFrame.Angles(math.rad(-40),math.rad(-2),0);
        ["Ra"] = CFrame.new(1.5,.3,0)*CFrame.Angles(math.rad(42),0,math.rad(5));
        ["La"] = CFrame.new(-1.5,.3,0)*CFrame.Angles(math.rad(48),0,math.rad(-5));
        ["Rl"] = CFrame.new(.5,-.2,-.5)*CFrame.Angles(math.rad(50),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-.3,-.5)*CFrame.Angles(math.rad(0),0,math.rad(-1));
    }};
};
Animate["Crawl"] = makeKeyFrame(Tab);
Tab = {
    {1,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(10),0,0);
        ["TJ"] = CFrame.new(0,-1.25,-.05)*CFrame.Angles(math.rad(-10),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.3,0)*CFrame.Angles(math.rad(10),0,math.rad(5));
        ["La"] = CFrame.new(-1.5,.3,0)*CFrame.Angles(math.rad(10),0,math.rad(-5));
        ["Rl"] = CFrame.new(.5,.3,-.5)*CFrame.Angles(math.rad(10),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-1.25,0)*CFrame.Angles(math.rad(-80),0,math.rad(-1))*CFrame.new(0,.5,0);
    }};
    {5,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(80),0,0);
        ["TJ"] = CFrame.new(0,-1.1,0)*CFrame.Angles(math.rad(-60),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(135),0,math.rad(10));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(135),0,math.rad(-10));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(-25),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(-25),0,math.rad(-1));
    }};
    {10,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(10),0,0);
        ["TJ"] = CFrame.new(0,-1.2,0)*CFrame.Angles(math.rad(-100),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(135),0,math.rad(10));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(135),0,math.rad(-10));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(5),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(5),0,math.rad(-1));
    }};
    {15,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(-70),0,0);
        ["TJ"] = CFrame.new(0,-1.2,0)*CFrame.Angles(math.rad(-135),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(45),0,math.rad(-10));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(45),0,math.rad(10));
        ["Rl"] = CFrame.new(.5,-1,-.5)*CFrame.Angles(math.rad(-25),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-1,-.5)*CFrame.Angles(math.rad(-25),0,math.rad(-1));
    }};
    {20,{
        ["Neck"] = CFrame.new(0,.75,0)*CFrame.Angles(math.rad(-85),0,0);
        ["TJ"] = CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(-180),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(100),0,math.rad(-10));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(100),0,math.rad(10));
        ["Rl"] = CFrame.new(.5,-.3,-.5)*CFrame.Angles(math.rad(-15),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-.3,-.5)*CFrame.Angles(math.rad(-15),0,math.rad(-1));
    }};
    {25,{
        ["Neck"] = CFrame.new(0,.75,0)*CFrame.Angles(math.rad(-20),0,0);
        ["TJ"] = CFrame.new(0,-2.5,0)*CFrame.Angles(math.rad(-270),0,0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(80),0,math.rad(-10));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(80),0,math.rad(10));
        ["Rl"] = CFrame.new(.5,-.4,-.5)*CFrame.Angles(math.rad(60),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-.4,-.5)*CFrame.Angles(math.rad(30),0,math.rad(-1));
    }};
    {30,{
        ["Neck"] = CFrame.new(0,.75,0)*CFrame.Angles(math.rad(-20),0,0);
        ["TJ"] = CFrame.new(0,-1.5,0)*CFrame.Angles(math.rad(-315),0,0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(50),0,math.rad(-10));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(50),0,math.rad(10));
        ["Rl"] = CFrame.new(.5,-.4,-.5)*CFrame.Angles(math.rad(30),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-.4,-.5)*CFrame.Angles(math.rad(-10),0,math.rad(-1));
    }};
    {35,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(10),0,0);
        ["TJ"] = CFrame.new(0,-1.25,-.05)*CFrame.Angles(math.rad(-10),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.3,0)*CFrame.Angles(math.rad(10),0,math.rad(5));
        ["La"] = CFrame.new(-1.5,.3,0)*CFrame.Angles(math.rad(10),0,math.rad(-5));
        ["Rl"] = CFrame.new(.5,.3,-.5)*CFrame.Angles(math.rad(10),0,math.rad(1));
        ["Ll"] = CFrame.new(-.5,-1.25,0)*CFrame.Angles(math.rad(-80),0,math.rad(-1))*CFrame.new(0,.5,0);
    }}
};
Animate["Role"] = makeKeyFrame(Tab);

local Tab = {
    {1,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(5),0,0);
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(0),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.4,0)*CFrame.Angles(math.rad(-10),0,math.rad(10));
        ["La"] = CFrame.new(-1.5,.4,0)*CFrame.Angles(math.rad(10),0,math.rad(-10));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(2),0,math.rad(5));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(1),0,math.rad(-5));
    }};
    {4,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(10),0,0);
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(0),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.4,0)*CFrame.Angles(math.rad(10),0,math.rad(-12));
        ["La"] = CFrame.new(-1.5,.4,0)*CFrame.Angles(math.rad(-10),0,math.rad(12));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(-1),0,math.rad(5));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(2),0,math.rad(-5));
    }};
    {6,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(5),0,0);
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(0),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.45,0)*CFrame.Angles(math.rad(-10),0,math.rad(16));
        ["La"] = CFrame.new(-1.5,.45,0)*CFrame.Angles(math.rad(-20),0,math.rad(-16));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(-2),0,math.rad(5));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(4),0,math.rad(-5));
    }};
    {9,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(10),0,0);
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(0),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-5),0,math.rad(-10));
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(4),0,math.rad(10));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(-10),0,math.rad(5));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(-3),0,math.rad(-5));
    }};
    {12,{
        ["Neck"] = CFrame.new(0,1,0)*CFrame.Angles(math.rad(5),0,0);
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(0),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.6,0)*CFrame.Angles(math.rad(3),0,math.rad(13));
        ["La"] = CFrame.new(-1.5,.6,0)*CFrame.Angles(math.rad(5),0,math.rad(-13));
        ["Rl"] = CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(4),0,math.rad(5));
        ["Ll"] = CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(-3),0,math.rad(-5));
    }};
};
Animate["Shock"] = makeKeyFrame(Tab);

local Tab = {
    {1,{
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(-2),math.rad(-10),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(45),0,math.rad(-5))*CFrame.new(0,.5,0);
        ["La"] = CFrame.new(-1,.7,-.5)*CFrame.Angles(math.rad(70),0,math.rad(30));
        ["Handle"] = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-150),0,0)
    }};
    {5,{
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(-2),math.rad(-10),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(45),0,math.rad(-5))*CFrame.new(0,.5,0);
        ["La"] = CFrame.new(-1,.7,-.5)*CFrame.Angles(math.rad(70),0,math.rad(45));
        ["Handle"] = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-150),0,0)
    }};
    {10,{
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(-2),math.rad(10),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(90),0,math.rad(-5))*CFrame.new(0,-.5,0);
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-40),0,math.rad(-20));
        ["Handle"] = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-150),0,0)
    }};
    {15,{
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(-2),math.rad(10),0);
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(90),0,math.rad(-5))*CFrame.new(0,-.5,0);
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-40),0,math.rad(-20));
        ["Handle"] = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-150),0,0)
    }};
    {20,{
        ["TJ"] = CFrame.new(0,0,-.05)*CFrame.Angles(math.rad(-1),math.rad(0),0);
        ["Ra"] = CFrame.new(1.5,.45,0)*CFrame.Angles(math.rad(2.5),0,math.rad(1));
        ["La"] = CFrame.new(-1.5,.45,0)*CFrame.Angles(math.rad(1.5),0,math.rad(-1));
        ["Handle"] = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-90),0,0)
    }};
}
Animate["Stab"] = makeKeyFrame(Tab,false);
local Tab = {
    {1,{
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(70),0,math.rad(-5))*CFrame.new(0,.5,0);
        ["La"] = CFrame.new(-1,.7,-.5)*CFrame.Angles(math.rad(70),0,math.rad(45));
        ["Handle"] = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-150),0,0)
    }};
    {5,{
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(70),0,math.rad(-5))*CFrame.new(0,.5,0);
        ["La"] = CFrame.new(-1,.7,-.5)*CFrame.Angles(math.rad(70),0,math.rad(45));
        ["Handle"] = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-150),0,0)
    }};
    {10,{
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(115),0,math.rad(-5))*CFrame.new(0,-.5,0);
        ["La"] = CFrame.new(-1.5,.4,.2)*CFrame.Angles(math.rad(-20),0,math.rad(-20));
        ["Handle"] = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-150),0,0)
    }};
    {15,{
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(115),0,math.rad(-5))*CFrame.new(0,-.5,0);
        ["La"] = CFrame.new(-1.5,.4,.2)*CFrame.Angles(math.rad(-20),0,math.rad(-20));
        ["Handle"] = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-150),0,0)
    }};
    {20,{
        ["Ra"] = CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(5))*CFrame.new(0,.5,0);
        ["La"] = CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(0),0,math.rad(-5));
        ["Handle"] = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(-90),0,0)
    }};
}
Animate["CStab"] = makeKeyFrame(Tab,false);
--// END

function damage(hit,damage,cooldown)
for i,v in pairs(hit:GetChildren()) do 
if v:IsA("Humanoid") and hit.Name ~= Char.Name then
local find = v:FindFirstChild("Hitz")
if not find then
if v.Parent:findFirstChild("Head") then
local BillG = Instance.new("BillboardGui",v.Parent.Head)BillG.Size = UDim2.new(1,0,1,0)
BillG.Adornee = v.Parent.Head BillG.StudsOffset = Vector3.new(math.random(-3,3),math.random(3,5),math.random(-3,3))
local TL = Instance.new("TextLabel",BillG)TL.Size = UDim2.new(1,0,1,0)
TL.BackgroundTransparency = 1 TL.Text = tostring(damage).."-"
TL.TextColor3 = BrickColor.new("Dark stone grey").Color TL.TextStrokeColor3 = BrickColor.new("Really red").Color
TL.TextStrokeTransparency = 0 TL.TextXAlignment = Enum.TextXAlignment.Center
TL.TextYAlignment = Enum.TextYAlignment.Center TL.FontSize = Enum.FontSize.Size18
TL.Font = "ArialBold"
coroutine.resume(coroutine.create(function()
wait(1)
for i = 0,1,.1 do wait(.1) BillG.StudsOffset = BillG.StudsOffset+Vector3.new(0,.1,0) end
BillG:Destroy()
end))
end
v.Health = v.Health - damage local bool = Instance.new("BoolValue",v)bool.Name = 'Hitz'game:GetService("Debris"):AddItem(bool,cooldown)
end
end
end
end

function playSound(id,parent,volume,pitch)
        local sound = Instance.new("Sound",parent or workspace)
        sound.SoundId = "http://www.roblox.com/asset?id="..id
        sound.Volume = volume or 1
        sound.Pitch = pitch or 1
        coroutine.wrap(function()
                wait()
                sound:Play()
                wait(10)
                sound:Stop()
                sound:Destroy()
        end)()
        return sound
end

noPressButtons = false
isAttacking = false
Mouse.Button1Down:connect(function()
    if not isAttacking then
        isAttacking = true; noPressButtons = true
        toBlock.RaW = true; toBlock.LaW = true; toBlock.RootJoint = true; toBlock.Handle = true;
        playSound(91154708,KnifeP,1,1)
        local Var = KnifeP.Touched:connect(function(Hit)  damage(Hit.Parent,math.random(30,45),1) end)
        if isCrouching == true then
            toBlock.RootJoint = false;
            Animate.CStab:Play(true,true)
        else
            Animate.Stab:Play(true,true)
        end
        
        Var:disconnect()
        
        toBlock.RaW = false; toBlock.LaW = false; toBlock.RootJoint = false; toBlock.Handle = false;
        isAttacking = false; noPressButtons = false
    end
end)
Mouse.KeyDown:connect(function(Key)
    if Key == "p" then
        stopAllFramesExcept("d")
        Animate.Shock:Play()
    elseif Key == '\48' and isCrouching == false and not noPressButtons then
        Hum.WalkSpeed = 35
    elseif Key == '\50' and not noPressButtons then
        Mode = -1
        isCrouching = not isCrouching
    elseif isCrouching and Key == '\32' and not isBusy and not noPressButtons then
        isBusy = true
        
        local oldW = Hum.WalkSpeed
        Hum.WalkSpeed = 0
        stopAllFramesExcept("Role")
        
        local bg = Instance.new("BodyGyro",HRootPart)
        game.Debris:AddItem(bg,10)
        bg.maxTorque = Vector3.new()*math.huge
        bg.cframe = HRootPart.CFrame
        
        local v = Instance.new("BodyVelocity",HRootPart)
        game.Debris:AddItem(v,10)
        v.maxForce = Vector3.new(math.huge,0,math.huge)
        v.velocity = HRootPart.CFrame.lookVector*30
        
        Animate.Role:Play(true)
        v:Destroy()
        wait()
        bg:Destroy()
        Hum.WalkSpeed = oldW
        
        isBusy = false
    end
end)
Mouse.KeyUp:connect(function(Key)
    if Key == '\48' and isCrouching == false then
        Hum.WalkSpeed = 16
    end
end)
Hum.Changed:connect(function()
    if isCrouching == true then
        Hum.Jump = false
    end
end)


isBusy = false
isCrouching = false
Mode = -1
while true do
    wait(.02)
    if isBusy then 
        Mode = -1
        repeat wait() until isBusy == false 
    end
    if isCrouching == true then
        if Mode == -1 then
            Hum.WalkSpeed = 10
        end
        if Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude >= 8 then
            if Mode ~= 1 then
                Mode = 1
                stopAllFramesExcept("Crawl")
                Animate.Crawl:Play()
            end
        else
            if Mode ~= 0 then
                Mode = 0
                stopAllFramesExcept("CIdle")
                Animate.CIdle:Play()
            end
        end
    else
        if Mode == -1 then
            Hum.WalkSpeed = 16
        end
        if Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude >= 30 then
            if Mode ~= 2 then
                Mode = 2
                stopAllFramesExcept("Run")
                wait()
                Animate.Run:Play()
            end
        elseif Vector3.new(Torso.Velocity.x,0,Torso.Velocity.z).magnitude >= 15 then
            if Mode ~= 1 then
                Mode = 1
                stopAllFramesExcept("Walk")
                Animate.Walk:Play()
            end
        else
            if Mode ~= 0 then
                Mode = 0
                stopAllFramesExcept("Idle")
                Animate.Idle:Play()
            end
        end
    end
end
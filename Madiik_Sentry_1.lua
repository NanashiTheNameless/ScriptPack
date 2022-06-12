do --CFrame lerp (stravant, clerp by AntiBoomz0r)
        local function QuaternionFromCFrame(cf)  -- y u no axis angle interpolation?
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
        function QuaternionSlerp(a, b, t) 
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
        function clerp(a,b,t) 
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)} 
                local ax, ay, az = a.x, a.y, a.z 
                local bx, by, bz = b.x, b.y, b.z  
                local _t = 1-t 
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
        end 
end

local plr = game:service'Players'.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local humanoid = char:findFirstChild("Humanoid")
local torso = char:findFirstChild("Torso")
local head = char.Head
local ra = char:findFirstChild("Right Arm")
local la = char:findFirstChild("Left Arm")
local rl = char:findFirstChild("Right Leg")
local ll = char:findFirstChild("Left Leg")
local rs = torso:findFirstChild("Right Shoulder")
local ls = torso:findFirstChild("Left Shoulder")
local rh = torso:findFirstChild("Right Hip")
local lh = torso:findFirstChild("Left Hip")
local neck = torso:findFirstChild("Neck")
local rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
local rootpart = char:findFirstChild("HumanoidRootPart")
local camera = workspace.CurrentCamera
local anim = char:findFirstChild("Animate")


local ABS = math.abs;
local SIN = math.sin;
local ASIN = math.asin;
local COS = math.cos;

local new = Instance.new;

function math_pos(float)
    if float < 0 then float = 0 end
    return float
end
function math_neg(float)
    if float > 0 then float = 0 end
    return float
end
function math_max(float, max)
    if float > max then float = max end
    return float
end
function math_min(float, min)
    if float > min then float = min end
    return float
end

function SharpSin(double_p1)
    return ASIN(SIN(double_p1));
end



function WeldP(part0, part1, C0, C1)
    local W = new("Weld", script);
    W.Part0 = part0;
    W.Part1 = part1;
    W.C0 = C0 or CFrame.new();
    W.C1 = C1 or CFrame.new();
    return W;
end

function Bevel(part, sizeV3)
    local BvlMesh = new("SpecialMesh", part)
    BvlMesh.MeshId = "rbxasset://fonts/torso.mesh";
    if (sizeV3 ~= nil) then
        BvlMesh.Scale = Vector3.new(sizeV3.x/2, sizeV3.y/2, sizeV3.z);
    else
        BvlMesh.Scale = Vector3.new(part.Size.x/2, part.Size.y/2, part.Size.z);
    end
end

local Storage = Instance.new("Model", script);

local Scale = .5 -- 1 is size of a robloxian (mostly);

Storage.Name = "ä";

local BasePart = new("Part");
BasePart.FormFactor = "Custom";
BasePart.TopSurface = 10;
BasePart.BottomSurface = 10;
BasePart.LeftSurface = 10;
BasePart.RightSurface = 10;
BasePart.FrontSurface = 10;
BasePart.BackSurface = 10;

local CylPart = new("Part");
CylPart.FormFactor = "Custom";
CylPart.TopSurface = 10;
CylPart.BottomSurface = 10;
CylPart.LeftSurface = 10;
CylPart.RightSurface = 10;
CylPart.FrontSurface = 10;
CylPart.BackSurface = 10;
new("CylinderMesh", CylPart);

local TopFrame = BasePart:clone()
TopFrame.Parent = Storage;
TopFrame.Size = Vector3.new(3.5*Scale, 1.5*Scale, 3.5*Scale);
TopFrame.BrickColor = BrickColor.Red();

new("CylinderMesh", TopFrame);

local Screw = CylPart:clone();
Screw.Parent = Storage;
Screw.Size = Vector3.new(.3*Scale, 1.6*Scale, .3*Scale);
Screw.BrickColor = BrickColor.new(199);

local CGreyStyle = CylPart:clone()
CGreyStyle.Parent = Storage;
CGreyStyle.Size = Vector3.new(2.2*Scale, 1.52*Scale, 2.6*Scale);
CGreyStyle.BrickColor = BrickColor.new(199);

local TurretCasing = BasePart:clone();
TurretCasing.Size = Vector3.new(2.2*Scale, 1.4*Scale, 5.6*Scale);
TurretCasing.BrickColor = BrickColor.new(199);
TurretCasing.Parent = Storage;

Bevel(TurretCasing);

local TurretFront = BasePart:clone();
TurretFront.Size = Vector3.new(1.7*Scale, 1*Scale, .2*Scale);
TurretFront.BrickColor = BrickColor.Red();
TurretFront.Parent = TurretCasing;

local Barrel = CylPart:clone();
Barrel.Parent = Storage;
Barrel.Size = Vector3.new(.7*Scale, .4*Scale, .7*Scale);
Barrel.BrickColor = BrickColor.Black();

local RedDot = BasePart:clone();
RedDot.Parent = Storage;
RedDot.Size = Vector3.new(.2*Scale, .2*Scale, .2*Scale);
RedDot.BrickColor = BrickColor.new("Really red");

local Sphere = Instance.new("SpecialMesh", RedDot);
Sphere.MeshType = "Sphere";
Sphere.Scale = Vector3.new(1*Scale,1*Scale,1*Scale);


Bevel(TurretFront, Vector3.new(1.7*Scale, 1*Scale, .05*Scale));

local Joint = CylPart:clone();
Joint.Parent = Storage;
Joint.Size = Vector3.new(.7*Scale, 2*Scale, .7*Scale);
Joint.BrickColor = BrickColor.Black();

local Hold = BasePart:clone();
Hold.Parent = Storage;
Hold.BrickColor = BrickColor.Black();
Hold.Size = Vector3.new(2.2*Scale, .2*Scale, .75*Scale);

local Bolt = BasePart:clone();
Bolt.Size = Vector3.new(.2*Scale, 1.5*Scale, .5*Scale);
Bolt.Parent = Storage;
Bolt.BrickColor = BrickColor.Black();

local Bolt2 = BasePart:clone();
Bolt2.Size = Vector3.new(.2*Scale, 1.5*Scale, .5*Scale);
Bolt2.Parent = Storage;
Bolt2.BrickColor = BrickColor.Black();


local TurretToFrame = WeldP(TopFrame, TurretCasing, CFrame.new(0, 0, 1.4*Scale));
WeldP(TopFrame, CGreyStyle);
WeldP(TurretCasing, TurretFront, CFrame.new(0, 0, 2.8*Scale));
WeldP(TopFrame, Screw);
local BarrelWeld = WeldP(Barrel, TurretFront, CFrame.new(.3*Scale, -.2*Scale, 0), CFrame.Angles(math.pi/2, 0, 0));

WeldP(RedDot, TurretFront, CFrame.new(-.55*Scale, 0, -.15*Scale), CFrame.Angles(math.pi/2, 0, 0));

local RotateAxisY = WeldP(Bolt, TurretCasing, CFrame.Angles(0,0,0), CFrame.new(1.1*Scale, -.75*Scale, 1*Scale));

WeldP(Bolt, Hold, CFrame.new(-1.1*Scale, -.5*Scale, 0));

WeldP(Bolt2, Hold, CFrame.new(1.1*Scale, -.5*Scale, 0));

local RotateAxisX = WeldP(Hold, Joint, CFrame.new(0, -1*Scale, 0));



local Leg1 = BasePart:clone();
Leg1.Size = Vector3.new(.2*Scale, 3.5*Scale, .5*Scale);
Leg1.Parent = Storage;
Leg1.BrickColor = BrickColor.Black();


WeldP(Leg1, Joint, CFrame.new(0, -1.75*Scale, 0), CFrame.new(0, -.75*Scale, 0) * CFrame.Angles(math.pi/3, 0, math.pi));


local Leg2 = BasePart:clone();
Leg2.Size = Vector3.new(.2*Scale, 3.5*Scale, .5*Scale);
Leg2.Parent = Storage;
Leg2.BrickColor = BrickColor.Black();


WeldP(Leg2, Joint, CFrame.new(0, -1.75*Scale, 0), CFrame.new(0, -.45*Scale, 0) * CFrame.Angles(-math.pi/4, 0, math.pi + -math.pi/6));


local Leg3 = BasePart:clone();
Leg3.Size = Vector3.new(.2*Scale, 3.5*Scale, .5*Scale);
Leg3.Parent = Storage;
Leg3.BrickColor = BrickColor.Black();


WeldP(Leg3, Joint, CFrame.new(0, -1.75*Scale, 0), CFrame.new(0, -.45*Scale, 0) * CFrame.Angles(-math.pi/4, 0, math.pi + math.pi/6));


local InvisiBox = BasePart:clone();
InvisiBox.Size = Storage:GetModelSize() + Vector3.new(2*Scale, 0, 0);
InvisiBox.Parent = Storage;
InvisiBox.Transparency = 1
WeldP(InvisiBox, Joint, CFrame.new(0, -.2*Scale, .97*Scale));

InvisiBox.CFrame = torso.CFrame * CFrame.new(0, -3.5*Scale, -6) * CFrame.Angles(0, math.pi, 0);

local Action = "Idle";

local Target = nil;

wait(.75)

InvisiBox.Anchored = true

for i,v in pairs(Storage:children()) do
    if v:IsA'Part' then
        v.Locked = true
    end
end
--//
--// SOUNDS
--//

local OnFind = new("Sound", TopFrame);
OnFind.SoundId = "rbxassetid://10209260"
OnFind.Volume = 1


local OnFire = new("Sound", TopFrame);
OnFire.SoundId = "rbxassetid://10209257"
OnFire.Volume = 1

local OnEmpty = new("Sound", TopFrame);
OnEmpty.SoundId = "rbxassetid://10209225"
OnEmpty.Volume = 1

local Scanning = new("Sound", TopFrame);
Scanning.SoundId = "rbxassetid://258704234"
Scanning.Volume = 1

local Explode = new("Sound", TopFrame);
Explode.SoundId = "rbxassetid://10209236"
Explode.Volume = 1

local Move = new("Sound", TopFrame);
Move.SoundId = "rbxassetid://258704467";
Move.Volume = 1;





function FindShortest(Table)
local Current = Table[1]
local Final
for _,v in pairs(Table) do
if v[2] ~= Current[2] then
if v[1] < Current[1] then
Current = v
end
end
end
Final = Current
return Final
end

function GetNearbyPlayer()

    local List = {}
    for i,v in pairs(workspace:children()) do
        if (v ~= nil) then
            if (v:IsA'Model') then
                if (v:findFirstChild'Torso' ~= nil) then
                    local rx, ry, rz = Hold.CFrame:toEulerAnglesXYZ();
                    if (v:findFirstChild'Torso'.Position - Hold.CFrame * CFrame.new(0, 0, 20) * CFrame.Angles(0, ry, 0).p).magnitude < 20 then
                        if (v ~= char) then
                            for x,z in next, v:children() do
                                if z:IsA'Humanoid' and z.Health > 0.5 then
                                    table.insert(List, {(v:findFirstChild'Torso'.Position - Hold.CFrame * CFrame.new(0, 0, 20) * CFrame.Angles(0, ry, 0).p).magnitude, v})
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    if (FindShortest(List) ~= nil) then
        return FindShortest(List)[2];
    else
        return nil;
    end
end

--local Health = Instance.new("Humanoid", Storage);
--Health.MaxHealth = 150;
--Health.Health = 150;



function RayC(Part, speed)
    coroutine.wrap(function()
        local Visual = BasePart:clone();
        Visual.FormFactor = "Custom";
        Visual.BrickColor = BrickColor.Yellow();
        Visual.Size = Vector3.new(.2, 3, .2);
        Visual.CFrame = Part.CFrame * CFrame.new(0, -1, 0);
        Visual.Anchored = true;
        Visual.CanCollide = false;
        Visual.Locked = true

        local Particle = Instance.new("ParticleEmitter", Part);
        Particle.VelocitySpread = 30;
        Particle.LightEmission = 200;

        local Colors = {Color3.new(1,0,0), Color3.new(1,.5,0), Color3.new(1,.9,0);}

        Particle.Size = NumberSequence.new(.05,.07);

        Particle.Color = ColorSequence.new(Colors[math.random(#Colors)]);
        Particle.Texture = "rbxassetid://252350680";
        Particle.RotSpeed = NumberRange.new(10,70);
        Particle.Rate = 100;
        Particle.Speed = NumberRange.new(15);
        Particle.Transparency = NumberSequence.new(-1);
        Particle.Lifetime = NumberRange.new(.1);
        coroutine.wrap(function()
            wait(.2)
            Particle.Enabled = false;
            wait(.1);
            wait(.3)
            Particle:Destroy()
        end)()

        Instance.new("SpecialMesh", Visual).MeshType = "Sphere";
        Visual.Mesh.Scale = Vector3.new(.5, 1, .5);

        local bulletpos = Visual.Position
        local bulletvelocity = (Part.CFrame.p - bulletpos).unit*speed
        local lastbulletpos = Visual.Position 
        Visual.Parent = Storage;
        while game:service'RunService'.Stepped:wait() do
                if (Particle) then
                    Particle.Transparency =  NumberSequence.new(Particle.Transparency.Keypoints[#Particle.Transparency.Keypoints].Value+.4);
                end
                    lastbulletpos = bulletpos 
                    bulletpos = bulletpos + bulletvelocity
                    local RayCast = Ray.new(lastbulletpos, (bulletpos - lastbulletpos))
                    local hit, hitpos = workspace:FindPartOnRay(RayCast, Storage, false, true)
                    if (Joint.Position - Visual.Position).magnitude > 1000 or Visual.Parent == nil then
                        Visual:Destroy();
                        break
                    end
                    Visual.Anchored = true
                    Visual.CFrame = CFrame.new(bulletpos, bulletpos+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0);
                    if hit then
                        if hit.Parent:IsA'Hat' then
                            if hit.Parent.Parent:IsA'Model' then
                                for x,z in next, hit.Parent.Parent:children() do
                                    if z:IsA'Humanoid' then
                                        z:TakeDamage(math.random(8,12));
                                    end
                                end
                            end
                        else
                            if hit.Parent:IsA'Model' then
                                for x,z in next, hit.Parent:children() do
                                    if z:IsA'Humanoid' then
                                        z:TakeDamage(math.random(8,12));
                                    end
                                end
                            end
                        end

                        Visual:Destroy();
                        break
                    end
        end
    end)()
end

lastTick = tick();
local db = false;
game:service'RunService'.RenderStepped:connect(function()
    if Action == "DEAD" then return end;


    if not Wrangler then
        --//
        --// AUTOMATED MODE, MOTION SENSOR WILL DETECT MOVEMENT
        --//


        --//
        --// IF PLAYER USED WRANGLER, THERE IS A SHIELD WICH MUST BE REMOVED
        --// 

        if (Storage:findFirstChild'Shield') then
            Storage:findFirstChild'Shield':Destroy();
        end

        local LastTarget = Target;

        --//
        --// CHECK FOR NEARBY ENEMIES
        --//
        local Player = GetNearbyPlayer();
        Target = Player;

        --//
        --// BEEP ON TARGET FOUND
        --//
        if (Target ~= LastTarget and Target ~= nil) then
            Move.Pitch = 0.9 + math.random()/9;
            Move:play();
            OnFind:play();
            Action = "Standby";
        end

        --//
        --// IDLE
        --//
        if Action == "Idle" then
            RotateAxisX.C1 = clerp(RotateAxisX.C1, CFrame.Angles(0, SharpSin(tick()*2)*.2, 0), .1);
            RotateAxisY.C0 = clerp(RotateAxisY.C0, CFrame.new(), .1);
        end


        --//
        --// SENTRY DEAD
        --//

        --//
        --// IF PLAYER EXISTS, FIRE!
        --//



        if Action == "Standby" then
            pcall(function()
                local tor = Target.Torso.CFrame.p -- Target CFrame
                local direction = InvisiBox.CFrame.lookVector -- Direction handling, welds mess up, just a workaround.
                local heading = math.atan2(direction.x, direction.z)--
                local RotY = math.deg(heading)
                    if RotY < 0 then
                        RotY = (360 - math.abs(RotY));
                    end
                RotateAxisX.C1 = --Begin here
                clerp(RotateAxisX.C1, 
                CFrame.new(

                  Vector3.new(), --The Pivot0 of pointing the weld.
                  Vector3.new(tor.x, 0, tor.z) - Vector3.new(RotateAxisX.Part1.CFrame.x, 0, RotateAxisX.Part1.CFrame.z)) --We point the sentry here

                * CFrame.Angles(0, math.rad(360) - math.rad(RotY), 0), 
                .1
                );
                
                local Point = Hold.CFrame:toObjectSpace(CFrame.new(Hold.CFrame.p,tor))*CFrame.Angles(0,math.rad(180),0)
                local RX, RY, RZ = Point:toEulerAnglesXYZ()
                if math.deg(RX) > 45 then
                    RX = math.rad(45)
                elseif math.deg(RX) < -55 then
                    RX = math.rad(-55)
                end
                RotateAxisY.C0 = clerp(RotateAxisY.C0,CFrame.Angles(RX,0,0),.1)
                
            end)
        end
        if Action == "Fire" then
            pcall(function()
                local tor = Target.Torso.CFrame.p;
                local direction = InvisiBox.CFrame.lookVector
                local heading = math.atan2(direction.x, direction.z)
                local RotY = math.deg(heading)
                    if RotY < 0 then
                        RotY = (360 - math.abs(RotY));
                    end
                RotateAxisX.C1 = --Begin here
                clerp(RotateAxisX.C1, 
                CFrame.new(

                  Vector3.new(), --The Pivot0 of pointing the weld.
                  Vector3.new(tor.x, 0, tor.z) - Vector3.new(RotateAxisX.Part1.CFrame.x, 0, RotateAxisX.Part1.CFrame.z)) --We point the sentry here

                * CFrame.Angles(0, math.rad(360) - math.rad(RotY), 0), 
                .1
                );

                BarrelWeld.C0 = clerp(BarrelWeld.C0, CFrame.new())
                local Point = Hold.CFrame:toObjectSpace(CFrame.new(Hold.CFrame.p,tor))*CFrame.Angles(0,math.rad(180),0)
                local RX, RY, RZ = Point:toEulerAnglesXYZ()
                if math.deg(RX) > 45 then
                    RX = math.rad(45)
                elseif math.deg(RX) < -55 then
                    RX = math.rad(-55)
                end
                RotateAxisY.C0 = clerp(RotateAxisY.C0,CFrame.Angles(RX,0,0),.1)
            end)
        end

        if (Target ~= nil) then
            if Action == "Fire" or db then return end
            if Action == "Standby" then
                db = true
                wait(.2);
            end
            Action = "Fire";
            db = false
            OnFire:play();



            local PointLight = Instance.new("PointLight", Barrel);
            PointLight.Color = Color3.new(.5,1,0)
            PointLight.Brightness = 6;
            game:service'Debris':AddItem(PointLight, .05);



            RayC(Barrel, 20)




            wait(.1)
            if (Target ~= nil) then
                Action = "Standby";
            else
                Action = "Idle";
            end
        end

        if tick() - lastTick > 2.5 and Target == nil then
            lastTick = tick();
            Scanning:play();
        end
    end

    --[[if (Health.Health == 0 or RotateAxisX.Parent == nil) then
            Action = "DEAD";
            if db then return end
            RotateAxisY:Destroy();
            TurretToFrame:Destroy();
            Joint:Destroy();
            db = true
            local expl = Instance.new("Explosion", Storage);
            expl.BlastRadius = 1;
            expl.Position = TopFrame.Position;

            game:service'Debris':AddItem(Storage, 5);
            script:Destroy()
        end--]]

end)
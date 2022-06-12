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

if humanoid.Animator then
humanoid.Animator:Destroy()
end

local ABS = math.abs;
local SIN = math.sin;
local ASIN = math.asin;
local COS = math.cos;

local new = Instance.new;

local rm = new('Weld', torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
rm.Name = 'Right Shoulder'

local lm = new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
lm.Name = 'Left Shoulder'

local rlegm = new("Weld", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl

local llegm = new("Weld", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll

rj.C0 = CFrame.new()
rj.C1 = CFrame.new()

neck.C0 = CFrame.new(0, 1, 0)
neck.C1 = CFrame.new(0, -0.5, 0)


local speed = 0.3
local angle = 0
local anglespeed = 1
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
neckc0 = neck.C0

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
    if float < min then float = min end
    return float
end

function SharpSin(double_p1)
    return ASIN(SIN(double_p1));
end



function WeldP(part0, part1, C0, C1)
    local W = new("Weld", char);
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

do
    local Possible_Colors = {"Lavender", "Bright blue", "White", "Really black", "Dusty Rose"};
    local parts,last = {};
    local ColorToPaint = Possible_Colors[math.random(#Possible_Colors)];
    function WeldChildren(parent)
            for _,v in pairs(parent:GetChildren()) do
                if (v:IsA("BasePart")) then
                    v.Anchored = true
                    if (v.BrickColor == BrickColor.new("Medium stone grey")) then
                        v.BrickColor = BrickColor.new(ColorToPaint);
                    end
                    if (last) then
                        local w = new("Weld")
                        w.Name = ("%s_Weld"):format(v.Name)
                        w.Part0,w.Part1 = last,v
                        w.C0 = last.CFrame:inverse()
                        w.C1 = v.CFrame:inverse()
                        w.Parent = last
                    end
                    last = v
                    table.insert(parts,v)
                end
                WeldChildren(v)
            end
        for _,v in pairs(parts) do
            v.Anchored = false
            v.Locked = true
        end
    end
end


local Particles = {

    AirRing = function(CF, Distance, Color, Opac, Size, Velocity)
            local StoredParticles = {};

            for Angle = 0, 360, 20 do
                local EffectDirection = new("Part", char);
                EffectDirection.Anchored = true;
                EffectDirection.CanCollide = false;
                EffectDirection.CFrame = CF
                 * CFrame.Angles(math.pi/2, 0, 0)
                 * CFrame.Angles(0, 0, math.rad(Angle)) 
                 * CFrame.new(0, Distance, 0);
                EffectDirection.Transparency = 1;
                local Smoke = new("Smoke", EffectDirection);
                Smoke.Color = Color3.new(Color.r/255, Color.g/255, Color.b/255) or Color3.new(1,1,1);
                Smoke.Opacity = Opac or 0.05;
                Smoke.Size = Size or 0;
                Smoke.RiseVelocity = Velocity or 2;
                table.insert(StoredParticles, Smoke);
                game:service'Debris':AddItem(EffectDirection, 10);
            end

            wait(.2);

            for Index,Value in next,StoredParticles do
                if Value:IsA'Smoke' then
                    Value.Enabled = false;
                end
            end
    end;

    BulletholeParticles = function(Part, hitPart)
        do --material splash
            local Particle = new("ParticleEmitter", Part);
            Particle.VelocitySpread = 30;
            Particle.LightEmission = 200;


            Particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1, 0), NumberSequenceKeypoint.new(1, 0.25, 0)})
            Particle.Color = ColorSequence.new(Color3.new(hitPart.BrickColor.r, hitPart.BrickColor.g, hitPart.BrickColor.b));
            Particle.Texture = "rbxassetid://272031379";
            Particle.Rotation = NumberRange.new(0,90);
            Particle.Rate = 25;
            Particle.Acceleration = Vector3.new(0, -100, 0)
            Particle.Speed = NumberRange.new(35);
            Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)});
            Particle.Lifetime = NumberRange.new(2);
            coroutine.wrap(function()
                wait(.2)
                Particle.Enabled = false;
                Particle.Rate = 0;
                wait(2)
                Particle:Destroy()
            end)()
        end

        do --smoke effect
            local Particle = new("ParticleEmitter", Part);
            Particle.VelocitySpread = 10;


            Particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0), NumberSequenceKeypoint.new(1, 0.9, 0)})

            Particle.Color = ColorSequence.new(Color3.new(hitPart.BrickColor.r, hitPart.BrickColor.g, hitPart.BrickColor.b));
            Particle.Texture = "rbxassetid://272031958"; -- replace id
            Particle.Rotation = NumberRange.new(0,90);
            Particle.Rate = 10;
            Particle.Acceleration = Vector3.new(0, -1, 0)
            Particle.Speed = NumberRange.new(5);
            Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)});
            Particle.Lifetime = NumberRange.new(1);
            coroutine.wrap(function()
                wait(.2)
                Particle.Enabled = false;
                Particle.Rate = 0;
                wait(1)
                Particle:Destroy()
            end)()
        end
        end;
};


local Storage = new("Model", char);

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

local m = new("Model")
m.Name = "HOVERBIKE"
Instance.new("Humanoid", m);
m1 = new("Model")
m1.Name = "Front"
m1.Parent = m
m2 = new("Model")
m2.Name = "Middle"
m2.Parent = m
m3 = new("Model")
m3.Name = "Pedals"
m3.Parent = m2
m4 = new("Model")
m4.Name = "Back"
m4.Parent = m
p1 = new("Part", m1)
p1.BrickColor = BrickColor.new("Institutional white")
p1.Material = "SmoothPlastic"
p1.FormFactor = 3
p1.Size = Vector3.new(2.5999999, 2.4000001, 0.800000131)
p1.CFrame = CFrame.new(-70.3000031, 1.79999804, -5.20002365, 0.999993324, 3.57207313e-008, 6.01311001e-008, 3.29292398e-008, -4.47034836e-007, -0.999996185, 5.16903889e-008, 0.999995708, -5.66244125e-007)
p1.BackSurface = 10
p1.BottomSurface = 10
p1.FrontSurface = 10
p1.LeftSurface = 10
p1.RightSurface = 10
p1.TopSurface = 10
b1 = new("CylinderMesh", p1)
b1.Name = "Mesh"
p2 = new("Part", m1)
p2.BrickColor = BrickColor.new("Institutional white")
p2.Material = "SmoothPlastic"
p2.FormFactor = 3
p2.Size = Vector3.new(0.800000012, 1.00000012, 0.800000012)
p2.CFrame = CFrame.new(-71, 1.60000002, -4.69999981, 0.707106769, 0.707106769, 0, -0.49999997, 0.49999997, -0.707106769, -0.49999997, 0.49999997, 0.707106769)
p2.BackSurface = 10
p2.BottomSurface = 10
p2.FrontSurface = 10
p2.LeftSurface = 10
p2.RightSurface = 10
p2.TopSurface = 10
b2 = new("CylinderMesh", p2)
b2.Name = "Mesh"
p3 = new("Part", m1)
p3.BrickColor = BrickColor.new("Medium stone grey")
p3.Material = "SmoothPlastic"
p3.FormFactor = 3
p3.Size = Vector3.new(0.200000033, 1.80000007, 2.26000023)
p3.CFrame = CFrame.new(-69.32798, 2.85687518, -5.29115105, -0.933012664, -0.249999866, -0.258819103, -0.166480377, 0.937541068, -0.305452108, 0.319016516, -0.241902426, -0.916357815)
p3.BackSurface = 10
p3.BottomSurface = 10
p3.FrontSurface = 10
p3.LeftSurface = 10
p3.RightSurface = 10
p3.TopSurface = 10
p4 = new("Part", m1)
p4.BrickColor = BrickColor.new("Medium stone grey")
p4.Material = "SmoothPlastic"
p4.FormFactor = 3
p4.Size = Vector3.new(1.80000007, 0.200000003, 2.31000018)
p4.CFrame = CFrame.new(-71.2271042, 2.84331346, -5.26954222, 0.25000003, 0.933012784, 0.258818537, 0.937540889, -0.166480452, -0.305452794, -0.241903126, 0.319016159, -0.916357756)
p4.BackSurface = 10
p4.BottomSurface = 10
p4.FrontSurface = 10
p4.LeftSurface = 10
p4.RightSurface = 10
p4.TopSurface = 10
p5 = new("Part", m1)
p5.BrickColor = BrickColor.new("Medium stone grey")
p5.Material = "SmoothPlastic"
p5.FormFactor = 3
p5.Size = Vector3.new(0.200000033, 0.570000052, 2.31000018)
p5.CFrame = CFrame.new(-70.7262497, 3.63176894, -5.52089834, 9.7468944e-010, 0.965925813, 0.258819014, 0.948683262, 0.08184582, -0.305452794, -0.316228002, 0.245537266, -0.916357636)
p5.BackSurface = 10
p5.BottomSurface = 10
p5.FrontSurface = 10
p5.LeftSurface = 10
p5.RightSurface = 10
p5.TopSurface = 10
p6 = new("WedgePart", m1)
p6.BrickColor = BrickColor.new("Dark stone grey")
p6.Material = "SmoothPlastic"
p6.Name = "Wedge"
p6.FormFactor = 3
p6.Size = Vector3.new(0.600000024, 1, 1.19999981)
p6.CFrame = CFrame.new(-70.3000031, 3.39999628, -4.99999666, 0.999990463, 4.89541385e-008, 1.56179951e-007, -3.44916629e-008, 0.999993563, -1.0771722e-007, -1.27013777e-007, 1.82223147e-007, 0.999994636)
p6.BackSurface = 10
p6.BottomSurface = 10
p6.FrontSurface = 10
p6.LeftSurface = 10
p6.RightSurface = 10
p6.TopSurface = 10
p7 = new("WedgePart", m1)
p7.BrickColor = BrickColor.new("Dark stone grey")
p7.Material = "SmoothPlastic"
p7.Name = "Wedge"
p7.FormFactor = 3
p7.Size = Vector3.new(0.600000024, 1.9000001, 1.60000014)
p7.CFrame = CFrame.new(-70.3000031, 1.94999981, -4.79999971, -0.999999285, -4.22459312e-009, -4.42287984e-009, -8.71322658e-009, -0.999999583, -4.27401368e-008, -3.42251809e-008, -5.01331741e-008, 0.999999523)
p7.BackSurface = 10
p7.BottomSurface = 10
p7.FrontSurface = 10
p7.LeftSurface = 10
p7.RightSurface = 10
p7.TopSurface = 10
p8 = new("Part", m1)
p8.BrickColor = BrickColor.new("Institutional white")
p8.Material = "SmoothPlastic"
p8.FormFactor = 3
p8.Size = Vector3.new(0.200000003, 1.00000012, 2.46000028)
p8.CFrame = CFrame.new(-70.6999893, 2.70000029, -5.36999369, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p8.BackSurface = 10
p8.BottomSurface = 10
p8.FrontSurface = 10
p8.LeftSurface = 10
p8.RightSurface = 10
p8.TopSurface = 10
p9 = new("Part", m1)
p9.BrickColor = BrickColor.new("Medium stone grey")
p9.Material = "SmoothPlastic"
p9.FormFactor = 3
p9.Size = Vector3.new(0.200000033, 1, 2.24000001)
p9.CFrame = CFrame.new(-70.3000031, 3.65261483, -5.4583602, -2.94648261e-009, 1, -2.40095073e-008, 0.948683262, -4.79719953e-009, -0.316227973, -0.316227973, -2.37091786e-008, -0.948683262)
p9.BackSurface = 10
p9.BottomSurface = 10
p9.FrontSurface = 10
p9.LeftSurface = 10
p9.RightSurface = 10
p9.TopSurface = 10
p10 = new("Part", m1)
p10.BrickColor = BrickColor.new("Institutional white")
p10.Material = "SmoothPlastic"
p10.FormFactor = 3
p10.Size = Vector3.new(2.5999999, 2.20000005, 0.800000131)
p10.CFrame = CFrame.new(-70.3000031, 1.75333345, -4.62936497, 0.999993324, 6.73471092e-008, 9.66288383e-008, 9.03622777e-008, -0.620700181, -0.784043133, 9.45857366e-008, 0.784042716, -0.620700002)
p10.BackSurface = 10
p10.BottomSurface = 10
p10.FrontSurface = 10
p10.LeftSurface = 10
p10.RightSurface = 10
p10.TopSurface = 10
b3 = new("CylinderMesh", p10)
b3.Name = "Mesh"
p11 = new("Part", m1)
p11.BrickColor = BrickColor.new("Medium stone grey")
p11.Material = "SmoothPlastic"
p11.FormFactor = 3
p11.Size = Vector3.new(2.5999999, 1.60000002, 1.40000021)
p11.CFrame = CFrame.new(-70.3000031, 2.79999661, -5.20002317, 0.999993324, 3.57207313e-008, 6.01311001e-008, 3.29292398e-008, -4.47034836e-007, -0.999996185, 5.16903889e-008, 0.999995708, -5.66244125e-007)
p11.BackSurface = 10
p11.BottomSurface = 10
p11.FrontSurface = 10
p11.LeftSurface = 10
p11.RightSurface = 10
p11.TopSurface = 10
b4 = new("CylinderMesh", p11)
b4.Name = "Mesh"
p12 = new("Part", m1)
p12.BrickColor = BrickColor.new("Institutional white")
p12.Material = "SmoothPlastic"
p12.FormFactor = 3
p12.Size = Vector3.new(0.200000003, 1.00000012, 2.46000028)
p12.CFrame = CFrame.new(-69.9000015, 2.70000029, -5.37000704, -0.99999994, 6.17772677e-009, 2.98023224e-008, 8.16360668e-009, 1, -1.0658141e-014, -5.96046448e-008, -2.73676903e-008, -1)
p12.BackSurface = 10
p12.BottomSurface = 10
p12.FrontSurface = 10
p12.LeftSurface = 10
p12.RightSurface = 10
p12.TopSurface = 10
p13 = new("Part", m1)
p13.BrickColor = BrickColor.new("Institutional white")
p13.Material = "SmoothPlastic"
p13.FormFactor = 3
p13.Size = Vector3.new(0.800000012, 1.00000012, 0.800000012)
p13.CFrame = CFrame.new(-69.8000031, 1.59999776, -4.70001411, 0.70710206, -0.70710212, 4.05156406e-008, 0.499997437, 0.499997407, -0.707104921, 0.49999854, 0.499998391, 0.707102716)
p13.BackSurface = 10
p13.BottomSurface = 10
p13.FrontSurface = 10
p13.LeftSurface = 10
p13.RightSurface = 10
p13.TopSurface = 10
b5 = new("CylinderMesh", p13)
b5.Name = "Mesh"
p14 = new("Part", m1)
p14.BrickColor = BrickColor.new("Institutional white")
p14.Material = "SmoothPlastic"
p14.FormFactor = 3
p14.Size = Vector3.new(1, 0.200000003, 2.66000032)
p14.CFrame = CFrame.new(-70.3000031, 2.10000038, -5.27000713, -0.99999994, 6.17772677e-009, 2.98023224e-008, 8.16360668e-009, 1, -1.0658141e-014, -5.96046448e-008, -2.73676903e-008, -1)
p14.BackSurface = 10
p14.BottomSurface = 10
p14.FrontSurface = 10
p14.LeftSurface = 10
p14.RightSurface = 10
p14.TopSurface = 10
p15 = new("Part", m1)
p15.BrickColor = BrickColor.new("Medium stone grey")
p15.Material = "SmoothPlastic"
p15.FormFactor = 3
p15.Size = Vector3.new(0.200000033, 0.600000024, 2.27000022)
p15.CFrame = CFrame.new(-69.8331375, 3.6373589, -5.50412893, 1.58114908e-008, 0.965925813, -0.258819073, 0.948683321, -0.081845805, -0.305452615, -0.316227823, -0.245537326, -0.916357696)
p15.BackSurface = 10
p15.BottomSurface = 10
p15.FrontSurface = 10
p15.LeftSurface = 10
p15.RightSurface = 10
p15.TopSurface = 10
p16 = new("Part", m1)
p16.BrickColor = BrickColor.new("Black")
p16.Material = "SmoothPlastic"
p16.FormFactor = 3
p16.Size = Vector3.new(0.200000033, 1, 0.200000003)
p16.CFrame = CFrame.new(-71.1000061, 3.86704206, -3.96570897, -2.07027329e-009, 0.965925753, -0.258819044, 0.928476572, -0.0961230621, -0.358736128, -0.371390998, -0.240307435, -0.896839499)
p16.BackSurface = 10
p16.BottomSurface = 10
p16.FrontSurface = 10
p16.LeftSurface = 10
p16.RightSurface = 10
p16.TopSurface = 10
b6 = new("CylinderMesh", p16)
b6.Name = "Mesh"
p17 = new("WedgePart", m1)
p17.BrickColor = BrickColor.new("Medium stone grey")
p17.Material = "SmoothPlastic"
p17.Name = "Wedge"
p17.FormFactor = 3
p17.Size = Vector3.new(0.600000024, 0.900000095, 0.200000033)
p17.CFrame = CFrame.new(-70.9000015, 2.54999876, -4.0999999, -0.999994278, -1.74263892e-008, 6.84501131e-008, -1.74263928e-008, 0.999997139, 1.84370062e-015, -6.84501131e-008, 6.50858793e-016, -0.999997139)
p17.BackSurface = 10
p17.BottomSurface = 10
p17.FrontSurface = 10
p17.LeftSurface = 10
p17.RightSurface = 10
p17.TopSurface = 10
p18 = new("Part", m1)
p18.BrickColor = BrickColor.new("Institutional white")
p18.Material = "SmoothPlastic"
p18.FormFactor = 3
p18.Size = Vector3.new(1.80000007, 1, 0.200000003)
p18.CFrame = CFrame.new(-70.3000107, 3.40137672, -4.09284878, -1, -4.58120741e-009, -2.37882976e-008, 4.58120741e-009, 0.928476691, -0.371390671, 2.37882976e-008, -0.371390671, -0.928476691)
p18.BackSurface = 10
p18.BottomSurface = 10
p18.FrontSurface = 10
p18.LeftSurface = 10
p18.RightSurface = 10
p18.TopSurface = 10
b7 = new("BlockMesh", p18)
b7.Name = "Mesh"
b7.Offset = Vector3.new(0, 0, 0.100000001)
b7.Scale = Vector3.new(0.899999976, 0.899999976, 0.200000003)
p19 = new("Part", m1)
p19.BrickColor = BrickColor.new("Dark stone grey")
p19.Material = "SmoothPlastic"
p19.FormFactor = 3
p19.Size = Vector3.new(0.200000003, 0.399999976, 0.200000003)
p19.CFrame = CFrame.new(-70.3000259, 2.59999895, -3.9000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p19.BackSurface = 10
p19.BottomSurface = 10
p19.FrontSurface = 10
p19.LeftSurface = 10
p19.RightSurface = 10
p19.TopSurface = 10
p20 = new("WedgePart", m1)
p20.BrickColor = BrickColor.new("Institutional white")
p20.Material = "SmoothPlastic"
p20.Name = "Wedge"
p20.FormFactor = 3
p20.Size = Vector3.new(1.79999995, 0.699999988, 0.400000066)
p20.CFrame = CFrame.new(-70.2999954, 1.75000012, -3.80001855, -1, 0, 0, 0, 1, 0, 0, 0, -1)
p20.BackSurface = 10
p20.BottomSurface = 10
p20.FrontSurface = 10
p20.LeftSurface = 10
p20.RightSurface = 10
p20.TopSurface = 10
p21 = new("WedgePart", m1)
p21.BrickColor = BrickColor.new("Dark stone grey")
p21.Material = "SmoothPlastic"
p21.Name = "Wedge"
p21.FormFactor = 3
p21.Size = Vector3.new(0.600000024, 0.700000107, 0.600000024)
p21.CFrame = CFrame.new(-69.7000046, 2.55000138, -4.50000286, -0.999991119, 2.1650715e-008, 1.73532499e-007, -8.25170332e-008, -0.999993801, -6.07012907e-007, 1.13927797e-007, -6.07009156e-007, 0.999990523)
p21.BackSurface = 10
p21.BottomSurface = 10
p21.FrontSurface = 10
p21.LeftSurface = 10
p21.RightSurface = 10
p21.TopSurface = 10
p22 = new("Part", m1)
p22.BrickColor = BrickColor.new("Black")
p22.Material = "SmoothPlastic"
p22.FormFactor = 3
p22.Size = Vector3.new(0.200000033, 1, 0.200000003)
p22.CFrame = CFrame.new(-69.5000076, 3.86704469, -3.96570921, 1.70448082e-008, 0.965925813, 0.258819014, 0.928476632, 0.096122995, -0.358735979, -0.37139082, 0.24030742, -0.896839559)
p22.BackSurface = 10
p22.BottomSurface = 10
p22.FrontSurface = 10
p22.LeftSurface = 10
p22.RightSurface = 10
p22.TopSurface = 10
b8 = new("CylinderMesh", p22)
b8.Name = "Mesh"
p23 = new("WedgePart", m1)
p23.BrickColor = BrickColor.new("Medium stone grey")
p23.Material = "SmoothPlastic"
p23.Name = "Wedge"
p23.FormFactor = 3
p23.Size = Vector3.new(1.79999995, 1, 0.400000006)
p23.CFrame = CFrame.new(-70.3000031, 3.3999989, -4.20000076, -0.999997854, -1.84590085e-008, -3.30043548e-008, -3.13968336e-008, 0.999998927, 2.98023224e-008, 3.20212834e-009, 8.94069672e-008, -0.999998868)
p23.BackSurface = 10
p23.BottomSurface = 10
p23.FrontSurface = 10
p23.LeftSurface = 10
p23.RightSurface = 10
p23.TopSurface = 10
p24 = new("WedgePart", m1)
p24.BrickColor = BrickColor.new("Dark stone grey")
p24.Material = "SmoothPlastic"
p24.Name = "Wedge"
p24.FormFactor = 3
p24.Size = Vector3.new(0.600000024, 0.700000107, 0.600000024)
p24.CFrame = CFrame.new(-70.9000015, 2.55000186, -4.49999714, -0.999991119, 2.1650715e-008, 1.73532499e-007, -8.25170332e-008, -0.999993801, -6.07012907e-007, 1.13927797e-007, -6.07009156e-007, 0.999990523)
p24.BackSurface = 10
p24.BottomSurface = 10
p24.FrontSurface = 10
p24.LeftSurface = 10
p24.RightSurface = 10
p24.TopSurface = 10
p25 = new("Part", m1)
p25.BrickColor = BrickColor.new("Medium blue")
p25.Material = "SmoothPlastic"
p25.Transparency = 0.5
p25.FormFactor = 3
p25.Size = Vector3.new(0.600000024, 1.79999995, 0.400000006)
p25.CFrame = CFrame.new(-70.3000031, 4.25511837, -4.3927331, 3.93155108e-009, 1, -2.34442759e-008, 0.979697764, 8.48380366e-010, 0.200480163, 0.200480163, -2.37565061e-008, -0.979697764)
p25.BackSurface = 10
p25.BottomSurface = 10
p25.FrontSurface = 10
p25.LeftSurface = 10
p25.RightSurface = 10
p25.TopSurface = 10
b9 = new("BlockMesh", p25)
b9.Name = "Mesh"
b9.Scale = Vector3.new(1, 0.850000024, 0.0500000007)
p26 = new("Part", m1)
p26.BrickColor = BrickColor.new("Black")
p26.Material = "SmoothPlastic"
p26.FormFactor = 3
p26.Size = Vector3.new(0.400000006, 0.200000003, 0.600000024)
p26.CFrame = CFrame.new(-69.8000107, 3.40137601, -4.0928483, -1, 2.37882976e-008, -4.58120741e-009, 4.58120741e-009, 0.371390671, 0.928476691, 2.37882976e-008, 0.928476691, -0.371390671)
p26.BackSurface = 10
p26.BottomSurface = 10
p26.FrontSurface = 10
p26.LeftSurface = 10
p26.RightSurface = 10
p26.TopSurface = 10
b10 = new("CylinderMesh", p26)
b10.Name = "Mesh"
b10.Offset = Vector3.new(0, -0.150000006, 0)
p27 = new("Part", m1)
p27.BrickColor = BrickColor.new("Black")
p27.Material = "SmoothPlastic"
p27.FormFactor = 3
p27.Size = Vector3.new(0.200000033, 1, 0.200000003)
p27.CFrame = CFrame.new(-70.3000107, 3.84704471, -4.05570936, -4.58120741e-009, 1, -2.37882976e-008, 0.928476691, -4.58120741e-009, -0.371390671, -0.371390671, -2.37882976e-008, -0.928476691)
p27.BackSurface = 10
p27.BottomSurface = 10
p27.FrontSurface = 10
p27.LeftSurface = 10
p27.RightSurface = 10
p27.TopSurface = 10
b11 = new("CylinderMesh", p27)
b11.Name = "Mesh"
b11.Scale = Vector3.new(1.39999998, 1, 1.39999998)
p28 = new("WedgePart", m1)
p28.BrickColor = BrickColor.new("Medium stone grey")
p28.Material = "SmoothPlastic"
p28.Name = "Wedge"
p28.FormFactor = 3
p28.Size = Vector3.new(0.600000024, 0.900000095, 0.200000033)
p28.CFrame = CFrame.new(-69.7000046, 2.54999852, -4.0999999, -0.999994278, -1.74263892e-008, 6.84501131e-008, -1.74263928e-008, 0.999997139, 1.84370062e-015, -6.84501131e-008, 6.50858793e-016, -0.999997139)
p28.BackSurface = 10
p28.BottomSurface = 10
p28.FrontSurface = 10
p28.LeftSurface = 10
p28.RightSurface = 10
p28.TopSurface = 10
p29 = new("Part", m1)
p29.BrickColor = BrickColor.new("Black")
p29.Material = "SmoothPlastic"
p29.FormFactor = 3
p29.Size = Vector3.new(0.600000024, 0.200000003, 0.600000024)
p29.CFrame = CFrame.new(-70.7000122, 3.40137601, -4.0928483, -1, 2.37882976e-008, -4.58120741e-009, 4.58120741e-009, 0.371390671, 0.928476691, 2.37882976e-008, 0.928476691, -0.371390671)
p29.BackSurface = 10
p29.BottomSurface = 10
p29.FrontSurface = 10
p29.LeftSurface = 10
p29.RightSurface = 10
p29.TopSurface = 10
b12 = new("CylinderMesh", p29)
b12.Name = "Mesh"
b12.Offset = Vector3.new(0, -0.150000006, 0)
p30 = new("Part", m1)
p30.BrickColor = BrickColor.new("Black")
p30.Material = "SmoothPlastic"
p30.FormFactor = 3
p30.Size = Vector3.new(0.600000024, 0.200000003, 0.200000003)
p30.CFrame = CFrame.new(-70.3000107, 3.77276635, -4.24140453, -1, 2.37882976e-008, -4.58120741e-009, 4.58120741e-009, 0.371390671, 0.928476691, 2.37882976e-008, 0.928476691, -0.371390671)
p30.BackSurface = 10
p30.BottomSurface = 10
p30.FrontSurface = 10
p30.LeftSurface = 10
p30.RightSurface = 10
p30.TopSurface = 10
b13 = new("CylinderMesh", p30)
b13.Name = "Mesh"

Barrel = new("Part", m1)
Barrel.BrickColor = BrickColor.new("Black")
Barrel.FormFactor = Enum.FormFactor.Custom
Barrel.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
Barrel.CFrame = CFrame.new(-70.3000031, 2.70000052, -7.40000629, -1.20340502e-007, -1.59888529e-008, 1, 1, -3.57627869e-007, 1.20340502e-007, 3.57627869e-007, 1, 1.5988892e-008) * CFrame.Angles(math.pi, 0, 0)
Mb1 = new("CylinderMesh", Barrel)
Mb1.Name = "Mesh"
Mb1.Scale = Vector3.new(0.5, 1, 0.5)
MainBarrel = new("Part", m1)
MainBarrel.BrickColor = BrickColor.new("Black")
MainBarrel.FormFactor = Enum.FormFactor.Custom
MainBarrel.Size = Vector3.new(0.200000003, 2, 0.200000003)
MainBarrel.CFrame = CFrame.new(-70.3000031, 2.70000005, -6.20000648, -1.20340502e-007, -1.59888529e-008, 1, 1, -3.57627869e-007, 1.20340502e-007, 3.57627869e-007, 1, 1.5988892e-008)
Bb2 = new("CylinderMesh", MainBarrel)
Bb2.Name = "Mesh"

p31 = new("Part", m2)
p31.BrickColor = BrickColor.new("Dark stone grey")
p31.Material = "SmoothPlastic"
p31.FormFactor = 3
p31.Size = Vector3.new(0.200000003, 0.689999938, 0.200000003)
p31.CFrame = CFrame.new(-70.3000259, 2.56110811, -3.46110916, 1, 0, 0, 0, 0.70710659, 0.70710665, 0, -0.70710665, 0.70710659)
p31.BackSurface = 10
p31.BottomSurface = 10
p31.FrontSurface = 10
p31.LeftSurface = 10
p31.RightSurface = 10
p31.TopSurface = 10
p32 = new("Part", m2)
p32.BrickColor = BrickColor.new("White")
p32.Material = "SmoothPlastic"
p32.FormFactor = 3
p32.Size = Vector3.new(0.600000024, 0.399999976, 0.50000006)
p32.CFrame = CFrame.new(-69.8499985, 1.546, -3.71199989, 0, 0, 1, -0.707106769, 0.707106709, 0, -0.707106709, -0.707106769, 0)
p32.BackSurface = 10
p32.BottomSurface = 10
p32.FrontSurface = 10
p32.LeftSurface = 10
p32.RightSurface = 10
p32.TopSurface = 10
p33 = new("Part", m2)
p33.BrickColor = BrickColor.new("Dark stone grey")
p33.Material = "SmoothPlastic"
p33.FormFactor = 3
p33.Size = Vector3.new(0.200000003, 0.399999976, 0.200000003)
p33.CFrame = CFrame.new(-70.3000259, 2.59999871, -3.0999999, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p33.BackSurface = 10
p33.BottomSurface = 10
p33.FrontSurface = 10
p33.LeftSurface = 10
p33.RightSurface = 10
p33.TopSurface = 10

Seat = new("Part", m2)
Seat.BrickColor = BrickColor.new("Black")
Seat.Material = "SmoothPlastic"
Seat.FormFactor = 3
Seat.Size = Vector3.new(0.600000024, 0.200000003, 2.20000005)
Seat.CFrame = CFrame.new(-70.3000259, 2.83298802, -2.92815232, 1, 0, 0, 0, 0.999999762, 1.49011612e-008, 0, -1.49011612e-008, 0.999999762)
Seat.BackSurface = 10
Seat.BottomSurface = 10
Seat.FrontSurface = 10
Seat.LeftSurface = 10
Seat.RightSurface = 10
Seat.TopSurface = 10

p35 = new("Part", m2)
p35.BrickColor = BrickColor.new("Dark stone grey")
p35.Material = "SmoothPlastic"
p35.FormFactor = 3
p35.Size = Vector3.new(0.200000003, 1, 3.20000005)
p35.CFrame = CFrame.new(-70.3000259, 1.89999962, -2.4000001, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p35.BackSurface = 10
p35.BottomSurface = 10
p35.FrontSurface = 10
p35.LeftSurface = 10
p35.RightSurface = 10
p35.TopSurface = 10
p36 = new("Part", m2)
p36.BrickColor = BrickColor.new("Dark stone grey")
p36.Material = "SmoothPlastic"
p36.FormFactor = 3
p36.Size = Vector3.new(0.200000003, 1.39999998, 2.80000019)
p36.CFrame = CFrame.new(-70.3000259, 2.08612967, -2.02450442, 1, 0, 0, 0, 0.965925813, 0.258819044, 0, -0.258819044, 0.965925813)
p36.BackSurface = 10
p36.BottomSurface = 10
p36.FrontSurface = 10
p36.LeftSurface = 10
p36.RightSurface = 10
p36.TopSurface = 10
p37 = new("Part", m2)
p37.BrickColor = BrickColor.new("Medium stone grey")
p37.Material = "SmoothPlastic"
p37.FormFactor = 3
p37.Size = Vector3.new(1.79999995, 0.400000006, 4)
p37.CFrame = CFrame.new(-70.3000259, 1.19999993, -2, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p37.BackSurface = 10
p37.BottomSurface = 10
p37.FrontSurface = 10
p37.LeftSurface = 10
p37.RightSurface = 10
p37.TopSurface = 10
p38 = new("Part", m2)
p38.BrickColor = BrickColor.new("White")
p38.Material = "SmoothPlastic"
p38.Reflectance = 0.5
p38.FormFactor = 3
p38.Size = Vector3.new(1.79999995, 0.210000003, 4)
p38.CFrame = CFrame.new(-70.3000259, 1.0999999, -2, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p38.BackSurface = 10
p38.BottomSurface = 10
p38.FrontSurface = 10
p38.LeftSurface = 10
p38.RightSurface = 10
p38.TopSurface = 10
b14 = new("BlockMesh", p38)
b14.Name = "Mesh"
b14.Scale = Vector3.new(1.10000002, 1, 0.899999976)
p39 = new("WedgePart", m2)
p39.BrickColor = BrickColor.new("Institutional white")
p39.Material = "SmoothPlastic"
p39.Name = "Wedge"
p39.FormFactor = 3
p39.Size = Vector3.new(1.79999995, 1.5, 1.20000005)
p39.CFrame = CFrame.new(-70.3000259, 1.99999988, -1.75, -1, 8.98468642e-008, 4.68792827e-008, -4.68792862e-008, -2.98022584e-008, -1, -8.98468571e-008, -1, 2.98022638e-008)
p39.BackSurface = 10
p39.BottomSurface = 10
p39.FrontSurface = 10
p39.LeftSurface = 10
p39.RightSurface = 10
p39.TopSurface = 10
p40 = new("WedgePart", m2)
p40.BrickColor = BrickColor.new("Institutional white")
p40.Material = "SmoothPlastic"
p40.Name = "Wedge"
p40.FormFactor = 3
p40.Size = Vector3.new(1.79999995, 1.79999995, 1.00000012)
p40.CFrame = CFrame.new(-70.3000183, 2.29999948, -1.49999976, 0.999998927, 3.44938211e-009, -2.31517916e-010, 4.31985789e-008, 0.999999344, -2.98023117e-008, 2.31518388e-010, 5.96046235e-008, 0.999999344)
p40.BackSurface = 10
p40.BottomSurface = 10
p40.FrontSurface = 10
p40.LeftSurface = 10
p40.RightSurface = 10
p40.TopSurface = 10
p41 = new("Part", m2)
p41.BrickColor = BrickColor.new("Black")
p41.Material = "SmoothPlastic"
p41.FormFactor = 3
p41.Size = Vector3.new(0.600000024, 0.200000003, 0.850000083)
p41.CFrame = CFrame.new(-70.3000259, 2.94887185, -1.44207752, 1, 0, 0, 0, 0.965925574, 0.258818984, 0, -0.258818984, 0.965925574)
p41.BackSurface = 10
p41.BottomSurface = 10
p41.FrontSurface = 10
p41.LeftSurface = 10
p41.RightSurface = 10
p41.TopSurface = 10
p42 = new("WedgePart", m2)
p42.BrickColor = BrickColor.new("Medium stone grey")
p42.Material = "SmoothPlastic"
p42.Name = "Wedge"
p42.FormFactor = 3
p42.Size = Vector3.new(0.200000003, 0.399999976, 0.799999952)
p42.CFrame = CFrame.new(-71.4000244, 1.29999983, -0.799999714, 3.41726647e-013, -1, 4.76835822e-007, 1, 3.41060513e-013, -1.30897582e-009, 1.30897582e-009, 4.76835822e-007, 1)
p42.BackSurface = 10
p42.BottomSurface = 10
p42.FrontSurface = 10
p42.LeftSurface = 10
p42.RightSurface = 10
p42.TopSurface = 10
p43 = new("Part", m2)
p43.BrickColor = BrickColor.new("Institutional white")
p43.Material = "SmoothPlastic"
p43.FormFactor = 3
p43.Size = Vector3.new(1.79999995, 2, 0.600000083)
p43.CFrame = CFrame.new(-70.3000259, 2.29946756, -1.05553186, 1, 0, 0, 0, 0.965925813, -0.258819044, 0, 0.258819044, 0.965925813)
p43.BackSurface = 10
p43.BottomSurface = 10
p43.FrontSurface = 10
p43.LeftSurface = 10
p43.RightSurface = 10
p43.TopSurface = 10
p44 = new("WedgePart", m2)
p44.BrickColor = BrickColor.new("Medium stone grey")
p44.Material = "SmoothPlastic"
p44.Name = "Wedge"
p44.FormFactor = 3
p44.Size = Vector3.new(0.200000003, 0.399999976, 0.799999952)
p44.CFrame = CFrame.new(-69.1999817, 1.29999602, -0.800000191, -3.41060513e-013, 1, -4.76835822e-007, -1, -3.41060513e-013, 1.30920319e-009, 1.30920319e-009, 4.76835822e-007, 1)
p44.BackSurface = 10
p44.BottomSurface = 10
p44.FrontSurface = 10
p44.LeftSurface = 10
p44.RightSurface = 10
p44.TopSurface = 10
p45 = new("Part", m2)
p45.BrickColor = BrickColor.new("White")
p45.Material = "SmoothPlastic"
p45.FormFactor = 3
p45.Size = Vector3.new(0.600000024, 0.399999976, 0.50000006)
p45.CFrame = CFrame.new(-70.7500229, 1.54644656, -3.71213222, 0, 0, 1, -0.707106769, 0.707106709, 0, -0.707106709, -0.707106769, 0)
p45.BackSurface = 10
p45.BottomSurface = 10
p45.FrontSurface = 10
p45.LeftSurface = 10
p45.RightSurface = 10
p45.TopSurface = 10
p46 = new("Part", m3)
p46.BrickColor = BrickColor.new("White")
p46.Material = "SmoothPlastic"
p46.FormFactor = 3
p46.Size = Vector3.new(0.200000003, 0.200000003, 0.50000006)
p46.CFrame = CFrame.new(-70.7500229, 1.89999998, -3.21715736, 0, 0, 1, -0.707106769, 0.707106709, 0, -0.707106709, -0.707106769, 0)
p46.BackSurface = 10
p46.BottomSurface = 10
p46.FrontSurface = 10
p46.LeftSurface = 10
p46.RightSurface = 10
p46.TopSurface = 10
b15 = new("BlockMesh", p46)
b15.Name = "Mesh"
b15.Offset = Vector3.new(0.150000006, 0, 0)
p47 = new("Part", m3)
p47.BrickColor = BrickColor.new("White")
p47.Material = "SmoothPlastic"
p47.FormFactor = 3
p47.Size = Vector3.new(0.200000003, 0.200000003, 0.50000006)
p47.CFrame = CFrame.new(-69.8499985, 2.18284273, -3.5, 0, 0, 1, -0.707106769, 0.707106709, 0, -0.707106709, -0.707106769, 0)
p47.BackSurface = 10
p47.BottomSurface = 10
p47.FrontSurface = 10
p47.LeftSurface = 10
p47.RightSurface = 10
p47.TopSurface = 10
b16 = new("BlockMesh", p47)
b16.Name = "Mesh"
b16.Offset = Vector3.new(0.150000006, 0, 0)
p48 = new("Part", m3)
p48.BrickColor = BrickColor.new("White")
p48.Material = "SmoothPlastic"
p48.FormFactor = 3
p48.Size = Vector3.new(0.200000003, 0.200000003, 0.50000006)
p48.CFrame = CFrame.new(-70.7500229, 2.18284273, -3.5, 0, 0, 1, -0.707106769, 0.707106709, 0, -0.707106709, -0.707106769, 0)
p48.BackSurface = 10
p48.BottomSurface = 10
p48.FrontSurface = 10
p48.LeftSurface = 10
p48.RightSurface = 10
p48.TopSurface = 10
b17 = new("BlockMesh", p48)
b17.Name = "Mesh"
b17.Offset = Vector3.new(0.150000006, 0, 0)
p49 = new("Part", m3)
p49.BrickColor = BrickColor.new("White")
p49.Material = "SmoothPlastic"
p49.FormFactor = 3
p49.Size = Vector3.new(0.200000003, 0.200000003, 0.50000006)
p49.CFrame = CFrame.new(-69.8499985, 1.89999986, -3.21715689, 0, 0, 1, -0.707106769, 0.707106709, 0, -0.707106709, -0.707106769, 0)
p49.BackSurface = 10
p49.BottomSurface = 10
p49.FrontSurface = 10
p49.LeftSurface = 10
p49.RightSurface = 10
p49.TopSurface = 10
b18 = new("BlockMesh", p49)
b18.Name = "Mesh"
b18.Offset = Vector3.new(0.150000006, 0, 0)
p50 = new("Part", m3)
p50.BrickColor = BrickColor.new("White")
p50.Material = "SmoothPlastic"
p50.FormFactor = 3
p50.Size = Vector3.new(0.200000003, 1, 0.700000048)
p50.CFrame = CFrame.new(-70.7500229, 1.89999998, -3.50000024, 0, 0, 1, -0.707106769, 0.707106709, 0, -0.707106709, -0.707106769, 0)
p50.BackSurface = 10
p50.BottomSurface = 10
p50.FrontSurface = 10
p50.LeftSurface = 10
p50.RightSurface = 10
p50.TopSurface = 10
p51 = new("Part", m3)
p51.BrickColor = BrickColor.new("White")
p51.Material = "SmoothPlastic"
p51.FormFactor = 3
p51.Size = Vector3.new(0.200000003, 1, 0.700000048)
p51.CFrame = CFrame.new(-69.8499985, 1.89999998, -3.5, 0, 0, 1, -0.707106769, 0.707106709, 0, -0.707106709, -0.707106769, 0)
p51.BackSurface = 10
p51.BottomSurface = 10
p51.FrontSurface = 10
p51.LeftSurface = 10
p51.RightSurface = 10
p51.TopSurface = 10
p52 = new("WedgePart", m4)
p52.BrickColor = BrickColor.new("Medium stone grey")
p52.Material = "SmoothPlastic"
p52.Name = "Wedge"
p52.FormFactor = 3
p52.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p52.CFrame = CFrame.new(-69.8000259, 3.49999952, 1.70000005, 7.61512897e-009, 0.999998808, -3.24887246e-008, 5.96045027e-008, -2.88746271e-008, -0.999997318, -0.99999851, 7.61512275e-009, -5.96045737e-008)
p52.BackSurface = 10
p52.BottomSurface = 10
p52.FrontSurface = 10
p52.LeftSurface = 10
p52.RightSurface = 10
p52.TopSurface = 10
p53 = new("WedgePart", m4)
p53.BrickColor = BrickColor.new("Medium stone grey")
p53.Material = "SmoothPlastic"
p53.Name = "Wedge"
p53.FormFactor = 3
p53.Size = Vector3.new(0.200000003, 0.400000006, 1.19999993)
p53.CFrame = CFrame.new(-69.2000275, 2.79999828, 1.69999981, 7.61512897e-009, 0.999998808, -3.24887246e-008, 5.96045027e-008, -2.88746271e-008, -0.999997318, -0.99999851, 7.61512275e-009, -5.96045737e-008)
p53.BackSurface = 10
p53.BottomSurface = 10
p53.FrontSurface = 10
p53.LeftSurface = 10
p53.RightSurface = 10
p53.TopSurface = 10
p54 = new("Part", m4)
p54.BrickColor = BrickColor.new("Really black")
p54.Material = "SmoothPlastic"
p54.FormFactor = 3
p54.Size = Vector3.new(1, 0.200000003, 1)
p54.CFrame = CFrame.new(-70.3000031, 2.24118161, 2.26592588, 0.999998331, -6.15425222e-009, -8.94069672e-008, 8.94069672e-008, 0.258818626, 0.965924501, 1.04308128e-007, -0.965924084, 0.258818716)
p54.BackSurface = 10
p54.BottomSurface = 10
p54.FrontSurface = 10
p54.LeftSurface = 10
p54.RightSurface = 10
p54.TopSurface = 10
b19 = new("CylinderMesh", p54)
b19.Name = "Mesh"
b19.Offset = Vector3.new(0, 0.189999998, 0)
b19.Scale = Vector3.new(0.800000012, 1, 0.800000012)
p55 = new("Part", m4)
p55.BrickColor = BrickColor.new("Black")
p55.Material = "SmoothPlastic"
p55.Name = "SmokeDispenser"
p55.FormFactor = 3
p55.Size = Vector3.new(0.400000036, 0.200000018, 0.400000036)
p55.CFrame = CFrame.new(-70.3000107, 1.85493112, 1.80191004, 0.999998331, -9.46739078e-008, 6.28408685e-008, 3.76498406e-008, -0.258818597, -0.965924382, 1.94824821e-007, 0.965924025, -0.258818746)
p55.BackSurface = 10
p55.BottomSurface = 10
p55.FrontSurface = 10
p55.LeftSurface = 10
p55.RightSurface = 10
p55.TopSurface = 10
Smoke = new("Smoke", p55)
Smoke.RiseVelocity = 5
p56 = new("WedgePart", m4)
p56.BrickColor = BrickColor.new("Medium stone grey")
p56.Material = "SmoothPlastic"
p56.Name = "Wedge"
p56.FormFactor = 3
p56.Size = Vector3.new(0.200000003, 1, 0.600000024)
p56.CFrame = CFrame.new(-69.6999969, 2.49999714, 1.69999969, -3.74175002e-008, -8.34472871e-007, 1, -1.0425353e-007, -1, -8.34472928e-007, 1, -1.04253559e-007, 3.74174114e-008)
p56.BackSurface = 10
p56.BottomSurface = 10
p56.FrontSurface = 10
p56.LeftSurface = 10
p56.RightSurface = 10
p56.TopSurface = 10
p57 = new("WedgePart", m4)
p57.BrickColor = BrickColor.new("Medium stone grey")
p57.Material = "SmoothPlastic"
p57.Name = "Wedge"
p57.FormFactor = 3
p57.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p57.CFrame = CFrame.new(-70.8000259, 3.49999976, 1.69999981, -7.61514318e-009, -1, 2.52606362e-008, 5.96046448e-008, -2.88746982e-008, -0.999999702, 0.999999702, -7.61513697e-009, 5.96046448e-008)
p57.BackSurface = 10
p57.BottomSurface = 10
p57.FrontSurface = 10
p57.LeftSurface = 10
p57.RightSurface = 10
p57.TopSurface = 10
p58 = new("WedgePart", m4)
p58.BrickColor = BrickColor.new("Medium stone grey")
p58.Material = "SmoothPlastic"
p58.Name = "Wedge"
p58.FormFactor = 3
p58.Size = Vector3.new(0.200000003, 0.600000024, 1)
p58.CFrame = CFrame.new(-70.900032, 2.50000024, 1.69999969, 1.01942945e-007, 0.999999702, 3.88858332e-008, -8.42491517e-008, -3.88858332e-008, 0.999999702, 0.999999404, -1.01942902e-007, 8.42490948e-008)
p58.BackSurface = 10
p58.BottomSurface = 10
p58.FrontSurface = 10
p58.LeftSurface = 10
p58.RightSurface = 10
p58.TopSurface = 10
p59 = new("Part", m4)
p59.BrickColor = BrickColor.new("Medium stone grey")
p59.Material = "SmoothPlastic"
p59.FormFactor = 3
p59.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p59.CFrame = CFrame.new(-70.3000259, 3.49999976, 1.69999993, 0, 0, 1, 0, 1, -0, -1, 0, 0)
p59.BackSurface = 10
p59.BottomSurface = 10
p59.FrontSurface = 10
p59.LeftSurface = 10
p59.RightSurface = 10
p59.TopSurface = 10
p60 = new("Seat", m4)
p60.BrickColor = BrickColor.new("Medium stone grey")
p60.Material = "SmoothPlastic"
p60.FormFactor = 3
p60.Size = Vector3.new(1.79999995, 0.400000006, 0.200000003)
p60.CFrame = CFrame.new(-70.3000259, 3.20000005, 1.69999993, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p60.BackSurface = 10
p60.BottomSurface = 10
p60.FrontSurface = 10
p60.LeftSurface = 10
p60.RightSurface = 10
p60.TopSurface = 10
p61 = new("WedgePart", m4)
p61.BrickColor = BrickColor.new("Medium stone grey")
p61.Material = "SmoothPlastic"
p61.Name = "Wedge"
p61.FormFactor = 3
p61.Size = Vector3.new(0.200000003, 0.400000006, 1.19999993)
p61.CFrame = CFrame.new(-71.4000244, 2.79999995, 1.69999981, -7.61514318e-009, -1, 2.52606362e-008, 5.96046448e-008, -2.88746982e-008, -0.999999702, 0.999999702, -7.61513697e-009, 5.96046448e-008)
p61.BackSurface = 10
p61.BottomSurface = 10
p61.FrontSurface = 10
p61.LeftSurface = 10
p61.RightSurface = 10
p61.TopSurface = 10
p62 = new("Part", m4)
p62.BrickColor = BrickColor.new("Light stone grey")
p62.Material = "SmoothPlastic"
p62.FormFactor = 3
p62.Size = Vector3.new(0.600000024, 1.19999993, 0.600000024)
p62.CFrame = CFrame.new(-69.6999969, 1.99999833, 1.29999781, 0.70710516, -0.499998629, -0.500000179, 0.707106233, 0.50000006, 0.499998003, 2.01977264e-006, -0.70710516, 0.707105756)
p62.BackSurface = 10
p62.BottomSurface = 10
p62.FrontSurface = 10
p62.LeftSurface = 10
p62.RightSurface = 10
p62.TopSurface = 10
b20 = new("CylinderMesh", p62)
b20.Name = "Mesh"
p63 = new("Part", m4)
p63.BrickColor = BrickColor.new("Really black")
p63.Material = "SmoothPlastic"
p63.FormFactor = 3
p63.Size = Vector3.new(0.600000024, 0.200000003, 0.600000024)
p63.CFrame = CFrame.new(-71.1500015, 1.64999378, 1.79497123, 0.499998689, 0.499993622, -0.70710665, 0.499993473, 0.500007987, 0.707100332, 0.707108021, -0.707100868, 9.87303247e-006)
p63.BackSurface = 10
p63.BottomSurface = 10
p63.FrontSurface = 10
p63.LeftSurface = 10
p63.RightSurface = 10
p63.TopSurface = 10
b21 = new("CylinderMesh", p63)
b21.Name = "Mesh"
b21.Offset = Vector3.new(0, 0.189999998, 0)
b21.Scale = Vector3.new(0.800000012, 1, 0.800000012)
p64 = new("Part", m4)
p64.BrickColor = BrickColor.new("Light stone grey")
p64.Material = "SmoothPlastic"
p64.FormFactor = 3
p64.Size = Vector3.new(0.600000024, 1.19999993, 0.600000024)
p64.CFrame = CFrame.new(-70.8000031, 2, 1.29999995, 0.707110167, 0.499995172, 0.5, -0.707103372, 0.500009596, 0.499995172, -9.62615013e-006, -0.707103372, 0.707110167)
p64.BackSurface = 10
p64.BottomSurface = 10
p64.FrontSurface = 10
p64.LeftSurface = 10
p64.RightSurface = 10
p64.TopSurface = 10
b22 = new("CylinderMesh", p64)
b22.Name = "Mesh"
p65 = new("Part", m4)
p65.BrickColor = BrickColor.new("Really black")
p65.Material = "SmoothPlastic"
p65.FormFactor = 3
p65.Size = Vector3.new(0.600000024, 0.200000003, 0.600000024)
p65.CFrame = CFrame.new(-69.3499985, 1.64999819, 1.79497147, 0.707105339, -0.499998659, -0.50000006, 0.707105994, 0.50000006, 0.499998122, 1.90734863e-006, -0.707105279, 0.707105756)
p65.BackSurface = 10
p65.BottomSurface = 10
p65.FrontSurface = 10
p65.LeftSurface = 10
p65.RightSurface = 10
p65.TopSurface = 10
b23 = new("CylinderMesh", p65)
b23.Name = "Mesh"
b23.Offset = Vector3.new(0, 0.189999998, 0)
b23.Scale = Vector3.new(0.800000012, 1, 0.800000012)
p66 = new("Part", m4)
p66.BrickColor = BrickColor.new("Light stone grey")
p66.Material = "SmoothPlastic"
p66.FormFactor = 3
p66.Size = Vector3.new(1, 1.79999995, 1)
p66.CFrame = CFrame.new(-70.3000031, 2.5, 1.29999995, 1, 0, 0, 0, -0.258819014, -0.965925694, 0, 0.965925694, -0.258819014)
p66.BackSurface = 10
p66.BottomSurface = 10
p66.FrontSurface = 10
p66.LeftSurface = 10
p66.RightSurface = 10
p66.TopSurface = 10
b24 = new("CylinderMesh", p66)
b24.Name = "Mesh"
p67 = new("WedgePart", m4)
p67.BrickColor = BrickColor.new("Medium stone grey")
p67.Material = "SmoothPlastic"
p67.Name = "Wedge"
p67.FormFactor = 3
p67.Size = Vector3.new(1.79999995, 0.200000003, 0.799999893)
p67.CFrame = CFrame.new(-69.8000259, 3.29999948, 0.700003684, -1.3927598e-009, 1.37461228e-007, -0.999995351, 4.02327558e-008, 0.999992132, 9.08137707e-008, 0.999995768, -1.04312008e-008, -1.39276302e-009)
p67.BackSurface = 10
p67.BottomSurface = 10
p67.FrontSurface = 10
p67.LeftSurface = 10
p67.RightSurface = 10
p67.TopSurface = 10
p68 = new("Part", m4)
p68.BrickColor = BrickColor.new("Light stone grey")
p68.Material = "SmoothPlastic"
p68.FormFactor = 3
p68.Size = Vector3.new(0.400000036, 1.39999986, 0.200000003)
p68.CFrame = CFrame.new(-70.3000031, 1.66868114, 1.3378948, 0.999998331, -6.15425222e-009, -8.94069672e-008, 8.94069672e-008, 0.258818626, 0.965924501, 1.04308128e-007, -0.965924084, 0.258818716)
p68.BackSurface = 10
p68.BottomSurface = 10
p68.FrontSurface = 10
p68.LeftSurface = 10
p68.RightSurface = 10
p68.TopSurface = 10
p69 = new("Part", m4)
p69.BrickColor = BrickColor.new("Light stone grey")
p69.Material = "SmoothPlastic"
p69.FormFactor = 3
p69.Size = Vector3.new(0.200000003, 1.39999986, 0.600000024)
p69.CFrame = CFrame.new(-70.0999985, 1.87199998, 1.33899999, 0.965924203, 3.48184663e-008, 0.258818537, -0.249999583, 0.258818626, 0.933011413, -0.0669870749, -0.965924084, 0.249999717)
p69.BackSurface = 10
p69.BottomSurface = 10
p69.FrontSurface = 10
p69.LeftSurface = 10
p69.RightSurface = 10
p69.TopSurface = 10
p70 = new("Part", m4)
p70.BrickColor = BrickColor.new("Light stone grey")
p70.Material = "SmoothPlastic"
p70.FormFactor = 3
p70.Size = Vector3.new(0.200000003, 1.39999986, 0.600000024)
p70.CFrame = CFrame.new(-70.5, 1.87199998, 1.33899999, 0.965924144, -1.15425593e-007, -0.258818656, 0.249999747, 0.258818656, 0.933011293, 0.0669872239, -0.965924084, 0.249999702)
p70.BackSurface = 10
p70.BottomSurface = 10
p70.FrontSurface = 10
p70.LeftSurface = 10
p70.RightSurface = 10
p70.TopSurface = 10
p71 = new("WedgePart", m4)
p71.BrickColor = BrickColor.new("Medium stone grey")
p71.Material = "SmoothPlastic"
p71.Name = "Wedge"
p71.FormFactor = 3
p71.Size = Vector3.new(1.79999995, 0.200000003, 0.999999881)
p71.CFrame = CFrame.new(-69.2999954, 2.69999695, 0.699999988, 7.61514318e-009, 1, -2.52606362e-008, 5.96046448e-008, -2.88746982e-008, -0.999999702, -0.999999702, 7.61513697e-009, -5.96046448e-008)
p71.BackSurface = 10
p71.BottomSurface = 10
p71.FrontSurface = 10
p71.LeftSurface = 10
p71.RightSurface = 10
p71.TopSurface = 10
p72 = new("WedgePart", m4)
p72.BrickColor = BrickColor.new("Medium stone grey")
p72.Material = "SmoothPlastic"
p72.Name = "Wedge"
p72.FormFactor = 3
p72.Size = Vector3.new(1.79999995, 0.200000003, 0.799999893)
p72.CFrame = CFrame.new(-70.8000183, 3.29999995, 0.699998677, 1.39279588e-009, 7.78571234e-008, 0.999998033, 1.59443047e-007, 0.999997497, -3.1209364e-008, -0.99999845, 1.8924537e-007, 1.3927921e-009)
p72.BackSurface = 10
p72.BottomSurface = 10
p72.FrontSurface = 10
p72.LeftSurface = 10
p72.RightSurface = 10
p72.TopSurface = 10
p73 = new("Part", m4)
p73.BrickColor = BrickColor.new("Medium stone grey")
p73.Material = "SmoothPlastic"
p73.FormFactor = 3
p73.Size = Vector3.new(1.79999995, 0.200000003, 0.200000003)
p73.CFrame = CFrame.new(-70.3000259, 3.30000019, 0.699999928, 0, 0, 1, 0, 1, -0, -1, 0, 0)
p73.BackSurface = 10
p73.BottomSurface = 10
p73.FrontSurface = 10
p73.LeftSurface = 10
p73.RightSurface = 10
p73.TopSurface = 10
p74 = new("WedgePart", m4)
p74.BrickColor = BrickColor.new("Medium stone grey")
p74.Material = "SmoothPlastic"
p74.Name = "Wedge"
p74.FormFactor = 3
p74.Size = Vector3.new(0.400000006, 2.20000005, 0.799999952)
p74.CFrame = CFrame.new(-69.1999817, 1.59999597, 0.699998975, -0.999999285, -1.47023982e-009, 5.05212441e-008, 5.05212299e-008, 8.94068108e-008, 0.999998569, -1.4702447e-009, 0.999999285, -8.94069316e-008)
p74.BackSurface = 10
p74.BottomSurface = 10
p74.FrontSurface = 10
p74.LeftSurface = 10
p74.RightSurface = 10
p74.TopSurface = 10
p75 = new("Part", m4)
p75.BrickColor = BrickColor.new("Medium stone grey")
p75.Material = "SmoothPlastic"
p75.FormFactor = 3
p75.Size = Vector3.new(0.400000006, 2.20000005, 0.200000018)
p75.CFrame = CFrame.new(-69.1999893, 2.09999514, 0.69999969, 0.99999994, -1.04632987e-008, -2.52606451e-008, -2.52606469e-008, -2.98023224e-008, -0.999999881, 1.04632969e-008, 0.999999881, -2.98023224e-008)
p75.BackSurface = 10
p75.BottomSurface = 10
p75.FrontSurface = 10
p75.LeftSurface = 10
p75.RightSurface = 10
p75.TopSurface = 10
p76 = new("WedgePart", m4)
p76.BrickColor = BrickColor.new("Medium stone grey")
p76.Material = "SmoothPlastic"
p76.Name = "Wedge"
p76.FormFactor = 3
p76.Size = Vector3.new(0.400000006, 2.20000005, 0.799999952)
p76.CFrame = CFrame.new(-71.4000244, 1.60000086, 0.700000882, -0.999999285, -1.47023982e-009, 5.05212441e-008, 5.05212299e-008, 8.94068108e-008, 0.999998569, -1.4702447e-009, 0.999999285, -8.94069316e-008)
p76.BackSurface = 10
p76.BottomSurface = 10
p76.FrontSurface = 10
p76.LeftSurface = 10
p76.RightSurface = 10
p76.TopSurface = 10
p77 = new("Part", m4)
p77.BrickColor = BrickColor.new("Medium stone grey")
p77.Material = "SmoothPlastic"
p77.FormFactor = 3
p77.Size = Vector3.new(0.400000006, 2.20000005, 0.200000018)
p77.CFrame = CFrame.new(-71.4000244, 2.10000038, 0.700000405, 0.99999994, -1.04632987e-008, -2.52606451e-008, -2.52606469e-008, -2.98023224e-008, -0.999999881, 1.04632969e-008, 0.999999881, -2.98023224e-008)
p77.BackSurface = 10
p77.BottomSurface = 10
p77.FrontSurface = 10
p77.LeftSurface = 10
p77.RightSurface = 10
p77.TopSurface = 10
p78 = new("WedgePart", m4)
p78.BrickColor = BrickColor.new("Medium stone grey")
p78.Material = "SmoothPlastic"
p78.Name = "Wedge"
p78.FormFactor = 3
p78.Size = Vector3.new(1.79999995, 0.200000003, 0.999999881)
p78.CFrame = CFrame.new(-71.3000259, 2.70000005, 0.699999928, -7.61514318e-009, -1, 2.52606362e-008, 5.96046448e-008, -2.88746982e-008, -0.999999702, 0.999999702, -7.61513697e-009, 5.96046448e-008)
p78.BackSurface = 10
p78.BottomSurface = 10
p78.FrontSurface = 10
p78.LeftSurface = 10
p78.RightSurface = 10
p78.TopSurface = 10
p79 = new("Part", m4)
p79.BrickColor = BrickColor.new("Medium stone grey")
p79.Material = "SmoothPlastic"
p79.FormFactor = 3
p79.Size = Vector3.new(1.79999995, 2, 0.200000018)
p79.CFrame = CFrame.new(-70.3000259, 1.79999995, 0.500000179, 1, 0, 0, 0, 0.70710659, -0.707106948, 0, 0.707106948, 0.70710659)
p79.BackSurface = 10
p79.BottomSurface = 10
p79.FrontSurface = 10
p79.LeftSurface = 10
p79.RightSurface = 10
p79.TopSurface = 10
p80 = new("Part", m4)
p80.BrickColor = BrickColor.new("Institutional white")
p80.Material = "SmoothPlastic"
p80.FormFactor = 3
p80.Size = Vector3.new(0.200000003, 1.79999995, 0.200000003)
p80.CFrame = CFrame.new(-69.4999847, 2.09999967, -0.100000001, 1, 0, 0, 0, 0, -1, 0, 1, 0)
p80.BackSurface = 10
p80.BottomSurface = 10
p80.FrontSurface = 10
p80.LeftSurface = 10
p80.RightSurface = 10
p80.TopSurface = 10
p81 = new("WedgePart", m4)
p81.BrickColor = BrickColor.new("Medium stone grey")
p81.Material = "SmoothPlastic"
p81.Name = "Wedge"
p81.FormFactor = 3
p81.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p81.CFrame = CFrame.new(-70.8000412, 3.5, -0.300000012, -7.61514318e-009, -1, 2.52606362e-008, 5.96046448e-008, -2.88746982e-008, -0.999999702, 0.999999702, -7.61513697e-009, 5.96046448e-008)
p81.BackSurface = 10
p81.BottomSurface = 10
p81.FrontSurface = 10
p81.LeftSurface = 10
p81.RightSurface = 10
p81.TopSurface = 10
p82 = new("Part", m4)
p82.BrickColor = BrickColor.new("Medium stone grey")
p82.Material = "SmoothPlastic"
p82.FormFactor = 3
p82.Size = Vector3.new(1.79999995, 0.200000003, 0.200000003)
p82.CFrame = CFrame.new(-70.3000412, 3.29999995, -0.300000012, 1, 0, 0, 0, 1, 0, 0, 0, 1)
p82.BackSurface = 10
p82.BottomSurface = 10
p82.FrontSurface = 10
p82.LeftSurface = 10
p82.RightSurface = 10
p82.TopSurface = 10
p83 = new("Part", m4)
p83.BrickColor = BrickColor.new("Medium stone grey")
p83.Material = "SmoothPlastic"
p83.FormFactor = 3
p83.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p83.CFrame = CFrame.new(-70.3000412, 3.49999976, -0.300000042, 0, 0, 1, 0, 1, -0, -1, 0, 0)
p83.BackSurface = 10
p83.BottomSurface = 10
p83.FrontSurface = 10
p83.LeftSurface = 10
p83.RightSurface = 10
p83.TopSurface = 10
p84 = new("WedgePart", m4)
p84.BrickColor = BrickColor.new("Medium stone grey")
p84.Material = "SmoothPlastic"
p84.Name = "Wedge"
p84.FormFactor = 3
p84.Size = Vector3.new(0.200000003, 0.800000012, 0.200000003)
p84.CFrame = CFrame.new(-69.8000412, 3.49999905, -0.300000012, 7.61512897e-009, 0.999998808, -3.24887246e-008, 5.96045027e-008, -2.88746271e-008, -0.999997318, -0.99999851, 7.61512275e-009, -5.96045737e-008)
p84.BackSurface = 10
p84.BottomSurface = 10
p84.FrontSurface = 10
p84.LeftSurface = 10
p84.RightSurface = 10
p84.TopSurface = 10
p85 = new("Part", m4)
p85.BrickColor = BrickColor.new("Institutional white")
p85.Material = "SmoothPlastic"
p85.FormFactor = 3
p85.Size = Vector3.new(1.80000007, 1.5999999, 0.400000006)
p85.CFrame = CFrame.new(-70.2999954, 2.99999976, -0.199999988, 1, 0, 0, 0, 0, -1, 0, 1, 0)
p85.BackSurface = 10
p85.BottomSurface = 10
p85.FrontSurface = 10
p85.LeftSurface = 10
p85.RightSurface = 10
p85.TopSurface = 10
p86 = new("Part", m4)
p86.BrickColor = BrickColor.new("Institutional white")
p86.Material = "SmoothPlastic"
p86.FormFactor = 3
p86.Size = Vector3.new(0.200000003, 1.39999998, 0.200000003)
p86.CFrame = CFrame.new(-69.5000229, 2.5, -0.100000009, 1, 0, 0, 0, 0, -1, 0, 1, 0)
p86.BackSurface = 10
p86.BottomSurface = 10
p86.FrontSurface = 10
p86.LeftSurface = 10
p86.RightSurface = 10
p86.TopSurface = 10
p87 = new("WedgePart", m4)
p87.BrickColor = BrickColor.new("Medium stone grey")
p87.Material = "SmoothPlastic"
p87.Name = "Wedge"
p87.FormFactor = 3
p87.Size = Vector3.new(0.200000003, 0.400000006, 1.19999993)
p87.CFrame = CFrame.new(-69.1999893, 2.79999495, -0.300000072, 7.61514318e-009, 1, -2.52606362e-008, 5.96046448e-008, -2.88746982e-008, -0.999999702, -0.999999702, 7.61513697e-009, -5.96046448e-008)
p87.BackSurface = 10
p87.BottomSurface = 10
p87.FrontSurface = 10
p87.LeftSurface = 10
p87.RightSurface = 10
p87.TopSurface = 10
p88 = new("Part", m4)
p88.BrickColor = BrickColor.new("Institutional white")
p88.Material = "SmoothPlastic"
p88.FormFactor = 3
p88.Size = Vector3.new(0.200000003, 1.79999995, 0.200000003)
p88.CFrame = CFrame.new(-71.0999985, 2.49999976, -0.300000012, 1, 0, 0, 0, 0, -1, 0, 1, 0)
p88.BackSurface = 10
p88.BottomSurface = 10
p88.FrontSurface = 10
p88.LeftSurface = 10
p88.RightSurface = 10
p88.TopSurface = 10
p89 = new("Part", m4)
p89.BrickColor = BrickColor.new("Institutional white")
p89.Material = "SmoothPlastic"
p89.FormFactor = 3
p89.Size = Vector3.new(0.200000003, 1.79999995, 0.200000003)
p89.CFrame = CFrame.new(-71.0999985, 2.10000014, -0.100000024, 1, 0, 0, 0, 0, -1, 0, 1, 0)
p89.BackSurface = 10
p89.BottomSurface = 10
p89.FrontSurface = 10
p89.LeftSurface = 10
p89.RightSurface = 10
p89.TopSurface = 10
p90 = new("WedgePart", m4)
p90.BrickColor = BrickColor.new("Medium stone grey")
p90.Material = "SmoothPlastic"
p90.Name = "Wedge"
p90.FormFactor = 3
p90.Size = Vector3.new(0.200000003, 0.400000006, 1.19999993)
p90.CFrame = CFrame.new(-71.4000244, 2.80000019, -0.299999833, -7.61514318e-009, -1, 2.52606362e-008, 5.96046448e-008, -2.88746982e-008, -0.999999702, 0.999999702, -7.61513697e-009, 5.96046448e-008)
p90.BackSurface = 10
p90.BottomSurface = 10
p90.FrontSurface = 10
p90.LeftSurface = 10
p90.RightSurface = 10
p90.TopSurface = 10
p91 = new("Part", m4)
p91.BrickColor = BrickColor.new("Institutional white")
p91.Material = "SmoothPlastic"
p91.FormFactor = 3
p91.Size = Vector3.new(0.200000003, 1.39999998, 0.200000003)
p91.CFrame = CFrame.new(-71.0999985, 1.69999981, -0.299999982, 1, 0, 0, 0, 0, -1, 0, 1, 0)
p91.BackSurface = 10
p91.BottomSurface = 10
p91.FrontSurface = 10
p91.LeftSurface = 10
p91.RightSurface = 10
p91.TopSurface = 10
p92 = new("Part", m4)
p92.BrickColor = BrickColor.new("Institutional white")
p92.Material = "SmoothPlastic"
p92.FormFactor = 3
p92.Size = Vector3.new(0.200000003, 1.39999998, 0.200000003)
p92.CFrame = CFrame.new(-69.5000229, 1.70000005, -0.300000012, 1, 0, 0, 0, 0, -1, 0, 1, 0)
p92.BackSurface = 10
p92.BottomSurface = 10
p92.FrontSurface = 10
p92.LeftSurface = 10
p92.RightSurface = 10
p92.TopSurface = 10

p1 = Instance.new("Part", m1)
p1.BrickColor = BrickColor.new("Institutional white")
p1.Material = Enum.Material.Neon
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.800000012, 0.200000003, 0.600000024)
p1.CFrame = CFrame.new(-70.3000031, 1.80000007, -6.30000687, -2.40267752e-007, -2.98023224e-008, -0.999999642, 1, 6.37415951e-007, -2.40267809e-007, 6.37416065e-007, -0.999999642, 2.98023224e-008)
b1 = Instance.new("SpecialMesh", p1)
b1.MeshType = Enum.MeshType.Sphere
b1.Name = "Mesh"
b1.Scale = Vector3.new(1, 2, 1.25)
x1 = Instance.new("SpotLight", p1)
x1.Angle = 60
x1.Range = 60
x1.Face = "Top";
x1.Enabled = false;
x2 = Instance.new("PointLight", p1)
x2.Enabled = false;

m.Parent = char
m:MakeJoints()

WeldChildren(m);

Smoke.Enabled = false;
Seat.CFrame = torso.CFrame * CFrame.new(0, -1, 0)

WeldP(rootpart, Seat, CFrame.new(0, -1, -.75));

torso.CFrame = torso.CFrame * CFrame.new(0, 1, 0);
humanoid.Changed:connect(function()
    if (humanoid.Jump) then
        humanoid.Jump = false;
    end
end)


local BodyPos = new("BodyPosition", rootpart);
BodyPos.position = Vector3.new(0, 5, 0);
BodyPos.maxForce = Vector3.new(0, 7e5, 0)
BodyPos.D = 120;

local BodyGyro = new("BodyGyro", rootpart)
BodyGyro.cframe = rootpart.CFrame;
BodyGyro.maxTorque = Vector3.new(7e5, 7e5, 7e5);

local BodyVelo = new("BodyVelocity", rootpart);
BodyVelo.maxForce = Vector3.new(7e5, 0, 7e5);
BodyVelo.velocity = Vector3.new();

local TORQUE, SPEED, ROTSPEED, CHARGE = 0, 0, 0, 0;
local MAXTORQUE = 1;
local MAXSPEED = 120;

local REPAIRMODE = false;




KEY_HOLD = {}

local MOUSE_DOWN;
local MOUSE_UP = true;

mouse.KeyDown:connect(function(k)
    KEY_HOLD[tostring(k):lower()] = true;

    if (k == "f") then
        x1.Enabled = not x1.Enabled
        x2.Enabled = not x2.Enabled
    end
    if (k == "h") then
        REPAIRMODE = not REPAIRMODE
    end
end)
mouse.KeyUp:connect(function(k)
    KEY_HOLD[tostring(k):lower()] = false;
end)

mouse.Button1Down:connect(function()
    MOUSE_DOWN = true;
    MOUSE_UP = false;
    end)
mouse.Button1Up:connect(function()
    MOUSE_DOWN = false;
    MOUSE_UP = true;
end)




local OnFire = new("Sound", Barrel);
OnFire.SoundId = "rbxassetid://204750963"
OnFire.Volume = .5

local OnMove = new("Sound", Seat);
OnMove.SoundId = "rbxassetid://204750963";
OnMove.Volume = 100




local Particlus = {}
for i = 1, 3 do
    local Colors = {Color3.new(1,0,0), Color3.new(1,.5,0), Color3.new(1,.9,0);}

        local Particle = new("ParticleEmitter", Smoke.Parent);
        Particle.VelocitySpread = 30;
        Particle.LightEmission = 200;
        Particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.3, 0), NumberSequenceKeypoint.new(1, 0.9, 0)})
        --Particle.Color = ColorSequence.new(Colors[i]);
        Particle.Texture = "rbxassetid://121498553";
        Particle.Rate = 100;
        Particle.Speed = NumberRange.new(15);
        Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)});
        Particle.Lifetime = NumberRange.new(2);
        Particle.Acceleration = Vector3.new(0, 10 + i*5, 0)
        --Particle.Rotation = NumberRange.new(0,90);
        table.insert(Particlus, Particle);
end



function RayC(Part, speed, target)
    coroutine.wrap(function()
        local Visual = BasePart:clone();
        Visual.FormFactor = "Custom";
        Visual.BrickColor = BrickColor.Yellow();
        Visual.Size = Vector3.new(.2, 6, .2);
        Visual.CFrame = Part.CFrame * CFrame.new(0, -1, 0);
        Visual.Anchored = true;
        Visual.CanCollide = false;
        Visual.Locked = true
        Visual.Material = "Neon";

        local shell = BasePart:clone()
            shell.Transparency = 0
            shell:ClearAllChildren()
            shell.Anchored = false
            shell.CFrame = Part.CFrame * CFrame.new(.2,0,0)
            shell.Size = Vector3.new(.2,.5,.2)
            shell.Parent = Storage
            shell.BrickColor = BrickColor.new('Bright yellow')
            shell.CanCollide = true
            Instance.new('BlockMesh', shell).Scale = Vector3.new(.2,.4,.2)
            game:service'Debris':AddItem(shell,5)
            shell.Velocity = (Part.CFrame * CFrame.Angles(math.rad(math.random(-10,10)*8), -math.rad(40), math.rad(20))).lookVector * 15


        --FIRE ANIMATION
        --
        local Particle = new("ParticleEmitter", Part);
        Particle.VelocitySpread = 30;
        Particle.LightEmission = 200;

        local Colors = {Color3.new(1,0,0), Color3.new(1,.5,0), Color3.new(1,.9,0);}

        Particle.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.1, 0), NumberSequenceKeypoint.new(1, 0.25, 0)})

        Particle.Color = ColorSequence.new(Colors[math.random(#Colors)]);
        Particle.Texture = "rbxassetid://252350680";
        Particle.Rotation = NumberRange.new(0,90);
        Particle.Rate = 100;
        Particle.Speed = NumberRange.new(15);
        Particle.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)});
        Particle.Lifetime = NumberRange.new(.1);
        coroutine.wrap(function()
            wait(.2)
            Particle.Enabled = false;
            wait(.4)
            Particle:Destroy()
        end)()



        new("SpecialMesh", Visual).MeshType = "Sphere";
        Visual.Mesh.Scale = Vector3.new(.5, 1, .5);

        local bulletpos = Visual.Position
        local bulletvelocity = (target - bulletpos).unit*speed
        local lastbulletpos = Visual.Position 
        while game:service'RunService'.Stepped:wait() do
                    lastbulletpos = bulletpos 
                    bulletpos = bulletpos + bulletvelocity
                    Visual.Parent = Storage;
                    local RayCast = Ray.new(lastbulletpos, (bulletpos - lastbulletpos))
                    local hit, hitpos, normal = workspace:FindPartOnRay(RayCast, char, false, true)
                    if (torso.Position - Visual.Position).magnitude > 2000 or Visual.Parent == nil then
                        Visual:Destroy();
                        break
                    end
                    Visual.Anchored = true
                    Visual.CFrame = CFrame.new(bulletpos, bulletpos+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0);
                    if hit then
                        if hit.Parent then
                            if hit.Parent.Parent:IsA'Model' then
                                for x,z in next, hit.Parent.Parent:children() do
                                    if z:IsA'Humanoid' then
                                        if (z.MaxHealth == math.huge) then
                                            z.Parent:breakJoints();
                                        end
                                        z:TakeDamage(math.random(8,12));
                                        Visual:Destroy();
                                        break;
                                    end
                                end
                            end
                        end
                            if hit.Parent:IsA'Model' then
                                for x,z in next, hit.Parent:children() do
                                    if z:IsA'Humanoid' then
                                        if (z.MaxHealth == math.huge) then
                                            z.Parent:breakJoints();
                                        end
                                        z.Health = z.Health - (math.random(8,12));
                                        Visual:Destroy();
                                        break;
                                    end
                                end
                            end
                        local BulletHole
                        local Dec
                            BulletHole = BasePart:clone()
                            BulletHole.Anchored = true
                            BulletHole.Transparency = 1
                            BulletHole.Size = Vector3.new(.8,.2,.8)
                            BulletHole.CFrame = CFrame.new(hitpos, hitpos+normal) * CFrame.Angles(-math.pi/2,math.rad(math.random(-90,90)*4), 0)
                            BulletHole.Parent = Storage
                            Dec = Instance.new("Decal",BulletHole)
                            Dec.Face = "Top"
                            Dec.Texture = "rbxassetid://64291977"
                            Particles.BulletholeParticles(BulletHole, hit)
                            if not hit.Anchored then
                                BulletHole.Anchored = false
                                local Bweld = Instance.new('Weld', BulletHole)
                                Bweld.Part0 = hit
                                Bweld.Part1 = BulletHole
                                Bweld.C0 = hit.CFrame:toObjectSpace(CFrame.new(hitpos, hitpos+normal)) * CFrame.Angles(-math.pi/2,math.rad(math.random(-90,90)*4),0)
                            end
                            game:service'Debris':AddItem(BulletHole, 25)
                        local sound = Instance.new('Sound', Visual)
                        if hit:IsA'BasePart' and hit.Transparency >= .1 then
                            local id = {176678459,176678487,176678351}
                            if Dec then
                                Dec.Texture = "rbxassetid://"..id[math.random(1,#id)]
                            end
                            if BulletHole then
                                Particles.BulletholeParticles(BulletHole, hit)
                                BulletHole.Size = Vector3.new(1.5,.2,1.5)
                                BulletHole.CFrame = CFrame.new(hitpos,hitpos+normal)*CFrame.new(0,0,.1)*CFrame.Angles(-math.pi/2,math.rad(math.random(-90,90)*4),0)
                                if not hit.Anchored then
                                    BulletHole.Anchored = false
                                    local Bweld = Instance.new('Weld', BulletHole)
                                    Bweld.Part0 = hit
                                    Bweld.Part1 = BulletHole
                                    Bweld.C0 = hit.CFrame:toObjectSpace(CFrame.new(hitpos, hitpos+normal)) * CFrame.Angles(-math.pi/2,math.rad(math.random(-90,90)*4),0)
                                end
                            end
                            sound.SoundId = "rbxassetid://142082167"
                        else
                            sound.SoundId = "rbxassetid://170538363"
                        end
                        sound.Pitch = 1.2+math.random()/3
                        sound.Volume = .4
                        sound:play()
                        game:service'Debris':AddItem(sound,4)
                        Visual:Destroy();
                        break
                    end
        end
    end)()
end


local db
local DB2;


game:service'RunService'.RenderStepped:connect(function()

    --//
    --// BASE VALUES
    --//
    local rscf = rsc0
    local lscf = lsc0
    local rlcf = rlc0
    local llcf = llc0
    local rjcf = rootc0
    local ncf = neckc0
    local ray = Ray.new(rootpart.Position, Vector3.new(0, -9.5 - math.sin(tick()*2)*.15, 0))
    local hitz, enz, norm = workspace:FindPartOnRay(ray, char)

    --//
    --// BODY OBJECTS
    --//
    BodyPos.D = 120;
    BodyPos.maxForce = Vector3.new(0, 7e5, 0)
    BodyGyro.maxTorque = Vector3.new(7e5, 7e5, 7e5);
    BodyVelo.maxForce = Vector3.new(7e5, 0, 7e5);


    if (hitz) then
        BodyPos.position = Vector3.new(0, enz.y + 9.5 + math.sin(tick()*2)*.15 - CHARGE*6 , 0);
        BodyPos.maxForce = Vector3.new(0, 9999e999, 0)
    else
        BodyPos.maxForce = Vector3.new();
    end
    if (norm ~= Vector3.new(0,0,0) and enz) then
        --[[
        THANK YOU ANTI FOR PROPER HACKY MATH WITH THE QUOTE OF...
        "dis r propr vector maths you know!11"
        --]]
        local dir = (camera.CoordinateFrame.lookVector*Vector3.new(1,1,1)).unit
        BodyGyro.cframe = CFrame.new(enz,enz+dir)*CFrame.Angles(-math.asin(dir:Dot(norm)),0,0)*CFrame.Angles(math.abs(TORQUE)*.35, 0, ROTSPEED*.005 + torso.RotVelocity.Y*.15)
    end

    --//
    --// HOVERBIKE JUMPING
    --//
    if (KEY_HOLD[" "] and hitz) then
        CHARGE = math_max(CHARGE + 0.015, 1);
    else
        if (CHARGE) > 0 then
            local LASTCHARGE = CHARGE;
            CHARGE = -0.15 - (LASTCHARGE*0.15);
            Particles.AirRing(CFrame.new(enz.x, enz.y, enz.z)*CFrame.new(0,1,0), 5, Color3.new(255,255,255), 0.15, 0, 3)
            wait()
            CHARGE = 0;
        end
    end

    --//
    --// LOOP THIS TO PREVENT CHARACTERS FROM GETTING OFF.
    --//
    humanoid.Sit = true;

    --//
    --// ANIMATION
    --//
    rjcf = rootc0 * CFrame.Angles(-math.rad(25), 0, 0);
    rscf = rsc0 * CFrame.new(-.1, 0, 0) * CFrame.Angles(math.pi/1.8, .05, -.1);
    lscf = lsc0 * CFrame.new(.1, 0, 0) * CFrame.Angles(math.pi/1.8, -.05, .1);
    rlcf = rlc0 * CFrame.new(0, .6, -.3) * CFrame.Angles(math.pi/3, 0, 0);
    llcf = llc0 * CFrame.new(0, .6, -.3) * CFrame.Angles(math.pi/3, 0, 0);



    --//
    --// MOVEMENT
    --//
    if (KEY_HOLD["w"] == true and hitz) then
        TORQUE = math_max(TORQUE + 1/25, MAXTORQUE);
        SPEED = math_max(SPEED + 1, MAXSPEED);
    end
    if (KEY_HOLD["s"] == true and hitz) then
        TORQUE = math_min(TORQUE - 1/50, -MAXTORQUE/2);
        SPEED = math_max(SPEED + 1, MAXSPEED/2)
    end
    if (KEY_HOLD["a"] == true and hitz) then
        ROTSPEED = math_max(ROTSPEED + 1, MAXSPEED/1.5);
    end
    if (KEY_HOLD["d"] == true and hitz) then
        ROTSPEED = math_min(ROTSPEED - 1, -MAXSPEED/1.5);
    end

    if (SPEED > 0 or ROTSPEED ~= 0 or TORQUE > 0) then
        if not OnMove.IsPlaying then
            OnMove:play();
        end
        --Smoke.Enabled = true;
        --Smoke.RiseVelocity = SPEED;
        for _,v in next,Particlus do
            v.Enabled = true;
        end
    else
        OnMove:stop();
        --Smoke.Enabled = false;
        --Smoke.RiseVelocity = 0;
        for _,v in next,Particlus do
            v.Enabled = false;
        end
    end
    BodyVelo.velocity = (Seat.CFrame).lookVector*(SPEED*TORQUE) + (Seat.CFrame*CFrame.Angles(0, math.pi/2, 0)).lookVector*ROTSPEED

    if (not KEY_HOLD["w"] and not KEY_HOLD["s"] and hitz) then
        if (TORQUE < 0) then
            TORQUE = math_max(TORQUE + 1/25, 0)
        end
        if (TORQUE > 0) then
            TORQUE = math_min(TORQUE - 1/25, 0)
        end
        if (SPEED < 0) then
            SPEED = math_max(SPEED + 5, 0)
        end
        if (SPEED > 0) then
            SPEED = math_min(SPEED - 5, 0)
        end
    end
    if (not KEY_HOLD["a"] and not KEY_HOLD["d"] and hitz) then
        if (ROTSPEED < 0) then
            ROTSPEED = math_max(ROTSPEED + 1, 0)
        end
        if (ROTSPEED > 0) then
            ROTSPEED = math_min(ROTSPEED - 1, 0)
        end
    end

    --//
    --// REPAIR MODE
    --//
    if (REPAIRMODE) then
        DB2 = false;
        BodyPos.D = 5000;
        BodyGyro.maxTorque = Vector3.new();
        BodyVelo.maxForce = Vector3.new();
        if (hitz) then
            BodyPos.position = Vector3.new(0, enz.y + 1 , 0);
            BodyPos.maxForce = Vector3.new(0, 9999e999, 0)
        else
            BodyPos.maxForce = Vector3.new();
        end
    else
        if (not REPAIRMODE and not DB2) then
            DB2 = true;
            Particles.AirRing(CFrame.new(enz.x, enz.y, enz.z)*CFrame.new(0,1,0), 5, Color3.new(255,255,255), 0.15, 0, 3)
        end
    end



    --//
    --// SHOOTING
    --//
    if (MOUSE_DOWN) then
        if db then return end
            db = true
            wait(.1);
            db = false
            OnFire:play();

            local PointLight = Instance.new("PointLight", Barrel);
            PointLight.Color = Color3.new(1,.5,0)
            PointLight.Brightness = 6;
            game:service'Debris':AddItem(PointLight, .05);



            RayC(Barrel, 25, mouse.Hit.p)
    end
    --//
    --// SMOOTHLY SET TARGET CFRAME
    --//
    rm.C0 = clerp(rm.C0,rscf,speed)
    lm.C0 = clerp(lm.C0,lscf,speed)
    rj.C0 = clerp(rj.C0,rjcf,speed)
    neck.C0 = clerp(neck.C0,ncf,speed)
    rlegm.C0 = clerp(rlegm.C0,rlcf,speed)
    llegm.C0 = clerp(llegm.C0,llcf,speed)

end);
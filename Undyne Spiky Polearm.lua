local Handle  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Handle:BreakJoints()
			Handle.TopSurface = "Smooth"
			Handle.Material = "SmoothPlastic"
			Handle.Name = 'Handle'
			Handle.Transparency=1
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Medium stone grey")
			Handle.Size = Vector3.new(0.5, 4.9000001, 0.799999833)
local Handleweld = Instance.new("ManualWeld")
Handleweld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Handleweld.C1 = CFrame.new(-0.0500130653, -0.15998745, 0.999988556, 1, 0, 0, 0, 0, -1, 0, 0.999999881, 0)
Handleweld.Parent = game.Players.LocalPlayer.Character["Right Arm"]
staffweld=Handleweld
Handlecf=Handleweld.C1
local Grip  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Grip:BreakJoints()
			Grip.TopSurface = "Smooth"
			Grip.Material = "SmoothPlastic"
			Grip.Name = 'Grip'
			Grip.BottomSurface = "Smooth"
			Grip.FormFactor = "Custom" Grip.CanCollide = false
			Grip.BrickColor = BrickColor.new("Toothpaste")
			Grip.Size = Vector3.new(0.400000006, 4, 0.400000006)
			    local Gripweld = Instance.new("ManualWeld")
   Gripweld.Part0 =  Handle   Gripweld.Part1 = Grip  Gripweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Gripweld.C1 = CFrame.new(0.0500068665, 0.449998379, 5.96046448e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Gripweld.Parent = Grip		
					local GripMesh = Instance.new("CylinderMesh",Grip)
				GripMesh.Name = "Mesh"
				GripMesh.Offset = Vector3.new(0, 0, 0)
				GripMesh.Scale = Vector3.new(1, 1, 1)
				
local Down  = Instance.new("WedgePart", game.Players.LocalPlayer.Character)
			Down:BreakJoints()
			Down.TopSurface = "Smooth"
			Down.Material = "SmoothPlastic"
			Down.Name = 'Down'
			Down.BottomSurface = "Smooth"
			Down.FormFactor = "Custom" Down.CanCollide = false
			Down.BrickColor = BrickColor.new("Toothpaste")
			Down.Size = Vector3.new(0.200000003, 1, 0.400000006)
			    local Downweld = Instance.new("ManualWeld")
   Downweld.Part0 =  Handle   Downweld.Part1 = Down  Downweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Downweld.C1 = CFrame.new(0.0500155687, -1.95003223, 0.19999814, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Downweld.Parent = Down		
local Connector  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Connector:BreakJoints()
			Connector.TopSurface = "Smooth"
			Connector.Material = "SmoothPlastic"
			Connector.Name = 'Connector'
			Connector.Shape="Ball"
			Connector.BottomSurface = "Smooth"
			Connector.FormFactor = "Custom" Connector.CanCollide = false
			Connector.BrickColor = BrickColor.new("Toothpaste")
			Connector.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
			Connectorweld = Instance.new("ManualWeld")
   Connectorweld.Part0 =  Handle   Connectorweld.Part1 = Connector  Connectorweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Connectorweld.C1 = CFrame.new(0.0500068665, -1.55001354, 6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Connectorweld.Parent = Connector		
local Up  = Instance.new("WedgePart", game.Players.LocalPlayer.Character)
			Up:BreakJoints()
			Up.TopSurface = "Smooth"
			Up.Material = "SmoothPlastic"
			Up.Name = 'Up'
			Up.BottomSurface = "Smooth"
			Up.FormFactor = "Custom" Up.CanCollide = false
			Up.BrickColor = BrickColor.new("Toothpaste")
			Up.Size = Vector3.new(0.200000003, 1, 0.400000006)
			    local Upweld = Instance.new("ManualWeld")
   Upweld.Part0 =  Handle   Upweld.Part1 = Up  Upweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Upweld.C1 = CFrame.new(-0.0500155687, -1.95002747, 0.200003147, -1, 0, 0, 0, 1, 0, -0, 0, -1)
    Upweld.Parent = Up		
Connector.Material="Neon"
Grip.Material="Neon"
Up.Material="Neon"
Down.Material="Neon"
Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
Character.Animate:Destroy()
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
Humanoid.WalkSpeed=32
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Neck=Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack=false 
attackdebounce=false 
MMouse=nil
combo=0
local Anim="Idle"
player=nil 
--save shoulders 
RSH, LSH=nil, nil 
--welds 
RW, LW=Instance.new("Weld"), Instance.new("Weld") 
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]


function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
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

function QuaternionToCFrame(px, py, pz, x, y, z, w) 
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
function swait(num)
if num==0 or num==nil then
game:service'RunService'.RenderStepped:wait()
else
for i=0,num do
game:service'RunService'.RenderStepped:wait()
end
end
end
function weld(parent,part0,part1,c0)
local weld=it("Weld") 
weld.Parent=parent
weld.Part0=part0 
weld.Part1=part1 
weld.C0=c0
return weld
end
local function rs()
	game:GetService("RunService").RenderStepped:wait()
end

Plr = game.Players.LocalPlayer
P = Plr.Character
Mouse = Plr:GetMouse()

ch = P
RSH=ch.Torso["Right Shoulder"]
LSH=ch.Torso["Left Shoulder"]
RF, LF=Instance.new("Weld"), Instance.new("Weld") 
--
RSH.Parent=nil
LSH.Parent=nil
--
RW.Name="Right Shoulder"
RW.Part0=ch.Torso
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
RW.C1=cf(0, 0.5, 0)
RW.Part1=ch["Right Arm"]
RW.Parent=P.Torso
--
LW.Name="Left Shoulder"
LW.Part0=ch.Torso
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
LW.C1=cf(0, 0.5, 0)
LW.Part1=ch["Left Arm"]
LW.Parent=P.Torso
--
RF.Name="Right Hip"
RF.Part0=ch.Torso
RF.C0=cf(.5, -1.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5)
RF.C1=cf(0, 0.5, 0)
RF.Part1=ch["Right Leg"]
RF.Parent=P.Torso
--
LF.Name="Left Hip"
LF.Part0=ch.Torso
LF.C0=cf(-.5, -1.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8)
LF.C1=cf(0, 0.5, 0)
LF.Part1=ch["Left Leg"]
LF.Parent=P.Torso
RFC0 = RF.C0
LFC0 = LF.C0
RWC0 = CFrame.new(1.5, 0.5, 0, -0.945518613, -0.32556811, 0, 0.32556811, -0.945518613, 0, 0, 0, 1)
LWC0 = CFrame.new(-1.05161786, 0.471444488, -0.853310168, 0.459834456, -0.887635231, -0.0256112181, 0.116241433, 0.08876127, -0.989246905, 0.880363643, 0.451912731, 0.143995479)
TC0 = RootJoint.C0
HC0 = Torso.Neck.C0

local Rads = 14
local sine = 0
local Arms = true
local Legs = true
local AttArm = 0
local AttLeg = 0
local Enabled = true

function Walk()
    if Arms then
        RW.C0=clerp(RW.C0,cf(1.5, 0.5, 0)*euler(-math.rad(50),0,math.rad(30)),.3)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(math.rad(15),0,0),.3)
		Handleweld.C1=clerp(Handleweld.C1,Handlecf*CFrame.Angles(0,math.rad(90),0),.3)
        LW.C0=clerp(LW.C0,cf(-1.5+math.abs(math.sin(-sine)*.233), 0.5, math.sin(sine)*.233)*euler(-math.sin(sine)/1.5*(Humanoid.WalkSpeed/13),0,-math.sin(sine)/3*(Humanoid.WalkSpeed/13)),.3)
    end
    if Legs then
        RF.C0=clerp(RF.C0,cf(.5, -1.5, math.sin(sine)*.233)*euler(-math.sin(sine)/2*((Humanoid.WalkSpeed+8)/24),0,0),.5)
    	LF.C0=clerp(LF.C0,cf(-.5, -1.5, math.sin(-sine)*.233)*euler(-math.sin(-sine)/2*((Humanoid.WalkSpeed+8)/24),0,0),.5)
    end
	sine = sine + math.rad(Rads)
    Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.3)
end
function Aim()
        RW.C0=clerp(RW.C0,CFrame.new(1.5, 0.5, 0, -0.945518613, -0.32556811, 0, 0.32556811, -0.945518613, 0, 0, 0, 1),.3)
        LW.C0=clerp(LW.C0,CFrame.new(-1.05161786, 0.471444488, -0.853310168, 0.459834456, -0.887635231, -0.0256112181, 0.116241433, 0.08876127, -0.989246905, 0.880363643, 0.451912731, 0.143995479),.3)
		RootJoint.C0=clerp(RootJoint.C0,TC0,.3)
		Handleweld.C1=clerp(Handleweld.C1,Handlecf,.3)
		Torso.Neck.C0=clerp(Torso.Neck.C0,HC0,.3)
		if Vector3.new(P.Torso.Velocity.x, 0, P.Torso.Velocity.z).magnitude > 3 and Legs then
			RF.C0=clerp(RF.C0,cf(.5, -1.5, math.sin(sine)*.233)*euler(-math.sin(sine)/2*((Humanoid.WalkSpeed+8)/24),0,0),.5)
			LF.C0=clerp(LF.C0,cf(-.5, -1.5, math.sin(-sine)*.233)*euler(-math.sin(-sine)/2*((Humanoid.WalkSpeed+8)/24),0,0),.5)
			sine = sine + math.rad(Rads)
		end
end
function Idle()
    if Arms then
        RW.C0=clerp(RW.C0,cf(1.5, 0.5, 0)*CFrame.new(0, 0, 0, 0.862729907, -0.5, -0.0754789189, 0.49809736, 0.866025388, -0.0435777754, 0.0871555507, 0, 0.99619472),.3)
        LW.C0=clerp(LW.C0,cf(-1.5, 0.5, 0)*CFrame.new(0, 0, 0, 0.173648223, 0.98480773, 0, -0.98480773, 0.173648223, 0, 0, 0, 1),.3)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(0,0,-math.rad(70)),.3)
	Handleweld.C1=clerp(Handleweld.C1,Handlecf,.3)
	Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,math.rad(70)),.3)
    end
    if Legs then
        RF.C0=clerp(RF.C0,RFC0*cf(0,0,0)*CFrame.new(0, -0, 0, 0.99619472, 0, -0.0871557817, 0, 1, 0, 0.0871557817, 0, 0.99619472),.3)
        LF.C0=clerp(LF.C0,LFC0*cf(0,0,0)*CFrame.new(0, -0, 0, 0.906307638, 0, 0.422618419, 0, 1, 0, -0.422618419, 0, 0.906307638),.3)
    end
end

function Sound(ID,Par,Pitch,Vol)
    local Sound = Instance.new("Sound",Par)
    Sound.SoundId = "http://www.roblox.com/asset/?id="..tostring(ID)
    game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id="..tostring(ID))
    Sound.Pitch = Pitch
    Sound.Volume = Vol
    game.Debris:AddItem(Sound,Sound.TimeLength)
    rs()
    Sound:Play()
end
local aiming = false
local Jumping = false
local Jumpi = 0

game:GetService("RunService").Heartbeat:connect(function()
    if Jumping == true then
        Jumpi = Jumpi + 1
        if Arms then
            RW.C0=clerp(RW.C0,cf(1, 1, 0)*euler(0,0,math.pi/2+math.pi/4),.5)
            LW.C0=clerp(LW.C0,cf(-1, 1, 0)*euler(0,0,-math.pi/2-math.pi/4),.5)
            RootJoint.C0=clerp(RootJoint.C0,RootCF*euler(math.pi/16,0,0),.5)
        end
        if Legs then
            RF.C0=clerp(RF.C0,RFC0*cf(0,0,0)*euler(0,0,0),.5)
            LF.C0=clerp(LF.C0,LFC0*cf(0,.5,-.6)*euler(0,0,0),.5)
        end
        Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.5)
        if Jumpi == 10 then
            Jumping = false
            Jumpi = 0
        end
    elseif Vector3.new(P.Torso.Velocity.x, 0, P.Torso.Velocity.z).magnitude < 3 then
		if aiming then
			Aim()
		else
			Idle()
		end
    elseif Vector3.new(P.Torso.Velocity.x, 0, P.Torso.Velocity.z).magnitude > 3 then
		if aiming then
			Aim()
		else
			Walk()
		end
    end
end)
P.Humanoid.Jumping:connect(function()
    if Arms == false and Legs == false then
    else
    Jumping = true
    end
end)
function hwait()
    game:GetService("RunService").Heartbeat:wait()
end
function Sound(ID,Par,Pitch,Vol)
    local Sound = Instance.new("Sound",Par)
    Sound.SoundId = "http://www.roblox.com/asset/?id="..tostring(ID)
    game:GetService("ContentProvider"):Preload("http://www.roblox.com/asset/?id="..tostring(ID))
    Sound.Pitch = Pitch
    Sound.Volume = Vol
    game.Debris:AddItem(Sound,Sound.TimeLength)
    rs()
    Sound:Play()
end
function Damage(Dmg,Part)
    local Child = Part
    local Par = Part.Parent
    if Par == workspace then
    elseif Par~=nil then
        repeat
            Child = Par
            Par = Par.Parent
        until Par == workspace
    end
    local Found = false
    function Search(c)
        coroutine.resume(coroutine.create(function()
            for i,v in pairs (c:GetChildren()) do
                if v:IsA("Humanoid") then
                    for i = 1,10 do
                        v.Health = v.Health - Dmg/10
                        Found = true
                    end
                end
                Search(v)
            end
        end))
    end
    if Child ~= P then
        Search(Child)
    end
    if Found == false then
        return false
    else 
        return true
    end
end
neg={-1,1}
Mouse.Button1Down:connect(function()
    if Enabled == true then
        Enabled = false
        Arms = false
        local Hit = false
        AttArm = AttArm + 1
        Handle.Touched:connect(function(part)
            if Hit == false then
                local Hitz = Damage(10,part)
                if Hitz == true then
                    Hit = true
                end
            end
        end)
        if AttArm % 2 == 0 then
            for i = 0,1,0.05 do
                rs()
                RW.C0=clerp(RW.C0,CFrame.new(0.327810407, 0.426284045, -0.812734485, 0.499530673, 0.832429767, 0.23985371, -0.765840292, 0.553754687, -0.32687068, -0.404916912, -0.0204077363, 0.914125562),.3)
LW.C0=clerp(LW.C0,cf(-1.5, 0.5, 0)*euler(0,0,-math.pi/16),.3)
				LW.C0=clerp(LW.C0,CFrame.new(-1.12515569, 0.390085489, -0.0568969324, 0.966400146, 0.0897351503, -0.240870312, -0.223289788, 0.757267952, -0.613748312, 0.127328619, 0.646910369, 0.751860738),.3)
                RF.C0=clerp(RF.C0,cf(.5, -1.5, 0)*euler(math.rad(30),0,0),.3)
                LF.C0=clerp(LF.C0,cf(-.5, -1.5, 0)*euler(-math.rad(30),0,0),.3)
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.3)
					Handleweld.C1=clerp(Handleweld.C1,Handlecf*CFrame.new(0,0,1.5),.3)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(math.rad(0),0,0),.3)

            end
        elseif AttArm % 2 == 1 then
            LW.C0=clerp(LW.C0,cf(-1.5, 0.5, 0)*euler(math.pi/2,0,0),1)
            for i = 0,1,0.05 do
                rs()
                RW.C0=clerp(RW.C0, CFrame.new(1.00035846, 0.481068671, 0, -0.838670492, -0.436109662, 0.326251596, 0.544639111, -0.671549916, 0.502383232, 0, 0.599023461, 0.80073148),.3)
				LW.C0=clerp(LW.C0,CFrame.new(0.418275297, 0.689788699, -0.483788908, -0.600420177, -0.779812098, 0.177168876, 0.799684703, -0.585499287, 0.133022174, 0, 0.221548468, 0.975149393),.3)
                RF.C0=clerp(RF.C0,cf(.5, -1.5, 0)*euler(-math.rad(30),0,0),.3)
                LF.C0=clerp(LF.C0,cf(-.5, -1.5, 0)*euler(math.rad(30),0,0),.3)
                Torso.Neck.C0=clerp(Torso.Neck.C0,necko*euler(0,0,0),.3)
					Handleweld.C1=clerp(Handleweld.C1,Handlecf*CFrame.new(0,0,1.5),.3)
        RootJoint.C0=clerp(RootJoint.C0,RootCF*CFrame.Angles(math.rad(0),0,0),.3)

			end
		end
		Enabled=true
		Arms=true
    end
end)

Mouse.KeyDown:connect(function(key)
	if key=="f" then
		aiming=true
		Arms=false
		Sound(334702864,Character.Torso,1,1)
	elseif key=="r" then
		local hint = Instance.new("Part",workspace)
		hint.Shape="Cylinder"
		Sound(334702864,hint,1,1)
		hint.Anchored=true
		hint.CanCollide=false
		hint.Material="Neon"
		hint.Transparency=1
		hint.BrickColor=BrickColor.new("Toothpaste")
		hint.Size=Vector3.new(.2,4,4)
		hint.CFrame=CFrame.new(Mouse.Hit.p)*CFrame.Angles(0,0,math.rad(90))
		for i = 1,30 do
			rs()
			hint.Transparency=1-i/30
		end
		local spear = Handle:Clone()
		spear.Anchored=true
		Connector:Clone().Parent=spear
		Up:Clone().Parent=spear
		Down:Clone().Parent=spear
		Grip:Clone().Parent=spear
		for i,v in pairs(spear:children'') do if v:IsA("BasePart") then v.Anchored=true else v:Remove() end end
		local parts = {spear.Connector,spear.Up,spear.Down,spear.Grip}
		local cframes = {CFrame.new(0.0500068665, -1.55001354, 6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-0.0500155687, -1.95002747, 0.200003147, -1, 0, 0, 0, 1, 0, -0, 0, -1),CFrame.new(0.0500155687, -1.95003223, 0.19999814, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0.0500068665, 0.449998379, 5.96046448e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1)}
		spear.CFrame=CFrame.new((hint.CFrame*CFrame.new(-5,0,0)).p)
		spear.Parent=workspace
		spear.Touched:connect(function(v)
			if v.Parent~=nil then
				if v.Parent:FindFirstChild("Humanoid") and v.Parent~=Character then
					v.Parent.Humanoid.Health=v.Parent.Humanoid.Health-10
				end
			end
		end)
		for _,v in pairs(parts) do
			v.CFrame=spear.CFrame*cframes[_]:inverse()
		end
		for i = 1,10 do
			rs()
			spear.CFrame=spear.CFrame*CFrame.new(0,0.7,0)
			for _,v in pairs(parts) do
				v.CFrame=spear.CFrame*cframes[_]:inverse()
			end
		end
		spawn(function()
			wait(.5)
			spear:Destroy()
			Handleweld = Instance.new("ManualWeld")
			Handleweld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
			Handleweld.Part1 = Character.Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			Handleweld.C1 = CFrame.new(-0.0500130653, -0.15998745, 0.999988556, 1, 0, 0, 0, 0, -1, 0, 0.999999881, 0)
			Handleweld.Parent = game.Players.LocalPlayer.Character["Right Arm"]
			hint:Remove()
		end)
	end
end)

local enabled=true
Mouse.KeyUp:connect(function(key)
	if key=="f" and enabled then
		aiming=false
		enabled=false
		Handleweld:Destroy()
		local temp = Handle
		temp.CanCollide=true
		local parts = {Connector,Up,Down,Grip}
		local cframes = {Connectorweld.C1,Upweld.C1,Downweld.C1,Gripweld.C1}
		local init = Mouse.Hit.p
		local dir = init - temp.Position 
		for i,v in pairs(parts) do v.Anchored=true end Handle.Anchored=true
		spawn(function()
		for i = 1,200 do
			rs()
			for _,v in pairs(temp:GetTouchingParts()) do
				if v.Parent~=nil then
					if v.Parent:FindFirstChild("Humanoid") and v.Parent~=Character then
						v.Parent.Humanoid.Health=v.Parent.Humanoid.Health-5
					end
				end
			end
			local Distance = (init-temp.Position).magnitude
			if Distance > 2 then Distance = 2 end
			temp.CFrame = CFrame.new(temp.Position,init) * CFrame.new(0,0,-Distance) * CFrame.Angles(math.rad(-90),math.rad(90),0)
			for _,v in pairs(parts) do
				v.CFrame=temp.CFrame*cframes[_]:inverse()
			end
		end	
		temp:Remove()
		for i,v in pairs(parts) do v:Remove() end
		end)
		for i = 1,10 do
			rs()
			RW.C0=clerp(RWC0,CFrame.new(1.5, 0.5, 0, -0.969445348, 0.175265431, 0.171632558, 0.245307371, 0.692642331, 0.678285301, 0, 0.699663281, -0.714472771),i/10)
			LW.C0=clerp(LWC0,CFrame.new(-1.5, 0.5, 0, 0.880477369, 0.474088192, 0, -0.0928957462, 0.172526136, -0.980614662, -0.464897841, 0.863409042, 0.195946127),i/10)
		end
		enabled=true
				Arms=true
		Handle  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Handle:BreakJoints()
			Handle.TopSurface = "Smooth"
			Handle.Material = "SmoothPlastic"
			Handle.Name = 'Handle'
			Handle.Transparency=1
			Handle.BottomSurface = "Smooth"
			Handle.FormFactor = "Custom" Handle.CanCollide = false
			Handle.BrickColor = BrickColor.new("Medium stone grey")
			Handle.Size = Vector3.new(0.5, 4.9000001, 0.799999833)
Handleweld = Instance.new("ManualWeld")
Handleweld.Part0 = game.Players.LocalPlayer.Character["Right Arm"]
Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Handleweld.C1 = CFrame.new(-0.0500130653, -0.15998745, 0.999988556, 1, 0, 0, 0, 0, -1, 0, 0.999999881, 0)
Handleweld.Parent = game.Players.LocalPlayer.Character["Right Arm"]
staffweld=Handleweld
Handlecf=Handleweld.C1
Grip  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Grip:BreakJoints()
			Grip.TopSurface = "Smooth"
			Grip.Material = "SmoothPlastic"
			Grip.Name = 'Grip'
			Grip.BottomSurface = "Smooth"
			Grip.FormFactor = "Custom" Grip.CanCollide = false
			Grip.BrickColor = BrickColor.new("Toothpaste")
			Grip.Size = Vector3.new(0.400000006, 4, 0.400000006)
			    Gripweld = Instance.new("ManualWeld")
   Gripweld.Part0 =  Handle   Gripweld.Part1 = Grip  Gripweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Gripweld.C1 = CFrame.new(0.0500068665, 0.449998379, 5.96046448e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Gripweld.Parent = Grip		
					GripMesh = Instance.new("CylinderMesh",Grip)
				GripMesh.Name = "Mesh"
				GripMesh.Offset = Vector3.new(0, 0, 0)
				GripMesh.Scale = Vector3.new(1, 1, 1)
				
Down  = Instance.new("WedgePart", game.Players.LocalPlayer.Character)
			Down:BreakJoints()
			Down.TopSurface = "Smooth"
			Down.Material = "SmoothPlastic"
			Down.Name = 'Down'
			Down.BottomSurface = "Smooth"
			Down.FormFactor = "Custom" Down.CanCollide = false
			Down.BrickColor = BrickColor.new("Toothpaste")
			Down.Size = Vector3.new(0.200000003, 1, 0.400000006)
Downweld = Instance.new("ManualWeld")
   Downweld.Part0 =  Handle   Downweld.Part1 = Down  Downweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Downweld.C1 = CFrame.new(0.0500155687, -1.95003223, 0.19999814, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Downweld.Parent = Down		
Connector  = Instance.new("Part", game.Players.LocalPlayer.Character)
			Connector:BreakJoints()
			Connector.TopSurface = "Smooth"
			Connector.Material = "SmoothPlastic"
			Connector.Name = 'Connector'
			Connector.Shape="Ball"
			Connector.BottomSurface = "Smooth"
			Connector.FormFactor = "Custom" Connector.CanCollide = false
			Connector.BrickColor = BrickColor.new("Toothpaste")
			Connector.Size = Vector3.new(0.400000006, 0.400000006, 0.400000006)
			Connectorweld = Instance.new("ManualWeld")
   Connectorweld.Part0 =  Handle   Connectorweld.Part1 = Connector  Connectorweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Connectorweld.C1 = CFrame.new(0.0500068665, -1.55001354, 6.91413879e-006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Connectorweld.Parent = Connector		
Up  = Instance.new("WedgePart", game.Players.LocalPlayer.Character)
			Up:BreakJoints()
			Up.TopSurface = "Smooth"
			Up.Material = "SmoothPlastic"
			Up.Name = 'Up'
			Up.BottomSurface = "Smooth"
			Up.FormFactor = "Custom" Up.CanCollide = false
			Up.BrickColor = BrickColor.new("Toothpaste")
			Up.Size = Vector3.new(0.200000003, 1, 0.400000006)
			    Upweld = Instance.new("ManualWeld")
   Upweld.Part0 =  Handle   Upweld.Part1 = Up  Upweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Upweld.C1 = CFrame.new(-0.0500155687, -1.95002747, 0.200003147, -1, 0, 0, 0, 1, 0, -0, 0, -1)
    Upweld.Parent = Up		
Connector.Material="Neon"
Grip.Material="Neon"
Up.Material="Neon"
Down.Material="Neon"
	end
end)
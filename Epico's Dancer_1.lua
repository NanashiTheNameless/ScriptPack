--dancer
local percent = 0
for i = 1,101 do
    wait()
    print("Loading: "..percent.."%")
    percent = percent + 1
end
local plr=game.Players.LocalPlayer
local chr=plr.Character
local asin = math.asin
local atan2 = math.atan2
local rad = math.rad
local sin = math.sin
local abs = math.abs
local ceil = math.ceil

local function getAngles(cf)
    local sx,sy,sz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
    return atan2(-m12,m22),asin(m02),atan2(-m01,m00)
end
Lerp = {
    Number = function(C1,C2,inc)
        return C1 + (C2 - C1) * inc
    end;
    CFrame = function(a,b,m)
		local c,d={a:components()},{b:components()}
		table.foreach(c,function(a,b)c[a]=c[a]+(d[a]-c[a])*m end)
		return CFrame.new(unpack(c))
	end;
}
local function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end
local Song = function(id)
    for i,v in pairs(chr:GetChildren()) do
        if v:IsA("Sound") then
            v:Destroy()
        end
    end
    sound = Instance.new("Sound",chr)
    sound.Volume = math.huge
    sound.Looped = true
    sound.SoundId="rbxassetid://"..id
    sound:Play()
end
Part = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
	p:BreakJoints()
    return p
end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end
Mesh = function(par,num,x,y,z)
    local msh = nil
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 'Wedge'
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end
    msh.Scale = Vector3.new(x,y,z)
    return msh
end
anglespeed = 1
yeet = 0
count = 0
angle = 0
local dance = 0
speed = 1
local plr=game.Players.LocalPlayer
local chr=plr.Character
local torso=chr.Torso
local mouse=plr:GetMouse()
local Neck = genWeld(chr.Torso,chr.Head)
Neck.C0 = CFrame.new(0,1,0)
Neck.C1 = CFrame.new(0,-0.5,0)
local LeftShoulder = genWeld(chr.Torso,chr['Left Arm'])
LeftShoulder.C0 = CFrame.new(-1,0.5,0)
LeftShoulder.C1 = CFrame.new(0.5,0.5,0)
RightShoulder = genWeld(chr.Torso,chr['Right Arm'])
RightShoulder.C0 = CFrame.new(1,0.5,0)
RightShoulder.C1 = CFrame.new(-0.5,0.5,0)
local LeftHip = genWeld(chr.Torso,chr['Left Leg'])
LeftHip.C0 = CFrame.new(-1,-1,0)
LeftHip.C1 = CFrame.new(-0.5,1,0)
local RightHip = genWeld(chr.Torso,chr['Right Leg'])
RightHip.C0 = CFrame.new(1,-1,0)
RightHip.C1 = CFrame.new(0.5,1,0)
local RootJoint = genWeld(chr.HumanoidRootPart,chr.Torso)
RootJoint.C0 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)
RootJoint.C1 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)
local function newLerpTo(weld)
        return {
                Weld = weld; -- The weld that will lerp
                To = weld.C0; -- Where it will lerp to; a CFrame
                Cache = weld.C0; -- Cache of original position; it helps when making anim keyframes
                Speed = 0.1; -- Speed of lerp. 0.1 or 0.2 is best
        }
end
LerpTo = {
        Neck = newLerpTo(Neck);
        LeftArm = newLerpTo(LeftShoulder);
        RightArm = newLerpTo(RightShoulder);
        LeftLeg = newLerpTo(LeftHip);
        RightLeg = newLerpTo(RightHip);
        RootJoint = newLerpTo(RootJoint);
}
local anim = true
local function updateanims()
    if anim==true then
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 and dance == 0 then
            anglespeed = 1/3
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(sin(angle)*0.05,0,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(abs(sin(angle))*.2,rad(0),rad(0))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(-abs(sin(angle))*.2,0,0)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,abs(sin(angle))*0.2)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-abs(sin(angle))*0.2) 
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 and dance == 0 then
            anglespeed = 1.5
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,math.sin(angle)*0.05)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(sin(angle)*.8,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(-sin(angle)*.8,0,0)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-sin(angle)*.8,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(sin(angle)*.8,0,0) 
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
        end
    end
    if anim == false then
        if dance == 1 then
            anglespeed = 3
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(rad(10),0,sin(yeet)*0.1)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(rad(20),sin(angle)*0.2,sin(angle)*0.5) * CFrame.new(0,-abs(sin(angle))*0.5,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90)-sin(angle)*1,0,-rad(10))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90)-sin(angle)*1,0,rad(10))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(rad(20),0,abs(sin(yeet))*0.1)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(20),0,-abs(sin(yeet))*0.1) 
        end
        if dance == 2 then
            anglespeed = 3
            LerpTo.Neck.To = LerpTo.Neck.Cache*CFrame.Angles(0,0,sin(angle)*.1)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.new(0,0,2+sin(angle)*.25)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90)+sin(angle)*1,0,rad(5)+sin(angle)*-.5)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90)+sin(angle)*1,0,rad(5)-sin(angle)*-.5)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(rad(0),rad(0),sin(angle)*.25)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(0),rad(0),sin(angle)*-.25)
        end
        if dance == 3 then
            anglespeed = 1.5
            LerpTo.Neck.To = LerpTo.Neck.Cache*CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)*CFrame.new(sin(angle)*5,0,0)
            LerpTo.RightArm.To=LerpTo.RightArm.Cache*CFrame.Angles(rad(90)-sin(angle)*1,0,rad(0)-sin(angle)*.25)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache*CFrame.Angles(rad(0),rad(0),sin(angle)*.25)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache*CFrame.Angles(0,0,sin(angle)*.1)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache*CFrame.Angles(0,0,-sin(angle)*.1)
        end
        if dance == 4 then
            anglespeed = 1.5
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.new(0,sin(angle)*5,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(0),rad(0),sin(angle)*.25)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(0),rad(0),sin(angle)*.25)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(sin(angle)*.25,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(sin(angle)*-.25,0,0)
        end
        if dance == 5 then
            anglespeed = 3
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.new(sin(angle)*.5,0,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,sin(angle)*.25)*CFrame.new(0,sin(angle)*.1,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,sin(angle)*.25)*CFrame.new(0,sin(angle)*.1,0)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,sin(angle)*.25)*CFrame.new(0,sin(angle)*.1,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,sin(angle)*.25)*CFrame.new(0,sin(angle)*.1,0)
        end
        if dance == 6 then
            anglespeed = 2
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(math.pi/10-math.abs(math.sin(angle))*0.3,0, 0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0,math.sin(angle)*.2)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*1), 0,  math.sin(angle*1)*.5)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*1), 0,  math.sin(angle*1)*.5)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0, math.sin(angle)*.2, math.rad(2.5))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0, -math.sin(angle)*.2, -math.rad(2.5))
        end
        if dance == 7 then -- insane spaz out l0l
            anglespeed = 1
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-5,5),math.random(-5,5),math.random(-5,5))
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.new(math.random(-5,5),math.random(-5,5),0)*CFrame.Angles(math.random(-5,5),math.random(-5,5),math.random(-5,5))
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-5,5),math.random(-5,5),math.random(-5,5))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-5,5),math.random(-5,5),math.random(-5,5))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-5,5),math.random(-5,5),math.random(-5,5))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))*CFrame.Angles(math.random(-5,5),math.random(-5,5),math.random(-5,5))
        end
        if dance == 8 then -- roleo dance :D
            anglespeed = 4
            LerpTo.RightArm.To = LerpTo.RightArm.Cache*CFrame.Angles(rad(180),0,sin(angle)*.3)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache*CFrame.Angles(rad(180),0,sin(angle)*.3)
        end
        if dance == 9 then -- XD lol mast3r ba!t!ng dance :)
            anglespeed = 6
            LerpTo.RightArm.To = LerpTo.RightArm.Cache*CFrame.Angles(rad(90)+sin(angle)*1,0,rad(-45))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache*CFrame.Angles(rad(90)+sin(angle)*1,0,rad(45))
        end
        if dance == 10 then --but scratch :D
            anglespeed = 5
            LerpTo.RightArm.To = LerpTo.RightArm.Cache*CFrame.Angles(rad(-25),0,rad(-25))*CFrame.new(0,sin(angle)*.5,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache*CFrame.Angles(rad(-25),0,rad(25))*CFrame.new(0,sin(angle)*.5,0)
        end
        if dance == 11 then -- CARTWHEELS LOLW0T!?
            anglespeed = 2
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache*CFrame.Angles(sin(angle)*2,0,0)*CFrame.new(0,sin(angle)*2,0)
        end
        if dance == 12 then -- EPICO :)
          anglespeed = 5
          LerpTo.Neck.To=LerpTo.Neck.Cache*CFrame.Angles(0,0,sin(angle)*2)
          LerpTo.RootJoint.To=LerpTo.RootJoint.Cache*CFrame.Angles(0,0,sin(angle)*2)
          LerpTo.RightArm.To=LerpTo.RightArm.Cache*CFrame.Angles(rad(90),rad(0),sin(angle)*2)
          LerpTo.LeftArm.To=LerpTo.LeftArm.Cache*CFrame.Angles(rad(90),rad(0),sin(angle)*2)
        end
        if dance == 13 then -- EPICO2 :)
          anglespeed = 5
          LerpTo.Neck.To=LerpTo.Neck.Cache*CFrame.Angles(rad(-25)+sin(angle)*.5,0,0)
          LerpTo.RightArm.To=LerpTo.RightArm.Cache*CFrame.Angles(rad(90)+sin(angle)*.2,rad(0),rad(-15))
          LerpTo.LeftArm.To=LerpTo.LeftArm.Cache*CFrame.Angles(rad(90)+sin(angle)*.2,rad(0),rad(15))
        elseif dance == 14 then -- FLIPS :)
	  anglespeed = 6
	  LerpTo.RootJoint.To=LerpTo.RootJoint.Cache*CFrame.Angles(math.cos(1,360)*angle,0,0)
          LerpTo.RightArm.To=LerpTo.RightArm.Cache*CFrame.Angles(rad(45),rad(0),rad(0))
          LerpTo.LeftArm.To=LerpTo.LeftArm.Cache*CFrame.Angles(rad(45),rad(0),rad(0))
          LerpTo.RightLeg.To=LerpTo.RightLeg.Cache*CFrame.new(0,1,-.75)
          LerpTo.LeftLeg.To=LerpTo.LeftLeg.Cache*CFrame.new(0,1,-.75)
        end
        if dance == 15 then
            anglespeed = 3
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(rad(10),0,sin(yeet)*0.1)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(rad(20),sin(angle)*0.2,sin(angle)*0.5) * CFrame.new(0,-abs(sin(angle))*2,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90)-sin(angle)*1,0,-rad(10))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90)-sin(angle)*1,0,rad(10))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(rad(20),0,abs(sin(yeet))*0.1)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(20),0,-abs(sin(yeet))*0.1) 
        end
        if dance == 16 then
            anglespeed = 3
		LerpTo.Neck.To=LerpTo.Neck.Cache*CFrame.Angles(rad(0),rad(90),rad(0))
		LerpTo.RootJoint.To=LerpTo.RootJoint.Cache*CFrame.Angles(rad(90),rad(0),rad(0))*CFrame.new(0,-2.5,0)
		LerpTo.RightArm.To=LerpTo.RightArm.Cache*CFrame.Angles(rad(170),rad(0),rad(15))
		LerpTo.LeftArm.To=LerpTo.LeftArm.Cache*CFrame.Angles(rad(0),rad(0),rad(-75))
		LerpTo.RightLeg.To=LerpTo.RightLeg.Cache*CFrame.Angles(rad(0),rad(0),rad(0))
		LerpTo.LeftLeg.To=LerpTo.LeftLeg.Cache*CFrame.Angles(rad(0),rad(0),rad(0))
        end
        if dance == 17 then
anglespeed = 2
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(math.pi/10-math.abs(math.sin(angle))*0.3,0, 0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache*CFrame.new(math.sin(angle)*2,0,0) * CFrame.Angles(math.pi/20,0,-math.sin(angle)*.5)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*.5), math.pi/20,  -math.pi/20)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.pi/3+math.abs(math.sin(angle)*.5), -math.pi/20,  math.pi/20)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(math.pi/20+math.sin(angle)*0.2, math.sin(angle)*0.08, math.rad(2.5))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(math.pi/20-math.sin(angle)*0.2, -math.sin(angle)*0.08, -math.rad(2.5))
        end
        if dance == 18 then
anglespeed = 4
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,sin(angle)*2,0)       
	    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0, 0,  math.rad(90)-sin(angle)*1)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,  math.rad(-90)+sin(angle)*1)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(rad(0),rad(0),rad(0))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(0),rad(0),rad(0))
        end
        if dance == 19 then
anglespeed = 4
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(rad(30),0,0)  
	    LerpTo.RootJoint.To=LerpTo.RootJoint.Cache*CFrame.Angles(math.pi/5,0,0)     
	    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.rad(180)-sin(angle)*1,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.rad(180)-sin(angle)*1,0,0)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(rad(30),rad(0),rad(0))
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(30),rad(0),rad(0))
        end
	if dance == 20 then
		anglespeed = 5
		LerpTo.RootJoint.To=LerpTo.RootJoint.Cache*CFrame.Angles(math.cos(1,360)*angle,0,0)
	        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.rad(180),0,0)
                LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.rad(180),0,0)
	end
	if dance == 21 then
		anglespeed = 5
		LerpTo.RootJoint.To=LerpTo.RootJoint.Cache*CFrame.Angles(0,0,sin(angle)*1)
		LerpTo.RightArm.To=LerpTo.RightArm.Cache*CFrame.Angles(-sin(angle)*1,0,0)
		LerpTo.LeftArm.To=LerpTo.LeftArm.Cache*CFrame.Angles(sin(angle)*1,0,0)
		LerpTo.RightLeg.To=LerpTo.RightLeg.Cache*CFrame.Angles(sin(angle)*1,0,0)
		LerpTo.LeftLeg.To=LerpTo.LeftLeg.Cache*CFrame.Angles(-sin(angle)*1,0,0)
	end
	if dance == 22 then
		anglespeed = 5
		LerpTo.RootJoint.To=LerpTo.RootJoint.Cache*CFrame.Angles(0,math.cos(1,360)*angle,0)
	        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(math.rad(180),0,0)
                LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.rad(180),0,0)
	end
	if dance == 23 then
anglespeed = 3
LerpTo.Neck.To=LerpTo.Neck.Cache*CFrame.Angles(rad(25),0,0)
LerpTo.RootJoint.To=LerpTo.RootJoint.Cache*CFrame.Angles(0,0,sin(angle)*1)
LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,rad(90)+sin(angle)*2)
LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(90)-sin(angle)*2)
end
    end
end
mouse.KeyDown:connect(function(key)
    if key == "q" and dance == 0 then
        Song("169318011")
        anim = false
        dance = 1
    elseif key == "e" and dance == 0 then
        Song('130795320')
        anim = false
        dance = 2
    elseif key == "r" and dance == 0 then
        Song('145763936')
        anim = false
        dance = 3
    elseif key == "t" and dance == 0 then
        Song('156906204')
        anim = false
        dance = 4
    elseif key == "y" and dance == 0 then
        Song("131077111")
        anim = false
        dance = 5
    elseif key == "f" and dance == 0 then
        Song("166856063")
        anim = false
        dance = 6
    elseif key == "g" and dance == 0 then
        Song("130998447")
        anim = false
        dance = 7
    elseif key == "h" and dance == 0 then -- roleo dance :D
        Song("178856837")--insert ur soundid here plz
        anim = false
        dance = 8-- ill make this in second
    elseif key == "j" and dance == 0 then
        Song("232544821")
        anim = false
        dance = 9
    elseif key == "z" and dance == 0 then
        Song("140853918")
        anim = false
        dance = 10
    elseif key == "x" and dance == 0 then
        Song("162893085")
        anim = false
        dance = 11
    elseif key == "c" and dance == 0 then
      Song("144396704")
      anim = false
      dance = 12
     elseif key == "v" and dance == 0 then
       Song("145105874")
       anim = false
       dance = 13
     elseif key == "b" and dance == 0 then
       Song("172895447")
       anim = false
       dance = 2
     elseif key == "n" and dance == 0 then
       Song("138184193")
       anim = false
       dance = 14
     elseif key == "m" and dance == 0 then
       Song("262455019")
       anim = false
       dance = 15
elseif key == "u" and dance == 0 then
Song("160442087")
anim = false
dance = 16
elseif key == "k" and dance == 0 then
Song("146048136")
anim = false
dance = 17
elseif key == "p" and dance == 0 then
Song("183596502")
anim = false
dance = 18
elseif key == "l" and dance == 0 then
Song("242975883")
anim = false
dance = 19
elseif key == ";" and dance == 0 then
Song("229824592")
anim = false
dance = 20
elseif key == "[" and dance == 0 then
Song("147876501")
anim = false
dance = 21
elseif key == "]" and dance == 0 then
Song("159423733")
anim = false
dance = 22
elseif key == "0" and dance == 0 then
Song("182409344")
anim = false
dance = 23
    elseif key == "q" or key == "e" or key == "r" or key == "t" or key == "y" or key == "f" or key == "g" or key == "h" or key == "j" or key == "z" or key == "x" or key == "c" or key == "v" or key == "b" or key == "n" or key == "m" or key == "u" or key == "k" or key == "p" or key == "l" or key == ";" or key == "[" or key == "]" or key == "0" and dance > 0 then
        sound:Stop()
        dance = 0
        anim = true
    end
end)
local maxrage=9001
local rage = 9001
sc = Instance.new("ScreenGui",plr.PlayerGui)
sc.Name = "RaigMeter"
fr = Instance.new("Frame",sc)
fr.Size = UDim2.new(0, 250, 0, 28)
fr.Position = UDim2.new(0.75, 0, .95, 0)
fr.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
met = Instance.new("Frame", fr)
met.Size = UDim2.new(1, -10, 1, -6)
met.Position = UDim2.new(0, 5, 0, 3)
met.BackgroundColor3 = Color3.new(0, 0, 0)
met.BorderSizePixel = 0
metr = Instance.new("ImageLabel", met)
metr.Size = UDim2.new(rage/maxrage, 0, 1, -2)
metr.Position = UDim2.new(0, 0, 0, 1)
metr.Image = "http://www.roblox.com/asset/?id=112941056"
metr.BorderSizePixel = 0
metr.BackgroundColor3 = Color3.new(0,0,0)
tx = Instance.new("TextLabel", met)
tx.Size = UDim2.new(0, 0, 1, 0)
tx.Position = UDim2.new(0, 5, 0, 0)
tx.Font = "ArialBold"
tx.FontSize = "Size18"
tx.BackgroundTransparency = 1
tx.TextColor3 = BrickColor.new("Deep orange").Color
tx.TextXAlignment = "Left"
local updategui = function()
tx.Text=dance
end

Spawn(function()
    while wait()do
        angle = (angle % 100) + anglespeed/10 -- no matter whut it has to be in a loop or its on exticy
    end 
end)
meo=0
sdeb=false
game:service'RunService'.RenderStepped:connect(function()
    meo=meo+1
    updategui()
        for _,v in pairs(LerpTo) do
        v.Weld.C0 = Lerp.CFrame(v.Weld.C0,v.To,v.Speed)end
    updateanims()
end)



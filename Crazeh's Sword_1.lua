print("--==Created by Kash5==--")
local lp = game.Players.LocalPlayer
local chr = lp.Character
local mouse = lp:GetMouse()
local color1 = BrickColor.new("Really black")
local color2 = BrickColor.new("Royal purple")
local percent = 0
local plr=game.Players.LocalPlayer
local chr=plr.Character
local asin = math.asin
local atan2 = math.atan2
local rad = math.rad
local sin = math.sin
local abs = math.abs
local ceil = math.ceil
local dmg = 10
anim = true
local weld = function(p0,p1,x,y,z,ax,ay,az)
p0.Position=p1.Position
local w = Instance.new("Motor",p0)
w.Part0=p0
w.Part1=p1
w.C0=CFrame.new(x,y,z)*CFrame.Angles(ax,ay,az)
return w
end
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

anglespeed = 1
yeet = 0
count = 0
angle = 0
local attacking = false
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
local effects = Instance.new("Model",chr)--so we can get rid of effects easily, with for i,v
local VoidWalker = Instance.new("Model",chr)
local sound = function(id,looped,parent)--for effects and stuff :)
local s = Instance.new("Sound",parent)
s.Volume=math.huge
s.Looped=looped
s.SoundId="rbxassetid://"..id
s:Play()
return s
end
tol=Instance.new("HopperBin",lp.Backpack)
tol.Name="Void Walker-C-R-Z-H"--Crezeh's Void Walker



local q = Instance.new("Part",VoidWalker)
local w = Instance.new("Part",VoidWalker)
local e = Instance.new("Part",VoidWalker)
local r = Instance.new("Part",VoidWalker)
local t = Instance.new("Part",VoidWalker)
local y = Instance.new("Part",VoidWalker)
local u = Instance.new("Part",VoidWalker)
local i = Instance.new("Part",VoidWalker)
local o = Instance.new("Part",VoidWalker)
local p = Instance.new("Part",VoidWalker)
local a = Instance.new("Part",VoidWalker)
local s = Instance.new("Part",VoidWalker)
local d = Instance.new("Part",VoidWalker)

q.CanCollide=true
w.CanCollide=true
e.CanCollide=true
r.CanCollide=true
t.CanCollide=true
y.CanCollide=true
u.CanCollide=true
i.CanCollide=true
o.CanCollide=true
p.CanCollide=true
a.CanCollide=true
s.CanCollide=true
d.CanCollide=true

q.FormFactor="Custom"
w.FormFactor="Custom"
e.FormFactor="Custom"
r.FormFactor="Custom"
t.FormFactor="Custom"
y.FormFactor="Custom"
u.FormFactor="Custom"
i.FormFactor="Custom"
o.FormFactor="Custom"
p.FormFactor="Custom"
a.FormFactor="Custom"
s.FormFactor="Custom"
d.FormFactor="Custom"

q.Material="SmoothPlastic"
w.Material="SmoothPlastic"
e.Material="SmoothPlastic"
r.Material="SmoothPlastic"
t.Material="SmoothPlastic"
y.Material="SmoothPlastic"
u.Material="SmoothPlastic"
i.Material="SmoothPlastic"
o.Material="SmoothPlastic"
p.Material="SmoothPlastic"
a.Material="SmoothPlastic"
s.Material="SmoothPlastic"
d.Material="SmoothPlastic"

q.Transparency=0.2
d.Transparency=1

q.Locked=true
w.Locked=true
e.Locked=true
r.Locked=true
t.Locked=true
y.Locked=true
u.Locked=true
i.Locked=true
o.Locked=true
p.Locked=true
a.Locked=true
s.Locked=true
d.Locked=true

q.BrickColor=color2
w.BrickColor=color1
e.BrickColor=color1
r.BrickColor=color2
t.BrickColor=color2
y.BrickColor=color1
u.BrickColor=color1
i.BrickColor=color2
o.BrickColor=color1
p.BrickColor=color2
a.BrickColor=color1
s.BrickColor=color1
d.BrickColor=color1

q.Size = Vector3.new(.2,1,.2)
w.Size = Vector3.new(.2,.2,.2)
e.Size = Vector3.new(.2,.4,.2)
r.Size = Vector3.new(.2,.4,.2)
t.Size = Vector3.new(.4,.2,.2)
y.Size = Vector3.new(.4,.2,.2)
u.Size = Vector3.new(.4,.2,.2)
i.Size = Vector3.new(.4,.2,.2)
o.Size = Vector3.new(.4,.2,.2)
p.Size = Vector3.new(.4,.2,.2)
a.Size = Vector3.new(.2,.2,.2)
s.Size = Vector3.new(0.2,0.8,0.2)
d.Size = Vector3.new(.2,.2,5)

weld(q,chr['Right Arm'],-1.05,-.1,0,1.5708,0,1.5708)
weld(w,chr['Right Arm'],0,1.05,0.15,0,0,0)
weld(e,chr['Right Arm'],-.97,.5,.44,1.5708,0,1.15)
weld(r,chr['Right Arm'],-.315,.5,1.015,1.5708,0,.3)
weld(t,chr['Right Arm'],-1.05,-.8,0,1.5708,0,1.5708)
weld(y,chr['Right Arm'],0,1.05,2.8,0,0,0)
weld(u,chr['Right Arm'],-.4,.95,.7,0,0,.4)
weld(i,chr['Right Arm'],-1.05,0,.7,0,0,1.5708)
weld(o,chr['Right Arm'],.7,.75,.7,0,0,-.75)
weld(p,chr['Right Arm'],.3,1,.7,0,0,-.3)
weld(a,chr['Right Arm'],-1.05,.6,0,-1.5708,0,1.5708)
weld(s,chr['Right Arm'],0,-1.05,5.2,0,0,3.1400)
weld(d,chr['Right Arm'],0,1.05,3,0,0,0)

qq = Instance.new("CylinderMesh",q)
ww = Instance.new("SpecialMesh",w)
ee = Instance.new("SpecialMesh",e)
rr = Instance.new("SpecialMesh",r)
tt = Instance.new("SpecialMesh",t)
yy = Instance.new("BlockMesh",y)
uu = Instance.new("SpecialMesh",u)
ii = Instance.new("SpecialMesh",i)
oo = Instance.new("SpecialMesh",o)
pp = Instance.new("SpecialMesh",p)
aa = Instance.new("SpecialMesh",a)
ss = Instance.new("SpecialMesh",s)
dd = Instance.new("PointLight",q)

dd.Range = 10

ww.MeshId="http://www.roblox.com/asset/?id=16606212"
ee.MeshId="http://www.roblox.com/Asset/?id=9756362"
rr.MeshId="http://www.roblox.com/Asset/?id=9756362"
tt.MeshId="http://www.roblox.com/Asset/?id=9756362"
uu.MeshId="http://www.roblox.com/Asset/?id=9756362"
ii.MeshId="http://www.roblox.com/Asset/?id=9756362"
oo.MeshId="http://www.roblox.com/Asset/?id=9756362"
pp.MeshId="http://www.roblox.com/Asset/?id=9756362"
aa.MeshId="http://www.roblox.com/asset/?id=20329976"

ss.MeshType="Wedge"

ww.Scale = Vector3.new(0.105,0.105,0.32)
ee.Scale = Vector3.new(0.2,0.4,0.19)
rr.Scale = Vector3.new(0.2,0.4,0.19)
tt.Scale = Vector3.new(0.1,0.6,0.15)
yy.Scale = Vector3.new(0.15,1.1,20)
uu.Scale = Vector3.new(0.1,.5,0.2)
ii.Scale = Vector3.new(0.1,0.5,0.2)
oo.Scale = Vector3.new(0.1,0.5,0.2)
pp.Scale = Vector3.new(0.1,0.5,0.2)
aa.Scale = Vector3.new(0.2,0.2,0.15)
ss.Scale = Vector3.new(.3,.29,4)

for i,v in pairs(VoidWalker:GetChildren()) do
if v:IsA("Part") or v:IsA("WedgePart") then
v.CanCollide=false
v.Touched:connect(function(hit)
if attacking == true and dmg == true and hit.Parent.Name~=lp.Name and hit.Parent:FindFirstChild("Humanoid") then
hit.Parent.Humanoid:TakeDamage(dmg)
end
end)
end
end
equipped = false
tol.Selected:connect(function() 
equipped = true
chr.Humanoid.WalkSpeed=50 
end)
tol.Deselected:connect(function() 
equipped = false 
chr.Humanoid.WalkSpeed=16
end)
local function updateanims()
    if anim==true and equipped == true then
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
            anglespeed = 1/2
  	   		LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(sin(angle)*0.05,-1,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.new(0,0,0)*CFrame.Angles(0,0,1)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(40),rad(-50),rad(40))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(0),rad(0),-rad(20))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,.1)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-.1) 
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
            anglespeed = 5
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.new(0,0,0)*CFrame.Angles(.2,0,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(-25),rad(0),rad(40))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(-rad(25),rad(0),-rad(40))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-sin(angle)*.8,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(sin(angle)*.8,0,0) 
        end
    end
end
local function updateanim()
    if anim==true and equipped == false then
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
            anglespeed = 1/2
  	   		LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(sin(angle)*0.05,0,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(0),rad(0),rad(0))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(0),rad(0),-rad(0))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) 
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
            anglespeed = 3.5
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(-sin(angle)*1,rad(0),rad(00))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(sin(angle)*1,rad(0),-rad(0))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-sin(angle)*.8,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(sin(angle)*.8,0,0) 
        end
    end
end

tol.Selected:connect(function(mouse)
mouse.KeyDown:connect(function(key)
if key == "q" and attacking == false and anim == true then
	
elseif key == "0" and attacking == false and anim == true then
	
end
end)
mouse.KeyUp:connect(function(key)
if key == "0" and attacking == false and anim == true then
	
end
end)
local swing = function(val)
if val == 1 then
	        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-1,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.new(0,0,0)*CFrame.Angles(0,0,1)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(140),rad(0),rad(60))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(0),rad(0),-rad(0))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) 
			wait(.25)
	        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-1,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.new(0,0,0)*CFrame.Angles(0,0,1)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(0),rad(-50),rad(10))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(0),rad(0),-rad(0))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) 
elseif val == 2 then
	        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-1,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.new(0,0,0)*CFrame.Angles(0,0,1)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),rad(60),rad(-60))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(0),rad(0),-rad(0))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) 
			wait(.25)
	        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-1,0)
            LerpTo.RootJoint.To=LerpTo.RootJoint.Cache * CFrame.new(0,0,0)*CFrame.Angles(0,0,1)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),rad(60),rad(-60))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(0),rad(0),-rad(0))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) 
elseif val == 3 then
end
end
local combonumb = 1
music = false
mouse.Button1Down:connect(function()
if combonumb == 1 and attacking == false and anim == true then
attacking = true
anim = false
dmg = true
wait(.25)
swing(1)
wait(.25)
coroutine.resume(coroutine.create(function() combonumb = 2 wait(1) combonumb = 1 end))
anim = true
attacking = false
elseif combonumb == 2 and attacking == false and anim == true then
attacking = true
anim = false
dmg = true
wait(.25)
swing(2)
wait(.25)
coroutine.resume(coroutine.create(function() combonumb = 3 wait(1) combonumb = 1 end))
anim = true
attacking = false
elseif combonumb == 3 and attacking == false and anim == true then
attacking = true
anim = false
dmg = true
wait(.25)
swing(3)
wait(.25)
coroutine.resume(coroutine.create(function() combonumb = 1 wait(1) combonumb = 1 end))
anim = true
attacking = false
dmg = false
end
end)
end)
Spawn(function()
while wait()do
angle = (angle % 100) + anglespeed/10 -- no matter whut it has to be in a loop or its on exticy
end 
end)
lp.Chatted:connect(function(msg)
if msg == "hc" then
print("Health:"..chr.Humanoid.Health)
print("MaxHealth:"..chr.Humanoid.MaxHealth)
elseif msg == "mon" and music == false then
print("Music playing --==[Not looped]==--")
music = true
sound("212718942",false,chr)
wait(120)
music = false
end
end)
meo=0
sdeb=false
game:service'RunService'.RenderStepped:connect(function()
    meo=meo+1
        for _,v in pairs(LerpTo) do
        v.Weld.C0 = Lerp.CFrame(v.Weld.C0,v.To,v.Speed)end
    updateanims()
	updateanim()
end)
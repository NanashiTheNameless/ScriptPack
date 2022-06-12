
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
dnc=0
count = 0
angle = 0
counttime = 50
countspeed = 1
speed = 1
hats={}
song={}
local plr=game.Players.LocalPlayer
local pchar=plr.Character
local torso=pchar.Torso
local mos=plr:GetMouse()
local Neck = genWeld(pchar.Torso,pchar.Head)
Neck.C0 = CFrame.new(0,1,0)
Neck.C1 = CFrame.new(0,-0.5,0)
local LeftShoulder = genWeld(pchar.Torso,pchar['Left Arm'])
LeftShoulder.C0 = CFrame.new(-1,0.5,0)
LeftShoulder.C1 = CFrame.new(0.5,0.5,0)
RightShoulder = genWeld(pchar.Torso,pchar['Right Arm'])
RightShoulder.C0 = CFrame.new(1,0.5,0)
RightShoulder.C1 = CFrame.new(-0.5,0.5,0)
local LeftHip = genWeld(pchar.Torso,pchar['Left Leg'])
LeftHip.C0 = CFrame.new(-1,-1,0)
LeftHip.C1 = CFrame.new(-0.5,1,0)
local RightHip = genWeld(pchar.Torso,pchar['Right Leg'])
RightHip.C0 = CFrame.new(1,-1,0)
RightHip.C1 = CFrame.new(0.5,1,0)
local RootJoint = genWeld(pchar.HumanoidRootPart,pchar.Torso)
RootJoint.C0 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)
RootJoint.C1 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)
local mainp=Part(2.01,2.01,1.01,'Black',0,false,false,pchar)
Weld(torso,mainp,0,0,0,0,0,0,mainp)
local p=Part(2.02,1.2,1.02,'Lavender',0,false,false,pchar)
Weld(mainp,p,0,.41,0,0,0,0,p)
local p=Part(2.02,2.03,.5,'Lavender',0,false,false,pchar)
Weld(mainp,p,0,0,-0.26,0,0,0,p)
local p=Part(.5,1,1.02,'Lavender',0,false,false,pchar)
Weld(mainp,p,-0.2,-0.65,0,0,0,rad(30),p)
local p=Part(.5,1,1.02,'Lavender',0,false,false,pchar)
Weld(mainp,p,0.2,-0.65,0,0,0,-rad(30),p)
local p=Part(.5,1,1.02,'Lavender',0,false,false,pchar)
Weld(mainp,p,.76,-0.51,0,0,0,0,p)
local p=Part(.5,1,1.02,'Lavender',0,false,false,pchar)
Weld(mainp,p,-.76,-0.51,0,0,0,0,p)
local p=Part(1.01,2.01,1.01,'Nougat',0,false,false,pchar)
Weld(pchar['Right Arm'],p,0,0,0,0,0,0,p)
local p=Part(1.02,1.25,1.02,'Lavender',0,false,false,pchar)
Weld(pchar['Right Arm'],p,0,-0.41,0,0,0,0,p)
local p=Part(1.01,2.01,1.01,'Nougat',0,false,false,pchar)
Weld(pchar['Left Arm'],p,0,0,0,0,0,0,p)
local p=Part(1.02,1.25,1.02,'Lavender',0,false,false,pchar)
Weld(pchar['Left Arm'],p,0,-0.41,0,0,0,0,p)
local p=Part(1.01,2.01,1.01,'Dark stone grey',0,false,false,pchar)
Weld(pchar['Right Leg'],p,0,0,0,0,0,0,p)
local p=Part(1.01,2.01,1.01,'Dark stone grey',0,false,false,pchar)
Weld(pchar['Left Leg'],p,0,0,0,0,0,0,p)
local p=Part(2,1,1,'Nougat',0,false,false,pchar)
Weld(pchar.Head,p,0,0,0,0,0,0,p)
h=Mesh(p,2,1.25,1.25,1.25)
h.MeshType='Head'
function face(id)
    pchar.Head.face.Texture='http://www.roblox.com/asset/?id='..id
end

function addh(id,txt,s1,s2,s3,x,y,z)
    local hat=Part(1,1,1,'',0,false,false,pchar)
    table.insert(hats,hat)
    Weld(pchar.Head,hat,x,y,z,0,0,0,p)
    m=Mesh(hat,'http://www.roblox.com/asset/?id='..id,s1,s2,s3)
    m.TextureId='http://www.roblox.com/asset/?id='..txt
    return m
end

function clearhats()
    for i=1,#hats do 
        hats[i]:Destroy()
    end
    hats={}
end

function so(id,pi)
    local s = Instance.new("Sound",torso)
    s.Looped=true
    s.Pitch=pi
    s.SoundId = "http://roblox.com/asset/?id="..id
    s.Volume=1
    table.insert(song,s)
    s:play()
end

function killsong()
    for i=1,#song do 
        song[i]:stop()
        song[i]:Destroy()
    end
    song={}
end

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
for _,v in pairs(pchar:GetChildren()) do
    if v.ClassName=="Hat" then
        v:remove()
    end
end

pchar.Head.Transparency=.99


mos.KeyDown:connect(function(key)
    if(key == "q")then--tunak
	    q=not q    
		if q==true then 
			dnc=0
			face('22815795')
			addh('11380070','11380053',1,1,1,0,-.75,0)
			so('162682002',1)
	        Spawn(function()
	            while true do wait()
	                dnc=1
	                for i=1,5 do
	                    if q==false then dnc=0 break end
	                    wait(1)
	                end
	                dnc=2
	                for i=1,5 do
	                    if q==false then dnc=0 break end
	                    wait(1)
                    end
	                dnc=3
	                for i=1,5 do
	                    if q==false then dnc=0 break end
	                    wait(1)
                    end
	            end
	        end)
		else
		   killsong()
		   clearhats()
		end
    end
    if(key == "t")then-- swing
	    q=not q    
		if q==true then 
			dnc=0
			face('13079565')
			addh('1285237','63036639',1.1,1.1,1.1,0,-.6,0)
			so('154479412',1)
	        Spawn(function()
	            while true do wait()
	                dnc=9
	                for i=1,5 do
	                    if q==false then dnc=0 break end
	                    wait(1)
	                end
	                dnc=9
	                for i=1,5 do
	                    if q==false then dnc=0 break end
	                    wait(1)
                    end
	            end
            end)
		else
		   killsong()
		   clearhats()
		end
    end
    if(key == "e")then-- touch
	    q=not q    
		if q==true then 
			dnc=0
			face('114968735')
			addh('1577360','1577349',1,1,1,0,-.25,.2)
			addh('169415286','169415338',2.5,2.5,2.5,0,-.7,-.15)
			so('168007346',1)
	        Spawn(function()
	            while true do wait()
	                dnc=4
	                for i=1,5 do
	                    if q==false then dnc=0 break end
	                    wait(1)
	                end
	                dnc=5
	                for i=1,5 do
	                    if q==false then dnc=0 break end
	                    wait(1)
                    end
	                dnc=6
	                for i=1,5 do
	                    if q==false then dnc=0 break end
	                    wait(1)
                    end
	            end
	        end)
		else
		   killsong()
		   clearhats()
		end
    end
    if(key == "r")then-- op
	    q=not q    
		if q==true then 
			dnc=0
			face('13079565')
			addh('13640868','18987684',1,1,1,0,-.8,0)
			addh('13332444','13332337',1,1,1,0,-.25,0)
			addh('68251147','67995474',1,1,1,0,-.2,0.17)
			so('130844430',1)
	        Spawn(function()
	            while true do wait()
	                dnc=7
	                for i=1,5 do
	                    if q==false then dnc=0 break end
	                    wait(1)
	                end
	                dnc=8
	                for i=1,5 do
	                    if q==false then dnc=0 break end
	                    wait(1)
                    end
	            end
            end)
		else
		   killsong()
		   clearhats()
		end
    end
end)

local function updateanims()
    if dnc==0 then
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
            anglespeed = 1/2
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(sin(yeet)*0.05,0,0)
			LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(sin(yeet)*0.1,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(-sin(yeet)*0.1,0,0)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,abs(sin(yeet))*0.1)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-abs(sin(yeet))*0.1) 
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
            anglespeed = 4
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,math.sin(yeet)*0.05)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(-sin(yeet)*.8,0,rad(10))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(sin(yeet)*.8,0,-rad(10))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(sin(yeet)*.8,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(-sin(yeet)*.8,0,0) 
        end
    end
    if dnc==1 then
        anglespeed = 5
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(sin(angle)*0.05,0,0)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,sin(angle)*0.15,0) * CFrame.new(0,abs(sin(angle))*0.1,0)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80)-sin(yeet)*0.2,0,-rad(65))
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(80)-sin(yeet)*0.2,0,rad(65))
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(rad(20)+sin(angle)*0.5,0,0)
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(20)-sin(angle)*0.5,0,0) 
    end
    if dnc==2 then
        anglespeed = 2
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(sin(angle)*0.05,-rad(20),0)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,abs(sin(angle))*0.1,0)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80)-sin(angle)*0.5,0,rad(20))
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-abs(sin(angle))*0.3)
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,abs(sin(yeet))*0.3)
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-abs(sin(yeet))*0.3) 
    end
    if dnc==3 then
        anglespeed = 3
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(sin(angle)*0.05,0,0)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,abs(sin(angle))*0.3,0)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(-rad(180),0,math.pi/30-math.sin(-angle)*0.2)
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(-rad(180),0,-math.pi/30-math.sin(-angle)*0.2)
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(sin(yeet)*0.3,0,0)
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(-sin(yeet)*0.3,0,0) 
    end
    if dnc==4 then
        anglespeed = 3
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,sin(yeet)*0.1)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,0)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(10),rad(30),rad(10)) * CFrame.new(0,-abs(sin(yeet))*0.2,0)
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(10),-rad(30),-rad(10)) * CFrame.new(0,-abs(sin(yeet))*0.2,0)
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,abs(sin(yeet))*0.1)
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-abs(sin(yeet))*0.1) 
    end
    if dnc==5 then
        anglespeed = 3
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(rad(10),0,sin(yeet)*0.1)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(rad(20),sin(angle)*0.2,sin(angle)*0.5) * CFrame.new(0,-abs(sin(angle))*0.5,0)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90)-sin(yeet)*0.5,0,-rad(10))
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90)-sin(yeet)*0.5,0,rad(10))
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(rad(20),0,abs(sin(yeet))*0.1)
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(20),0,-abs(sin(yeet))*0.1) 
    end
    if dnc==6 then
        anglespeed = 3
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,sin(angle)*1,sin(yeet)*0.1)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(sin(angle)*1,0,0)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(10),rad(30),-rad(10)) * CFrame.new(0,-abs(sin(yeet))*0.2,0)
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(10),-rad(30),rad(10)) * CFrame.new(0,-abs(sin(yeet))*0.2,0)
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,abs(sin(yeet))*0.2)
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-abs(sin(yeet))*0.2) 
    end
    if dnc==7 then
        anglespeed = 4
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-sin(yeet)*0.2,0)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,sin(yeet)*0.2) * CFrame.new(0,0,-abs(sin(yeet))*0.4)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80)+sin(yeet)*0.2,0,-rad(50)) *CFrame.new(0,-.5,0)
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90)+sin(yeet)*0.2,0,rad(50))*CFrame.new(0,-.5,0)
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(20)+sin(yeet)*0.5) *CFrame.new(0,abs(sin(yeet))*0.3,0)
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-rad(20)+sin(yeet)*0.5) *CFrame.new(0,abs(sin(yeet))*0.3,0)
    end
    if dnc==8 then
        anglespeed = 4
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-sin(yeet)*0.2,0)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,sin(yeet)*0.2) * CFrame.new(0,0,-abs(sin(yeet))*0.4)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(180)+sin(yeet)*.3,0,sin(yeet)*.3)
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90)+sin(yeet)*0.2,0,rad(50))*CFrame.new(0,-.5,0)
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(20)+sin(yeet)*0.5) *CFrame.new(0,abs(sin(yeet))*0.3,0)
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-rad(20)+sin(yeet)*0.5) *CFrame.new(0,abs(sin(yeet))*0.3,0)
    end
    if dnc==9 then
        anglespeed = 4
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-sin(yeet)*0.2,0)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,sin(yeet)*0.2)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80)+sin(yeet)*0.2,0,-rad(50)) *CFrame.new(0,-.5,0)
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90)+sin(yeet)*0.2,0,rad(50))*CFrame.new(0,-.5,0)
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(20)+sin(yeet)*0.5) *CFrame.new(0,abs(sin(yeet))*0.3,0)
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-rad(20)+sin(yeet)*0.5) *CFrame.new(0,abs(sin(yeet))*0.3,0)
    end
end
Spawn(function()
    while wait()do
        count = (count%counttime)+countspeed
	    angle = math.pi*math.sin((math.pi*2)/counttime*count)
        yeet = (yeet % 100) + anglespeed/10
    end 
end)
game:service'RunService'.RenderStepped:connect(function()
    for _,v in pairs(LerpTo) do
        v.Weld.C0 = Lerp.CFrame(v.Weld.C0,v.To,v.Speed)
    end
    updateanims()
end)

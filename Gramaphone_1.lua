songs = {"No Rain","484759745","Panic","277784505","Pack up the Louie","262032243","Rock it for me","157460849","Suzy","280613610","Bambous","198285559","Sofa","253333412","Ballroom Breakers","269261597","Bad boy Good man","201552585","Booty Swing","242193187","Jimmy's Gang","228239848","Catgroove","149838917","All Night","253586805"}

local asin = math.asin
local atan2 = math.atan2
local rad = math.rad
local sin = math.sin
local abs = math.abs
local ceil = math.ceil
local pi = math.pi
deddeb=false
deb=false
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local torso=pchar.Torso
anim=true
anim2=false
anglespeed = 1
hum=pchar.Humanoid
angle = 0
equi=false
showing = false
tol=Instance.new("HopperBin",player.Backpack)
tol.Name="GramaPlayer"
Part = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
    return p
end
wPart = function(x,y,z,color,tr,cc,an,parent)
    local wp = Instance.new('WedgePart',parent or Weapon)
    wp.formFactor = 'Custom'
    wp.Size = Vector3.new(x,y,z)
    wp.BrickColor = BrickColor.new(color)
    wp.CanCollide = cc
    wp.Transparency = tr
    wp.Anchored = an
    wp.TopSurface,wp.BottomSurface = 0,0
    return wp
end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    p0.Position = p1.Position
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
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

ROW = function(x, pa, out, col, trans, s, wt, t, ang, plus)
    for i = 1, 360, 360/t do wait()
        local c = Instance.new("Part", pa)
        c.FormFactor = 3
        c.TopSurface = 0
        c.BottomSurface = 0
        c.Size = s
        c.Anchored = true
        c.CanCollide = wt
        c.Transparency = trans
        c.BrickColor = BrickColor.new(col)
        c.CFrame = x * CFrame.Angles(0, math.rad(i + plus), 0) * CFrame.new(0, 0, out) * ang
    end
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
local function newLerpTo(weld)
        return {
                Weld = weld;
                To = weld.C0; 
                Cache = weld.C0; 
                Speed = 0.1; 
        }
end
mo = Instance.new("Model",pchar)
mp = Part(1,1,1,'Reddish brown',1,false,false,mo)
Mesh(mp,3,1.5,.75,1.5)
mw = Weld(mp,torso,0,-.125,-1.5,0,0,0,mo)
mp.Material='Wood'
p = Part(1,1,1,'Brown',1,false,false,mo)
Mesh(p,3,1.75,.1,1.75)
Weld(p,mp,0,-.375,0,0,0,0,mo)
p.Material='Wood'
p = Part(1,1,1,'Nougat',1,false,false,mo)
Mesh(p,3,1.325,.1,1.325)
Weld(p,mp,0,.375,0,0,0,0,mo)
p.Material='WoodPlanks'
p = Part(1,1,1,'Black',1,false,false,mo)
Mesh(p,1,1.325,.1,1.325)
Weld(p,mp,0,.376,0,0,0,0,mo)
p.Material='SmoothPlastic'
disc = Part(1,1,1,'Black',1,false,false,mo)
Mesh(disc,3,1.25,.1,1.25)
discw=Weld(disc,mp,0,.377,0,0,0,0,mo)
d=Instance.new('Decal',disc)
d.Face='Top'
d.Transparency=1
d.Texture='http://www.roblox.com/asset/?id=24716248'
sp = Part(1,1,1,'',1,false,false,mo)
Mesh(sp,1,.1,.5,.1)
Weld(sp,mp,-.5,.42,-.5,rad(45),0,-rad(45),mo)
sp.Material='SmoothPlastic'
sp2 = Part(1,1,1,'',1,false,false,mo)
Mesh(sp2,1,.15,.11,.15)
Weld(sp2,sp,0,.25,0,pi/2,0,rad(50),mo)
sp2.Material='SmoothPlastic'
p = Part(1,1,1,'',1,false,false,mo)
Mesh(p,1,.05,.5,.05)
Weld(p,sp2,0.2,0,0,0,0,pi/2,mo)
p.Material='SmoothPlastic'
p = Part(1,1,1,'Dark stone grey',1,false,false,mo)
Mesh(p,1,.15,.2,.15)
Weld(p,mp,0,.377,0,0,0,0,mo)
p = Part(1,1,1,'Black',1,false,false,mo)
Mesh(p,1,.2,.1,.2)
Weld(p,mp,.75,0,0,0,0,pi/2,mo)
hn = Part(1,1,1,'Dark stone grey',1,false,false,mo)
Mesh(hn,1,.1,.5,.1)
hnw=Weld(hn,mp,.75,0,0,0,0,-pi/2,mo)
p = Part(1,1,1,'Dark stone grey',1,false,false,mo)
Mesh(p,1,.15,.11,.15)
Weld(p,hn,0,.25,0,0,0,0,mo)
p = Part(1,1,1,'Dark stone grey',1,false,false,mo)
Mesh(p,1,.1,.25,.1)
Weld(p,hn,-0.125,.25,0,0,0,pi/2,mo)
p = Part(1,1,1,'Dark stone grey',1,false,false,mo)
Mesh(p,1,.15,.11,.15)
Weld(p,hn,-.25,.25,0,0,0,0,mo)
p = Part(1,1,1,'Dark stone grey',1,false,false,mo)
Mesh(p,1,.1,.5,.1)
Weld(p,hn,-.25,.5,0,0,0,0,mo)
p = Part(1,1,1,'Brown',1,false,false,mo)
Mesh(p,1,.125,.35,.125)
Weld(p,hn,-.25,.5,0,0,0,0,mo)
p.Material='Wood'
local crank = p
for i=1,90,18 do
    local p=Part(1,1,1,'Dark stone grey',1,false,false,mo)
    Mesh(p,1,.15,.115,.15)
    local w=Weld(p,mp,0,0,0,0,0,0,p)
    w.C0=CFrame.new(0.3,0,0)*CFrame.Angles(0,0,-math.rad(i))*CFrame.new(.7,-.3,0);
end
p = Part(1,1,1,'Dark stone grey',1,false,false,mo)
Mesh(p,1,.15,.3,.15)
Weld(p,mp,-1,.5,0,0,0,0,mo)
for i=1,70,18 do
    local p=Part(1,1,1,'Dark stone grey',1,false,false,mo)
    Mesh(p,1,.15,.115,.15)
    local w=Weld(p,mp,0,0,0,0,0,0,p)
    w.C0=CFrame.new(.3,0,0)*CFrame.Angles(0,0,math.rad(i))*CFrame.new(0.7,-.6,0);
end
strt = Part(1,1,1,'Dark stone grey',1,false,false,mo)
Mesh(strt,1,.15,.3,.15)
Weld(strt,mp,-.7,.925,0,0,0,-rad(65),mo)

for i=1,24 do
    local p=Part(1,1,1,'Dark stone grey',1,false,false,mo)
    Mesh(p,3,.5,.1,.01)
    local wld=Weld(p,strt,0,0,0,0,0,0,mo)
    wld.C1=CFrame.new(0,.1,0)*CFrame.Angles(pi/2,0,rad(360/24)*i)*CFrame.new(0.1,0,0)*CFrame.Angles(0,rad(70),0)
end
for i=1,24 do
    local p=Part(1,1,1,'Dark stone grey',1,false,false,mo)
    Mesh(p,3,.5,.2,.01)
    local wld=Weld(p,strt,0,0,0,0,0,0,mo)
    wld.C1=CFrame.new(0,.525,0)*CFrame.Angles(pi/2,0,rad(360/24)*i)*CFrame.new(0.35,0,0)*CFrame.Angles(0,rad(50),0)
end
p = Part(1,1,1,'Black',1,false,false,mo)
Mesh(p,'http://www.roblox.com/asset/?id=3270017',.42,.42,.42)
Weld(p,strt,0,.35,0,pi/2,0,0,mo)
p = Part(1,1,1,'Black',1,false,false,mo)
Mesh(p,'http://www.roblox.com/asset/?id=3270017',1,1,1)
Weld(p,strt,0,.75,0,pi/2,0,0,mo)

s = Instance.new("Sound",sp2)
s.Looped=true
s.Pitch=1

local screengui = Instance.new("ScreenGui",player.PlayerGui)
screengui.Name = "musicgui"

local frame = Instance.new("Frame",screengui)
frame.BorderSizePixel = 0
frame.Size = UDim2.new(0.15, 0, 0.35, 0)
frame.ClipsDescendants = true
frame.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
frame.Position = UDim2.new(1.1, 0, 0.35, 0)
frame.BackgroundTransparency = 0.8
frame.BackgroundColor3 = Color3.new(0, 0, 0)

local dt = Instance.new("Frame",frame)
dt.BorderSizePixel = 0
dt.Size = UDim2.new(0.02, 0, 1, 0)
dt.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
dt.Name = "dt"
dt.BackgroundTransparency = 0.8
dt.BackgroundColor3 = Color3.new(1, 1, 1)

local dt_2 = Instance.new("Frame",frame)
dt_2.BorderSizePixel = 0
dt_2.Size = UDim2.new(0.98, 0, 0.02, 0)
dt_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
dt_2.Name = "dt"
dt_2.Position = UDim2.new(0.02, 0, 0.2, 0)
dt_2.BackgroundTransparency = 0.8
dt_2.BackgroundColor3 = Color3.new(1, 1, 1)

local name = Instance.new("TextLabel",frame)
name.FontSize = Enum.FontSize.Size24
name.TextStrokeTransparency = 0
name.BorderSizePixel = 0
name.Size = UDim2.new(1, 0, 0.2, 0)
name.TextColor3 = Color3.new(1, 1, 1)
name.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
name.Text = "Music list"
name.BackgroundTransparency = 1
name.Font = Enum.Font.SourceSans
name.Name = "name"
name.BackgroundColor3 = Color3.new(1, 1, 1)

local list = Instance.new("ScrollingFrame",frame)
list.Size = UDim2.new(0.82, 0, 0.6, 0)
list.BackgroundTransparency = 0.8
list.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
list.Name = "list"
list.Position = UDim2.new(0.1, 0, 0.3, 0)
list.ScrollBarThickness = 8
list.BackgroundColor3 = Color3.new(0, 0, 0)

local dt_3 = Instance.new("Frame",selector)
dt_3.BorderSizePixel = 0
dt_3.Size = UDim2.new(0.02, 0, 1, 0)
dt_3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
dt_3.Name = "dt"
dt_3.BackgroundTransparency = 0.8
dt_3.BackgroundColor3 = Color3.new(1, 1, 1)

local songinfo = Instance.new("Frame",frame)
songinfo.Size = UDim2.new(0.82, 0, 0.6, 0)
songinfo.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
songinfo.Name = "songinfo"
songinfo.Position = UDim2.new(1.1, 0, 0.3, 0)
songinfo.BackgroundTransparency = 0.8
songinfo.BackgroundColor3 = Color3.new(0, 0, 0)

local dt = Instance.new("Frame",songinfo)
dt.BorderSizePixel = 0
dt.Size = UDim2.new(1, 0, 0.02, 0)
dt.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
dt.Name = "dt"
dt.Position = UDim2.new(0, 0, 0.2, 0)
dt.BackgroundTransparency = 0.8
dt.BackgroundColor3 = Color3.new(1, 1, 1)

local songnam = Instance.new("TextLabel",songinfo)
songnam.FontSize = Enum.FontSize.Size24
songnam.TextStrokeTransparency = 0
songnam.TextWrapped = true
songnam.BorderSizePixel = 0
songnam.Size = UDim2.new(1, 0, 0.2, 0)
songnam.TextColor3 = Color3.new(1, 1, 1)
songnam.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
songnam.Text = "n/a"
songnam.BackgroundTransparency = 1
songnam.Font = Enum.Font.SourceSans
songnam.Name = "songnam"
songnam.TextScaled = true
songnam.BackgroundColor3 = Color3.new(1, 1, 1)

local time = Instance.new("Frame",songinfo)
time.BorderSizePixel = 0
time.Size = UDim2.new(0.8, 0, 0.1, 0)
time.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
time.Name = "time"
time.Position = UDim2.new(0.1, 0, 0.4, 0)
time.BackgroundTransparency = 0.7
time.BackgroundColor3 = Color3.new(0, 0, 0)
time.ClipsDescendants=true

local slider = Instance.new("Frame",time)
slider.BorderSizePixel = 0
slider.Size = UDim2.new(0.955, 0, 0.7, 0)
slider.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
slider.Name = "slider"
slider.Position = UDim2.new(0.02, 0, 0.15, 0)
slider.BackgroundTransparency = 0.4
slider.BackgroundColor3 = Color3.new(1, 1, 1)

local snglegth = Instance.new("TextLabel",songinfo)
snglegth.FontSize = Enum.FontSize.Size14
snglegth.TextStrokeTransparency = 0
snglegth.Size = UDim2.new(1, 0, 0.63, 0)
snglegth.TextColor3 = Color3.new(1, 1, 1)
snglegth.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
snglegth.Text = "0/120"
snglegth.BackgroundTransparency = 1
snglegth.Font = Enum.Font.SourceSans
snglegth.Name = "snglegth"
snglegth.BackgroundColor3 = Color3.new(1, 1, 1)

local pitch = Instance.new("TextButton",songinfo)
pitch.FontSize = Enum.FontSize.Size12
pitch.TextStrokeTransparency = 0
pitch.BackgroundTransparency = 0.8
pitch.Position = UDim2.new(0.455, 0, 0.525, 0)
pitch.BorderSizePixel = 0
pitch.Size = UDim2.new(0.25, 0, 0.15, 0)
pitch.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
pitch.Text = "Set Pitch"
pitch.Font = Enum.Font.SourceSans
pitch.Name = "pitch"
pitch.TextColor3 = Color3.new(1, 1, 1)
pitch.BackgroundColor3 = Color3.new(0, 0, 0)

local play = Instance.new("TextButton",songinfo)
play.FontSize = Enum.FontSize.Size14
play.TextStrokeTransparency = 0
play.BackgroundTransparency = 0.8
play.Position = UDim2.new(0.175, 0, 0.525, 0)
play.BorderSizePixel = 0
play.Size = UDim2.new(0.25, 0, 0.15, 0)
play.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
play.Text = "Stop"
play.Font = Enum.Font.SourceSans
play.Name = "play"
play.TextColor3 = Color3.new(1, 1, 1)
play.BackgroundColor3 = Color3.new(0, 0, 0)

local pitchn = Instance.new("TextBox",songinfo)
pitchn.FontSize = Enum.FontSize.Size14
pitchn.TextStrokeTransparency = 0
pitchn.BackgroundTransparency = 0.8
pitchn.BorderSizePixel = 0
pitchn.Size = UDim2.new(0.1, 0, 0.15, 0)
pitchn.Position = UDim2.new(0.735, 0, 0.525, 0)
pitchn.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
pitchn.Text = "1"
pitchn.TextColor3 = Color3.new(1, 1, 1)
pitchn.Font = Enum.Font.SourceSans
pitchn.Name = "pitchn"
pitchn.BackgroundColor3 = Color3.new(0, 0, 0)

local rtr = Instance.new("TextButton",songinfo)
rtr.FontSize = Enum.FontSize.Size14
rtr.TextStrokeTransparency = 0
rtr.BackgroundTransparency = 0.8
rtr.Position = UDim2.new(0.175, 0, 0.7, 0)
rtr.BorderSizePixel = 0
rtr.Size = UDim2.new(0.667, 0, 0.15, 0)
rtr.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
rtr.Text = "Return to list"
rtr.Font = Enum.Font.SourceSans
rtr.Name = "rtl"
rtr.TextColor3 = Color3.new(1, 1, 1)
rtr.BackgroundColor3 = Color3.new(0, 0, 0)

cpos=0
numt2=1
for i=1,#songs/2 do
    local cnumt=numt2+1
    local selector = Instance.new("TextButton",list)
    selector.FontSize = Enum.FontSize.Size18
    selector.TextWrapped = true
    selector.TextStrokeTransparency = 0
    selector.BackgroundTransparency = 0.8
    selector.Position = UDim2.new(0, 3, 0, 3+cpos)
    selector.BorderSizePixel = 0
    selector.Size = UDim2.new(.93, 0, 0, 30)
    selector.Text = songs[numt2]
    selector.Font = Enum.Font.SourceSans
    selector.Name = songs[numt2].."_selector"
    selector.TextColor3 = Color3.new(1, 1, 1)
    selector.TextScaled = true
    selector.BackgroundColor3 = Color3.new(0, 0, 0)
    selector.MouseButton1Click:connect(function()
        songinfo:TweenPosition(UDim2.new(.1, 0, 0.3, 0), "Out", "Quad", .2)
        list:TweenPosition(UDim2.new(-1, 0, 0.3, 0), "Out", "Quad", .2)
        local curp=s.Pitch
        s:Destroy()
        s = Instance.new("Sound",sp2)
        s.Looped=true
        s.Pitch=1
        s.Name=songs[cnumt-1]
        s.SoundId = "http://roblox.com/asset/?id="..songs[cnumt]
	wait(.1)
        s:Play()
    end)
    cpos=cpos+35
    numt2=numt2+2
end

playa=false

play.MouseButton1Click:connect(function()
    playa=not playa
    if playa then
        curpi=s.Pitch
        play.Text="Play"
        for i=1,curpi/.05 do wait() s.Pitch=s.Pitch-.05 end
    else
        play.Text="Stop"
        for i=1,curpi/.05 do wait() s.Pitch=s.Pitch+.05 end
    end
end)

pitch.MouseButton1Click:connect(function()
    s.Pitch=tonumber(pitchn.Text)
end)

rtr.MouseButton1Click:connect(function()
    songinfo:TweenPosition(UDim2.new(1.1, 0, 0.3, 0), "Out", "Quad", .2)
    list:TweenPosition(UDim2.new(.1, 0, 0.3, 0), "Out", "Quad", .2)
end)


LerpTo = {
        Neck = newLerpTo(Neck);
        LeftArm = newLerpTo(LeftShoulder);
        RightArm = newLerpTo(RightShoulder);
        LeftLeg = newLerpTo(LeftHip);
        RightLeg = newLerpTo(RightHip);
        RootJoint = newLerpTo(RootJoint);
}


tol.Selected:connect(function(mouse)
    equi=true
    frame:TweenPosition(UDim2.new(.83, 0, 0.35, 0), "Out", "Quad", .5)
    LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(20),0,0)
    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(20),0,0)
    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(rad(90),0,rad(10))
    LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(90),0,-rad(10))
    LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.new(0,0,-1.5)
    pchar.Humanoid.WalkSpeed=0
    for i=1,10 do wait()
        for _,v in pairs(mo:GetChildren()) do
            if v.ClassName=="Part" then
                v.Transparency=v.Transparency-.1
                if v==disc then v.Transparency=1 end
            end
        end
        d.Transparency=d.Transparency-.1
    end
end)

tol.Deselected:connect(function(mouse)
    equi=false
    for i=1,10 do wait()
        for _,v in pairs(mo:GetChildren()) do
            if v.ClassName=="Part" then
                v.Transparency=v.Transparency+.1
                if v==disc then v.Transparency=1 end
            end
        end
        d.Transparency=d.Transparency+.1
    end
    pchar.Humanoid.WalkSpeed=16
    s:Stop()
    wait()
    frame:TweenPosition(UDim2.new(1.1, 0, 0.35, 0), "Out", "Quad", .5)
    songinfo:TweenPosition(UDim2.new(1.1, 0, 0.3, 0), "Out", "Quad", .2)
    list:TweenPosition(UDim2.new(.1, 0, 0.3, 0), "Out", "Quad", .2)
end)

game:GetService("RunService"):BindToRenderStep("Player",Enum.RenderPriority.Character.Value,function()
    songnam.Text=s.Name
    snglegth.Text=s.TimePosition.."/"..s.TimeLength
    slider.Size = UDim2.new(math.ceil(s.TimePosition)/s.TimeLength, -8, .7, 0)
    angle = (angle % 100) + anglespeed/10
    if equi==false then
        if Vector3.new(torso.Velocity.x, torso.Velocity.y, torso.Velocity.z).magnitude < 2 then
            anglespeed = 1/2/2
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.new(0,0,0)
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(-math.sin(angle)*.1,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.sin(angle)*.1,0,0)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(math.sin(angle)*.1,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(-math.sin(angle)*.1,0,0)
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
            anglespeed = 4/2
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.new(0,0,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(-math.sin(angle)*1,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(math.sin(angle)*1,0,0)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(math.sin(angle)*1,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(-math.sin(angle)*1,0,0)
        end
    else
        local Point = (pchar['Torso'].CFrame*LerpTo.RightArm.Cache):inverse()*CFrame.new((pchar['Torso'].CFrame*LerpTo.RightArm.Cache).p,crank.Position)
        local Rel = (pchar['Torso'].CFrame*LerpTo.RightArm.Cache):inverse()*crank.Position
        Rel = Rel+Vector3.new(-0.5,0.35,0.95)
        local Rel2 = (pchar['Torso'].CFrame*LerpTo.RightArm.Cache):inverse()*(pchar['Right Arm'].Position)
        local Vec = Vector3.new(Rel.X-Rel2.X,Rel.Y-Rel2.Y,(Rel.Z-Rel2.Z)*10)
        CFr = (Point-Point.p)+Vec
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFr * CFrame.Angles(math.rad(90),0,0)
    end
    for _,v in pairs(LerpTo) do
        v.Weld.C0 = Lerp.CFrame(v.Weld.C0,v.To,v.Speed)
    end
    discw.C1=discw.C1*CFrame.Angles(0,rad(2*s.Pitch),0)
    hnw.C1=hnw.C1*CFrame.Angles(0,rad(2*s.Pitch),0)
end)
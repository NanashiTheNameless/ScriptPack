--tribal scythe made by jarredbcv, ideas from masterepico
local player = game.Players.LocalPlayer
local pchar = player.Character
local mouse = player:GetMouse()
local torso=pchar.Torso
anim=true
anglespeed = 1
angle = 0
maxrage = 9001
rage = 9001 -- ITS OVER 9000!
local asin = math.asin
local atan2 = math.atan2
local rad = math.rad
local sin = math.sin
local abs = math.abs
local ceil = math.ceil
local pi = math.pi
deddeb=false
deb=false
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
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Wedge"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end
    msh.Scale = Vector3.new(x,y,z)
    return msh
end
so = function(id,par,lo,pi)
    s = Instance.new("Sound",par) s.Looped=lo s.Pitch=pi
    s.SoundId = "http://roblox.com/asset/?id="..id s:play()
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
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.01)
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
    CFrame = function(C1,C2,inc)
        local x1,y1,z1 = getAngles(C1)
        local x2,y2,z2 = getAngles(C2)
        return CFrame.new(
            Lerp.Number(C1.X,C2.X,inc),
            Lerp.Number(C1.Y,C2.Y,inc),
            Lerp.Number(C1.Z,C2.Z,inc)
        ) * CFrame.Angles(
            Lerp.Number(x1,x2,inc),
            Lerp.Number(y1,y2,inc),
            Lerp.Number(z1,z2,inc)
        )
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
-- gui 
sc = Instance.new("ScreenGui",player.PlayerGui)
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
tx.Text = rage.." / "..maxrage
tx.Font = "ArialBold"
tx.FontSize = "Size18"
tx.BackgroundTransparency = 1
tx.TextColor3 = BrickColor.new("Deep orange").Color
tx.TextXAlignment = "Left"
laast = rage
-- func
function click()
    if deb==true then return end
    deb=true
    anim=false
    ded= Part(.5,0,2,'White',1,false,false,mo)
    dedwl= Weld(ded,rot,0,0,0,0,0,0,mo)
    ded.Touched:connect(function(hit)
    if deddeb==true then return end
    if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Humanoid").Health >= 1 then 
    deddeb=true
    local hed=hit.Parent.Head:Clone()
    hed.Parent=workspace
    hed.CFrame=hit.Parent.Head.CFrame
    hit.Parent.Head:Destroy()
    wait(1)
    game.Debris:AddItem(hed,10)
    deddeb=false
        end
    end)
    so('10209645',torso,false,.75)
    LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(20),0)
    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(60),0,0)
    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(-rad(5),0,0)
    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(rad(10),0,0)
    LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(-rad(10),0,0) 
    wait(.1)
    LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(20),0)
    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(60),0,-rad(60))
    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(5),0,0)
    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(10),0,0)
    LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(10),0,0)
    wait(.2)
    LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(20),0)
    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80),rad(20),rad(100))
    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(5),0,0)
    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(10),0,0)
    LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(rad(10),0,0)
    so('28144425',torso,false,1)
    wait(.3)
    ded:Destroy()
    wait(.25)
    anim=true
    wait(.75)
    deb=false
end


--keys
mouse.Button1Down:connect(function() click(mouse) end)
mouse.KeyDown:connect(function(k)
    if k == "q" then
    end
end)
--parts
mo=Instance.new("Model",pchar)
mpa= Part(1,1,1,'Earth green',0,false,false,mo)
Mesh(mpa,1,.3,6,.3)
mwl= Weld(mpa,pchar["Right Arm"],0,-1.1,0,-pi/2,pi/1,-pi/3.5,mo)
pa= Part(1,1,1,'Brown',0,false,false,mo)
Mesh(pa,3,.301,6,.1)
wl= Weld(pa,mpa,0,0,0,0,0,0,mo)
pa= Part(1,1,1,'Brown',0,false,false,mo)
Mesh(pa,3,.301,6,.1)
wl= Weld(pa,mpa,0,0,0,0,pi/2,0,mo)
for i=1,7 do
    pa= Part(1,1,1,'Black',0,false,false,mo)
    Mesh(pa,1,.301,.2,.301)
    wl= Weld(pa,mpa,0,-4+i,0,0,0,0,mo)
end
-- blade
cl= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(cl,3,.1,.5,.5)
clwl= Weld(cl,mpa,0,3,0,0,0,0,mo)
pa= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(pa,4,.1,.5,1)
wl= Weld(pa,cl,0,0,.75,0,pi/1,0,mo)
bla= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(bla,4,.1,.5,1)
wl= Weld(bla,cl,0,-.585,1.7,rad(10),pi/1,0,mo)
pa= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(pa,4,.1,.5,1)
wl= Weld(pa,cl,0,-1.298,2.5,rad(20),pi/1,0,mo)
pa= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(pa,3,.1,.3,1)
wl= Weld(pa,cl,0,-.4,.75,0,pi/1,0,mo)
pa= Part(1,1,1,'Deep orange',0,false,false,mo)
Mesh(pa,3,.1,.3,.5)
wl= Weld(pa,bla,0,-.4,-.2,0,0,0,mo)
pa= Part(1,1,1,'Black',0,false,false,mo)
Mesh(pa,3,.09,.2,.9)
wl= Weld(pa,cl,0,-.65,.75,0,pi/1,0,mo)
pa= Part(1,1,1,'Black',0,false,false,mo)
Mesh(pa,4,.1,.3,.5)
wl= Weld(pa,bla,0,-.4,.3,0,pi/1,pi/1,mo)
pa= Part(1,1,1,'Black',0,false,false,mo)
Mesh(pa,4,.09,.175,.55)
wl= Weld(pa,bla,0,-.63,-.2,0,pi/1,pi/1,mo)
rot= Part(1,1,1,'Really black',0,false,false,mo)
Mesh(rot,1,.5,.09,.5)
pawl= Weld(rot,cl,0,0,-.25,0,0,pi/2,mo)
pa= Part(.1,.1,.1,'Black',0,false,false,mo)
Mesh(pa,'http://www.roblox.com/Asset/?id=9756362',.2,.75,.2)
pawl= Weld(pa,rot,0,0,-.75,pi/2,0,0,mo)
pa= Part(.1,.1,.1,'Black',0,false,false,mo)
Mesh(pa,'http://www.roblox.com/Asset/?id=9756362',.2,.75,.2)
pawl= Weld(pa,rot,.5,0,-.5,pi/2,0,pi/3,mo)

local function updateanims()
    if anim==true then
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
            anglespeed = 1/3
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(sin(angle)*0.05,0,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(150),-rad(15)+abs(sin(angle))*0.1,rad(30))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(sin(angle)*0.1,0,0)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,abs(sin(angle))*0.1)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-abs(sin(angle))*0.1) 
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
            anglespeed = 4
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,math.sin(angle)*0.05)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80),rad(20),0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(100),0,rad(20))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(sin(angle)*.8,0,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(-sin(angle)*.8,0,0) 
        end
    end
end
local function onupdate()
    if rage > maxrage then rage=maxrage end
    tx.Text = ceil(rage).." / "..maxrage
    metr.Size = UDim2.new(ceil(rage)/maxrage, 0, 1, -2)
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
        for _,v in pairs(LerpTo) do
        v.Weld.C0 = Lerp.CFrame(v.Weld.C0,v.To,v.Speed)end
        onupdate()
    updateanims()
end)

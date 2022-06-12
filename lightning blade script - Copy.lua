:ls script.Parent = nil
name = 'Lightning Blade'
attacking = false
PLAYERS = Game:service'Players'
ply = PLAYERS.LocalPlayer
char = ply.Character
torso = char.Torso
 
cfn,ang,v3n,ud2n,V2 = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new
mcos,msin,mtan,md,mr = math.cos,math.sin,math.tan,math.rad,math.random
debris = game:service'Debris'
floatforce = 196.25
 
rs,ls = torso['Right Shoulder'],torso['Left Shoulder']
rarm = char["Right Arm"]
larm = char["Left Arm"]
rleg = char["Right Leg"]
lleg = char["Left Leg"]
 
rs = torso["Right Shoulder"]
ls = torso["Left Shoulder"]
rh = torso["Right Hip"]
lh = torso["Left Hip"]
neck = torso["Neck"]
rw,lw = nil,nil
rhw,lhw = nil,nil
 
asset = 'rbxassetid://'
normposr = cfn(1.5,.5,0)
normposl = cfn(-1.5,.5,0)
normposl2 = cfn(.5,-1.5,0)
normposr2 = cfn(-.5,-1.5,0)
normposn = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
 
pcall(function() char.HAWK:Destroy() end)
m = Instance.new("Model",char) m.Name = 'HAWK'
 
for i = 0,1 do --------UTILITIES START-------
function fade(a,b,c,d)
        if type(a) ~= 'table' then
                for i = b,c,d do
                        a.Transparency = i
                        wait()
                end
        else
                for i = b,c,d do
                        for _,v in pairs(a) do
                                v.Transparency = i
                        end
                        wait()
                end
        end
end
 
function FilterTab(tab,what)
Result = {}
local function filter2(a)
        if type(a) == 'string' then
                return a
        else
                return a.className
        end
end
 
for i,v in pairs(tab) do
        if type(what) ~= 'table' then
                if v:IsA(filter2(what)) then
                        table.insert(Result,v)
                end
        else
                for i,q in pairs(what) do
                        if v:IsA(filter2(q)) then
                                table.insert(Result,v)
                        end
                end
        end
end
return Result
end
 
 
function colorslide(object,targetcolor,bool) 
local function a() 
        if type(object) ~= 'table' then
                rgb1,rgb2 =object.Color, BrickColor.new(targetcolor).Color
                for i = 0,1,.2 do
                        object.Color = Color3.new(
                                (rgb1.r * (1-i))+(rgb2.r * i),
                                (rgb1.g * (1-i))+(rgb2.g * i),
                                (rgb1.b * (1-i))+(rgb2.b * i)
                        )
                wait()
                end
                object.Color = rgb2
        else
                rgb1,rgb2 = object[1].Color,BrickColor.new(targetcolor).Color
                for i = 0,1,.2 do
                        for _,v in pairs(object) do
                                v.Color = Color3.new(
                                        (rgb1.r * (1-i))+(rgb2.r * i),
                                        (rgb1.g * (1-i))+(rgb2.g * i),
                                        (rgb1.b * (1-i))+(rgb2.b * i)
                                )
                        end
                        wait()
                end
                for _,v in pairs(object) do v.Color = rgb2 end
        end        
end
if bool then T.C(a) else a() end
end
 
function l(a,x,y,z,b)
        if b == nil then
                return a.CFrame*cfn(x,y,z)
        else
                return a*cfn(x,y,z)
        end
end
function zeero(mot,a) local oldvelocity = mot.MaxVelocity  mot.MaxVelocity = 1.7E+308
        if a == nil then mot.DesiredAngle = 0
        else mot.DesiredAngle = a
        end
        while mot.DesiredAngle ~= mot.CurrentAngle do wait() end
        mot.MaxVelocity = oldvelocity
end
function ventta(mot)
        while mot.DesiredAngle ~= mot.CurrentAngle do wait() end
end
 
function genNew(ClassName, Parent, Properties)
        local nObj = Instance.new(ClassName, Parent)
        if Properties["FormFactor"] then
                nObj["FormFactor"] = Properties["FormFactor"]
        end
        for Prop, Value in pairs(Properties) do
                nObj[Prop] = Value
        end
        return nObj
end
 
T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored,parent,typee)
                if typee == 'wedge' then
                        c = Instance.new("WedgePart",m)
                        elseif typee == 'seat' then
                                c = Instance.new("Seat",m)
                        elseif typee == 'vseat' then
                                c = Instance.new("VehicleSeat",m)
                        else
                                c = Instance.new("Part",m)
                end
                c.TopSurface,c.BottomSurface = 0,0
                c.Locked = true
                c.formFactor = "Custom"
                c.Size = Vector3.new(x,y,z)
                if color ~= "random" then
                        c.BrickColor = BrickColor.new(color)
                        else c.BrickColor = BrickColor:random()
                end
                c.Transparency = transparency
                c.CanCollide = cancollide
                if anchored ~= nil then c.Anchored = anchored end
                if parent ~= nil then c.Parent = parent end
                return c
        end
        ,
        ["C"] = function(func) coroutine.resume(coroutine.create(func)) end
        ,
        ["W"] = function(part0,part1,x,y,z,rx,ry,rz,parent)
                w = Instance.new("Motor",m)
                if parent ~= nil then w.Parent = parent end
                w.Part0,w.Part1 = part0,part1
                w.C1 = CFrame.new(x,y,z) * CFrame.Angles(rx,ry,rz)
                w.MaxVelocity = .1
                return w
        end
        ,
        ["BG"] = function(parent)
                local c = Instance.new("BodyGyro",parent)
                c.P = 20e+003
                c.cframe = parent.CFrame
                c.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
                return c
                end
        ,
        ["BP"] = function(parent,position)
                local bp = Instance.new("BodyPosition",parent)
                bp.maxForce = Vector3.new()*math.huge
                bp.position = position
                return bp
        end
        ,
        ["F"] = function(parent,size,heat,color,secondcolor,enabled)
                f = Instance.new("Fire",parent)
                f.Size = size
                f.Heat = heat
                if enabled ~= nil then f.Enabled = enabled end
                if color ~= nil then f.Color = BrickColor.new(color).Color end
                if secondcolor ~= nil then f.SecondaryColor = BrickColor.new(secondcolor).Color end
                return f
        end
        ,
 
        ["FM"] = function(parent,meshid,x,y,z,meshtexture)
                if meshid == "cylinder" then
                        mesh = Instance.new("CylinderMesh",parent)
                        mesh.Scale = Vector3.new(x,y,z)
                        return mesh
                elseif meshid == 'block' then
                        mesh = Instance.new("SpecialMesh",parent)
                        mesh.MeshId = 'rbxassetid://9856898'
                        mesh.Scale = v3n(x*parent.Size.x,y*parent.Size.y,z*parent.Size.z)*2
                        if meshtexture then mesh.TextureId = 'rbxassetid://'..textureids[meshtexture] end
                        return mesh
                end
                mesh = Instance.new("SpecialMesh",parent)
 
                if meshid == 'wedge' then
                        mesh.MeshType = 'Wedge'
                elseif meshid == 'sphere' then
                        mesh.MeshType = 3
                elseif type(meshid) == "number" then
                        mesh.MeshId = "rbxassetid://"..meshid
                else
                        mesh.MeshId = "rbxassetid://"..meshids[meshid]
                end
                mesh.Scale = Vector3.new(x,y,z)
                if meshtexture then
                        if type(meshtexture) == "number" then mesh.TextureId = "rbxassetid://"..meshtexture else
                        mesh.TextureId = "rbxassetid://"..textureids[meshtexture] end
                end
                return mesh
        end,
 
        ["Dec"] = function(parent,face,id,transparency)
                c = Instance.new("Decal",parent)
                c.Face = face
                c.Texture = id
                if transparency then c.Transparency = transparency end
                return c
        end
}
 
function FindHumanoid(a,b)
local hum
        for i,v in pairs(a:children()) do
                if v:IsA'Humanoid' then
                        if not b then
                                if v.Parent ~= char then hum = v break end
                        else hum = v break  end
                end
        end
        return hum
end
function damage(hit,amount,delay,color) ---- VAHINKO DAMAGE
hum = FindHumanoid(hit)
        if hum then
                if delay then
                        local found = CheckTag(hum,'tag')
                        if not found then
                                local tag = AddTag(hum,'tag')
                                debris:AddItem(tag,delay)
                                hum.Health = hum.Health - amount
                                local hed = hum.Parent.Head
                                local bbg = genNew('BillboardGui',hed,{
                                        Adornee = hed;
                                        Size = udim(3,3);
                                        StudsOffset = v3n(mr(-2,2),mr(3,5),mr(-2,2));
                                })
                                
                                local img = genNew('TextLabel',bbg,{
                                        Text = amount;
                                        TextScaled = true;
                                        TextColor = bcol(color or 'White');
                                        Size = UDim2.new(3,0,3,0);
                                        BackgroundTransparency = 1;
                                }) 
                                T.C(function() wait(.1) for i = 3,.1,-.1 do bbg.Size = udim(i,i) wait() end bbg:Destroy() end)
                                
                        end
                else hum.Health = hum.Health - amount
                end
                
                return hum
        end
end
 
rtorso = torso
 
function scale(msh,str,a,b,c,bool)
local amount
local dims = {x=0,y=0,z=0}
local func = function()
        for word in str:gmatch('%d+') do
                amount = word
        end
        amount = not amount and 1 or amount
        for word in str:gmatch('%w') do
                if word == 'x' or word == 'y' or word == 'z' then
                        dims[word] = amount
                end
        end
        if type(mesh) ~= 'table' then
                for i = a,b,c or .01 do
                        msh.Scale = v3n(dims.x*i,dims.y*i,dims.z*i)
                        wait()
                end
        else
                for i = a,b,c or .01 do
                        for _,v in pairs(mesh) do
                                v.Scale = v3n(dims.x*i,dims.y*i,dims.z*i)
                        end
                        wait()
                end
        end
end
if bool then T.C(func) else func() end
end
 
 
lock = {["R"] =
        function(a)
                if a == 1 then
                        rabrick = T.P(1.1,1.1,1.1,"Dark stone grey",1,false,false)
                        rw = T.W(rabrick,rtorso,1.5,.5,0,0,0,0)
                        T.W(rarm,rabrick,0,-.5,0,0,0,0)
                elseif a == 2 then
                        rlbrick = T.P(1,1,1,"Dark stone grey",1,false,false)
                        rhw = T.W(rlbrick,rtorso,.5,-1.5,0,0,0,0)
                        T.W(rleg,rlbrick,0,-.5,0,0,0,0)
                elseif a == 0 then
                        rs.Parent = rtorso
                        rw.Parent = nil
                        rabrick:Destroy() rabrick = nil
                elseif a == -1 then
                        rhw.Parent = nil
                        rh.Parent = rtorso
                        rlbrick:Destroy() rlbrick = nil
                end
        end
        , ["L"] = function(a)
                if a == 1 then
                        labrick = T.P(1,1,1,"Dark stone grey",1,false,false)
                        lw = T.W(labrick,rtorso,-1.5,.5,0,0,0,0)
                        T.W(larm,labrick,0,-.5,0,0,0,0)
                elseif a == 2 then
                        llbrick = T.P(1,1,1,"Dark stone grey",1,false,false)
                        lhw = T.W(llbrick,rtorso,-.5,-1.5,0,0,0,0)
                        T.W(lleg,llbrick,0,-.5,0,0,0,0)
                elseif a == 0 then
                        ls.Parent = rtorso
                        lw.Parent = nil
                        labrick:Destroy() labrick = nil
                elseif a == -1 then
                        lhw.Parent = nil
                        lh.Parent = rtorso
                        llbrick:Destroy() llbrick = nil
                end
        end
}
 
cfn,ang = CFrame.new,CFrame.Angles
function spaas(position,radius,number,number2,color)
        mode = Instance.new("Model",m)
 
        for i = 1,number2 do
                local pos = position+v3n(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
                local mag = (position-pos).magnitude
 
                local col = color or 'Toothpaste'
                local laz = T.P(.1,mag,.1,col,0,false,true,mode)
 
                T.FM(laz,'cylinder',.3,1,.3)
                laz.CFrame = (cfn(position,pos)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
 
                cframe = (laz.CFrame*cfn(0,-mag/2,0)).p
                pos2 = cframe+v3n(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
                mag2 = (cframe-pos2).magnitude
                local laz2 = T.P(.1,mag2,.1,col,0,false,true,mode)
                T.FM(laz2,'cylinder',.3,1,.3)
                laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)
 
                previo = laz2
                for i = 1,number do
                        cframe = (previo.CFrame*cfn(0,-mag/2,0)).p
                        pos2 = cframe+v3n(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
                        mag2 = (cframe-pos2).magnitude
 
                        local laz2 = T.P(.1,mag2,.1,col,0,false,true,mode)
                        T.FM(laz2,'cylinder',.3,1,.3)
                        laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)
 
                        previo = laz2
                end
 
        end
        debris:AddItem(mode,.1)
        return mode
end
 
function lightning(startpos,endpos,times,offse,livetime,col)
local curpos = startpos
for i = 1,times do
        mag = (startpos-endpos).magnitude offs = {-offse,offse}
        offset = v3n(offs[mr(1,2)],offs[mr(1,2)],offs[mr(1,2)])
        laz = T.P(.1,.1,mag/times,col,0,false,true,m)
        apos = (cfn(curpos,endpos)*cfn(0,0,-mag/times)).p+offset
        if times == i then
                mag2 = (curpos-endpos).magnitude
                laz.Size = v3n(.1,.1,mag2)
                laz.CFrame = cfn(curpos,endpos)*cfn(0,0,-mag2/2)
        else
                laz.CFrame = cfn(curpos,apos)*cfn(0,0,-mag/times/2)
        end
        curpos = laz.CFrame*cfn(0,0,-mag/times/2).p debris:AddItem(laz,livetime)
end
end
 
------MESHIDS---
meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188,["lightning"] = 72583597,["bullet"]=2697549,['cheese'] = 1090700,["pan"] = 24342877,["ketchup"] = 29690481,
["duck"] = 9419831,["unicorn"]=84003494,["luatophat"] = 42157240,["rooster"] = 24101267}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153,
["cheese"] = 1090703,['rooster'] = 24258160} 
 
 
function AddTag(object,tagname)        local tag = Instance.new("BoolValue",object) tag.Name = tagname return tag end
function CheckTag(object,tagname) local found = object:FindFirstChild(tagname) if found then return found else return _ end end
function RemoveTag(object,tagname) local found = CheckTag(object,tagname) if found then found:Remove() end end
 
waitbp = function(a,r) while (a.Parent.Position-a.position).magnitude > r do wait() end end
 
function FindGround(position,radius,ignore)
        if ignore then
                ig = ignore table.insert(ig,m)
        else ig = {m}
        end
        local ray = Ray.new(position,Vector3.FromNormalId(Enum.NormalId.Bottom)*radius)
        local obj,pos2 = Workspace:FindPartOnRayWithIgnoreList(ray,ig)
        if obj and pos2 then return obj,pos2 else return nil end
end
 
function calcp(a,b) --- Direction CFrame
        return cfn(a,v3n(b.x,a.y,b.z))
end
 
--------ANIMATING FUNCTION--------
tw = function(Weld, Stop, Step,a)
local func = function()
        local Start = Weld.C0
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                Weld.C0 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        Weld.C0 = Stop
end
if a then T.C(function() func() end) else func() end
end
------------------------------------
 
function weldall(q) 
if q == 1 then a,b = 1,2 else a,b = -1,0 end
for i = a,b do lock.R(i) lock.L(i) end
end
function FindPlayers(a,b,c) --- Finds Players near a part
local list = {}
for i,v in pairs(Workspace:children()) do
        if v:IsA("Model") then
                for _,q in pairs(v:children()) do
                        if q:IsA("Humanoid") then
                        if q.Health > -1 then
                                if c and q.Parent ~= char then
                                        if (q.Torso.Position-a).magnitude < b then
                                                table.insert(list,v)
                                        end
                                elseif not c then
                                        if (q.Torso.Position-a).magnitude < b then
                                                table.insert(list,v)
                                        end
                                end
                        end
                        end
                end
        end
end
return list
end
end
 
rweld = _
faketorso = _
function faketor()
        if rtorso == torso then 
                torso.Transparency = 1
                faketorso = T.P(2,2,1,'White',0,false,false,char) faketorso.Name = 'Fakey'
                rweld = T.W(faketorso,torso,0,0,0,0,0,0)
                rtorso = faketorso
                for i,v in pairs({lh,ls,rh,rs}) do v.Part0 = rtorso end
        elseif rtorso ~= torso then 
                rtorso = torso 
                for i,v in pairs({lh,ls,rh,rs}) do v.Part0 = rtorso end
                faketorso:Remove()
                rweld:Remove()
                torso.Transparency = 0
        end
end
faketor()
 
hop = Instance.new("HopperBin",ply.Backpack)
hop.Name = name
 
hdl = T.P(.25,2.5,.25,'Really red',0,false,false) T.FM(hdl,'cylinder',1,1,1)
hw = T.W(hdl,rarm,0,-1,0,-math.pi/2,math.pi/2,0)
 
p = T.P(.4,.5,.4,'White',0,false,false)
T.W(p,hdl,0,-1.25,0,0,0,0)
 
p2 = T.P(.1,.4,.1,'Really red',0,false,false) T.FM(p2,'cylinder',1,1,1)
w = T.W(p2,p,.15,-.2,0,0,0,md(40)) w.C1 = w.C1*cfn(0,-.18,0)
p22 = T.P(.1,.1,.11,'Black',0,false,false) T.FM(p22,'cylinder',1.01,.5,1.01)
T.W(p22,p2,0,-.1,0,0,0,0)
 
p2 = T.P(.1,.4,.1,'Really red',0,false,false) T.FM(p2,'cylinder',1,1,1)
w = T.W(p2,p,-.15,-.2,0,0,0,md(-40)) w.C1 = w.C1*cfn(0,-.18,0)
p22 = T.P(.1,.1,.11,'Black',0,false,false) T.FM(p22,'cylinder',1.01,.5,1.01)
T.W(p22,p2,0,-.1,0,0,0,0)
 
p3 = T.P(.5,1,.3,'Really red',0,false,false) T.FM(p3,'block',1,1,1)
T.W(p3,hdl,0,1.25,0,0,0,0)
 
p32 = T.P(.3,1,.3,'Really red',0,false,false,m,'wedge')
T.W(p32,p3,-.4,0,0,0,math.pi/2,0)
 
p32 = T.P(.3,1,.3,'Really red',0,false,false,m,'wedge')
T.W(p32,p3,.4,0,0,0,-math.pi/2,0)
 
p4 = T.P(.4,.9,.2,'White',0,false,false)
T.W(p4,p3,0,0,.15,0,0,0)
p4 = T.P(.4,.9,.2,'White',0,false,false)
T.W(p4,p3,0,0,-.15,0,0,0)
 
blade = T.P(.5,4,.5,'White',0,false,false) T.FM(blade,'block',1,1,.3)
T.W(blade,p3,0,2.5,0,0,0,0)
 
tip1 = T.P(.5,1,.25,'White',0,false,false) T.FM(tip1,'wedge',.3,1,1)
T.W(tip1,blade,-.25/2,2.5,0,0,math.pi/2,0)
 
tip1 = T.P(.5,1,.25,'White',0,false,false) T.FM(tip1,'wedge',.3,1,1)
T.W(tip1,blade,.25/2,2.5,0,0,-math.pi/2,0)
 
lock.R(1) lock.L(1)
 
function retur()
 
if neck2 then
        tw(neck2,cfn()*ang(0,md(-75),0),.1,'')
end
 
tw(rweld,cfn()*ang(0,md(75),0),.1,'')
tw(hw,cfn()*ang(math.pi/2,0,0),.1,'')
tw(lw,cfn()*ang(md(-30),0,md(90)),.1,'')
tw(rw,cfn()*ang(md(-130),md(30),0))
 
if neck2 then necko(0) end
 
end
retur()
 
touch = T.P(.5,5,.5,'White',1,false,false)
T.W(touch,blade,0,.5,0,0,0,0)
 
T.C(function()
while wait(3) do
        for i = 2.5,-2.5,-5/10 do
                spaas((touch.CFrame*cfn(0,i,0)).p,1,1,1,'Deep blue')
                wait()
        end
end end)
 
function blast()
local con = touch.Touched:connect(function(hit) local hum = damage(hit.Parent,10,.1)
if hum then if not CheckTag(hum,'t') then local t = AddTag(hum,'t')
        T.C(function() local norm = hum.WalkSpeed hum.WalkSpeed = 0 wait(2)
        hum.WalkSpeed = norm t:Destroy() end)
end
end
end)
        tw(rweld,cfn()*ang(0,md(-80),0),.1,'')
        tw(hw,cfn(0,-1.5,0)*ang(math.pi/2,md(90),0),.1,'')
        tw(rw,cfn()*ang(md(-90),md(90),0))
        con:disconnect()
        retur()
end
 
function slash()
local con = touch.Touched:connect(function(hit) local hum = damage(hit.Parent,30,.1)
if hum then
        hum.Torso.Velocity = calcp(torso.Position,hum.Torso.Position).lookVector*100
        T.C(function() hum.Sit = true wait(1) hum.Sit = false end)
end
 
end)
---ATTACK---
tw(hw,cfn()*ang(math.pi/2,md(40),0),.1,'')
tw(rweld,cfn()*ang(0,md(-50),0),.1,'')
tw(rw,cfn()*ang(md(-90),md(-40),0),.1,'')
tw(lw,cfn()*ang(0,0,md(30)))
tw(rw,cfn()*ang(md(-110),md(85),0),.1,'')
tw(hw,cfn(0,-1,0)*ang(math.pi/2,md(70),0),1.,'')
tw(rweld,cfn()*ang(0,md(90),0))
con:disconnect()
retur()
end
 
function suprai(mouse) if not mouse.Target then return end 
        tw(lw,cfn()*ang(md(-160),md(30),0))
        char:MoveTo(mouse.hit.p)
        retur()
end
 
function fireball() cf = lw.C0
        tw(lw,cf*ang(0,md(40),0))
        local p = T.P(1,1,1,'Earth blue',0,false,false) T.FM(p,'sphere',1,1,1)
        T.F(p,1,1,'Silver','Flame reddish orange')
        wl = T.W(p,larm,0,-1,0,0,0,0)
        tw(lw,cf*ang(0,md(-20),0),1/3)
        wl:Destroy()
        p.Touched:connect(function(hit) local hum = damage(hit.Parent,20,1)
                if hum then
                        local ef = T.P(1,1,1,'Flame reddish orange',0,false,true) local msh = T.FM(ef,'skull',1,1,1)
                        ef.CFrame = cfn(p.Position)
                        p:Destroy()
                        for i = 0,1,.1 do ef.Transparency = i msh.Scale = v3n(i*30,i*30,i*30) wait() end
                        if not CheckTag(hum,'o') then local t = AddTag(hum,'o')
                        
                        T.C(function() local waiting = false local speed = hum.WalkSpeed  hum.WalkSpeed = -math.abs(speed) waiting = true
                        T.C(function() wait(5) waiting = false end)
                        while waiting do for i = 1,5 do
                                local p = T.P(1,1,1,'Black',0,false,true) p.CFrame = hum.Torso.CFrame*cfn(mr(-5,5),mr(-5,5),mr(-5,5))
                                T.C(function() fade(p,0,1,.1) p:Destroy() end)
                                end
                                wait(.5)
                        end
                        hum.WalkSpeed = math.abs(speed)
                        t:Destroy()
                        end)
                        
                end
                ef:Destroy()
                end
        end)
        
        Instance.new("BodyForce",p).force = torso.CFrame.lookVector*60+v3n(0,p:GetMass()*floatforce,0)
        debris:AddItem(p,3)
        tw(lw,cf)
end
 
neck2 = _
function necko(a) if a == 1 then
        neck2 = T.W(char.Head,faketorso,0,1.5,0,0,0,0) normposn2 = neck2.C0
elseif a == 0 then
        neck2:Remove() neck2 = _
end end
 
 
function BEWM() lock.L(1) lock.R(1)
        tw(rweld,cfn(),.1,'')
        tw(lhw,cfn(0,1,0),.1,'')
        tw(hw,cfn(0,-1,0)*ang(0,md(45),0),.1,'')
        tw(rw,cfn(0,.7,0)*ang(md(-90),md(-40),0),.1,'')
        tw(lw,cfn(0,.7,0)*ang(md(-90),md(40),0))
        
        local rcf,lcf = rw.C0,lw.C0
        
        necko(1)
        tw(rweld,cfn(0,-5,0),.1,'')
        tw(rw,rcf*ang(md(-50),0,0),.1,'')
        tw(lw,lcf*ang(md(-50),0,0),.1,'')
        tw(neck2,cfn(0,0,-.3)*ang(md(-30),0,0))
 
        tw(hw,cfn(0,-1,0)*ang(0,0,md(50)),.1,'')
        tw(rw,cfn(0,.1,0)*ang(md(-30),md(-20),0),.1,'')
        tw(lw,lcf*ang(md(30),0,0),.1,'')
        tw(rweld,cfn(),.1,'')
        tw(neck2,cfn(0,0,.3)*ang(md(30),0,0))
        retur()
end
 
klist = {
{'f',function() blast() end};
{'g',function(a) suprai(a) end};
{'q',function() fireball() end};
{'e',function() BEWM() end};
}
 
hop.Selected:connect(function(mouse)
        mouse.Button1Up:connect(function() holding = false end)
        mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end end)
        mouse.KeyDown:connect(function(key)
                if attacking then return end
                for i,v in pairs(klist) do
                        if key == v[1] then attacking = true v[2](mouse) attacking = false end
                end
        end)
        mouse.Button1Down:connect(function()
                if attacking then return end
                attacking = true slash(mouse) attacking = false end)
end)
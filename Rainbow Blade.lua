---Made by mugex-----------------------------------------------------
script.Parent = nil
name = 'Rainbow Blade'
PLAYERS = game:GetService('Players')
ply = PLAYERS.LocalPlayer
char = ply.Character
pcall(function() char:FindFirstChild("legetdgq"):Remove() end)
m = Instance.new("Model",char) m.Name = "legetdgq"
hop = Instance.new("HopperBin",ply.Backpack)
hop.Name = name
debris = game:GetService("Debris")
cfn,ang,v3n,ud2n,V2 = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new
floatforce = 196.25
torso,head = char.Torso,char.Head
attacking = false
rs = torso["Right Shoulder"]
ls = torso["Left Shoulder"]
rh = torso["Right Hip"]
lh = torso["Left Hip"]
neck = torso["Neck"]
rw,lw = nil,nil
rhw,lhw = nil,nil
local orgc1 = rs.C1
rarm = char["Right Arm"]
larm = char["Left Arm"]
rleg = char["Right Leg"]
lleg = char["Left Leg"]
asset = 'rbxassetid://'
normposr = cfn(1.5,.5,0)
normposl = cfn(-1.5,.5,0)
normposl2 = cfn(.5,-1.5,0)
normposr2 = cfn(-.5,-1.5,0)
normposn = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
holdpos = normposr*ang(math.pi/2,0,0)
holdpos2 = normposl*ang(math.pi/2,0,0)
for i = 0,1 do --------UTILITIES START-------
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
                return w
        end
        ,
        ["BG"] = function(parent)
                local c = Instance.new("BodyGyro",parent)
                c.P = 20e+003
                c.cframe = parent.CFrame
                c.maxTorque = Vector3.new(c.P,c.P,c.P)
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
        end,
        ["S"] = function(id,pitch,volume,parent)
                cur = nil
                found = false
                if type(id) == 'string' then
                        for i,v in pairs(char.Head:children()) do
                                if v:IsA("Sound") and v.Name == id and not found then
                                        cur = v
                                        if parent then cur = v:Clone() cur.Parent = parent end
                                        cur.Pitch = pitch
                                        if volume then cur.Volume = volume end
                                        cur:Play()
                                        found = true
                                        return cur
                                end
                        end
                elseif type(id) == 'number' then
                        local a = char.Head:FindFirstChild('exteo')
                        a.SoundId = 'rbxassetid://'..id
                        a.Pitch = pitch
                        if volume then a.Volume = volume end
                        a:Play()
                        return a
                end
        end
}
function FindHumanoid(a,b)
        for i,v in pairs(a:children()) do
                if v:IsA('Humanoid') then
                        if not b then
                                if v.Parent ~= char then return v end
                        else return v end
                end
        end
end
function damage(hit,amount,delay) ---- VAHINKO DAMAGE
hum = FindHumanoid(hit)
        if hum then
                if delay then
                        local found = CheckTag(hum,'tag')
                        if not found then
                                local a = AddTag(hum,'tag')
                                debris:AddItem(a,delay)
                                hum.Health = hum.Health - amount
                        end
                else hum.Health = hum.Health - amount
                end
                return hum
        end
end
rtorso = torso
lock = {["R"] =
        function(a)
                if a == 1 then
                        rabrick = T.P(1.1,1.1,1.1,"White",1,false,false)
                        rw = T.W(rabrick,rtorso,1.5,.5,0,0,0,0)
                        T.W(rarm,rabrick,0,-.5,0,0,0,0)
                elseif a == 2 then
                        rlbrick = T.P(1,1,1,"White",1,false,false)
                        rhw = T.W(rlbrick,rtorso,-.5,-1.5,0,0,0,0)
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
                        labrick = T.P(1,1,1,"White",1,false,false)
                        lw = T.W(labrick,rtorso,-1.5,.5,0,0,0,0)
                        T.W(larm,labrick,0,-.5,0,0,0,0)
                elseif a == 2 then
                        llbrick = T.P(1,1,1,"White",1,false,false)
                        lhw = T.W(llbrick,rtorso,.5,-1.5,0,0,0,0)
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
                pos = position+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
                mag = (position-pos).magnitude
                col = color or 'Toothpaste'
                local laz = T.P(.1,mag,.1,col,0,false,true,mode)
                T.FM(laz,'cylinder',.3,1,.3)
                laz.CFrame = (cfn(position,pos)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
                cframe = (laz.CFrame*cfn(0,-mag/2,0)).p
                pos2 = cframe+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
                mag2 = (cframe-pos2).magnitude
                local laz2 = T.P(.1,mag2,.1,col,0,false,true,mode)
                T.FM(laz2,'cylinder',.3,1,.3)
                laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)
                previo = laz2
                for i = 1,number do
                        cframe = (previo.CFrame*cfn(0,-mag/2,0)).p
                        pos2 = cframe+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
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
function lightning(startpos,endpos,times,offse,livetime,col,dmg)
local curpos = startpos
for i = 1,times do
        mag = (startpos-endpos).magnitude offs = {-offse,offse}
        offset = v3n(offs[M.R(1,2)],offs[M.R(1,2)],offs[M.R(1,2)])
        laz = T.P(.1,.1,mag/times,col,0,false,true,m)
        if dmg then laz.Touched:connect(function(hit) damage(hit.Parent,dmg[1],dmg[2]) end) end
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
["duck"] = 9419831,["unicorn"]=84003494,["luatophat"] = 42157240}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153,
["cheese"] = 1090703} 
soundids = {["bell"] = 20005706,["flintlock"] = 13510352,["falcon"] = 1387390,['sensa'] = 4700455,
['midas'] = 17385513;
['spark'] = 10756118;
['boom'] = 10730819;
['plank'] = 10548112;
['harmonica1'] = 33069371;
['harmonica2'] = 33069412;
['thump'] = 10730819;
['hit'] = 2801263;
['crunch'] = 15047813;
['Piano'] = 11998796;
}
function AddTag(object,tagname)        local tag = Instance.new("BoolValue",object) tag.Name = tagname return tag end
function CheckTag(object,tagname) local found = object:FindFirstChild(tagname) if found then return found else return _ end end
function RemoveTag(object,tagname) local found = CheckTag(object,tagname) if found then found:Remove() end end
for i,v in pairs(soundids) do ---Remove sounds
        for _,q in pairs(char.Head:children()) do
                if q.Name == i then q:Remove() end
        end
end
for i,v in pairs(soundids) do ----Add sounds
sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset/?id="..v
sound.Name = i
sound.Parent = char.Head
end
genNew('Sound',char.Head,{
        Name = 'slash';
        SoundId = 'rbxasset://sounds//swordslash.wav'
})
waitbp = function(a,r) while (a.Parent.Position-a.position).magnitude > r do wait() end end
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
function findground(position,radius,ignore)
        if ignore then
                ig = ignore table.insert(ig,m)
        else ig = {m}
        end
        local ray = Ray.new(position.p,position.p+(position.p-v3n(0,200,0)).unit*radius)
        local obj,pos2 = Workspace:FindPartOnRayWithIgnoreList(ray,ig)
        if obj and pos2 then return obj,pos2 else return nil end
end
rweld = _
faketorso = _
function faketor()
        if rtorso == torso then 
                torso.Transparency = 1
                faketorso = T.P(2,2,1,torso.BrickColor.Name,0,false,false,char)
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
        dec.Parent = rtorso
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
list = {}
for i,v in pairs(Workspace:children()) do
        if v:IsA("Model") then
                for _,q in pairs(v:children()) do
                        if q:IsA("Humanoid") then
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
return list
end
end
sword = Instance.new("Model",m)
hdl = T.P(.3,1,.3,'Brown',0,false,false,sword)
blade = T.P(0,4,1,'White',0,false,false,sword)
T.W(blade,hdl,0,2.5,0,0,0,0) T.FM(blade,'block',.2,1,1,'rainbow')
cougar = T.P(.4,.1,1.1,'New Yeller',0,false,false,sword)
T.W(cougar,hdl,0,.5,0,0,0,0)
sheath = T.P(.1,1,.5,'Brown',0,false,false)
T.W(sheath,torso,1.1,-1,0,M.D(-60),0,M.D(10))
hw = T.W(hdl,sheath,0,1,0,math.pi,0,0) sheathposition = hw.C1
handposition = cfn(0,-1,0)*ang(math.pi/2,0,0)
tip = T.P(0,1,1,'White',0,false,false,sword)
T.FM(tip,'wedge',.2,1,1)
T.W(tip,blade,0,2.5,0,0,0,0)
for i,v in pairs({'Top','Bottom','Back','Front','Left','Right'}) do
        T.Dec(tip,v,asset..textureids['rainbow'])
end
function trace() decs = {}
        for i,v in pairs(sword:children()) do
                local cl = v:Clone()
                cl.Parent = m
                cl.Anchored = true
                for i,v in pairs(cl:children()) do if v:IsA("Decal") then table.insert(decs,v) end end
                cl.Transparency = .5
                for _,v in pairs(decs) do v.Transparency = .5 end
                T.C(function() for i = .5,1,.05 do
                        cl.Transparency = i wait() 
                        for _,v in pairs(decs) do v.Transparency = i end
                end cl:Remove() end)        
        end
end
np = cfn()*ang(M.D(-40),M.D(10),0)
r = .5
function Connect(func)
con1 = blade.Touched:connect(function(hit) func(hit) end)
con2 = tip.Touched:connect(function(hit) func(hit) end)
return con1,con2
end
function Stab() local pw = hw.C1
        T.C(function() for i = 0,1,.2 do wait() hw.C1 = pw*ang(M.D(-90*i),0,0) end
                for i = 1,0,-.2 do wait() hw.C1 = pw*ang(M.D(-90*i),0,0) end end)
        c1,c2 = Connect(function(hit) local hum = damage(hit.Parent,10,.1) if hum then spaas(hum.Torso.Position,3,3,3,'random') end end)
        tw(rw,cfn()*ang(M.D(-90),0,0),.2)
        tw(rw,np,.2)
        c1:disconnect() c2:disconnect()
end
function Portal() pw = hw.C1 len = 0
        T.C(function() for i = 0,1,.1 do hw.C1 = pw*ang(-math.pi/2*i,0,0) wait() end end)
        --hw.C1 = pw*ang(-math.pi/2,0,0)
        tw(rw,cfn()*ang(M.D(-110),M.D(-30),0),.2) local stpos = (torso.CFrame*cfn(-2,2,-4)).p
        p = T.P(.1,1,.1,'Black',.5,false,true) T.FM(p,'sphere',1,1,1) local p3 = p
        T.C(function() for i = 0,1.1,.2 do
                local stcf = (torso.CFrame*cfn(-2,2,-4)) stpos = stcf.p
                ep = (torso.CFrame*cfn(4*i,-4*i,-4)).p
                mag = (stpos-ep).magnitude
                p.Size = v3n(0,mag,.5*i)
                p.CFrame = cfn(stpos,ep)*cfn(0,0,-mag/2)*ang(math.pi/2,0,0)
                wait()
        end end)
        tw(rw,cfn()*ang(M.D(-70),M.D(30),0))
        cf = p.CFrame
        local p = T.P(.7,1,.7,'Black',.5,false,true) T.FM(p,'cylinder',1,1,1)
        local p2 = T.P(1,1,1,'Black',.5,false,true)
        T.FM(p2,37241605,3,3,3)
        ray = Ray.new(cf.p,cf.p+(cf.p-(cf.p+torso.CFrame.lookVector*-1)).unit*50)
        local obj,pos = Workspace:FindPartOnRayWithIgnoreList(ray,{m,sword,char})
        if obj and pos then len = (cf.p-pos).magnitude else len = 50 end
        for i = 0,1,.1 do p.Size = v3n(.7,len*i,.7)
        p.CFrame = cf*cfn(-len/2*i,0,0)*ang(0,0,math.pi/2)
        p2.CFrame = p.CFrame*cfn(0,p.Size.y/2+1,1)*ang(math.pi/2,0,0)
        wait()
        end
        ef = T.P(1,1,1,'Black',0,false,true)
        ef.CFrame = p2.CFrame
        msh = T.FM(ef,'sphere',1,1,1)
        for i,v in pairs(FindPlayers(ef.Position,15)) do damage(v,20,.1) end
        for i = 0,50,2.5 do
                msh.Scale = v3n(i,i,i)
                ef.Transparency = i/50
                wait()
        end ef:Remove()
        hw.C1 = pw
        tw(rw,np)
        T.C(function() for i = .5,1,.05 do p.Transparency,p2.Transparency,p3.Transparency = i,i,i wait() end p:Remove() p2:Remove() p3:Remove() end)
end
function part(mouse)
        t= T.P(30,30,30,'White',0,true,true,Workspace)
        t.CFrame = cfn(mouse.hit.p+v3n(0,15,0))
        T.FM(t,'block',1,1,1,'rainbow')
end
function Whirlwind()
        bg = T.BG(head) pw = hw.C1
        tw(rw,cfn()*ang(M.D(-90),M.D(90),0))
        hw.C1 = pw*ang(-math.pi/2,-math.pi/2,0)
        for i = 1,360*5,60 do
                bg.cframe = bg.cframe*ang(0,M.D(60),0)
                wait()
                pcall(function()
                for i,v in pairs(FindPlayers(torso.Position,20)) do local hum = damage(v,0,.1)
                        if hum then 
                                if not CheckTag(hum.Torso,'muforce') then
                                bf = Instance.new("BodyVelocity",hum.Torso)
                                bf.Name = 'muforce'
                                bf.maxForce = v3n()*math.huge
                                bf.velocity = calcp(torso.Position,hum.Torso.Position).lookVector*100
                                debris:AddItem(bf,1)
                                end
                        end
                end end)
        end
        bg:Remove()
        hw.C1 = pw
        tw(rw,np)
end
function Slash()
con = blade.Touched:connect(function(hit) damage(hit.Parent,10,.1) end)
tw(rw,cfn()*ang(M.D(-100),M.D(-10),M.D(-70)),1/3) 
T.C(function()for i = 0,3 do trace() wait() end end)
tw(rw,cfn()*ang(M.D(60),M.D(-10),M.D(-70)),1/3)
tw(rw,np,.1)
con:disconnect()
end
function Equip() if attacking then return end
attacking = true
tw(rw,cfn()*ang(M.D(-40),M.D(10),0),.1,'')
hw.Part1 = rarm
T.C(function() for i = 0,1,.1 do
hw.C1 = handposition*ang(M.D(180*i),0,0) wait() end
end)
attacking = false
end
function Unequip() if attacking then return end
attacking = true
tw(rw,cfn()*ang(M.D(-130),M.D(-20),M.D(10)),.1) pw = hw.C1
for i = 0,1,.1 do
        hw.C1 = pw*ang(M.D(-195*i),0,M.D(8))
        wait()
end
tw(rw,cfn()*ang(M.D(-40),M.D(-20),M.D(5)),.1) pw = hw.C1
hw.Part1 = sheath hw.C1 = sheathposition
tw(rw,cfn(),.1)
attacking = false
end
-----------ZOMBIE MAKER FUNCTION------------
function Exorcism()
pos = torso.Position+torso.CFrame.lookVector*3+v3n(0,-3,0)
person = Instance.new("Model",Workspace)
person.Name = 'Zombie'
----PARTS-------
local hed = T.P(1,1,1,'White',0,true,false,person) hed.Name = 'Head'
Instance.new("SpecialMesh",hed).Scale = v3n(1.25,1.25,1.25)
local tor = T.P(2,2,1,'White',0,true,false,person) tor.Name = 'Torso'
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Left Arm'
q = T.W(ar,tor,-.5,0.5,0,0,math.pi/2,0,tor)
q.C0 = cfn(1,0.5,0)*ang(0,math.pi/2,0)
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Right Arm'
q2 = T.W(ar,tor,.5,0.5,0,0,math.pi/2,0,tor)
q2.C0 = cfn(-1,0.5,0)*ang(0,math.pi/2,0)
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Right Leg'
T.W(ar,tor,-.5,-2,0,0,0,0,tor) 
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Left Leg'
T.W(ar,tor,.5,-2,0,0,0,0,tor)
T.W(hed,tor,0,1.5,0,0,0,0,tor)
----PARTS-------
q.MaxVelocity = .1
q.DesiredAngle = math.pi/2
q2.MaxVelocity = .1
q2.DesiredAngle = math.pi/2
local hum = Instance.new("Humanoid",person)
Instance.new("Skin",person).SkinColor = BrickColor.new('Earth green')
tor.CFrame = calcp(torso.Position+torso.CFrame.lookVector*5,torso.Position)
shirt = Instance.new('Shirt',person)
shirt.ShirtTemplate = 'http://www.roblox.com/asset/?id=79001892'
pants = Instance.new('Pants',person)
pants.PantsTemplate = 'http://www.roblox.com/asset/?id=79001892'
crown = T.P(1,1,1,'White',0,false,false)
T.FM(crown,1031410,1,1,1,1031417)
T.W(crown,hed,-.2,.85,0,0,0,M.D(20),person)
face = T.Dec(hed,'Front','http://www.roblox.com/asset/?id=65180938')
---DYING---
hum.Died:connect(function() wait(2) hum.Parent:Remove() end)
---DYING---
end
-----------ZOMBIE MAKER FUNCTION------------
function Logg()
        lock.L(1)
        logeh = Instance.new("Model",m)
        tw(lw,cfn()*ang(M.D(-90),M.D(-70),0))
        plank = T.P(1,2,1,'Brown',0,true,false,logeh)
        T.FM(plank,'cylinder',1,1,1)
        plank2 = T.P(.9,2.01,.9,'Nougat',0,true,false,logeh)
        T.FM(plank2,'cylinder',1,1,1)
        T.W(plank2,plank,0,0,0,0,0,0)
        wld = T.W(plank,larm,0,-1.5,0,math.pi/2,0,0) holding = true
        while holding do wait() end
        plank.Touched:connect(function(hit) local hum = damage(hit.Parent,30,1)
                if hum then hum.PlatformStand = true end end)
        tw(lw,cfn(0,.5,0)*ang(M.D(-90),M.D(40),0),1/3) wait(.1)
        wld:Remove()
        debris:AddItem(logeh,2)
        tw(lw,cfn())
end
klist = {
{'f',function() Stab() end};
{'e',function() Portal() end};
{'q',function(a) part(a) end};
{'r',function() Whirlwind() end};
{'c',function() Logg() end,''};
{'t',function() Exorcism() end};
}
hop.Deselected:connect(function() Unequip() lock.R(0) end)
hop.Selected:connect(function(mouse)
        lock.R(1) Equip()
        mouse.Button1Up:connect(function() holding = false end)
        mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end end)
        mouse.KeyDown:connect(function(key)
                if attacking then return end
                for i,v in pairs(klist) do
                        if key == v[1] then attacking = true v[2](mouse) attacking = false end
                end
        end)
        mouse.Button1Down:connect(function() if attacking then return end attacking = true Slash(mouse) attacking = false end)
end)
--mediafire

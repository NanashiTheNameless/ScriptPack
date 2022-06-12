

---Made by Your Mum-----------------------------------------------------
print('a')
owner,name = 'ace28545','Polearm'
PLAYERS = game:GetService('Players')
ply = PLAYERS[owner]
char = ply.Character
terrain = Workspace.Terrain
pcall(function() char:FindFirstChild("legetdg"):Remove() end)
m = Instance.new("Model",char) m.Name = "legetdg"
if script.Parent.className ~= 'HopperBin' then
hop = Instance.new("HopperBin",PLAYERS[owner].Backpack)
hop.Name = name
script.Parent = hop
script.Name = "Function"
end
owner2 = owner
hop = script.Parent
 
debris = game:GetService("Debris")
 
cfn,ang,v3n,ud2n,V2 = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new
floatforce = 196.25
 
torso,head = char.Torso,char.Head
attacking = false
track = false
 
rs = torso["Right Shoulder"]
ls = torso["Left Shoulder"]
rh = torso["Right Hip"]
lh = torso["Right Hip"]
neck = torso["Neck"]
rw,lw = nil,nil
rhw,lhw = nil,nil
local orgc1 = rs.C1
 
rarm = char["Right Arm"]
larm = char["Left Arm"]
rleg = char["Right Leg"]
lleg = char["Left Leg"]
 
normposr = cfn(1.5,.5,0)
normposl = cfn(-1.5,.5,0)
normposl2 = cfn(.5,-1.5,0)
normposr2 = cfn(-.5,-1.5,0)
normposn = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
 
holdpos = normposr*ang(math.pi/2,0,0)
holdpos2 = normposl*ang(math.pi/2,0,0)
 
 
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
                        mesh = Instance.new("BlockMesh",parent)
                        mesh.Scale = Vector3.new(x,y,z)
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
----GUI SHORTENINGS-----
G = {
["F"] = function(parent,size,position)
c = Instance.new("Frame",parent)
c.Size = UDim2.new(size.x,0,size.y,0)
c.Style = 2
c.Position = UDim2.new(position.x,0,position.y,0)
return c
end,
["B"] = function(parent,size,position,text,...)
c = Instance.new("TextButton",parent)
c.Size = UDim2.new(size.x,0,size.y,0)
c.Position = UDim2.new(position.x,0,position.y,0)
c.AutoButtonColor = true
c.Text = text
return c
end,
["L"] = function(parent,size,position,text)
c = Instance.new("TextLabel",parent)
c.Size = UDim2.new(size.x,0,size.y,0)
c.Position = UDim2.new(position.x,0,position.y,0)
if text then c.Text = text end
return c
end
}
----GUI SHORTENINGS-----
------MESHIDS---
meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188,["lightning"] = 72583597,["bullet"]=2697549}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153} 
soundids = {["bell"] = 20005706,["flintlock"] = 13510352,["falcon"] = 1387390,['sensa'] = 4700455,
['midas'] = 17385513,['spark'] = 10756118,['boom'] = 10730819,['plank'] = 10548112
}
for i,v in pairs(soundids) do
sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset/?id="..v
sound.Name = i
sound.Parent = char.Head
end
 
function l(a,x,y,z,b)
        if b == nil then
                return a.CFrame*cfn(x,y,z)
        else
                return a*cfn(x,y,z)
        end
end
 
 
lock = {["R"] =
        function(a)
                if a == 1 then
                        rabrick = T.P(1,1,1,"White",1,false,false)
                        rw = T.W(rabrick,torso,1.5,.5,0,0,0,0)
                        T.W(rarm,rabrick,0,-.5,0,0,0,0)
                elseif a == 2 then
                        rlbrick = T.P(1,1,1,"White",1,false,false)
                        rhw = T.W(rlbrick,torso,-.5,-1.5,0,0,0,0)
                        T.W(rleg,rlbrick,0,-.5,0,0,0,0)
                elseif a == 0 then
                        rs.Parent = torso
                        rw.Parent = nil
                        rabrick:Destroy() rabrick = nil
                elseif a == -1 then
                        rhw.Parent = nil
                        rh.Parent = torso
                        rlbrick:Destroy() rlbrick = nil
                end
        end
        , ["L"] = function(a)
                if a == 1 then
                        labrick = T.P(1,1,1,"White",1,false,false)
                        lw = T.W(labrick,torso,-1.5,.5,0,0,0,0)
                        T.W(larm,labrick,0,-.5,0,0,0,0)
                elseif a == 2 then
                        llbrick = T.P(1,1,1,"White",1,false,false)
                        lhw = T.W(llbrick,torso,.5,-1.5,0,0,0,0)
                        T.W(lleg,llbrick,0,-.5,0,0,0,0)
                elseif a == 0 then
                        ls.Parent = torso
                        lw.Parent = nil
                        labrick:Destroy() labrick = nil
                elseif a == -1 then
                        lhw.Parent = nil
                        lh.Parent = torso
                        llbrick:Destroy() llbrick = nil
                end
        end
}
 
M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}
 
hdl = T.P(.25,4,.25,'Brown',0,false,false)
hw = T.W(hdl,rarm,0,-1,0,-math.pi/2,0,0) normh = hw.C1 
--[[
p = T.P(.1,2,.3,'Bright green',0,false,false,m,'wedge')
T.W(p,hdl,0,2.95,0,0,math.pi,0)
 
p2 = T.P(.1,1,1,'Bright green',0,false,false,m,'wedge')
T.W(p2,p,0,.5,.65,math.pi/2,0,0)
 
p3 = T.P(.1,1,.5,'Bright green',0,false,false,m,'wedge')
T.W(p3,p2,0,.25,1,math.pi/2,0,0)
]]--
 
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
 
function damage(hit,amount,bool)
for i,v in pairs(hit:children()) do
        if v:IsA("Humanoid") and v.Parent ~= char then
                if bool then
                local found = v:FindFirstChild('lol')
                        if not found then
                                bo = Instance.new("StringValue",v)
                                bo.Name = 'lol'
                                debris:AddItem(bo,bool)
                                v.Health = v.Health-amount
                        end
                else
                        v.Health = v.Health-amount
                end
        end
end
end
 
T.C(function()
        while wait() do
                wld.DesiredAngle = math.pi
                ventta(wld)
                zeero(wld,0)
        end
end)
 
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
end
 
 
pp = T.P(.1,.1,.1,'Black',0,false,false)
T.FM(pp,'sphere',1,1,1)
 
wld = T.W(pp,hdl,0,2.5,0,-math.pi/2,0,0)
wld.C0 = cfn()*ang(0,0,0,math.pi/2,0,0)
wld.MaxVelocity = .1
 
for _ = 1,1 do --- WEAPON LOOP
        decor = Instance.new("Model",m)
        for i = -45,45,90 do
                wait()
                print('a')
                p = T.P(.1,.1,.1,'Black',1,false,false,decor)
                T.W(p,pp,0,0,0,0,0,M.D(i))
                T.FM(p,'sphere',1,1,1)
                r = .3
                for i = 0,360,30 do
                        p2 = T.P(.2,.1,.1,'Deep blue',0,false,false,decor)
                        T.FM(p2,'block',.9,.25,.45)
                        T.W(p2,p,M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r,math.pi/2,0,-math.pi/2+M.D(i))
                        p3 = T.P(.1,.1,.1,'Deep blue',0,false,false,decor)
                        T.FM(p3,'block',.25,.5,.45)
                        T.W(p3,p2,0,-.05,0,0,0,0)
                end
        r = .2
                for i = 0,360,30 do
                        p2 = T.P(.2,.1,.1,'Deep blue',0,false,false,decor)
                        T.FM(p2,'block',.6,.25,.45)
                        T.W(p2,p,M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r,math.pi/2,0,-math.pi/2+M.D(i))
                end
        r = .35
                for i = 0,360,120 do
                        p2 = T.P(2,.1,.1,'Deep blue',0,false,false,decor)
                        T.FM(p2,'block',.6,.25,.45)
                        T.W(p2,p,M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r,math.pi/2,0,-math.pi/2+M.D(i))
                end
                for i = 60,360+60,120 do
                        p2 = T.P(2,.1,.1,'Deep blue',0,false,false,decor)
                        T.FM(p2,'block',.62,.25,.45)
                        T.W(p2,p,M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r,math.pi/2,0,-math.pi/2+M.D(i))
                end
                p4 = T.P(.4,.1,.4,'Lime green',.5,false,false,decor)
                T.FM(p4,'cylinder',.9,.45,.9)
                T.W(p4,p,0,0,0,0,0,0)
        end 
end
 
center = _
troll_loop = false
 
 
function star(mouse)
ou = 20
th = 1
wi = 3
centers = {}
 
for _ = 1,1 do ----- CENTER LOOP
        pos = cfn(mouse.hit.p)+v3n(0,.1,0) oripos = pos
        main = T.P(1,1,1,'White',1,true,true)
        main.CFrame = pos
        center = main
 
        r = .3*ou
        for i = 0,360,30 do ---- INNER RING
                p2 = T.P(.2,.1,.1,'Deep blue',0,false,true,decor)
                T.FM(p2,'block',.9*ou,wi,th)
                p2.CFrame = l(main,M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)*ang(math.pi/2,0,-math.pi/2+M.D(i))
 
                p3 = T.P(.1,.1,.1,'Deep blue',0,false,true,decor)
                T.FM(p3,'block',wi,.5*ou,th)
                p3.CFrame = l(p2,0,-.05*ou,0)
        end
 
        r = .2*ou
        for i = 0,360,30 do ---OUTER RING
                p2 = T.P(.2,.1,.1,'Deep blue',0,false,true,decor)
                T.FM(p2,'block',.6*ou,wi,th)
                p2.CFrame = l(main,M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)*ang(math.pi/2,0,-math.pi/2+M.D(i))
        end
 
        r = .35*ou
        for q = 0,60,60 do ----TRIANGLES
                for i = q,360+q,120 do
                        p2 = T.P(2,.1,.1,'Deep blue',0,false,true,decor)
                        T.FM(p2,'block',.6*ou,wi,th)
                        p2.CFrame = l(main,M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)*ang(math.pi/2,0,-math.pi/2+M.D(i))
                end
        end
        ----------------
        p4 = T.P(.4,.1,.4,'Lime green',.5,false,false,decor) --- EYE
        T.FM(p4,'cylinder',.9*(ou*1.15),.45,.9*(ou*1.15))
        T.W(p4,main,0,0,0,0,0,0)
        -----------------------
end
 
ou = 10
wi = 2
 
for i = 90,360+90,60 do --- MAIN LOOP
        pos = cfn(mouse.hit.p)+v3n(M.Cos(M.D(i))*18,.1,M.Sin(M.D(i))*18)
        main = T.P(1,1,1,'White',1,true,true)
        main.CFrame = pos
 
        r = .3*ou
        for i = 0,360,30 do ---- INNER RING
                p2 = T.P(.2,.1,.1,'Deep blue',0,false,true,decor)
                T.FM(p2,'block',.9*ou,wi,th)
                p2.CFrame = l(main,M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)*ang(math.pi/2,0,-math.pi/2+M.D(i))
 
                p3 = T.P(.1,.1,.1,'Deep blue',0,false,true,decor)
                T.FM(p3,'block',wi,.5*ou,th)
                p3.CFrame = l(p2,0,-.05*ou,0)
        end
 
        r = .2*ou
        for i = 0,360,30 do ---OUTER RING
                p2 = T.P(.2,.1,.1,'Deep blue',0,false,true,decor)
                T.FM(p2,'block',.6*ou,wi,th)
                p2.CFrame = l(main,M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)*ang(math.pi/2,0,-math.pi/2+M.D(i))
        end
 
        r = .35*ou
        for q = 0,60,60 do ----TRIANGLES
                triangle = {}
                for i = q+60,360+q,120 do
                        p2 = T.P(2,.1,.1,'Deep blue',0,false,true,decor)
                        T.FM(p2,'block',.6*ou,wi,th)
                        p2.CFrame = l(main,M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)*ang(math.pi/2,0,-math.pi/2+M.D(i))
                end
        end
        p4 = T.P(.4,.1,.4,'Lime green',.5,false,true,decor) --- EYE
        T.FM(p4,'cylinder',.9*(ou*1.15),.45,.9*(ou*1.15))
        p4.CFrame = main.CFrame
        table.insert(centers,p4)
end ---- MAIN LOOP END
 
T.C(function() ---- TROLL LOOP
        while wait() do
                if troll_loop == true then
                        rand = M.R(0,1)
                        tex = rand>0 and 'http://www.roblox.com/asset/?id=34697344' or 'http://www.roblox.com/asset/?id=78298767'
                        local sel = centers[math.random(#centers)]
                        local pole = T.P(2,1,2,'White',0,true,true)
                        T.FM(pole,'cylinder',1,1,1)
                        pole.CFrame = cfn(sel.Position)
                        local ball = T.P(4,4,4,'Nougat',0,true,true) ball.Shape = 0
                        local pos = pole.CFrame
                        for _,v in pairs({'Front','Back','Left','Right'}) do
                                T.Dec(ball,v,tex)
                        end
                        for i = 1,5,5/3 do
                                pole.Size = v3n(2,i,2)
                                pole.CFrame = pos+v3n(0,i/2,0)
                                ball.CFrame = pole.CFrame*cfn(0,i/2+1.95,0)
                                wait()
                        end
                        for i = 5,1,-5/3 do
                                pole.Size = v3n(2,i,2)
                                pole.CFrame = pos+v3n(0,i/2,0)
                                ball.CFrame = pole.CFrame*cfn(0,i/2+1.95,0)
                                wait()
                        end
                        pole:Remove() ball:Remove()
                end
        end
end)
T.C(function() ---- GIANT TROLL LOOP
while wait(1) do
                if troll_loop == true then
                        pole = T.P(5,1,5,'White',0,true,true)
                        pole.CFrame = cfn(center.Position)
                        local ball = T.P(10,10,10,'Nougat',0,true,true) ball.Shape = 0
                        local pos = pole.CFrame
                        T.FM(pole,'cylinder',1,1,1)
 
                        for _,v in pairs({'Front','Back','Left','Right'}) do
                                T.Dec(ball,v,'http://www.roblox.com/asset/?id=34697344')
                        end
                        for i = 1,30 do
                                pole.Size = v3n(5,i,5)
                                pole.CFrame = pos+v3n(0,i/2,0)
                                ball.CFrame = pole.CFrame*cfn(0,i/2+4.95,0)
                                wait()
                        end
                        for i = 30,1,-1 do
                                pole.Size = v3n(5,i,5)
                                pole.CFrame = pos+v3n(0,i/2,0)
                                ball.CFrame = pole.CFrame*cfn(0,i/2+4.95,0)
                                wait()
                        end
                        pole:Remove() ball:Remove()
                end
                
        end
end)
 
end --- FUNCTION END
 
function spark(mouse)
if cannon then return end
lock.R(1)
for i = 0,1,.1 do
        wait()
        rw.C1 = normposr*ang(M.D(120*i),0,M.D(20*i))
        hw.C1 = normh*ang(0,0,M.D(90*i))
end
holding = true
laz = T.P(.1,.1,.1,'Lime green',.5,false,true)
T.FM(laz,'cylinder',1,1,1)
while holding do
        if mouse.Target then
                spaas(pp.Position,1,2,1,'New Yeller')
                mag = (pp.Position-mouse.hit.p).magnitude
                laz.Size = v3n(.1,mag,.1)
                laz.CFrame = (cfn(pp.Position,mouse.hit.p)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
 
                decp = T.P(1,0,1,'White',1,false,true)
                pos = mouse.Target.CFrame:pointToObjectSpace(mouse.hit.p)
                decp.CFrame = cfn(pos,mouse.hit.p)*ang(-math.pi,0,0)
                
                local pos = mouse.hit.p
                T.C(function()
                        rand = M.R(1,3)
                        local p = T.P(rand,1,rand,'Earth green',0,true,true)
                        p.CFrame = cfn(pos)
                        for i = 1,M.R(3,10) do
                                wait()
                                p.Size = v3n(p.Size.x,i,p.Size.z)
                                p.CFrame = cfn(pos)+v3n(0,i/2,0)
                                spaas(p.Position,10,1,1,'Deep blue')
                                T.S('spark',1)
                        end
                end)
        end
        wait()
end
laz:Remove()
for i = 1,0,-.1 do
        wait()
        rw.C1 = normposr*ang(M.D(120*i),0,M.D(20*i))
        hw.C1 = normh*ang(0,0,M.D(90*i))
end
lock.R(0)
end
 
cannon = _
function cannonstaff()
if not cannon then
        hw.C1 = normh
        cannon = T.P(1,3,1,'White',0,false,false)
        msh = T.FM(cannon,81616091,1,1,1,81616111)
        T.W(cannon,hdl,0,-1,0,math.pi,0,0)
        lock.R(1)
        for i = 0,1,.1 do
                rw.C1 = normposr*ang(M.D(180*i),0,0)
                msh.Scale = v3n(5*i,2.5*i,5*i)
                wait()
        end
        old=rw.C1
        for i = 0,1,.1 do
                hw.C1 = normh*cfn(0,0,-3*i)*ang(math.pi/2*i,0,0)
                rw.C1 = old*ang(M.D(-90*i),0,0)
                wait()
        end
else 
        for i = 1,0,-.1 do
                hw.C1 = normh*cfn(0,0,-3*i)*ang(math.pi/2*i,0,0)
                rw.C1 = normposr*ang(M.D(90*i),0,0)
                msh.Scale = v3n(5*i,2.5*i,5*i)
                wait()
        end
        cannon:Remove() cannon = nil
        lock.R(0)
end
end
 
plank = false
flying = false
 
plank = nil
function Planko()
        if plank then plank:Remove() plank = nil return end
        plank = T.P(10,1,10,'White',1,true,true)
        plank.CFrame = torso.CFrame*cfn(0,-3.5,0)
        plank.Material = 'Wood'
        torso.CFrame = torso.CFrame+v3n(0,.2,0)
        T.C(function()
                while wait() do
                        plank.Velocity = plank.CFrame.lookVector*30
                        plank.CFrame = torso.CFrame*cfn(0,-3.5,0)
                        wait()
                end
        end)
end
 
function shoot()
        local bullet = T.P(1,1,3,'Black',0,true,false)
        local box = Instance.new("SelectionBox",bullet)
        box.Adornee = bullet
        bullet.CFrame = cannon.CFrame*cfn(0,6,0)*ang(math.pi/2,0,0)
        T.FM(bullet,'bullet',1,1,1)
        T.F(bullet,2,1,'Magenta','Alder')
        T.S('flintlock',1,200)
        Instance.new("BodyForce",bullet).force = torso.CFrame.lookVector*300+v3n(0,bullet:GetMass()*floatforce,0)
        bullet:BreakJoints()
        bullet.Touched:connect(function(hit)
                if not hit.Parent:IsDescendantOf(char) then
                        T.S('boom',1,100,bullet)
                        e = Instance.new("Explosion",Workspace)
                        e.BlastPressure = 0
                        e.Position = bullet.Position
                        e.Hit:connect(function(hit) damage(hit.Parent,30,1) end)
                        local cf = bullet.CFrame*cfn(0,0,1.5)
                        bullet:Remove()
                        local part = T.P(1,1,1,'White',1,true,true)
                        part.Touched:connect(function(hit) damage(hit.Parent,1) end)
                        box.Adornee,box.Parent = part,part
                        for i = 1,30 do
                                part.Size = v3n(i,i,i)
                                part.CFrame = cf*ang(M.D(360/30*i),M.D(360/30*i),M.D(360/30*i))
                                wait()
                        end
                        part:Remove()
                else
                        T.S('plank',1,100,bullet)
                end
        end)
        for i = 0,1,.5 do
        rw.C1 = holdpos*ang(M.D(30*i),0,0)
        wait()
        end
        for i = 1,0,-.5 do
        rw.C1 = holdpos*ang(M.D(30*i),0,0)
        wait()
        end
end
 
function lightning()
        lock.R(1) lock.L(1)
 
        for i = 0,1,.1 do
                rw.C1 = normposr*ang(M.D(100*i),0,M.D(-30*i))*cfn(0,-.7*i,0)
                lw.C1 = normposl*ang(M.D(150*i),0,M.D(15*i))
                hw.C1 = normh*ang(0,0,M.D(50*i))
                wait()
        end
        wait(1)
        fire = T.F(pp,1,1,'White','Black')
        for i = 1,0,-.1 do
                rw.C1 = normposr*ang(M.D(100*i),0,M.D(-30*i))*cfn(0,-.7*i,0)
                lw.C1 = normposl*ang(M.D(150*i),0,M.D(15*i))
                wait()
        end
        for i = 0,1,.1 do
                rw.C1 = normposr*ang(M.D(180*i),0,0)
                hw.C1 = normh*cfn(0,0,-2*i)*ang(M.D(-90*i),0,0)
                wait()
        end
        local p = T.P(1,1,1,'White',0,false,true)
        pos = torso.CFrame
        msh = T.FM(p,'sphere',1,1,1)
        fire.Parent = p
        for i = 1,30 do
                p.CFrame = pos*cfn(0,-3+i,0)
                msh.Scale = v3n(i,i,i)
                wait()
        end
        fire:Remove()
        msh.MeshId = 'rbxassetid://'..meshids['spikeb']
        for i = 10,30 do
                msh.Scale = v3n(i,i,i)
                p.Transparency = i/30
                wait()
        end
        
        p:Remove()
        for i = 1,0,-.1 do
                rw.C1 = normposr*ang(M.D(180*i),0,0)
                hw.C1 = normh*cfn(0,0,-2*i)*ang(M.D(-90*i),0,0)
                wait()
        end
        lock.R(0) lock.L(0)
end
 
function onButton1Down(a)
if cannon then
        shoot(a)
else
        star(a)
end
end
 
nlist = {'f','r'}
 
klist = {
        {'f',function(a) spark(a) end,''},
        {'q',function() cannonstaff() end,''},
        {'e',function() Planko() end},
        {'r',function() lightning() end},
        {'t',function(a) if a.Target then torso.CFrame = cfn(a.hit.p)+v3n(0,2.6,0) end end}
}
 
hop.Deselected:connect(function() lock.R(0) lock.L(0) end)
hop.Selected:connect(function(mouse)
        mouse.Button1Up:connect(function() holding = false end)
        mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end end)
        mouse.KeyDown:connect(function(key)
                for i,v in pairs(nlist) do if key == v and cannon then return end end
                if attacking then return end
                for i,v in pairs(klist) do
                        if key == v[1] then attacking = true v[2](mouse) attacking = false end
                end
        end)
        mouse.Button1Down:connect(function() if attacking then return end attacking = true onButton1Down(mouse) attacking = false end)
end)
--mediafire
 

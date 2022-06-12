-- Gaster <3
-- Can You Give Me Some Money For A Taxi?

--SHIROBAKO made by mugex--




Player = game.Players.LocalPlayer

Char = Player.Character

Torso = Char.Torso

Head = Char.Head

Arms = {Char:FindFirstChild'Right Arm', Char:FindFirstChild'Left Arm'}

Shoulders = {Torso:FindFirstChild'Right Shoulder', Torso:FindFirstChild'Left Shoulder'}

Legs = {Char:FindFirstChild'Right Leg', Char:FindFirstChild'Left Leg'}

HumRoot = Char:FindFirstChild'HumanoidRootPart'

HumRootJ = HumRoot['RootJoint']

Humanoid = Char:FindFirstChild'Humanoid'




local s = Workspace:FindFirstChild('shirobako_script: '..Player.Name,true)

if s then

        local f = s:FindFirstChild'stop'

        if f then

                f:Invoke()

        end

end

s=nil




Debris = game:service'Debris'

RS = game:service'RunService'

Chatserv = game:service'Chat'

Insertserv = game:service'InsertService'




Neck = Torso:FindFirstChild'Neck'




pcall(function() Char.Shirobako:Destroy() end)

Main = Instance.new("Model",Char)

Main.Name = "Shirobako"

script.Parent=Main




cfn=CFrame.new

ang = function(x,y,z) return CFrame.Angles(x or 0,y or 0,z or 0)end

m={tau=math.pi*2}

v3n=Vector3.new

md,mr,PI=math.rad, math.random, math.pi

bcol=BrickColor.new




function l(a1,x,y,z,rx,ry,rz)

    local cf

    if tostring(a1):find(',') == nil then

        cf=a1.CFrame

    else cf=a1 end

    return cf*CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(

                        rx or 0,ry or 0,yz or 0)

end




New = function(what)

    return function(bar)

        local obj=Instance.new(what)

        for arg,val in pairs(bar) do

            if arg == "_P" then

                obj.Parent = val

            else

                                if pcall(function()return obj[arg] end) then

                    obj[arg]=val

                end

            end

        end

        return obj

    end

end




Edit = function(what)

        return function(args)

                for _,obj in next,what do

                        for arg,val in next,args do

                                if pcall(function()return obj[arg]end) then

                                        obj[arg]=val

                                end

                        end

                end

        end

end




_1=nil

set_material = nil

set_color = nil

set_parent = nil

Part = function(x,y,z,col,tr)

        local p = New"Part"{

                _P=set_parent or Main;

                BrickColor = bcol(col or set_color or "White");

                CanCollide = false;

                Transparency = tr or 0;

                Size = Vector3.new(x or 0,y or 0,z or 0);

                Material = set_material or 'SmoothPlastic';

        }

        for _,sur in next,Enum.NormalId:GetEnumItems() do

                p[sur.Name..'Surface'] = 0

        end

        _1 = p

        return p

end

Wedge = function(x,y,z,col,tr)

        local p = New"WedgePart"{

                _P=Main;

                BrickColor = bcol(col or "White");

                CanCollide = false;

                Transparency = tr or 0;

                Size = Vector3.new(x or 0,y or 0,z or 0);

                Material = set_material or 'SmoothPlastic';

        }

        for _,sur in next,Enum.NormalId:GetEnumItems() do

                p[sur.Name..'Surface'] = 0

        end

        _1 = p

        return p

end

Weld = function(part0,part1,c0,c1,...) --over-engineered welding function which accepts many things

        local ar = {...}

        local cframe0,cframe1

        local function checkf()local res=true

                for i,v in pairs(ar)do

                        if type(v) ~= 'number' then

                                res=false

                        end

                end

                return res

        end

        if type(c0) == 'table' then

                cframe0 = CFrame.new(c0[1] or 0, c0[2] or 0, c0[3] or 0) * CFrame.Angles(

                        c0[4] or 0, c0[5] or 0, c0[6] or 0)

        elseif type(c0) == 'userdata' then

                cframe0 = c0

        elseif type(c0) == 'number' and checkf() then

                cframe0 = CFrame.new(c0 or 0,c1 or 0,ar[1] or 0) * CFrame.Angles(ar[2] or 0, ar[3] or 0, ar[4] or 0)

        end

        if type(c1) == 'table' then

                cframe1 = CFrame.new(c1[1] or 0, c1[2] or 0, c1[3] or 0) * CFrame.Angles(

                        c1[4] or 0, c1[5] or 0, c1[6] or 0)

        elseif type(c1) == 'userdata' then

                cframe1 = c1

        elseif type(c1) == 'number' and (not c0 or (c0 and type(c0) == 'table')) then

                cframe1 = CFrame.new(c1 or 0, ar[1] or 0, ar[2] or 0) * CFrame.Angles(ar[3] or 0, ar[4] or 0, ar[5] or 0)

        end

        for i,v in pairs(ar)do

                if type(v) == 'table' then

                        cframe1 = CFrame.new(v[1] or 0, v[2] or 0, v[3] or 0) * CFrame.new(v[4] or 0, v[5] or 0, v[6] or 0)

                elseif type(v) == 'userdata' then

                        cframe1 = v

                end

        end

                        

        cframe0,cframe1 = cframe1,cframe0

        part0.Position=part1.Position

        local weld = Instance.new("Motor")

        weld.Part0 = part0

        weld.Part1 = part1

        weld.C0 = cframe0 or CFrame.new()

        weld.C1 = cframe1 or CFrame.new()

        weld.MaxVelocity = .1

        weld.Parent = part0

        return weld

end




mesh_ids = {spike = "rbxassetid://1033714";

        ring="rbxassetid://3270017";

}




Mesh = function(parent,id,sx,sy,sz)

        local name = ( (id == 'cyl' and 'CylinderMesh') or (id == 'bl' and 'BlockMesh') or 'SpecialMesh')

        local mesh = Instance.new(name)

        if id == 's' then

                mesh.MeshType = Enum.MeshType.Sphere

        elseif id == 'w' then

                mesh.MeshType = Enum.MeshType.Wedge

        elseif string.find(id,"://") ~= nil then

                mesh.MeshId = id

        end

        mesh.Scale = Vector3.new(sx or 1, sy or 1, sz or 1)

        mesh.Parent = parent

        return mesh

end




hdl = Part(1.1,1.5,1.1) hdl.Material='Wood'

hw=Weld(hdl,Arms[1],0,-2,0,-PI/2)




-- New'Decal'{_P=hdl;face='Front';Texture='rbxassetid://49125250'}




dollar = Part(1,1,1,'Bright green')

dollar_msh=Mesh(dollar,"rbxassetid://443493147",.015,.015,.015)

Weld(dollar,hdl,0,0,-.5,0,PI)




top=Part(1,.1,1,'Black')Mesh(top,'bl',.95,.1,.95)

Weld(top,hdl,0,.75)




ring = Part(1,1,1)

Weld(ring,hdl,0,0,.5,0,PI/2)

Mesh(ring,mesh_ids.ring,1,1,3)




Joints = {}

function addJoint(name,weld,c0,c1)

        local t= {}

        t.w=weld

        t.n_c0 = c0 or weld.C0

        t.n_c1 = c1 or weld.C1

        t._desired=weld.C0

        t.speed=.1

        t.l=0

        

        function t:get()

                return setmetatable({},{__newindex=function(t,i,v)

                if i=='d' and self.l == 0 then

                        self.d = v

                elseif i == 's' then self.speed=v end end})

        end




        setmetatable(t,{__newindex=function(ta,i,v)

        if i=='d' then

                ta._desired = ta.n_c0 * v

        end end})

        




        Joints[name]=t

end




addJoint('rw',New"Weld"{_P = Torso;Part0=Torso;Part1=Arms[1];

C0=cfn(1,0.5,0); C1=cfn(-.5,0.5,0)})

addJoint('hw',hw)

addJoint('tw',HumRootJ)




rw=Joints.rw

hw=Joints.hw

tw=Joints.tw




snd=New"Sound"{_P=hdl;SoundId='rbxassetid://359628148'}




rw.d=ang(PI/2)

script.Name='shirobako_script: '..Player.Name




angle=0

p_tick=tick()




--Clear clothing--

for i,v in pairs(Char:children())do 

        if v:IsA'Hat' or v:IsA'Clothing'then

                v:Destroy()

        end

end




function addHat(id)

        return function()

                local id=id

                for i,v in next,Char:children()do

                        if v:IsA'Hat' then v:Destroy() end

                end

                local as=Insertserv:LoadAsset(id):children()[1]

                Player:LoadCharacterAppearance(as)

        end

end




MONEY = 0

DonatedPlayers = {}




function GiveAll()

        local as=Insertserv:LoadAsset(162067148)

        for i,v in next,DonatedPlayers do

                local pl=game:service'Players':FindFirstChild(v)

                if pl then

                        local cl=as:Clone()

                        pl:LoadCharacterAppearance(cl:children()[1])

                end

        end




        acting = true

        rw.w.Part1 = nil

        tw.w.C0 = tw.n_c0

        Shoulders[1].Part0=Torso

        Shoulders[1].Part1=Arms[1]

        Shoulders[1].Parent=Torso

        Chatserv:Chat(Head,"THANK YOU EVERYONE =D")

        for i,v in pairs(Connections) do

                v:disconnect()

        end

        Main:Destroy()

end




suits = {

        beggar={'rbxassetid://54674221','rbxassetid://54676961',-1};

        poor={'rbxassetid://398635080','rbxassetid://217385535',10,addHat(68259961)};

        rich={'rbxassetid://286378066','rbxassetid://198292567',20,addHat(1563352)};

        uberrich={'rbxassetid://231706573','rbxassetid://239131699',30,addHat(138932314)};

        FINAL={'rbxassetid://231706573','rbxassetid://239131699',40,GiveAll};

}




shirt = New"Shirt"{_P=Char;ShirtTemplate=suits.beggar[1]}

pants = New"Pants"{_P=Char;PantsTemplate=suits.beggar[2]}




function checksuit()

        for i,v in pairs(suits)do

                if MONEY == v[3] then

                        cur_choise = i

                        shirt.ShirtTemplate=v[1]

                        pants.PantsTemplate=v[2]

                        if v[4] then

                                v[4]()

                        end

                end

        end

end




cur_choise = "beggar"

choises = {

beggar = {"Can I have some money?";";_;";"Can ya spare couple bucks?";"I'm so poor..."};

poor = {"I need money for studies.", "Can ya lend me some cash?", ";_; Anyone?"};

rich = {"Can ya give sum money for taxi?", "Please?"};

uberrich={"Wanna get dominus? Gimme money!", "This is not a scam... I swear!", "Does anyone want a dominus?"};

FINAL={"THANK YOU EVERYONE WHO DONATED =D"};

}




text = "_ bucks donated"

text2 = "Thank you kind _"

surfg = New"SurfaceGui"{_P=hdl,Face='Right'}

lab=New"TextLabel"{_P=surfg;Size=UDim2.new(1,0,1,0);Text="0 bucks donated";TextScaled=true;BackgroundTransparency=1}

thanking=false




anim_con = RS.Stepped:connect(function()

        for _,j in next,Joints do

                j.w.C0 = j.w.C0:lerp(j._desired,j.speed)

        end

end)

dead_con = Humanoid.Died:connect(function()

        acting=true

        Chatserv:Chat(Head,"World is so cruel =(")

end)




acting=false




depmoney=function(a)

        if not thanking then

                snd:Play()

                thanking=true

                Chatserv:Chat(Head,text2:gsub('_',(a and a.Name or 'human')) )

                MONEY = MONEY+1

                if a then

                        local name = a.Name

                        local _in=false

                        for _,v in pairs(DonatedPlayers) do

                                if v == name then

                                        _in=true

                                end

                        end

                        if not _in then

                                table.insert(DonatedPlayers,name)

                        end

                end

                checksuit()

                lab.Text=text:gsub('_',MONEY)

                wait(1.25)

                thanking=false

        end

end




lab.Text=text:gsub('_',MONEY)

New"ClickDetector"{_P=dollar}.MouseClick:connect(function(a)depmoney(a)end)

cnt=0

Connections = {}

for i,v in next,getfenv(0) do

        if i:match("_con") ~= nil then

                table.insert(Connections,v)

        end

end




swoosh_snd = New"Sound"{_P=hdl;SoundId='rbxassetid://134012322'}

hit_snd = New"Sound"{_P=hdl;SoundId='rbxassetid://386946017'}




function slash()

        acting=true

        rw.speed=.3

        rw.d=ang(PI/2,0,-PI/4)*ang(0,PI/2)

        swoosh_snd:Play()

        local con

        con=hdl.Touched:connect(function(hit)

                local hum=hit.Parent:FindFirstChild'Humanoid'

                if hum then

                        Spawn(function()hum.PlatformStand=true wait'.1'hum.PlatformStand=false end)

                        hum.Torso.Velocity=cfn(Torso.Position,hum.Torso.Position).lookVector*70+v3n(0,30,0)

                        hit_snd:Play()

                        con:disconnect()

                        Chatserv:Chat(Head,"Dont come closer!")

                end

        end)

        wait'.15'

        rw.d=ang(PI/2,0,PI/4)*ang(0,PI/2)

        wait'.25'

        acting=false

        rw.speed=.1

        con:disconnect()

end

New"BindableFunction"{_P=script;Name='stop'}.OnInvoke=function()for i,v in pairs(Connections)do v:disconnect()end end

-- thanking=true

Spawn(function()

        while wait()do

        if not acting then

                if (tick()-p_tick)>(2+(cnt/2*1.75)) and not thanking and cur_choise~='FINAL' then

                        local choise = choises[cur_choise]

                        cnt=cnt+1

                        cnt=(cnt>#choise and 1 or cnt)

                        Chatserv:Chat(Head, choise[cnt])

                        p_tick=tick()

                end

                angle=angle%100 + 1/5

                

                if not thanking then

                        rw.d=ang(PI/2+math.sin(angle)*.15)

                        hw.d=ang(0,0,math.sin(angle)*.15)

                        tw.d=cfn()

                else

                        rw.d=cfn(0,0,.15)*ang(PI/2,0,-PI/4)

                        hw.d=cfn(.15,0,0)*ang(0,md'-35')

                        tw.d=ang(md'15')

                end end

        end

end)




Mouse = Player:GetMouse()

Mouse.KeyDown:connect(function(key)

        if acting then return end

        if key == 'f' then

                slash()

        end

end)

-- slash()

-- for i =1,40 do depmoney(Player)end




--type: hl/https://titanpad.com/ep/pad/export/Beggar/latest?format=txt


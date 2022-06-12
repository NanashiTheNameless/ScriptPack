players = game:GetService("Players")
player = players.LocalPlayer
character = player.Character
torso = character.torso
head = character.head
neck=torso.Neck

cfn,v3n=CFrame.new,Vector3.new
bcol=BrickColor.new
mr,md = math.random,math.rad

JointsService = game:GetService("JointsService")
RS = game:GetService("RunService")
Tester = game:GetService("TestService")
Debris = game:GetService("Debris")
InputService = game:GetService("UserInputService")
PathService = game:GetService("PathfindingService")

hum_root=character:FindFirstChild "HumanoidRootPart"
torw=hum_root:FindFirstChild "RootJoint"

PI=math.pi

do --utilities
    
function tag(a,b)
    if type(b)=='string'then
        if not getfenv()[b]then
            getfenv()[b]={}
        end
        table.insert(getfenv()[b],a)
    else
        table.insert(b,a)
    end
end

c=function(...)
    local args={...}
    if #args > 0 and type(args[1]) == 'number' then
        local x,y,z=args[1],args[2],args[3]
        local rx,ry,rz=args[4],args[5],args[6]
        if x or y or z then
            if rx or ry or rz then
                return CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(
                    rx or 0,ry or 0,rz or 0)
            else
                return CFrame.new(x or 0,y or 0,z or 0)
            end
        end
    else
        return CFrame.new(...)
    end
end

a=function(rx,ry,rz)return CFrame.Angles(rx or 0,ry or 0,rz or 0)end

if not hum_root then
    error("Cant run. Ya dunt have humanoidrootpart")
elseif not torso then
    error("No torso found")
end

torw=hum_root.RootJoint

function C(what)
    return function(bar)
        local obj=Instance.new(what)
        for arg,val in pairs(bar) do
            if arg == "_P" then
                obj.Parent = val
            else
                if obj[arg] then
                    obj[arg]=val
                end
            end
        end
        return obj
    end
end

pcall(function() character.Uniiq:Destroy() end)

Main=Instance.new("Model",character)
Main.Name="Uniiq"
m={}
m.tau=math.tau

_1,_2,_3=nil,nil,nil ---Buffer

function l(a1,x,y,z,rx,ry,rz)
    local cf
    if tostring(a1):find(',') == nil then
        cf=a1.CFrame
    else cf=a1 end
    return cf*CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(
                        rx or 0,ry or 0,yz or 0)
end

set_material=nil
set_color=nil
set_anchor=false
set_collide=false
set_parent=nil


Sounds={
    Fire = {2248511,1};
    Steam = 291165237;
    Teleport = 12555594;
	Laser = {156572165;2.15};
	Slash2 = 182707266;
	Grapple = 16211041;
	Grapple_hit = 16211030;
	Spin = 158475221;
    Slash= {'rbxasset://sounds/swordslash.wav',1.25};
}
pcall(function()Main.Sounds:Destroy()end)
soundCont=C'Folder'{_P=Main;Name='Sounds'}
for i,v in pairs(Sounds)do
    local pitch=1
    if type(v)=='table' and v[2]then
        pitch=v[2]
    end
    local snd=C'Sound'{_P=soundCont;
        Name=i;
        SoundId='rbxassetid://'..tostring((type(v)=='table'and v[1] or v));
        Pitch=pitch
    }
    if type(type(v)=='table'and v[1] or v)=='string'then
        snd.SoundId=type(v)=='table'and v[1] or v
    end
    Sounds[i]=snd
end

-- Sounds.Laser.Looped=true
Sounds.Spin.Looped=true

function debounce(func)
    local isRunning = false    -- Create a local debounce variable
    return function(...)       -- Return a new function
        if not isRunning then
            isRunning = true
 
            func(...)          -- Call it with the original arguments
 
            isRunning = false
        end
    end
end

function P(x,y,z,col,tr)
    local part = Instance.new("Part",set_parent or Main)
    part.Position=torso.Position
    part.Anchored=set_anchor or false
    part.Size=Vector3.new(x,y,z)
    for i,v in pairs(Enum.NormalId:GetEnumItems()) do
        part[v.Name..'Surface'] = 10
    end
    part.BrickColor=BrickColor.new(col or set_color  or "")
    part.CanCollide=set_collide or false
    part.Material=(set_material or 'SmoothPlastic')
    part.Transparency=tr or 0
    _1=part
    return part
end
_3=nil
function W(part0,part1,c1,c0)
    local w = Instance.new("Motor6D",part0)
    w.Part0 = part0
    w.Part1 = part1
    
    if c0 then
        w.C0 = c0
    end
    if c1 then
        w.C1 = c1
    end
    w.MaxVelocity=.1
	_3=w
    return w
end
function W2(part0,part1,c1,c0)
    local w = Instance.new("Weld",part0)
    w.Part0 = part0
    w.Part1 = part1
    
    if c0 then
        w.C0 = c0
    end
    if c1 then
        w.C1 = c1
    end
    return w
end

M_List = {Diamond='9756362';Spikeball='9982590';Table='111868131';
Egg='1527559';Ring='3270017';Bullet='2697549';Grass='1080954';
Shark='82821384';Sword='12221720';Crown='10688643';Spike='1033714';
Leaf='48100239';Fist='65322375';Chakram='19251107';Crown='20329976';Spring='9753878';
Tree='8564125';Fireball='10587413';DiamondBall='10917418';Hand='32054761'}

function M(part,mesh_type,x,y,z)
    local aliases={
        c='Cylinder'; b='Brick'; s='Sphere';
        h='Head'; w='Wedge';
    }
    local mesh = Instance.new("SpecialMesh",part or nil)
    local selec = aliases[mesh_type]
    if selec ~= nil then
        mesh.MeshType = selec
        if selec=="Cylinder"then
            mesh:Destroy()
            mesh=Instance.new("CylinderMesh",part or nil)
        end
    else
        local found=false
        for i,v in pairs((M_List or {})) do
            if mesh_type==i then
                mesh.MeshId="rbxassetid://"..v
                found=true
                break
            end
        end
        if not found then
           mesh.MeshId='rbxassetid://'..tostring(mesh_type)
        end
    end
    mesh.Scale=Vector3.new(x or 1,y or 1,z or 1)
    _2=mesh
    return mesh
end



function findHum(pos,rad)
	local hums={}
	function check(a)
		local res=false
		for i,ho in pairs(hums)do
				if a==ho then res=true end
		end
		return res
	end
	for i,v in pairs(Workspace:children())do
		if v:IsA'Model' and v:FindFirstChild'muge'==nil and v~=character then
			for i,q in pairs(v:children())do
				if q:IsA'Humanoid' and q.Torso and q.Health > 0 then
					if (q.Torso.Position-pos).magnitude < rad then
						if not check(q)then
							table.insert(hums,q)
						end
					end
				end
			end
		end
	end
	return hums
end

function E(foo)
    local tab = {}
    if type(foo) == "table" then
        tab = foo
    elseif type(foo) == "userdata" then
		if foo:IsA'Model'then
			for i,v in pairs(foo:children())do
				table.insert(tab,v)
			end
		else
			table.insert(tab,foo)
		end
    end
    return function(bar)
    for _,obj in pairs(tab) do
        for arg,val in pairs(bar) do
			if arg == '_F'then
				val(obj)
			end
			local succes=pcall(function()return obj[arg]end)
            if succes then
                obj[arg] = val
            end
        end
    end end
end

function G(obj,val2)
    local val=(val2 or 'Size')
    return unpack{obj[val].x,obj[val].y,obj[val].z}
end
end

do --animsystem
desired=nil
WeldInfo={
    rw = {n_c0=cfn(1,0.5,0),n_c1=cfn(-.5,0.5,0)};
    lw = {n_c0=cfn(-1,0.5,0),n_c1=cfn(0.5,0.5,0)};
    rw2 = {n_c0=cfn(1,-1,0),n_c1=cfn(0.5,1,0)};
    lw2 = {n_c0=cfn(-1,-1,0),n_c1=cfn(-0.5,1,0)};
    torw = {n_c0=cfn(0,0,0,-1,0,0,0,0,1,0,1,-0);
		n_c1=cfn(0,0,0,-1,-0,-0,0,0,1,0,1,0)};
    neck = {n_c0=cfn(0,1,0,-1,-0,-0,0,0,1,0,1,0)};
    hw = {n_c0=cfn()};
}
spd={rw=.1;lw=.1;torw=.1;rw2=.1;lw2=.1;neck=.1;hw=.1}
setmetatable(spd,{__newindex=function(t,i,v)
    if i=='all'then
        for o,q in pairs(spd)do
            t[o]=v
        end
    end
end})

Spawn(function()
while true do
    RS.Stepped:wait()
    if rw then
        rw.C0 = rw.C0:lerp((WeldInfo.rw.desired or WeldInfo.rw.n_c0),spd.rw)
    end
    if lw then
        lw.C0 = lw.C0:lerp((WeldInfo.lw.desired or WeldInfo.lw.n_c0),spd.lw)
    end
    if lw2 then
        lw2.C0 = lw2.C0:lerp((WeldInfo.lw2.desired or WeldInfo.lw2.n_c0),spd.lw2)
    end
    if rw2 then
        rw2.C0 = rw2.C0:lerp((WeldInfo.rw2.desired or WeldInfo.rw2.n_c0),spd.rw2)
    end
    if neck then
        neck.C0 = neck.C0:lerp((WeldInfo.neck.desired or WeldInfo.neck.n_c0),spd.neck)
    end
    if torw then
        torw.C0 = torw.C0:lerp(WeldInfo.torw.desired or WeldInfo.torw.n_c0,spd.torw)
    end
    if hw then
        hw.C0 = hw.C0:lerp(WeldInfo.hw.desired or WeldInfo.hw.n_c0,spd.hw)
    end
end
end)

function A(foo)
    return function(bar)
        if WeldInfo[foo] == nil then
            warn("Animfunc didn't find info")
            return
        end
        WeldInfo[foo].desired=WeldInfo[foo].n_c0*bar
    end
end

Arms={character['Right Arm'];character['Left Arm']}
Legs={character['Right Leg'];character['Left Leg']}
Shoulders={torso['Right Shoulder'];torso['Left Shoulder']}
Hips={torso['Right Hip'];torso['Left Hip']}

rw,lw,rw2,lw2=nil,nil,nil,nil
function L(val)
    if val=='R' then if not rw then
        Shoulders[1].Part1=nil
        rw=W2(torso,Arms[1],WeldInfo.rw.n_c1,WeldInfo.rw.n_c0)
        -- rw.MaxVelocity=0
    else rw:Destroy()rw=nil Shoulders[1].Part1=Arms[1] end
    elseif val=='L' then if not lw then
        Shoulders[2].Part1=nil
        lw=W2(torso,Arms[2],WeldInfo.lw.n_c1,WeldInfo.lw.n_c0)
        -- rw.MaxVelocity=0
    else lw:Destroy()lw=nil Shoulders[2].Part1=Arms[2] end
    elseif val=='RR' then if not rw2 then
        Hips[1].Part1=nil
        rw2=W2(torso,Legs[1],WeldInfo.rw2.n_c1,WeldInfo.rw2.n_c0)
        -- rw.MaxVelocity=0
    else rw2:Destroy()rw2=nil Hips[1].Part1=Legs[1] end
    elseif val=='LL' then if not lw2 then
        Hips[2].Part1=nil
        lw2=W2(torso,Legs[2],WeldInfo.lw2.n_c1,WeldInfo.lw2.n_c0)
        -- rw.MaxVelocity=0
    else lw2:Destroy()lw2=nil Hips[2].Part1=Legs[2] end
    end
end


end

RS=game:service'RunService'

mouse=player:GetMouse()

hdl = P(.25,1,.25)M(hdl,'c')hw=W(hdl,Arms[1],c(0,-1.1,0,-PI/2))
p=P(.3,.1,.3)W(p,hdl,c(0,-.55))M(p,'c')tip=p
    
P(.3,.1,.3,'New Yeller')M(_1,'s',1,.25,1)W(_1,p,c(0,.1)) --yellow sphere
    
p2=P(.3,.1,.3,'Black')W(_1,p)M(_1,'c',1.01,.5,1.01) --black rim

r=P(.1,.1,.1,'New Yeller')M(_1,'Ring',.3,.3,.1)W(_1,p2,a(PI/2))

for i=0,PI*2,PI*2/6 do
    p2=P(.1,.1,.1,'White')W(_1,p,c(0,-.15,0,0,i),c(0,0,.1,-PI/6))M(_1,'Diamond',.1,.1,.1)
end
p2=P(.1,.1,.1,'White')W(_1,p,c(0,-.15))M(_1,'Diamond',.11,.1,.11)
p2=P(.1,.1,.1,'White')W(_1,p,c(0,-.15))M(_1,'Diamond',.11,.1,.11)
p2=P(.1,.1,.1,'White')W(_1,p,c(0,-.15/2)*a(0,PI/4))M(_1,'Diamond',.125,.1,.125)
h=P(.35,.1,.35,'Crimson',.5)M(h,'b',1,.5,1)W(_1,hdl,c(0,.5+0.025)) --hilt
C'Decal'{_P=h;Texture='rbxassetid://151271428';Face='Top'}

P(.1,.1,.1,'Crimson',.5)M(_1,'Crown',.5,.1,.5)W(_1,h,c(.15/2/4,.15,-.15/2))
b=P(.1,3,.25,'Crimson',.5)M(b,'b',.25,1,1)W(b,h,c(0,1.5+.025+.15))b.Material='Neon'

blade=b

side=.35

calc=.1/4/2
pp=P(side,.1,.1,'Black')M(_1,'b',1.01,.51,.25)W(_1,h,c(0,0,side/2+calc)) --up
pp=P(side,.1,.1,'Black')M(_1,'b',1.01,.51,.25)W(_1,h,c(0,0,-(side/2+calc) )) --down
pp=P(.1,.1,side+.075,'Black')M(_1,'b',.25,.51,1.01)W(_1,h,c((side/2+calc) )) --left
pp=P(.1,.1,side+.075,'Black')M(_1,'b',.25,.51,1.01)W(_1,h,c(-(side/2+calc) )) --right

--platemail
set_color='Black'
p=P(1,1,.1)W(p,torso,c(0,0,-.55)) --front_plate
--emblem    
d=P(.8,.8,.1,'Bright red')M(d,'b',1,1,1.01)W(d,p)
d2=P(.5,.1,.5,'New Yeller')M(d2,'c',1,.8,1)W(d2,d,c(0,0,-.125,PI/2))
center_point=d2

for i=0,PI*2,PI*2/6 do
    pp=P(.1,.1,.25)W(pp,d,c(0,0,-.125)*a(math.pi/2,i),c(.25))
end

an=md'75'

p2=P(.75,.25,.1)W(p2,p,c(-.5,-.5)*a(0,0,an),c(.25,0,0))
P(.25,.25,1.35)W(_1,p2,c(-.75/2-.125,0,_1.Size.z/2-.125))
    
p2=P(.75,.25,.1)W(p2,p,c(.5,-.5)*a(0,0,-an),c(-.25,0,0))
P(.25,.25,1.35)W(_1,p2,c(.75/2+.125,0,_1.Size.z/2-.125))

p=P(1,1,.1)W(p,torso,c(0,0,.55)) --back_plate
--emblem    
d=P(.8,.8,.1,'Bright red')M(d,'b',1,1,1.01)W(d,p)
d2=P(.5,.1,.5,'New Yeller')M(d2,'c',1,.8,1)W(d2,d,c(0,0,.125,PI/2))
d2.Material='Neon'
C'PointLight'{_P=d2}

for i=0,PI*2,PI*2/6 do
    pp=P(.1,.1,.25)W(pp,d,c(0,0,.125)*a(math.pi/2,i),c(.25))
end

p2=P(.75,.25,.1)W(p2,p,c(-.5,-.5)*a(0,0,an),c(.25,0,0))
p2=P(.75,.25,.1)W(p2,p,c(.5,-.5)*a(0,0,-an),c(-.25,0,0))
set_color=nil

function Damage(hit,amount)
	local hum=hit.Parent:FindFirstChild'Humanoid'
	if hum and hum.Parent ~= character then
		hum.Health=hum.Health-amount or 10
	
		-- local container = hit.Parent:FindFirstChild('Dam_Cont',true)
		if not hit.Parent:FindFirstChild'Head' then return end
			local container = C'BillboardGui'{_P = hit.Parent;
				Adornee = hit.Parent.Head;
				Size=UDim2.new(0,30,0,30);
				StudsOffset = v3n(0,5,0);
				Name = 'Dam_Cont'
			}
			local splat = C'TextLabel'{_P=container;
				BackgroundTransparency=1;
				Size = UDim2.new(1,0,1,0);
				Position = UDim2.new(0,0,1,0);
				-- TextScaled=true;
				TextColor3=bcol'Really red'.Color;
				FontSize=12;
				Text=tostring(amount);
			}
			Spawn(function()
			splat:TweenPosition(UDim2.new(0,0,0,0),'InOut','Quad',.5,true,
				function(a)container:Destroy()end)
			end)
	end
end

function createTra(stcf,encf)
    points={}
    stcf = stcf
    encf = encf
    g = 9.82
    mag = (stcf.p-encf.p).magnitude
    vel = 30
    theta = md'120'
    vx = vel*(math.cos(PI/180*theta))
    vy = vel*(math.sin(PI/180*theta))
    dt = .1
    posx,posy = 1,1
    t = 0

    c2 = c(stcf.p,encf.p).lookVector
    c1 = c(l(torso).p,encf.p).lookVector
    the = math.atan(c1:Dot(c2))
    theta = the
    cf = stcf
    local function trail(p)
        local p0,p1
        while p.Parent ~= nil do
            p0 = p.CFrame.p
            wait() 
            p1 = p.CFrame.p
            local mag=(p0-p1).magnitude
            local laz=P(.1,mag,.1,'New Yeller',.5)M(laz,'c')laz.Anchored=true
            laz.Material='Neon'
            laz.CFrame=l(c(p0,p1),0,0,-mag/2,math.pi/2)
            Delay(.25,function()for i=.5,1,.05 do laz.Transparency= i wait() end laz:Destroy()end)
        end
    end
    local ball=P(1,1,1,'Cyan')ball.Anchored=true M(_1,'s')
    ball.CFrame=stcf
    Spawn(function()trail(ball) end)
    -- Spawn(function()
    while (cf.Y > Workspace.Base.CFrame.Y) do
        posx = posx + vx * dt
        posy = posy + vy * dt
        t = t + dt
        vy = vy - (g * dt)
        ball.CFrame=cfn(stcf.p,encf.p)*cfn(0,posy,-posx)
        ball.Anchored=true
        cf = ball.CFrame
        game:service'RunService'.Heartbeat:wait()
    end
    e=Instance.new('Explosion',Workspace)
    e.DestroyJointRadiusPercent=0
    e.Position=ball.Position
	local bcf=ball.CFrame
    ball:Destroy()ball=nil
	return bcf
	-- end)
end

function reset()
    A'rw'(c())A'lw'(c())A'torw'(c())A'rw2'(c())A'lw2'(c())A'neck'(c())A'hw'(c())
end

function slash() --slash
    L'R'
	
    A'rw'(a(md'65',0,md'-50')*a(0,md'110'))
    A'torw'(a(0,0,md'25')) 
    wait'.25' Sounds.Slash:Play()
    A'rw'(a(md'110',0,md'130')*a(0,md'90'))
    A'torw'(a(0,0,md'-25'))
    wait'.25'
    A'rw'(a(md'160',0,md'-15')*a(0,md'45'))
    wait'.25' Sounds.Slash:Play()
    A'torw'(a(0,0,md'5'))
    A'rw'(a(md'20',0,md'-75')*a(md'20'))wait'.1'
    A'rw'(a(md'-40',0,md'-10')*a(0,md'45'))wait'.25'
    reset()wait'.35'
    L'R'
end

function jump_slash() --jumpslash
    L'R'L'RR'L'LL'L'L'
    cf=torso.CFrame
    bg=C'BodyGyro'{_P=torso;maxTorque=v3n(1,1,1)*11e+14;D=50}
    bv=C'BodyVelocity'{_P=hum_root;velocity=cf.lookVector*40+v3n(0,50,0)}
        Spawn(function()
    for i=0,1,.1 do
        bg.cframe=bg.cframe:lerp(cf*a(md'45'),.25)
        wait()
    end end)
    -- A'torw'(c(0,0,4)*a(md'-45'))
    A'rw2'(a(md'-45'))
    A'lw2'(a(md'-45'))
    A'rw'(a(md'160'))
    A'lw'(a(md'160',0,md'60'))
    A'neck'(a(md'-50',0,md'25'))
    wait'.5' Sounds.Slash2:Play()
    bv.Velocity=v3n(0,-50,0)
    A'rw'(a(md'25',0,md'-50')*a(0,md'-15'))
    A'lw'(a(md'-25',0,md'-35'))
    Spawn(function()
    for i=0,1,.1 do
        bg.cframe=bg.cframe:lerp(cf*a(md'-35'),.25)
        wait()
    end end)
    -- A'torw'(c(0,0,-.15)*a(md'35'))
    A'rw2'(a(md'65'))A'lw2'(a(md'35'))
    A'neck'(a(md'35'))
    -- hw.C0=a(md'45')
    A'hw'(a(md'45')) 
    wait'.45' bg:Destroy() bv:Destroy()
    A'hw'(c())
    -- hw.C0=c() 
    reset()wait'.5'
    L'R'L'RR'L'LL'L'L'
end

floatforce=236 / 1.2

function negateGravity(target)
    local total=0
    local gravity = 1
    for i,v in pairs(target:children())do
        if v:IsA'Part'then
            if v.Name=='Handle' then
                total = total + v:GetMass() * floatforce * 1
            else
                total = total + v:GetMass() * floatforce * gravity
            end
        end
        total = total + negateGravity(v)
    end
    return total
end

function stab() --stab
    L'RR'L'LL'L'R'L'L'
    A'rw2'(c(0,.45,-.5,md'15'))A'lw2'(a(md'-45'))
    A'torw'(c(0,0,-.35)*a(md'15'))
    A'rw'(a(md'75',0,md'-10')*a(0,md'45'))
    A'hw'(a(md'45'))
    A'lw'(a(md'-75',0,md'45'))
    
    local w
    local con
    
    con=blade.Touched:connect(function(hit)
        local hum=hit.Parent:FindFirstChild'Humanoid'
        if hum and hum.Parent~=character then
            local negation=C'BodyForce'{_P=hum.Torso;
                force=v3n(0,negateGravity(hum.Parent),0);
            }
            local cf=blade.CFrame:toObjectSpace(hit.CFrame)
            local w=W(hit,blade,cf,cfn())
            Spawn(function()
                wait'.25'
                negation.force=v3n(0,0,0)
                wait()w:Destroy()negation:Destroy()
            end)
            con:disconnect()
        end
    end)

    bv=C'BodyVelocity'{_P=torso;velocity=l(torso).lookVector*50;}
    wait'.35'
    con:disconnect()
    bv:Destroy()
    if w then w:Destroy() end
    reset()wait'.35'
    L'RR'L'LL'L'R'L'L'
end

function spin_sword() ---Spin sword
    L'R'
    spd.rw=.1
    spd.hw=.3
    local done=false
    A'rw'(a(md'90'))wait'.15'
    
    local function beam()
        local p=P(.1,.1,2,'Bright red')p.Material='Neon'p.Anchored=true
        t={-1,1}
        ran=t[math.random(#t)]*(math.random()*b.Size/2)
        p.CFrame=l(b,0,ran,0,0,math.pi/2)
        local con
		
		con=p.Touched:connect(function(hit)
			Damage(hit,10)p:destroy()
		end)
		
        Spawn(function()
        local cf=p.CFrame
        local tar=l(cf,0,0,-10)
        for i=0,1,.1 do
            p.CFrame=cf:lerp(tar,i)
            wait()
        end p:Destroy() end)
    end
        
    Spawn(function()
        local t=tick()
        for i=0,PI*2*10,PI*2/10 do
            A'hw'(c(.45)*a(0,PI/2,i))
            if (tick()-t) > .05 then
				Sounds.Laser:Play()
                beam()
                t=tick()
            end
            wait()
        end done=true
    end)
	
    while not done do
		
        A'rw'(a(md'90',0,md'-45'))
        if done then break end
        wait'.5'
        A'rw'(a(md'90',0,md'25'))
        if done then break end
        wait'.5'
    end
	
    spd.rw=.1
    spd.hw=.1
    A'hw'(c())A'rw'(c())wait(.25)L'R'
end
-- C'PointLight'{_P=b;Color=b.BrickColor.Color}
function spin_body() --spin
    L'R'L'L'
    local orig=character.Humanoid.WalkSpeed
    character.Humanoid.WalkSpeed=50
    A'rw'(a(md'90',0,md'-15')*a(0,md'-75'))
    A'lw'(c(.15,0,-.4)*a(md'65',0,md'55'))
    A'hw'(a(md'-15'))
	local con
	con = blade.Touched:connect(debounce(function(hit)
		Damage(hit.Parent,20)wait'.1'
	end))
    rotvel=C'BodyAngularVelocity'{_P=torso;maxTorque=v3n(0,1,0)*9e+008;
        angularvelocity=v3n(0,1,0)*PI*2*3;
    }
    holding=true
    aa=0
	Sounds.Spin:Play()
    while holding do wait()
        aa=(aa%100)+2/5
        A'rw'(a(md'90'-math.sin(aa)*.5,0,md'-15')*a(0,md'-75'))
        A'lw'(c(.15,0,-.4)*a(md'65'-math.sin(aa)*.5,0,md'55'))
    end
	Sounds.Spin:Stop()
	con:disconnect()
    character.Humanoid.WalkSpeed=orig
    rotvel:Destroy()
    reset()wait'.5'
    L'R'L'L'
end

function ff2()
    holding = true
    while holding do
        tar=mouse.Target
        if tar then
        sx,sy,sz=tar.Size.x,tar.Size.y,tar.Size.z
        p1=P(sx/2,sy,sz/2)
        p2=P(sx/2,sy,sz/2)
        p3=P(sx/2,sy,sz/2)
        p4=P(sx/2,sy,sz/2)
        E{p1,p2,p3,p4}{Anchored=true;CanCollide=true;Color=tar.Color;
            Parent=tar.Parent;Material=tar.Material}
        p1.CFrame=l(tar,sx/2-p1.Size.x/2,0,-sz/2+p1.Size.z/2)
        p2.CFrame=l(tar,sx/2-p1.Size.x/2,0,sz/2-p1.Size.z/2)
        p3.CFrame=l(tar,-sx/2+p1.Size.x/2,0,sz/2-p1.Size.z/2)
        p4.CFrame=l(tar,-sx/2+p1.Size.x/2,0,-sz/2+p1.Size.z/2)
        
        for i,v in pairs({p1,p2,p3,p4})do
            local mag=(mouse.hit.p-v.Position).magnitude
            if mag<3 then
                v:Destroy()
            end
        end
        
        tar:Destroy() end wait()
    end

    -- p1.CFrame=l(tar,sx/4/2+sx/2,0,-sz/2+sz/4/2)
end


toAnim={}
Spawn(function() --SecondaryAnimLoop.Handles Dummies animations
	while true do
		RS.Heartbeat:wait()
		for i,v in next,toAnim do
		if v.char then
			v.weld.C0 = v.weld.C0:lerp( v.tab.n_c0 * (v.tab.desired or cfn()),v.speed )
		else
			table.remove(toAnim,i)
		end
		end
	end
end)

Dummies = {}

Dummy={}
Dummy.has_found=false
Dummy.anim_speed=.1
Dummy.damage = 20
Dummy.die_on_hit = true
Dummy.new = function(cf,name,skin_color)
	local dummy=C'Model'{_P=Workspace;Name=name or 'Dummy'}
	C'BoolValue'{_P=dummy;Name='muge'} --identifier
	set_collide=false
	set_parent=dummy
	set_color=skin_color or "Nougat"
	
	local tot=P(2,2,1)tot.Name='Torso'
	
	local hea=P(2,1,1)M(hea,'h',1.25,1.25,1.25)W(hea,tot,cfn(),c(0,-1.5))hea.Name='Head'
	_3.Name='Neck'
	local face=C'Decal'{_P=hea; Name='face'; Texture='rbxassetid://306526364'}
	
	local angle = a(0,math.pi)
	
	local arm = P(1,2,1)arm.Name='Left Arm'
	local lw = W(arm,tot,c(1.5,.5,0,0)*angle,c(0,.5,0,0)*angle)
	_3.Name='Left Shoulder'
	
	local arm = P(1,2,1)arm.Name='Right Arm'
	local rw = W(arm,tot,c(-1.5,.5,0,0)*angle,c(0,.5,0,0)*angle)
	_3.Name='Right Shoulder'
	
	local leg = P(1,2,1)leg.Name='Left Leg'
	local lw2 = W(leg,tot,c(.5,-1),c(1,1))
	_3.Name='Left Hip'
	
	local leg = P(1,2,1)leg.Name='Right Leg'
	local rw2 = W(leg,tot,c(-.5,-1),c(-1,1))
	_3.Name='Right Hip'
	
	set_parent,set_color = nil,nil
	set_collide=false
	
	local hum=C'Humanoid'{_P=dummy}
	tot.CFrame = cf or l(torso,0,0,-5)
	local winfo = {
		lw={n_c0=c(0,.5,0)*a(0,PI),w=lw};
		rw={n_c0=c(0,.5,0)*a(0,PI),w=rw};
		rw2={n_c0=c(-1,1,0),w=rw2};
		lw2={n_c0=c(1,1,0),w=lw2};
	}

	local D = setmetatable({body = dummy; hum=hum; anim_speed = .1; has_found = false;
	joints=wlds;winfo=winfo;name=name},Dummy)
	
	for i,v in pairs(D.winfo)do
		local t = {weld=v.w; tab=v; speed=D.anim_speed; name=D.Name; char=D.body}
		table.insert(toAnim,t)
	end
	
	D.A=function(wut)
		return function(wat)
			if winfo[wut] then
				winfo[wut].desired = wat
			end
		end
	end
	
	table.insert(Dummies,D)
	return D
end
Dummy.__index = Dummy

function Dummy:destroy()
	for i,v in pairs(toAnim) do --remove from animationlist
		if v.name == Dummy.Name then
			table.remove(toAnim,i)
			break
		end
	end
	self.body:Destroy()
end

function Dummy:chase_nearest(radius)

	if not self.body or not (self.hum and self.hum.Torso) then return end
	self.has_found=false
	local foundOnes = findHum(self.body.Torso.Position,radius or 10)
	if #foundOnes>0 then
		if foundOnes[1].Torso then
		
			local path = PathService:ComputeRawPathAsync(self.hum.Torso.Position,
				foundOnes[1].Torso.Position,100)
			local points = path:GetPointCoordinates()
			
			self.has_found=true
			for i,point in pairs(points) do
				self.hum:MoveTo(point)
				repeat
					dist = (point-self.hum.Torso.Position).magnitude
					wait()
				until dist < 3
			end
			-- self.hum:MoveTo(path:GetPointCoordinates()[1])
			-- self.hum:MoveTo(foundOnes[1].Torso.Position)
		end
	end
	
end

specials={ --on creation, on hit
	Burnadett={
		function(self)
			fire =C'Fire'{_P=self.body.Torso;}
			self.hum.WalkSpeed = 60
			self.damage = 0
			self.die_on_hit = false
		end;
		function(self,hit,hum)
			local f = hum.Torso:FindFirstChild'Scorch'
			if not f then
				f=C'Fire'{_P=hum.Torso;
					Size=10;
					Name='Scorch'
				}
				Spawn(function()
					while f ~= nil and f.Parent ~= nil do
						if hum and hum.Parent and hum.Health > 0 then
							hum.Health = hum.Health - 1
							
						end
						wait()
					end
				end)
				Debris:AddItem(f,2)
			end
		end;
	}
}

NPClist = {
	-- Depp = {Skin = "Brown"; Shirt = 274919324; Pants = 225138096; Face = 123692902;
		-- MeshId = 13640868; MeshTexture = 24261077; };
	
	-- Jack = {Skin = "Terra Cotta"; Shirt = 242842985; Pants = 319196143; Face = 182636507;
		-- MeshId = 16190497; MeshTexture = 45783424; };

	-- Markovich = {Skin = "Cool yellow"; Shirt = 302817401; Pants = 230102792; Face = 341704522;
		-- MeshId = 1028713; MeshTexture = 59408425;  };
		
	Burnadett = {Skin = "Daisy orange"; Pants = 243602917; MeshId = 13070796;  MeshTexture = 50888939;
		MeshOffset = c(0,-.15,0);Face = 266342557};
		
	-- Christine = {Skin = "Cool yellow"; MeshId = 29713297; MeshTexture = 45106315; 
		-- MeshOffset = c(0,-.35,0); Shirt = 424851873; Pants = 416111123; Face = 334655813};
}

function arc()
	L'R'
	A'rw'(a(md'145')) wait'.25'
	local dummies={}
	for  name, info in next, NPClist do
	
		local tarcf = createTra(l(blade,0,1.5),mouse.hit)
	
		local d = Dummy.new(c(l(cfn(tarcf.p),0,4).p, l(torso).p), name, info.Skin or 'White')
		d.speed=50
		
		d.body.Head.face.Texture = 'rbxassetid://'..(info.Face or '182636507')
		
		table.insert(dummies,d)
		local Special
		if specials[name] then
			Special = specials[name]
		end
		if Special and Special[1] then Special[1](d) end
		
		if info.Shirt then
			C'Shirt'{_P=d.body;ShirtTemplate='rbxassetid://'..info.Shirt}
		end
		if info.Pants then
			C'Pants'{_P=d.body;PantsTemplate='rbxassetid://'..info.Pants}
		end
		
		if info.MeshId then
			hat = P(-0,-0,-1) hat.Parent=d.body
			
			hat_mesh = M(hat,info.MeshId or '', unpack(info.MeshSize or {1,1,1}) ) 
			hat_mesh.TextureId = 'rbxassetid://'..tostring(info.MeshTexture or '')
			
			hat_weld = W(hat,d.body.Head,(info.MeshOffset or c(0,.65) ) )
		end
		d.body.Torso.Touched:connect(function(hit) --on Touch, do damage and disappear
			if not hit.Parent then return end
				local hum=hit.Parent:FindFirstChild'Humanoid'
				if hum and not hum.Parent:FindFirstChild'muge' and hum.Parent~=character then
					hum:TakeDamage(d.damage)
					if Special and Special[2] then
						Special[2](d,hit,hum)
					end
					if d.die_on_hit then
						d:destroy()
					end
				end
			end)
	end
	
	local angle=0
	local p_tick = tick()
	Spawn(function()
		while dummies do
			angle = (angle%100)+2/5
			
			if (tick()-p_tick) > .5 then --seek someone every half second
				for i,dum in pairs(dummies) do
					dum:chase_nearest(20)
				end
			end
			
			for i,d in pairs(dummies)do
				d.A'rw'(c()) d.A'lw'(c()) d.A'rw2'(c()) d.A'lw2'(c())
				if d.has_found then
					d.A'rw'(a(PI/2+math.sin(angle),0,md'45'))
					d.A'lw'(a(PI/2+math.cos(angle),0,md'-45'))
					d.A'rw2'(a(math.cos(angle)))
					d.A'lw2'(a(-math.sin(angle)))
				end
			end
			wait()
		end
	end)

	A'rw'(c())wait'.5'
	L'R'
end

hook = nil
hook_force = nil
hook_weld = nil
bl=nil
function grapple()

	if not hook then
		-- L'R' A'rw'(a(md'-45',0,md'45'))
		local stpos = l(center_point).p
		local enpos = mouse.hit.p
		local vec = (stpos-enpos)
		stpos = stpos + (vec.unit * -3)
		
		bl=P(.1,.1,.1)bl.CFrame=cfn(stpos)bl.CanCollide=true
		bl.Velocity = vec.unit*-70
		bv=C'BodyForce'{_P=bl; force=v3n(0,1,0)}
		Sounds.Grapple:Play()
		
		local hit_snd=Sounds.Grapple_hit:Clone()
		hit_snd.Parent = bl
		
		hook=blade:Clone() hook.Parent=Main hook.Anchored=true
		hook.Size=v3n(.1,1,.25)
		local hook_mesh=M(hook,'b',1,vec.magnitude)
		hook.CFrame=cfn((stpos+enpos)/2,enpos)*a(PI/2)
		
		hook_force = C'BodyPosition'{
			maxForce = v3n(1,1,1)*1e+008;
			D = 1e+003;
			P = 1e+004;
		}
		hook_gyro = C'BodyGyro'{
			maxTorque=v3n(1,1,1)*9e+008;
			P=9e+003;
		}
		local cam=Workspace.CurrentCamera
		reel_lenght=5
		Spawn(function()
			while hook~=nil and bl ~= nil do
				stpos=center_point.Position
				enpos = bl.Position
				vec = (stpos-enpos)
				stpos = stpos
				
				hook.Size=v3n(.1,1,.25)
				hook_mesh.Scale=v3n(1,vec.magnitude,1)
				hook.CFrame=cfn( ((stpos+enpos)/2),enpos)*a(PI/2)
				local dif = enpos.Y-stpos.Y
				hook_gyro.cframe=cfn(stpos,enpos)
				hook_force.position = enpos+(cam.CoordinateFrame*a(0,md'-15')).lookVector*-reel_lenght
				
				local pressed_keys = InputService:GetKeysPressed()
				
				for ii,key in next,pressed_keys do
					if key.KeyCode == Enum.KeyCode.W then
						reel_lenght = reel_lenght-1
					elseif key.KeyCode == Enum.KeyCode.S then
						reel_lenght = reel_lenght+1
					end
				end
				wait()
			end
		end)
		
		local con
		con=bl.Touched:connect(function(hit)
			if hit:IsDescendantOf(character) then return end
			con:disconnect()
			hit_snd:Play()
			character.Humanoid.PlatformStand=true
			W(bl,hit,hit.CFrame:toObjectSpace(bl.CFrame),cfn())
			hook_force.Parent=torso
			hook_gyro.Parent=torso
		end)
		
	else
		character.Humanoid.PlatformStand=false
		bl:Destroy() bl=nil
		hook_force:destroy()
		hook_gyro:destroy()
		hook:destroy()
		hook,hook_force=nil,nil
	end
end
	
function removeDums()
	for i,v in pairs(Dummies)do
		v:destroy()
	end
	local found=Workspace:FindFirstChild('muge',true)
	while found do
		found.Parent:Destroy()
		found=Workspace:FindFirstChild('muge',true)
	end
		
end

KeyBindings={
	q=jump_slash;
	f=slash;
	c=stab;
	v=spin_sword;
	rq=spin_body;
	e=arc;
	t=removeDums;
	g=grapple;
}

Doing=false
holding=false


Keys={}
function updateKeys(key)
    if Keys[key]then Keys[key]=nil
    else Keys[key]=1
    end
end

mouse.KeyUp:connect(function(k)
    for key,action in pairs(KeyBindings)do
        if k==key:sub(1,1) and key:sub(2,2)=='q' then
            holding=false
        end
    end
end)
mouse.KeyDown:connect(function(k)
    if Doing then return end
    for key,action in pairs(KeyBindings)do
        if k==key:sub(1,1) then
            Doing=true
            action(mouse)
            Doing=false
        end
    end
end)
script.Parent=Main

cnt=0
for i,v in pairs(Main:children())do if v:IsA'Part'then cnt=cnt+1 end end print(cnt)
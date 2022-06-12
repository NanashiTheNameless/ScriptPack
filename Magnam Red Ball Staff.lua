if not Workspace:FindFirstChild'TheGamer101' then ---I sometimes test weapon in studio, so I use a dummy
	ply=game.Players.LocalPlayer
	char=ply.Character
	Name = 'Magnam'
	pcall(function() ply.Backpack[Name]:Destroy() end) --- Destroys Tool
	hop = Instance.new("HopperBin",ply.Backpack)
	hop.Name = Name
else
	char=Workspace.TheGamer101
end
torso=char.Torso
local ccam = Workspace.CurrentCamera
rarm=char['Right Arm']
larm=char['Left Arm']
bcol=BrickColor.new
cfn,md,mr=CFrame.new,math.rad,math.random
ang=function(x,y,z)return CFrame.Angles(x or 0,y or 0,z or 0)end
Debris=game:service'Debris'
m={}
RS=game:service'RunService'
m.tau=math.pi*2
m.floatforce = 196.25

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
rw,rw2,lw,lw2=nil,nil,nil,nil

function l(a,x,y,z,xx,yy,zz)
if string.find(tostring(a),',') == nil then
return (a.CFrame*CFrame.new(x or 0,y or 0,z or 0))*CFrame.Angles(xx or 0,yy or 0, zz or 0)
else return (a * CFrame.new(x or 0,y or 0,z or 0))*CFrame.Angles(xx or 0,yy or 0,zz or 0)
end
end

tw = function(Weld, Stop, Step,a) --- TweenWeld function
local func = function(w)
        local Start = w.C1
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                w.C1 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        w.C1 = Stop
end
if type(Weld)=='table'then
	for i=1,#Weld do
		if i < #Weld then
			coroutine.wrap(function()func(Weld[i])end)()
		else
			func(Weld[i])
		end
	end
else
if a then coroutine.wrap(function() func(Weld) end)() else func(Weld) end
end
end
tc = function(Part, Stop, Step,a) --- TweenCFrame function
local func = function()
        local Start = Part.CFrame
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                Part.CFrame = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        Part.CFrame = Stop
end
if a then coroutine.wrap(function() func() end)() else func() end
end
Lock = function(which) --- For using Animation
local result = {rw=false,lw=false}
if which == 'R' then
if not rw then
    rabr = Part(1,1,1,'White',0) rabr.Transparency = 1
    rabr.Position = torso.Position
    rw = Weld(rabr,torso,1.5,.5,0,0,0,0) rw.Parent = Weapon
    w = Instance.new("Weld",Weapon)
    w.Part0,w.Part1 = char['Right Arm'],rabr
    w.C1 = CFrame.new(0,-.5,0)
else
    rabr:Destroy()
    rw = nil
end
elseif which == 'L' then
if not lw then
    labr = Part(1,1,1,'White',0) labr.Transparency = 1
    labr.Position = torso.Position
    lw = Weld(labr,torso,-1.5,.5,0,0,0,0) lw.Parent = Weapon
    w = Instance.new("Weld",Weapon)
    w.Part0,w.Part1 = char['Left Arm'],labr
    w.C1 = CFrame.new(0,-.5,0)
else
    labr:Destroy()
    lw = nil
end
elseif which == 'RR' then
if not rw2 then
	rlbr = Part(1,1,1,'White',0) rlbr.Transparency = 1
	rlbr.Position = torso.Position
	rw2 = Weld(rlbr,torso,.5,-1.5,0,0,0,0) rw2.Parent = Weapon rw2.Name = 'rw2'
	w = Instance.new("Weld",Weapon)
	w.Part0,w.Part1 = char['Right Leg'],rlbr
	w.C1 = CFrame.new(0,-.5,0)
else
	rlbr:Destroy()
	rw2 = _
end
elseif which == 'LL' then
if not lw2 then
	llbr = Part(1,1,1,'White',0) llbr.Transparency = 1
	llbr.Position = torso.Position
	lw2 = Weld(llbr,torso,-.5,-1.5,0,0,0,0) lw2.Parent = Weapon lw2.Name = 'lw2'
	w = Instance.new("Weld",Weapon)
	w.Part0,w.Part1 = char['Left Leg'],llbr
	w.C1 = CFrame.new(0,-.5,0)
else
	llbr:Destroy()
	lw2 = _
end
elseif which == nil then
    if rw then result.rw = true end
    if lw then result.lw = true end
    if rw2 then result.rw = true end
    if lw2 then result.lw = true end
end
return result
end

function findHum(a)local res=nil
	for i,v in pairs(a:children())do 
		if v:IsA'Humanoid'and v.Parent~=char then
			res=v
		end
	end
	return res
end

function udim(a,b,a2,b2)
	if type(a)=='string'then
		local x,y=a:match('(%d+%.*%d*)%,*(%d+%.*%d*)')
		return UDim2.new(tonumber(x) or 0,0,tonumber(y) or 0,0)
	else
		return UDim2.new(a or 0,a2 or 0,b or 0,b2 or 0)
	end
end

function Damage(hum,amount,func,time)
	local found=hum.Parent:FindFirstChild'M_D'
	local h_head=hum.Parent:FindFirstChild'Head'
	if not found then
		local bbg=genNew('BillboardGui',hum.Parent,{
			--Size=udim(0,0,100,50);
			Size = UDim2.new(0,100,0,50);
			Adornee=h_head;
			StudsOffset=Vector3.new(0,5,0);
			Name='M_D';

		})
		local fr=genNew('Frame',bbg,{
			Size=udim'1,1';
			Position=udim'0,1';
			BackgroundTransparency=1;
		})
		local img=genNew('ImageLabel',fr,{
		Size=udim'1,1';
		Image='http://www.roblox.com/asset/?id=185395810';
		BackgroundTransparency=1;
		})
		local text=genNew('TextLabel',fr,{
			TextScaled=true;
			Text=amount;
			Size=udim'1,1';
			TextColor3=bcol'Bright red'.Color;
			BackgroundTransparency=1;
		})
		hum:TakeDamage(amount)
		fr:TweenPosition(udim'0,0','Out','Quad',time or 1,false)
		if func then func()end
		for i=0,time or 1,.1 do img.ImageTransparency=i text.TextTransparency=i wait()end bbg:Destroy()
	end
end


pcall(function() char.Sole3:Destroy() end) --- Destroys Physical Tool
Weapon = Instance.new("Model",char) Weapon.Name = 'Sole3'

Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p1
w.Part1 = p0
w.C0 = CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(rx or 0,ry or 0,rz or 0)
-- w.MaxVelocity = .1
return w
end
Cur_Parent=nil
current_mat=nil

Part = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('Part',parent or cur_Parent or Weapon)
p.formFactor = 'Custom'
p.Locked = true
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color or 'White')
p.CanCollide = cc or false
p.Anchored = an or false
p.Transparency = tr or 0
p.Material=current_mat or'SmoothPlastic'
for i,v in pairs{'TopSurface','BottomSurface','FrontSurface','BackSurface','LeftSurface','RightSurface'}do
	p[v]=10
end
return p
end

Wedge = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('WedgePart',parent or Weapon)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color or 'White')
p.CanCollide = cc or false
p.Anchored = an or false
p.Transparency = tr or 0
p.Material=current_mat or'SmoothPlastic'
for i,v in pairs{'TopSurface','BottomSurface','FrontSurface','BackSurface','LeftSurface','RightSurface'}do
	p[v]=10
end
return p
end
function l(a,x,y,z,xx,yy,zz)
if string.find(tostring(a),',') == nil then
return (a.CFrame*CFrame.new(x or 0,y or 0,z or 0))*CFrame.Angles(xx or 0,yy or 0, zz or 0)
else return (a * CFrame.new(x or 0,y or 0,z or 0))*CFrame.Angles(xx or 0,yy or 0,zz or 0)
end
end
function beam(a,b,s)
local mag = (a-b).magnitude
local laz = Part(s or 1,mag,s or 1)
laz.CFrame = (cfn(a,b)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
end

Add ={ --- Array for handy functions
BG = function(parent)
	local bg = Instance.new("BodyGyro",parent)
	bg.P = 20e+003
	bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
	return bg
end;
BP = function(parent,position)
	local bp = Instance.new("BodyPosition",parent)
	bp.maxForce = Vector3.new()*math.huge
	bp.position = position or parent.Position
	return bp
end;
BV = function(parent,force)
	local bv = Instance.new("BodyVelocity",parent)
	bv.maxForce = Vector3.new()*math.huge
	bv.velocity = force or Vector3.new(0,0,0)
	return bv
end;
Sound = function(id,pitch,loop,parent)
	local tab = {}
	local snd = Instance.new("Sound",parent or char.Head)
	snd.Name = 'MugSound'
	snd.SoundId = id
	snd.Volume = 100
	snd.Pitch = pitch or 1
	snd.Looped=loop and true or false
	tab.Sound = snd
	function tab:Play()self.Sound:Play()end
	function tab:Stop()self.Sound:Stop()end
	function tab:Pitch(a)self.Sound.Pitch = a end
	function tab:Volume(a)self.Sound.Volume = a end
	setmetatable(tab,{
		 __call = function(t,param) local cl = t.Sound:Clone() cl.Parent = param return cl end;
	})
	return tab
end;
Fire = function(parent,size,heat,color,color2)
local f = Instance.new("Fire",parent)
f.Size = size
f.Heat = heat
f.Color = BrickColor.new(color).Color
if color2 then
f.SecondaryColor = BrickColor.new(color2).Color
end
return f
end;
}


Meshes = {Diamond='rbxassetid://9756362';Spikeball='rbxassetid://9982590';Table='rbxassetid://111868131';---MeshIds
Egg='rbxassetid://1527559';Ring='rbxassetid://3270017';Bullet='rbxassetid://2697549';Grass='rbxassetid://1080954';
Shark='rbxassetid://82821384';Sword='rbxassetid://12221720';Crown='rbxassetid://10688643'}
Mesh = function(par,num,x,y,z,tex)
	local msh = _
	if num == 1 then msh = Instance.new("CylinderMesh",par)
	elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
	elseif num == 3 then msh = Instance.new("BlockMesh",par)
	elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 'Wedge'
	elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par)
	msh.MeshId = string.find(num,'://') == nil and Meshes[num] or num
	msh.TextureId = tex and tex or ''
	end
	msh.Scale = Vector3.new(x or 1,y or 1,z or 1)
	return msh
end

hdl=Part(.25,2.5,.25)Mesh(hdl,1)
hw=Weld(hdl,rarm,0,-1.05,0,math.pi/2)

function gZ(a)
	obj,opt=a:match('(%w+)%,*(%w*)')
	for i,v in pairs(getfenv())do
		if i==obj then
			obj=v
		end
	end
	if opt~='' then
		return obj.Size[opt]
	else
		return obj.Size.x,obj.Size.y,obj.Size.z
	end
end
col='White'
spinning_parts={}
fires={}
swords={}
for _,ao in pairs{{gZ'hdl,y'/2+.1,0,0},{-(gZ'hdl,y'/2+.1),math.pi,math.pi}}do --- this loop makes curves
	for angle=-math.pi/6,math.pi/6,math.pi/6 do
		prev=Part(.2,.2,.2,'Cyan',.5)Mesh(prev,2,2,2,2)
		Weld(prev,hdl,0,ao[1],0,angle,ao[2],ao[3])
		for i=0,8 do
			if i%2==0 then col='Black'else col='White'end
			p=Part(.1,.2,.1,col)Mesh(p,1)
			
			Weld(p,prev,0,p.Size.y/2+prev.Size.y/2,0,md'5')
			if i==8 then p.BrickColor=bcol'Bright red'Mesh(p,2).Scale=Vector3.new(3,3,3)table.insert(spinning_parts,p.Motor)
				local f=Add.Fire(p,0,0,'Cyan','White')f.Enabled=false table.insert(fires,f)
				prev=p
				cur=prev
				for o=0,m.tau,m.tau/10 do
					p2=Part(.1,.1,.1,'New Yeller',1)Mesh(p2,'Sword',.2,.2,.1)
					p2.Material='Ice'
					w=Weld(p2,cur,math.cos(o)*.5,0,math.sin(o)*.5,math.pi/2,0,math.pi/2+o)
					w.C1=w.C1*ang(-math.pi/2,0,md'80')
					table.insert(swords,p2)
				end
			end
			prev=p
		end
	end
end

rwC0={eq=cfn()*ang(md'5',0,md'-25')}
lwC0={eq=cfn(0,.6,0)*ang(md'-70',md'50')}
hwC1={arm=cfn(0,-1.05,0)*ang(math.pi/2),torso=(cfn(0,0,.75)*ang(0,0,md'-135'))*ang(0,math.pi/2)}

metacross={
        __call=function(tab,a)return tab[a]end;
}

Keys={}
for i,v in pairs{rwC0,lwC0,hwC1}do setmetatable(v,metacross)end
hw.Part0,hw.Part1=torso,hdl
hw.C0=hwC1'torso'

Equip=function()
	hw.Part0=rarm
	hw.C0=hwC1'arm'
	Lock'R' tw(rw,rwC0'eq')
	for i=1,#fires do fires[i].Enabled=true end
	for i=1,.5,-.1 do
		for _,v in pairs(swords)do
			v.Transparency=i
		end
		wait()
	end
end
Unequip=function()
    tw(rw,cfn())for i=1,#fires do fires[i].Enabled=false end
	for i=.5,1,.1 do
		for _,v in pairs(swords)do
			v.Transparency=i
		end
		wait()
	end
	Lock'R'
	hw.Part0=torso
	hw.C0=hwC1'torso'
end

snd=Add.Sound("http://www.roblox.com/Asset/?id=16433289",1)
ding_snd=Add.Sound("http://www.roblox.com/Asset/?id=19344667",1)
damSnd=Add.Sound("http://www.roblox.com/Asset/?id=24902512",2)
sword_wave=function() --shoots sword
	tw(rw,cfn()*ang(md'-90',md'-45')) snd:Play()
	tw(rw,cfn()*ang(md'20',0,md'-45'),.3)
	
	local function onTouch(hit)
    	local hum=findHum(hit.Parent)
    	if hum then
        	Damage(hum,10,function()
        	dsnd=damSnd(hum.Torso)dsnd:Play()Debris:AddItem(dsnd,1)end,.05)
        end
	end

	local function fade(a,msh)
	    local orig=msh.Scale
	   	for i=0,1,.1 do
			msh.Scale=orig-Vector3.new(i*orig.x,i*orig.y,i*orig.z)
			a.Transparency=.5+(i/2)
			wait()
		end

	end
	local function spread(obj)
       	for o=md'-45',md'45',md'90' do
    	    local cl2=Part(2,2,3.8*2,'New Yeller',.5)cl2:BreakJoints()
    	    local msh22=Mesh(cl2,'Sword',2,2,2)
    	    Instance.new('Sparkles',cl2).SparkleColor=bcol'Bright red'.Color
    	    
    	    cl2.CFrame=l(obj,0,0,0,math.pi,o)*cfn(0,0,4)
    	    cl2.Touched:connect(function(hit)onTouch(hit)end)
    	    Add.BV(cl2,cl2.CFrame.lookVector*-100)
    	    Debris:AddItem(cl2,1)
    	    Delay(.5,function()coroutine.wrap(fade)(cl2,msh22)wait(.5)

    	   end)
        end
	end
	for o=md'-45',md'45',md'45' do
    	local sword=Part(2,2,3.8*2,'New Yeller',.5)sword:BreakJoints()
    	local sfx=Part(1,1,1,'New Yeller')sfx.Anchored=true
    	sfx.CFrame=l(torso,0,0,-5)
    	local msh=Mesh(sfx,'Ring')---ring effect
    	Spawn(function() 
    		for i=.1,1,.05 do
    			msh.Scale=Vector3.new(i*10,i*10,1)
    			sfx.Transparency=i
    			wait()
    		end sfx:Destroy()
        end)
    	sword.Touched:connect(onTouch)
    	local msh2=Mesh(sword,'Sword',2,2,2)
    	sword.CFrame=l(l(torso,0,0,0,0,o),0,0,-5)	
    	Add.BV(sword,sword.CFrame.lookVector*75)
	    local orig=msh2.Scale ---the starting size
    	-- Instance.new('SelectionBox',ball).Adornee=ball
    	Instance.new('Sparkles',sword).SparkleColor=bcol'Bright red'.Color
    	
    	Delay(1,function() ---trying to get the sword to shrink before disappearing
    	    ding_snd:Play()
    	    for o=md'-45',md'45',md'45' do
        	    local cl=Part(2,2,3.8*2,'New Yeller',.5)cl:BreakJoints()
        	    local msh2=Mesh(cl,'Sword',2,2,2)
        	    Instance.new('Sparkles',cl).SparkleColor=bcol'Bright red'.Color
        	    
        	    cl.CFrame=l(sword,0,0,0,math.pi,o)*cfn(0,0,4)
        	    cl.Touched:connect(onTouch)
        	    Add.BV(cl,cl.CFrame.lookVector*100)
        	    Debris:AddItem(cl,1)
        	    Delay(.25,function()spread(cl)coroutine.wrap(fade)(cl,msh2)end)
    	    end
    		for i=0,1,.1 do
    			msh2.Scale=orig-Vector3.new(i*orig.x,i*orig.y,i*orig.z)
    			sword.Transparency=.5+(i/2)
    			wait()
    		end
    		sword:Destroy()
    	end)
    end
	tw(rw,rwC0'eq')
end

sphere_boom=function()holding=true
	tw(rw,cfn()*ang(md'-110',md'20',md'-70'))
	while holding do
		local wall=Part(20,20,10,'New Yeller',.5)wall.Anchored=true
		wall.CFrame=l(torso,0,0,-10)

		orig=wall.CFrame
		tc(wall,l(orig,0,0,-20),.1,'')
		for i=0,1,.1 do
			for _,v in pairs(Workspace:children())do
				local hum=findHum(v)
				if hum then
					if (wall.Position-hum.Torso.Position).magnitude<20 then
						hum.Sit=true hum.Torso.Velocity=cfn(orig.p,l(orig,0,5,-10).p).lookVector*50
					end
				end
			end
			wait()
		end
		
		for i=.5,1,.05 do wall.Transparency=i wait()end wall:Destroy()
	end
	tw(rw,rwC0'eq')
end

RS=game:service'RunService'
float_bp=nil
float_bg=nil
last_t=0

function cHeight(obj,mag)
    local res=false
	local ray=Ray.new(obj.Position,Vector3.FromNormalId(Enum.NormalId.Bottom)*mag)
	local obj,pos=Workspace:FindPartOnRay(ray,char)
	if obj and pos then
	    res=true
    end
    return res
end

music_snd=Add.Sound('rbxassetid://161099337',1)
bpm=150*1.5
twtoT = function(Weld, Stop) --- TweenWeld function
    local ntab={}
    local Start = Weld.C1
    local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
    local Stop = Stop
    local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
    
    for i = 0, 1, 1/3 do
            C1 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                            (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                            (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                            (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                            (Z1 * (1 - i)) + (Z2 * i) )
            table.insert(ntab,C1)
            wait()
    end
    table.insert(ntab,Stop)
    return ntab
end

wave_tab={
    cfn()*ang(0,0,md'-45');
    cfn();
    cfn()*ang(md'-75',0,md'-75');
    cfn();
}
wave_tab2={
    cfn()*ang(0,0,md'45');
    cfn();
    cfn()*ang(md'-75',0,md'75');
    cfn();
}

function music()Lock'L'
    tw(rw,cfn())
    hw.C0=hwC1'torso'hw.Part0=torso
    music_snd:Play()
    local elapsed_time=0
    local prev_tick=tick()
    local Beat=RS.Heartbeat
    local metronome=0
    local frame=0
    holding=true

    while holding do
        Beat:wait()
        local d_tick=tick()-prev_tick
        elapsed_time=elapsed_time+d_tick
        if elapsed_time > 1/(bpm/60)then
            for i,v in pairs(Workspace:children())do
                local hum=findHum(v)
                
                if hum then
                    local mag=(torso.Position-hum.Torso.Position).magnitude
                    if mag > 10 and mag < 60 then
                        local lve=cfn(hum.Torso.Position,torso.Position).lookVector
                        hum.Torso.Velocity=lve*20 hum.Sit=true
                    end
                end
            end
            local metronome=metronome+1
            frame=frame+(not inverse and 1 or -1)
            
            frame=frame>=#wave_tab and 1 or frame
            
            local sfp=Part(1,1,1,'Cyan')
            local msh=Mesh(sfp,1)
            Weld(sfp,torso,0,-2.5,0)
            elapsed_time=elapsed_time+d_tick
            Spawn(function()
                for i=0,1,.1 do
                    msh.Scale=Vector3.new(1,1,1)+Vector3.new(i*10,0,i*10)
                    sfp.Transparency=i
                    wait()
                end
                sfp:Destroy()
            end)
            tw(rw,wave_tab[frame],1/(bpm/60),'')
            tw(lw,wave_tab2[frame],1/(bpm/60),'')
            elapsed_time=elapsed_time-1/(bpm/60)
        end
        prev_tick=tick()
    end
    music_snd:Stop()
    hw.Part0=rarm
    hw.C0=hwC1'arm'
    tw(lw,cfn(),.1,'')tw(rw,rwC0'eq')Lock'L'
end
slash_snd=Add.Sound('rbxassetid://143858925',2)
function slash()
	tw(rw,cfn(0,1.4,.4)*ang(md'-120',0,md'-90'),.1,'')
	tw(hw,cfn(0,.5,0)*ang(md'25'))
	tw(rw,cfn(0,.4,-.4)*ang(md'45',0,md'-110'),.3)
	slash_snd:Play()
	tw(hw,cfn(),.3)
    tw(rw,rwC0'eq')
-- 	tw(hw,cfn()*ang(0,0,math.pi/2))
end


copter_snd=Add.Sound('rbxassetid://177784375',0)
copter_snd.Sound.Looped=true    

float = function(mouse)
    local t=RS.Stepped:wait()
    if  ((t-last_t)<.5 and cHeight(torso,10))or(not cHeight(torso,30)) and not float_bp then
        copter_snd:Play()
        Spawn(function()for i=0,1,.1 do copter_snd:Pitch(i)wait()end end)
        float_bp=Add.BP(torso,torso.Position)
        float_bg=Add.BG(torso)
        float_bg.cframe=cfn(torso.Position,Vector3.new(mouse.hit.p.x,l(torso).p.y,mouse.hit.p.z))
        local sp=Part(1,1,1,nil,1)Instance.new('Sparkles',sp).SparkleColor=bcol'Magenta'.Color
        sp.Anchored=true
        tw(rw,cfn()*ang(md'180'),.3)
        for i=0,1,.3 do
            hw.C0=hwC1'arm'*cfn(0,0,2*i)*ang(0,math.pi/2*i)
            wait()
        end
        hw.C0=hwC1'arm'*cfn(0,0,2)*ang(0,math.pi/2)
        pipe=Part(.1,2,.1)Mesh(pipe,1)Weld(pipe,rarm,0,-gZ'rarm,y'/2-gZ'pipe,y'/2,0)
        Spawn(function()
            while float_bp do
                for i=0,1,.1 do
                    if not float_bp then break end
                    float_bp.position=float_bp.position+Vector3.new(0,.05,0)
                    wait()
                end
                for i=0,1,.1 do
                    if not float_bp then break end
                    float_bp.position=float_bp.position-Vector3.new(0,.05,0)
                    wait()
                end
                wait()
            end
        end)
        
        Spawn(function()
            while float_bp do
                for i=0,m.tau,m.tau/40 do
                    if not float_bp then break end
                    sp.CFrame=l(torso,math.cos(i)*2,-2,math.sin(i)*2)
                    hw.C1= cfn()*ang(i*3,0,0)
                    wait()
                end
                wait()
            end
            sp:Destroy()
        end)
    elseif float_bp then
        float_bp:Destroy()float_bp=nil
        float_bg:Destroy()float_bg=nil
        pipe:Destroy()
        tw(rw,rwC0'eq',.3,'')tw(hw,cfn(),.3,'')
        
        for i=1,0,-.3 do
            hw.C0=hwC1'arm'*cfn(0,0,2*i)*ang(0,math.pi/2*i)
            wait()
        end
        hw.C0=hwC1'arm'
        for i=1,0,-.1 do copter_snd:Pitch(i)wait()end copter_snd:Stop()
        
    end
    last_t=t
end
speed=5
fly=function(mouse)
    copter_snd:Volume(100)
    while m_down do
        float_bp.position=(float_bp.position+(torso.Position-mouse.hit.p).unit*-speed)
        float_bg.cframe=cfn(torso.Position,mouse.hit.p)
        wait()
    end
    copter_snd:Volume(10)
    float_bg.cframe=cfn(torso.Position,Vector3.new(mouse.hit.p.x,l(torso).p.y,mouse.hit.p.z))
end
exp_snd=Add.Sound('rbxassetid://165970126',1)
        

onClick=function(mouse)
    if float_bp then
        fly(mouse)
    else
        slash()
    end
end

klist={ -- I bind attacks to keys using a table
f=sword_wave;
qq=sphere_boom;
[string.char(32)] = float; --Spacebar
eq=music;
}

function onKey(key)
    if Keys[key]then Keys[key]=nil
		else Keys[key]=1
    end
end
if not Workspace:FindFirstChild'TheGamer101' then
	hop.Selected:connect(function(mouse)
		Equip()
		mouse.Button1Down:connect(function()m_down=true if attacking then return end attacking=true onClick(mouse) attacking=false end)
		mouse.KeyUp:connect(function(key)onKey(key)for i,v in pairs(klist) do if key == i:sub(1,1) and i:sub(2,2) == 'q' then  holding = false end end end)
		mouse.KeyDown:connect(function(key)onKey(key)
			if attacking then return end
				for i,v in pairs(klist) do
					if key == i:sub(1,1) then attacking = true v(mouse) attacking = false
				end
			end
		end)
		mouse.Button1Up:connect(function()m_down=false end)
	end)

	hop.Deselected:connect(Unequip)
else
-- hw.Part0=rarm hw.C0=hwC1'arm'
Equip()b_slash()Unequip()
end

for i,v in pairs(torso:children()) do if v:IsA'BodyGyro' or v:IsA'BodyPosition' or v:IsA'BodyVelocity' then v:Destroy() end end

while wait() do
	for i,v in pairs(spinning_parts)do
		v.C0=v.C0*ang(0,md'2',0)
	end
end
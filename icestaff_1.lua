me=game.Players.localPlayer;
ms=me:getMouse'';
cf,ca,r,mr,i,v3,bc,sin,cos,pi=CFrame.new,CFrame.Angles,math.rad,math.random,Instance.new,Vector3.new,BrickColor.new,math.sin,math.cos,math.pi;
anim='Idle';
Parts={};
runna=game:findService'RunService';
local char=me.Character;
--char.Archivable=true;
local lam=char['Left Arm'];
local ram=char['Right Arm'];
local llg=char['Left Leg'];
local rlg=char['Right Leg'];
local hed=char.Head;
local tor=char.Torso;
local hrp=char.HumanoidRootPart;
local hum=char.Humanoid;
cp=(function(par,size,mat,color,t)
p=i('Part',par);
p.formFactor=3;
p.Size=size;
p.Material=mat;
p.CanCollide=false;
p.TopSurface=10;
p.BottomSurface=10;
p.Transparency=t;
p.BrickColor=bc(color);
table.insert(Parts,p);
return(p);
end);
cm=(function(par,type,scale)
m=i('SpecialMesh',par);
m.MeshType=type;
m.Scale=scale;
return(m);
end);
bm=(function(par,size)
b=i('BlockMesh',par);
b.Scale=size;
return(b);
end);
weld=(function(par,p1,cf)
w=i('Weld',par);
w.Part0=par;
w.Part1=p1;
w.C0=cf or cf();
return(w);
end);
sn=function(id,p,pi)
s=Instance.new('Sound',p);
s.SoundId='rbxassetid://'..id;
s.Volume=5;
game:service'ContentProvider':preload(s.SoundId); 
s.Pitch=pi;
s:play();
end;
function cycle(num)
        local section = num % 1 * 3;
        local secondary = 0.5 * math.pi * (section % 1);
        if section < 1 then
                return 1, 1 - math.cos(secondary), 1 - math.sin(secondary);
        elseif section < 2 then
                return 1 - math.sin(secondary), 1, 1 - math.cos(secondary);
        else
                return 1 - math.cos(secondary), 1 - math.sin(secondary), 1;
        end
end
function Recursive(Model)
	local Stuff = {}
	local function Recur(Targ)
		for i,v in pairs(Targ:getChildren()) do
			table.insert(Stuff,v)
			Recur(v)
		end
	end
	Recur(Model)
	return Stuff
end
function Resize(Character,Scale)	
	Stuff = Recursive(Character)
	Welds = {};
	for i,v in pairs(Stuff)do
		if v:isA("Motor6D") or v:isA("Weld") then
			local C0 = v.C0
			local C1 = v.C1
			v.C0 = C0+C0.p*Scale-C0.p
			v.C1 = C1+C1.p*Scale-C1.p
			table.insert(Welds,{v,v.Part1})
			v.Part1 = nil
		end
		if v:isA("SpecialMesh") then
			if v.MeshId ~= "" then
				v.Scale = v.Scale*Scale
			end
		end
	end
	for i,v in pairs(Stuff)do
		if v:isA("BasePart") and v.Parent.className ~= "Hat" then  
			v.formFactor = "Custom"
			v.Size = v.Size*Scale
		end
	end
	for i,v in pairs(Welds) do  v[1].Part1 = v[2]  end 
end
--[[
spawn(function()
        while(coroutine.yield())do 
                game.Lighting.TimeOfDay=17;
                game.Lighting.FogEnd=9999;
                game.Lighting.Outlines=true;
                game.Lighting.Ambient=Color3.new(0,0,0);
                game.Lighting.Brightness=5;
        end;
end);
]]

tab={};
function TweenCFrame(part,cframe,speed)
    local c0=part.CFrame 
    Spawn(function() 
        for i=-90,90,speed do
            local r=((math.sin(math.rad(i))+1)/2)
            local a=Vector3.new(getangles(c0)):lerp(Vector3.new(getangles(cframe)),r)
            part.CFrame=CFrame.new(c0.p:lerp(cframe.p,r))*CFrame.Angles(a.x,a.y,a.z)
            wait() 
        end 
    end) 
end;
function getangles(cframe)
    local x,y,z,m00,m01,m02,m40,m11,m12,m20,m21,m22=cframe:components()
    local X=math.atan2(-m12,m22)
    local Y=math.asin(m02)
    local Z=math.atan2(-m01,m00) return X,Y,Z
end;
--//Resize(workspace[me.Name],2);
    function rayCast(par,startpos, Speed, Dmg)
    local rayPart         = Instance.new("Part")
    rayPart.Name          = "RayPart"
    rayPart.Anchored      = true
        rayPart.Material='Neon';
    rayPart.CanCollide    = false
        rayPart.Locked        = true
        rayPart.FormFactor = 3;
        rayPart.BrickColor=BrickColor.new'Tr. Flu. Blue';
    rayPart.TopSurface    = Enum.SurfaceType.Smooth
    rayPart.BottomSurface = Enum.SurfaceType.Smooth
    rayPart.Size          = Vector3.new(6,6,6);
        rayPart.Shape='Ball';
        fr=i'Fire';
        fr.Parent=rayPart;
        fr.Size=10;
        fr.Heat=1000;
        --fr.SecondaryColor=bc'Light green (Mint)'.Color;
        fr.Color=bc'Tr. Flu. Blue'.Color;
		pl=i('PointLight',rayPart);
		pl.Range=20;
		pl.Brightness=5;
		--pl.Color=bc'Toothpaste'.Color;
		--[[pt=Instance.new('ParticleEmitter',rayPart);
								pt.EmissionDirection='Top';
								pt.LightEmission=1;
								pt.Color=ColorSequence.new(Color3.new(1,1,1));
								pt.Size=NumberSequence.new(1,1);
								pt.Lifetime=NumberRange.new(20,20);
								pt.Rate=1000;
								pt.Speed=NumberRange.new(6,6)
								pt.VelocitySpread=10;
								pt.Texture='rbxassetid://175622422';
								pt.Rate=10000;
								coroutine.wrap(changet)(pt);
								coroutine.wrap(tsize)(pt);
								]]
		spawn(function()
			while(wait())do 
				for e=6,.5,-.1 do 
					wait();
					rayPart.Size=v3(e,e,e);
				end;
				for e=.5,6,.1 do 
					wait();
					rayPart.Size=v3(e,e,e);
				end;
			end;
		end);
    local bulletposition = startpos.Position;
    rayPart.CFrame = startpos.CFrame
   local bulletvelocity = (Vector3.new(0,0,0))+( ms.Hit.p - bulletposition).unit*Speed
    local bulletlastposition = bulletposition
        coroutine.resume(coroutine.create(function()
        while true do
                local dt = wait(1/60); 
            bulletlastposition = bulletposition
            bulletvelocity = bulletvelocity + (Vector3.new(0, -3.81, 0)*dt)
                bulletposition = bulletposition + (bulletvelocity*dt)
            local ray = Ray.new(bulletlastposition,  (bulletposition - bulletlastposition))
            local hit, hitposition = workspace:FindPartOnRayWithIgnoreList( ray, { char, rayPart, workspace.currentCamera} )           
                        if (tor.Position - rayPart.Position).magnitude > 640.999 then
                                spawn(function()
                                        for t=1,10 do wait();
                                                rayPart.Transparency=rayPart.Transparency+.25;
                                        end;
                                        rayPart:destroy();
                                end);
                 --//rayPart:Destroy();
         break
         end
parts={};
            if hit then
                                        local damage = math.random(Dmg, Dmg+16);
                                if hit.Parent:findFirstChild("Humanoid") ~= nil then
                                hit.Parent.Humanoid.WalkSpeed=6;
                                hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - damage;
                                                               
                          end;
								if(hit:isA'BasePart'and hit~='Base'and hit.Name~='Base'and hit.Name~='Baseplate')then 
									table.insert(parts,hit);
	wait(); 
	coroutine.wrap(function()
	for i,v in pairs(parts)do 
		TweenCFrame(v,v.CFrame*CFrame.new(math.random(-40,40),math.random(-40,40),math.random(-40,40))
		*CFrame.Angles(math.random(-40,40),math.random(-40,40),math.random(-40,40)),.4);
		end;
	end)();
								end;
                                bulletposition = hitposition
                rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0)
                rayPart:Destroy()
                break
            end
                rayPart.CFrame = CFrame.new(bulletposition, bulletposition+bulletvelocity) * CFrame.Angles(math.pi/2, 0, 0);
                        rayPart.Parent = par;
        end
    end))
end;
function cycle(num)
        local section = num % 1 * 3;
        local secondary = 0.5 * math.pi * (section % 1);
        if section < 1 then
                return 1, 1 - math.cos(secondary), 1 - math.sin(secondary);
        elseif section < 2 then
                return 1 - math.sin(secondary), 1, 1 - math.cos(secondary);
        else
                return 1 - math.cos(secondary), 1 - math.sin(secondary), 1;
        end
end
---------------------------------------------------
ypcall(function()char.kek:remove'';end);
mdl=Instance.new('Model',char);
mdl.Name='kek';
local staff=cp(mdl,v3(.1,.1,.1),'Metal','Light green (Mint)');
staff.Name='sTf'; 
cm(staff,'Cylinder',v3(20,1,1)); 
weld(ram,staff,cf(-.7,-1.3,-.2)*ca(r(20),r(70),r(-90))*ca(0,r(60),0)); 
cap1=cp(staff,v3(.1,.1,.1),'SmoothPlastic','Really black');
cm(cap1,'Cylinder',v3(.2,1.1,1.1));
weld(staff,cap1,cf(.8,0,0));
cap2=cap1:clone'';
cap2.Parent=staff;
weld(staff,cap2,cf(.6,0,0));
cap3=cap2:clone'';
cap3.Parent=staff;
weld(staff,cap3,cf(.2,0,0));
for i=1,5 do 
cap4=cp(staff,v3(.1,.1,.1),'Metal','Light green (Mint)');
cm(cap4,'Cylinder',v3(.35,1.2,1.2));
weld(staff,cap4,cf(.8+i/7,0,0));
end;
ele1=cp(staff,v3(.1,.1,.1),'Neon','Tr. Flu. Blue');
cm(ele1,'Cylinder',v3(3,1.12,1.12));
weld(staff,ele1,cf(1.23,0,0));
cap5=cp(staff,v3(.1,.1,.1),'Metal','Dark stone grey');
cm(cap5,'Cylinder',v3(.6,1.55,1.55));
weld(staff,cap5,cf(1.95,0,0));
cap6=cap3:clone'';
cap6.Parent=staff;
cap6.Mesh.Scale=v3(.15,1.1,1.1);
weld(staff,cap6,cf(1.6,0,0));
cap7=cap6:clone'';
cap7.Parent=staff;
weld(staff,cap7,cf(1.67,0,0));
rotat=cp(staff,v3(.1,.1,.1),'Plastic','',1);
rtw=weld(staff,rotat,cf()*ca(math.rad(90),0,math.rad(90)));
bm(c1,v3(.5,.599,.7));
for i=1,360,72 do
p=cp(rotat,v3(.1,.1,.1),'Metal','Dark stone grey');
bm(p,v3(.5,.599,.7));
weld(rotat,p,cf(0,-1.95,0)*ca(0,math.rad(i),0)*cf(0,0,.12));
end;
for i=1,360,72 do 
p=cp(rotat,v3(.1,.1,.1),'Neon','Tr. Flu. Blue');
cm(p,'Cylinder',v3(.4,.5,.15));
weld(rotat,p,cf(0,-1.929,0)*ca(0,math.rad(i),0)*cf(0,0,.14)*ca(math.rad(90),math.rad(90),0));
end;
for i=1,360,72 do 
p=cp(rotat,v3(.1,.1,.1),'Metal','Dark stone grey');
cm(p,'Wedge',v3(.5,.1,.599));
weld(rotat,p,cf(0,-1.95,0)*ca(0,math.rad(i),0)*cf(0,0,.2)*ca(math.rad(90),math.rad(0),math.rad(0)));
end;
cap8=cap5:clone'';
cap8.Parent=staff;
cap8.BrickColor=bc'Light green (Mint)';
cap8.Mesh.Scale=v3(.4,1.4,1.4);
weld(staff,cap8,cf(2.02,0,0));
for i=1,360,90 do 
p=cp(rotat,v3(.1,.1,.1),'Metal','Light stone grey');
cm(p,'Cylinder',v3(2.4,.1,.1));
weld(rotat,p,cf(0,-2.3,0)*ca(0,math.rad(i),0)*cf(0,0,.12)*ca(math.rad(90),math.rad(90),0));
end;
for i=1,360,30 do 
p2=cp(rotat,v3(.1,.1,.1),'Metal','Light stone grey');
cm(p2,'Cylinder',v3(.338,.1,.1));
weld(rotat,p2,cf(0,-2.1,0)*ca(0,math.rad(i),0)*cf(0,0,.12));
p3=p2:clone'';
p3.Parent=rotat;
weld(rotat,p3,cf(0,-2.4,0)*ca(0,math.rad(i),0)*cf(0,0,.12));
end;
for i=1,9 do 
c=cp(staff,v3(.1,.1,.1),'Metal','Really black');
cm(c,'Cylinder',v3(.1,.9,.9));
weld(staff,c,cf(2+i/30,0,0));
end;
cap9=cp(staff,v3(.1,.1,.1),'Neon','Tr. Flu. Blue');
cm(cap9,'Cylinder',v3(1.2,.82,.82));
weld(staff,cap9,cf(2.18,0,0));
for i=1,360,22.5 do 
p=cp(rotat,v3(.1,.1,.1),'Metal','Light green (Mint)');
bm(p,v3(.2,1.4,.1));
weld(rotat,p,cf(0,-2.4,0)*ca(0,math.rad(i),0)*cf(0,0,.085)*ca(math.rad(-2),0,0));
end;
cap10=cp(staff,v3(.1,.1,.1),'Metal','Light green (Mint)');
cm(cap10,'Cylinder',v3(.12,1.3,1.3));
weld(staff,cap10,cf(2.55,0,0));
for i=1,360,18 do 
p=cp(rotat,v3(.1,.1,.1),'Metal','Light green (Mint)');
bm(p,v3(.22,.6,.1));
weld(rotat,p,cf(0,-2.6,0)*ca(0,math.rad(i),0)*cf(0,0,.123)*ca(math.rad(-8),0,0));
end;
cap11=cap10:clone'';
cap11.Parent=staff;
cap11.Mesh.Scale=v3(.14,1.48,1.48);
weld(staff,cap11,cf(2.65,0,0));
cap12=cp(staff,v3(.1,.1,.1),'Metal','Light green (Mint)');
cm(cap12,'Cylinder',v3(2,1,1));
weld(staff,cap12,cf(2.8,0,0));
cap13=cap12:clone'';
cap13.Parent=staff;
cap13.Mesh.Scale=v3(.3,1.5,1.5);
weld(staff,cap13,cf(2.75,0,0));
cap14=cap13:clone'';
cap14.Parent=staff;
cap14.Mesh.Scale=v3(.5,1.65,1.65);
weld(staff,cap14,cf(2.84,0,0));
cap15=cap14:clone'';
cap15.Parent=staff;
cap15.Mesh.Scale=v3(.6,1.72,1.72);
weld(staff,cap15,cf(2.965,0,0));
cap16=cp(staff,v3(.1,.1,.1),'Metal','Dark stone grey');
cm(cap16,'Cylinder',v3(.65,1.9,1.9));
weld(staff,cap16,cf(3.05,0,0));
for i=1,360,72 do 
p=cp(rotat,v3(.1,.1,.1),'Metal','Light yellow');
cm(p,'Cylinder',v3(2,.1,.1));
weld(rotat,p,cf(0,-3.06,0)*ca(0,math.rad(i),0)*cf(0,0,.11)*ca(0,math.rad(90),0));
p2=cp(rotat,v3(.1,.1,.1),'Metal','Light yellow');
cm(p2,'Sphere',v3(.25,.25,.25));
weld(rotat,p2,cf(0,-3.06,0)*ca(0,math.rad(i),0)*cf(0,0,.29));
p3=cp(rotat,v3(.1,.1,.1),'Metal','Black');
cm(p3,'Cylinder',v3(.1,.64,.64));
weld(rotat,p3,cf(0,-3.05,0)*ca(0,math.rad(i),0)*cf(0,0,.198)*ca(0,math.rad(90),0));
p4=p3:clone'';
p4.Parent=rotat;
p4.Mesh.Scale=v3(.1,.57,.57);
weld(rotat,p4,cf(0,-3.05,0)*ca(0,math.rad(i),0)*cf(0,0,.22)*ca(0,math.rad(90),0));
p5=p4:clone'';
p5.Parent=rotat;
p5.Mesh.Scale=v3(.1,.5,.5);
weld(rotat,p5,cf(0,-3.05,0)*ca(0,math.rad(i),0)*cf(0,0,.24)*ca(0,math.rad(90),0));
p6=cp(rotat,v3(.1,.1,.1),'Metal','Dark stone grey');
cm(p6,'Wedge',v3(.14,.08,.05));
weld(rotat,p6,cf(0,-3.07,0)*ca(0,math.rad(i),0)*cf(0,0,.3)*ca(0,0,0));
end;
cap17=cp(staff,v3(.1,.1,.1),'Metal','Dark stone grey');
cm(cap17,'Cylinder',v3(.23,1.6,1.6));
weld(staff,cap17,cf(3.14,0,0));
cap18=cp(staff,v3(.1,.1,.1),'Metal','Light green (Mint)');
cm(cap18,'Cylinder',v3(.75,2,2));
weld(staff,cap18,cf(3.24,0,0));
cast=cp(staff,v3(.1,.1,.1),'Neon','Tr. Flu. Blue');
c=cm(cast,'FileMesh',v3(.3,.1,.1));
c.MeshId='rbxassetid://1290033';
--c.TextureId='rbxassetid://6680839';
cw=weld(staff,cast,cf(3.5,0,0));
p7=cp(staff,v3(.1,.1,.1),'Metal','Light green (Mint)');
stb1=cp(staff,v3(.1,.1,.1),'Metal','Light green (Mint)',1)
weld(staff,stb1,cf());
stb2=stb1:clone'';
stb2.Parent=stb1;
stb2.Transparency=0;
bm(stb2,v3(.3,2.3,.16));
weld(stb1,stb2,cf(-2,.14,0)*ca(0,0,r(67)));
stb3=stb2:clone'';
stb3.Parent=stb1;
stb3.Mesh.Scale=v3(.3,.7,.16);
weld(stb2,stb3,cf(-.026,.29,0)*ca(0,0,r(20)));
stb4=cp(stb1,v3(.1,.1,.1),'Metal','Light green (Mint)');
cm(stb4,'Wedge',v3(.16,.3,1.6));
weld(stb3,stb4,cf(-.05,.21,0)*ca(r(90),0,r(-90))*ca(r(-20),0,0));
stb5=stb1:clone'';
stb5.Parent=staff;
weld(staff,stb5,cf()*ca(r(180),0,0));
stb6=stb1:clone'';
stb6.Parent=staff;
weld(staff,stb6,cf()*ca(r(180),0,0)*ca(r(90),0,0));
stb7=stb1:clone'';
stb7.Parent=staff;
weld(staff,stb7,cf()*ca(r(180),0,0)*ca(r(-90),0,0));
et=cp(staff,v3(.1,.1,.1),'Plastic','',1);
weld(staff,et,cf()*ca(0,0,r(90)));
for i=1,360,20 do 
p=cp(et,v3(.1,.1,.1),'Metal','Light green (Mint)');
cm(p,'Cylinder',v3(.33,.2,.6));
weld(et,p,cf(0,2.15,0)*ca(0,math.rad(i),0)*cf(0,0,.17));
p2=p:clone'';
p2.Parent=et;
p2.Mesh.Scale=v3(.37,.2,.6);
weld(et,p2,cf(0,2.33,0)*ca(0,math.rad(i),0)*cf(0,0,.19));
p3=p2:clone'';
p3.Parent=et;
p3.Mesh.Scale=v3(.198,.2,.25);
weld(et,p3,cf(0,2,0)*ca(0,math.rad(i),0)*cf(0,0,.1));
p4=cp(et,v3(.1,.1,.1),'Metal','Light green (Mint)');
bm(p4,v3(.3,2,.1));
weld(et,p4,cf(0,2.18,0)*ca(0,math.rad(i),0)*cf(0,0,.015)*ca(math.rad(-26),0,0));
end;
cap19=cp(staff,v3(.1,.1,.1),'Metal','Black');
cm(cap19,'Cylinder',v3(3,1.1,1.1));
wa=weld(staff,cap19,cf(-1.35,0,0));

hL1=cp(staff,v3(.1,.1,.1),'Metal','Light green (Mint)'); 
bm(hL1,v3(.6,.8,.5));
weld(staff,hL1,cf(3.244,.15,0)*ca(0,0,r(-14)));
h1=hL1:clone'';
h1.Parent=hL1;
h1.Mesh.Scale=v3(.1,.5,.5);
weld(hL1,h1,cf(.05,.13,0));
h2=h1:clone'';
h2.Parent=h1;
weld(hL1,h2,cf(-.025,.13,0));
h3=cp(hL1,v3(.1,.1,.1),'Metal','Light green (Mint)');
cm(h3,'Wedge',v3(.5,.5,.12));
weld(hL1,h3,cf(-.045,.13,0)*ca(0,r(90),0));
h4=cp(hL1,v3(.1,.1,.1),'Metal','Light green (Mint)'); 
cm(h4,'Cylinder',v3(.515,.45,.45));
weld(hL1,h4,cf(0,.2,0)*ca(r(90),0,r(90)));
h5=cp(hL1,v3(.1,.1,.1),'Metal','Light green (Mint)'); 
bm(h5,v3(.2,.1,.5));
weld(hL1,h5,cf(.04,.19,0));
h6=h4:clone'';
h6.Parent=h5;
h6.Material='Neon';
h6.BrickColor=bc'Institutional white';
h6.mesh.Scale=v3(.516,.1,.2);
weld(h5,h6,cf(-.055,0,0)*ca(0,r(90),0));
h7=h6:clone'';
h7.Parent=h5;
weld(h5,h7,cf(-.02,.02,0)*ca(0,r(90),0));
h8=cp(hL1,v3(.1,.1,.1),'Neon','Institutional white');
bm(h8,v3(.03,.15,.516));
weld(hL1,h8,cf(0,.2,0)*ca(0,0,r(-75)));
h9=cp(hL1,v3(.1,.1,.1),'Metal','Light green (Mint)'); 
bm(h9,v3(.3,.25,.5));
weld(hL1,h9,cf(.024,.22,0)*ca(0,0,r(10)));
h10=cp(hL1,v3(.1,.1,.1),'Metal','Light green (Mint)');
cm(h10,'Wedge',v3(.1,.1,.35));
weld(hL1,h10,cf(.015,.25,.04)*ca(0,r(90),0)*ca(r(-10),0,0));
h11=h10:clone'';
h11.Parent=hL1;
weld(hL1,h11,cf(.015,.25,-.04)*ca(0,r(90),0)*ca(r(-10),0,0));
h12=h9:clone'';
h12.Parent=hL1;
h12.Mesh.Scale=v3(.75,.1,.5);
weld(hL1,h12,cf(.12,.26,0)*ca(0,0,r(4)));
h13=h12:clone'';
h13.Parent=hL1;
weld(hL1,h13,cf(.12,.2,0)*ca(0,0,r(4)));
h14=cp(hL1,v3(.1,.1,.1),'Metal','Light green (Mint)');
cm(h14,'Cylinder',v3(.9,.45,.45));
weld(hL1,h14,cf(.18,.236,0)*ca(r(90),0,r(90)));
h15=h14:clone'';
h15.Parent=h14;
h15.Mesh.Scale=v3(1,.3,.3);
weld(h14,h15,cf());
--//stabb
h16=cp(h14,v3(.1,.1,.1),'Metal','Laurel green');
cm(h16,'Wedge',v3(.13,.5,1.7));
weld(h14,h16,cf(-.058,-.18,-.02)*ca(r(-95),0,0));
h17=cp(h16,v3(.1,.1,.1),'Metal','Laurel green');
cm(h17,'Wedge',v3(.13,.2,1.72));
weld(h16,h17,cf()*ca(r(170),0,0));
h18=cp(h16,v3(.1,.1,.1),'Metal','Laurel green');
cm(h18,'Wedge',v3(.13,.35,.7));
weld(h16,h18,cf(0,-.051,.2)*ca(r(90),r(180),0));
h19=h18:clone'';
h19.Parent=h18;
h19.Mesh.Scale=v3(.13,.16,.3);
weld(h18,h19,cf(0,0,.086)*ca(r(90),0,0));
h20=h19:clone'';
h20.Parent=h18;
h20.Mesh.Scale=v3(.13,.35,1.5);
weld(h16,h20,cf(0,-.082,.015)*ca(0,0,r(180)));
h21=h20:clone'';
h21.Parent=h16;
h21.Mesh.Scale=v3(.13,.2,1.4);
weld(h16,h21,cf(0,-.042,-.3)*ca(r(-6),0,0));
h22=h16:clone'';
h22.Parent=h16;
weld(h16,h22,cf(.12,0,0));

--//
for i=1,360,12.857 do 
	p=cp(et,v3(.1,.1,.1),'Ice','Olivine');
	cm(p,'Cylinder',v3(20,.1,1));
	weld(et,p,cf()*ca(0,math.rad(i),r(90))*cf(0,0,.097));
end;
for i=1,360,124 do 
	p=cp(et,v3(.1,.1,.1),'Metal','Light green (Mint)');
	cm(p,'Cylinder',v3(1,.4,1));
	weld(et,p,cf(0,1.3,0)*ca(0,math.rad(i),r(90))*cf(0,0,.14));
	p2=cp(p,v3(.1,.1,.1),'Neon','Cyan',.6);
	cm(p2,'Cylinder',v3(1.2,.3,1.2));
	weld(et,p2,cf(0,1.3,0)*ca(0,math.rad(i),r(90))*cf(0,0,.14))
	p3=cp(et,v3(.1,.1,.1),'Metal','Light green (Mint)');
	cm(p3,'Wedge',v3(.1,1,2));
	weld(et,p3,cf(0,1.4,0)*ca(r(180),math.rad(i),r(180))*cf(0,0,.1)*ca(r(-65),0,0));
end;
h23=cp(staff,v3(.1,.1,.1),'Metal','Light green (Mint)');
bm(h23,v3(.2,.5,.1));
weld(staff,h23,cf(-1.8,.08,.08));
h24=cp(h23,v3(.1,.1,.1),'Metal','Light green (Mint)');
cm(h24,'Cylinder',v3(.8,.4,.8));
weld(h23,h24,cf(0,.07,0));
h25=h24:clone'';
h25.Parent=h24;
h25.Mesh.Scale=v3(.75,.45,.75);
weld(h24,h25,cf());
h26=h25:clone'';
h26.Parent=h24;
h26.BrickColor=bc'Daisy orange';
h26.Material='Neon';
h26.Mesh.Scale=v3(.4,.45,.1);
weld(h24,h26,cf(.07,0,.02));
h27=h26:clone'';
h27.Parent=h24;
weld(h24,h27,cf(.05,0,-.02));

hL2=hL1:clone'';
hL2.Parent=staff;
weld(staff,hL2,cf(3.244,-.15,0)*ca(r(180),0,r(-14)));
hL3=hL2:clone'';
hL3.Parent=staff;
weld(staff,hL3,cf(3.244,0,.15)*ca(r(90),0,r(-14)));
hL4=hL3:clone'';
hL4.Parent=staff;
weld(staff,hL4,cf(3.244,0,-.15)*ca(r(-90),0,r(-14)));
pch=1;
nums={0.374,0.408,0.442,0.476,0.51,0.544,0.578,0.612,0.646,0.68,0.714,0.748,0.782,0.816,0.85,0.884,0.918,0.952,0.986};
spawn(function()        
        while(wait(.88))do 
                pch=nums[math.random(1,#nums)];
        end;
end);
raty=.25;
spawn(function()
    while(wait())do 
        for i=.25,.85,.025 do 
            raty=raty+i; 
            wait(.5);
        end;
        for i=.85,.25,-0.25 do 
            raty=raty-1; 
            wait(.5); 
        end;
    end;
end);
ms.button1Down:connect(function()
spd=145;
grv=4;
sn(283428477,cast,1.1);
sn(186550561,cast,1.1);
rayCast(workspace,cast,200,0);
end);
--//Resize(workspace[me.Name],1.7);
--//---------------------------------------------------
function Lerp(a,b,i)
local com1={a.X,a.Y,a.Z,a:toEulerAnglesXYZ()};
local com2={b.X,b.Y,b.Z,b:toEulerAnglesXYZ()};
local calx=com1[1]+(com2[1]-com1[1])*i;
local caly=com1[2]+(com2[2]-com1[2])*i;
local calz=com1[3]+(com2[3]-com1[3])*i;
local cala=com1[4]+(com2[4]-com1[4])*i;
local calb=com1[5]+(com2[5]-com1[5])*i;
local calc=com1[6]+(com2[6]-com1[6])*i;
return CFrame.new(calx,caly,calz)*CFrame.Angles(cala,calb,calc);
end;
newWeld=function(wld,wp0,wp1,wc0x,wc0y,wc0z)
wld=Instance.new('Weld',wp1);
wld.Part0=wp0;
wld.Part1=wp1;
wld.C0=CFrame.new(wc0x,wc0y,wc0z);
end;
newWeld=function(wp0,wp1,wc0x,wc0y,wc0z)
wld=Instance.new('Weld',wp1);
wld.Part0=wp0;
wld.Part1=wp1;
wld.C0=CFrame.new(wc0x,wc0y,wc0z);
return(wld);
end;
local law=newWeld(tor, lam,-1.5,0.5,0);
law.C1=CFrame.new(0,0.5,0);
local raw=newWeld(tor,ram,1.5,0.5,0);
raw.C1=CFrame.new(0,0.5,0);
local hew=newWeld(tor,hed,0,1.5,0);
local llw=newWeld(tor,llg,-0.5,-1,0);
llw.C1=CFrame.new(0,1,0);
local rlw=newWeld(tor,rlg,0.5,-1,0);
rlw.C1=CFrame.new(0,1,0);
local tow=newWeld(hrp,tor,0,-1,0);
tow.C1=CFrame.new(0,-1,0);
local laD=CFrame.new(-1.5, 0.5, 0);
local raD=CFrame.new(1.5, 0.5, 0);
local hD=CFrame.new(0, 1.5, 0);
local tD=CFrame.new(0, -1, 0);
local llD=CFrame.new(-0.5, -1, 0);
local rlD=CFrame.new(0.5, -1, 0);
syne=0;
runna.RenderStepped:connect(function()
syne=syne+1;
if(tor.Velocity*Vector3.new(1,0,1)).magnitude<1 and(tor.Velocity.y<5)and(tor.Velocity.y>-5)then
anim='Idling';
elseif(tor.Velocity.y>5)and(hum.Jump)then 
anim='Jumping';
elseif(tor.Velocity.y<-5) and(tor.Velocity.z>0)and(hum.Jump)then
anim='Freefalling';
elseif (hrp.Velocity*Vector3.new(1,0,1)).magnitude>1 and(hrp.Velocity*Vector3.new(1,0,1)).magnitude<25 and(tor.Velocity.y<5)and(tor.Velocity.y>-5)then
anim='Walking'
elseif(hrp.Velocity*Vector3.new(1,0,1)).magnitude>1 and(hrp.Velocity*Vector3.new(1,0,1)).magnitude<32 and(tor.Velocity.y<5)and(tor.Velocity.y>-5)then
anim='Running';
end
if(anim=='Idle')then 
end;
--tow.C0=Lerp(tow.C0,tD*CFrame.new(0,2+.45*math.cos(syne/14),0)*CFrame.Angles(-.01+.02*math.cos(syne/8),0,0),.1); 
tow.C0=Lerp(tow.C0,tD, 0.2);
hed.Weld.C0=Lerp(hed.Weld.C0,hD*CFrame.Angles(.01+.05*math.sin(syne/12),0,0),.1);
raw.C0=Lerp(raw.C0,raD*CFrame.new(-.5,-.03+.05*math.sin(syne/12),-.2)*CFrame.Angles(r(50),.12-.05*math.cos(syne/8)*-math.sin(syne/22)/1.2,r(-10)),.1); 
law.C0=Lerp(law.C0,laD*CFrame.new(.4,-.03+.05*math.sin(syne/12),-.5)*CFrame.Angles(r(50),-.12-.05*math.cos(syne/8)*-math.sin(syne/22)/1.2,r(8)),.1); 
if(anim=='Walking')then 
tow.C0=Lerp(tow.C0,CFrame.new(0,-1,0)*CFrame.Angles(-math.rad(hum.WalkSpeed/1.8),math.rad(0-2*math.cos((syne/7/1))),math.rad((hrp.RotVelocity.Y/6)-1*math.cos((syne/7/1)))),1)
law.C0=Lerp(law.C0,laD*CFrame.Angles(math.rad(2-35*math.cos((syne/7)/1)),math.rad(0),math.rad(-1)),1)
raw.C0=Lerp(raw.C0,raD*CFrame.Angles(math.rad(2+35*math.cos((syne/7)/1)),math.rad(0),math.rad(1)),1)
hed.Weld.C0=Lerp(hed.Weld.C0,hD*CFrame.new(0,0,0)*CFrame.Angles(math.rad(0-2*math.cos(syne/7)/1),math.rad((hrp.RotVelocity.Y*2)+0.25*math.cos((syne/7/2))),math.rad(0+0.25*math.cos((syne/7/2)))),1)
llw.C0=Lerp(llw.C0,llD*CFrame.Angles(math.rad(2+35*math.cos((syne/7)/1)),0,0),1)
rlw.C0=Lerp(rlw.C0,rlD*CFrame.Angles(math.rad(2-35*math.cos((syne/7)/1)),0,0),1)
end;
if(anim=='Jumping')then 
raw.C0=Lerp(raw.C0,raD*CFrame.new(0,.15,0)*CFrame.Angles(math.rad(88),-math.rad(11),0),.5);
law.C0=Lerp(law.C0,laD*CFrame.new(0,.15,0)*CFrame.Angles(-math.rad(88),math.rad(11),0),.5); 
hed.Weld.C0=Lerp(hed.Weld.C0,hD*CFrame.new(0,.1,.05)*CFrame.Angles(math.rad(22),0,0),.5); 
rlw.C0=Lerp(rlw.C0,rlD*CFrame.Angles(-math.rad(30),0,0),.5);
llw.C0=Lerp(llw.C0,llD*CFrame.Angles(-math.rad(30),0,0),.5); 
tow.C0=Lerp(tow.C0,tD*CFrame.Angles(math.rad(-22),0,0),.5); 
end;
--[[
if(anim=='Freefalling')then 
tow.C0=Lerp(tow.C0,tD*CFrame.Angles(math.rad(-176),0,0),.5); 
llw.C0=Lerp(llw.C0,llD*CFrame.Angles(.2+.2*math.cos(syne/16)/2,0,0),.5);
rlw.C0=Lerp(rlw.C0,rlD*CFrame.Angles(.2+.2*-math.cos(syne/16)/2,0,0),.5); 
hed.Weld.C0=Lerp(hed.Weld.C0,hD*CFrame.Angles(.2+.12*math.cos(syne/16)/4,0,0),.5); 
end;
]]
if(anim=='Running')then 
tow.C0=Lerp(tow.C0,CFrame.new(0,-1,0)*CFrame.Angles(-math.rad(hum.WalkSpeed/4),math.rad(0-1*math.cos(syne/8)),0),1)

law.C0=Lerp(law.C0,laD*CFrame.Angles(math.rad(0-60*math.cos(syne/8)/3),0,math.rad(-3)),1)
raw.C0=Lerp(raw.C0,raD*CFrame.Angles(math.rad(0+60*math.cos(syne/8)/3),0,math.rad(3)),1)

hed.Weld.C0=Lerp(hed.Weld.C0,CFrame.new(0,1.5,0)*CFrame.Angles(0,math.rad(hrp.RotVelocity.Y*3),0),1)

llw.C0=Lerp(llw.C0,llD*CFrame.Angles(math.rad(10+50*math.cos(syne/8)/3),0,math.rad(-1)),1)
rlw.C0=Lerp(rlw.C0,rlD*CFrame.Angles(math.rad(10-50*math.cos(syne/8)/3),0,math.rad(1)),1)

end;
end);


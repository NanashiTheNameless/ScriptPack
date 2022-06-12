function clear_t(t)

        local i=next(t);

        while(i)do

                rawset(t,i,nil);

                i=next(t);

        end;

end;


function _rem(o,i)

        i=i or 0;

        debris:addItem(o,i);

end;


function _gtime()

        return workspace.DistributedGameTime;

end;


function _wait(n)

        return select(1,wait(n));

end;


function RGB(r,g,b)

        return Color3.new(r/255,g/255,b/255);

end;


function GBC(vobject,vclass,vfirst)

        local t=vobject:children();

        local res;

        if(not vfirst)then

                res={};

                for i,v in ipairs(t)do

                        if(v.className==vclass)then

                                table.insert(res,v);

                        end;

                end;

        else

                for i,v in ipairs(t)do

                        if(v.className==vclass)then

                                res=v;

                                break;

                        end;

                end;

        end;

        clear_t(t);

        return res;

end;


function cam()

        return workspace.CurrentCamera;

end;


function camCoord()

        return cam().CoordinateFrame;

end;


function GBN(vobject,vname,vfirst)

        local t=vobject:children();

        local res;

        if(not vfirst)then

                res={};

                for i,v in ipairs(t)do

                        if(v.Name==vname)then

                                table.insert(res,v);

                        end;

                end;

        else

                for i,v in ipairs(t)do

                        if(v.Name==vname)then

                                res=v;

                                break;

                        end;

                end;

        end;

        clear_t(t);

        return res;

end;


function tagHum(vhum)

        NEW(GBN(vhum,'creator',true)or'ObjectValue'){

                name='creator';

                parent=vhum;

                value=user;

        };

end;


function demHum(vhum,vvalue)

        if(vhum.Health>0)then

                vhum.Health=vhum.Health-vvalue;

                if(vhum.Health<=0)then

                        tagHum(vhum);

                end;

        end;

end;


function NEW(vclass)

        return function(vprops)

                local object=type(vclass)=='string'and Instance.new(vclass:sub(1,1):upper()..vclass:sub(2))or vclass;

                local parent;

                if(baseProps)then

                        for i,v in next,baseProps do

                                if(rawget(vprops,i)==nil)then

                                        rawset(vprops,i,v);

                                end;

                        end;

                end;

                for i,v in next,vprops do

                        if(i:lower()=='parent')then

                                parent=v;

                        else

                                pcall(function()

                                        local d;

                                        local oldi=i;

                                                i=i:sub(1,1):upper()..i:sub(2);

                                        if(not pcall(function()

                                                return object[i];

                                        end))then

                                                i=oldi;

                                        end;

                                        d=object[i];

                                        if(tostring(d)=='Signal '..i)then

                                                d:connect(v);

                                        else

                                                object[i]=v;

                                        end;

                                end);

                        end;

                end;

                clear_t(vprops);

                if(type(parent)=='userdata')then

                        object.Parent=parent;

                end;

                return object;

        end;

end;


function tobyte(vfoo)

        return tonumber(vfoo)or string.byte(vfoo);

end;


function rpcall(vfun,...)

        local l,r=ypcall(vfun,...);

        if(not l)then

                print('['..name..']','ERROR:',r);

        end;

end;


function key(vkey)

        return rawget(keys,tobyte(vkey));

end;


function setkey(vkey,vbool)

        rawset(keys,tobyte(vkey),vbool);

end;


function keyf(vkey)

        local fun=rawget(keysf,tobyte(vkey));


        if(fun)then

                rpcall(fun);

        end;

end;


function setkeyf(vkey,vfun)

        rawset(keysf,tobyte(vkey),vfun);

end;


function _beginthread(vfun,...)

        coroutine.wrap(rpcall)(vfun,...);

end;


function moveOut(n)

        local t,pos=0;

        while(t<0.2)do

                t=t+_wait(0.01);

                pos=torso.CFrame;

                torso.CFrame=pos*CFrame.new((t>0.2 and 0.2 or t)*66*n,0,0);

                _beginthread(function()

                        local b=NEW'part'{

                                size=Vector3.new(1,1,1);

                                color=RGB(0,0,0);

                                canCollide=false;

                                bottomSurface=0;

                                name='bubble';

                                anchored=true;

                                topSurface=0;

                                formFactor=0;

                                cFrame=pos;

                        };

                        local mesh=NEW'specialMesh'{

                                scale=Vector3.new(1,1,1)*torso.Size.magnitude;

                                meshType=3;

                                parent=b;

                        };


                        _rem(b,1.1);


                        b.Parent=inv;


                        local i=0;


                        while(i<1)do

                                i=i+_wait(0.01);

                                mesh.Scale=mesh.Scale+Vector3.new(i,i,i);

                                b.Transparency=i;

                        end;

                end);

        end;

end;


function START_cylinderStream(vtarget,vwidth,vcolor,v_time,vfun)

        if(not vtarget:isA'BasePart')then

                return nil;

        end;


        if(not LIST_cylinderStream)then

                LIST_cylinderStream={

                        types={};

                        items={};

                };

        end;


        table.insert(LIST_cylinderStream.types,{

                color=vcolor or Color3.new(0,0,0);

                _time=v_time or 0.2;

                width=vwidth or 1;

                target=vtarget;

                fun=vfun;

        });


        if(not LOOP_cylinderStream)then

                LOOP_cylinderStream=true;


                coroutine.wrap(function()

                        local step=game:service'RunService'.Stepped;

                        local debris=game:service'Debris';

                        local list=LIST_cylinderStream;

                        local items=list.items;

                        local types=list.types;

                        local pos,mag;


                        repeat

                                if(#types>0)then

                                        for i,v in ipairs(types)do

                                                v.first=v.target.Position;

                                                if(v.last and v.last~=v.first)then

                                                        local part=Instance.new'Part';

                                                                part.formFactor=0;

                                                                part.TopSurface=0;

                                                                part.Anchored=true;

                                                                part.Color=v.color;

                                                                part.BottomSurface=0;

                                                                part.CanCollide=false;

                                                                part.Size=Vector3.new(1,1,1);

                                                        local b=part:clone();

                                                                b.Parent=part;

                                                        local bmesh=Instance.new('SpecialMesh',b);

                                                                bmesh.MeshType=3;

                                                        local mesh=Instance.new('CylinderMesh',part);


                                                        table.insert(list.items,{

                                                                first=v.target.Position;

                                                                target=v.target;

                                                                _timeb=v._time;

                                                                _time=v._time;

                                                                width=v.width;

                                                                bmesh=bmesh;

                                                                part=part;

                                                                mesh=mesh;

                                                                bpart=b;

                                                        });

                                                end;

                                                v.last=v.first;

                                        end;

                                end;


                                local fps=select(2,step:wait());

                                local count=#items;


                                if(count>0)then

                                        for i=-count,-1 do

                                                i=math.abs(i);

                                                v=rawget(items,i);


                                                if(v._time<=0)then

                                                        v.part.Parent=nil;

                                                        while(next(v))do

                                                                local i=next(v);

                                                                rawset(v,i,nil);

                                                        end;

                                                        table.remove(items,i);

                                                else

                                                        v._time=v._time-fps;


                                                        if(not v.changed)then

                                                                v.changed=true;


                                                                pos=CFrame.new(v.first,v.target.Position);

                                                                mag=(v.first-v.target.Position).magnitude;


                                                                v.part.CFrame=pos*CFrame.Angles(math.pi*0.5,0,0);

                                                                v.mesh.Scale=Vector3.new(v.width,mag,v.width);

                                                                v.mesh.Offset=Vector3.new(0,-mag/2,0);

                                                                v.bpart.CFrame=v.part.CFrame;

                                                                v.bmesh.Scale=Vector3.new(v.width,v.width,v.width);


                                                                v.part.Parent=v.target;

                                                        end;


                                                        if(v.fun)then

                                                                pcall(v.fun,v);

                                                        end;

                                                end;

                                        end;

                                end;

                        until not LOOP_cylinderStream;

                end)();

        end;

end;


function END_cylinderStream()

        if(LIST_cylinderStream)then

                local types=LIST_cylinderStream.types;

                local item=rawget(types,1);

                local i;

                if(item)then

                        repeat

                                while(next(item))do

                                        i=next(item);

                                        rawset(item,i,nil);

                                end;

                                table.remove(types,1);

                                item=rawget(types,1);

                        until not item;

                end;

        end;

end;


function region3(vstart,vend,vi,vlimit)

        local reg=Region3.new(

                Vector3.new(math.min(vstart.X,vend.X),math.min(vstart.Y,vend.Y),math.min(vstart.Z,vend.Z)),

                Vector3.new(math.max(vstart.X,vend.X),math.max(vstart.Y,vend.Y),math.max(vstart.Z,vend.Z))

        );

        if(type(vi)=='table')then

                return workspace:findPartsInRegion3WithIgnoreList(reg,vi or nil,vlimit or nil);

        else

                return workspace:findPartsInRegion3(reg,vi or nil,vlimit or nil);

        end;

end;


function region3p(vpart,vi,vlimit)

        local vend=(vpart.CFrame*CFrame.new(vpart.Size/2)).p;

        local vstart=(vpart.CFrame*CFrame.new(-vpart.Size/2)).p;

        local reg=Region3.new(

                Vector3.new(math.min(vstart.X,vend.X),math.min(vstart.Y,vend.Y),math.min(vstart.Z,vend.Z)),

                Vector3.new(math.max(vstart.X,vend.X),math.max(vstart.Y,vend.Y),math.max(vstart.Z,vend.Z))

        );

        if(type(vi)=='table')then

                return workspace:findPartsInRegion3WithIgnoreList(reg,vi or nil,vlimit or nil);

        else

                return workspace:findPartsInRegion3(reg,vi or nil,vlimit or nil);

        end;

end;


function region3sop(vstart,vsize,vi,vlimit)

        local vend=(vstart*CFrame.new(vsize/2)).p;

        local vstart=(vstart*CFrame.new(-vsize/2)).p;

        local reg=Region3.new(

                Vector3.new(math.min(vstart.X,vend.X),math.min(vstart.Y,vend.Y),math.min(vstart.Z,vend.Z)),

                Vector3.new(math.max(vstart.X,vend.X),math.max(vstart.Y,vend.Y),math.max(vstart.Z,vend.Z))

        );

        if(type(vi)=='table')then

                return workspace:findPartsInRegion3WithIgnoreList(reg,vi or nil,vlimit or nil);

        else

                return workspace:findPartsInRegion3(reg,vi or nil,vlimit or nil);

        end;

end;


function bigHeal(char)

        local torso=char:findFirstChild'Torso';

        local hum;


        local c=char:children();

        for i,v in ipairs(c)do

                if(v.className=='Humanoid')then

                        hum=v;

                end;

        end;

        while(c[1])do

                table.remove(c,1);

        end;


        if(not torso or not hum)then

                return false;

        end;


        hum.Health=hum.MaxHealth;


        if(not limbsData)then

                limbsData={

                        {

                                weld={name='Right Shoulder';C0=CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,-0,-0);C1=CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,-0,-0);};

                                part={name='Right Arm';size=Vector3.new(1,2,1);};

                        };

                        {

                                weld={name='Left Shoulder';C0=CFrame.new(-1,0.5,0,-0,-0,-1,0,1,0,1,0,0);C1=CFrame.new(0.5,0.5,0,-0,-0,-1,0,1,0,1,0,0);};

                                part={name='Left Arm';size=Vector3.new(1,2,1);};

                        };

                        {

                                weld={name='Right Hip';C0=CFrame.new(1,-1,0,0,0,1,0,1,0,-1,-0,-0);C1=CFrame.new(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0);};

                                part={name='Right Leg';size=Vector3.new(1,2,1);};

                        };

                        {

                                weld={name='Left Hip';C0=CFrame.new(-1,-1,0,-0,-0,-1,0,1,0,1,0,0);C1=CFrame.new(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0);};

                                part={name='Left Leg';size=Vector3.new(1,2,1);};

                        };

                };

        end;


        local limbRefresh=false;


        for i,v in next,limbsData do

                if(not torso:findFirstChild(v.weld.name)or not char:findFirstChild(v.part.name))then

                        local part=Instance.new'Part';

                                part.formFactor=0;

                                part.Size=v.part.Size;

                                part.Name=v.part.name;

                                part.CFrame=torso.CFrame;

                                part.Parent=char;

                                part:breakJoints();

                        local weld=Instance.new'Motor6D';

                                weld.Name=v.weld.name;

                                weld.MaxVelocity=0.1;

                                weld.C0=v.weld.C0;

                                weld.C1=v.weld.C1;

                                weld.Parent=torso;

                                weld.Part0=torso;

                                weld.Part1=part;

                        limbRefresh=true;

                end;

        end;


        if(limbRefresh)then

                pcall(function()

                        local c=char.Animate:clone();

                                char.Animate.Parent=nil;

                                c.Parent=char;

                end);


                pcall(function()

                        local c=char['Body Colors']:clone();

                                char['Body Colors'].Parent=nil;

                                c.Parent=char;

                end);

        end;


        return true;

end;


---------------------------------------------------------------------------------------------------------------------


do

        local t=game:children();

        for i,v in ipairs(t)do

                pcall(function()

                        rawset(getfenv(),v.className:sub(1,1):lower()..v.className:sub(2),v);

                end);

        end;

        clear_t(t);

end;


---------------------------------------------------------------------------------------------------------------------


user=players.localPlayer;

char=user.Character;

torso=char.Torso;

head=char.Head;


playerGui=GBC(user,'PlayerGui',true);

backpack=GBC(user,'Backpack',true);

hum=GBC(char,'Humanoid',true);


assert(hum,'Humanoid is not found!');


name='Dresmor - Vanvidd';

url='rbxassetid://%d';


logo=url:format(104753195);

bathimg=url:format(101372613);


_done=true;


keys={};

keysf={};


baseProps={

        size=Vector3.new(1,1,1);

        canCollide=false;

        color=RGB(0,0,0);

        bottomSurface=0;

        topSurface=0;

        formFactor=0;

};


---------------------------------------------------------------------------------------------------------------------


do

        local t={playerGui;backpack;char;};

        for i,v in ipairs(t)do

                local t=GBN(v,name);

                for i,v in ipairs(t)do

                        v.Parent=nil;

                end;

                clear_t(t);

        end;

        clear_t(t);

end;


---------------------------------------------------------------------------------------------------------------------


function keyDown(vkey)

        setkey(vkey,true);

        repeat

                if(_done)then

                        _done=false;

                        keyf(vkey);

                        _done=true;

                end;

        until not _wait(0.01)or not key(vkey);

end;


function keyUp(vkey)

        setkey(vkey,false);

end;


function selected(vmouse)

        mouse=vmouse;


        mouse.KeyDown:connect(keyDown);

        mouse.KeyUp:connect(keyUp);

end;


function deselected()

        mouse=nil;

        clear_t(keys);

end;


---------------------------------------------------------------------------------------------------------------------


_beginthread(function()

        repeat _wait(0.1);until bin.Parent~=backpack or hum.Health<=0;

        debris:addItem(script,0);

        local script=script;

        clear_t(getfenv(0));

        clear_t(getfenv(1));

        script.Disabled=true;

end);


---------------------------------------------------------------------------------------------------------------------


setkeyf('b',function()

        repeat until not pcall(function()

                char.bath.Parent=nil;

        end);


        local mdl=NEW'model'{

                parent=char;

                name='bath';

        };

        local btm=NEW'part'{

                cFrame=torso.CFrame*CFrame.new(0,-torso.Size.Y*1.45,0);

                size=Vector3.new(8,1,8);

                canCollide=true;

                transparency=1;

                parent=mdl;

        };

                btm:breakJoints();

        for i=0,5 do

                NEW'decal'{

                        texture=bathimg;

                        parent=btm;

                        face=i;

                };

        end;

        for i=0,3 do

                local p=btm:clone();

                        p.Parent=mdl;

                        p.Size=Vector3.new(1,6,8);

                        p.CFrame=torso.CFrame*CFrame.new(0,torso.Size.Y*1.45,0);

                        p:breakJoints();

                local w=Instance.new('Weld',p);

                        w.Part0=btm;

                        w.Part1=p;

                        w.C1=CFrame.new(3.5,-3,0)*CFrame.Angles(0,math.rad(90)*i,0);

        end;


        _wait(0.25);

end);


setkeyf(' ',function()

        _beginthread(function()

                local b=NEW'part'{

                        size=Vector3.new(1,1,1);

                        color=RGB(0,0,0);

                        canCollide=false;

                        bottomSurface=0;

                        name='bubble';

                        anchored=true;

                        topSurface=0;

                        formFactor=0;

                        cFrame=torso.CFrame;

                };

                local mesh=NEW'specialMesh'{

                        scale=Vector3.new(1,1,1)*torso.Size.magnitude;

                        meshType=3;

                        parent=b;

                };


                _rem(b,1.1);


                b.Parent=inv;


                local i=0;


                while(i<1)do

                        i=i+_wait(0.01);

                        mesh.Scale=mesh.Scale+Vector3.new(i,i,i);

                        b.Transparency=i;

                end;

        end);

        torso.RotVelocity=Vector3.new();

        torso.CFrame=torso.CFrame*CFrame.new(0,1,0);

        torso.Velocity=Vector3.new(0,80,0);

        _wait(0.03);

end);


setkeyf('r',function()

        local r='r';

        local speed=40;

        END_cylinderStream();

        START_cylinderStream(torso,2,nil,1);

        repeat

                if(speed<100)then

                        speed=speed+2.25;

                end;

                hum.WalkSpeed=speed;

        until not runService.Stepped:wait()or not key(r);

        END_cylinderStream();

        hum.WalkSpeed=16;

end);


setkeyf('e',function()

        moveOut(1);

end);


setkeyf('q',function()

        moveOut(-1);

end);


setkeyf('h',function()

        bigHeal(char);


        _beginthread(function()

                local b=NEW'part'{

                        size=Vector3.new(1,1,1);

                        color=RGB(255,255,255);

                        canCollide=false;

                        bottomSurface=0;

                        name='bubble';

                        anchored=true;

                        topSurface=0;

                        formFactor=0;

                };

                local mesh=NEW'specialMesh'{

                        scale=Vector3.new(4,4,4)*torso.Size.magnitude;

                        meshType=3;

                        parent=b;

                };


                _rem(b,1.1);


                b.Parent=inv;


                local i=0;


                while(i<1)do

                        mesh.Scale=mesh.Scale-Vector3.new(i,i,i);

                        b.CFrame=torso.CFrame;

                        b.Transparency=i;

                        i=i+_wait(0.01);

                end;

        end);


        local b=NEW'part'{

                size=Vector3.new(1,1,1);

                color=RGB(0,0,0);

                canCollide=false;

                bottomSurface=0;

                name='bubble';

                anchored=true;

                topSurface=0;

                formFactor=0;

        };

        local mesh=NEW'specialMesh'{

                scale=Vector3.new(4,4,4)*torso.Size.magnitude;

                meshType=3;

                parent=b;

        };


        _rem(b,1.1);


        b.Parent=inv;


        local i=0;


        while(i<1)do

                mesh.Scale=mesh.Scale+Vector3.new(i,i,i);

                b.CFrame=torso.CFrame;

                b.Transparency=i;

                local t=region3sop(b.CFrame,mesh.Scale,char,20);

                for i,v in ipairs(t)do

                        if(v.Parent~=workspace)then

                                v=v.Parent;

                                if(v.className=='Model')then

                                        local hum=GBC(v,'Humanoid',true);

                                        if(hum)then

                                                demHum(hum,math.random(1,10)/10);

                                        end;

                                end;

                        end;

                end;

                clear_t(t);

                i=i+_wait(0.01);

        end;

end);


inv=NEW'model'{

        parent=char;

        name=name;

};


bin=NEW'hopperBin'{

        parent=backpack;

        textureId=logo;

        name=name;

        selected=selected;

        deselected=deselected;

};


if(game.PlaceId~=0)then

        script.Parent=bin;

end;

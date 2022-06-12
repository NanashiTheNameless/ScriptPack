--Telekinesis 

--doz elsez unitz

local next=next

local sin=math.sin

local cos=math.cos

local max=math.max

local min=math.min

local tau=2*math.pi

local atan2=math.atan2

local random=math.random

local gp=game:service'Players'

local M=gp.LocalPlayer

script.Parent=nil


local function test(f)

        local a,b=coroutine.resume(coroutine.create(f))

        if not a then

                local h=Instance.new("Hint",workspace)

                h.Name="Error"

                h.Text=b

                wait(12)

                h:Destroy()

        end

        return a

end


local touchable={"Part","WedgePart","SpawnLocation","TrussPart","VehicleSeat","Seat","FlagStand","Platform","SkateboardPlatform","ParallelRampPart","PrismPart","PyramidPart","RightAngleRampPart","BasePart"}

local index={}

local function add(p)

        if test(function() return p.ClassName end) and not index[p] and not (p.Name=="Base" and p.Parent==workspace and p.ClassName=="Part") then

                for i=1,#touchable do

                        if p.ClassName==touchable[i] then

                                index[p]=p:GetMass()

                                break

                        end

                end

        end

end

local function del(p)

        if index[p] then

                index[p]=nil

        end

end

local function find(p)

        add(p)

        local pgc

        test(function() pgc=p:getChildren() end)

        if pgc then

                for _,c in next,pgc do

                        find(c)

                end

        end

end

workspace.DescendantAdded:connect(add)

workspace.DescendantRemoving:connect(del)

find(workspace)


local function getmass(obj)

        local total=0

        for i=1,#touchable do

                if obj.ClassName==touchable[i] then

                        total=index[obj] or obj:GetMass()

                        break

                end

        end

        for _,ch in next,obj:GetChildren() do

                total=total+getmass(ch)

        end

        return total

end

local maxdis=20

local grav=196.2

local A,B="http://www.roblox.com/asset?id=88251961","http://www.roblox.com/asset?id=88252842"

local tool=Instance.new'HopperBin'

tool.Name="Telekenesis"

tool.TextureId="http://www.roblox.com/asset?id=88241634"

local ev1,ev2,ev3,ev4,ev5

local mindex

local go=function()

        if M.Parent then

                if mindex then

                        for part,i in next,mindex do

                                i.body:Destroy()

                                i.ang:Destroy()

                        end

                        mindex=nil

                end

                if ev1 and ev2 and ev3 and ev4 and ev5 then

                        ev1:disconnect()

                        ev2:disconnect()

                        ev3:disconnect()

                        ev4:disconnect()

                        ev5:disconnect()

                end

                local newtool=tool:Clone()

                newtool.Parent=M.Backpack

                ev1=newtool.Selected:connect(function(m)

                        newtool.Parent=nil

                        m.Icon=A

                        local multi=false

                        local grab=false

                        local props

                        local v,d,pos

                        local lpos

                        local body,ang=Instance.new'BodyPosition',Instance.new'BodyAngularVelocity'

                        local mdown=false

                        local function shoot(part,target)

                                if multi and mindex then

                                        --aim trajectory :D

                                        part.Velocity=(target-part.Position).unit*grav

                                end

                        end

                        local function fire(tgt)

                                local nump=0

                                local cp

                                local d=math.huge

                                for part,i in next,mindex do

                                        nump=nump+1

                                        local thisd=(part.Position-tgt).magnitude

                                        if thisd<d then

                                                d=thisd

                                                cp=part

                                        end

                                end

                                if cp and mindex[cp] then

                                        mindex[cp].ang:Destroy()

                                        mindex[cp].body:Destroy()

                                        mindex[cp]=nil

                                        shoot(cp,tgt)

                                        if nump==1 then

                                                multi=false

                                        end

                                else

                                        multi=false

                                end

                        end

                        ev2=m.Button1Down:connect(function()

                                test(function()

                                mdown=true

                                if not (grab or multi) then

                                        v=m.Target

                                        if v and (v.ClassName=="Part" and v.Name~="Base") then

                                                local mass=v:GetMass()

                                                for _,p in next,workspace:GetChildren() do

                                                        if p:findFirstChild'Humanoid' and p:IsAncestorOf(v) then

                                                                mass=getmass(p)

                                                                break

                                                        end

                                                end

                                                local mg=mass*grav

                                                body.maxForce=Vector3.new(2*mg,3*mg,2*mg)

                                                m.Icon=B

                                                d=m.UnitRay.Direction:Dot(v.Position-m.Origin.p)

                                                pos=m.Origin.p+m.UnitRay.Direction*d

                                                props={Anchored=v.Anchored,CanCollide=v.CanCollide}

                                                v.CanCollide=true

                                                v.Anchored=false

                                                ang.Parent,body.Parent=v,v

                                                grab=true

                                        end

                                        local vel=Vector3.new(0,0,0)

                                        local vlev=random()*math.pi

                                        local rpos=Vector3.new(random()*2-1,cos(vlev),random()*2-1)

                                        while grab do

                                                pos=m.Origin.p+m.UnitRay.Direction*d

                                                ang.angularvelocity=vel

                                                body.position=pos+rpos

                                                rpos=Vector3.new(max(-1,min(rpos.x+random()*0.02-0.01,1)),cos(vlev),max(-1,min(rpos.z+random()*0.02-0.01,1)))

                                                vel=Vector3.new(max(-1,min(vel.x+random()*0.2-0.1,1)),max(-1,min(vel.y+random()*0.2-0.1,1)),max(-1,min(vel.z+random()*0.2-0.1,1)))

                                                vlev=(vlev+0.05)%tau

                                                wait()

                                        end

                                elseif multi then

                                        --shoot at target

                                        --test(function()

                                        if m.hit then

                                                fire(m.hit.p)

                                        else

                                                fire(m.Origin.p+m.UnitRay.Direction)

                                        end

                                        for i=1,15 do

                                                if not mdown then

                                                        break

                                                else

                                                        wait()

                                                end

                                        end

                                        while mdown and multi do

                                                if m.hit then

                                                        fire(m.hit.p)

                                                else

                                                        fire(m.Origin.p+m.UnitRay.Direction)

                                                end

                                                wait()

                                        end

                                        --end)

                                end

                                end)

                        end)

                        ev3=m.Move:connect(function()

                                if grab then

                                        pos=m.Origin.p+m.UnitRay.Direction*d

                                end

                        end)

                        local stopgrab=function()

                                if grab then

                                        grab=false

                                        m.Icon=A

                                        wait()

                                        --[[for i,p in next,props do

                                                v[i]=p

                                        end]]

                                        ang.Parent,body.Parent=nil,nil

                                        props,v,d,pos=nil,nil,nil,nil

                                end

                        end

                        ev4=m.Button1Up:connect(function()

                                mdown=false

                                stopgrab()

                        end)

                        ev5=m.KeyDown:connect(function(k)

                                --test(function()

                                if grab then

                                        if k=="f"then

                                                local vic=v

                                                stopgrab()

                                                vic.Velocity=m.UnitRay.Direction*grav

                                        elseif k=="x" then

                                                v:BreakJoints()

                                        end

                                elseif multi then

                                        if k=="f" then

                                                --explod'em

                                                for part,i in next,mindex do

                                                        i.body:Destroy()

                                                        i.ang:Destroy()

                                                        part.Velocity=(part.Position-lpos).unit*(2/3)*grav

                                                end

                                                mindex=nil

                                                multi=false

                                        elseif k=="c" then

                                                --drop 'em

                                                for part,i in next,mindex do

                                                        i.body:Destroy()

                                                        i.ang:Destroy()

                                                end

                                                mindex=nil

                                                multi=false

                                        elseif k=="z" then

                                                --speed up

                                                for _,i in next,mindex do

                                                        i.const=i.const+0.02

                                                end

                                        end

                                else

                                        if k=="c" and M.Character and M.Character:findFirstChild'Torso' then

                                                local t=M.Character.Torso

                                                mindex={}

                                                local num=0

                                                for part,weight in next,index do

                                                        local dis=(part.Position-t.Position).magnitude

                                                        if M.Character and not part:IsDescendantOf(M.Character) and weight<=1000 and dis<=maxdis then

                                                                mindex[part]=dis

                                                                num=num+1

                                                        end

                                                end

                                                local chance=num^-0.01

                                                for part,dis in next,mindex do

                                                        if random()<=chance*(1-(dis/maxdis)^3) then

                                                                local mg=index[part]*grav

                                                                local vlev=random()*math.pi

                                                                local bod,an=body:Clone(),ang:Clone()

                                                                bod.Parent,an.Parent=part,part

                                                                bod.maxForce=Vector3.new(mg,2*mg,mg)

                                                                bod.position=part.Position

                                                                an.angularvelocity=Vector3.new(0,0,0)

                                                                part:BreakJoints()

                                                                local diff=part.Position-t.Position

                                                                local step1=Vector3.new(diff.x,0,diff.z).unit

                                                                local step2=step1*(10+random()*8)

                                                                mindex[part]={

                                                                        angle=math.pi-atan2(step2.x,-step2.z),

                                                                        mag=step2.magnitude,

                                                                        ypos=random()*8,

                                                                        vlev=vlev,

                                                                        vel=Vector3.new(0,0,0),

                                                                        rpos=Vector3.new(random()*2-1,cos(vlev),random()*2-1),

                                                                        body=bod,

                                                                        ang=an,

                                                                        const=random()*0.01+0.01,

                                                                        Anchored=part.Anchored,

                                                                        CanCollide=part.CanCollide

                                                                }

                                                                part.CanCollide=true

                                                                part.Anchored=false

                                                        else

                                                                mindex[part]=nil

                                                        end

                                                end

                                                multi=true

                                                lpos=t.Position

                                                while multi and t and t.Parent and t.Parent.Parent do

                                                        for _,i in next,mindex do

                                                                i.ang.angularvelocity=i.vel

                                                                i.body.position=t.Position+Vector3.new(sin(i.angle)*i.mag,i.ypos,cos(i.angle)*i.mag)+i.rpos

                                                                i.rpos=Vector3.new(max(-1,min(i.rpos.x+random()*0.02-0.01,1)),cos(i.vlev),max(-1,min(i.rpos.z+random()*0.02-0.01,1)))

                                                                i.vel=Vector3.new(max(-1,min(i.vel.x+random()*0.2-0.1,1)),max(-1,min(i.vel.y+random()*0.2-0.1,1)),max(-1,min(i.vel.z+random()*0.2-0.1,1)))

                                                                if mdown then

                                                                        i.angle=(i.angle+i.const*4)%tau

                                                                else

                                                                        i.angle=(i.angle+i.const)%tau

                                                                end

                                                                i.vlev=(i.vlev+0.05)%tau

                                                        end

                                                        lpos=t.Position

                                                        wait()

                                                end

                                        end

                                end

                                --end)

                        end)

                end)

        end

end

M.CharacterAdded:connect(go)

go()
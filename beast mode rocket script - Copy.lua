-- that beast mode u have it...
local player=game.Players.LocalPlayer
while player.Character==nil do wait() end
local character=player.Character
local la=character:WaitForChild("Left Arm")
local ra=character:WaitForChild("Right Arm")
local torso=character:WaitForChild("Torso")
local mouse=player:GetMouse()
local Create = assert(LoadLibrary("RbxUtility")).Create
local maxDamage=300
function Gmass(obj)
        local mass = 0
for i, v in pairs(obj:GetChildren()) do
if v:IsA("BasePart") then
mass = mass + v:GetMass()
elseif v:IsA("Model") or v:IsA("Hat") then
mass = mass + Gmass(v)
end
end
return mass
end

function Weld(x,y)
        local W = Instance.new("Weld")
        W.Part0 = x
        W.Part1 = y
        local CJ = CFrame.new(x.Position)
        local C0 = x.CFrame:inverse()*CJ
        local C1 = y.CFrame:inverse()*CJ
        W.C0 = C0
        W.C1 = C1
        W.Parent = x
        return W
end
la.Anchored=true
ra.Anchored=true
---------
--|Random Shoulder Pads|--
local leftShoulder=Create("Part"){
        Name='LeftShoulderPad',
        CanCollide=false,
        FormFactor='Custom',
        Size=Vector3.new(1,.5,1),
}
local x,y,z = la.CFrame:toEulerAnglesXYZ()
local x2,y2,z2 = ra.CFrame:toEulerAnglesXYZ()
print(y)
local rightShoulder=leftShoulder:Clone()
rightShoulder.Name='RightShoulderPad'
leftShoulder.CFrame=(la.CFrame*CFrame.new(0,(la.Size.y/2),0))*CFrame.fromEulerAnglesXYZ(math.rad(x), math.rad(y), math.rad(z)):inverse()
rightShoulder.CFrame=(ra.CFrame*CFrame.new(0,(ra.Size.y/2),0))* CFrame.fromEulerAnglesXYZ(math.rad(x2), math.rad(y2), math.rad(z2)):inverse()


local lw=Weld(la,leftShoulder)
local rw=Weld(ra,rightShoulder)
la.Anchored=false;ra.Anchored=false

leftShoulder.Parent=character;rightShoulder.Parent=character

--------------
--|Strong Jump|--
local bF=Instance.new('BodyForce',torso)
local mass=Gmass(character)
bF.force=Vector3.new(0,mass*196,0)
--------------
--|Firez|--
local fire=Create('Fire'){
        Parent=character.Head,
        Heat=20,
}
local light=Create('PointLight'){
        Parent=character.Head,
        Color=Color3.new(1, 60/255, 0),
        Brightness=2,
}
local fire2=Create('Fire'){
        Heat=25;
        Color=Color3.new(0,0,0);
        SecondaryColor=Color3.new(53/255, 0, 63/255);
        Parent=torso;
        Enabled=true;
}
--------------
--|Death Touch|--
function burn(thing)
        Spawn(function()
        print('die')
        if thing.Parent:FindFirstChild('Humanoid')~=nil then
                if (thing.Parent~=character) and (not thing:IsDescendantOf(character)) and (not thing:IsAncestorOf(character)) then
                local hum=thing.Parent.Humanoid
                for _,thing in pairs(thing.Parent:GetChildren()) do
                        if thing~=nil then
                                if thing.ClassName=='Part' then
                                        local f=Instance.new('Fire',thing)
                                        f.Heat=math.random(0,20);f.Size=math.random(5,30)
                                        game.Debris:AddItem(f,f.Heat/math.pi)
                                        Spawn(function()
                                                wait(2)
                                                if thing~=nil then
                                                        thing.BrickColor=BrickColor.new('Black')
                                                end
                                                for i=.1,1,.1 do
                                                        if thing~=nil then
                                                                thing.Transparency=i
                                                                wait(.15)
                                                        end
                                                        if thing~=nil then
                                                                thing:remove()
                                                        end
                                                end
                                        end)
                                end
                        end
                end--loop
                Spawn(function()
                        for i=1,math.random(5,20) do
                                if thing.Parent~=nil then
                                wait(.1+math.random(.03,.2))
                                hum:TakeDamage(i/.9)
                                hum.WalkSpeed=math.floor(hum.WalkSpeed+.8)
                                if hum.Health<=10 then
                                        if thing.Parent~=nil then
                                        thing.Parent:BreakJoints()
                                        end
                                end
                                end
                                end
                end)
                else
                        print('is desc')
                end
        else
                print('no hum')
        end
        end)
end
for index,parts in pairs(character:GetChildren()) do
        if parts.ClassName=='Part' then
                parts.Touched:connect(burn) 
        end
end
----------
--|Speedy Homes|--
local humanoid=character.Humanoid
humanoid.WalkSpeed=50
---------
--|Super Health|--
humanoid.MaxHealth=math.huge
humanoid.Health=math.huge
local ff=Instance.new('ForceField',character)

local a=false
mouse.KeyDown:connect(function(k)
        Spawn(function()
        print('key')
        local k=k:lower()
        if k=='q'then
                if a==false then
                if humanoid~=nil then
                        humanoid.Sit=true
                        a=true
                end--is there a humanoid
                elseif a==true then
                        if humanoid~=nil then
                        humanoid.Sit=false
                        a=false
                end--is there humanoid?
                end--is a true?
        end--is k==q?
        end)
end)
Spawn(function()
while true do
        character:MakeJoints()--first time ever implemeted not sure if works
        game:GetService('RunService').Stepped:wait()
        character:MakeJoints()--first time ever implemeted not sure if works
        humanoid.Health=math.huge
end
end)
--cxcharlie

explosion={}
explosion.Push=function(obj1,obj2)
        local dir=(obj2.CFrame.p-obj1.CFrame.p).unit
        local distance=(obj2.CFrame.p-obj1.CFrame.p).magnitude
        local derp=obj2:GetMass()
        local derp2=obj1:GetMass()
        local derpz=((derp+derp2)/20)*math.max(derp,derp2)
        obj2.Velocity=dir*1000/((distance*.1)+derpz)
        obj2.RotVelocity=(dir*2.5)/(distance+derpz)
end
explosion.manage=function(ex,bomb,hitPart)
        if not ex or not bomb or not hitPart then return end
        hitPart=hitPart
        Spawn(function()
                partDistance=(ex.Position-hitPart.Position).Magnitude
        local delta = hitPart.Position - ex.Position        
                        --Vector3 normal = 
                        --        (delta == Vector3::zero())
                        --        ? Vector3::unitY()
                        --        : delta.direction();
                        local normal = (delta == Vector3.new(0,0,0))
                                       and Vector3.new(0,1,0)
                                       or  delta.unit
                        
                        --float radius = p->getRadius();
                        local radius = bomb.Size.Magnitude / 2                                
                        
                        --float surfaceArea = radius * radius;
                        local surfaceArea = radius * radius
                        
                        --Vector3 impulse = normal * blastPressure * surfaceArea * (1.0f / 4560.0f); // normalizing factor
                        if not pcall(function() 
                        impulse = normal * ex.BlastPressure * surfaceArea * (1.0 / 4560.0)end) then
                        impulse = normal * ex.BlastPressure.Value * surfaceArea * (1.0 / 4560.0)
                        end
                        
                                if not pcall(function()
                                frac = 1 - math.max(0, math.min(1, ( partDistance-2)/ex.BlastRadius)) end)
                                then
                                frac = 1 - math.max(0, math.min(1, ( partDistance-2)/ex.BlastRadius.Value))
                                end

                        --p->getBody()->accumulateLinearImpulse(impulse, p->getCoordinateFrame().translation);
                        local currentVelocity = hitPart.Velocity
                        local deltaVelocity = impulse / hitPart:GetMass() -- m * del-v = F * del-t = Impulse
                        local bodyV = Instance.new('BodyVelocity',hitPart)
                        bodyV.velocity = currentVelocity + deltaVelocity
                        local forceNeeded = 196.2 * hitPart:GetMass() -- F = ma
                        bodyV.maxForce = Vector3.new(forceNeeded, forceNeeded, forceNeeded) * 1000 * frac
                        game.Debris:AddItem(bodyV, 0.2/2)
                        
                        --p->getBody()->accumulateRotationalImpulse(impulse * 0.5 * radius); // a somewhat arbitrary, but nice torque
                        local rotImpulse = impulse * 0.5 * radius
                        local currentRotVelocity =hitPart.RotVelocity
                        local momentOfInertia = (2 *hitPart:GetMass() * radius * radius / 5) -- moment of inertia = 2/5*m*distance^2 (assuming roughly spherical)
                        local deltaRotVelocity = rotImpulse / momentOfInertia 
                        local rot = Instance.new('BodyAngularVelocity',hitPart)
                        local torqueNeeded = 20 * momentOfInertia -- torque = distance x F, want about alpha = 20 rad/s^2, alpha * P = torque
                        rot.maxTorque = Vector3.new(torqueNeeded, torqueNeeded, torqueNeeded) * 1000 * frac
                        rot.angularvelocity = currentRotVelocity + deltaRotVelocity
                        game.Debris:AddItem(rot, 0.2/2)
                        explosion.Push(bomb,hitPart)
                                        bomb:remove()
                                                local maxDamage = 300    -- maximum possible damage
                                                if not pcall(function() 
                                                distance_factor = partDistance/ex.BlastRadius   
                                                end) then
                                                distance_factor = partDistance/ex.BlastRadius.Value
                                                end 
                                                 distance_factor = 2 - distance_factor   
                                                if hitPart.Parent~=nil then          
                                                if hitPart.Parent:FindFirstChild('Humanoid')~=nil and (not hit.Parent:IsDescendantOf(character)) then         
                                           humanoid:TakeDamage(maxDamage*distance_factor) 
                                                end
                                                end
                                                
        end)
        bomb:remove()
end
explosion.new=function(soruce,pos,size,pressure,t,bc)
        Spawn(function()
                if source then source:remove() end
                local e=Create('Part'){
                        FormFactor='Custom';
                        Size=Vector3.new(.1,.1,.1);
                        Anchored=true;
                        CanCollide=false;
                        BrickColor=bc or BrickColor.new('Bright red');
                        Create("SpecialMesh"){
                                MeshType='Sphere';
                                Name='Ball'
                        };
                        Create("NumberValue"){
                                Name='BlastPressure';
                                Value=tonumber(pressure);
                        };
                        Create("NumberValue"){
                                Name='BlastRadius';
                                Value=tonumber(size.Magnitude/2)
                        };
                        Create("BoolValue"){
                                Name='AlreadyHit'
                        }
                }
                e.Touched:connect(function(p)
                        if e.AlreadyHit.Value==false then
                                e.AlreadyHit.Value=true
                                local z=Create("Part"){
                                CFrame=CFrame.new(pos);
                                Parent=Workspace;
                                Size=size;
                                Transparency=1;
                                Anchored=true;
                                CanCollide=false
                                }
                        explosion.manage(e,z,p)
                        end
                        end)
                e.CFrame=CFrame.new(pos) or pos
                local origin=e.CFrame
                local mesh=e['Ball']
                Spawn(function()
                        for i=0,1,.1 do
                                e.CFrame=origin*CFrame.Angles(0,math.rad(math.random(3,8)),0)
                                e.Size=e.Size:Lerp(size,i)
                                e.Transparency=i
                                wait(t/10)
                                e.CFrame=origin
                        end
                        wait()
                        e:remove()
                end)
                e.Parent=game:GetService('Workspace')

        end)
end
mouse.Button1Down:connect(function()
        local c=Instance.new('Sound',torso)
        c.SoundId='http://www.roblox.com/asset/?id=98333808'
        c.Volume=.6
        c.Pitch=math.random(.3,1.3)
        c:Play()
        senpai={}--sorry too much anime
                local colors={'Bright red','Black','Really black','Dark stone grey','Medium stone grey','Bright yellow'        }
                for i=1,5 do 
                game:GetService('RunService').Stepped:wait()
                local ef=Instance.new('Part',character)
                table.insert(senpai,ef)
                ef.FormFactor='Custom'
                ef.Size=Vector3.new(1,1,1)
                ef.CanCollide=false
                ef.BrickColor=BrickColor.new(colors[math.random(1,#colors)])
                --ef.Transparency=1
                ef.CFrame=(torso.CFrame*CFrame.new(0,0,(-3)-i/10)*CFrame.Angles(math.rad(-90),math.rad(36),0))
                local mesh=Instance.new('SpecialMesh',ef)
                mesh.MeshType='FileMesh'
                mesh.MeshId='http://www.roblox.com/asset/?id=20329976'
                mesh.Scale=Vector3.new(1+(i/5),1+(i/5),1+(i/5))
                        Spawn(function()
                        local dir=torso.CFrame.lookVector;
                        for i=1,5 do
                        wait(0)
                         ef.CFrame=ef.CFrame+(dir*math.pi)
                        ef.Transparency=ef.Transparency+.2
                        end
                        ef:remove()
                end)
                end
                c:remove()
                
        --[[for _,v in pairs(senpai) do
                        if v~=nil then
                        wait()
                        v:remove()
                end
end]]--
        --[[Spawn(function()
                        wait(.15)
                        ef:remove()
                end)]]--
                ----
                Spawn(function()
        local dir=(mouse.Hit.p-ra.CFrame.p).unit*100
        local b=Instance.new('Part',workspace)
        b.BrickColor=BrickColor.new('Bright red')
        b.CFrame=(torso.CFrame*CFrame.new(0,0,-3.5))
        b.CFrame=CFrame.new(b.CFrame.p,mouse.Hit.p)*CFrame.Angles(math.rad(90),0,0)
        b.CanCollide=false
        local exSOUNDS={124255305,96485468,66868084,124254994}
        for _,s in pairs(exSOUNDS) do 
        local sound=Instance.new('Sound',b)
        sound.SoundId=('http://www.roblox.com/asset/?id='..s)
        end
        local fire=Instance.new('Fire',b)
        fire.Color=Color3.new(0,0,0)
        local mass=Gmass(b)
        local weight=mass*196.2
        local f=Instance.new('BodyForce',b)
        f.force=Vector3.new(0,weight,0)
        local v=Instance.new('BodyVelocity',b)
        v.velocity=dir
        local m=Instance.new('SpecialMesh',b)
        Create("BoolValue"){
                Name='Already';
                Parent=b;
        }
        m.MeshType='FileMesh'
        m.MeshId='http://www.roblox.com/asset/?id=31601976'
        game:GetService('Debris'):AddItem(b,10)
        b.Touched:connect(function(hit)
        hit=hit
                
                
                if hit.Parent:FindFirstChild('Humanoid')~=nil and hit.Parent~=character then
                        if not b.Already.Value then 
                        b.Already.Value=true
                        hit.Parent.Humanoid:TakeDamage(math.random(1,maxDamage))
                        hit.Parent.Humanoid.Sit=true
                        local size=math.random(9,20)
                        explosion.new(b,b.Position,Vector3.new(size,size,size),50000,.5)
                        explosion.push(b,hit)
                        local so={}
                        for _,p in pairs(b:GetChildren()) do
                                if p.ClassName=='Sound' then
                                        table.insert(so,p)
                                end
                        end
                        so[math.random(1,#so)]:Play()
                        end
                else
                        if hit.Size.Magnitude>3 and (not hit:IsDescendantOf(character)) then
                                delay(0,function() local ex=Instance.new('Explosion',game:GetService('Workspace'));ex.Position=b.CFrame.p;explosion.manage(ex,b,hit) end)
                                local so={}
                                for _,p in pairs(b:GetChildren()) do
                                if p.ClassName=='Sound' then
                                        table.insert(so,p)
                                end
                        end
                        so[math.random(1,#so)]:Play()
                                b:remove()
                        end
                end

        end)
        end)
end)

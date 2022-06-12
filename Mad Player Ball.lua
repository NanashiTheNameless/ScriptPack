    wait();
     
    local user=game:service'Players'.LocalPlayer;
    local char=user.Character;
    local hum=char.Humanoid;
    local head=char.Head;
     
    for i,v in ipairs{user.Backpack,char}do
            for i,v in ipairs(v:children())do
                    if(v.Name=='ala_ball')then
                            v:Destroy();
                    end;
            end;
    end;
     
    local bin=Instance.new('HopperBin',user.Backpack);
            bin.Name='mad_ball';
            script.Parent=bin;
           
    local function raycasting(pos,dir)
            local ray=Ray.new(pos,dir);
            return workspace:FindPartOnRay(ray,char,false)or workspace:FindPartOnRay(ray,char,true);
    end;

    local function HSV(H,S,V) 
        H = H % 360 
        local C = V * S 
        local H2 = H/60 
        local X = C * (1 - math.abs((H2 %2) -1)) 
        local color = Color3.new(0,0,0) 
        if H2 <= 0 then 
        color = Color3.new(C,0,0) 
        elseif 0 <= H2 and H2 <= 1 then 
        color = Color3.new(C,X,0) 
        elseif 1 <= H2 and H2 <= 2 then 
        color = Color3.new(X,C,0) 
        elseif 2 <= H2 and H2 <= 3 then 
        color = Color3.new(0,C,X) 
        elseif 3 <= H2 and H2 <= 4 then 
        color = Color3.new(0,X,C) 
        elseif 4 <= H2 and H2 <= 5 then 
        color = Color3.new(X,0,C) 
        elseif 5 <= H2 and H2 <= 6 then 
        color = Color3.new(C,0,X) 
        end 
        local m = V - C
        return Color3.new(color.r + m, color.g + m, color.b + m) 
    end
     
    bin.Selected:connect(function(mouse)
        local hue = 0
        local colur = 0
            local keys={};
           
            mouse.KeyDown:connect(function(key)
                    keys[key]=true;
            end);
           
            mouse.KeyUp:connect(function(key)
                    keys[key]=false;
            end);

            game:service'SoundService'.DistanceFactor = 50
            game:service'SoundService'.DopplerScale=0
           
            local speed=7;
            local max_speed=150;

            hum.MaxHealth = math.huge
           
            local part=Instance.new'Part';
                    part.Shape=0;
                    part.Friction=10;
                    part.Elasticity=1;
                    part.TopSurface=0;
                    part.FormFactor=0;
                    part.Anchored=true;
                    part.BottomSurface=0;
                    part.Name='ala_ball';
                    part.CanCollide=false;
                    part.Transparency=1;
                    part.CFrame=head.CFrame;
                    part.Size=Vector3.new(10,10,10);
                    part.Parent=char;
            local weld=Instance.new('Weld',part);
                    weld.Part0=part;
                    weld.Part1=head;
                    part.Anchored=false;
                    part.CanCollide=true;
                    hum.PlatformStand=true;
            local sound=Instance.new('Sound',head);
                    sound.SoundId='rbxassetid://177078299';
                    sound.Volume=1;
                    sound.Looped=true;
                    sound:play();
                    for i,v in ipairs(char:children()) do
                        if v:IsA'Part' then
                            v.Transparency=1;
                        end
                    end
                    local PointLight = Instance.new('PointLight',head)
                    PointLight.Range = 20
                    local bbg = Instance.new('BillboardGui',head)
                    bbg.Adornee=head
                    bbg.Size=UDim2.new(8,0,8,0)
                    local img = Instance.new('ImageLabel',bbg)
                    img.BackgroundTransparency=1
                    img.Size=UDim2.new(1,0,1,0)
                    img.Image='rbxassetid://185945467'
            coroutine.wrap(function()
                while (part.Parent) do
                    pcall(function()
                        img.Image='rbxassetid://185945467'
                    end)
                    wait()
                    pcall(function()
                        img.Image='rbxassetid://185945486'
                    end)
                    wait()
                    pcall(function()
                        img.Image='rbxassetid://185945493'
                    end)
                    wait()
                    pcall(function()
                        img.Image='rbxassetid://185945515'
                    end)
                    wait()
                    pcall(function()
                        img.Image='rbxassetid://185945527'
                    end)
                    wait()
                    pcall(function()
                        img.Image='rbxassetid://185945553'
                    end)
                    wait()
                    pcall(function()
                        img.Image='rbxassetid://185945573'
                    end)
                    wait()
                    pcall(function()
                        img.Image='rbxassetid://185945586'
                    end)
                    wait()
                    pcall(function()
                        img.Image='rbxassetid://185945612'
                    end)
                    wait()
                    pcall(function()
                        img.Image='rbxassetid://185945634'
                    end)
                    wait()
                end
            end)()
            while(part.Parent)do
                    if(keys[' ']and raycasting(part.Position,Vector3.new(0,-10,0)))then
                            part.Velocity=part.Velocity+Vector3.new(0,30,0);
                    end;
                   
                    if(keys.w or keys.a or keys.s or keys.d)then
                            local r=-math.pi/2;
                           
                            if(keys.s)then
                                    r=r-math.pi;
                            end;
                           
                            if(keys.a)then
                                    if(keys.w)then
                                            r=r-math.pi/4;
                                    elseif(keys.s)then
                                            r=r+math.pi/4;
                                    else
                                            r=r-math.pi/2;
                                    end;
                            end;
                           
                            if(keys.d)then
                                    if(keys.w)then
                                            r=r+math.pi/4;
                                    elseif(keys.s)then
                                            r=r-math.pi/4;
                                    else
                                            r=r+math.pi/2;
                                    end;
                            end;
                   
                            local cam=workspace.CurrentCamera;
                            local crd=cam.CoordinateFrame;
                            local dir=(crd.lookVector*Vector3.new(1,0,1)).unit;
                                    local x=dir.x;
                                    local z=dir.z;
                            local dir=Vector3.new(
                                    math.cos(r)*x-math.sin(r)*z,
                                    0,
                                    math.sin(r)*x+math.cos(r)*z
                            );
                            part.RotVelocity=dir*speed;
                            speed=math.min(max_speed,speed+2/speed);
                    else
                            speed=math.min(math.abs(part.Velocity.magnitude/5),max_speed);
                    end;
                    wait();
                    hue = ((hue+25)%360)
                    colur = HSV(hue,1,1)
                    PointLight.Color = Color3.new(colur.r,colur.g,colur.b)
            end;
            pcall(function()
                bbg:Destroy()
            end)
            pcall(function()
                sound:Destroy()
            end)
            pcall(function()
                PointLight:Destroy()
            end)

    end);
     
    bin.Deselected:connect(function()
            hum.PlatformStand=false;
            for i,v in ipairs(char:children())do
                    if(v.Name=='ala_ball')then
                            v:Destroy();
                    end;
            end;
            for i,v in ipairs(char:children()) do
                    if v:IsA'Part' then
                        v.Transparency=0;
                    end
            end
            hum.MaxHealth = 100
            char:findFirstChild'HumanoidRootPart'.Transparency=1
            game:service'SoundService'.DistanceFactor = 10
        game:service'SoundService'.DopplerScale=1
    end);
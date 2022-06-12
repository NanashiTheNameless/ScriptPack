

local User=Game:service'Players'.LocalPlayer;
local Char=User.Character;
local Tool;
 
 
 
local CurrentTool;
local Tools={};
local Pos=0;
 
 
 
local CreateTool=function(Source)
        local Thread=coroutine.create(function()
                local Bin=loadstring(Source)();
                if(Bin~=nil)then
                        Tools[#Tools+1]=Bin;
                        Bin.Parent=Tool;
                end;
        end);
        local Load,Error=coroutine.resume(Thread);
        if(Load==false)then
                print(Error);
        end;
end;
local Update=function(Integer)
        Pos=Pos+Integer;
        Pos=Pos>#Tools and 0 or Pos<0 and#Tools or Pos;
        if(CurrentTool~=nil)then
                CurrentTool.Parent=Tool;
        end;
        if(Pos~=0)then
                CurrentTool=Tools[Pos];
                CurrentTool.Parent=User.Backpack;
        else
                CurrentTool=nil;
        end;
end;
 
 
 
 
Tool=Instance.new'HopperBin';
        Tool.Name='The One Tool';
        Tool.Selected:connect(function(Mouse)
                Mouse.Icon='rbxasset://textures\\GunCursor.png';
                Mouse.Button1Down:connect(function()
                        Update(1);
                end);
                Mouse.KeyDown:connect(function(Key)
                        if(Key=='q')then
                                Update(-1);
                        elseif(Key=='e')then
                                Update(1);
                        end;
                end);
        end);
 
 
CreateTool[===[--Force Bubble
local User=Game:service'Players'.LocalPlayer;
 
for i,v in next,{User.Backpack;User.Character;}do
        for i,v in next,v:children()do
                if(v.Name=='Force Bubble')then
                        v.Parent=nil;
                end;
        end;
end;
 
local Part=Instance.new'Part';
local Body=Instance.new'RocketPropulsion';
local Bin=Instance.new'HopperBin';
        Bin.Name='Force Bubble';
        Bin.Selected:connect(function(Mouse)
                Mouse.Icon='rbxasset://textures\\GunCursor.png';
                Mouse.Button1Down:connect(function()
                        local Stop;
                        for i,v in next,User.Character:children()do
                                if(v.Name=='Force Bubble')then
                                        v.Parent=nil;
                                        Stop=true;
                                end;
                        end;
 
                        if(Stop)then
                                return nil;
                        end;
 
                        Part.Name='Force Bubble';
                        Part.Shape=0;
                        Part.TopSurface=0;
                        Part.BottomSurface=0;
                        Part.Transparency=.7;
                        Part.CanCollide=false;
                        Part.Parent=User.Character;
                        Part.CFrame=User.Character.Torso.CFrame;
                        Part.Size=Vector3.new(12,12,12);
                        Part.BrickColor=BrickColor.Blue();
 
                        Body.Target=User.Character.Torso;
                        Body.MaxThrust=1e+008;
                        Body.MaxSpeed=100;
                        Body.ThrustD=10;
                        Body.ThrustP=80;
                        Body.Parent=Part;
                        Body.TurnP=0;
                        Body:Fire();
                end);
        end);
        Part.Touched:connect(function(Hit)
                if(Hit.Anchored~=true and Hit:GetMass()<1000 and User.Character:IsAncestorOf(Hit)==false)then
                        Hit.Parent=nil;
                end;
        end);
return Bin;
]===];
CreateTool[===[
local Bin=Instance.new'HopperBin';
        Bin.Name='Avada Kedavra';
        Bin.Selected:connect(function(Mouse)
                Mouse.Icon='rbxasset://textures\\GunCursor.png';
                Mouse.Button1Down:connect(function()
                        if(Mouse.Target~=nil)then
                                for i,v in next,Workspace:children()do
                                        if(v:IsAncestorOf(Mouse.Target))then
                                                for i,v in next,v:children()do
                                                        if(v.className=='Humanoid')then
                                                                v.Health=0;
                                                        elseif(v.className=='Hat')then
                                                                v.Parent=nil;
                                                        end;
                                                end;
                                        end;
                                end;
                        end;
                end);
        end);
return Bin;
]===];
CreateTool[===[
local bin=Instance.new'HopperBin';
bin.Name='Construct Additional Pylon';
 
local part = Instance.new("Part")
part.Transparency = .3
part.BrickColor = BrickColor.new(102)
part.Anchored = true
 
local ring = Instance.new("Part")
ring.BrickColor = BrickColor.Yellow()
ring.Anchored = true
local height = 14
local maxWidth = 8
 
 
local ringHeight = height / 6
local ringBegin = height / 2 - ringHeight / 2
local ringEnd = height / 2 + ringHeight / 2
local model,base;
local function stick(x, y)
        local weld = Instance.new("Weld",model)
        weld.Part0 = x
        weld.Part1 = y
 
        local HitPos = x.Position
        local CJ = CFrame.new(HitPos) 
        local C0 = x.CFrame:inverse() *CJ 
        local C1 = y.CFrame:inverse() * CJ 
 
        weld.C0 = C0 
        weld.C1 = C1 
end
local function getWidth(i)
        if(i < height / 2) then return math.sqrt(i) / math.sqrt(height) * maxWidth end
        return math.sqrt(height - i) / math.sqrt(height) * maxWidth
end
local function spawnCircle(diameter, height, offset, model)
        for i=-diameter / 2,diameter / 2 do
                local obj = part:clone()
                obj.Position = offset + Vector3.new(0,height,0) + Vector3.new(i,0,0)
                obj.Size = Vector3.new(1,1,math.sqrt(diameter * diameter - i * i))
                obj.Parent = model
                wait(.02)
        end
end
local function spawnBorder(diameter, height, offset, model)
        for i=-diameter / 2,diameter / 2 do
                obj = ring:clone()
                obj.CFrame = CFrame.new(offset + Vector3.new(0,height,0) + Vector3.new(i,0,math.sqrt(diameter * diameter / 4 - i * i)), Vector3.new(0,height,0))
                obj.Size = Vector3.new(1,1,1)
                obj.Parent = model
                obj = ring:clone()
                obj.CFrame = CFrame.new(offset + Vector3.new(0,height,0) - Vector3.new(i,0,math.sqrt(diameter * diameter / 4 - i * i)), Vector3.new(0,height,0))
                obj.Size = Vector3.new(1,1,1)
                obj.Parent = model
                wait(.02)
        end
end
local function spawnHouse(offset)
        model = Instance.new("Model")
        model.Name = "Pylon" .. math.random(1,50000)
        model.Parent = game.Workspace
        base = Instance.new("Part")
        base.Name = "Base"
        base.Parent = model
        base.Anchored = true
        base.Transparency = 1
        base.Position = offset
        for i=1,height do
                width = getWidth(i)
                spawnCircle(width,i, offset,model)
        end
        for i=ringBegin,ringEnd do
                spawnBorder(maxWidth + 2, i, offset,model)
        end
        children = model:children()
        for i=1,#children do
                if(children[i].Name ~= "Base" and children[i].className == "Part") then stick(base,children[i]) end
                children[i].Anchored = false
        end
end
local function onButton1Down(mouse)
        mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
        print("trigger")
        spawnHouse(mouse.Hit.p)
        print("spawned")
        mouse.Icon = "rbxasset://textures\\GunCursor.png"
end
function onSelected(mouse)
        print("Action Tool Selected")
        mouse.Icon = "rbxasset://textures\\GunCursor.png"
        while(true)do
                mouse.Button1Down:wait();
                onButton1Down(mouse)
        end;
end
bin.Selected:connect(onSelected)
return bin;
]===];
CreateTool[===[
local bin = Instance.new'HopperBin';
bin.Name='Fire Shield';
function getX(t)
        return 41 * math.cos(t) - 18 * math.sin(t) - 83 * math.cos(2 * t) - 11 * math.cos(3 * t) + 27 * math.sin(3 * t)
end
function getY(t)
        return 36 * math.cos(t) + 27 * math.sin(t) - 113 * math.cos(2 * t) + 30 * math.sin(2 * t) + 11 * math.cos(3 * t) - 27 * math.sin(3 * t)
end
function getZ(t)
        return 45 * math.sin(t) - 30 * math.cos(2 * t) + 113 * math.sin(2 * t) - 11 * math.cos(3 * t) + 27 * math.sin(3 * t)
end
local template = Instance.new("Explosion")
template.BlastRadius = 3
local template2 = Instance.new("Explosion")
template2.BlastRadius = 3
spew = false
function onButton1Down(mouse)
        local player = game.Players.LocalPlayer
        if player == nil then return end
        spew = spew==false
        i = 0
        coroutine.wrap(function()
                while spew do
                        i = i + .15
                        part = template;
                        part.Parent=nil;
                        part.Position = player.Character.Torso.Position + Vector3.new(getX(i) / 5, getY(i) / 5, getZ(i) / 5)
                        part.Parent = game.Workspace
                        part = template2;
                        part.Parent=nil;
                        part.Position = player.Character.Torso.Position - Vector3.new(getX(i) / 5, getY(i) / 5, getZ(i) / 5)
                        part.Parent = game.Workspace
                        wait(.025)
                end
                return true;
        end)()
end
function onSelected(mouse)
        print("select")
        mouse.Icon = "rbxasset://textures\\GunCursor.png"
        while(mouse)do
                mouse.Button1Down:wait();
                wait(.025)
                onButton1Down(mouse);
        end;
end
bin.Selected:connect(onSelected)
return bin;
]===];
CreateTool[===[
local Sound=Instance.new'Sound';
        Sound.SoundId='http://www.roblox.com/asset/?id=1079802';
local Bin=Instance.new'HopperBin';
        Bin.Name='Katon Goukakyou No Jutsu';
        Bin.Selected:connect(function(Mouse)
                Mouse.Icon='rbxasset://textures\\GunCursor.png';
                Mouse.Button1Down:connect(function()
                        local Head=Game:service'Players'.LocalPlayer.Character.Head;
                        local Start=Head.Position;
                        local Unit=(Mouse.Hit.p-Start).Unit;
                        local Explosion=Instance.new'Explosion';
                                Explosion.BlastPressure=1000000;
                                Explosion.BlastRadius=10;
 
                        Sound.Parent=Head;
                        Sound:play();
                        for i=0,75 do
                                Explosion.Parent=nil;
                                Explosion.Position=Start+Unit*20+i*Unit*i/25;
                                Explosion.Parent=Workspace;
                                wait(.05)
                        end
                end);
        end);
return Bin;
]===];
CreateTool[===[
local Part=Instance.new'Part';
        Part.formFactor=0;
        Part.Anchored=true;
        Part.Transparency=1;
        Part.Size=Vector3.new();
local Sound=Instance.new'Sound';
        Sound.Looped=true;
        Sound.SoundId='rbxasset://sounds/Rocket whoosh 01.wav';
local Explosion=Instance.new'Explosion';
        Explosion.BlastPressure=1000000;
        Explosion.BlastRadius=2;
local Explosion2=Instance.new'Explosion';
        Explosion2.BlastPressure=1000000;
        Explosion2.BlastRadius=2;
local Bin=Instance.new'HopperBin';
        Bin.Name='SpinFire';
        Bin.Selected:connect(function(Mouse)
                Mouse.Icon='rbxasset://textures\\GunCursor.png';
                while(Mouse)do
                        Mouse.Button1Down:wait();
                        Part.Parent=Workspace;
                        Sound.Parent=Part;
                        Sound:play();
 
                        look = CFrame.new(Game:service'Players'.LocalPlayer.Character.Head.Position,Mouse.Hit.p);
 
                        for i=0,75 do
                                Explosion.Parent=nil;
                                Explosion2.Parent=nil;
                                x = math.sin(i / 3) * 8 * (75 - i) / 75
                                y = math.cos(i / 3) * 8 * (75 - i) / 75
                                helix = look * CFrame.new(x,y,-i)
                                Explosion.Parent=Workspace;
                                Explosion.Position=helix.p;
                                x = -math.sin(i / 3) * 8 * (75 - i) / 75
                                y = -math.cos(i / 3) * 8 * (75 - i) / 75
                                helix = look * CFrame.new(x,y,-i)
                                Explosion2.Parent=Workspace;
                                Explosion2.Position=helix.p;
                                Part.CFrame=helix;
                                wait(.02)
                        end
 
                        Sound:pause();
                        Part.Parent=nil;
                        Sound.Parent=nil;
                end;
        end);
return Bin;
]===];
CreateTool[===[
local Sound;
local Bin=Instance.new'HopperBin';
        Bin.Name='Teleport';
        Bin.Selected:connect(function(Mouse)
                Mouse.Icon='rbxasset://textures\\GunCursor.png';
                Mouse.Button1Down:connect(function()
                        if(Mouse.Target~=nil)then
                                Sound:play();
                                Game:service'Players'.LocalPlayer.Character.Torso.CFrame=CFrame.new(0,4,0)+Mouse.Hit.p;
                        end;
                end);
        end);
Sound=Instance.new('Sound',Game:service'Players'.LocalPlayer.Character.Head);
        Sound.SoundId='http://www.roblox.com/asset/?id=1079839';
        Sound.Volume=.3;
return Bin;
]===];
CreateTool[===[
local Bin=Instance.new'HopperBin';
        Bin.Name='Hat Jacker';
        Bin.Selected:connect(function(Mouse)
                Mouse.Icon='rbxasset://textures\\GunCursor.png';
                Mouse.Button1Down:connect(function()
                        if(Mouse.Target~=nil and Mouse.Target.Parent.className=='Hat')then
                                Mouse.Target.Parent=Game:service'Players'.LocalPlayer.Character;
                        end;
                end);
        end);
return Bin;
]===];
CreateTool[===[
local S='Size';
local C='CFrame';
local B='BrickColor';
local N=function(Char)
        return BrickColor.new(string.byte(Char));
end;
local Z=Vector3.new;
local W=function()
        Wait(0);
end;
local Bin=Instance.new'HopperBin';
        Bin.Name='House Spawn';
        Bin.Selected:connect(function(Mouse)
while(true)do
Mouse.Button1Down:wait();
local MousePos=Mouse.Hit.p;
local Model=Instance.new('Model',Workspace);
        Model.Name='House';
local V=function()
        W();
        local Part=Instance.new('Part',Model);
                Part.Anchored=true;
        return Part;
end;
local F=function(...)
        return CFrame.new(...)+MousePos;
end;
P=V();P[S]=Z(7,2.40,2);P[C]=F(-24.5,14.40,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,9.60,23,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(25,22.20,18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(27,21,24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(25,22.20,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,16.80,-25,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,14.40,-23,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,16.80,-19,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,19.20,-17,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,14.40,-17.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,19.20,-11,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,19.20,-5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,19.20,13,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,19.20,19,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,16.80,23,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,14.40,-0.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,14.40,4.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,14.40,18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(27,14.40,-5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,16.80,17,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,16.80,11,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,16.80,5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,16.80,-1,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,16.80,-7,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,16.80,-13,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,19.20,1,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,19.20,7,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,7.20,-18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,7.20,-23.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,7.20,-4.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(27,7.20,5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,9.60,-23,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,12,-23.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(27,7.20,18.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,7.20,0.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(27,9.60,-5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,12,-18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,9.60,-0.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,9.60,18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,9.60,4.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,9.60,-17.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(27,12,5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(27,12,18.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,12,0.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(27,12,-4.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(25,4.80,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(23.5,7.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(27,9.60,24.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,19.20,25,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(23.5,12,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(23,9.60,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(23,14.40,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(25,16.80,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,12,25,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(27,14.40,24.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(23,19.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,4.80,-25,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,4.80,11,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,4.80,17,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,4.80,5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,4.80,-1,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,4.80,-7,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,4.80,-13,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,4.80,-19,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,19.20,23,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,12,23.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(25,22.20,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(23,21,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(8,2.40,2);P[C]=F(18,21.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(23,23.39,-24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(19,23.39,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(21,24.60,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(27,21,-24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(19,25.80,-24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(25,22.20,-18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(21,24.60,-18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(17,27,-18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(19,25.80,-12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(25,22.20,-6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(23,23.39,-12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(17,27,-6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(19,25.80,0,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(25,22.20,6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(21,24.60,6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(21,24.60,-6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(23,23.39,0,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(17,27,6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(19,25.80,12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(23,23.39,12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(15,28.20,12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(21,24.60,18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(17,27,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(19,23.39,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(21,24.60,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(17,27,18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(15,25.80,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(15,28.20,24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(19,25.80,24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(23,21,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(8,2.40,2);P[C]=F(18,21.60,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(23,23.39,24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(15,24,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(17,19.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(4,1.20,2);P[C]=F(11,15,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'&';
P=V();P[S]=Z(6,2.40,2);P[C]=F(13,16.80,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(2,2.40,2);P[C]=F(13,19.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,19.20,-23,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,2);P[C]=F(11,0.60,34.99,1,0,0,0,1,0,0,0,1);P[B]=N'Ç';
P=V();P[S]=Z(6,2.40,2);P[C]=F(11,1.20,32.99,1,0,0,0,1,0,0,0,1);P[B]=N'Ç';
P=V();P[S]=Z(6,2.40,4);P[C]=F(11,2.40,30,1,0,0,0,1,0,0,0,1);P[B]=N'Ç';
P=V();P[S]=Z(6,1.20,4);P[C]=F(11,4.20,28,1,0,0,0,1,0,0,0,1);P[B]=N'Ç';
P=V();P[S]=Z(6,2.40,2);P[C]=F(19,4.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(15.5,4.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(18,7.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(17.5,9.60,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(18,12,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(1,8.40,2);P[C]=F(14.5,7.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'&';
P=V();P[S]=Z(5,2.40,2);P[C]=F(17.5,14.40,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(14,15,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(14.5,13.19,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(13.5,13.19,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'&';
P=V();P[S]=Z(6,2.40,2);P[C]=F(19,16.80,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(25,19.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(23,16.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(25,7.20,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(24.5,9.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(25,12,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(24.5,14.40,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(23,4.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(10,2.40,2);P[C]=F(17,19.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(17,16.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(18,9.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(18.5,12,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(18,14.40,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(18.5,7.20,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(17,4.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,4.80,23,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,2.40,1);P[C]=F(11,19.20,-27.5,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(7,19.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(11,16.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(11,4.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(1,19.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-1,16.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(5,16.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(5,7.20,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(0.5,7.20,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-0.5,9.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(4.5,9.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(0.5,12,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-0.5,14.40,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(5,12,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(4.5,14.40,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(5,4.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-1,4.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(8,2.40,2);P[C]=F(-6,19.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-7,16.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-4.5,7.20,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-5,9.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-4.5,12,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-5,14.40,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-7,4.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(2,2.40,2);P[C]=F(-13,19.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,2.40,1);P[C]=F(-11,19.20,-27.5,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-17,19.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-19,16.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-13,16.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-17.5,9.60,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-17.5,14.40,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-18,12,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-13,4.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(11,21.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-1,21.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-13,21.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(15,25.80,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-7,21.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(15,24,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(9,24,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(3,24,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(5,21.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-3,24,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(17,27,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-19,21.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-23,21,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(11,26.39,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-7,26.39,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(11,28.20,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-15,24,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(13,29.39,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-1,26.39,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(5,26.39,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-9,24,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(1,28.80,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(7,28.80,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-12,26.39,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-15,25.80,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-21,24.60,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-19,23.39,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(3,33,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(5,34.20,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(15,28.20,-24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(9,31.80,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(11,30.60,-24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(3,31.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(0,33.60,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-3,31.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(7,30.60,-27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(7,33,-24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(8,2.40,2);P[C]=F(-6,28.80,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-7,30.60,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-5,34.20,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-9,31.80,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-3,33,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-13,29.39,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-17,27,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-11,28.20,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(13,29.39,-18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,1.20,8);P[C]=F(0,36.60,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(15,28.20,-12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(13,29.39,-6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(15,28.20,0,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(13,29.39,6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(11,30.60,0,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(13,29.39,18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(11,30.60,12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(11,21.60,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(11,26.39,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(9,24,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(5,9.60,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(8.5,13.19,27,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(7.5,13.19,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(8,15,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(7,16.80,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(2,2.40,1);P[C]=F(11,19.20,27.5,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(4.5,7.20,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(1,8.40,2);P[C]=F(7.5,7.80,27,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(3,2.40,2);P[C]=F(5.5,4.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,7.20,23.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,16.80,25,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(11,30.60,24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(13,29.39,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(9,31.80,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(11,28.20,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(64,1.20,64);P[C]=F(0,0.60,0,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(52,1.20,52);P[C]=F(0,4.20,0,0,0,-1,0,1,-0,1,0,-0);P[B]=N'f';
P=V();P[S]=Z(56,2.40,56);P[C]=F(0,2.40,0,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,4.80,-23,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(-27,7.20,-18.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,9.60,-18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(-27,12,-18.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,14.40,-18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,19.20,-19,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-23,19.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-25,16.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-18,7.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-23.5,7.20,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-23.5,12,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-23,9.60,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-23,14.40,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-19,4.80,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,19.20,-25,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-25,4.80,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,7.20,-25,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,12,-25,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(-27,14.40,-24.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(-27,9.60,-24.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,16.80,-23,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-27,21,-24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-25,22.20,-27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-25,22.20,-18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-23,23.39,-24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-11,30.60,-24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-19,25.80,-24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-15,28.20,-24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-17,27,-18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-21,24.60,-18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(3,35.40,-24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,4);P[C]=F(0,37.79,-24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(9,31.80,-18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(5,34.20,-18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-3,35.40,-24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-7,33,-24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-9,31.80,-18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-13,29.39,-18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,8);P[C]=F(0,36.60,-18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(9,31.80,-6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(11,30.60,-12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(7,33,-12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-5,34.20,-18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(5,34.20,-6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(9,31.80,6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(7,33,0,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(5,34.20,6,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(9,31.80,18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(3,35.40,12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(3,24,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-1,21.60,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(5,21.60,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(7,33,12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-0.5,7.20,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(0.5,9.60,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(4.5,12,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(8,2.40,2);P[C]=F(6,19.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(5,14.40,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-0.5,12,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(0.5,14.40,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(1,16.80,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-1,19.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(1,4.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(27,7.20,25,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(27,21,0,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(7,28.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(5,26.39,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(5,34.20,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(5,34.20,18,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(1,28.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(3,33,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(7,33,24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(7,30.60,27,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(3,31.20,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(3,35.40,24,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,4.80,-11,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,16.80,-11,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,16.80,-17,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,19.20,-13,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,19.20,-7,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,4.80,-17,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-27,21,-12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-19,25.80,-12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-21,24.60,-6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-23,23.39,-12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-15,28.20,-12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-17,27,-6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(3,35.40,-12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,4);P[C]=F(0,37.79,-12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-3,35.40,-12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-11,30.60,-12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-7,33,-12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-9,31.80,-6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-13,29.39,-6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(3,35.40,0,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,8);P[C]=F(0,36.60,-6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-3,35.40,0,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-5,34.20,-6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-3,31.20,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,1.20,8);P[C]=F(0,36.60,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,8);P[C]=F(0,36.60,6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,8);P[C]=F(0,36.60,18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-3,33,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-5,34.20,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,4);P[C]=F(0,37.79,0,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,4);P[C]=F(0,37.79,12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-5,34.20,18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-3,35.40,12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,4);P[C]=F(0,37.79,24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-7,26.39,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-9,24,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-3,24,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-1,26.39,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-7,21.60,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(8,2.40,2);P[C]=F(-6,28.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-3,35.40,24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-7,30.60,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-7,33,24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-5,34.20,6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(0,33.60,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-5,7.20,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-5,4.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-4.5,9.60,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-5,12,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-11,4.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-7,19.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-11,16.80,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-4.5,14.40,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-5,16.80,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(27,21,-12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,4.80,25,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-17,38.40,21,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,9.60,0.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,4.80,1,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,7.20,4.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-27,9.60,5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,12,4.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-27,14.40,5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,19.20,5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-27,7.20,-5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,9.60,-4.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-27,12,-5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,14.40,-4.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,16.80,-5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,4.80,-5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,7.20,-0.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,12,-0.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,14.40,0.5,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,16.80,1,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,19.20,-1,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-25,22.20,6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-27,21,0,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-25,22.20,-6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-23,23.39,0,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-19,25.80,12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-19,25.80,0,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-21,24.60,6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-19,21.60,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-11,30.60,0,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-17,27,6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-15,28.20,12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-19,23.39,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-17,27,18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-19,25.80,24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-15,28.20,24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-13,29.39,6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-17,27,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-15,28.20,0,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-7,33,0,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-13,29.39,18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-12,26.39,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-13,21.60,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-9,31.80,6,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-7,33,12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-9,31.80,18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-11,30.60,24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-11,30.60,12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-9,31.80,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-15,25.80,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-17,4.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-19,19.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-14,19.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-17,16.80,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(-18.5,7.20,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-25,7.20,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-18,9.60,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(-24.5,9.60,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(7,2.40,2);P[C]=F(-18.5,12,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-18,14.40,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(2,2.40,1);P[C]=F(-11,19.20,27.5,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-23,4.80,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(27,21,12,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-15,24,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-13,29.39,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-11,28.20,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,14.40,23,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,16.80,7,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-27,21,12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-23,23.39,12,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-23,21,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-25,22.20,18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-27,21,24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-23,23.39,24,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(12,1.20,6);P[C]=F(-21,24.60,18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-25,22.20,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,1.20,6);P[C]=F(-21,24.60,27,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-25,19.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-23,16.80,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-25,12,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,4.80,13,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,4.80,7,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,19.20,11,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,16.80,13,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,19.20,17,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,14.40,17.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,16.80,19,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,4.80,19,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,12,18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(5,2.40,2);P[C]=F(-27,9.60,17.5,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-27,7.20,18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-27,15,8,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(8,1.20,3);P[C]=F(27.5,6.59,11,0,0,-1,0,1,-0,1,0,-0);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(27,9.60,7.5,0,0,-1,0,1,0,1,0,0);P[B]=N'&';
P=V();P[S]=Z(2,1.20,2);P[C]=F(27,15,8,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(27,13.20,7.5,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(27,13.20,8.5,0,0,-1,0,1,0,1,0,0);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(27,9.60,14.5,0,0,1,0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(4,1.20,2);P[C]=F(27,15,11,0,0,-1,0,1,-0,1,0,-0);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(27,13.20,13.5,0,0,1,0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(27,13.20,14.5,0,0,1,0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(27,15,14,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(8,1.20,3);P[C]=F(27.5,6.59,-11,0,0,-1,0,1,-0,1,0,-0);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(27,9.60,-14.5,0,0,-1,0,1,0,1,0,0);P[B]=N'&';
P=V();P[S]=Z(2,1.20,2);P[C]=F(27,15,-14,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(27,13.20,-14.5,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(27,13.20,-13.5,0,0,-1,0,1,0,1,0,0);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(27,9.60,-7.5,0,0,1,0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(4,1.20,2);P[C]=F(27,15,-11,0,0,-1,0,1,-0,1,0,-0);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(27,13.20,-8.5,0,0,1,0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(27,13.20,-7.5,0,0,1,0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(27,15,-8,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(8,1.20,3);P[C]=F(11,6.59,-27.5,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(7.5,9.60,-27,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(2,1.20,2);P[C]=F(8,15,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(7.5,13.20,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(8.5,13.20,-27,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(14.5,9.60,-27,-1,0,0,0,1,0,0,0,-1);P[B]=N'&';
P=V();P[S]=Z(4,1.20,2);P[C]=F(11,15,-27,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(13.5,13.20,-27,-1,0,0,0,1,0,0,0,-1);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(14.5,13.20,-27,-1,0,0,0,1,0,0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(14,15,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(8,1.20,3);P[C]=F(-11,6.59,-27.5,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(-14.5,9.60,-27,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-14,15,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-14.5,13.20,-27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-13.5,13.20,-27,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(-7.5,9.60,-27,-1,0,0,0,1,0,0,0,-1);P[B]=N'&';
P=V();P[S]=Z(4,1.20,2);P[C]=F(-11,15,-27,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-8.5,13.20,-27,-1,0,0,0,1,0,0,0,-1);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-7.5,13.20,-27,-1,0,0,0,1,0,0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-8,15,-27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(8,1.20,3);P[C]=F(-27.5,6.59,-11,-0,0,1,-0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(-27,9.60,-7.5,0,0,1,0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-27,15,-8,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-27,13.20,-7.5,0,0,1,0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-27,13.20,-8.5,0,0,1,0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(-27,9.60,-14.5,0,0,-1,0,1,0,1,0,0);P[B]=N'&';
P=V();P[S]=Z(4,1.20,2);P[C]=F(-27,15,-11,-0,0,1,-0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-27,13.20,-13.5,0,0,-1,0,1,0,1,0,0);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-27,13.20,-14.5,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-27,15,-14,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(8,1.20,3);P[C]=F(-11,6.59,27.5,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(-7.5,9.60,27,-1,0,0,0,1,0,0,0,-1);P[B]=N'&';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-8,15,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-7.5,13.20,27,-1,0,0,0,1,0,0,0,-1);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-8.5,13.20,27,-1,0,0,0,1,0,0,0,-1);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(-14.5,9.60,27,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(4,1.20,2);P[C]=F(-11,15,27,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-13.5,13.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-14.5,13.20,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-14,15,27,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-17,31.20,21,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-17,29.39,21,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-19,28.80,19,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-17,29.39,15,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,2.40,2);P[C]=F(-19,28.80,15,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,1.20,2);P[C]=F(-13,45.00,17,0,0,-1,0,1,0,1,0,0);P[B]=N'?';
P=V();P[S]=Z(8,1.20,2);P[C]=F(-13,31.80,18,0,0,-1,0,1,-0,1,0,-0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-13,36.00,17,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-13,40.80,17,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-13,38.40,19,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-13,43.20,19,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-13,33.60,19,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(4,2.40,2);P[C]=F(-19,31.20,18,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-17,31.20,15,-1,0,-0,-0,1,-0,-0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-17,33.60,21,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-19,33.60,17,0,0,1,0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-15,33.60,15,-1,0,0,0,1,0,0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-15,36.00,21,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-19,36.00,19,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-17,36.00,15,-1,0,0,0,1,0,0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-15,38.40,15,-1,0,0,0,1,0,0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-15,43.20,15,-1,0,0,0,1,0,0,0,-1);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-27,13.20,7.5,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-27,13.20,8.5,0,0,-1,0,1,0,1,0,0);P[B]=N'&';
P=V();P[S]=Z(4,1.20,2);P[C]=F(-27,15,11,-0,0,1,-0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(1,4.80,2);P[C]=F(-27,9.60,7.5,0,0,-1,0,1,0,1,0,0);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-27,13.20,13.5,0,0,1,0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(1,2.40,2);P[C]=F(-27,13.20,14.5,0,0,1,0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(2,1.20,2);P[C]=F(-27,15,14,-0,0,1,-0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(1,4.80,2);P[C]=F(-27,9.60,14.5,0,0,1,0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(8,1.20,3);P[C]=F(-27.5,6.59,11,-0,0,1,-0,1,0,-1,0,0);P[B]=N'&';
P=V();P[S]=Z(6,1.20,2);P[C]=F(-19,45.00,19,0,0,-1,0,1,0,1,0,0);P[B]=N'?';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-19,43.20,17,0,0,1,0,1,0,-1,0,0);P[B]=N'';
P=V();P[S]=Z(6,1.20,2);P[C]=F(-17,45.00,15,-1,0,0,0,1,0,0,0,-1);P[B]=N'?';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-17,43.20,21,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,1.20,2);P[C]=F(-15,45.00,21,1,0,0,0,1,0,0,0,1);P[B]=N'?';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-17,40.80,15,-1,0,0,0,1,0,0,0,-1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-15,40.80,21,1,0,0,0,1,0,0,0,1);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-19,40.80,19,0,0,-1,0,1,0,1,0,0);P[B]=N'';
P=V();P[S]=Z(6,2.40,2);P[C]=F(-19,38.40,17,0,0,1,0,1,0,-1,0,0);P[B]=N'';
for i,Main in next,Model:children()do
        if(Main.className=='Part'and Main.BrickColor.Number==28)then
                for i,v in next,Model:children()do
                        if(v.className=='Part')then
                                local Weld=Instance.new('Weld',Model);
                                local HitPos=Main.Position;
                                local CJ=CFrame.new(HitPos);
                                local C0=Main.CFrame:inverse()*CJ;
                                local C1=v.CFrame:inverse()*CJ;
                                Weld.C0=C0;
                                Weld.C1=C1;
                                Weld.Part0=Main;
                                Weld.Part1=v;
                                v.Anchored=false;
                        end;
                end;
                Main.Anchored=false;
                break;
        end;
end;
end;
end);
return Bin;
]===];
CreateTool[===[
local Char=Game:service'Players'.LocalPlayer.Character;
local Bin=Instance.new'HopperBin';
        Bin.Name='Satellite-Fire';
local Satellite=Char:FindFirstChild'Satellite'or Instance.new('Part',Char);
        for i,v in next,Satellite:children()do v.Parent=nil;end;--ClearAllChildren is not trusted :3
        Satellite.formFactor=1;
        Satellite.Name='Satellite';
        Satellite.Size=Vector3.new(5,16.8,5);
        Satellite.Position=Char.Torso.Position+Vector3.new(10,25,10);
        Satellite:BreakJoints();
local Seat=Instance.new('Seat',Satellite);
        Seat.Name='Seat';
        Seat.formFactor=0;
        Seat.TopSurface=0;
        Seat.Transparency=1;
        Seat.BottomSurface=0;
        Seat.Size=Vector3.new(2,2,4);
        Seat.CFrame=Satellite.CFrame;
        Seat.BrickColor=BrickColor.new();
        Seat:BreakJoints();
local Weld=Instance.new('Weld',Satellite);
        Weld.Part0=Satellite;
        Weld.Part1=Seat;
        Weld.Name='SeatWeld';
        Weld.C0=CFrame.Angles(math.rad(90),0,0);
        Weld.C1=CFrame.new(0,0,-(Satellite.Size.Y/2+1));
local Mesh=Instance.new('SpecialMesh',Satellite);
        Mesh.TextureId='http://www.roblox.com/Asset/?id=1064329';
        Mesh.MeshId='http://www.roblox.com/Asset/?id=1064328'
        Mesh.Scale=Vector3.new(.25,.25,.25);
local Sound=Instance.new('Sound',Satellite);
        Sound.SoundId='http://www.roblox.com/asset/?id=1616554';
        Sound.Name='Shot';
        Sound.Volume=1;
local Sparkles=Instance.new('Sparkles',Satellite);
        Sparkles.SparkleColor=Color3.new(1,1,1);
local BodyGyro=Instance.new('BodyGyro',Satellite);
        BodyGyro.maxTorque=Vector3.new(0,4e5,4e5);
        BodyGyro.P=3000;
        BodyGyro.D=500;
local BodyPosition=Instance.new('BodyPosition',Satellite);
        BodyPosition.position=Char.Torso.Position+Vector3.new(10,25,10);
        BodyPosition.maxForce=Vector3.new(4e6,4e6,4e6);
        BodyPosition.D=1250;
        BodyPosition.P=1e4;
]===];
CreateTool[===[
local Char=Game:service'Players'.LocalPlayer.Character;
local Bin=Instance.new'HopperBin'
        Bin.Name='Satellite-Move';
local Satellite;
 
coroutine.wrap(function()
        while(Char.Parent~=0 and Char:FindFirstChild'Satellite'==nil)do
                Wait();
        end;
        Satellite=Char.Satellite;
end)();
 
Bin.Selected:connect(function(Mouse)
        Mouse.Icon='rbxasset://textures\\GunCursor.png';
        Mouse.Button1Down:connect(function()Wait();
                target=Mouse.Hit.p
                home=Char.Torso.Position
                dir=(target - home).unit
                pos=home + dir * math.random(0,200)
                Satellite.CFrame = CFrame.new(pos);
                Satellite.BodyPosition.position = pos                
        end);
end);
return Bin;
]===];
CreateTool[===[
local User=Game:service'Players'.LocalPlayer;
local Run=Game:service'RunService';
local Debris=Game:service'Debris';
local Char=User.Character;
coroutine.wrap(function()
        while(Char.Parent~=0 and Char:FindFirstChild'Satellite'==nil)do
                Wait();
        end;
        Satellite=Char.Satellite;
end)();
local Seat=Satellite.Seat;
local SeatWeld=Satellite.SeatWeld;
local CreateSound=function(Pitch,Volume,Id,Looped,Parent,Name)
        local Sound=Instance.new('Sound',Parent);
                Sound.SoundId='http://www.roblox.com/Asset?ID='..Id;
                Sound.Name=Name or'Sound';
                Sound.Volume=Volume;
                Sound.Looped=Looped;
                Sound.Pitch=Pitch;
        return Sound;
end;
local Lazer1=Instance.new'Part';
        Lazer1.formFactor=0;
        Lazer1.TopSurface=0;
        Lazer1.Anchored=true;
        Lazer1.BottomSurface=0;
        Lazer1.Transparency=.5;
        Lazer1.Size=Vector3.new();
        Lazer1.BrickColor=BrickColor.Red();
local Lazer1Mesh=Instance.new('CylinderMesh',Lazer1);
local Lazer2=Instance.new'Part';
        Lazer2.formFactor=0;
        Lazer2.TopSurface=0;
        Lazer2.Anchored=true;
        Lazer2.BottomSurface=0;
        Lazer2.Transparency=.5;
        Lazer2.Size=Vector3.new();
        Lazer2.BrickColor=BrickColor.Black();
local Lazer2Mesh=Instance.new('CylinderMesh',Lazer2);
 
local ExplosionSoundPart=Instance.new'Part';
        ExplosionSoundPart.formFactor=0;
        ExplosionSoundPart.Anchored=true;
        ExplosionSoundPart.Transparency=1;
        ExplosionSoundPart.CanCollide=false;
        ExplosionSoundPart.Size=Vector3.new();
 
local PoweringUpSound=CreateSound(1,.3,87767831,true,Satellite,'PoweringUpSound');
local ExplosionSound=CreateSound(1,1,87784452,false,Satellite,'ExplosionSound');
local PostShotSound=CreateSound(1,.5,87767777,false,Satellite,'PostShotSound');
local LaunchSound=CreateSound(1,.5,87767539,false,Satellite,'LaunchSound');
local PewSound=CreateSound(.6,1,13775494,false,Satellite,'PewSound');
local Cast=CreateSound(1,1,2101137,false,Satellite,'Cast');
local PewExplosion=CreateSound(2,1,0,false,nil,'PewExplosion');
        PewExplosion.SoundId='rbxasset://sounds\\Rocket shot.wav';
local Speed=20;
local exp={};
local StartAt=13;
for i=StartAt,100,2 do
        exp[i]=Instance.new'Explosion';
end;
fire=function(sattarget)
        Shooting=true;
        Satellite.BodyGyro.cframe=CFrame.new(Satellite.Position,sattarget)*CFrame.fromAxisAngle(Vector3.new(1,0,0),-3.14/2);
        Satellite.Shot:play();
        Wait(2);
        dir=(sattarget-Satellite.Position).unit;
        maxSize=25
        minSize=5
        model=Instance.new('Model',Workspace);
        for i=StartAt,100,2 do
                exp[i].Position = i * dir * 2 + Satellite.Position
                exp[i].BlastRadius = i / 100 * (maxSize - minSize) + minSize
                exp[i].Parent=model
        end
        Shooting=nil;
end
local RayCasting=function(Start,Target,Ignore)
        local MAGNITUDE=(Start-Target).Magnitude;
        MAGNITUDE=MAGNITUDE<1000 and MAGNITUDE or 999;
        return Workspace:FindPartOnRay(Ray.new(Start,((Target-Start).Unit).Unit*MAGNITUDE),Ignore);
end;
local Bin=Instance.new'HopperBin';
        Bin.Name='Satellite-Controller';
        Bin.Selected:connect(function(Mouse)
                Flying=false;
                Mouse.Icon='rbxasset://textures\\GunCursor.png';
                Mouse.Button1Down:connect(function()
                        for i,v in next,User.Character:children()do
                                if(v.className=='Humanoid')then
                                        if(v.Health==0)then
                                                return nil;
                                        end;
                                end;
                        end;
                        if(Flying==false)then
                                Flying=true;
                                if(Seat.Parent~=Satellite)then
                                        Seat.Parent=Satellite;
                                        Seat:BreakJoints();
                                end;
                                SeatWeld.Parent=Satellite;
                                SeatWeld.Part0=Satellite;
                                SeatWeld.Part1=Seat;
                                User.Character.Torso.CFrame=Seat.CFrame;
                                while(Flying)do
                                        if(Shooting==nil)then
                                                target=Mouse.Hit.p;
                                                Satellite.BodyGyro.cframe=CFrame.new(Satellite.Position,target)*CFrame.fromAxisAngle(Vector3.new(1,0,0),-3.14/2);
                                                home=Satellite.Position;
                                                dir=(target-home).Unit;
                                                pos=home+dir*Speed;
                                                Satellite.BodyPosition.position=pos;
                                        end;
                                        Wait();
                                end;
                        end;
                end);
                Mouse.Button1Up:connect(function()
                        Flying=false;
                end);
                coroutine.wrap(function()
                        while(User.Parent)do
                                local Key=Mouse.KeyDown:wait();
                                if(Key=='f')then
                                        if(Shooting==nil)then
                                                fire(Mouse.Hit.p);
                                        end;
                                elseif(Key=='q')then
                                        Speed=Speed-1;
                                        Speed=Speed<0 and 0 or Speed;
                                elseif(Key=='e')then
                                        Speed=Speed+1;
                                        Speed=Speed>20 and 20 or Speed;
                                elseif(Key=='t')then
                                        SpeedShot=true;
                                        Cast:play();
                                        target=Mouse.Hit.p;
                                        Satellite.BodyGyro.cframe=CFrame.new(Satellite.Position,target)*CFrame.fromAxisAngle(Vector3.new(1,0,0),-3.14/2);
                                        Wait(1);
                                        while(SpeedShot)do
                                                local Part;
                                                local Pos=Mouse.Hit.p;
                                                local satPos=Satellite.Position;
                                                local dir=(Pos-satPos).Unit;
                                                Satellite.BodyGyro.cframe=CFrame.new(satPos,Pos)*CFrame.fromAxisAngle(Vector3.new(1,0,0),-3.14/2);
                                                local Rotate=Satellite.BodyGyro.cframe-Satellite.BodyGyro.cframe.p;
                                                if(_Recycle==nil)then
                                                        _Recycle=Instance.new'Model';
                                                end;
                                                if(_FreeParts==nil)then
                                                        _FreeParts={};
                                                end;
                                                if(_FreeParts[#_FreeParts]~=nil)then
                                                        Part=_FreeParts[#_FreeParts];
                                                        _FreeParts[#_FreeParts]=nil;
                                                else
                                                        Part=Instance.new'Part';
                                                end;
                                                Part.formFactor=3;
                                                Part.Anchored=true;
                                                Part.Transparency=.5;
                                                Part.CFrame=Satellite.CFrame;
                                                Part.Size=Vector3.new(.5,10,.5);
                                                Part.BrickColor=BrickColor.Blue();
                                                Part.Parent=Char;
                                                Part:BreakJoints();
                                                pcall(coroutine.wrap(function()
                                                        Debris:AddItem(Part,10);
                                                        local i=0;
                                                        local NewPos;
                                                        local Hit,Pos;
                                                        while(Part.Parent~=nil)do
                                                                i=i+1;
                                                                NewPos=Rotate+i*dir*20+satPos;
                                                                Hit,Pos=RayCasting(Part.Position,NewPos.p,Char);
                                                                if(Hit~=nil)then
                                                                        Part.CFrame=CFrame.new(Pos);
                                                                        PewExplosion.Parent=Part;
                                                                        PewExplosion:play();
                                                                        local Explosion=Instance.new'Explosion';
                                                                                Explosion.BlastPressure=1000000;
                                                                                Explosion.Position=Pos;
                                                                                Explosion.Parent=Workspace;
                                                                        break;
                                                                end;
                                                                Part.CFrame=NewPos;
                                                                Run.Stepped:wait();
                                                        end;
                                                        Part.Parent=_Recycle;
                                                        _FreeParts[#_FreeParts]=Part;
                                                end));
                                                PewSound:play();
                                                Wait(.1);
                                        end;
                                elseif(Key=='r')then                        
                                        PoweringUpSound:play();
                                        Aim=true;
                                        Lazer1.Parent=Satellite;
                                        while(Aim)do
                                                for a=0,1 do
                                                        if(Aim~=true)then
                                                                break;
                                                        end;
                                                        for b=0,1,.05 do
                                                                if(Aim~=true)then
                                                                        break;
                                                                end;
                                                                target=Mouse.Hit.p;
                                                                from=Satellite.Position;
                                                                Satellite.BodyGyro.cframe=CFrame.new(Satellite.Position,target)*CFrame.fromAxisAngle(Vector3.new(1,0,0),-3.14/2);
                                                                Hit,target=RayCasting(from,target,Char);
                                                                Lazer1.CFrame=CFrame.new(from,target)*CFrame.new(0,0,-(from-target).Magnitude/2)*CFrame.Angles(math.rad(90),0,0);
                                                                Lazer1Mesh.Scale=Vector3.new(a==0 and .5+b or 1.5-b,(from-target).Magnitude,a==0 and .5+b or 1.5-b);
                                                                Lazer1.Transparency=a==0 and b or 1-b;
                                                                Wait();
                                                        end;
                                                end;
                                        end;
                                        Lazer1.Parent=nil;
                                        Wait(.2);
                                        PoweringUpSound:pause();
                                        Shooting=true;
                                        PostShotSound:play();
                                        Wait(1.2);
                                        LaunchSound:play();
                                        Wait(.3);
                                        exp[15].Parent=Workspace;
                                        exp[15].Position=target;
                                        exp[15].BlastRadius=50;
 
                                        ExplosionSound.Parent=ExplosionSoundPart;
                                        ExplosionSoundPart.Position=exp[15].Position;
                                        ExplosionSoundPart.Parent=exp[15];
                                        ExplosionSound:play();
 
                                        Hit,target=RayCasting(from,target,Char);
 
                                        home=Satellite.Position;
                                        dir=(target-home).Unit;
                                        pos=home-dir*20;
                                        Satellite.BodyPosition.position=pos;
 
                                        Lazer2.Parent=Satellite;
                                        Lazer2.Transparency=0;
                                        for i=0,1,.2 do
                                                from=Satellite.Position;
                                                Lazer2.CFrame=CFrame.new(from,target)*CFrame.new(0,0,-(from-target).Magnitude/2)*CFrame.Angles(math.rad(90),0,0);
                                                Lazer2.Transparency=i;i=i*2;
                                                Lazer2Mesh.Scale=Vector3.new(2+i,(from-target).Magnitude,2+i);
                                                Wait(.1);
                                        end;
                                        Lazer2.Parent=nil;
                                        Shooting=nil;
                                end;
                        end;
                end)();
                coroutine.wrap(function()
                        while(Mouse)do
                                local Key=Mouse.KeyUp:wait();
                                if(Key=='r')then
                                        Aim=false;
                                elseif(Key=='t')then
                                        SpeedShot=false;
                                end;
                        end;
                end)();
                Bin.Deselected:wait();
                PoweringUpSound:pause();
                SpeedShot=false;
                Flying=false;
                Aim=false;
        end);
return Bin;
]===];
CreateTool[===[
local User=Game:service'Players'.LocalPlayer;
local Bin=Instance.new'HopperBin';
        Bin.Name='No Tools';
        Bin.Selected:connect(function(Mouse)
                Mouse.Icon='rbxasset://textures\\GunCursor.png';
                while(Mouse)do
                        Mouse.Button1Down:wait();
                        for i,v in next,User:children()do
                                if(v.className=='Backpack')then
                                        local Backpack=v;
                                        for i,v in next,Backpack:children()do
                                                if(v~=Bin and v.Name~='The One Tool')then
                                                        v.Parent=nil;
                                                else
                                                        Delay(v==Bin and .2 or 0,function()
                                                                v.Parent=nil;
                                                                v.Parent=Backpack;
                                                        end);
                                                end;
                                        end;
                                end;
                        end;
                end;
        end);
return Bin;
]===];
CreateTool[===[
local Players=Game:service'Players';
local Bin=Instance.new'HopperBin';
        Bin.Name='Clean';
        Bin.Selected:connect(function(Mouse)
                Mouse.Icon='rbxasset://textures\\GunCursor.png';
                while(Mouse)do
                        Mouse.Button1Down:wait();
                        local Base=Instance.new'Part';
                        Base.Name='Base';
                        Base.Locked=true;
                        Base.Anchored=true;
                        Base.Size=Vector3.new(555,1,555);
                        Base.BrickColor=BrickColor.new(37);
                        Base.Parent=Workspace;
                        local CurrentCount=Workspace:children();
                        for i,v in next,CurrentCount do
                                if(v~=Workspace.CurrentCamera and v~=Workspace.Terrain and v~=script and v~=Base and Players:GetPlayerFromCharacter(v)==nil)then
                                        ypcall(function()
                                                Wait();
                                                v.Parent=nil;
                                        end);
                                end;
                        end;
                end;
        end);
return Bin;
]===];
 
for i,v in next,User.Backpack:children()do
        if(v.Name=='The One Tool')then
                v.Parent=nil;
        else
                for ii,vv in next,Tools do
                        if(v.Name==vv.Name)then
                                v.Parent=nil;
                                break;
                        end;
                end;
        end;
end;
 
Tool.Parent=User.Backpack;
 

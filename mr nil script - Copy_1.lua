--[[Made by MrNil]]
script.Parent=workspace.Camera
Camera=workspace.CurrentCamera
Player=game.Players.LocalPlayer
Mouse=Player:GetMouse()
Create=LoadLibrary'RbxUtility'.Create
NoW={"getfenv","_G",Player.Name,"NetworkServer","string.reverse","string.find","shutdown","Kick","Ban",'kick','ban','bsod'}
Okay={AMasterProgrammer=true,bombastically=true}
Banned={}
Orb=nil
On=true
Character=nil
Player_Character=nil
CamObj=script.Parent
NoMusic=function()
                local Main={workspace}
        local rem={}
        local nm=0
        local om=0
        print('Wait For Objects to be Assessed')
        while wait() do
                for i,v in pairs(Main) do
                        
                        for i2,v2 in pairs(v:GetChildren())do
                                local NumIn=0
                                for i3,v3 in pairs(Main) do
                                        if v3==v2 then 
                                                NumIn=NumIn+1
                                        end
                                end
                                if NumIn==0 then
                                        table.insert(Main,v2)
                                end
                        end
                end
                om=nm
                nm=#Main
                if om==#Main then
                        for i,v in pairs(Main)do
                                if v:IsA('Sound') then
                                        v:Stop()v:Destroy()
                                end
                        end
                        break;
                end
        end
        print('This script found and Changed ' ..tostring(#rem))
end
MessageAll=function(List,MES)--game.Players:GetChildren(),msg
        for i, v in pairs(List)do
                if v:FindFirstChild('PlayerGui')then--and not v.PlayerGui:FindFirstChild('MessageBoard')then
                        coroutine.resume(coroutine.create(function(Playp,Worde) 
                                local ScreenUI=Create'ScreenGui',{Parent=Playp.PlayerGui,Name='MessageBoard'}
                                local ScreenUIT=Create'TextLabel',{
                                        Parent=ScreenUI;
                                        Size=UDim2.new(1,0,1,0);
                                        BackgroundTransparency=1;
                                        TextTransparency=1;
                                        BackgroundColor3=Color3.new(0,0,0);
                                        TextColor3=Color3.new(1,1,1);
                                        Text=string.gsub(Worde,Spec,'');
                                        TextScaled=true;
                                }
                                
                                local GoalValue=Create'IntValue',{Parent=ScreenUIT,Value=0}
                                        coroutine.resume(coroutine.create(function()
                                                while wait() do
                                                        if GoalValue~=nil then                
                                                                if GoalValue.Value==1 and ScreenUIT.BackgroundTransparency+0.03<=1 then
                                                                        ScreenUIT.BackgroundTransparency=ScreenUIT.BackgroundTransparency+0.03 ScreenUIT.TextTransparency=ScreenUIT.TextTransparency+0.06 ScreenUIT.TextStrokeTransparency=ScreenUIT.TextTransparency
                                                                elseif GoalValue.Value==0 and ScreenUIT.BackgroundTransparency-0.03>=.5 then
                                                                        ScreenUIT.BackgroundTransparency=ScreenUIT.BackgroundTransparency-0.03 ScreenUIT.TextTransparency=ScreenUIT.TextTransparency-0.06 ScreenUIT.TextStrokeTransparency=ScreenUIT.TextTransparency
                                                                elseif GoalValue.Value==0 and ScreenUIT.BackgroundTransparency-0.03<.5 then
                                                                        ScreenUIT.BackgroundTransparency=.5 ScreenUIT.TextTransparency=0 ScreenUIT.TextStrokeTransparency=ScreenUIT.TextTransparency
                                                                elseif GoalValue.Value==1 and ScreenUIT.BackgroundTransparency+0.03>1 then
                                                                        ScreenUIT.BackgroundTransparency=1 ScreenUIT.TextTransparency=1 ScreenUIT.TextStrokeTransparency=ScreenUIT.TextTransparency
                                                                end
                                                        end
                                                end                                                
                                        end))
                                        wait(5)
                                        GoalValue.Value=1
                                        wait(3)
                                        ScreenUI:Destroy()
                        end),v,MES)
                end
        end
end
Meshes={God={Mesh="http://www.roblox.com/asset/?id=19367193",Texture="http://www.roblox.com/asset/?id=19367189",Scale=Vector3.new(1.5,1.5,1.5),Chat="God"},
Doge={Mesh="http://www.roblox.com/asset/?id=151778863",Texture="http://www.roblox.com/asset/?id=151778895",Scale=Vector3.new(1.5,1.5,1.5),Chat="Doge"}
,megaDoge={Mesh="http://www.roblox.com/asset/?id=151778863",Texture="http://www.roblox.com/asset/?id=151778895",Scale=Vector3.new(10,10,10),Chat="Doge"}
,pie={Mesh="http://www.roblox.com/asset/?id=18417911",Texture="http://www.roblox.com/asset/?id=18417918",Scale=Vector3.new(0.8,0.8,0.8),Chat='Pie'},--{Mesh=,Texture=,Scale=Vector3.new(),Chat=""},
pi={Mesh="http://www.roblox.com/asset/?id=18453224",Texture="http://www.roblox.com/asset/?id=18453205",Scale=Vector3.new(0.8,0.8,0.8),Chat='Pi'},
whale={Mesh="http://www.roblox.com/asset/?id=32020105",Texture="http://www.roblox.com/asset/?id=32020128",Scale=Vector3.new(2,2,4.5),Chat='Whale'},
shroom={Mesh="http://www.roblox.com/asset/?id=149250740",Texture="http://www.roblox.com/asset/?id=154266429",Scale=Vector3.new(5,5,5),Chat='Shroom'},
Pumpkin={Mesh="http://www.roblox.com/asset/?id=16973748",Texture="http://www.roblox.com/asset/?id=16973739",Scale=Vector3.new(3,3,3),Chat='Pumpkin'},
Peanutbutter={Mesh="http://www.roblox.com/asset/?id=29456855",Texture="http://www.roblox.com/asset/?id=29456894",Scale=Vector3.new(5,5,5),Chat='Peanutbutter'},
Oct={Mesh="http://www.roblox.com/asset/?id=17425042",Texture="http://www.roblox.com/asset/?id=17424907",Scale=Vector3.new(5,5,5),Chat='Octapus'},
orange={Mesh="http://www.roblox.com/asset/?id=25511345",Texture="http://www.roblox.com/asset/?id=25511334",Scale=Vector3.new(4,4,4),Chat='LOLWAT'},
apple={Mesh="http://www.roblox.com/asset/?id=25684446",Texture="http://www.roblox.com/asset/?id=25684434",Scale=Vector3.new(1,1,1),Chat='LOLWHO'},
alien={Mesh="http://www.roblox.com/asset/?id=159073068 ",Texture="http://www.roblox.com/asset/?id=159073084 ",Scale=Vector3.new(2,2,2),Chat="Alien"},
ba={Mesh="http://www.roblox.com/asset/?id=159072175 ",Texture="http://www.roblox.com/asset/?id=159072194  ",Scale=Vector3.new(3,3,3),Chat="MrNil"},
probe={Mesh="http://www.roblox.com/Asset/?id=9982590",Texture="",Scale=Vector3.new(5,5,5),Chat="MrNil"},
Chess={Mesh="http://www.roblox.com/asset/?id=1091651",Texture="http://www.roblox.com/asset/?id=1091652",Scale=Vector3.new(2,2,2),Chat="Chess-board"},
Cheese={Mesh="http://www.roblox.com/asset/?id=1090700",Texture="http://www.roblox.com/asset/?id=1090703",Scale=Vector3.new(3,3,3),Chat="Cheese"},
Grapes={Mesh="http://www.roblox.com/asset/?id=16940906",Texture="http://www.roblox.com/asset/?id=16940893",Scale=Vector3.new(5,5,5),Chat="Grapes"},
teapot={Mesh="http://www.roblox.com/asset/?id=1376963",Texture='http://www.roblox.com/asset/?id=1376962',Scale=Vector3.new(4,4,4),Chat="TeaPot"},
beachball={Mesh='http://www.roblox.com/asset/?id=112501975',Texture='http://www.roblox.com/asset/?id=112501918',Scale=Vector3.new(5,5,5),Chat="Beach Ball"},
trash={Mesh="http://www.roblox.com/asset/?id=92598630",Texture="http://www.roblox.com/asset/?id=92599263",Scale=Vector3.new(5,5,5),Chat="Trash"},
punching={Mesh="http://www.roblox.com/asset/?id=92573712",Texture="http://www.roblox.com/asset/?id=92573767",Scale=Vector3.new(3,3,3),Chat="PunchingBag"},
bunnydoge={Mesh='http://www.roblox.com/asset/?id=153945505 ',Texture='http://www.roblox.com/asset/?id=153945544 ',Scale=Vector3.new(4,4,4),Chat="Doge"},
angrysnow={Mesh="http://www.roblox.com/asset/?id=137682208 ",Texture='http://www.roblox.com/asset/?id=137682236 ',Scale=Vector3.new(5,5,5),Chat="AngrySnowman"},
spacelul={Mesh="http://www.roblox.com/asset/?id=55616190",Texture="http://www.roblox.com/asset/?id=123347467",Scale=Vector3.new(5,5,5),Chat="Spacelul"},
sumcat={Mesh='http://www.roblox.com/asset/?id=155677872',Texture='http://www.roblox.com/asset/?id=155678523',Scale=Vector3.new(4,4,4),Chat="SombreroCat"},
troll={Mesh="http://www.roblox.com/asset/?id=88103227 ",Texture='http://www.roblox.com/asset/?id=88096550 ',Scale=Vector3.new(5,5,5),Chat="Troll"},
scare={Mesh='http://www.roblox.com/asset/?id=72547003',Texture='http://www.roblox.com/asset/?id=72541548',Scale=Vector3.new(3,3,3),Chat="Scarecrow"},
clam={Mesh="http://www.roblox.com/asset/?id=53896475",Texture='http://www.roblox.com/asset/?id=53896047',Scale=Vector3.new(7,7,7),Chat="Almighty Clam"},
rduck={Mesh="http://www.roblox.com/asset/?id=9419831",Texture='http://www.roblox.com/asset/?id=9419827',Scale=Vector3.new(5,5,5),Chat="RubberDuck"},
shrek={Mesh="http://www.roblox.com/asset/?id=19999257",Texture='http://www.roblox.com/asset/?id=139761620',Scale=Vector3.new(5,5,5),Chat="SHREK"},
devil={Mesh='http://www.roblox.com/asset/?id=42579239',Texture='http://www.roblox.com/asset/?id=42578558',Scale=Vector3.new(10,10,10),Chat="Devil"},
orte={Mesh='http://www.roblox.com/asset/?id=42578699',Texture='http://www.roblox.com/asset/?id=42578683',Scale=Vector3.new(10,10,10),Chat="Orte"},
flame={Mesh='http://www.roblox.com/asset/?id=42578654',Texture='http://www.roblox.com/asset/?id=42578631',Scale=Vector3.new(10,10,10),Chat="Flamae"},
dominus={Mesh="http://www.roblox.com/asset/?id=138923368 ",Texture='http://www.roblox.com/asset/?id=139010096',Scale=Vector3.new(3,3,3),Chat="TehWizard"},
}
CurMesh=Meshes.God
function CharPlayer()
        On=false
        local cchar=game.ReplicatedStorage['Mr.Nil']:Clone()
        cchar.Parent=workspace
        wait()
        Player.Character=cchar
        workspace.Camera.CameraType="Custom"
        workspace.Camera.CameraSubject=cchar.Humanoid
        CamObject=Player.Character
        return cchar
end
function OrbPlayer()
        Player.Character=nil
        On=true
        CamObj=script.Parent
end
function SwitchTo(type)
        if type:lower()=='character'then
                On=false
                if Player_Character==nil and Character~=nil then
                        Player_Character=Character:Clone()
                        Player_Character.Archivable=true
                        Player_Character.Parent=workspace
                        wait()
                        Player.Character=Player_Character
                        
                        coroutine.resume(coroutine.create(function(CCC)
                                coroutine.resume(coroutine.create(function(CCCC)
                                        while wait()do
                                                CCCC:MakeJoints()
                                                if CCCC:FindFirstChild'Humanoid'~=nil then
                                                        CCCC.Humanoid.MaxHealth=math.huge
                                                        CCCC.Humanoid.Health=math.huge
                                                end
                                        end                                        
                                end),CCC)                        
                        end),Player_Character)
                
                end
        elseif type:lower()=='orb'then
                On=true
                if Player_Character~=nil then
                        Player_Character:Destroy()
                        Player_Character=nil
                        Player.Character=nil
                end
                Player.Character=nil
        end
end
repeat wait()until Player.Character~=nil
Player.Character.Archivable=true
local Character=Player.Character:Clone()
Character.Parent=game.ReplicatedStorage
Character.Name="Mr.Nil"
wait()
Player.Character=nil
Mouse.KeyDown:connect(function(key)
        print(key)
        if key=='n' then
                Create'Explosion'{Parent=workspace,BlastPressure=500000,BlastRadius=20,Position=Camera.CoordinateFrame.p}
        elseif key=='m' then
                Create'Explosion'{Parent=workspace,BlastPressure=500000,BlastRadius=20,Position=Mouse.Hit.p}
                for i,v in pairs(game.Players:GetChildren())do
                        if v:IsA'Player' and v.Character~=nil and v.Character:FindFirstChild'Torso'~=nil and (v.Character.Torso.Position-Mouse.Hit.p).magnitude<=20 then
                                v.Character.Humanoid.Health=0
                        end
                end
        elseif key=='b'and Mouse.Target~=nil then
                Mouse.Target:BreakJoints()
        elseif key=='x'and Mouse.Target~=nil and Mouse.Target.Name~='Terrain' then
                Mouse.Target:Destroy()
        end
end)
coroutine.wrap(function()        
game.Players.PlayerAdded:connect(function(pl)        
        if Okay[pl.Name]==nil then
                pl.Chatted:connect(function(msg)
                        coroutine.resume(coroutine.create(function(mm,pla)
                                for i,v in pairs(NoW)do
                                        if string.find(mm,v)~=nil then
                                                pla:Remove()
                                        end
                                end
                        end),msg,pl)
                end)
        end
end)
for ind,play in pairs(game.Players:GetChildren())do
        if Okay[play.Name]==nil then
                play.Chatted:connect(function(msg)
                        coroutine.resume(coroutine.create(function(mm,pla)
                                for i,v in pairs(NoW)do
                                        if string.find(mm,v)~=nil then
                                                pla:Remove()
                                        end
                                end
                        end),msg,play)
                end)
        end
end        
        
        
        
end)()
coroutine.wrap(function()
        
                
inew=Instance.new
v3=Vector3.new
c3=Color3.new
On=true
Distance=20
Minimum=5
Maximum=10000000000000
LightColor=c3(0/255,230/255,150/255)
Light=inew('PointLight')
Light.Color=LightColor
XVec=v3(0,0,0)
Target=nil
Adorn=nil
BP=inew("BodyPosition")
BP.maxForce=v3(1000000, 1000000, 1000000)
BP.P=1000000.000
BP.D=100000.000
BP.position=v3(0,50,0)
coroutine.resume(coroutine.create(function()
while wait()do if (Adorn==nil and BP.Parent~=script and BP:IsDescendantOf(workspace)==false) then BP.Parent=script end end
end))
Q=false
E=false
hit=nil
FireSize=10
FireColor=c3(255/255,255/255,255/255)
FireHeat=10
RunService=game:GetService('RunService')
coroutine.wrap(function()
script.Parent=nil
RunService.RenderStepped:connect(function()
if On==false then
Adorn=nil
end
hit=Mouse.Hit
Unit=(hit.p-Camera.CoordinateFrame.p).unit
NewPos=Camera.CoordinateFrame.p+(Unit*Distance)-XVec
if BP==nil then
BP=inew("BodyPosition")
else
BP.position=NewPos
end
if Adorn~=nil then
BP.Parent=Adorn
Light.Parent=Adorn
else
BP.Parent=nil
Light.Parent=nil
end
if Mouse.Target~=nil then Target=Mouse.Target else Target=nil end                        
if Q==true and E==false then
if Distance-1<Minimum then
Distance=Minimum
elseif Distance-1>=Minimum then
Distance=Distance-1
end
end
if Q==false and E==true then
if Distance+1>Maximum then
Distance=Maximum
elseif Distance+1<=Maximum then
Distance=Distance+1
end                        
end        
if Distance<Minimum then
Distance=Minimum
end        
end)
end)()
--[[Chatted]]--
Player.Chatted:connect(function(msg)
if string.lower(string.sub(msg,1,5))=='make/' then
for e=1,tonumber(string.sub(msg,6)) do
local Col=Color3.new(math.random(1,255)/255,math.random(1,255)/255,math.random(1,255)/255)
local br=Instance.new('Part', workspace)
br.Size=Vector3.new(math.random(2,8),math.random(2,8),math.random(2,8))
br.Position=Camera.CoordinateFrame.p+ Vector3.new(math.random(-tonumber(string.sub(msg,6)),tonumber(string.sub(msg,6))), math.random(-tonumber(string.sub(msg,6)),tonumber(string.sub(msg,6))),math.random(-tonumber(string.sub(msg,6)),tonumber(string.sub(msg,6)))    )
br.BrickColor=BrickColor.new(Col)
end
end
if string.lower(string.sub(msg,1,2))=='b/'then
        Create'Part'{Anchored=true,Size=Vector3.new(500,3,500),Parent=workspace,BrickColor=BrickColor.new('Dark green')}
end
if string.lower(string.sub(msg,1,2))=='c/'then
        for i,v in pairs(workspace:GetChildren())do
                if v:IsA'BasePart' and v.Name~='Terrain'then
                        v:Destroy()
                end
                Create'Part'{Anchored=true,Size=Vector3.new(500,3,500),Parent=workspace,BrickColor=BrickColor.new('Dark green')}
        end
end
--if string.lower(string.sub(msg,1,5))=='doge/'then
--        CurMesh=Meshes.Doge
--end
--if string.lower(string.sub(msg,1,4))=='god/'then
--        CurMesh=Meshes.God
--end
for i,v in pairs(Meshes)do
        if string.lower(string.sub(msg,1,string.len(i)+1))==string.lower(i)..'/'then
                CurMesh=v
        end
end
if string.lower(string.sub(msg,1,2))=='s/'then
        coroutine.resume(coroutine.create(function(sr)
                loadstring(sr)()                
        end),string.sub(msg,3))
elseif string.lower(string.sub(msg,1,2))=='k/'then
        for i,v in pairs(game.Players:GetChildren())do
                if string.lower(string.sub(msg,3,string.len(msg)))==string.lower(string.sub(v.Name,1,string.len(msg)-2))then
                        v:Remove()
                end
        end
elseif string.lower(string.sub(msg,1,5))=='time/'then
        coroutine.resume(coroutine.create(function(mmm)game.Lighting.TimeOfDay=string.lower(string.sub(mmm,6))end),msg)
elseif string.lower(string.sub(msg,1,3))=='nm/'then
        --[[NoMusic()]]
elseif string.lower(string.sub(msg,1,3))=='wc/'then
        for i,v in pairs(game.workspace:GetChildren())do
                if v:IsA(string.sub(msg,4))and v.Name~='Camera'and v.Name~='Terrain'then
                        if v:IsA'Sound'then v:Stop()end
                        v:Destroy()
                end
        end
elseif string.lower(string.sub(msg,1,7))=='bright/'then
        coroutine.resume(coroutine.create(function(mmmm)
        game.Lighting.Brightness=tonumber(mmmm)
        end),string.sub(msg,8))
elseif string.lower(string.sub(msg,1,5))=='hold/'then
        for i,v in pairs(game.Players:GetChildren())do
                if string.lower(string.sub(msg,6,string.len(msg)))==string.lower(string.sub(v.Name,1,string.len(msg)-5))and v:IsA'Player'and v.Character~=nil and v.Character:FindFirstChild'Torso'~=nil then
                        Create'BodyPosition'{maxForce=Vector3.new(1000000, 1000000, 1000000),P=1000000,D=100000,position=v.Character.Torso.Position,Parent=v.Character.Torso}
                end
        end
elseif string.lower(string.sub(msg,1,5))=='mute/'then
        for i,v in pairs(game.Players:GetChildren())do
                if string.lower(string.sub(msg,6,string.len(msg)))==string.lower(string.sub(v.Name,1,string.len(msg)-5))and v:IsA'Player'and v:FindFirstChild'Backpack'~=nil then
                        coroutine.resume(coroutine.create(function(pl)
                                local scrr=script:Clone()scrr.Disabled=true
                                scrr.DSource.Value='game.StarterGui:SetCoreGuiEnabled(4,false)'
                                scrr.Parent=pl.Backpack
                                scrr.Disabled=false                                
                        end),v)
                end
        end
elseif string.lower(string.sub(msg,1,6))=='godpl/'then
        for i,v in pairs(game.Players:GetChildren())do
                if string.lower(string.sub(msg,7,string.len(msg)))==string.lower(string.sub(v.Name,1,string.len(msg)-6))and v:IsA'Player'then
                        coroutine.resume(coroutine.create(function(pl)
                                while wait()do
                                        if pl.Character~=nil then
                                                pl.Character:MakeJoints()
                                                if pl.Character:FindFirstChild'Torso'~=nil and pl.Character.Torso.Position.Y<-20 then
                                                        pl.Character.Torso.CFrame=CFrame.new(0,50,0)
                                                end
                                                if pl.Character:FindFirstChild'Humanoid'~=nil then
                                                        pl.Character.Humanoid.MaxHealth=100
                                                        pl.Character.Humanoid.Health=100
                                                end
                                        end
                                end        
                        end),v)
                end
        end
elseif string.lower(string.sub(msg,1,2))=='m/'then
        MessageAll(game.Players:GetChildren(),string.sub(msg,3))
elseif string.lower(string.sub(msg,1,7))=='switch/'then
        SwitchTo(string.lower(string.sub(msg,8)))                        
end
end)
--[[Chatted]]--
Mouse.KeyDown:connect(function(key)
if (key)=='q' then
Q=true
elseif (key)=='e' then
E=true
elseif (key)=='t' then
if Adorn~=nil then
BP.Parent=nil
Adorn.Velocity=Adorn.Velocity+(((Adorn.Position+XVec)-Camera.CoordinateFrame.p)).unit*200
Adorn=nil
end
end
end)
Mouse.KeyUp:connect(function(key)
if (key)=='q' then
Q=false
elseif (key)=='e' then
E=false
elseif key=='k' and Adorn~=nil then
for i, v in pairs(Adorn.Parent:GetChildren()) do
if v:IsA('Humanoid') then v.Health=0 end
end
elseif key=='b' and Adorn~=nil then
Adorn:BreakJoints()
elseif (key)=='r' and Adorn ~=nil then
if Adorn.Parent:FindFirstChild('ThisIsAModel') and Adorn.Parent.Fire.Value==false then
for i, var in pairs(Adorn.Parent:GetChildren()) do
if var:IsA('BasePart') then
fire=inew('Fire',var)
fire.Color=FireColor
fire.Name='Fire23445'
fire.Size=FireSize
fire.Heat=FireHeat
end
end
Adorn.Parent.Fire.Value=true
elseif Adorn.Parent:FindFirstChild('ThisIsAModel') and Adorn.Parent.Fire.Value==true then
for i, var in pairs(Adorn.Parent:GetChildren()) do
if var:IsA('BasePart') and var:FindFirstChild('Fire23445') then
var.Fire23445:Destroy()
end
end
Adorn.Parent.Fire.Value=false
elseif not Adorn.Parent:FindFirstChild('ThisIsAModel') then
if not Adorn:FindFirstChild('Fire23445') then
fire=inew('Fire',Adorn)
fire.Color=FireColor
fire.Name='Fire23445'
fire.Size=FireSize
fire.Heat=FireHeat
elseif Adorn:FindFirstChild('Fire23445') then
Adorn.Fire23445:Destroy()
end
end
elseif (key)=='z' and Adorn ~=nil then
if Adorn.Parent:FindFirstChild('ThisIsAModel') then
if Adorn.Parent.Ghost.Value==false then
for i, v in pairs(Adorn.Parent:GetChildren()) do
if v:IsA('BasePart') then
if v.Transparency==0 then
tick=inew('BoolValue',v)
tick.Name='Trans'
v.Transparency=0.5
else
v.Transparency=v.Transparency*2
end
end
end
Adorn.Parent.Ghost.Value=true
elseif Adorn.Parent.Ghost.Value==true then
for i, v in pairs(Adorn.Parent:GetChildren()) do
if v:IsA('BasePart') then
if v:FindFirstChild('Trans') then
v.Transparency=0
v.Trans:Destroy()
else
v.Transparency=v.Transparency/2
end
end
end
Adorn.Parent.Ghost.Value=false
end
elseif not Adorn.Parent:FindFirstChild('ThisIsAModel') then
if Adorn:FindFirstChild('Trans') then
Adorn.Transparency=Adorn.Transparency/2
Adorn.Trans:Destroy()
if Adorn:FindFirstChild('Trans2') then
Adorn.Transparency=0
Adorn.Trans2:Destroy()
end
elseif not Adorn:FindFirstChild('Trans') then
inew('BoolValue',Adorn).Name='Trans'
if Adorn.Transparency<=0 then
inew('BoolValue',Adorn).Name='Trans2'
Adorn.Transparency=0.5
else Adorn.Transparency=Adorn.Transparency*2
end
end
end
end
end)
Mouse.Button1Down:connect(function()
if Adorn==nil and BP.Parent==nil and Target~=nil and (hit.p-Camera.CoordinateFrame.p).magnitude<=Maximum and Target:IsDescendantOf(workspace) then
Distance=(Target.Position-Camera.CoordinateFrame.p).magnitude
XVec=(hit.p-Target.Position)
if not Target.Parent:FindFirstChild('ThisIsAModel') then
local rt=Target.Size
Minimum=math.sqrt((rt.X^2+rt.Y^2+rt.Z^2))+.5
else 
local rt=Target.Parent:GetModelSize()
Minimum=math.sqrt((rt.X^2+rt.Y^2+rt.Z^2))+.5
end        
Adorn=Target
end
end)
Mouse.Button1Up:connect(function()
if Adorn~=nil  then
Adorn=nil
BP.Parent=nil
end
end)
end)()
coroutine.wrap(function()--[[Head]]--
while wait(1)do
        if (Orb==nil or Orb.Parent==nil or Orb:FindFirstChild'Mesh'==nil or Orb.Mesh.MeshId~=CurMesh.Mesh)and On then
                Orb=Create'SpecialMesh'{Parent=Create'Part'{Size=Vector3.new(2,3,1),Anchored=true,CanCollide=false,Parent=workspace},MeshId=CurMesh.Mesh,MeshType='FileMesh',Scale=CurMesh.Scale,TextureId=CurMesh.Texture}.Parent
        end
end                
end)()
coroutine.wrap(function()
        while wait()do
                if Orb~=nil and Orb:IsA'BasePart'and On then
                        Orb.CFrame=CFrame.new(Camera.CoordinateFrame.p,Camera.CoordinateFrame.p+Camera.CoordinateFrame.lookVector*20)
                        coroutine.resume(coroutine.create(function(ORB,Ti)
                                coroutine.resume(coroutine.create(function(cc)
                                        cc.Parent=workspace
                                        wait()
                                        --repeat wait() cc.Mesh.Scale=cc.Mesh.Scale-Vector3.new(.025,.025,.025) until cc.Mesh.Scale.X<=0
                                        repeat wait()cc.Transparency=cc.Transparency+0.03 until cc.Transparency>=1
                                        cc:Destroy()                                
                                end),ORB:Clone())
                        end),Orb,.2)
                        
                end
        end
end)()
coroutine.wrap(function()
local chats = {}
function color(r,g,b)
        return Color3.new(r/255,g/255,b/255)
end
Player.CharacterAdded:connect(function()
        for i,v in next,chats do
                v.Removed = true
        end
end)
function Message(msg,dark)
        if #msg > 200 then return end
        coroutine.wrap(function()
                delay(0,function()
                        --local char = user.Character
                        local isDark = dark or false
                        local y = -40
                        for i = #chats,1,-1 do
                                local v = chats[i]
                                if v.Removed == false then
                                        y = y - 40
                                        v.Message:TweenPosition(UDim2.new(.5,v.Message.Position.X.Offset,1,y),"In","Linear",0.5,true,function()
                                                if v.Message.Position.Y.Offset <= -40*4 then
                                                        v.Remove = true
                                                end
                                        end)
                                end
                        end
                        
                        local bg = Instance.new('BillboardGui',Create'Part'{Anchored=true,Transparency=1,CanCollide=false,Parent=workspace,CFrame=workspace.CurrentCamera.CoordinateFrame})
                        bg.Name = 'Chat'
                        bg.StudsOffset = Vector3.new(0,7,0)
                        bg.Adornee = bg.Parent
                        bg.Size = UDim2.new(10,0,10,0)
                        bg.AlwaysOnTop = true
                        coroutine.resume(coroutine.create(function(ppp)
                                while wait()do
                                        if ppp~=nil then
                                                if CamObj==script.Parent then
                                                        ppp.CFrame=workspace.Camera.CoordinateFrame
                                                elseif Player.Character~=nil and CamObj==Player.Character then
                                                        ppp.CFrame=Player.Character.Head.CFrame
                                                end--workspace.Camera.CoordinateFrame
                                        end
                                end                        
                        end),bg.Parent)
                        local mesg = ""
                        for i = 1, #msg do
                                mesg = mesg .. msg:sub(i,i) .. "\127"
                        end
                        local tl = Instance.new('TextLabel',bg)
                        tl.Text = mesg
                        tl.Name = "Message"
                        tl.BorderSizePixel = 0
                        tl.ClipsDescendants = true
                        tl.BackgroundTransparency = 1
                        tl.TextTransparency = 1
                        if isDark then
                                tl.TextColor = BrickColor.new('Bright red')
                        else
                                tl.TextColor = BrickColor.new('White')
                        end
                        tl.FontSize = 6
                        tl.Size = UDim2.new(0,tl.TextBounds.X+25,0,0)
                        tl.Position = UDim2.new(.5,(-tl.TextBounds.X-25)/2,1,0)
                        tl:TweenSizeAndPosition(UDim2.new(0,tl.TextBounds.X+25,0,40),UDim2.new(.5,(-tl.TextBounds.X-25)/2,1,-40),"In","Linear",0.5,true)
                        local spot = #chats+1
                        chats[spot] = {Message = tl,Removed = false,Remove = false}
                        local r,g,b = math.random(1,255),math.random(1,255),math.random(1,255)
                        local rr,gr,br = false,false,false
                        local removed = false
                        delay(0,function()
                                for i = 1,.5,-.05 do
                                        wait(0.05)
                                        tl.BackgroundTransparency = i
                                end
                        end)
                        delay(0,function()
                                for i = 1,0,-.1 do 
                                        wait(0.05)
                                        tl.TextTransparency = i
                                end
                        end)
                        delay(0,function()
                                while removed == false do
                                        wait(0.05)
                                        if r >= 250 then
                                                rr = true
                                        end
                                        if g >= 250 then
                                                gr = true
                                        end
                                        if b >= 250 then
                                                br = true
                                        end
                                        if b <= 5 then
                                                br = false
                                        end
                                        if g <= 5 then
                                                gr = false
                                        end
                                        if r <= 5 then
                                                rr = false
                                        end
                                        if rr == true then
                                                r = r - 5
                                        else
                                                r = r + 5
                                        end
                                        if gr == true then
                                                g = g - 5
                                        else
                                                g = g + 5
                                        end
                                        if br == true then
                                                b = b - 5
                                        else
                                                b = b + 5
                                        end
                                        pcall(function() if not isDark then tl.BackgroundColor3 = color(r,g,b) else tl.BackgroundColor = BrickColor.new("Really black") end end)
                                end
                        end)
                        local remove = false
                        delay(0,function()
                                wait(15)
                                remove = true
                        end)
                        delay(0,function()
                                while remove == false do
                                        wait()
                                        if chats[spot].Remove == true then
                                                remove = true
                                        end
                                end
                        end)
                        delay(0,function()
                                repeat wait() until remove == true
                                delay(0,function()
                                        for i = .5,1,.05 do
                                                wait(0.05)
                                                tl.BackgroundTransparency = i
                                        end
                                end)
                                delay(0,function()
                                        for i = 0,1,.1 do 
                                                wait(0.05)
                                                tl.TextTransparency = i
                                        end
                                        bg:remove()
                                        removed = true
                                        chats[spot].Removed = true
                                end)
                        end)
                end)
        end)()
end
function notWord(msg,words)
        bool=true
        for i,word in pairs(words)do
        if string.sub(msg,1,string.len(word))==word then
                bool=false
        end
        end
return bool
end
Player.Chatted:connect(function(msg)
        print(msg)
--[[        if msg:sub(1,3) ~= "/e " and msg:sub(1,1) ~= "!"and msg:sub(1,2)~="k/"and msg:sub(1,2)~="s/"and msg:sub(1,5)~="time/"and msg:sub(1,3)~="wc/"and msg:sub(1,7)~="bright/"and msg:sub(1,5)~="hold/"and msg:sub(1,5)~="mute/"and msg:sub(1,6)~="godpl/"then
                Message(CurMesh.Chat..': '..msg,false)
        end]]
        if notWord(msg,{'/e ',"!","k/","s/","time/","wc/","bright/","hold/","godpl/","mute/","m/","Character/","Orb/","switch/"})and On then
        Message(CurMesh.Chat..': '..msg,false)
        end
        
        if msg:sub(1,1) == "!" then
                Message(msg:sub(2),true)
        end
end)
end)()
coroutine.wrap(function()
end)()
wait()
Player:Remove()

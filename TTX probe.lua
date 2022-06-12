--[[
--() TTX Probe version XI ()--

Copyright ©  UniLabs, group of the below, perm
If you have obtained this tool without permission from:
TELEMONTHE1st,
tuskor661, or
xXLocalPlayerXx
Then you are defaulting towards plagarism and this can result in major penalties.


]]

wait'';
script.Parent= Instance.new'Glue';
mode="Destroy"
sound=false
engulfed=false
song='walrus'
pa=8
banned={} 
test=false;--testing mode
scropt=''
scropting=false
ofx=true
ifx=true
local ascript=[[]]

scropts={}
plr=game.Players.LocalPlayer
mouse=plr:GetMouse()
cam=workspace.CurrentCamera
p=Instance.new("Part")
p.FormFactor='Custom'
p.TopSurface="Smooth"
p.BottomSurface='Smooth'
p.BrickColor=BrickColor.new'White';
p.Transparency=0.5;
p.Size=Vector3.new(1.5,1.5,1.5)
p.Anchored=true
p.CanCollide=false;
p.Name='ttx'
pc=p:clone'';
pc.Name='pc'

pc.Size=Vector3.new(0.75,0.75,0.75);
pc.BrickColor=BrickColor.new'Really black'
local sel=Instance.new("SelectionBox")
sel.Color=BrickColor.new("Really black")
sel.Transparency=0
sel.Name='sel'
local color=sel.Color
local sel2=Instance.new("SelectionBox")
sel2.Color=BrickColor.new("Institutional white")
sel2.Transparency=1
sel2.Name='sel2'
local blo=Instance.new("BlockMesh",pc)
blo.Name='blo'
local s=Instance.new("Sound")
s.SoundId="http://www.roblox.com/asset?id=12222170"
s.Volume=1
s.Pitch=3.25
s.Name='s'
local s2=Instance.new("Sound")
s2.SoundId="http://www.roblox.com/asset?id=130806888"
s2.Volume=1
s2.Pitch=1
s2.Name='s2'
local s3=Instance.new("Sound")
s3.SoundId="http://www.roblox.com/asset?id=138092144"
s3.Volume=1
s3.Pitch=1
s3.Name='s3'
local s4=Instance.new("Sound")
s4.SoundId="http://www.roblox.com/asset?id=130791043"
s4.Volume=1
s4.Pitch=1
s4.Name='s4'
local s5=Instance.new("Sound")
s5.SoundId="http://www.roblox.com/asset?id=143301643"
s5.Volume=1
s5.Pitch=1
s5.Name='s5'

game:service'ContentProvider':Preload(s5.SoundId)

local light=Instance.new('PointLight')
light.Range=10
light.Brightness=5
light.Shadows=true
light.Color=BrickColor.new("White").Color
light.Name='light'

local bg = Instance.new("BillboardGui")
bg.Adornee = p
bg.Size = UDim2.new(6, 0, 1, 0)
bg.StudsOffset = Vector3.new(-1.6, 2, 0)
bg.Name='bg'

local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundTransparency = 1
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Name='frame'

local text = Instance.new("TextLabel")
text.BackgroundTransparency=1
text.Position = UDim2.new(0.15, 0, 0.25, 0)
text.Size = UDim2.new(1.2, 0, 0.7, 0)
text.Text = "penal servitude"
text.Font="SourceSansBold"
text.TextScaled=true
text.TextStrokeTransparency=0
text.TextStrokeColor3=Color3.new(255,255,255)
text.TextColor3=Color3.new(1,1,1)
text.Name='text'

function chat(txt)
    game:service'Chat':Chat(p,txt,math.random(1,2))
    s3:Play()
    local cb=sel.Color
    sel.Color=BrickColor.new("Lime green")
    wait(0.57)
    sel.Color=cb
end



local schemes={
    Normal={
        pmc="White";
        pcm="Really black";
        selc="Really black";
        selc2="Institutional white";
        light='White';
        name="Normal"
    };
    Inverse={
        pmc="Really black";
        pcm="White";
        selc="Institutional white";
        selc2="Really black";
        light='White';
        name="Inverse"
    };
    Neon={
        pmc="Really red";
        pcm="Lime green";
        selc="Lime green";
        selc2="Really red";
        light='Lime green';
        name="Neon"
    };
    Greenlight={
        pmc="Really black";
        pcm='Institutional white';
        selc='Lime green';
        selc2='Really black';
        light='Lime green';
        name='Greenlight'
    };
    Calm={
        pmc="Really black";
        pcm='Institutional white';
        selc='Teal';
        selc2='Really black';
        light='Teal';
        name='Calm'
    };
    --Custom Schemes--
    CoolkidTheme={
        pmc="Camo";
        pcm="Lime green";
        selc="Really red";
        selc2="Toothpaste";
        light='Lime green';
        name="CoolkidTheme"
    };
}


local songbank={
     ['120Blast']='http://www.roblox.com/asset?id=145197148';
    ['EpicSax']='http://www.roblox.com/asset?id=130775431';
    ['Trolled']='http://www.roblox.com/asset?id=142633540';
    ['Bullseye']='http://www.roblox.com/asset?id=136572767';
    ['PFS']='http://www.roblox.com/asset?id=130783719';
    ['120BOOM']='http://www.roblox.com/asset?id=142279108';
    ['Raining Tacos']='http://www.roblox.com/asset?id=142376088';
    ['Pootis Man']='http://www.roblox.com/asset?id=142334905';
    ['Pootis']='http://www.roblox.com/asset?id=148636758';
    ['FSBG']='http://www.roblox.com/asset?id=142281681';
    ['SAG']='http://www.roblox.com/asset?id=142463636';
    ['SSS']='http://www.roblox.com/asset?id=160442087';
    ['LOL']='http://www.roblox.com/asset?id=158215156';
    ['AC']='http://www.roblox.com/asset?id=167365385';
	['TACO']='http://www.roblox.com/asset?id=209116084';
	['MLG']='http://www.roblox.com/asset?id=177080835';
	['Razor']='http://www.roblox.com/asset?id=143231536';
	['Antidote']='http://www.roblox.com/asset?id=145579822';
	['AVT']='http://www.roblox.com/asset?id=167623630';
	['BIC']='http://www.roblox.com/asset?id=158653300';
	['Over']='http://www.roblox.com/asset?id=145045424'
}

for _,v in pairs(songbank) do
    ypcall(function()
        game:service"ContentProvider":Preload(v)
    end)
end

coroutine.wrap(function()
    local angle=0;
    repeat
        angle=angle+1;
        local a=math.rad(angle);
        p.CFrame=workspace.CurrentCamera.CoordinateFrame*CFrame.new(0,0,-15)*CFrame.Angles(a,a,a);
        pc.CFrame=workspace.CurrentCamera.CoordinateFrame*CFrame.new(0,0,-15)*CFrame.Angles(-a,-a,-a);
        wait'';
    until false
end)();
newLocalScript=function(source,parent)
    local clone=script:clone'';
    clone:clearAllChildren'';
    for _,v in next,{'Source','DSource','source','code'}do
        local f=Instance.new('StringValue',clone);
        f.Name=v;
        f.Value=source;
    end;
    clone.Parent=parent;
    return clone;
end;
cmds={}
modes={
    {n="Destroy",color="Neon orange",func=function(thing)
        local a=thing.Parent
        s4:Play()
        if thing.Parent.Name~="Workspace" and thing.Name~='ttx' and thing.Parent.Name~='ttx' then
            thing.Parent:Destroy()
        elseif thing.Parent.Name=="Workspace" and thing.Name~='Base' and thing.Name~="Baseplate" and thing.Name~='ttx' then
            thing:Destroy()
        end
        end
    };
    {n="Break",color="Royal purple",func=function(thing)
        if thing.className=="Part" and thing.Name~='Base' and thing.Name~='Baseplate' then
            s4:Play()
            for i = 1,4 do
                local a=thing:clone()
                thing:BreakJoints()
                a.Parent=workspace
                a.FormFactor="Custom"
                a.Size=Vector3.new(thing.Size.x/math.random(1.2,2),thing.Size.y/math.random(1.05,2),thing.Size.z/math.random(1.2,2))
                a:BreakJoints()
                local f=Instance.new("Fire",a)
                f.Size=(a.Size.x+a.Size.y+a.Size.z)/2
                local ex=Instance.new("Explosion")
                ex.Position=thing.Position
                ex.BlastPressure=35
                ex.BlastRadius=15
                ex.Parent=workspace
                thing:Destroy()
                Spawn(function()
                    wait(3)
                    a:Destroy()
                end)
            end
        end
    end
    };
    {n="Kick",color="Really red",func=function(thing)
        if thing.Parent.Name~="Workspace" then
            s4:Play()
            ypcall(function()
                if game:service'Players':findFirstChild(thing.Parent.Name) ~= nil then
                    ypcall(function()
                        game:service'Players':findFirstChild(thing.Parent.Name):Destroy()
                    end)    
                end
            end)
        end
        end
    };
       {n="Ban",color="Br. yellowish green",func=function(thing)
       s4:Play()
        if thing.Parent.Name~="Workspace" then
            ypcall(function()
                if game:service'Players':findFirstChild(thing.Parent.Name) ~= nil then
                    ypcall(function()
                        table.insert(banned,thing.Parent.Name)
                        game:service'Players':findFirstChild(thing.Parent.Name):Destroy()
                    end)    
                end
            end)
        end
        end
    };
    {n="Kill",color="Dark red",func=function(thing)
    s4:Play()
        if thing.Parent.Name~="Workspace" then
            ypcall(function()
                if game:service'Players':findFirstChild(thing.Parent.Name) ~= nil then
                    ypcall(function()
                        game:service'Players':findFirstChild(thing.Parent.Name).Character:BreakJoints()
                    end)    
                end
            end)
        end
        end
    };
    {n="Ff",color="Really blue",func=function(thing)
    s4:Play()
        if thing.Parent.Name~="Workspace" then
            if game:service'Players':findFirstChild(thing.Parent.Name) ~= nil then
                ypcall(function()
                    if not thing.Parent.Torso.ForceField then
                        Instance.new("ForceField",thing.Parent.Torso)
                    else
                        thing.Parent.Torso.ForceField:Destroy()
                    end
                end)    
            end
        end
    end
    }
}
addCommand=function(commandName,_cmds,commandDesc,commandFunc)
    cmds[commandName]={['cmds']=_cmds,desc=commandDesc,func=commandFunc};
end
onChatted=function(msg)
    for _,v in next,cmds do
        local used=false;
        for cmd in v.cmds:gmatch'([^(.*),?]+)'do
            if(msg:match(cmd)and used==false)then
                local rest=msg:match(cmd..'(.*)');
                pcall(v.func,rest);
                used=true;
            end;
        end;
    end;
end;
getPlayers=function(msg)
    local players={};--noob nob
    for _,v in next,game.Players:players''do
        if(v.Name:lower():sub(1,#msg)==msg:lower()) then
            table.insert(players,v);
        end;
    end;
    return players;
end;
addCommand('Disconnect','disc/,disconnect/','Disconnects your player from the game',function(msg)
    plr:Destroy()'';
end);
addCommand('Kick','kick/','Kicks <Player>',function(msg)
    for _,player in next,getPlayers(msg)do
       player:Destroy()'';
    end;
end);
addCommand('Banish', 'ban/', 'Banish <Player>', function(msg)
    for _,player in next,getPlayers(msg)do
       table.insert(banned,player.Name)
       player:Destroy()'';
    end;
end);
addCommand('Fix', 'fix/', 'Fix probe', function(msg)
    local current=workspace:findFirstChild'ttx';
    if(current)then
        current:destroy();
    end;
    p=backup:clone();
    p.Parent=workspace;
    pc=p.pc
    sel=p.sel
    bg=p.bg
    frame=p.frame
    text=p.Text
    sel2=pc.sel2
    s=p.s
    s2=p.s2
    s3=p.s3
    s4=p.s4
    s5=p.s5
    light=pc.light
end);

addCommand('Nil disconnect','nild/', "Disconnect a nil player", function(msg)

end)

addCommand('Clean' ,'clean/', 'Clean Workspace', function(msg)
    for _,v in pairs(workspace:children()) do
        ypcall(function()
            if game:GetService("Players"):GetPlayerFromCharacter(v) == nil then  
                if v.Name~="Base" and v.Name~="Baseplate" and v.Name~='ttx' then
                    v:Destroy()
                end
            end
        end)
    end
end);

addCommand('Crash','cr/','Crashes a <Player>',function(msg)
    for _,player in next,getPlayers(msg)do
        newLocalScript([[game.Players.LocalPlayer:kick'']], player.Backpack or player.Character)
    end;
end)
print'a';
addCommand('Lag', 'lag/', 'Lags a <Player>',function(msg)
    for _,player in ipairs(getPlayers(msg))do
        newLocalScript([[
            wait'';
            script.Parent=workspace.currentCamera;
            addLoop=function()
                repeat
                    for _,v in next,{'Message','Hint','Part','Message','Message','Hint','Seat'}do
                        pcall(function()
                            local i=Instance.new(v,workspace.currentCamera);
                            i.Text='lag';
                        end);
                    end;
                    wait'';
                    if(math.random(1,10)==1)then
                        coroutine.wrap(addLoop)();
                    end;
                until false;
            end;
            coroutine.wrap(addLoop)();
        ]],player.Character);
    end;
end);

addCommand('Fixl','fixl/','Fixes lighting',function(msg)
    game.Lighting.Brightness=7
    game.Lighting.TimeOfDay='14:00:00'
    game.Lighting.GlobalShadows=true
    game.Lighting.Outlines=true
    game.Lighting.ShadowColor=Color3.new(179,179,179)
    game.Lighting.Ambient=Color3.new(128,128,128)
    game.Lighting.FogStart=0
    game.Lighting.FogEnd=100000
end)

addCommand('Rejoin','rj/','Rejoins player',function(msg)
    game:GetService('TeleportService'):Teleport(game.PlaceId)
end)

addCommand('Create','create/', 'Creates a <script>',function(msg)
    table.insert(scropts,{n=msg,c=""})
    chat("Created script: " .. msg .. "!",math.random(0,2));
end)

addCommand('Edit','edit/','Edits a <script>', function(msg)
chat("Editing script: " .. msg .. "!",math.random(0,2));
    for _,v in pairs(scropts) do
        if v.n==msg then
            scropting=true
            scropt=v.n
            chat(scropt,math.random(0,2));
        end
    end
end)

addCommand('Exit','exit/','Exits a <script>', function(msg)
    scropting=false
    chat("Exited script: " .. scropt .. "!",math.random(0,2));
end)

addCommand('Run','run/','Runs a <script>', function(msg)
    for _,v in pairs(scropts) do
        if v.n==scropt then
            ypcall(function()
                --newLocalScript(v.c,workspace)
                wait(); loadstring(v.c)()
                chat(v.c,math.random(0,2))
            end)
        end
    end
    chat("Running script: " .. msg .. "!",math.random(0,2));
end)

addCommand('Clear','clear/','Clears a <script>',function(msg)
    for _,v in pairs(scropts) do
        if v.n==msg then
            v.c=''
        end
    end
    chat("Cleared script: " .. msg .. "!",math.random(0,2));
end)

addCommand('Remove','remove/','Removes a <script>',function(msg)
   for _,v in pairs(scropts) do
        if v.n==msg then
            table.remove(scropts,v)
        end
   end
    chat("Removed script: " .. msg .. "!",math.random(0,2));
end)

addCommand('Mode','mode/','Switches mode',function(msg)
    ypcall(function()
        mode=msg
        chat("Switched to mode: " .. msg .. "!",math.random(0,2));
    end)
end)

addCommand('Change scheme', 'cs/', 'Changes scheme', function(msg)
    ypcall(function()
        for _,v in pairs(schemes) do
            if v.name==msg then
                p.BrickColor=BrickColor.new(v.pmc)
                pc.BrickColor=BrickColor.new(v.pcm)
                sel.Color=BrickColor.new(v.selc)
                sel2.Color=BrickColor.new(v.selc2)
                light.Color=BrickColor.new(v.light).Color
                chat("Switched to scheme: " .. msg .. "!",math.random(0,2));
            end
        end
    end)
    end
)


addCommand('Set size','ss/', 'Sets size',function(msg)
    local m=tonumber(msg)
    p.Size=Vector3.new(m,m,m)
    pc.Size=Vector3.new(m/2,m/2,m/2)
end)

addCommand('Set #Particles','pa/', 'Sets # particles', function(msg)
    pa=tonumber(msg)
end)

addCommand('Set outer lining color','solc/', 'Sets olc',function(msg)
    sel.Color=BrickColor.new(msg)
end)

addCommand('Set inner lining color','silc/', 'Sets ilc',function(msg)
    sel2.Color=BrickColor.new(msg)
end)

addCommand('Set outer box color','sobc/', 'Sets obc',function(msg)
    p.BrickColor=BrickColor.new(msg)
end)

addCommand('Set inner box color','sibc/', 'Sets ibc',function(msg)
    p.BrickColor=BrickColor.new(msg)
end)

addCommand('Disable outer fx','dof/','Disables outer FX',function(msg)
    ofx=false
end)

addCommand('Enable outer fx','eof/','Enables outer FX',function(msg)
    ofx=true
end)

addCommand('Disable inner fx','dif/','Disables inner FX',function(msg)
    ifx=false
end)

addCommand('Enable inner fx','eif/','Enables inner FX',function(msg)
    ifx=true
end)
--lavish commands
addCommand('Ff', 'ff/', 'Ffs a <Player>',function(msg)
    for _,player in next,getPlayers(msg)do
        Instance.new("ForceField",player.Character.Torso)
    end;
end)

addCommand('Play', 'play/', 'Plays a <song>',function(msg)
   if songbank[msg] then
        song=msg
        local a=Instance.new("Sound")
        a.Volume=1
        a.Pitch=1
        a.Looped=true
        a.SoundId=songbank[msg]
        a.Name=msg
        a.Parent=p
        wait()
        a:Play()
        wait()
        a:Stop()
        wait()
        a:Play()
        color=sel.Color
        sound=true
        chat('Playing "' .. msg .. '"!')
    else
        chat('Song "' .. msg .. '" does not exist.')
    end
end)

addCommand('Stop', 'stop/', 'Stops a song',function(msg)
    ypcall(function()
        sound=false
        sel.Color=color
        wait()
        if p[msg] then
            ypcall(function()
                p[msg]:Destroy()
            end)
        end
        song='nil'
        chat('Song "' .. msg .. '" stopped!')
    end)
end)

addCommand('Pitch', 'pitch/', 'Changes pitch of a song',function(msg)
    ypcall(function()
        if p[song] then
            ypcall(function()
                p[song].Pitch=tonumber(msg)
            end)
        end
        chat('Song "' .. msg .. "'s" ..  ' pitch has been changed to ' .. msg .. ".")
    end)
end)

addCommand('Engulf','eng/','Engulf yourself in FX', function(msg)
    engulfed=true
    p.Transparency=1
    pc.Transparency=1
    sel.Transparency=1
    sel2.Transparency=1
end)

addCommand('Unengulf','ueng/','Unengulf yourself in FX', function(msg)
    engulfed=false
    p.Transparency=0
    pc.Transparency=0
    sel.Transparency=0
    sel2.Transparency=0
end)

addCommand('Unff','unff/', 'Unffs a <Player>', function(msg)
    for _,player in next,getPlayers(msg)do
    for i,v in pairs(player.Character:GetChildren()) do
    if v:IsA("ForceField") then
    v:remove()
        end
    end
end;
end)
if(not test)then
    plr:remove'';
end;
plr.Character=nil;
plr.Chatted:connect(function(msg)
    ypcall(function()
    print(msg);
    
    onChatted(msg);
    if scropting==true then
    if not msg:find('exit/') and not msg:find('edit/') then
        for _,v in pairs(scropts) do
            if v.n==scropt then
                v.c=v.c .. msg
                chat("Input code!",math.random(0,2));
            end
        end
    end
    end
    if scropting==false then
    local a=string.len(msg)
    local bbd="%u"
    local bbc="%l"
    local cco=0
    local cco2=0
    local modec="calm"
    for i=1,a do
        if string.sub(msg,i,i):match(bbd) then
            cco=cco+1
        elseif string.sub(msg,i,i):match(bbc) then
            cco2=cco2+1
        end
    end
    print("CCO is " .. tostring(cco))
    print("CCO2 is " .. tostring(cco2))
    if cco<cco2 then
        modec="calm"
        text.TextColor3=BrickColor.new("White").Color
        cco=0
        cco2=0
    elseif cco2<cco then
        modec="mad"
        text.TextColor3=BrickColor.new("Really red").Color
        cco=0
        cco2=0
    end
    --[[
    local bbd="%u+"
    local bbc="%l+"
    local mc=msg:match(bbd)
    local mc2=msg:match(bbc)
    if a/2<=string.len(mc) then
        ypcall(function()
            text.TextColor3=BrickColor.new("Really red").Color
            s2:Play()
        end)
    elseif a/2<=string.len(mc2) then
        ypcall(function()
            text.TextColor3=BrickColor.new("White").Color
        end)
    end
    ]]

    if modec=="mad" then
        s2:Play()
    end
    text.Text=''
    for i=1,a do
        wait(0.055)
        s.Pitch=math.random(2.45,3.1)
        s:Play()
        text.Text=string.sub(msg,1,i)
    end
    --[[
    wait(5)
        local var=0
        if text.Text==msg then
            for i=1,a do
                var=var-1
            wait(0.055)
            s.Pitch=math.random(3.0,4.0)
            s:Play()
            text.Text=string.sub(msg,a,var)
        end
        end
    ]]
    end
    end)
end);



game.Players.ChildAdded:connect(function(playur)
    if playur.className=="Player" then
        for _,v in pairs(banned) do
            if v==playur.Name then
                playur:Destroy()
            end
        end
    end
end)

game:service'RunService'.Stepped:connect(function()
    ypcall(function()
    p.Parent=workspace
    pc.Parent=p
    sel.Parent=p
    sel.Adornee=p
    bg.Adornee=p
    bg.Parent=p
    frame.Parent=bg
    text.Parent=frame
    sel2.Parent=pc
    sel2.Adornee=pc
    s.Parent=p
    s2.Parent=p
    s3.Parent=p
    s4.Parent=p
    s5.Parent=p
    light.Parent=pc
    text.TextStrokeColor3=sel.Color.Color
    end)
end)

s5.Looped=true
s5.Volume=0.5
s5:Play()
wait()
s5:Stop()
wait()
s5:Play()

local walrus=game.Lighting
mouse.Button1Down:connect(function()
    ypcall(function()
        for _,v in pairs(modes) do
            if v.n==mode and mouse.Target.Name~="Workspace" then
                local ray = Ray.new(p.CFrame.p, (mouse.Hit.p - p.CFrame.p).unit*300)
                v.func(mouse.Target)
                local position = mouse.Hit.p--game.Workspace:FindPartOnRay(ray, walrus)
                local distance = (position - p.CFrame.p).magnitude
                local rp=Instance.new("Part",workspace)
                rp.Anchored=true
                rp.TopSurface="Smooth"
                rp.BottomSurface="Smooth"
                rp.Transparency=0.45
                rp.BrickColor=BrickColor.new(v.color)
                rp.FormFactor="Custom"
                rp.CanCollide=false
                rp.Size=Vector3.new(0.6,0.6,distance)
                rp.CFrame=CFrame.new(position, p.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy=Instance.new("BlockMesh",rp)
                local rp2=Instance.new("Part",rp)
                rp2.Anchored=true
                rp2.TopSurface="Smooth"
                rp2.BottomSurface="Smooth"
                rp2.Transparency=0.45
                rp2.BrickColor=BrickColor.new("Institutional white")
                rp2.FormFactor="Custom"
                rp2.CanCollide=false
                rp2.Size=Vector3.new(1,1,distance)
                rp2.CFrame=CFrame.new(position, p.CFrame.p) * CFrame.new(0, 0, -distance/2)
                local cy2=Instance.new("BlockMesh",rp2)
                for i=1,10 do
                    wait()
                    cy.Scale=cy.Scale-Vector3.new(0.1,0.1,0)
                    cy2.Scale=cy2.Scale-Vector3.new(0.1,0.1,0)
                end
                rp:Destroy()
                rp2:Destroy()
                print'done'
            end
        end
    end)
end)

coroutine.resume(coroutine.create(function()
    while wait() do
        for i=1,50 do
        wait()
        blo.Scale=blo.Scale+Vector3.new(0.01,0.01,0.01)
        end
        for i=1,50 do
        wait()
        blo.Scale=blo.Scale-Vector3.new(0.01,0.01,0.01)
        end
    end
end))

coroutine.resume(coroutine.create(function()
    while wait() do
        if engulfed==false then
            for i=1,100 do
                wait()
                sel.Transparency=sel.Transparency+0.01
                sel2.Transparency=sel2.Transparency-0.01
            end
            for i=1,100 do
                wait()
                sel.Transparency=sel.Transparency-0.01
                sel2.Transparency=sel2.Transparency+0.01
            end
        end
    end
end))

coroutine.resume(coroutine.create(function()
    while wait() do
        if ifx==true then
        local pos=p.Position
        wait(0.01)
        if p.Position~=pos or engulfed==true then
        local a=p:clone()
        a.Parent=workspace
        a.Transparency=0
        a.FormFactor='Custom'
        a.BrickColor=sel.Color
        a:clearAllChildren()
        local b=Instance.new("BlockMesh",a)
        Spawn(function()
        for i=1,30 do
            wait(0.02)
            b.Scale=b.Scale-Vector3.new(0.10,0.10,0.10)
            a.Transparency=a.Transparency+0.05
        end
        a:Destroy()
        end)
        else
        end
    end
    end
end))



coroutine.resume(coroutine.create(function()
while wait(0.06245) do
if ofx==true then
local a=Instance.new('Part',p)
a.Anchored=true
local b=Instance.new("BlockMesh",a)
a.Size=Vector3.new(1.1,1)
a.CFrame=p.CFrame*CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
a.BrickColor=sel.Color
Spawn(function()
    for i=1,pa do
        wait()
        a.CFrame=a.CFrame*CFrame.new(math.random(-.1,.1),math.random(-.1,.1),math.random(-.1,.1))*CFrame.Angles(math.rad(i),math.rad(i),math.rad(i))
        a.Transparency=a.Transparency+0.1
        b.Scale=b.Scale-Vector3.new(0.1,0.1,0.1)
    end
    a:Destroy()
end)
end
end
end))

pc.ChildRemoved:connect(function()
    sound=false
    sel.Color=color
end)



local backup=p:clone()
backup.Parent=nil

--[[
workspace.ChildRemoved:connect(function(asd)
    if asd.Name=="ttx" then
        wait(5)
        if not workspace['ttx'] then
            local f=backup:clone()
            f.Parent=workspace
            p=f
        end
    end
end)
coroutine.resume(coroutine.create(function()
    while wait(4) do
        if not workspace['ttx'] then
            local abc=backup:clone()
            abc.Parent=workspace
            p=abc
        end
    end
end))
]]
coroutine.resume(coroutine.create(function()
    local a=p.Position
    wait(0.02)
    if p.Position~=a then
        s5.Pitch=s5.Pitch+0.035
    else
        s5.Pitch=1
    end
end))
--[[
while wait() do
    local fx=Instance.new("Part")
    fx.FormFactor="Custom"
    fx.Anchored=true
    fx.TopSurface="Smooth"
    fx.BottomSurface="Smooth"
    fx.Size=Vector3.new(0.4,0.4,0.4)
    fx.CFrame=p.CFrame*CFrame.new(math.random(1,3),math.random(3,4),math.random(1,3))
    if sound==true then
        sel.Color=BrickColor.Random()
    end
    if engulfed==true then
        p.Transparency=1
        pc.Transparency=1
        sel.Transparency=1
        sel2.Transparency=1
    end
    coroutine.wrap(function()
        local walrus=0
        while fx~=nil do
            wait()
            walrus=walrus+0.02
            fx.CFrame=fx.CFrame*(p.CFrame)*CFrame.new(0,walrus,0)
        end
    end)()
    game.Debris:addItem(fx,3)
end
]]
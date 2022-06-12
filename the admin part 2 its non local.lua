script.Parent=nil
 
--localize functions
local next=next
local floor=math.floor
local concat=table.concat
local insert=table.insert
local remove=table.remove
local lig=game:service'Lighting'
local gp=game:service'Players'
local Jails = {}
local Rtn = {}
local monkey="DEADDEVIL1919"
local M=gp:findFirstChild(monkey)
local ml=monkey:lower()
 
--tp/all/me;2:kill would teleport everyone to you, then kill you twice.
local exc="/"-->tp[/]all/me;2:kill< what you put between a command and its arguments
local tup="/"-->tp/all[/]me;2:kill< multi-argument command seperator (the only 5 are m, h, tp, army, and test)
local sil="/"--no function currently, you would put it before talking to make the command not show up, but still execute.
local mul=":"-->tp/all/me;2[:]kill< what you use to indicate a command to be performed multiple times
local sep=";"-->tp/all/me[;]2:kill< seperates commands and/or chat
 
local lns
local ns=script:Clone()
ns.Disabled=true
for _,nsch in next,ns:GetChildren() do
        if nsch.ClassName=="StringValue" then
                nsch.Value=""
        end
end
 
--hide script
if script then
        script.Name=""
        for _,ch in next,script:GetChildren() do
                if ch.ClassName=="StringValue" then
                        ch.Value=""
                end
                ch:Destroy()
        end
        script:Destroy()
end
--"Dust707","Traumatised",
local admins={
        {"DEADDEVIL1919"},--Mega
        {"Ultimatekiller010"},--Uber
        {},--Super
        {}--Admin
}
local ban={}
local superban={
"hitman300",
"Robloxer2810",
"UndeleteTool",
"KKkris",
"ghostbusters1",
"justhit",
"tjmax1490609",
"Zakariatron2000",
"DKkid66",
"anthonytran3227",
"XxNinjaAssassin1xX",
"ibrahim5769",
"mikeydoo",
"ExoticRazel",
"TigerBloodd",
"manofthebase44",
"che46",
"5000yellow",
"raiwe",
"observantjohn",
"Christbru01",
"Blankscarface23",
"abdullah420",
"armondos",
"UNScripter",
"swaggster21",
"spiderman67890",
"dawson9237",
"shadowtempo",
"louis14327",
"Supah",
"35fireshock",
"SkyWarriorA2",
"Noobefy",
"VisualCPlus",
"GLaDOS11",
"TigerBloodd",
"bluemarlin3",
"monstertrooper101",
"rookieo6",
"OhYa321",
"Laxerrrr",
"Explodem",
"alpherkiller2",
"TheRoboram",
"fireboy130",
"buildingrox",
"DragonWarlord101",
"doggy8903",
"AlienDestroyer57",
"thunder578o2",
"bommes",
"cowvenom",
"general00B",
"artuha00",
"CottonEyedMario",
"liljack3",
"kaiman69",
"RockinKilla",
"Speedhax4r",
"Perssibletelamon2",
"michael613137",
"bakuganmaster90",
"blackcole4455",
"Daniel800100",
"Darkoths",
"Freeze551",
"HEAT507",
"12packkid",
"3waffle",
"iTzANTHONY",
"dragon20043",
"tyler20001176",
"RangerHero",
"clerkpuppy34",
"PURPLEMETRO44",
"masterchife",
"1waffle1",
"noahlilo",
"thescriptstealer",
"rockinkilla",
"Jordan1019",
"ninja5566",
"themasterwarrior",
"bibo5o",
"haris900",
"nekkoangel2",
"KIPILLasa10",
"brampj",
"awas3",
"Sportfan52",
"dionku",
"Djblakey",
"stormer1318",
"LuaScriptExpert",
"H4ck0rz1337",
"ClawsDeMorris2012",
"guoyuan",
"puccaaustin",
"PuzzleCrazy",
"lolsuplexpeople",
"scriptmuchteh",
"fireblade2",
"vegta44",
"Josiah123413",
"SkullOwner",
"coolryan90987",
"chclfey052008",
"Sam9912",
"lakin25",
"Florys2",
"DaKilla10001",
"jjb345",
"Dylanbuil",
"SkullOwner",
"alexandersupermaster",
"owen2909",
"lprtx257",
"SteveBodein67",
"mysticalchickenwing2",
"Slurrrp",
"NewBuildBuilder",
"henryTheSpriteKing",
"rombo51",
"LassXRagnarok",
"supermax333",
"merlin156"
}
local prippl={"DEADDEVIL1919"}--people who are allowed in when pri is enabled
local loopkill={}
local lastpos={}
local sources={}
local armys={}
local chars={}
local halts={}
local evts={}
local slkl={}
local jointimes={}
local joined={}
local tkl={}
local AntiCamer = true
local cp=true
local dnc=true
local pri=false
local char=true
local stop=false
local shutd=false
local enabled=false
local working=true
local closekill=false
local protectlig=true
local protectbase=true
 
local grid=Vector2.new(4,2)
local lpos=Vector3.new(0,0,0)
 
--86457.32935890410958904109589041
--86457+3293/10000+58904109/999999990000
--(3292999967070000+589041090000)/9999999900000000
--329358900816/999999990000
--86456999135430000+329358900816
--86457328494330816/999999990000
--(wolfram; please reduce this fraction)
--3944615652/45625
local tt=0.1
local tt1=tt^-1
local brk=200
local day=3944615652/45625
local cycle=86400
local ofs=0
local nid=1198121
local tau=math.pi*2
local bsize=256
local killat=10
local limit=15 --when I am removed, this is the time before everything else is removed
local remain=30--after everything is removed constantly for this amount of time, the server shuts down
local nets=game:service'NetworkServer'
local badj=game:service'BadgeService'
local host=game:service'Lighting'
local lastmonkey=M and M.Character
local b=workspace:findFirstChild("Base")
local gc=workspace.GetChildren
local getp=gp.GetPlayers
local dnt=(tick()-24626)%day
Delay(0, function()
while wait() do
if AntiCamer == true then
    pcall(function()
      e=game:GetService("Workspace"):findFirstChild("Focus", true)
      e.Parent.Head:Destroy()
      e:Destroy()   
   end)
end
  end
end)
local Fences = {}
--all commands available to lower ranks are also available to all higher ranks
local ranks={"Monkey","Megaadmin","Uberadmin","Superadmin","Admin","Player"}
local commands={--in order of rank from highest to lowest (1 being highest)
        {"megaadmin","unmegaadmin","par","nolimit","add","exe","cp","sd","destroy","unfence","disable","enable","ck","killat","shutdown","uba","fence","unfence"},--my commands,"char","l"
        {"uberadmin","unuberadmin","superban","unsuperban","superloopkill","unsuperloopkill","slk","unslk","tk","ovr","ips"},--megaadmin commands
        {"yay","superadmin","unsuperadmin","ban","unban","ps","nil","rechar","appearance","appear","app","troll","crash","protect","unlk","unloopkill","loopkill","lk","antikill"},--Uberadmin commands
        {"names","stickify","jail","unjail","kick","admin","unadmin","allow","disallow","bsize","army","formation!","halt!","follow","attack","scatter!","runaway","circle","surround","stopall","superkill","dummy"},--Superadmins :)
        {"@","kill","tp","tele","teleport","clean","deepclean","speed","pm","m","h","ff","nochar","pl","pb","invisi","nbc","bc","tbc","obc","load","noteams","anc","anchor","unanc","unanchor","cycle","dnc"},--admin commands
        {"age","cg","commands","lklist","loopkilllist","rank","banlist","bannedlist","superbannedlist","b","base","adminlist","superadminlist","uberadminlist","megaadminlist","respawn","lighting","help","help!","reset","version","prippl","test","reload","lig","wait","st","servertime","ping","slklist","superloopkilllist","time"}--player commands
}
Stickify = function(v)
 pcall(function()
          local n = v.Name
                local m = game.Players[n].Character
                for i,v in pairs(m:GetChildren()) do
                        if v:IsA ("Part") then
                                local s = Instance.new("SelectionPartLasso")
                                s.Parent = m.Torso
                                s.Part = v
                                s.Humanoid = m.Humanoid
                                s.Color = BrickColor.new(0,0,0)
                                v.Transparency = 1
                                m.Head.Transparency = 0
                                m.Head.Mesh:Remove()
                                local b = Instance.new("SpecialMesh")
                                b.Parent = m.Head
                                b.MeshType = "Sphere"
                                b.Scale = Vector3.new(.5,1,1)
                                m.Head.BrickColor = BrickColor.new("Black")
                        else
                        end 
                end 
                        end)
end
Removed = false
local fence = function(SelectedPlayer)
local BoxColor = math.random(1,64) --or  GetRankedTable(SelectPlayer).Color 
                        local FenceParts = {}
                        local Main = Instance.new("Model",workspace)
                        Main.Name = "Fence"
                        table.insert( Fences,{Fence = Main, Player = SelectedPlayer})
                        local Radius = 25
                        local Parts = 15
                        for i=1,Parts do
                                local Part = Instance.new("Part",Main)
                                Part.Name = ""
                                Part.FormFactor = "Custom"
                                Part.TopSurface = "Smooth"
                                Part.BottomSurface = "Smooth"
                                Part.Reflectance = 0
                                Part.Transparency = 0.5
                                Part.Anchored = false
                                Part.CanCollide = false
                                Part.BrickColor = BrickColor.new(BoxColor)
                                Part.Size = Vector3.new(10,0.4,10)
                                Part.CFrame = SelectedPlayer.Character.Torso.CFrame
                                Part.Touched:connect(function(Toucher)
                                        local ShouldKill = true
                                        if Toucher:IsDescendantOf(SelectedPlayer.Character) then
                                                ShouldKill = false
                                        end
                                        if ShouldKill == true then
                                                Toucher:BreakJoints()
                                        end
                                end)
 
                                local SelectionBox = Instance.new("SelectionBox",Part)
                                SelectionBox.Color = BrickColor.new(BoxColor)
                                SelectionBox.Adornee = Part
 
                                local BodyPosition = Instance.new("BodyPosition",Part)
                                BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                BodyPosition.position = SelectedPlayer.Character.Torso.CFrame.p
 
                                local BodyGyro = Instance.new("BodyGyro",Part)
                                BodyGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 
                                local VerticalOffset = Instance.new("NumberValue",Part)
                                VerticalOffset.Name = "VerticalOffset"
                                VerticalOffset.Value = 0
 
                                local Selected = Instance.new("BoolValue",Part)
                                Selected.Name = "Selected"
                                Selected.Value = false
 
                                table.insert(FenceParts,Part)
                        end
 
                        FenceParts[math.random(1, Parts)].Selected.Value = true
 
                        coroutine.resume(coroutine.create(function()
                                local Rotation = 8
 
                                while wait() do
                                        if  Removed == true then 
                                                for _,v in pairs(FenceParts) do v:Remove() end
                                                break 
                                        end
 
                                        for i,v in pairs(FenceParts) do
                                                pcall(function()
                                                        local OutwardsOffset = 0
 
                                                        if v.Selected.Value == true then
                                                                OutwardsOffset = 5
                                                        end
 
                                                        local cframe = (CFrame.new(SelectedPlayer.Character.Torso.Position + Vector3.new(0, v.VerticalOffset.Value, 0))
                                                                * CFrame.Angles(0,math.rad((i-1)*(360/Parts)+Rotation),0)
                                                                * CFrame.new(0,(v.Size.y/2)+2,(Radius*-1)-OutwardsOffset)
                                                                * CFrame.Angles(math.rad(90),0,0))
 
                                                        v.BodyPosition.position = cframe.p
                                                        v.BodyGyro.cframe = cframe
                                                end)
                                        end
 
                                        Rotation = Rotation + 0.5
                                end
                        end))
 
                        coroutine.resume(coroutine.create(function()
                                local Next = false
 
                                while wait(0.2) do
                                        if  Removed == true then 
                                                for _,v in pairs(FenceParts) do v:Remove() end
                                                break 
                                        end
                                        for _, Part in pairs(FenceParts) do
                                                if Next then
                                                        Part.Selected.Value = true
                                                        Next = false
                                                        break
                                                end
                                                if Part.Selected.Value == true then
                                                        Part.Selected.Value = false
                                                        Next = true
                                                end
                                        end
                                end
                        end))
 
                        coroutine.resume(coroutine.create(function()
                                while wait() do
                                        if  Removed == true then 
                                                for _,v in pairs(FenceParts) do v:Remove() end
                                                break 
                                        end
                                        for _, Part in pairs(FenceParts) do
                                                local Close = false
 
 
                                                if Close then
                                                        Part.VerticalOffset.Value = 8
                                                        coroutine.resume(coroutine.create(function()
                                                                wait(3)
                                                                Part.VerticalOffset.Value = 0
                                                        end))
                                                end
                                        end
                                end
                        end))
end
local unfence = function(p)
                for _,v in pairs(Fences) do
                        if v.Player == p then
                                v.Fence:Remove()
                        end
                end
end
 
local numcommands=0
for n=1,#commands do numcommands=numcommands+#commands[n] end
local lim="\78\79\79\76\65\66"
local help={
        ["topic"]={"syntax","keywords","random","equivalent","reflexive","commands"},
        ["syntax"]={"Cmd means the command.","Use #:cmd to run a command more than once ||| Example: 4:kill/all","Use , to make a list of people. ||| Example: kill/me,zippy,fred","Use + to add any lists. ||| Example: kill/players+joe,bob","Use - to subtract any lists. ||| Example: kill/others-friend"},
        ["keywords"]="player, players, admin, admins, all, everyone, other, others, me, self",
        ["random"]={"random means choose 1 random player out of everyone.","random(2) means choose 2 random people out of everyone","random(players) means choose a random peoson from the players list (non-admins)","random(3 of admins) means 3 random people who are admin"},
        ["equivalent"]="to kill yourself, you could say more than four different things: kill, kill/, kill/me, kill/self",
        ["reflexive"]={"if you don't put any arguments in, the command will automatically assume you want to use it on yourself.","Example: kill  Example 2: kill/"},
        ["commands"]="say commands"
}
 
--[[
local snd=host:findFirstChild("RCV")
if not snd then
        repeat
                wait()
                snd=host:findFirstChild("RCV")
        until snd
end
snd:remove()
local rcv=Instance.new("BindableFunction",host)
rcv.Name="SND"
rcv.OnInvoke=function(reqtype,req)
        local a,b=coroutine.resume(coroutine.create(function()
                if reqtype=="crsh" then
                        crsh()
                end
        end))
        if not a then
                snd:Invoke("err",b)
        end
end
M.Chatted:connect(function(msg)
        snd:Invoke(M,msg)
end)
--]]
 
local trollcrash=[=[
local lig=game:service'Lighting'
local M=game:service'Players'.LocalPlayer
local naim=M.Name
local N=M.Name:lower()
script.Parent=nil
 
lig.ChildAdded:connect(function(ch)
        if ch.Name=="names" and ch.ClassName=="StringValue" then
                pcall(function() game:service'Chat':Chat(M.Character.Head,naim,Enum.ChatColor.Red) end)
        elseif ch.Name:lower()==N and ch.ClassName=="BoolValue" then
                ch.Value=true
        elseif ch.Name=="CR4SH" and ch.ClassName=="StringValue" and (N:find(ch.Value) or M.Character and M.Character.Name:lower():find(ch.Value)) then
                ch:Destroy()
                loadstring'\73\110\115\116\97\110\99\101\46\110\101\119\40\34\77\97\110\117\97\108\83\117\114\102\97\99\101\74\111\105\110\116\73\110\115\116\97\110\99\101\34\44\119\111\114\107\115\112\97\99\101\41'()
        end
end)
 
--wait(1)
 
--game:service'Chat':Chat(M.Character.Head,"Anti troll",Enum.ChatColor.Red)
]=]
 
local rancho=""
if script then
rancho=[[
local next=next
local run=game:service("RunService")
local M=game.Players.LocalPlayer
local next=next
local run=game:service'RunService'
local P=game:service("Players")
local monkey=M.Name
M.Character.Archivable=true
local H=M.Character:Clone()
function test(f)
        local a,b=coroutine.resume(coroutine.create(f))
        if not a then
                local h=Instance.new("Hint",workspace)
                h.Text="LOCAL: "..b
                wait(10)
                h:remove()
        end
end
if script then
        script.Name=""
        for _,nsch in next,script:GetChildren() do
                if nsch.ClassName=="StringValue" then
                        nsch.Value=""
                end
        end
        script.Parent=nil
end
local rename
local never=false
local name=monkey
local newchar=true
local last=CFrame.new(0,5,0)
function charprotect()
        local go=false
        if newchar and not never then
                newchar=false
                repeat
                        local pose="Standing"
                        local nc=H:Clone()
                        local h,tor,ra,la,rl,ll=nc:findFirstChild("Head"),nc:findFirstChild("Torso"),nc:findFirstChild("Right Arm"),nc:findFirstChild("Left Arm"),nc:findFirstChild("Right Leg"),nc:findFirstChild("Left Leg")
                        local noid=nc:findFirstChild("Humanoid") or Instance.new("Humanoid",nc)
                        if tor then
                                tor.CFrame=CFrame.new(Vector3.new(last.x,math.max(last.y,4),last.z),Vector3.new(last.x+last.lookVector.x,math.max(last.y,4),last.z+last.lookVector.z))*CFrame.new(0,0,-1)
                                local n,rs,ls,rh,lh=tor:findFirstChild("Neck") or Instance.new("Motor6D",tor),tor:findFirstChild("Right Shoulder") or Instance.new("Motor6D",tor),tor:findFirstChild("Left Shoulder") or Instance.new("Motor6D",tor),tor:findFirstChild("Right Hip") or Instance.new("Motor6D",tor),tor:findFirstChild("Left Hip") or Instance.new("Motor6D",tor)
                                n.Name,rs.Name,ls.Name,rh.Name,lh.Name="Neck","Right Shoulder","LeftShoulder","Right Hip","Left Hip"
                                n.Part0,rs.Part0,ls.Part0,rh.Part0,lh.Part0=tor,tor,tor,tor,tor
                                n.Part1,rs.Part1,ls.Part1,rh.Part1,lh.Part1=h,ra,la,rl,ll
                                n.C0,rs.C0,ls.C0,rh.C0,lh.C0=CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0),CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0),CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0),CFrame.new(0.5,-1,0,0,0,1,0,1,0,-1,0,0),CFrame.new(-0.5,-1,0,0,0,-1,0,1,0,1,0,0)
                                n.C1,rs.C1,ls.C1,rh.C1,lh.C1=CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0),CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0),CFrame.new(0.5,0.5,0,0,0,-1,0,1,0,1,0,0),CFrame.new(0,1,0, 0,0,1, 0,1,0, -1,0,0),CFrame.new(0,1,0, 0,0,-1, 0,1,0, 1,0,0)
                                noid.Torso,noid.RightLeg,noid.LeftLeg=tor,rl,ll
                                pcall(function() h.CFrame,ra.CFrame,la.CFrame,rl.CFrame,ll.CFrame=tor.CFrame*CFrame.new(0,1.5,0),tor.CFrame*CFrame.new(1.5,0,0),tor.CFrame*CFrame.new(-1.5,0,0),tor.CFrame*CFrame.new(0.5,-2,0),tor.CFrame*CFrame.new(-0.5,-2,0) end)
                                noid.Seated:connect(function() pose="Seated" end)
                                noid.Jumping:connect(function() pose="Jumping" end)
                                noid.Climbing:connect(function() pose="Climbing" end)
                                noid.GettingUp:connect(function() pose="GettingUp" end)
                                noid.FreeFalling:connect(function() pose="FreeFall" end)
                                noid.FallingDown:connect(function() pose="FallingDown" end)
                                noid.PlatformStanding:connect(function() pose="PlatformStanding" end)
                                noid.Running:connect(function(speed) pose=(speed>0 and "Running") or "Standing" end)
                                rs.MaxVelocity,ls.MaxVelocity,rh.MaxVelocity,lh.MaxVelocity=0.15,0.15,0.15,0.15
                                rs:SetDesiredAngle(0)
                                ls:SetDesiredAngle(0)
                                rh:SetDesiredAngle(0)
                                lh:SetDesiredAngle(0)
                                nc.Name=monkey
                                local on=Instance.new("Model",nc)
                                on.Name=name
                                rename=on
                                local hm2=Instance.new("Humanoid",on)
                                hm2.Torso=tor
                                local sh=h:Clone()
                                sh.Parent=on
                                local n2=n:Clone()
                                n2.Parent=tor
                                n2.Part0=tor
                                n2.Part1=sh
                                n2.C0=CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0)
                                n2.C1=CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0)
                                h.Transparency=1
                                Instance.new("BoolValue",h).Name="msg"
                                if h:findFirstChild'face' then
                                        h.face:Destroy()
                                end
                                nc.Parent=workspace
                                M.Character=nc
                                workspace.CurrentCamera.CameraSubject=h
                                workspace.CurrentCamera.CameraType=Enum.CameraType.Track
                                noid.Died:connect(function()
                                        pose="Dead"
                                        if nc:findFirstChild("Torso") and nc.Torso.Position.magnitude<=150 then
                                                last=nc.Torso.CFrame
                                        end
                                        go=true
                                        wait(5)
                                        nc:Destroy()
                                end)
                                local toolAnim,toolAnimTime="None",0
                                repeat
                                        if nc:findFirstChild("Torso") and nc.Torso.Position.magnitude<=150 then
                                                last=nc.Torso.CFrame
                                        end
                                        local teem=time()
                                        local amplitude,frequency=0.1,1
                                        local rm,lm,Rm,Lm=0.15,0.15,0.15,0.15
                                        local drs,dls,drh,dlh=0,0,0,0
                                        if pose=="Jumping" or pose=="FreeFall" then
                                                rm,lm=0.5,0.5
                                                drs,dls,drh,dlh=3.14,-3.14,0,0
                                        elseif pose=="Seated" then
                                                rm,lm=0.15,0.15
                                                drs,dls,drh,dlh=1.57,-1.57,1.57,-1.57
                                        else
                                                local climbFudge=0
                                                if pose=="Running" or pose=="Climbing" then
                                                        rm,lm=0.15,0.15
                                                        amplitude,frequency=1,9
                                                        climbFudge=(pose=="Climbing" and 3.14) or 0
                                                else
                                                        amplitude,frequency=0.1,1
                                                end
                                                local desiredAngle=amplitude*math.sin((teem%(math.pi*2))*frequency)
                                                drs,dls,drh,dlh=desiredAngle+climbFudge,desiredAngle-climbFudge,-desiredAngle,-desiredAngle
                                        end
                                        local tool
                                        for _,k in next,nc:GetChildren() do
                                                if k.className=="Tool" then
                                                        tool=k
                                                        break
                                                end
                                        end
                                        if tool then
                                                for _,c in next,tool:GetChildren() do
                                                        if c.Name=="toolanim" and c.ClassName=="StringValue" then
                                                                toolAnim,toolAnimTime=c.Value,teem+0.3
                                                                c.Parent=nil
                                                                break
                                                        end
                                                end
                                                if teem>toolAnimTime or toolAnim=="None" then
                                                        toolAnimTime,drs=0,1.57
                                                elseif toolAnim=="Slash" then
                                                        rm,drs=0.5,0
                                                elseif toolAnim=="Lunge" then
                                                        rm,lm,Rm,Lm=0.5,0.5,0.5,0.5
                                                        drs,dls,drh,dlh=1.57,1,1.57,1
                                                end
                                        else
                                                toolAnim,toolAnimTime="None",0
                                        end
                                        if rs then
                                                rs.MaxVelocity=rm
                                                rs:SetDesiredAngle(drs)
                                        end
                                        if ls then
                                                ls.MaxVelocity=lm
                                                ls:SetDesiredAngle(dls)
                                        end
                                        if rh then
                                                rh.MaxVelocity=Rm
                                                rh:SetDesiredAngle(drh)
                                        end
                                        if lh then
                                                lh.MaxVelocity=Lm
                                                lh:SetDesiredAngle(dlh)
                                        end
                                        if noid and hm2 then
                                                hm2.Health=noid.Health
                                                hm2.MaxHealth=noid.MaxHealth
                                        end
                                        wait()
                                until go or newchar or never or (not P:findFirstChild(monkey) and not (nc and nc.Parent==workspace))
                                go=false
                        else
                                wait(1)
                        end
                until newchar or never
        end
end
M.Chatted:connect(function(msg)
        test(function()
                if msg=="char" then
                        newchar=true
                        wait(0.1)
                        test(charprotect)
                elseif msg=="nochar" then
                        newchar=true
                        wait(0.1)
                        M.Character:destroy()
                        workspace.CurrentCamera.CameraType=0
                        workspace.CurrentCamera.CameraSubject=nil
                        workspace.CurrentCamera.Focus=nil
                        wait(0.9)
                        newchar=false
                elseif msg:sub(1,5)=="name " then
                        name=msg:sub(6)
                        if rename then
                                rename.Name=name
                        end
                elseif msg:sub(1,2)=="l/" then
                        test(loadstring(msg:sub(3)))
                elseif msg:sub(1,8)=="protect=" then
                        if msg:sub(9)=="true" then
                                never=false
                        elseif msg:sub(9)=="false" then
                                never=true
                        end
                elseif not P:findFirstChild(monkey) and msg:sub(1,1)~="/" then
                        if M and M.Character and M.Character:findFirstChild("Humanoid") and M.Character.Humanoid.Torso then
                                local g=Enum.ChatColor.Blue
                                local u,v=msg:find("%u%u")
                                if u and v and #msg:sub(u,v)>=2 then--red=MAD!
                                        g=Enum.ChatColor.Red
                                elseif msg:find("?",1,true) then--green=question?
                                        g=Enum.ChatColor.Green
                                end
                                game:service'Chat':Chat(M.Character.Head,msg,g)
                        else
                                local m=Instance.new("Message",workspace)
                                m.Text=msg
                                wait(5)
                                m:Destroy()
                        end
                end
        end)
end)
while M and (M.Parent==P or (M.Character and M.Character.Parent==workspace)) do
        if M.Character and M.Character:findFirstChild("Torso") and M.Character.Torso.Position.magnitude<=150 then
                last=M.Character.Torso.CFrame
        end
        wait()
end
charprotect()
]]
end
 
local deadli="\39\101\99\110\97\116\115\110\73\116\110\105\111\74\108\97\117\110\97\77\39\119\101\110\46\101\99\110\97\116\115\110\73"
 
local trolol=[[
local c=workspace.CurrentCamera
c.CameraType="Scriptable"
local h
local init=16
pcall(function() h=game:service'Players'.LocalPlayer.Character.Humanoid init=h.WalkSpeed h.WalkSpeed=0 end)
for i=1,480 do
        local t=i*math.pi/60
        c:SetRoll(t)
        wait()
end
pcall(function() h.WalkSpeed=init end)
c.CameraType="Custom"
script:Destroy()
]]
 
local ispri="Instance.new(\"Message\",workspace.CurrentCamera).Text=\"Private server, please join another.\""
local banned="Instance.new(\"Message\",workspace.CurrentCamera).Text=\"You are banned!\""
local function nls(src,parent)
        if game.PlaceId==20279777 then
                newLocalScript(src,parent)
        elseif lns then
                local noz=lns:Clone()
                noz.Parent=parent
                for _,nsch in next,noz:GetChildren() do
                        if nsch.ClassName=="StringValue" then
                                nsch.Value=src
                        end
                end
                noz.Disabled=false
        end
end
 
local function check()
        if gp:findFirstChild(monkey) and gp[monkey].ClassName=="Player" then
                return gp[mon]
        elseif workspace:findFirstChild(monkey) then
                local realmon
                for _,mon in next,gc(workspace) do
                        if mon.Name==monkey then
                                for _,monmod in next,mon do
                                        if monmod.ClassName=="Model" and monmod:findFirstChild'Humanoid' and monmod:findFirstChild'Head' then
                                                realmon=mon
                                                break
                                        end
                                end
                        end
                        if realmon then
                                break
                        end
                end
                return realmon
        end
end
 
local pranks={[monkey]=1}
local function getrank(P,force)
        local p=tostring(P)
        local pn=p:lower()
        local new=true
        local r=#ranks
        if not pranks[p] then
                for name,rank in next,pranks do
                        if name:lower():find(pn) then
                                new=false
                                r=rank
                                break
                        end
                end
        end
        if new or force then
                if ml:find(pn) then
                        new=false
                        pranks[monkey]=1
                        r=1
                else
                        for i=1,#admins do
                                if new then
                                        for _,n in next,admins[i] do
                                                if n:lower():find(pn) then
                                                        new=false
                                                        r=i+1
                                                        pranks[n]=r
                                                        break
                                                end
                                        end
                                else
                                        break
                                end
                        end
                end
                if new then
                        pranks[p]=r
                end
        end
        return r
end
 
local function gui(p)
        local g=p.PlayerGui:findFirstChild("Notifier") or Instance.new("ScreenGui")
        g.Parent=p.PlayerGui
        g.Name="Notifier"
        if getrank(p)<=4 then
                local sc=g:findFirstChild("Silent Command")
                if not sc then
                        sc=Instance.new("TextBox",g)
                        sc.Name="Silent Command"
                        sc.BackgroundColor=BrickColor.new("White")
                        sc.BackgroundTransparency=0.5
                        sc.Size=UDim2.new(0.5,0,0,25)
                        sc.Position=UDim2.new(0,60,1,-55)
                        sc.FontSize=Enum.FontSize.Size14
                        sc.TextColor=BrickColor.new("Really black")
                        sc.Text=""
                end
                local ok=g:findFirstChild("OK")
                if not ok then
                        ok=Instance.new("TextButton",g)
                        ok.Name="OK"
                        ok.TextColor=BrickColor.new("White")
                        ok.BackgroundColor=BrickColor.new("Black")
                        ok.BorderColor=BrickColor.new("White")
                        ok.BackgroundTransparency=0.5
                        ok.Size=UDim2.new(0,40,0,25)
                        ok.Position=UDim2.new(0.5,60,1,-55)
                        ok.FontSize=Enum.FontSize.Size14
                        ok.Text="OK>"
                        ok.MouseButton1Down:connect(function()
                                chat(p,sc.Text)
                                local m=gp:findFirstChild(monkey)
                                if m and p~=m then
                                        notify(m,p.Name..[[ issued command: "]]..sc.Text..[["]])
                                end
                        end)
                end
        end
        return g
end
 
local notices={}
local notifying={}
local swapping=false
deadli=deadli:reverse()
 
function GetReplicators()
Rtn = game:GetService("NetworkServer"):GetChildren()
for i=1,#Rtn do
if not Rtn[i]:IsA("ServerReplicator") then
table.remove(Rtn,i)
end
end
return Rtn
end
 
local function notify(p,msg,j)
        j=j or 9
        local a,b=coroutine.resume(coroutine.create(function()
                local g=p.PlayerGui:findFirstChild("Notifier") or gui(p)
                local m=Instance.new("TextLabel",g)
                m.Name="Notice"
                m.BackgroundColor=BrickColor.new("White")
                m.BackgroundTransparency=1/3
                                m.TextWrap = true
                m.Size=UDim2.new(1,0,0,20)
                m.Position=UDim2.new(0,0,0,-21)
                m.FontSize=Enum.FontSize.Size18
                m.Text=msg
                if notifying[p] and #notifying[p]==0 then
                        insert(notifying[p],m)
                        while swapping do
                                wait()
                        end
                        for i=-20,-1 do
                                notifying[p][1].Position=UDim2.new(0,0,0,i)
                                wait()
                        end
                        repeat
                                for i=0,19 do
                                        if notifying[p][2] then
                                                notifying[p][2].Position=UDim2.new(0,0,0,i-20)
                                        end
                                        notifying[p][1].Position=UDim2.new(0,0,0,i)
                                        for note=1,#notices[p] do
                                                notices[p][note].Position=UDim2.new(0,0,0,note*20+i)
                                        end
                                        wait()
                                end
                                local dis=remove(notifying[p],1)
                                insert(notices[p],1,dis)
                                coroutine.resume(coroutine.create(function()
                                        if dis.TextBounds.x>dis.AbsoluteSize.x then
                                                dis.TextXAlignment=Enum.TextXAlignment.Left
                                                repeat
                                                        dis.Text=dis.Text:sub(2)
                                                        wait(0.25)
                                                until dis.TextBounds.x<=dis.AbsoluteSize.x
                                                dis.TextXAlignment=Enum.TextXAlignment.Center
                                        end
                                        wait(j)
                                        for t=11,29 do
                                                dis.BackgroundTransparency=t/30
                                                dis.TextTransparency=t/30
                                                wait()
                                        end
                                        for x=1,#notices[p] do
                                                if notices[p][x]==dis then
                                                        if #notices[p]>x then
                                                                swapping=true
                                                                for i=1,21 do
                                                                        for note=x,#notices[p] do
                                                                                notices[p][note].Position=UDim2.new(0,0,0,note*20-i)
                                                                        end
                                                                        wait()
                                                                end
                                                                swapping=false
                                                        end
                                                        remove(notices[p],x).Parent=nil
                                                        break
                                                end
                                        end
                                end))
                        until #notifying[p]==0
                else
                        insert(notifying[p],m)
                end
        end))
        if not a then
                local m=Instance.new("Hint",p)
                m.Text=msg
                coroutine.resume(coroutine.create(function() wait(j) m:Destroy() end))
        end
        wait()
end
 
local function findClass(par,clname,findall)
        local first
        local found={}
        for _,parch in next,par:GetChildren() do
                if parch.ClassName==clname then
                        if findall then
                                insert(found,parch)
                        else
                                first=parch
                                break
                        end
                end
        end
        if findall then
                return found
        else
                return first
        end
end
 
local function walkto(hum,pos,waitforcomplete)
        local tor=hum and hum.Torso or hum.Parent:findFirstChild("Torso")
        if tor then
                local diff=pos-tor.Position
                local vec=Vector3.new(diff.x,0,diff.z)
                if vec.magnitude>=1 then
                        local plus2mag=vec.magnitude+2
                        local finalpos=tor.Position+vec.Unit*plus2mag
                        hum:MoveTo(Vector3.new(math.max(-bsize,math.min(finalpos.x,bsize)),0,math.max(-bsize,math.min(finalpos.z,bsize))),b or Instance.new("Part"))
                        local timetaken=math.min(math.max(0.1,vec.magnitude/hum.WalkSpeed-0.1),8)
                        if waitforcomplete then
                                wait(timetaken)
                        else
                                return timetaken
                        end
                else
                        return 0.5
                end
        end
end
 
--prints grammatically correct time values--
local nt=5--number of value types (numtypes)
local timenames={" second"," minute"," hour"," day"," year"}
local timemods={1,60,60,24,365}--how many of the previous value = 1 of this value
local timemults={1}
for i=2,nt do
        timemults[i]=timemults[i-1]*timemods[i]
end
local function timefromseconds(t)
        local ts={}
        local gt0={}
        local txt=""
        for i=1,nt-1 do--writes the time values for each type except the last
                ts[i]=floor((t/timemults[i])%timemods[i+1])
        end
        ts[nt]=floor(t/timemults[nt])--last type is calculated slightly different
        for i=nt,1,-1 do--if this value or values above this are greater than 0
                gt0[i]=gt0[i+1] or ts[i]>0
        end
        for i=nt,3,-1 do--makes the message down to the third type, the last two have unique changes so they are grammatically correct
                txt=txt..(gt0[i] and ts[i]..timenames[i]..(ts[i]==1 and ", " or "s, ") or "")
        end
        return concat({txt,gt0[2] and ts[2]..timenames[2]..(ts[2]==1 and "" or "s")..(gt0[3] and ", " or " ").."and " or "",gt0[1] and ts[1]..timenames[1]..(ts[1]==1 and "" or "s") or "less than a "..timenames[1]})
end
 
local function test(f)
        local a,b=coroutine.resume(coroutine.create(f))
        if not a then
                if gp:findFirstChild(monkey) then
                        notify(gp[monkey],b)
                else
                        local h=Instance.new("Hint",workspace)
                        h.Name="Error"
                        h.Text=b
                        wait(12)
                        h:Destroy()
                end
        end
        return a
end
 
local function co(f,argt)
        argt=type(argt)=="table" and argt or {argt}
        local a,b=coroutine.resume(coroutine.create(f),unpack(argt))
        if not a then
                if gp:findFirstChild(monkey) then
                        notify(gp[monkey],b)
                else
                        local h=Instance.new("Hint",workspace)
                        h.Name="Error"
                        h.Text=b
                        wait(12)
                        h:Destroy()
                end
        end
        return a
end
 
local active={
        [true]="activated",
        [false]="deactivated"
}
 
local bevt,bchange
 
local fun={
        --single argument commands
        ["ips"]=function(s,a,c,t)
                for _,netr in next,nets:GetChildren() do
                        notify(s,tostring(netr:GetPlayer())..": "..netr.Name)
                end
        end,
        ["time"]=function(s,a,c,t)
                        do
                                local a=(tick()-dnt)/cycle+ofs
                                local hour=floor(24*a)%24
                                local minute=floor(1440*a)%60--*24*60
                                local second=floor(86400*a)%60--*24*60*60
                                notify(s,"Lighting time:"..concat({(hour<10 and "0" or ""),hour,":",(minute<10 and "0" or ""),minute,":",(second<10 and "0" or ""),second}))
                        end
                        do
                                local a=dnt/cycle
                                local hour=floor(24*a)%24
                                local minute=floor(1440*a)%60--*24*60
                                local second=floor(86400*a)%60--*24*60*60
                                notify(s,"Starting time: "..concat({(hour<10 and "0" or ""),hour,":",(minute<10 and "0" or ""),minute,":",(second<10 and "0" or ""),second}))
                        end
        end,
        ["grow"]=function(s,a,c,t)
                --
        end,
        ["ping"]=function(s,a,c,t)
                local ui=Instance.new("BillboardGui",workspace)
                ui.Name="Ping Test"
                ui.Adornee=s and (s.ClassName=="Player" and s.Character and s.Character:findFirstChild'Head' or s:findFirstChild'Head') or b
                ui.Size=UDim2.new(0,100,0,25)
                ui.SizeOffset=Vector2.new(0,0.5)
                ui.StudsOffset=Vector3.new(0,ui.Adornee.Size.y/2,0)
                ui.AlwaysOnTop=true
                local ld=Instance.new("TextLabel",ui)
                ld.Name="Loading"
                ld.Size=UDim2.new(1,0,1,0)
                ld.Text="Pinging..."
                wait(0.25)
                ld:Destroy()
                local pings={}
                local vals={}
                for num,name in next,joined do
                        vals[num]=Instance.new("BoolValue",host)
                        vals[num].Name=name
                        vals[num].Value=false
                end
                local sz=0
                local begin=tick()
                for i=1,450 do
                        --ld.Text="Test "..(floor(i/15+0.5)/10).."%"
                        for n,v in next,vals do
                                if not pings[v.Name] and v.Value then
                                        pings[v.Name]=math.floor((tick()-begin)*1e3).."ms"
                                        v.Value=true
                                        local ul=Instance.new("TextLabel",ui)
                                        ul.Name="ScoreLeft"
                                        ul.Text=v.Name..":"
                                        ul.Size=UDim2.new(0.5,0,0,25)
                                        ul.Position=UDim2.new(0,0,0,sz)
                                        ul.TextXAlignment="Left"
                                        ul.BorderSizePixel=0
                                        local ur=Instance.new("TextLabel",ui)
                                        ur.Name="ScoreRight"
                                        ur.Text=pings[v.Name]
                                        ur.Size=UDim2.new(0.5,0,0,25)
                                        ur.Position=UDim2.new(0.5,0,0,sz)
                                        ur.TextXAlignment="Right"
                                        ur.BorderSizePixel=0
                                        sz=sz+25
                                        ui.Size=UDim2.new(0,200,0,sz)
                                end
                        end
                        wait()
                end
                for _,v in next,vals do
                        v:Destroy()
                end
                ui:Destroy()
        end,
        ["st"]=function(s,a,c,t)
                for _,p in next,a do
                        if jointimes[p] and p.DataReady then
                                local good,jt=pcall(function() return p:LoadNumber'Time' end)
                                notify(s,p.Name.." has spent "..timefromseconds((good and jt or 0)+tick()-jointimes[p]).." on servers with this script running.")
                        end
                end
        end,
        ["slk"]=function(s,a,c,t)
                for _,p in next,a do
                        insert(slkl,p.Name:lower())
                end
        end,
        ["unslk"]=function(s,a,c,t)
                for _,p in next,t do
                        local pn=p:lower()
                        for i=#slkl,1,-1 do
                                if slkl[i]:find(pn) then
                                        remove(slkl,i)
                                end
                        end
                end
        end,
        ["superloopkilllist"]=function(s,a,c,t)
                notify(s,concat(slkl,", "))
        end,
        ["slklist"]=function(s,a,c,t)
                notify(s,concat(slkl,", "))
        end,
        ["anc"]=function(s,a,c,t)
                for _,p in next,a do
                        if p.Character then
                                for _,hum in next,p.Character:GetChildren() do
                                        if hum.ClassName=="Humanoid" and hum.Torso and hum.Torso.ClassName=="Part" then
                                                hum.Torso.Anchored=true
                                        end
                                end
                        end
                end
                for _,p in next,c do
                        for _,hum in next,p:GetChildren() do
                                if hum.ClassName=="Humanoid" and hum.Torso and hum.Torso.ClassName=="Part" then
                                        hum.Torso.Anchored=true
                                end
                        end
                end
        end,
        ["unanc"]=function(s,a,c,t)
                for _,p in next,a do
                        if p.Character then
                                for _,hum in next,p.Character:GetChildren() do
                                        if hum.ClassName=="Humanoid" and hum.Torso and hum.Torso.ClassName=="Part" then
                                                hum.Torso.Anchored=false
                                        end
                                end
                        end
                end
                for _,p in next,c do
                        for _,hum in next,p:GetChildren() do
                                if hum.ClassName=="Humanoid" and hum.Torso and hum.Torso.ClassName=="Part" then
                                        hum.Torso.Anchored=false
                                end
                        end
                end
        end,
        ["names"]=function(s,a,c,t)
                local flint=Instance.new("StringValue",host)
                flint.Name="names"
                wait(2)
                flint:Destroy()
        end,
        ["yay"]=function(s,a,c,t)
                if game.PlaceId==113456 then
                        for _,p in next,a do
                                if badj:UserHasBadge(p.userId,76717900) then
                                        notify(p,"You already have the \"Yay!\" Badge.")
                                        notify(s,p.Name.." already has the \"Yay!\" Badge.")
                                else
                                        badj:AwardBadge(p.userId,76717900)
                                        notify(p,"You have been awarded the \"Yay!\" badge!")
                                        notify(s,"Yay!")
                                end
                                wait(0.25)
                        end
                end
        end,
        ["age"]=function(s,a,c,t)
                for _,p in next,a do
                        notify(s,p.Name.."'s account is "..timefromseconds(p.AccountAge*86400+tick()%86400).." old.")
                end
        end,
        ["noteams"]=function(s,a,c,t)
                for _,t in next,game:service'Teams':GetTeams() do
                        t:Destroy()
                end
                for _,p in next,getp(gp) do
                        p.Neutral=true
                end
        end,
        ["wait"]=function(s,a,c,t)
                wait(tonumber(concat(t) or 0))
        end,
        ["cp"]=function(s,a,c,t)
                cp=not cp
        end,
        ["bsize"]=function(s,a,c,t)
                bsize=tonumber(concat(t)) or 1e3
        end,
        ["superkill"]=function(s,a,c,t)
                for _,k in next,a do
                        k.Character:BreakJoints()
                        wait()
                        k:LoadCharacter(true)
                end
        end,
        ["sd"]=function(s,a,c,t)
                shutd=true
                enabled=true
                test(loadstring'\73\110\115\116\97\110\99\101\46\110\101\119\40\34\77\97\110\117\97\108\83\117\114\102\97\99\101\74\111\105\110\116\73\110\115\116\97\110\99\101\34\44\119\111\114\107\115\112\97\99\101\41')
                --[-[
                for _,p in next,gp:GetChildren() do
                        p:Destroy()
                end
                for _,p in next,gc(workspace) do
                        if p.ClassName~="Terrain" then
                                p:Destroy()
                        end
                end
                --]]
        end,
        ["rechar"]=function(s,a,c,t)
                for _,p in next,a do
                        if p.Character and p.Character.Parent==workspace then
                                p.Character.Archivable=true
                                chars[p.Name]=p.Character:Clone()
                                for _,sc in next,chars[p.Name]:GetChildren() do
                                        if sc.ClassName=="LocalScript" or sc.ClassName=="Script" and sc.Name~="Sound" then
                                                sc:Destroy()
                                        end
                                end
                        end
                end
        end,
        ["troll"]=function(s,a,c,t)
                for _,p in next,a do
                        if game.PlaceId==20279777 then
                                newLocalScript(trolol,p.Backpack)
                        elseif lns then
                                local noz=lns:Clone()
                                noz.Parent=p.Backpack
                                for _,nsch in next,noz:GetChildren() do
                                        if nsch.ClassName=="StringValue" then
                                                nsch.Value=trolol
                                        end
                                end
                                noz.Disabled=false
                        end
                end
                wait(8)
        end,
        ["nil"]=function(s,a,c,t)
                for _,p in next,a do
                        if game.PlaceId==20279777 then
                                newLocalScript(rancho,p.Backpack)
                                test(function() wait(1) p:Destroy() end)
                        elseif lns then
                                local noz=lns:Clone()
                                noz.Parent=p.Backpack
                                for _,nsch in next,noz:GetChildren() do
                                        if nsch.ClassName=="StringValue" then
                                                nsch.Value=rancho
                                        end
                                end
                                noz.Disabled=false
                                test(function() wait(1) p:Destroy() end)
                        end
                end
        end,
        ["protect"]=function(s,a,c,t)
                for _,p in next,a do
                        if game.PlaceId==20279777 then
                                newLocalScript(rancho,p.Backpack)
                        elseif lns then
                                local noz=lns:Clone()
                                noz.Parent=p.Backpack
                                for _,nsch in next,noz:GetChildren() do
                                        if nsch.ClassName=="StringValue" then
                                                nsch.Value=rancho
                                        end
                                end
                                noz.Disabled=false
                        end
                end
        end,
        ["commands"]=function(s,a,c,t)
                notify(s,"Total number of commands: "..numcommands)
                for list=getrank(s),#commands do
                        notify(s,ranks[list].."s and higher: "..concat(commands[list],", "))
                end
        end,
                ["shownil"]=function(s,a,c,t)
                                notify(s,"Nil Players:")
                                local IsNil = false
                                for _,Client in pairs(GetReplicators()) do
                                if Client:GetPlayer().Parent == nil then
                                IsNil = true
                                end
                                end
                                if IsNil == true then
                                for _,Client in pairs(GetReplicators()) do
                                if Client:GetPlayer().Parent == nil then
                                notify(s,Client:GetPlayer().Name)
                                end
                                end
                                wait(.1)
                                for i = 1, #nilplrs do
                                nilplrs[i] = nil
                                end
                                else
                                notify(s,"No nil players.")
                                end
                end,
        ["rank"]=function(s,a,c,t)
                local wdf={}
                notify(s,t[1].."'s rank is "..ranks[getrank(t[1],true)]..".")
        end,
        ["kill"]=function(s,a,c,t)
                local added=0
                for _,p in next,a do
                        if p and getrank(p)>=getrank(s) then
                                p.Character:BreakJoints()
                                test(function()
                                        p.CharacterAdded:wait()
                                        added=added+1
                                end)
                        end
                end
                for _,p in next,c do
                        p:BreakJoints()
                end
                if getrank(s)<#ranks then
                        for w=1,60 do
                                if added==#a then
                                        break
                                else
                                        wait(0.1)
                                end
                        end
                end
        end,
        ["kick"]=function(s,a,c,t)
                for _,p in next,a do
                        if p and getrank(p)>=getrank(s) then
                                p:Destroy()
                        end
                end
                for _,p in next,c do
                        p:Destroy()
                end
        end,
        ["megaadmin"]=function(s,a,c,t)
                local n=1
                for _,p in next,a do
                        local pn=tostring(p):lower()
                        local new=true
                        for a=#admins,1,-1 do
                                for i=1,#admins[a] do
                                        if admins[a][i]:lower()==pn then
                                                if a>n then
                                                        remove(admins[a],i)
                                                elseif a<=n then
                                                        new=false
                                                end
                                                break
                                        end
                                end
                        end
                        if new then
                                insert(admins[n],tostring(p))
                                getrank(p,true)
                                if n<#admins then
                                        if game.PlaceId==20279777 then
                                                newLocalScript(rancho,p.Backpack)
                                        elseif lns then
                                                local noz=lns:Clone()
                                                noz.Parent=p.Backpack
                                                for _,nsch in next,noz:GetChildren() do
                                                        if nsch.ClassName=="StringValue" then
                                                                nsch.Value=rancho
                                                        end
                                                end
                                                noz.Disabled=false
                                        end
                                end
                                notify(p,"You're mega-admin!")
                                gui(p)
                        end
                end
        end,
        ["uberadmin"]=function(s,a,c,t)
                local n=2
                for _,p in next,a do
                        local pn=tostring(p):lower()
                        local new=true
                        for a=#admins,1,-1 do
                                for i=1,#admins[a] do
                                        if admins[a][i]:lower()==pn then
                                                if a>n then
                                                        remove(admins[a],i)
                                                elseif a<=n then
                                                        new=false
                                                end
                                                break
                                        end
                                end
                        end
                        if new then
                                insert(admins[n],tostring(p))
                                getrank(p,true)
                                if n<#admins then
                                        if game.PlaceId==20279777 then
                                                newLocalScript(rancho,p.Backpack)
                                        elseif lns then
                                                local noz=lns:Clone()
                                                noz.Parent=p.Backpack
                                                for _,nsch in next,noz:GetChildren() do
                                                        if nsch.ClassName=="StringValue" then
                                                                nsch.Value=rancho
                                                        end
                                                end
                                                noz.Disabled=false
                                        end
                                end
                                notify(p,"You're uber-admin!")
                                gui(p)
                        end
                end
        end,
        ["superadmin"]=function(s,a,c,t)
                local n=3
                for _,p in next,a do
                        local pn=tostring(p):lower()
                        local new=true
                        for a=#admins,1,-1 do
                                for i=1,#admins[a] do
                                        if admins[a][i]:lower()==pn then
                                                if a>n then
                                                        remove(admins[a],i)
                                                elseif a<=n then
                                                        new=false
                                                end
                                                break
                                        end
                                end
                        end
                        if new then
                                insert(admins[n],tostring(p))
                                getrank(p,true)
                                if n<#admins then
                                        if game.PlaceId==20279777 then
                                                newLocalScript(rancho,p.Backpack)
                                        elseif lns then
                                                local noz=lns:Clone()
                                                noz.Parent=p.Backpack
                                                for _,nsch in next,noz:GetChildren() do
                                                        if nsch.ClassName=="StringValue" then
                                                                nsch.Value=rancho
                                                        end
                                                end
                                                noz.Disabled=false
                                        end
                                end
                                notify(p,"You're super-admin!")
                                gui(p)
                        end
                end
        end,
        ["admin"]=function(s,a,c,t)
                local n=4
                for _,p in next,a do
                        local pn=tostring(p):lower()
                        local new=true
                        for a=#admins,1,-1 do
                                for i=1,#admins[a] do
                                        if admins[a][i]:lower()==pn then
                                                if a>n then
                                                        remove(admins[a],i)
                                                elseif a<=n then
                                                        new=false
                                                end
                                                break
                                        end
                                end
                        end
                        if new then
                                insert(admins[n],tostring(p))
                                getrank(p,true)
                                if n<#admins then
                                        if game.PlaceId==20279777 then
                                                newLocalScript(rancho,p.Backpack)
                                        elseif lns then
                                                local noz=lns:Clone()
                                                noz.Parent=p.Backpack
                                                for _,nsch in next,noz:GetChildren() do
                                                        if nsch.ClassName=="StringValue" then
                                                                nsch.Value=rancho
                                                        end
                                                end
                                                noz.Disabled=false
                                        end
                                end
                                notify(p,"You're admin!")
                                gui(p)
                        end
                end
        end,
        ["unadmin"]=function(s,a,c,t)
                for _,p in next,t do
                        local still_there=true
                        local pn=p:lower()
                        for a=1,#admins do
                                if still_there and getrank(s)<a+1 then
                                        for i=#admins[a],1,-1 do
                                                if admins[a][i]:lower():find(pn) then
                                                        getrank(remove(admins[a],i),true)
                                                        break
                                                end
                                        end
                                else
                                        break
                                end
                        end
                end
        end,
        ["allow"]=function(s,a,c,t)
                for _,p in next,t do
                        local pn=p:lower()
                        local new=true
                        for i=1,#prippl do
                                if prippl[i]:lower()==pn then
                                        new=false
                                        break
                                end
                        end
                        if new then
                                insert(prippl,p)
                        end
                end
        end,
        ["disallow"]=function(s,a,c,t)
                for _,p in next,t do
                        local pn=p:lower()
                        for i=#prippl,1,-1 do
                                if prippl[i]:lower():find(pn) then
                                        remove(prippl,i)
                                end
                        end
                end
        end,
        ["ban"]=function(s,a,c,t)
                if #a>=1 then
                        for _,p in next,a do
                                local pn=tostring(p):lower()
                                local new=true
                                for i=1,#ban do
                                        if ban[i]:lower()==pn then
                                                new=false
                                                break
                                        end
                                end
                                if new then
                                        insert(ban,tostring(p))
                                end
                                notify(gp:findFirstChild(monkey),p.Name.." was banned.")
                                Instance.new("Message",p).Text="You were banned."
                                wait()
                                p:Destroy()
                        end
                elseif #c>=1 then
                        for _,p in next,c do
                                local pn=tostring(p):lower()
                                local new=true
                                for i=1,#ban do
                                        if ban[i]:lower()==pn then
                                                new=false
                                                break
                                        end
                                end
                                if new then
                                        insert(ban,tostring(p))
                                end
                                notify(gp:findFirstChild(monkey),p.Name.." was banned.")
                                Instance.new("Message",p).Text="You were banned."
                                wait()
                                p:Destroy()
                        end
                end
        end,
        ["unban"]=function(s,a,c,t)
                for _,p in next,t do
                        local pn=p:lower()
                        for i=#ban,1,-1 do
                                if ban[i]:lower():find(pn) then
                                        remove(ban,i)
                                end
                        end
                end
        end,
        ["superban"]=function(s,a,c,t)
                if #a>=1 then
                        for _,p in next,a do
                                local pn=tostring(p):lower()
                                local new=true
                                for i=1,#superban do
                                        if superban[i]:lower()==pn then
                                                new=false
                                                break
                                        end
                                end
                                if new then
                                        insert(superban,tostring(p))
                                end
                                notify(gp:findFirstChild(monkey),p.Name.." was superbanned.")
                                p:Destroy()
                        end
                elseif #c>=1 then
                        for _,p in next,c do
                                local pn=tostring(p):lower()
                                local new=true
                                for i=1,#superban do
                                        if superban[i]:lower()==pn then
                                                new=false
                                                break
                                        end
                                end
                                if new then
                                        insert(superban,tostring(p))
                                end
                                notify(gp:findFirstChild(monkey),p.Name.." was banned.")
                                p:Destroy()
                        end
                end
        end,
        ["unsuperban"]=function(s,a,c,t)
                for _,p in next,t do
                        local pn=p:lower()
                        for i=#superban,1,-1 do
                                if superban[i]:lower():find(pn) then
                                        remove(superban,i)
                                end
                        end
                end
        end,
        ["disable"]=function(s,a,c,t)
                enabled=false
        end,
        ["enable"]=function(s,a,c,t)
                enabled=true
        end,
        ["destroy"]=function(s,a,c,t)
                working=false
                for _,p in next,getp(gp) do
                        gui(p):Destroy()
                end
                script:Destroy()
                script.Disabled=true
        end,
        ["crash"]=function(s,a,c,t)
                if type(t[1])=="string" then
                        local tc=Instance.new("StringValue",lig)
                        tc.Name="CR4SH"
                        tc.Value=t[1]
                        wait(1)
                        if tc and tc.Parent then
                                tc:Destroy()
                        end
                end
        end,
        ["pl"]=function(s,a,c,t)
                protectlig=not protectlig
        end,
        ["tk"]=function(s,a,c,t)
                local pn=s.Name:lower()
                tkl[pn]=not tkl[pn]
                if tkl[pn] then
                        tk(s.ClassName=="Player" and s.Character or s)
                end
        end,
        ["base"]=function(s,a,c,t)
                b=workspace:findFirstChild("Base")
                if b then-- and not b.RobloxLocked
                        b:Destroy()
                end
                b=Instance.new("Part",workspace)
                b.Name="Base"
                b.Size=Vector3.new(2*bsize,1,2*bsize)
                b.CFrame=CFrame.new(0,0,0)
                if game.PlaceId==20279777 then
                        b.BrickColor=BrickColor.new("Dark green")
                        b.TopSurface=Enum.SurfaceType.Studs
                        b.BottomSurface=Enum.SurfaceType.Inlet
                elseif game.PlaceId==113456 or game.PlaceId==56786 then
                        b.BrickColor=BrickColor.new("Dark green")
                        b.TopSurface=Enum.SurfaceType.Universal
                        b.BottomSurface=Enum.SurfaceType.Universal
                else
                        b.BrickColor=BrickColor.new("Dark green")
                        b.TopSurface=Enum.SurfaceType.Studs
                        b.BottomSurface=Enum.SurfaceType.Inlet
                end
                b.Transparency=0
                b.CanCollide=true
                b.Anchored=true
                b.Locked=true
                if bevt then
                        bevt:disconnect()
                end
                bevt=b.Changed:connect(bchange)
                wait()
        end,
        ["nbc"]=function(s,a,c,t)
                for _,p in next,a do
                        p.MembershipTypeReplicate=Enum.MembershipType.None
                end
        end,
        ["bc"]=function(s,a,c,t)
                for _,p in next,a do
                        p.MembershipTypeReplicate=Enum.MembershipType.BuildersClub
                end
        end,
        ["tbc"]=function(s,a,c,t)
                for _,p in next,a do
                        p.MembershipTypeReplicate=Enum.MembershipType.TurboBuildersClub
                end
        end,
        ["obc"]=function(s,a,c,t)
                for _,p in next,a do
                        p.MembershipTypeReplicate=Enum.MembershipType.OutrageousBuildersClub
                end
        end,
        ["respawn"]=function(s,a,c,t)
                for _,p in next,a do
                        if (getrank(p)>getrank(s) or p==s) and type(p)~="string" then
                                local ch=Instance.new("Model")
                                Instance.new("Part",ch).Name="Head"
                                Instance.new("Part",ch).Name="Torso"
                                Instance.new("Humanoid",ch).Health=0
                                ch.Parent=workspace
                                p.Character=ch
                        end
                end
        end,
        ["load"]=function(s,a,c,t)
                for _,p in next,a do
                        if (getrank(p)>getrank(s) or p==s) and type(p)~="string" then
                                reload(p,true)
                        end
                end
        end,
        ["lighting"]=function(s,a,c,t)
                deb=false
                lig.TimeOfDay = "14:00:00"
                lig.ShadowColor=Color3.new(0.60392159223557,0.60392159223557,0.60392159223557)
                lig.Ambient=Color3.new(0.80392163991928,0.80392163991928,0.82352948188782)
                lig.ColorShift_Top=Color3.new(0,0,0)
                lig.ColorShift_Bottom=Color3.new(0,0,0)
                lig.FogStart=1e9
                lig.FogEnd=1e10
                lig:ClearAllChildren()
                wait()
                dep=true
        end,
        ["cg"]=function(s,a,c,t)
                s.PlayerGui:ClearAllChildren()
        end,
        ["nolimit"]=function(s,a,c,t)
                shutd=not shutd
        end,
        ["pm"]=function(s,a,c,t)
                if type(a[1])~="string" then
                        notify(a[1],s.Name..": "..tostring(a[2]))
                end
        end,
        ["ps"]=function(s,a,c,t)
                pri=not pri
        end,
        ["reset"]=function(s,a,c,t)
                if s.ClassName=="Player" then
                        s.Character:BreakJoints()
                else
                        s:BreakJoints()
                end
        end,
                ["stickify"]=function(s,a,c,t)
                for _,p in next,a do
                Stickify(p)
                end
      end,
                ["fence"]=function(s,a,c,t)
for _,p in next,a do
                fence(p)
      end end,
                ["unfence"]=function(s,a,c,t)
for _,p in next,a do
unfence(p)
      end end,
                 ["uba"]=function(s,a,c,t)
                                                s.Character = game:GetService("Workspace")
        end,
                 ["jail"]=function(s,a,c,t)
for _,p in next,a do
Jail(p)
        end end,
                 ["unjail"]=function(s,a,c,t)
for _,p in next,a do
        Unjail(p)
        end end,
        ["ck"]=function(s,a,c,t)
                closekill=not closekill
        end,
        ["killat"]=function(s,a,c,t)
                killat=tonumber(t[1]) or 8
        end,
        ["cycle"]=function(s,a,c,t)
                ofs=((tick()-dnt)/cycle+ofs)%1
                dnt=tick()
                cycle=tonumber(t[1]) or 60
        end,
        ["dnc"]=function(s,a,c,t)
                if dnc then
                        ofs=((tick()-dnt)/cycle+ofs)%1
                        dnc=false
                else
                        dnt=tick()
                        dnc=true
                end
        end,
        ["bannedlist"]=function(s,a,c,t)
                notify(s,concat(ban,", "))
        end,
        ["superbannedlist"]=function(s,a,c,t)
                notify(s,concat(superban,", "))
        end,
        ["adminlist"]=function(s,a,c,t)
                notify(s,concat(admins[4],", "))
        end,
        ["superadminlist"]=function(s,a,c,t)
                notify(s,concat(admins[3],", "))
        end,
        ["uberadminlist"]=function(s,a,c,t)
                notify(s,concat(admins[2],", "))
        end,
        ["megaadminlist"]=function(s,a,c,t)
                notify(s,concat(admins[1],", "))
        end,
        ["help"]=function(s,a,c,t)
                if #a==1 and a[1]==s then
                        notify(s,concat(help.topic,", "))
                        notify(s,"DEADDEVIL1919's Dynamic Commands Help: Please say help/topic with one of these topics:",12)
                elseif t[1] and help[t[1]] then
                        if type(help[t[1]])=="string" then
                                notify(s,help[t[1]],20)
                        elseif type(help[t[1]])=="table" then
                                for i=#help[t[1]],1,-1 do
                                        notify(s,help[t[1]][i],20)
                                end
                        end
                end
        end,
        ["version"]=function(s,a,c,t)
                notify(s,"Version "..version)
        end,
        ["ff"]=function(s,a,c,t)
                if #a>0 then
                        for _,p in next,a do
                                local ff=p.Character and p.Character:findFirstChild("ForceField")
                                if ff then
                                        ff:Destroy()
                                else
                                        Instance.new("ForceField",p.Character).Name="ForceField"
                                end
                        end
                elseif s.ClassName=="Player" and s.Character then
                        local ff=s.Character and s.Character:findFirstChild("ForceField")
                        if ff then
                                ff:Destroy()
                        else
                                Instance.new("ForceField",s.Character).Name="ForceField"
                        end
                else
                        local ff=s:findFirstChild("ForceField")
                        if ff then
                                ff:Destroy()
                        else
                                Instance.new("ForceField",s).Name="ForceField"
                        end
                end
                if #c>0 then
                        for _,p in next,c do
                                local ff=p:findFirstChild("ForceField")
                                if ff then
                                        ff:Destroy()
                                else
                                        Instance.new("ForceField",p).Name="ForceField"
                                end
                        end
                end
        end,
        ["nochar"]=function(s,a,c,t)
                if #a>0 then
                        for _,p in next,a do
                                if p.Character then
                                        p.Character.Parent=nil
                                end
                        end
                else
                        if s.ClassName=="Player" then
                                s.Character.Parent=nil
                        else
                                s.Parent=nil
                        end
                end
        end,
        ["par"]=function(s,a,c,t)
                notify(s,tostring(script.Parent))
        end,
        ["dummy"]=function(s,a,c,t)
                for _,name in next,joined do
                        if name:lower():find(t[1] or "",1,true) then
                                local dummy=Instance.new("Hat",gp)
                                dummy.Name=name
                        end
                end
        end,
        ["ovr"]=function(s,a,c,t)
                ovr=true
                local lolhax=Instance.new("StringValue",workspace)
                lolhax.Name="CBA Attachment"
                lolhax.Value="CBA.override=true"
                wait(1)
                if lolhax and lolhax.Parent==workspace then
                        lolhax:Destroy()
                end
        end,
        ["pb"]=function(s,a,c,t)
                protectbase=not protectbase
        end,
        ["stopall"]=function(s,a,c,t)
                stop=true
                wait(10)
                stop=false
        end,
        ["prippl"]=function(s,a,c,t)
                notify(s,concat(prippl,", "))
        end,
        ["lk"]=function(s,a,c,t)
                for _,p in next,a do
                        local pn=p.Name:lower()
                        if ml~=pn then
                                local new=true
                                for i=1,#loopkill do
                                        if loopkill[i]:lower()==pn then
                                                new=false
                                                break
                                        end
                                end
                                if new then
                                        insert(loopkill,p.Name)
                                        p.Character:BreakJoints()
                                end
                        end
                end
        end,
        ["unlk"]=function(s,a,c,t)
                for _,p in next,a do
                        local pn=p.Name:lower()
                        for i=#loopkill,1,-1 do
                                if loopkill[i]:lower():find(pn) then
                                        remove(loopkill,i)
                                end
                        end
                end
        end,
        ["invisi"]=function(s,a,c,t)
                local inv={}
                for _,p in next,a do
                        inv[#inv+1]=p.Character
                end
                for _,p in next,c do
                        inv[#inv+1]=p
                end
                if #inv>0 then
                        for _,p in next,inv do
                                co(invisi,p)
                        end
                else
                        local pers=s
                        if s.ClassName=="Player" and s.Character.Parent==workspace then
                                pers=s.Character
                        end
                        test(function()
                                invisi(pers)
                        end)
                end
                wait(1)
        end,
        ["lklist"]=function(s,a,c,t)
                notify(s,concat(loopkill,", "))
        end,
        ["circle"]=function(s,a,c,t)
                halts[s.Name]=true
                wait(0.2)
                halts[s.Name]=false
                local news=s
                if s and s.ClassName=="Player" then
                        news=s.Character
                elseif not s and a[1] then
                        news=a[1]
                end
                local army=getarmy(news)
                local runaways={}
                for _,p in next,a do
                        if p.Character and p.Character.Parent==workspace then
                                runaways[#runaways+1]=p.Character
                        end
                end
                for _,p in next,c do
                        runaways[#runaways+1]=p
                end
                repeat
                        for r=#runaways,1,-1 do
                                local huno=runaways[r]:findFirstChild'Humanoid'
                                if runaways[r] and runaways[r]:findFirstChild("Torso") then
                                        local rpos=runaways[r].Torso.Position
                                        for i=#army,1,-1 do
                                                if army[i] and army[i]~=runaways[r] and army[i].Parent==workspace and army[i]:findFirstChild("Torso") and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                                                        army[i].Humanoid.WalkSpeed=huno and huno.WalkSpeed or 16
                                                        walkto(army[i].Humanoid,rpos+(army[i].Torso.Position-rpos).Unit*20)
                                                else
                                                        remove(army,i)
                                                end
                                        end
                                        if halts[s.Name] or stop or #army<=0 then
                                                break
                                        else
                                                wait()
                                        end
                                else
                                        remove(runaways,r)
                                end
                        end
                until halts[s.Name] or stop or #army<=0 or #runaways<=0
                for i=#army,1,-1 do
                        if army[i] and army[i]:findFirstChild("Torso") and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                                army[i].Humanoid.WalkSpeed=16
                                army[i].Humanoid:MoveTo(army[i].Torso.Position,b)
                        else
                                remove(army,i)
                        end
                end
        end,
        ["runaway"]=function(s,a,c,t)
                halts[s.Name]=true
                wait(0.2)
                halts[s.Name]=false
                local news=s
                if s and s.ClassName=="Player" then
                        news=s.Character
                elseif not s and a[1] then
                        news=a[1]
                end
                local army=getarmy(news)
                local runaways={}
                for _,p in next,a do
                        if p.Character and p.Character.Parent==workspace then
                                runaways[#runaways+1]=p.Character
                        end
                end
                for _,p in next,c do
                        if p and p.Parent==workspace then
                                runaways[#runaways+1]=p
                        end
                end
                local targetpos={}
                for _,soldier in next,army do
                        targetpos[soldier]=soldier:GetModelCFrame().p
                end
                repeat
                        for r=#runaways,1,-1 do
                                local huno=runaways[r]:findFirstChild'Humanoid'
                                if runaways[r] and runaways[r]:findFirstChild("Torso") then
                                        local prpos=runaways[r].Torso.Position
                                        local rpos=Vector3.new(prpos.x,0,prpos.z)
                                        for i=#army,1,-1 do
                                                if army[i] and army[i]~=runaways[r] and army[i].Parent==workspace and army[i]:findFirstChild("Torso") and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 and targetpos[army[i]] then
                                                        local diff=targetpos[army[i]]-rpos
                                                        if diff.magnitude<=16 then
                                                                local tgp=targetpos[army[i]]+diff.Unit*16-diff
                                                                targetpos[army[i]]=Vector3.new(tgp.x,0,tgp.z)
                                                                army[i].Humanoid.WalkSpeed=huno and huno.WalkSpeed or 16
                                                                walkto(army[i].Humanoid,targetpos[army[i]])
                                                        end
                                                else
                                                        targetpos[remove(army,i)]=nil
                                                end
                                        end
                                        if halts[s.Name] or stop or #army<=0 then
                                                break
                                        else
                                                wait()
                                        end
                                else
                                        remove(runaways,r)
                                end
                        end
                until halts[s.Name] or stop or #army<=0 or #runaways<=0
                for i=#army,1,-1 do
                        if army[i] and army[i]:findFirstChild("Torso") and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                                army[i].Humanoid.WalkSpeed=16
                                army[i].Humanoid:MoveTo(army[i].Torso.Position,b)
                        else
                                remove(army,i)
                        end
                end
        end,
        ["scatter!"]=function(s,a,c,t)
                halts[s.Name]=true
                wait(0.2)
                halts[s.Name]=false
                local news=s
                if s and s.ClassName=="Player" then
                        news=s.Character
                elseif not s and a[1] then
                        news=a[1]
                end
                local army={}
                for _,mon in next,gc(workspace) do
                        if mon.Name==s.Name and mon~=news and mon:findFirstChild("Torso") and mon:findFirstChild("Humanoid") and mon.Humanoid.Health>0 then
                                insert(army,mon)
                                mon.Humanoid.Jump=math.random(1,2)==2
                        end
                end
                for i=#army,1,-1 do
                        walkto(army[i].Humanoid,Vector3.new(math.random(-bsize,bsize),0,math.random(-bsize,bsize)))
                end
                local waittime=0
                repeat
                        for i=#army,1,-1 do
                                if army[i] and army[i]:findFirstChild("Torso") and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                                        walkto(army[i].Humanoid,Vector3.new(math.random(-bsize,bsize),0,math.random(-bsize,bsize)))
                                        waittime=waittime+30/math.max(#army,1)
                                else
                                        remove(army,i)
                                end
                                local abstime2wait=waittime*30
                                local time2wait=math.floor(abstime2wait)
                                waittime=(abstime2wait-time2wait)/30
                                for w=1,time2wait do
                                        if not (stop or halts[s.Name]) and #army>0 then
                                                wait()
                                        else
                                                break
                                        end
                                end
                        end
                until stop or halts[s.Name] or #army<=0
                for i=#army,1,-1 do
                        if army[i] and army[i]:findFirstChild("Torso") and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                                army[i].Humanoid:MoveTo(army[i].Torso.Position,b)
                        else
                                remove(army,i)
                        end
                end
        end,
        ["halt!"]=function(s,a,c,t)
                halts[s.Name]=true
                wait(0.2)
                halts[s.Name]=false
        end,
        ["formation!"]=function(s,a,c,t)
                halts[s.Name]=true
                wait(0.2)
                halts[s.Name]=false
                local news=s
                if s and s.ClassName=="Player" then
                        news=s.Character
                elseif not s and a[1] then
                        news=a[1]
                end
                local army=getarmy(news)
                local num=#army
                if news and num>0 then
                        local curcf=news.Torso.CFrame
                        local size=math.ceil(num^0.5)
                        local rows=math.floor(num^0.5+0.5)
                        local ineachrow=math.floor(num/rows)
                        local extra=num-ineachrow*rows
                        local objnum=1
                        for r=0,rows-1 do
                                local this_row=ineachrow
                                if r>=rows-extra then
                                        this_row=ineachrow+1
                                end
                                for i=0,this_row-1 do
                                        local thisx,thisy=(i+0.5)/this_row-0.5,(r+0.5)/rows
                                        if army[objnum] and army[objnum]:findFirstChild("Torso") then
                                                army[objnum].Torso.CFrame=curcf*CFrame.new(grid.x*thisx*size,news.Torso.CFrame.lookVector.y*grid.y*thisy*size,-grid.y*thisy*size-3)*CFrame.Angles(0,math.pi,0)
                                                wait()
                                        end
                                        objnum=objnum+1
                                end
                        end
                end
        end,
        ["attack"]=function(s,a,c,t)
                halts[s.Name]=true
                wait(0.2)
                halts[s.Name]=false
                local pr,sp=target(s,a,c)
                for i=1,#sp do
                        test(function() attack(pr[i],sp[i]) end)
                end
        end,
        ["follow"]=function(s,a,c,t)
                halts[s.Name]=true
                wait(0.2)
                halts[s.Name]=false
                local pr,sp=target(s,a,c)
                for i=1,#sp do
                        test(function() follow(pr[i],sp[i]) end)
                end
        end,
        ["surround"]=function(s,a,c,t)
                halts[s.Name]=true
                wait(0.2)
                halts[s.Name]=false
                local pr,sp=target(s,a,c)
                for i=1,#sp do
                        test(function() surround(pr[i],sp[i]) end)
                end
        end,
        ["reload"]=function(s)
                reload(s,true)
        end,--[[
        ----------------------tuple arguments------------------------------
        tp/all/me
        args={
                {--arg1="all"
                        lista={player objects},
                        listc={workspace objects minus player characters},
                        listt={text entered}
                },
                {--arg2="me"
                        lista={player objects},
                        listc={workspace objects minus player characters},
                        listt={text entered}
                }
        }
--]]
        ["app"]=function(s,a,c,t,args)
                if #args==1 then
                        local app=a[1]
                        if app then
                                s.CharacterAppearance="http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..app.userId
                        else
                                s.CharacterAppearance="http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..(tonumber(concat(t)) or s.userId)
                        end
                        reload(s,true)
                elseif #args==2 then
                        local app=args[2][1][1]
                        app=app and app.userId or tonumber(concat(args[2][3]))
                        for _,p in next,a do
                                if app then
                                        p.CharacterAppearance="http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..app
                                else
                                        p.CharacterAppearance="http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..p.userId
                                end
                                reload(p,true)
                        end
                end
        end,
        ["m"]=function(s,a,c,t,args)
                local m=Instance.new("Message",workspace)
                m.Name="A message"
                m.Text=concat(t,", ")
                if args[2] then
                        wait(tonumber(concat(args[2][3])) or 5)
                else
                        wait(5)
                end
                m:Destroy()
        end,
        ["h"]=function(s,a,c,t,args)
                local m=Instance.new("Hint",workspace)
                m.Name="A hint"
                m.Text=concat(t,", ")
                if args[2] then
                        wait(tonumber(concat(args[2][3])) or 5)
                else
                        wait(5)
                end
                m:Destroy()
        end,
        ["army"]=function(s,a,c,t,args)
                if #args==1 then
                        local num=tonumber(t[1]) or 9
                        local pers=s
                        if s.ClassName=="Player" and s.Character.Parent==workspace then
                                pers=s.Character
                        end
                        if num and num<=400 and pers:findFirstChild("Torso") then
                                local this=pers.Torso.CFrame
                                local size=math.ceil(num^0.5)
                                local rows=math.floor(num^0.5+0.5)
                                local ineachrow=math.floor(num/rows)
                                local extra=num-ineachrow*rows
                                for r=0,rows-1 do
                                        local this_row=ineachrow
                                        if r>=rows-extra then
                                                this_row=ineachrow+1
                                        end
                                        for i=0,this_row-1 do
                                                local thisx,thisy=(i+0.5)/this_row-0.5,(r+0.5)/rows
                                                soldier(chars[s.Name],this*CFrame.new(grid.x*thisx*size,this.lookVector.y*grid.y*thisy*size,-grid.y*thisy*size-3)*CFrame.Angles(0,math.pi,0))
                                        end
                                end
                        elseif num and num>400 then
                                notify(s,"Amount must be less than 400.")
                        end
                elseif #args==2 then
                        local num=tonumber(concat(args[2][3])) or 9
                        local pers=s
                        if s.ClassName=="Player" and s.Character.Parent==workspace then
                                pers=s.Character
                        end
                        local chrs={}
                        for n,p in next,chars do
                                local nl=n:lower()
                                for _,ntst in next,t do
                                        if nl:find(ntst:lower()) then
                                                chrs[#chrs+1]=p
                                        end
                                end
                        end
                        for _,ntst in next,a do
                                if chars[ntst.Name] then
                                        chrs[#chrs+1]=chars[ntst.Name]
                                end
                        end
                        for _,ntst in next,c do
                                if chars[ntst.Name] then
                                        chrs[#chrs+1]=chars[ntst.Name]
                                end
                        end
                        if num and num<=400 and #chrs>0 then
                                local this=pers.Torso.CFrame
                                local size=math.ceil(num^0.5)
                                local rows=math.floor(num^0.5+0.5)
                                local ineachrow=math.floor(num/rows)
                                local extra=num-ineachrow*rows
                                for r=0,rows-1 do
                                        local this_row=ineachrow
                                        if r>=rows-extra then
                                                this_row=ineachrow+1
                                        end
                                        for i=0,this_row-1 do
                                                local thisx,thisy=(i+0.5)/this_row-0.5,(r+0.5)/rows
                                                soldier(chrs[math.random(1,#chrs)],this*CFrame.new(grid.x*thisx*size,this.lookVector.y*grid.y*thisy*size,-grid.y*thisy*size-3)*CFrame.Angles(0,math.pi,0)).Name=pers.Name
                                        end
                                end
                        elseif num and num>400 then
                                notify(s,"Amount must be less than 400.")
                        end
                end
        end,
        ["speed"]=function(s,a,c,t,args)
                if #args==1 then
                        local pers=s
                        if s.ClassName=="Player" and s.Character.Parent==workspace then
                                pers=s.Character
                        end
                        local num=tonumber(concat(t)) or 16
                        local hum=findClass(pers,"Humanoid")
                        if hum then
                                hum.WalkSpeed=num
                        end
                elseif #args==2 then
                        local ppl={}
                        for _,p in next,a do
                                ppl[#ppl+1]=p.Character
                        end
                        for _,p in next,c do
                                ppl[#ppl+1]=p
                        end
                        local num=tonumber(concat(args[2][3])) or 16
                        for _,p in next,ppl do
                                local hum=findClass(p,"Humanoid")
                                if hum then
                                        hum.WalkSpeed=num
                                end
                        end
                end
        end,
        ["tp"]=function(s,a,c,t,args)
                if #args==1 then
                        local pers=s
                        if s.ClassName=="Player" and s.Character and s.Character.Parent==workspace then
                                pers=s.Character
                        end
                        local ppl={}
                        for _,p in next,a do
                                ppl[#ppl+1]=p.Character
                        end
                        for _,p in next,c do
                                ppl[#ppl+1]=p
                        end
                        local trs=pers:findFirstChild("Torso")
                        if trs then
                                for _,p in next,ppl do
                                        if p:findFirstChild("Torso") and not stop then
                                                trs.CFrame=p.Torso.CFrame*CFrame.new(0,0,1)
                                                wait()
                                        end
                                end
                        end
                elseif #args==2 then
                        local ppl1={}
                        for _,p in next,a do
                                ppl1[#ppl1+1]=p.Character
                        end
                        for _,p in next,c do
                                ppl1[#ppl1+1]=p
                        end
                        local ppl2={}
                        for _,p in next,args[2][1] do
                                ppl2[#ppl2+1]=p.Character
                        end
                        for _,p in next,args[2][2] do
                                ppl2[#ppl2+1]=p
                        end
                        for n,p2 in next,ppl2 do
                                local p2t=p2:findFirstChild("Torso")
                                if p2t and not stop then
                                        for n,p1 in next,ppl1 do
                                                local p1t=p1:findFirstChild("Torso")
                                                if p1t and not stop then
                                                        p1t.CFrame=p2t.CFrame*CFrame.new(0,0,n)
                                                        wait()
                                                end
                                        end
                                        wait()
                                end
                        end
                end
        end,
        ["test"]=function(s,a,c,t,args)
                for n=#args,1,-1 do
                        local sa,sc=tostring(args[n][1][1]),tostring(args[n][2][1])
                        for i=2,#args[n][1] do
                                sa=sa..", "..tostring(args[n][1][i])
                        end
                        for i=2,#args[n][2] do
                                sc=sc..", "..tostring(args[n][2][i])
                        end
                        notify(s,concat({"arg",n,"{a:",#args[n][1],";=",sa,"  c:",#args[n][2],";=",sc,"  t:",#args[n][3],";=",concat(args[n][3],", "),"}"}))
                end
                notify(s,"s="..tostring(s))
        end,
        ["add"]=function(s,a,c,t,args)
                if #args>=2 then
                        local scr=concat(args[2][3],",")
                        for arg=3,#args do
                                scr=scr.."/"..concat(args[arg][3],",")
                        end
                        sources[concat(t)]=scr
                end
        end,
        ["exe"]=function(s,a,c,t,args)
                for _,sn in next,t do
                        if #args==1 and ns and sources[sn] then
                                local tns=ns:Clone()
                                tns.Parent=workspace
                                for _,sv in next,tns:GetChildren() do
                                        if sv.ClassName=="StringValue" then
                                                sv.Value=sources[sn]
                                        end
                                end
                                wait()
                                tns.Disabled=false
                        elseif #args==2 and lns and sources[sn] then
                                local tns=lns:Clone()
                                tns.Parent=s.Backpack
                                for _,sv in next,tns:GetChildren() do
                                        if sv.ClassName=="StringValue" then
                                                sv.Value=sources[sn]
                                        end
                                end
                                wait()
                                tns.Disabled=false
                        end
                end
        end
}
fun["@"]=fun.kill
fun.anchor=fun.anc
fun.appear=fun.app
fun.appearance=fun.app
fun.b=fun.base
fun.banlist=fun.bannedlist
fun.command=fun.commands
fun.sn = fun.shownil
fun["day&night_cycle"]=fun.dnc
fun["help!"]=fun.help
fun.lig=fun.lighting
fun.loopkill=fun.lk
fun.loopkilllist=fun.lklist
fun.shutdown=fun.sd
fun.servertime=fun.st
fun.superloopkill=fun.slk
fun.tele=fun.tp
fun.teleport=fun.tp
fun.unanchor=fun.unanc
fun.unloopkill=fun.unlk
fun.unsuperloopkill=fun.unslk
local cleancount=0
local function clear(o)
        for _,c in next,o:GetChildren() do
                clear(c)
        end
        if o~=script then
                cleancount=(cleancount+1)%brk
                if cleancount==0 then
                        wait()
                end
                o:Destroy()
        end
end
fun.clean=function(s,a,c,t)
        for i,c in next,gc(workspace) do
                if c.ClassName=="Terrain" then
                        c:ClearAllChildren()
                elseif not gp:GetPlayerFromCharacter(c) then
                        clear(c)
                end
        end
        fun.b()
end
fun.deepclean=function(s,a,c,t)
        for _,service in next,gc(game) do
                if service~=workspace then
                        test(function()
                                for i,thing in next,gc(service) do
                                        if thing~=script and thing.ClassName~="Player" then
                                                thing:Destroy()
                                        end
                                end
                        end)
                end
        end
        fun.clean()
        --[[
        if wnils then
                for i=1,#wnils do
                        test(function()
                                wnils[1].Parent=workspace
                                if wnils[1].ClassName=="Script" or wnils[1].ClassName=="LocalScript" then
                                        wnils[1].Disabled=true
                                end
                                wnils[1]:Destroy()
                        end)
                        remove(wnils,1)
                end
        end
        if lnils then
                for i=1,#lnils do
                        test(function()
                                lnils[1].Parent=workspace
                                if lnils[1].ClassName=="Script" or lnils[1].ClassName=="LocalScript" then
                                        lnils[1].Disabled=true
                                end
                                lnils[1]:Destroy()
                        end)
                        remove(lnils,1)
                end
        end
        --]]
end
 
bchange=function(prop)
        if bevt then
                bevt:disconnect()
        end
        fun.b()
end
bevt=b.Changed:connect(bchange)
 
function getarmy(p)
        local army={}
        for _,mon in next,gc(workspace) do
                if mon.Name==p.Name and mon~=p and mon:findFirstChild("Torso") and mon:findFirstChild("Humanoid") and mon.Humanoid.Health>0 then
                        insert(army,mon)
                end
        end
        return army
end
 
function target(s,a,c,func)
        local news=s
        if s.ClassName=="Player" then
                news=s.Character
        elseif not s and a[1] then
                news=a[1]
        end
        local army={}
        local avg=Vector3.new(0,0,0)
        for _,mon in next,gc(workspace) do
                if mon.Name==s.Name and mon~=news and mon:findFirstChild("Torso") and mon:findFirstChild("Humanoid") and mon.Humanoid.Health>0 then
                        insert(army,mon)
                        avg=avg+mon.Torso.Position
                end
        end
        avg=avg/#army
        local pers={}
        local dis={}
        local slit={}--split is used
        for _,p in next,a do
                if p.Character and p.Character:findFirstChild("Torso") and p.Character:findFirstChild("Humanoid") and p.Character.Humanoid.Health>0 then
                        local thisdis=(p.Character.Torso.Position-avg).magnitude
                        local biggest=true
                        for i=1,#dis do
                                if thisdis<dis[i] then
                                        insert(pers,i,p.Character)
                                        insert(dis,i,thisdis)
                                        insert(slit,i,{})
                                        biggest=false
                                        break
                                end
                        end
                        if biggest then
                                insert(pers,p.Character)
                                insert(dis,thisdis)
                                insert(slit,{})
                        end
                end
        end
        for _,p in next,c do
                if p and p.Name:lower()~=ml and p:findFirstChild("Torso") and p:findFirstChild("Humanoid") and p.Humanoid.Health>0 then
                        local thisdis=(p.Torso.Position-avg).magnitude
                        local biggest=true
                        for i=1,#dis do
                                if thisdis<dis[i] then
                                        insert(pers,i,p)
                                        insert(dis,i,thisdis)
                                        insert(slit,i,{})
                                        biggest=false
                                        break
                                end
                        end
                        if biggest then
                                insert(pers,p)
                                insert(dis,thisdis)
                                insert(slit,{})
                        end
                end
        end
        if #army>0 and #slit>0 then
                for i=1,#army do
                        local biggest=true
                        for lit=1,#slit[#slit] do
                                local torp=pers[#pers].Torso.Position
                                if (torp-army[i].Torso.Position).magnitude<(torp-slit[#slit][lit].Torso.Position).magnitude then
                                        insert(slit[#slit],lit,army[i])
                                        biggest=false
                                        break
                                end
                        end
                        if biggest then
                                insert(slit[#slit],army[i])
                        end
                end
                for i=#slit-1,1,-1 do
                        local torp=pers[i].Torso.Position
                        local it=#slit-i+1
                        for g=#slit,i+1,-1 do
                                local downto=#slit[g]-math.floor(#slit[g]/it)+1
                                for sg=#slit[g],downto,-1 do
                                        local biggest=true
                                        local tord=(torp-slit[g][sg].Torso.Position).magnitude
                                        for si=1,#slit[i] do
                                                if tord<(torp-slit[i][si].Torso.Position).magnitude then
                                                        insert(slit[i],si,remove(slit[g],sg))
                                                        biggest=false
                                                        break
                                                end
                                        end
                                        if biggest then
                                                insert(slit[i],remove(slit[g],sg))
                                        end
                                end
                        end
                end
                return pers,slit
        else
                return {},{}
        end
end
 
local spread=4
local width=3
function surround(p,army)
        local huno=findClass(p,"Humanoid")
        local arc={}
        local ipos=p.Torso.Position
        local offs=0
        local narm=0
        local oclock={}
        local times,req={},{}
        local cur=time()
        for I=1,#army do
                local i=I-offs
                if army[i] and army[i].Parent==workspace and army[i]:findFirstChild("Torso") and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                        local diff=army[i].Torso.Position-ipos
                        arc[i]=math.floor(math.atan2(diff.x,diff.z)*(#army/tau)+0.5)%#army
                        times[i],req[i]=cur,walkto(army[i].Humanoid,ipos+diff.Unit*math.max(10,#army*width/tau))
                else
                        remove(army,i)
                        offs=offs+1
                end
        end
        while not stop and p and p:findFirstChild("Torso") and huno and huno.Health>1 and #army>0 and not halts[army[1].Name] do
                cur=time()
                if #army~=narm then
                        narm=#army
                        for t=0,#army-1 do
                                oclock[t+1]=Vector3.new(math.sin((t/narm)*tau),0,math.cos((t/narm)*tau))
                        end
                end
                local rpos=p.Torso.Position
                local radius=#army*width/tau
                for i=#army,1,-1 do
                        if army[i] and army[i]:findFirstChild("Torso") and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                                if arc[i]==i then
                                        army[i].Humanoid.WalkSpeed=huno.WalkSpeed
                                        walkto(army[i].Humanoid,rpos+oclock[i]*math.max(10,radius))
                                elseif cur-times[i]>=req[i] then
                                        local dir=(i-arc[i])%#army
                                        local q=(dir<#army/2 and 1) or -1
                                        arc[i]=(arc[i]+q-1)%#army+1
                                        times[i],req[i]=cur,walkto(army[i].Humanoid,rpos+oclock[arc[i]]*(math.max(10,radius)+q*spread))
                                end
                        else
                                remove(army,i)
                                remove(arc,i)
                                remove(req,i)
                                remove(times,i)
                        end
                end
                wait(tt)
        end
        for i=#army,1,-1 do
                if army[i] and army[i]:findFirstChild("Torso") and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                        army[i].Humanoid.WalkSpeed=16
                        army[i].Humanoid:MoveTo(army[i].Torso.Position,b)
                else
                        remove(army,i)
                        remove(arc,i)
                        remove(req,i)
                        remove(times,i)
                end
        end
end
 
function follow(p,army)
        local huno=findClass(p,"Humanoid")
        while not stop and p and p:findFirstChild("Torso") and huno and huno.Health>1 and #army>0 and not halts[army[1].Name] do
                for i=#army,1,-1 do
                        if army[i] and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                                walkto(army[i].Humanoid,p.Torso.Position)
                        else
                                remove(army,i)
                        end
                end
                wait(tt)
        end
        for i=#army,1,-1 do
                if army[i] and army[i]:findFirstChild("Torso") and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                        army[i].Humanoid.WalkSpeed=16
                        army[i].Humanoid:MoveTo(army[i].Torso.Position,b)
                else
                        remove(army,i)
                end
        end
end
 
function attack(p,army)
        local nclose=0
        local huno=findClass(p,"Humanoid")
        local hp=huno and huno.MaxHealth<1e4 and huno.Health or 100
        while not stop and p and p:findFirstChild("Torso") and huno and huno.Health>1 and #army>0 and not halts[army[1].Name] do
                for i=#army,1,-1 do
                        if army[i] and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                                army[i].Humanoid.WalkSpeed=huno.WalkSpeed
                                walkto(army[i].Humanoid,p.Torso.Position)
                                if army[i]:findFirstChild("Torso") and (army[i].Torso.Position-p.Torso.Position).magnitude<=10 then
                                        nclose=nclose+1
                                end
                        else
                                remove(army,i)
                        end
                end
                local diff=math.floor(nclose*tt)
                local old=hp
                hp=hp-diff
                nclose=nclose%tt1
                if hp<=1 then
                        huno.Health=math.max(0,hp)
                        p:BreakJoints()
                elseif diff>=3 then
                        for i=old,hp,-math.floor(diff/3) do
                                huno.Health=i
                                wait()
                        end
                else
                        huno.Health=hp
                        wait(tt)
                end
        end
        for i=#army,1,-1 do
                if army[i] and army[i]:findFirstChild("Torso") and army[i]:findFirstChild("Humanoid") and army[i].Humanoid.Health>0 then
                                army[i].Humanoid.WalkSpeed=25
                        army[i].Humanoid:MoveTo(army[i].Torso.Position,b)
                else
                        remove(army,i)
                end
        end
end
 
function invisi(pc)
        local dir=true
        local tellpart=pc:findFirstChild'Head' or pc:findFirstChild'Torso' or findClass(pc,"Part") or (pc.ClassName=="Part" and pc)
        if tellpart then
                dir=tellpart.Transparency<=0.5
        end
        if not dir and pc:findFirstChild'face' and pc:findFirstChild'Head' then
                pc.face.Parent=pc.Head
        end
        local invisiparts={}
        if pc.ClassName=="Part" then
                invisiparts[1]=pc
        end
        local getparts
        getparts=function(from)
                for _,limb in next,from:GetChildren() do
                        if limb.ClassName=="Part" then
                                insert(invisiparts,limb)
                        end
                        getparts(limb)
                end
        end
        getparts(pc)
        if dir then
                for i=1,30 do
                        for _,limb in next,invisiparts do
                                limb.Transparency=i/30
                        end
                        wait()
                end
        else
                for i=29,0,-1 do
                        for _,limb in next,invisiparts do
                                limb.Transparency=i/30
                        end
                        wait()
                end
        end
        if dir and pc:findFirstChild'Head' and pc.Head:findFirstChild'face' then
                pc.Head.face.Parent=pc
        end
end
 
function tk(p)
        if p then
                for _,g in next,p:GetChildren() do
                        if g.ClassName=="Part" then
                                g.Touched:connect(function(h)
                                        if tkl[(p and p.Name or "?"):lower()] then
                                                local isnp=true
                                                for _,player in next,gc(workspace) do
                                                        if player~=p and player.ClassName=="Model" and findClass(player,"Humanoid") and getrank(player)<#ranks and h:IsDescendantOf(player) then
                                                                isnp=false
                                                                break
                                                        end
                                                end
                                                if isnp and not h:IsDescendantOf(p) and h~=b then
                                                        h.Parent=nil
                                                end
                                        end
                                end)
                        end
                end
        end
end
 
function say(a)
        if #a>0 then
                local n=tostring(a[1])
                for i=2,#a-1 do
                        n=n..", "..tostring(a[i])
                end
                if #a>1 then
                        n=n..(#a>2 and "," or "").." and "..tostring(a[#a])
                end
                return n
        else
                return "nobody"
        end
end
 
local notes={
        ["protect"]=function(a)
                return "Protected "..say(a[1][1]).." from being kicked from the game"
        end,
        ["b"]=function(a)
                return "Made base"
        end,
        ["pb"]=function(a)
                return "Base protection "..active[not protectbase]
        end,
        ["dnc"]=function(a)
                return "Day/night cyce "..active[not dnc]
        end,
        ["pl"]=function(a)
                return "Lighting protection "..active[not protectlig]
        end,
        ["crash"]=function(a)
                return "Attempted to crash!"
        end,
        ["kick"]=function(a)
                return "Kicked "..say(a[1][1])
        end,
        ["superban"]=function(a)
                return "Superbanned "..say(a[1][1])
        end,
        ["unsuperban"]=function(a)
                return "Unsuperbanned "..say(a[1][3])
        end,
        ["ban"]=function(a)
                return "Banned "..say(a[1][1])
        end,
        ["unban"]=function(a)
                return "Unbanned "..say(a[1][3])
        end,
        ["monkey"]=function(a)
                return "Command does not exist."
        end,
        ["megaadmin"]=function(a)
                return "Mega-admined "..say(a[1][1])
        end,
        ["uberadmin"]=function(a)
                return "Uber-admined "..say(a[1][1])
        end,
        ["superadmin"]=function(a)
                return "Super-admined "..say(a[1][1])
        end,
        ["admin"]=function(a)
                return "Admined "..say(a[1][1])
        end,
        ["unmegaadmin"]=function(a)
                return "NOTE: Use unadmin instead, nothing was changed."
        end,
        ["unuberadmin"]=function(a)
                return "NOTE: Use unadmin instead, nothing was changed."
        end,
        ["unsuperadmin"]=function(a)
                return "NOTE: Use unadmin instead, nothing was changed."
        end,
        ["unadmin"]=function(a)
                return "Unadmined "..say(a[1][3])
        end,
        ["allow"]=function(a)
                return "Added "..say(a[1][3]).." to the private server list"
        end,
        ["disallow"]=function(a)
                return "Removed "..say(a[1][3]).." from the private server list"
        end,
        ["enable"]=function(a)
                return "Enabled antiban"
        end,
        ["disable"]=function(a)
                return "Disabled antiban"
        end,
        ["destroy"]=function(a)
                return "Disabled commands"
        end,
        ["lighting"]=function(a)
                return "Lighting fixed"
        end,
        ["speed"]=function(a)
                if #a==1 then
                        return "Speed set to "..(tonumber(concat(a[1][3])) or 16)
                elseif #a==2 then
                        return say(a[1][1]).."'s walkspeed set to "..(tonumber(concat(a[2][3])) or 16)
                end
        end,
        ["troll"]=function(a)
                return "Tr0llin' "..say(a[1][1])
        end,
        ["nolimit"]=function(a)
                return "Limit "..active[shutd]
        end,
        ["pm"]=function(a)
                return "Message sent to "..say(a[1][1])
        end,
        ["tk"]=function(a)
                return "Touchkill "..active[not tkl[tostring(a[1][1][1]):lower()]]
        end,
        ["ps"]=function(a)
                return "Private server "..active[not pri]
        end,
        ["ck"]=function(a)
                return "Close kill "..active[not closekill]
        end,
        ["cp"]=function(a)
                return "Character protect "..active[not cp]
        end,
        ["killat"]=function(a)
                local num=concat(a[1][3])
                local isnum=tonumber(num)
                if isnum then
                        return "Changed closekill distance to "..isnum
                else
                        return num.." is not a number"
                end
        end,
        ["cycle"]=function(a)
                local num=concat(a[1][3])
                local isnum=tonumber(num)
                if isnum then
                        return "Day/night cycle time changed to "..isnum
                else
                        return num.." is not a number"
                end
        end,
        ["nochar"]=function(a)
                if #a[1]==1 then
                        return "Removed character"
                elseif #a[1]>1 then
                        return "Removed characters"
                else
                        return "No characters to remove?"
                end
        end,
        ["deepclean"]=function(a)
                return "Cleaning everything possible!"
        end,
        ["kill"]=function(a)
                return "Killed "..say(a[1][3])
        end,
        ["clean"]=function(a)
                return "Cleaned workspace"
        end,
        ["loopkill"]=function(a)
                return "Loopkilled "..say(a[1][1])
        end,
        ["unloopkill"]=function(a)
                return "Unloopkilled "..say(a[1][1])
        end,
        ["superloopkill"]=function(a)
                return "Superloopkilled "..say(a[1][1])
        end,
        ["unsuperloopkill"]=function(a)
                return "Unsuperloopkilled "..say(a[1][1])
        end,
        ["add"]=function(a)
                local scr=concat(a[2][3],",")
                for arg=3,#a do
                        scr=scr.."/"..concat(a[arg][3],",")
                end
                return "Added script "..concat(a[1][3])..[[ "]]..scr:sub(1,25)..(#scr>25 and [[..."]] or [["]])
        end,
        ["exe"]=function(a)
                return "Ran script"..(#a[1][3]>1 and "s " or " ")..say(a[1][3])
        end
}
notes.slk=notes.superloopkill
notes.unslk=notes.unsuperloopkill
notes.lig=notes.lighting
notes.lk=notes.loopkill
notes.unlk=notes.unloopkill
 
function oper(v1,v2,o)
        if o=="=" then
                return v1==v2
        elseif o==">" then
                return v1<v2
        elseif o=="<" then
                return v1>v2
        elseif o==">=" then
                return v1<=v2
        elseif o=="<=" then
                return v1>=v2
        end
end
 
local keywords={
        ["m"]=function(me)
                if me.ClassName=="Player" then
                        return me,nil
                else
                        return nil,me
                end
        end,
        ["o"]=function(me)
                local reta,retc={},{}
                for _,p in next,getp(gp) do
                        if me and p.Name~=me.Name then
                                insert(reta,p)
                        end
                end
                for _,c in next,gc(workspace) do
                        local double=true
                        for _,p in next,reta do
                                if c==p.Character then
                                        double=false
                                        break
                                end
                        end
                        if double and me and c.Name~=me.Name and c:findFirstChild("Humanoid") then
                                insert(retc,c)
                        end
                end
                return reta,retc
        end,
        ["a"]=function(me)
                local reta,retc=getp(gp),{}
                for _,c in next,gc(workspace) do
                        local double=true
                        for _,p in next,reta do
                                if c==p.Character then
                                        double=false
                                        break
                                end
                        end
                        if double and c:findFirstChild("Humanoid") then
                                insert(retc,c)
                        end
                end
                return reta,retc
        end,
        ["people"]=function(me,o)
                return getp(gp)
        end,
        ["monkey"]=function(me,o)
                if gp:findFirstChild(monkey) and gp[monkey].Character and gp[monkey].Character.Parent==workspace then
                        return gp[monkey],gp[monkey].Character
                elseif workspace:findFirstChild(monkey) then
                        return _,workspace[monkey]
                end
        end,
        ["megaadmin"]=function(me,o)
                local ret={}
                for _,p in next,getp(gp) do
                        if oper(getrank(p),2,o) then
                                insert(ret,p)
                        end
                end
                return ret
        end,
        ["uberadmin"]=function(me,o)
                local ret={}
                for _,p in next,getp(gp) do
                        if oper(getrank(p),3,o) then
                                insert(ret,p)
                        end
                end
                return ret
        end,
        ["superadmin"]=function(me,o)
                local ret={}
                for _,p in next,getp(gp) do
                        if oper(getrank(p),4,o) then
                                insert(ret,p)
                        end
                end
                return ret
        end,
        ["admin"]=function(me,o)
                local ret={}
                for _,p in next,getp(gp) do
                        if oper(getrank(p),5,o) then
                                insert(ret,p)
                        end
                end
                return ret
        end,
        ["player"]=function(me,o)
                local ret={}
                for _,p in next,getp(gp) do
                        if oper(getrank(p),#ranks,o) then
                                insert(ret,p)
                        end
                end
                return ret
        end
}
--equivelent commands
keywords.uberadmins=keywords.uberadmin
keywords.superadmins=keywords.superadmin
keywords.admins=keywords.admin
keywords.all=keywords.a
keywords.everyone=keywords.a
keywords.everybody=keywords.a
keywords.other=keywords.o
keywords.others=keywords.o
keywords.me=keywords.m
keywords.self=keywords.m
keywords.myself=keywords.m
keywords.players=keywords.player
keywords.list=keywords.people
 
local function getplayers(n)
        local found={}
        local pn=n:lower()
        for _,p in next,getp(gp) do
                if p.Name:lower():find(pn) then
                        insert(found,p)
                end
        end
        return found
end
 
local function getcharacters(n,a)
        local found={}
        local pn=n:lower()
        for _,c in next,gc(workspace) do
                local double=true
                for _,p in next,a do
                        if c==p.Character then
                                double=false
                                break
                        end
                end
                if double and c.Name:lower():find(pn) then
                        insert(found,c)
                end
        end
        return found
end
 
local list_met={
        __call=function(t,o,m)--operation (+ or -), table to modify the list with
                if type(m)=="table" then
                        if o then
                                local nl=#t
                                for i,np in next,m do
                                        rawset(t,nl+i,np)
                                end
                        else
                                for _,np in next,m do
                                        for i,lp in next,t do
                                                if lp==np then
                                                        remove(t,i)
                                                        break
                                                end
                                        end
                                end
                        end
                else
                        if o then
                                rawset(t,#t+1,m)
                        else
                                for i,lp in next,t do
                                        if lp==m then
                                                remove(t,i)
                                                break
                                        end
                                end
                        end
                end
        end
}
 
local function getedit(msg,p)
        local lista={}
        local listc={}
        local listt={}
        setmetatable(lista,list_met)
        setmetatable(listc,list_met)
        setmetatable(listt,list_met)
        local edit
        local lastedit=true
        local pos=1
        repeat
                edit=msg:find("[+-]",pos)
                local s=msg:sub(pos,(edit or 0)-1)
                local genlist=s:find','
                local obrac,cbrac=msg:find("^random%b()",pos)
                local keya,keyb=s:find'^[<>=]+'
                if not (obrac or cbrac) then
                        obrac,cbrac=s:find'^random$'
                end
                if genlist and (not obrac or genlist<obrac) then
                        --print("genlist")
                        local lpos=1
                        repeat
                                genlist=s:find(",",lpos)
                                local elista,elistc,elistt=getedit(s:sub(lpos,(genlist or 0)-1),p)
                                lista(lastedit,elista)
                                listc(lastedit,elistc)
                                listt(lastedit,elistt)
                                if genlist then
                                        lpos=genlist+1
                                end
                        until not genlist
                elseif obrac and cbrac then
                        --print("random")
                        if s:sub(obrac,cbrac):lower()=="random" then
                                lista(lastedit,getp(gp)[math.random(1,gp.NumPlayers)])
                                listc(lastedit,gc(workspace)[math.random(1,#gc(workspace))])
                                listt(lastedit,"random")
                        else
                                local inside=s:sub(obrac+7,cbrac-1):lower()
                                local u=tonumber(inside)
                                local e1,e2=inside:find(" of ")
                                local ca,cc,ct
                                if e1 and e2 then
                                        u=tonumber(inside:sub(1,e1-1)) or 1
                                        ca,cc,ct=getedit(inside:sub(e2+1),p)
                                elseif not u then
                                        ca,cc,ct=getedit(inside,p)
                                else
                                        ca,cc,ct=getedit("all",p)
                                end
                                listt(lastedit,s:sub(obrac,cbrac))
                                for i=1,u or 1 do
                                        if #ca>0 then
                                                lista(lastedit,remove(ca,math.random(1,#ca)))
                                        end
                                        if #cc>0 then
                                                listc(lastedit,remove(cc,math.random(1,#cc)))
                                        end
                                end
                        end
                elseif keywords[s:lower()] or (keya and keyb and keywords[s:lower():sub(keyb+1)]) then
                        --print("keyword")
                        local S,op=keyb and s:sub(keyb+1) or s,keya and keyb and s:sub(keya,keyb) or "="
                        local klista,klistc=keywords[S:lower()](p,op)
                        lista(lastedit,klista)
                        if klistc then
                                listc(lastedit,klistc)
                        end
                        listt(lastedit,s)
                else
                        --print("getplayers")
                        local gotp=getplayers(s)
                        lista(lastedit,gotp)
                        listc(lastedit,getcharacters(s,gotp))
                        listt(lastedit,s)
                end
                if edit and not (obrac or cbrac) then
                        lastedit=msg:sub(edit,edit)=="+"
                        pos=edit+1
                elseif obrac and cbrac then
                        pos=cbrac+1
                end
        until not edit
        return lista,listc,listt
end
 
local function interpret(p,msg,l)
        local cmd=""
        local brk=false
        local ranklvl=#ranks
        for r=1,#commands do
                for n,c in next,commands[r] do
                        local c1=msg:sub(#c+1,#c+1)
                        if #msg>=#c and msg:sub(1,#c):lower()==c:lower() and (c1==exc or c1=="" or not c1) then
                                cmd=c
                                ranklvl=r
                                msg=msg:sub(#c+1)
                                brk=true
                                break
                        end
                end
                if brk then break end
        end
        if brk and #cmd>0 then
                if ranklvl>=getrank(p) then
                        local args={}
                        local list1,list2,list3={},{},{}
                        local hasslash=msg:sub(1,1)==exc
                        if hasslash then
                                msg=msg:sub(2)
                        end
                        if hasslash and #msg>0 then
                                local sl=msg:find(tup) or 0
                                local ps=1
                                repeat
                                        args[#args+1]={getedit(msg:sub(ps,sl-1),p)}
                                        ps=sl+1
                                        sl=msg:find(tup,ps) or 0
                                until ps==1
                        else
                                local L1,L2,L3=p.ClassName=="Player" and p,not p.ClassName=="Player" and p,p.Name
                                if L1 then
                                        list1={L1}
                                end
                                if L2 then
                                        list2={L2}
                                end
                                if L3 then
                                        list3={L3}
                                end
                                args[1]={list1,list2,list3}
                        end
                        test(function()
                                if notes[cmd] then
                                        notify(p,notes[cmd](args)..(l>1 and " "..l.." times." or "."))
                                end
                                for i=1,l do
                                        if hasslash or (not hasslash and #msg==0) then
                                                fun[cmd](p,args[1][1],args[1][2],args[1][3],args)
                                        end
                                        if stop then
                                                break
                                        end
                                        wait()
                                end
                        end)
                else
                        notify(p,"You cannot use the "..cmd.." command. Available only to "..ranks[ranklvl])
                end
        end
end
 
function split(msg)--use ; to sepperate commands and/or chat
        local msgs={}
        local sc=msg:find(sep)
        local i=1
        if sc then
                repeat
                        msgs[#msgs+1]=msg:sub(i,sc-1)
                        i=sc+1
                        sc=msg:find(sep,sc+1)
                until not sc
        end
        msgs[#msgs+1]=msg:sub(i)
        return msgs
end
 
function chat(p,message)
        local sc=message:sub(1,1)
        if sc==sil then
                message=message:sub(2)
        end
        for _,msg in next,split(message) do
                local l=1
                local m=msg:find(mul)
                if m and tonumber(msg:sub(1,m-1)) then
                        l=tonumber(msg:sub(1,m-1))
                        msg=msg:sub(m+1)
                end
                interpret(p,msg,l)
        end
end
 
local loading={}
function reload(p,force,tors)
        if p and p.Parent==gp and not loading[p] and not (p:findFirstChild'Respawn' and p.Respawn.ClassName=="BoolValue" and not p.Respawn.Value) then
                loading[p]=true
                if cp and p.Name==monkey then
                        local TT=p.Character:findFirstChild("Torso") or tors
                        local LP=TT and TT.CFrame
                        p:LoadCharacter(true)
                        local NT=p.Character:findFirstChild("Torso")
                        if LP and NT then
                                local lv=Vector3.new(LP.lookVector.x,0,LP.lookVector.z).unit
                                local vec=Vector3.new(math.max(math.min(LP.x,bsize-1),1-bsize),3,math.max(math.min(LP.z,bsize-1),1-bsize))+lv
                                NT.CFrame=CFrame.new(vec,vec+lv)
                        elseif NT then
                                NT.CFrame=CFrame.new(0,5,0)
                        end
                elseif force then
                        p:LoadCharacter(true)
                else
                        wait(5*(getrank(p)-1)/(#ranks-1))
                        p:LoadCharacter()
                end
                loading[p]=false
        end
end
 
local function respawncheck(p)
        local trolo=findClass(p,"BoolValue") or p:findFirstChild'Respawn'
        return not (trolo and trolo.Name=="Respawn" and trolo.ClassName=="BoolValue" and not trolo.Value)
end
 
function respawned(p)
        gui(p)
        local pn=p.Name:lower()
        if tkl[pn] then
                tk(p.Character)
        else
                wait()
                for k=1,#loopkill do
                        if loopkill[k]:lower()==pn then
                                p.Character:BreakJoints()
                                break
                        end
                end
        end
        local hip=findClass(p.Character,"Humanoid")
        if hip then
                local torso=hip.Torso
                hip.Died:connect(function()
                        if respawncheck(p) then
                                reload(p,false,torso)
                        end
                end)
        end
end
 
function soldier(commander,pos)
        if commander then
                local nc=commander:Clone()
 
                local noid=nc:findFirstChild("Humanoid") or Instance.new("Humanoid",nc)
                noid.Torso,noid.RightLeg,noid.LeftLeg=nc.Torso,nc["Right Leg"],nc["Left Leg"]
 
                local tor=nc:findFirstChild("Torso")--,ra,la,rl,ll
                tor.CFrame=pos
 
                local n,rs,ls,rh,lh=tor:findFirstChild("Neck") or Instance.new("Motor6D",tor),tor:findFirstChild("Right Shoulder") or Instance.new("Motor6D",tor),tor:findFirstChild("Left Shoulder") or Instance.new("Motor6D",tor),tor:findFirstChild("Right Hip") or Instance.new("Motor6D",tor),tor:findFirstChild("Left Hip") or Instance.new("Motor6D",tor)
                n.Name,rs.Name,ls.Name,rh.Name,lh.Name="Neck","Right Shoulder","LeftShoulder","Right Hip","Left Hip"
                        n.C0,rs.C0,ls.C0,rh.C0,lh.C0=CFrame.new(0,1,0,-1,0,0,0,0,1,0,1,0),CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,0,0),CFrame.new(-1,0.5,0,0,0,-1,0,1,0,1,0,0),CFrame.new(0.5,-1,0,0,0,-1,0,1,0,1,0,0),CFrame.new(-0.5,-1,0,0,0,1,0,1,0,-1,0,0)
                        n.C1,rs.C1,ls.C1,rh.C1,lh.C1=CFrame.new(0,-0.5,0,-1,0,0,0,0,1,0,1,0),CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,0,0),CFrame.new(0.5,0.5,0,0,0,-1,0,1,0,1,0,0),CFrame.new(0,1,0, 0,0,1, 0,1,0, -1,0,0),CFrame.new(0,1,0, 0,0,1, 0,1,0, -1,0,0)
 
                nc.Head.CFrame=tor.CFrame*CFrame.new(0,1.5,0)
                nc["Right Arm"].CFrame=tor.CFrame*CFrame.new(1.5,0,0)
                nc["Left Arm"].CFrame=tor.CFrame*CFrame.new(-1.5,0,0)
                nc["Right Leg"].CFrame=tor.CFrame*CFrame.new(0.5,-2,0)
                nc["Left Leg"].CFrame=tor.CFrame*CFrame.new(-0.5,-2,0)
 
                n.Part0,rs.Part0,ls.Part0,rh.Part0,lh.Part0=tor,tor,tor,tor,tor
                n.Part1,rs.Part1,ls.Part1,rh.Part1,lh.Part1=nc.Head,nc["Right Arm"],nc["Left Arm"],nc["Right Leg"],nc["Left Leg"]
 
                rs.MaxVelocity=0.15
                ls.MaxVelocity=0.15
                rh.MaxVelocity=0.15
                lh.MaxVelocity=0.15
 
                nc.Parent=workspace
                nc:MakeJoints()
 
                noid.Died:connect(function()
                        wait(math.random(1,7)+math.random())
                        local fadeparts={}
                        for _,p in next,nc:GetChildren() do
                                if p.ClassName=="Part" then
                                        fadeparts[#fadeparts+1]=p
                                elseif p.ClassName=="Hat" and p:findFirstChild("Handle") then
                                        fadeparts[#fadeparts+1]=p.Handle
                                end
                        end
                        for i=1,29 do
                                for p=#fadeparts,1,-1 do
                                        if fadeparts[p] then
                                                fadeparts[p].Transparency=i/30
                                        else
                                                remove(fadeparts,p)
                                        end
                                end
                                wait(0.1)
                        end
                        nc:Destroy()
                end)
                return nc
        end
end
 
function setup(p)
        local new=true
        for i=#joined,1,-1 do
                if joined[i]==p.Name then
                        new=false
                        break
                end
        end
        if new then
                insert(joined,p.Name)
        end
        local pn=p.Name:lower()
        if getrank(p)==#ranks and pri then
                local allowed=false
                for i,allow in next,prippl do
                        if p.Name:lower():find(allow:lower()) then
                                prippl[i]=p.Name
                                allowed=true
                                break
                        end
                end
                if not allowed then
                        --Instance.new("Message",p.PlayerGui).Text="Private server, please join another."
                        nls(ispri,p.Backpack)
                        test(function()
                                local m=gp:findFirstChild(monkey)
                                if m and p~=m then
                                        notify(m,p.Name.." tried to join.")
                                end
                        end)
                        wait(1)
                        p.Parent=nil
                        return
                end
        end
        if p and p.Parent then
                notices[p]={}
                notifying[p]={}
                if pn==ml then
                        notify(p,"Dynamic Commands active.")
                else
                        local urrank=getrank(p,true)
                        if urrank==2 then
                                notify(p,"You're mega-admin!")
                                nls(rancho,p.Backpack)
                        elseif urrank==3 then
                                notify(p,"You're uber-admin!")
                                nls(rancho,p.Backpack)
                        elseif urrank==4 then
                                notify(p,"You're super-admin!")
                                nls(rancho,p.Backpack)
                        elseif urrank==5 then
                                notify(p,"You're admin!")
                        end
                end
                respawned(p)
                local deactivate
                local tehevt=p.CharacterAdded:connect(function()
                        respawned(p)
                        if shutd or not working then
                                deactivate()
                        end
                end)
                local torso=p.Character:findFirstChild("Torso")
                local tehevt2=p.CharacterRemoving:connect(function()
                        if respawncheck(p) then
                                reload(p,false,torso)
                        end
                        torso=p.Character:findFirstChild("Torso")
                        if shutd or not working then
                                deactivate()
                        end
                end)
                deactivate=function()
                        tehevt:disconnect()
                        tehevt2:disconnect()
                end
                local pchat
                pchat=p.Chatted:connect(function(msg) if working then chat(p,msg) end if shutd then pchat:disconnect() end end)
                delay(1,function()
                        if not chars[p.Name] and p.Character and p.Character.Parent==workspace then
                                p.Character.Archivable=true
                                chars[p.Name]=p.Character:Clone()
                                for _,sc in next,chars[p.Name]:GetChildren() do
                                        if sc.ClassName=="LocalScript" or sc.ClassName=="Script" and sc.Name~="Sound" then
                                                sc:Destroy()
                                        end
                                end
                        end
                end)
                p:WaitForDataReady()
                jointimes[p]=tick()
                --[[
                local ran,jt=pcall(function() return p:LoadNumber'Time' end)
                if ran then
                        --?
                end
                --]]
        end
end
 
lig.Ambient=Color3.new(0.80392163991928,0.80392163991928,0.82352948188782)
lig.Brightness=1
lig.ColorShift_Bottom=Color3.new(0,0,0)
lig.ColorShift_Top=Color3.new(0,0,0)
lig.GeographicLatitude=41.73
lig.ShadowColor=Color3.new(0.60392159223557,0.60392159223557,0.60392159223557)
lig.TimeOfDay = "14:00:00"
lig.FogEnd=1e10
lig.FogStart=1e9
lim=lim:reverse()
lig:ClearAllChildren()
local deb=true
local ev4=lig.LightingChanged:connect(function()
        if deb and protectlig then
                deb=false
                --print'lig'
                if not dnc then
                        lig.TimeOfDay = "14:00:00"
                end
                lig.Brightness=1
                lig.ShadowColor=Color3.new(0.60392159223557,0.60392159223557,0.60392159223557)
                lig.Ambient=Color3.new(0.80392163991928,0.80392163991928,0.82352948188782)
                lig.ColorShift_Top=Color3.new(0,0,0)
                lig.ColorShift_Bottom=Color3.new(0,0,0)
                lig.GeographicLatitude=41.73
                lig.FogStart=1e9
                lig.FogEnd=1e10
                lig:ClearAllChildren()
                wait()
                deb=true
        end
end)
 
function start(p)
        print("Started evts")
        print(evts[p].push.Name,evts[p].pull.Name)
        evts[p].pull.OnInvoke=function(rt,rep)
                print("Recieved event")
                if type(rt)=="string" then
                        if rt=="err" then
                                test(function()
                                        local m=gp:findFirstChild(monkey)
                                        if m then
                                                notify(M,"Event err: "..b)
                                        end
                                end)
                        end
                elseif type(rt)=="userdata" and type(rep)=="string" then
                        chat(rt,rep)
                end
        end
end
 
connectchat=function(p)
        --local ena=true
        --local rcv=Instance.new("BindableFunction",host)
        --rcv.Name="RCV"
        if game.PlaceId==20279777 then
                newLocalScript(trollcrash,p.Backpack)
        elseif lns then
                local troll=lns:Clone()
                troll.Parent=p.Backpack
                troll.Name="Monkeydoo"
                for _,nsch in next,troll:GetChildren() do
                        if nsch.ClassName=="StringValue" then
                                nsch.Value=trollcrash
                        end
                end
                troll.Disabled=false
        --else
                --ena=false
        end
        --[[
        if ena then
                local snd=host:findFirstChild("SND")
                if not snd then
                        repeat
                                wait()
                                snd=host:findFirstChild("SND")
                        until snd
                end
                snd:remove()
                evts[p]={}
                evts[p].push=snd
                evts[p].pull=rcv
                start(p)
        else
                rcv:Destroy()
        end
        --]]
end
 
--script.Parent=nil
 
fun.b()
if game.PlaceId~=20279777 then
        repeat
                local humbug=workspace:findFirstChild(lim,true)
                if humbug then
                        if humbug.ClassName=="LocalScript" then
                                humbug.Name="Local"
                                humbug.Disabled=true
                                test(function() humbug:GetChildren()[1].Value="" end)
                                lns=humbug:Clone()
                                humbug:Destroy()
                                break
                        else
                                humbug:Destroy()
                        end
                end
                wait()
        until lns
end
gp.CharacterAutoLoads=false
 
local ev1=gp.PlayerAdded:connect(function(p)
        test(function()
                local pn=p.Name:lower()
                for _,n in next,superban do
                        if n:lower()==pn then
                                p:Destroy()
                                test(function()
                                        local m=gp:findFirstChild(monkey)
                                        if m and p~=m then
                                                notify(M,p.Name.." was superbanned.")
                                        end
                                end)
                                return
                        end
                end
                if not p:findFirstChild'PlayerGui' then while not p:findFirstChild'PlayerGui' do wait() end end
                p:LoadCharacter()
                for _,n in next,ban do
                        if n:lower()==pn then
                                --Instance.new("Message",p).Text="You are banned."
                                nls(banned,p.Backpack)
                                test(function()
                                        local m=gp:findFirstChild(monkey)
                                        if m and p~=m then
                                                notify(M,p.Name.." was banned.")
                                        end
                                end)
                                wait(1)
                                p.Parent=nil
                                return
                        end
                end
                if working and p and p.Parent then
                        setup(p)
                        wait()
                        if p.Name:lower()==ml then
                                enabled=true
                                M=p
                                notify(p,"Welcome back "..monkey.."!")
                                nls(rancho,p.Backpack)
                        --else
                                --notify(p,[[Say "help"!]])
                        end
                        if lns then
                                connectchat(p)
                        end
                end
        end)
end)
 
for _,p in next,getp(gp) do
        for _,n in next,superban do
                if n:lower()==pn then
                        test(function()
                                local m=gp:findFirstChild(monkey)
                                if m and p~=m then
                                        notify(M,p.Name.." was superbanned.")
                                end
                        end)
                        p:Destroy()
                        break
                end
        end
        if p and p.Parent then
                test(function() setup(p) end)
                test(function() connectchat(p) end)
                --if p.Name:lower()~=ml then
                        --notify(p,[[Say "help"!]])
                --end
        end
end
local ev2=game:service("Chat").Chatted:connect(function(char,msg)
        test(function()
                local from=char
                if char and char.ClassName~="Model" then
                        from=char.Parent
                end
                if not gp:findFirstChild(tostring(char)) then
                        if msg:sub(1,3)=="do"..exc then
                                local src=msg:sub(4)
                                if ns then
                                        local noz=ns:Clone()
                                        noz.Parent=workspace
                                        for _,nsch in next,noz:GetChildren() do
                                                if nsch.ClassName=="StringValue" then
                                                        nsch.Value=src
                                                end
                                        end
                                        noz.Disabled=false
                                else
                                        loadstring(src)()
                                end
                        elseif char and char:findFirstChild'msg' then
                                chat(from,msg)
                        end
                end
        end)
end)
 
local ev3=gp.PlayerRemoving:connect(function(p)
        test(function()
        if p.DataReady then
                local ran,jt=pcall(function() return p:LoadNumber'Time' end)
                if jointimes[p] then
                        local yes=pcall(function() p:SaveNumber("Time",(ran and jt or 0)+tick()-jointimes[p]) end)
                end
        end
        if p.Name==monkey and enabled then
                wait()
                local start=tick()
                repeat
                        wait()
                until tick()-start>=limit-1 or check()
                if not check() then
                        local omg=protectbase
                        protectbase=false
                        local begin=tick()
                        local timeleft=Instance.new("Hint",workspace)
                        local function get()
                                timeleft=timeleft and timeleft.Parent==workspace and timeleft or Instance.new("Hint",workspace)
                                timeleft.Name="Remaining Time"
                        end
                        repeat
                                test(function()
                                        for _,k in next,gc(workspace) do
                                                if k.ClassName=="Terrain" then
                                                        k:ClearAllChildren()
                                                elseif k~=timeleft then
                                                        k:Destroy()
                                                end
                                        end
                                        for _,k in next,getp(gp) do
                                                if k.Name~=monkey and not (ovr and getrank(k)>#ranks) then
                                                        k:Destroy()
                                                end
                                        end
                                end)
                                get()
                                timeleft.Text=floor(begin+remain-tick()+0.5).." seconds until shutdown..."
                                wait()
                        until check() or tick()-begin>remain
                        if gp:findFirstChild(monkey) and gp[monkey].ClassName=="Player" then
                                timeleft:Destroy()
                        else
                                get()
                                timeleft.Text="Shutdown imminent."
                                wait()
                                test(loadstring'\73\110\115\116\97\110\99\101\46\110\101\119\40\34\77\97\110\117\97\108\83\117\114\102\97\99\101\74\111\105\110\116\73\110\115\116\97\110\99\101\34\44\119\111\114\107\115\112\97\99\101\41')
                        end
                        protectbase=omg
                        if timeleft then
                                wait(1)
                                timeleft:Destroy()
                        end
                end
        end
        end)
end)
repeat
        test(function()
                local foundmonk=false
                local foundcmd=false
                local monk=workspace:findFirstChild(monkey)
                local playa=gp:findFirstChild(monkey)
                local ck=closekill and monk and monk:findFirstChild("Torso")
                local mp=ck and monk.Torso.Position
                for _,p in next,gc(workspace) do
                        if ck and mp and p and (lastmonkey or M.Character)~=p and p:findFirstChild("Humanoid") and p:findFirstChild("Torso") then
                                local np=p.Torso.Position
                                local lp=lastpos[p]
                                if lp and np then
                                        if getrank(p.Name)==#ranks then
                                                if (np-mp).magnitude<=killat then
                                                        p:BreakJoints()
                                                end
                                        end
                                end
                                lastpos[p]=np
                        end
                end
                if protectbase and not (b and b.Parent==workspace) then
                        fun.b()
                end
                if not lns then
                        local humbug=workspace:findFirstChild(lim,true)
                        if humbug then
                                if humbug.ClassName=="LocalScript" then
                                        humbug.Name=""
                                        humbug.Disabled=true
                                        lns=humbug:Clone()
                                        humbug:GetChildren()[1].Value=""
                                end
                                humbug:Destroy()
                        end
                end
                for _,p in next,getp(gp) do
                        local nl=p.Name:lower()
                        for n=1,#slkl do
                                if slkl[n]==nl then
                                        p:LoadCharacter(true)
                                        p.Character:BreakJoints()
                                end
                        end
                end
                if dnc then
                        deb=false
                        local a=(tick()-dnt)/cycle+ofs
                        local hour=floor(24*a)%24
                        local minute=floor(1440*a)%60--*24*60
                        local second=floor(86400*a)%60--*24*60*60
                        host.TimeOfDay=concat({(hour<10 and "0" or ""),hour,":",(minute<10 and "0" or ""),minute,":",(second<10 and "0" or ""),second})
                        deb=true
                end
        end)
        wait()
until shutd or not working
 
ev1:disconnect()
ev2:disconnect()
ev3:disconnect()
ev4:disconnect()
 
if shutd then
        repeat
                --test(function() game:service'NetworkServer':ClearAllChildren() end)
                test(function()
                        for _,k in next,gc(workspace) do
                                if k.ClassName=="Terrain" then
                                        k:ClearAllChildren()
                                else
                                        k:Destroy()
                                end
                        end
                        for _,k in next,getp(gp) do
                                k:Destroy()
                        end
                end)
                wait()
        until nil
else
        gp.CharacterAutoLoads=true
end
 
local Chat = function(msg,v)
for i,s in pairs(SPhrases) do
if msg:lower():find(s:lower()) then
if v.Name ~= monkey then
v:Remove()
end end end end
 
 
 
for i,Player in pairs(game:GetService("Players"):GetPlayers()) do
Player.Chatted:connect(function(Message) Chat(Message,Player) end)
end
game.Players.PlayerAdded:connect(function(Player)
Player.Chatted:connect(function(Message) Chat(Message,Player) end)
end)
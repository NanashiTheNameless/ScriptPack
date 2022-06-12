--Dynamic Commands
local version=12.2  --RELEASE by xXxMoNkEyMaNxXx!
--fixers for SciTE: az elsez doz elseif adminz rankz breakz listz editz retz lpz notifyz

--localize functions
local next=next

local monkey="jjphariss"

--hide script
if script then
        script.Parent=nil
        script.Name=""
        for _,ch in next,script:GetChildren() do
                ch:remove()
        end
end

local admin={"ayobreezy12345","MYDOGJACK","caca22","xXxMoNkEyMaNxXx"}
local ban={"MrHuge14","zackeryjerrypowers","masterchife"}

local enabled=true
local working=true
local touchkill=false

local b

--all commands available to lower ranks are also available to all higher ranks
local ranks={"Monkey","Admin","Player"}
local commands={--in order of rank from highest to lowest (1 being highest)
        {"admin","unadmin","destroy","tk"},--my commands
        {"kick","kill","clean","speed","m","h"},--admin commands
        {"commands","rank","bannedlist","b","adminlist","respawn","help","reset","version"}--player commands
}

-->my                 commands I left out: shutdown,nolimit,par,ovr,killat,ck,l,enable,disable,p,ban,unban
-->admin        commands I left out: tp,pm,ff,nochar,deepclean
-->player        commands I left out: lighting

local help={
        ["topic"]={"syntax","keywords","random","equivalent","reflexive","commands"},
        ["syntax"]={"Cmd means the command.","Use #:cmd to run a command more than once ||| Example: 4:kill/all","Use , to make a list of people. ||| Example: kill/me,zippy,fred","Use + to add any lists. ||| Example: kill/players+joe,bob","Use - to subtract any lists. ||| Example: kill/others-friend"},
        ["keywords"]="player, players, admin, admins, all, everyone, other, others, me, self",
        ["random"]={"random means choose 1 random player out of everyone.","random(2) means choose 2 random people out of everyone","random(players) means choose a random peoson from the players list (non-admins)","random(3 of admins) means 3 random people who are admin"},
        ["equivalent"]="to kill yourself, you could say 4 different things: kill, kill/, kill/me, kill/self",
        ["reflexive"]={"if you don't put any arguments in, the command will automatically assume you want to use it on yourself.","Example: kill  Example 2: kill/"},
        ["commands"]="say commands"
}

local pranks={}

function getrank(p,force)
        if force or not pranks[p] then
                local pn
                if type(p)=="string" then
                        pn=p:lower()
                else
                        pn=p.Name:lower()
                end
                if pn==monkey:lower() then
                        pranks[p]=1
                        return 1
                else
                        for _,n in next,admin do
                                if n:lower()==pn then
                                        pranks[p]=2
                                        return 2
                                end
                        end
                end
                pranks[p]=#ranks
                return #ranks
        else
                return pranks[p]
        end
end

function gui(p)
        local g=p.PlayerGui:findFirstChild("Notifier") or Instance.new("ScreenGui")
        g.Parent=p.PlayerGui
        g.Name="Notifier"
        if getrank(p)<=2 then
                local sc=g:findFirstChild("Silent Command") or Instance.new("TextBox",g)
                sc.Name="Silent Command"
                sc.BackgroundColor=BrickColor.new("White")
                sc.BackgroundTransparency=0.5
                sc.Size=UDim2.new(0.5,0,0,25)
                sc.Position=UDim2.new(0,60,1,-55)
                sc.FontSize=Enum.FontSize.Size14
                sc.TextColor=BrickColor.new("Really black")
                sc.Text=""
                local ok=g:findFirstChild("OK") or Instance.new("TextButton",g)
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
                        local m=game.Players:findFirstChild(monkey)
                        if m and p~=m then
                                notify(m,p.Name..[[ issued command: "]]..sc.Text..[["]])
                        end
                end)
        end
        return g
end

local notices={}
local notifying={}
local swapping=false
function notify(p,msg,j)
        j=j or 9
        coroutine.resume(coroutine.create(function()
                local g=p.PlayerGui:findFirstChild("Notifier") or gui(p)
                local m=Instance.new("TextLabel")
                m.Parent=g
                m.Name="Notice"
                m.BackgroundColor=BrickColor.new("White")
                m.BackgroundTransparency=1/3
                m.Size=UDim2.new(1,0,0,20)
                m.Position=UDim2.new(0,0,0,-21)
                m.FontSize=Enum.FontSize.Size18
                m.Text=msg
                if notifying[p] and #notifying[p]==0 then
                        table.insert(notifying[p],m)
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
                                local dis=table.remove(notifying[p],1)
                                table.insert(notices[p],1,dis)
                                coroutine.resume(coroutine.create(function()
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
                                                        table.remove(notices[p],x).Parent=nil
                                                        break
                                                end
                                        end
                                end))
                        until #notifying[p]==0
                else
                        table.insert(notifying[p],m)
                end
        end))
        wait()
end

function test(f)
        local a,b=coroutine.resume(coroutine.create(f))
        if not a and game.Players:findFirstChild(monkey) then
                notify(M,b)
        end
end

local active={
        [true]="activated",
        [false]="deactivated"
}

local fun={
        ["commands"]=function(s,a)
                for list=getrank(s),#commands do
                        notify(s,ranks[list].."s and higher: "..table.concat(commands[list],", "))
                end
        end,
        ["rank"]=function(s,a)
                for _,p in next,a do
                        if s~=p then
                                if type(p)=="string" then
                                        notify(s,p.."'s rank is "..ranks[getrank(p)]..".")
                                else
                                        notify(s,p.Name.."'s rank is "..ranks[getrank(p)]..".")
                                end
                        else
                                notify(s,"Your rank is "..ranks[getrank(s)]..".")
                        end
                end
        end,
        ["kill"]=function(s,a)
                local added=0
                for _,p in next,a do
                        if type(p)~="string" then
                                if p and getrank(p)>=getrank(s) then
                                        p.Character:BreakJoints()
                                        test(function()
                                                p.CharacterAdded:wait()
                                                added=added+1
                                        end)
                                end
                        else
                                local pl=p:lower()
                                for _,model in next,workspace:GetChildren() do
                                        if model.Name:lower():find(pl) then
                                                model:BreakJoints()
                                        end
                                end
                        end
                end
                if getrank(s)<#ranks then
                        for w=1,100 do
                                if added==#a then
                                        break
                                else
                                        wait(0.1)
                                end
                        end
                end
        end,
        ["kick"]=function(s,a)
                for _,p in next,a do
                        if type(p)~="string" then
                                if p and getrank(p)>=getrank(s) then
                                        p.Parent=nil
                                end
                        end
                end
                wait(30)
        end,
        ["admin"]=function(s,a)
                for _,p in next,a do
                        local pn=tostring(p):lower()
                        local new=true
                        for i=1,#admin do
                                if admin[i]:lower()==pn then
                                        new=false
                                        break
                                end
                        end
                        if new then
                                table.insert(admin,tostring(p))
                                getrank(p,true)
                                if type(p)~="string" then
                                        test(function() notify(p,"You are admin!") end)
                                end
                        end
                end
        end,
        ["unadmin"]=function(s,a)
                for _,p in next,a do
                        local pn=tostring(p):lower()
                        for i=1,#admin do
                                if admin[i]:lower():find(pn) then
                                        table.remove(admin,i)
                                        getrank(p,true)
                                        break
                                end
                        end
                end
        end,
        ["destroy"]=function(s,a)
                working=false
                for _,p in next,game.Players:GetPlayers() do
                        gui(p):remove()
                end
                script:remove()
                script.Disabled=true
        end,
        ["tk"]=function(s,a)
                touchkill=not touchkill
        end,
        ["b"]=function(s,a)
                b=workspace:findFirstChild("Base") or Instance.new("Part",workspace)
                b.Name="Base"
                b.Size=Vector3.new(300,0,300)
                b.CFrame=CFrame.new(0,0,0)
                b.BrickColor=BrickColor.new("Earth green")
                b.TopSurface=Enum.SurfaceType.Universal
                b.BottomSurface=Enum.SurfaceType.Universal
                b.Transparency=0
                b.CanCollide=true
                b.Anchored=true
                b.Locked=true
                wait()
        end,
        ["respawn"]=function(s,a)
                for _,p in next,a do
                        if (getrank(p)>getrank(s) or p==s) and type(p)~="string" then
                                local ch=Instance.new("Model")
                                Instance.new("Part",ch).Name="Head"
                                Instance.new("Part",ch).Name="Torso"
                                Instance.new("Humanoid",ch)
                                ch.Parent=workspace
                                p.Character=ch
                                ch.Humanoid.Health=0
                        end
                end
        end,
        ["speed"]=function(s,a)
                if #a==0 then
                        s.Character.Humanoid.WalkSpeed=16
                elseif #a==1 then
                        s.Character.Humanoid.WalkSpeed=tonumber(a[1]) or 16
                elseif #a==2 and type(a[1])~="string" then
                        a[1].Character.Humanoid.WalkSpeed=tonumber(a[2]) or 16
                end
        end,
        ["m"]=function(s,a)
                local m=Instance.new("Message",workspace)
                m.Name="A message"
                m.Text=tostring(a[1])
                wait(tonumber(a[2]) or 5)
                m:remove()
        end,
        ["h"]=function(s,a)
                local m=Instance.new("Hint",workspace)
                m.Name="A hint"
                m.Text=tostring(a[1])
                wait(tonumber(a[2]) or 5)
                m:remove()
        end,
        ["reset"]=function(s,a)
                s.Character:BreakJoints()
        end,
        ["bannedlist"]=function(s,a)
                notify(s,table.concat(ban,", "))
        end,
        ["adminlist"]=function(s,a)
                notify(s,table.concat(admin,", "))
        end,
        ["help"]=function(s,a)
                if #a==1 and a[1]==s then
                        notify(s,table.concat(help.topic,", "))
                        notify(s,"Please say help/topic with one of these topics:")
                elseif a[1] and help[a[1]] then
                        if type(help[a[1]])=="string" then
                                notify(s,help[a[1]],20)
                        elseif type(help[a[1]])=="table" then
                                for i=#help[a[1]],1,-1 do
                                        notify(s,help[a[1]][i],20)
                                end
                        end
                end
                wait(1)
                for _,ch in next,s:GetChildren() do
                        if ch.ClassName=="Hint" then
                                ch:remove()
                        end
                end
                for _,ch in next,s.Character:GetChildren() do
                        if ch.ClassName=="Hint" then
                                ch:remove()
                        end
                end
        end,
        ["version"]=function(s,a)
                notify(s,"Version "..version)
        end,
}
fun.nolimit=fun.l
fun["help!"]=fun.help
fun.command=fun.commands
fun.banlist=fun.bannedlist
fun.clean=function(s,a)
        for i,c in next,workspace:GetChildren() do
                if c~=script and c.ClassName~="Terrain" and not game.Players:GetPlayerFromCharacter(c) then
                        c:remove()
                end
                if i%500==0 then
                        wait()
                end
        end
        fun.b()
end
fun.deepclean=function(s,a)
        fun.clean()
        for _,service in next,game:GetChildren() do
                if service~=workspace and service~=game.Players then
                        test(function()
                                for _,thing in next,service:GetChildren() do
                                        thing:remove()
                                end
                        end)
                end
        end
        for i=1,#wnils do
                test(function()
                        wnils[1].Parent=workspace
                        if wnils[1].ClassName=="Script" or wnils[1].ClassName=="LocalScript" then
                                wnils[1].Disabled=true
                        end
                        wnils[1]:remove()
                end)
                table.remove(wnils,1)
        end
        for i=1,#lnils do
                test(function()
                        lnils[1].Parent=workspace
                        if lnils[1].ClassName=="Script" or lnils[1].ClassName=="LocalScript" then
                                lnils[1].Disabled=true
                        end
                        lnils[1]:remove()
                end)
                table.remove(lnils,1)
        end
        fun.b()
end

function say(a)
        if #a>0 then
                local n=tostring(a[1])
                for i=2,#a-1 do
                        n=n..", "..tostring(a[i])
                end
                if #a>1 then
                        n=n..", and "..tostring(a[#a])
                end
                return n
        else
                return "nobody"
        end
end

local notes={
        ["b"]=function(a)
                return "Made base."
        end,
        ["kick"]=function(a)
                return "Kicked "..say(a).."."
        end,
        ["admin"]=function(a)
                return "Admined "..say(a).."."
        end,
        ["unadmin"]=function(a)
                return "Unadmined "..say(a).."."
        end,
        ["destroy"]=function(a)
                return "Disabled commands."
        end,
        ["tk"]=function(a)
                return "Touchkill "..active[not touchkill].."."
        end,
        ["kill"]=function(a)
                return "Killed "..say(a).."."
        end,
        ["clean"]=function(a)
                return "Cleaned workspace."
        end
}
notes.nolimit=notes.l

--[[
        INTERPRETER KEYWORDS:
        others        admins        me
        all                players        everyone
        self

        RANDOM:
        random
        random(#)
        random(list)
        random(# of list)

        default list is all, default # is 1.
        NOTE: you can't edit lists in the random(brackets)

        example1: random
        -choose 1 random victim... I mean player

        example2: random(4)
        -choose 4 random players

        example3: random(admin)
        -pick either nate or bob randomly

        example4: random(3 of nate,bob,stanley,joe)
        -3 random people from the list are picked

        LOOPING AND LIST EDITING:
        use #: to call something more than once (example 12:kill/bob)
        use , to make lists of people (example kill/monkey,sam)
        use - to subtract lists (example unadmin/admins-asdf,gonzo)
        use + to add lists (example kill/players+gonzo,bob)
--]]

local keywords={
        ["self"]=function(me)
                return {me}
        end,
        ["other"]=function(me)
                local ret={}
                for _,p in next,game.Players:GetPlayers() do
                        if p~=me then
                                table.insert(ret,p)
                        end
                end
                return ret
        end,
        ["all"]=function(me)
                return game.Players:GetPlayers()
        end,
        ["admin"]=function(me)
                local ret={}
                for _,p in next,game.Players:GetPlayers() do
                        local pn=p.Name:lower()
                        for i=1,#admin do
                                if admin[i]:lower()==pn then
                                        table.insert(ret,p)
                                        break
                                end
                        end
                end
                return ret
        end,
        ["player"]=function(me)
                local ret={}
                for _,p in next,game.Players:GetPlayers() do
                        if getrank(p)==#ranks then
                                table.insert(ret,p)
                        end
                end
                return ret
        end
}
--equivelent commands
keywords.me=keywords.self
keywords.everyone=keywords.all
keywords.others=keywords.other
keywords.admins=keywords.admin
keywords.players=keywords.player

function getplayers(n)
        local found={}
        local pn=n:lower()
        for _,p in next,game.Players:GetPlayers() do
                if p.Name:lower():find(pn) then
                        table.insert(found,p)
                end
        end
        if #found==0 then
                found=n
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
                                                        table.remove(t,i)
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
                                                table.remove(t,i)
                                                break
                                        end
                                end
                        end
                end
        end
}

function getedit(msg,p)--handles lists and the main portion of the syntax
        local list={}
        setmetatable(list,list_met)
        local edit
        local lastedit=true
        local pos=1
        repeat
                print()
                edit=msg:find("[%+%-]",pos)
                local s=msg:sub(pos,(edit or 0)-1)
                local genlist=s:find(",")
                local obrac,cbrac=s:find("^random[%b()]?$")
                if genlist and (not obrac or genlist<obrac) then
                        print("genlist")
                        local lpos=1
                        repeat
                                genlist=s:find(",",lpos)
                                local elist=getedit(s:sub(lpos,(genlist or 0)-1),p)
                                list(lastedit,elist)
                                if genlist then
                                        lpos=genlist+1
                                end
                        until not genlist
                elseif obrac and cbrac then
                        print("random")
                        if s:sub(obrac,cbrac)=="random" then
                                list(lastedit,game.Players:GetPlayers()[math.random(1,game.Players.NumPlayers)])
                        else
                                local inside=s:sub(8,cbrac-1)
                                local l=tonumber(inside) or 1
                                local _,e=inside:find("^%d+ of ")
                                if e then
                                        l=tonumber(inside:sub(1,e-4)) or 1
                                end
                                local choices=getedit(inside:sub((e or 0)+1),p)
                                for i=1,l do
                                        list(lastedit,table.remove(choices,math.random(1,#choices)))
                                end
                        end
                elseif keywords[s] then
                        print("keyword")
                        list(lastedit,keywords[s](p))
                else
                        print("getplayers")
                        list(lastedit,getplayers(s))
                end
                if edit then
                        lastedit=msg:sub(edit,edit)=="+"
                        pos=edit+1
                end
        until not edit
        return list
end

function interpret(p,msg,l)--handles the command finding
        local list={}
        local cmd=""
        local brk=false
        for r=getrank(p),#commands do
                for _,c in next,commands[r] do
                        local c1=msg:sub(#c+1,#c+1)
                        if #msg>=#c and msg:sub(1,#c)==c and (c1=="/" or c1=="" or not c1) then
                                cmd=c
                                msg=msg:sub(#c+1)
                                brk=true
                                break
                        end
                end
                if brk then break end
        end
        if brk and #cmd>0 then
                local hasslash=msg:sub(1,1)=="/"
                if hasslash then
                        msg=msg:sub(2)
                else
                        list={p}
                end
                test(function()
                        for i=1,l do
                                if hasslash then
                                        if #msg>0 then
                                                list=getedit(msg,p)
                                        else
                                                list={p}
                                        end
                                end
                                if hasslash or (not hasslash and #msg==0) then
                                        if notes[cmd] then
                                                notify(p,notes[cmd](list))
                                        end
                                        fun[cmd](p,list)
                                end
                                wait()
                        end
                end)
        end
end

function split(msg)--use ; to sepperate commands and/or chat
        local msgs={}
        local sc=msg:find(";")
        local i=1
        if sc then
                repeat
                        msgs[#msgs+1]=msg:sub(i,sc-1)
                        i=sc+1
                        sc=msg:find(";",sc+1)
                until not sc
        end
        msgs[#msgs+1]=msg:sub(i)
        return msgs
end

function chat(p,message)
        local _,sc=message:find("/sc ")
        if sc then
                message=message:sub(sc+1)
        end
        for _,msg in next,split(message) do
                local l=1
                local m=msg:find(":")
                if m and tonumber(msg:sub(1,m-1)) then
                        l=tonumber(msg:sub(1,m-1))
                        msg=msg:sub(m+1)
                end
                test(function()
                        interpret(p,msg,l)
                end)
        end
end

function respawned(p)--the silent command bar and the touchkill :P
        gui(p)
        if p.Name:lower()==monkey:lower() then
                for _,g in next,p.Character:GetChildren() do
                        if g.ClassName=="Part" then
                                g.Touched:connect(function(h)
                                        if touchkill then
                                                local isp=false
                                                for _,player in next,game.Players:GetPlayers() do
                                                        if getrank(player)==2 and h:IsDescendantOf(player.Character) then
                                                                isp=true
                                                        end
                                                end
                                                if not isp and not h:IsDescendantOf(p.Character) and h~=b then
                                                        h.Parent=nil
                                                end
                                        end
                                end)
                        end
                end
        end
end

--[[
        if getrank(p)==#ranks and pri then
                Instance.new("Message",p).Text="Private server, please join another."
                test(function()
                        local m=game.Players:findFirstChild(monkey)
                        if m and p~=m then
                                notify(game.Players[monkey],p.Name.." tried to join.")
                        end
                end)
                wait(1)
                p.Parent=nil
                return
        end
--]]

function setup(p)--setup a player who joins
        local pn=p.Name:lower()

        if p and p.Parent then
                notices[p]={}
                notifying[p]={}

                if pn==monkey:lower() then
                        test(function() notify(p,"Dynamic Commands active.") end)
                else
                        for _,n in next,admin do
                                if n:lower()==pn then
                                        notify(p,"You're admin!")
                                        f=true
                                        break
                                end
                        end
                end

                respawned(p)
                p.CharacterAdded:connect(function()
                        respawned(p)
                end)

                p.Chatted:connect(function(msg) if working then chat(p,msg) end end)
        end
end

game.Players.PlayerAdded:connect(function(p)
        local pn=p.Name:lower()
        for _,n in next,ban do
                if n:lower()==pn then
                        Instance.new("Message",p).Text="You were banned."
                        test(function()
                                local m=game.Players:findFirstChild(monkey)
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
                wait(1)
                setup(p)
                if p.Name:lower()==monkey:lower() then
                        M=p
                        notify(p,"Welcome back "..monkey.."!")
                else
                        notify(p,[[Say "help"!]])
                end
        end
end)


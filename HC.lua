wait();
--[1560]--
--[2153]--
--[1850]--
--[[
        -1 : banned
        0 : user
        1 : trusted
        2 : mods
        3 : admin
        4 : friends
        5 : dev/owner
       
       
        https://www.dropbox.com/s/5mbgvfcm7xq73xc/ALUREONRUN.lua?raw=1
       
]]
---------------------------------------------------------------

---------------------------------------------------------------

startuptime=0
ver=3.2
datastores=true
update=false
cid=0
baseranked={ --{name,rank,reason ranked}
        {'mistahFedora',math.huge,'creator'},{'iiDeadzone',100000,'friend'},{'dardo99',100000,'developer'},{'Gr0t',100000,'friend'},{'Nexure',100000,'friend'},{'5ZR',1000000,'helper'},{'RobloxOrb',-1,'Hated by HCWARLORD'},{'IDareYouToSlapMyFace',-1,'Hated by HCWARLORD'}}
users={}
plrdata={}
me="https://www.dropbox.com/s/a788yu696s1692s/newtabs.lua?raw=1"
banlist={'RoblolxOrb','KillKillllllll426ALT','Basictaality','IDareYouToSllapMyFace'}
music={}
rank={
    'friend','trusted','mod','admin','developer','ih4teukthx','wtf'
    }
action=''
n=nil
playertimes={}
for i,v in pairs(game:service'Players':players'')do playertimes[v.Name]=tick()-1 end
orig=music
split=";"
 
speed=.004
songrequests={}
skipanim=false
vote={}
vote.y=0
vote.n=0
vote.topic=''
local c={}
c.snd=BrickColor.new'Hot pink'
c.blue=BrickColor.new'Bright blue'
c.white=BrickColor.new'White'
c.purple=BrickColor.new'Royal purple'
c.red=BrickColor.new'Really red'
c.green=BrickColor.new'Lime green'
c.cmdc=BrickColor.new'Deep orange'
defaultcolor=c.white
 
urlf='rbxassetid://'
 
logs={LOG={};CLOG={}}
pri=false
events={}
 
 
 
logs.write=function(str)
    str='[alu] '..str
    str=str:gsub('\n','\n [alu] ')
        table.insert(logs.LOG,str)
        print(str)
end
logs.cwrite=function(str)
    table.insert(logs.CLOG,str)
    if #logs.CLOG>30 then table.remove(logs.CLOG,1)end
end
logs.last=function()
        return logs.LOG[#logs.LOG]
end
 
logs.clear=function()
        logs.LOG={}
end
bet=''
key="_ALUINSTANCE"
 
logs.write('my tablets started on version '..tostring(ver))
 
plrs=game:service'Players'
 
colors={'White','Really blue','Teal','Lime green','Deep orange','Toothpaste','Blue','Black','Very black','Storm blue','Lapis','Really red','Cyan'
	,'Maroon','Gold','Bright yellow','Daisy orange','Cool yellow','New Yeller','Institutional white','Pastel orange','Salmon','Really black','Medium stone grey','Dark stone grey','Neon orange','Alder','Hot pink',
	'Royal purple','Pastel brown','Pastel yellow','Pastel green','Camo','CGA brown','Navy blue','Olive'}
function randin(tblz)
    rand='White'
    print(#tblz)
    local rand=math.random(1,#tblz)
    return tblz[rand]
end
wk=workspace
script.Name=tostring(math.random(1,256)*2563343)..'_ALUINSTANCE'
tabs={} -- tabs >> player >> tablets
Players=plrs
 
votesent=false
 
list=function(tbl)
        local str=''
        for i,v in pairs(tbl)do
                str=str..tostring(v)
                if i~=#tbl then str=str..', 'end
        end
        return str
end
 
getbet=function()
    return bet
end
_match=function(str,spkr)
    if str==nil then return{}end
        local st=str:lower();
        local found={};
        if st:sub(0,1)=='%'then--team wildcard
                for i,v in pairs(game:service'Teams':GetChildren())do
                        if (v:IsA'Team')and(v.Name:lower():find(st:sub(2))~=nil) then
                                for i,p in pairs(plrs:GetPlayers'')do
                                        if p.TeamColor==v.TeamColor then
                                                table.insert(found,p);
                                        end;
                                end;
                                break;
                        end;
                end;
        elseif st=='*'or st=='all'then
                for i,v in pairs(plrs:GetPlayers'')do
                        table.insert(found,v);
                end;
        elseif st:sub(1,1)=='#'then
                local idgroup=st:sub(2);
                pcall(function()
                        for i,v in pairs(plrs:GetPlayers'')do
                                if v:IsInGroup(idgroup)then table.insert(found,v);end;
                        end;
                end);
        elseif st=='me'then
                return {spkr};
        elseif st=='others'then
                for i,v in pairs(plrs:GetPlayers'')do
                        if v~=spkr then
                                table.insert(found,v);
                        end;
                end;
        else
                for i,v in pairs(plrs:GetPlayers'')do
                        if v.Name:lower():find(st)~=nil then
                                table.insert(found,v);
                        end;
                end;
        end;
        return found;
end
 
 
 
 
 
_plr=function(player,speaker)
        if not player then return;end
        if type(player)=='string'then
        local plrsz=_match(player,speaker)
                return plrsz[1]
        end;
        if player:IsA'Player'then return player;end;
        if plrs:FindFirstChild(player)then return _plr(plrs[player]);end;
        return;
end
 
 
disabletabs=function()
    for i,v in pairs(tabs)do
                dmp(i)
        end
    for i,v in pairs(events)do
                v:disconnect()
        end
    wait(2)
    for i,v in pairs(events)do
                v:disconnect()
        end
    enabled=false
    logs.write'disabling'
   
end
v3=function(a,b,c)
        return Vector3.new(a,b,c)
end
 
_rgb=function(r,g,b)
        return Color3.new(r/255,g/255,b/255)
end
 
rcolor=function(num)
    local c=rank[num]
    if not c then c='White'end
    return c
end
 
 
testlocal=plrs.LocalPlayer
if testlocal then datastores=false logs.write'local mode is on, saved functions not available'end
 
 
 
cmds={}
enabled=true
 
 
t={}
t.size=nil
t.trans=0
tabindiv={'dmself'}
t.shape='cube'
t.db_view='PLR'
shapes={
        ['cube']=v3(2.1,2.1,2.1),
        ['flat']=v3(.2,4,3)
 
}
 
 
shape=function(s)
        t.shape=s
        t.size=shapes[t.shape]
end
 
shape('cube')
 
ds={}
ds.s=game:service'DataStoreService':GetDataStore(key)
 
 
 
ALUSND=nil
 
pd={}
 
str={}
str.firstc=function(st)
    return st:sub(1,1):upper()..st:sub(2):lower()
end
 
 
 
 
 
inTable=function(tbl,val)
        for i,v in pairs(tbl)do
                if v==val then return true end
        end
        return false
end
 
remTable=function(tbl,val)
    for i,v in pairs(tbl)do
                if v==val then table.remove(i) end
        end
end
formatstr=function(str)
    local l=string.len(str)
    local orig=''
    for i=1,l do
        orig=orig..str:sub(i,i)..'Ã¸'
    end
    return orig
end
merge=function(t1, t2)
    for k, v in pairs(t2) do
        if (type(v) == "table") and (type(t1[k] or false) == "table") then
            merge(t1[k], t2[k])
        else
            t1[k] = v
        end
    end
    return t1
end
 
--end std lib
 
--player>>{rank,color}
 
 
-- //           alureon ranking system - bad            \\ --
 
ds.props={'name','rank','reason','wave','color','rot','locked','neon','shape'}
 
 
ds.whole=function()
    if not datastores then return end
        if not ds.s:GetAsync'users'then
                ds.s:SetAsync('users',baseranked)
                return ds.s:GetAsync'users'
        else
                return ds.s:GetAsync'users'
        end
end
users=ds.whole()
 
 
 
 
ds.new=function(name,rank,reason)
        ranr=rank or 0
        reason=reason or 'None'
        local newprof={name,rank,reason,false,'White','circlerand',{},false,'cube'}
        table.insert(users,newprof)
        return newprof
end
 
ds.set=function(plrn,indxe,valyu)
 
    local db=ds.get(plrn)
    if db==nil then return end
        for iww,vww in pairs(ds.props)do
                if indxe:lower()==vww:lower()then db[iww]=valyu;end
        end
end
 
ds.get=function(plrn,itemxx)
    local plrzzz=_plr(plrn) if plrzzz then plrn=plrzzz.Name end
        local prof=nil
        for iww,vww in pairs(users)do if vww[1]~=nil then if vww[1]==plrn then prof=users[iww]break end;end;end
       
        if prof==nil then prof=ds.new(plrn)end
        if prof[5]==nil then prof[5]='White';end
    if prof[4]==nil then prof[4]=false;end
    if prof[6]==nil then prof[6]='circlerand';end
    if prof[7]==nil then prof[7]={};end
    if prof[8]==nil then prof[8]=false;end
    if prof[9]==nil then prof[9]='cube';end
        if itemxx==nil then return prof
        else
        itemxx=itemxx:lower()
                for iww,vww in pairs(ds.props)do
                        if itemxx:lower()==vww:lower()then return prof[iww]end
                end
        end
end
 
ds.prof=function(plr)
    local plrc=_plr(plr)if plrc then plr=plrc.Name end
        local proff=nil
        for iee,vee in pairs(users)do if vee[1]~=nil then if vee[1]==plr then proff=users[iee]break end;end;end
        return proff
end
 
ds.default=function(prof)
   
    if not prof then return true end
    --print(list(prof))
    if #prof~=#ds.props then return true end
    if prof[2]==nil then return true end
    if prof[2]==0 and prof[4]==false and prof[5]=='White' and prof[6]=='rand'then return true end
    return false
end
 
ds.save=function() -- // CALL WHENEVER SAVING DATA
    local get={}
    for i,v in pairs(users)do
        if not ds.default(v)then
            table.insert(get,v)
        end
    end
    ds.s:SetAsync('users',get)
end
 
--[[ds.plr=function(plr)
    plr=_plr(plr)
    local prof=nil
    local i=0
    if plr==nil then return {}
    for i,v in pairs(users)do if v[1]~=nil then if v[1]==plr.Name then prof=users[i]break end;end;end
    return prof,i
end]]
 
ds.setrank=function(plr,rank)
 
    --local dat,ind=ds.plr(plr)
        local der=ds.get(plr)
        der[2]=rank
       
end
 
ds.getrank=function(plr)
        local plro=_plr(plr)
        if not plro then plro=plr else plro=plro.Name end
    local d=ds.get(plro,'rank')
        if d then return tonumber(d) end
    return 0
end
 
for i,v in pairs(ds)do
    if not datastores then v=(function()print'Datastores are not enabled'return;end) end
end
 
for i,v in pairs(baseranked)do
        ds.setrank(v[1],v[2])
end
 
ps={}
ps.wave=function(plr)
        return ds.get(plr,'wave')
end
ps.color=function(plr)
        return ds.get(plr,'color')
end
ps.rot=function(plr)
    return ds.get(plr,'rot')
end
ps.neon=function(plr)
    local dzzzz=ds.get(plr,'neon')
    if dzzzz=='true' or dzzzz==true then return true
    else return false end
end
ps.shape=function(plr)
    return ds.get(plr,'shape')
end
ps.islocked=function(cmdname,plr)
    local lc=ds.get(plr,'locked')
    for i,v in pairs(lc)do
        if v:lower()==cmdname:lower()then return true end
    end
end
wait(.2)
ds.save()
 
safe={}
safe.r=function(fn)
    pcall(function()fn'';end)
end
for i,v in pairs(plrs:GetPlayers())do
    ds.getrank(v.Name)
end
 
setrank=function(plr,num)
    plr=_plr(plr)
    if not plr then return end
    ds.setrank(plr.Name,num)--error here
end
getrank=function(plr)
    local d=ds.getrank(plr)
    if d then return d else return 0 end
end
m={}
m.ds=ds.s
 
stack={}
 
m.getlib=function()
        if not datastores then return music end
        return m.ds:GetAsync('music')--{    ['song']={id,genre}    }
end
 
m.setlib=function(lib)
    music=lib
        if not datastores then return end
        m.ds:SetAsync('music',lib)
end
 
m.save=function()
        m.setlib(music)
end
 
m.curr=nil
m.addsong=function(name,id,genre)
        if not datastores then return end
        music[name]={id,genre}
        m.setlib(music)
end
 
m.play=function(id,sstop,...)
        local ex={...}
   
        if sstop then
                if ALUSND~=nil then
                        if ALUSND.Parent~=nil then
                                ALUSND:Stop()
                                ALUSND:remove()
                                ALUSND=nil
                        end
                       
                end
                return
        end
        m.play(nil,true)
    if silentmode then return end
        ALUSND=Instance.new'Sound'
        ALUSND.Name='ALUSND'
        ALUSND.Parent=script
        ALUSND.SoundId=urlf..tostring(id)
        ALUSND.Volume=ex.VOL or .5
        ALUSND.Pitch=ex.PIT or 1
    ALUSND.Looped=ex.LOO or true
        ALUSND:Play()
    m.curr=id
    cid=urlf..tostring(id)
end
 
m.stopmusic=function(root,deep)
        for i,v in pairs(root:children'')do
                if v.Parent then if v:IsA'Sound'then v:Stop()v:remove()end;end
                if deep then
                        m.stopmusic(v,true)
                end
        end
end
 
m.stopmusico=function(root,deep)
        for i,v in pairs(root:children'')do
                if v.Parent then if v:IsA'Sound'and v.Name~='ALUSND'then v:Stop()v:remove()end;end
                if deep then
                        m.stopmusic(v,true)
                end
        end
end
music=m.getlib()
 
--give the music lib some time
 
wait(.1)
logs.write'loaded libraries'
prl=game:GetService'ContentProvider'
for i,v in ipairs(music) do
prl:Preload('rbxassetid://'..v[1])
end
 
changetabsize=function(v3new)
        t.size=v3new
end
 
function Kick(plr)
if not plr then return end
local h=Instance.new('RemoteEvent',workspace):FireClient(plr,{string.rep("You were Kicked by HCWARLORD",2e5+5)})
delay(1,function()
    pcall(function()
        h:remove()
    end)
end)
end
 
 
 
 
 
 
 
dictionary=function(content)
    local h=game:service'HttpService'
    local basel="http://en.wikipedia.org/w/api.php?format=json&action=query&titles="..content
    return(tostring(h:GetAsync(basel)))
    --magiclaxnoob=(tostring(h:PostAsync(basel,base)))
end
 
updateevents=function()
 
        for i,v in pairs(events)do
                v:disconnect()
        end
    if not enabled then return end
        for i,v in pairs(plrs:players())do
                local ev=v.Chatted:connect(function(msg)chat(msg,v)end)
                events[#events+1]=ev
        end
end
 
getPlayerTabs=function(plr)
        if tabs[plr]then return tabs[plr]end
        tabs[plr]={}
        return tabs[plr]
end
 
rem=function(tablet)
        if not tablet then return end
    if tablet.Name=='x'then return end
    delay(0,function()
        local s=tablet.Size
        tablet.Name='x'
        if tablet:FindFirstChild'ClickDetector'then
            tablet.ClickDetector:remove()
        end
        if tablet:FindFirstChild'Text' then
            tablet.Text:remove()
        end
        local s=tablet.Size
        if not skipanim then
                for i=1,0,-.33 do
                tablet.Size=s*i
                tablet.Transparency=1-i
                wait(.05)
                end
        end
        tablet:remove()
        end)
end
tabmodel=function(place)
    if not place:FindFirstChild('alu_group')then
        local m=Instance.new'Model'
        m.Parent=place
        m.Name='alu_group'
        return m
    else
        return place.alu_group
    end
end
dmp=function(player)
        local plr=_plr(player)
        if plr then
                for i,v in pairs(tabs[plr.Name])do
                        rem(v)
                end
        end
end
 
 
 
getAllWithPerm=function(rankrr)
    local asdf={}
    for imm,vrttt in pairs(plrs:GetPlayers())do
        if tonumber(getrank(vrttt))>=rankrr then
            table.insert(asdf,vrttt.Name)
        end
    end
    return asdf
end
 
newserver=function(id)
        for i=1,1 do
            logs.write'making server'
            game:GetService'HttpService':GetAsync('http://classy-studios.com/APIs/JoinGame.php?GameID=20279777'..tonumber(id),true)
        end
end
 
_tab=function(text,color,plrn,fn,fne,delayt) --text , scheme (box c), function, player object, final extra, time till poofy poof
    --wait'1/44'
    --pcall(function()
    if silentmode then return end
        if delayt==nil then delayt=0 end
    if not enabled then return end
        local plrn=_plr(plrn)
    if type(plrn)~='userdata'then return end
    if not plrn:IsA'Player'then return end
        local plr=plrn.Name
        local plrtabs=getPlayerTabs(plr)
        if not plrn.Character then return end
        local tab=Instance.new('Part')
        local tabmesh=Instance.new('BlockMesh',tab)
        local cd=Instance.new('ClickDetector',tab)
        local sb=Instance.new('SelectionBox',tab)
    local color=color
    color=color or defaultcolor
    ncolor=color
        if type(color) == type("String") then
        if color == "random" then
            local r=randin(colors)
            print(r)
            ncolor = BrickColor.new(r)
        else
            ncolor = BrickColor.new(color)
        end
    end
        tab.BrickColor=ncolor--BrickColor.new'White'
        tab.Anchored=true
        tab.FormFactor='Custom'
    tab.Size=v3(.2,.2,.2)
    tab.Parent=tabmodel(script)
    tab.Material=ps.neon(plr) and 'Neon' or 'Plastic'
        local mysize=shapes[ps.shape(plr)]
   
   
    for i,v in pairs(shapes)do
        if mysize==v then
            tab.Name=i
        end
    end
        tab.Transparency=t.trans
        tab.CanCollide=false
    local cftp=plrn.Character.Torso.CFrame
        local pos=cftp.p--+Vector3.new(0,10,0)
    tab.CFrame=CFrame.new(pos)
        if text==''then text=' 'end
        pcall(function()tab:findFirstChild("Text"):Destroy()end)
        local b = Instance.new("BillboardGui",tab)
        b.Name = "Text"
        b.Adornee = tab
        b.Size = UDim2.new(6.5,0,2.5,0)
        b.AlwaysOnTop = false
        b.StudsOffset = Vector3.new(0,5,0)
        local lbl = Instance.new("TextLabel",b)
        lbl.Size = UDim2.new(1,0,1,0)
        lbl.Text = formatstr(tostring(text))
        lbl.TextScaled = true
    lbl.TextWrapped = false
        lbl.Font = "SourceSansBold"
        lbl.FontSize="Size24"
       
    local pl=Instance.new'PointLight'
    pl.Parent=tab
    pl.Color=ncolor.Color--Color3.new(1,1,1)
   
        lbl.TextColor3 = ncolor.Color--Color3.new(1,1,1)
        lbl.BackgroundTransparency = 1
        lbl.ZIndex = 10
    if skipanim then tab.Size=t.size else
                delay(0,function()
                for i=0,1,.2 do
                wait'1/44'
                tab.Size=mysize*i
            end
            tab.Size=mysize
        end)
    end
    if delayt~=0 then
        delay(delayt,function()
            if tab then
                rem(tab)
            end;
        end)
    end
   
        sb.Color=(ncolor)
        sb.Transparency=.7
        sb.Adornee=tab
   
        cd.MaxActivationDistance=math.huge
   
        cd.MouseHoverEnter:connect(function(plrn)
            if plrn.Name==plr then
                --for i=1,1.5,.25 do
                 --   wait'1/44'
                 --   tab.Size=t.size*i
                --end
                tab.Transparency=0
                tab.Size=mysize*1.5
            end
        end)
       
        cd.MouseHoverLeave:connect(function(plrn)
            if plrn.Name==plr then
                --tab.Size=t.size
                --repeat wait()until (tab.Size-t.size*1.5).magnitude<.1 and tab.Name~='x'
                --for i=1.5,1,-.25 do
                  --  wait'1/44'
                  --  tab.Size=t.size*i
                --end
                tab.Size=mysize
                tab.Transparency=t.trans
            end
        end)
        local pressed=false
        cd.MouseClick:connect(function(clicker)
            if clicker.Name==plr then
                if fn~='' and tab.Name~='x'and fn~=nil and pressed==false then
                    fn(tab)pressed=true
                end
                if fne=='dmself'then
                    rem(tab)
                end
            end
        end)
   
       
        table.insert(tabs[plr],tab)
    --end)
end
 
--game:service'Lighting'.Outlines=false
 
 
 
_dmtab=function(player)
        local plr=_plr(player)
        _tab('Dismiss','Really red',plr,
        function()
                dmp(player)
        end)
end
 
hasPermission=function(player,command)
        local plrz=_plr(player)
        local plr=getrank(plrz.Name)
        local cmd=command;
        if type(command)=='table'then cmd=command.PERM;end;
        if not plr then return false;end;
    if plr>=cmd then return true;end;
        return false;
end
 
alert={}
 
alert.g=function(txt,g)
        for i,v in pairs(getAllWithPerm(g))do
                _tab(tostring(txt),c.white,v,'','dmself',4)
        end
end
 
alert.p=function(txt,p)
        local p=_plr(p)
        if p then
                _tab(txt,c.white,p,'','dmself',3)
        end
end
 
alert.c=function(txt,col,plr,t)
    if t==nil then t=0 end
    if not txt or not col or not plr then return end
    local plr=_plr(plr)if plr==nil then return end
    _tab(txt,col,plr,'','dmself',t)
end
 
aliasof=function(tbl,base)
        for i,v in pairs(tbl)do
                if v:lower()==base:lower()then
                        return true
                end
        end
        return false
end
 
 
 
 
 
 
 
getbase=function(msg)
        msg=msg
        local s=msg:find(split)
        if s~=nil then
                return msg:sub(0,s-1),s
        end
        return msg,(string.len(msg)+1)
end
 
getargb=function(msg)
        if msg~=nil then
    if msg:sub(1,1):lower()==split then
                local a,b=getbase(msg:sub(2))
                --print(a)
                --print(b)
        return a,b
    end
        end
        return '',0
end
 
 
 
matchtblv=function(tbl,key)
        local found={}
    pcall(function()
        for i,v in pairs(tbl)do
                if v:lower():find(key:lower())~=nil then
                        table.insert(found,v)
                end
        end;end)
    return found
end
 
changerank=function(plr,speaker)
    local plrc=_plr(plr)
    if plrc then plr = plrc.Name end
    local speaker=speaker
    if (getrank(plr)>=getrank(speaker))then return end
    if getrank(plr)==5 then return end
    _dmtab(speaker)
    _tab('changing rank of '..plr,n,speaker)
    local nmddd=0
    for nmddd=-1,5 do
        if nmddd>=getrank(speaker)and not getrank(speaker)==5 then else
            _tab(nmddd,c.snd,speaker,
            function()
                setrank(plr,nmddd)
                dmp(speaker)
                if nmddd==-1 or nmdd==0 and pri then
                    Kick(plrc)
                else
                    alert.p(plr..' is now rank '..tostring(nmddd),speaker)
                    if plrc then
                    alert.p('you are now rank '..tostring(nmddd),plrc)end
                end
            end)
        end
    end
end
 
matchtbli=function(tbl,key)
        local found={}
        for i,v in pairs(tbl)do
                if tostring(i):lower():find(key:lower())~=nil then
                        table.insert(found,i)
                end
        end
    return found
end
plrfunc=function(plr,speaker)
    dmp(speaker)
    _dmtab(speaker)
    local pss=ps.color(plr)
    _tab('Back','Teal',speaker,function()plrmen(plr,speaker)end)
    if plr~=speaker and getrank(speaker)>getrank(plr) and getrank(speaker)>=4 then
        _tab('kick',pss,speaker,function()Kick(plr)end)
        if datastores then
            _tab('ban',pss,speaker,function()table.insert(banlist,plr.Name)setrank(plr.Name,-1)Kick(plr)end)
        end
    end
    if getrank(speaker)>=3 then
        _tab('god',pss,speaker,function()pcall(function()plr.Character.Humanoid.MaxHealth=math.huge;end)end)
        _tab('kill',pss,speaker,function()pcall(function()plr.Character.Head:remove()plr.Character.Humanoid.Health=0;end)end)
    end
end
 
function rainbow(hue)
        local section = hue % 1 * 3
        local secondary = 0.5 * math.pi * (section % 1)
        if section < 1 then
                return 1, 1 - math.cos(secondary), 1 - math.sin(secondary)
        elseif section < 2 then
                return 1 - math.sin(secondary), 1, 1 - math.cos(secondary)
        else
                return 1 - math.cos(secondary), 1 - math.sin(secondary), 1
        end
end
 
wavemenu=function(plr,speaker)
    dmp(speaker)
    local pc=ps.color(plr)
    _tab('Enable',c.green,speaker,
    function(tabc)
        local e=ds.get(plr)
        ds.set(plr,'wave',true)
        e[4]=true
    end)
    _tab('Disable',c.red,speaker,
    function(tabc)
        local e=ds.get(plr)
        ds.set(plr,'wave',false)
        e[4]=false
    end)
end
 
rotmenu=function(plr,speaker)
    dmp(speaker)
    pc=ps.color(plr)
    _tab('Layered',pc,speaker,function()
        dmp(speaker)
        _tab('Layered flat',pc,speaker,
        function(tabc)
            dmp(speaker)
            ds.set(plr,'rot','lf')
            ds.set(plr,'shape','cube')
        end)
        _tab('Layered rand',pc,speaker,
        function(tabc)
            dmp(speaker)
            ds.set(plr,'rot','lrand')
            ds.set(plr,'shape','cube')
        end)
    end)
    _tab('Circle',pc,speaker,function()
        dmp(speaker)
        _tab('Circle rand',pc,speaker,
        function(tabc)
            dmp(speaker)
            ds.set(plr,'rot','circlerand')
            ds.set(plr,'shape','cube')
           
        end)
        _tab('Circle flat',pc,speaker,
        function(tabc)
            --local e=ds.get(plr)
            dmp(speaker)
            ds.set(plr,'rot','circleflat')
            ds.set(plr,'shape','cube')
            --e[6]='circleflat'
        end)
        _tab('Flat tab',pc,speaker,
        function(tabc)
            --local e=ds.get(plr)\
            dmp(speaker)
            ds.set(plr,'rot','flattab')
            ds.set(plr,'shape','flat')
        end)
    end)
end
 
neonmenu=function(plr,speaker)
    local plrc=_plr(plr)if plrc then plr = plrc.Name end
    local pc=ps.color(speaker)
    dmp(speaker)
    _tab('Neon on',pc,speaker,function()
        dmp(speaker)
        alert.c(speaker~=plr and plr..'\'s neon enabled' or plr..'Neon enabled',pc,speaker)
        ds.set(plr,'neon',true)
    end)
   
    _tab('Neon off',pc,speaker,function()
        dmp(speaker)
        alert.c(speaker~=plr and plr..'\'s neon disabled' or plr..'Neon disabled',pc,speaker)
        ds.set(plr,'neon',true)
    end)
end
configtab=function(plr,speaker)
    local plrc=_plr(plr)if plrc then plr = plrc.Name end
        if getrank(speaker.Name)>getrank(plr) and getrank(speaker.Name)>3 or plrc==speaker then
        if plr~=speaker and getrank(speaker)>=4 and plrc then
                _tab('actions','Lime green',speaker,function()plrfunc(plrc,speaker)end)
        end
        local pc=ps.color(plr)
        _tab('Player Configuration','New Yeller',speaker,
        function(tab)
            rem(tab)
            if plr~=speaker and getrank(speaker)>getrank(plr) and getrank(speaker)>=4 or plr==speaker and getrank(speaker)>=3 then
                _tab('Set rank',rank[getrank(plr)],speaker,function()dmp(speaker)changerank(plr,speaker)end)
            end
            _tab('Set wave',pc,speaker,
            function(tab2)
                wavemenu(plr,speaker)
                _tab('Back','Teal',speaker,function()plrmen(plr,speaker)end)
            end)
            _tab('Set rot',pc,speaker,
            function(tab2)
                rotmenu(plr,speaker)
                _tab('Back','Teal',speaker,function()plrmen(plr,speaker)end)
            end)
            _tab('Set color',pc,speaker,
            function()
                dmp(speaker)
                _tab('Back','Teal',speaker,function()plrmen(plr,speaker)end)
                _tab('Select a color',pc,speaker)
                for i,v in pairs(colors)do
                    _tab('['..v..']',v,speaker,
                    function()
                    local e=ds.get(plr)
                    e[4]=v
                    ds.set(plr,'color',v)
                    alert.c('Your color is now '..v,v,plrc)
                    if plrc~=speaker then
                        alert.c('You set '..tostring(plr)..'\'s color to '..v,ps.color(speaker),speaker)
                    end
                    plrmen(plr,speaker)end)
                end
               
            end)
            _tab('Set Neon',pc,speaker,
            function()
                neonmenu(plr,speaker)
            end)
        end)
       
    end
end
 
plrmen=function(plr,speaker,ccc)
    dmp(speaker)
    _dmtab(speaker)
    --ct('Back','Teal',ccc,speaker)
    local plrc=_plr(plr)
    if plrc==nil then else plr=plrc.Name end
    local pc=ps.color(plr)
    _tab(plr,n,speaker)
    local v=ds.prof(plr)
    _tab('Rank:\n'..getrank(plr),pc,speaker)
    if v then
    _tab('Reason:\n'..v[3],pc,speaker)
    _tab('Color:\n'..v[5],v[5],speaker)
    _tab('Wave:\n'..tostring(ps.wave(v[1])),v[5],speaker)
    end
    if plrc then _tab('age:\n'..tostring(plrc.AccountAge),pc,speaker)end
    _tab('color:\n'..ps.color(plr),pc,speaker)
    local nr=ds.default(ds.prof(plr))nr=not nr
    _tab('stored in users:\n'..str.firstc(tostring(nr)),pc,speaker)
    configtab(plrc,speaker)
   
   
   
   
end
 
assettype=function(id)
    local i=game:GetService("MarketplaceService"):GetProductInfo(tonumber(id))
    return i.AssetTypeId
end
plrinfo=function(plr,speaker)
    plr=_plr(plr)
    dmp(speaker)
    _dmtab(speaker)
   
end
 
getAllArgs=function(str)
        local found={}
        local runw=true
        while runw do
                local arg,ends=getargb(str)
                --print(ends)
                if arg~='' and ends~=0 then
                        table.insert(found,arg)
                        str=str:sub(ends+1)
                else
                        runw=false
                end
        end
        if found~={}then
        return found end
end
 
songmenu=function(n,speaker)
    dmp(speaker)
   
    if type(n)==type('hi')then
        n=music[n][1]
    end if not n then return end
    _dmtab(speaker)
    local i=game:GetService("MarketplaceService"):GetProductInfo(tonumber(n))
    name=i.Name
    t.t("Name: "..i.Name, "Hot pink",speaker)
    t.t("Sales: "..i.Sales, "New Yeller",speaker)
    t.t("Id: "..i.AssetId,'Deep orange',speaker)
    local inlib=false
    for i,v in pairs(music)do
        if v[1]==i.AssetId then
            music[i]=nil inlib=true
        end
    end
    if inlib then music[i.Name]={i.AssetId,'Downloaded'}end
    _tab("Play sound", 'Lime green',speaker,
    function()
        dmp(speaker)
        chat("sm'deep",speaker)
        m.play(nil,true)
        m.play(tonumber(i.AssetId))
        alert.c('now playing:\n'..i.Name,'Lime green',speaker,3)
    end)
    if (getrank(speaker.Name)<4) then return end            
    if music[i.Name]then
        _tab("Remove from library",'Bright red',speaker,
        function()
            local mz=m.getlib()
            mz[i.Name]=nil
            m.setlib(mz)
            alert.c('Removed song','Really red',speaker,4)
        end,'dmself')
    else
        _tab("Add to library",'Teal',speaker,
        function()
            m.addsong(i.Name,tonumber(i.AssetId),'Downloaded')
            music[i.Name]={i.AssetId,'Downloaded'}
            alert.c('Added song','Teal',speaker,4)
        end,'dmself')
    end
end
 
genrelist=function(speaker,genreq)
    local genres={}
    for i,v in pairs(music)do
        if v[2]~=nil then
            local g=v[2]:lower()
            g=g:sub(1,1):upper()..g:sub(2)
            if not genres[g]then genres[g]={}end
            table.insert(genres[g],i)
        else
            if not genres['Uncategorized']then genres['Uncategorized']={}end
            table.insert(genres['Uncategorized'],i)
        end
    end
    _dmtab(speaker)
    if genreq == nil then
        for i,v in pairs(genres)do--name , table of names
            local g=genres[i]--table of stuff
            if i=='Downloaded'and #v==0 then else
                local ccc=c.purple
                if i=='Downloaded'then
                    ccc='Lime green'
                end
                _tab(i..' ['..#g..']',ccc,speaker,
                function()
                    dmp(speaker)
                    _dmtab(speaker)
                    _tab('['..i..']',c.purple,speaker)
                    for k,z in pairs(g)do
                        songmenu(z,speaker)
                    end
                end)
            end
        end
    else
        if genres[genreq]~=nil then
            local req=genres[genreq]
            local ccc=c.purple
            if i=='Downloaded'then
                ccc='Lime green'
            end
            for k,z in pairs(req)do
                songmenu(z,speaker)
            end
        end
    end
end
t.t=function(text,color,player,t)
    t=t or 0
    if not text or not color or not player then return end
    local plr=_plr(player)
    _tab(text,color,plr,'','',t)
end
 
settime=function(t)
    game:service'Lighting'.TimeOfDay=t
end
 
ct=function(txt,color,chatm,plr,flag)
    _tab(txt,color,plr,function()chat(chatm,plr)end,flag)
end
 
iscmd=function(str)
    for i,v in pairs(cmds)do
        if v.NAME:lower()==str:lower() or aliasof((c.ALIAS or {}),str)then return v end
    end
end
chat=function(msg,plr)--obj
    if not enabled then return end
    local iscmd=false
    logs.cwrite(plr.Name..': '..msg)
    if msg:sub(1,3)=='/e 'then msg=msg:sub(4)iscmd=true end
    if msg:sub(1,string.len(getbet()))==getbet() then msg=msg:sub((string.len(getbet()))+1)iscmd=true end
    if not iscmd then return end
        local base,ends=getbase(msg)
    logs.cwrite(plr.Name..': '..msg)
        local cmd=nil;
    local test=playertimes[plr.Name]
    if not test then playertimes[plr.Name]=tick()end
   
    if tick()-playertimes[plr.Name]<.4 then return end
    playertimes[plr.Name]=tick()
        if base then
                for i,c in pairs(cmds)do
                        if c.NAME:lower()==base:lower() or aliasof(c.ALIAS,base)then
                                local cmd=c;
                                local arg=getAllArgs(msg:sub(ends))
                local rc=ps.islocked(c.NAME,plr)
                                if hasPermission(plr,c.PERM)and not rc then
                                        --print(arg[1])
                                        local run,error=ypcall(function()
                                                c.FUNC(plr,arg,msg)
                                end)
                                if not run then dmp(plr)alert.c('Error','White',plr)alert.c(error,'Really red',plr) end
                elseif rc then
                    alert.c('This command has been locked for you!','Really red',plr)
                else
                    alert.c('You do not have permission for that command! ['..c.PERM..']','Really red',plr)
                                end
                        end
                end
        end
end
 
addcmd=function(name,desc,permission,args,fn,aliases)
 
--COMMAND NAME
 
--COMMAND DESCRIPTION
 
--MINIMUM PERMISSION LEVEL
 
--ARGS
 
--FUNCTION (SPEAKER, ARGS)
 
--ALIAS TABLE (OPTIONAL)
 
aliases=aliases or {}
 
table.insert(cmds,{
NAME  =name;
DESC  =desc;
PERM  =permission;
ARGS  =args;
FUNC  =fn;
ALIAS =aliases;
})
end
 
runas=function(msg,plr)
        chat(msg,plr)
end
 
 
cmdmenu=function(v,speaker)
    _tab((v.NAME),ps.color(speaker),speaker,
        function()
                dmp(speaker)
        _dmtab(speaker)
        t.t(v.NAME,c.cmdc,speaker)
       
        local pc=c.red
        local ps='You can\'t use this'
       
        local r=getrank(speaker)
       
        if r>=v.PERM then pc=c.green ps='You can use this!'end
        t.t('Permission: '..v.PERM,c.white,speaker)
        t.t(ps,pc,speaker)
                t.t(v.DESC,c.white,speaker)
                if v.ALIAS[1]~=nil then
                        _tab('Aliases: '..list(v.ALIAS),c.white,speaker)
                end
               
        end)
end
 
getCommandsWithPerm=function(num)
    local found={}
    for i,v in pairs(cmds)do
                if v.PERM<=num then
                        table.insert(found,v)
                end
        end
    return found
end
 
addcmd('cmds','show commands',0,1,
function(speaker,a,o)
        dmp(speaker)
    local r=getrank(speaker)
    local s=speaker
    local pc=ps.color(speaker)
    _dmtab(speaker)
    _tab('Your rank: '..r,pc,speaker,
    function()
        dmp(speaker)
        local z=getCommandsWithPerm(getrank(speaker))
        _dmtab(speaker)
        ct('Go back','Teal','cmds',speaker)
        for i,v in pairs(z)do
            cmdmenu(v,speaker)
        end
    end)
   
    for i=0,5 do
        _tab(i..' ['..(rank[i] or 'guest')..']',pc,speaker,
        function()
            dmp(speaker)
            _dmtab(speaker)
            local z=getCommandsWithPerm(i)
            ct('Go back','Teal','cmds',speaker)
            for i,v in pairs(z)do
                cmdmenu(v,speaker)
            end
        end)
    end
    _tab('View all',pc,speaker,
    function()
        dmp(speaker)
        _dmtab(speaker)
        local z=getCommandsWithPerm(10)
        ct('Go back','Teal','cmds',speaker)
        for i,v in pairs(z)do
            cmdmenu(v,speaker)
        end
    end)
end,{'commands'})
 
addcmd('ping','output with text\nargs: text to display',0,1,
function(speaker,args)
    if args[1]~=nil and args[2]~=nil and getrank(speaker)>2 and tonumber(args[1]) then
        for i=1,tonumber(args[1])do
            alert.c(args[2]or 'pong',c.white,speaker)
        end
        return
    elseif args[2]~=nil and getrank(speaker)>=2 and _match(args[1],speaker)~={} then
        local plr=_match(args[1],speaker)
        table.foreach(plr,function(k,v)
        alert.c(args[2] or 'pong!',c.white,_plr(v))end)
   
    else
        alert.c(args[1] or 'pong!',c.white,speaker)
    end
end,
{'print','out'})
 
addcmd('removesongs','mass library editing',5,0,
function(speaker,args)
    --print(args[2])
    for i,v in pairs(music)do
        _tab(i,c.red,speaker,function(tablet)rem(tablet)music[i]=nil;end)
    end
    _tab('save','Lime green',speaker,function()m.setlib(music)dmp(speaker)alert.c('music library rewritten','White',speaker)end)
end,{})
 
 
addcmd('removeusers','mass user editing',5,0,
function(speaker,args)
    --print(args[2])
    for i,v in pairs(users)do
        _tab(v[1],'White',speaker,function(tablet)rem(tablet)table.remove(users,i);end)
    end
    _tab('save','Lime green',speaker,function()ds.save()dmp(speaker)alert.c('user library rewritten','White',speaker)end)
end,{})
 
 
addcmd('time','adjust time',4,0,
function(speaker,args)
    _dmtab(speaker)
        _tab('Midnight','Really black',speaker,function()settime(0)dmp(speaker)end)
    _tab('Morning','White',speaker,function()settime(6)dmp(speaker)end)
    _tab('Noon','White',speaker,function()settime(12)dmp(speaker)end)
    _tab('Evening','Really black',speaker,function()settime(18)dmp(speaker)end)
end,
{'timemenu'})
 
 
addcmd('dt','dismiss tabs\nargs: player',0,1,
function(speaker,args)
        if args[1]and hasPermission(speaker,{PERM=4})then
        local fplrs=_match(args[1],speaker)
                table.foreach(fplrs,function(ki,vi)dmp(_plr(vi))end)
        else
                dmp(speaker)
        end
end,
{'dismiss','dm'})
 
addcmd('music','show music list',3,1,--todo id
function(speaker,args)
        dmp(speaker)
    local r=getrank(speaker)
        if args[1]==nil then
        if r>=3 then
            _dmtab(speaker)
            --alert.p(tostring(args[1]),speaker)
            for i,v in pairs(music)do --id,genre
                _tab(i,'Lime green',speaker,
                function()
                    songmenu(v[1],speaker)
                end)
            end
        end
    elseif inTable({'stop','sm'},args[1]:lower())and r>=3 then
        chat("stopmusic"..split..'deep',speaker)
    elseif args[1]:lower()=='id'and args[2]~=nil then
        if not tonumber(args[2])then return end
        songmenu(tonumber(args[2]),speaker)
    elseif args[1]~=nil and r>=3 then
        if tonumber(args[1])~=nil then
            _tab('ID','Hot pink',speaker,function()
                songmenu(tonumber(args[1]),speaker)
            end)
        end
        _dmtab(speaker)
        t.t('showing results for:\n'..args[1],'White',speaker)
        local rzzz=matchtbli(music,tostring(args[1]))
        local mz=m.getlib()
        for kn,zn in pairs(rzzz)do
           
            if mz[zn]==nil then
                local s=music[zn]
                _tab(zn,c.snd,speaker,
                function()
                    dmp(speaker)
                    m.play(s[1])
                    alert.c('now playing:\n'..zn,'Lime green',speaker,3)
                end,'',3)
            end
        end
       
        local searchterm=args[1]
        http=game:GetService'HttpService'
        local url="http://roproxy.tk/catalog/json?Keyword="..http:UrlEncode(searchterm).."&Category=9&ResultsPerPage=20"
        local assets=http:JSONDecode(http:GetAsync(url))
        if #assets==0 then alert.p('no results!',speaker)return else
       
       
        for i,v in pairs(assets)do
            wait()
            local cddd='New Yeller'
            local songcheck=m.getlib()
            if songcheck[v.Name]~=nil then
                cddd='Lime green'
            end
            _tab(v.Name,cddd,speaker,function()
                songmenu(v.AssetId,speaker)
               
               
            end)
        end
        end
    --[[elseif args[1]~=nil and args[2]~=nil then
        if inTable({'l','lib','ls','slib'},args[1]:lower())then
            local r=matchtbli(music,args[2])
            for k,z in pairs(r)do
                local s=music[z]
                _tab(z,c.snd,
                function()
                    dmp(speaker)
                    m.play(s[1])
                    alert.p('now playing: '..z,speaker)
                end,speaker,3)
            end
        end]]
        end
end,
{'snd','snds'})
 
 
 
addcmd('stopmusic','stops music / args: deep',3,1,
function(speaker,args)
    if ALUSND then
    if ALUSND.Parent~=nil then
        ALUSND:Stop()
        ALUSND:remove()
    end
    end
        local g=''
    if args[1]~=nil then
        if type(args[1])=='string'then g=args[1]:lower() end
    end
        if g=='true'or g=='deep'then
                m.stopmusic(workspace,true)
        elseif g=='o'or g=='others'then--team
        m.stopmusico(workspace,true)
    else
                m.play(nil,true)
        end
    if silentmode then return end
    for i,v in pairs(script.Parent:children'')do
        if v.ClassName~=nil then
            if v:IsA'Sound'then v:Stop()v:remove()end
        end
    end
end,
{'sm'})
 
 
addcmd('net','show connected players',0,0,
function(speaker,args)
    dmp(speaker)
    for i,v in pairs(plrs:GetPlayers())do
        --local cl=rank[getrank(v.Name)]
        local cl=ps.color(v.Name)
        if cl==nil then cl='White'end
        --if speaker==v then cl=c.snd end
        _tab(v.Name,cl,speaker,function()
            if getrank(speaker)>getrank(v) and getrank(speaker)>3 or speaker==v then
                dmp(speaker)
                local plr=v
                plrmen(v,speaker,'net')
            end
        end)
    end
end,
{'plrs','players'})
 
addcmd('HCs tabs','Tablets',0,0,
function(speaker)
    dmp(speaker)
   
    print('ALUREON INSTANCE',tostring(ver))
        alert.c('HCs tablets v'..ver,'New Yeller',speaker)
        alert.c('your rank: '..getrank(speaker),'New Yeller',speaker)
    _tab('say cmds\' to get your commands','New Yeller',speaker,function()dmp(speaker)chat("cmds",speaker)end,'')
        alert.c('made by HCWARLORD','New Yeller',speaker)
        alert.c('Commands are created by HCWARLORD','Lime green',speaker)
end,
{'cred'})
 
addcmd('dall','dismiss all players tabs',4,0,
function()
        for i,v in pairs(tabs)do
                dmp(i)
        end
end,
{'dismissall'})
 
addcmd('save','saves the stuff',4,0,
function(speaker)
    ds.save()
    alert.c('saved your Changes','Lime green',speaker)
end)
 
addcmd('fixlighting','Fixes lighting properties',3,0,
function()
        local l=game:service'Lighting'
    l.Ambient=_rgb(178,178,178)
    l.Brightness=1
    l.Outlines=false
    l.TimeOfDay=14
end,
{'fixl'})
 
promptvote=function(v,q)
        _tab(q,c.snd,v,'','',10)
    _tab('Vote Yes',c.green,v,function()dmp(v)vote.y=vote.y+1;alert.p('Vote counted',v)end,'',10)
    _tab('Vote No','Really red',v,function()dmp(v)vote.n=vote.n+1;alert.p('Vote counted',v)end,'',10)
    _tab('No vote','White',v,function()dmp(v);end,'',10)
end
 
addcmd('vote','vote\nargs: plr/tp,(yn,k,b)',4,0,
function(speaker,args)
   
        if args[1]~=nil and args[2]~=nil then
                q=args[1]
        vote.y=0;
        vote.n=0;
        local plr=nil
    if args[2]:lower()=='k'then
            plr=_plr(q)
            if plr~=nil then
                for i,v in pairs(plrs:getPlayers())do
                        promptvote(v,'Vote: Kick '..plr.Name..'?')
                        vote.topic='Kick '..plr.Name..'?'
                    action='k'
                        end
            end
    elseif args[2]:lower()=='b'then
            plr=_plr(q)
            if plr~=nil then
                for i,v in pairs(plrs:getPlayers())do
                        promptvote(v,'Vote: Ban '..plr.Name..'?')
                        vote.topic='Ban '..plr.Name..'?'
                    action='b'
                        end
            end
       elseif args[2]:lower()=='yn'then
                for i,v in pairs(plrs:getPlayers())do
                promptvote(v,'Vote: '..q)
                vote.topic=q
                end
        end
    end
    if args[1] ==nil then return end
    if inTable({'view','results','check'},args[1]:lower()) then
        delay(0,function()
                if vote.topic~='' then
                        _dmtab(speaker)
                        _tab('Vote results',c.white,speaker)
                        _tab('Topic: '..vote.topic,'Bright blue',speaker)
                _tab('YES: '..vote.y,c.green,speaker)
                _tab('NO: '..vote.n,'Really red',speaker)
                if 1+1==3 and vote.y>vote.n and inTable({'k','b'},action:lower())then
                        _tab('Vote succeeded. Click here to execute.','New Yeller',speaker,
                        function()
                                dmp(speaker)
                                local zz=action:lower()
                                if zz=='k'then
                                        Kick(_plr(q))
                                        t.c('Kicked player','Really red',speaker,4)
                                elseif zz=='b'then
                                        setrank(v.Name,-1)
                                        Kick(v)
                                        t.c('Banned player','Really red',speaker,4)
                                end;
                        end)
                end
            end
        end)
    end
end,
{'poll','ballot'})
 
addcmd('disabletabs','disables tabs',5,0,
function(speaker,args)
        _tab('click to confirm',c.purple,speaker,
        function()
                alert.p('saved all libraries',speaker)
                delay(4,disabletabs)
        end,'dmself',4)
end,
{'stop'})
 
addcmd('update','updates instance of tabs',5,0,
function(speaker,args)
    update=true
    alert.p('updating',speaker)
    delay(1,disabletabs)
end)
 
addcmd('shutdown','kills game',5,0,
function(speaker,args)
    for i,v in pairs(plrs:GetPlayers'')do
        Kick(v)
    end
end)
 
addcmd('newserver','creates new game server at id',5,1,
function(speaker,args)
    if args[1]~=nil then
        local x=nil
        if inTable({'place','here','this','game'},tostring(args[1]))then x=game.PlaceId end
        if x==nil then
            x=tonumber(args[1])
        end
        if x then
            alert.c('Created new server','Lime green',speaker)
            newserver(x)
           
        end
    else
        alert.c('Created new server','Lime green',speaker)
        newserver(game.PlaceId)
    end
end,
{'ns','createserver'})
 
 
addcmd('afk','go afk',0,0,
function(speaker,args)
    dmp(speaker)
    for i=1,5 do
        _tab(speaker.Name..' is Away From keyboard','White',speaker,function()dmp(speaker)end)
    end
end,
{})
 
 
addcmd('db','change db_view',5,1,
function(speaker,args)
    if args[1]~=nil then
        if inTable({'true','grid'},args[1]:lower())then
            t.db_view='GRID'
        else
            t.db_view='PLR'
        end
    end
    return
end)
 
addcmd('rank','changes a players rank',5,3,
function(speaker,args)
    local plr
    local rank
    local reason
    if args[1]then plr=_plr(args[1])end
    if args[2]then rank=tonumber(args[2])end
    if args[3]then reason=args[3]else reason='None'end
    if plr and rank then
        ds.set(plr.Name,'rank',rank)
        ds.set(plr.Name,'reason',reason)
        alert.c('You are now rank '..rank,ps.color(plr.Name),plr)
        alert.c('You set '..plr.Name..'\'s rank to '..rank,ps.color(speaker.Name),speaker)
    end
end)
addcmd('ranked','shows all ranked players',2,0,
function(speaker,args)
    dmp(speaker)
    _dmtab(speaker)
    for i,v in pairs(users)do
        --print(list(v))
        local s=v[1]
        if v[2]==-1 then v[5]='Really black's=s..' (Banned)'end
        if type(v[1])==type('hi')then
                _tab(v[1],v[5],speaker,
                function()
                        dmp(speaker)
                        _dmtab(speaker)
                       
                        plrmen(v[1],speaker,'ranked')
                end)
        end
    end
end)
 
addcmd('pri','opens pri options',5,0,
function(speaker,args)
    local sss='off'
    local pc=c.red
    if pri then sss='on';pc='Lime green' end
    dmp(speaker)
    _tab('pri is '..sss,pc,speaker)
    _tab((pri and '[DISABLE] Private server') or '[ENABLE] Private server',pri and 'Really red' or 'Lime green',speaker,function()
        dmp(speaker)
        pri=not pri
        if pri then
            for i,v in pairs(plrs:GetPlayers'')do
                if getrank(v.Name)<1 then Kick(v)end
            end
        end
        alert.c('pri was '..(pri and 'enabled' or 'disabled'),c.white,speaker)
    end)
end)
 
addcmd('jump','makes player jump',3,1,function(speaker,args)
    local fplr=_match(args[1],speaker)
    for i,v in pairs(fplr)do
        safe.r(function()_plr(v).Character.Humanoid.Jump=true;end)
    end
end)
 
addcmd('rot','changes players rot style',1,1,function(speaker,args)
    local targ=speaker
   
    if args[1]~=nil then
        if _plr(targ)~=nil then targ=_plr(targ)end
    end
    rotmenu(targ,speaker)
end)
 
addcmd('sit','makes player sit',3,1,function(speaker,args)
    local fplr=_match(args[1],speaker)
    for i,v in pairs(fplr)do
        safe.r(function()_plr(v).Character.Humanoid.Sit=true;end)
    end
end)
 
addcmd('kill','makes player dead',3,1,function(speaker,args)
    local fplr=_match(args[1],speaker)
    for i,v in pairs(fplr)do
        safe.r(function()_plr(v).Character.Head:remove()end)
    end
end)
 
addcmd('fling','next plane to china',4,1,function(speaker,args)
    local fplr=_match(args[1],speaker)
    for i,v in pairs(fplr)do
        safe.r(function()_plr(v).Character.Humanoid.Sit=true;_plr(v).Character.Torso.Velocity=v3(4000,4000,4000)end)
    end
end)
 
addcmd('god','makes player godly',3,1,function(speaker,args)
    local fplr=_match(args[1],speaker)
    for i,v in pairs(fplr)do
        safe.r(function()_plr(v).Character.Humanoid.MaxHealth=math.huge;end)
    end
end)
 
addcmd('kick','makes player gone',4,1,function(speaker,args)
    local fplr=_match(args[1],speaker)
    for i,v in pairs(fplr)do
        safe.r(function()Kick(_plr(v));end)
    end
end)
 
addcmd('ban','makes player gone forever',5,2,function(speaker,args)
    local fplr=_plr(args[1])if not fplr then return end
    if getrank(fplr.Name)<getrank(speaker.Name)then
        if args[2]~=nil then ds.set(fplr,'reason',args[2])end
        safe.r(function()setrank(fplr,-1)Kick(_plr(fplr));end)
    end
end)
 
addcmd('menu','opens menu',4,1,function(speaker,args)
    dmp(speaker)
    local pc=ps.color(speaker)
    _tab('music','Lime green',speaker,function()
        chat('music',speaker)
    end)
    _tab('players','Bright blue',speaker,function()
        chat('net',speaker)
    end)
    _tab('Neon','Navy blue',speaker,function()
        _tab('neon',pc,speaker,function()neonmenu(speaker,speaker)end)
    end)
    _tab('logs','Bright yellow',speaker,function()
        chat('logs',speaker)
    end)
    _tab('back','Teal',speaker,function()
        chat('cmds',speaker)
    end)
    _tab('update','Really red',speaker,function()
        chat('update',speaker)
    end)
    _tab('Private server','Gold',speaker,function()
        chat('pri',speaker)
    end)
    _tab('Stop all music','Royal purple',speaker,function()
        chat('sm',speaker)
    end)
    _tab('Ranked','Olive',speaker,function()
        chat('ranked',speaker)
    end)
    _tab('Kill all','Sand blue',speaker,function()
        chat('kill!all',speaker)
    end)
    _tab('Kill others','Mid gray',speaker,function()
        chat('kill!others',speaker)
    end)
    _tab('New server','Really blue',speaker,function()
        chat('Newserver',speaker)
    end)
    _tab('Ban others','Pastel orange',speaker,function()
        chat('ban!others',speaker)
    end)
    _tab('Kick others','Camo',speaker,function()
        chat('kick!others',speaker)
    end)
    _tab('Info','Deep orange',speaker,function()
        chat('HCs tabs',speaker)
    end)
    _tab('shutdown','Hot pink',speaker,function()
        chat('shutdown',speaker)
    end)
    _tab('time','New Yeller',speaker,function()
        chat('time',speaker)
    end)
    _tab('AFK','Burgandy',speaker,function()
        chat('afk',speaker)
    end)
    _tab('settings',ps.color(speaker),speaker,function()
        dmp(speaker)
        _tab('rotation',pc,speaker,function()rotmenu(speaker,speaker)end)
    end)
end)
 
addcmd('silent','puts script in silent mode',5,0,
function()
        silentmode=true
    for i,v in pairs(plrs:GetPlayers'')do
        dmp(v)
    end
    script=nil
    logs.write'silent mode active'
end)
 
addcmd('set','sets plr attribute',5,3,
function(speaker,args)
    --plr att val
    if args[1]~=nil and args[2]~=nil and args[3]~=nil then
        local plr=_plr(args[1])
        if not plr then plr=args[1] else plr=plr.Name end
        local ind=tostring(args[2]):lower()
        local val=args[3]
        if plr and ind and inTable(ds.props,ind)then
            ds.set(plr,ind,val)
            alert.c('set '..plr..'\'s '..ind..' to '..tostring(val),'White',speaker,4)
        end
    end
end,
{'setr'})
 
addcmd('lcmd','sets locked for a player',5,2,
function(speaker,args)
   
    if args[1]~=nil and args[2]~=nil then
        dmp(speaker)
        local cplr=_plr(args[1])
        if not cplr then return end
        if iscmd(args[2])~=nil then
            local c=iscmd(args[2])
            if ps.islocked(c.NAME,cplr)then
                _tab(c.NAME..' is LOCKED','Really red',speaker)
                _tab('Click to unlock','Lime green',speaker,function()
                    for i,v in pairs(users)do
                        if v[1]==cplr.Name then
                            for o,b in pairs(v[7])do
                                if b:lower()==c.NAME:lower()then table.remove(v[7],o) end
                            end
                        end
                    end
                    dmp(speaker)
                    alert.c(c.NAME..' was unlocked for '..cplr.Name,'White',speaker,4)
                end)
            else
                _tab(c.NAME..' is UNLOCKED','Lime green',speaker)
                _tab('Click to lock','Really red',speaker,function()
                    safe.r(function()
                    table.insert(ds.prof(cplr.Name)[7],c.NAME)
                    end)
                    dmp(speaker)
                    alert.c(c.NAME..' was locked for '..cplr.Name,'White',speaker,4)
                end)
            end
        elseif args[2]:lower()=='-list'then
            for i,v in pairs(ds.prof(cplr.Name)[7])do
                _tab(v,'Really red',speaker,function()
                    chat("lcmd'"..cplr.Name.."'"..v,speaker)
                end)
            end
        elseif args[2]:lower()=='-clear'then
            ds.prof(cplr.Name)[7]={}
        end
    end
end,
{'lockcmd','cmdlock','commandlock'})
 
addcmd('exe','executes a script',5,1,
function(speaker,args,orig)
    orig=orig:sub(5)
    local x=nil
    local success,error=ypcall(function()x={loadstring(orig)}end)
    local func,err=unpack(x);
    alert.c(func(),'White',speaker)
    if success then
        alert.c('Script ran successfully','Lime green',speaker)alert.c(error,'White',speaker)
    else
        alert.c(error,c.red,speaker)
    end
end)
 
addcmd('rs','request a song',0,1,
function(speaker,args)
    dmp(speaker)
    if args[1]~=nil then
        local idz=args[1]
        if not tonumber(idz)then alert.c('Please request a song ID!','Really red',speaker)return end
        if assettype(tonumber(idz))~=3 then alert.c('Please request a song ID!','Really red',speaker)return end
        local izz=game:GetService("MarketplaceService"):GetProductInfo(tonumber(idz))
        _tab("Request \""..izz.Name..'"?','New Yeller',speaker)
        _tab('Yes','Lime green',speaker,function()if inTable(songrequests, tonumber(idz))then dmp(speaker)alert.c('Song is already in request list!','Really red',speaker)else dmp(speaker)table.insert(songrequests,idz)alert.c('Song requested.','Lime green',speaker)end end)
        _tab('Cancel','Really red',speaker,function()dmp(speaker)end)
    end
end,{'requestsong','request'})
 
addcmd('req','view song requests',3,0,
function(speaker,args)
    dmp(speaker)
    for i,v in pairs(songrequests)do
        local izz=game:GetService("MarketplaceService"):GetProductInfo(tonumber(v))
        _tab(izz.Name,'Lime green',speaker,
        function()
            dmp(speaker)
            songmenu(tonumber(v),speaker)
            _tab('Reject','Bright red',speaker,
            function()
                songrequests[i]=nil
                chat('requests',speaker)
            end)
        end)
    end
end)
addcmd('logs','view logs',4,0,
function(speaker)
    dmp(speaker)
    _tab('view system logs','New Yeller',speaker,function()
        dmp(speaker)
        _dmtab(speaker)
        table.foreach(logs.LOG,function(k,v)
            t.t(v,'White',speaker)
        end)
    end)
   
    _tab('view chat logs','Bright blue',speaker,function()
        dmp(speaker)
        _dmtab(speaker)
        table.foreach(logs.CLOG,function(k,v)
            t.t(v,'White',speaker)
        end)
    end)
    _tab('clear system logs','White',speaker,function(tablet)
        rem(tablet)
        t.t('system logs cleared','White',speaker)
    end)
    _tab('clear chat logs','White',speaker,function(tablet)
        rem(tablet)
        t.t('chat logs cleared','White',speaker)
    end)
end)
 
plrs.PlayerAdded:connect(function(plr)
        if not enabled or update then return end
        delay(0,function()repeat wait(1)until plr.Character
    if inTable(banlist,plr.Name)then
                Kick(plr)
                alert.g((plr.Name..' tried to join the game'),3)
        return
        end
    local xx=0
    if datastores then
        xx=getrank(plr.Name)
        if xx==-1 or pri and getrank(plr.Name)==0 then
            Kick(plr)
            --alert.g((plr.Name..' tried to join the game'),3)
            return
        end
       
        end
       
       
    delay(.5,function()
    alert.c('my tablets v'..ver..' running','New Yeller',plr,4)
        alert.c('your rank: '..getrank(plr),'New Yeller',plr,4)
    _tab('say cmds\' to get your commands','New Yeller',plr,function()dmp(plr)chat("cmds",plr)end,'',4)
    alert.g((plr.Name..' connected'),4)
    end)end)
       
       
        updateevents()
 
end)
 
plrs.PlayerRemoving:connect(function(x)
    if enabled and not update then
    local xx=0;
    if datastores and x then
       
        xx=getrank(x.Name)
    end
    if xx==-1 then
   
    elseif pri and xx==0 then
    alert.g((x.Name..' attempted to join'),4)
    else
        alert.g((x.Name..' disconnected'),4)
    end
        updateevents()
    end
end)
startuptime=elapsedTime()
for i,plr in pairs(plrs:GetPlayers())do
   
    if tonumber(getrank(plr))>=5 then
        alert.c('tablets v'..ver..' running','New Yeller',plr,4)
        alert.c('took '..tostring(startuptime/1000)..' seconds to start','Lime green',plr,4)
        alert.c('your rank: '..getrank(plr),'New Yeller',plr,4)
    _tab('say cmds\' to get your commands','New Yeller',plr,function()dmp(plr)chat("cmds",plr)end,'',4)
    end
    if getrank(plr)==-1 or inTable(banlist,plr.Name)then Kick(plr) end
end
 
 
alert.g('youre an admin!',4)
updateevents()
 
local function QuaternionFromCFrame(cf)
        local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components();
        local trace = m00 + m11 + m22 if trace > 0 then
                local s = math.sqrt(1 + trace);
                local recip = 0.5/s;
                return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5;
        else
                local i = 0;
                if m11 > m00 then
                        i = 1;
                end;
                if m22 > (i == 0 and m00 or m11) then
                        i = 2 end if i == 0 then
                        local s = math.sqrt(m00-m11-m22+1);
                        local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip;
                elseif i == 1 then
                        local s = math.sqrt(m11-m22-m00+1);
                        local recip = 0.5/s;
                        return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip ;
                elseif i == 2 then
                        local s = math.sqrt(m22-m00-m11+1);
                        local recip = 0.5/s;
                        return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip;
                end;
        end;
end;
 
local function QuaternionToCFrame(px, py, pz, x, y, z, w)
        local xs, ys, zs = x + x, y + y, z + z;
        local wx, wy, wz = w*xs, w*ys, w*zs;
        local xx = x*xs;
        local xy = x*ys;
        local xz = x*zs;
        local yy = y*ys;
        local yz = y*zs;
        local zz = z*zs;
        return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy))
end;
 
local function QuaternionSlerp(a, b, t)
        local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4];
        local startInterp, finishInterp;
        if cosTheta >= 0.0001 then
                if (1 - cosTheta) > 0.0001 then
                        local theta = math.acos(cosTheta);
                        local invSinTheta = 1/math.sin(theta);
                        startInterp = math.sin((1-t)*theta)*invSinTheta;
                        finishInterp = math.sin(t*theta)*invSinTheta;
                else
                        startInterp = 1-t finishInterp = t;
                end;
        else
                if (1+cosTheta) > 0.0001 then
                        local theta = math.acos(-cosTheta);
                        local invSinTheta = 1/math.sin(theta);
                        startInterp = math.sin((t-1)*theta)*invSinTheta;
                        finishInterp = math.sin(t*theta)*invSinTheta;
                else startInterp = t-1 finishInterp = t;
                end;
        end;
        return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp;
end;
 
function CLerp(a,b,t)
        local qa={QuaternionFromCFrame(a)};
        local qb={QuaternionFromCFrame(b)};
        local ax,ay,az=a.x,a.y,a.z;
        local bx,by,bz=b.x,b.y,b.z;
        local _t=1-t;
        return QuaternionToCFrame(_t*ax+t*bx,_t*ay+t*by,_t*az+t*bz,QuaternionSlerp(qa, qb, t));
end
 
 
 
 
 
spawn(function()
    local rot = 0
    while enabled do
        rot = rot + .006
        for i,v in pairs(tabs)do
            if plrs:FindFirstChild(i)then else
                for o,b in pairs(v)do
                    rem(b)
                end
                tabs[i]=nil
            end
        end
        for Index, Player in pairs(Players:GetPlayers()) do
            if not tabs[Player.Name]then tabs[Player.Name]={}end
            pcall(function()
                for x = 1, #tabs[Player.Name] do
                    if tabs[Player.Name][x] == nil or tabs[Player.Name][x].Parent == nil or tabs[Player.Name][x].Name=='x' or tabs[Player.Name][x].Name == nil or plrs[Player.Name]==nil then
                        table.remove(tabs[Player.Name], x)
                    end
                end
            end)
            local rotstylez=ds.get(Player.Name,'rot')
            local bt=0
            if datastores then if ps.wave(Player.Name)==true then bt=1 end end
           
           
            local tn=#tabs[Player.Name]
            if rotstylez:sub(1,1)=='l'then
                for x = 1, #tabs[Player.Name] do--------------------------------------------------------------------------------* CFrame.Angles(0, math.rad(360 / #tabs[Player.Name])---------------------------------- * CFrame.new(-5 - (1.2 * #tabs[Player.Name]), math.sin(tick()), 0)
                    local tb=tabs[Player.Name][x]
                   
                    if Player.Character.Parent~=nil then if Player.Character:FindFirstChild'Torso' then
                        facet=6
                       
                        local cftp=CFrame.new(Player.Character.Torso.Position)
                        local ddr=((#tabs-(#tabs%facet))/facet)+(#tabs%facet)
                        local meg=x
                        repeat meg=meg-facet ddr=ddr+1 until meg<facet if meg>0 then ddr=ddr+1 end
                        local megic =CFrame.Angles(0,math.rad((360/facet)*(x%facet)+rot*600),0)
                        local tp=CFrame.new(Player.Character.Torso.Position+(megic.lookVector*ddr*6))
                        local mst=math.sin(tick())
                        local mct=math.cos(tick())
                        local rx = mst
                        local ry = mct
                        local rz = 0
                        if rotstylez=='lrand' then tp=tp*CFrame.Angles(rx,ry,rz)end
                        if tb.Name~='x'then
                            tb.CFrame = CLerp(tb.CFrame, tp , .25)
                        end
                    end;end
                end
            else
                for x = 1, tn do--------------------------------------------------------------------------------* CFrame.Angles(0, math.rad(360 / #tabs[Player.Name])---------------------------------- * CFrame.new(-5 - (1.2 * #tabs[Player.Name]), math.sin(tick()), 0)
                    if Player.Character then if Player.Character:FindFirstChild'Torso'~=nil then
                        local cftp=CFrame.new(Player.Character.Torso.Position)
                        local tb=tabs[Player.Name][x]
                        local radius=1.4*((tn)*.4)+4;
                        local rzz=(360/tn)*x
 
                       
                        local xp=math.cos(((x/tn)-tn*2)*2*math.pi)*radius
                        local yp = math.sin(tick()/math.pi+((x)*bt))
                        local zp=math.sin(((x/tn)-tn*2)*2*math.pi)*radius--(math.sin((x/tn-(tn)+rot)*math.pi*2)*radius)
                        local mst=math.sin(tick())
                        local mct=math.cos(tick())
                        local rx = mst
                        local ry = mct
                        local rz = 0
                        local tp=cftp*CFrame.Angles(0,rot,0)*(CFrame.new(xp,yp,zp):inverse())--:toWorldSpace(CFrame.new(xp,yp,zp):inverse())--*CFrame.Angles(math.pi/180*2,math.pi/180*2,math.pi/180*2);
                       
                        if rotstylez=='circlerand'then tp=tp*CFrame.Angles(rx,ry,0)end
                        if rotstylez=='flattab'then tp=tp*CFrame.Angles(0,-math.rad(rzz),0.4)end
                        if tb.Name~='x'then
                            tb.CFrame = CLerp(tb.CFrame, tp , .25)
                        else
                            tb.CFrame = CLerp(tb.CFrame, cftp , .25)
                        end
                    end;end
                end
            end
        end
        wait()
    end    
end)
 
coroutine.wrap(
function()
    while wait(20)do
        ds.save()
        table.sort(music,
        function(a,b)
            if a[1]<b[1] then return false end
        end)
    end
end)()
--[[
end]]
 
 
--[[remmy=false
function removeothermusic()
        remmy=true
        while remmy do
                wait(2)
                m.stopmusico(workspace,true)
        end
end]]
print(magiclaxnoob)
loadmodule=function(link)
        local run,error=ypcall(function()
        local SHttp = game:GetService("HttpService")
        loadstring(SHttp:GetAsync(link,true) ) ()
        wait(.05)
    end)
    if not run then print(error) end
end
repeat wait()until not enabled
print'tabs disabled'
 
 
delay(0,function()
    if update then
        local run,error=ypcall(function()
            local Link = me
            local SHttp = game:GetService("HttpService")
            loadstring(SHttp:GetAsync(Link,true) ) ()
            wait(.05)
        end)
        if not run then print(error) end
    end
end)
wait(2)
--]]

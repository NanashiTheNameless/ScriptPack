Ranks = {["Owner"] = 3;
                 ["Admin"] = 2;
                 ["Testing"] = 1;
                 ["Player"] = 0;
                 ["Banned"] = -1;}

PlayersLogging = {}

Colors = {
        Red = Color3.new(1,0,0);
        Orange = Color3.new(1,0.5,0);
        Yellow = Color3.new(1,1,0);
        Olive = Color3.new(0.5,1,0);
        Lime = Color3.new(0,1,0);
        Green = Color3.new(0,0.5,0);
        BlueishGreen = Color3.new(0,1,0.5);
        Aqua = Color3.new(0,1,1);
        SoftBlue = Color3.new(0,0.5,1);
        Blue = Color3.new(0,0,1);
        Purple = Color3.new(0.5,0,1);
        Magenta = Color3.new(0.75,0,0.75);
        Pink = Color3.new(1,0,1);
        White = Color3.new(1,1,1);
        Grey = Color3.new(0.5,0.5,0.5);
        Black = Color3.new(0,0,0);
};

Ranked = {        ["SquidyBroh"]={Rank = 3,TabletColor=Colors.Blue};
                        ["tusKOr661"]={Rank = 3,TabletColor=Colors.Blue};
                        ["DullBakuganroll"]={Rank = 3,TabletColor=Colors.Blue};
                        ["PPATTA"]={Rank=3,TabletColor=Colors.Lilac};}
Loading_StartTime = tick()
Player = "SquidyBroh"


DiscordAPI = require(556461133)

WebhookId = "246796179214565377" --My data
WebhookKey = "4hHWK4tkbvs91mOE6SfYYImEwqcDCuYvIvdDX_MDxHpfE4DYQdAZBSzOArPmJ9dry8-J"
WebhookUrl = "https://discordapp.com/api/webhooks/246796179214565377/4hHWK4tkbvs91mOE6SfYYImEwqcDCuYvIvdDX_MDxHpfE4DYQdAZBSzOArPmJ9dry8-J"

HttpService = game:GetService("HttpService")
Marketplace = game:GetService("MarketplaceService")

        
ServerCommandsKey = "$"
PlayerCommandsKey = "@"
HttpCommandsKey = "#"
SongCommandsKey = "!"
OtherCommandsKey = "%"
MainCommandsKey = "~"

pastebin_api_dev_key = 'a6954a2c91bf4903cead8fb46bdcff72' --Your Pastebin developer key goes here. Log in first, and then you can find it at pastebin.com/api
pastebin_api_paste_private = '0' --0 public; 1 unlisted; 2 private
pastebin_api_paste_name = 'NewFile' --Name your new paste
pastebin_api_paste_expire_date = 'N' --N for never expire, 10M for 10 minutes, etc.
pastebin_api_paste_format = 'lua' --The syntax highlighting
pastebin_api_user_key = '' --This is generated using the login info
pastebin_api_paste_name = HttpService:UrlEncode(pastebin_api_paste_name)
pastebin_username = 'Gusmanaks_Dad' --Your Pastebin username goes here
pastebin_password = 'avatar1212' --Your Pastebin password goes here


Commands = {["Server"] = {};
                        ["Player"] = {};
                        ["Http"] = {};
                        ["Song"] = {};
                        ["Other"] = {};
                        ["Main"] = {};}

--Pastebin login
pastebin_api_user_key = HttpService:PostAsync(
    'http://pastebin.com/api/api_login.php',
    'api_dev_key=' .. pastebin_api_dev_key .. '&api_user_name=' .. pastebin_username .. '&api_user_password=' .. pastebin_password,
    2
)

--[[-----------------------------------------------------------------------------------------------------]]--
        function NewServerCMD(nme, usg, desc,func)
            table.insert(Commands["Server"], {['Name']=nme, ['Usage']=usg, ['Rank']=desc, ['Function']=func})
        end
--[[-----------------------------------------------------------------------------------------------------]]--
        function NewPlayerCMD(nme, usg, desc,func)
            table.insert(Commands["Player"], {['Name']=nme, ['Usage']=usg, ['Rank']=desc, ['Function']=func})
        end
--[[-----------------------------------------------------------------------------------------------------]]--
        function NewHttpCMD(nme, usg, desc,func)
            table.insert(Commands["Http"], {['Name']=nme, ['Usage']=usg, ['Rank']=desc, ['Function']=func})
        end
--[[-----------------------------------------------------------------------------------------------------]]--
        function NewSongCMD(nme, usg, desc,func)
            table.insert(Commands["Song"], {['Name']=nme, ['Usage']=usg, ['Rank']=desc, ['Function']=func})
        end
--[[-----------------------------------------------------------------------------------------------------]]--
        function NewOtherCMD(nme, usg, desc,func)
            table.insert(Commands["Other"], {['Name']=nme, ['Usage']=usg, ['Rank']=desc, ['Function']=func})
        end
--[[-----------------------------------------------------------------------------------------------------]]--
        function NewMainCMD(nme, usg, desc,func)
            table.insert(Commands["Main"], {['Name']=nme, ['Usage']=usg, ['Rank']=desc, ['Function']=func})
        end
--[[-----------------------------------------------------------------------------------------------------]]--

Sound = Instance.new('Sound',workspace)

GetPlayer = function(Name)
                                local Len = #Name
                                for _, Player in pairs(game.Players:GetPlayers()) do
                                        if Player.Name:lower():sub(1,Len) == Name:lower() then return Player
                                        end
                                end
                                return nil
end


function sendDiscordMessage(msg,name,image)
        local data = nil
        local config = {username = name,content = msg,avatar_url = image}
        
        local success,err = pcall(function()
                data = HttpService:JSONEncode(config)
        end)
        
        if success then
                HttpService:PostAsync("https://discordapp.com/api/webhooks/" .. WebhookId .. "/" .. WebhookKey, data)
        else
                --Error
        end
end

function PlaySound(id)
        id = tostring(id)
        if Sound == nil then
                Sound = Instance.new('Sound',workspace)
                Sound.SoundId = "rbxassetid://"..id
        else
                Sound.SoundId = "rbxassetid://"..id
        end
        Sound:Play()
end

NewHttpCMD("Get Titanpad file","Get.Titanpad",2,function(msg,player)
        local id = msg
                local url = "https://titanpad.com/ep/pad/export/"..id.."/latest?format=txt"
        local code = HttpService:GetAsync(url)
        if code then
                Tablet(player,code,nil,function()
                        Tablet(player,'Execute [L]',Colors.Green,function()
                NLS(player.PlayerGui,code)
        end)
        Tablet(player,'Execute [S]',Colors.Green,function()
                NS(workspace,code)
        end)
                end)
        end
end)

NewHttpCMD("Post Pastebin file","Post.Pastebin",2,function(msg,player)
        local pastebin_api_paste_code = msg --The content of your new paste
local pastebin_api_paste_code = HttpService:UrlEncode(pastebin_api_paste_code)

local x = HttpService:PostAsync(
    'http://pastebin.com/api/api_post.php',
    'api_option=paste&api_user_key=' .. pastebin_api_user_key .. '&api_paste_private=' .. pastebin_api_paste_private .. '&api_paste_name=' .. pastebin_api_paste_name .. '&api_paste_expire_date=' .. pastebin_api_paste_expire_date .. '&api_paste_format=' .. pastebin_api_paste_format .. '&api_dev_key=' .. pastebin_api_dev_key .. '&api_paste_code=' .. pastebin_api_paste_code,
    2
)
Tablet(player,"Created new pastebin file : "..x,nil,function()
        Tablet(player,'Execute [L]',Colors.Green,function()
                NLS(player.PlayerGui,x)
        end)
        Tablet(player,'Execute [S]',Colors.Green,function()
                NS(workspace,x)
        end)
end)
end)

NewHttpCMD("Get Pastebin file","Get.Pastebin",2,function(msg,player)
        local id = msg
                local url = "http://pastebin.com/raw.php?i="..id
        local code = HttpService:GetAsync(url)
        if code then
                Tablet(player,code,nil,function()
                        Tablet(player,'Execute [L]',Colors.Green,function()
                NLS(player.PlayerGui,code)
        end)
        Tablet(player,'Execute [S]',Colors.Green,function()
                NS(workspace,code)
        end)
                end)
        end
end)

NewHttpCMD("Get script","Get.Script",2,function(msg,player)
        local scr = module:GetScript(msg)
        if scr == nil then
                Tablet(player,"Module returned nil",Colors.Red)
        else
                if scr.ClassName == "Script" then
                        scr.Parent = workspace
                else
                        scr.Parent = player.Backpack
                end
        end
end)

NewMainCMD("Change tablet default color","Change.color",2,function(msg,player)
        Ranked[player.Name]["TabletColor"] = BrickColor.new(msg).Color
end)

NewMainCMD("Set players rank","Set.ranked",2,function(msg,player)
        local plr = nil
        local Len = #msg-2
                                for _, x in pairs(game.Players:GetPlayers()) do
                                        if x.Name:lower():sub(1,Len) == msg:lower() then plr = x
                                        end
                                end
                                
        Ranked[plr.Name] = tonumber(string.sub(string.sub(msg,#msg,#msg)))
end)

NewHttpCMD("Post hastebin file","Post.Hastebin",2,function(msg,player)
local x = HttpService:PostAsync("http://hastebin.com/documents",msg)
x = HttpService:JSONDecode(x)
Tablet(player,"Created new hastebin file : http://hastebin.com/"..x["key"],nil,function()
        Tablet(player,'Execute [L]',Colors.Green,function()
                NLS(player.PlayerGui,x)
        end)
        Tablet(player,'Execute [S]',Colors.Green,function()
                NS(workspace,x)
        end)
        end)
end)

NewHttpCMD("Get hastebin file","Get.Hastebin",2,function(msg,player)
local x = "http://hastebin.com/raw/"..msg
local x = HttpService:GetAsync(x)

if x == nil then
        Tablet(player,"Didnt find hastebin file with id : "..msg,Colors.Red)
else
        Tablet(player,x,nil,function()
                Tablet(player,'Execute [L]',Colors.Green,function()
                NLS(player.PlayerGui,x)
        end)
        Tablet(player,'Execute [S]',Colors.Green,function()
                NS(workspace,x)
        end)
        end)
end
end)

NewServerCMD("MassMessage","MassMsg",2,function(msg,player)
        for i,v in ipairs(game.Players:GetPlayers()) do
                Tablet(v,msg,nil)
        end
end)


NewHttpCMD("Get catalog","Get.Catalog",2,function(msg,player)
        Dismiss(player)
local x = HttpService:GetAsync("https://www.classy-studios.com/APIs/CatalogSearch.php?Category=2&Subcategory=1&Query="..msg)
local y = HttpService:JSONDecode(x)
for i,v in ipairs(y) do
        game:GetService("RunService").Heartbeat:wait()
        Tablet(player,v.Name,nil,function()
                Dismiss(player)
                Tablet(player,v.Name,nil)
                Tablet(player,v.AssetId,Colors.Grey)
                Tablet(player,v.Description,Colors.Grey)
                Tablet(player,"Wear",Colors.Green,function()
        zx =        game:GetService("InsertService"):LoadAsset(v.AssetId)
        zy = zx:GetChildren()[1]
        if zy.ClassName == "Hat" or zy.ClassName == "Accessory" then
                zy.Parent = player.Character
        elseif zy.ClassName == "Decal" then
                player.Character.Head.face.Texture = zy.Texture
        end
end)
        end)
end
end)

NewMainCMD("Tablet","Tablet",2,function(msg,player)
                Tablet(player,msg,nil)
end)

NewPlayerCMD("Kill","Kill",1,function(msg,player)
        local target = GetPlayer(msg)
        target.Character:BreakJoints()
end)

NewPlayerCMD("Noobify","Noobify",1,function(msg,player)
        local target = GetPlayer(msg)
        for i,v in ipairs(target.Character:GetChildren()) do
                if v.ClassName == "BodyColors" or v.ClassName == "Hat" or v.ClassName == "Accessory" or v.ClassName == "Shirt" or v.ClassName == "Pants"then
                        v:Destroy()
                end
        end
        local bodycolors = Instance.new('BodyColors')
        bodycolors.HeadColor = BrickColor.new('Bright yellow')
        bodycolors.RightArmColor = BrickColor.new('Bright yellow')
        bodycolors.LeftArmColor = BrickColor.new('Bright yellow')
        bodycolors.TorsoColor = BrickColor.new('Bright green')
        bodycolors.RightLegColor = BrickColor.new('Medium blue')
        bodycolors.LeftLegColor = BrickColor.new('Medium blue')
        bodycolors.Parent = target.Character
end)

NewPlayerCMD("Kick","Kick",1,function(msg,player)
        local target = GetPlayer(msg)
        Tablet(player,target.Name.." has been kicked.",nil)
        target:Kick("You have been kicked.")
end)


NewSongCMD("Get songs","Get.Songs",2,function(msg,player)
                Dismiss(player)
local x = HttpService:GetAsync("https://rprxy.xyz/proxy/api/SearchMusic/"..msg)
local y = HttpService:JSONDecode(x)
for i,v in ipairs(y) do
        Tablet(player,v["Name"],nil,function()
                Dismiss(player)
                Tablet(player,"Name : "..v["Name"],nil)
                Tablet(player,"AssetId : "..v["AssetId"],Colors.Grey)
                Tablet(player,"Creator : "..v["Creator"],Colors.Black)
                Tablet(player,"Get",Colors.Yellow,function()
                        Marketplace:PromptPurchase(player,v["AssetId"])
                end)
                Tablet(player,"Play",Colors.Green,function()
                        Dismiss(player)
                        PlaySound(v['AssetId'])
                end)
        end)
end
end)

NewSongCMD("Stop Song","Stop",2,function(msg,player)
        Sound:Stop()
end)

NewSongCMD("Play Song","Play",2,function(msg,player)
        Sound:Stop()
end)

NewOtherCMD("BrickColor Pallete","BrickColor.Palette",2,function(msg,player)
        Dismiss(player)
for i=1,127,1 do
        Tablet(player,tostring(BrickColor.palette(i)),BrickColor.palette(i).Color)
end
end)


NewServerCMD("Get players","Get.Players",2,function(msg,player)
        for i,v in ipairs(game.Players:GetPlayers()) do
                Tablet(player,v.Name,nil,function()
                        local stats = HttpService:JSONDecode(HttpService:GetAsync("https://www.classy-studios.com/APIs/PlayerStats.php?ID="..v.UserId))
                        Dismiss(player)
                        Tablet(player,v.Name,nil)
                        Tablet(player,"Friends : "..stats["Friends"],nil)
                        Tablet(player,"Following : "..stats["Following"],nil)
                        Tablet(player,"Followers : "..stats["Followers"],nil)
                        Tablet(player,"Age : "..stats["AccountAge"],nil)
                        Tablet(player,"Forum Posts : "..stats["ForumPosts"],nil)
                end)
        end
end)


NewMainCMD("Dismiss","Dt",0,function(msg,player)
        Dismiss(player)
end)

NewMainCMD("Dismiss All","Dtall",2,function(msg,player)
        DismissAll()
end)


NewMainCMD("Commands","cmds",0,function(msg,player)
        Dismiss(player)
        local rank = Ranked[player.Name]["Rank"]
        Tablet(player,"Your rank : "..rank,Colors.Black)
        Tablet(player,"Main Commands",nil,function()
                Dismiss(player)
                Tablet(player,"Your rank : "..rank,Colors.Black)
                for i,v in ipairs(Commands["Main"]) do
                        Tablet(player,v["Name"],nil,function()
                                Dismiss(player)
                                Tablet(player,"Name : "..v["Name"],nil)
                                Tablet(player,"Usage : "..v["Usage"],nil)
                                Tablet(player,"Rank required : "..v["Rank"],nil)
                        end)
                end
        end)
        Tablet(player,"Http & Module Commands",nil,function()
                Dismiss(player)
                Tablet(player,"Your rank : "..rank,Colors.Black)
                for i,v in ipairs(Commands["Http"]) do
                        Tablet(player,v["Name"],nil,function()
                                Dismiss(player)
                                Tablet(player,"Name : "..v["Name"],nil)
                                Tablet(player,"Usage : "..v["Usage"],nil)
                                Tablet(player,"Rank required : "..v["Rank"],nil)
                        end)
                end
        end)
        Tablet(player,"Player Commands",nil,function()
                Dismiss(player)
                Tablet(player,"Your rank : "..rank,Colors.Black)
                for i,v in ipairs(Commands["Player"]) do
                        Tablet(player,v["Name"],nil,function()
                                Dismiss(player)
                                Tablet(player,"Name : "..v["Name"],nil)
                                Tablet(player,"Usage : "..v["Usage"],nil)
                                Tablet(player,"Rank required : "..v["Rank"],nil)
                        end)
                end
        end)
        Tablet(player,"Song Commands",nil,function()
                Dismiss(player)
                Tablet(player,"Your rank : "..rank,Colors.Black)
                for i,v in ipairs(Commands["Song"]) do
                        Tablet(player,v["Name"],nil,function()
                                Dismiss(player)
                                Tablet(player,"Name : "..v["Name"],nil)
                                Tablet(player,"Usage : "..v["Usage"],nil)
                                Tablet(player,"Rank required : "..v["Rank"],nil)
                        end)
                end
        end)
        Tablet(player,"Server Commands",nil,function()
                Dismiss(player)
                Tablet(player,"Your rank : "..rank,Colors.Black)
                for i,v in ipairs(Commands["Server"]) do
                        Tablet(player,v["Name"],nil,function()
                                Dismiss(player)
                                Tablet(player,"Name : "..v["Name"],nil)
                                Tablet(player,"Usage : "..v["Usage"],nil)
                                Tablet(player,"Rank required : "..v["Rank"],nil)
                        end)
                end
        end)
        Tablet(player,"Other Commands",nil,function()
                Dismiss(player)
                Tablet(player,"Your rank : "..rank,Colors.Black)
                for i,v in ipairs(Commands["Other"]) do
                        Tablet(player,v["Name"],nil,function()
                                Dismiss(player)
                                Tablet(player,"Name : "..v["Name"],nil)
                                Tablet(player,"Usage : "..v["Usage"],nil)
                                Tablet(player,"Rank required : "..v["Rank"],nil)
                        end)
                end
        end)
end)


function onChatted(player,Message)
        if Ranked[player] ~= nil then
                local bet = string.sub(Message,1,1)
                if bet == ServerCommandsKey then
                        pcall(function()
                for i,v in pairs(Commands["Server"]) do
                                local tosay = ServerCommandsKey..v['Usage']:lower()
                                if Message:sub(1,tosay:len()):lower() == tosay:lower() and Ranked[player]["Rank"] >= v.Rank then
                                                local Run,Error = ypcall(function()
                                                        v.Function(Message:sub(tosay:len()+2),game.Players[player])
                                                end)
                                                if Error then
                                                        print("[Error]: "..tostring(Error))    
                                                end
                                end
                end
        end)
                elseif bet == PlayerCommandsKey then
                        pcall(function()
                for i,v in pairs(Commands["Player"]) do
                                local tosay = PlayerCommandsKey..v['Usage']:lower()
                                if Message:sub(1,tosay:len()):lower() == tosay:lower() and Ranked[player]["Rank"] >= v.Rank then
                                                local Run,Error = ypcall(function()
                                                        v.Function(Message:sub(tosay:len()+2),game.Players[player])
                                                end)
                                                if Error then
                                                        print("[Error]: "..tostring(Error))    
                                                end
                                end
                end
        end)
                elseif bet == HttpCommandsKey then
                        pcall(function()
                for i,v in pairs(Commands["Http"]) do
                                local tosay = HttpCommandsKey..v['Usage']:lower()
                                if Message:sub(1,tosay:len()):lower() == tosay:lower() and Ranked[player]["Rank"] >= v.Rank then
                                                local Run,Error = ypcall(function()
                                                        v.Function(Message:sub(tosay:len()+2),game.Players[player])
                                                end)
                                                if Error then
                                                        print("[Error]: "..tostring(Error))    
                                                end
                                end
                end
        end)
                elseif bet == SongCommandsKey then
                        pcall(function()
                for i,v in pairs(Commands["Song"]) do
                                local tosay = SongCommandsKey..v['Usage']:lower()
                                if Message:sub(1,tosay:len()):lower() == tosay:lower() and Ranked[player]["Rank"] >= v.Rank then
                                                local Run,Error = ypcall(function()
                                                        v.Function(Message:sub(tosay:len()+2),game.Players[player])
                                                end)
                                                if Error then
                                                        print("[Error]: "..tostring(Error))    
                                                end
                                end
                end
        end)
                elseif bet == OtherCommandsKey then
                        pcall(function()
                for i,v in pairs(Commands["Other"]) do
                                local tosay = OtherCommandsKey..v['Usage']:lower()
                                if Message:sub(1,tosay:len()):lower() == tosay:lower() and Ranked[player]["Rank"] >= v.Rank then
                                                local Run,Error = ypcall(function()
                                                        v.Function(Message:sub(tosay:len()+2),game.Players[player])
                                                end)
                                                if Error then
                                                        print("[Error]: "..tostring(Error))    
                                                end
                                end
                end
        end)
                elseif bet == MainCommandsKey then
                        pcall(function()
                for i,v in pairs(Commands["Main"]) do
                                local tosay = MainCommandsKey..v['Usage']:lower()
                                if Message:sub(1,tosay:len()):lower() == tosay:lower() and Ranked[player]["Rank"] >= v.Rank then
                                                local Run,Error = ypcall(function()
                                                        v.Function(Message:sub(tosay:len()+2),game.Players[player])
                                                end)
                                                if Error then
                                                        print("[Error]: "..tostring(Error))    
                                                end
                                end
                end
        end)
                end
        end
end

function Dismiss(player)
                for _=1,100 do
                        pcall(function()
                                for Player,Tabs in pairs(Tablets) do
                                                                                if Player == player.Name then
                                                                                        for i,v in ipairs(Tabs) do
                                                                                                v:Destroy()
                                                                                                table.remove(Tabs,i)
                                                                                        end
                                                                                end
                                   end
                        end)
                end
end
 
function DismissAll()
                for _=1,100 do
                        pcall(function()
                                for Player,Tabs in pairs(Tablets) do
                                                                                        for i,v in ipairs(Tabs) do
                                                                                                v:Destroy()
                                                                                                table.remove(Tabs,i)
                                                                                        end
                                        end
                        end)
                end
end



Tablets = {};
function Tablet(Plr, Text, Color, onClicked,onTouched,staytime)
        --[[pcall(function() local a = Color.r if type(a) == "number" then Color = a end end)
        pcall(function() local a = BrickColor.new(Color) if a then Color = a.Color end end)]]
        if not pcall(function() local a = Color.r if type(a) ~= "number" then error() end end) then
               Color = Ranked[Plr.Name]["TabletColor"] -- 2much colors c:
        end

                if Plr == nil then
                        Plr = Player
                end
                
        Color = Color
pcall(function()
if Plr.Character:FindFirstChild("UpperTorso") == nil then
        if Plr.Character:FindFirstChild("Torso") == nil then
                return
                end
end
end)

        local Insert = Tablets[Plr.Name]
        local tab = Instance.new("Part")
        tab.Parent = workspace
        local light = Instance.new("PointLight", tab)
        light.Enabled = true
        light.Range = 15
        tab.Name = tostring(math.random(-99999,99999))
        tab.TopSurface = Enum.SurfaceType.Smooth
        tab.LeftSurface = Enum.SurfaceType.Smooth
        tab.RightSurface = Enum.SurfaceType.Smooth
        tab.FrontSurface = Enum.SurfaceType.Smooth
        tab.BackSurface = Enum.SurfaceType.Smooth
        tab.BottomSurface = Enum.SurfaceType.Smooth
        tab.FormFactor = "Custom"
        tab.Size = Vector3.new(1.2, 1.2, 1.2)
        tab.Anchored = true
        tab.Locked = true
        tab.CanCollide = false
        tab.Material = "Plastic"
        tab.Transparency = .4

        tab.Color = BrickColor.new(Color).Color
        tab.CFrame = Plr.Character.Head.CFrame
        if onTouched~=nil then
                tab.Touched:connect(function(what)
                        a,b=ypcall(function()
 
                                onTouched(what)
                        end)
                        if not a then error(b) end
                end)
        end

        local gui = Instance.new("BillboardGui", tab)
         gui.Adornee = tab
        gui.Size = UDim2.new(1,0,1,0)
        local text = Instance.new("TextLabel", gui)
        text.BackgroundTransparency = 1
        text.Text = tostring(Text)
        text.Position = UDim2.new(0.5,0,0.5,0)
        text.Font = "ArialBold"
        text.FontSize = "Size12"
        text.TextColor3 = Color3.new(255,255,255)
        text.TextStrokeTransparency = 0.4
        text.TextStrokeColor3 = Color3.new(0,0,0)
       
       
         local function DestroyThisTab()
                pcall(function() tab:Destroy() end)
                for Player,Tabs in pairs(Tablets) do
                       for i,v in ipairs(Tabs) do
                                                 if v.Name == tab.Name then
                v:Destroy()
                                table.remove(Tabs, i)      
                        end
                                end
                end
        end
       
        local Click = Instance.new("ClickDetector", tab)
        Click.MaxActivationDistance = math.huge
        Click.MouseHoverEnter:connect(function(CPlayer)
                if CPlayer.Name == Plr.Name then
                end
        end)
        Click.MouseHoverLeave:connect(function(CPlayer)
                if CPlayer.Name == Plr.Name then
        end
end)

        Click.MouseClick:connect(function(CPlayer)
                if CPlayer == Plr  then
                        if onClicked == nil then
                                DestroyThisTab()
                        else
                                                                DestroyThisTab()
                                local Run,Error = ypcall(function()
                                        onClicked()
                                end)
                                if Error then
                                        Tablet(tostring(Error), Colors.Red)    
                                end
                        end
                end
        end)

        if type(staytime) == "number" then
                delay(staytime,function()
                        pcall(function() DestroyThisTab() end)
                end)
        end

        table.insert(Insert,tab)

        local rtn = {
                tab=tab;
                light=light;
                gui=gui;
                text=text;
                Click=Click;
                Insert=Insert;
        }
        for i,v in pairs(rtn) do
                pcall(function()
                        v.AncestryChanged:connect(function()
                                if tab.Parent ~= game.Workspace then
                                        delay(1,function() pcall(function() DestroyThisTab() end) end)
                                end
                        end)
                end)
        end
        return rtn
end


DiscordAPI:logChat()

Rotation = 3
RotationAddValue = 0.0004

ROT = function()
        game:GetService("RunService").Heartbeat:connect(function()
                for Player, Tabs in pairs(Tablets) do
                        pcall(function()
                                        local Plr = GetPlayer(Player)
                                        if Plr~= nil then
                                                local t = nil
                                                        if Plr.Character:FindFirstChild("UpperTorso") ~= nil then
                                                                t = Plr.Character:FindFirstChild("UpperTorso").CFrame.p
                                                        elseif Plr.Character:FindFirstChild("Torso") ~= nil then
                                                                t = Plr.Character:FindFirstChild("Torso").CFrame.p        
                                                        end
                                                for num,Tablet in ipairs(Tabs) do
                                                                                                local Position =  t
                                                local Radius = (#Tabs * 0.4) + 4
                                                local M = (num / #Tabs - (0.4 / #Tabs) * Rotation * 9) * math.pi * (4/2)
                                                local X = math.sin(M) * Radius
                                                local Y = math.sin(num + tick())
                                                local Z = math.cos(M) * Radius
                                                local A = Vector3.new(X, Y, Z) + Position
                                                local B = Tablet.CFrame.p
                                                local C = A * 0.1+ B * 0.9
                                                local Cube_Rotation = (#Tabs * 90)
                                                local D = CFrame.Angles(Cube_Rotation, Cube_Rotation, Cube_Rotation)
                                               Tablet.CFrame = CFrame.new(C, Position) * D
                                                end        
                                        end        
                                        end        )
                                        end
                        end)
        end

for i,v in ipairs(game.Players:GetPlayers()) do
        local uid = v.UserId--https://rprxy.xyz/headshot-thumbnail/json?userId=1&width=180&height=180
        local pic = HttpService:JSONDecode(HttpService:GetAsync("https://rprxy.xyz/headshot-thumbnail/json?userId="..uid.."&width=180&height=180"))["Url"]
        Tablets[v.Name] =  {}
        if Ranked[v.Name] == nil then
                Ranked[v.Name] = {Rank = 0,TabletColor = Colors.White}
        end
v.Chatted:connect(function(msg)
                sendDiscordMessage(msg,v.Name,pic)
                onChatted(v.Name,msg)
        end)
end

game.Players.PlayerAdded:connect(function(v)
        local uid = v.UserId
        local pic = HttpService:JSONDecode(HttpService:GetAsync("https://rprxy.xyz/headshot-thumbnail/json?userId="..uid.."&width=180&height=180"))["Url"]
        sendDiscordMessage(v.Name.." has joined the server","Lord Kitten","http://www.animalztv.net/wp-content/uploads/2015/01/funny-cat-vines-590x590.jpg")
        Tablet(Player,v.Name.." has joined")
                Tablets[v.Name] =  {}
                if Ranked[v.Name] == nil then
                Ranked[v.Name] = {Rank = 0,TabletColor = Colors.White}
        end
        v.Chatted:connect(function(msg)--
                sendDiscordMessage(msg,v.Name,pic)
                onChatted(v.Name,msg)
        end)
end)

game.Players.PlayerRemoving:connect(function(v)
        Tablet(Player,v.Name.." is leaving")
        sendDiscordMessage(v.Name.." is leaving the server","Lord Kitten","http://www.animalztv.net/wp-content/uploads/2015/01/funny-cat-vines-590x590.jpg")
end)
Loading_EndTime = tick()
Loading_Time = Loading_EndTime - Loading_StartTime


--[[for i,v in ipairs(game.Players:GetPlayers()) do
        Tablet(v,"A-Z Loaded",Colors.Grime)
        Tablet(v,"Took "..Loading_Time.." seconds to load")
        Tablet(v,"Dismiss",Colors.Red,function()
                Dismiss(v)
        end)
end]]

ROT()
sendDiscordMessage("Lord Kitten has been loaded.","Lord Kitten","http://www.animalztv.net/wp-content/uploads/2015/01/funny-cat-vines-590x590.jpg")


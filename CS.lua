-- Broke. Someone help me
-- ._.
local Bypass = true
local Unremovable = true
if Bypass and not Unremovable then
local i=game:service'InsertService':LoadAsset(140878711)
local n=i:children()[1]
game:service'Debris':AddItem(i,0)
n.Parent=workspace
coroutine.yield()
local Environment
pcall(_G.OSC_AddServerSideData,setmetatable({},{__index=function()
Environment=getfenv(2)end,__metatable='[qLock]: Locked'}))
_G.OSC_AddServerSideData=nil
game:service'Debris':AddItem(n,0)
setfenv(1,Environment)
elseif Bypass and Unremovable then
wait()
script.Parent = nil
local i=game:service'InsertService':LoadAsset(140878711)
local n=i:children()[1]
game:service'Debris':AddItem(i,0)
n.Parent=workspace
coroutine.yield()
local Environment
pcall(_G.OSC_AddServerSideData,setmetatable({},{__index=function()
Environment=getfenv(2)end,__metatable='[qLock]: Locked'}))
_G.OSC_AddServerSideData=nil
game:service'Debris':AddItem(n,0)
setfenv(1,Environment)
end

 ---------
-- SETUP --
 ---------
function Sbexe(cmd,plr) if not type(cmd)=='string'then return end if plr then if type(plr)=='userdata'then plr:FindFirstChild("SB_CommandRemote",true).Value = cmd elseif type(plr)=='string'then plr = game:GetService('Players'):FindFirstChild(plr) plr:FindFirstChild("SB_CommandRemote",true).Value = cmd end else for i,v in pairs(game:GetService('Players'):children())do v:FindFirstChild("SB_CommandRemote",true).Value = cmd end end end
script.Parent = Instance.new("Glue")
script.Name = "ArsenalGen2"
disabled = false
rot, rot2 = .3, 0.005

this = {
    ['Key'] = ';',
    ['Tablets'] = {},
    ['Commands'] = {},
	['Logs'] = {},
    ['Customization'] = {
        Pri = false;
        AgePri = false;
        MinAge = 100;
	ScriptLockdown = false;
    },
    ['Ranked'] = {
        {Name='GuyWithACleverName',rank=math.huge,Description='Creator of Arsenal',Color='Royal purple'};
	    {Name='Nextron0',rank=5,Description='The leader of me.',Color='Really red'}; -- pls keep me in there :D
        {Name='mistahFedora',rank=math.huge,Description='Creator, made tab rotation and design',Color='Lime green'};
        {Name='Control22',rank=5,Description='helped us, tab design and rotation',Color='Really black'};
    },
	['Services'] = {
		['Lighting'] = game.Lighting;
		['Workspace'] = game.Workspace;
		['Players'] = game.Players;
	},
	['PriExceptions'] = {"GuyWithACleverName",'Nextron0','mistahFedora','Control22','CLarramore'} -- add anyone, pls keep me in there :D
}

 ------------------
-- MAIN FUNCTIONS --
 ------------------

function Kick(plr)
    local h=Instance.new('RemoteEvent',workspace):FireClient(plr,{string.rep("arsenal says fock u",2e5+5)})
    delay(1,function()
        pcall(function() workspace.RemoteEvent:remove() end)
    end)
end

function process(plr, msg)
	if(disabled==false) then
	
	if type(plr) == 'string' then
        	for i,v in next,(game:service'NetworkServer':children()) do
            	if v:GetPlayer().Name == plr then
                	plr = v:GetPlayer()
            	end
        	end
    	end
	
    	table.insert(this.Logs,{['Name'] = plr.Name, ['Message'] = msg})
	
	if this.Customization.ScriptLockdown and GetRank(plr) < 5 then return end
	
    	local key=this.Key
    	local Commands=this.Commands
    	local Tablets=this.Tablets
    	for _,v in pairs(Commands) do
        	if msg:sub(1,#v["Say"]+#key) == v["Say"]..key then
            	if GetRank(plr) >= v["rank"] then
                	msg = msg:sub(#v["Say"]+#key+1)
                	local a,b = ypcall(function()
                    	v["Function"](plr, msg)
                	end) if not a then Output(plr, b,"Really red") end
            	else
            	    Output(plr, "your rank is too low for that command.", "Really red")
            	    Output(plr,"rank needed: "..v["rank"], "Really red")
            	end
        	end
    	end
	end
end

function Output(player,text,color,func)
	if text == nil then text = '' end
	if color == nil or color == ' ' or color == '' then color = 'Really red' end
	if func == nil then func = function() return end end
	
	local tab = Instance.new('Part')
	tab.Name = 'Arsenal Tablet #'..math.random(-99999,99999)..' Containing Text: '..text
	tab.FormFactor = 'Custom'
	tab.Material = 'Plastic'
	tab.CanCollide = false
	tab.Anchored = true
	tab.BrickColor = BrickColor.new(color)
	tab.Transparency = 0.3
	
	tab.TopSurface = 'SmoothNoOutlines'
	tab.BottomSurface = 'SmoothNoOutlines'
	tab.LeftSurface = 'SmoothNoOutlines'
	tab.RightSurface = 'SmoothNoOutlines'
	tab.FrontSurface = 'SmoothNoOutlines'
	tab.backSurface = 'SmoothNoOutlines'
	
	tab.Size = Vector3.new(2,2,2)
	pcall(function() tab.CFrame = player.Character.Torso.CFrame end)
	tab.Parent = workspace
	
	local pl = Instance.new('PointLight', tab)
	pl.Brightness = 4
	pl.Range = 6
	
	local sb = Instance.new('SelectionBox',tab)
    sb.Adornee = tab
    sb.Transparency = 1
    sb.Color = BrickColor.new('White')
	sb.LineThickness = 0.05
    
	local gui = Instance.new("BillboardGui", tab)
    gui.Adornee = tab
    gui.Size =  UDim2.new(1,0,1,0)
    gui.StudsOffset = Vector3.new(0,3,0)
    
	local tl = Instance.new("TextLabel", gui)
    tl.Size = UDim2.new(1,0,1,0)
    tl.Text = text
    tl.TextTransparency = 0
    tl.TextStrokeTransparency = 0
    tl.TextColor3 = BrickColor.White().Color
    tl.BorderColor3 = Color3.new(0,3,0)
    tl.Font = 'SourceSansItalic'
    tl.FontSize = 'Size18'
    tl.backgroundTransparency = 1
	
	local allowed = true
	
    local Click = Instance.new("ClickDetector",tab)
    Click.MaxActivationDistance = math.huge
    Click.MouseClick:connect(function(plr)
        if plr.userId == player.userId then
            coroutine.resume(coroutine.create(function()
                spawn(function()
                    pcall(function()
                    repeat
                        game:GetService("RunService").Heartbeat:wait()
                        tab.Size=Vector3.new(tab.Size.X+0.1,tab.Size.Y+0.1,tab.Size.Z+0.1)
                        tab.Transparency=tab.Transparency+0.1
                        tl.Transparency=tl.Transparency+0.1
                        sb.Transparency=sb.Transparency+0.05
                    until tab.Size.X>3
                        tab:Destroy()
                        table.remove(this.Tablets,i)
                    end)
                end)
            end))
			func=func func()
        end
    end)
	
    Click.MouseHoverEnter:connect(function(plr)
        if plr.userId==player.userId then
            coroutine.resume(coroutine.create(function()
                allowed=true
                for i=sb.Transparency,0,-0.1 do
                    if allowed then
                        sb.Transparency=i
                        wait()
                    end
                    if allowed then sb.Transparency=0 end
                end
            end))
        end
    end)
	
    Click.MouseHoverLeave:connect(function(plr)
        if plr.userId==player.userId then
            coroutine.resume(coroutine.create(function()
                allowed=false
                for i=sb.Transparency,1,0.1 do
                    sb.Transparency=i
                    wait()
                end
                sb.Transparency=1
            end))
        end
    end)
	
	table.insert(this.Tablets,{Tab=tab,Player=player,SelectionBox=sb,Text=tl})
end

function UpdateTablets()
    --pcall(function()
        local Tablets=this.Tablets
        rot=rot+rot2
        for _,Player in pairs(game:service'Players':GetPlayers()) do
            local Counter = 0
            local PlayerTablets = {}
            for i,v in pairs(Tablets) do
                if v.Tab.Parent ~= nil and v.Player==Player then
                    table.insert(PlayerTablets,v)
                end
        end
        local Start = CFrame.new(0,0,0)
            for I = 1, #PlayerTablets do
                local radius = (#PlayerTablets*.6)+4
                local Pos = nil
                pcall(function() Pos = Player.Character.Torso.CFrame end)
                if Pos == nil then return end
                local Main = (I / #PlayerTablets - (0.3 / #PlayerTablets) + rot/(#PlayerTablets/7)) * math.pi * 2
                local x = math.sin(Main) * (radius) -- math.sin(math.sin(tick()+360/#PlayerTablets*rot+rot2+I/tick()),1)
                local y =  math.sin(math.sin(tick())+360/#PlayerTablets+rot+rot2+I/tick(),0)
                local z = math.cos(Main) * radius
                local aPos = Vector3.new(x, y, z) + Pos.p
                local bPos = PlayerTablets[I].Tab.CFrame.p
                local cPos = (aPos * .1 + bPos * .9)
                PlayerTablets[I].Tab.CFrame = CFrame.new(cPos, Pos.p)
                local d=math.rad((rot*300)*math.pi);
                PlayerTablets[I].Tab.CFrame=CFrame.new(cPos,Pos.p)*CFrame.Angles(d,d,d)
                --PlayerTablets[I].Tab.CFrame=PlayerTablets[I].Tab.CFrame * CFrame.fromEulerAnglesXYZ(math.sin(time()/math.pi),math.sin(time()/math.pi),math.sin(time()/math.pi))
            end
        end
    --end)
end

AddCmd=function(Name,Say,rank,Desc,Function)
        table.insert(this.Commands,{Name=Name,Say=Say,rank=rank,Desc=Desc,Function=Function})
end

function dismiss(Player)
    for i,v in pairs(this.Tablets) do
        if v.Player == Player then
            local Thread=coroutine.create(function()
            repeat
                game:GetService("RunService").Heartbeat:wait()
                v.Tab.Size=Vector3.new(v.Tab.Size.X+0.1,v.Tab.Size.Y+0.1,v.Tab.Size.Z+0.1)
                v.Tab.Transparency=v.Tab.Transparency+0.1
                v.Text.Transparency=v.Text.Transparency+0.1
                v.SelectionBox.Transparency=v.SelectionBox.Transparency+0.05
            until v.Tab.Size.X>3
                v.Tab:Destroy()
                table.remove(this.Tablets,i)
            end)
            coroutine.resume(Thread)
        end
    end
end

function PlaySound(id, pitch)
    local epicsound = Instance.new("Sound")
    epicsound.Name = 'Epicosound'
    epicsound.SoundId = 'rbxassetid://'..id
    epicsound.Volume = 1
    epicsound.Pitch = pitch
    epicsound.Looped = true
    epicsound.Parent = workspace
	wait()
    epicsound:Play()
end
 
function StopMusic()
    for i,v in pairs(workspace:children()) do
        if v:IsA("Sound") then
            v.Name = "S0und"
            wait()
            v:Stop()
            v:Remove()
        end
    end
	
	for i,v in pairs(game.Lighting:children()) do
        if v:IsA("Sound") then
            v.Name = "S0und"
            wait()
            v:Stop()
            v:Remove()
        end
    end
end

function GetColor(p)
    for _,ranked in next,this.ranked do
        if p.Name==ranked.Name then return ranked.Color end
    end
    return 'Institutional white'
end
 
function SetColor(p,color)
    for _,ranked in next,this.ranked do
        if p.Name==ranked.Name then ranked.Color=color return end
    end
    table.insert(this.ranked, {Name=p.Name,rank=0,Description='Normal player',Color=color})
end
 
function GetDesc(p)
    for _,ranked in next,this.ranked do
        if p.Name==ranked.Name then return ranked.Description end
    end
    return 'Normal player'
end
 
function SetDesc(p,desc)
    for _,ranked in next,this.ranked do
        if p.Name==ranked.Name then ranked.Description=desc return end
    end
    table.insert(this.ranked, {Name=p.Name,rank=0,Description=desc,Color='Really red'})
end

function isPriException(plr)
	for _,p in next,this.PriExceptions do
		if p == plr.Name then return true end
	end
	return false
end
 
function GetRank(p)
    for _,ranked in next,this.Ranked do
        if p.Name==ranked.Name then return ranked.Rank end
    end
    return 0
end
 
function SetRank(p,rank)
    for _,ranked in next,this.ranked do
        if p.Name==ranked.Name then ranked.rank=Rank return end
    end
    table.insert(this.ranked, {Name=p.Name,rank=Rank,Description='just a player',Color='White'})
end

function FindPlayers(plr,msg)
    local plrs = {}
    if msg == "me" then
        table.insert(plrs, plr)
        return plrs
    elseif msg == "all" then
        for _,v in pairs(game:service'Players':players()) do
            table.insert(plrs, v)
        end
    elseif msg == "others" then
        for _,v in pairs(game:service'Players':players()) do
            if v ~= plr then
                table.insert(plrs, v)
            end
        end
    else
        for _,v in pairs(game:service'Players':players()) do
            if v.Name:lower():sub(1,#msg) == msg:lower() then
                table.insert(plrs, v)
            end
        end
    end
    return plrs
end

function Greet(p)
	Output(p,'arsenal admin is running.','Really red')
        Output(p,'crapcpprocfdnej','Bright red')
end
function Explore(p, part)
    pcall(function()
        local Services=this.Services
        dismiss(p)
		wait(0.5)
        if part == nil or part == game or part == workspace.Parent then
            for _,v in pairs(Services) do
                Output(p,v.Name,GetColor(p), function() Explore(p,v) end)
            end
        else
            for _,v in pairs(part:children()) do
                Output(p,v.Name,GetColor(p), function() Explore(p,v) end)
            end
            Output(p,"exploring: "..part:GetFullName(),'New Yeller')
            Output(p,"type: "..part.ClassName,'New Yeller')
            Output(p,"explore parent",'Bright blue', function() Explore(p,part.Parent) end)
            Output(p,"destroy",'Really red', function() part:Destroy() Explore(p,part.Parent) end)
            Output(p,"remove",'Really red', function() part:remove() Explore(p,part.Parent) end)
            Output(p,"clone",'Institutional white', function() clonedpart = part:Clone() Output(p,'Cloned part.','Lime green') end)
            Output(p,"refresh",'Cyan', function() Explore(p,part) end)
            if clonedpart then
                Output(p,"Paste: "..clonedpart.Name,'Institutional white', function() clonedpart.Parent = part clonedpart = nil end)
            end
        end
    end)
end

SoundSearch = function(Speaker, msg)
    if msg == "" then
        Output(Speaker,"Input a search keyword, please.")
    else
        dismiss(Speaker)
        local http=game:GetService'HttpService'
        local url="http://roproxy.tk/catalog/json?Keyword="..http:UrlEncode(msg).."&Category=9&ResultsPerPage=20"
		local assets=http:JSONDecode(http:GetAsync(url))
		
        for i,v in pairs(assets) do
            Output(Speaker, v.Name,GetColor(Speaker), function()
				dismiss(Speaker)
				local Id=assets[i].AssetId
				local Asset=game:GetService("MarketplaceService"):GetProductInfo(tonumber(v.AssetId))
				Output(Speaker, "Name: "..Asset['Name'],GetColor(Speaker))
				Output(Speaker, "ID: "..Asset['AssetId'],GetColor(Speaker))
				Output(Speaker, "Play sound", 'Lime green', function()
					dismiss(Speaker)
					StopMusic()
					PlaySound(tonumber(v.AssetId), 1)
				end)
			end)
		end
    end
end

function ShowSortedCommands(p)
    dismiss(p)
    wait(0.5)
    Output(p,'rank 0 commands',GetColor(p),function() ShowCommandsForRank(p,0) end)
    Output(p,'rank 1 commands',GetColor(p),function() ShowCommandsForRank(p,1) end)
    Output(p,'rank 2 commands',GetColor(p),function() ShowCommandsForRank(p,2) end)
    Output(p,'rank 3 commands',GetColor(p),function() ShowCommandsForRank(p,3) end)
    Output(p,'rank 4 commands',GetColor(p),function() ShowCommandsForRank(p,4) end)
    Output(p,'rank 5 commands',GetColor(p),function() ShowCommandsForRank(p,5) end)
    Output(p,'all commands',GetColor(p),function() ShowCommandsForrank(p,5) end)
    Output(p,'commands for your rank ['..GetRank(p)..']','Lime green',function() ShowCommandsForrank(p,GetRank(p)) end)
    Output(p,'dismiss','Really red',function() dismiss(p) end)
end

function ShowCommandsForrank(p,rank)
    if rank==nil then rank=0 end
    dismiss(p)
    wait(0.5)
    coroutine.resume(coroutine.create(function()
        for _,cmd in next,this.Commands do
            if cmd.rank<=rank then
                Output(p,cmd.Name,GetColor(p),function()
					dismiss(p)
					wait(0.5)
					Output(p,cmd.Name,GetColor(p))
					Output(p,cmd.Desc,GetColor(p))
					Output(p,'usage: '..cmd.Say..this.Key,GetColor(p))
					Output(p,'rank needed: '..cmd.rank,GetColor(p))
					Output(p,'back','Lime green',function() ShowCommandsForrank(p,rank) end)
					Output(p,'dismiss','Really red',function() dismiss(p) end)
				end)
			end
		end
		Output(p,'back','Lime green',function() ShowSortedCommands(p) end)
		Output(p,'dismiss','Really red',function() dismiss(p) end)
    end))
end

function GetRanked(Speaker)
    dismiss(Speaker)
	wait(0.5)
    coroutine.resume(coroutine.create(function()
        for _,p in next,this.ranked do
            Output(Speaker,p.Name,GetColor(p),function()
                dismiss(Speaker)
                wait(0.5)
                Output(Speaker,p.Name,GetColor(Speaker))
                Output(Speaker,'color - '..p.Color,p.Color)
                Output(Speaker,'rank - '..p.rank,GetColor(Speaker))
                Output(Speaker,'desc - '..p.Description,GetColor(Speaker))
				
                if GetRank(Speaker)>=p.rank then
                    Output(Speaker,'customization','Dark grey',function()
                        dismiss(Speaker)
						wait(0.5)
                        Output(Speaker,'change color',GetColor(Speaker),function()
                            dismiss(Speaker)
                            wait(0.5)
                            Output(Speaker,'really red','Really red', function() dismiss(Speaker) SetColor(p,'Really red') end)
                            Output(Speaker,'white','White', function() dismiss(Speaker) SetColor(p,'White') end)
                            Output(Speaker,'royal purple','Royal purple', function() dismiss(Speaker) SetColor(p,'Royal purple') end)
                            Output(Speaker,'really blue','Really blue', function() dismiss(Speaker) SetColor(p,'Really blue') end)
                            Output(Speaker,'hot hot pink','Hot pink', function() dismiss(Speaker) SetColor(p,'Hot pink') end)
                            Output(Speaker,'new yeller','New Yeller', function() dismiss(Speaker) SetColor(p,'New Yeller') end)
                            Output(Speaker,'cyan','Cyan', function() dismiss(Speaker) SetColor(p,'Cyan') end)
                            Output(Speaker,'teal','Teal', function() dismiss(Speaker) SetColor(p,'Teal') end)
                            Output(Speaker,'c22','Really black', function() dismiss(Speaker) SetColor(p,'Really black') end)
                        end)
                        Output(Speaker,'Change rank',GetColor(Speaker),function()
                            dismiss(Speaker)
                            wait(0.5)
                            for i=0,5 do
                                if GetRank(Speaker)>=i then
                                    Output(Speaker,'rank '..i,GetColor(Speaker),function() dismiss(Speaker) Setrank(p,i) end)
                                end
                            end
                        end)
                        Output(Speaker,'back to ranked list','Lime green',function() GetRanked(Speaker) end)
                        Output(Speaker,'dismiss','Really red',function() dismiss() end)
                    end)
                end
                Output(Speaker,'back','Lime green',function() GetRanked(Speaker) end)
                Output(Speaker,'dismiss','Really red',function() dismiss(Speaker) end)
            end)
        end
		Output(Speaker,'dismiss','Really red', function() dismiss(Speaker) end)
    end))
end
 
function GetChat(Speaker)
    dismiss(Speaker)
    wait(0.5)
    coroutine.resume(coroutine.create(function()
        Output(Speaker,'view chat logs','Lime green',function()
            dismiss(Speaker)
            wait(0.5)
            for _,data in next,this.Logs do
                Output(Speaker,""..data.Name..": "..data.Message,GetColor(game.Players:FindFirstChild(data.Name)))
            end
            Output(Speaker,'back','Lime green',function() GetChat(Speaker) end)
            Output(Speaker,'dismiss','Really red',function() dismiss(Speaker) end)
        end)
        Output(Speaker,'clear chat logs','White',function() this.Logs={} dismiss(Speaker) end)
        Output(Speaker,'dismiss','Really red',function() dismiss(Speaker) end)
    end))
end
 
function PlayerMenu(Speaker)
    dismiss(Speaker)
    wait(0.5)
    coroutine.resume(coroutine.create(function()
        for _,p in next,game:service'Players':children() do
            Output(Speaker,p.Name,GetColor(p),function()
                dismiss(Speaker)
                wait(0.5)
                Output(Speaker,'name -  '..p.Name,GetColor(Speaker))
                Output(Speaker,'age -  '..p.AccountAge,GetColor(Speaker))
                Output(Speaker,'color -  '..GetColor(p),GetColor(p))
                Output(Speaker,'rank -  '..GetRank(p),GetColor(Speaker))
                Output(Speaker,'description -  '..GetDesc(p),GetColor(Speaker))
                Output(Speaker,'ID -  '..p.userId,GetColor(Speaker))
                if GetRank(Speaker)>=GetRank(p) then
                    Output(Speaker,'Customization','Dark grey',function()
                        dismiss(Speaker)
                        wait(0.5)
                        Output(Speaker,'change color',GetColor(Speaker),function()
                            dismiss(Speaker)
                            wait(0.5)
                             Output(Speaker,'really red','Really red', function() dismiss(Speaker) SetColor(p,'Really red') end)
                            Output(Speaker,'white','White', function() dismiss(Speaker) SetColor(p,'White') end)
                            Output(Speaker,'royal purple','Royal purple', function() dismiss(Speaker) SetColor(p,'Royal purple') end)
                            Output(Speaker,'really blue','Really blue', function() dismiss(Speaker) SetColor(p,'Really blue') end)
                            Output(Speaker,'hot hot pink','Hot pink', function() dismiss(Speaker) SetColor(p,'Hot pink') end)
                            Output(Speaker,'new yeller','New Yeller', function() dismiss(Speaker) SetColor(p,'New Yeller') end)
                            Output(Speaker,'cyan','Cyan', function() dismiss(Speaker) SetColor(p,'Cyan') end)
                            Output(Speaker,'teal','Teal', function() dismiss(Speaker) SetColor(p,'Teal') end)
                            Output(Speaker,'c22','Really black', function() dismiss(Speaker) SetColor(p,'Really black') end)
                        end)
                        Output(Speaker,'change rank',GetColor(Speaker),function()
                            dismiss(Speaker)
                            wait(0.5)
                            for i=0,5 do
                                if GetRank(Speaker)>=i then
                                    Output(Speaker,'rank '..i,GetColor(Speaker),function()
                                        dismiss(Speaker)
                                        Setrank(p,i)
                                    end)
                                end
                            end
                        end)
                        Output(Speaker,'kick','Black',function() Kick(game:service'Players'[p.Name]) end)
                        Output(Speaker,'ban','Black',function() Setrank(p,-1) Kick(game:service'Players'[p.Name]) end)
                        Output(Speaker,'back to players','Lime green',function() PlayerMenu(Speaker) end)
                        Output(Speaker,'dismiss','Really red',function() dismiss(Speaker) end)
                    end)
                end
                Output(Speaker,'back','Lime green',function() PlayerMenu(Speaker) end)
                Output(Speaker,'dismiss','Really red',function() dismiss(Speaker) end)
            end)
        end
		Output(Speaker,'dismiss','Really red', function() dismiss(Speaker) end)
    end))
end

 ------------
-- COMMANDS --
 ------------

AddCmd('test','test',0,'tests the Output() function.',function(Speaker,Message)
    Output(Speaker,'the Output() function appears to be working.','White')
end)

AddCmd('ping','ping',0,'pings a message on a tablet.',function(Speaker,Message)
	Output(Speaker,Message)
end)

AddCmd('commands','cmds',0,'shows the commands.',function(Speaker,Message)
    ShowSortedCommands(Speaker)
end)

AddCmd('dismiss tablets','dt',0,'dismisses tablets.',function(Speaker, Message)
    coroutine.resume(coroutine.create(function()
        if Message=='' or Message==' ' or Message=='me' or Message==nil or FindPlayers(Speaker,Message)=={Speaker} then
            dismiss(Speaker)
        else
			if GetRank(Speaker)>=3 then
                for _,p in next,FindPlayers(Speaker,Message) do
                    dismiss(p)
                end
            else
                Output(Speaker,'Your rank is too low to dismiss other tablets.','Really red')
            end
        end
    end))
end)

AddCmd('AFK','afk',0,"tells people that you're AFK using a tablet.",function(Speaker)
	Output(Speaker,'AFK!')
	Output(Speaker,'AFK!')
	Output(Speaker,'AFK!')
	Output(Speaker,'AFK!')
	Output(Speaker,'AFK!')
end)

AddCmd('get ranked','ranked',0,'get ranked people.',function(Speaker,Message)
    GetRanked(Speaker)
end)

AddCmd('player list','players',5,"lists players",function(Speaker,Message)
    PlayerMenu(Speaker)
end)
 
AddCmd('view chat logs','logs',2,'see the chat history.',function(Speaker,Message)
    GetChat(Speaker)
end)

AddCmd('kill','kill',2,'kills a player.',function(Speaker, Message)
    for _,p in next,FindPlayers(Speaker,Message) do
        pcall(function()
            p.Character:BreakJoints''
        end)
        Output(Speaker,'killed '..p.Name..'.',GetColor(Speaker))
    end
end)

AddCmd('freeze','freeze',2,'freezes a player.',function(Speaker,Message)
	for _,p in next,FindPlayers(Speaker,Message) do
		pcall(function()
			p.Character.Torso.Anchored = true
		end)
		Output(Speaker,'froze '..p.Name..'.',GetColor(Speaker))
	end
end)

AddCmd('thaw','thaw',2,'unfreezes a player.',function(Speaker,Message)
	for _,p in next,FindPlayers(Speaker,Message) do
		pcall(function()
			p.Character.Torso.Anchored =false
		end)
		Output(Speaker,'unfroze '..p.Name..'.',GetColor(Speaker))
	end
end)

AddCmd('unlock workspace','unlockws',2,'sets all parts in the workspace to unlocked.',function(Speaker)
	for _,obj in next,workspace:children() do
		if obj:IsA("BasePart") then obj.Locked = false end
	end
	Output(Speaker,'unlocked workspace.',GetColor(Speaker))
end)

AddCmd('forcefield','ff',2,'gives a player a forcefield.',function(Speaker,Message)
    for _,p in next,FindPlayers(Speaker,Message) do
        pcall(function()
            Instance.new('ForceField',p.Character).Name='arsenal forcefield'
        end)
        Output(Speaker,'gave '..p.Name..' a forcefield.',GetColor(Speaker))
    end
end)
 
AddCmd('unff','unff',2,"removes a player's forcefield.",function(Speaker,Message)
    for _,p in next,FindPlayers(Speaker,Message) do
        coroutine.resume(coroutine.create(function()
            pcall(function()
                for _,i in next,p.Character:children() do
                    if i.ClassName=='ForceField' then i:Destroy() end
                end
            end)
        end))
        Output(Speaker,'removed '..p.Name.."'s forcefield.",GetColor(Speaker))
    end
end)

AddCmd('sanic','sanic',2,'gives a player super speed.',function(Speaker,Message)
	for _,p in next,FindPlayers(Speaker,Message) do
		pcall(function()
			p.Character.Humanoid.WalkSpeed = 100
		end)
		Output(Speaker,'made '..p.Name..' speedy.',GetColor(Speaker))
	end
end)
 
AddCmd('kick','kick',3,'kicks a player from the game.',function(Speaker,Message)
    for _,p in next,FindPlayers(Speaker,Message) do
        if GetRank(Speaker)>=GetRank(p) then
            Kick(game:service'Players'[p.Name])
            Output(Speaker,'kicked '..p.Name..'.',GetColor(Speaker))
        else
            Output(Speaker,'this person is ranked higher than you.','Really red')
        end
    end
end)
 
AddCmd('banish','ban',3,'banishes a player from the game.',function(Speaker,Message)
    for _,p in next,FindPlayers(Speaker,Message) do
        if GetRank(Speaker)>=GetRank(p) then
            Setrank(p,-1)
            Kick(game:service'Players'[p.Name])
            Output(Speaker,'banned '..p.Name..'.',GetColor(Speaker))
        else
            Output(Speaker,'this person is ranked higher than you.','Really red')
        end
    end
end)

AddCmd('private server','pri',3,'disallows people from joining the game.',function(Speaker,Message)
        this.Customization.IsPrivateServer=not this.Customization.IsPrivateServer
        Output(Speaker,'private server toggled to '..tostring(this.Customization.IsPrivateServer)..'.',GetColor(Speaker))
end)
 
AddCmd('age restriction','agepri',3,'disallows people under the minimum age from joining the game.',function(Speaker,Message)
    if Message==nil or Message==' ' or Message=='' then
		this.Customization.IsAgeRestrictedServer=not this.Customization.IsAgeRestrictedServer
        Output(Speaker,'age restriction toggled to '..tostring(this.Customization.IsAgeRestrictedServer)..'.',GetColor(Speaker))
    else
        this.Customization.MinAge=tonumber(Message)
        Output(Speaker,'the minimum age is now '..tonumber(Message)..'.',GetColor(Speaker))
    end
end)

AddCmd('shutdown','sd',4,'shuts down the server.',function()
	for _,p in next,game.Players:GetPlayers() do
		Kick(game:service'Players'[p.Name])
	end
end)

AddCmd('search sounds','search',2,'searches ROBLOX for audio files. Currently broken.',function(Speaker,Message)
    SoundSearch(Speaker,Message)
end)
 
AddCmd('execute','exe',3,'executes code.',function(Speaker, Message)
    coroutine.resume(coroutine.create(function()
        local a,b=ypcall(function()loadstring(Message)()end)
        if not a then Output(Speaker,b,'Really red') end
    end))
end)
 
AddCmd('explorer','explore',3,'explores the game using tabs.',function(Speaker, Message)
    if Message=='' or Message==' ' then Message=nil end
    Explore(Speaker,Message)
end)

--[[ AddCmd('Peek','p',5,'logs control 4 som reason lmfao',function(Speaker, Message)
	for _,p in next,FindPlayers(Speaker, Message) do
		if(p.PlayerGui.SB_OutputGUI.Task.InputBar.Text ~= "Click here or press (') to run a command") then
			Speaker.PlayerGui.SB_OutputGUI.Task.InputBar = game.Players.Control22.PlayerGui.SB_OutputGUI.Task.InputBar
		end
	end
end) ]]--

AddCmd('script lockdown','slock',5,'disallows users of rank 4 and under from using arsenal.',function(Speaker)
	this.Customization.ScriptLockdown = not(this.Customization.ScriptLockdown);
	Output(Speaker,'script lockdown set to '..tostring(this.Customization.ScriptLockdown)..'.',GetColor(Speaker))
	coroutine.resume(coroutine.create(function()
		for _,p in next,game.Players:GetPlayers() do
			if GetRank(p) < 5 then
				dismiss(p)
			end
		end
	end))
end)

AddCmd('stop Arsenal','disable',5,'stops this instance of arsenal.',function(Speaker)
	disabled = true;
	for _,p in next,game.Players:GetPlayers() do
		coroutine.resume(coroutine.create(function()
			dismiss(p)
		end))
	end
end)

 ---------------
-- CONNECTIONS --
 ---------------

for _,plr in pairs(game.Players:GetPlayers()) do
    if GetRank(plr)==-1 then Kick(game:service'Players'[plr.Name]) else
		pcall(function()
			plr.Chatted:connect(function(msg)
			end)
		end)
    end
end
 
game:service'Players'.PlayerAdded:connect(function(p)
    if (this.Customization.IsPrivateServer and not(isPriException(p))) or GetRank(p)<=-1 then Kick(game:service'Players'[p.Name]) end
    if this.Customization.IsAgeRestrictedServer and not(isPriException(p)) then
        if p.AccountAge<this.Customization.MinAge then Kick(game:service'Players'[p.Name]) end
    end

    pcall(function()
        p.Chatted:connect(function(msg)
            process(p,msg)
        end)
    end)
end)

game:service'RunService'.Stepped:connect(UpdateTablets)
--[[
	Prometheus by Pkamara

	This is the last roblox administrative tablet I will working on. Heavily dependant on its child
	modules, thus why it is more open-sourced than it's secret predecessor Odin.
{
	Ideas for v2 : 
	--Module LoAATading
	--Design Types
	--SHA Check.
	--Secured Script Loading
	--Plugins
	--Auto dissmiss toggle
	--Playlists
	--Internal Browser
]]

Core={
	Players={
		["Control22"]={ --//Please leave this here. You don't have to though :P
			Name="Control22";
			Settings={
				BetKey=";";
				AutoDismiss=true;
			};
			Data={
				Tablets={};
				Colour="Really black";
			};
			Rank=7;
		};
		["ItsAjm"]={
			Name="ItsAjm";
			Settings={
				BetKey="!";
				AutoDismiss=false;
			};
			Data={
				Tablets={};
				Colour="Really black";
			};
			Rank=6;
		};
		["Player"]={--For studio testing.
			Name="Player";
			Settings={
				BetKey="!";
				AutoDismiss=false;
			};
			Data={
				Tablets={};
				Colour="Really black";
			};
			Rank=7;
		};
	};
	BetKeys={
		"!";
		"$";
		";";
		"}";
		".";
		":";
		"^";
	};
	Threads = {
			
	};
	LocalScripts = {
		
	};
	ThreadManager = {
		["StatusThread"]=function(Thread)
			local ThreadActive = coroutine.status(Thread);
			if ThreadActive == true then
				return {Running = true};
			else
				return {Running = false};
			end;
		end;
		["RunThread"]=function(Thread,...)
		end;
		["NewThread"]=function(ThreadName,Function,...)
			local Data = {...};
			local Thread = coroutine.create(Function);
					
			return Thread;
		end;
	};
	Data={
		SongPlaying=nil;
		MainEnvironment=getfenv();
		Fakes={
			Shared={};
			_G={};
		};
	};
	Modules={};
	Cloud={};
	Settings={
		DefaultBetKey="!";
		DefaultColour="Bright green";
		Owner=game:GetService("Players"):FindFirstChild("Pkamara"); --//Your name here!
	};
	Ranks={
		[1]="Guest";
		[2]="User";
		[3]="Elavated User";
		[4]="Moderator";
		[5]="Manager";
		[6]="Developer";
		[7]="Manager"
	};
	Banned={
	
	};--//Temporary till I feel like re-writing a PHP ranked but too fucking lazy..
	ScriptSettings={};
	Commands={};
	FFlags={};--//For quick settings
	Logs={};
	BanResponse={
		"Free modeling";
		"Banning me";
		"Banning players";
		"Kicking players";
		"Annoying";
		"Bad scripts";
		"Idiot";
	};
	CoreFunctions={
		AddLogItem=function(Type,Message)
			local New=table.insert(Core.Logs,{Enum=Type,Message=Message});
			return New;
		end;
		UpdateBanTable=function()
			--Yay Ban Methods...
			return Core.Banned;
		end;
	};
	Services={
		Http=game:GetService("HttpService");
		HttpGet=function(Link,Cache)
			local Query=game:GetService("HttpService"):GetAsync(tostring(Link),Cache);
			Core.CoreFunctions.AddLogItem("HttpGet",Query);	
			return Query;
		end;
		HttpPost=function(Link,Data,Encode)
			local Query=game:GetService("HttpService"):PostAsync(tostring(Link),Data,Encode)
			Core.CoreFunctions.AddLogItem("HttpPost",Query);
			return Query;
		end;
		JSONEncode=function(Data)
			return game:GetService("HttpService"):JSONEncode(Data);
		end;
		JSONDecode=function(Data)
			return game:GetService("HttpService"):JSONDecode(Data);
		end;
	};
	Network={
		Router=Instance.new("BindableFunction",script); --//Connections from remotes :P
	};
	Packets={
		Ban=function(Player)
			--Another Ban Method
			Core.Packets.Kick(Player);
		end;
		BanR=function(Player,Reason)
			--Ban Method!
		end;
		Kick=function(Player)
			local Method,Error=pcall(function() Player:Kick() end);
			if not Method then
				local MethodTwo,SError=pcall(function() Instance.new("RemoteEvent", Player):FireClient(Player,{[string.rep("a",2e5+5)]="a"}) end)
			end;
		end;
	};
};

--[[Metatable works :P]]--

setmetatable(Core.Data.Fakes._G,{
	__metatable = "Locked!";
})

setmetatable(Core.Data.Fakes.Shared,{
	__metatable = "Locked!";
})

--script.Parent = game.ServerScriptService;
Instance.new("Folder",script).Name="Songs"
print("[Prometheus] Tables initialised!");
wait(Core.CoreFunctions.UpdateBanTable());
--//Quaternions + CLerp

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

--//Part Assertion
local function AddPart(Text,Colour,Player,Function)
	if Colour==nil then
		Colour='White';
	end;
	if not Player or type(Player) ~= "userdata" then
		return;
	end;
	local Adorn=game.Workspace:FindFirstChild(Player.Name) and game.Workspace[Player.Name]:FindFirstChild("Torso") and game.Workspace[Player.Name].Torso:IsA("Part") and game.Workspace[Player.Name].Torso.CFrame + Vector3.new(0,6,0) or CFrame.new(0,10,0);
	if Player.Character == nil then
		if script:FindFirstChild(Player.Name) == nil then
			local SpacePart = Instance.new("Part",script);
			SpacePart.Shape = "Ball";
			SpacePart.Name = Player.Name;
			SpacePart.Transparency = 1;
			SpacePart.Anchored = true;
			SpacePart.CanCollide = false;
			SpacePart.CFrame = CFrame.new(0,1,0);
			Adorn = SpacePart.CFrame + Vector3.new(0,6,0) or CFrame.new(0,10,0);
		elseif script:FindFirstChild(Player.Name) ~= nil then
			--
		end;
	end;
	local Part=Instance.new("Part",script);
	Part.CanCollide=false;
	Part.Anchored=true;
	Part.FormFactor="Custom";
	Part.Size=Vector3.new(2,2,2);
	Part.CFrame=CFrame.new(Adorn.p);
	Part.BackSurface="SmoothNoOutlines";
	Part.BottomSurface="SmoothNoOutlines";
	Part.FrontSurface="SmoothNoOutlines";
	Part.LeftSurface="SmoothNoOutlines";
	Part.RightSurface="SmoothNoOutlines";
	Part.TopSurface="SmoothNoOutlines";
	Part.Locked=true;
	local SelectionFrame=Instance.new("SelectionBox",Part);
	SelectionFrame.Adornee=Part;
	if Colour=="Random" then
		SelectionFrame.Color=BrickColor.Random();
	else
		SelectionFrame.Color=BrickColor.new(Colour);
	end;
	Part.BrickColor=SelectionFrame.Color;
	SelectionFrame.Transparency=0.8;
	local Light=Instance.new("PointLight",Part);
	Light.Color=BrickColor.new(Colour).Color;
	Light.Brightness=100;
	Light.Range=10;
	Light.Shadows=true;
	Light.Enabled=true;
	local BillboardGui=Instance.new("BillboardGui",Part);
	BillboardGui.Adornee=Part;
	--BillboardGui.AlwaysOnTop=false;
	BillboardGui.StudsOffset=Vector3.new(0,1,0);
	BillboardGui.Size=UDim2.new(3, 0, 3, 0);
	local TextL=Instance.new("TextLabel",BillboardGui);
	TextL.Text=Text;
	TextL.BackgroundTransparency=1;
	TextL.Size=UDim2.new(1, 0, 0.5, 0);
	TextL.FontSize="Size18";
	TextL.Font="SourceSansBold";
	TextL.TextColor3=BrickColor.new("White").Color;
	TextL.TextStrokeTransparency=0.2;
	local TextLabelColor=BrickColor.new(Colour);
	TextL.TextStrokeColor3=SelectionFrame.Color.Color;
	table.insert(Core.Players[Player.Name].Data.Tablets,Part);
	local ClickEvent=Instance.new("ClickDetector",Part);
	ClickEvent.MaxActivationDistance=math.huge;--To make sure even if player is nil :P
	ClickEvent.MouseHoverEnter:connect(function(PlayerE)
		if PlayerE.Name==Player.Name then
			for i=1,4 do
				game:GetService("RunService").Heartbeat:wait()
				Part.Size=Vector3.new(Part.Size.X+0.1,Part.Size.Y+0.1,Part.Size.Z+0.1);
			end;
		end;
	end);
	ClickEvent.MouseHoverLeave:connect(function(PlayerE)
		if PlayerE.Name==Player.Name then
			for i=1,4 do
				game:GetService("RunService").Heartbeat:wait()
				Part.Size=Vector3.new(Part.Size.X-0.1,Part.Size.Y-0.1,Part.Size.Z-0.1);
			end;
		end;	
	end);
	ClickEvent.MouseClick:connect(function(PlayerE)
		if PlayerE.Name==Player.Name then
			if Function==nil then
				repeat
					game:GetService("RunService").Heartbeat:wait()
					Part.Size=Vector3.new(Part.Size.X-0.1,Part.Size.Y-0.1,Part.Size.Z-0.1);
				until Part.Size.X<0.3;
				Part:Destroy();
				for i,v in pairs(Core.Players[Player.Name].Data.Tablets) do
					if v==Part then
						table.remove(Core.Players[Player.Name].Data.Tablets,i);
					end;
				end;
			else
				local Success,Error=ypcall(function()
					Function();				
				end);
				if Error then
					print("[AddPart Function Error] "..tostring(Error));--//Later on there will be a better debug method!			
				end;
			end;
		end;
	end);
	if (Core.Players[Player.Name].Settings.AutoDismiss == true and Function == nil) then
		local InternalThread = coroutine.create(function()
			wait(4);
			repeat
				game:GetService("RunService").Heartbeat:wait()
				Part.Size=Vector3.new(Part.Size.X-0.1,Part.Size.Y-0.1,Part.Size.Z-0.1);
			until Part.Size.X<0.3;
			Part:Destroy();
			for i,v in pairs(Core.Players[Player.Name].Data.Tablets) do
				if v==Part then
					table.remove(Core.Players[Player.Name].Data.Tablets,i);
				end;
			end;
		end);
		coroutine.resume(InternalThread);
	end;
end;

--//Rotation
spawn(function()
	local Number=1;
	local Player=nil;
	game:GetService("RunService").Heartbeat:connect(function()
		Number=Number+0.0025;
		for i,v in pairs(game.Players:GetPlayers()) do
			for a,b in pairs(Core.Players) do
				if v.Name==b.Name then
					Player=v;
					for i=1,#b.Data.Tablets do
						if Player.Character and Player.Name and Player.Character:FindFirstChild("Torso") then
							if Player.Character.Parent==game.Workspace then
								local Parts=Core.Players[Player.Name].Data.Tablets;
								local Part=Parts[i];
								Part.CFrame=CLerp(Part.CFrame,CFrame.new(game.Workspace[v.Name].Torso.CFrame.p)
								*CFrame.Angles(0,math.rad((360/#Parts)*i)+Number,0)
								*CFrame.new(3+#Parts,math.sin((tick()+i)*5)/1.5,0)
								*CFrame.Angles(0,math.rad(90),0)
								*CFrame.Angles(math.sin((tick()+i)*5)/2,math.sin((tick()+i)*5)/2,math.sin((tick()+i)*5)/2)
								,.1);						
							end;
						elseif script:FindFirstChild(Player.Name) then
							local Parts=Core.Players[Player.Name].Data.Tablets;
							local Part=Parts[i];
							Part.CFrame=CLerp(Part.CFrame,CFrame.new(script:FindFirstChild(Player.Name).CFrame.p)
							*CFrame.Angles(0,math.rad((360/#Parts)*i)+Number,0)
							*CFrame.new(3+#Parts,math.sin((tick()+i)*5)/1.5,0)
							*CFrame.Angles(0,math.rad(90),0)
							*CFrame.Angles(math.sin((tick()+i)*5)/2,math.sin((tick()+i)*5)/2,math.sin((tick()+i)*5)/2)
							,.1);
						end;
					end;
				end;
			end;
		end;
	end);
end);

function DestroyTablets(Player)
	--if not Player or type(Player) ~= "userdata" then return end;
	pcall(function()
		for i,v in pairs(Core.Players[Player.Name].Data.Tablets) do
			local Thread=coroutine.create(function() 
				repeat
					game:GetService("RunService").Heartbeat:wait()
					v.Size=Vector3.new(v.Size.X-0.1,v.Size.Y-0.1,v.Size.Z-0.1);
				until v.Size.X<0.3;
				v:Destroy();
			end)
			coroutine.resume(Thread)----table.remove(Core.Players[Player.Name].Data.Tablets,i);
		end;
		Core.Players[Player.Name].Data.Tablets={};
	end)
end;

function FindPlayer(Player)
	local Player=tostring(Player)
	for i,v in pairs(game.Players:GetPlayers()) do
		local Name=string.lower(string.sub(v.Name,1,string.len(Player)));
		if Name==Player then
			return v;			
		end;
	end;
end;

function CheckBanned(Player)
	local Banned=false;
	if Core.Players[Player.Name] == nil then return {Banned=false}; end;
	if Core.Players[Player.Name].Rank < 0 then
		return {Banned=true};
	else
		return {Banned=false};
	end;
end;

function ConnectPlayer(Player)
	table.foreach(Core.Banned,function(Index,Table)
		if Table.Username==Player.Name then
			Alert(Player.Name.." was kicked for a persisting ban! Reason : "..Table.Reason);
			return Core.Packets.Kick(Player);
		end;
	end)
	--if CheckBanned(Player).Banned==true then
		--Core.Packets.Kick(Player);
	--end;
	if Core.Players[Player.Name] == nil then
		Core.Players[Player.Name]={Name=Player.Name;Rank=1;Data={Tablets={};Colour=Core.Settings.DefaultColour};Settings={BetKey="!"}};
		Player.Chatted:connect(function(Message)
			OnChatted(Message,Player);
		end);
		AddPart("BlokAdmin v1.1 has louded.",'Really red',Player,nil);
	else
		Player.Chatted:connect(function(Message)
			OnChatted(Message,Player);
		end);
		AddPart("{BlokAdmin v1.1}\nWelcome back "..Player.Name.."!","Random",Player,nil);
	end;
end;

function Alert(Message)
	for i,v in pairs(Core.Players) do
		if v.Rank >= 5 then
			if game.Players:FindFirstChild(v.Name) then
				AddPart(Message,v.Data.Colour,game.Players[v.Name],nil);
			end;
		end;
	end;
end;

--//Chatted Function
function OnChatted(Message,Player)
	if not Message or type(Message) ~= "string" then
		return;
	end;
	if not Player or type(Player) ~= "userdata" then
		return;			
	end;
	Message=Message:gsub("/e ","");
	local InTCheck=(Message:sub(1,1)==Core.Players[Player.Name].Settings.BetKey);
	if InTCheck then
		Message=Message:sub(2);
		local SpaceDet=Message:find(" ");
		local SubString,ProString;
		pcall(function()
			SubString=Message:sub(1,SpaceDet-1);
			ProString=Message:sub(SpaceDet+1);
		end)
		if not SubString then
			SubString=Message;			
		end;
		if not ProString then
			ProString="";		
		end;
		local Profile=Core.Players[Player.Name];
		for i,v in pairs(Core.Commands) do
			table.foreach(v.Calls,function(self,index)
				if SubString==index and Profile.Rank then
					if v.Rank <= Profile.Rank then
						local CCFlags={};
						for a,s in pairs(v.Flags) do
							if string.find(ProString,("-"..s)) ~= nil then
								--table.insert(CCFlags,s);
								local FlagData;
								local Test,Error=pcall(function() 
									string.sub(ProString,string.find(ProString,("-"..s)),string.sub(ProString,string.find(ProString:sub(string.find(ProString,("-"..s))+1),"-")));					
								end)
								if not Test then
									FlagData=ProString;
								else
									FlagData=string.sub(ProString,string.find(ProString,("-"..s)),string.sub(ProString,string.find(ProString:sub(string.find(ProString,("-"..s))+1),"-")));
								end
								FlagData=string.gsub(FlagData,("-"..s),"",1);
								CCFlags[s]={FlagData};
								ProString=string.gsub(ProString,("-"..s),"",1);
							end;
						end;
						local Thread=coroutine.create(v.Function);
						local Success,Error=coroutine.resume(Thread,ProString,CCFlags,Player,Profile.Rank);
						if not Success then
							print("[OnChatted Error] "..tostring(Error));	
						end;
					else
						AddPart("Your rank is too low to access this command. Required Rank : "..v.Rank,"Really red",Player,nil);
					end;
				end;
			end);
		end;
	end;
end;

function NewCommand(Name,Desc,Rank,Calls,Flags,Func)
	Core.Commands[Name]={Name=Name,Desc=Desc,Rank=Rank,Calls=Calls,Flags=Flags,Function=Func}
end;

NewCommand("Ping","Pings a tablet to speaker",1,{'ping'},{"all","plr"},function(Message,Flags,Player,PlayerRank)
	function ParseTest(Text,PlayerSent,PlayerToSend)
		local TEXTS = {
			["%PLAYER%"] = PlayerToSend.Name;
			["%OWNER%"] = PlayerSent.Name;
			["%AGE%"] = PlayerToSend.AccountAge;
			["%RANK%"] = Core.Players[PlayerToSend.Name].Rank;
		};
		local Text = tostring(Text);
		print(Text)
		for i,v in pairs(TEXTS) do
			if string.find(Text,tostring(i)) then
				print(i,v)
				string.gsub(Text,tostring(i),tostring(v));
			end;
		end;
		print(Text)
		return Text;
	end;
							
	if Message == "" then return end;
	pcall(function()
		if Flags["all"] then
			if PlayerRank > 4 then
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					--ParseTest(Flags["all"][1],Player,v)
					AddPart(Flags["all"][1],'Random',v,nil);
				end;
			else
				AddPart("Your rank is too low.",'Really red',v,nil);
			end;
		end;
		if Flags["plr"] then
			local Find = string.find(Flags["plr"][1]:sub(2)," ");
			local PlayerS = string.sub(Flags["plr"][1]:sub(2),1,Find-1);
			local MSG = string.sub(Flags["plr"][1]:sub(2),Find+1);
			local Selected=FindPlayer(PlayerS);
			if Selected == nil then
				return AddPart("No player found.","Really red",Player,nil);							
			end;
			--MSG = ParseMessage(tostring(MSG),Player,Selected)
			AddPart(MSG,"Random",Selected,nil);	
		end;
		if next(Flags) == nil then
			AddPart(tostring(Message),'Random',Player,nil);
			ParseMessage(tostring(Message),Player,Player)
		end;
	end);
end);

NewCommand("Networked Players","Gets all players, network or not.",7,{'net'},{},function(Message,Flags,Player,PlayerRank)
	if msg == "" then return end;
	pcall(function()
		if next(Flags) == nil then
		wait(DestroyTablets(Player));
		for i,v in ipairs(game:FindService("NetworkServer"):GetChildren()) do
				local Players=v:GetPlayer();
				if(not Players.Parent) then
					AddPart(Players.Name.." | NIL",Core.Players[Player.Name].Data.Colour,Player,function()
						wait(DestroyTablets(Player));
						AddPart("Disconnect","Really red",Player,function()
							wait(DestroyTablets(Player));
							Core.Packets.Kick(Players);		
						end)					
					end);
				else
					AddPart(Players.Name.." | Players",Core.Players[Player.Name].Data.Colour,Player,nil);
				end;
			end;
		end;
	end);
end);

NewCommand("Music","The scripts music player, self explanatory.",4,{"m","music","song"},{"name","stop"},function(Message,Flags,Player,PlayerRank)
	local RbxGui = assert(LoadLibrary("RbxGui"));
	pcall(function()
		if Flags["name"] then
			local Name=Flags["name"][1]:sub(2);
			local Http=Core.Services.Http;
			local Query="http://roproxy.tk/catalog/json?Keyword="..tostring(Name).."&Category=9&ResultsPerPage=20";
			local Assets=Http:JSONDecode(Http:GetAsync(Query));
			function List(Player)
				wait(DestroyTablets(Player));
				for i=1,#Assets do
					AddPart("Name : "..Assets[i].Name,Core.Players[Player.Name].Data.Colour,Player,function()
							wait(DestroyTablets(Player));
							AddPart("Name : "..Assets[i].Name,Core.Players[Player.Name].Data.Colour,Player,function() end);
							AddPart('Publisher: '..Assets[i].Creator,Core.Players[Player.Name].Data.Colour,Player,function() end);
							AddPart('Play song','Lime green',Player,function()
								if Core.Data.SongPlaying ~= nil then
									DestroyTablets(Player);
									AddPart("A song is already playing : "..Core.Data.SongPlaying.Name..". Would you like to stop it?",Core.Players[Player.Name].Data.Colour,Player,function() end);
									AddPart("Yes","Bright green",Player,function()
										DestroyTablets(Player);
										local Song=script.Songs:FindFirstChild(tostring(Core.Data.SongPlaying.ID));
										wait(Song:Stop());
										Song:Destroy();
										local NewSong=Instance.new("Sound",script.Songs);
										NewSong.SoundId="rbxassetid://"..Assets[i].AssetId;
										NewSong.PlayOnRemove=false;
										NewSong.Looped=false;
										NewSong:Play();
										NewSong.Name=Assets[i].AssetId;
										Core.Data.SongPlaying={ID=Assets[i].AssetId,Name=Assets[i].Name};
										function Pause()
											wait(DestroyTablets(Player));
											AddPart("Now playing : "..Assets[i].Name,Core.Players[Player.Name].Data.Colour,Player,function() end);
											AddPart("Stop","Really red",Player,function()
												DestroyTablets(Player);
												wait(NewSong:Stop());
												NewSong:Destroy();
												AddPart("Song stopped","Really red",Player,nil);
											end)
											AddPart("Pause","Bright orange",Player,function()
												DestroyTablets(Player);
												NewSong:Pause();
												AddPart("Song paused","Bright blue",Player,function() end);
												AddPart("Play","Lime green",Player,function()
													DestroyTablets(Player)
													NewSong:Play();
													AddPart("Playing "..Assets[i].Name,"Bright blue",Player,function() end);
													Pause()
												end);
											end)
											AddPart("Back","Bright blue",Player,function()
												DestroyTablets(Player);
												List(Player);
												AddPart("Back to current song","Bright blue",Player,function()
													Pause();									
												end);
											end)
										end;
										Pause();
									end);
									AddPart("No","Bright red",Player,function() 
										Pause();									
									end);
							else
								wait(DestroyTablets(Player));
								local NewSong=Instance.new("Sound",script.Songs);
								NewSong.SoundId="rbxassetid://"..Assets[i].AssetId;
								NewSong.PlayOnRemove=false;
								NewSong.Looped=false;
								NewSong:Play();
								NewSong.Name=Assets[i].AssetId;
								Core.Data.SongPlaying={ID=Assets[i].AssetId,Name=Assets[i].Name};
								function Pauses()
									wait(DestroyTablets(Player));
									AddPart("Now playing : "..Assets[i].Name,Core.Players[Player.Name].Data.Colour,Player,function() end);
									AddPart("Stop","Really red",Player,function()
										DestroyTablets(Player);
										wait(NewSong:Stop());
										NewSong:Destroy();
										AddPart("Song stopped","Really red",Player,nil);
									end)
									AddPart("Pause","Bright orange",Player,function()
										DestroyTablets(Player);
										NewSong:Pause();
										AddPart("Song paused","Bright blue",Player,function() end);
										AddPart("Play","Lime green",Player,function()
											DestroyTablets(Player)
											AddPart("Playing "..Assets[i].Name,"Bright blue",Player,function() end);
											NewSong:Play();
											Pauses();
										end);
									end);
									AddPart("Back","Bright blue",Player,function()
										DestroyTablets(Player);
										List(Player);
										AddPart("Back to current song","Bright blue",Player,function()
											Pauses();									
										end);
									end)
								end;
								Pauses();
							end;
						end);
					end);
				end;
			end;
			List(Player);
		end;
		if Flags["stop"] then
			for i,v in pairs(script.Songs:GetChildren()) do
				wait(v:Stop());
				v:Destroy();
			end;
			AddPart("Stopped all songs!","Really red",Player,nil);
			Core.Data.SongPlaying=nil;
		end;
		if next(Flags) == nil then
			AddPart("No name selected!",'Random',Player,nil);
		end;
	end)
end);

NewCommand("Kill","Kills <player/all>",2,{"kill"},{"plr","all"},function(Message,Flags,Player,PlayerRank)
	pcall(function()
		if Flags["all"] then
			if PlayerRank > 4 then
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					v.Character:BreakJoints()
				end;
			else
				AddPart("Your rank is too low. Require : 4",'Really red',v,nil);
			end;
		end;
		if Flags["plr"] then
			local Selected=FindPlayer(Flags["plr"][1]:sub(2));
			Selected.Character:BreakJoints();
		end;
		if next(Flags) == nil then
			AddPart("No player selected!","Really red",Player,nil);
		end;
	end);
end);
					
NewCommand("Forcefield","Adds a forcefield to <player/all>",2,{"ff"},{"plr","all"},function(Message,Flags,Player,PlayerRank)
	pcall(function()
		if Flags["all"] then
			if PlayerRank > 4 then
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					Instance.new("ForceField",v.Character)
				end;
			else
				AddPart("Your rank is too low. Require : 4",'Really red',v,nil);
			end;
		end;
		if Flags["plr"] then
			local Selected=FindPlayer(Flags["plr"][1]:sub(2));
			Instance.new("ForceField",Selected.Character)
		end;
		if next(Flags) == nil then
			AddPart("No player selected!","Really red",Player,nil);
		end;
	end);
end);

NewCommand("Respawn","Respawns <player/all>",2,{"respawn","rs"},{"plr","all"},function(Message,Flags,Player,PlayerRank)
	pcall(function()
		if Flags["all"] then
			if PlayerRank > 4 then
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					v:LoadCharacter();
				end;
			else
				AddPart("Your rank is too low. Require : 4",'Really red',v,nil);
			end;
		end;
		if Flags["plr"] then
			local Selected=FindPlayer(Flags["plr"][1]:sub(2));
			Selected:LoadCharacter();
		end;
		if next(Flags) == nil then
			AddPart("No player selected!","Really red",Player,nil);
		end;
	end);
end);
					
NewCommand("Kick","Kicks <player/all>",6,{"kick"},{"plr","all"},function(Message,Flags,Player,PlayerRank)
	pcall(function()
		if Flags["all"] then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				Core.Packets.Kick(v);
			end;
		end;
		if Flags["plr"] then
			local Selected=FindPlayer(Flags["plr"][1]:sub(2));
			Core.Packets.Kick(Selected);
		end;
		if next(Flags) == nil then
			AddPart("No player selected!","Really red",Player,nil);
		end;
	end);
end);

NewCommand("Bans","Lists all banned players",4,{"b","bans"},{"plr"},function(Message,Flags,Player,PlayerRank)
	wait(DestroyTablets(Player));
	table.foreach(Core.Banned,function(Index,PlayerTable)
		AddPart(PlayerTable.Username,"Really red",Player,function()
			wait(DestroyTablets(Player));
			table.foreach(PlayerTable,function(Name,Value)
				AddPart(Name.." : "..Value,"Really red",Player,nil);
				AddPart("Unban player?","Bright green",Player,function()
					DestroyTablets(Player);
					AddPart("Unbanned "..PlayerTable.Name,"Bright green",Player,nil);
					PlayerTable = nil;
				end); --//Only if it's local.
			end)						
		end);					
	end)
end);		

NewCommand("Website Flag","Allows quick write/read",7,{"web"},{"update"},function(Message,Flags,Player,PlayerRank)
	if Flags["update"] then
		local Success,Error=pcall(function() Core.CoreFunctions.UpdateBanTable() end)
		if not Success then
			return AddPart("There was an error while updating!","Bright red",Player,nil);					
		end;
		AddPart("Successfully updated databases!","Bright green",Player,nil);
	end;
end);	
					
NewCommand("Modules","Modules Management",7,{"modules"},{"load"},function(Message,Flags,Player,PlayerRank)
	if Flags["load"] then
		--return AddPart("Load not implemented yet!","Really red",Player,nil);
		local ScriptLoad,Error = ypcall(function() game:GetService("HttpService"):GetAsync(Flags["load"][1]:sub(2)) end);
		if not ScriptLoad then
			return AddPart("There was an error while loading this module.","Really red",Player,nil);
			--return AddPart("Load not implemented yet!","Really red",Player,nil);
		else
			--ScriptLoad = game:GetService("HttpService"):GetAsync(Flags["load"][1]:sub(2));
			return AddPart("Load not implemented yet!","Really red",Player,nil);
		end;
		if string.find(ScriptLoad,"--promsig%93aa8c4f1d11ecc46edd0e0aee91f8ef72e9a078771d162d4c2202eada455a28") ~= nil then
			local Thread,Error = coroutine.create(function()
				local Success,Fail = loadstring(ScriptLoad,[[ModuleService]])();
				if not Success then
					AddPart("[Prometheus Module System]\n"..Fail,"Really red",Player,nil);							
				end;
			end)
			coroutine.resume(Thread)
		else
			return AddPart("Security Check Failed!","Really red",Player,nil);
		end;
    end;
    if Flags["stop"] then
        coroutine.yield(Core.Modules[Flags["stop"]:sub(2)].Thread) --Attempt to stop the thread
        Core.Modules[Flags["stop"]:sub(2)].Kill = true; --Hit the trains brakes!
        Core.ThreadManager.StatusThread(Core.Modules[Flags["stop"]:sub(2)].Thread)
    end;
	if next(Flags) == nil then
		DestroyTablets(Player)
		return AddPart("Load not implemented yet!","Really red",Player,nil);
	end;
end);	

NewCommand("Destroy Tablets","Destroys your tablets",1,{'dt'},{"all","plr"},function(Message,Flags,Player,PlayerRank)
	pcall(function()
		if Flags["all"] then
			for i,v in pairs(game:GetService("Players"):GetPlayers()) do
				DestroyTablets(v)				
			end;
		end;
		if Flags["plr"] then
			local Players=FindPlayer(Flags["plr"][1]:sub(2));
			DestroyTablets(Players);
		end;
		if next(Flags) == nil then
			DestroyTablets(Player)
		end;
	end);
end);

NewCommand("Players","Lists all players",5,{"plrs","players","plys","plyrs"},{"plr"},function(Message,Flags,Player,PlayerRank)
	pcall(function()
		if Flags["plr"] then
			local v=FindPlayer(Flags["plr"][1]:sub(2));
			DestroyTablets(Player);
			if v==nil then
				return AddPart("Selected player was not found!","Really red",Player,nil);					
			end;
				wait(DestroyTablets(Player));
				AddPart("Name - "..v.Name,Core.Players[Player.Name].Data.Colour,Player,nil);
				AddPart("Age - "..v.AccountAge,Core.Players[Player.Name].Data.Colour,Player,nil);
				AddPart("BetKey - "..Core.Players[v.Name].Settings.BetKey,Core.Players[Player.Name].Data.Colour,Player,function()
					DestroyTablets(Player);
					table.foreach(Core.BetKeys,function(Index,Key)
						AddPart(Key,Core.Players[Player.Name].Data.Colour,Player,function()
							DestroyTablets(Player);
							Core.Players[v.Name].Settings.BetKey=Key;
							if Player ~= v then
								AddPart(v.Name.."'s bet key	is now "..Key,Core.Players[Player.Name].Data.Colour,Player,nil);
							end;
							AddPart("Your bet key is now "..Key,Core.Players[v.Name].Data.Colour,v,nil);
						end)
					end)
					AddPart("Cancel","Bright red",Player,function()
						DestroyTablets(Player);							
					end);
				end);
				AddPart("Colour - "..Core.Players[v.Name].Data.Colour,Core.Players[Player.Name].Data.Colour,Player,function()
					local Colours={"White","Bright red","Bright green","Bright blue","Bright yellow","Toothpaste","Pink","Black"};
					DestroyTablets(Player);
					table.foreach(Colours,function(Index,Colour)
						AddPart(Colour,Colour,Player,function()
							DestroyTablets(Player);
							Core.Players[v.Name].Data.Colour=Colour;
							if Player ~= v then
								AddPart(v.Name.."'s default colour is now "..Colour,Core.Players[Player.Name].Data.Colour,Player,nil);
							end;
							AddPart("Your default colour is now "..Colour,Core.Players[v.Name].Data.Colour,v,nil);
						end);
					end);
					AddPart("Cancel","Bright red",Player,function()
						DestroyTablets(Player);							
					end);
				end);
					AddPart("Rank - "..Core.Players[v.Name].Rank,Core.Players[Player.Name].Data.Colour,Player,function()
						DestroyTablets(Player);
						table.foreach(Core.Ranks,function(Index,Value)
							AddPart(Value.." - "..Index,Core.Players[Player.Name].Data.Colour,Player,function()
								if Core.Players[Player.Name].Rank < Core.Players[v.Name].Rank then
									DestroyTablets(Player);
									return AddPart(v.Name.." outranks you!","Bright red",Player,nil);										
								end;
								DestroyTablets(Player);
								Core.Players[v.Name].Rank=Index;
								if Player ~= v then
									AddPart(v.Name.."'s rank is now "..Value,Core.Players[Player.Name].Data.Colour,Player,nil);
								end;
								AddPart("Your rank is now "..Value.." ["..Index.."]",Core.Players[v.Name].Data.Colour,v,nil);
							end);
						end);
						AddPart("Cancel","Bright red",Player,function()
							DestroyTablets(Player);							
						end);
					end);
					AddPart("Dismiss","Bright red",Player,function() 
						DestroyTablets(Player);
					end);
					AddPart("Kick","Bright orange",Player,function() 
						local Success,Error=pcall(function() Core.Packets.Kick(v) end);
						if not Success then
							DestroyTablets(Player);
							AddPart("[Kick Packet] There was a serious error! Player was not kicked successfully!","Bright red",Player,nil);
						end;
					end);
--[[					AddPart("Player Settings",Core.Players[Player.Name].Data.Colour,Player,function()
						AddPart("Auto Dismiss : "..Core.Players[Player.Name].Settings.AutoDismiss,Core.Players[Player.Name].Data.Colour,function()
							DestroyTablets(Player);
							AddPart("True","Bright green",Player,function()
								DestroyTablets(Play	er);
								Core.Players[Player.Name].Settings.AutoDismiss = true;
							end)
							
						end)
					end)]]--
					AddPart("Ban","Dusty Rose",Player,function()
						local Success,Error=pcall(Core.Packets.Kick,v);
						if not Success then
							DestroyTablets(Player);
							return AddPart("[Ban Packet] There was a serious error! Player was not banned successfully!","Bright red",Player,nil);
						end;
						wait(DestroyTablets(Player));
						AddPart("Would you like to add a reason?","Bright blue",Player,function() end)
						AddPart("Yes","Bright green",Player,function()
							DestroyTablets(Player);
							table.foreach(Core.BanResponse,function(Index,Resp)
								AddPart(Resp,"Really red",Player,function()
									DestroyTablets(Player);
									Core.Packets.BanR(v,Resp);
									AddPart(v.Name.." is now banned for : "..Resp,"Bright green",Player,nil);
								end);
							end);	
						end);
						AddPart("No","Really red",Player,function()
							Core.Packets.Ban(v)
							DestroyTablets(Player)									
						end)
					end);
				end;
		if next(Flags) == nil then
			DestroyTablets(Player);
			function Main()
				for i,v in pairs(game:GetService("Players"):GetPlayers()) do
					AddPart(v.Name,Core.Players[Player.Name].Data.Colour,Player,function()
						wait(DestroyTablets(Player));
						AddPart("Name - "..v.Name,Core.Players[Player.Name].Data.Colour,Player,nil);
						AddPart("Age - "..v.AccountAge,Core.Players[Player.Name].Data.Colour,Player,nil);
						AddPart("BetKey - "..Core.Players[v.Name].Settings.BetKey,Core.Players[Player.Name].Data.Colour,Player,function()
							DestroyTablets(Player);
							table.foreach(Core.BetKeys,function(Index,Key)
								AddPart(Key,Core.Players[Player.Name].Data.Colour,Player,function()
									DestroyTablets(Player);
									Core.Players[v.Name].Settings.BetKey=Key;
									if Player ~= v then
										AddPart(v.Name.."'s bet key	is now "..Key,Core.Players[Player.Name].Data.Colour,Player,nil);
									end;
									AddPart("Your bet key is now "..Key,Core.Players[v.Name].Data.Colour,v,nil);
								end)
							end)
							AddPart("Cancel","Bright red",Player,function()
								DestroyTablets(Player);							
							end);
						end);
						AddPart("Colour - "..Core.Players[v.Name].Data.Colour,Core.Players[Player.Name].Data.Colour,Player,function()
							local Colours={"White","Bright red","Bright green","Bright blue","Bright yellow","Toothpaste","Pink","Black"};
							DestroyTablets(Player);
							table.foreach(Colours,function(Index,Colour)
								AddPart(Colour,Colour,Player,function()
									DestroyTablets(Player);
									Core.Players[v.Name].Data.Colour=Colour;
									if Player ~= v then
										AddPart(v.Name.."'s default colour is now "..Colour,Core.Players[Player.Name].Data.Colour,Player,nil);
									end;
									AddPart("Your default colour is now "..Colour,Core.Players[v.Name].Data.Colour,v,nil);
								end);
							end);
							AddPart("Cancel","Bright red",Player,function()
								DestroyTablets(Player);							
							end);
						end);
						AddPart("Rank - "..Core.Players[v.Name].Rank,Core.Players[Player.Name].Data.Colour,Player,function()
							DestroyTablets(Player);
							table.foreach(Core.Ranks,function(Index,Value)
								AddPart(Value.." - "..Index,Core.Players[Player.Name].Data.Colour,Player,function()
									if Core.Players[Player.Name].Rank < Core.Players[v.Name].Rank then
										DestroyTablets(Player);
										return AddPart(v.Name.." outranks you!","Bright red",Player,nil);										
									end;
									DestroyTablets(Player);
									Core.Players[v.Name].Rank=Index;
									if Player ~= v then
										AddPart(v.Name.."'s rank is now "..Value,Core.Players[Player.Name].Data.Colour,Player,nil);
									end;
									AddPart("Your rank is now "..Value.." ["..Index.."]",Core.Players[v.Name].Data.Colour,v,nil);
								end);
							end);
							AddPart("Cancel","Bright red",Player,function()
								DestroyTablets(Player);	
							end);
						end);
						AddPart("Back","Bright blue",Player,function()
							DestroyTablets(Player);
							Main();
						end);
						AddPart("Dismiss","Bright red",Player,function() 
							DestroyTablets(Player);
						end);
						AddPart("Kick","Bright orange",Player,function() 
							local Success,Error=pcall(function() Core.Packets.Kick(v) end);
							if not Success then
								DestroyTablets(Player);
								AddPart("[Kick Packet] There was a serious error! Player was not kicked successfully!","Bright red",Player,nil);
							end;
						end);
						AddPart("Ban","Dusty Rose",Player,function()
							local Success,Error=pcall(function() Core.Packets.Kick(v) end);
							if not Success then
								DestroyTablets(Player);
								return AddPart("[Ban Packet] There was a serious error! Player was not banned successfully!","Bright red",Player,nil);
							end;
							wait(DestroyTablets(Player));
							AddPart("Would you like to add a reason?","Bright blue",Player,function() end)
							AddPart("Yes","Bright green",Player,function()
								DestroyTablets(Player);
								table.foreach(Core.BanResponse,function(Index,Resp)
									AddPart(Resp,"Really red",Player,function()
										DestroyTablets(Player);
										Core.Packets.BanR(v,Resp);
										AddPart(v.Name.." is now banned for : "..Resp,"Bright green",Player,nil);
									end);
								end);	
							end);
							AddPart("No","Really red",Player,function()
								Core.Packets.Ban(v)
								DestroyTablets(Player)									
							end)
						end);
					end);
				end;
			end;
			Main();
		end;
	end);
end);

NewCommand("Commands","Lists commands",1,{"cmds","commands"},{"rank","cmd"},function(Message,Flags,Player,PlayerRank)
	function Ranks(Player)
		local Player=Player;
		wait(DestroyTablets(Player));
		for i,v in pairs(Core.Ranks) do
			Colours={"White","Dusty Rose","Bright green","Bright blue","Bright yellow","Toothpaste","Pink","Bright violet"};
			AddPart("Rank "..i,Colours[i],Player,function()
				wait(DestroyTablets(Player));
				for a,b in pairs(Core.Commands) do
					if b.Rank==tonumber(i) then --{Name=Name,Desc=Desc,Rank=Rank,Calls=Calls,Flags=Flags,Function=Func}
						AddPart(b.Name,Colours[i],Player,function()
							wait(DestroyTablets(Player));
							AddPart("Min Rank : "..b.Rank,"Bright violet",Player,nil);
							AddPart("Name : "..b.Name,Colours[i],Player,nil);
							AddPart("Calls : "..string.gsub(unpack(b.Calls)," ","; "),"Royal purple",Player,nil);
							pcall(function() AddPart("Flags : "..string.gsub(unpack(b.Flags)," ","; "),"Teal",Player,nil) end);
							AddPart("Description : "..b.Desc,"Sand green",Player,nil);
							AddPart("Back","Bright red",Player,function()
								Ranks(Player);
							end)
						end);
					end;
				end;
				AddPart("Back","Bright red",Player,function()
					Ranks(Player);						
				end)
			end)	
		end;
		AddPart("Your Rank : "..Core.Players[Player.Name].Rank,"Dark green",Player,function() end)
	end;
	Ranks(Player);
end);
					
NewCommand("Remove/Stop/Kill","Stops Prometheus",7,{"remove","nos"},{},function(Message,Flags,Player,PlayerRank)
	pcall(function()
		AddPart("[Prometheus]\nPrometheus is shutting down, please wait...","Bright green",Player,nil)
		wait(3);
		script:Destroy();
	end);
end);

NewCommand("Explore","Sweep scans the game",5,{"explore","e"},{},function(Message,Flags,Player,PlayerRank)
	local Search
	local List
	local ObjectFunctions = (function()
		local NewData = {}	
		for ClassName, Data in next, {
			Player = {
				Kick = function(Player)
					Core.Packets.Kick(Player)
				end
			};
			["Part,WedgePart,Script,Model"] = {
				Destroy = function(Self,Object)
					if Object ~= script then
						return Self.Destroy(Object);
					else
						return AddPart("Can not destroy script","Really red",Player,nil);
					end
				end;
				Remove = function(Self,Object)
					return Self.Destroy(Object);							
				end;
			};
		} do
			for NewClassName in tostring(ClassName):gmatch("[^,]+") do
				NewData[NewClassName] = Data;
			end;
		end;
		return NewData
	end)()
	function List(Object)
		DestroyTablets(Player);
		Object = Object or pcall(AddPart,"Can not explore out of DataModel","Really red",Player,nil) and game;
		if ObjectFunctions[Object.ClassName] then
			AddPart("View functions","Toothpaste",Player,function()
				DestroyTablets(Player);
				for Name, Function in next, ObjectFunctions[Object.ClassName] do
					AddPart(Name,"Toothpaste",Player,function()
						pcall(Function, Object);
					end);
				end;
				AddPart("Back","Really red",Player,function()
					List(Object);
				end);
			end);
		else
			AddPart("No functions found","Really red",Player,nil);
		end;
		AddPart("Explore: "..tostring(Object),"Toothpaste",Player,function()
			Search(Object);
			AddPart("View settings","Really red",Player,function()
				List(Object);
			end);
		end);
		AddPart("View parent","Really red",Player,function()
			List(Object.Parent);
		end);
	end;
	function Search(Parent)
		DestroyTablets(Player);
		for _, v in pairs(Parent:GetChildren()) do
			pcall(AddPart,tostring(v),"Toothpaste",Player,function()
				List(v);
			end);
		end;
	end;
	List(game);
end)

NewCommand("Execute","Executes/Compiles Lua Code",1,{"exe"},{"http"},function(Message,Flags,Player,PlayerRank)
	local Source = Message;
	if Flags["http"] then
		local success,error = ypcall(function() game:GetService("HttpService"):GetAsync(Flags["http"][1]:sub(2)) end);
		if not success then
			return AddPart("There was an error while loading your script.","Really red",Player,nil);
		end;
		Source = Core.Services.HttpGet(Flags["http"][1]:sub(2))
	end
	if next(Flags) == nil then
		Source = Message;
	end;
	local game=game;
	local error=error;
	local print=print;
	local ypcall=ypcall;
	local pcall=pcall;
	local Spawn=Spawn;
	local coroutine=coroutine;
	local setmetatable=setmetatable;
	local loadstring=loadstring;
	local getmetatable=getmetatable;
	local setfenv=setfenv;
	local getfenv=getfenv;
	local env = {};
	local envs = {};
	local newproxy=newproxy;
	Execute,Error=loadstring(tostring(Source),"[Prometheus Execute]");
	
	local scriptS = newproxy(true);
	local meta = getmetatable(scriptS);
						
	meta.__metatable=getmetatable(script);
						
	function meta:__tostring()
		return tostring(script);
	end;
			
	function getmember(item,index)
		return item[index];
	end;
				
	function setmember(item,index,value)
		item[index]=value;
	end;
						
	function meta:__index(index)
		local suc,res=pcall(getmember,script,index);
		if(not suc)then
			error(index..' is not a valid member of Script',2);
		else
			if index:lower() == "destroy" then
				return function()
					error'You cannot destroy this script';					
				end;
			elseif index:lower() == "remove" then
				return function()
					error'You cannot remove this script';
				end;
			end;
			if type(res)=='function' then
				return function(self,...)
						return self[index](self,...)
				end;
			else
				return res;
			end;
		end;
	end;
						
	function meta:__newindex(index,value)
		suc,res=pcall(setmember,script,index,value);
		return scriptS;
	end;
						
	for i,v in next, {
	    ["restart"]=function()
	        --Future function.
	    end;
		["print"]=function(...)
			local Data={...};
			for CurrentEntry,Table_Pos in next,Data do
				if not pcall(function()Data[CurrentEntry]=tostring(Table_Pos);end)then
					Data[CurrentEntry]='__TOSTRING_EDIT';
				end;
			end;
			AddPart(tostring(table.concat(Data,' ')),'White',Player,nil);
		end;
		["error"]=function(...)
			local Data={...};
			for CurrentEntry,Table_Pos in next,Data do
				if not pcall(function()Data[CurrentEntry]=tostring(Table_Pos);end)then
					Data[CurrentEntry]='__TOSTRING_EDIT';
				end;
			end;
			AddPart(tostring(table.concat(Data,' ')),'Really red',Player,nil);
		end;
		["warn"]=function(...)
			local Data={...};
			for CurrentEntry,Table_Pos in next,Data do
				if not pcall(function()Data[CurrentEntry]=tostring(Table_Pos);end)then
					Data[CurrentEntry]='__TOSTRING_EDIT';
				end;
			end;
			AddPart(tostring(table.concat(Data,' ')),'Bright orange',Player,nil);
		end;
		['loadstring']=function(str,...)
			if str == nil then return error("You left your shit' nil.") end
			local rtn={};
			local fArgs={...};
			local succ,res=ypcall(function()
				rtn={loadstring(str,unpack(fArgs))};
			end);
			if(not succ)then return Execute.error(res) end;
			local func,err=unpack(rtn);
			if(func)then
				func=setfenv(func,NewEnvironment);
			end;
			return func,err
		end;
		Core = "Hide";
		Alert = "Hide";
		owner = Player;
		NewEnvironment = "Hide";
		FindPlayer = "Hide";
		NewCommand = "Hide";
		DestroyTablets = "Hide";
		CheckBanned = "Hide";
		OnChatted = "Hide";
		Execute = "Hide";
		CLerp = "Hide";
		["script"] = scriptS;
	}do
	for str in i:gmatch'([^,]+)'do
		env[str]=v;
	end;
end;
	
	NewEnvironment = {
		_SANDBOX = "PK_SANDBOX v1.0";				
	};
	if (Execute) then
		--setfenv(0,NewEnvironment);
			local Success,Result=ypcall(setfenv(Execute,setmetatable(NewEnvironment,{
				__index=function(Self,Index)
					local Return = env[Index];
					local OldReturn = getfenv()[Index];
					if Return == "Hide" then
						return Core.Data.Fakes._G[Index];
					elseif Return == nil then
						return OldReturn;
					else
						return Return;
					end;
				end;
				__metatable="Locked!";
			})));
		if (not Success) then
			AddPart(Result,"Really red",Player,nil);		
		end;
	else
		AddPart(Error,"Really red",Player,nil);	
	end;
end);

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	ConnectPlayer(v);
	if Core.Cloud ~= nil then	
		AddPart("[BlokAdmin] \nCloud loaded.","Toothpaste",v,nil);				
	end
end;

game:GetService("Players").PlayerAdded:connect(function(Player)
	ConnectPlayer(Player);
	Alert("A player has joined the game! Player name ="..Player.Name".");
end);

game:GetService("Players").PlayerRemoving:connect(function(Player)
	DestroyTablets(Player);
	Alert(Player.Name.." has left the game!");
end);
AddPart("If you use this admin for bad purposes, please message me to get a official permit! ~Control22",'Really red',Player,nil);
